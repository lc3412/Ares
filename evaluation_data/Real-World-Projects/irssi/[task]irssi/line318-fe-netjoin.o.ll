; ModuleID = './line318-fe-netjoin.o.i'
source_filename = "./line318-fe-netjoin.o.i"
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
%struct._WI_ITEM_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, {}*, i8* (%struct._WI_ITEM_REC*)* }
%struct._NICK_REC = type { i32, i32, i64, i8*, i8*, i8*, i32, i8, [8 x i8], i8*, %struct._NICK_REC* }
%struct._QUERY_REC = type opaque
%struct._REDIRECT_REC = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._GTimeVal = type { i64, i64 }
%struct._GHashTable = type opaque
%struct.modes_type = type { void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, i8 }
%struct._IRC_CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._IRC_SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)*, %struct._GSList*, i64, i32, i32 }
%struct.NETJOIN_SERVER_REC = type { %struct._IRC_SERVER_REC*, i64, %struct._GSList* }
%struct.NETJOIN_REC = type { i8*, %struct._GSList*, %struct._GSList* }
%struct._TEXT_DEST_REC = type { %struct._WINDOW_REC*, %struct._SERVER_REC*, i8*, i8*, i8*, i8*, i32, i32, i8*, i32 }
%struct._WINDOW_REC = type { i32, i8*, i32, i32, %struct._GSList*, %struct._WI_ITEM_REC*, %struct._SERVER_REC*, %struct._SERVER_REC*, i8*, i32, %struct._GSList*, i8, %struct.HISTORY_REC*, i8*, i32, i8*, i64, i64, i8*, i8*, i8* }
%struct.HISTORY_REC = type { i8*, %struct._GList*, i32, i32, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.NETSPLIT_REC = type { %struct.NETSPLIT_SERVER_REC*, i8*, i8*, %struct._GSList*, i8, i64 }
%struct.NETSPLIT_SERVER_REC = type { i8*, i8*, i32, i32, i64 }
%struct.NETSPLIT_CHAN_REC = type { i8*, i8, [8 x i8] }
%struct.TEMP_PRINT_REC = type { i32, %struct._GString* }

@.str = private unnamed_addr constant [14 x i8] c"fe-common/irc\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"misc\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"hide_netsplit_quits\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"netjoin_max_nicks\00", align 1
@join_tag = internal global i32 0, align 4
@printing_joins = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"setup changed\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"server disconnected\00", align 1
@joinservers = internal global %struct._GSList* null, align 8
@.str.6 = private unnamed_addr constant [15 x i8] c"print starting\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"message quit\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"message join\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"message irc mode\00", align 1
@hide_netsplit_quits = internal global i32 0, align 4
@netjoin_max_nicks = internal global i32 0, align 4
@__func__.sig_server_disconnected = private unnamed_addr constant [24 x i8] c"sig_server_disconnected\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"server != NULL\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"IRC\00", align 1
@__func__.netjoin_find_server = private unnamed_addr constant [20 x i8] c"netjoin_find_server\00", align 1
@__func__.print_netjoins = private unnamed_addr constant [15 x i8] c"print_netjoins\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"%s, \00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c" \00", align 1
@__func__.netjoin_find = private unnamed_addr constant [13 x i8] c"netjoin_find\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"nick != NULL\00", align 1
@__func__.netjoin_add = private unnamed_addr constant [12 x i8] c"netjoin_add\00", align 1
@__func__.msg_mode = private unnamed_addr constant [9 x i8] c"msg_mode\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1

; Function Attrs: nounwind uwtable
define void @fe_netjoin_init() #0 !dbg !885 {
  call void @settings_add_bool_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i32 1), !dbg !887
  call void @settings_add_int_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i32 10), !dbg !888
  store i32 -1, i32* @join_tag, align 4, !dbg !889
  store i32 0, i32* @printing_joins, align 4, !dbg !890
  call void @read_settings(), !dbg !891
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !892
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @sig_server_disconnected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !893
  ret void, !dbg !894
}

declare void @settings_add_bool_module(i8*, i8*, i8*, i32) #1

declare void @settings_add_int_module(i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @read_settings() #0 !dbg !895 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !896, metadata !897), !dbg !898
  %2 = load i32, i32* @hide_netsplit_quits, align 4, !dbg !899
  store i32 %2, i32* %1, align 4, !dbg !900
  %3 = call i32 @settings_get_bool(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0)), !dbg !901
  store i32 %3, i32* @hide_netsplit_quits, align 4, !dbg !902
  %4 = call i32 @settings_get_int(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0)), !dbg !903
  store i32 %4, i32* @netjoin_max_nicks, align 4, !dbg !904
  %5 = load i32, i32* %1, align 4, !dbg !905
  %6 = icmp ne i32 %5, 0, !dbg !905
  br i1 %6, label %7, label %11, !dbg !907

; <label>:7:                                      ; preds = %0
  %8 = load i32, i32* @hide_netsplit_quits, align 4, !dbg !908
  %9 = icmp ne i32 %8, 0, !dbg !908
  br i1 %9, label %11, label %10, !dbg !910

; <label>:10:                                     ; preds = %7
  call void @signal_remove_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @msg_quit to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !911
  call void @signal_remove_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @msg_join to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !913
  call void @signal_remove_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*)* @msg_mode to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !914
  br label %19, !dbg !915

; <label>:11:                                     ; preds = %7, %0
  %12 = load i32, i32* %1, align 4, !dbg !916
  %13 = icmp ne i32 %12, 0, !dbg !916
  br i1 %13, label %18, label %14, !dbg !919

; <label>:14:                                     ; preds = %11
  %15 = load i32, i32* @hide_netsplit_quits, align 4, !dbg !920
  %16 = icmp ne i32 %15, 0, !dbg !920
  br i1 %16, label %17, label %18, !dbg !922

; <label>:17:                                     ; preds = %14
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @msg_quit to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !923
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @msg_join to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !925
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*)* @msg_mode to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !926
  br label %18, !dbg !927

; <label>:18:                                     ; preds = %17, %14, %11
  br label %19

; <label>:19:                                     ; preds = %18, %10
  ret void, !dbg !928
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @sig_server_disconnected(%struct._IRC_SERVER_REC*) #0 !dbg !929 {
  %2 = alloca %struct._IRC_SERVER_REC*, align 8
  %3 = alloca %struct.NETJOIN_SERVER_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %2, metadata !932, metadata !897), !dbg !933
  call void @llvm.dbg.declare(metadata %struct.NETJOIN_SERVER_REC** %3, metadata !934, metadata !897), !dbg !935
  br label %4, !dbg !936, !llvm.loop !937

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !938
  %6 = icmp ne %struct._IRC_SERVER_REC* %5, null, !dbg !942
  br i1 %6, label %7, label %8, !dbg !938

; <label>:7:                                      ; preds = %4
  br label %9, !dbg !943

; <label>:8:                                      ; preds = %4
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.sig_server_disconnected, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0)), !dbg !946
  br label %28, !dbg !949

; <label>:9:                                      ; preds = %7
  br label %10, !dbg !950

; <label>:10:                                     ; preds = %9
  %11 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !952
  %12 = bitcast %struct._IRC_SERVER_REC* %11 to i8*, !dbg !952
  %13 = call i8* @module_check_cast(i8* %12, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0)), !dbg !954
  %14 = bitcast i8* %13 to %struct._SERVER_REC*, !dbg !955
  %15 = bitcast %struct._SERVER_REC* %14 to i8*, !dbg !956
  %16 = call i8* @chat_protocol_check_cast(i8* %15, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0)), !dbg !957
  %17 = bitcast i8* %16 to %struct._IRC_SERVER_REC*, !dbg !959
  %18 = icmp ne %struct._IRC_SERVER_REC* %17, null, !dbg !959
  br i1 %18, label %19, label %20, !dbg !960

; <label>:19:                                     ; preds = %10
  br i1 false, label %21, label %22, !dbg !961

; <label>:20:                                     ; preds = %10
  br i1 false, label %22, label %21, !dbg !963

; <label>:21:                                     ; preds = %20, %19
  br label %28, !dbg !965

; <label>:22:                                     ; preds = %20, %19
  %23 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !966
  %24 = call %struct.NETJOIN_SERVER_REC* @netjoin_find_server(%struct._IRC_SERVER_REC* %23), !dbg !968
  store %struct.NETJOIN_SERVER_REC* %24, %struct.NETJOIN_SERVER_REC** %3, align 8, !dbg !969
  %25 = icmp ne %struct.NETJOIN_SERVER_REC* %24, null, !dbg !969
  br i1 %25, label %26, label %28, !dbg !970

; <label>:26:                                     ; preds = %22
  %27 = load %struct.NETJOIN_SERVER_REC*, %struct.NETJOIN_SERVER_REC** %3, align 8, !dbg !971
  call void @netjoin_server_remove(%struct.NETJOIN_SERVER_REC* %27), !dbg !973
  br label %28, !dbg !974

; <label>:28:                                     ; preds = %8, %21, %26, %22
  ret void, !dbg !975
}

; Function Attrs: nounwind uwtable
define void @fe_netjoin_deinit() #0 !dbg !976 {
  br label %1, !dbg !977

; <label>:1:                                      ; preds = %4, %0
  %2 = load %struct._GSList*, %struct._GSList** @joinservers, align 8, !dbg !978
  %3 = icmp ne %struct._GSList* %2, null, !dbg !980
  br i1 %3, label %4, label %9, !dbg !981

; <label>:4:                                      ; preds = %1
  %5 = load %struct._GSList*, %struct._GSList** @joinservers, align 8, !dbg !982
  %6 = getelementptr inbounds %struct._GSList, %struct._GSList* %5, i32 0, i32 0, !dbg !983
  %7 = load i8*, i8** %6, align 8, !dbg !983
  %8 = bitcast i8* %7 to %struct.NETJOIN_SERVER_REC*, !dbg !982
  call void @netjoin_server_remove(%struct.NETJOIN_SERVER_REC* %8), !dbg !984
  br label %1, !dbg !985, !llvm.loop !987

; <label>:9:                                      ; preds = %1
  %10 = load i32, i32* @join_tag, align 4, !dbg !988
  %11 = icmp ne i32 %10, -1, !dbg !990
  br i1 %11, label %12, label %15, !dbg !991

; <label>:12:                                     ; preds = %9
  %13 = load i32, i32* @join_tag, align 4, !dbg !992
  %14 = call i32 @g_source_remove(i32 %13), !dbg !994
  call void @signal_remove_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._TEXT_DEST_REC*)* @sig_print_starting to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !995
  br label %15, !dbg !996

; <label>:15:                                     ; preds = %12, %9
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !997
  call void @signal_remove_full(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @sig_server_disconnected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !998
  call void @signal_remove_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @msg_quit to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !999
  call void @signal_remove_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @msg_join to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1000
  call void @signal_remove_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*)* @msg_mode to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1001
  ret void, !dbg !1002
}

; Function Attrs: nounwind uwtable
define internal void @netjoin_server_remove(%struct.NETJOIN_SERVER_REC*) #0 !dbg !1003 {
  %2 = alloca %struct.NETJOIN_SERVER_REC*, align 8
  store %struct.NETJOIN_SERVER_REC* %0, %struct.NETJOIN_SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.NETJOIN_SERVER_REC** %2, metadata !1006, metadata !897), !dbg !1007
  %3 = load %struct._GSList*, %struct._GSList** @joinservers, align 8, !dbg !1008
  %4 = load %struct.NETJOIN_SERVER_REC*, %struct.NETJOIN_SERVER_REC** %2, align 8, !dbg !1009
  %5 = bitcast %struct.NETJOIN_SERVER_REC* %4 to i8*, !dbg !1009
  %6 = call %struct._GSList* @g_slist_remove(%struct._GSList* %3, i8* %5), !dbg !1010
  store %struct._GSList* %6, %struct._GSList** @joinservers, align 8, !dbg !1011
  br label %7, !dbg !1012

; <label>:7:                                      ; preds = %12, %1
  %8 = load %struct.NETJOIN_SERVER_REC*, %struct.NETJOIN_SERVER_REC** %2, align 8, !dbg !1013
  %9 = getelementptr inbounds %struct.NETJOIN_SERVER_REC, %struct.NETJOIN_SERVER_REC* %8, i32 0, i32 2, !dbg !1015
  %10 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !1015
  %11 = icmp ne %struct._GSList* %10, null, !dbg !1016
  br i1 %11, label %12, label %20, !dbg !1017

; <label>:12:                                     ; preds = %7
  %13 = load %struct.NETJOIN_SERVER_REC*, %struct.NETJOIN_SERVER_REC** %2, align 8, !dbg !1018
  %14 = load %struct.NETJOIN_SERVER_REC*, %struct.NETJOIN_SERVER_REC** %2, align 8, !dbg !1019
  %15 = getelementptr inbounds %struct.NETJOIN_SERVER_REC, %struct.NETJOIN_SERVER_REC* %14, i32 0, i32 2, !dbg !1020
  %16 = load %struct._GSList*, %struct._GSList** %15, align 8, !dbg !1020
  %17 = getelementptr inbounds %struct._GSList, %struct._GSList* %16, i32 0, i32 0, !dbg !1021
  %18 = load i8*, i8** %17, align 8, !dbg !1021
  %19 = bitcast i8* %18 to %struct.NETJOIN_REC*, !dbg !1019
  call void @netjoin_remove(%struct.NETJOIN_SERVER_REC* %13, %struct.NETJOIN_REC* %19), !dbg !1022
  br label %7, !dbg !1023, !llvm.loop !1025

; <label>:20:                                     ; preds = %7
  %21 = load %struct.NETJOIN_SERVER_REC*, %struct.NETJOIN_SERVER_REC** %2, align 8, !dbg !1026
  %22 = bitcast %struct.NETJOIN_SERVER_REC* %21 to i8*, !dbg !1026
  call void @g_free(i8* %22), !dbg !1027
  ret void, !dbg !1028
}

declare i32 @g_source_remove(i32) #1

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @sig_print_starting(%struct._TEXT_DEST_REC*) #0 !dbg !1029 {
  %2 = alloca %struct._TEXT_DEST_REC*, align 8
  %3 = alloca %struct.NETJOIN_SERVER_REC*, align 8
  store %struct._TEXT_DEST_REC* %0, %struct._TEXT_DEST_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC** %2, metadata !1093, metadata !897), !dbg !1094
  call void @llvm.dbg.declare(metadata %struct.NETJOIN_SERVER_REC** %3, metadata !1095, metadata !897), !dbg !1096
  %4 = load i32, i32* @printing_joins, align 4, !dbg !1097
  %5 = icmp ne i32 %4, 0, !dbg !1097
  br i1 %5, label %6, label %7, !dbg !1099

; <label>:6:                                      ; preds = %1
  br label %63, !dbg !1100

; <label>:7:                                      ; preds = %1
  %8 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %2, align 8, !dbg !1101
  %9 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %8, i32 0, i32 1, !dbg !1103
  %10 = load %struct._SERVER_REC*, %struct._SERVER_REC** %9, align 8, !dbg !1103
  %11 = bitcast %struct._SERVER_REC* %10 to i8*, !dbg !1101
  %12 = call i8* @module_check_cast(i8* %11, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0)), !dbg !1104
  %13 = bitcast i8* %12 to %struct._SERVER_REC*, !dbg !1105
  %14 = bitcast %struct._SERVER_REC* %13 to i8*, !dbg !1106
  %15 = call i8* @chat_protocol_check_cast(i8* %14, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0)), !dbg !1107
  %16 = bitcast i8* %15 to %struct._IRC_SERVER_REC*, !dbg !1109
  %17 = icmp ne %struct._IRC_SERVER_REC* %16, null, !dbg !1109
  br i1 %17, label %18, label %19, !dbg !1110

; <label>:18:                                     ; preds = %7
  br i1 false, label %20, label %21, !dbg !1111

; <label>:19:                                     ; preds = %7
  br i1 false, label %21, label %20, !dbg !1113

; <label>:20:                                     ; preds = %19, %18
  br label %63, !dbg !1115

; <label>:21:                                     ; preds = %19, %18
  %22 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %2, align 8, !dbg !1116
  %23 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %22, i32 0, i32 1, !dbg !1117
  %24 = load %struct._SERVER_REC*, %struct._SERVER_REC** %23, align 8, !dbg !1117
  %25 = bitcast %struct._SERVER_REC* %24 to i8*, !dbg !1116
  %26 = call i8* @module_check_cast(i8* %25, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0)), !dbg !1118
  %27 = bitcast i8* %26 to %struct._SERVER_REC*, !dbg !1119
  %28 = bitcast %struct._SERVER_REC* %27 to i8*, !dbg !1120
  %29 = call i8* @chat_protocol_check_cast(i8* %28, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0)), !dbg !1121
  %30 = bitcast i8* %29 to %struct._IRC_SERVER_REC*, !dbg !1123
  %31 = call %struct.NETJOIN_SERVER_REC* @netjoin_find_server(%struct._IRC_SERVER_REC* %30), !dbg !1124
  store %struct.NETJOIN_SERVER_REC* %31, %struct.NETJOIN_SERVER_REC** %3, align 8, !dbg !1125
  %32 = load %struct.NETJOIN_SERVER_REC*, %struct.NETJOIN_SERVER_REC** %3, align 8, !dbg !1126
  %33 = icmp ne %struct.NETJOIN_SERVER_REC* %32, null, !dbg !1128
  br i1 %33, label %34, label %63, !dbg !1129

; <label>:34:                                     ; preds = %21
  %35 = load %struct.NETJOIN_SERVER_REC*, %struct.NETJOIN_SERVER_REC** %3, align 8, !dbg !1130
  %36 = getelementptr inbounds %struct.NETJOIN_SERVER_REC, %struct.NETJOIN_SERVER_REC* %35, i32 0, i32 2, !dbg !1132
  %37 = load %struct._GSList*, %struct._GSList** %36, align 8, !dbg !1132
  %38 = icmp ne %struct._GSList* %37, null, !dbg !1133
  br i1 %38, label %39, label %63, !dbg !1134

; <label>:39:                                     ; preds = %34
  %40 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %2, align 8, !dbg !1135
  %41 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %40, i32 0, i32 3, !dbg !1138
  %42 = load i8*, i8** %41, align 8, !dbg !1138
  %43 = icmp ne i8* %42, null, !dbg !1139
  br i1 %43, label %44, label %61, !dbg !1140

; <label>:44:                                     ; preds = %39
  %45 = load %struct.NETJOIN_SERVER_REC*, %struct.NETJOIN_SERVER_REC** %3, align 8, !dbg !1141
  %46 = getelementptr inbounds %struct.NETJOIN_SERVER_REC, %struct.NETJOIN_SERVER_REC* %45, i32 0, i32 0, !dbg !1142
  %47 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %46, align 8, !dbg !1142
  %48 = bitcast %struct._IRC_SERVER_REC* %47 to %struct._SERVER_REC*, !dbg !1143
  %49 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %48, i32 0, i32 27, !dbg !1143
  %50 = load i32 (%struct._SERVER_REC*, i8*)*, i32 (%struct._SERVER_REC*, i8*)** %49, align 8, !dbg !1143
  %51 = load %struct.NETJOIN_SERVER_REC*, %struct.NETJOIN_SERVER_REC** %3, align 8, !dbg !1144
  %52 = getelementptr inbounds %struct.NETJOIN_SERVER_REC, %struct.NETJOIN_SERVER_REC* %51, i32 0, i32 0, !dbg !1145
  %53 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %52, align 8, !dbg !1145
  %54 = bitcast %struct._IRC_SERVER_REC* %53 to %struct._SERVER_REC*, !dbg !1146
  %55 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %2, align 8, !dbg !1147
  %56 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %55, i32 0, i32 3, !dbg !1148
  %57 = load i8*, i8** %56, align 8, !dbg !1148
  %58 = call i32 %50(%struct._SERVER_REC* %54, i8* %57), !dbg !1149
  %59 = icmp ne i32 %58, 0, !dbg !1149
  br i1 %59, label %61, label %60, !dbg !1150

; <label>:60:                                     ; preds = %44
  br label %63, !dbg !1152

; <label>:61:                                     ; preds = %44, %39
  %62 = load %struct.NETJOIN_SERVER_REC*, %struct.NETJOIN_SERVER_REC** %3, align 8, !dbg !1153
  call void @print_netjoins(%struct.NETJOIN_SERVER_REC* %62, i8* null), !dbg !1154
  br label %63, !dbg !1155

; <label>:63:                                     ; preds = %6, %20, %60, %61, %34, %21
  ret void, !dbg !1156
}

; Function Attrs: nounwind uwtable
define internal void @msg_quit(%struct._IRC_SERVER_REC*, i8*, i8*, i8*) #0 !dbg !1157 {
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !1160, metadata !897), !dbg !1161
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1162, metadata !897), !dbg !1163
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1164, metadata !897), !dbg !1165
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1166, metadata !897), !dbg !1167
  %9 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1168
  %10 = bitcast %struct._IRC_SERVER_REC* %9 to i8*, !dbg !1168
  %11 = call i8* @module_check_cast(i8* %10, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0)), !dbg !1170
  %12 = bitcast i8* %11 to %struct._SERVER_REC*, !dbg !1171
  %13 = bitcast %struct._SERVER_REC* %12 to i8*, !dbg !1172
  %14 = call i8* @chat_protocol_check_cast(i8* %13, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0)), !dbg !1173
  %15 = bitcast i8* %14 to %struct._IRC_SERVER_REC*, !dbg !1175
  %16 = icmp ne %struct._IRC_SERVER_REC* %15, null, !dbg !1175
  br i1 %16, label %17, label %18, !dbg !1176

; <label>:17:                                     ; preds = %4
  br i1 false, label %24, label %19, !dbg !1177

; <label>:18:                                     ; preds = %4
  br i1 false, label %19, label %24, !dbg !1179

; <label>:19:                                     ; preds = %18, %17
  %20 = load i8*, i8** %8, align 8, !dbg !1181
  %21 = call i32 @quitmsg_is_split(i8* %20), !dbg !1183
  %22 = icmp ne i32 %21, 0, !dbg !1183
  br i1 %22, label %23, label %24, !dbg !1184

; <label>:23:                                     ; preds = %19
  call void @signal_stop(), !dbg !1185
  br label %24, !dbg !1185

; <label>:24:                                     ; preds = %23, %19, %18, %17
  ret void, !dbg !1186
}

; Function Attrs: nounwind uwtable
define internal void @msg_join(%struct._IRC_SERVER_REC*, i8*, i8*, i8*) #0 !dbg !1187 {
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.NETSPLIT_REC*, align 8
  %10 = alloca %struct.NETJOIN_REC*, align 8
  %11 = alloca %struct._GSList*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.NETSPLIT_CHAN_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !1188, metadata !897), !dbg !1189
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1190, metadata !897), !dbg !1191
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1192, metadata !897), !dbg !1193
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1194, metadata !897), !dbg !1195
  call void @llvm.dbg.declare(metadata %struct.NETSPLIT_REC** %9, metadata !1196, metadata !897), !dbg !1217
  call void @llvm.dbg.declare(metadata %struct.NETJOIN_REC** %10, metadata !1218, metadata !897), !dbg !1219
  call void @llvm.dbg.declare(metadata %struct._GSList** %11, metadata !1220, metadata !897), !dbg !1221
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1222, metadata !897), !dbg !1223
  store i32 1, i32* %12, align 4, !dbg !1223
  %14 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1224
  %15 = bitcast %struct._IRC_SERVER_REC* %14 to i8*, !dbg !1224
  %16 = call i8* @module_check_cast(i8* %15, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0)), !dbg !1226
  %17 = bitcast i8* %16 to %struct._SERVER_REC*, !dbg !1227
  %18 = bitcast %struct._SERVER_REC* %17 to i8*, !dbg !1228
  %19 = call i8* @chat_protocol_check_cast(i8* %18, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0)), !dbg !1229
  %20 = bitcast i8* %19 to %struct._IRC_SERVER_REC*, !dbg !1231
  %21 = icmp ne %struct._IRC_SERVER_REC* %20, null, !dbg !1231
  br i1 %21, label %22, label %23, !dbg !1232

; <label>:22:                                     ; preds = %4
  br i1 false, label %24, label %25, !dbg !1233

; <label>:23:                                     ; preds = %4
  br i1 false, label %25, label %24, !dbg !1235

; <label>:24:                                     ; preds = %23, %22
  br label %117, !dbg !1237

; <label>:25:                                     ; preds = %23, %22
  %26 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1238
  %27 = bitcast %struct._IRC_SERVER_REC* %26 to i8*, !dbg !1238
  %28 = call i8* @module_check_cast(i8* %27, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0)), !dbg !1240
  %29 = bitcast i8* %28 to %struct._SERVER_REC*, !dbg !1241
  %30 = load i8*, i8** %7, align 8, !dbg !1242
  %31 = load i8*, i8** %8, align 8, !dbg !1243
  %32 = load i8*, i8** %6, align 8, !dbg !1244
  %33 = call i32 @ignore_check(%struct._SERVER_REC* %29, i8* %30, i8* %31, i8* %32, i8* null, i32 128), !dbg !1245
  %34 = icmp ne i32 %33, 0, !dbg !1247
  br i1 %34, label %35, label %36, !dbg !1248

; <label>:35:                                     ; preds = %25
  br label %117, !dbg !1249

; <label>:36:                                     ; preds = %25
  %37 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1250
  %38 = load i8*, i8** %7, align 8, !dbg !1251
  %39 = load i8*, i8** %8, align 8, !dbg !1252
  %40 = call %struct.NETSPLIT_REC* @netsplit_find(%struct._IRC_SERVER_REC* %37, i8* %38, i8* %39), !dbg !1253
  store %struct.NETSPLIT_REC* %40, %struct.NETSPLIT_REC** %9, align 8, !dbg !1254
  %41 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1255
  %42 = load i8*, i8** %7, align 8, !dbg !1256
  %43 = call %struct.NETJOIN_REC* @netjoin_find(%struct._IRC_SERVER_REC* %41, i8* %42), !dbg !1257
  store %struct.NETJOIN_REC* %43, %struct.NETJOIN_REC** %10, align 8, !dbg !1258
  %44 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %9, align 8, !dbg !1259
  %45 = icmp eq %struct.NETSPLIT_REC* %44, null, !dbg !1261
  br i1 %45, label %46, label %50, !dbg !1262

; <label>:46:                                     ; preds = %36
  %47 = load %struct.NETJOIN_REC*, %struct.NETJOIN_REC** %10, align 8, !dbg !1263
  %48 = icmp eq %struct.NETJOIN_REC* %47, null, !dbg !1265
  br i1 %48, label %49, label %50, !dbg !1266

; <label>:49:                                     ; preds = %46
  br label %117, !dbg !1267

; <label>:50:                                     ; preds = %46, %36
  %51 = load %struct.NETJOIN_REC*, %struct.NETJOIN_REC** %10, align 8, !dbg !1268
  %52 = icmp ne %struct.NETJOIN_REC* %51, null, !dbg !1270
  br i1 %52, label %53, label %62, !dbg !1271

; <label>:53:                                     ; preds = %50
  %54 = load %struct.NETJOIN_REC*, %struct.NETJOIN_REC** %10, align 8, !dbg !1272
  %55 = getelementptr inbounds %struct.NETJOIN_REC, %struct.NETJOIN_REC* %54, i32 0, i32 1, !dbg !1275
  %56 = load %struct._GSList*, %struct._GSList** %55, align 8, !dbg !1275
  %57 = load i8*, i8** %6, align 8, !dbg !1276
  %58 = call %struct._GSList* @gslist_find_icase_string(%struct._GSList* %56, i8* %57), !dbg !1277
  %59 = icmp ne %struct._GSList* %58, null, !dbg !1277
  br i1 %59, label %61, label %60, !dbg !1278

; <label>:60:                                     ; preds = %53
  br label %117, !dbg !1279

; <label>:61:                                     ; preds = %53
  br label %90, !dbg !1280

; <label>:62:                                     ; preds = %50
  %63 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %9, align 8, !dbg !1281
  %64 = getelementptr inbounds %struct.NETSPLIT_REC, %struct.NETSPLIT_REC* %63, i32 0, i32 3, !dbg !1283
  %65 = load %struct._GSList*, %struct._GSList** %64, align 8, !dbg !1283
  store %struct._GSList* %65, %struct._GSList** %11, align 8, !dbg !1284
  br label %66, !dbg !1285

; <label>:66:                                     ; preds = %81, %62
  %67 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !1286
  %68 = icmp ne %struct._GSList* %67, null, !dbg !1288
  br i1 %68, label %69, label %85, !dbg !1289

; <label>:69:                                     ; preds = %66
  call void @llvm.dbg.declare(metadata %struct.NETSPLIT_CHAN_REC** %13, metadata !1290, metadata !897), !dbg !1301
  %70 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !1302
  %71 = getelementptr inbounds %struct._GSList, %struct._GSList* %70, i32 0, i32 0, !dbg !1303
  %72 = load i8*, i8** %71, align 8, !dbg !1303
  %73 = bitcast i8* %72 to %struct.NETSPLIT_CHAN_REC*, !dbg !1302
  store %struct.NETSPLIT_CHAN_REC* %73, %struct.NETSPLIT_CHAN_REC** %13, align 8, !dbg !1301
  %74 = load %struct.NETSPLIT_CHAN_REC*, %struct.NETSPLIT_CHAN_REC** %13, align 8, !dbg !1304
  %75 = getelementptr inbounds %struct.NETSPLIT_CHAN_REC, %struct.NETSPLIT_CHAN_REC* %74, i32 0, i32 0, !dbg !1306
  %76 = load i8*, i8** %75, align 8, !dbg !1306
  %77 = load i8*, i8** %6, align 8, !dbg !1307
  %78 = call i32 @strcasecmp(i8* %76, i8* %77) #6, !dbg !1308
  %79 = icmp ne i32 %78, 0, !dbg !1308
  br i1 %79, label %81, label %80, !dbg !1309

; <label>:80:                                     ; preds = %69
  br label %85, !dbg !1310

; <label>:81:                                     ; preds = %69
  %82 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !1311
  %83 = getelementptr inbounds %struct._GSList, %struct._GSList* %82, i32 0, i32 1, !dbg !1312
  %84 = load %struct._GSList*, %struct._GSList** %83, align 8, !dbg !1312
  store %struct._GSList* %84, %struct._GSList** %11, align 8, !dbg !1313
  br label %66, !dbg !1314, !llvm.loop !1316

; <label>:85:                                     ; preds = %80, %66
  %86 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !1317
  %87 = icmp eq %struct._GSList* %86, null, !dbg !1319
  br i1 %87, label %88, label %89, !dbg !1320

; <label>:88:                                     ; preds = %85
  store i32 0, i32* %12, align 4, !dbg !1321
  br label %89, !dbg !1322

; <label>:89:                                     ; preds = %88, %85
  br label %90

; <label>:90:                                     ; preds = %89, %61
  %91 = load i32, i32* @join_tag, align 4, !dbg !1323
  %92 = icmp eq i32 %91, -1, !dbg !1325
  br i1 %92, label %93, label %95, !dbg !1326

; <label>:93:                                     ; preds = %90
  %94 = call i32 @g_timeout_add(i32 1000, i32 (i8*)* bitcast (i32 ()* @sig_check_netjoins to i32 (i8*)*), i8* null), !dbg !1327
  store i32 %94, i32* @join_tag, align 4, !dbg !1329
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._TEXT_DEST_REC*)* @sig_print_starting to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1330
  br label %95, !dbg !1331

; <label>:95:                                     ; preds = %93, %90
  %96 = load %struct.NETJOIN_REC*, %struct.NETJOIN_REC** %10, align 8, !dbg !1332
  %97 = icmp eq %struct.NETJOIN_REC* %96, null, !dbg !1334
  br i1 %97, label %98, label %105, !dbg !1335

; <label>:98:                                     ; preds = %95
  %99 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1336
  %100 = load i8*, i8** %7, align 8, !dbg !1337
  %101 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %9, align 8, !dbg !1338
  %102 = getelementptr inbounds %struct.NETSPLIT_REC, %struct.NETSPLIT_REC* %101, i32 0, i32 3, !dbg !1339
  %103 = load %struct._GSList*, %struct._GSList** %102, align 8, !dbg !1339
  %104 = call %struct.NETJOIN_REC* @netjoin_add(%struct._IRC_SERVER_REC* %99, i8* %100, %struct._GSList* %103), !dbg !1340
  store %struct.NETJOIN_REC* %104, %struct.NETJOIN_REC** %10, align 8, !dbg !1341
  br label %105, !dbg !1342

; <label>:105:                                    ; preds = %98, %95
  %106 = load i32, i32* %12, align 4, !dbg !1343
  %107 = icmp ne i32 %106, 0, !dbg !1343
  br i1 %107, label %108, label %117, !dbg !1345

; <label>:108:                                    ; preds = %105
  %109 = load %struct.NETJOIN_REC*, %struct.NETJOIN_REC** %10, align 8, !dbg !1346
  %110 = getelementptr inbounds %struct.NETJOIN_REC, %struct.NETJOIN_REC* %109, i32 0, i32 2, !dbg !1348
  %111 = load %struct._GSList*, %struct._GSList** %110, align 8, !dbg !1348
  %112 = load i8*, i8** %6, align 8, !dbg !1349
  %113 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8* %112, i8* null), !dbg !1350
  %114 = call %struct._GSList* @g_slist_append(%struct._GSList* %111, i8* %113), !dbg !1351
  %115 = load %struct.NETJOIN_REC*, %struct.NETJOIN_REC** %10, align 8, !dbg !1352
  %116 = getelementptr inbounds %struct.NETJOIN_REC, %struct.NETJOIN_REC* %115, i32 0, i32 2, !dbg !1353
  store %struct._GSList* %114, %struct._GSList** %116, align 8, !dbg !1354
  call void @signal_stop(), !dbg !1355
  br label %117, !dbg !1356

; <label>:117:                                    ; preds = %24, %35, %49, %60, %108, %105
  ret void, !dbg !1357
}

; Function Attrs: nounwind uwtable
define internal void @msg_mode(%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*) #0 !dbg !1358 {
  %6 = alloca %struct._IRC_SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.NETJOIN_REC*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i32, align 4
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %6, metadata !1361, metadata !897), !dbg !1362
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1363, metadata !897), !dbg !1364
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1365, metadata !897), !dbg !1366
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1367, metadata !897), !dbg !1368
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1369, metadata !897), !dbg !1370
  call void @llvm.dbg.declare(metadata %struct.NETJOIN_REC** %11, metadata !1371, metadata !897), !dbg !1372
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1373, metadata !897), !dbg !1374
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1375, metadata !897), !dbg !1376
  call void @llvm.dbg.declare(metadata i8** %14, metadata !1377, metadata !897), !dbg !1378
  call void @llvm.dbg.declare(metadata i8*** %15, metadata !1379, metadata !897), !dbg !1380
  call void @llvm.dbg.declare(metadata i8*** %16, metadata !1381, metadata !897), !dbg !1382
  call void @llvm.dbg.declare(metadata i8* %17, metadata !1383, metadata !897), !dbg !1384
  call void @llvm.dbg.declare(metadata i8* %18, metadata !1385, metadata !897), !dbg !1386
  call void @llvm.dbg.declare(metadata i32* %19, metadata !1387, metadata !897), !dbg !1388
  br label %20, !dbg !1389, !llvm.loop !1390

; <label>:20:                                     ; preds = %5
  %21 = load i8*, i8** %10, align 8, !dbg !1391
  %22 = icmp ne i8* %21, null, !dbg !1395
  br i1 %22, label %23, label %24, !dbg !1391

; <label>:23:                                     ; preds = %20
  br label %25, !dbg !1396

; <label>:24:                                     ; preds = %20
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.msg_mode, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0)), !dbg !1399
  br label %218, !dbg !1402

; <label>:25:                                     ; preds = %23
  br label %26, !dbg !1403

; <label>:26:                                     ; preds = %25
  %27 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1405
  %28 = bitcast %struct._IRC_SERVER_REC* %27 to i8*, !dbg !1405
  %29 = call i8* @module_check_cast(i8* %28, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0)), !dbg !1407
  %30 = bitcast i8* %29 to %struct._SERVER_REC*, !dbg !1408
  %31 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %30, i32 0, i32 27, !dbg !1409
  %32 = load i32 (%struct._SERVER_REC*, i8*)*, i32 (%struct._SERVER_REC*, i8*)** %31, align 8, !dbg !1409
  %33 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1410
  %34 = bitcast %struct._IRC_SERVER_REC* %33 to i8*, !dbg !1410
  %35 = call i8* @module_check_cast(i8* %34, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0)), !dbg !1411
  %36 = bitcast i8* %35 to %struct._SERVER_REC*, !dbg !1413
  %37 = load i8*, i8** %7, align 8, !dbg !1414
  %38 = call i32 %32(%struct._SERVER_REC* %36, i8* %37), !dbg !1415
  %39 = icmp ne i32 %38, 0, !dbg !1417
  br i1 %39, label %40, label %43, !dbg !1418

; <label>:40:                                     ; preds = %26
  %41 = load i8*, i8** %9, align 8, !dbg !1419
  %42 = icmp ne i8* %41, null, !dbg !1421
  br i1 %42, label %43, label %44, !dbg !1422

; <label>:43:                                     ; preds = %40, %26
  br label %218, !dbg !1423

; <label>:44:                                     ; preds = %40
  %45 = load i8*, i8** %10, align 8, !dbg !1424
  %46 = call i8* (i8*, i32, ...) @event_get_params(i8* %45, i32 8194, i8** %13, i8** %14), !dbg !1425
  store i8* %46, i8** %12, align 8, !dbg !1426
  %47 = load i8*, i8** %14, align 8, !dbg !1427
  %48 = call noalias i8** @g_strsplit(i8* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i32 -1), !dbg !1428
  store i8** %48, i8*** %15, align 8, !dbg !1429
  store i8** %48, i8*** %16, align 8, !dbg !1430
  store i8 43, i8* %17, align 1, !dbg !1431
  store i32 0, i32* %19, align 4, !dbg !1432
  br label %49, !dbg !1433

; <label>:49:                                     ; preds = %208, %44
  %50 = load i8*, i8** %13, align 8, !dbg !1434
  %51 = load i8, i8* %50, align 1, !dbg !1438
  %52 = sext i8 %51 to i32, !dbg !1438
  %53 = icmp ne i32 %52, 0, !dbg !1439
  br i1 %53, label %54, label %211, !dbg !1440

; <label>:54:                                     ; preds = %49
  %55 = load i8*, i8** %13, align 8, !dbg !1441
  %56 = load i8, i8* %55, align 1, !dbg !1444
  %57 = sext i8 %56 to i32, !dbg !1444
  %58 = icmp eq i32 %57, 43, !dbg !1445
  br i1 %58, label %64, label %59, !dbg !1446

; <label>:59:                                     ; preds = %54
  %60 = load i8*, i8** %13, align 8, !dbg !1447
  %61 = load i8, i8* %60, align 1, !dbg !1449
  %62 = sext i8 %61 to i32, !dbg !1449
  %63 = icmp eq i32 %62, 45, !dbg !1450
  br i1 %63, label %64, label %67, !dbg !1451

; <label>:64:                                     ; preds = %59, %54
  %65 = load i8*, i8** %13, align 8, !dbg !1452
  %66 = load i8, i8* %65, align 1, !dbg !1454
  store i8 %66, i8* %17, align 1, !dbg !1455
  br label %208, !dbg !1456

; <label>:67:                                     ; preds = %59
  %68 = load i8**, i8*** %16, align 8, !dbg !1457
  %69 = load i8*, i8** %68, align 8, !dbg !1459
  %70 = icmp ne i8* %69, null, !dbg !1460
  br i1 %70, label %71, label %118, !dbg !1461

; <label>:71:                                     ; preds = %67
  %72 = load i8*, i8** %13, align 8, !dbg !1462
  %73 = load i8, i8* %72, align 1, !dbg !1464
  %74 = zext i8 %73 to i32, !dbg !1465
  %75 = sext i32 %74 to i64, !dbg !1466
  %76 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1467
  %77 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %76, i32 0, i32 70, !dbg !1468
  %78 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %77, i64 0, i64 %75, !dbg !1466
  %79 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %78, i32 0, i32 1, !dbg !1469
  %80 = load i8, i8* %79, align 8, !dbg !1469
  %81 = sext i8 %80 to i32, !dbg !1470
  %82 = icmp ne i32 %81, 0, !dbg !1470
  br i1 %82, label %83, label %118, !dbg !1471

; <label>:83:                                     ; preds = %71
  %84 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1472
  %85 = load i8**, i8*** %16, align 8, !dbg !1474
  %86 = load i8*, i8** %85, align 8, !dbg !1475
  %87 = call %struct.NETJOIN_REC* @netjoin_find(%struct._IRC_SERVER_REC* %84, i8* %86), !dbg !1476
  store %struct.NETJOIN_REC* %87, %struct.NETJOIN_REC** %11, align 8, !dbg !1477
  %88 = load i8*, i8** %13, align 8, !dbg !1478
  %89 = load i8, i8* %88, align 1, !dbg !1479
  %90 = zext i8 %89 to i32, !dbg !1480
  %91 = sext i32 %90 to i64, !dbg !1481
  %92 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1482
  %93 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %92, i32 0, i32 70, !dbg !1483
  %94 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %93, i64 0, i64 %91, !dbg !1481
  %95 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %94, i32 0, i32 1, !dbg !1484
  %96 = load i8, i8* %95, align 8, !dbg !1484
  store i8 %96, i8* %18, align 1, !dbg !1485
  %97 = load %struct.NETJOIN_REC*, %struct.NETJOIN_REC** %11, align 8, !dbg !1486
  %98 = icmp eq %struct.NETJOIN_REC* %97, null, !dbg !1488
  br i1 %98, label %114, label %99, !dbg !1489

; <label>:99:                                     ; preds = %83
  %100 = load i8, i8* %17, align 1, !dbg !1490
  %101 = sext i8 %100 to i32, !dbg !1490
  %102 = icmp ne i32 %101, 43, !dbg !1492
  br i1 %102, label %114, label %103, !dbg !1493

; <label>:103:                                    ; preds = %99
  %104 = load i8, i8* %18, align 1, !dbg !1494
  %105 = sext i8 %104 to i32, !dbg !1494
  %106 = icmp eq i32 %105, 0, !dbg !1496
  br i1 %106, label %114, label %107, !dbg !1497

; <label>:107:                                    ; preds = %103
  %108 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1498
  %109 = load %struct.NETJOIN_REC*, %struct.NETJOIN_REC** %11, align 8, !dbg !1499
  %110 = load i8*, i8** %7, align 8, !dbg !1500
  %111 = load i8, i8* %18, align 1, !dbg !1501
  %112 = call i32 @netjoin_set_nickmode(%struct._IRC_SERVER_REC* %108, %struct.NETJOIN_REC* %109, i8* %110, i8 signext %111), !dbg !1502
  %113 = icmp ne i32 %112, 0, !dbg !1502
  br i1 %113, label %115, label %114, !dbg !1503

; <label>:114:                                    ; preds = %107, %103, %99, %83
  store i32 1, i32* %19, align 4, !dbg !1505
  br label %115, !dbg !1506

; <label>:115:                                    ; preds = %114, %107
  %116 = load i8**, i8*** %16, align 8, !dbg !1507
  %117 = getelementptr inbounds i8*, i8** %116, i32 1, !dbg !1507
  store i8** %117, i8*** %16, align 8, !dbg !1507
  br label %207, !dbg !1508

; <label>:118:                                    ; preds = %71, %67
  %119 = load i8, i8* %17, align 1, !dbg !1509
  %120 = sext i8 %119 to i32, !dbg !1512
  %121 = icmp eq i32 %120, 43, !dbg !1513
  br i1 %121, label %122, label %166, !dbg !1514

; <label>:122:                                    ; preds = %118
  %123 = load i8*, i8** %13, align 8, !dbg !1515
  %124 = load i8, i8* %123, align 1, !dbg !1517
  %125 = zext i8 %124 to i32, !dbg !1518
  %126 = sext i32 %125 to i64, !dbg !1519
  %127 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1519
  %128 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %127, i32 0, i32 70, !dbg !1520
  %129 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %128, i64 0, i64 %126, !dbg !1519
  %130 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %129, i32 0, i32 0, !dbg !1521
  %131 = load void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %130, align 8, !dbg !1521
  %132 = icmp eq void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* %131, @modes_type_a, !dbg !1522
  br i1 %132, label %199, label %133, !dbg !1523

; <label>:133:                                    ; preds = %122
  %134 = load i8*, i8** %13, align 8, !dbg !1524
  %135 = load i8, i8* %134, align 1, !dbg !1526
  %136 = zext i8 %135 to i32, !dbg !1527
  %137 = sext i32 %136 to i64, !dbg !1528
  %138 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1528
  %139 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %138, i32 0, i32 70, !dbg !1529
  %140 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %139, i64 0, i64 %137, !dbg !1528
  %141 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %140, i32 0, i32 0, !dbg !1530
  %142 = load void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %141, align 8, !dbg !1530
  %143 = icmp eq void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* %142, @modes_type_b, !dbg !1531
  br i1 %143, label %199, label %144, !dbg !1532

; <label>:144:                                    ; preds = %133
  %145 = load i8*, i8** %13, align 8, !dbg !1533
  %146 = load i8, i8* %145, align 1, !dbg !1535
  %147 = zext i8 %146 to i32, !dbg !1536
  %148 = sext i32 %147 to i64, !dbg !1537
  %149 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1537
  %150 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %149, i32 0, i32 70, !dbg !1538
  %151 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %150, i64 0, i64 %148, !dbg !1537
  %152 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %151, i32 0, i32 0, !dbg !1539
  %153 = load void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %152, align 8, !dbg !1539
  %154 = icmp eq void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* %153, @modes_type_prefix, !dbg !1540
  br i1 %154, label %199, label %155, !dbg !1541

; <label>:155:                                    ; preds = %144
  %156 = load i8*, i8** %13, align 8, !dbg !1542
  %157 = load i8, i8* %156, align 1, !dbg !1544
  %158 = zext i8 %157 to i32, !dbg !1545
  %159 = sext i32 %158 to i64, !dbg !1546
  %160 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1546
  %161 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %160, i32 0, i32 70, !dbg !1547
  %162 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %161, i64 0, i64 %159, !dbg !1546
  %163 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %162, i32 0, i32 0, !dbg !1548
  %164 = load void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %163, align 8, !dbg !1548
  %165 = icmp eq void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* %164, @modes_type_c, !dbg !1549
  br i1 %165, label %199, label %206, !dbg !1550

; <label>:166:                                    ; preds = %118
  %167 = load i8*, i8** %13, align 8, !dbg !1551
  %168 = load i8, i8* %167, align 1, !dbg !1553
  %169 = zext i8 %168 to i32, !dbg !1554
  %170 = sext i32 %169 to i64, !dbg !1555
  %171 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1555
  %172 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %171, i32 0, i32 70, !dbg !1556
  %173 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %172, i64 0, i64 %170, !dbg !1555
  %174 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %173, i32 0, i32 0, !dbg !1557
  %175 = load void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %174, align 8, !dbg !1557
  %176 = icmp eq void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* %175, @modes_type_a, !dbg !1558
  br i1 %176, label %199, label %177, !dbg !1559

; <label>:177:                                    ; preds = %166
  %178 = load i8*, i8** %13, align 8, !dbg !1560
  %179 = load i8, i8* %178, align 1, !dbg !1562
  %180 = zext i8 %179 to i32, !dbg !1563
  %181 = sext i32 %180 to i64, !dbg !1564
  %182 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1564
  %183 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %182, i32 0, i32 70, !dbg !1565
  %184 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %183, i64 0, i64 %181, !dbg !1564
  %185 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %184, i32 0, i32 0, !dbg !1566
  %186 = load void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %185, align 8, !dbg !1566
  %187 = icmp eq void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* %186, @modes_type_b, !dbg !1567
  br i1 %187, label %199, label %188, !dbg !1568

; <label>:188:                                    ; preds = %177
  %189 = load i8*, i8** %13, align 8, !dbg !1569
  %190 = load i8, i8* %189, align 1, !dbg !1571
  %191 = zext i8 %190 to i32, !dbg !1572
  %192 = sext i32 %191 to i64, !dbg !1573
  %193 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1573
  %194 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %193, i32 0, i32 70, !dbg !1574
  %195 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %194, i64 0, i64 %192, !dbg !1573
  %196 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %195, i32 0, i32 0, !dbg !1575
  %197 = load void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %196, align 8, !dbg !1575
  %198 = icmp eq void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* %197, @modes_type_prefix, !dbg !1576
  br i1 %198, label %199, label %206, !dbg !1577

; <label>:199:                                    ; preds = %188, %177, %166, %155, %144, %133, %122
  %200 = load i8**, i8*** %16, align 8, !dbg !1578
  %201 = load i8*, i8** %200, align 8, !dbg !1580
  %202 = icmp ne i8* %201, null, !dbg !1581
  br i1 %202, label %203, label %206, !dbg !1582

; <label>:203:                                    ; preds = %199
  %204 = load i8**, i8*** %16, align 8, !dbg !1583
  %205 = getelementptr inbounds i8*, i8** %204, i32 1, !dbg !1583
  store i8** %205, i8*** %16, align 8, !dbg !1583
  br label %206, !dbg !1584

; <label>:206:                                    ; preds = %203, %199, %188, %155
  store i32 1, i32* %19, align 4, !dbg !1585
  br label %207

; <label>:207:                                    ; preds = %206, %115
  br label %208, !dbg !1586

; <label>:208:                                    ; preds = %207, %64
  %209 = load i8*, i8** %13, align 8, !dbg !1587
  %210 = getelementptr inbounds i8, i8* %209, i32 1, !dbg !1587
  store i8* %210, i8** %13, align 8, !dbg !1587
  br label %49, !dbg !1589, !llvm.loop !1590

; <label>:211:                                    ; preds = %49
  %212 = load i32, i32* %19, align 4, !dbg !1591
  %213 = icmp ne i32 %212, 0, !dbg !1591
  br i1 %213, label %215, label %214, !dbg !1593

; <label>:214:                                    ; preds = %211
  call void @signal_stop(), !dbg !1594
  br label %215, !dbg !1594

; <label>:215:                                    ; preds = %214, %211
  %216 = load i8**, i8*** %15, align 8, !dbg !1596
  call void @g_strfreev(i8** %216), !dbg !1597
  %217 = load i8*, i8** %12, align 8, !dbg !1598
  call void @g_free(i8* %217), !dbg !1599
  br label %218, !dbg !1600

; <label>:218:                                    ; preds = %215, %43, %24
  ret void, !dbg !1601
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare i32 @settings_get_bool(i8*) #1

declare i32 @settings_get_int(i8*) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @chat_protocol_check_cast(i8*, i32, i8*) #1

declare i8* @module_check_cast(i8*, i32, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct.NETJOIN_SERVER_REC* @netjoin_find_server(%struct._IRC_SERVER_REC*) #0 !dbg !1603 {
  %2 = alloca %struct.NETJOIN_SERVER_REC*, align 8
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct.NETJOIN_SERVER_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1606, metadata !897), !dbg !1607
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !1608, metadata !897), !dbg !1609
  br label %6, !dbg !1610, !llvm.loop !1611

; <label>:6:                                      ; preds = %1
  %7 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1612
  %8 = icmp ne %struct._IRC_SERVER_REC* %7, null, !dbg !1616
  br i1 %8, label %9, label %10, !dbg !1612

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !1617

; <label>:10:                                     ; preds = %6
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.netjoin_find_server, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0)), !dbg !1620
  store %struct.NETJOIN_SERVER_REC* null, %struct.NETJOIN_SERVER_REC** %2, align 8, !dbg !1623
  br label %35, !dbg !1623

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !1624

; <label>:12:                                     ; preds = %11
  %13 = load %struct._GSList*, %struct._GSList** @joinservers, align 8, !dbg !1626
  store %struct._GSList* %13, %struct._GSList** %4, align 8, !dbg !1628
  br label %14, !dbg !1629

; <label>:14:                                     ; preds = %30, %12
  %15 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1630
  %16 = icmp ne %struct._GSList* %15, null, !dbg !1633
  br i1 %16, label %17, label %34, !dbg !1634

; <label>:17:                                     ; preds = %14
  call void @llvm.dbg.declare(metadata %struct.NETJOIN_SERVER_REC** %5, metadata !1635, metadata !897), !dbg !1637
  %18 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1638
  %19 = getelementptr inbounds %struct._GSList, %struct._GSList* %18, i32 0, i32 0, !dbg !1639
  %20 = load i8*, i8** %19, align 8, !dbg !1639
  %21 = bitcast i8* %20 to %struct.NETJOIN_SERVER_REC*, !dbg !1638
  store %struct.NETJOIN_SERVER_REC* %21, %struct.NETJOIN_SERVER_REC** %5, align 8, !dbg !1637
  %22 = load %struct.NETJOIN_SERVER_REC*, %struct.NETJOIN_SERVER_REC** %5, align 8, !dbg !1640
  %23 = getelementptr inbounds %struct.NETJOIN_SERVER_REC, %struct.NETJOIN_SERVER_REC* %22, i32 0, i32 0, !dbg !1642
  %24 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %23, align 8, !dbg !1642
  %25 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1643
  %26 = icmp eq %struct._IRC_SERVER_REC* %24, %25, !dbg !1644
  br i1 %26, label %27, label %29, !dbg !1645

; <label>:27:                                     ; preds = %17
  %28 = load %struct.NETJOIN_SERVER_REC*, %struct.NETJOIN_SERVER_REC** %5, align 8, !dbg !1646
  store %struct.NETJOIN_SERVER_REC* %28, %struct.NETJOIN_SERVER_REC** %2, align 8, !dbg !1647
  br label %35, !dbg !1647

; <label>:29:                                     ; preds = %17
  br label %30, !dbg !1648

; <label>:30:                                     ; preds = %29
  %31 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1649
  %32 = getelementptr inbounds %struct._GSList, %struct._GSList* %31, i32 0, i32 1, !dbg !1651
  %33 = load %struct._GSList*, %struct._GSList** %32, align 8, !dbg !1651
  store %struct._GSList* %33, %struct._GSList** %4, align 8, !dbg !1652
  br label %14, !dbg !1653, !llvm.loop !1654

; <label>:34:                                     ; preds = %14
  store %struct.NETJOIN_SERVER_REC* null, %struct.NETJOIN_SERVER_REC** %2, align 8, !dbg !1656
  br label %35, !dbg !1656

; <label>:35:                                     ; preds = %34, %27, %10
  %36 = load %struct.NETJOIN_SERVER_REC*, %struct.NETJOIN_SERVER_REC** %2, align 8, !dbg !1657
  ret %struct.NETJOIN_SERVER_REC* %36, !dbg !1657
}

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @netjoin_remove(%struct.NETJOIN_SERVER_REC*, %struct.NETJOIN_REC*) #0 !dbg !1658 {
  %3 = alloca %struct.NETJOIN_SERVER_REC*, align 8
  %4 = alloca %struct.NETJOIN_REC*, align 8
  store %struct.NETJOIN_SERVER_REC* %0, %struct.NETJOIN_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.NETJOIN_SERVER_REC** %3, metadata !1661, metadata !897), !dbg !1662
  store %struct.NETJOIN_REC* %1, %struct.NETJOIN_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.NETJOIN_REC** %4, metadata !1663, metadata !897), !dbg !1664
  %5 = load %struct.NETJOIN_SERVER_REC*, %struct.NETJOIN_SERVER_REC** %3, align 8, !dbg !1665
  %6 = getelementptr inbounds %struct.NETJOIN_SERVER_REC, %struct.NETJOIN_SERVER_REC* %5, i32 0, i32 2, !dbg !1666
  %7 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1666
  %8 = load %struct.NETJOIN_REC*, %struct.NETJOIN_REC** %4, align 8, !dbg !1667
  %9 = bitcast %struct.NETJOIN_REC* %8 to i8*, !dbg !1667
  %10 = call %struct._GSList* @g_slist_remove(%struct._GSList* %7, i8* %9), !dbg !1668
  %11 = load %struct.NETJOIN_SERVER_REC*, %struct.NETJOIN_SERVER_REC** %3, align 8, !dbg !1669
  %12 = getelementptr inbounds %struct.NETJOIN_SERVER_REC, %struct.NETJOIN_SERVER_REC* %11, i32 0, i32 2, !dbg !1670
  store %struct._GSList* %10, %struct._GSList** %12, align 8, !dbg !1671
  %13 = load %struct.NETJOIN_REC*, %struct.NETJOIN_REC** %4, align 8, !dbg !1672
  %14 = getelementptr inbounds %struct.NETJOIN_REC, %struct.NETJOIN_REC* %13, i32 0, i32 1, !dbg !1673
  %15 = load %struct._GSList*, %struct._GSList** %14, align 8, !dbg !1673
  call void @g_slist_foreach(%struct._GSList* %15, void (i8*, i8*)* bitcast (void (i8*)* @g_free to void (i8*, i8*)*), i8* null), !dbg !1674
  %16 = load %struct.NETJOIN_REC*, %struct.NETJOIN_REC** %4, align 8, !dbg !1675
  %17 = getelementptr inbounds %struct.NETJOIN_REC, %struct.NETJOIN_REC* %16, i32 0, i32 2, !dbg !1676
  %18 = load %struct._GSList*, %struct._GSList** %17, align 8, !dbg !1676
  call void @g_slist_foreach(%struct._GSList* %18, void (i8*, i8*)* bitcast (void (i8*)* @g_free to void (i8*, i8*)*), i8* null), !dbg !1677
  %19 = load %struct.NETJOIN_REC*, %struct.NETJOIN_REC** %4, align 8, !dbg !1678
  %20 = getelementptr inbounds %struct.NETJOIN_REC, %struct.NETJOIN_REC* %19, i32 0, i32 1, !dbg !1679
  %21 = load %struct._GSList*, %struct._GSList** %20, align 8, !dbg !1679
  call void @g_slist_free(%struct._GSList* %21), !dbg !1680
  %22 = load %struct.NETJOIN_REC*, %struct.NETJOIN_REC** %4, align 8, !dbg !1681
  %23 = getelementptr inbounds %struct.NETJOIN_REC, %struct.NETJOIN_REC* %22, i32 0, i32 2, !dbg !1682
  %24 = load %struct._GSList*, %struct._GSList** %23, align 8, !dbg !1682
  call void @g_slist_free(%struct._GSList* %24), !dbg !1683
  %25 = load %struct.NETJOIN_REC*, %struct.NETJOIN_REC** %4, align 8, !dbg !1684
  %26 = getelementptr inbounds %struct.NETJOIN_REC, %struct.NETJOIN_REC* %25, i32 0, i32 0, !dbg !1685
  %27 = load i8*, i8** %26, align 8, !dbg !1685
  call void @g_free(i8* %27), !dbg !1686
  %28 = load %struct.NETJOIN_REC*, %struct.NETJOIN_REC** %4, align 8, !dbg !1687
  %29 = bitcast %struct.NETJOIN_REC* %28 to i8*, !dbg !1687
  call void @g_free(i8* %29), !dbg !1688
  ret void, !dbg !1689
}

declare void @g_free(i8*) #1

declare void @g_slist_foreach(%struct._GSList*, void (i8*, i8*)*, i8*) #1

declare void @g_slist_free(%struct._GSList*) #1

; Function Attrs: nounwind uwtable
define internal void @print_netjoins(%struct.NETJOIN_SERVER_REC*, i8*) #0 !dbg !1690 {
  %3 = alloca %struct.NETJOIN_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TEMP_PRINT_REC*, align 8
  %6 = alloca %struct._GHashTable*, align 8
  %7 = alloca %struct._GSList*, align 8
  %8 = alloca %struct._GSList*, align 8
  %9 = alloca %struct._GSList*, align 8
  %10 = alloca %struct._GSList*, align 8
  %11 = alloca %struct._GSList*, align 8
  %12 = alloca %struct.NETJOIN_REC*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.NETJOIN_SERVER_REC* %0, %struct.NETJOIN_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.NETJOIN_SERVER_REC** %3, metadata !1693, metadata !897), !dbg !1694
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1695, metadata !897), !dbg !1696
  call void @llvm.dbg.declare(metadata %struct.TEMP_PRINT_REC** %5, metadata !1697, metadata !897), !dbg !1698
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %6, metadata !1699, metadata !897), !dbg !1700
  call void @llvm.dbg.declare(metadata %struct._GSList** %7, metadata !1701, metadata !897), !dbg !1702
  call void @llvm.dbg.declare(metadata %struct._GSList** %8, metadata !1703, metadata !897), !dbg !1704
  call void @llvm.dbg.declare(metadata %struct._GSList** %9, metadata !1705, metadata !897), !dbg !1706
  call void @llvm.dbg.declare(metadata %struct._GSList** %10, metadata !1707, metadata !897), !dbg !1708
  call void @llvm.dbg.declare(metadata %struct._GSList** %11, metadata !1709, metadata !897), !dbg !1710
  br label %16, !dbg !1711, !llvm.loop !1712

; <label>:16:                                     ; preds = %2
  %17 = load %struct.NETJOIN_SERVER_REC*, %struct.NETJOIN_SERVER_REC** %3, align 8, !dbg !1713
  %18 = icmp ne %struct.NETJOIN_SERVER_REC* %17, null, !dbg !1717
  br i1 %18, label %19, label %20, !dbg !1713

; <label>:19:                                     ; preds = %16
  br label %21, !dbg !1718

; <label>:20:                                     ; preds = %16
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.print_netjoins, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0)), !dbg !1721
  br label %175, !dbg !1724

; <label>:21:                                     ; preds = %19
  br label %22, !dbg !1725

; <label>:22:                                     ; preds = %21
  store i32 1, i32* @printing_joins, align 4, !dbg !1727
  %23 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_istr_hash, i32 (i8*, i8*)* @g_istr_equal), !dbg !1728
  store %struct._GHashTable* %23, %struct._GHashTable** %6, align 8, !dbg !1729
  %24 = load %struct.NETJOIN_SERVER_REC*, %struct.NETJOIN_SERVER_REC** %3, align 8, !dbg !1730
  %25 = getelementptr inbounds %struct.NETJOIN_SERVER_REC, %struct.NETJOIN_SERVER_REC* %24, i32 0, i32 2, !dbg !1732
  %26 = load %struct._GSList*, %struct._GSList** %25, align 8, !dbg !1732
  store %struct._GSList* %26, %struct._GSList** %7, align 8, !dbg !1733
  br label %27, !dbg !1734

; <label>:27:                                     ; preds = %161, %22
  %28 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1735
  %29 = icmp ne %struct._GSList* %28, null, !dbg !1738
  br i1 %29, label %30, label %163, !dbg !1739

; <label>:30:                                     ; preds = %27
  call void @llvm.dbg.declare(metadata %struct.NETJOIN_REC** %12, metadata !1740, metadata !897), !dbg !1742
  %31 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1743
  %32 = getelementptr inbounds %struct._GSList, %struct._GSList* %31, i32 0, i32 0, !dbg !1744
  %33 = load i8*, i8** %32, align 8, !dbg !1744
  %34 = bitcast i8* %33 to %struct.NETJOIN_REC*, !dbg !1743
  store %struct.NETJOIN_REC* %34, %struct.NETJOIN_REC** %12, align 8, !dbg !1742
  %35 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1745
  %36 = icmp ne %struct._GSList* %35, null, !dbg !1746
  br i1 %36, label %37, label %41, !dbg !1746

; <label>:37:                                     ; preds = %30
  %38 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1747
  %39 = getelementptr inbounds %struct._GSList, %struct._GSList* %38, i32 0, i32 1, !dbg !1749
  %40 = load %struct._GSList*, %struct._GSList** %39, align 8, !dbg !1749
  br label %42, !dbg !1750

; <label>:41:                                     ; preds = %30
  br label %42, !dbg !1751

; <label>:42:                                     ; preds = %41, %37
  %43 = phi %struct._GSList* [ %40, %37 ], [ null, %41 ], !dbg !1753
  store %struct._GSList* %43, %struct._GSList** %9, align 8, !dbg !1755
  %44 = load %struct.NETJOIN_REC*, %struct.NETJOIN_REC** %12, align 8, !dbg !1756
  %45 = getelementptr inbounds %struct.NETJOIN_REC, %struct.NETJOIN_REC* %44, i32 0, i32 2, !dbg !1758
  %46 = load %struct._GSList*, %struct._GSList** %45, align 8, !dbg !1758
  store %struct._GSList* %46, %struct._GSList** %8, align 8, !dbg !1759
  br label %47, !dbg !1760

; <label>:47:                                     ; preds = %150, %42
  %48 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1761
  %49 = icmp ne %struct._GSList* %48, null, !dbg !1764
  br i1 %49, label %50, label %152, !dbg !1765

; <label>:50:                                     ; preds = %47
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1766, metadata !897), !dbg !1768
  %51 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1769
  %52 = getelementptr inbounds %struct._GSList, %struct._GSList* %51, i32 0, i32 0, !dbg !1770
  %53 = load i8*, i8** %52, align 8, !dbg !1770
  store i8* %53, i8** %13, align 8, !dbg !1768
  call void @llvm.dbg.declare(metadata i8** %14, metadata !1771, metadata !897), !dbg !1772
  %54 = load i8*, i8** %13, align 8, !dbg !1773
  %55 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !1774
  store i8* %55, i8** %14, align 8, !dbg !1772
  %56 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1775
  %57 = icmp ne %struct._GSList* %56, null, !dbg !1776
  br i1 %57, label %58, label %62, !dbg !1776

; <label>:58:                                     ; preds = %50
  %59 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1777
  %60 = getelementptr inbounds %struct._GSList, %struct._GSList* %59, i32 0, i32 1, !dbg !1779
  %61 = load %struct._GSList*, %struct._GSList** %60, align 8, !dbg !1779
  br label %63, !dbg !1780

; <label>:62:                                     ; preds = %50
  br label %63, !dbg !1781

; <label>:63:                                     ; preds = %62, %58
  %64 = phi %struct._GSList* [ %61, %58 ], [ null, %62 ], !dbg !1783
  store %struct._GSList* %64, %struct._GSList** %10, align 8, !dbg !1785
  %65 = load i8*, i8** %4, align 8, !dbg !1786
  %66 = icmp ne i8* %65, null, !dbg !1788
  br i1 %66, label %67, label %73, !dbg !1789

; <label>:67:                                     ; preds = %63
  %68 = load i8*, i8** %14, align 8, !dbg !1790
  %69 = load i8*, i8** %4, align 8, !dbg !1791
  %70 = call i32 @strcasecmp(i8* %68, i8* %69) #6, !dbg !1792
  %71 = icmp ne i32 %70, 0, !dbg !1793
  br i1 %71, label %72, label %73, !dbg !1794

; <label>:72:                                     ; preds = %67
  br label %150, !dbg !1795

; <label>:73:                                     ; preds = %67, %63
  %74 = load %struct._GHashTable*, %struct._GHashTable** %6, align 8, !dbg !1796
  %75 = load i8*, i8** %14, align 8, !dbg !1797
  %76 = call i8* @g_hash_table_lookup(%struct._GHashTable* %74, i8* %75), !dbg !1798
  %77 = bitcast i8* %76 to %struct.TEMP_PRINT_REC*, !dbg !1798
  store %struct.TEMP_PRINT_REC* %77, %struct.TEMP_PRINT_REC** %5, align 8, !dbg !1799
  %78 = load %struct.TEMP_PRINT_REC*, %struct.TEMP_PRINT_REC** %5, align 8, !dbg !1800
  %79 = icmp eq %struct.TEMP_PRINT_REC* %78, null, !dbg !1802
  br i1 %79, label %80, label %92, !dbg !1803

; <label>:80:                                     ; preds = %73
  %81 = call noalias i8* @g_malloc0_n(i64 1, i64 16), !dbg !1804
  %82 = bitcast i8* %81 to %struct.TEMP_PRINT_REC*, !dbg !1806
  store %struct.TEMP_PRINT_REC* %82, %struct.TEMP_PRINT_REC** %5, align 8, !dbg !1807
  %83 = call %struct._GString* @g_string_new(i8* null), !dbg !1808
  %84 = load %struct.TEMP_PRINT_REC*, %struct.TEMP_PRINT_REC** %5, align 8, !dbg !1809
  %85 = getelementptr inbounds %struct.TEMP_PRINT_REC, %struct.TEMP_PRINT_REC* %84, i32 0, i32 1, !dbg !1810
  store %struct._GString* %83, %struct._GString** %85, align 8, !dbg !1811
  %86 = load %struct._GHashTable*, %struct._GHashTable** %6, align 8, !dbg !1812
  %87 = load i8*, i8** %14, align 8, !dbg !1813
  %88 = call noalias i8* @g_strdup(i8* %87), !dbg !1814
  %89 = load %struct.TEMP_PRINT_REC*, %struct.TEMP_PRINT_REC** %5, align 8, !dbg !1815
  %90 = bitcast %struct.TEMP_PRINT_REC* %89 to i8*, !dbg !1815
  %91 = call i32 @g_hash_table_insert(%struct._GHashTable* %86, i8* %88, i8* %90), !dbg !1816
  br label %92, !dbg !1817

; <label>:92:                                     ; preds = %80, %73
  %93 = load %struct.TEMP_PRINT_REC*, %struct.TEMP_PRINT_REC** %5, align 8, !dbg !1818
  %94 = getelementptr inbounds %struct.TEMP_PRINT_REC, %struct.TEMP_PRINT_REC* %93, i32 0, i32 0, !dbg !1819
  %95 = load i32, i32* %94, align 8, !dbg !1820
  %96 = add nsw i32 %95, 1, !dbg !1820
  store i32 %96, i32* %94, align 8, !dbg !1820
  %97 = load %struct.TEMP_PRINT_REC*, %struct.TEMP_PRINT_REC** %5, align 8, !dbg !1821
  %98 = getelementptr inbounds %struct.TEMP_PRINT_REC, %struct.TEMP_PRINT_REC* %97, i32 0, i32 0, !dbg !1823
  %99 = load i32, i32* %98, align 8, !dbg !1823
  %100 = load i32, i32* @netjoin_max_nicks, align 4, !dbg !1824
  %101 = icmp sle i32 %99, %100, !dbg !1825
  br i1 %101, label %102, label %121, !dbg !1826

; <label>:102:                                    ; preds = %92
  %103 = load i8*, i8** %13, align 8, !dbg !1827
  %104 = load i8, i8* %103, align 1, !dbg !1830
  %105 = sext i8 %104 to i32, !dbg !1830
  %106 = icmp ne i32 %105, 32, !dbg !1831
  br i1 %106, label %107, label %114, !dbg !1832

; <label>:107:                                    ; preds = %102
  %108 = load %struct.TEMP_PRINT_REC*, %struct.TEMP_PRINT_REC** %5, align 8, !dbg !1833
  %109 = getelementptr inbounds %struct.TEMP_PRINT_REC, %struct.TEMP_PRINT_REC* %108, i32 0, i32 1, !dbg !1834
  %110 = load %struct._GString*, %struct._GString** %109, align 8, !dbg !1834
  %111 = load i8*, i8** %13, align 8, !dbg !1835
  %112 = load i8, i8* %111, align 1, !dbg !1836
  %113 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %110, i8 signext %112), !dbg !1837
  br label %114, !dbg !1837

; <label>:114:                                    ; preds = %107, %102
  %115 = load %struct.TEMP_PRINT_REC*, %struct.TEMP_PRINT_REC** %5, align 8, !dbg !1838
  %116 = getelementptr inbounds %struct.TEMP_PRINT_REC, %struct.TEMP_PRINT_REC* %115, i32 0, i32 1, !dbg !1839
  %117 = load %struct._GString*, %struct._GString** %116, align 8, !dbg !1839
  %118 = load %struct.NETJOIN_REC*, %struct.NETJOIN_REC** %12, align 8, !dbg !1840
  %119 = getelementptr inbounds %struct.NETJOIN_REC, %struct.NETJOIN_REC* %118, i32 0, i32 0, !dbg !1841
  %120 = load i8*, i8** %119, align 8, !dbg !1841
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* %120), !dbg !1842
  br label %121, !dbg !1843

; <label>:121:                                    ; preds = %114, %92
  %122 = load %struct.NETJOIN_REC*, %struct.NETJOIN_REC** %12, align 8, !dbg !1844
  %123 = getelementptr inbounds %struct.NETJOIN_REC, %struct.NETJOIN_REC* %122, i32 0, i32 1, !dbg !1845
  %124 = load %struct._GSList*, %struct._GSList** %123, align 8, !dbg !1845
  %125 = load i8*, i8** %14, align 8, !dbg !1846
  %126 = call %struct._GSList* @gslist_find_icase_string(%struct._GSList* %124, i8* %125), !dbg !1847
  store %struct._GSList* %126, %struct._GSList** %11, align 8, !dbg !1848
  %127 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !1849
  %128 = icmp ne %struct._GSList* %127, null, !dbg !1851
  br i1 %128, label %129, label %141, !dbg !1852

; <label>:129:                                    ; preds = %121
  call void @llvm.dbg.declare(metadata i8** %15, metadata !1853, metadata !897), !dbg !1855
  %130 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !1856
  %131 = getelementptr inbounds %struct._GSList, %struct._GSList* %130, i32 0, i32 0, !dbg !1857
  %132 = load i8*, i8** %131, align 8, !dbg !1857
  store i8* %132, i8** %15, align 8, !dbg !1855
  %133 = load %struct.NETJOIN_REC*, %struct.NETJOIN_REC** %12, align 8, !dbg !1858
  %134 = getelementptr inbounds %struct.NETJOIN_REC, %struct.NETJOIN_REC* %133, i32 0, i32 1, !dbg !1859
  %135 = load %struct._GSList*, %struct._GSList** %134, align 8, !dbg !1859
  %136 = load i8*, i8** %15, align 8, !dbg !1860
  %137 = call %struct._GSList* @g_slist_remove(%struct._GSList* %135, i8* %136), !dbg !1861
  %138 = load %struct.NETJOIN_REC*, %struct.NETJOIN_REC** %12, align 8, !dbg !1862
  %139 = getelementptr inbounds %struct.NETJOIN_REC, %struct.NETJOIN_REC* %138, i32 0, i32 1, !dbg !1863
  store %struct._GSList* %137, %struct._GSList** %139, align 8, !dbg !1864
  %140 = load i8*, i8** %15, align 8, !dbg !1865
  call void @g_free(i8* %140), !dbg !1866
  br label %141, !dbg !1867

; <label>:141:                                    ; preds = %129, %121
  %142 = load %struct.NETJOIN_REC*, %struct.NETJOIN_REC** %12, align 8, !dbg !1868
  %143 = getelementptr inbounds %struct.NETJOIN_REC, %struct.NETJOIN_REC* %142, i32 0, i32 2, !dbg !1869
  %144 = load %struct._GSList*, %struct._GSList** %143, align 8, !dbg !1869
  %145 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1870
  %146 = call %struct._GSList* @g_slist_delete_link(%struct._GSList* %144, %struct._GSList* %145), !dbg !1871
  %147 = load %struct.NETJOIN_REC*, %struct.NETJOIN_REC** %12, align 8, !dbg !1872
  %148 = getelementptr inbounds %struct.NETJOIN_REC, %struct.NETJOIN_REC* %147, i32 0, i32 2, !dbg !1873
  store %struct._GSList* %146, %struct._GSList** %148, align 8, !dbg !1874
  %149 = load i8*, i8** %13, align 8, !dbg !1875
  call void @g_free(i8* %149), !dbg !1876
  br label %150, !dbg !1877

; <label>:150:                                    ; preds = %141, %72
  %151 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !1878
  store %struct._GSList* %151, %struct._GSList** %8, align 8, !dbg !1880
  br label %47, !dbg !1881, !llvm.loop !1882

; <label>:152:                                    ; preds = %47
  %153 = load %struct.NETJOIN_REC*, %struct.NETJOIN_REC** %12, align 8, !dbg !1884
  %154 = getelementptr inbounds %struct.NETJOIN_REC, %struct.NETJOIN_REC* %153, i32 0, i32 1, !dbg !1886
  %155 = load %struct._GSList*, %struct._GSList** %154, align 8, !dbg !1886
  %156 = icmp eq %struct._GSList* %155, null, !dbg !1887
  br i1 %156, label %157, label %160, !dbg !1888

; <label>:157:                                    ; preds = %152
  %158 = load %struct.NETJOIN_SERVER_REC*, %struct.NETJOIN_SERVER_REC** %3, align 8, !dbg !1889
  %159 = load %struct.NETJOIN_REC*, %struct.NETJOIN_REC** %12, align 8, !dbg !1890
  call void @netjoin_remove(%struct.NETJOIN_SERVER_REC* %158, %struct.NETJOIN_REC* %159), !dbg !1891
  br label %160, !dbg !1891

; <label>:160:                                    ; preds = %157, %152
  br label %161, !dbg !1892

; <label>:161:                                    ; preds = %160
  %162 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !1893
  store %struct._GSList* %162, %struct._GSList** %7, align 8, !dbg !1895
  br label %27, !dbg !1896, !llvm.loop !1897

; <label>:163:                                    ; preds = %27
  %164 = load %struct._GHashTable*, %struct._GHashTable** %6, align 8, !dbg !1899
  %165 = load %struct.NETJOIN_SERVER_REC*, %struct.NETJOIN_SERVER_REC** %3, align 8, !dbg !1900
  %166 = bitcast %struct.NETJOIN_SERVER_REC* %165 to i8*, !dbg !1900
  call void @g_hash_table_foreach(%struct._GHashTable* %164, void (i8*, i8*, i8*)* bitcast (void (i8*, %struct.TEMP_PRINT_REC*, %struct.NETJOIN_SERVER_REC*)* @print_channel_netjoins to void (i8*, i8*, i8*)*), i8* %166), !dbg !1901
  %167 = load %struct._GHashTable*, %struct._GHashTable** %6, align 8, !dbg !1902
  call void @g_hash_table_destroy(%struct._GHashTable* %167), !dbg !1903
  %168 = load %struct.NETJOIN_SERVER_REC*, %struct.NETJOIN_SERVER_REC** %3, align 8, !dbg !1904
  %169 = getelementptr inbounds %struct.NETJOIN_SERVER_REC, %struct.NETJOIN_SERVER_REC* %168, i32 0, i32 2, !dbg !1906
  %170 = load %struct._GSList*, %struct._GSList** %169, align 8, !dbg !1906
  %171 = icmp eq %struct._GSList* %170, null, !dbg !1907
  br i1 %171, label %172, label %174, !dbg !1908

; <label>:172:                                    ; preds = %163
  %173 = load %struct.NETJOIN_SERVER_REC*, %struct.NETJOIN_SERVER_REC** %3, align 8, !dbg !1909
  call void @netjoin_server_remove(%struct.NETJOIN_SERVER_REC* %173), !dbg !1910
  br label %174, !dbg !1910

; <label>:174:                                    ; preds = %172, %163
  store i32 0, i32* @printing_joins, align 4, !dbg !1911
  br label %175, !dbg !1912

; <label>:175:                                    ; preds = %174, %20
  ret void, !dbg !1913
}

declare %struct._GHashTable* @g_hash_table_new(i32 (i8*)*, i32 (i8*, i8*)*) #1

declare i32 @g_istr_hash(i8*) #1

declare i32 @g_istr_equal(i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strcasecmp(i8*, i8*) #3

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare %struct._GString* @g_string_new(i8*) #1

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #1

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._GString* @g_string_append_c_inline(%struct._GString*, i8 signext) #4 !dbg !1915 {
  %3 = alloca %struct._GString*, align 8
  %4 = alloca i8, align 1
  store %struct._GString* %0, %struct._GString** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._GString** %3, metadata !1918, metadata !897), !dbg !1919
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !1920, metadata !897), !dbg !1921
  %5 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1922
  %6 = getelementptr inbounds %struct._GString, %struct._GString* %5, i32 0, i32 1, !dbg !1924
  %7 = load i64, i64* %6, align 8, !dbg !1924
  %8 = add i64 %7, 1, !dbg !1925
  %9 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1926
  %10 = getelementptr inbounds %struct._GString, %struct._GString* %9, i32 0, i32 2, !dbg !1927
  %11 = load i64, i64* %10, align 8, !dbg !1927
  %12 = icmp ult i64 %8, %11, !dbg !1928
  br i1 %12, label %13, label %30, !dbg !1929

; <label>:13:                                     ; preds = %2
  %14 = load i8, i8* %4, align 1, !dbg !1930
  %15 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1932
  %16 = getelementptr inbounds %struct._GString, %struct._GString* %15, i32 0, i32 1, !dbg !1933
  %17 = load i64, i64* %16, align 8, !dbg !1934
  %18 = add i64 %17, 1, !dbg !1934
  store i64 %18, i64* %16, align 8, !dbg !1934
  %19 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1935
  %20 = getelementptr inbounds %struct._GString, %struct._GString* %19, i32 0, i32 0, !dbg !1936
  %21 = load i8*, i8** %20, align 8, !dbg !1936
  %22 = getelementptr inbounds i8, i8* %21, i64 %17, !dbg !1935
  store i8 %14, i8* %22, align 1, !dbg !1937
  %23 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1938
  %24 = getelementptr inbounds %struct._GString, %struct._GString* %23, i32 0, i32 1, !dbg !1939
  %25 = load i64, i64* %24, align 8, !dbg !1939
  %26 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1940
  %27 = getelementptr inbounds %struct._GString, %struct._GString* %26, i32 0, i32 0, !dbg !1941
  %28 = load i8*, i8** %27, align 8, !dbg !1941
  %29 = getelementptr inbounds i8, i8* %28, i64 %25, !dbg !1940
  store i8 0, i8* %29, align 1, !dbg !1942
  br label %34, !dbg !1943

; <label>:30:                                     ; preds = %2
  %31 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1944
  %32 = load i8, i8* %4, align 1, !dbg !1945
  %33 = call %struct._GString* @g_string_insert_c(%struct._GString* %31, i64 -1, i8 signext %32), !dbg !1946
  br label %34

; <label>:34:                                     ; preds = %30, %13
  %35 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1947
  ret %struct._GString* %35, !dbg !1948
}

declare void @g_string_append_printf(%struct._GString*, i8*, ...) #1

declare %struct._GSList* @gslist_find_icase_string(%struct._GSList*, i8*) #1

declare %struct._GSList* @g_slist_delete_link(%struct._GSList*, %struct._GSList*) #1

declare void @g_hash_table_foreach(%struct._GHashTable*, void (i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @print_channel_netjoins(i8*, %struct.TEMP_PRINT_REC*, %struct.NETJOIN_SERVER_REC*) #0 !dbg !1949 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TEMP_PRINT_REC*, align 8
  %6 = alloca %struct.NETJOIN_SERVER_REC*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1952, metadata !897), !dbg !1953
  store %struct.TEMP_PRINT_REC* %1, %struct.TEMP_PRINT_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.TEMP_PRINT_REC** %5, metadata !1954, metadata !897), !dbg !1955
  store %struct.NETJOIN_SERVER_REC* %2, %struct.NETJOIN_SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.NETJOIN_SERVER_REC** %6, metadata !1956, metadata !897), !dbg !1957
  %7 = load %struct.TEMP_PRINT_REC*, %struct.TEMP_PRINT_REC** %5, align 8, !dbg !1958
  %8 = getelementptr inbounds %struct.TEMP_PRINT_REC, %struct.TEMP_PRINT_REC* %7, i32 0, i32 1, !dbg !1960
  %9 = load %struct._GString*, %struct._GString** %8, align 8, !dbg !1960
  %10 = getelementptr inbounds %struct._GString, %struct._GString* %9, i32 0, i32 1, !dbg !1961
  %11 = load i64, i64* %10, align 8, !dbg !1961
  %12 = icmp ugt i64 %11, 0, !dbg !1962
  br i1 %12, label %13, label %24, !dbg !1963

; <label>:13:                                     ; preds = %3
  %14 = load %struct.TEMP_PRINT_REC*, %struct.TEMP_PRINT_REC** %5, align 8, !dbg !1964
  %15 = getelementptr inbounds %struct.TEMP_PRINT_REC, %struct.TEMP_PRINT_REC* %14, i32 0, i32 1, !dbg !1965
  %16 = load %struct._GString*, %struct._GString** %15, align 8, !dbg !1965
  %17 = load %struct.TEMP_PRINT_REC*, %struct.TEMP_PRINT_REC** %5, align 8, !dbg !1966
  %18 = getelementptr inbounds %struct.TEMP_PRINT_REC, %struct.TEMP_PRINT_REC* %17, i32 0, i32 1, !dbg !1967
  %19 = load %struct._GString*, %struct._GString** %18, align 8, !dbg !1967
  %20 = getelementptr inbounds %struct._GString, %struct._GString* %19, i32 0, i32 1, !dbg !1968
  %21 = load i64, i64* %20, align 8, !dbg !1968
  %22 = sub i64 %21, 2, !dbg !1969
  %23 = call %struct._GString* @g_string_truncate(%struct._GString* %16, i64 %22), !dbg !1970
  br label %24, !dbg !1970

; <label>:24:                                     ; preds = %13, %3
  %25 = load %struct.NETJOIN_SERVER_REC*, %struct.NETJOIN_SERVER_REC** %6, align 8, !dbg !1971
  %26 = getelementptr inbounds %struct.NETJOIN_SERVER_REC, %struct.NETJOIN_SERVER_REC* %25, i32 0, i32 0, !dbg !1972
  %27 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %26, align 8, !dbg !1972
  %28 = bitcast %struct._IRC_SERVER_REC* %27 to i8*, !dbg !1971
  %29 = load i8*, i8** %4, align 8, !dbg !1973
  %30 = load %struct.TEMP_PRINT_REC*, %struct.TEMP_PRINT_REC** %5, align 8, !dbg !1974
  %31 = getelementptr inbounds %struct.TEMP_PRINT_REC, %struct.TEMP_PRINT_REC* %30, i32 0, i32 0, !dbg !1975
  %32 = load i32, i32* %31, align 8, !dbg !1975
  %33 = load i32, i32* @netjoin_max_nicks, align 4, !dbg !1976
  %34 = icmp sgt i32 %32, %33, !dbg !1977
  %35 = select i1 %34, i32 5, i32 4, !dbg !1974
  %36 = load %struct.TEMP_PRINT_REC*, %struct.TEMP_PRINT_REC** %5, align 8, !dbg !1978
  %37 = getelementptr inbounds %struct.TEMP_PRINT_REC, %struct.TEMP_PRINT_REC* %36, i32 0, i32 1, !dbg !1979
  %38 = load %struct._GString*, %struct._GString** %37, align 8, !dbg !1979
  %39 = getelementptr inbounds %struct._GString, %struct._GString* %38, i32 0, i32 0, !dbg !1980
  %40 = load i8*, i8** %39, align 8, !dbg !1980
  %41 = load %struct.TEMP_PRINT_REC*, %struct.TEMP_PRINT_REC** %5, align 8, !dbg !1981
  %42 = getelementptr inbounds %struct.TEMP_PRINT_REC, %struct.TEMP_PRINT_REC* %41, i32 0, i32 0, !dbg !1982
  %43 = load i32, i32* %42, align 8, !dbg !1982
  %44 = load i32, i32* @netjoin_max_nicks, align 4, !dbg !1983
  %45 = sub nsw i32 %43, %44, !dbg !1984
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %28, i8* %29, i32 128, i32 %35, i8* %40, i32 %45), !dbg !1985
  %46 = load %struct.TEMP_PRINT_REC*, %struct.TEMP_PRINT_REC** %5, align 8, !dbg !1986
  %47 = getelementptr inbounds %struct.TEMP_PRINT_REC, %struct.TEMP_PRINT_REC* %46, i32 0, i32 1, !dbg !1987
  %48 = load %struct._GString*, %struct._GString** %47, align 8, !dbg !1987
  %49 = call i8* @g_string_free(%struct._GString* %48, i32 1), !dbg !1988
  %50 = load %struct.TEMP_PRINT_REC*, %struct.TEMP_PRINT_REC** %5, align 8, !dbg !1989
  %51 = bitcast %struct.TEMP_PRINT_REC* %50 to i8*, !dbg !1989
  call void @g_free(i8* %51), !dbg !1990
  %52 = load i8*, i8** %4, align 8, !dbg !1991
  call void @g_free(i8* %52), !dbg !1992
  ret void, !dbg !1993
}

declare void @g_hash_table_destroy(%struct._GHashTable*) #1

declare %struct._GString* @g_string_insert_c(%struct._GString*, i64, i8 signext) #1

declare %struct._GString* @g_string_truncate(%struct._GString*, i64) #1

declare void @printformat_module(i8*, i8*, i8*, i32, i32, ...) #1

declare i8* @g_string_free(%struct._GString*, i32) #1

declare i32 @quitmsg_is_split(i8*) #1

declare void @signal_stop() #1

declare i32 @ignore_check(%struct._SERVER_REC*, i8*, i8*, i8*, i8*, i32) #1

declare %struct.NETSPLIT_REC* @netsplit_find(%struct._IRC_SERVER_REC*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct.NETJOIN_REC* @netjoin_find(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !1994 {
  %3 = alloca %struct.NETJOIN_REC*, align 8
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.NETJOIN_SERVER_REC*, align 8
  %7 = alloca %struct._GSList*, align 8
  %8 = alloca %struct.NETJOIN_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !1997, metadata !897), !dbg !1998
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1999, metadata !897), !dbg !2000
  call void @llvm.dbg.declare(metadata %struct.NETJOIN_SERVER_REC** %6, metadata !2001, metadata !897), !dbg !2002
  call void @llvm.dbg.declare(metadata %struct._GSList** %7, metadata !2003, metadata !897), !dbg !2004
  br label %9, !dbg !2005, !llvm.loop !2006

; <label>:9:                                      ; preds = %2
  %10 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2007
  %11 = icmp ne %struct._IRC_SERVER_REC* %10, null, !dbg !2011
  br i1 %11, label %12, label %13, !dbg !2007

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !2012

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.netjoin_find, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0)), !dbg !2015
  store %struct.NETJOIN_REC* null, %struct.NETJOIN_REC** %3, align 8, !dbg !2018
  br label %54, !dbg !2018

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !2019

; <label>:15:                                     ; preds = %14
  br label %16, !dbg !2021, !llvm.loop !2022

; <label>:16:                                     ; preds = %15
  %17 = load i8*, i8** %5, align 8, !dbg !2023
  %18 = icmp ne i8* %17, null, !dbg !2027
  br i1 %18, label %19, label %20, !dbg !2023

; <label>:19:                                     ; preds = %16
  br label %21, !dbg !2028

; <label>:20:                                     ; preds = %16
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.netjoin_find, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0)), !dbg !2031
  store %struct.NETJOIN_REC* null, %struct.NETJOIN_REC** %3, align 8, !dbg !2034
  br label %54, !dbg !2034

; <label>:21:                                     ; preds = %19
  br label %22, !dbg !2035

; <label>:22:                                     ; preds = %21
  %23 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2037
  %24 = call %struct.NETJOIN_SERVER_REC* @netjoin_find_server(%struct._IRC_SERVER_REC* %23), !dbg !2038
  store %struct.NETJOIN_SERVER_REC* %24, %struct.NETJOIN_SERVER_REC** %6, align 8, !dbg !2039
  %25 = load %struct.NETJOIN_SERVER_REC*, %struct.NETJOIN_SERVER_REC** %6, align 8, !dbg !2040
  %26 = icmp eq %struct.NETJOIN_SERVER_REC* %25, null, !dbg !2042
  br i1 %26, label %27, label %28, !dbg !2043

; <label>:27:                                     ; preds = %22
  store %struct.NETJOIN_REC* null, %struct.NETJOIN_REC** %3, align 8, !dbg !2044
  br label %54, !dbg !2044

; <label>:28:                                     ; preds = %22
  %29 = load %struct.NETJOIN_SERVER_REC*, %struct.NETJOIN_SERVER_REC** %6, align 8, !dbg !2046
  %30 = getelementptr inbounds %struct.NETJOIN_SERVER_REC, %struct.NETJOIN_SERVER_REC* %29, i32 0, i32 2, !dbg !2048
  %31 = load %struct._GSList*, %struct._GSList** %30, align 8, !dbg !2048
  store %struct._GSList* %31, %struct._GSList** %7, align 8, !dbg !2049
  br label %32, !dbg !2050

; <label>:32:                                     ; preds = %49, %28
  %33 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !2051
  %34 = icmp ne %struct._GSList* %33, null, !dbg !2054
  br i1 %34, label %35, label %53, !dbg !2055

; <label>:35:                                     ; preds = %32
  call void @llvm.dbg.declare(metadata %struct.NETJOIN_REC** %8, metadata !2056, metadata !897), !dbg !2058
  %36 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !2059
  %37 = getelementptr inbounds %struct._GSList, %struct._GSList* %36, i32 0, i32 0, !dbg !2060
  %38 = load i8*, i8** %37, align 8, !dbg !2060
  %39 = bitcast i8* %38 to %struct.NETJOIN_REC*, !dbg !2059
  store %struct.NETJOIN_REC* %39, %struct.NETJOIN_REC** %8, align 8, !dbg !2058
  %40 = load %struct.NETJOIN_REC*, %struct.NETJOIN_REC** %8, align 8, !dbg !2061
  %41 = getelementptr inbounds %struct.NETJOIN_REC, %struct.NETJOIN_REC* %40, i32 0, i32 0, !dbg !2063
  %42 = load i8*, i8** %41, align 8, !dbg !2063
  %43 = load i8*, i8** %5, align 8, !dbg !2064
  %44 = call i32 @g_ascii_strcasecmp(i8* %42, i8* %43), !dbg !2065
  %45 = icmp eq i32 %44, 0, !dbg !2066
  br i1 %45, label %46, label %48, !dbg !2067

; <label>:46:                                     ; preds = %35
  %47 = load %struct.NETJOIN_REC*, %struct.NETJOIN_REC** %8, align 8, !dbg !2068
  store %struct.NETJOIN_REC* %47, %struct.NETJOIN_REC** %3, align 8, !dbg !2069
  br label %54, !dbg !2069

; <label>:48:                                     ; preds = %35
  br label %49, !dbg !2070

; <label>:49:                                     ; preds = %48
  %50 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !2071
  %51 = getelementptr inbounds %struct._GSList, %struct._GSList* %50, i32 0, i32 1, !dbg !2073
  %52 = load %struct._GSList*, %struct._GSList** %51, align 8, !dbg !2073
  store %struct._GSList* %52, %struct._GSList** %7, align 8, !dbg !2074
  br label %32, !dbg !2075, !llvm.loop !2076

; <label>:53:                                     ; preds = %32
  store %struct.NETJOIN_REC* null, %struct.NETJOIN_REC** %3, align 8, !dbg !2078
  br label %54, !dbg !2078

; <label>:54:                                     ; preds = %53, %46, %27, %20, %13
  %55 = load %struct.NETJOIN_REC*, %struct.NETJOIN_REC** %3, align 8, !dbg !2079
  ret %struct.NETJOIN_REC* %55, !dbg !2079
}

declare i32 @g_timeout_add(i32, i32 (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @sig_check_netjoins() #0 !dbg !2080 {
  %1 = alloca %struct._GSList*, align 8
  %2 = alloca %struct._GSList*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.NETJOIN_SERVER_REC*, align 8
  %6 = alloca %struct.NETJOIN_SERVER_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %1, metadata !2083, metadata !897), !dbg !2084
  call void @llvm.dbg.declare(metadata %struct._GSList** %2, metadata !2085, metadata !897), !dbg !2086
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2087, metadata !897), !dbg !2088
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2089, metadata !897), !dbg !2090
  %7 = call i64 @time(i64* null) #7, !dbg !2091
  store i64 %7, i64* %4, align 8, !dbg !2092
  %8 = load %struct._GSList*, %struct._GSList** @joinservers, align 8, !dbg !2093
  store %struct._GSList* %8, %struct._GSList** %1, align 8, !dbg !2095
  br label %9, !dbg !2096

; <label>:9:                                      ; preds = %37, %0
  %10 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !2097
  %11 = icmp ne %struct._GSList* %10, null, !dbg !2100
  br i1 %11, label %12, label %39, !dbg !2101

; <label>:12:                                     ; preds = %9
  call void @llvm.dbg.declare(metadata %struct.NETJOIN_SERVER_REC** %5, metadata !2102, metadata !897), !dbg !2104
  %13 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !2105
  %14 = getelementptr inbounds %struct._GSList, %struct._GSList* %13, i32 0, i32 0, !dbg !2106
  %15 = load i8*, i8** %14, align 8, !dbg !2106
  %16 = bitcast i8* %15 to %struct.NETJOIN_SERVER_REC*, !dbg !2105
  store %struct.NETJOIN_SERVER_REC* %16, %struct.NETJOIN_SERVER_REC** %5, align 8, !dbg !2104
  %17 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !2107
  %18 = getelementptr inbounds %struct._GSList, %struct._GSList* %17, i32 0, i32 1, !dbg !2108
  %19 = load %struct._GSList*, %struct._GSList** %18, align 8, !dbg !2108
  store %struct._GSList* %19, %struct._GSList** %2, align 8, !dbg !2109
  %20 = load i64, i64* %4, align 8, !dbg !2110
  %21 = load %struct.NETJOIN_SERVER_REC*, %struct.NETJOIN_SERVER_REC** %5, align 8, !dbg !2111
  %22 = getelementptr inbounds %struct.NETJOIN_SERVER_REC, %struct.NETJOIN_SERVER_REC* %21, i32 0, i32 1, !dbg !2112
  %23 = load i64, i64* %22, align 8, !dbg !2112
  %24 = sub nsw i64 %20, %23, !dbg !2113
  %25 = trunc i64 %24 to i32, !dbg !2110
  store i32 %25, i32* %3, align 4, !dbg !2114
  %26 = load i32, i32* %3, align 4, !dbg !2115
  %27 = icmp sle i32 %26, 5, !dbg !2117
  br i1 %27, label %28, label %29, !dbg !2118

; <label>:28:                                     ; preds = %12
  br label %37, !dbg !2119

; <label>:29:                                     ; preds = %12
  %30 = load %struct.NETJOIN_SERVER_REC*, %struct.NETJOIN_SERVER_REC** %5, align 8, !dbg !2121
  %31 = getelementptr inbounds %struct.NETJOIN_SERVER_REC, %struct.NETJOIN_SERVER_REC* %30, i32 0, i32 2, !dbg !2123
  %32 = load %struct._GSList*, %struct._GSList** %31, align 8, !dbg !2123
  %33 = icmp ne %struct._GSList* %32, null, !dbg !2124
  br i1 %33, label %34, label %36, !dbg !2125

; <label>:34:                                     ; preds = %29
  %35 = load %struct.NETJOIN_SERVER_REC*, %struct.NETJOIN_SERVER_REC** %5, align 8, !dbg !2126
  call void @print_netjoins(%struct.NETJOIN_SERVER_REC* %35, i8* null), !dbg !2127
  br label %36, !dbg !2127

; <label>:36:                                     ; preds = %34, %29
  br label %37, !dbg !2128

; <label>:37:                                     ; preds = %36, %28
  %38 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !2129
  store %struct._GSList* %38, %struct._GSList** %1, align 8, !dbg !2131
  br label %9, !dbg !2132, !llvm.loop !2133

; <label>:39:                                     ; preds = %9
  %40 = load %struct._GSList*, %struct._GSList** @joinservers, align 8, !dbg !2135
  store %struct._GSList* %40, %struct._GSList** %1, align 8, !dbg !2137
  br label %41, !dbg !2138

; <label>:41:                                     ; preds = %63, %39
  %42 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !2139
  %43 = icmp ne %struct._GSList* %42, null, !dbg !2142
  br i1 %43, label %44, label %65, !dbg !2143

; <label>:44:                                     ; preds = %41
  call void @llvm.dbg.declare(metadata %struct.NETJOIN_SERVER_REC** %6, metadata !2144, metadata !897), !dbg !2146
  %45 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !2147
  %46 = getelementptr inbounds %struct._GSList, %struct._GSList* %45, i32 0, i32 0, !dbg !2148
  %47 = load i8*, i8** %46, align 8, !dbg !2148
  %48 = bitcast i8* %47 to %struct.NETJOIN_SERVER_REC*, !dbg !2147
  store %struct.NETJOIN_SERVER_REC* %48, %struct.NETJOIN_SERVER_REC** %6, align 8, !dbg !2146
  %49 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !2149
  %50 = getelementptr inbounds %struct._GSList, %struct._GSList* %49, i32 0, i32 1, !dbg !2150
  %51 = load %struct._GSList*, %struct._GSList** %50, align 8, !dbg !2150
  store %struct._GSList* %51, %struct._GSList** %2, align 8, !dbg !2151
  %52 = load i64, i64* %4, align 8, !dbg !2152
  %53 = load %struct.NETJOIN_SERVER_REC*, %struct.NETJOIN_SERVER_REC** %6, align 8, !dbg !2153
  %54 = getelementptr inbounds %struct.NETJOIN_SERVER_REC, %struct.NETJOIN_SERVER_REC* %53, i32 0, i32 1, !dbg !2154
  %55 = load i64, i64* %54, align 8, !dbg !2154
  %56 = sub nsw i64 %52, %55, !dbg !2155
  %57 = trunc i64 %56 to i32, !dbg !2152
  store i32 %57, i32* %3, align 4, !dbg !2156
  %58 = load i32, i32* %3, align 4, !dbg !2157
  %59 = icmp sge i32 %58, 30, !dbg !2159
  br i1 %59, label %60, label %62, !dbg !2160

; <label>:60:                                     ; preds = %44
  %61 = load %struct.NETJOIN_SERVER_REC*, %struct.NETJOIN_SERVER_REC** %6, align 8, !dbg !2161
  call void @netjoin_server_remove(%struct.NETJOIN_SERVER_REC* %61), !dbg !2163
  br label %62, !dbg !2164

; <label>:62:                                     ; preds = %60, %44
  br label %63, !dbg !2165

; <label>:63:                                     ; preds = %62
  %64 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !2166
  store %struct._GSList* %64, %struct._GSList** %1, align 8, !dbg !2168
  br label %41, !dbg !2169, !llvm.loop !2170

; <label>:65:                                     ; preds = %41
  %66 = load %struct._GSList*, %struct._GSList** @joinservers, align 8, !dbg !2172
  %67 = icmp eq %struct._GSList* %66, null, !dbg !2174
  br i1 %67, label %68, label %71, !dbg !2175

; <label>:68:                                     ; preds = %65
  %69 = load i32, i32* @join_tag, align 4, !dbg !2176
  %70 = call i32 @g_source_remove(i32 %69), !dbg !2178
  call void @signal_remove_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._TEXT_DEST_REC*)* @sig_print_starting to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2179
  store i32 -1, i32* @join_tag, align 4, !dbg !2180
  br label %71, !dbg !2181

; <label>:71:                                     ; preds = %68, %65
  ret i32 1, !dbg !2182
}

; Function Attrs: nounwind uwtable
define internal %struct.NETJOIN_REC* @netjoin_add(%struct._IRC_SERVER_REC*, i8*, %struct._GSList*) #0 !dbg !2183 {
  %4 = alloca %struct.NETJOIN_REC*, align 8
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._GSList*, align 8
  %8 = alloca %struct.NETJOIN_REC*, align 8
  %9 = alloca %struct.NETJOIN_SERVER_REC*, align 8
  %10 = alloca %struct.NETSPLIT_CHAN_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !2186, metadata !897), !dbg !2187
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2188, metadata !897), !dbg !2189
  store %struct._GSList* %2, %struct._GSList** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %7, metadata !2190, metadata !897), !dbg !2191
  call void @llvm.dbg.declare(metadata %struct.NETJOIN_REC** %8, metadata !2192, metadata !897), !dbg !2193
  call void @llvm.dbg.declare(metadata %struct.NETJOIN_SERVER_REC** %9, metadata !2194, metadata !897), !dbg !2195
  br label %11, !dbg !2196, !llvm.loop !2197

; <label>:11:                                     ; preds = %3
  %12 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2198
  %13 = icmp ne %struct._IRC_SERVER_REC* %12, null, !dbg !2202
  br i1 %13, label %14, label %15, !dbg !2198

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !2203

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.netjoin_add, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0)), !dbg !2206
  store %struct.NETJOIN_REC* null, %struct.NETJOIN_REC** %4, align 8, !dbg !2209
  br label %80, !dbg !2209

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !2210

; <label>:17:                                     ; preds = %16
  br label %18, !dbg !2212, !llvm.loop !2213

; <label>:18:                                     ; preds = %17
  %19 = load i8*, i8** %6, align 8, !dbg !2214
  %20 = icmp ne i8* %19, null, !dbg !2218
  br i1 %20, label %21, label %22, !dbg !2214

; <label>:21:                                     ; preds = %18
  br label %23, !dbg !2219

; <label>:22:                                     ; preds = %18
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.netjoin_add, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0)), !dbg !2222
  store %struct.NETJOIN_REC* null, %struct.NETJOIN_REC** %4, align 8, !dbg !2225
  br label %80, !dbg !2225

; <label>:23:                                     ; preds = %21
  br label %24, !dbg !2226

; <label>:24:                                     ; preds = %23
  %25 = call noalias i8* @g_malloc0_n(i64 1, i64 24), !dbg !2228
  %26 = bitcast i8* %25 to %struct.NETJOIN_REC*, !dbg !2229
  store %struct.NETJOIN_REC* %26, %struct.NETJOIN_REC** %8, align 8, !dbg !2230
  %27 = load i8*, i8** %6, align 8, !dbg !2231
  %28 = call noalias i8* @g_strdup(i8* %27), !dbg !2232
  %29 = load %struct.NETJOIN_REC*, %struct.NETJOIN_REC** %8, align 8, !dbg !2233
  %30 = getelementptr inbounds %struct.NETJOIN_REC, %struct.NETJOIN_REC* %29, i32 0, i32 0, !dbg !2234
  store i8* %28, i8** %30, align 8, !dbg !2235
  br label %31, !dbg !2236

; <label>:31:                                     ; preds = %34, %24
  %32 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !2237
  %33 = icmp ne %struct._GSList* %32, null, !dbg !2239
  br i1 %33, label %34, label %52, !dbg !2240

; <label>:34:                                     ; preds = %31
  call void @llvm.dbg.declare(metadata %struct.NETSPLIT_CHAN_REC** %10, metadata !2241, metadata !897), !dbg !2243
  %35 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !2244
  %36 = getelementptr inbounds %struct._GSList, %struct._GSList* %35, i32 0, i32 0, !dbg !2245
  %37 = load i8*, i8** %36, align 8, !dbg !2245
  %38 = bitcast i8* %37 to %struct.NETSPLIT_CHAN_REC*, !dbg !2244
  store %struct.NETSPLIT_CHAN_REC* %38, %struct.NETSPLIT_CHAN_REC** %10, align 8, !dbg !2243
  %39 = load %struct.NETJOIN_REC*, %struct.NETJOIN_REC** %8, align 8, !dbg !2246
  %40 = getelementptr inbounds %struct.NETJOIN_REC, %struct.NETJOIN_REC* %39, i32 0, i32 1, !dbg !2247
  %41 = load %struct._GSList*, %struct._GSList** %40, align 8, !dbg !2247
  %42 = load %struct.NETSPLIT_CHAN_REC*, %struct.NETSPLIT_CHAN_REC** %10, align 8, !dbg !2248
  %43 = getelementptr inbounds %struct.NETSPLIT_CHAN_REC, %struct.NETSPLIT_CHAN_REC* %42, i32 0, i32 0, !dbg !2249
  %44 = load i8*, i8** %43, align 8, !dbg !2249
  %45 = call noalias i8* @g_strdup(i8* %44), !dbg !2250
  %46 = call %struct._GSList* @g_slist_append(%struct._GSList* %41, i8* %45), !dbg !2251
  %47 = load %struct.NETJOIN_REC*, %struct.NETJOIN_REC** %8, align 8, !dbg !2252
  %48 = getelementptr inbounds %struct.NETJOIN_REC, %struct.NETJOIN_REC* %47, i32 0, i32 1, !dbg !2253
  store %struct._GSList* %46, %struct._GSList** %48, align 8, !dbg !2254
  %49 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !2255
  %50 = getelementptr inbounds %struct._GSList, %struct._GSList* %49, i32 0, i32 1, !dbg !2256
  %51 = load %struct._GSList*, %struct._GSList** %50, align 8, !dbg !2256
  store %struct._GSList* %51, %struct._GSList** %7, align 8, !dbg !2257
  br label %31, !dbg !2258, !llvm.loop !2260

; <label>:52:                                     ; preds = %31
  %53 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2261
  %54 = call %struct.NETJOIN_SERVER_REC* @netjoin_find_server(%struct._IRC_SERVER_REC* %53), !dbg !2262
  store %struct.NETJOIN_SERVER_REC* %54, %struct.NETJOIN_SERVER_REC** %9, align 8, !dbg !2263
  %55 = load %struct.NETJOIN_SERVER_REC*, %struct.NETJOIN_SERVER_REC** %9, align 8, !dbg !2264
  %56 = icmp eq %struct.NETJOIN_SERVER_REC* %55, null, !dbg !2266
  br i1 %56, label %57, label %67, !dbg !2267

; <label>:57:                                     ; preds = %52
  %58 = call noalias i8* @g_malloc0_n(i64 1, i64 24), !dbg !2268
  %59 = bitcast i8* %58 to %struct.NETJOIN_SERVER_REC*, !dbg !2270
  store %struct.NETJOIN_SERVER_REC* %59, %struct.NETJOIN_SERVER_REC** %9, align 8, !dbg !2271
  %60 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2272
  %61 = load %struct.NETJOIN_SERVER_REC*, %struct.NETJOIN_SERVER_REC** %9, align 8, !dbg !2273
  %62 = getelementptr inbounds %struct.NETJOIN_SERVER_REC, %struct.NETJOIN_SERVER_REC* %61, i32 0, i32 0, !dbg !2274
  store %struct._IRC_SERVER_REC* %60, %struct._IRC_SERVER_REC** %62, align 8, !dbg !2275
  %63 = load %struct._GSList*, %struct._GSList** @joinservers, align 8, !dbg !2276
  %64 = load %struct.NETJOIN_SERVER_REC*, %struct.NETJOIN_SERVER_REC** %9, align 8, !dbg !2277
  %65 = bitcast %struct.NETJOIN_SERVER_REC* %64 to i8*, !dbg !2277
  %66 = call %struct._GSList* @g_slist_append(%struct._GSList* %63, i8* %65), !dbg !2278
  store %struct._GSList* %66, %struct._GSList** @joinservers, align 8, !dbg !2279
  br label %67, !dbg !2280

; <label>:67:                                     ; preds = %57, %52
  %68 = call i64 @time(i64* null) #7, !dbg !2281
  %69 = load %struct.NETJOIN_SERVER_REC*, %struct.NETJOIN_SERVER_REC** %9, align 8, !dbg !2282
  %70 = getelementptr inbounds %struct.NETJOIN_SERVER_REC, %struct.NETJOIN_SERVER_REC* %69, i32 0, i32 1, !dbg !2283
  store i64 %68, i64* %70, align 8, !dbg !2284
  %71 = load %struct.NETJOIN_SERVER_REC*, %struct.NETJOIN_SERVER_REC** %9, align 8, !dbg !2285
  %72 = getelementptr inbounds %struct.NETJOIN_SERVER_REC, %struct.NETJOIN_SERVER_REC* %71, i32 0, i32 2, !dbg !2286
  %73 = load %struct._GSList*, %struct._GSList** %72, align 8, !dbg !2286
  %74 = load %struct.NETJOIN_REC*, %struct.NETJOIN_REC** %8, align 8, !dbg !2287
  %75 = bitcast %struct.NETJOIN_REC* %74 to i8*, !dbg !2287
  %76 = call %struct._GSList* @g_slist_append(%struct._GSList* %73, i8* %75), !dbg !2288
  %77 = load %struct.NETJOIN_SERVER_REC*, %struct.NETJOIN_SERVER_REC** %9, align 8, !dbg !2289
  %78 = getelementptr inbounds %struct.NETJOIN_SERVER_REC, %struct.NETJOIN_SERVER_REC* %77, i32 0, i32 2, !dbg !2290
  store %struct._GSList* %76, %struct._GSList** %78, align 8, !dbg !2291
  %79 = load %struct.NETJOIN_REC*, %struct.NETJOIN_REC** %8, align 8, !dbg !2292
  store %struct.NETJOIN_REC* %79, %struct.NETJOIN_REC** %4, align 8, !dbg !2293
  br label %80, !dbg !2293

; <label>:80:                                     ; preds = %67, %22, %15
  %81 = load %struct.NETJOIN_REC*, %struct.NETJOIN_REC** %4, align 8, !dbg !2294
  ret %struct.NETJOIN_REC* %81, !dbg !2294
}

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #1

declare noalias i8* @g_strconcat(i8*, ...) #1

declare i32 @g_ascii_strcasecmp(i8*, i8*) #1

; Function Attrs: nounwind
declare i64 @time(i64*) #5

declare i8* @event_get_params(i8*, i32, ...) #1

declare noalias i8** @g_strsplit(i8*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @netjoin_set_nickmode(%struct._IRC_SERVER_REC*, %struct.NETJOIN_REC*, i8*, i8 signext) #0 !dbg !2295 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._IRC_SERVER_REC*, align 8
  %7 = alloca %struct.NETJOIN_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca %struct._GSList*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %6, metadata !2298, metadata !897), !dbg !2299
  store %struct.NETJOIN_REC* %1, %struct.NETJOIN_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.NETJOIN_REC** %7, metadata !2300, metadata !897), !dbg !2301
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2302, metadata !897), !dbg !2303
  store i8 %3, i8* %9, align 1
  call void @llvm.dbg.declare(metadata i8* %9, metadata !2304, metadata !897), !dbg !2305
  call void @llvm.dbg.declare(metadata %struct._GSList** %10, metadata !2306, metadata !897), !dbg !2307
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2308, metadata !897), !dbg !2309
  call void @llvm.dbg.declare(metadata i8** %12, metadata !2310, metadata !897), !dbg !2311
  store i8* null, i8** %12, align 8, !dbg !2311
  %14 = load %struct.NETJOIN_REC*, %struct.NETJOIN_REC** %7, align 8, !dbg !2312
  %15 = getelementptr inbounds %struct.NETJOIN_REC, %struct.NETJOIN_REC* %14, i32 0, i32 2, !dbg !2314
  %16 = load %struct._GSList*, %struct._GSList** %15, align 8, !dbg !2314
  store %struct._GSList* %16, %struct._GSList** %10, align 8, !dbg !2315
  br label %17, !dbg !2316

; <label>:17:                                     ; preds = %32, %4
  %18 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !2317
  %19 = icmp ne %struct._GSList* %18, null, !dbg !2320
  br i1 %19, label %20, label %36, !dbg !2321

; <label>:20:                                     ; preds = %17
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2322, metadata !897), !dbg !2324
  %21 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !2325
  %22 = getelementptr inbounds %struct._GSList, %struct._GSList* %21, i32 0, i32 0, !dbg !2326
  %23 = load i8*, i8** %22, align 8, !dbg !2326
  store i8* %23, i8** %13, align 8, !dbg !2324
  %24 = load i8*, i8** %13, align 8, !dbg !2327
  %25 = getelementptr inbounds i8, i8* %24, i64 1, !dbg !2329
  %26 = load i8*, i8** %8, align 8, !dbg !2330
  %27 = call i32 @strcasecmp(i8* %25, i8* %26) #6, !dbg !2331
  %28 = icmp eq i32 %27, 0, !dbg !2332
  br i1 %28, label %29, label %31, !dbg !2333

; <label>:29:                                     ; preds = %20
  %30 = load i8*, i8** %13, align 8, !dbg !2334
  store i8* %30, i8** %12, align 8, !dbg !2336
  br label %36, !dbg !2337

; <label>:31:                                     ; preds = %20
  br label %32, !dbg !2338

; <label>:32:                                     ; preds = %31
  %33 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !2339
  %34 = getelementptr inbounds %struct._GSList, %struct._GSList* %33, i32 0, i32 1, !dbg !2341
  %35 = load %struct._GSList*, %struct._GSList** %34, align 8, !dbg !2341
  store %struct._GSList* %35, %struct._GSList** %10, align 8, !dbg !2342
  br label %17, !dbg !2343, !llvm.loop !2344

; <label>:36:                                     ; preds = %29, %17
  %37 = load i8*, i8** %12, align 8, !dbg !2346
  %38 = icmp eq i8* %37, null, !dbg !2348
  br i1 %38, label %39, label %40, !dbg !2349

; <label>:39:                                     ; preds = %36
  store i32 0, i32* %5, align 4, !dbg !2350
  br label %79, !dbg !2350

; <label>:40:                                     ; preds = %36
  %41 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !2351
  %42 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %41, i32 0, i32 28, !dbg !2352
  %43 = load i8* (%struct._SERVER_REC*)*, i8* (%struct._SERVER_REC*)** %42, align 8, !dbg !2352
  %44 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !2353
  %45 = bitcast %struct._IRC_SERVER_REC* %44 to i8*, !dbg !2353
  %46 = call i8* @module_check_cast(i8* %45, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0)), !dbg !2354
  %47 = bitcast i8* %46 to %struct._SERVER_REC*, !dbg !2355
  %48 = call i8* %43(%struct._SERVER_REC* %47), !dbg !2356
  store i8* %48, i8** %11, align 8, !dbg !2358
  br label %49, !dbg !2359

; <label>:49:                                     ; preds = %75, %40
  %50 = load i8*, i8** %11, align 8, !dbg !2360
  %51 = load i8, i8* %50, align 1, !dbg !2361
  %52 = sext i8 %51 to i32, !dbg !2361
  %53 = icmp ne i32 %52, 0, !dbg !2362
  br i1 %53, label %54, label %78, !dbg !2363

; <label>:54:                                     ; preds = %49
  %55 = load i8*, i8** %12, align 8, !dbg !2364
  %56 = getelementptr inbounds i8, i8* %55, i64 0, !dbg !2364
  %57 = load i8, i8* %56, align 1, !dbg !2364
  %58 = sext i8 %57 to i32, !dbg !2364
  %59 = load i8*, i8** %11, align 8, !dbg !2367
  %60 = load i8, i8* %59, align 1, !dbg !2368
  %61 = sext i8 %60 to i32, !dbg !2368
  %62 = icmp eq i32 %58, %61, !dbg !2369
  br i1 %62, label %63, label %64, !dbg !2370

; <label>:63:                                     ; preds = %54
  br label %78, !dbg !2371

; <label>:64:                                     ; preds = %54
  %65 = load i8, i8* %9, align 1, !dbg !2372
  %66 = sext i8 %65 to i32, !dbg !2372
  %67 = load i8*, i8** %11, align 8, !dbg !2374
  %68 = load i8, i8* %67, align 1, !dbg !2375
  %69 = sext i8 %68 to i32, !dbg !2375
  %70 = icmp eq i32 %66, %69, !dbg !2376
  br i1 %70, label %71, label %75, !dbg !2377

; <label>:71:                                     ; preds = %64
  %72 = load i8, i8* %9, align 1, !dbg !2378
  %73 = load i8*, i8** %12, align 8, !dbg !2380
  %74 = getelementptr inbounds i8, i8* %73, i64 0, !dbg !2380
  store i8 %72, i8* %74, align 1, !dbg !2381
  br label %78, !dbg !2382

; <label>:75:                                     ; preds = %64
  %76 = load i8*, i8** %11, align 8, !dbg !2383
  %77 = getelementptr inbounds i8, i8* %76, i32 1, !dbg !2383
  store i8* %77, i8** %11, align 8, !dbg !2383
  br label %49, !dbg !2384, !llvm.loop !2386

; <label>:78:                                     ; preds = %71, %63, %49
  store i32 1, i32* %5, align 4, !dbg !2387
  br label %79, !dbg !2387

; <label>:79:                                     ; preds = %78, %39
  %80 = load i32, i32* %5, align 4, !dbg !2388
  ret i32 %80, !dbg !2388
}

declare void @modes_type_a(%struct._IRC_CHANNEL_REC*, i8*, i8 signext, i8 signext, i8*, %struct._GString*) #1

declare void @modes_type_b(%struct._IRC_CHANNEL_REC*, i8*, i8 signext, i8 signext, i8*, %struct._GString*) #1

declare void @modes_type_prefix(%struct._IRC_CHANNEL_REC*, i8*, i8 signext, i8 signext, i8*, %struct._GString*) #1

declare void @modes_type_c(%struct._IRC_CHANNEL_REC*, i8*, i8 signext, i8 signext, i8*, %struct._GString*) #1

declare void @g_strfreev(i8**) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!882, !883}
!llvm.ident = !{!884}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !192, globals: !876)
!1 = !DIFile(filename: "line318-fe-netjoin.o.i", directory: "/home/lichi/Desktop/irssi/task1")
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
!192 = !{!193, !200, !201, !205, !207, !516, !837, !841, !846, !378, !850, !857, !333, !861, !868, !215, !875}
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
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_REC", file: !209, line: 6, baseType: !210)
!209 = !DIFile(filename: "../../../src/irc/core/irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_REC", file: !211, line: 42, size: 39168, align: 64, elements: !212)
!211 = !DIFile(filename: "../../../src/irc/core/irc-servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!212 = !{!213, !216, !217, !218, !461, !466, !467, !468, !469, !470, !471, !472, !473, !474, !478, !479, !483, !484, !485, !489, !494, !495, !496, !497, !498, !499, !500, !501, !508, !509, !510, !511, !512, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !834, !836}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !210, file: !214, line: 3, baseType: !215, size: 32, align: 32)
!214 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!215 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !210, file: !214, line: 4, baseType: !215, size: 32, align: 32, offset: 32)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !210, file: !214, line: 6, baseType: !215, size: 32, align: 32, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !210, file: !214, line: 8, baseType: !219, size: 64, align: 64, offset: 128)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64, align: 64)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_CONNECT_REC", file: !209, line: 5, baseType: !221)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_CONNECT_REC", file: !211, line: 24, size: 2496, align: 64, elements: !222)
!222 = !{!223, !225, !226, !227, !229, !230, !231, !232, !233, !235, !236, !237, !238, !239, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460}
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
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !242, line: 99, baseType: !243)
!242 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!243 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !242, line: 99, flags: DIFlagFwdDecl)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !221, file: !224, line: 19, baseType: !240, size: 64, align: 64, offset: 832)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !221, file: !224, line: 21, baseType: !228, size: 64, align: 64, offset: 896)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !221, file: !224, line: 22, baseType: !228, size: 64, align: 64, offset: 960)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !221, file: !224, line: 23, baseType: !228, size: 64, align: 64, offset: 1024)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !221, file: !224, line: 24, baseType: !228, size: 64, align: 64, offset: 1088)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !221, file: !224, line: 26, baseType: !228, size: 64, align: 64, offset: 1152)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !221, file: !224, line: 27, baseType: !228, size: 64, align: 64, offset: 1216)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !221, file: !224, line: 28, baseType: !228, size: 64, align: 64, offset: 1280)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !221, file: !224, line: 29, baseType: !228, size: 64, align: 64, offset: 1344)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !221, file: !224, line: 30, baseType: !228, size: 64, align: 64, offset: 1408)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !221, file: !224, line: 31, baseType: !228, size: 64, align: 64, offset: 1472)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !221, file: !224, line: 32, baseType: !228, size: 64, align: 64, offset: 1536)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !221, file: !224, line: 33, baseType: !228, size: 64, align: 64, offset: 1600)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !221, file: !224, line: 35, baseType: !258, size: 64, align: 64, offset: 1664)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64, align: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !260)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !261)
!261 = !{!262, !264, !406, !407, !412, !413, !414, !415, !416, !425, !426, !427, !431, !432, !433, !434, !435, !436, !437, !438}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !260, file: !4, line: 100, baseType: !263, size: 32, align: 32)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !203, line: 49, baseType: !215)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !260, file: !4, line: 101, baseType: !265, size: 64, align: 64, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64, align: 64)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !267)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !268)
!268 = !{!269, !291, !297, !304, !308, !393, !397, !402}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !267, file: !4, line: 133, baseType: !270, size: 64, align: 64)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!273, !258, !201, !274, !277, !278}
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !275, line: 66, baseType: !276)
!275 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!276 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64, align: 64)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64, align: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !281, line: 42, baseType: !282)
!281 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !281, line: 44, size: 128, align: 64, elements: !283)
!283 = !{!284, !289, !290}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !282, file: !281, line: 46, baseType: !285, size: 32, align: 32)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !286, line: 36, baseType: !287)
!286 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !275, line: 45, baseType: !288)
!288 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !282, file: !281, line: 47, baseType: !263, size: 32, align: 32, offset: 32)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !282, file: !281, line: 48, baseType: !201, size: 64, align: 64, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !267, file: !4, line: 138, baseType: !292, size: 64, align: 64, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64, align: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{!273, !258, !295, !274, !277, !278}
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64, align: 64)
!296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !267, file: !4, line: 143, baseType: !298, size: 64, align: 64, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64, align: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{!273, !258, !301, !303, !278}
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !275, line: 51, baseType: !302)
!302 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !267, file: !4, line: 147, baseType: !305, size: 64, align: 64, offset: 192)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64, align: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{!273, !258, !278}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !267, file: !4, line: 149, baseType: !309, size: 64, align: 64, offset: 256)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64, align: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{!312, !258, !392}
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64, align: 64)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !314)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !315)
!315 = !{!316, !318, !339, !368, !370, !374, !375, !376, !377, !385, !386, !387, !388}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !314, file: !16, line: 174, baseType: !317, size: 64, align: 64)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !203, line: 77, baseType: !200)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !314, file: !16, line: 175, baseType: !319, size: 64, align: 64, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64, align: 64)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !321)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !322)
!322 = !{!323, !327, !328}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !321, file: !16, line: 198, baseType: !324, size: 64, align: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64, align: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{null, !317}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !321, file: !16, line: 199, baseType: !324, size: 64, align: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !321, file: !16, line: 200, baseType: !329, size: 64, align: 64, offset: 128)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64, align: 64)
!330 = !DISubroutineType(types: !331)
!331 = !{null, !317, !312, !332, !338}
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64, align: 64)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !334)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64, align: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{!337, !317}
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !203, line: 50, baseType: !263)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64, align: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !314, file: !16, line: 177, baseType: !340, size: 64, align: 64, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64, align: 64)
!341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !342)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !343)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !344)
!344 = !{!345, !350, !354, !358, !362, !363}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !343, file: !16, line: 216, baseType: !346, size: 64, align: 64)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64, align: 64)
!347 = !DISubroutineType(types: !348)
!348 = !{!337, !312, !349}
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64, align: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !343, file: !16, line: 218, baseType: !351, size: 64, align: 64, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64, align: 64)
!352 = !DISubroutineType(types: !353)
!353 = !{!337, !312}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !343, file: !16, line: 219, baseType: !355, size: 64, align: 64, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64, align: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!337, !312, !333, !317}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !343, file: !16, line: 222, baseType: !359, size: 64, align: 64, offset: 192)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64, align: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{null, !312}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !343, file: !16, line: 226, baseType: !333, size: 64, align: 64, offset: 256)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !343, file: !16, line: 227, baseType: !364, size: 64, align: 64, offset: 320)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !365)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64, align: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{null}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !314, file: !16, line: 178, baseType: !369, size: 32, align: 32, offset: 192)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !203, line: 55, baseType: !288)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !314, file: !16, line: 180, baseType: !371, size: 64, align: 64, offset: 256)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64, align: 64)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !373)
!373 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !314, file: !16, line: 182, baseType: !263, size: 32, align: 32, offset: 320)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !314, file: !16, line: 183, baseType: !369, size: 32, align: 32, offset: 352)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !314, file: !16, line: 184, baseType: !369, size: 32, align: 32, offset: 384)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !314, file: !16, line: 186, baseType: !378, size: 64, align: 64, offset: 448)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64, align: 64)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !380, line: 37, baseType: !381)
!380 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !380, line: 39, size: 128, align: 64, elements: !382)
!382 = !{!383, !384}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !381, file: !380, line: 41, baseType: !317, size: 64, align: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !381, file: !380, line: 42, baseType: !378, size: 64, align: 64, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !314, file: !16, line: 188, baseType: !312, size: 64, align: 64, offset: 512)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !314, file: !16, line: 189, baseType: !312, size: 64, align: 64, offset: 576)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !314, file: !16, line: 191, baseType: !228, size: 64, align: 64, offset: 640)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !314, file: !16, line: 193, baseType: !389, size: 64, align: 64, offset: 704)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64, align: 64)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !391)
!391 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !267, file: !4, line: 151, baseType: !394, size: 64, align: 64, offset: 320)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64, align: 64)
!395 = !DISubroutineType(types: !396)
!396 = !{null, !258}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !267, file: !4, line: 152, baseType: !398, size: 64, align: 64, offset: 384)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64, align: 64)
!399 = !DISubroutineType(types: !400)
!400 = !{!273, !258, !401, !278}
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !267, file: !4, line: 155, baseType: !403, size: 64, align: 64, offset: 448)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64, align: 64)
!404 = !DISubroutineType(types: !405)
!405 = !{!401, !258}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !260, file: !4, line: 103, baseType: !201, size: 64, align: 64, offset: 128)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !260, file: !4, line: 104, baseType: !408, size: 64, align: 64, offset: 192)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !409, line: 77, baseType: !410)
!409 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64, align: 64)
!411 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !409, line: 77, flags: DIFlagFwdDecl)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !260, file: !4, line: 105, baseType: !408, size: 64, align: 64, offset: 256)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !260, file: !4, line: 106, baseType: !201, size: 64, align: 64, offset: 320)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !260, file: !4, line: 107, baseType: !369, size: 32, align: 32, offset: 384)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !260, file: !4, line: 109, baseType: !274, size: 64, align: 64, offset: 448)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !260, file: !4, line: 110, baseType: !417, size: 64, align: 64, offset: 512)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64, align: 64)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !419, line: 39, baseType: !420)
!419 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !419, line: 41, size: 192, align: 64, elements: !421)
!421 = !{!422, !423, !424}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !420, file: !419, line: 43, baseType: !201, size: 64, align: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !420, file: !419, line: 44, baseType: !274, size: 64, align: 64, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !420, file: !419, line: 45, baseType: !274, size: 64, align: 64, offset: 128)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !260, file: !4, line: 111, baseType: !417, size: 64, align: 64, offset: 576)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !260, file: !4, line: 112, baseType: !417, size: 64, align: 64, offset: 640)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !260, file: !4, line: 113, baseType: !428, size: 48, align: 8, offset: 704)
!428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 48, align: 8, elements: !429)
!429 = !{!430}
!430 = !DISubrange(count: 6)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !260, file: !4, line: 117, baseType: !369, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !260, file: !4, line: 118, baseType: !369, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !260, file: !4, line: 119, baseType: !369, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !260, file: !4, line: 120, baseType: !369, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !260, file: !4, line: 121, baseType: !369, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !260, file: !4, line: 122, baseType: !369, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !260, file: !4, line: 124, baseType: !317, size: 64, align: 64, offset: 768)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !260, file: !4, line: 125, baseType: !317, size: 64, align: 64, offset: 832)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !221, file: !224, line: 38, baseType: !288, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !221, file: !224, line: 39, baseType: !288, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !221, file: !224, line: 40, baseType: !288, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !221, file: !224, line: 41, baseType: !288, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !221, file: !224, line: 42, baseType: !288, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !221, file: !224, line: 43, baseType: !288, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !221, file: !224, line: 44, baseType: !288, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !221, file: !224, line: 45, baseType: !288, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !221, file: !224, line: 46, baseType: !228, size: 64, align: 64, offset: 1792)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !221, file: !224, line: 47, baseType: !228, size: 64, align: 64, offset: 1856)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !221, file: !211, line: 27, baseType: !228, size: 64, align: 64, offset: 1920)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_nick", scope: !221, file: !211, line: 28, baseType: !228, size: 64, align: 64, offset: 1984)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !221, file: !211, line: 30, baseType: !215, size: 32, align: 32, offset: 2048)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_username", scope: !221, file: !211, line: 31, baseType: !228, size: 64, align: 64, offset: 2112)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !221, file: !211, line: 32, baseType: !228, size: 64, align: 64, offset: 2176)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !221, file: !211, line: 34, baseType: !215, size: 32, align: 32, offset: 2240)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !221, file: !211, line: 35, baseType: !215, size: 32, align: 32, offset: 2272)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !221, file: !211, line: 36, baseType: !215, size: 32, align: 32, offset: 2304)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks", scope: !221, file: !211, line: 38, baseType: !215, size: 32, align: 32, offset: 2336)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !221, file: !211, line: 38, baseType: !215, size: 32, align: 32, offset: 2368)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes", scope: !221, file: !211, line: 38, baseType: !215, size: 32, align: 32, offset: 2400)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois", scope: !221, file: !211, line: 38, baseType: !215, size: 32, align: 32, offset: 2432)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !210, file: !214, line: 9, baseType: !462, size: 64, align: 64, offset: 192)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !463, line: 75, baseType: !464)
!463 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !465, line: 139, baseType: !302)
!465 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!466 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !210, file: !214, line: 10, baseType: !462, size: 64, align: 64, offset: 256)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !210, file: !214, line: 12, baseType: !228, size: 64, align: 64, offset: 320)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !210, file: !214, line: 13, baseType: !228, size: 64, align: 64, offset: 384)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !210, file: !214, line: 15, baseType: !288, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !210, file: !214, line: 16, baseType: !288, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !210, file: !214, line: 17, baseType: !288, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !210, file: !214, line: 18, baseType: !288, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !210, file: !214, line: 19, baseType: !288, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !210, file: !214, line: 21, baseType: !475, size: 64, align: 64, offset: 512)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64, align: 64)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !242, line: 102, baseType: !477)
!477 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !242, line: 102, flags: DIFlagFwdDecl)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !210, file: !214, line: 22, baseType: !215, size: 32, align: 32, offset: 576)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !210, file: !214, line: 25, baseType: !480, size: 128, align: 64, offset: 640)
!480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 128, align: 64, elements: !481)
!481 = !{!482}
!482 = !DISubrange(count: 2)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !210, file: !214, line: 26, baseType: !215, size: 32, align: 32, offset: 768)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !210, file: !214, line: 27, baseType: !215, size: 32, align: 32, offset: 800)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !210, file: !214, line: 29, baseType: !486, size: 64, align: 64, offset: 832)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64, align: 64)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !242, line: 103, baseType: !488)
!488 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !242, line: 103, flags: DIFlagFwdDecl)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !210, file: !214, line: 30, baseType: !490, size: 64, align: 64, offset: 896)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64, align: 64)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !492, line: 37, baseType: !493)
!492 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!493 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !492, line: 37, flags: DIFlagFwdDecl)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !210, file: !214, line: 32, baseType: !228, size: 64, align: 64, offset: 960)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !210, file: !214, line: 33, baseType: !228, size: 64, align: 64, offset: 1024)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !210, file: !214, line: 34, baseType: !228, size: 64, align: 64, offset: 1088)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !210, file: !214, line: 35, baseType: !288, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !210, file: !214, line: 36, baseType: !288, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !210, file: !214, line: 37, baseType: !288, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !210, file: !214, line: 38, baseType: !288, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !210, file: !214, line: 40, baseType: !502, size: 128, align: 64, offset: 1216)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !203, line: 504, baseType: !503)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !203, line: 506, size: 128, align: 64, elements: !504)
!504 = !{!505, !507}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !503, file: !203, line: 508, baseType: !506, size: 64, align: 64)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !203, line: 48, baseType: !302)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !503, file: !203, line: 509, baseType: !506, size: 64, align: 64, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !210, file: !214, line: 41, baseType: !462, size: 64, align: 64, offset: 1344)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !210, file: !214, line: 42, baseType: !215, size: 32, align: 32, offset: 1408)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !210, file: !214, line: 44, baseType: !378, size: 64, align: 64, offset: 1472)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !210, file: !214, line: 45, baseType: !378, size: 64, align: 64, offset: 1536)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !210, file: !214, line: 53, baseType: !513, size: 64, align: 64, offset: 1600)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64, align: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{null, !516, !205, !215}
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64, align: 64)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !242, line: 107, baseType: !518)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !519, line: 30, size: 2240, align: 64, elements: !520)
!519 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!520 = !{!521, !522, !523, !524, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !600, !604, !608, !612, !617, !710, !717, !721}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !518, file: !214, line: 3, baseType: !215, size: 32, align: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !518, file: !214, line: 4, baseType: !215, size: 32, align: 32, offset: 32)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !518, file: !214, line: 6, baseType: !215, size: 32, align: 32, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !518, file: !214, line: 8, baseType: !525, size: 64, align: 64, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64, align: 64)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !242, line: 113, baseType: !527)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !519, line: 25, size: 1920, align: 64, elements: !528)
!528 = !{!529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !527, file: !224, line: 3, baseType: !215, size: 32, align: 32)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !527, file: !224, line: 4, baseType: !215, size: 32, align: 32, offset: 32)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !527, file: !224, line: 6, baseType: !215, size: 32, align: 32, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !527, file: !224, line: 9, baseType: !228, size: 64, align: 64, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !527, file: !224, line: 10, baseType: !215, size: 32, align: 32, offset: 192)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !527, file: !224, line: 11, baseType: !228, size: 64, align: 64, offset: 256)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !527, file: !224, line: 11, baseType: !228, size: 64, align: 64, offset: 320)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !527, file: !224, line: 11, baseType: !228, size: 64, align: 64, offset: 384)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !527, file: !224, line: 13, baseType: !234, size: 16, align: 16, offset: 448)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !527, file: !224, line: 14, baseType: !228, size: 64, align: 64, offset: 512)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !527, file: !224, line: 15, baseType: !228, size: 64, align: 64, offset: 576)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !527, file: !224, line: 16, baseType: !215, size: 32, align: 32, offset: 640)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !527, file: !224, line: 17, baseType: !228, size: 64, align: 64, offset: 704)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !527, file: !224, line: 19, baseType: !240, size: 64, align: 64, offset: 768)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !527, file: !224, line: 19, baseType: !240, size: 64, align: 64, offset: 832)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !527, file: !224, line: 21, baseType: !228, size: 64, align: 64, offset: 896)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !527, file: !224, line: 22, baseType: !228, size: 64, align: 64, offset: 960)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !527, file: !224, line: 23, baseType: !228, size: 64, align: 64, offset: 1024)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !527, file: !224, line: 24, baseType: !228, size: 64, align: 64, offset: 1088)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !527, file: !224, line: 26, baseType: !228, size: 64, align: 64, offset: 1152)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !527, file: !224, line: 27, baseType: !228, size: 64, align: 64, offset: 1216)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !527, file: !224, line: 28, baseType: !228, size: 64, align: 64, offset: 1280)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !527, file: !224, line: 29, baseType: !228, size: 64, align: 64, offset: 1344)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !527, file: !224, line: 30, baseType: !228, size: 64, align: 64, offset: 1408)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !527, file: !224, line: 31, baseType: !228, size: 64, align: 64, offset: 1472)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !527, file: !224, line: 32, baseType: !228, size: 64, align: 64, offset: 1536)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !527, file: !224, line: 33, baseType: !228, size: 64, align: 64, offset: 1600)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !527, file: !224, line: 35, baseType: !258, size: 64, align: 64, offset: 1664)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !527, file: !224, line: 38, baseType: !288, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !527, file: !224, line: 39, baseType: !288, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !527, file: !224, line: 40, baseType: !288, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !527, file: !224, line: 41, baseType: !288, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !527, file: !224, line: 42, baseType: !288, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !527, file: !224, line: 43, baseType: !288, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !527, file: !224, line: 44, baseType: !288, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !527, file: !224, line: 45, baseType: !288, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !527, file: !224, line: 46, baseType: !228, size: 64, align: 64, offset: 1792)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !527, file: !224, line: 47, baseType: !228, size: 64, align: 64, offset: 1856)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !518, file: !214, line: 9, baseType: !462, size: 64, align: 64, offset: 192)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !518, file: !214, line: 10, baseType: !462, size: 64, align: 64, offset: 256)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !518, file: !214, line: 12, baseType: !228, size: 64, align: 64, offset: 320)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !518, file: !214, line: 13, baseType: !228, size: 64, align: 64, offset: 384)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !518, file: !214, line: 15, baseType: !288, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !518, file: !214, line: 16, baseType: !288, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !518, file: !214, line: 17, baseType: !288, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !518, file: !214, line: 18, baseType: !288, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !518, file: !214, line: 19, baseType: !288, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !518, file: !214, line: 21, baseType: !475, size: 64, align: 64, offset: 512)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !518, file: !214, line: 22, baseType: !215, size: 32, align: 32, offset: 576)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !518, file: !214, line: 25, baseType: !480, size: 128, align: 64, offset: 640)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !518, file: !214, line: 26, baseType: !215, size: 32, align: 32, offset: 768)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !518, file: !214, line: 27, baseType: !215, size: 32, align: 32, offset: 800)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !518, file: !214, line: 29, baseType: !486, size: 64, align: 64, offset: 832)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !518, file: !214, line: 30, baseType: !490, size: 64, align: 64, offset: 896)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !518, file: !214, line: 32, baseType: !228, size: 64, align: 64, offset: 960)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !518, file: !214, line: 33, baseType: !228, size: 64, align: 64, offset: 1024)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !518, file: !214, line: 34, baseType: !228, size: 64, align: 64, offset: 1088)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !518, file: !214, line: 35, baseType: !288, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !518, file: !214, line: 36, baseType: !288, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !518, file: !214, line: 37, baseType: !288, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !518, file: !214, line: 38, baseType: !288, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !518, file: !214, line: 40, baseType: !502, size: 128, align: 64, offset: 1216)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !518, file: !214, line: 41, baseType: !462, size: 64, align: 64, offset: 1344)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !518, file: !214, line: 42, baseType: !215, size: 32, align: 32, offset: 1408)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !518, file: !214, line: 44, baseType: !378, size: 64, align: 64, offset: 1472)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !518, file: !214, line: 45, baseType: !378, size: 64, align: 64, offset: 1536)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !518, file: !214, line: 53, baseType: !513, size: 64, align: 64, offset: 1600)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !518, file: !214, line: 55, baseType: !597, size: 64, align: 64, offset: 1664)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64, align: 64)
!598 = !DISubroutineType(types: !599)
!599 = !{!215, !516, !204}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !518, file: !214, line: 57, baseType: !601, size: 64, align: 64, offset: 1728)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64, align: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!215, !516, !205}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !518, file: !214, line: 60, baseType: !605, size: 64, align: 64, offset: 1792)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64, align: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{!205, !516}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !518, file: !214, line: 62, baseType: !609, size: 64, align: 64, offset: 1856)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64, align: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{null, !516, !205, !205, !215}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !518, file: !214, line: 65, baseType: !613, size: 64, align: 64, offset: 1920)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64, align: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{!616, !516, !205, !205}
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64, align: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !518, file: !214, line: 69, baseType: !618, size: 64, align: 64, offset: 1984)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64, align: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{!621, !516, !205}
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64, align: 64)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !242, line: 109, baseType: !623)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !624, line: 15, size: 1408, align: 64, elements: !625)
!624 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!625 = !{!626, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !661, !662, !664, !665, !666, !667, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !623, file: !627, line: 3, baseType: !215, size: 32, align: 32)
!627 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!628 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !623, file: !627, line: 4, baseType: !215, size: 32, align: 32, offset: 32)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !623, file: !627, line: 5, baseType: !490, size: 64, align: 64, offset: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !623, file: !627, line: 7, baseType: !200, size: 64, align: 64, offset: 128)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !623, file: !627, line: 8, baseType: !516, size: 64, align: 64, offset: 192)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !623, file: !627, line: 9, baseType: !228, size: 64, align: 64, offset: 256)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !623, file: !627, line: 10, baseType: !228, size: 64, align: 64, offset: 320)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !623, file: !627, line: 11, baseType: !462, size: 64, align: 64, offset: 384)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !623, file: !627, line: 12, baseType: !215, size: 32, align: 32, offset: 448)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !623, file: !627, line: 13, baseType: !228, size: 64, align: 64, offset: 512)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !623, file: !627, line: 15, baseType: !638, size: 64, align: 64, offset: 576)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64, align: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{null, !641}
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64, align: 64)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !242, line: 108, baseType: !643)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !644, line: 5, size: 704, align: 64, elements: !645)
!644 = !DIFile(filename: "../../../src/core/window-item-def.h", directory: "/home/lichi/Desktop/irssi/task1")
!645 = !{!646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !643, file: !627, line: 3, baseType: !215, size: 32, align: 32)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !643, file: !627, line: 4, baseType: !215, size: 32, align: 32, offset: 32)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !643, file: !627, line: 5, baseType: !490, size: 64, align: 64, offset: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !643, file: !627, line: 7, baseType: !200, size: 64, align: 64, offset: 128)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !643, file: !627, line: 8, baseType: !516, size: 64, align: 64, offset: 192)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !643, file: !627, line: 9, baseType: !228, size: 64, align: 64, offset: 256)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !643, file: !627, line: 10, baseType: !228, size: 64, align: 64, offset: 320)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !643, file: !627, line: 11, baseType: !462, size: 64, align: 64, offset: 384)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !643, file: !627, line: 12, baseType: !215, size: 32, align: 32, offset: 448)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !643, file: !627, line: 13, baseType: !228, size: 64, align: 64, offset: 512)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !643, file: !627, line: 15, baseType: !638, size: 64, align: 64, offset: 576)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !643, file: !627, line: 17, baseType: !658, size: 64, align: 64, offset: 640)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64, align: 64)
!659 = !DISubroutineType(types: !660)
!660 = !{!205, !641}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !623, file: !627, line: 17, baseType: !658, size: 64, align: 64, offset: 640)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !623, file: !663, line: 5, baseType: !228, size: 64, align: 64, offset: 704)
!663 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!664 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !623, file: !663, line: 6, baseType: !228, size: 64, align: 64, offset: 768)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !623, file: !663, line: 7, baseType: !462, size: 64, align: 64, offset: 832)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !623, file: !663, line: 9, baseType: !490, size: 64, align: 64, offset: 896)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !623, file: !663, line: 10, baseType: !668, size: 64, align: 64, offset: 960)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64, align: 64)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !242, line: 111, baseType: !670)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !671, line: 13, size: 576, align: 64, elements: !672)
!671 = !DIFile(filename: "../../../src/core/nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!672 = !{!673, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !691, !692}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !670, file: !674, line: 3, baseType: !215, size: 32, align: 32)
!674 = !DIFile(filename: "../../../src/core/nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!675 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !670, file: !674, line: 4, baseType: !215, size: 32, align: 32, offset: 32)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !670, file: !674, line: 6, baseType: !462, size: 64, align: 64, offset: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !670, file: !674, line: 8, baseType: !228, size: 64, align: 64, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !670, file: !674, line: 9, baseType: !228, size: 64, align: 64, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !670, file: !674, line: 10, baseType: !228, size: 64, align: 64, offset: 256)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !670, file: !674, line: 11, baseType: !215, size: 32, align: 32, offset: 320)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !670, file: !674, line: 14, baseType: !288, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !670, file: !674, line: 15, baseType: !288, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !670, file: !674, line: 18, baseType: !288, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !670, file: !674, line: 19, baseType: !288, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !670, file: !674, line: 20, baseType: !288, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !670, file: !674, line: 21, baseType: !288, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !670, file: !674, line: 22, baseType: !688, size: 64, align: 8, offset: 360)
!688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 64, align: 8, elements: !689)
!689 = !{!690}
!690 = !DISubrange(count: 8)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !670, file: !674, line: 26, baseType: !200, size: 64, align: 64, offset: 448)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !670, file: !674, line: 28, baseType: !668, size: 64, align: 64, offset: 512)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !623, file: !663, line: 12, baseType: !288, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !623, file: !663, line: 13, baseType: !228, size: 64, align: 64, offset: 1088)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !623, file: !663, line: 14, baseType: !215, size: 32, align: 32, offset: 1152)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !623, file: !663, line: 15, baseType: !228, size: 64, align: 64, offset: 1216)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !623, file: !663, line: 17, baseType: !288, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !623, file: !663, line: 18, baseType: !288, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !623, file: !663, line: 19, baseType: !288, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !623, file: !663, line: 20, baseType: !288, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !623, file: !663, line: 22, baseType: !288, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !623, file: !663, line: 23, baseType: !288, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !623, file: !663, line: 24, baseType: !288, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !623, file: !663, line: 25, baseType: !288, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !623, file: !663, line: 26, baseType: !288, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !623, file: !663, line: 31, baseType: !707, size: 64, align: 64, offset: 1344)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64, align: 64)
!708 = !DISubroutineType(types: !709)
!709 = !{!228, !621}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !518, file: !214, line: 70, baseType: !711, size: 64, align: 64, offset: 2048)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64, align: 64)
!712 = !DISubroutineType(types: !713)
!713 = !{!714, !516, !205}
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64, align: 64)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !242, line: 110, baseType: !716)
!716 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !242, line: 110, flags: DIFlagFwdDecl)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !518, file: !214, line: 71, baseType: !718, size: 64, align: 64, offset: 2112)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64, align: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{!215, !205, !205}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !518, file: !214, line: 73, baseType: !718, size: 64, align: 64, offset: 2176)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !210, file: !214, line: 55, baseType: !597, size: 64, align: 64, offset: 1664)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !210, file: !214, line: 57, baseType: !601, size: 64, align: 64, offset: 1728)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !210, file: !214, line: 60, baseType: !605, size: 64, align: 64, offset: 1792)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !210, file: !214, line: 62, baseType: !609, size: 64, align: 64, offset: 1856)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !210, file: !214, line: 65, baseType: !613, size: 64, align: 64, offset: 1920)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !210, file: !214, line: 69, baseType: !618, size: 64, align: 64, offset: 1984)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !210, file: !214, line: 70, baseType: !711, size: 64, align: 64, offset: 2048)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !210, file: !214, line: 71, baseType: !718, size: 64, align: 64, offset: 2112)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !210, file: !214, line: 73, baseType: !718, size: 64, align: 64, offset: 2176)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "redirects", scope: !210, file: !211, line: 46, baseType: !378, size: 64, align: 64, offset: 2240)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_queue", scope: !210, file: !211, line: 47, baseType: !378, size: 64, align: 64, offset: 2304)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_next", scope: !210, file: !211, line: 48, baseType: !734, size: 64, align: 64, offset: 2368)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64, align: 64)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "REDIRECT_REC", file: !209, line: 8, baseType: !736)
!736 = !DICompositeType(tag: DW_TAG_structure_type, name: "_REDIRECT_REC", file: !209, line: 8, flags: DIFlagFwdDecl)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_active", scope: !210, file: !211, line: 49, baseType: !378, size: 64, align: 64, offset: 2432)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "last_nick", scope: !210, file: !211, line: 51, baseType: !228, size: 64, align: 64, offset: 2496)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !210, file: !211, line: 53, baseType: !228, size: 64, align: 64, offset: 2560)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !210, file: !211, line: 54, baseType: !228, size: 64, align: 64, offset: 2624)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "wanted_usermode", scope: !210, file: !211, line: 55, baseType: !228, size: 64, align: 64, offset: 2688)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "userhost", scope: !210, file: !211, line: 56, baseType: !228, size: 64, align: 64, offset: 2752)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "channels_formed", scope: !210, file: !211, line: 57, baseType: !215, size: 32, align: 32, offset: 2816)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "whois_found", scope: !210, file: !211, line: 59, baseType: !288, size: 1, align: 32, offset: 2848, flags: DIFlagBitField, extraData: i64 2848)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "whowas_found", scope: !210, file: !211, line: 60, baseType: !288, size: 1, align: 32, offset: 2849, flags: DIFlagBitField, extraData: i64 2848)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "emode_known", scope: !210, file: !211, line: 62, baseType: !288, size: 1, align: 32, offset: 2850, flags: DIFlagBitField, extraData: i64 2848)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_mode", scope: !210, file: !211, line: 63, baseType: !288, size: 1, align: 32, offset: 2851, flags: DIFlagBitField, extraData: i64 2848)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_who", scope: !210, file: !211, line: 64, baseType: !288, size: 1, align: 32, offset: 2852, flags: DIFlagBitField, extraData: i64 2848)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "one_endofwho", scope: !210, file: !211, line: 65, baseType: !288, size: 1, align: 32, offset: 2853, flags: DIFlagBitField, extraData: i64 2848)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "disable_lag", scope: !210, file: !211, line: 66, baseType: !288, size: 1, align: 32, offset: 2854, flags: DIFlagBitField, extraData: i64 2848)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "nick_collision", scope: !210, file: !211, line: 67, baseType: !288, size: 1, align: 32, offset: 2855, flags: DIFlagBitField, extraData: i64 2848)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "motd_got", scope: !210, file: !211, line: 68, baseType: !288, size: 1, align: 32, offset: 2856, flags: DIFlagBitField, extraData: i64 2848)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "isupport_sent", scope: !210, file: !211, line: 69, baseType: !288, size: 1, align: 32, offset: 2857, flags: DIFlagBitField, extraData: i64 2848)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "cap_complete", scope: !210, file: !211, line: 70, baseType: !288, size: 1, align: 32, offset: 2858, flags: DIFlagBitField, extraData: i64 2848)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "cap_in_multiline", scope: !210, file: !211, line: 71, baseType: !288, size: 1, align: 32, offset: 2859, flags: DIFlagBitField, extraData: i64 2848)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_success", scope: !210, file: !211, line: 72, baseType: !288, size: 1, align: 32, offset: 2860, flags: DIFlagBitField, extraData: i64 2848)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks_in_cmd", scope: !210, file: !211, line: 74, baseType: !215, size: 32, align: 32, offset: 2880)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes_in_cmd", scope: !210, file: !211, line: 75, baseType: !215, size: 32, align: 32, offset: 2912)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois_in_cmd", scope: !210, file: !211, line: 76, baseType: !215, size: 32, align: 32, offset: 2944)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs_in_cmd", scope: !210, file: !211, line: 77, baseType: !215, size: 32, align: 32, offset: 2976)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "cap_supported", scope: !210, file: !211, line: 79, baseType: !490, size: 64, align: 64, offset: 3008)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "cap_active", scope: !210, file: !211, line: 80, baseType: !378, size: 64, align: 64, offset: 3072)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "cap_queue", scope: !210, file: !211, line: 81, baseType: !378, size: 64, align: 64, offset: 3136)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_buffer", scope: !210, file: !211, line: 83, baseType: !417, size: 64, align: 64, offset: 3200)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_timeout", scope: !210, file: !211, line: 84, baseType: !369, size: 32, align: 32, offset: 3264)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcount", scope: !210, file: !211, line: 87, baseType: !215, size: 32, align: 32, offset: 3296)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "cmdqueue", scope: !210, file: !211, line: 91, baseType: !378, size: 64, align: 64, offset: 3328)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "wait_cmd", scope: !210, file: !211, line: 92, baseType: !502, size: 128, align: 64, offset: 3392)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd", scope: !210, file: !211, line: 93, baseType: !502, size: 128, align: 64, offset: 3520)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !210, file: !211, line: 95, baseType: !215, size: 32, align: 32, offset: 3648)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !210, file: !211, line: 96, baseType: !215, size: 32, align: 32, offset: 3680)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !210, file: !211, line: 97, baseType: !215, size: 32, align: 32, offset: 3712)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "idles", scope: !210, file: !211, line: 100, baseType: !378, size: 64, align: 64, offset: 3776)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "ctcpqueue", scope: !210, file: !211, line: 103, baseType: !378, size: 64, align: 64, offset: 3840)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "knockoutlist", scope: !210, file: !211, line: 106, baseType: !378, size: 64, align: 64, offset: 3904)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "splits", scope: !210, file: !211, line: 108, baseType: !490, size: 64, align: 64, offset: 3968)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "split_servers", scope: !210, file: !211, line: 109, baseType: !378, size: 64, align: 64, offset: 4032)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "rejoin_channels", scope: !210, file: !211, line: 111, baseType: !378, size: 64, align: 64, offset: 4096)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "chanqueries", scope: !210, file: !211, line: 114, baseType: !200, size: 64, align: 64, offset: 4160)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "isupport", scope: !210, file: !211, line: 116, baseType: !490, size: 64, align: 64, offset: 4224)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !210, file: !211, line: 117, baseType: !782, size: 32768, align: 64, offset: 4288)
!782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !783, size: 32768, align: 64, elements: !832)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "modes_type", file: !784, line: 10, size: 128, align: 64, elements: !785)
!784 = !DIFile(filename: "../../../src/irc/core/modes.h", directory: "/home/lichi/Desktop/irssi/task1")
!785 = !{!786, !831}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !783, file: !784, line: 11, baseType: !787, size: 64, align: 64)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64, align: 64)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_func_t", file: !784, line: 7, baseType: !789)
!789 = !DISubroutineType(types: !790)
!790 = !{null, !791, !205, !204, !204, !228, !417}
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64, align: 64)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_CHANNEL_REC", file: !209, line: 7, baseType: !793)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_CHANNEL_REC", file: !794, line: 15, size: 1600, align: 64, elements: !795)
!794 = !DIFile(filename: "../../../src/irc/core/irc-channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!795 = !{!796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !793, file: !627, line: 3, baseType: !215, size: 32, align: 32)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !793, file: !627, line: 4, baseType: !215, size: 32, align: 32, offset: 32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !793, file: !627, line: 5, baseType: !490, size: 64, align: 64, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !793, file: !627, line: 7, baseType: !200, size: 64, align: 64, offset: 128)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !793, file: !627, line: 8, baseType: !207, size: 64, align: 64, offset: 192)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !793, file: !627, line: 9, baseType: !228, size: 64, align: 64, offset: 256)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !793, file: !627, line: 10, baseType: !228, size: 64, align: 64, offset: 320)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !793, file: !627, line: 11, baseType: !462, size: 64, align: 64, offset: 384)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !793, file: !627, line: 12, baseType: !215, size: 32, align: 32, offset: 448)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !793, file: !627, line: 13, baseType: !228, size: 64, align: 64, offset: 512)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !793, file: !627, line: 15, baseType: !638, size: 64, align: 64, offset: 576)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !793, file: !627, line: 17, baseType: !658, size: 64, align: 64, offset: 640)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !793, file: !663, line: 5, baseType: !228, size: 64, align: 64, offset: 704)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !793, file: !663, line: 6, baseType: !228, size: 64, align: 64, offset: 768)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !793, file: !663, line: 7, baseType: !462, size: 64, align: 64, offset: 832)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !793, file: !663, line: 9, baseType: !490, size: 64, align: 64, offset: 896)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !793, file: !663, line: 10, baseType: !668, size: 64, align: 64, offset: 960)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !793, file: !663, line: 12, baseType: !288, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !793, file: !663, line: 13, baseType: !228, size: 64, align: 64, offset: 1088)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !793, file: !663, line: 14, baseType: !215, size: 32, align: 32, offset: 1152)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !793, file: !663, line: 15, baseType: !228, size: 64, align: 64, offset: 1216)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !793, file: !663, line: 17, baseType: !288, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !793, file: !663, line: 18, baseType: !288, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !793, file: !663, line: 19, baseType: !288, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !793, file: !663, line: 20, baseType: !288, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !793, file: !663, line: 22, baseType: !288, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !793, file: !663, line: 23, baseType: !288, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !793, file: !663, line: 24, baseType: !288, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !793, file: !663, line: 25, baseType: !288, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !793, file: !663, line: 26, baseType: !288, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !793, file: !663, line: 31, baseType: !707, size: 64, align: 64, offset: 1344)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "banlist", scope: !793, file: !794, line: 18, baseType: !378, size: 64, align: 64, offset: 1408)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "massjoin_start", scope: !793, file: !794, line: 20, baseType: !462, size: 64, align: 64, offset: 1472)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "massjoins", scope: !793, file: !794, line: 21, baseType: !215, size: 32, align: 32, offset: 1536)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "last_massjoins", scope: !793, file: !794, line: 22, baseType: !215, size: 32, align: 32, offset: 1568)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !783, file: !784, line: 12, baseType: !204, size: 8, align: 8, offset: 64)
!832 = !{!833}
!833 = !DISubrange(count: 256)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !210, file: !211, line: 118, baseType: !835, size: 2048, align: 8, offset: 37056)
!835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 2048, align: 8, elements: !832)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "nick_comp_func", scope: !210, file: !211, line: 120, baseType: !718, size: 64, align: 64, offset: 39104)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "GFunc", file: !203, line: 88, baseType: !838)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64, align: 64)
!839 = !DISubroutineType(types: !840)
!840 = !{null, !317, !317}
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashFunc", file: !203, line: 90, baseType: !842)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64, align: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{!369, !845}
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "gconstpointer", file: !203, line: 78, baseType: !198)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCompareFunc", file: !203, line: 80, baseType: !847)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64, align: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{!263, !845, !845}
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64, align: 64)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEMP_PRINT_REC", file: !852, line: 54, baseType: !853)
!852 = !DIFile(filename: "fe-netjoin.c", directory: "/home/lichi/Desktop/irssi/task1")
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !852, line: 51, size: 128, align: 64, elements: !854)
!854 = !{!855, !856}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !853, file: !852, line: 52, baseType: !215, size: 32, align: 32)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !853, file: !852, line: 53, baseType: !417, size: 64, align: 64, offset: 64)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHFunc", file: !203, line: 91, baseType: !858)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64, align: 64)
!859 = !DISubroutineType(types: !860)
!860 = !{null, !317, !317, !317}
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64, align: 64)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "NETJOIN_REC", file: !852, line: 42, baseType: !863)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !852, line: 38, size: 192, align: 64, elements: !864)
!864 = !{!865, !866, !867}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !863, file: !852, line: 39, baseType: !228, size: 64, align: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "old_channels", scope: !863, file: !852, line: 40, baseType: !378, size: 64, align: 64, offset: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "now_channels", scope: !863, file: !852, line: 41, baseType: !378, size: 64, align: 64, offset: 128)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64, align: 64)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "NETJOIN_SERVER_REC", file: !852, line: 49, baseType: !870)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !852, line: 44, size: 192, align: 64, elements: !871)
!871 = !{!872, !873, !874}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !870, file: !852, line: 45, baseType: !207, size: 64, align: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "last_netjoin", scope: !870, file: !852, line: 46, baseType: !462, size: 64, align: 64, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "netjoins", scope: !870, file: !852, line: 48, baseType: !378, size: 64, align: 64, offset: 128)
!875 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!876 = !{!877, !878, !879, !880, !881}
!877 = distinct !DIGlobalVariable(name: "join_tag", scope: !0, file: !852, line: 56, type: !215, isLocal: true, isDefinition: true, variable: i32* @join_tag)
!878 = distinct !DIGlobalVariable(name: "printing_joins", scope: !0, file: !852, line: 58, type: !215, isLocal: true, isDefinition: true, variable: i32* @printing_joins)
!879 = distinct !DIGlobalVariable(name: "joinservers", scope: !0, file: !852, line: 59, type: !378, isLocal: true, isDefinition: true, variable: %struct._GSList** @joinservers)
!880 = distinct !DIGlobalVariable(name: "hide_netsplit_quits", scope: !0, file: !852, line: 57, type: !215, isLocal: true, isDefinition: true, variable: i32* @hide_netsplit_quits)
!881 = distinct !DIGlobalVariable(name: "netjoin_max_nicks", scope: !0, file: !852, line: 57, type: !215, isLocal: true, isDefinition: true, variable: i32* @netjoin_max_nicks)
!882 = !{i32 2, !"Dwarf Version", i32 4}
!883 = !{i32 2, !"Debug Info Version", i32 3}
!884 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!885 = distinct !DISubprogram(name: "fe_netjoin_init", scope: !852, file: !852, line: 489, type: !366, isLocal: false, isDefinition: true, scopeLine: 490, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !886)
!886 = !{}
!887 = !DILocation(line: 491, column: 2, scope: !885)
!888 = !DILocation(line: 492, column: 2, scope: !885)
!889 = !DILocation(line: 494, column: 11, scope: !885)
!890 = !DILocation(line: 495, column: 17, scope: !885)
!891 = !DILocation(line: 497, column: 2, scope: !885)
!892 = !DILocation(line: 498, column: 2, scope: !885)
!893 = !DILocation(line: 499, column: 2, scope: !885)
!894 = !DILocation(line: 500, column: 1, scope: !885)
!895 = distinct !DISubprogram(name: "read_settings", scope: !852, file: !852, line: 456, type: !366, isLocal: true, isDefinition: true, scopeLine: 457, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !886)
!896 = !DILocalVariable(name: "old_hide", scope: !895, file: !852, line: 458, type: !215)
!897 = !DIExpression()
!898 = !DILocation(line: 458, column: 6, scope: !895)
!899 = !DILocation(line: 460, column: 20, scope: !895)
!900 = !DILocation(line: 460, column: 18, scope: !895)
!901 = !DILocation(line: 461, column: 24, scope: !895)
!902 = !DILocation(line: 461, column: 22, scope: !895)
!903 = !DILocation(line: 462, column: 22, scope: !895)
!904 = !DILocation(line: 462, column: 20, scope: !895)
!905 = !DILocation(line: 464, column: 6, scope: !906)
!906 = distinct !DILexicalBlock(scope: !895, file: !852, line: 464, column: 6)
!907 = !DILocation(line: 464, column: 15, scope: !906)
!908 = !DILocation(line: 464, column: 19, scope: !909)
!909 = !DILexicalBlockFile(scope: !906, file: !852, discriminator: 1)
!910 = !DILocation(line: 464, column: 6, scope: !909)
!911 = !DILocation(line: 465, column: 3, scope: !912)
!912 = distinct !DILexicalBlock(scope: !906, file: !852, line: 464, column: 40)
!913 = !DILocation(line: 466, column: 3, scope: !912)
!914 = !DILocation(line: 467, column: 3, scope: !912)
!915 = !DILocation(line: 468, column: 2, scope: !912)
!916 = !DILocation(line: 468, column: 14, scope: !917)
!917 = !DILexicalBlockFile(scope: !918, file: !852, discriminator: 1)
!918 = distinct !DILexicalBlock(scope: !906, file: !852, line: 468, column: 13)
!919 = !DILocation(line: 468, column: 23, scope: !917)
!920 = !DILocation(line: 468, column: 26, scope: !921)
!921 = !DILexicalBlockFile(scope: !918, file: !852, discriminator: 2)
!922 = !DILocation(line: 468, column: 13, scope: !921)
!923 = !DILocation(line: 469, column: 3, scope: !924)
!924 = distinct !DILexicalBlock(scope: !918, file: !852, line: 468, column: 47)
!925 = !DILocation(line: 470, column: 3, scope: !924)
!926 = !DILocation(line: 471, column: 3, scope: !924)
!927 = !DILocation(line: 472, column: 2, scope: !924)
!928 = !DILocation(line: 473, column: 1, scope: !895)
!929 = distinct !DISubprogram(name: "sig_server_disconnected", scope: !852, file: !852, line: 475, type: !930, isLocal: true, isDefinition: true, scopeLine: 476, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !886)
!930 = !DISubroutineType(types: !931)
!931 = !{null, !207}
!932 = !DILocalVariable(name: "server", arg: 1, scope: !929, file: !852, line: 475, type: !207)
!933 = !DILocation(line: 475, column: 53, scope: !929)
!934 = !DILocalVariable(name: "netjoin_server", scope: !929, file: !852, line: 477, type: !868)
!935 = !DILocation(line: 477, column: 22, scope: !929)
!936 = !DILocation(line: 479, column: 2, scope: !929)
!937 = distinct !{!937, !936}
!938 = !DILocation(line: 479, column: 10, scope: !939)
!939 = !DILexicalBlockFile(scope: !940, file: !852, discriminator: 1)
!940 = distinct !DILexicalBlock(scope: !941, file: !852, line: 479, column: 10)
!941 = distinct !DILexicalBlock(scope: !929, file: !852, line: 479, column: 4)
!942 = !DILocation(line: 479, column: 17, scope: !939)
!943 = !DILocation(line: 479, column: 5, scope: !944)
!944 = !DILexicalBlockFile(scope: !945, file: !852, discriminator: 2)
!945 = distinct !DILexicalBlock(scope: !940, file: !852, line: 479, column: 3)
!946 = !DILocation(line: 479, column: 14, scope: !947)
!947 = !DILexicalBlockFile(scope: !948, file: !852, discriminator: 3)
!948 = distinct !DILexicalBlock(scope: !940, file: !852, line: 479, column: 12)
!949 = !DILocation(line: 479, column: 101, scope: !947)
!950 = !DILocation(line: 479, column: 112, scope: !951)
!951 = !DILexicalBlockFile(scope: !941, file: !852, discriminator: 4)
!952 = !DILocation(line: 481, column: 87, scope: !953)
!953 = distinct !DILexicalBlock(scope: !929, file: !852, line: 481, column: 6)
!954 = !DILocation(line: 481, column: 69, scope: !953)
!955 = !DILocation(line: 481, column: 54, scope: !953)
!956 = !DILocation(line: 481, column: 53, scope: !953)
!957 = !DILocation(line: 481, column: 28, scope: !958)
!958 = !DILexicalBlockFile(scope: !953, file: !852, discriminator: 3)
!959 = !DILocation(line: 481, column: 9, scope: !953)
!960 = !DILocation(line: 481, column: 6, scope: !929)
!961 = !DILocation(line: 481, column: 8, scope: !962)
!962 = !DILexicalBlockFile(scope: !953, file: !852, discriminator: 1)
!963 = !DILocation(line: 481, column: 6, scope: !964)
!964 = !DILexicalBlockFile(scope: !929, file: !852, discriminator: 2)
!965 = !DILocation(line: 482, column: 3, scope: !953)
!966 = !DILocation(line: 484, column: 44, scope: !967)
!967 = distinct !DILexicalBlock(scope: !929, file: !852, line: 484, column: 6)
!968 = !DILocation(line: 484, column: 24, scope: !967)
!969 = !DILocation(line: 484, column: 22, scope: !967)
!970 = !DILocation(line: 484, column: 6, scope: !929)
!971 = !DILocation(line: 485, column: 25, scope: !972)
!972 = distinct !DILexicalBlock(scope: !967, file: !852, line: 484, column: 54)
!973 = !DILocation(line: 485, column: 3, scope: !972)
!974 = !DILocation(line: 486, column: 2, scope: !972)
!975 = !DILocation(line: 487, column: 1, scope: !929)
!976 = distinct !DISubprogram(name: "fe_netjoin_deinit", scope: !852, file: !852, line: 502, type: !366, isLocal: false, isDefinition: true, scopeLine: 503, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !886)
!977 = !DILocation(line: 504, column: 2, scope: !976)
!978 = !DILocation(line: 504, column: 9, scope: !979)
!979 = !DILexicalBlockFile(scope: !976, file: !852, discriminator: 1)
!980 = !DILocation(line: 504, column: 21, scope: !979)
!981 = !DILocation(line: 504, column: 2, scope: !979)
!982 = !DILocation(line: 505, column: 25, scope: !976)
!983 = !DILocation(line: 505, column: 38, scope: !976)
!984 = !DILocation(line: 505, column: 3, scope: !976)
!985 = !DILocation(line: 504, column: 2, scope: !986)
!986 = !DILexicalBlockFile(scope: !976, file: !852, discriminator: 2)
!987 = distinct !{!987, !977}
!988 = !DILocation(line: 506, column: 6, scope: !989)
!989 = distinct !DILexicalBlock(scope: !976, file: !852, line: 506, column: 6)
!990 = !DILocation(line: 506, column: 15, scope: !989)
!991 = !DILocation(line: 506, column: 6, scope: !976)
!992 = !DILocation(line: 507, column: 19, scope: !993)
!993 = distinct !DILexicalBlock(scope: !989, file: !852, line: 506, column: 22)
!994 = !DILocation(line: 507, column: 3, scope: !993)
!995 = !DILocation(line: 508, column: 3, scope: !993)
!996 = !DILocation(line: 509, column: 2, scope: !993)
!997 = !DILocation(line: 511, column: 2, scope: !976)
!998 = !DILocation(line: 512, column: 2, scope: !976)
!999 = !DILocation(line: 514, column: 2, scope: !976)
!1000 = !DILocation(line: 515, column: 2, scope: !976)
!1001 = !DILocation(line: 516, column: 2, scope: !976)
!1002 = !DILocation(line: 517, column: 1, scope: !976)
!1003 = distinct !DISubprogram(name: "netjoin_server_remove", scope: !852, file: !852, line: 142, type: !1004, isLocal: true, isDefinition: true, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !886)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{null, !868}
!1006 = !DILocalVariable(name: "server", arg: 1, scope: !1003, file: !852, line: 142, type: !868)
!1007 = !DILocation(line: 142, column: 55, scope: !1003)
!1008 = !DILocation(line: 144, column: 31, scope: !1003)
!1009 = !DILocation(line: 144, column: 44, scope: !1003)
!1010 = !DILocation(line: 144, column: 16, scope: !1003)
!1011 = !DILocation(line: 144, column: 14, scope: !1003)
!1012 = !DILocation(line: 146, column: 2, scope: !1003)
!1013 = !DILocation(line: 146, column: 9, scope: !1014)
!1014 = !DILexicalBlockFile(scope: !1003, file: !852, discriminator: 1)
!1015 = !DILocation(line: 146, column: 17, scope: !1014)
!1016 = !DILocation(line: 146, column: 26, scope: !1014)
!1017 = !DILocation(line: 146, column: 2, scope: !1014)
!1018 = !DILocation(line: 147, column: 18, scope: !1003)
!1019 = !DILocation(line: 147, column: 26, scope: !1003)
!1020 = !DILocation(line: 147, column: 34, scope: !1003)
!1021 = !DILocation(line: 147, column: 44, scope: !1003)
!1022 = !DILocation(line: 147, column: 3, scope: !1003)
!1023 = !DILocation(line: 146, column: 2, scope: !1024)
!1024 = !DILexicalBlockFile(scope: !1003, file: !852, discriminator: 2)
!1025 = distinct !{!1025, !1012}
!1026 = !DILocation(line: 148, column: 16, scope: !1003)
!1027 = !DILocation(line: 148, column: 9, scope: !1003)
!1028 = !DILocation(line: 149, column: 1, scope: !1003)
!1029 = distinct !DISubprogram(name: "sig_print_starting", scope: !852, file: !852, line: 246, type: !1030, isLocal: true, isDefinition: true, scopeLine: 247, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !886)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{null, !1032}
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64, align: 64)
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_DEST_REC", file: !1034, line: 62, baseType: !1035)
!1034 = !DIFile(filename: "../../../src/fe-common/core/formats.h", directory: "/home/lichi/Desktop/irssi/task1")
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TEXT_DEST_REC", file: !1034, line: 50, size: 576, align: 64, elements: !1036)
!1036 = !{!1037, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !1035, file: !1034, line: 51, baseType: !1038, size: 64, align: 64)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64, align: 64)
!1039 = !DIDerivedType(tag: DW_TAG_typedef, name: "WINDOW_REC", file: !242, line: 117, baseType: !1040)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WINDOW_REC", file: !1041, line: 28, size: 1280, align: 64, elements: !1042)
!1041 = !DIFile(filename: "../../../src/fe-common/core/fe-windows.h", directory: "/home/lichi/Desktop/irssi/task1")
!1042 = !{!1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "refnum", scope: !1040, file: !1041, line: 29, baseType: !215, size: 32, align: 32)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1040, file: !1041, line: 30, baseType: !228, size: 64, align: 64, offset: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !1040, file: !1041, line: 32, baseType: !215, size: 32, align: 32, offset: 128)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !1040, file: !1041, line: 32, baseType: !215, size: 32, align: 32, offset: 160)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !1040, file: !1041, line: 34, baseType: !378, size: 64, align: 64, offset: 192)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1040, file: !1041, line: 35, baseType: !641, size: 64, align: 64, offset: 256)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "active_server", scope: !1040, file: !1041, line: 36, baseType: !516, size: 64, align: 64, offset: 320)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "connect_server", scope: !1040, file: !1041, line: 37, baseType: !516, size: 64, align: 64, offset: 384)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !1040, file: !1041, line: 38, baseType: !228, size: 64, align: 64, offset: 448)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1040, file: !1041, line: 40, baseType: !215, size: 32, align: 32, offset: 512)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "bound_items", scope: !1040, file: !1041, line: 41, baseType: !378, size: 64, align: 64, offset: 576)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "immortal", scope: !1040, file: !1041, line: 43, baseType: !288, size: 1, align: 32, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "sticky_refnum", scope: !1040, file: !1041, line: 44, baseType: !288, size: 1, align: 32, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !1040, file: !1041, line: 45, baseType: !288, size: 1, align: 32, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !1040, file: !1041, line: 48, baseType: !1058, size: 64, align: 64, offset: 704)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64, align: 64)
!1059 = !DIDerivedType(tag: DW_TAG_typedef, name: "HISTORY_REC", file: !1060, line: 14, baseType: !1061)
!1060 = !DIFile(filename: "../../../src/fe-common/core/command-history.h", directory: "/home/lichi/Desktop/irssi/task1")
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1060, line: 6, size: 256, align: 64, elements: !1062)
!1062 = !{!1063, !1064, !1073, !1074, !1075}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1061, file: !1060, line: 7, baseType: !228, size: 64, align: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1061, file: !1060, line: 9, baseType: !1065, size: 64, align: 64, offset: 64)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64, align: 64)
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "GList", file: !1067, line: 37, baseType: !1068)
!1067 = !DIFile(filename: "/usr/include/glib-2.0/glib/glist.h", directory: "/home/lichi/Desktop/irssi/task1")
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GList", file: !1067, line: 39, size: 192, align: 64, elements: !1069)
!1069 = !{!1070, !1071, !1072}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1068, file: !1067, line: 41, baseType: !317, size: 64, align: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1068, file: !1067, line: 42, baseType: !1065, size: 64, align: 64, offset: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1068, file: !1067, line: 43, baseType: !1065, size: 64, align: 64, offset: 128)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "lines", scope: !1061, file: !1060, line: 10, baseType: !215, size: 32, align: 32, offset: 128)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1061, file: !1060, line: 12, baseType: !215, size: 32, align: 32, offset: 160)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "redo", scope: !1061, file: !1060, line: 13, baseType: !215, size: 1, align: 32, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "history_name", scope: !1040, file: !1041, line: 49, baseType: !228, size: 64, align: 64, offset: 768)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !1040, file: !1041, line: 51, baseType: !215, size: 32, align: 32, offset: 832)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !1040, file: !1041, line: 52, baseType: !228, size: 64, align: 64, offset: 896)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "last_timestamp", scope: !1040, file: !1041, line: 54, baseType: !462, size: 64, align: 64, offset: 960)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "last_line", scope: !1040, file: !1041, line: 55, baseType: !462, size: 64, align: 64, offset: 1024)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "theme_name", scope: !1040, file: !1041, line: 57, baseType: !228, size: 64, align: 64, offset: 1088)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "theme", scope: !1040, file: !1041, line: 58, baseType: !200, size: 64, align: 64, offset: 1152)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "gui_data", scope: !1040, file: !1041, line: 60, baseType: !200, size: 64, align: 64, offset: 1216)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !1035, file: !1034, line: 52, baseType: !516, size: 64, align: 64, offset: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "server_tag", scope: !1035, file: !1034, line: 53, baseType: !205, size: 64, align: 64, offset: 128)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1035, file: !1034, line: 54, baseType: !205, size: 64, align: 64, offset: 192)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !1035, file: !1034, line: 55, baseType: !205, size: 64, align: 64, offset: 256)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1035, file: !1034, line: 56, baseType: !205, size: 64, align: 64, offset: 320)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1035, file: !1034, line: 57, baseType: !215, size: 32, align: 32, offset: 384)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_priority", scope: !1035, file: !1034, line: 59, baseType: !215, size: 32, align: 32, offset: 416)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !1035, file: !1034, line: 60, baseType: !228, size: 64, align: 64, offset: 448)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1035, file: !1034, line: 61, baseType: !215, size: 32, align: 32, offset: 512)
!1093 = !DILocalVariable(name: "dest", arg: 1, scope: !1029, file: !852, line: 246, type: !1032)
!1094 = !DILocation(line: 246, column: 47, scope: !1029)
!1095 = !DILocalVariable(name: "rec", scope: !1029, file: !852, line: 248, type: !868)
!1096 = !DILocation(line: 248, column: 22, scope: !1029)
!1097 = !DILocation(line: 250, column: 6, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1029, file: !852, line: 250, column: 6)
!1099 = !DILocation(line: 250, column: 6, scope: !1029)
!1100 = !DILocation(line: 251, column: 3, scope: !1098)
!1101 = !DILocation(line: 253, column: 87, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1029, file: !852, line: 253, column: 6)
!1103 = !DILocation(line: 253, column: 93, scope: !1102)
!1104 = !DILocation(line: 253, column: 69, scope: !1102)
!1105 = !DILocation(line: 253, column: 54, scope: !1102)
!1106 = !DILocation(line: 253, column: 53, scope: !1102)
!1107 = !DILocation(line: 253, column: 28, scope: !1108)
!1108 = !DILexicalBlockFile(scope: !1102, file: !852, discriminator: 3)
!1109 = !DILocation(line: 253, column: 9, scope: !1102)
!1110 = !DILocation(line: 253, column: 6, scope: !1029)
!1111 = !DILocation(line: 253, column: 8, scope: !1112)
!1112 = !DILexicalBlockFile(scope: !1102, file: !852, discriminator: 1)
!1113 = !DILocation(line: 253, column: 6, scope: !1114)
!1114 = !DILexicalBlockFile(scope: !1029, file: !852, discriminator: 2)
!1115 = !DILocation(line: 254, column: 3, scope: !1102)
!1116 = !DILocation(line: 256, column: 107, scope: !1029)
!1117 = !DILocation(line: 256, column: 113, scope: !1029)
!1118 = !DILocation(line: 256, column: 89, scope: !1029)
!1119 = !DILocation(line: 256, column: 74, scope: !1029)
!1120 = !DILocation(line: 256, column: 73, scope: !1029)
!1121 = !DILocation(line: 256, column: 48, scope: !1122)
!1122 = !DILexicalBlockFile(scope: !1029, file: !852, discriminator: 1)
!1123 = !DILocation(line: 256, column: 29, scope: !1029)
!1124 = !DILocation(line: 256, column: 8, scope: !1114)
!1125 = !DILocation(line: 256, column: 6, scope: !1029)
!1126 = !DILocation(line: 257, column: 6, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1029, file: !852, line: 257, column: 6)
!1128 = !DILocation(line: 257, column: 10, scope: !1127)
!1129 = !DILocation(line: 257, column: 17, scope: !1127)
!1130 = !DILocation(line: 257, column: 20, scope: !1131)
!1131 = !DILexicalBlockFile(scope: !1127, file: !852, discriminator: 1)
!1132 = !DILocation(line: 257, column: 25, scope: !1131)
!1133 = !DILocation(line: 257, column: 34, scope: !1131)
!1134 = !DILocation(line: 257, column: 6, scope: !1131)
!1135 = !DILocation(line: 261, column: 7, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !852, line: 261, column: 7)
!1137 = distinct !DILexicalBlock(scope: !1127, file: !852, line: 257, column: 43)
!1138 = !DILocation(line: 261, column: 13, scope: !1136)
!1139 = !DILocation(line: 261, column: 20, scope: !1136)
!1140 = !DILocation(line: 261, column: 27, scope: !1136)
!1141 = !DILocation(line: 262, column: 25, scope: !1136)
!1142 = !DILocation(line: 262, column: 30, scope: !1136)
!1143 = !DILocation(line: 262, column: 39, scope: !1136)
!1144 = !DILocation(line: 262, column: 64, scope: !1136)
!1145 = !DILocation(line: 262, column: 69, scope: !1136)
!1146 = !DILocation(line: 262, column: 49, scope: !1136)
!1147 = !DILocation(line: 262, column: 77, scope: !1136)
!1148 = !DILocation(line: 262, column: 83, scope: !1136)
!1149 = !DILocation(line: 262, column: 9, scope: !1136)
!1150 = !DILocation(line: 261, column: 7, scope: !1151)
!1151 = !DILexicalBlockFile(scope: !1137, file: !852, discriminator: 1)
!1152 = !DILocation(line: 263, column: 4, scope: !1136)
!1153 = !DILocation(line: 265, column: 18, scope: !1137)
!1154 = !DILocation(line: 265, column: 3, scope: !1137)
!1155 = !DILocation(line: 266, column: 2, scope: !1137)
!1156 = !DILocation(line: 267, column: 1, scope: !1029)
!1157 = distinct !DISubprogram(name: "msg_quit", scope: !852, file: !852, line: 315, type: !1158, isLocal: true, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !886)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{null, !207, !205, !205, !205}
!1160 = !DILocalVariable(name: "server", arg: 1, scope: !1157, file: !852, line: 315, type: !207)
!1161 = !DILocation(line: 315, column: 38, scope: !1157)
!1162 = !DILocalVariable(name: "nick", arg: 2, scope: !1157, file: !852, line: 315, type: !205)
!1163 = !DILocation(line: 315, column: 58, scope: !1157)
!1164 = !DILocalVariable(name: "address", arg: 3, scope: !1157, file: !852, line: 316, type: !205)
!1165 = !DILocation(line: 316, column: 20, scope: !1157)
!1166 = !DILocalVariable(name: "reason", arg: 4, scope: !1157, file: !852, line: 316, type: !205)
!1167 = !DILocation(line: 316, column: 41, scope: !1157)
!1168 = !DILocation(line: 318, column: 86, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1157, file: !852, line: 318, column: 6)
!1170 = !DILocation(line: 318, column: 68, scope: !1169)
!1171 = !DILocation(line: 318, column: 53, scope: !1169)
!1172 = !DILocation(line: 318, column: 52, scope: !1169)
!1173 = !DILocation(line: 318, column: 27, scope: !1174)
!1174 = !DILexicalBlockFile(scope: !1169, file: !852, discriminator: 4)
!1175 = !DILocation(line: 318, column: 8, scope: !1169)
!1176 = !DILocation(line: 318, column: 31, scope: !1169)
!1177 = !DILocation(line: 318, column: 7, scope: !1178)
!1178 = !DILexicalBlockFile(scope: !1169, file: !852, discriminator: 1)
!1179 = !DILocation(line: 318, column: 31, scope: !1180)
!1180 = !DILexicalBlockFile(scope: !1169, file: !852, discriminator: 2)
!1181 = !DILocation(line: 318, column: 51, scope: !1182)
!1182 = !DILexicalBlockFile(scope: !1169, file: !852, discriminator: 3)
!1183 = !DILocation(line: 318, column: 34, scope: !1182)
!1184 = !DILocation(line: 318, column: 6, scope: !1182)
!1185 = !DILocation(line: 319, column: 3, scope: !1169)
!1186 = !DILocation(line: 320, column: 1, scope: !1157)
!1187 = distinct !DISubprogram(name: "msg_join", scope: !852, file: !852, line: 322, type: !1158, isLocal: true, isDefinition: true, scopeLine: 324, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !886)
!1188 = !DILocalVariable(name: "server", arg: 1, scope: !1187, file: !852, line: 322, type: !207)
!1189 = !DILocation(line: 322, column: 38, scope: !1187)
!1190 = !DILocalVariable(name: "channel", arg: 2, scope: !1187, file: !852, line: 322, type: !205)
!1191 = !DILocation(line: 322, column: 58, scope: !1187)
!1192 = !DILocalVariable(name: "nick", arg: 3, scope: !1187, file: !852, line: 323, type: !205)
!1193 = !DILocation(line: 323, column: 20, scope: !1187)
!1194 = !DILocalVariable(name: "address", arg: 4, scope: !1187, file: !852, line: 323, type: !205)
!1195 = !DILocation(line: 323, column: 38, scope: !1187)
!1196 = !DILocalVariable(name: "split", scope: !1187, file: !852, line: 325, type: !1197)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64, align: 64)
!1198 = !DIDerivedType(tag: DW_TAG_typedef, name: "NETSPLIT_REC", file: !1199, line: 24, baseType: !1200)
!1199 = !DIFile(filename: "../../../src/irc/core/netsplit.h", directory: "/home/lichi/Desktop/irssi/task1")
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1199, line: 15, size: 384, align: 64, elements: !1201)
!1201 = !{!1202, !1212, !1213, !1214, !1215, !1216}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !1200, file: !1199, line: 16, baseType: !1203, size: 64, align: 64)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64, align: 64)
!1204 = !DIDerivedType(tag: DW_TAG_typedef, name: "NETSPLIT_SERVER_REC", file: !1199, line: 13, baseType: !1205)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1199, line: 6, size: 256, align: 64, elements: !1206)
!1206 = !{!1207, !1208, !1209, !1210, !1211}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !1205, file: !1199, line: 7, baseType: !228, size: 64, align: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "destserver", scope: !1205, file: !1199, line: 8, baseType: !228, size: 64, align: 64, offset: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1205, file: !1199, line: 9, baseType: !215, size: 32, align: 32, offset: 128)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "prints", scope: !1205, file: !1199, line: 10, baseType: !215, size: 32, align: 32, offset: 160)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1205, file: !1199, line: 12, baseType: !462, size: 64, align: 64, offset: 192)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !1200, file: !1199, line: 18, baseType: !228, size: 64, align: 64, offset: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1200, file: !1199, line: 19, baseType: !228, size: 64, align: 64, offset: 128)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !1200, file: !1199, line: 20, baseType: !378, size: 64, align: 64, offset: 192)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1200, file: !1199, line: 22, baseType: !288, size: 1, align: 32, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !1200, file: !1199, line: 23, baseType: !462, size: 64, align: 64, offset: 320)
!1217 = !DILocation(line: 325, column: 16, scope: !1187)
!1218 = !DILocalVariable(name: "netjoin", scope: !1187, file: !852, line: 326, type: !861)
!1219 = !DILocation(line: 326, column: 15, scope: !1187)
!1220 = !DILocalVariable(name: "channels", scope: !1187, file: !852, line: 327, type: !378)
!1221 = !DILocation(line: 327, column: 10, scope: !1187)
!1222 = !DILocalVariable(name: "rejoin", scope: !1187, file: !852, line: 328, type: !215)
!1223 = !DILocation(line: 328, column: 6, scope: !1187)
!1224 = !DILocation(line: 330, column: 87, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1187, file: !852, line: 330, column: 6)
!1226 = !DILocation(line: 330, column: 69, scope: !1225)
!1227 = !DILocation(line: 330, column: 54, scope: !1225)
!1228 = !DILocation(line: 330, column: 53, scope: !1225)
!1229 = !DILocation(line: 330, column: 28, scope: !1230)
!1230 = !DILexicalBlockFile(scope: !1225, file: !852, discriminator: 3)
!1231 = !DILocation(line: 330, column: 9, scope: !1225)
!1232 = !DILocation(line: 330, column: 6, scope: !1187)
!1233 = !DILocation(line: 330, column: 8, scope: !1234)
!1234 = !DILexicalBlockFile(scope: !1225, file: !852, discriminator: 1)
!1235 = !DILocation(line: 330, column: 6, scope: !1236)
!1236 = !DILexicalBlockFile(scope: !1187, file: !852, discriminator: 2)
!1237 = !DILocation(line: 331, column: 3, scope: !1225)
!1238 = !DILocation(line: 333, column: 53, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1187, file: !852, line: 333, column: 6)
!1240 = !DILocation(line: 333, column: 35, scope: !1239)
!1241 = !DILocation(line: 333, column: 20, scope: !1239)
!1242 = !DILocation(line: 333, column: 32, scope: !1239)
!1243 = !DILocation(line: 333, column: 38, scope: !1239)
!1244 = !DILocation(line: 334, column: 5, scope: !1239)
!1245 = !DILocation(line: 333, column: 6, scope: !1246)
!1246 = !DILexicalBlockFile(scope: !1239, file: !852, discriminator: 1)
!1247 = !DILocation(line: 333, column: 6, scope: !1239)
!1248 = !DILocation(line: 333, column: 6, scope: !1187)
!1249 = !DILocation(line: 335, column: 3, scope: !1239)
!1250 = !DILocation(line: 337, column: 24, scope: !1187)
!1251 = !DILocation(line: 337, column: 32, scope: !1187)
!1252 = !DILocation(line: 337, column: 38, scope: !1187)
!1253 = !DILocation(line: 337, column: 10, scope: !1187)
!1254 = !DILocation(line: 337, column: 8, scope: !1187)
!1255 = !DILocation(line: 338, column: 25, scope: !1187)
!1256 = !DILocation(line: 338, column: 33, scope: !1187)
!1257 = !DILocation(line: 338, column: 12, scope: !1187)
!1258 = !DILocation(line: 338, column: 10, scope: !1187)
!1259 = !DILocation(line: 339, column: 6, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1187, file: !852, line: 339, column: 6)
!1261 = !DILocation(line: 339, column: 12, scope: !1260)
!1262 = !DILocation(line: 339, column: 19, scope: !1260)
!1263 = !DILocation(line: 339, column: 22, scope: !1264)
!1264 = !DILexicalBlockFile(scope: !1260, file: !852, discriminator: 1)
!1265 = !DILocation(line: 339, column: 30, scope: !1264)
!1266 = !DILocation(line: 339, column: 6, scope: !1264)
!1267 = !DILocation(line: 340, column: 17, scope: !1260)
!1268 = !DILocation(line: 343, column: 6, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1187, file: !852, line: 343, column: 6)
!1270 = !DILocation(line: 343, column: 14, scope: !1269)
!1271 = !DILocation(line: 343, column: 6, scope: !1187)
!1272 = !DILocation(line: 344, column: 33, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !852, line: 344, column: 7)
!1274 = distinct !DILexicalBlock(scope: !1269, file: !852, line: 343, column: 22)
!1275 = !DILocation(line: 344, column: 42, scope: !1273)
!1276 = !DILocation(line: 344, column: 56, scope: !1273)
!1277 = !DILocation(line: 344, column: 8, scope: !1273)
!1278 = !DILocation(line: 344, column: 7, scope: !1274)
!1279 = !DILocation(line: 345, column: 4, scope: !1273)
!1280 = !DILocation(line: 346, column: 2, scope: !1274)
!1281 = !DILocation(line: 347, column: 14, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1269, file: !852, line: 346, column: 9)
!1283 = !DILocation(line: 347, column: 21, scope: !1282)
!1284 = !DILocation(line: 347, column: 12, scope: !1282)
!1285 = !DILocation(line: 348, column: 3, scope: !1282)
!1286 = !DILocation(line: 348, column: 10, scope: !1287)
!1287 = !DILexicalBlockFile(scope: !1282, file: !852, discriminator: 1)
!1288 = !DILocation(line: 348, column: 19, scope: !1287)
!1289 = !DILocation(line: 348, column: 3, scope: !1287)
!1290 = !DILocalVariable(name: "schannel", scope: !1291, file: !852, line: 349, type: !1292)
!1291 = distinct !DILexicalBlock(scope: !1282, file: !852, line: 348, column: 27)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64, align: 64)
!1293 = !DIDerivedType(tag: DW_TAG_typedef, name: "NETSPLIT_CHAN_REC", file: !1199, line: 32, baseType: !1294)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1199, line: 26, size: 192, align: 64, elements: !1295)
!1295 = !{!1296, !1297, !1298, !1299, !1300}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1294, file: !1199, line: 27, baseType: !228, size: 64, align: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1294, file: !1199, line: 28, baseType: !288, size: 1, align: 32, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !1294, file: !1199, line: 29, baseType: !288, size: 1, align: 32, offset: 65, flags: DIFlagBitField, extraData: i64 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !1294, file: !1199, line: 30, baseType: !288, size: 1, align: 32, offset: 66, flags: DIFlagBitField, extraData: i64 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !1294, file: !1199, line: 31, baseType: !688, size: 64, align: 8, offset: 72)
!1301 = !DILocation(line: 349, column: 23, scope: !1291)
!1302 = !DILocation(line: 349, column: 34, scope: !1291)
!1303 = !DILocation(line: 349, column: 44, scope: !1291)
!1304 = !DILocation(line: 351, column: 20, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1291, file: !852, line: 351, column: 8)
!1306 = !DILocation(line: 351, column: 30, scope: !1305)
!1307 = !DILocation(line: 351, column: 36, scope: !1305)
!1308 = !DILocation(line: 351, column: 9, scope: !1305)
!1309 = !DILocation(line: 351, column: 8, scope: !1291)
!1310 = !DILocation(line: 352, column: 5, scope: !1305)
!1311 = !DILocation(line: 353, column: 15, scope: !1291)
!1312 = !DILocation(line: 353, column: 25, scope: !1291)
!1313 = !DILocation(line: 353, column: 13, scope: !1291)
!1314 = !DILocation(line: 348, column: 3, scope: !1315)
!1315 = !DILexicalBlockFile(scope: !1282, file: !852, discriminator: 2)
!1316 = distinct !{!1316, !1285}
!1317 = !DILocation(line: 357, column: 7, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1282, file: !852, line: 357, column: 7)
!1319 = !DILocation(line: 357, column: 16, scope: !1318)
!1320 = !DILocation(line: 357, column: 7, scope: !1282)
!1321 = !DILocation(line: 358, column: 11, scope: !1318)
!1322 = !DILocation(line: 358, column: 4, scope: !1318)
!1323 = !DILocation(line: 361, column: 6, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1187, file: !852, line: 361, column: 6)
!1325 = !DILocation(line: 361, column: 15, scope: !1324)
!1326 = !DILocation(line: 361, column: 6, scope: !1187)
!1327 = !DILocation(line: 362, column: 14, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1324, file: !852, line: 361, column: 22)
!1329 = !DILocation(line: 362, column: 12, scope: !1328)
!1330 = !DILocation(line: 364, column: 3, scope: !1328)
!1331 = !DILocation(line: 365, column: 2, scope: !1328)
!1332 = !DILocation(line: 367, column: 6, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1187, file: !852, line: 367, column: 6)
!1334 = !DILocation(line: 367, column: 14, scope: !1333)
!1335 = !DILocation(line: 367, column: 6, scope: !1187)
!1336 = !DILocation(line: 368, column: 25, scope: !1333)
!1337 = !DILocation(line: 368, column: 33, scope: !1333)
!1338 = !DILocation(line: 368, column: 39, scope: !1333)
!1339 = !DILocation(line: 368, column: 46, scope: !1333)
!1340 = !DILocation(line: 368, column: 13, scope: !1333)
!1341 = !DILocation(line: 368, column: 11, scope: !1333)
!1342 = !DILocation(line: 368, column: 3, scope: !1333)
!1343 = !DILocation(line: 370, column: 6, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1187, file: !852, line: 370, column: 6)
!1345 = !DILocation(line: 370, column: 6, scope: !1187)
!1346 = !DILocation(line: 372, column: 42, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1344, file: !852, line: 371, column: 2)
!1348 = !DILocation(line: 372, column: 51, scope: !1347)
!1349 = !DILocation(line: 373, column: 31, scope: !1347)
!1350 = !DILocation(line: 373, column: 14, scope: !1347)
!1351 = !DILocation(line: 372, column: 27, scope: !1347)
!1352 = !DILocation(line: 372, column: 3, scope: !1347)
!1353 = !DILocation(line: 372, column: 12, scope: !1347)
!1354 = !DILocation(line: 372, column: 25, scope: !1347)
!1355 = !DILocation(line: 374, column: 3, scope: !1347)
!1356 = !DILocation(line: 375, column: 2, scope: !1347)
!1357 = !DILocation(line: 376, column: 1, scope: !1187)
!1358 = distinct !DISubprogram(name: "msg_mode", scope: !852, file: !852, line: 409, type: !1359, isLocal: true, isDefinition: true, scopeLine: 411, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !886)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{null, !207, !205, !205, !205, !205}
!1361 = !DILocalVariable(name: "server", arg: 1, scope: !1358, file: !852, line: 409, type: !207)
!1362 = !DILocation(line: 409, column: 38, scope: !1358)
!1363 = !DILocalVariable(name: "channel", arg: 2, scope: !1358, file: !852, line: 409, type: !205)
!1364 = !DILocation(line: 409, column: 58, scope: !1358)
!1365 = !DILocalVariable(name: "sender", arg: 3, scope: !1358, file: !852, line: 410, type: !205)
!1366 = !DILocation(line: 410, column: 20, scope: !1358)
!1367 = !DILocalVariable(name: "addr", arg: 4, scope: !1358, file: !852, line: 410, type: !205)
!1368 = !DILocation(line: 410, column: 40, scope: !1358)
!1369 = !DILocalVariable(name: "data", arg: 5, scope: !1358, file: !852, line: 410, type: !205)
!1370 = !DILocation(line: 410, column: 58, scope: !1358)
!1371 = !DILocalVariable(name: "rec", scope: !1358, file: !852, line: 412, type: !861)
!1372 = !DILocation(line: 412, column: 15, scope: !1358)
!1373 = !DILocalVariable(name: "params", scope: !1358, file: !852, line: 413, type: !228)
!1374 = !DILocation(line: 413, column: 8, scope: !1358)
!1375 = !DILocalVariable(name: "mode", scope: !1358, file: !852, line: 413, type: !228)
!1376 = !DILocation(line: 413, column: 17, scope: !1358)
!1377 = !DILocalVariable(name: "nicks", scope: !1358, file: !852, line: 413, type: !228)
!1378 = !DILocation(line: 413, column: 24, scope: !1358)
!1379 = !DILocalVariable(name: "nicklist", scope: !1358, file: !852, line: 414, type: !616)
!1380 = !DILocation(line: 414, column: 9, scope: !1358)
!1381 = !DILocalVariable(name: "nick", scope: !1358, file: !852, line: 414, type: !616)
!1382 = !DILocation(line: 414, column: 21, scope: !1358)
!1383 = !DILocalVariable(name: "type", scope: !1358, file: !852, line: 414, type: !204)
!1384 = !DILocation(line: 414, column: 27, scope: !1358)
!1385 = !DILocalVariable(name: "prefix", scope: !1358, file: !852, line: 414, type: !204)
!1386 = !DILocation(line: 414, column: 33, scope: !1358)
!1387 = !DILocalVariable(name: "show", scope: !1358, file: !852, line: 415, type: !215)
!1388 = !DILocation(line: 415, column: 6, scope: !1358)
!1389 = !DILocation(line: 417, column: 2, scope: !1358)
!1390 = distinct !{!1390, !1389}
!1391 = !DILocation(line: 417, column: 10, scope: !1392)
!1392 = !DILexicalBlockFile(scope: !1393, file: !852, discriminator: 1)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !852, line: 417, column: 10)
!1394 = distinct !DILexicalBlock(scope: !1358, file: !852, line: 417, column: 4)
!1395 = !DILocation(line: 417, column: 15, scope: !1392)
!1396 = !DILocation(line: 417, column: 5, scope: !1397)
!1397 = !DILexicalBlockFile(scope: !1398, file: !852, discriminator: 2)
!1398 = distinct !DILexicalBlock(scope: !1393, file: !852, line: 417, column: 3)
!1399 = !DILocation(line: 417, column: 14, scope: !1400)
!1400 = !DILexicalBlockFile(scope: !1401, file: !852, discriminator: 3)
!1401 = distinct !DILexicalBlock(scope: !1393, file: !852, line: 417, column: 12)
!1402 = !DILocation(line: 417, column: 99, scope: !1400)
!1403 = !DILocation(line: 417, column: 110, scope: !1404)
!1404 = !DILexicalBlockFile(scope: !1394, file: !852, discriminator: 4)
!1405 = !DILocation(line: 418, column: 43, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1358, file: !852, line: 418, column: 6)
!1407 = !DILocation(line: 418, column: 25, scope: !1406)
!1408 = !DILocation(line: 418, column: 10, scope: !1406)
!1409 = !DILocation(line: 418, column: 21, scope: !1406)
!1410 = !DILocation(line: 418, column: 65, scope: !1406)
!1411 = !DILocation(line: 418, column: 47, scope: !1412)
!1412 = !DILexicalBlockFile(scope: !1406, file: !852, discriminator: 2)
!1413 = !DILocation(line: 418, column: 32, scope: !1406)
!1414 = !DILocation(line: 418, column: 20, scope: !1406)
!1415 = !DILocation(line: 418, column: 8, scope: !1416)
!1416 = !DILexicalBlockFile(scope: !1406, file: !852, discriminator: 3)
!1417 = !DILocation(line: 418, column: 8, scope: !1406)
!1418 = !DILocation(line: 418, column: 30, scope: !1406)
!1419 = !DILocation(line: 418, column: 33, scope: !1420)
!1420 = !DILexicalBlockFile(scope: !1406, file: !852, discriminator: 1)
!1421 = !DILocation(line: 418, column: 38, scope: !1420)
!1422 = !DILocation(line: 418, column: 6, scope: !1420)
!1423 = !DILocation(line: 419, column: 3, scope: !1406)
!1424 = !DILocation(line: 421, column: 28, scope: !1358)
!1425 = !DILocation(line: 421, column: 11, scope: !1358)
!1426 = !DILocation(line: 421, column: 9, scope: !1358)
!1427 = !DILocation(line: 426, column: 31, scope: !1358)
!1428 = !DILocation(line: 426, column: 20, scope: !1358)
!1429 = !DILocation(line: 426, column: 18, scope: !1358)
!1430 = !DILocation(line: 426, column: 7, scope: !1358)
!1431 = !DILocation(line: 428, column: 7, scope: !1358)
!1432 = !DILocation(line: 428, column: 19, scope: !1358)
!1433 = !DILocation(line: 429, column: 2, scope: !1358)
!1434 = !DILocation(line: 429, column: 10, scope: !1435)
!1435 = !DILexicalBlockFile(scope: !1436, file: !852, discriminator: 1)
!1436 = distinct !DILexicalBlock(scope: !1437, file: !852, line: 429, column: 2)
!1437 = distinct !DILexicalBlock(scope: !1358, file: !852, line: 429, column: 2)
!1438 = !DILocation(line: 429, column: 9, scope: !1435)
!1439 = !DILocation(line: 429, column: 15, scope: !1435)
!1440 = !DILocation(line: 429, column: 2, scope: !1435)
!1441 = !DILocation(line: 430, column: 8, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !852, line: 430, column: 7)
!1443 = distinct !DILexicalBlock(scope: !1436, file: !852, line: 429, column: 32)
!1444 = !DILocation(line: 430, column: 7, scope: !1442)
!1445 = !DILocation(line: 430, column: 13, scope: !1442)
!1446 = !DILocation(line: 430, column: 20, scope: !1442)
!1447 = !DILocation(line: 430, column: 24, scope: !1448)
!1448 = !DILexicalBlockFile(scope: !1442, file: !852, discriminator: 1)
!1449 = !DILocation(line: 430, column: 23, scope: !1448)
!1450 = !DILocation(line: 430, column: 29, scope: !1448)
!1451 = !DILocation(line: 430, column: 7, scope: !1448)
!1452 = !DILocation(line: 431, column: 12, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1442, file: !852, line: 430, column: 37)
!1454 = !DILocation(line: 431, column: 11, scope: !1453)
!1455 = !DILocation(line: 431, column: 9, scope: !1453)
!1456 = !DILocation(line: 432, column: 4, scope: !1453)
!1457 = !DILocation(line: 435, column: 8, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1443, file: !852, line: 435, column: 7)
!1459 = !DILocation(line: 435, column: 7, scope: !1458)
!1460 = !DILocation(line: 435, column: 13, scope: !1458)
!1461 = !DILocation(line: 435, column: 20, scope: !1458)
!1462 = !DILocation(line: 435, column: 61, scope: !1463)
!1463 = !DILexicalBlockFile(scope: !1458, file: !852, discriminator: 1)
!1464 = !DILocation(line: 435, column: 60, scope: !1463)
!1465 = !DILocation(line: 435, column: 40, scope: !1463)
!1466 = !DILocation(line: 435, column: 24, scope: !1463)
!1467 = !DILocation(line: 435, column: 25, scope: !1463)
!1468 = !DILocation(line: 435, column: 34, scope: !1463)
!1469 = !DILocation(line: 435, column: 67, scope: !1463)
!1470 = !DILocation(line: 435, column: 23, scope: !1463)
!1471 = !DILocation(line: 435, column: 7, scope: !1463)
!1472 = !DILocation(line: 437, column: 23, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1458, file: !852, line: 435, column: 76)
!1474 = !DILocation(line: 437, column: 32, scope: !1473)
!1475 = !DILocation(line: 437, column: 31, scope: !1473)
!1476 = !DILocation(line: 437, column: 10, scope: !1473)
!1477 = !DILocation(line: 437, column: 8, scope: !1473)
!1478 = !DILocation(line: 438, column: 51, scope: !1473)
!1479 = !DILocation(line: 438, column: 50, scope: !1473)
!1480 = !DILocation(line: 438, column: 30, scope: !1473)
!1481 = !DILocation(line: 438, column: 14, scope: !1473)
!1482 = !DILocation(line: 438, column: 15, scope: !1473)
!1483 = !DILocation(line: 438, column: 24, scope: !1473)
!1484 = !DILocation(line: 438, column: 57, scope: !1473)
!1485 = !DILocation(line: 438, column: 11, scope: !1473)
!1486 = !DILocation(line: 439, column: 8, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1473, file: !852, line: 439, column: 8)
!1488 = !DILocation(line: 439, column: 12, scope: !1487)
!1489 = !DILocation(line: 439, column: 19, scope: !1487)
!1490 = !DILocation(line: 439, column: 22, scope: !1491)
!1491 = !DILexicalBlockFile(scope: !1487, file: !852, discriminator: 1)
!1492 = !DILocation(line: 439, column: 27, scope: !1491)
!1493 = !DILocation(line: 439, column: 34, scope: !1491)
!1494 = !DILocation(line: 439, column: 37, scope: !1495)
!1495 = !DILexicalBlockFile(scope: !1487, file: !852, discriminator: 2)
!1496 = !DILocation(line: 439, column: 44, scope: !1495)
!1497 = !DILocation(line: 439, column: 52, scope: !1495)
!1498 = !DILocation(line: 440, column: 30, scope: !1487)
!1499 = !DILocation(line: 440, column: 38, scope: !1487)
!1500 = !DILocation(line: 440, column: 43, scope: !1487)
!1501 = !DILocation(line: 440, column: 52, scope: !1487)
!1502 = !DILocation(line: 440, column: 9, scope: !1487)
!1503 = !DILocation(line: 439, column: 8, scope: !1504)
!1504 = !DILexicalBlockFile(scope: !1473, file: !852, discriminator: 3)
!1505 = !DILocation(line: 441, column: 10, scope: !1487)
!1506 = !DILocation(line: 441, column: 5, scope: !1487)
!1507 = !DILocation(line: 442, column: 29, scope: !1473)
!1508 = !DILocation(line: 443, column: 3, scope: !1473)
!1509 = !DILocation(line: 444, column: 10, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !852, line: 444, column: 8)
!1511 = distinct !DILexicalBlock(scope: !1458, file: !852, line: 443, column: 10)
!1512 = !DILocation(line: 444, column: 9, scope: !1510)
!1513 = !DILocation(line: 444, column: 16, scope: !1510)
!1514 = !DILocation(line: 444, column: 500, scope: !1510)
!1515 = !DILocation(line: 444, column: 63, scope: !1516)
!1516 = !DILexicalBlockFile(scope: !1510, file: !852, discriminator: 1)
!1517 = !DILocation(line: 444, column: 62, scope: !1516)
!1518 = !DILocation(line: 444, column: 41, scope: !1516)
!1519 = !DILocation(line: 444, column: 27, scope: !1516)
!1520 = !DILocation(line: 444, column: 35, scope: !1516)
!1521 = !DILocation(line: 444, column: 69, scope: !1516)
!1522 = !DILocation(line: 444, column: 74, scope: !1516)
!1523 = !DILocation(line: 444, column: 90, scope: !1516)
!1524 = !DILocation(line: 444, column: 129, scope: !1525)
!1525 = !DILexicalBlockFile(scope: !1510, file: !852, discriminator: 2)
!1526 = !DILocation(line: 444, column: 128, scope: !1525)
!1527 = !DILocation(line: 444, column: 107, scope: !1525)
!1528 = !DILocation(line: 444, column: 93, scope: !1525)
!1529 = !DILocation(line: 444, column: 101, scope: !1525)
!1530 = !DILocation(line: 444, column: 135, scope: !1525)
!1531 = !DILocation(line: 444, column: 140, scope: !1525)
!1532 = !DILocation(line: 444, column: 156, scope: !1525)
!1533 = !DILocation(line: 444, column: 195, scope: !1534)
!1534 = !DILexicalBlockFile(scope: !1510, file: !852, discriminator: 3)
!1535 = !DILocation(line: 444, column: 194, scope: !1534)
!1536 = !DILocation(line: 444, column: 173, scope: !1534)
!1537 = !DILocation(line: 444, column: 159, scope: !1534)
!1538 = !DILocation(line: 444, column: 167, scope: !1534)
!1539 = !DILocation(line: 444, column: 201, scope: !1534)
!1540 = !DILocation(line: 444, column: 206, scope: !1534)
!1541 = !DILocation(line: 444, column: 228, scope: !1534)
!1542 = !DILocation(line: 444, column: 267, scope: !1543)
!1543 = !DILexicalBlockFile(scope: !1510, file: !852, discriminator: 4)
!1544 = !DILocation(line: 444, column: 266, scope: !1543)
!1545 = !DILocation(line: 444, column: 245, scope: !1543)
!1546 = !DILocation(line: 444, column: 231, scope: !1543)
!1547 = !DILocation(line: 444, column: 239, scope: !1543)
!1548 = !DILocation(line: 444, column: 273, scope: !1543)
!1549 = !DILocation(line: 444, column: 278, scope: !1543)
!1550 = !DILocation(line: 444, column: 9, scope: !1543)
!1551 = !DILocation(line: 444, column: 334, scope: !1552)
!1552 = !DILexicalBlockFile(scope: !1510, file: !852, discriminator: 5)
!1553 = !DILocation(line: 444, column: 333, scope: !1552)
!1554 = !DILocation(line: 444, column: 312, scope: !1552)
!1555 = !DILocation(line: 444, column: 298, scope: !1552)
!1556 = !DILocation(line: 444, column: 306, scope: !1552)
!1557 = !DILocation(line: 444, column: 340, scope: !1552)
!1558 = !DILocation(line: 444, column: 345, scope: !1552)
!1559 = !DILocation(line: 444, column: 361, scope: !1552)
!1560 = !DILocation(line: 444, column: 400, scope: !1561)
!1561 = !DILexicalBlockFile(scope: !1510, file: !852, discriminator: 6)
!1562 = !DILocation(line: 444, column: 399, scope: !1561)
!1563 = !DILocation(line: 444, column: 378, scope: !1561)
!1564 = !DILocation(line: 444, column: 364, scope: !1561)
!1565 = !DILocation(line: 444, column: 372, scope: !1561)
!1566 = !DILocation(line: 444, column: 406, scope: !1561)
!1567 = !DILocation(line: 444, column: 411, scope: !1561)
!1568 = !DILocation(line: 444, column: 427, scope: !1561)
!1569 = !DILocation(line: 444, column: 466, scope: !1570)
!1570 = !DILexicalBlockFile(scope: !1510, file: !852, discriminator: 7)
!1571 = !DILocation(line: 444, column: 465, scope: !1570)
!1572 = !DILocation(line: 444, column: 444, scope: !1570)
!1573 = !DILocation(line: 444, column: 430, scope: !1570)
!1574 = !DILocation(line: 444, column: 438, scope: !1570)
!1575 = !DILocation(line: 444, column: 472, scope: !1570)
!1576 = !DILocation(line: 444, column: 477, scope: !1570)
!1577 = !DILocation(line: 444, column: 500, scope: !1570)
!1578 = !DILocation(line: 444, column: 504, scope: !1579)
!1579 = !DILexicalBlockFile(scope: !1510, file: !852, discriminator: 8)
!1580 = !DILocation(line: 444, column: 503, scope: !1579)
!1581 = !DILocation(line: 444, column: 509, scope: !1579)
!1582 = !DILocation(line: 444, column: 8, scope: !1579)
!1583 = !DILocation(line: 445, column: 9, scope: !1510)
!1584 = !DILocation(line: 445, column: 5, scope: !1510)
!1585 = !DILocation(line: 446, column: 9, scope: !1511)
!1586 = !DILocation(line: 448, column: 2, scope: !1443)
!1587 = !DILocation(line: 429, column: 28, scope: !1588)
!1588 = !DILexicalBlockFile(scope: !1436, file: !852, discriminator: 2)
!1589 = !DILocation(line: 429, column: 2, scope: !1588)
!1590 = distinct !{!1590, !1433}
!1591 = !DILocation(line: 450, column: 7, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1358, file: !852, line: 450, column: 6)
!1593 = !DILocation(line: 450, column: 6, scope: !1358)
!1594 = !DILocation(line: 450, column: 13, scope: !1595)
!1595 = !DILexicalBlockFile(scope: !1592, file: !852, discriminator: 1)
!1596 = !DILocation(line: 452, column: 13, scope: !1358)
!1597 = !DILocation(line: 452, column: 2, scope: !1358)
!1598 = !DILocation(line: 453, column: 9, scope: !1358)
!1599 = !DILocation(line: 453, column: 2, scope: !1358)
!1600 = !DILocation(line: 454, column: 1, scope: !1358)
!1601 = !DILocation(line: 454, column: 1, scope: !1602)
!1602 = !DILexicalBlockFile(scope: !1358, file: !852, discriminator: 1)
!1603 = distinct !DISubprogram(name: "netjoin_find_server", scope: !852, file: !852, line: 61, type: !1604, isLocal: true, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !886)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{!868, !207}
!1606 = !DILocalVariable(name: "server", arg: 1, scope: !1603, file: !852, line: 61, type: !207)
!1607 = !DILocation(line: 61, column: 64, scope: !1603)
!1608 = !DILocalVariable(name: "tmp", scope: !1603, file: !852, line: 63, type: !378)
!1609 = !DILocation(line: 63, column: 10, scope: !1603)
!1610 = !DILocation(line: 65, column: 2, scope: !1603)
!1611 = distinct !{!1611, !1610}
!1612 = !DILocation(line: 65, column: 10, scope: !1613)
!1613 = !DILexicalBlockFile(scope: !1614, file: !852, discriminator: 1)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !852, line: 65, column: 10)
!1615 = distinct !DILexicalBlock(scope: !1603, file: !852, line: 65, column: 4)
!1616 = !DILocation(line: 65, column: 17, scope: !1613)
!1617 = !DILocation(line: 65, column: 5, scope: !1618)
!1618 = !DILexicalBlockFile(scope: !1619, file: !852, discriminator: 2)
!1619 = distinct !DILexicalBlock(scope: !1614, file: !852, line: 65, column: 3)
!1620 = !DILocation(line: 65, column: 14, scope: !1621)
!1621 = !DILexicalBlockFile(scope: !1622, file: !852, discriminator: 3)
!1622 = distinct !DILexicalBlock(scope: !1614, file: !852, line: 65, column: 12)
!1623 = !DILocation(line: 65, column: 101, scope: !1621)
!1624 = !DILocation(line: 65, column: 7, scope: !1625)
!1625 = !DILexicalBlockFile(scope: !1615, file: !852, discriminator: 4)
!1626 = !DILocation(line: 67, column: 13, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1603, file: !852, line: 67, column: 2)
!1628 = !DILocation(line: 67, column: 11, scope: !1627)
!1629 = !DILocation(line: 67, column: 7, scope: !1627)
!1630 = !DILocation(line: 67, column: 26, scope: !1631)
!1631 = !DILexicalBlockFile(scope: !1632, file: !852, discriminator: 1)
!1632 = distinct !DILexicalBlock(scope: !1627, file: !852, line: 67, column: 2)
!1633 = !DILocation(line: 67, column: 30, scope: !1631)
!1634 = !DILocation(line: 67, column: 2, scope: !1631)
!1635 = !DILocalVariable(name: "rec", scope: !1636, file: !852, line: 68, type: !868)
!1636 = distinct !DILexicalBlock(scope: !1632, file: !852, line: 67, column: 55)
!1637 = !DILocation(line: 68, column: 23, scope: !1636)
!1638 = !DILocation(line: 68, column: 29, scope: !1636)
!1639 = !DILocation(line: 68, column: 34, scope: !1636)
!1640 = !DILocation(line: 70, column: 7, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1636, file: !852, line: 70, column: 7)
!1642 = !DILocation(line: 70, column: 12, scope: !1641)
!1643 = !DILocation(line: 70, column: 22, scope: !1641)
!1644 = !DILocation(line: 70, column: 19, scope: !1641)
!1645 = !DILocation(line: 70, column: 7, scope: !1636)
!1646 = !DILocation(line: 71, column: 32, scope: !1641)
!1647 = !DILocation(line: 71, column: 25, scope: !1641)
!1648 = !DILocation(line: 72, column: 2, scope: !1636)
!1649 = !DILocation(line: 67, column: 44, scope: !1650)
!1650 = !DILexicalBlockFile(scope: !1632, file: !852, discriminator: 2)
!1651 = !DILocation(line: 67, column: 49, scope: !1650)
!1652 = !DILocation(line: 67, column: 42, scope: !1650)
!1653 = !DILocation(line: 67, column: 2, scope: !1650)
!1654 = distinct !{!1654, !1655}
!1655 = !DILocation(line: 67, column: 2, scope: !1603)
!1656 = !DILocation(line: 74, column: 2, scope: !1603)
!1657 = !DILocation(line: 75, column: 1, scope: !1603)
!1658 = distinct !DISubprogram(name: "netjoin_remove", scope: !852, file: !852, line: 129, type: !1659, isLocal: true, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !886)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{null, !868, !861}
!1661 = !DILocalVariable(name: "server", arg: 1, scope: !1658, file: !852, line: 129, type: !868)
!1662 = !DILocation(line: 129, column: 48, scope: !1658)
!1663 = !DILocalVariable(name: "rec", arg: 2, scope: !1658, file: !852, line: 129, type: !861)
!1664 = !DILocation(line: 129, column: 69, scope: !1658)
!1665 = !DILocation(line: 131, column: 36, scope: !1658)
!1666 = !DILocation(line: 131, column: 44, scope: !1658)
!1667 = !DILocation(line: 131, column: 54, scope: !1658)
!1668 = !DILocation(line: 131, column: 21, scope: !1658)
!1669 = !DILocation(line: 131, column: 2, scope: !1658)
!1670 = !DILocation(line: 131, column: 10, scope: !1658)
!1671 = !DILocation(line: 131, column: 19, scope: !1658)
!1672 = !DILocation(line: 133, column: 25, scope: !1658)
!1673 = !DILocation(line: 133, column: 30, scope: !1658)
!1674 = !DILocation(line: 133, column: 9, scope: !1658)
!1675 = !DILocation(line: 134, column: 18, scope: !1658)
!1676 = !DILocation(line: 134, column: 23, scope: !1658)
!1677 = !DILocation(line: 134, column: 2, scope: !1658)
!1678 = !DILocation(line: 135, column: 15, scope: !1658)
!1679 = !DILocation(line: 135, column: 20, scope: !1658)
!1680 = !DILocation(line: 135, column: 2, scope: !1658)
!1681 = !DILocation(line: 136, column: 15, scope: !1658)
!1682 = !DILocation(line: 136, column: 20, scope: !1658)
!1683 = !DILocation(line: 136, column: 2, scope: !1658)
!1684 = !DILocation(line: 138, column: 9, scope: !1658)
!1685 = !DILocation(line: 138, column: 14, scope: !1658)
!1686 = !DILocation(line: 138, column: 2, scope: !1658)
!1687 = !DILocation(line: 139, column: 9, scope: !1658)
!1688 = !DILocation(line: 139, column: 2, scope: !1658)
!1689 = !DILocation(line: 140, column: 1, scope: !1658)
!1690 = distinct !DISubprogram(name: "print_netjoins", scope: !852, file: !852, line: 167, type: !1691, isLocal: true, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !886)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{null, !868, !205}
!1693 = !DILocalVariable(name: "server", arg: 1, scope: !1690, file: !852, line: 167, type: !868)
!1694 = !DILocation(line: 167, column: 48, scope: !1690)
!1695 = !DILocalVariable(name: "filter_channel", arg: 2, scope: !1690, file: !852, line: 167, type: !205)
!1696 = !DILocation(line: 167, column: 68, scope: !1690)
!1697 = !DILocalVariable(name: "temp", scope: !1690, file: !852, line: 169, type: !850)
!1698 = !DILocation(line: 169, column: 18, scope: !1690)
!1699 = !DILocalVariable(name: "channels", scope: !1690, file: !852, line: 170, type: !490)
!1700 = !DILocation(line: 170, column: 14, scope: !1690)
!1701 = !DILocalVariable(name: "tmp", scope: !1690, file: !852, line: 171, type: !378)
!1702 = !DILocation(line: 171, column: 10, scope: !1690)
!1703 = !DILocalVariable(name: "tmp2", scope: !1690, file: !852, line: 171, type: !378)
!1704 = !DILocation(line: 171, column: 16, scope: !1690)
!1705 = !DILocalVariable(name: "next", scope: !1690, file: !852, line: 171, type: !378)
!1706 = !DILocation(line: 171, column: 23, scope: !1690)
!1707 = !DILocalVariable(name: "next2", scope: !1690, file: !852, line: 171, type: !378)
!1708 = !DILocation(line: 171, column: 30, scope: !1690)
!1709 = !DILocalVariable(name: "old", scope: !1690, file: !852, line: 171, type: !378)
!1710 = !DILocation(line: 171, column: 38, scope: !1690)
!1711 = !DILocation(line: 173, column: 2, scope: !1690)
!1712 = distinct !{!1712, !1711}
!1713 = !DILocation(line: 173, column: 10, scope: !1714)
!1714 = !DILexicalBlockFile(scope: !1715, file: !852, discriminator: 1)
!1715 = distinct !DILexicalBlock(scope: !1716, file: !852, line: 173, column: 10)
!1716 = distinct !DILexicalBlock(scope: !1690, file: !852, line: 173, column: 4)
!1717 = !DILocation(line: 173, column: 17, scope: !1714)
!1718 = !DILocation(line: 173, column: 5, scope: !1719)
!1719 = !DILexicalBlockFile(scope: !1720, file: !852, discriminator: 2)
!1720 = distinct !DILexicalBlock(scope: !1715, file: !852, line: 173, column: 3)
!1721 = !DILocation(line: 173, column: 14, scope: !1722)
!1722 = !DILexicalBlockFile(scope: !1723, file: !852, discriminator: 3)
!1723 = distinct !DILexicalBlock(scope: !1715, file: !852, line: 173, column: 12)
!1724 = !DILocation(line: 173, column: 101, scope: !1722)
!1725 = !DILocation(line: 173, column: 112, scope: !1726)
!1726 = !DILexicalBlockFile(scope: !1716, file: !852, discriminator: 4)
!1727 = !DILocation(line: 175, column: 17, scope: !1690)
!1728 = !DILocation(line: 179, column: 13, scope: !1690)
!1729 = !DILocation(line: 179, column: 11, scope: !1690)
!1730 = !DILocation(line: 181, column: 13, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1690, file: !852, line: 181, column: 2)
!1732 = !DILocation(line: 181, column: 21, scope: !1731)
!1733 = !DILocation(line: 181, column: 11, scope: !1731)
!1734 = !DILocation(line: 181, column: 7, scope: !1731)
!1735 = !DILocation(line: 181, column: 31, scope: !1736)
!1736 = !DILexicalBlockFile(scope: !1737, file: !852, discriminator: 1)
!1737 = distinct !DILexicalBlock(scope: !1731, file: !852, line: 181, column: 2)
!1738 = !DILocation(line: 181, column: 35, scope: !1736)
!1739 = !DILocation(line: 181, column: 2, scope: !1736)
!1740 = !DILocalVariable(name: "rec", scope: !1741, file: !852, line: 182, type: !861)
!1741 = distinct !DILexicalBlock(scope: !1737, file: !852, line: 181, column: 55)
!1742 = !DILocation(line: 182, column: 16, scope: !1741)
!1743 = !DILocation(line: 182, column: 22, scope: !1741)
!1744 = !DILocation(line: 182, column: 27, scope: !1741)
!1745 = !DILocation(line: 184, column: 12, scope: !1741)
!1746 = !DILocation(line: 184, column: 11, scope: !1741)
!1747 = !DILocation(line: 184, column: 32, scope: !1748)
!1748 = !DILexicalBlockFile(scope: !1741, file: !852, discriminator: 1)
!1749 = !DILocation(line: 184, column: 39, scope: !1748)
!1750 = !DILocation(line: 184, column: 11, scope: !1748)
!1751 = !DILocation(line: 184, column: 11, scope: !1752)
!1752 = !DILexicalBlockFile(scope: !1741, file: !852, discriminator: 2)
!1753 = !DILocation(line: 184, column: 11, scope: !1754)
!1754 = !DILexicalBlockFile(scope: !1741, file: !852, discriminator: 3)
!1755 = !DILocation(line: 184, column: 8, scope: !1754)
!1756 = !DILocation(line: 186, column: 15, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1741, file: !852, line: 186, column: 3)
!1758 = !DILocation(line: 186, column: 20, scope: !1757)
!1759 = !DILocation(line: 186, column: 13, scope: !1757)
!1760 = !DILocation(line: 186, column: 8, scope: !1757)
!1761 = !DILocation(line: 186, column: 34, scope: !1762)
!1762 = !DILexicalBlockFile(scope: !1763, file: !852, discriminator: 1)
!1763 = distinct !DILexicalBlock(scope: !1757, file: !852, line: 186, column: 3)
!1764 = !DILocation(line: 186, column: 39, scope: !1762)
!1765 = !DILocation(line: 186, column: 3, scope: !1762)
!1766 = !DILocalVariable(name: "channel", scope: !1767, file: !852, line: 187, type: !228)
!1767 = distinct !DILexicalBlock(scope: !1763, file: !852, line: 186, column: 61)
!1768 = !DILocation(line: 187, column: 10, scope: !1767)
!1769 = !DILocation(line: 187, column: 20, scope: !1767)
!1770 = !DILocation(line: 187, column: 26, scope: !1767)
!1771 = !DILocalVariable(name: "realchannel", scope: !1767, file: !852, line: 188, type: !228)
!1772 = !DILocation(line: 188, column: 10, scope: !1767)
!1773 = !DILocation(line: 188, column: 24, scope: !1767)
!1774 = !DILocation(line: 188, column: 32, scope: !1767)
!1775 = !DILocation(line: 190, column: 14, scope: !1767)
!1776 = !DILocation(line: 190, column: 13, scope: !1767)
!1777 = !DILocation(line: 190, column: 35, scope: !1778)
!1778 = !DILexicalBlockFile(scope: !1767, file: !852, discriminator: 1)
!1779 = !DILocation(line: 190, column: 43, scope: !1778)
!1780 = !DILocation(line: 190, column: 13, scope: !1778)
!1781 = !DILocation(line: 190, column: 13, scope: !1782)
!1782 = !DILexicalBlockFile(scope: !1767, file: !852, discriminator: 2)
!1783 = !DILocation(line: 190, column: 13, scope: !1784)
!1784 = !DILexicalBlockFile(scope: !1767, file: !852, discriminator: 3)
!1785 = !DILocation(line: 190, column: 10, scope: !1784)
!1786 = !DILocation(line: 193, column: 8, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1767, file: !852, line: 193, column: 8)
!1788 = !DILocation(line: 193, column: 23, scope: !1787)
!1789 = !DILocation(line: 193, column: 30, scope: !1787)
!1790 = !DILocation(line: 194, column: 19, scope: !1787)
!1791 = !DILocation(line: 194, column: 32, scope: !1787)
!1792 = !DILocation(line: 194, column: 8, scope: !1787)
!1793 = !DILocation(line: 194, column: 48, scope: !1787)
!1794 = !DILocation(line: 193, column: 8, scope: !1778)
!1795 = !DILocation(line: 195, column: 5, scope: !1787)
!1796 = !DILocation(line: 197, column: 31, scope: !1767)
!1797 = !DILocation(line: 197, column: 41, scope: !1767)
!1798 = !DILocation(line: 197, column: 11, scope: !1767)
!1799 = !DILocation(line: 197, column: 9, scope: !1767)
!1800 = !DILocation(line: 198, column: 8, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1767, file: !852, line: 198, column: 8)
!1802 = !DILocation(line: 198, column: 13, scope: !1801)
!1803 = !DILocation(line: 198, column: 8, scope: !1767)
!1804 = !DILocation(line: 199, column: 32, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1801, file: !852, line: 198, column: 21)
!1806 = !DILocation(line: 199, column: 13, scope: !1805)
!1807 = !DILocation(line: 199, column: 10, scope: !1805)
!1808 = !DILocation(line: 200, column: 19, scope: !1805)
!1809 = !DILocation(line: 200, column: 5, scope: !1805)
!1810 = !DILocation(line: 200, column: 11, scope: !1805)
!1811 = !DILocation(line: 200, column: 17, scope: !1805)
!1812 = !DILocation(line: 201, column: 25, scope: !1805)
!1813 = !DILocation(line: 202, column: 20, scope: !1805)
!1814 = !DILocation(line: 202, column: 11, scope: !1805)
!1815 = !DILocation(line: 203, column: 11, scope: !1805)
!1816 = !DILocation(line: 201, column: 5, scope: !1805)
!1817 = !DILocation(line: 204, column: 4, scope: !1805)
!1818 = !DILocation(line: 206, column: 4, scope: !1767)
!1819 = !DILocation(line: 206, column: 10, scope: !1767)
!1820 = !DILocation(line: 206, column: 15, scope: !1767)
!1821 = !DILocation(line: 207, column: 8, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1767, file: !852, line: 207, column: 8)
!1823 = !DILocation(line: 207, column: 14, scope: !1822)
!1824 = !DILocation(line: 207, column: 23, scope: !1822)
!1825 = !DILocation(line: 207, column: 20, scope: !1822)
!1826 = !DILocation(line: 207, column: 8, scope: !1767)
!1827 = !DILocation(line: 208, column: 10, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1829, file: !852, line: 208, column: 9)
!1829 = distinct !DILexicalBlock(scope: !1822, file: !852, line: 207, column: 42)
!1830 = !DILocation(line: 208, column: 9, scope: !1828)
!1831 = !DILocation(line: 208, column: 18, scope: !1828)
!1832 = !DILocation(line: 208, column: 9, scope: !1829)
!1833 = !DILocation(line: 209, column: 32, scope: !1828)
!1834 = !DILocation(line: 209, column: 38, scope: !1828)
!1835 = !DILocation(line: 209, column: 46, scope: !1828)
!1836 = !DILocation(line: 209, column: 45, scope: !1828)
!1837 = !DILocation(line: 209, column: 6, scope: !1828)
!1838 = !DILocation(line: 211, column: 28, scope: !1829)
!1839 = !DILocation(line: 211, column: 34, scope: !1829)
!1840 = !DILocation(line: 212, column: 9, scope: !1829)
!1841 = !DILocation(line: 212, column: 14, scope: !1829)
!1842 = !DILocation(line: 211, column: 5, scope: !1829)
!1843 = !DILocation(line: 213, column: 4, scope: !1829)
!1844 = !DILocation(line: 216, column: 35, scope: !1767)
!1845 = !DILocation(line: 216, column: 40, scope: !1767)
!1846 = !DILocation(line: 217, column: 14, scope: !1767)
!1847 = !DILocation(line: 216, column: 10, scope: !1767)
!1848 = !DILocation(line: 216, column: 8, scope: !1767)
!1849 = !DILocation(line: 218, column: 8, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1767, file: !852, line: 218, column: 8)
!1851 = !DILocation(line: 218, column: 12, scope: !1850)
!1852 = !DILocation(line: 218, column: 8, scope: !1767)
!1853 = !DILocalVariable(name: "data", scope: !1854, file: !852, line: 219, type: !200)
!1854 = distinct !DILexicalBlock(scope: !1850, file: !852, line: 218, column: 20)
!1855 = !DILocation(line: 219, column: 11, scope: !1854)
!1856 = !DILocation(line: 219, column: 18, scope: !1854)
!1857 = !DILocation(line: 219, column: 23, scope: !1854)
!1858 = !DILocation(line: 221, column: 21, scope: !1854)
!1859 = !DILocation(line: 221, column: 26, scope: !1854)
!1860 = !DILocation(line: 221, column: 40, scope: !1854)
!1861 = !DILocation(line: 221, column: 6, scope: !1854)
!1862 = !DILocation(line: 220, column: 5, scope: !1854)
!1863 = !DILocation(line: 220, column: 10, scope: !1854)
!1864 = !DILocation(line: 220, column: 23, scope: !1854)
!1865 = !DILocation(line: 222, column: 12, scope: !1854)
!1866 = !DILocation(line: 222, column: 5, scope: !1854)
!1867 = !DILocation(line: 223, column: 4, scope: !1854)
!1868 = !DILocation(line: 226, column: 44, scope: !1767)
!1869 = !DILocation(line: 226, column: 49, scope: !1767)
!1870 = !DILocation(line: 226, column: 63, scope: !1767)
!1871 = !DILocation(line: 226, column: 24, scope: !1767)
!1872 = !DILocation(line: 226, column: 4, scope: !1767)
!1873 = !DILocation(line: 226, column: 9, scope: !1767)
!1874 = !DILocation(line: 226, column: 22, scope: !1767)
!1875 = !DILocation(line: 227, column: 11, scope: !1767)
!1876 = !DILocation(line: 227, column: 4, scope: !1767)
!1877 = !DILocation(line: 228, column: 3, scope: !1767)
!1878 = !DILocation(line: 186, column: 54, scope: !1879)
!1879 = !DILexicalBlockFile(scope: !1763, file: !852, discriminator: 2)
!1880 = !DILocation(line: 186, column: 52, scope: !1879)
!1881 = !DILocation(line: 186, column: 3, scope: !1879)
!1882 = distinct !{!1882, !1883}
!1883 = !DILocation(line: 186, column: 3, scope: !1741)
!1884 = !DILocation(line: 230, column: 7, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1741, file: !852, line: 230, column: 7)
!1886 = !DILocation(line: 230, column: 12, scope: !1885)
!1887 = !DILocation(line: 230, column: 25, scope: !1885)
!1888 = !DILocation(line: 230, column: 7, scope: !1741)
!1889 = !DILocation(line: 231, column: 40, scope: !1885)
!1890 = !DILocation(line: 231, column: 48, scope: !1885)
!1891 = !DILocation(line: 231, column: 25, scope: !1885)
!1892 = !DILocation(line: 232, column: 2, scope: !1741)
!1893 = !DILocation(line: 181, column: 49, scope: !1894)
!1894 = !DILexicalBlockFile(scope: !1737, file: !852, discriminator: 2)
!1895 = !DILocation(line: 181, column: 47, scope: !1894)
!1896 = !DILocation(line: 181, column: 2, scope: !1894)
!1897 = distinct !{!1897, !1898}
!1898 = !DILocation(line: 181, column: 2, scope: !1690)
!1899 = !DILocation(line: 234, column: 23, scope: !1690)
!1900 = !DILocation(line: 235, column: 9, scope: !1690)
!1901 = !DILocation(line: 234, column: 2, scope: !1690)
!1902 = !DILocation(line: 236, column: 23, scope: !1690)
!1903 = !DILocation(line: 236, column: 2, scope: !1690)
!1904 = !DILocation(line: 238, column: 6, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1690, file: !852, line: 238, column: 6)
!1906 = !DILocation(line: 238, column: 14, scope: !1905)
!1907 = !DILocation(line: 238, column: 23, scope: !1905)
!1908 = !DILocation(line: 238, column: 6, scope: !1690)
!1909 = !DILocation(line: 239, column: 25, scope: !1905)
!1910 = !DILocation(line: 239, column: 3, scope: !1905)
!1911 = !DILocation(line: 241, column: 17, scope: !1690)
!1912 = !DILocation(line: 242, column: 1, scope: !1690)
!1913 = !DILocation(line: 242, column: 1, scope: !1914)
!1914 = !DILexicalBlockFile(scope: !1690, file: !852, discriminator: 1)
!1915 = distinct !DISubprogram(name: "g_string_append_c_inline", scope: !419, file: !419, line: 161, type: !1916, isLocal: true, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !886)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{!417, !417, !202}
!1918 = !DILocalVariable(name: "gstring", arg: 1, scope: !1915, file: !419, line: 161, type: !417)
!1919 = !DILocation(line: 161, column: 36, scope: !1915)
!1920 = !DILocalVariable(name: "c", arg: 2, scope: !1915, file: !419, line: 162, type: !202)
!1921 = !DILocation(line: 162, column: 33, scope: !1915)
!1922 = !DILocation(line: 164, column: 7, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1915, file: !419, line: 164, column: 7)
!1924 = !DILocation(line: 164, column: 16, scope: !1923)
!1925 = !DILocation(line: 164, column: 20, scope: !1923)
!1926 = !DILocation(line: 164, column: 26, scope: !1923)
!1927 = !DILocation(line: 164, column: 35, scope: !1923)
!1928 = !DILocation(line: 164, column: 24, scope: !1923)
!1929 = !DILocation(line: 164, column: 7, scope: !1915)
!1930 = !DILocation(line: 166, column: 38, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1923, file: !419, line: 165, column: 5)
!1932 = !DILocation(line: 166, column: 20, scope: !1931)
!1933 = !DILocation(line: 166, column: 29, scope: !1931)
!1934 = !DILocation(line: 166, column: 32, scope: !1931)
!1935 = !DILocation(line: 166, column: 7, scope: !1931)
!1936 = !DILocation(line: 166, column: 16, scope: !1931)
!1937 = !DILocation(line: 166, column: 36, scope: !1931)
!1938 = !DILocation(line: 167, column: 20, scope: !1931)
!1939 = !DILocation(line: 167, column: 29, scope: !1931)
!1940 = !DILocation(line: 167, column: 7, scope: !1931)
!1941 = !DILocation(line: 167, column: 16, scope: !1931)
!1942 = !DILocation(line: 167, column: 34, scope: !1931)
!1943 = !DILocation(line: 168, column: 5, scope: !1931)
!1944 = !DILocation(line: 170, column: 24, scope: !1923)
!1945 = !DILocation(line: 170, column: 37, scope: !1923)
!1946 = !DILocation(line: 170, column: 5, scope: !1923)
!1947 = !DILocation(line: 171, column: 10, scope: !1915)
!1948 = !DILocation(line: 171, column: 3, scope: !1915)
!1949 = distinct !DISubprogram(name: "print_channel_netjoins", scope: !852, file: !852, line: 151, type: !1950, isLocal: true, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !886)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{null, !228, !850, !868}
!1952 = !DILocalVariable(name: "channel", arg: 1, scope: !1949, file: !852, line: 151, type: !228)
!1953 = !DILocation(line: 151, column: 42, scope: !1949)
!1954 = !DILocalVariable(name: "rec", arg: 2, scope: !1949, file: !852, line: 151, type: !850)
!1955 = !DILocation(line: 151, column: 67, scope: !1949)
!1956 = !DILocalVariable(name: "server", arg: 3, scope: !1949, file: !852, line: 152, type: !868)
!1957 = !DILocation(line: 152, column: 28, scope: !1949)
!1958 = !DILocation(line: 154, column: 6, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1949, file: !852, line: 154, column: 6)
!1960 = !DILocation(line: 154, column: 11, scope: !1959)
!1961 = !DILocation(line: 154, column: 18, scope: !1959)
!1962 = !DILocation(line: 154, column: 22, scope: !1959)
!1963 = !DILocation(line: 154, column: 6, scope: !1949)
!1964 = !DILocation(line: 155, column: 21, scope: !1959)
!1965 = !DILocation(line: 155, column: 26, scope: !1959)
!1966 = !DILocation(line: 155, column: 33, scope: !1959)
!1967 = !DILocation(line: 155, column: 38, scope: !1959)
!1968 = !DILocation(line: 155, column: 45, scope: !1959)
!1969 = !DILocation(line: 155, column: 48, scope: !1959)
!1970 = !DILocation(line: 155, column: 3, scope: !1959)
!1971 = !DILocation(line: 157, column: 38, scope: !1949)
!1972 = !DILocation(line: 157, column: 46, scope: !1949)
!1973 = !DILocation(line: 157, column: 54, scope: !1949)
!1974 = !DILocation(line: 157, column: 79, scope: !1949)
!1975 = !DILocation(line: 157, column: 84, scope: !1949)
!1976 = !DILocation(line: 157, column: 92, scope: !1949)
!1977 = !DILocation(line: 157, column: 90, scope: !1949)
!1978 = !DILocation(line: 157, column: 162, scope: !1949)
!1979 = !DILocation(line: 157, column: 167, scope: !1949)
!1980 = !DILocation(line: 157, column: 174, scope: !1949)
!1981 = !DILocation(line: 157, column: 179, scope: !1949)
!1982 = !DILocation(line: 157, column: 184, scope: !1949)
!1983 = !DILocation(line: 157, column: 190, scope: !1949)
!1984 = !DILocation(line: 157, column: 189, scope: !1949)
!1985 = !DILocation(line: 157, column: 2, scope: !1949)
!1986 = !DILocation(line: 162, column: 16, scope: !1949)
!1987 = !DILocation(line: 162, column: 21, scope: !1949)
!1988 = !DILocation(line: 162, column: 2, scope: !1949)
!1989 = !DILocation(line: 163, column: 9, scope: !1949)
!1990 = !DILocation(line: 163, column: 2, scope: !1949)
!1991 = !DILocation(line: 164, column: 9, scope: !1949)
!1992 = !DILocation(line: 164, column: 2, scope: !1949)
!1993 = !DILocation(line: 165, column: 1, scope: !1949)
!1994 = distinct !DISubprogram(name: "netjoin_find", scope: !852, file: !852, line: 108, type: !1995, isLocal: true, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !886)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{!861, !207, !205}
!1997 = !DILocalVariable(name: "server", arg: 1, scope: !1994, file: !852, line: 108, type: !207)
!1998 = !DILocation(line: 108, column: 50, scope: !1994)
!1999 = !DILocalVariable(name: "nick", arg: 2, scope: !1994, file: !852, line: 108, type: !205)
!2000 = !DILocation(line: 108, column: 70, scope: !1994)
!2001 = !DILocalVariable(name: "srec", scope: !1994, file: !852, line: 110, type: !868)
!2002 = !DILocation(line: 110, column: 22, scope: !1994)
!2003 = !DILocalVariable(name: "tmp", scope: !1994, file: !852, line: 111, type: !378)
!2004 = !DILocation(line: 111, column: 10, scope: !1994)
!2005 = !DILocation(line: 113, column: 2, scope: !1994)
!2006 = distinct !{!2006, !2005}
!2007 = !DILocation(line: 113, column: 10, scope: !2008)
!2008 = !DILexicalBlockFile(scope: !2009, file: !852, discriminator: 1)
!2009 = distinct !DILexicalBlock(scope: !2010, file: !852, line: 113, column: 10)
!2010 = distinct !DILexicalBlock(scope: !1994, file: !852, line: 113, column: 4)
!2011 = !DILocation(line: 113, column: 17, scope: !2008)
!2012 = !DILocation(line: 113, column: 5, scope: !2013)
!2013 = !DILexicalBlockFile(scope: !2014, file: !852, discriminator: 2)
!2014 = distinct !DILexicalBlock(scope: !2009, file: !852, line: 113, column: 3)
!2015 = !DILocation(line: 113, column: 14, scope: !2016)
!2016 = !DILexicalBlockFile(scope: !2017, file: !852, discriminator: 3)
!2017 = distinct !DILexicalBlock(scope: !2009, file: !852, line: 113, column: 12)
!2018 = !DILocation(line: 113, column: 101, scope: !2016)
!2019 = !DILocation(line: 113, column: 7, scope: !2020)
!2020 = !DILexicalBlockFile(scope: !2010, file: !852, discriminator: 4)
!2021 = !DILocation(line: 114, column: 2, scope: !1994)
!2022 = distinct !{!2022, !2021}
!2023 = !DILocation(line: 114, column: 10, scope: !2024)
!2024 = !DILexicalBlockFile(scope: !2025, file: !852, discriminator: 1)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !852, line: 114, column: 10)
!2026 = distinct !DILexicalBlock(scope: !1994, file: !852, line: 114, column: 4)
!2027 = !DILocation(line: 114, column: 15, scope: !2024)
!2028 = !DILocation(line: 114, column: 5, scope: !2029)
!2029 = !DILexicalBlockFile(scope: !2030, file: !852, discriminator: 2)
!2030 = distinct !DILexicalBlock(scope: !2025, file: !852, line: 114, column: 3)
!2031 = !DILocation(line: 114, column: 14, scope: !2032)
!2032 = !DILexicalBlockFile(scope: !2033, file: !852, discriminator: 3)
!2033 = distinct !DILexicalBlock(scope: !2025, file: !852, line: 114, column: 12)
!2034 = !DILocation(line: 114, column: 99, scope: !2032)
!2035 = !DILocation(line: 114, column: 7, scope: !2036)
!2036 = !DILexicalBlockFile(scope: !2026, file: !852, discriminator: 4)
!2037 = !DILocation(line: 116, column: 29, scope: !1994)
!2038 = !DILocation(line: 116, column: 9, scope: !1994)
!2039 = !DILocation(line: 116, column: 7, scope: !1994)
!2040 = !DILocation(line: 117, column: 13, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !1994, file: !852, line: 117, column: 13)
!2042 = !DILocation(line: 117, column: 18, scope: !2041)
!2043 = !DILocation(line: 117, column: 13, scope: !1994)
!2044 = !DILocation(line: 117, column: 26, scope: !2045)
!2045 = !DILexicalBlockFile(scope: !2041, file: !852, discriminator: 1)
!2046 = !DILocation(line: 119, column: 13, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !1994, file: !852, line: 119, column: 2)
!2048 = !DILocation(line: 119, column: 19, scope: !2047)
!2049 = !DILocation(line: 119, column: 11, scope: !2047)
!2050 = !DILocation(line: 119, column: 7, scope: !2047)
!2051 = !DILocation(line: 119, column: 29, scope: !2052)
!2052 = !DILexicalBlockFile(scope: !2053, file: !852, discriminator: 1)
!2053 = distinct !DILexicalBlock(scope: !2047, file: !852, line: 119, column: 2)
!2054 = !DILocation(line: 119, column: 33, scope: !2052)
!2055 = !DILocation(line: 119, column: 2, scope: !2052)
!2056 = !DILocalVariable(name: "rec", scope: !2057, file: !852, line: 120, type: !861)
!2057 = distinct !DILexicalBlock(scope: !2053, file: !852, line: 119, column: 58)
!2058 = !DILocation(line: 120, column: 16, scope: !2057)
!2059 = !DILocation(line: 120, column: 22, scope: !2057)
!2060 = !DILocation(line: 120, column: 27, scope: !2057)
!2061 = !DILocation(line: 122, column: 26, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2057, file: !852, line: 122, column: 7)
!2063 = !DILocation(line: 122, column: 31, scope: !2062)
!2064 = !DILocation(line: 122, column: 37, scope: !2062)
!2065 = !DILocation(line: 122, column: 7, scope: !2062)
!2066 = !DILocation(line: 122, column: 43, scope: !2062)
!2067 = !DILocation(line: 122, column: 7, scope: !2057)
!2068 = !DILocation(line: 123, column: 11, scope: !2062)
!2069 = !DILocation(line: 123, column: 4, scope: !2062)
!2070 = !DILocation(line: 124, column: 2, scope: !2057)
!2071 = !DILocation(line: 119, column: 47, scope: !2072)
!2072 = !DILexicalBlockFile(scope: !2053, file: !852, discriminator: 2)
!2073 = !DILocation(line: 119, column: 52, scope: !2072)
!2074 = !DILocation(line: 119, column: 45, scope: !2072)
!2075 = !DILocation(line: 119, column: 2, scope: !2072)
!2076 = distinct !{!2076, !2077}
!2077 = !DILocation(line: 119, column: 2, scope: !1994)
!2078 = !DILocation(line: 126, column: 2, scope: !1994)
!2079 = !DILocation(line: 127, column: 1, scope: !1994)
!2080 = distinct !DISubprogram(name: "sig_check_netjoins", scope: !852, file: !852, line: 269, type: !2081, isLocal: true, isDefinition: true, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !886)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!215}
!2083 = !DILocalVariable(name: "tmp", scope: !2080, file: !852, line: 271, type: !378)
!2084 = !DILocation(line: 271, column: 10, scope: !2080)
!2085 = !DILocalVariable(name: "next", scope: !2080, file: !852, line: 271, type: !378)
!2086 = !DILocation(line: 271, column: 16, scope: !2080)
!2087 = !DILocalVariable(name: "diff", scope: !2080, file: !852, line: 272, type: !215)
!2088 = !DILocation(line: 272, column: 6, scope: !2080)
!2089 = !DILocalVariable(name: "now", scope: !2080, file: !852, line: 273, type: !462)
!2090 = !DILocation(line: 273, column: 9, scope: !2080)
!2091 = !DILocation(line: 275, column: 8, scope: !2080)
!2092 = !DILocation(line: 275, column: 6, scope: !2080)
!2093 = !DILocation(line: 279, column: 13, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2080, file: !852, line: 279, column: 2)
!2095 = !DILocation(line: 279, column: 11, scope: !2094)
!2096 = !DILocation(line: 279, column: 7, scope: !2094)
!2097 = !DILocation(line: 279, column: 26, scope: !2098)
!2098 = !DILexicalBlockFile(scope: !2099, file: !852, discriminator: 1)
!2099 = distinct !DILexicalBlock(scope: !2094, file: !852, line: 279, column: 2)
!2100 = !DILocation(line: 279, column: 30, scope: !2098)
!2101 = !DILocation(line: 279, column: 2, scope: !2098)
!2102 = !DILocalVariable(name: "server", scope: !2103, file: !852, line: 280, type: !868)
!2103 = distinct !DILexicalBlock(scope: !2099, file: !852, line: 279, column: 50)
!2104 = !DILocation(line: 280, column: 23, scope: !2103)
!2105 = !DILocation(line: 280, column: 32, scope: !2103)
!2106 = !DILocation(line: 280, column: 37, scope: !2103)
!2107 = !DILocation(line: 282, column: 10, scope: !2103)
!2108 = !DILocation(line: 282, column: 15, scope: !2103)
!2109 = !DILocation(line: 282, column: 8, scope: !2103)
!2110 = !DILocation(line: 283, column: 10, scope: !2103)
!2111 = !DILocation(line: 283, column: 14, scope: !2103)
!2112 = !DILocation(line: 283, column: 22, scope: !2103)
!2113 = !DILocation(line: 283, column: 13, scope: !2103)
!2114 = !DILocation(line: 283, column: 8, scope: !2103)
!2115 = !DILocation(line: 284, column: 7, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2103, file: !852, line: 284, column: 7)
!2117 = !DILocation(line: 284, column: 12, scope: !2116)
!2118 = !DILocation(line: 284, column: 7, scope: !2103)
!2119 = !DILocation(line: 286, column: 4, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2116, file: !852, line: 284, column: 18)
!2121 = !DILocation(line: 289, column: 21, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2103, file: !852, line: 289, column: 21)
!2123 = !DILocation(line: 289, column: 29, scope: !2122)
!2124 = !DILocation(line: 289, column: 38, scope: !2122)
!2125 = !DILocation(line: 289, column: 21, scope: !2103)
!2126 = !DILocation(line: 290, column: 19, scope: !2122)
!2127 = !DILocation(line: 290, column: 4, scope: !2122)
!2128 = !DILocation(line: 291, column: 2, scope: !2103)
!2129 = !DILocation(line: 279, column: 44, scope: !2130)
!2130 = !DILexicalBlockFile(scope: !2099, file: !852, discriminator: 2)
!2131 = !DILocation(line: 279, column: 42, scope: !2130)
!2132 = !DILocation(line: 279, column: 2, scope: !2130)
!2133 = distinct !{!2133, !2134}
!2134 = !DILocation(line: 279, column: 2, scope: !2080)
!2135 = !DILocation(line: 296, column: 13, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2080, file: !852, line: 296, column: 2)
!2137 = !DILocation(line: 296, column: 11, scope: !2136)
!2138 = !DILocation(line: 296, column: 7, scope: !2136)
!2139 = !DILocation(line: 296, column: 26, scope: !2140)
!2140 = !DILexicalBlockFile(scope: !2141, file: !852, discriminator: 1)
!2141 = distinct !DILexicalBlock(scope: !2136, file: !852, line: 296, column: 2)
!2142 = !DILocation(line: 296, column: 30, scope: !2140)
!2143 = !DILocation(line: 296, column: 2, scope: !2140)
!2144 = !DILocalVariable(name: "server", scope: !2145, file: !852, line: 297, type: !868)
!2145 = distinct !DILexicalBlock(scope: !2141, file: !852, line: 296, column: 50)
!2146 = !DILocation(line: 297, column: 23, scope: !2145)
!2147 = !DILocation(line: 297, column: 32, scope: !2145)
!2148 = !DILocation(line: 297, column: 37, scope: !2145)
!2149 = !DILocation(line: 299, column: 10, scope: !2145)
!2150 = !DILocation(line: 299, column: 15, scope: !2145)
!2151 = !DILocation(line: 299, column: 8, scope: !2145)
!2152 = !DILocation(line: 300, column: 10, scope: !2145)
!2153 = !DILocation(line: 300, column: 14, scope: !2145)
!2154 = !DILocation(line: 300, column: 22, scope: !2145)
!2155 = !DILocation(line: 300, column: 13, scope: !2145)
!2156 = !DILocation(line: 300, column: 8, scope: !2145)
!2157 = !DILocation(line: 301, column: 7, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2145, file: !852, line: 301, column: 7)
!2159 = !DILocation(line: 301, column: 12, scope: !2158)
!2160 = !DILocation(line: 301, column: 7, scope: !2145)
!2161 = !DILocation(line: 303, column: 47, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2158, file: !852, line: 301, column: 19)
!2163 = !DILocation(line: 303, column: 25, scope: !2162)
!2164 = !DILocation(line: 304, column: 3, scope: !2162)
!2165 = !DILocation(line: 305, column: 2, scope: !2145)
!2166 = !DILocation(line: 296, column: 44, scope: !2167)
!2167 = !DILexicalBlockFile(scope: !2141, file: !852, discriminator: 2)
!2168 = !DILocation(line: 296, column: 42, scope: !2167)
!2169 = !DILocation(line: 296, column: 2, scope: !2167)
!2170 = distinct !{!2170, !2171}
!2171 = !DILocation(line: 296, column: 2, scope: !2080)
!2172 = !DILocation(line: 307, column: 6, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2080, file: !852, line: 307, column: 6)
!2174 = !DILocation(line: 307, column: 18, scope: !2173)
!2175 = !DILocation(line: 307, column: 6, scope: !2080)
!2176 = !DILocation(line: 308, column: 19, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2173, file: !852, line: 307, column: 26)
!2178 = !DILocation(line: 308, column: 3, scope: !2177)
!2179 = !DILocation(line: 309, column: 3, scope: !2177)
!2180 = !DILocation(line: 310, column: 26, scope: !2177)
!2181 = !DILocation(line: 311, column: 2, scope: !2177)
!2182 = !DILocation(line: 312, column: 2, scope: !2080)
!2183 = distinct !DISubprogram(name: "netjoin_add", scope: !852, file: !852, line: 77, type: !2184, isLocal: true, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !886)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{!861, !207, !205, !378}
!2186 = !DILocalVariable(name: "server", arg: 1, scope: !2183, file: !852, line: 77, type: !207)
!2187 = !DILocation(line: 77, column: 49, scope: !2183)
!2188 = !DILocalVariable(name: "nick", arg: 2, scope: !2183, file: !852, line: 77, type: !205)
!2189 = !DILocation(line: 77, column: 69, scope: !2183)
!2190 = !DILocalVariable(name: "channels", arg: 3, scope: !2183, file: !852, line: 78, type: !378)
!2191 = !DILocation(line: 78, column: 13, scope: !2183)
!2192 = !DILocalVariable(name: "rec", scope: !2183, file: !852, line: 80, type: !861)
!2193 = !DILocation(line: 80, column: 15, scope: !2183)
!2194 = !DILocalVariable(name: "srec", scope: !2183, file: !852, line: 81, type: !868)
!2195 = !DILocation(line: 81, column: 22, scope: !2183)
!2196 = !DILocation(line: 83, column: 2, scope: !2183)
!2197 = distinct !{!2197, !2196}
!2198 = !DILocation(line: 83, column: 10, scope: !2199)
!2199 = !DILexicalBlockFile(scope: !2200, file: !852, discriminator: 1)
!2200 = distinct !DILexicalBlock(scope: !2201, file: !852, line: 83, column: 10)
!2201 = distinct !DILexicalBlock(scope: !2183, file: !852, line: 83, column: 4)
!2202 = !DILocation(line: 83, column: 17, scope: !2199)
!2203 = !DILocation(line: 83, column: 5, scope: !2204)
!2204 = !DILexicalBlockFile(scope: !2205, file: !852, discriminator: 2)
!2205 = distinct !DILexicalBlock(scope: !2200, file: !852, line: 83, column: 3)
!2206 = !DILocation(line: 83, column: 14, scope: !2207)
!2207 = !DILexicalBlockFile(scope: !2208, file: !852, discriminator: 3)
!2208 = distinct !DILexicalBlock(scope: !2200, file: !852, line: 83, column: 12)
!2209 = !DILocation(line: 83, column: 101, scope: !2207)
!2210 = !DILocation(line: 83, column: 7, scope: !2211)
!2211 = !DILexicalBlockFile(scope: !2201, file: !852, discriminator: 4)
!2212 = !DILocation(line: 84, column: 2, scope: !2183)
!2213 = distinct !{!2213, !2212}
!2214 = !DILocation(line: 84, column: 10, scope: !2215)
!2215 = !DILexicalBlockFile(scope: !2216, file: !852, discriminator: 1)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !852, line: 84, column: 10)
!2217 = distinct !DILexicalBlock(scope: !2183, file: !852, line: 84, column: 4)
!2218 = !DILocation(line: 84, column: 15, scope: !2215)
!2219 = !DILocation(line: 84, column: 5, scope: !2220)
!2220 = !DILexicalBlockFile(scope: !2221, file: !852, discriminator: 2)
!2221 = distinct !DILexicalBlock(scope: !2216, file: !852, line: 84, column: 3)
!2222 = !DILocation(line: 84, column: 14, scope: !2223)
!2223 = !DILexicalBlockFile(scope: !2224, file: !852, discriminator: 3)
!2224 = distinct !DILexicalBlock(scope: !2216, file: !852, line: 84, column: 12)
!2225 = !DILocation(line: 84, column: 99, scope: !2223)
!2226 = !DILocation(line: 84, column: 7, scope: !2227)
!2227 = !DILexicalBlockFile(scope: !2217, file: !852, discriminator: 4)
!2228 = !DILocation(line: 86, column: 25, scope: !2183)
!2229 = !DILocation(line: 86, column: 9, scope: !2183)
!2230 = !DILocation(line: 86, column: 6, scope: !2183)
!2231 = !DILocation(line: 87, column: 23, scope: !2183)
!2232 = !DILocation(line: 87, column: 14, scope: !2183)
!2233 = !DILocation(line: 87, column: 2, scope: !2183)
!2234 = !DILocation(line: 87, column: 7, scope: !2183)
!2235 = !DILocation(line: 87, column: 12, scope: !2183)
!2236 = !DILocation(line: 88, column: 2, scope: !2183)
!2237 = !DILocation(line: 88, column: 9, scope: !2238)
!2238 = !DILexicalBlockFile(scope: !2183, file: !852, discriminator: 1)
!2239 = !DILocation(line: 88, column: 18, scope: !2238)
!2240 = !DILocation(line: 88, column: 2, scope: !2238)
!2241 = !DILocalVariable(name: "channel", scope: !2242, file: !852, line: 89, type: !1292)
!2242 = distinct !DILexicalBlock(scope: !2183, file: !852, line: 88, column: 26)
!2243 = !DILocation(line: 89, column: 22, scope: !2242)
!2244 = !DILocation(line: 89, column: 32, scope: !2242)
!2245 = !DILocation(line: 89, column: 42, scope: !2242)
!2246 = !DILocation(line: 91, column: 38, scope: !2242)
!2247 = !DILocation(line: 91, column: 43, scope: !2242)
!2248 = !DILocation(line: 92, column: 19, scope: !2242)
!2249 = !DILocation(line: 92, column: 28, scope: !2242)
!2250 = !DILocation(line: 92, column: 10, scope: !2242)
!2251 = !DILocation(line: 91, column: 23, scope: !2242)
!2252 = !DILocation(line: 91, column: 3, scope: !2242)
!2253 = !DILocation(line: 91, column: 8, scope: !2242)
!2254 = !DILocation(line: 91, column: 21, scope: !2242)
!2255 = !DILocation(line: 93, column: 14, scope: !2242)
!2256 = !DILocation(line: 93, column: 24, scope: !2242)
!2257 = !DILocation(line: 93, column: 12, scope: !2242)
!2258 = !DILocation(line: 88, column: 2, scope: !2259)
!2259 = !DILexicalBlockFile(scope: !2183, file: !852, discriminator: 2)
!2260 = distinct !{!2260, !2236}
!2261 = !DILocation(line: 96, column: 29, scope: !2183)
!2262 = !DILocation(line: 96, column: 9, scope: !2183)
!2263 = !DILocation(line: 96, column: 7, scope: !2183)
!2264 = !DILocation(line: 97, column: 6, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2183, file: !852, line: 97, column: 6)
!2266 = !DILocation(line: 97, column: 11, scope: !2265)
!2267 = !DILocation(line: 97, column: 6, scope: !2183)
!2268 = !DILocation(line: 98, column: 34, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2265, file: !852, line: 97, column: 19)
!2270 = !DILocation(line: 98, column: 11, scope: !2269)
!2271 = !DILocation(line: 98, column: 8, scope: !2269)
!2272 = !DILocation(line: 99, column: 18, scope: !2269)
!2273 = !DILocation(line: 99, column: 3, scope: !2269)
!2274 = !DILocation(line: 99, column: 9, scope: !2269)
!2275 = !DILocation(line: 99, column: 16, scope: !2269)
!2276 = !DILocation(line: 100, column: 46, scope: !2269)
!2277 = !DILocation(line: 100, column: 59, scope: !2269)
!2278 = !DILocation(line: 100, column: 31, scope: !2269)
!2279 = !DILocation(line: 100, column: 29, scope: !2269)
!2280 = !DILocation(line: 101, column: 2, scope: !2269)
!2281 = !DILocation(line: 103, column: 23, scope: !2183)
!2282 = !DILocation(line: 103, column: 2, scope: !2183)
!2283 = !DILocation(line: 103, column: 8, scope: !2183)
!2284 = !DILocation(line: 103, column: 21, scope: !2183)
!2285 = !DILocation(line: 104, column: 34, scope: !2183)
!2286 = !DILocation(line: 104, column: 40, scope: !2183)
!2287 = !DILocation(line: 104, column: 50, scope: !2183)
!2288 = !DILocation(line: 104, column: 19, scope: !2183)
!2289 = !DILocation(line: 104, column: 2, scope: !2183)
!2290 = !DILocation(line: 104, column: 8, scope: !2183)
!2291 = !DILocation(line: 104, column: 17, scope: !2183)
!2292 = !DILocation(line: 105, column: 9, scope: !2183)
!2293 = !DILocation(line: 105, column: 2, scope: !2183)
!2294 = !DILocation(line: 106, column: 1, scope: !2183)
!2295 = distinct !DISubprogram(name: "netjoin_set_nickmode", scope: !852, file: !852, line: 378, type: !2296, isLocal: true, isDefinition: true, scopeLine: 380, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !886)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{!215, !207, !861, !205, !204}
!2298 = !DILocalVariable(name: "server", arg: 1, scope: !2295, file: !852, line: 378, type: !207)
!2299 = !DILocation(line: 378, column: 49, scope: !2295)
!2300 = !DILocalVariable(name: "rec", arg: 2, scope: !2295, file: !852, line: 378, type: !861)
!2301 = !DILocation(line: 378, column: 70, scope: !2295)
!2302 = !DILocalVariable(name: "channel", arg: 3, scope: !2295, file: !852, line: 379, type: !205)
!2303 = !DILocation(line: 379, column: 17, scope: !2295)
!2304 = !DILocalVariable(name: "prefix", arg: 4, scope: !2295, file: !852, line: 379, type: !204)
!2305 = !DILocation(line: 379, column: 31, scope: !2295)
!2306 = !DILocalVariable(name: "pos", scope: !2295, file: !852, line: 381, type: !378)
!2307 = !DILocation(line: 381, column: 10, scope: !2295)
!2308 = !DILocalVariable(name: "flags", scope: !2295, file: !852, line: 382, type: !205)
!2309 = !DILocation(line: 382, column: 14, scope: !2295)
!2310 = !DILocalVariable(name: "found_chan", scope: !2295, file: !852, line: 383, type: !228)
!2311 = !DILocation(line: 383, column: 8, scope: !2295)
!2312 = !DILocation(line: 385, column: 13, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2295, file: !852, line: 385, column: 2)
!2314 = !DILocation(line: 385, column: 18, scope: !2313)
!2315 = !DILocation(line: 385, column: 11, scope: !2313)
!2316 = !DILocation(line: 385, column: 7, scope: !2313)
!2317 = !DILocation(line: 385, column: 32, scope: !2318)
!2318 = !DILexicalBlockFile(scope: !2319, file: !852, discriminator: 1)
!2319 = distinct !DILexicalBlock(scope: !2313, file: !852, line: 385, column: 2)
!2320 = !DILocation(line: 385, column: 36, scope: !2318)
!2321 = !DILocation(line: 385, column: 2, scope: !2318)
!2322 = !DILocalVariable(name: "chan", scope: !2323, file: !852, line: 386, type: !228)
!2323 = distinct !DILexicalBlock(scope: !2319, file: !852, line: 385, column: 61)
!2324 = !DILocation(line: 386, column: 9, scope: !2323)
!2325 = !DILocation(line: 386, column: 16, scope: !2323)
!2326 = !DILocation(line: 386, column: 21, scope: !2323)
!2327 = !DILocation(line: 387, column: 18, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2323, file: !852, line: 387, column: 7)
!2329 = !DILocation(line: 387, column: 22, scope: !2328)
!2330 = !DILocation(line: 387, column: 26, scope: !2328)
!2331 = !DILocation(line: 387, column: 7, scope: !2328)
!2332 = !DILocation(line: 387, column: 35, scope: !2328)
!2333 = !DILocation(line: 387, column: 7, scope: !2323)
!2334 = !DILocation(line: 388, column: 17, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2328, file: !852, line: 387, column: 41)
!2336 = !DILocation(line: 388, column: 15, scope: !2335)
!2337 = !DILocation(line: 389, column: 4, scope: !2335)
!2338 = !DILocation(line: 391, column: 2, scope: !2323)
!2339 = !DILocation(line: 385, column: 50, scope: !2340)
!2340 = !DILexicalBlockFile(scope: !2319, file: !852, discriminator: 2)
!2341 = !DILocation(line: 385, column: 55, scope: !2340)
!2342 = !DILocation(line: 385, column: 48, scope: !2340)
!2343 = !DILocation(line: 385, column: 2, scope: !2340)
!2344 = distinct !{!2344, !2345}
!2345 = !DILocation(line: 385, column: 2, scope: !2295)
!2346 = !DILocation(line: 393, column: 6, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2295, file: !852, line: 393, column: 6)
!2348 = !DILocation(line: 393, column: 17, scope: !2347)
!2349 = !DILocation(line: 393, column: 6, scope: !2295)
!2350 = !DILocation(line: 394, column: 3, scope: !2347)
!2351 = !DILocation(line: 396, column: 10, scope: !2295)
!2352 = !DILocation(line: 396, column: 18, scope: !2295)
!2353 = !DILocation(line: 396, column: 67, scope: !2295)
!2354 = !DILocation(line: 396, column: 49, scope: !2295)
!2355 = !DILocation(line: 396, column: 34, scope: !2295)
!2356 = !DILocation(line: 396, column: 10, scope: !2357)
!2357 = !DILexicalBlockFile(scope: !2295, file: !852, discriminator: 1)
!2358 = !DILocation(line: 396, column: 8, scope: !2295)
!2359 = !DILocation(line: 397, column: 2, scope: !2295)
!2360 = !DILocation(line: 397, column: 10, scope: !2357)
!2361 = !DILocation(line: 397, column: 9, scope: !2357)
!2362 = !DILocation(line: 397, column: 16, scope: !2357)
!2363 = !DILocation(line: 397, column: 2, scope: !2357)
!2364 = !DILocation(line: 398, column: 7, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2366, file: !852, line: 398, column: 7)
!2366 = distinct !DILexicalBlock(scope: !2295, file: !852, line: 397, column: 25)
!2367 = !DILocation(line: 398, column: 25, scope: !2365)
!2368 = !DILocation(line: 398, column: 24, scope: !2365)
!2369 = !DILocation(line: 398, column: 21, scope: !2365)
!2370 = !DILocation(line: 398, column: 7, scope: !2366)
!2371 = !DILocation(line: 399, column: 4, scope: !2365)
!2372 = !DILocation(line: 400, column: 7, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2366, file: !852, line: 400, column: 7)
!2374 = !DILocation(line: 400, column: 18, scope: !2373)
!2375 = !DILocation(line: 400, column: 17, scope: !2373)
!2376 = !DILocation(line: 400, column: 14, scope: !2373)
!2377 = !DILocation(line: 400, column: 7, scope: !2366)
!2378 = !DILocation(line: 401, column: 20, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2373, file: !852, line: 400, column: 25)
!2380 = !DILocation(line: 401, column: 4, scope: !2379)
!2381 = !DILocation(line: 401, column: 18, scope: !2379)
!2382 = !DILocation(line: 402, column: 4, scope: !2379)
!2383 = !DILocation(line: 404, column: 8, scope: !2366)
!2384 = !DILocation(line: 397, column: 2, scope: !2385)
!2385 = !DILexicalBlockFile(scope: !2295, file: !852, discriminator: 2)
!2386 = distinct !{!2386, !2359}
!2387 = !DILocation(line: 406, column: 2, scope: !2295)
!2388 = !DILocation(line: 407, column: 1, scope: !2295)
