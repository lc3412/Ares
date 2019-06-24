; ModuleID = './line164-dcc.o.i'
source_filename = "./line164-dcc.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GSList = type { i8*, %struct._GSList* }
%struct._IPADDR = type { i16, %struct.in6_addr }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.DCC_REC = type { i32, i32, i64, %struct._IRC_SERVER_REC*, i8*, i8*, i8*, %struct.CHAT_DCC_REC*, i8*, i8*, %struct._IPADDR, [46 x i8], i32, %struct._GIOChannel*, i32, i32, i32, i64, i64, i32, i8, %struct._GHashTable* }
%struct._GIOChannel = type { i32, %struct._GIOFuncs*, i8*, %struct._GIConv*, %struct._GIConv*, i8*, i32, i64, %struct._GString*, %struct._GString*, %struct._GString*, [6 x i8], i8, i8*, i8* }
%struct._GIOFuncs = type { i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i64, i32, %struct._GError**)*, i32 (%struct._GIOChannel*, %struct._GError**)*, %struct._GSource* (%struct._GIOChannel*, i32)*, void (%struct._GIOChannel*)*, i32 (%struct._GIOChannel*, i32, %struct._GError**)*, i32 (%struct._GIOChannel*)* }
%struct._GError = type { i32, i32, i8* }
%struct._GSource = type { i8*, %struct._GSourceCallbackFuncs*, %struct._GSourceFuncs*, i32, %struct._GMainContext*, i32, i32, i32, %struct._GSList*, %struct._GSource*, %struct._GSource*, i8*, %struct._GSourcePrivate* }
%struct._GSourceCallbackFuncs = type { void (i8*)*, void (i8*)*, void (i8*, %struct._GSource*, i32 (i8*)**, i8**)* }
%struct._GSourceFuncs = type { i32 (%struct._GSource*, i32*)*, i32 (%struct._GSource*)*, i32 (%struct._GSource*, i32 (i8*)*, i8*)*, void (%struct._GSource*)*, i32 (i8*)*, void ()* }
%struct._GMainContext = type opaque
%struct._GSourcePrivate = type opaque
%struct._GIConv = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._GHashTable = type opaque
%struct._IRC_SERVER_REC = type { i32, i32, i32, %struct._IRC_SERVER_CONNECT_REC*, i64, i64, i8*, i8*, i8, %struct._NET_SENDBUF_REC*, i32, [2 x %struct._GIOChannel*], i32, i32, %struct._RAWLOG_REC*, %struct._GHashTable*, i8*, i8*, i8*, i8, %struct._GTimeVal, i64, i32, %struct._GSList*, %struct._GSList*, void (%struct._SERVER_REC*, i8*, i32)*, i32 (%struct._SERVER_REC*, i8)*, i32 (%struct._SERVER_REC*, i8*)*, i8* (%struct._SERVER_REC*)*, void (%struct._SERVER_REC*, i8*, i8*, i32)*, i8** (%struct._SERVER_REC*, i8*, i8*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)*, %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)*, %struct._GSList*, %struct._GSList*, %struct._REDIRECT_REC*, %struct._GSList*, i8*, i8*, i8*, i8*, i8*, i32, i16, i32, i32, i32, i32, %struct._GHashTable*, %struct._GSList*, %struct._GSList*, %struct._GString*, i32, i32, %struct._GSList*, %struct._GTimeVal, %struct._GTimeVal, i32, i32, i32, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GHashTable*, %struct._GSList*, %struct._GSList*, i8*, %struct._GHashTable*, [256 x %struct.modes_type], [256 x i8], i32 (i8*, i8*)* }
%struct._IRC_SERVER_CONNECT_REC = type { i32, i32, i32, i8*, i32, i8*, i8*, i8*, i16, i8*, i8*, i32, i8*, %struct._IPADDR*, %struct._IPADDR*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._GIOChannel*, i8, i8*, i8*, i8*, i8*, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct._NET_SENDBUF_REC = type opaque
%struct._RAWLOG_REC = type opaque
%struct._SERVER_REC = type { i32, i32, i32, %struct._SERVER_CONNECT_REC*, i64, i64, i8*, i8*, i8, %struct._NET_SENDBUF_REC*, i32, [2 x %struct._GIOChannel*], i32, i32, %struct._RAWLOG_REC*, %struct._GHashTable*, i8*, i8*, i8*, i8, %struct._GTimeVal, i64, i32, %struct._GSList*, %struct._GSList*, {}*, i32 (%struct._SERVER_REC*, i8)*, i32 (%struct._SERVER_REC*, i8*)*, i8* (%struct._SERVER_REC*)*, void (%struct._SERVER_REC*, i8*, i8*, i32)*, i8** (%struct._SERVER_REC*, i8*, i8*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)*, %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)* }
%struct._SERVER_CONNECT_REC = type { i32, i32, i32, i8*, i32, i8*, i8*, i8*, i16, i8*, i8*, i32, i8*, %struct._IPADDR*, %struct._IPADDR*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._GIOChannel*, i8, i8*, i8* }
%struct._CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)* }
%struct._WI_ITEM_REC = type opaque
%struct._NICK_REC = type { i32, i32, i64, i8*, i8*, i8*, i32, i8, [8 x i8], i8*, %struct._NICK_REC* }
%struct._QUERY_REC = type opaque
%struct._REDIRECT_REC = type opaque
%struct._GTimeVal = type { i64, i64 }
%struct.modes_type = type { void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, i8 }
%struct._IRC_CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._IRC_SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)*, %struct._GSList*, i64, i32, i32 }
%struct.CHAT_DCC_REC = type { i32, i32, i64, %struct._IRC_SERVER_REC*, i8*, i8*, i8*, %struct.CHAT_DCC_REC*, i8*, i8*, %struct._IPADDR, [46 x i8], i32, %struct._GIOChannel*, i32, i32, i32, i64, i64, i32, i8, %struct._GHashTable*, i8*, %struct._NET_SENDBUF_REC*, i8 }
%struct.MODULE_FILE_REC = type { %struct._MODULE_REC*, i8*, i8*, void ()*, %struct._GModule*, i8 }
%struct._MODULE_REC = type { i8*, %struct._GSList* }
%struct._GModule = type opaque
%struct.SERVER_DCC_REC = type { i32, i32, i64, %struct._IRC_SERVER_REC*, i8*, i8*, i8*, %struct.CHAT_DCC_REC*, i8*, i8*, %struct._IPADDR, [46 x i8], i32, %struct._GIOChannel*, i32, i32, i32, i64, i64, i32, i8, %struct._GHashTable*, %struct._NET_SENDBUF_REC*, i8 }

@dcc_types = internal global %struct._GSList* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"DCC\00", align 1
@__func__.dcc_init_rec = private unnamed_addr constant [13 x i8] c"dcc_init_rec\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"dcc != NULL\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"nick != NULL\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"arg != NULL\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@dcc_conns = common global %struct._GSList* null, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"dcc created\00", align 1
@__func__.dcc_destroy = private unnamed_addr constant [12 x i8] c"dcc_destroy\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"dcc destroyed\00", align 1
@__func__.dcc_find_request = private unnamed_addr constant [17 x i8] c"dcc_find_request\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"dcc_own_ip\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@ip4_any = external global %struct._IPADDR, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"dcc_port\00", align 1
@source_host_ip6 = external global %struct._IPADDR*, align 8
@source_host_ip4 = external global %struct._IPADDR*, align 8
@.str.10 = private unnamed_addr constant [11 x i8] c"dcc closed\00", align 1
@__func__.dcc_reject = private unnamed_addr constant [11 x i8] c"dcc_reject\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"dcc rejected\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"NOTICE %s :\01DCC REJECT %s %s\01\00", align 1
@dcc_timeouttag = internal global i32 0, align 4
@.str.13 = private unnamed_addr constant [8 x i8] c"irc/dcc\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"dcc\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"dcc_timeout\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"5min\00", align 1
@.str.18 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"event connected\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"server disconnected\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"server nick changed\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"ctcp msg\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"ctcp reply\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"ctcp msg dcc\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"ctcp reply dcc\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"ctcp reply dcc reject\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"event 401\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"dcc close\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"irc\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@__func__.sig_connected = private unnamed_addr constant [14 x i8] c"sig_connected\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"server != NULL\00", align 1
@__func__.sig_server_disconnected = private unnamed_addr constant [24 x i8] c"sig_server_disconnected\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"IRC\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"dcc \00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"ctcp msg dcc \00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"default ctcp msg dcc\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"ctcp reply dcc \00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"default ctcp reply dcc\00", align 1
@__func__.event_no_such_nick = private unnamed_addr constant [19 x i8] c"event_no_such_nick\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@__func__.cmd_dcc_close = private unnamed_addr constant [14 x i8] c"cmd_dcc_close\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"error command\00", align 1
@.str.40 = private unnamed_addr constant [23 x i8] c"dcc error unknown type\00", align 1
@.str.41 = private unnamed_addr constant [26 x i8] c"dcc error close not found\00", align 1

; Function Attrs: nounwind uwtable
define void @dcc_register_type(i8*) #0 !dbg !820 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !824, metadata !825), !dbg !826
  %3 = load %struct._GSList*, %struct._GSList** @dcc_types, align 8, !dbg !827
  %4 = load i8*, i8** %2, align 8, !dbg !828
  %5 = call noalias i8* @g_strdup(i8* %4), !dbg !829
  %6 = call %struct._GSList* @g_slist_append(%struct._GSList* %3, i8* %5), !dbg !830
  store %struct._GSList* %6, %struct._GSList** @dcc_types, align 8, !dbg !832
  ret void, !dbg !833
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #2

declare noalias i8* @g_strdup(i8*) #2

; Function Attrs: nounwind uwtable
define void @dcc_unregister_type(i8*) #0 !dbg !834 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !835, metadata !825), !dbg !836
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !837, metadata !825), !dbg !838
  %5 = load %struct._GSList*, %struct._GSList** @dcc_types, align 8, !dbg !839
  %6 = load i8*, i8** %2, align 8, !dbg !840
  %7 = call %struct._GSList* @gslist_find_string(%struct._GSList* %5, i8* %6), !dbg !841
  store %struct._GSList* %7, %struct._GSList** %3, align 8, !dbg !842
  %8 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !843
  %9 = icmp ne %struct._GSList* %8, null, !dbg !845
  br i1 %9, label %10, label %20, !dbg !846

; <label>:10:                                     ; preds = %1
  call void @llvm.dbg.declare(metadata i8** %4, metadata !847, metadata !825), !dbg !849
  %11 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !850
  %12 = getelementptr inbounds %struct._GSList, %struct._GSList* %11, i32 0, i32 0, !dbg !851
  %13 = load i8*, i8** %12, align 8, !dbg !851
  store i8* %13, i8** %4, align 8, !dbg !849
  %14 = load %struct._GSList*, %struct._GSList** @dcc_types, align 8, !dbg !852
  %15 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !853
  %16 = getelementptr inbounds %struct._GSList, %struct._GSList* %15, i32 0, i32 0, !dbg !854
  %17 = load i8*, i8** %16, align 8, !dbg !854
  %18 = call %struct._GSList* @g_slist_remove(%struct._GSList* %14, i8* %17), !dbg !855
  store %struct._GSList* %18, %struct._GSList** @dcc_types, align 8, !dbg !856
  %19 = load i8*, i8** %4, align 8, !dbg !857
  call void @g_free(i8* %19), !dbg !858
  br label %20, !dbg !859

; <label>:20:                                     ; preds = %10, %1
  ret void, !dbg !860
}

declare %struct._GSList* @gslist_find_string(%struct._GSList*, i8*) #2

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #2

declare void @g_free(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @dcc_str2type(i8*) #0 !dbg !861 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !864, metadata !825), !dbg !865
  %4 = load %struct._GSList*, %struct._GSList** @dcc_types, align 8, !dbg !866
  %5 = load i8*, i8** %3, align 8, !dbg !868
  %6 = call %struct._GSList* @gslist_find_string(%struct._GSList* %4, i8* %5), !dbg !869
  %7 = icmp eq %struct._GSList* %6, null, !dbg !870
  br i1 %7, label %8, label %9, !dbg !871

; <label>:8:                                      ; preds = %1
  store i32 -1, i32* %2, align 4, !dbg !872
  br label %12, !dbg !872

; <label>:9:                                      ; preds = %1
  %10 = load i8*, i8** %3, align 8, !dbg !873
  %11 = call i32 @module_get_uniq_id_str(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %10), !dbg !874
  store i32 %11, i32* %2, align 4, !dbg !875
  br label %12, !dbg !875

; <label>:12:                                     ; preds = %9, %8
  %13 = load i32, i32* %2, align 4, !dbg !876
  ret i32 %13, !dbg !876
}

declare i32 @module_get_uniq_id_str(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @dcc_init_rec(%struct.DCC_REC*, %struct._IRC_SERVER_REC*, %struct.CHAT_DCC_REC*, i8*, i8*) #0 !dbg !877 {
  %6 = alloca %struct.DCC_REC*, align 8
  %7 = alloca %struct._IRC_SERVER_REC*, align 8
  %8 = alloca %struct.CHAT_DCC_REC*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.DCC_REC* %0, %struct.DCC_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.DCC_REC** %6, metadata !906, metadata !825), !dbg !907
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %7, metadata !908, metadata !825), !dbg !909
  store %struct.CHAT_DCC_REC* %2, %struct.CHAT_DCC_REC** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %8, metadata !910, metadata !825), !dbg !911
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !912, metadata !825), !dbg !913
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !914, metadata !825), !dbg !915
  br label %11, !dbg !916, !llvm.loop !917

; <label>:11:                                     ; preds = %5
  %12 = load %struct.DCC_REC*, %struct.DCC_REC** %6, align 8, !dbg !918
  %13 = icmp ne %struct.DCC_REC* %12, null, !dbg !922
  br i1 %13, label %14, label %15, !dbg !918

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !923

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.dcc_init_rec, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0)), !dbg !926
  br label %109, !dbg !929

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !930

; <label>:17:                                     ; preds = %16
  br label %18, !dbg !932, !llvm.loop !933

; <label>:18:                                     ; preds = %17
  %19 = load i8*, i8** %9, align 8, !dbg !934
  %20 = icmp ne i8* %19, null, !dbg !938
  br i1 %20, label %21, label %22, !dbg !934

; <label>:21:                                     ; preds = %18
  br label %23, !dbg !939

; <label>:22:                                     ; preds = %18
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.dcc_init_rec, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)), !dbg !942
  br label %109, !dbg !945

; <label>:23:                                     ; preds = %21
  br label %24, !dbg !946

; <label>:24:                                     ; preds = %23
  br label %25, !dbg !948, !llvm.loop !949

; <label>:25:                                     ; preds = %24
  %26 = load i8*, i8** %10, align 8, !dbg !950
  %27 = icmp ne i8* %26, null, !dbg !954
  br i1 %27, label %28, label %29, !dbg !950

; <label>:28:                                     ; preds = %25
  br label %30, !dbg !955

; <label>:29:                                     ; preds = %25
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.dcc_init_rec, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0)), !dbg !958
  br label %109, !dbg !961

; <label>:30:                                     ; preds = %28
  br label %31, !dbg !962

; <label>:31:                                     ; preds = %30
  %32 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_str_hash, i32 (i8*, i8*)* @g_str_equal), !dbg !964
  %33 = load %struct.DCC_REC*, %struct.DCC_REC** %6, align 8, !dbg !965
  %34 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %33, i32 0, i32 21, !dbg !966
  store %struct._GHashTable* %32, %struct._GHashTable** %34, align 8, !dbg !967
  %35 = call i64 @time(i64* null) #7, !dbg !968
  %36 = load %struct.DCC_REC*, %struct.DCC_REC** %6, align 8, !dbg !969
  %37 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %36, i32 0, i32 2, !dbg !970
  store i64 %35, i64* %37, align 8, !dbg !971
  %38 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %8, align 8, !dbg !972
  %39 = load %struct.DCC_REC*, %struct.DCC_REC** %6, align 8, !dbg !973
  %40 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %39, i32 0, i32 7, !dbg !974
  store %struct.CHAT_DCC_REC* %38, %struct.CHAT_DCC_REC** %40, align 8, !dbg !975
  %41 = load i8*, i8** %10, align 8, !dbg !976
  %42 = call noalias i8* @g_strdup(i8* %41), !dbg !977
  %43 = load %struct.DCC_REC*, %struct.DCC_REC** %6, align 8, !dbg !978
  %44 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %43, i32 0, i32 9, !dbg !979
  store i8* %42, i8** %44, align 8, !dbg !980
  %45 = load i8*, i8** %9, align 8, !dbg !981
  %46 = call noalias i8* @g_strdup(i8* %45), !dbg !982
  %47 = load %struct.DCC_REC*, %struct.DCC_REC** %6, align 8, !dbg !983
  %48 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %47, i32 0, i32 6, !dbg !984
  store i8* %46, i8** %48, align 8, !dbg !985
  %49 = load %struct.DCC_REC*, %struct.DCC_REC** %6, align 8, !dbg !986
  %50 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %49, i32 0, i32 16, !dbg !987
  store i32 -1, i32* %50, align 8, !dbg !988
  %51 = load %struct.DCC_REC*, %struct.DCC_REC** %6, align 8, !dbg !989
  %52 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %51, i32 0, i32 15, !dbg !990
  store i32 -1, i32* %52, align 4, !dbg !991
  %53 = load %struct.DCC_REC*, %struct.DCC_REC** %6, align 8, !dbg !992
  %54 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %53, i32 0, i32 14, !dbg !993
  store i32 -1, i32* %54, align 8, !dbg !994
  %55 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %7, align 8, !dbg !995
  %56 = load %struct.DCC_REC*, %struct.DCC_REC** %6, align 8, !dbg !996
  %57 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %56, i32 0, i32 3, !dbg !997
  store %struct._IRC_SERVER_REC* %55, %struct._IRC_SERVER_REC** %57, align 8, !dbg !998
  %58 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %7, align 8, !dbg !999
  %59 = icmp ne %struct._IRC_SERVER_REC* %58, null, !dbg !1000
  br i1 %59, label %60, label %64, !dbg !999

; <label>:60:                                     ; preds = %31
  %61 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %7, align 8, !dbg !1001
  %62 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %61, i32 0, i32 7, !dbg !1003
  %63 = load i8*, i8** %62, align 8, !dbg !1003
  br label %74, !dbg !1004

; <label>:64:                                     ; preds = %31
  %65 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %8, align 8, !dbg !1005
  %66 = icmp ne %struct.CHAT_DCC_REC* %65, null, !dbg !1006
  br i1 %66, label %67, label %71, !dbg !1005

; <label>:67:                                     ; preds = %64
  %68 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %8, align 8, !dbg !1007
  %69 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %68, i32 0, i32 6, !dbg !1008
  %70 = load i8*, i8** %69, align 8, !dbg !1008
  br label %72, !dbg !1009

; <label>:71:                                     ; preds = %64
  br label %72, !dbg !1010

; <label>:72:                                     ; preds = %71, %67
  %73 = phi i8* [ %70, %67 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), %71 ], !dbg !1012
  br label %74, !dbg !1014

; <label>:74:                                     ; preds = %72, %60
  %75 = phi i8* [ %63, %60 ], [ %73, %72 ], !dbg !1015
  %76 = call noalias i8* @g_strdup(i8* %75), !dbg !1016
  %77 = load %struct.DCC_REC*, %struct.DCC_REC** %6, align 8, !dbg !1017
  %78 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %77, i32 0, i32 5, !dbg !1018
  store i8* %76, i8** %78, align 8, !dbg !1019
  %79 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %7, align 8, !dbg !1020
  %80 = icmp ne %struct._IRC_SERVER_REC* %79, null, !dbg !1021
  br i1 %80, label %81, label %86, !dbg !1020

; <label>:81:                                     ; preds = %74
  %82 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %7, align 8, !dbg !1022
  %83 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %82, i32 0, i32 6, !dbg !1023
  %84 = load i8*, i8** %83, align 8, !dbg !1023
  %85 = call noalias i8* @g_strdup(i8* %84), !dbg !1024
  br label %97, !dbg !1025

; <label>:86:                                     ; preds = %74
  %87 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %8, align 8, !dbg !1026
  %88 = icmp eq %struct.CHAT_DCC_REC* %87, null, !dbg !1027
  br i1 %88, label %89, label %90, !dbg !1026

; <label>:89:                                     ; preds = %86
  br label %95, !dbg !1028

; <label>:90:                                     ; preds = %86
  %91 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %8, align 8, !dbg !1029
  %92 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %91, i32 0, i32 4, !dbg !1030
  %93 = load i8*, i8** %92, align 8, !dbg !1030
  %94 = call noalias i8* @g_strdup(i8* %93), !dbg !1031
  br label %95, !dbg !1032

; <label>:95:                                     ; preds = %90, %89
  %96 = phi i8* [ null, %89 ], [ %94, %90 ], !dbg !1033
  br label %97, !dbg !1034

; <label>:97:                                     ; preds = %95, %81
  %98 = phi i8* [ %85, %81 ], [ %96, %95 ], !dbg !1035
  %99 = load %struct.DCC_REC*, %struct.DCC_REC** %6, align 8, !dbg !1036
  %100 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %99, i32 0, i32 4, !dbg !1037
  store i8* %98, i8** %100, align 8, !dbg !1038
  %101 = load %struct.DCC_REC*, %struct.DCC_REC** %6, align 8, !dbg !1039
  %102 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %101, i32 0, i32 19, !dbg !1040
  store i32 -1, i32* %102, align 8, !dbg !1041
  %103 = load %struct._GSList*, %struct._GSList** @dcc_conns, align 8, !dbg !1042
  %104 = load %struct.DCC_REC*, %struct.DCC_REC** %6, align 8, !dbg !1043
  %105 = bitcast %struct.DCC_REC* %104 to i8*, !dbg !1043
  %106 = call %struct._GSList* @g_slist_append(%struct._GSList* %103, i8* %105), !dbg !1044
  store %struct._GSList* %106, %struct._GSList** @dcc_conns, align 8, !dbg !1045
  %107 = load %struct.DCC_REC*, %struct.DCC_REC** %6, align 8, !dbg !1046
  %108 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.DCC_REC* %107), !dbg !1047
  br label %109, !dbg !1048

; <label>:109:                                    ; preds = %97, %29, %22, %15
  ret void, !dbg !1049
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare %struct._GHashTable* @g_hash_table_new(i32 (i8*)*, i32 (i8*, i8*)*) #2

declare i32 @g_str_hash(i8*) #2

declare i32 @g_str_equal(i8*, i8*) #2

; Function Attrs: nounwind
declare i64 @time(i64*) #3

declare i32 @signal_emit(i8*, i32, ...) #2

; Function Attrs: nounwind uwtable
define void @dcc_destroy(%struct.DCC_REC*) #0 !dbg !1050 {
  %2 = alloca %struct.DCC_REC*, align 8
  store %struct.DCC_REC* %0, %struct.DCC_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DCC_REC** %2, metadata !1053, metadata !825), !dbg !1054
  br label %3, !dbg !1055, !llvm.loop !1056

; <label>:3:                                      ; preds = %1
  %4 = load %struct.DCC_REC*, %struct.DCC_REC** %2, align 8, !dbg !1057
  %5 = icmp ne %struct.DCC_REC* %4, null, !dbg !1061
  br i1 %5, label %6, label %7, !dbg !1057

; <label>:6:                                      ; preds = %3
  br label %8, !dbg !1062

; <label>:7:                                      ; preds = %3
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.dcc_destroy, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0)), !dbg !1065
  br label %88, !dbg !1068

; <label>:8:                                      ; preds = %6
  br label %9, !dbg !1069

; <label>:9:                                      ; preds = %8
  %10 = load %struct.DCC_REC*, %struct.DCC_REC** %2, align 8, !dbg !1071
  %11 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %10, i32 0, i32 20, !dbg !1073
  %12 = load i8, i8* %11, align 4, !dbg !1073
  %13 = and i8 %12, 1, !dbg !1073
  %14 = zext i8 %13 to i32, !dbg !1073
  %15 = icmp ne i32 %14, 0, !dbg !1071
  br i1 %15, label %16, label %17, !dbg !1074

; <label>:16:                                     ; preds = %9
  br label %88, !dbg !1075

; <label>:17:                                     ; preds = %9
  %18 = load %struct._GSList*, %struct._GSList** @dcc_conns, align 8, !dbg !1077
  %19 = load %struct.DCC_REC*, %struct.DCC_REC** %2, align 8, !dbg !1078
  %20 = bitcast %struct.DCC_REC* %19 to i8*, !dbg !1078
  %21 = call %struct._GSList* @g_slist_remove(%struct._GSList* %18, i8* %20), !dbg !1079
  store %struct._GSList* %21, %struct._GSList** @dcc_conns, align 8, !dbg !1080
  %22 = load %struct.DCC_REC*, %struct.DCC_REC** %2, align 8, !dbg !1081
  %23 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %22, i32 0, i32 20, !dbg !1082
  %24 = load i8, i8* %23, align 4, !dbg !1083
  %25 = and i8 %24, -2, !dbg !1083
  %26 = or i8 %25, 1, !dbg !1083
  store i8 %26, i8* %23, align 4, !dbg !1083
  %27 = load %struct.DCC_REC*, %struct.DCC_REC** %2, align 8, !dbg !1084
  %28 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 1, %struct.DCC_REC* %27), !dbg !1085
  %29 = load %struct.DCC_REC*, %struct.DCC_REC** %2, align 8, !dbg !1086
  %30 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %29, i32 0, i32 13, !dbg !1088
  %31 = load %struct._GIOChannel*, %struct._GIOChannel** %30, align 8, !dbg !1088
  %32 = icmp ne %struct._GIOChannel* %31, null, !dbg !1089
  br i1 %32, label %33, label %37, !dbg !1090

; <label>:33:                                     ; preds = %17
  %34 = load %struct.DCC_REC*, %struct.DCC_REC** %2, align 8, !dbg !1091
  %35 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %34, i32 0, i32 13, !dbg !1093
  %36 = load %struct._GIOChannel*, %struct._GIOChannel** %35, align 8, !dbg !1093
  call void @net_disconnect(%struct._GIOChannel* %36), !dbg !1094
  br label %37, !dbg !1094

; <label>:37:                                     ; preds = %33, %17
  %38 = load %struct.DCC_REC*, %struct.DCC_REC** %2, align 8, !dbg !1095
  %39 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %38, i32 0, i32 14, !dbg !1097
  %40 = load i32, i32* %39, align 8, !dbg !1097
  %41 = icmp ne i32 %40, -1, !dbg !1098
  br i1 %41, label %42, label %47, !dbg !1099

; <label>:42:                                     ; preds = %37
  %43 = load %struct.DCC_REC*, %struct.DCC_REC** %2, align 8, !dbg !1100
  %44 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %43, i32 0, i32 14, !dbg !1102
  %45 = load i32, i32* %44, align 8, !dbg !1102
  %46 = call i32 @g_source_remove(i32 %45), !dbg !1103
  br label %47, !dbg !1103

; <label>:47:                                     ; preds = %42, %37
  %48 = load %struct.DCC_REC*, %struct.DCC_REC** %2, align 8, !dbg !1104
  %49 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %48, i32 0, i32 15, !dbg !1106
  %50 = load i32, i32* %49, align 4, !dbg !1106
  %51 = icmp ne i32 %50, -1, !dbg !1107
  br i1 %51, label %52, label %57, !dbg !1108

; <label>:52:                                     ; preds = %47
  %53 = load %struct.DCC_REC*, %struct.DCC_REC** %2, align 8, !dbg !1109
  %54 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %53, i32 0, i32 15, !dbg !1111
  %55 = load i32, i32* %54, align 4, !dbg !1111
  %56 = call i32 @g_source_remove(i32 %55), !dbg !1112
  br label %57, !dbg !1112

; <label>:57:                                     ; preds = %52, %47
  %58 = load %struct.DCC_REC*, %struct.DCC_REC** %2, align 8, !dbg !1113
  %59 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %58, i32 0, i32 16, !dbg !1115
  %60 = load i32, i32* %59, align 8, !dbg !1115
  %61 = icmp ne i32 %60, -1, !dbg !1116
  br i1 %61, label %62, label %67, !dbg !1117

; <label>:62:                                     ; preds = %57
  %63 = load %struct.DCC_REC*, %struct.DCC_REC** %2, align 8, !dbg !1118
  %64 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %63, i32 0, i32 16, !dbg !1120
  %65 = load i32, i32* %64, align 8, !dbg !1120
  %66 = call i32 @g_source_remove(i32 %65), !dbg !1121
  br label %67, !dbg !1121

; <label>:67:                                     ; preds = %62, %57
  %68 = load %struct.DCC_REC*, %struct.DCC_REC** %2, align 8, !dbg !1122
  %69 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %68, i32 0, i32 21, !dbg !1123
  %70 = load %struct._GHashTable*, %struct._GHashTable** %69, align 8, !dbg !1123
  call void @g_hash_table_destroy(%struct._GHashTable* %70), !dbg !1124
  %71 = load %struct.DCC_REC*, %struct.DCC_REC** %2, align 8, !dbg !1125
  %72 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %71, i32 0, i32 4, !dbg !1126
  %73 = load i8*, i8** %72, align 8, !dbg !1126
  call void @g_free(i8* %73), !dbg !1127
  %74 = load %struct.DCC_REC*, %struct.DCC_REC** %2, align 8, !dbg !1128
  %75 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %74, i32 0, i32 8, !dbg !1129
  %76 = load i8*, i8** %75, align 8, !dbg !1129
  call void @g_free(i8* %76), !dbg !1130
  %77 = load %struct.DCC_REC*, %struct.DCC_REC** %2, align 8, !dbg !1131
  %78 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %77, i32 0, i32 5, !dbg !1132
  %79 = load i8*, i8** %78, align 8, !dbg !1132
  call void @g_free(i8* %79), !dbg !1133
  %80 = load %struct.DCC_REC*, %struct.DCC_REC** %2, align 8, !dbg !1134
  %81 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %80, i32 0, i32 6, !dbg !1135
  %82 = load i8*, i8** %81, align 8, !dbg !1135
  call void @g_free(i8* %82), !dbg !1136
  %83 = load %struct.DCC_REC*, %struct.DCC_REC** %2, align 8, !dbg !1137
  %84 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %83, i32 0, i32 9, !dbg !1138
  %85 = load i8*, i8** %84, align 8, !dbg !1138
  call void @g_free(i8* %85), !dbg !1139
  %86 = load %struct.DCC_REC*, %struct.DCC_REC** %2, align 8, !dbg !1140
  %87 = bitcast %struct.DCC_REC* %86 to i8*, !dbg !1140
  call void @g_free(i8* %87), !dbg !1141
  br label %88, !dbg !1142

; <label>:88:                                     ; preds = %67, %16, %7
  ret void, !dbg !1143
}

declare void @net_disconnect(%struct._GIOChannel*) #2

declare i32 @g_source_remove(i32) #2

declare void @g_hash_table_destroy(%struct._GHashTable*) #2

; Function Attrs: nounwind uwtable
define %struct.DCC_REC* @dcc_find_request_latest(i32) #0 !dbg !1145 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.DCC_REC*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct.DCC_REC*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1148, metadata !825), !dbg !1149
  call void @llvm.dbg.declare(metadata %struct.DCC_REC** %3, metadata !1150, metadata !825), !dbg !1151
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !1152, metadata !825), !dbg !1153
  store %struct.DCC_REC* null, %struct.DCC_REC** %3, align 8, !dbg !1154
  %6 = load %struct._GSList*, %struct._GSList** @dcc_conns, align 8, !dbg !1155
  store %struct._GSList* %6, %struct._GSList** %4, align 8, !dbg !1157
  br label %7, !dbg !1158

; <label>:7:                                      ; preds = %28, %1
  %8 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1159
  %9 = icmp ne %struct._GSList* %8, null, !dbg !1162
  br i1 %9, label %10, label %32, !dbg !1163

; <label>:10:                                     ; preds = %7
  call void @llvm.dbg.declare(metadata %struct.DCC_REC** %5, metadata !1164, metadata !825), !dbg !1166
  %11 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1167
  %12 = getelementptr inbounds %struct._GSList, %struct._GSList* %11, i32 0, i32 0, !dbg !1168
  %13 = load i8*, i8** %12, align 8, !dbg !1168
  %14 = bitcast i8* %13 to %struct.DCC_REC*, !dbg !1167
  store %struct.DCC_REC* %14, %struct.DCC_REC** %5, align 8, !dbg !1166
  %15 = load %struct.DCC_REC*, %struct.DCC_REC** %5, align 8, !dbg !1169
  %16 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %15, i32 0, i32 0, !dbg !1171
  %17 = load i32, i32* %16, align 8, !dbg !1171
  %18 = load i32, i32* %2, align 4, !dbg !1172
  %19 = icmp eq i32 %17, %18, !dbg !1173
  br i1 %19, label %20, label %27, !dbg !1174

; <label>:20:                                     ; preds = %10
  %21 = load %struct.DCC_REC*, %struct.DCC_REC** %5, align 8, !dbg !1175
  %22 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %21, i32 0, i32 13, !dbg !1177
  %23 = load %struct._GIOChannel*, %struct._GIOChannel** %22, align 8, !dbg !1177
  %24 = icmp eq %struct._GIOChannel* %23, null, !dbg !1178
  br i1 %24, label %25, label %27, !dbg !1179

; <label>:25:                                     ; preds = %20
  %26 = load %struct.DCC_REC*, %struct.DCC_REC** %5, align 8, !dbg !1180
  store %struct.DCC_REC* %26, %struct.DCC_REC** %3, align 8, !dbg !1181
  br label %27, !dbg !1182

; <label>:27:                                     ; preds = %25, %20, %10
  br label %28, !dbg !1183

; <label>:28:                                     ; preds = %27
  %29 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1184
  %30 = getelementptr inbounds %struct._GSList, %struct._GSList* %29, i32 0, i32 1, !dbg !1186
  %31 = load %struct._GSList*, %struct._GSList** %30, align 8, !dbg !1186
  store %struct._GSList* %31, %struct._GSList** %4, align 8, !dbg !1187
  br label %7, !dbg !1188, !llvm.loop !1189

; <label>:32:                                     ; preds = %7
  %33 = load %struct.DCC_REC*, %struct.DCC_REC** %3, align 8, !dbg !1191
  ret %struct.DCC_REC* %33, !dbg !1192
}

; Function Attrs: nounwind uwtable
define %struct.DCC_REC* @dcc_find_request(i32, i8*, i8*) #0 !dbg !1193 {
  %4 = alloca %struct.DCC_REC*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct._GSList*, align 8
  %9 = alloca %struct.DCC_REC*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1196, metadata !825), !dbg !1197
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1198, metadata !825), !dbg !1199
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1200, metadata !825), !dbg !1201
  call void @llvm.dbg.declare(metadata %struct._GSList** %8, metadata !1202, metadata !825), !dbg !1203
  br label %10, !dbg !1204, !llvm.loop !1205

; <label>:10:                                     ; preds = %3
  %11 = load i8*, i8** %6, align 8, !dbg !1206
  %12 = icmp ne i8* %11, null, !dbg !1210
  br i1 %12, label %13, label %14, !dbg !1206

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !1211

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.dcc_find_request, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)), !dbg !1214
  store %struct.DCC_REC* null, %struct.DCC_REC** %4, align 8, !dbg !1217
  br label %61, !dbg !1217

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !1218

; <label>:16:                                     ; preds = %15
  %17 = load %struct._GSList*, %struct._GSList** @dcc_conns, align 8, !dbg !1220
  store %struct._GSList* %17, %struct._GSList** %8, align 8, !dbg !1222
  br label %18, !dbg !1223

; <label>:18:                                     ; preds = %56, %16
  %19 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1224
  %20 = icmp ne %struct._GSList* %19, null, !dbg !1227
  br i1 %20, label %21, label %60, !dbg !1228

; <label>:21:                                     ; preds = %18
  call void @llvm.dbg.declare(metadata %struct.DCC_REC** %9, metadata !1229, metadata !825), !dbg !1231
  %22 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1232
  %23 = getelementptr inbounds %struct._GSList, %struct._GSList* %22, i32 0, i32 0, !dbg !1233
  %24 = load i8*, i8** %23, align 8, !dbg !1233
  %25 = bitcast i8* %24 to %struct.DCC_REC*, !dbg !1232
  store %struct.DCC_REC* %25, %struct.DCC_REC** %9, align 8, !dbg !1231
  %26 = load %struct.DCC_REC*, %struct.DCC_REC** %9, align 8, !dbg !1234
  %27 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %26, i32 0, i32 0, !dbg !1236
  %28 = load i32, i32* %27, align 8, !dbg !1236
  %29 = load i32, i32* %5, align 4, !dbg !1237
  %30 = icmp eq i32 %28, %29, !dbg !1238
  br i1 %30, label %31, label %55, !dbg !1239

; <label>:31:                                     ; preds = %21
  %32 = load %struct.DCC_REC*, %struct.DCC_REC** %9, align 8, !dbg !1240
  %33 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %32, i32 0, i32 17, !dbg !1242
  %34 = load i64, i64* %33, align 8, !dbg !1242
  %35 = icmp ne i64 %34, 0, !dbg !1243
  br i1 %35, label %55, label %36, !dbg !1244

; <label>:36:                                     ; preds = %31
  %37 = load %struct.DCC_REC*, %struct.DCC_REC** %9, align 8, !dbg !1245
  %38 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %37, i32 0, i32 6, !dbg !1246
  %39 = load i8*, i8** %38, align 8, !dbg !1246
  %40 = load i8*, i8** %6, align 8, !dbg !1247
  %41 = call i32 @g_ascii_strcasecmp(i8* %39, i8* %40), !dbg !1248
  %42 = icmp eq i32 %41, 0, !dbg !1249
  br i1 %42, label %43, label %55, !dbg !1250

; <label>:43:                                     ; preds = %36
  %44 = load i8*, i8** %7, align 8, !dbg !1251
  %45 = icmp eq i8* %44, null, !dbg !1252
  br i1 %45, label %53, label %46, !dbg !1253

; <label>:46:                                     ; preds = %43
  %47 = load %struct.DCC_REC*, %struct.DCC_REC** %9, align 8, !dbg !1254
  %48 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %47, i32 0, i32 9, !dbg !1255
  %49 = load i8*, i8** %48, align 8, !dbg !1255
  %50 = load i8*, i8** %7, align 8, !dbg !1256
  %51 = call i32 @g_strcmp0(i8* %49, i8* %50), !dbg !1257
  %52 = icmp eq i32 %51, 0, !dbg !1258
  br i1 %52, label %53, label %55, !dbg !1259

; <label>:53:                                     ; preds = %46, %43
  %54 = load %struct.DCC_REC*, %struct.DCC_REC** %9, align 8, !dbg !1261
  store %struct.DCC_REC* %54, %struct.DCC_REC** %4, align 8, !dbg !1262
  br label %61, !dbg !1262

; <label>:55:                                     ; preds = %46, %36, %31, %21
  br label %56, !dbg !1263

; <label>:56:                                     ; preds = %55
  %57 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1264
  %58 = getelementptr inbounds %struct._GSList, %struct._GSList* %57, i32 0, i32 1, !dbg !1266
  %59 = load %struct._GSList*, %struct._GSList** %58, align 8, !dbg !1266
  store %struct._GSList* %59, %struct._GSList** %8, align 8, !dbg !1267
  br label %18, !dbg !1268, !llvm.loop !1269

; <label>:60:                                     ; preds = %18
  store %struct.DCC_REC* null, %struct.DCC_REC** %4, align 8, !dbg !1271
  br label %61, !dbg !1271

; <label>:61:                                     ; preds = %60, %53, %14
  %62 = load %struct.DCC_REC*, %struct.DCC_REC** %4, align 8, !dbg !1272
  ret %struct.DCC_REC* %62, !dbg !1272
}

declare i32 @g_ascii_strcasecmp(i8*, i8*) #2

declare i32 @g_strcmp0(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @dcc_ip2str(%struct._IPADDR*, i8*) #0 !dbg !1273 {
  %3 = alloca %struct._IPADDR*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IPADDR, align 4
  %6 = alloca i32, align 4
  store %struct._IPADDR* %0, %struct._IPADDR** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IPADDR** %3, metadata !1276, metadata !825), !dbg !1277
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1278, metadata !825), !dbg !1279
  call void @llvm.dbg.declare(metadata %struct._IPADDR* %5, metadata !1280, metadata !825), !dbg !1281
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1282, metadata !825), !dbg !1283
  %7 = call i8* @settings_get_str(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0)), !dbg !1284
  %8 = load i8, i8* %7, align 1, !dbg !1286
  %9 = sext i8 %8 to i32, !dbg !1286
  %10 = icmp ne i32 %9, 0, !dbg !1287
  br i1 %10, label %11, label %14, !dbg !1288

; <label>:11:                                     ; preds = %2
  %12 = call i8* @settings_get_str(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0)), !dbg !1289
  %13 = call i32 @net_host2ip(i8* %12, %struct._IPADDR* %5), !dbg !1291
  store %struct._IPADDR* %5, %struct._IPADDR** %3, align 8, !dbg !1293
  br label %14, !dbg !1294

; <label>:14:                                     ; preds = %11, %2
  %15 = load %struct._IPADDR*, %struct._IPADDR** %3, align 8, !dbg !1295
  %16 = getelementptr inbounds %struct._IPADDR, %struct._IPADDR* %15, i32 0, i32 0, !dbg !1297
  %17 = load i16, i16* %16, align 4, !dbg !1297
  %18 = zext i16 %17 to i32, !dbg !1298
  %19 = icmp ne i32 %18, 2, !dbg !1299
  br i1 %19, label %20, label %24, !dbg !1300

; <label>:20:                                     ; preds = %14
  %21 = load %struct._IPADDR*, %struct._IPADDR** %3, align 8, !dbg !1301
  %22 = load i8*, i8** %4, align 8, !dbg !1303
  %23 = call i32 @net_ip2host(%struct._IPADDR* %21, i8* %22), !dbg !1304
  br label %34, !dbg !1305

; <label>:24:                                     ; preds = %14
  %25 = bitcast i32* %6 to i8*, !dbg !1306
  %26 = load %struct._IPADDR*, %struct._IPADDR** %3, align 8, !dbg !1308
  %27 = getelementptr inbounds %struct._IPADDR, %struct._IPADDR* %26, i32 0, i32 1, !dbg !1309
  %28 = bitcast %struct.in6_addr* %27 to i8*, !dbg !1306
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %28, i64 4, i32 4, i1 false), !dbg !1306
  %29 = load i8*, i8** %4, align 8, !dbg !1310
  %30 = load i32, i32* %6, align 4, !dbg !1311
  %31 = call i32 @htonl(i32 %30) #1, !dbg !1312
  %32 = zext i32 %31 to i64, !dbg !1313
  %33 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %29, i64 46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i64 %32), !dbg !1314
  br label %34

; <label>:34:                                     ; preds = %24, %20
  ret void, !dbg !1315
}

declare i8* @settings_get_str(i8*) #2

declare i32 @net_host2ip(i8*, %struct._IPADDR*) #2

declare i32 @net_ip2host(%struct._IPADDR*, i8*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

declare i32 @g_snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: nounwind readnone
declare i32 @htonl(i32) #5

; Function Attrs: nounwind uwtable
define void @dcc_str2ip(i8*, %struct._IPADDR*) #0 !dbg !1316 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._IPADDR*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1319, metadata !825), !dbg !1320
  store %struct._IPADDR* %1, %struct._IPADDR** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IPADDR** %4, metadata !1321, metadata !825), !dbg !1322
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1323, metadata !825), !dbg !1324
  %6 = load i8*, i8** %3, align 8, !dbg !1325
  %7 = call i8* @strchr(i8* %6, i32 58) #8, !dbg !1327
  %8 = icmp eq i8* %7, null, !dbg !1328
  br i1 %8, label %9, label %21, !dbg !1329

; <label>:9:                                      ; preds = %2
  %10 = load i8*, i8** %3, align 8, !dbg !1330
  %11 = call i64 @strtoul(i8* %10, i8** null, i32 10) #7, !dbg !1332
  %12 = trunc i64 %11 to i32, !dbg !1332
  store i32 %12, i32* %5, align 4, !dbg !1333
  %13 = load %struct._IPADDR*, %struct._IPADDR** %4, align 8, !dbg !1334
  %14 = getelementptr inbounds %struct._IPADDR, %struct._IPADDR* %13, i32 0, i32 0, !dbg !1335
  store i16 2, i16* %14, align 4, !dbg !1336
  %15 = load i32, i32* %5, align 4, !dbg !1337
  %16 = call i32 @ntohl(i32 %15) #1, !dbg !1338
  store i32 %16, i32* %5, align 4, !dbg !1339
  %17 = load %struct._IPADDR*, %struct._IPADDR** %4, align 8, !dbg !1340
  %18 = getelementptr inbounds %struct._IPADDR, %struct._IPADDR* %17, i32 0, i32 1, !dbg !1341
  %19 = bitcast %struct.in6_addr* %18 to i8*, !dbg !1342
  %20 = bitcast i32* %5 to i8*, !dbg !1342
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 4, i32 4, i1 false), !dbg !1342
  br label %25, !dbg !1343

; <label>:21:                                     ; preds = %2
  %22 = load i8*, i8** %3, align 8, !dbg !1344
  %23 = load %struct._IPADDR*, %struct._IPADDR** %4, align 8, !dbg !1346
  %24 = call i32 @net_host2ip(i8* %22, %struct._IPADDR* %23), !dbg !1347
  br label %25

; <label>:25:                                     ; preds = %21, %9
  ret void, !dbg !1348
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #6

; Function Attrs: nounwind
declare i64 @strtoul(i8*, i8**, i32) #3

; Function Attrs: nounwind readnone
declare i32 @ntohl(i32) #5

; Function Attrs: nounwind uwtable
define %struct._GIOChannel* @dcc_listen(%struct._GIOChannel*, %struct._IPADDR*, i32*) #0 !dbg !1349 {
  %4 = alloca %struct._GIOChannel*, align 8
  %5 = alloca %struct._GIOChannel*, align 8
  %6 = alloca %struct._IPADDR*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct._GIOChannel*, align 8
  %9 = alloca %struct._IPADDR*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct._GIOChannel* %0, %struct._GIOChannel** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %5, metadata !1353, metadata !825), !dbg !1354
  store %struct._IPADDR* %1, %struct._IPADDR** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IPADDR** %6, metadata !1355, metadata !825), !dbg !1356
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !1357, metadata !825), !dbg !1358
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %8, metadata !1359, metadata !825), !dbg !1360
  call void @llvm.dbg.declare(metadata %struct._IPADDR** %9, metadata !1361, metadata !825), !dbg !1362
  store %struct._IPADDR* null, %struct._IPADDR** %9, align 8, !dbg !1362
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1363, metadata !825), !dbg !1364
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1365, metadata !825), !dbg !1366
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1367, metadata !825), !dbg !1368
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1369, metadata !825), !dbg !1370
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1371, metadata !825), !dbg !1372
  %15 = load %struct._GIOChannel*, %struct._GIOChannel** %5, align 8, !dbg !1373
  %16 = load %struct._IPADDR*, %struct._IPADDR** %6, align 8, !dbg !1375
  %17 = call i32 @net_getsockname(%struct._GIOChannel* %15, %struct._IPADDR* %16, i32* null), !dbg !1376
  %18 = icmp eq i32 %17, -1, !dbg !1377
  br i1 %18, label %19, label %20, !dbg !1378

; <label>:19:                                     ; preds = %3
  store %struct._GIOChannel* null, %struct._GIOChannel** %4, align 8, !dbg !1379
  br label %96, !dbg !1379

; <label>:20:                                     ; preds = %3
  %21 = call i8* @settings_get_str(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0)), !dbg !1380
  store i8* %21, i8** %12, align 8, !dbg !1381
  %22 = load i8*, i8** %12, align 8, !dbg !1382
  %23 = load i8, i8* %22, align 1, !dbg !1384
  %24 = sext i8 %23 to i32, !dbg !1384
  %25 = icmp ne i32 %24, 0, !dbg !1385
  br i1 %25, label %26, label %32, !dbg !1386

; <label>:26:                                     ; preds = %20
  %27 = load i8*, i8** %12, align 8, !dbg !1387
  %28 = call i32 @is_ipv4_address(i8* %27), !dbg !1390
  %29 = icmp ne i32 %28, 0, !dbg !1390
  br i1 %29, label %30, label %31, !dbg !1391

; <label>:30:                                     ; preds = %26
  store %struct._IPADDR* @ip4_any, %struct._IPADDR** %9, align 8, !dbg !1392
  br label %31, !dbg !1393

; <label>:31:                                     ; preds = %30, %26
  br label %40, !dbg !1394

; <label>:32:                                     ; preds = %20
  %33 = load %struct._IPADDR*, %struct._IPADDR** %6, align 8, !dbg !1395
  %34 = getelementptr inbounds %struct._IPADDR, %struct._IPADDR* %33, i32 0, i32 0, !dbg !1398
  %35 = load i16, i16* %34, align 4, !dbg !1398
  %36 = zext i16 %35 to i32, !dbg !1399
  %37 = icmp ne i32 %36, 2, !dbg !1400
  br i1 %37, label %39, label %38, !dbg !1401

; <label>:38:                                     ; preds = %32
  store %struct._IPADDR* @ip4_any, %struct._IPADDR** %9, align 8, !dbg !1402
  br label %39, !dbg !1403

; <label>:39:                                     ; preds = %38, %32
  br label %40

; <label>:40:                                     ; preds = %39, %31
  %41 = call i8* @settings_get_str(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0)), !dbg !1404
  store i8* %41, i8** %10, align 8, !dbg !1405
  %42 = load i8*, i8** %10, align 8, !dbg !1406
  %43 = call i32 @atoi(i8* %42) #8, !dbg !1407
  store i32 %43, i32* %13, align 4, !dbg !1408
  %44 = load i32, i32* %13, align 4, !dbg !1409
  %45 = icmp eq i32 %44, 0, !dbg !1411
  br i1 %45, label %46, label %51, !dbg !1412

; <label>:46:                                     ; preds = %40
  %47 = load i32*, i32** %7, align 8, !dbg !1413
  store i32 0, i32* %47, align 4, !dbg !1415
  %48 = load %struct._IPADDR*, %struct._IPADDR** %9, align 8, !dbg !1416
  %49 = load i32*, i32** %7, align 8, !dbg !1417
  %50 = call %struct._GIOChannel* @net_listen(%struct._IPADDR* %48, i32* %49), !dbg !1418
  store %struct._GIOChannel* %50, %struct._GIOChannel** %4, align 8, !dbg !1419
  br label %96, !dbg !1419

; <label>:51:                                     ; preds = %40
  %52 = load i8*, i8** %10, align 8, !dbg !1420
  %53 = call i8* @strchr(i8* %52, i32 32) #8, !dbg !1421
  store i8* %53, i8** %11, align 8, !dbg !1422
  %54 = load i8*, i8** %11, align 8, !dbg !1423
  %55 = icmp eq i8* %54, null, !dbg !1425
  br i1 %55, label %56, label %59, !dbg !1426

; <label>:56:                                     ; preds = %51
  %57 = load i8*, i8** %10, align 8, !dbg !1427
  %58 = call i8* @strchr(i8* %57, i32 45) #8, !dbg !1429
  store i8* %58, i8** %11, align 8, !dbg !1430
  br label %59, !dbg !1431

; <label>:59:                                     ; preds = %56, %51
  %60 = load i8*, i8** %11, align 8, !dbg !1432
  store i8* %60, i8** %10, align 8, !dbg !1433
  %61 = load i8*, i8** %10, align 8, !dbg !1434
  %62 = icmp eq i8* %61, null, !dbg !1436
  br i1 %62, label %63, label %65, !dbg !1437

; <label>:63:                                     ; preds = %59
  %64 = load i32, i32* %13, align 4, !dbg !1438
  store i32 %64, i32* %14, align 4, !dbg !1439
  br label %74, !dbg !1440

; <label>:65:                                     ; preds = %59
  %66 = load i8*, i8** %10, align 8, !dbg !1441
  %67 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !1443
  %68 = call i32 @atoi(i8* %67) #8, !dbg !1444
  store i32 %68, i32* %14, align 4, !dbg !1445
  %69 = load i32, i32* %14, align 4, !dbg !1446
  %70 = icmp eq i32 %69, 0, !dbg !1448
  br i1 %70, label %71, label %73, !dbg !1449

; <label>:71:                                     ; preds = %65
  %72 = load i32, i32* %13, align 4, !dbg !1450
  store i32 %72, i32* %14, align 4, !dbg !1451
  br label %73, !dbg !1452

; <label>:73:                                     ; preds = %71, %65
  br label %74

; <label>:74:                                     ; preds = %73, %63
  %75 = load i32, i32* %13, align 4, !dbg !1453
  %76 = load i32*, i32** %7, align 8, !dbg !1455
  store i32 %75, i32* %76, align 4, !dbg !1456
  br label %77, !dbg !1457

; <label>:77:                                     ; preds = %91, %74
  %78 = load i32*, i32** %7, align 8, !dbg !1458
  %79 = load i32, i32* %78, align 4, !dbg !1461
  %80 = load i32, i32* %14, align 4, !dbg !1462
  %81 = icmp sle i32 %79, %80, !dbg !1463
  br i1 %81, label %82, label %95, !dbg !1464

; <label>:82:                                     ; preds = %77
  %83 = load %struct._IPADDR*, %struct._IPADDR** %9, align 8, !dbg !1465
  %84 = load i32*, i32** %7, align 8, !dbg !1467
  %85 = call %struct._GIOChannel* @net_listen(%struct._IPADDR* %83, i32* %84), !dbg !1468
  store %struct._GIOChannel* %85, %struct._GIOChannel** %8, align 8, !dbg !1469
  %86 = load %struct._GIOChannel*, %struct._GIOChannel** %8, align 8, !dbg !1470
  %87 = icmp ne %struct._GIOChannel* %86, null, !dbg !1472
  br i1 %87, label %88, label %90, !dbg !1473

; <label>:88:                                     ; preds = %82
  %89 = load %struct._GIOChannel*, %struct._GIOChannel** %8, align 8, !dbg !1474
  store %struct._GIOChannel* %89, %struct._GIOChannel** %4, align 8, !dbg !1475
  br label %96, !dbg !1475

; <label>:90:                                     ; preds = %82
  br label %91, !dbg !1476

; <label>:91:                                     ; preds = %90
  %92 = load i32*, i32** %7, align 8, !dbg !1477
  %93 = load i32, i32* %92, align 4, !dbg !1479
  %94 = add nsw i32 %93, 1, !dbg !1479
  store i32 %94, i32* %92, align 4, !dbg !1479
  br label %77, !dbg !1480, !llvm.loop !1481

; <label>:95:                                     ; preds = %77
  store %struct._GIOChannel* null, %struct._GIOChannel** %4, align 8, !dbg !1483
  br label %96, !dbg !1483

; <label>:96:                                     ; preds = %95, %88, %46, %19
  %97 = load %struct._GIOChannel*, %struct._GIOChannel** %4, align 8, !dbg !1484
  ret %struct._GIOChannel* %97, !dbg !1484
}

declare i32 @net_getsockname(%struct._GIOChannel*, %struct._IPADDR*, i32*) #2

declare i32 @is_ipv4_address(i8*) #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #6

declare %struct._GIOChannel* @net_listen(%struct._IPADDR*, i32*) #2

; Function Attrs: nounwind uwtable
define %struct._GIOChannel* @dcc_connect_ip(%struct._IPADDR*, i32) #0 !dbg !1485 {
  %3 = alloca %struct._IPADDR*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._IPADDR*, align 8
  %6 = alloca %struct._IPADDR, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct._GIOChannel*, align 8
  store %struct._IPADDR* %0, %struct._IPADDR** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IPADDR** %3, metadata !1488, metadata !825), !dbg !1489
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1490, metadata !825), !dbg !1491
  call void @llvm.dbg.declare(metadata %struct._IPADDR** %5, metadata !1492, metadata !825), !dbg !1493
  call void @llvm.dbg.declare(metadata %struct._IPADDR* %6, metadata !1494, metadata !825), !dbg !1495
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1496, metadata !825), !dbg !1497
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %8, metadata !1498, metadata !825), !dbg !1499
  %9 = call i8* @settings_get_str(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0)), !dbg !1500
  store i8* %9, i8** %7, align 8, !dbg !1501
  store %struct._IPADDR* null, %struct._IPADDR** %5, align 8, !dbg !1502
  %10 = load i8*, i8** %7, align 8, !dbg !1503
  %11 = load i8, i8* %10, align 1, !dbg !1505
  %12 = sext i8 %11 to i32, !dbg !1505
  %13 = icmp ne i32 %12, 0, !dbg !1506
  br i1 %13, label %14, label %31, !dbg !1507

; <label>:14:                                     ; preds = %2
  %15 = load i8*, i8** %7, align 8, !dbg !1508
  %16 = call i32 @net_host2ip(i8* %15, %struct._IPADDR* %6), !dbg !1510
  %17 = load %struct._IPADDR*, %struct._IPADDR** %3, align 8, !dbg !1511
  %18 = getelementptr inbounds %struct._IPADDR, %struct._IPADDR* %17, i32 0, i32 0, !dbg !1513
  %19 = load i16, i16* %18, align 4, !dbg !1513
  %20 = zext i16 %19 to i32, !dbg !1514
  %21 = icmp ne i32 %20, 2, !dbg !1515
  %22 = zext i1 %21 to i32, !dbg !1515
  %23 = getelementptr inbounds %struct._IPADDR, %struct._IPADDR* %6, i32 0, i32 0, !dbg !1516
  %24 = load i16, i16* %23, align 4, !dbg !1516
  %25 = zext i16 %24 to i32, !dbg !1517
  %26 = icmp ne i32 %25, 2, !dbg !1518
  %27 = zext i1 %26 to i32, !dbg !1518
  %28 = icmp eq i32 %22, %27, !dbg !1514
  br i1 %28, label %29, label %30, !dbg !1519

; <label>:29:                                     ; preds = %14
  store %struct._IPADDR* %6, %struct._IPADDR** %5, align 8, !dbg !1520
  br label %30, !dbg !1521

; <label>:30:                                     ; preds = %29, %14
  br label %31, !dbg !1522

; <label>:31:                                     ; preds = %30, %2
  %32 = load %struct._IPADDR*, %struct._IPADDR** %5, align 8, !dbg !1523
  %33 = icmp eq %struct._IPADDR* %32, null, !dbg !1525
  br i1 %33, label %34, label %46, !dbg !1526

; <label>:34:                                     ; preds = %31
  %35 = load %struct._IPADDR*, %struct._IPADDR** %3, align 8, !dbg !1527
  %36 = getelementptr inbounds %struct._IPADDR, %struct._IPADDR* %35, i32 0, i32 0, !dbg !1528
  %37 = load i16, i16* %36, align 4, !dbg !1528
  %38 = zext i16 %37 to i32, !dbg !1529
  %39 = icmp ne i32 %38, 2, !dbg !1530
  br i1 %39, label %40, label %42, !dbg !1531

; <label>:40:                                     ; preds = %34
  %41 = load %struct._IPADDR*, %struct._IPADDR** @source_host_ip6, align 8, !dbg !1532
  br label %44, !dbg !1534

; <label>:42:                                     ; preds = %34
  %43 = load %struct._IPADDR*, %struct._IPADDR** @source_host_ip4, align 8, !dbg !1535
  br label %44, !dbg !1537

; <label>:44:                                     ; preds = %42, %40
  %45 = phi %struct._IPADDR* [ %41, %40 ], [ %43, %42 ], !dbg !1538
  store %struct._IPADDR* %45, %struct._IPADDR** %5, align 8, !dbg !1540
  br label %46, !dbg !1541

; <label>:46:                                     ; preds = %44, %31
  %47 = load %struct._IPADDR*, %struct._IPADDR** %3, align 8, !dbg !1542
  %48 = load i32, i32* %4, align 4, !dbg !1543
  %49 = load %struct._IPADDR*, %struct._IPADDR** %5, align 8, !dbg !1544
  %50 = call %struct._GIOChannel* @net_connect_ip(%struct._IPADDR* %47, i32 %48, %struct._IPADDR* %49), !dbg !1545
  store %struct._GIOChannel* %50, %struct._GIOChannel** %8, align 8, !dbg !1546
  %51 = load %struct._GIOChannel*, %struct._GIOChannel** %8, align 8, !dbg !1547
  %52 = icmp eq %struct._GIOChannel* %51, null, !dbg !1549
  br i1 %52, label %53, label %76, !dbg !1550

; <label>:53:                                     ; preds = %46
  %54 = call i32* @__errno_location() #1, !dbg !1551
  %55 = load i32, i32* %54, align 4, !dbg !1553
  %56 = icmp eq i32 %55, 99, !dbg !1554
  br i1 %56, label %57, label %76, !dbg !1555

; <label>:57:                                     ; preds = %53
  %58 = load %struct._IPADDR*, %struct._IPADDR** %5, align 8, !dbg !1556
  %59 = icmp ne %struct._IPADDR* %58, null, !dbg !1558
  br i1 %59, label %60, label %76, !dbg !1559

; <label>:60:                                     ; preds = %57
  %61 = load %struct._IPADDR*, %struct._IPADDR** %3, align 8, !dbg !1560
  %62 = getelementptr inbounds %struct._IPADDR, %struct._IPADDR* %61, i32 0, i32 0, !dbg !1562
  %63 = load i16, i16* %62, align 4, !dbg !1562
  %64 = zext i16 %63 to i32, !dbg !1563
  %65 = icmp ne i32 %64, 2, !dbg !1564
  br i1 %65, label %66, label %68, !dbg !1565

; <label>:66:                                     ; preds = %60
  %67 = load %struct._IPADDR*, %struct._IPADDR** @source_host_ip6, align 8, !dbg !1566
  br label %70, !dbg !1568

; <label>:68:                                     ; preds = %60
  %69 = load %struct._IPADDR*, %struct._IPADDR** @source_host_ip4, align 8, !dbg !1569
  br label %70, !dbg !1571

; <label>:70:                                     ; preds = %68, %66
  %71 = phi %struct._IPADDR* [ %67, %66 ], [ %69, %68 ], !dbg !1572
  store %struct._IPADDR* %71, %struct._IPADDR** %5, align 8, !dbg !1574
  %72 = load %struct._IPADDR*, %struct._IPADDR** %3, align 8, !dbg !1575
  %73 = load i32, i32* %4, align 4, !dbg !1576
  %74 = load %struct._IPADDR*, %struct._IPADDR** %5, align 8, !dbg !1577
  %75 = call %struct._GIOChannel* @net_connect_ip(%struct._IPADDR* %72, i32 %73, %struct._IPADDR* %74), !dbg !1578
  store %struct._GIOChannel* %75, %struct._GIOChannel** %8, align 8, !dbg !1579
  br label %76, !dbg !1580

; <label>:76:                                     ; preds = %70, %57, %53, %46
  %77 = load %struct._GIOChannel*, %struct._GIOChannel** %8, align 8, !dbg !1581
  ret %struct._GIOChannel* %77, !dbg !1582
}

declare %struct._GIOChannel* @net_connect_ip(%struct._IPADDR*, i32, %struct._IPADDR*) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

; Function Attrs: nounwind uwtable
define void @dcc_close(%struct.DCC_REC*) #0 !dbg !1583 {
  %2 = alloca %struct.DCC_REC*, align 8
  store %struct.DCC_REC* %0, %struct.DCC_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DCC_REC** %2, metadata !1584, metadata !825), !dbg !1585
  %3 = load %struct.DCC_REC*, %struct.DCC_REC** %2, align 8, !dbg !1586
  %4 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i32 1, %struct.DCC_REC* %3), !dbg !1587
  %5 = load %struct.DCC_REC*, %struct.DCC_REC** %2, align 8, !dbg !1588
  call void @dcc_destroy(%struct.DCC_REC* %5), !dbg !1589
  ret void, !dbg !1590
}

; Function Attrs: nounwind uwtable
define void @dcc_reject(%struct.DCC_REC*, %struct._IRC_SERVER_REC*) #0 !dbg !1591 {
  %3 = alloca %struct.DCC_REC*, align 8
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  store %struct.DCC_REC* %0, %struct.DCC_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.DCC_REC** %3, metadata !1594, metadata !825), !dbg !1595
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !1596, metadata !825), !dbg !1597
  br label %5, !dbg !1598, !llvm.loop !1599

; <label>:5:                                      ; preds = %2
  %6 = load %struct.DCC_REC*, %struct.DCC_REC** %3, align 8, !dbg !1600
  %7 = icmp ne %struct.DCC_REC* %6, null, !dbg !1604
  br i1 %7, label %8, label %9, !dbg !1600

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !1605

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.dcc_reject, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0)), !dbg !1608
  br label %44, !dbg !1611

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !1612

; <label>:11:                                     ; preds = %10
  %12 = load %struct.DCC_REC*, %struct.DCC_REC** %3, align 8, !dbg !1614
  %13 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i32 1, %struct.DCC_REC* %12), !dbg !1615
  %14 = load %struct.DCC_REC*, %struct.DCC_REC** %3, align 8, !dbg !1616
  %15 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %14, i32 0, i32 3, !dbg !1618
  %16 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %15, align 8, !dbg !1618
  %17 = icmp ne %struct._IRC_SERVER_REC* %16, null, !dbg !1619
  br i1 %17, label %18, label %22, !dbg !1620

; <label>:18:                                     ; preds = %11
  %19 = load %struct.DCC_REC*, %struct.DCC_REC** %3, align 8, !dbg !1621
  %20 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %19, i32 0, i32 3, !dbg !1622
  %21 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %20, align 8, !dbg !1622
  store %struct._IRC_SERVER_REC* %21, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1623
  br label %22, !dbg !1624

; <label>:22:                                     ; preds = %18, %11
  %23 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1625
  %24 = icmp ne %struct._IRC_SERVER_REC* %23, null, !dbg !1627
  br i1 %24, label %25, label %42, !dbg !1628

; <label>:25:                                     ; preds = %22
  %26 = load %struct.DCC_REC*, %struct.DCC_REC** %3, align 8, !dbg !1629
  %27 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %26, i32 0, i32 17, !dbg !1631
  %28 = load i64, i64* %27, align 8, !dbg !1631
  %29 = icmp ne i64 %28, 0, !dbg !1632
  br i1 %29, label %42, label %30, !dbg !1633

; <label>:30:                                     ; preds = %25
  %31 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1634
  %32 = load %struct.DCC_REC*, %struct.DCC_REC** %3, align 8, !dbg !1636
  %33 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %32, i32 0, i32 6, !dbg !1637
  %34 = load i8*, i8** %33, align 8, !dbg !1637
  %35 = load %struct.DCC_REC*, %struct.DCC_REC** %3, align 8, !dbg !1638
  %36 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %35, i32 0, i32 1, !dbg !1639
  %37 = load i32, i32* %36, align 4, !dbg !1639
  %38 = call i8* @module_find_id_str(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %37), !dbg !1640
  %39 = load %struct.DCC_REC*, %struct.DCC_REC** %3, align 8, !dbg !1641
  %40 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %39, i32 0, i32 9, !dbg !1642
  %41 = load i8*, i8** %40, align 8, !dbg !1642
  call void (%struct._IRC_SERVER_REC*, i8*, ...) @irc_send_cmdv(%struct._IRC_SERVER_REC* %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i32 0, i32 0), i8* %34, i8* %38, i8* %41), !dbg !1643
  br label %42, !dbg !1644

; <label>:42:                                     ; preds = %30, %25, %22
  %43 = load %struct.DCC_REC*, %struct.DCC_REC** %3, align 8, !dbg !1645
  call void @dcc_close(%struct.DCC_REC* %43), !dbg !1646
  br label %44, !dbg !1647

; <label>:44:                                     ; preds = %42, %9
  ret void, !dbg !1648
}

declare void @irc_send_cmdv(%struct._IRC_SERVER_REC*, i8*, ...) #2

declare i8* @module_find_id_str(i8*, i32) #2

; Function Attrs: nounwind uwtable
define void @irc_dcc_init() #0 !dbg !1650 {
  store %struct._GSList* null, %struct._GSList** @dcc_conns, align 8, !dbg !1651
  %1 = call i32 @g_timeout_add(i32 1000, i32 (i8*)* bitcast (i32 ()* @dcc_timeout_func to i32 (i8*)*), i8* null), !dbg !1652
  store i32 %1, i32* @dcc_timeouttag, align 4, !dbg !1653
  call void @settings_add_str_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0)), !dbg !1654
  call void @settings_add_time_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0)), !dbg !1655
  call void @settings_add_str_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i32 0, i32 0)), !dbg !1656
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @sig_connected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1657
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @sig_server_disconnected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1658
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @sig_server_nick_changed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1659
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*)* @ctcp_msg to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1660
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*)* @ctcp_reply to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1661
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*, %struct.DCC_REC*)* @ctcp_msg_dcc to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1662
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*)* @ctcp_reply_dcc to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1663
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, %struct.DCC_REC*)* @ctcp_reply_dcc_reject to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1664
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_no_such_nick to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1665
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, i8*)* @cmd_dcc to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1666
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @cmd_dcc_close to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1667
  call void @dcc_chat_init(), !dbg !1668
  call void @dcc_get_init(), !dbg !1669
  call void @dcc_send_init(), !dbg !1670
  call void @dcc_resume_init(), !dbg !1671
  call void @dcc_autoget_init(), !dbg !1672
  call void @dcc_server_init(), !dbg !1673
  call void @settings_check_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0)), !dbg !1674
  %2 = call %struct.MODULE_FILE_REC* @module_register_full(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0)), !dbg !1675
  ret void, !dbg !1676
}

declare i32 @g_timeout_add(i32, i32 (i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @dcc_timeout_func() #0 !dbg !1677 {
  %1 = alloca %struct._GSList*, align 8
  %2 = alloca %struct._GSList*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.DCC_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %1, metadata !1680, metadata !825), !dbg !1681
  call void @llvm.dbg.declare(metadata %struct._GSList** %2, metadata !1682, metadata !825), !dbg !1683
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1684, metadata !825), !dbg !1685
  %5 = call i64 @time(i64* null) #7, !dbg !1686
  %6 = call i32 @settings_get_time(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0)), !dbg !1687
  %7 = sdiv i32 %6, 1000, !dbg !1689
  %8 = sext i32 %7 to i64, !dbg !1690
  %9 = sub nsw i64 %5, %8, !dbg !1691
  store i64 %9, i64* %3, align 8, !dbg !1692
  %10 = load %struct._GSList*, %struct._GSList** @dcc_conns, align 8, !dbg !1693
  store %struct._GSList* %10, %struct._GSList** %1, align 8, !dbg !1695
  br label %11, !dbg !1696

; <label>:11:                                     ; preds = %43, %0
  %12 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1697
  %13 = icmp ne %struct._GSList* %12, null, !dbg !1700
  br i1 %13, label %14, label %45, !dbg !1701

; <label>:14:                                     ; preds = %11
  call void @llvm.dbg.declare(metadata %struct.DCC_REC** %4, metadata !1702, metadata !825), !dbg !1704
  %15 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1705
  %16 = getelementptr inbounds %struct._GSList, %struct._GSList* %15, i32 0, i32 0, !dbg !1706
  %17 = load i8*, i8** %16, align 8, !dbg !1706
  %18 = bitcast i8* %17 to %struct.DCC_REC*, !dbg !1705
  store %struct.DCC_REC* %18, %struct.DCC_REC** %4, align 8, !dbg !1704
  %19 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1707
  %20 = getelementptr inbounds %struct._GSList, %struct._GSList* %19, i32 0, i32 1, !dbg !1708
  %21 = load %struct._GSList*, %struct._GSList** %20, align 8, !dbg !1708
  store %struct._GSList* %21, %struct._GSList** %2, align 8, !dbg !1709
  %22 = load %struct.DCC_REC*, %struct.DCC_REC** %4, align 8, !dbg !1710
  %23 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %22, i32 0, i32 15, !dbg !1712
  %24 = load i32, i32* %23, align 4, !dbg !1712
  %25 = icmp eq i32 %24, -1, !dbg !1713
  br i1 %25, label %26, label %42, !dbg !1714

; <label>:26:                                     ; preds = %14
  %27 = load i64, i64* %3, align 8, !dbg !1715
  %28 = load %struct.DCC_REC*, %struct.DCC_REC** %4, align 8, !dbg !1717
  %29 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %28, i32 0, i32 2, !dbg !1718
  %30 = load i64, i64* %29, align 8, !dbg !1718
  %31 = icmp sgt i64 %27, %30, !dbg !1719
  br i1 %31, label %32, label %42, !dbg !1720

; <label>:32:                                     ; preds = %26
  %33 = load %struct.DCC_REC*, %struct.DCC_REC** %4, align 8, !dbg !1721
  %34 = bitcast %struct.DCC_REC* %33 to i8*, !dbg !1721
  %35 = call i8* @module_check_cast_module(i8* %34, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0)), !dbg !1723
  %36 = bitcast i8* %35 to %struct.SERVER_DCC_REC*, !dbg !1724
  %37 = icmp ne %struct.SERVER_DCC_REC* %36, null, !dbg !1724
  br i1 %37, label %38, label %39, !dbg !1725

; <label>:38:                                     ; preds = %32
  br i1 false, label %40, label %42, !dbg !1726

; <label>:39:                                     ; preds = %32
  br i1 false, label %42, label %40, !dbg !1728

; <label>:40:                                     ; preds = %39, %38
  %41 = load %struct.DCC_REC*, %struct.DCC_REC** %4, align 8, !dbg !1730
  call void @dcc_close(%struct.DCC_REC* %41), !dbg !1732
  br label %42, !dbg !1733

; <label>:42:                                     ; preds = %40, %39, %38, %26, %14
  br label %43, !dbg !1734

; <label>:43:                                     ; preds = %42
  %44 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !1735
  store %struct._GSList* %44, %struct._GSList** %1, align 8, !dbg !1737
  br label %11, !dbg !1738, !llvm.loop !1739

; <label>:45:                                     ; preds = %11
  ret i32 1, !dbg !1741
}

declare void @settings_add_str_module(i8*, i8*, i8*, i8*) #2

declare void @settings_add_time_module(i8*, i8*, i8*, i8*) #2

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @sig_connected(%struct._IRC_SERVER_REC*) #0 !dbg !1742 {
  %2 = alloca %struct._IRC_SERVER_REC*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct.DCC_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %2, metadata !1745, metadata !825), !dbg !1746
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !1747, metadata !825), !dbg !1748
  br label %5, !dbg !1749, !llvm.loop !1750

; <label>:5:                                      ; preds = %1
  %6 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1751
  %7 = icmp ne %struct._IRC_SERVER_REC* %6, null, !dbg !1755
  br i1 %7, label %8, label %9, !dbg !1751

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !1756

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.sig_connected, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0)), !dbg !1759
  br label %57, !dbg !1762

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !1763

; <label>:11:                                     ; preds = %10
  %12 = load %struct._GSList*, %struct._GSList** @dcc_conns, align 8, !dbg !1765
  store %struct._GSList* %12, %struct._GSList** %3, align 8, !dbg !1767
  br label %13, !dbg !1768

; <label>:13:                                     ; preds = %53, %11
  %14 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1769
  %15 = icmp ne %struct._GSList* %14, null, !dbg !1772
  br i1 %15, label %16, label %57, !dbg !1773

; <label>:16:                                     ; preds = %13
  call void @llvm.dbg.declare(metadata %struct.DCC_REC** %4, metadata !1774, metadata !825), !dbg !1776
  %17 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1777
  %18 = getelementptr inbounds %struct._GSList, %struct._GSList* %17, i32 0, i32 0, !dbg !1778
  %19 = load i8*, i8** %18, align 8, !dbg !1778
  %20 = bitcast i8* %19 to %struct.DCC_REC*, !dbg !1777
  store %struct.DCC_REC* %20, %struct.DCC_REC** %4, align 8, !dbg !1776
  %21 = load %struct.DCC_REC*, %struct.DCC_REC** %4, align 8, !dbg !1779
  %22 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %21, i32 0, i32 3, !dbg !1781
  %23 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %22, align 8, !dbg !1781
  %24 = icmp eq %struct._IRC_SERVER_REC* %23, null, !dbg !1782
  br i1 %24, label %25, label %52, !dbg !1783

; <label>:25:                                     ; preds = %16
  %26 = load %struct.DCC_REC*, %struct.DCC_REC** %4, align 8, !dbg !1784
  %27 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %26, i32 0, i32 4, !dbg !1786
  %28 = load i8*, i8** %27, align 8, !dbg !1786
  %29 = icmp ne i8* %28, null, !dbg !1787
  br i1 %29, label %30, label %52, !dbg !1788

; <label>:30:                                     ; preds = %25
  %31 = load %struct.DCC_REC*, %struct.DCC_REC** %4, align 8, !dbg !1789
  %32 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %31, i32 0, i32 4, !dbg !1790
  %33 = load i8*, i8** %32, align 8, !dbg !1790
  %34 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1791
  %35 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %34, i32 0, i32 6, !dbg !1792
  %36 = load i8*, i8** %35, align 8, !dbg !1792
  %37 = call i32 @g_ascii_strcasecmp(i8* %33, i8* %36), !dbg !1793
  %38 = icmp eq i32 %37, 0, !dbg !1794
  br i1 %38, label %39, label %52, !dbg !1795

; <label>:39:                                     ; preds = %30
  %40 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1797
  %41 = load %struct.DCC_REC*, %struct.DCC_REC** %4, align 8, !dbg !1799
  %42 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %41, i32 0, i32 3, !dbg !1800
  store %struct._IRC_SERVER_REC* %40, %struct._IRC_SERVER_REC** %42, align 8, !dbg !1801
  %43 = load %struct.DCC_REC*, %struct.DCC_REC** %4, align 8, !dbg !1802
  %44 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %43, i32 0, i32 5, !dbg !1803
  %45 = load i8*, i8** %44, align 8, !dbg !1803
  call void @g_free(i8* %45), !dbg !1804
  %46 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1805
  %47 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %46, i32 0, i32 7, !dbg !1806
  %48 = load i8*, i8** %47, align 8, !dbg !1806
  %49 = call noalias i8* @g_strdup(i8* %48), !dbg !1807
  %50 = load %struct.DCC_REC*, %struct.DCC_REC** %4, align 8, !dbg !1808
  %51 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %50, i32 0, i32 5, !dbg !1809
  store i8* %49, i8** %51, align 8, !dbg !1810
  br label %52, !dbg !1811

; <label>:52:                                     ; preds = %39, %30, %25, %16
  br label %53, !dbg !1812

; <label>:53:                                     ; preds = %52
  %54 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1813
  %55 = getelementptr inbounds %struct._GSList, %struct._GSList* %54, i32 0, i32 1, !dbg !1815
  %56 = load %struct._GSList*, %struct._GSList** %55, align 8, !dbg !1815
  store %struct._GSList* %56, %struct._GSList** %3, align 8, !dbg !1816
  br label %13, !dbg !1817, !llvm.loop !1818

; <label>:57:                                     ; preds = %9, %13
  ret void, !dbg !1820
}

; Function Attrs: nounwind uwtable
define internal void @sig_server_disconnected(%struct._IRC_SERVER_REC*) #0 !dbg !1821 {
  %2 = alloca %struct._IRC_SERVER_REC*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct.DCC_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %2, metadata !1822, metadata !825), !dbg !1823
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !1824, metadata !825), !dbg !1825
  br label %5, !dbg !1826, !llvm.loop !1827

; <label>:5:                                      ; preds = %1
  %6 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1828
  %7 = icmp ne %struct._IRC_SERVER_REC* %6, null, !dbg !1832
  br i1 %7, label %8, label %9, !dbg !1828

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !1833

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.sig_server_disconnected, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0)), !dbg !1836
  br label %34, !dbg !1839

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !1840

; <label>:11:                                     ; preds = %10
  %12 = load %struct._GSList*, %struct._GSList** @dcc_conns, align 8, !dbg !1842
  store %struct._GSList* %12, %struct._GSList** %3, align 8, !dbg !1844
  br label %13, !dbg !1845

; <label>:13:                                     ; preds = %30, %11
  %14 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1846
  %15 = icmp ne %struct._GSList* %14, null, !dbg !1849
  br i1 %15, label %16, label %34, !dbg !1850

; <label>:16:                                     ; preds = %13
  call void @llvm.dbg.declare(metadata %struct.DCC_REC** %4, metadata !1851, metadata !825), !dbg !1853
  %17 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1854
  %18 = getelementptr inbounds %struct._GSList, %struct._GSList* %17, i32 0, i32 0, !dbg !1855
  %19 = load i8*, i8** %18, align 8, !dbg !1855
  %20 = bitcast i8* %19 to %struct.DCC_REC*, !dbg !1854
  store %struct.DCC_REC* %20, %struct.DCC_REC** %4, align 8, !dbg !1853
  %21 = load %struct.DCC_REC*, %struct.DCC_REC** %4, align 8, !dbg !1856
  %22 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %21, i32 0, i32 3, !dbg !1858
  %23 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %22, align 8, !dbg !1858
  %24 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1859
  %25 = icmp eq %struct._IRC_SERVER_REC* %23, %24, !dbg !1860
  br i1 %25, label %26, label %29, !dbg !1861

; <label>:26:                                     ; preds = %16
  %27 = load %struct.DCC_REC*, %struct.DCC_REC** %4, align 8, !dbg !1862
  %28 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %27, i32 0, i32 3, !dbg !1863
  store %struct._IRC_SERVER_REC* null, %struct._IRC_SERVER_REC** %28, align 8, !dbg !1864
  br label %29, !dbg !1862

; <label>:29:                                     ; preds = %26, %16
  br label %30, !dbg !1865

; <label>:30:                                     ; preds = %29
  %31 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1866
  %32 = getelementptr inbounds %struct._GSList, %struct._GSList* %31, i32 0, i32 1, !dbg !1868
  %33 = load %struct._GSList*, %struct._GSList** %32, align 8, !dbg !1868
  store %struct._GSList* %33, %struct._GSList** %3, align 8, !dbg !1869
  br label %13, !dbg !1870, !llvm.loop !1871

; <label>:34:                                     ; preds = %9, %13
  ret void, !dbg !1873
}

; Function Attrs: nounwind uwtable
define internal void @sig_server_nick_changed(%struct._IRC_SERVER_REC*) #0 !dbg !1874 {
  %2 = alloca %struct._IRC_SERVER_REC*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct.DCC_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %2, metadata !1875, metadata !825), !dbg !1876
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !1877, metadata !825), !dbg !1878
  %5 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1879
  %6 = bitcast %struct._IRC_SERVER_REC* %5 to i8*, !dbg !1879
  %7 = call i8* @module_check_cast(i8* %6, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0)), !dbg !1881
  %8 = bitcast i8* %7 to %struct._SERVER_REC*, !dbg !1882
  %9 = bitcast %struct._SERVER_REC* %8 to i8*, !dbg !1883
  %10 = call i8* @chat_protocol_check_cast(i8* %9, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0)), !dbg !1884
  %11 = bitcast i8* %10 to %struct._IRC_SERVER_REC*, !dbg !1886
  %12 = icmp ne %struct._IRC_SERVER_REC* %11, null, !dbg !1886
  br i1 %12, label %13, label %14, !dbg !1887

; <label>:13:                                     ; preds = %1
  br i1 false, label %15, label %16, !dbg !1888

; <label>:14:                                     ; preds = %1
  br i1 false, label %16, label %15, !dbg !1890

; <label>:15:                                     ; preds = %14, %13
  br label %46, !dbg !1892

; <label>:16:                                     ; preds = %14, %13
  %17 = load %struct._GSList*, %struct._GSList** @dcc_conns, align 8, !dbg !1894
  store %struct._GSList* %17, %struct._GSList** %3, align 8, !dbg !1896
  br label %18, !dbg !1897

; <label>:18:                                     ; preds = %42, %16
  %19 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1898
  %20 = icmp ne %struct._GSList* %19, null, !dbg !1901
  br i1 %20, label %21, label %46, !dbg !1902

; <label>:21:                                     ; preds = %18
  call void @llvm.dbg.declare(metadata %struct.DCC_REC** %4, metadata !1903, metadata !825), !dbg !1905
  %22 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1906
  %23 = getelementptr inbounds %struct._GSList, %struct._GSList* %22, i32 0, i32 0, !dbg !1907
  %24 = load i8*, i8** %23, align 8, !dbg !1907
  %25 = bitcast i8* %24 to %struct.DCC_REC*, !dbg !1906
  store %struct.DCC_REC* %25, %struct.DCC_REC** %4, align 8, !dbg !1905
  %26 = load %struct.DCC_REC*, %struct.DCC_REC** %4, align 8, !dbg !1908
  %27 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %26, i32 0, i32 3, !dbg !1910
  %28 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %27, align 8, !dbg !1910
  %29 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1911
  %30 = icmp eq %struct._IRC_SERVER_REC* %28, %29, !dbg !1912
  br i1 %30, label %31, label %41, !dbg !1913

; <label>:31:                                     ; preds = %21
  %32 = load %struct.DCC_REC*, %struct.DCC_REC** %4, align 8, !dbg !1914
  %33 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %32, i32 0, i32 5, !dbg !1916
  %34 = load i8*, i8** %33, align 8, !dbg !1916
  call void @g_free(i8* %34), !dbg !1917
  %35 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1918
  %36 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %35, i32 0, i32 7, !dbg !1919
  %37 = load i8*, i8** %36, align 8, !dbg !1919
  %38 = call noalias i8* @g_strdup(i8* %37), !dbg !1920
  %39 = load %struct.DCC_REC*, %struct.DCC_REC** %4, align 8, !dbg !1921
  %40 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %39, i32 0, i32 5, !dbg !1922
  store i8* %38, i8** %40, align 8, !dbg !1923
  br label %41, !dbg !1924

; <label>:41:                                     ; preds = %31, %21
  br label %42, !dbg !1925

; <label>:42:                                     ; preds = %41
  %43 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1926
  %44 = getelementptr inbounds %struct._GSList, %struct._GSList* %43, i32 0, i32 1, !dbg !1928
  %45 = load %struct._GSList*, %struct._GSList** %44, align 8, !dbg !1928
  store %struct._GSList* %45, %struct._GSList** %3, align 8, !dbg !1929
  br label %18, !dbg !1930, !llvm.loop !1931

; <label>:46:                                     ; preds = %15, %18
  ret void, !dbg !1933
}

; Function Attrs: nounwind uwtable
define internal void @ctcp_msg(%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*) #0 !dbg !1934 {
  %6 = alloca %struct._IRC_SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %6, metadata !1937, metadata !825), !dbg !1938
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1939, metadata !825), !dbg !1940
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1941, metadata !825), !dbg !1942
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1943, metadata !825), !dbg !1944
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1945, metadata !825), !dbg !1946
  %11 = load i8*, i8** %7, align 8, !dbg !1947
  %12 = call i32 @g_ascii_strncasecmp(i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i64 4), !dbg !1949
  %13 = icmp ne i32 %12, 0, !dbg !1950
  br i1 %13, label %14, label %15, !dbg !1951

; <label>:14:                                     ; preds = %5
  br label %24, !dbg !1952

; <label>:15:                                     ; preds = %5
  %16 = load i8*, i8** %7, align 8, !dbg !1953
  %17 = getelementptr inbounds i8, i8* %16, i64 4, !dbg !1953
  store i8* %17, i8** %7, align 8, !dbg !1953
  %18 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1954
  %19 = load i8*, i8** %7, align 8, !dbg !1955
  %20 = load i8*, i8** %8, align 8, !dbg !1956
  %21 = load i8*, i8** %9, align 8, !dbg !1957
  %22 = load i8*, i8** %10, align 8, !dbg !1958
  %23 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0), i32 5, %struct._IRC_SERVER_REC* %18, i8* %19, i8* %20, i8* %21, i8* %22), !dbg !1959
  call void @signal_stop(), !dbg !1960
  br label %24, !dbg !1961

; <label>:24:                                     ; preds = %15, %14
  ret void, !dbg !1962
}

; Function Attrs: nounwind uwtable
define internal void @ctcp_reply(%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*) #0 !dbg !1964 {
  %6 = alloca %struct._IRC_SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %6, metadata !1965, metadata !825), !dbg !1966
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1967, metadata !825), !dbg !1968
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1969, metadata !825), !dbg !1970
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1971, metadata !825), !dbg !1972
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1973, metadata !825), !dbg !1974
  %11 = load i8*, i8** %7, align 8, !dbg !1975
  %12 = call i32 @g_ascii_strncasecmp(i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i64 4), !dbg !1977
  %13 = icmp ne i32 %12, 0, !dbg !1978
  br i1 %13, label %14, label %15, !dbg !1979

; <label>:14:                                     ; preds = %5
  br label %24, !dbg !1980

; <label>:15:                                     ; preds = %5
  %16 = load i8*, i8** %7, align 8, !dbg !1981
  %17 = getelementptr inbounds i8, i8* %16, i64 4, !dbg !1981
  store i8* %17, i8** %7, align 8, !dbg !1981
  %18 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1982
  %19 = load i8*, i8** %7, align 8, !dbg !1983
  %20 = load i8*, i8** %8, align 8, !dbg !1984
  %21 = load i8*, i8** %9, align 8, !dbg !1985
  %22 = load i8*, i8** %10, align 8, !dbg !1986
  %23 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0), i32 5, %struct._IRC_SERVER_REC* %18, i8* %19, i8* %20, i8* %21, i8* %22), !dbg !1987
  call void @signal_stop(), !dbg !1988
  br label %24, !dbg !1989

; <label>:24:                                     ; preds = %15, %14
  ret void, !dbg !1990
}

; Function Attrs: nounwind uwtable
define internal void @ctcp_msg_dcc(%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*, %struct.DCC_REC*) #0 !dbg !1992 {
  %7 = alloca %struct._IRC_SERVER_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.DCC_REC*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %7, metadata !1995, metadata !825), !dbg !1996
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1997, metadata !825), !dbg !1998
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1999, metadata !825), !dbg !2000
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2001, metadata !825), !dbg !2002
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2003, metadata !825), !dbg !2004
  store %struct.DCC_REC* %5, %struct.DCC_REC** %12, align 8
  call void @llvm.dbg.declare(metadata %struct.DCC_REC** %12, metadata !2005, metadata !825), !dbg !2006
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2007, metadata !825), !dbg !2008
  call void @llvm.dbg.declare(metadata i8** %14, metadata !2009, metadata !825), !dbg !2010
  %15 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %7, align 8, !dbg !2011
  %16 = bitcast %struct._IRC_SERVER_REC* %15 to i8*, !dbg !2011
  %17 = call i8* @module_check_cast(i8* %16, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0)), !dbg !2013
  %18 = bitcast i8* %17 to %struct._SERVER_REC*, !dbg !2014
  %19 = load i8*, i8** %9, align 8, !dbg !2015
  %20 = load i8*, i8** %10, align 8, !dbg !2016
  %21 = load i8*, i8** %11, align 8, !dbg !2017
  %22 = load i8*, i8** %8, align 8, !dbg !2018
  %23 = call i32 @ignore_check(%struct._SERVER_REC* %18, i8* %19, i8* %20, i8* %21, i8* %22, i32 65536), !dbg !2019
  %24 = icmp ne i32 %23, 0, !dbg !2021
  br i1 %24, label %25, label %26, !dbg !2022

; <label>:25:                                     ; preds = %6
  br label %61, !dbg !2023

; <label>:26:                                     ; preds = %6
  %27 = load i8*, i8** %8, align 8, !dbg !2024
  %28 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i32 0, i32 0), i8* %27, i8* null), !dbg !2025
  store i8* %28, i8** %14, align 8, !dbg !2026
  %29 = load i8*, i8** %14, align 8, !dbg !2027
  %30 = getelementptr inbounds i8, i8* %29, i64 13, !dbg !2028
  %31 = call i8* @strchr(i8* %30, i32 32) #8, !dbg !2029
  store i8* %31, i8** %13, align 8, !dbg !2030
  %32 = load i8*, i8** %13, align 8, !dbg !2031
  %33 = icmp ne i8* %32, null, !dbg !2033
  br i1 %33, label %34, label %37, !dbg !2034

; <label>:34:                                     ; preds = %26
  %35 = load i8*, i8** %13, align 8, !dbg !2035
  %36 = getelementptr inbounds i8, i8* %35, i32 1, !dbg !2035
  store i8* %36, i8** %13, align 8, !dbg !2035
  store i8 0, i8* %35, align 1, !dbg !2037
  br label %38, !dbg !2038

; <label>:37:                                     ; preds = %26
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i32 0, i32 0), i8** %13, align 8, !dbg !2039
  br label %38

; <label>:38:                                     ; preds = %37, %34
  %39 = load i8*, i8** %14, align 8, !dbg !2041
  %40 = getelementptr inbounds i8, i8* %39, i64 13, !dbg !2042
  %41 = call i8* @ascii_strdown(i8* %40), !dbg !2043
  %42 = load i8*, i8** %14, align 8, !dbg !2044
  %43 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %7, align 8, !dbg !2046
  %44 = load i8*, i8** %13, align 8, !dbg !2047
  %45 = load i8*, i8** %9, align 8, !dbg !2048
  %46 = load i8*, i8** %10, align 8, !dbg !2049
  %47 = load i8*, i8** %11, align 8, !dbg !2050
  %48 = load %struct.DCC_REC*, %struct.DCC_REC** %12, align 8, !dbg !2051
  %49 = call i32 (i8*, i32, ...) @signal_emit(i8* %42, i32 6, %struct._IRC_SERVER_REC* %43, i8* %44, i8* %45, i8* %46, i8* %47, %struct.DCC_REC* %48), !dbg !2052
  %50 = icmp ne i32 %49, 0, !dbg !2052
  br i1 %50, label %59, label %51, !dbg !2053

; <label>:51:                                     ; preds = %38
  %52 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %7, align 8, !dbg !2054
  %53 = load i8*, i8** %8, align 8, !dbg !2056
  %54 = load i8*, i8** %9, align 8, !dbg !2057
  %55 = load i8*, i8** %10, align 8, !dbg !2058
  %56 = load i8*, i8** %11, align 8, !dbg !2059
  %57 = load %struct.DCC_REC*, %struct.DCC_REC** %12, align 8, !dbg !2060
  %58 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i32 0, i32 0), i32 6, %struct._IRC_SERVER_REC* %52, i8* %53, i8* %54, i8* %55, i8* %56, %struct.DCC_REC* %57), !dbg !2061
  br label %59, !dbg !2062

; <label>:59:                                     ; preds = %51, %38
  %60 = load i8*, i8** %14, align 8, !dbg !2063
  call void @g_free(i8* %60), !dbg !2064
  br label %61, !dbg !2065

; <label>:61:                                     ; preds = %59, %25
  ret void, !dbg !2066
}

; Function Attrs: nounwind uwtable
define internal void @ctcp_reply_dcc(%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*) #0 !dbg !2068 {
  %6 = alloca %struct._IRC_SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %6, metadata !2069, metadata !825), !dbg !2070
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2071, metadata !825), !dbg !2072
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2073, metadata !825), !dbg !2074
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2075, metadata !825), !dbg !2076
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2077, metadata !825), !dbg !2078
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2079, metadata !825), !dbg !2080
  call void @llvm.dbg.declare(metadata i8** %12, metadata !2081, metadata !825), !dbg !2082
  %13 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !2083
  %14 = bitcast %struct._IRC_SERVER_REC* %13 to i8*, !dbg !2083
  %15 = call i8* @module_check_cast(i8* %14, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0)), !dbg !2085
  %16 = bitcast i8* %15 to %struct._SERVER_REC*, !dbg !2086
  %17 = load i8*, i8** %8, align 8, !dbg !2087
  %18 = load i8*, i8** %9, align 8, !dbg !2088
  %19 = load i8*, i8** %10, align 8, !dbg !2089
  %20 = load i8*, i8** %7, align 8, !dbg !2090
  %21 = call i32 @ignore_check(%struct._SERVER_REC* %16, i8* %17, i8* %18, i8* %19, i8* %20, i32 65536), !dbg !2091
  %22 = icmp ne i32 %21, 0, !dbg !2093
  br i1 %22, label %23, label %24, !dbg !2094

; <label>:23:                                     ; preds = %5
  br label %57, !dbg !2095

; <label>:24:                                     ; preds = %5
  %25 = load i8*, i8** %7, align 8, !dbg !2096
  %26 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i32 0, i32 0), i8* %25, i8* null), !dbg !2097
  store i8* %26, i8** %12, align 8, !dbg !2098
  %27 = load i8*, i8** %12, align 8, !dbg !2099
  %28 = getelementptr inbounds i8, i8* %27, i64 15, !dbg !2100
  %29 = call i8* @strchr(i8* %28, i32 32) #8, !dbg !2101
  store i8* %29, i8** %11, align 8, !dbg !2102
  %30 = load i8*, i8** %11, align 8, !dbg !2103
  %31 = icmp ne i8* %30, null, !dbg !2105
  br i1 %31, label %32, label %35, !dbg !2106

; <label>:32:                                     ; preds = %24
  %33 = load i8*, i8** %11, align 8, !dbg !2107
  %34 = getelementptr inbounds i8, i8* %33, i32 1, !dbg !2107
  store i8* %34, i8** %11, align 8, !dbg !2107
  store i8 0, i8* %33, align 1, !dbg !2109
  br label %36, !dbg !2110

; <label>:35:                                     ; preds = %24
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i32 0, i32 0), i8** %11, align 8, !dbg !2111
  br label %36

; <label>:36:                                     ; preds = %35, %32
  %37 = load i8*, i8** %12, align 8, !dbg !2113
  %38 = getelementptr inbounds i8, i8* %37, i64 15, !dbg !2114
  %39 = call i8* @ascii_strdown(i8* %38), !dbg !2115
  %40 = load i8*, i8** %12, align 8, !dbg !2116
  %41 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !2118
  %42 = load i8*, i8** %11, align 8, !dbg !2119
  %43 = load i8*, i8** %8, align 8, !dbg !2120
  %44 = load i8*, i8** %9, align 8, !dbg !2121
  %45 = load i8*, i8** %10, align 8, !dbg !2122
  %46 = call i32 (i8*, i32, ...) @signal_emit(i8* %40, i32 5, %struct._IRC_SERVER_REC* %41, i8* %42, i8* %43, i8* %44, i8* %45), !dbg !2123
  %47 = icmp ne i32 %46, 0, !dbg !2123
  br i1 %47, label %55, label %48, !dbg !2124

; <label>:48:                                     ; preds = %36
  %49 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !2125
  %50 = load i8*, i8** %7, align 8, !dbg !2127
  %51 = load i8*, i8** %8, align 8, !dbg !2128
  %52 = load i8*, i8** %9, align 8, !dbg !2129
  %53 = load i8*, i8** %10, align 8, !dbg !2130
  %54 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.37, i32 0, i32 0), i32 5, %struct._IRC_SERVER_REC* %49, i8* %50, i8* %51, i8* %52, i8* %53), !dbg !2131
  br label %55, !dbg !2132

; <label>:55:                                     ; preds = %48, %36
  %56 = load i8*, i8** %12, align 8, !dbg !2133
  call void @g_free(i8* %56), !dbg !2134
  br label %57, !dbg !2135

; <label>:57:                                     ; preds = %55, %23
  ret void, !dbg !2136
}

; Function Attrs: nounwind uwtable
define internal void @ctcp_reply_dcc_reject(%struct._IRC_SERVER_REC*, i8*, i8*, i8*, %struct.DCC_REC*) #0 !dbg !2138 {
  %6 = alloca %struct._IRC_SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.DCC_REC*, align 8
  %11 = alloca %struct.DCC_REC*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %6, metadata !2141, metadata !825), !dbg !2142
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2143, metadata !825), !dbg !2144
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2145, metadata !825), !dbg !2146
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2147, metadata !825), !dbg !2148
  store %struct.DCC_REC* %4, %struct.DCC_REC** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.DCC_REC** %10, metadata !2149, metadata !825), !dbg !2150
  call void @llvm.dbg.declare(metadata %struct.DCC_REC** %11, metadata !2151, metadata !825), !dbg !2152
  call void @llvm.dbg.declare(metadata i8** %12, metadata !2153, metadata !825), !dbg !2154
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2155, metadata !825), !dbg !2156
  %14 = load i8*, i8** %7, align 8, !dbg !2157
  %15 = call noalias i8* @g_strdup(i8* %14), !dbg !2158
  store i8* %15, i8** %12, align 8, !dbg !2159
  %16 = load i8*, i8** %12, align 8, !dbg !2160
  %17 = call i8* @strchr(i8* %16, i32 32) #8, !dbg !2161
  store i8* %17, i8** %13, align 8, !dbg !2162
  %18 = load i8*, i8** %13, align 8, !dbg !2163
  %19 = icmp ne i8* %18, null, !dbg !2165
  br i1 %19, label %20, label %23, !dbg !2166

; <label>:20:                                     ; preds = %5
  %21 = load i8*, i8** %13, align 8, !dbg !2167
  %22 = getelementptr inbounds i8, i8* %21, i32 1, !dbg !2167
  store i8* %22, i8** %13, align 8, !dbg !2167
  store i8 0, i8* %21, align 1, !dbg !2169
  br label %24, !dbg !2170

; <label>:23:                                     ; preds = %5
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i32 0, i32 0), i8** %13, align 8, !dbg !2171
  br label %24

; <label>:24:                                     ; preds = %23, %20
  %25 = load i8*, i8** %12, align 8, !dbg !2173
  %26 = call i32 @dcc_str2type(i8* %25), !dbg !2174
  %27 = load i8*, i8** %8, align 8, !dbg !2175
  %28 = load i8*, i8** %13, align 8, !dbg !2176
  %29 = call %struct.DCC_REC* @dcc_find_request(i32 %26, i8* %27, i8* %28), !dbg !2177
  store %struct.DCC_REC* %29, %struct.DCC_REC** %11, align 8, !dbg !2179
  %30 = load %struct.DCC_REC*, %struct.DCC_REC** %11, align 8, !dbg !2180
  %31 = icmp ne %struct.DCC_REC* %30, null, !dbg !2182
  br i1 %31, label %32, label %34, !dbg !2183

; <label>:32:                                     ; preds = %24
  %33 = load %struct.DCC_REC*, %struct.DCC_REC** %11, align 8, !dbg !2184
  call void @dcc_close(%struct.DCC_REC* %33), !dbg !2186
  br label %34, !dbg !2186

; <label>:34:                                     ; preds = %32, %24
  %35 = load i8*, i8** %12, align 8, !dbg !2187
  call void @g_free(i8* %35), !dbg !2188
  ret void, !dbg !2189
}

; Function Attrs: nounwind uwtable
define internal void @event_no_such_nick(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !2190 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._GSList*, align 8
  %8 = alloca %struct._GSList*, align 8
  %9 = alloca %struct.DCC_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !2193, metadata !825), !dbg !2194
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2195, metadata !825), !dbg !2196
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2197, metadata !825), !dbg !2198
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2199, metadata !825), !dbg !2200
  call void @llvm.dbg.declare(metadata %struct._GSList** %7, metadata !2201, metadata !825), !dbg !2202
  call void @llvm.dbg.declare(metadata %struct._GSList** %8, metadata !2203, metadata !825), !dbg !2204
  br label %10, !dbg !2205, !llvm.loop !2206

; <label>:10:                                     ; preds = %2
  %11 = load i8*, i8** %4, align 8, !dbg !2207
  %12 = icmp ne i8* %11, null, !dbg !2211
  br i1 %12, label %13, label %14, !dbg !2207

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !2212

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.event_no_such_nick, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i32 0, i32 0)), !dbg !2215
  br label %60, !dbg !2218

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !2219

; <label>:16:                                     ; preds = %15
  %17 = load i8*, i8** %4, align 8, !dbg !2221
  %18 = call i8* (i8*, i32, ...) @event_get_params(i8* %17, i32 2, i8* null, i8** %6), !dbg !2222
  store i8* %18, i8** %5, align 8, !dbg !2223
  %19 = load %struct._GSList*, %struct._GSList** @dcc_conns, align 8, !dbg !2224
  store %struct._GSList* %19, %struct._GSList** %7, align 8, !dbg !2226
  br label %20, !dbg !2227

; <label>:20:                                     ; preds = %56, %16
  %21 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !2228
  %22 = icmp ne %struct._GSList* %21, null, !dbg !2231
  br i1 %22, label %23, label %58, !dbg !2232

; <label>:23:                                     ; preds = %20
  call void @llvm.dbg.declare(metadata %struct.DCC_REC** %9, metadata !2233, metadata !825), !dbg !2235
  %24 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !2236
  %25 = getelementptr inbounds %struct._GSList, %struct._GSList* %24, i32 0, i32 0, !dbg !2237
  %26 = load i8*, i8** %25, align 8, !dbg !2237
  %27 = bitcast i8* %26 to %struct.DCC_REC*, !dbg !2236
  store %struct.DCC_REC* %27, %struct.DCC_REC** %9, align 8, !dbg !2235
  %28 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !2238
  %29 = getelementptr inbounds %struct._GSList, %struct._GSList* %28, i32 0, i32 1, !dbg !2239
  %30 = load %struct._GSList*, %struct._GSList** %29, align 8, !dbg !2239
  store %struct._GSList* %30, %struct._GSList** %8, align 8, !dbg !2240
  %31 = load %struct.DCC_REC*, %struct.DCC_REC** %9, align 8, !dbg !2241
  %32 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %31, i32 0, i32 17, !dbg !2243
  %33 = load i64, i64* %32, align 8, !dbg !2243
  %34 = icmp ne i64 %33, 0, !dbg !2244
  br i1 %34, label %55, label %35, !dbg !2245

; <label>:35:                                     ; preds = %23
  %36 = load %struct.DCC_REC*, %struct.DCC_REC** %9, align 8, !dbg !2246
  %37 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %36, i32 0, i32 3, !dbg !2248
  %38 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %37, align 8, !dbg !2248
  %39 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2249
  %40 = icmp eq %struct._IRC_SERVER_REC* %38, %39, !dbg !2250
  br i1 %40, label %41, label %55, !dbg !2251

; <label>:41:                                     ; preds = %35
  %42 = load %struct.DCC_REC*, %struct.DCC_REC** %9, align 8, !dbg !2252
  %43 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %42, i32 0, i32 6, !dbg !2253
  %44 = load i8*, i8** %43, align 8, !dbg !2253
  %45 = icmp ne i8* %44, null, !dbg !2254
  br i1 %45, label %46, label %55, !dbg !2255

; <label>:46:                                     ; preds = %41
  %47 = load %struct.DCC_REC*, %struct.DCC_REC** %9, align 8, !dbg !2256
  %48 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %47, i32 0, i32 6, !dbg !2257
  %49 = load i8*, i8** %48, align 8, !dbg !2257
  %50 = load i8*, i8** %6, align 8, !dbg !2258
  %51 = call i32 @g_ascii_strcasecmp(i8* %49, i8* %50), !dbg !2259
  %52 = icmp eq i32 %51, 0, !dbg !2260
  br i1 %52, label %53, label %55, !dbg !2261

; <label>:53:                                     ; preds = %46
  %54 = load %struct.DCC_REC*, %struct.DCC_REC** %9, align 8, !dbg !2263
  call void @dcc_close(%struct.DCC_REC* %54), !dbg !2264
  br label %55, !dbg !2264

; <label>:55:                                     ; preds = %53, %46, %41, %35, %23
  br label %56, !dbg !2265

; <label>:56:                                     ; preds = %55
  %57 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !2266
  store %struct._GSList* %57, %struct._GSList** %7, align 8, !dbg !2268
  br label %20, !dbg !2269, !llvm.loop !2270

; <label>:58:                                     ; preds = %20
  %59 = load i8*, i8** %5, align 8, !dbg !2272
  call void @g_free(i8* %59), !dbg !2273
  br label %60, !dbg !2274

; <label>:60:                                     ; preds = %58, %14
  ret void, !dbg !2275
}

declare void @command_bind_full(i8*, i32, i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @cmd_dcc(i8*, %struct._IRC_SERVER_REC*, i8*) #0 !dbg !2277 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2280, metadata !825), !dbg !2281
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !2282, metadata !825), !dbg !2283
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2284, metadata !825), !dbg !2285
  %7 = load i8*, i8** %4, align 8, !dbg !2286
  %8 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2287
  %9 = bitcast %struct._IRC_SERVER_REC* %8 to i8*, !dbg !2287
  %10 = load i8*, i8** %6, align 8, !dbg !2288
  call void @command_runsub(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* %7, i8* %9, i8* %10), !dbg !2289
  ret void, !dbg !2290
}

; Function Attrs: nounwind uwtable
define internal void @cmd_dcc_close(i8*, %struct._IRC_SERVER_REC*) #0 !dbg !2291 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.DCC_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2294, metadata !825), !dbg !2295
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !2296, metadata !825), !dbg !2297
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !2298, metadata !825), !dbg !2299
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !2300, metadata !825), !dbg !2301
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2302, metadata !825), !dbg !2303
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2304, metadata !825), !dbg !2305
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2306, metadata !825), !dbg !2307
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2308, metadata !825), !dbg !2309
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2310, metadata !825), !dbg !2311
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2312, metadata !825), !dbg !2313
  call void @llvm.dbg.declare(metadata i32* %13, metadata !2314, metadata !825), !dbg !2315
  br label %15, !dbg !2316, !llvm.loop !2317

; <label>:15:                                     ; preds = %2
  %16 = load i8*, i8** %3, align 8, !dbg !2318
  %17 = icmp ne i8* %16, null, !dbg !2322
  br i1 %17, label %18, label %19, !dbg !2318

; <label>:18:                                     ; preds = %15
  br label %20, !dbg !2323

; <label>:19:                                     ; preds = %15
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.cmd_dcc_close, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i32 0, i32 0)), !dbg !2326
  br label %103, !dbg !2329

; <label>:20:                                     ; preds = %18
  br label %21, !dbg !2330

; <label>:21:                                     ; preds = %20
  %22 = load i8*, i8** %3, align 8, !dbg !2332
  %23 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %22, i8** %11, i32 8195, i8** %7, i8** %8, i8** %9), !dbg !2334
  %24 = icmp ne i32 %23, 0, !dbg !2334
  br i1 %24, label %26, label %25, !dbg !2335

; <label>:25:                                     ; preds = %21
  br label %103, !dbg !2336

; <label>:26:                                     ; preds = %21
  %27 = load i8*, i8** %8, align 8, !dbg !2337
  %28 = load i8, i8* %27, align 1, !dbg !2339
  %29 = sext i8 %28 to i32, !dbg !2339
  %30 = icmp eq i32 %29, 0, !dbg !2340
  br i1 %30, label %31, label %38, !dbg !2341

; <label>:31:                                     ; preds = %26
  br label %32, !dbg !2342, !llvm.loop !2344

; <label>:32:                                     ; preds = %31
  %33 = load i8*, i8** %11, align 8, !dbg !2346
  call void @cmd_params_free(i8* %33), !dbg !2349
  br label %34, !dbg !2350, !llvm.loop !2351

; <label>:34:                                     ; preds = %32
  %35 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !2353
  call void @signal_stop(), !dbg !2356
  br label %103, !dbg !2358
                                                  ; No predecessors!
  br label %37, !dbg !2359

; <label>:37:                                     ; preds = %36
  br label %38, !dbg !2361

; <label>:38:                                     ; preds = %37, %26
  %39 = load i8*, i8** %7, align 8, !dbg !2363
  %40 = call i8* @ascii_strup(i8* %39), !dbg !2364
  %41 = load i8*, i8** %7, align 8, !dbg !2365
  %42 = call i32 @dcc_str2type(i8* %41), !dbg !2366
  store i32 %42, i32* %13, align 4, !dbg !2367
  %43 = load i32, i32* %13, align 4, !dbg !2368
  %44 = icmp eq i32 %43, -1, !dbg !2370
  br i1 %44, label %45, label %49, !dbg !2371

; <label>:45:                                     ; preds = %38
  %46 = load i8*, i8** %7, align 8, !dbg !2372
  %47 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.40, i32 0, i32 0), i32 1, i8* %46), !dbg !2374
  %48 = load i8*, i8** %11, align 8, !dbg !2375
  call void @cmd_params_free(i8* %48), !dbg !2376
  br label %103, !dbg !2377

; <label>:49:                                     ; preds = %38
  %50 = call i8* @cmd_get_quoted_param(i8** %9), !dbg !2378
  store i8* %50, i8** %10, align 8, !dbg !2379
  store i32 0, i32* %12, align 4, !dbg !2380
  %51 = load %struct._GSList*, %struct._GSList** @dcc_conns, align 8, !dbg !2381
  store %struct._GSList* %51, %struct._GSList** %5, align 8, !dbg !2383
  br label %52, !dbg !2384

; <label>:52:                                     ; preds = %91, %49
  %53 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2385
  %54 = icmp ne %struct._GSList* %53, null, !dbg !2388
  br i1 %54, label %55, label %93, !dbg !2389

; <label>:55:                                     ; preds = %52
  call void @llvm.dbg.declare(metadata %struct.DCC_REC** %14, metadata !2390, metadata !825), !dbg !2392
  %56 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2393
  %57 = getelementptr inbounds %struct._GSList, %struct._GSList* %56, i32 0, i32 0, !dbg !2394
  %58 = load i8*, i8** %57, align 8, !dbg !2394
  %59 = bitcast i8* %58 to %struct.DCC_REC*, !dbg !2393
  store %struct.DCC_REC* %59, %struct.DCC_REC** %14, align 8, !dbg !2392
  %60 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2395
  %61 = getelementptr inbounds %struct._GSList, %struct._GSList* %60, i32 0, i32 1, !dbg !2396
  %62 = load %struct._GSList*, %struct._GSList** %61, align 8, !dbg !2396
  store %struct._GSList* %62, %struct._GSList** %6, align 8, !dbg !2397
  %63 = load %struct.DCC_REC*, %struct.DCC_REC** %14, align 8, !dbg !2398
  %64 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %63, i32 0, i32 0, !dbg !2400
  %65 = load i32, i32* %64, align 8, !dbg !2400
  %66 = load i32, i32* %13, align 4, !dbg !2401
  %67 = icmp eq i32 %65, %66, !dbg !2402
  br i1 %67, label %68, label %90, !dbg !2403

; <label>:68:                                     ; preds = %55
  %69 = load %struct.DCC_REC*, %struct.DCC_REC** %14, align 8, !dbg !2404
  %70 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %69, i32 0, i32 6, !dbg !2406
  %71 = load i8*, i8** %70, align 8, !dbg !2406
  %72 = load i8*, i8** %8, align 8, !dbg !2407
  %73 = call i32 @g_ascii_strcasecmp(i8* %71, i8* %72), !dbg !2408
  %74 = icmp eq i32 %73, 0, !dbg !2409
  br i1 %74, label %75, label %90, !dbg !2410

; <label>:75:                                     ; preds = %68
  %76 = load i8*, i8** %10, align 8, !dbg !2411
  %77 = load i8, i8* %76, align 1, !dbg !2412
  %78 = sext i8 %77 to i32, !dbg !2412
  %79 = icmp eq i32 %78, 0, !dbg !2413
  br i1 %79, label %87, label %80, !dbg !2414

; <label>:80:                                     ; preds = %75
  %81 = load %struct.DCC_REC*, %struct.DCC_REC** %14, align 8, !dbg !2415
  %82 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %81, i32 0, i32 9, !dbg !2416
  %83 = load i8*, i8** %82, align 8, !dbg !2416
  %84 = load i8*, i8** %10, align 8, !dbg !2417
  %85 = call i32 @g_strcmp0(i8* %83, i8* %84), !dbg !2418
  %86 = icmp eq i32 %85, 0, !dbg !2419
  br i1 %86, label %87, label %90, !dbg !2420

; <label>:87:                                     ; preds = %80, %75
  %88 = load %struct.DCC_REC*, %struct.DCC_REC** %14, align 8, !dbg !2422
  %89 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2424
  call void @dcc_reject(%struct.DCC_REC* %88, %struct._IRC_SERVER_REC* %89), !dbg !2425
  store i32 1, i32* %12, align 4, !dbg !2426
  br label %90, !dbg !2427

; <label>:90:                                     ; preds = %87, %80, %68, %55
  br label %91, !dbg !2428

; <label>:91:                                     ; preds = %90
  %92 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !2429
  store %struct._GSList* %92, %struct._GSList** %5, align 8, !dbg !2431
  br label %52, !dbg !2432, !llvm.loop !2433

; <label>:93:                                     ; preds = %52
  %94 = load i32, i32* %12, align 4, !dbg !2435
  %95 = icmp ne i32 %94, 0, !dbg !2435
  br i1 %95, label %101, label %96, !dbg !2437

; <label>:96:                                     ; preds = %93
  %97 = load i8*, i8** %7, align 8, !dbg !2438
  %98 = load i8*, i8** %8, align 8, !dbg !2440
  %99 = load i8*, i8** %9, align 8, !dbg !2441
  %100 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.41, i32 0, i32 0), i32 3, i8* %97, i8* %98, i8* %99), !dbg !2442
  br label %101, !dbg !2443

; <label>:101:                                    ; preds = %96, %93
  %102 = load i8*, i8** %11, align 8, !dbg !2444
  call void @cmd_params_free(i8* %102), !dbg !2445
  br label %103, !dbg !2446

; <label>:103:                                    ; preds = %101, %45, %34, %25, %19
  ret void, !dbg !2447
}

declare void @dcc_chat_init() #2

declare void @dcc_get_init() #2

declare void @dcc_send_init() #2

declare void @dcc_resume_init() #2

declare void @dcc_autoget_init() #2

declare void @dcc_server_init() #2

declare void @settings_check_module(i8*) #2

declare %struct.MODULE_FILE_REC* @module_register_full(i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @irc_dcc_deinit() #0 !dbg !2449 {
  br label %1, !dbg !2450

; <label>:1:                                      ; preds = %4, %0
  %2 = load %struct._GSList*, %struct._GSList** @dcc_conns, align 8, !dbg !2451
  %3 = icmp ne %struct._GSList* %2, null, !dbg !2453
  br i1 %3, label %4, label %9, !dbg !2454

; <label>:4:                                      ; preds = %1
  %5 = load %struct._GSList*, %struct._GSList** @dcc_conns, align 8, !dbg !2455
  %6 = getelementptr inbounds %struct._GSList, %struct._GSList* %5, i32 0, i32 0, !dbg !2456
  %7 = load i8*, i8** %6, align 8, !dbg !2456
  %8 = bitcast i8* %7 to %struct.DCC_REC*, !dbg !2455
  call void @dcc_destroy(%struct.DCC_REC* %8), !dbg !2457
  br label %1, !dbg !2458, !llvm.loop !2460

; <label>:9:                                      ; preds = %1
  call void @dcc_chat_deinit(), !dbg !2461
  call void @dcc_get_deinit(), !dbg !2462
  call void @dcc_send_deinit(), !dbg !2463
  call void @dcc_resume_deinit(), !dbg !2464
  call void @dcc_autoget_deinit(), !dbg !2465
  call void @dcc_server_deinit(), !dbg !2466
  call void @signal_remove_full(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @sig_connected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2467
  call void @signal_remove_full(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @sig_server_disconnected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2468
  call void @signal_remove_full(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @sig_server_nick_changed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2469
  call void @signal_remove_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*)* @ctcp_msg to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2470
  call void @signal_remove_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*)* @ctcp_reply to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2471
  call void @signal_remove_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*, %struct.DCC_REC*)* @ctcp_msg_dcc to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2472
  call void @signal_remove_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*)* @ctcp_reply_dcc to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2473
  call void @signal_remove_full(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, %struct.DCC_REC*)* @ctcp_reply_dcc_reject to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2474
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_no_such_nick to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2475
  call void @command_unbind_full(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, i8*)* @cmd_dcc to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2476
  call void @command_unbind_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @cmd_dcc_close to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2477
  %10 = load i32, i32* @dcc_timeouttag, align 4, !dbg !2478
  %11 = call i32 @g_source_remove(i32 %10), !dbg !2479
  ret void, !dbg !2480
}

declare void @dcc_chat_deinit() #2

declare void @dcc_get_deinit() #2

declare void @dcc_send_deinit() #2

declare void @dcc_resume_deinit() #2

declare void @dcc_autoget_deinit() #2

declare void @dcc_server_deinit() #2

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare void @command_unbind_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare i32 @settings_get_time(i8*) #2

declare i8* @module_check_cast_module(i8*, i32, i8*, i8*) #2

declare i8* @chat_protocol_check_cast(i8*, i32, i8*) #2

declare i8* @module_check_cast(i8*, i32, i8*) #2

declare i32 @g_ascii_strncasecmp(i8*, i8*, i64) #2

declare void @signal_stop() #2

declare i32 @ignore_check(%struct._SERVER_REC*, i8*, i8*, i8*, i8*, i32) #2

declare noalias i8* @g_strconcat(i8*, ...) #2

declare i8* @ascii_strdown(i8*) #2

declare i8* @event_get_params(i8*, i32, ...) #2

declare void @command_runsub(i8*, i8*, i8*, i8*) #2

declare i32 @cmd_get_params(i8*, i8**, i32, ...) #2

declare void @cmd_params_free(i8*) #2

declare i8* @ascii_strup(i8*) #2

declare i8* @cmd_get_quoted_param(i8**) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!817, !818}
!llvm.ident = !{!819}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !87, globals: !812)
!1 = !DIFile(filename: "line164-dcc.o.i", directory: "/home/lichi/Desktop/irssi/task1")
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
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !67, line: 25, size: 32, align: 32, elements: !68)
!67 = !DIFile(filename: "../../../src/core/commands.h", directory: "/home/lichi/Desktop/irssi/task1")
!68 = !{!69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86}
!69 = !DIEnumerator(name: "CMDERR_OPTION_UNKNOWN", value: -3)
!70 = !DIEnumerator(name: "CMDERR_OPTION_AMBIGUOUS", value: -2)
!71 = !DIEnumerator(name: "CMDERR_OPTION_ARG_MISSING", value: -1)
!72 = !DIEnumerator(name: "CMDERR_UNKNOWN", value: 0)
!73 = !DIEnumerator(name: "CMDERR_AMBIGUOUS", value: 1)
!74 = !DIEnumerator(name: "CMDERR_ERRNO", value: 2)
!75 = !DIEnumerator(name: "CMDERR_NOT_ENOUGH_PARAMS", value: 3)
!76 = !DIEnumerator(name: "CMDERR_NOT_CONNECTED", value: 4)
!77 = !DIEnumerator(name: "CMDERR_NOT_JOINED", value: 5)
!78 = !DIEnumerator(name: "CMDERR_CHAN_NOT_FOUND", value: 6)
!79 = !DIEnumerator(name: "CMDERR_CHAN_NOT_SYNCED", value: 7)
!80 = !DIEnumerator(name: "CMDERR_ILLEGAL_PROTO", value: 8)
!81 = !DIEnumerator(name: "CMDERR_NOT_GOOD_IDEA", value: 9)
!82 = !DIEnumerator(name: "CMDERR_INVALID_TIME", value: 10)
!83 = !DIEnumerator(name: "CMDERR_INVALID_CHARSET", value: 11)
!84 = !DIEnumerator(name: "CMDERR_EVAL_MAX_RECURSE", value: 12)
!85 = !DIEnumerator(name: "CMDERR_PROGRAM_NOT_FOUND", value: 13)
!86 = !DIEnumerator(name: "CMDERR_NO_SERVER_DEFINED", value: 14)
!87 = !{!88, !89, !93, !95, !96, !99, !107, !114, !129, !448, !106, !438}
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !91, line: 46, baseType: !92)
!91 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!92 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!95 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !97, line: 45, baseType: !98)
!97 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!98 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64, align: 64)
!101 = !DISubroutineType(types: !102)
!102 = !{!103, !106}
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !91, line: 50, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !91, line: 49, baseType: !105)
!105 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !91, line: 77, baseType: !88)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !108, line: 9, baseType: !109)
!108 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{null, !112, !112, !112, !112, !112, !112}
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64, align: 64)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64, align: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_DCC_REC", file: !116, line: 24, baseType: !117)
!116 = !DIFile(filename: "dcc-server.h", directory: "/home/lichi/Desktop/irssi/task1")
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SERVER_DCC_REC", file: !116, line: 12, size: 1728, align: 64, elements: !118)
!118 = !{!119, !121, !122, !128, !753, !754, !755, !756, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !117, file: !120, line: 1, baseType: !105, size: 32, align: 32)
!120 = !DIFile(filename: "dcc-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!121 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !117, file: !120, line: 2, baseType: !105, size: 32, align: 32, offset: 32)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "created", scope: !117, file: !120, line: 3, baseType: !123, size: 64, align: 64, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !124, line: 75, baseType: !125)
!124 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !126, line: 139, baseType: !127)
!126 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!127 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !117, file: !120, line: 5, baseType: !129, size: 64, align: 64, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_REC", file: !131, line: 6, baseType: !132)
!131 = !DIFile(filename: "../../../src/irc/core/irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_REC", file: !133, line: 42, size: 39168, align: 64, elements: !134)
!133 = !DIFile(filename: "../../../src/irc/core/irc-servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!134 = !{!135, !137, !138, !139, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !410, !411, !415, !416, !417, !421, !426, !427, !428, !429, !430, !431, !432, !433, !440, !441, !442, !443, !444, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !750, !752}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !132, file: !136, line: 3, baseType: !105, size: 32, align: 32)
!136 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!137 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !132, file: !136, line: 4, baseType: !105, size: 32, align: 32, offset: 32)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !132, file: !136, line: 6, baseType: !105, size: 32, align: 32, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !132, file: !136, line: 8, baseType: !140, size: 64, align: 64, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_CONNECT_REC", file: !131, line: 5, baseType: !142)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_CONNECT_REC", file: !133, line: 24, size: 2496, align: 64, elements: !143)
!143 = !{!144, !146, !147, !148, !150, !151, !152, !153, !154, !156, !157, !158, !159, !160, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !142, file: !145, line: 3, baseType: !105, size: 32, align: 32)
!145 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!146 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !142, file: !145, line: 4, baseType: !105, size: 32, align: 32, offset: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !142, file: !145, line: 6, baseType: !105, size: 32, align: 32, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !142, file: !145, line: 9, baseType: !149, size: 64, align: 64, offset: 128)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !142, file: !145, line: 10, baseType: !105, size: 32, align: 32, offset: 192)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !142, file: !145, line: 11, baseType: !149, size: 64, align: 64, offset: 256)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !142, file: !145, line: 11, baseType: !149, size: 64, align: 64, offset: 320)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !142, file: !145, line: 11, baseType: !149, size: 64, align: 64, offset: 384)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !142, file: !145, line: 13, baseType: !155, size: 16, align: 16, offset: 448)
!155 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !142, file: !145, line: 14, baseType: !149, size: 64, align: 64, offset: 512)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !142, file: !145, line: 15, baseType: !149, size: 64, align: 64, offset: 576)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !142, file: !145, line: 16, baseType: !105, size: 32, align: 32, offset: 640)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !142, file: !145, line: 17, baseType: !149, size: 64, align: 64, offset: 704)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !142, file: !145, line: 19, baseType: !161, size: 64, align: 64, offset: 768)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64, align: 64)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !163, line: 99, baseType: !164)
!163 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !165, line: 22, size: 160, align: 32, elements: !166)
!165 = !DIFile(filename: "../../../src/core/network.h", directory: "/home/lichi/Desktop/irssi/task1")
!166 = !{!167, !168}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !164, file: !165, line: 23, baseType: !155, size: 16, align: 16)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !164, file: !165, line: 24, baseType: !169, size: 128, align: 32, offset: 32)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !170, line: 211, size: 128, align: 32, elements: !171)
!170 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/irssi/task1")
!171 = !{!172}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !169, file: !170, line: 220, baseType: !173, size: 128, align: 32)
!173 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !169, file: !170, line: 213, size: 128, align: 32, elements: !174)
!174 = !{!175, !182, !187}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !173, file: !170, line: 215, baseType: !176, size: 128, align: 8)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 128, align: 8, elements: !180)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !178, line: 48, baseType: !179)
!178 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/irssi/task1")
!179 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!180 = !{!181}
!181 = !DISubrange(count: 16)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !173, file: !170, line: 217, baseType: !183, size: 128, align: 16)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 128, align: 16, elements: !185)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !178, line: 49, baseType: !155)
!185 = !{!186}
!186 = !DISubrange(count: 8)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !173, file: !170, line: 218, baseType: !188, size: 128, align: 32)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 128, align: 32, elements: !190)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !178, line: 51, baseType: !98)
!190 = !{!191}
!191 = !DISubrange(count: 4)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !142, file: !145, line: 19, baseType: !161, size: 64, align: 64, offset: 832)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !142, file: !145, line: 21, baseType: !149, size: 64, align: 64, offset: 896)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !142, file: !145, line: 22, baseType: !149, size: 64, align: 64, offset: 960)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !142, file: !145, line: 23, baseType: !149, size: 64, align: 64, offset: 1024)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !142, file: !145, line: 24, baseType: !149, size: 64, align: 64, offset: 1088)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !142, file: !145, line: 26, baseType: !149, size: 64, align: 64, offset: 1152)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !142, file: !145, line: 27, baseType: !149, size: 64, align: 64, offset: 1216)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !142, file: !145, line: 28, baseType: !149, size: 64, align: 64, offset: 1280)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !142, file: !145, line: 29, baseType: !149, size: 64, align: 64, offset: 1344)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !142, file: !145, line: 30, baseType: !149, size: 64, align: 64, offset: 1408)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !142, file: !145, line: 31, baseType: !149, size: 64, align: 64, offset: 1472)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !142, file: !145, line: 32, baseType: !149, size: 64, align: 64, offset: 1536)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !142, file: !145, line: 33, baseType: !149, size: 64, align: 64, offset: 1600)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !142, file: !145, line: 35, baseType: !206, size: 64, align: 64, offset: 1664)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64, align: 64)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !208)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !209)
!209 = !{!210, !211, !342, !343, !348, !349, !350, !351, !352, !361, !362, !363, !367, !368, !369, !370, !371, !372, !373, !374}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !208, file: !4, line: 100, baseType: !104, size: 32, align: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !208, file: !4, line: 101, baseType: !212, size: 64, align: 64, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64, align: 64)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !214)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !215)
!215 = !{!216, !234, !240, !246, !250, !329, !333, !338}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !214, file: !4, line: 133, baseType: !217, size: 64, align: 64)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64, align: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!220, !206, !89, !221, !222, !223}
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !97, line: 66, baseType: !95)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, align: 64)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64, align: 64)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64, align: 64)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !226, line: 42, baseType: !227)
!226 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !226, line: 44, size: 128, align: 64, elements: !228)
!228 = !{!229, !232, !233}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !227, file: !226, line: 46, baseType: !230, size: 32, align: 32)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !231, line: 36, baseType: !96)
!231 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!232 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !227, file: !226, line: 47, baseType: !104, size: 32, align: 32, offset: 32)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !227, file: !226, line: 48, baseType: !89, size: 64, align: 64, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !214, file: !4, line: 138, baseType: !235, size: 64, align: 64, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64, align: 64)
!236 = !DISubroutineType(types: !237)
!237 = !{!220, !206, !238, !221, !222, !223}
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, align: 64)
!239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !214, file: !4, line: 143, baseType: !241, size: 64, align: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64, align: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{!220, !206, !244, !245, !223}
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !97, line: 51, baseType: !127)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !214, file: !4, line: 147, baseType: !247, size: 64, align: 64, offset: 192)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64, align: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{!220, !206, !223}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !214, file: !4, line: 149, baseType: !251, size: 64, align: 64, offset: 256)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64, align: 64)
!252 = !DISubroutineType(types: !253)
!253 = !{!254, !206, !328}
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64, align: 64)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !256)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !257)
!257 = !{!258, !259, !275, !304, !306, !310, !311, !312, !313, !321, !322, !323, !324}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !256, file: !16, line: 174, baseType: !106, size: 64, align: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !256, file: !16, line: 175, baseType: !260, size: 64, align: 64, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !262)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !263)
!263 = !{!264, !268, !269}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !262, file: !16, line: 198, baseType: !265, size: 64, align: 64)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64, align: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{null, !106}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !262, file: !16, line: 199, baseType: !265, size: 64, align: 64, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !262, file: !16, line: 200, baseType: !270, size: 64, align: 64, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{null, !106, !254, !273, !274}
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64, align: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64, align: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !256, file: !16, line: 177, baseType: !276, size: 64, align: 64, offset: 128)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64, align: 64)
!277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !278)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !279)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !280)
!280 = !{!281, !286, !290, !294, !298, !299}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !279, file: !16, line: 216, baseType: !282, size: 64, align: 64)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64, align: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!103, !254, !285}
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64, align: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !279, file: !16, line: 218, baseType: !287, size: 64, align: 64, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64, align: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{!103, !254}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !279, file: !16, line: 219, baseType: !291, size: 64, align: 64, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64, align: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!103, !254, !99, !106}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !279, file: !16, line: 222, baseType: !295, size: 64, align: 64, offset: 192)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64, align: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{null, !254}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !279, file: !16, line: 226, baseType: !99, size: 64, align: 64, offset: 256)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !279, file: !16, line: 227, baseType: !300, size: 64, align: 64, offset: 320)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !301)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64, align: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{null}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !256, file: !16, line: 178, baseType: !305, size: 32, align: 32, offset: 192)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !91, line: 55, baseType: !98)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !256, file: !16, line: 180, baseType: !307, size: 64, align: 64, offset: 256)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64, align: 64)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !309)
!309 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !256, file: !16, line: 182, baseType: !104, size: 32, align: 32, offset: 320)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !256, file: !16, line: 183, baseType: !305, size: 32, align: 32, offset: 352)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !256, file: !16, line: 184, baseType: !305, size: 32, align: 32, offset: 384)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !256, file: !16, line: 186, baseType: !314, size: 64, align: 64, offset: 448)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64, align: 64)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !316, line: 37, baseType: !317)
!316 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !316, line: 39, size: 128, align: 64, elements: !318)
!318 = !{!319, !320}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !317, file: !316, line: 41, baseType: !106, size: 64, align: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !317, file: !316, line: 42, baseType: !314, size: 64, align: 64, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !256, file: !16, line: 188, baseType: !254, size: 64, align: 64, offset: 512)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !256, file: !16, line: 189, baseType: !254, size: 64, align: 64, offset: 576)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !256, file: !16, line: 191, baseType: !149, size: 64, align: 64, offset: 640)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !256, file: !16, line: 193, baseType: !325, size: 64, align: 64, offset: 704)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64, align: 64)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !327)
!327 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !214, file: !4, line: 151, baseType: !330, size: 64, align: 64, offset: 320)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64, align: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !206}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !214, file: !4, line: 152, baseType: !334, size: 64, align: 64, offset: 384)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64, align: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{!220, !206, !337, !223}
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !214, file: !4, line: 155, baseType: !339, size: 64, align: 64, offset: 448)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64, align: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{!337, !206}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !208, file: !4, line: 103, baseType: !89, size: 64, align: 64, offset: 128)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !208, file: !4, line: 104, baseType: !344, size: 64, align: 64, offset: 192)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !345, line: 77, baseType: !346)
!345 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64, align: 64)
!347 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !345, line: 77, flags: DIFlagFwdDecl)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !208, file: !4, line: 105, baseType: !344, size: 64, align: 64, offset: 256)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !208, file: !4, line: 106, baseType: !89, size: 64, align: 64, offset: 320)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !208, file: !4, line: 107, baseType: !305, size: 32, align: 32, offset: 384)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !208, file: !4, line: 109, baseType: !221, size: 64, align: 64, offset: 448)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !208, file: !4, line: 110, baseType: !353, size: 64, align: 64, offset: 512)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64, align: 64)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !355, line: 39, baseType: !356)
!355 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !355, line: 41, size: 192, align: 64, elements: !357)
!357 = !{!358, !359, !360}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !356, file: !355, line: 43, baseType: !89, size: 64, align: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !356, file: !355, line: 44, baseType: !221, size: 64, align: 64, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !356, file: !355, line: 45, baseType: !221, size: 64, align: 64, offset: 128)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !208, file: !4, line: 111, baseType: !353, size: 64, align: 64, offset: 576)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !208, file: !4, line: 112, baseType: !353, size: 64, align: 64, offset: 640)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !208, file: !4, line: 113, baseType: !364, size: 48, align: 8, offset: 704)
!364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 48, align: 8, elements: !365)
!365 = !{!366}
!366 = !DISubrange(count: 6)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !208, file: !4, line: 117, baseType: !305, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !208, file: !4, line: 118, baseType: !305, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !208, file: !4, line: 119, baseType: !305, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !208, file: !4, line: 120, baseType: !305, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !208, file: !4, line: 121, baseType: !305, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !208, file: !4, line: 122, baseType: !305, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !208, file: !4, line: 124, baseType: !106, size: 64, align: 64, offset: 768)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !208, file: !4, line: 125, baseType: !106, size: 64, align: 64, offset: 832)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !142, file: !145, line: 38, baseType: !98, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !142, file: !145, line: 39, baseType: !98, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !142, file: !145, line: 40, baseType: !98, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !142, file: !145, line: 41, baseType: !98, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !142, file: !145, line: 42, baseType: !98, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !142, file: !145, line: 43, baseType: !98, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !142, file: !145, line: 44, baseType: !98, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !142, file: !145, line: 45, baseType: !98, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !142, file: !145, line: 46, baseType: !149, size: 64, align: 64, offset: 1792)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !142, file: !145, line: 47, baseType: !149, size: 64, align: 64, offset: 1856)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !142, file: !133, line: 27, baseType: !149, size: 64, align: 64, offset: 1920)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_nick", scope: !142, file: !133, line: 28, baseType: !149, size: 64, align: 64, offset: 1984)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !142, file: !133, line: 30, baseType: !105, size: 32, align: 32, offset: 2048)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_username", scope: !142, file: !133, line: 31, baseType: !149, size: 64, align: 64, offset: 2112)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !142, file: !133, line: 32, baseType: !149, size: 64, align: 64, offset: 2176)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !142, file: !133, line: 34, baseType: !105, size: 32, align: 32, offset: 2240)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !142, file: !133, line: 35, baseType: !105, size: 32, align: 32, offset: 2272)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !142, file: !133, line: 36, baseType: !105, size: 32, align: 32, offset: 2304)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks", scope: !142, file: !133, line: 38, baseType: !105, size: 32, align: 32, offset: 2336)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !142, file: !133, line: 38, baseType: !105, size: 32, align: 32, offset: 2368)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes", scope: !142, file: !133, line: 38, baseType: !105, size: 32, align: 32, offset: 2400)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois", scope: !142, file: !133, line: 38, baseType: !105, size: 32, align: 32, offset: 2432)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !132, file: !136, line: 9, baseType: !123, size: 64, align: 64, offset: 192)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !132, file: !136, line: 10, baseType: !123, size: 64, align: 64, offset: 256)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !132, file: !136, line: 12, baseType: !149, size: 64, align: 64, offset: 320)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !132, file: !136, line: 13, baseType: !149, size: 64, align: 64, offset: 384)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !132, file: !136, line: 15, baseType: !98, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !132, file: !136, line: 16, baseType: !98, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !132, file: !136, line: 17, baseType: !98, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !132, file: !136, line: 18, baseType: !98, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !132, file: !136, line: 19, baseType: !98, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !132, file: !136, line: 21, baseType: !407, size: 64, align: 64, offset: 512)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64, align: 64)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !163, line: 102, baseType: !409)
!409 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !163, line: 102, flags: DIFlagFwdDecl)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !132, file: !136, line: 22, baseType: !105, size: 32, align: 32, offset: 576)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !132, file: !136, line: 25, baseType: !412, size: 128, align: 64, offset: 640)
!412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 128, align: 64, elements: !413)
!413 = !{!414}
!414 = !DISubrange(count: 2)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !132, file: !136, line: 26, baseType: !105, size: 32, align: 32, offset: 768)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !132, file: !136, line: 27, baseType: !105, size: 32, align: 32, offset: 800)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !132, file: !136, line: 29, baseType: !418, size: 64, align: 64, offset: 832)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64, align: 64)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !163, line: 103, baseType: !420)
!420 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !163, line: 103, flags: DIFlagFwdDecl)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !132, file: !136, line: 30, baseType: !422, size: 64, align: 64, offset: 896)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64, align: 64)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !424, line: 37, baseType: !425)
!424 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!425 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !424, line: 37, flags: DIFlagFwdDecl)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !132, file: !136, line: 32, baseType: !149, size: 64, align: 64, offset: 960)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !132, file: !136, line: 33, baseType: !149, size: 64, align: 64, offset: 1024)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !132, file: !136, line: 34, baseType: !149, size: 64, align: 64, offset: 1088)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !132, file: !136, line: 35, baseType: !98, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !132, file: !136, line: 36, baseType: !98, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !132, file: !136, line: 37, baseType: !98, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !132, file: !136, line: 38, baseType: !98, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !132, file: !136, line: 40, baseType: !434, size: 128, align: 64, offset: 1216)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !91, line: 504, baseType: !435)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !91, line: 506, size: 128, align: 64, elements: !436)
!436 = !{!437, !439}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !435, file: !91, line: 508, baseType: !438, size: 64, align: 64)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !91, line: 48, baseType: !127)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !435, file: !91, line: 509, baseType: !438, size: 64, align: 64, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !132, file: !136, line: 41, baseType: !123, size: 64, align: 64, offset: 1344)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !132, file: !136, line: 42, baseType: !105, size: 32, align: 32, offset: 1408)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !132, file: !136, line: 44, baseType: !314, size: 64, align: 64, offset: 1472)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !132, file: !136, line: 45, baseType: !314, size: 64, align: 64, offset: 1536)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !132, file: !136, line: 53, baseType: !445, size: 64, align: 64, offset: 1600)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64, align: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{null, !448, !93, !105}
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64, align: 64)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !163, line: 107, baseType: !450)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !451, line: 30, size: 2240, align: 64, elements: !452)
!451 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!452 = !{!453, !454, !455, !456, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !532, !536, !540, !544, !549, !626, !633, !637}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !450, file: !136, line: 3, baseType: !105, size: 32, align: 32)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !450, file: !136, line: 4, baseType: !105, size: 32, align: 32, offset: 32)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !450, file: !136, line: 6, baseType: !105, size: 32, align: 32, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !450, file: !136, line: 8, baseType: !457, size: 64, align: 64, offset: 128)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64, align: 64)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !163, line: 113, baseType: !459)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !451, line: 25, size: 1920, align: 64, elements: !460)
!460 = !{!461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !459, file: !145, line: 3, baseType: !105, size: 32, align: 32)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !459, file: !145, line: 4, baseType: !105, size: 32, align: 32, offset: 32)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !459, file: !145, line: 6, baseType: !105, size: 32, align: 32, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !459, file: !145, line: 9, baseType: !149, size: 64, align: 64, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !459, file: !145, line: 10, baseType: !105, size: 32, align: 32, offset: 192)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !459, file: !145, line: 11, baseType: !149, size: 64, align: 64, offset: 256)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !459, file: !145, line: 11, baseType: !149, size: 64, align: 64, offset: 320)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !459, file: !145, line: 11, baseType: !149, size: 64, align: 64, offset: 384)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !459, file: !145, line: 13, baseType: !155, size: 16, align: 16, offset: 448)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !459, file: !145, line: 14, baseType: !149, size: 64, align: 64, offset: 512)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !459, file: !145, line: 15, baseType: !149, size: 64, align: 64, offset: 576)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !459, file: !145, line: 16, baseType: !105, size: 32, align: 32, offset: 640)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !459, file: !145, line: 17, baseType: !149, size: 64, align: 64, offset: 704)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !459, file: !145, line: 19, baseType: !161, size: 64, align: 64, offset: 768)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !459, file: !145, line: 19, baseType: !161, size: 64, align: 64, offset: 832)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !459, file: !145, line: 21, baseType: !149, size: 64, align: 64, offset: 896)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !459, file: !145, line: 22, baseType: !149, size: 64, align: 64, offset: 960)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !459, file: !145, line: 23, baseType: !149, size: 64, align: 64, offset: 1024)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !459, file: !145, line: 24, baseType: !149, size: 64, align: 64, offset: 1088)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !459, file: !145, line: 26, baseType: !149, size: 64, align: 64, offset: 1152)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !459, file: !145, line: 27, baseType: !149, size: 64, align: 64, offset: 1216)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !459, file: !145, line: 28, baseType: !149, size: 64, align: 64, offset: 1280)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !459, file: !145, line: 29, baseType: !149, size: 64, align: 64, offset: 1344)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !459, file: !145, line: 30, baseType: !149, size: 64, align: 64, offset: 1408)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !459, file: !145, line: 31, baseType: !149, size: 64, align: 64, offset: 1472)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !459, file: !145, line: 32, baseType: !149, size: 64, align: 64, offset: 1536)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !459, file: !145, line: 33, baseType: !149, size: 64, align: 64, offset: 1600)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !459, file: !145, line: 35, baseType: !206, size: 64, align: 64, offset: 1664)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !459, file: !145, line: 38, baseType: !98, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !459, file: !145, line: 39, baseType: !98, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !459, file: !145, line: 40, baseType: !98, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !459, file: !145, line: 41, baseType: !98, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !459, file: !145, line: 42, baseType: !98, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !459, file: !145, line: 43, baseType: !98, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !459, file: !145, line: 44, baseType: !98, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !459, file: !145, line: 45, baseType: !98, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !459, file: !145, line: 46, baseType: !149, size: 64, align: 64, offset: 1792)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !459, file: !145, line: 47, baseType: !149, size: 64, align: 64, offset: 1856)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !450, file: !136, line: 9, baseType: !123, size: 64, align: 64, offset: 192)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !450, file: !136, line: 10, baseType: !123, size: 64, align: 64, offset: 256)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !450, file: !136, line: 12, baseType: !149, size: 64, align: 64, offset: 320)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !450, file: !136, line: 13, baseType: !149, size: 64, align: 64, offset: 384)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !450, file: !136, line: 15, baseType: !98, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !450, file: !136, line: 16, baseType: !98, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !450, file: !136, line: 17, baseType: !98, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !450, file: !136, line: 18, baseType: !98, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !450, file: !136, line: 19, baseType: !98, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !450, file: !136, line: 21, baseType: !407, size: 64, align: 64, offset: 512)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !450, file: !136, line: 22, baseType: !105, size: 32, align: 32, offset: 576)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !450, file: !136, line: 25, baseType: !412, size: 128, align: 64, offset: 640)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !450, file: !136, line: 26, baseType: !105, size: 32, align: 32, offset: 768)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !450, file: !136, line: 27, baseType: !105, size: 32, align: 32, offset: 800)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !450, file: !136, line: 29, baseType: !418, size: 64, align: 64, offset: 832)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !450, file: !136, line: 30, baseType: !422, size: 64, align: 64, offset: 896)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !450, file: !136, line: 32, baseType: !149, size: 64, align: 64, offset: 960)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !450, file: !136, line: 33, baseType: !149, size: 64, align: 64, offset: 1024)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !450, file: !136, line: 34, baseType: !149, size: 64, align: 64, offset: 1088)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !450, file: !136, line: 35, baseType: !98, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !450, file: !136, line: 36, baseType: !98, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !450, file: !136, line: 37, baseType: !98, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !450, file: !136, line: 38, baseType: !98, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !450, file: !136, line: 40, baseType: !434, size: 128, align: 64, offset: 1216)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !450, file: !136, line: 41, baseType: !123, size: 64, align: 64, offset: 1344)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !450, file: !136, line: 42, baseType: !105, size: 32, align: 32, offset: 1408)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !450, file: !136, line: 44, baseType: !314, size: 64, align: 64, offset: 1472)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !450, file: !136, line: 45, baseType: !314, size: 64, align: 64, offset: 1536)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !450, file: !136, line: 53, baseType: !445, size: 64, align: 64, offset: 1600)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !450, file: !136, line: 55, baseType: !529, size: 64, align: 64, offset: 1664)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64, align: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{!105, !448, !92}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !450, file: !136, line: 57, baseType: !533, size: 64, align: 64, offset: 1728)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64, align: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!105, !448, !93}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !450, file: !136, line: 60, baseType: !537, size: 64, align: 64, offset: 1792)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64, align: 64)
!538 = !DISubroutineType(types: !539)
!539 = !{!93, !448}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !450, file: !136, line: 62, baseType: !541, size: 64, align: 64, offset: 1856)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64, align: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{null, !448, !93, !93, !105}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !450, file: !136, line: 65, baseType: !545, size: 64, align: 64, offset: 1920)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64, align: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!548, !448, !93, !93}
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64, align: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !450, file: !136, line: 69, baseType: !550, size: 64, align: 64, offset: 1984)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64, align: 64)
!551 = !DISubroutineType(types: !552)
!552 = !{!553, !448, !93}
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64, align: 64)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !163, line: 109, baseType: !555)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !556, line: 15, size: 1408, align: 64, elements: !557)
!556 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!557 = !{!558, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !576, !580, !582, !583, !584, !585, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !555, file: !559, line: 3, baseType: !105, size: 32, align: 32)
!559 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!560 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !555, file: !559, line: 4, baseType: !105, size: 32, align: 32, offset: 32)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !555, file: !559, line: 5, baseType: !422, size: 64, align: 64, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !555, file: !559, line: 7, baseType: !88, size: 64, align: 64, offset: 128)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !555, file: !559, line: 8, baseType: !448, size: 64, align: 64, offset: 192)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !555, file: !559, line: 9, baseType: !149, size: 64, align: 64, offset: 256)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !555, file: !559, line: 10, baseType: !149, size: 64, align: 64, offset: 320)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !555, file: !559, line: 11, baseType: !123, size: 64, align: 64, offset: 384)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !555, file: !559, line: 12, baseType: !105, size: 32, align: 32, offset: 448)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !555, file: !559, line: 13, baseType: !149, size: 64, align: 64, offset: 512)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !555, file: !559, line: 15, baseType: !570, size: 64, align: 64, offset: 576)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64, align: 64)
!571 = !DISubroutineType(types: !572)
!572 = !{null, !573}
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64, align: 64)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !163, line: 108, baseType: !575)
!575 = !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !163, line: 108, flags: DIFlagFwdDecl)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !555, file: !559, line: 17, baseType: !577, size: 64, align: 64, offset: 640)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64, align: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!93, !573}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !555, file: !581, line: 5, baseType: !149, size: 64, align: 64, offset: 704)
!581 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!582 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !555, file: !581, line: 6, baseType: !149, size: 64, align: 64, offset: 768)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !555, file: !581, line: 7, baseType: !123, size: 64, align: 64, offset: 832)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !555, file: !581, line: 9, baseType: !422, size: 64, align: 64, offset: 896)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !555, file: !581, line: 10, baseType: !586, size: 64, align: 64, offset: 960)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64, align: 64)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !163, line: 111, baseType: !588)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !589, line: 13, size: 576, align: 64, elements: !590)
!589 = !DIFile(filename: "../../../src/core/nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!590 = !{!591, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !607, !608}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !588, file: !592, line: 3, baseType: !105, size: 32, align: 32)
!592 = !DIFile(filename: "../../../src/core/nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!593 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !588, file: !592, line: 4, baseType: !105, size: 32, align: 32, offset: 32)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !588, file: !592, line: 6, baseType: !123, size: 64, align: 64, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !588, file: !592, line: 8, baseType: !149, size: 64, align: 64, offset: 128)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !588, file: !592, line: 9, baseType: !149, size: 64, align: 64, offset: 192)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !588, file: !592, line: 10, baseType: !149, size: 64, align: 64, offset: 256)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !588, file: !592, line: 11, baseType: !105, size: 32, align: 32, offset: 320)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !588, file: !592, line: 14, baseType: !98, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !588, file: !592, line: 15, baseType: !98, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !588, file: !592, line: 18, baseType: !98, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !588, file: !592, line: 19, baseType: !98, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !588, file: !592, line: 20, baseType: !98, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !588, file: !592, line: 21, baseType: !98, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !588, file: !592, line: 22, baseType: !606, size: 64, align: 8, offset: 360)
!606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 64, align: 8, elements: !185)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !588, file: !592, line: 26, baseType: !88, size: 64, align: 64, offset: 448)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !588, file: !592, line: 28, baseType: !586, size: 64, align: 64, offset: 512)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !555, file: !581, line: 12, baseType: !98, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !555, file: !581, line: 13, baseType: !149, size: 64, align: 64, offset: 1088)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !555, file: !581, line: 14, baseType: !105, size: 32, align: 32, offset: 1152)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !555, file: !581, line: 15, baseType: !149, size: 64, align: 64, offset: 1216)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !555, file: !581, line: 17, baseType: !98, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !555, file: !581, line: 18, baseType: !98, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !555, file: !581, line: 19, baseType: !98, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !555, file: !581, line: 20, baseType: !98, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !555, file: !581, line: 22, baseType: !98, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !555, file: !581, line: 23, baseType: !98, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !555, file: !581, line: 24, baseType: !98, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !555, file: !581, line: 25, baseType: !98, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !555, file: !581, line: 26, baseType: !98, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !555, file: !581, line: 31, baseType: !623, size: 64, align: 64, offset: 1344)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64, align: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{!149, !553}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !450, file: !136, line: 70, baseType: !627, size: 64, align: 64, offset: 2048)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64, align: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!630, !448, !93}
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64, align: 64)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !163, line: 110, baseType: !632)
!632 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !163, line: 110, flags: DIFlagFwdDecl)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !450, file: !136, line: 71, baseType: !634, size: 64, align: 64, offset: 2112)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64, align: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{!105, !93, !93}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !450, file: !136, line: 73, baseType: !634, size: 64, align: 64, offset: 2176)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !132, file: !136, line: 55, baseType: !529, size: 64, align: 64, offset: 1664)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !132, file: !136, line: 57, baseType: !533, size: 64, align: 64, offset: 1728)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !132, file: !136, line: 60, baseType: !537, size: 64, align: 64, offset: 1792)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !132, file: !136, line: 62, baseType: !541, size: 64, align: 64, offset: 1856)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !132, file: !136, line: 65, baseType: !545, size: 64, align: 64, offset: 1920)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !132, file: !136, line: 69, baseType: !550, size: 64, align: 64, offset: 1984)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !132, file: !136, line: 70, baseType: !627, size: 64, align: 64, offset: 2048)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !132, file: !136, line: 71, baseType: !634, size: 64, align: 64, offset: 2112)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !132, file: !136, line: 73, baseType: !634, size: 64, align: 64, offset: 2176)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "redirects", scope: !132, file: !133, line: 46, baseType: !314, size: 64, align: 64, offset: 2240)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_queue", scope: !132, file: !133, line: 47, baseType: !314, size: 64, align: 64, offset: 2304)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_next", scope: !132, file: !133, line: 48, baseType: !650, size: 64, align: 64, offset: 2368)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64, align: 64)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "REDIRECT_REC", file: !131, line: 8, baseType: !652)
!652 = !DICompositeType(tag: DW_TAG_structure_type, name: "_REDIRECT_REC", file: !131, line: 8, flags: DIFlagFwdDecl)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_active", scope: !132, file: !133, line: 49, baseType: !314, size: 64, align: 64, offset: 2432)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "last_nick", scope: !132, file: !133, line: 51, baseType: !149, size: 64, align: 64, offset: 2496)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !132, file: !133, line: 53, baseType: !149, size: 64, align: 64, offset: 2560)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !132, file: !133, line: 54, baseType: !149, size: 64, align: 64, offset: 2624)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "wanted_usermode", scope: !132, file: !133, line: 55, baseType: !149, size: 64, align: 64, offset: 2688)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "userhost", scope: !132, file: !133, line: 56, baseType: !149, size: 64, align: 64, offset: 2752)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "channels_formed", scope: !132, file: !133, line: 57, baseType: !105, size: 32, align: 32, offset: 2816)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "whois_found", scope: !132, file: !133, line: 59, baseType: !98, size: 1, align: 32, offset: 2848, flags: DIFlagBitField, extraData: i64 2848)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "whowas_found", scope: !132, file: !133, line: 60, baseType: !98, size: 1, align: 32, offset: 2849, flags: DIFlagBitField, extraData: i64 2848)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "emode_known", scope: !132, file: !133, line: 62, baseType: !98, size: 1, align: 32, offset: 2850, flags: DIFlagBitField, extraData: i64 2848)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_mode", scope: !132, file: !133, line: 63, baseType: !98, size: 1, align: 32, offset: 2851, flags: DIFlagBitField, extraData: i64 2848)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_who", scope: !132, file: !133, line: 64, baseType: !98, size: 1, align: 32, offset: 2852, flags: DIFlagBitField, extraData: i64 2848)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "one_endofwho", scope: !132, file: !133, line: 65, baseType: !98, size: 1, align: 32, offset: 2853, flags: DIFlagBitField, extraData: i64 2848)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "disable_lag", scope: !132, file: !133, line: 66, baseType: !98, size: 1, align: 32, offset: 2854, flags: DIFlagBitField, extraData: i64 2848)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "nick_collision", scope: !132, file: !133, line: 67, baseType: !98, size: 1, align: 32, offset: 2855, flags: DIFlagBitField, extraData: i64 2848)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "motd_got", scope: !132, file: !133, line: 68, baseType: !98, size: 1, align: 32, offset: 2856, flags: DIFlagBitField, extraData: i64 2848)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "isupport_sent", scope: !132, file: !133, line: 69, baseType: !98, size: 1, align: 32, offset: 2857, flags: DIFlagBitField, extraData: i64 2848)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "cap_complete", scope: !132, file: !133, line: 70, baseType: !98, size: 1, align: 32, offset: 2858, flags: DIFlagBitField, extraData: i64 2848)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "cap_in_multiline", scope: !132, file: !133, line: 71, baseType: !98, size: 1, align: 32, offset: 2859, flags: DIFlagBitField, extraData: i64 2848)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_success", scope: !132, file: !133, line: 72, baseType: !98, size: 1, align: 32, offset: 2860, flags: DIFlagBitField, extraData: i64 2848)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks_in_cmd", scope: !132, file: !133, line: 74, baseType: !105, size: 32, align: 32, offset: 2880)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes_in_cmd", scope: !132, file: !133, line: 75, baseType: !105, size: 32, align: 32, offset: 2912)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois_in_cmd", scope: !132, file: !133, line: 76, baseType: !105, size: 32, align: 32, offset: 2944)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs_in_cmd", scope: !132, file: !133, line: 77, baseType: !105, size: 32, align: 32, offset: 2976)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "cap_supported", scope: !132, file: !133, line: 79, baseType: !422, size: 64, align: 64, offset: 3008)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "cap_active", scope: !132, file: !133, line: 80, baseType: !314, size: 64, align: 64, offset: 3072)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "cap_queue", scope: !132, file: !133, line: 81, baseType: !314, size: 64, align: 64, offset: 3136)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_buffer", scope: !132, file: !133, line: 83, baseType: !353, size: 64, align: 64, offset: 3200)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_timeout", scope: !132, file: !133, line: 84, baseType: !305, size: 32, align: 32, offset: 3264)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcount", scope: !132, file: !133, line: 87, baseType: !105, size: 32, align: 32, offset: 3296)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "cmdqueue", scope: !132, file: !133, line: 91, baseType: !314, size: 64, align: 64, offset: 3328)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "wait_cmd", scope: !132, file: !133, line: 92, baseType: !434, size: 128, align: 64, offset: 3392)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd", scope: !132, file: !133, line: 93, baseType: !434, size: 128, align: 64, offset: 3520)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !132, file: !133, line: 95, baseType: !105, size: 32, align: 32, offset: 3648)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !132, file: !133, line: 96, baseType: !105, size: 32, align: 32, offset: 3680)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !132, file: !133, line: 97, baseType: !105, size: 32, align: 32, offset: 3712)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "idles", scope: !132, file: !133, line: 100, baseType: !314, size: 64, align: 64, offset: 3776)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "ctcpqueue", scope: !132, file: !133, line: 103, baseType: !314, size: 64, align: 64, offset: 3840)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "knockoutlist", scope: !132, file: !133, line: 106, baseType: !314, size: 64, align: 64, offset: 3904)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "splits", scope: !132, file: !133, line: 108, baseType: !422, size: 64, align: 64, offset: 3968)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "split_servers", scope: !132, file: !133, line: 109, baseType: !314, size: 64, align: 64, offset: 4032)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "rejoin_channels", scope: !132, file: !133, line: 111, baseType: !314, size: 64, align: 64, offset: 4096)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "chanqueries", scope: !132, file: !133, line: 114, baseType: !88, size: 64, align: 64, offset: 4160)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "isupport", scope: !132, file: !133, line: 116, baseType: !422, size: 64, align: 64, offset: 4224)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !132, file: !133, line: 117, baseType: !698, size: 32768, align: 64, offset: 4288)
!698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !699, size: 32768, align: 64, elements: !748)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "modes_type", file: !700, line: 10, size: 128, align: 64, elements: !701)
!700 = !DIFile(filename: "../../../src/irc/core/modes.h", directory: "/home/lichi/Desktop/irssi/task1")
!701 = !{!702, !747}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !699, file: !700, line: 11, baseType: !703, size: 64, align: 64)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64, align: 64)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_func_t", file: !700, line: 7, baseType: !705)
!705 = !DISubroutineType(types: !706)
!706 = !{null, !707, !93, !92, !92, !149, !353}
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64, align: 64)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_CHANNEL_REC", file: !131, line: 7, baseType: !709)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_CHANNEL_REC", file: !710, line: 15, size: 1600, align: 64, elements: !711)
!710 = !DIFile(filename: "../../../src/irc/core/irc-channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!711 = !{!712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !709, file: !559, line: 3, baseType: !105, size: 32, align: 32)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !709, file: !559, line: 4, baseType: !105, size: 32, align: 32, offset: 32)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !709, file: !559, line: 5, baseType: !422, size: 64, align: 64, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !709, file: !559, line: 7, baseType: !88, size: 64, align: 64, offset: 128)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !709, file: !559, line: 8, baseType: !129, size: 64, align: 64, offset: 192)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !709, file: !559, line: 9, baseType: !149, size: 64, align: 64, offset: 256)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !709, file: !559, line: 10, baseType: !149, size: 64, align: 64, offset: 320)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !709, file: !559, line: 11, baseType: !123, size: 64, align: 64, offset: 384)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !709, file: !559, line: 12, baseType: !105, size: 32, align: 32, offset: 448)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !709, file: !559, line: 13, baseType: !149, size: 64, align: 64, offset: 512)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !709, file: !559, line: 15, baseType: !570, size: 64, align: 64, offset: 576)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !709, file: !559, line: 17, baseType: !577, size: 64, align: 64, offset: 640)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !709, file: !581, line: 5, baseType: !149, size: 64, align: 64, offset: 704)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !709, file: !581, line: 6, baseType: !149, size: 64, align: 64, offset: 768)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !709, file: !581, line: 7, baseType: !123, size: 64, align: 64, offset: 832)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !709, file: !581, line: 9, baseType: !422, size: 64, align: 64, offset: 896)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !709, file: !581, line: 10, baseType: !586, size: 64, align: 64, offset: 960)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !709, file: !581, line: 12, baseType: !98, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !709, file: !581, line: 13, baseType: !149, size: 64, align: 64, offset: 1088)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !709, file: !581, line: 14, baseType: !105, size: 32, align: 32, offset: 1152)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !709, file: !581, line: 15, baseType: !149, size: 64, align: 64, offset: 1216)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !709, file: !581, line: 17, baseType: !98, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !709, file: !581, line: 18, baseType: !98, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !709, file: !581, line: 19, baseType: !98, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !709, file: !581, line: 20, baseType: !98, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !709, file: !581, line: 22, baseType: !98, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !709, file: !581, line: 23, baseType: !98, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !709, file: !581, line: 24, baseType: !98, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !709, file: !581, line: 25, baseType: !98, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !709, file: !581, line: 26, baseType: !98, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !709, file: !581, line: 31, baseType: !623, size: 64, align: 64, offset: 1344)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "banlist", scope: !709, file: !710, line: 18, baseType: !314, size: 64, align: 64, offset: 1408)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "massjoin_start", scope: !709, file: !710, line: 20, baseType: !123, size: 64, align: 64, offset: 1472)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "massjoins", scope: !709, file: !710, line: 21, baseType: !105, size: 32, align: 32, offset: 1536)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "last_massjoins", scope: !709, file: !710, line: 22, baseType: !105, size: 32, align: 32, offset: 1568)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !699, file: !700, line: 12, baseType: !92, size: 8, align: 8, offset: 64)
!748 = !{!749}
!749 = !DISubrange(count: 256)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !132, file: !133, line: 118, baseType: !751, size: 2048, align: 8, offset: 37056)
!751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 2048, align: 8, elements: !748)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "nick_comp_func", scope: !132, file: !133, line: 120, baseType: !634, size: 64, align: 64, offset: 39104)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !117, file: !120, line: 6, baseType: !149, size: 64, align: 64, offset: 192)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "mynick", scope: !117, file: !120, line: 7, baseType: !149, size: 64, align: 64, offset: 256)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !117, file: !120, line: 8, baseType: !149, size: 64, align: 64, offset: 320)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "chat", scope: !117, file: !120, line: 10, baseType: !757, size: 64, align: 64, offset: 384)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64, align: 64)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHAT_DCC_REC", file: !759, line: 9, baseType: !760)
!759 = !DIFile(filename: "dcc.h", directory: "/home/lichi/Desktop/irssi/task1")
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CHAT_DCC_REC", file: !761, line: 12, size: 1792, align: 64, elements: !762)
!761 = !DIFile(filename: "dcc-chat.h", directory: "/home/lichi/Desktop/irssi/task1")
!762 = !{!763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !778, !779, !780, !781, !782, !783, !784, !786, !787, !788, !789, !790, !791, !792}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !760, file: !120, line: 1, baseType: !105, size: 32, align: 32)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !760, file: !120, line: 2, baseType: !105, size: 32, align: 32, offset: 32)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "created", scope: !760, file: !120, line: 3, baseType: !123, size: 64, align: 64, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !760, file: !120, line: 5, baseType: !129, size: 64, align: 64, offset: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !760, file: !120, line: 6, baseType: !149, size: 64, align: 64, offset: 192)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "mynick", scope: !760, file: !120, line: 7, baseType: !149, size: 64, align: 64, offset: 256)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !760, file: !120, line: 8, baseType: !149, size: 64, align: 64, offset: 320)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "chat", scope: !760, file: !120, line: 10, baseType: !757, size: 64, align: 64, offset: 384)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !760, file: !120, line: 11, baseType: !149, size: 64, align: 64, offset: 448)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !760, file: !120, line: 12, baseType: !149, size: 64, align: 64, offset: 512)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !760, file: !120, line: 14, baseType: !162, size: 160, align: 32, offset: 576)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "addrstr", scope: !760, file: !120, line: 15, baseType: !775, size: 368, align: 8, offset: 736)
!775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 368, align: 8, elements: !776)
!776 = !{!777}
!777 = !DISubrange(count: 46)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !760, file: !120, line: 16, baseType: !105, size: 32, align: 32, offset: 1120)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !760, file: !120, line: 18, baseType: !206, size: 64, align: 64, offset: 1152)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "tagconn", scope: !760, file: !120, line: 19, baseType: !105, size: 32, align: 32, offset: 1216)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "tagread", scope: !760, file: !120, line: 19, baseType: !105, size: 32, align: 32, offset: 1248)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "tagwrite", scope: !760, file: !120, line: 19, baseType: !105, size: 32, align: 32, offset: 1280)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "starttime", scope: !760, file: !120, line: 20, baseType: !123, size: 64, align: 64, offset: 1344)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "transfd", scope: !760, file: !120, line: 21, baseType: !785, size: 64, align: 64, offset: 1408)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "uoff_t", file: !163, line: 49, baseType: !95)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "pasv_id", scope: !760, file: !120, line: 23, baseType: !105, size: 32, align: 32, offset: 1472)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "destroyed", scope: !760, file: !120, line: 25, baseType: !98, size: 1, align: 32, offset: 1504, flags: DIFlagBitField, extraData: i64 1504)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !760, file: !120, line: 27, baseType: !422, size: 64, align: 64, offset: 1536)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !760, file: !761, line: 15, baseType: !149, size: 64, align: 64, offset: 1600)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "sendbuf", scope: !760, file: !761, line: 16, baseType: !407, size: 64, align: 64, offset: 1664)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "mirc_ctcp", scope: !760, file: !761, line: 18, baseType: !98, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !760, file: !761, line: 19, baseType: !98, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !117, file: !120, line: 11, baseType: !149, size: 64, align: 64, offset: 448)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !117, file: !120, line: 12, baseType: !149, size: 64, align: 64, offset: 512)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !117, file: !120, line: 14, baseType: !162, size: 160, align: 32, offset: 576)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "addrstr", scope: !117, file: !120, line: 15, baseType: !775, size: 368, align: 8, offset: 736)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !117, file: !120, line: 16, baseType: !105, size: 32, align: 32, offset: 1120)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !117, file: !120, line: 18, baseType: !206, size: 64, align: 64, offset: 1152)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "tagconn", scope: !117, file: !120, line: 19, baseType: !105, size: 32, align: 32, offset: 1216)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "tagread", scope: !117, file: !120, line: 19, baseType: !105, size: 32, align: 32, offset: 1248)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "tagwrite", scope: !117, file: !120, line: 19, baseType: !105, size: 32, align: 32, offset: 1280)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "starttime", scope: !117, file: !120, line: 20, baseType: !123, size: 64, align: 64, offset: 1344)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "transfd", scope: !117, file: !120, line: 21, baseType: !785, size: 64, align: 64, offset: 1408)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "pasv_id", scope: !117, file: !120, line: 23, baseType: !105, size: 32, align: 32, offset: 1472)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "destroyed", scope: !117, file: !120, line: 25, baseType: !98, size: 1, align: 32, offset: 1504, flags: DIFlagBitField, extraData: i64 1504)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !117, file: !120, line: 27, baseType: !422, size: 64, align: 64, offset: 1536)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "sendbuf", scope: !117, file: !116, line: 14, baseType: !407, size: 64, align: 64, offset: 1600)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "accept_send", scope: !117, file: !116, line: 16, baseType: !98, size: 1, align: 32, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "accept_chat", scope: !117, file: !116, line: 17, baseType: !98, size: 1, align: 32, offset: 1665, flags: DIFlagBitField, extraData: i64 1664)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "accept_fserve", scope: !117, file: !116, line: 18, baseType: !98, size: 1, align: 32, offset: 1666, flags: DIFlagBitField, extraData: i64 1664)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "connection_established", scope: !117, file: !116, line: 19, baseType: !98, size: 1, align: 32, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!812 = !{!813, !815, !816}
!813 = distinct !DIGlobalVariable(name: "dcc_conns", scope: !0, file: !814, line: 44, type: !314, isLocal: false, isDefinition: true, variable: %struct._GSList** @dcc_conns)
!814 = !DIFile(filename: "dcc.c", directory: "/home/lichi/Desktop/irssi/task1")
!815 = distinct !DIGlobalVariable(name: "dcc_types", scope: !0, file: !814, line: 46, type: !314, isLocal: true, isDefinition: true, variable: %struct._GSList** @dcc_types)
!816 = distinct !DIGlobalVariable(name: "dcc_timeouttag", scope: !0, file: !814, line: 47, type: !105, isLocal: true, isDefinition: true, variable: i32* @dcc_timeouttag)
!817 = !{i32 2, !"Dwarf Version", i32 4}
!818 = !{i32 2, !"Debug Info Version", i32 3}
!819 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!820 = distinct !DISubprogram(name: "dcc_register_type", scope: !814, file: !814, line: 49, type: !821, isLocal: false, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !823)
!821 = !DISubroutineType(types: !822)
!822 = !{null, !93}
!823 = !{}
!824 = !DILocalVariable(name: "type", arg: 1, scope: !820, file: !814, line: 49, type: !93)
!825 = !DIExpression()
!826 = !DILocation(line: 49, column: 36, scope: !820)
!827 = !DILocation(line: 51, column: 36, scope: !820)
!828 = !DILocation(line: 51, column: 56, scope: !820)
!829 = !DILocation(line: 51, column: 47, scope: !820)
!830 = !DILocation(line: 51, column: 21, scope: !831)
!831 = !DILexicalBlockFile(scope: !820, file: !814, discriminator: 1)
!832 = !DILocation(line: 51, column: 19, scope: !820)
!833 = !DILocation(line: 52, column: 1, scope: !820)
!834 = distinct !DISubprogram(name: "dcc_unregister_type", scope: !814, file: !814, line: 54, type: !821, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !823)
!835 = !DILocalVariable(name: "type", arg: 1, scope: !834, file: !814, line: 54, type: !93)
!836 = !DILocation(line: 54, column: 38, scope: !834)
!837 = !DILocalVariable(name: "pos", scope: !834, file: !814, line: 56, type: !314)
!838 = !DILocation(line: 56, column: 10, scope: !834)
!839 = !DILocation(line: 58, column: 27, scope: !834)
!840 = !DILocation(line: 58, column: 38, scope: !834)
!841 = !DILocation(line: 58, column: 8, scope: !834)
!842 = !DILocation(line: 58, column: 6, scope: !834)
!843 = !DILocation(line: 59, column: 6, scope: !844)
!844 = distinct !DILexicalBlock(scope: !834, file: !814, line: 59, column: 6)
!845 = !DILocation(line: 59, column: 10, scope: !844)
!846 = !DILocation(line: 59, column: 6, scope: !834)
!847 = !DILocalVariable(name: "tmp", scope: !848, file: !814, line: 60, type: !88)
!848 = distinct !DILexicalBlock(scope: !844, file: !814, line: 59, column: 18)
!849 = !DILocation(line: 60, column: 9, scope: !848)
!850 = !DILocation(line: 60, column: 15, scope: !848)
!851 = !DILocation(line: 60, column: 20, scope: !848)
!852 = !DILocation(line: 61, column: 30, scope: !848)
!853 = !DILocation(line: 61, column: 41, scope: !848)
!854 = !DILocation(line: 61, column: 46, scope: !848)
!855 = !DILocation(line: 61, column: 15, scope: !848)
!856 = !DILocation(line: 61, column: 13, scope: !848)
!857 = !DILocation(line: 62, column: 10, scope: !848)
!858 = !DILocation(line: 62, column: 3, scope: !848)
!859 = !DILocation(line: 63, column: 2, scope: !848)
!860 = !DILocation(line: 64, column: 1, scope: !834)
!861 = distinct !DISubprogram(name: "dcc_str2type", scope: !814, file: !814, line: 66, type: !862, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !823)
!862 = !DISubroutineType(types: !863)
!863 = !{!105, !93}
!864 = !DILocalVariable(name: "str", arg: 1, scope: !861, file: !814, line: 66, type: !93)
!865 = !DILocation(line: 66, column: 30, scope: !861)
!866 = !DILocation(line: 68, column: 25, scope: !867)
!867 = distinct !DILexicalBlock(scope: !861, file: !814, line: 68, column: 6)
!868 = !DILocation(line: 68, column: 36, scope: !867)
!869 = !DILocation(line: 68, column: 6, scope: !867)
!870 = !DILocation(line: 68, column: 41, scope: !867)
!871 = !DILocation(line: 68, column: 6, scope: !861)
!872 = !DILocation(line: 69, column: 3, scope: !867)
!873 = !DILocation(line: 71, column: 46, scope: !861)
!874 = !DILocation(line: 71, column: 16, scope: !861)
!875 = !DILocation(line: 71, column: 9, scope: !861)
!876 = !DILocation(line: 72, column: 1, scope: !861)
!877 = distinct !DISubprogram(name: "dcc_init_rec", scope: !814, file: !814, line: 75, type: !878, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !823)
!878 = !DISubroutineType(types: !879)
!879 = !{null, !880, !129, !757, !93, !93}
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64, align: 64)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "DCC_REC", file: !759, line: 13, baseType: !882)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !759, line: 11, size: 1600, align: 64, elements: !883)
!883 = !{!884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !882, file: !120, line: 1, baseType: !105, size: 32, align: 32)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !882, file: !120, line: 2, baseType: !105, size: 32, align: 32, offset: 32)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "created", scope: !882, file: !120, line: 3, baseType: !123, size: 64, align: 64, offset: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !882, file: !120, line: 5, baseType: !129, size: 64, align: 64, offset: 128)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !882, file: !120, line: 6, baseType: !149, size: 64, align: 64, offset: 192)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "mynick", scope: !882, file: !120, line: 7, baseType: !149, size: 64, align: 64, offset: 256)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !882, file: !120, line: 8, baseType: !149, size: 64, align: 64, offset: 320)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "chat", scope: !882, file: !120, line: 10, baseType: !757, size: 64, align: 64, offset: 384)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !882, file: !120, line: 11, baseType: !149, size: 64, align: 64, offset: 448)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !882, file: !120, line: 12, baseType: !149, size: 64, align: 64, offset: 512)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !882, file: !120, line: 14, baseType: !162, size: 160, align: 32, offset: 576)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "addrstr", scope: !882, file: !120, line: 15, baseType: !775, size: 368, align: 8, offset: 736)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !882, file: !120, line: 16, baseType: !105, size: 32, align: 32, offset: 1120)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !882, file: !120, line: 18, baseType: !206, size: 64, align: 64, offset: 1152)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "tagconn", scope: !882, file: !120, line: 19, baseType: !105, size: 32, align: 32, offset: 1216)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "tagread", scope: !882, file: !120, line: 19, baseType: !105, size: 32, align: 32, offset: 1248)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "tagwrite", scope: !882, file: !120, line: 19, baseType: !105, size: 32, align: 32, offset: 1280)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "starttime", scope: !882, file: !120, line: 20, baseType: !123, size: 64, align: 64, offset: 1344)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "transfd", scope: !882, file: !120, line: 21, baseType: !785, size: 64, align: 64, offset: 1408)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "pasv_id", scope: !882, file: !120, line: 23, baseType: !105, size: 32, align: 32, offset: 1472)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "destroyed", scope: !882, file: !120, line: 25, baseType: !98, size: 1, align: 32, offset: 1504, flags: DIFlagBitField, extraData: i64 1504)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !882, file: !120, line: 27, baseType: !422, size: 64, align: 64, offset: 1536)
!906 = !DILocalVariable(name: "dcc", arg: 1, scope: !877, file: !814, line: 75, type: !880)
!907 = !DILocation(line: 75, column: 28, scope: !877)
!908 = !DILocalVariable(name: "server", arg: 2, scope: !877, file: !814, line: 75, type: !129)
!909 = !DILocation(line: 75, column: 49, scope: !877)
!910 = !DILocalVariable(name: "chat", arg: 3, scope: !877, file: !814, line: 75, type: !757)
!911 = !DILocation(line: 75, column: 71, scope: !877)
!912 = !DILocalVariable(name: "nick", arg: 4, scope: !877, file: !814, line: 76, type: !93)
!913 = !DILocation(line: 76, column: 17, scope: !877)
!914 = !DILocalVariable(name: "arg", arg: 5, scope: !877, file: !814, line: 76, type: !93)
!915 = !DILocation(line: 76, column: 35, scope: !877)
!916 = !DILocation(line: 78, column: 2, scope: !877)
!917 = distinct !{!917, !916}
!918 = !DILocation(line: 78, column: 10, scope: !919)
!919 = !DILexicalBlockFile(scope: !920, file: !814, discriminator: 1)
!920 = distinct !DILexicalBlock(scope: !921, file: !814, line: 78, column: 10)
!921 = distinct !DILexicalBlock(scope: !877, file: !814, line: 78, column: 4)
!922 = !DILocation(line: 78, column: 14, scope: !919)
!923 = !DILocation(line: 78, column: 5, scope: !924)
!924 = !DILexicalBlockFile(scope: !925, file: !814, discriminator: 2)
!925 = distinct !DILexicalBlock(scope: !920, file: !814, line: 78, column: 3)
!926 = !DILocation(line: 78, column: 14, scope: !927)
!927 = !DILexicalBlockFile(scope: !928, file: !814, discriminator: 3)
!928 = distinct !DILexicalBlock(scope: !920, file: !814, line: 78, column: 12)
!929 = !DILocation(line: 78, column: 98, scope: !927)
!930 = !DILocation(line: 78, column: 109, scope: !931)
!931 = !DILexicalBlockFile(scope: !921, file: !814, discriminator: 4)
!932 = !DILocation(line: 79, column: 2, scope: !877)
!933 = distinct !{!933, !932}
!934 = !DILocation(line: 79, column: 10, scope: !935)
!935 = !DILexicalBlockFile(scope: !936, file: !814, discriminator: 1)
!936 = distinct !DILexicalBlock(scope: !937, file: !814, line: 79, column: 10)
!937 = distinct !DILexicalBlock(scope: !877, file: !814, line: 79, column: 4)
!938 = !DILocation(line: 79, column: 15, scope: !935)
!939 = !DILocation(line: 79, column: 5, scope: !940)
!940 = !DILexicalBlockFile(scope: !941, file: !814, discriminator: 2)
!941 = distinct !DILexicalBlock(scope: !936, file: !814, line: 79, column: 3)
!942 = !DILocation(line: 79, column: 14, scope: !943)
!943 = !DILexicalBlockFile(scope: !944, file: !814, discriminator: 3)
!944 = distinct !DILexicalBlock(scope: !936, file: !814, line: 79, column: 12)
!945 = !DILocation(line: 79, column: 99, scope: !943)
!946 = !DILocation(line: 79, column: 110, scope: !947)
!947 = !DILexicalBlockFile(scope: !937, file: !814, discriminator: 4)
!948 = !DILocation(line: 80, column: 2, scope: !877)
!949 = distinct !{!949, !948}
!950 = !DILocation(line: 80, column: 10, scope: !951)
!951 = !DILexicalBlockFile(scope: !952, file: !814, discriminator: 1)
!952 = distinct !DILexicalBlock(scope: !953, file: !814, line: 80, column: 10)
!953 = distinct !DILexicalBlock(scope: !877, file: !814, line: 80, column: 4)
!954 = !DILocation(line: 80, column: 14, scope: !951)
!955 = !DILocation(line: 80, column: 5, scope: !956)
!956 = !DILexicalBlockFile(scope: !957, file: !814, discriminator: 2)
!957 = distinct !DILexicalBlock(scope: !952, file: !814, line: 80, column: 3)
!958 = !DILocation(line: 80, column: 14, scope: !959)
!959 = !DILexicalBlockFile(scope: !960, file: !814, discriminator: 3)
!960 = distinct !DILexicalBlock(scope: !952, file: !814, line: 80, column: 12)
!961 = !DILocation(line: 80, column: 98, scope: !959)
!962 = !DILocation(line: 80, column: 109, scope: !963)
!963 = !DILexicalBlockFile(scope: !953, file: !814, discriminator: 4)
!964 = !DILocation(line: 82, column: 30, scope: !877)
!965 = !DILocation(line: 82, column: 10, scope: !877)
!966 = !DILocation(line: 82, column: 16, scope: !877)
!967 = !DILocation(line: 82, column: 28, scope: !877)
!968 = !DILocation(line: 83, column: 17, scope: !877)
!969 = !DILocation(line: 83, column: 2, scope: !877)
!970 = !DILocation(line: 83, column: 7, scope: !877)
!971 = !DILocation(line: 83, column: 15, scope: !877)
!972 = !DILocation(line: 84, column: 14, scope: !877)
!973 = !DILocation(line: 84, column: 2, scope: !877)
!974 = !DILocation(line: 84, column: 7, scope: !877)
!975 = !DILocation(line: 84, column: 12, scope: !877)
!976 = !DILocation(line: 85, column: 22, scope: !877)
!977 = !DILocation(line: 85, column: 13, scope: !877)
!978 = !DILocation(line: 85, column: 2, scope: !877)
!979 = !DILocation(line: 85, column: 7, scope: !877)
!980 = !DILocation(line: 85, column: 11, scope: !877)
!981 = !DILocation(line: 86, column: 23, scope: !877)
!982 = !DILocation(line: 86, column: 14, scope: !877)
!983 = !DILocation(line: 86, column: 2, scope: !877)
!984 = !DILocation(line: 86, column: 7, scope: !877)
!985 = !DILocation(line: 86, column: 12, scope: !877)
!986 = !DILocation(line: 87, column: 32, scope: !877)
!987 = !DILocation(line: 87, column: 37, scope: !877)
!988 = !DILocation(line: 87, column: 46, scope: !877)
!989 = !DILocation(line: 87, column: 17, scope: !877)
!990 = !DILocation(line: 87, column: 22, scope: !877)
!991 = !DILocation(line: 87, column: 30, scope: !877)
!992 = !DILocation(line: 87, column: 2, scope: !877)
!993 = !DILocation(line: 87, column: 7, scope: !877)
!994 = !DILocation(line: 87, column: 15, scope: !877)
!995 = !DILocation(line: 88, column: 16, scope: !877)
!996 = !DILocation(line: 88, column: 2, scope: !877)
!997 = !DILocation(line: 88, column: 7, scope: !877)
!998 = !DILocation(line: 88, column: 14, scope: !877)
!999 = !DILocation(line: 89, column: 25, scope: !877)
!1000 = !DILocation(line: 89, column: 32, scope: !877)
!1001 = !DILocation(line: 89, column: 41, scope: !1002)
!1002 = !DILexicalBlockFile(scope: !877, file: !814, discriminator: 1)
!1003 = !DILocation(line: 89, column: 49, scope: !1002)
!1004 = !DILocation(line: 89, column: 25, scope: !1002)
!1005 = !DILocation(line: 90, column: 11, scope: !877)
!1006 = !DILocation(line: 90, column: 16, scope: !877)
!1007 = !DILocation(line: 90, column: 25, scope: !1002)
!1008 = !DILocation(line: 90, column: 31, scope: !1002)
!1009 = !DILocation(line: 90, column: 11, scope: !1002)
!1010 = !DILocation(line: 90, column: 11, scope: !1011)
!1011 = !DILexicalBlockFile(scope: !877, file: !814, discriminator: 2)
!1012 = !DILocation(line: 90, column: 11, scope: !1013)
!1013 = !DILexicalBlockFile(scope: !877, file: !814, discriminator: 3)
!1014 = !DILocation(line: 89, column: 25, scope: !1011)
!1015 = !DILocation(line: 89, column: 25, scope: !1013)
!1016 = !DILocation(line: 89, column: 16, scope: !1013)
!1017 = !DILocation(line: 89, column: 2, scope: !1013)
!1018 = !DILocation(line: 89, column: 7, scope: !1013)
!1019 = !DILocation(line: 89, column: 14, scope: !1013)
!1020 = !DILocation(line: 92, column: 19, scope: !877)
!1021 = !DILocation(line: 92, column: 26, scope: !877)
!1022 = !DILocation(line: 92, column: 44, scope: !1002)
!1023 = !DILocation(line: 92, column: 52, scope: !1002)
!1024 = !DILocation(line: 92, column: 35, scope: !1002)
!1025 = !DILocation(line: 92, column: 19, scope: !1002)
!1026 = !DILocation(line: 93, column: 4, scope: !877)
!1027 = !DILocation(line: 93, column: 9, scope: !877)
!1028 = !DILocation(line: 93, column: 4, scope: !1002)
!1029 = !DILocation(line: 93, column: 34, scope: !1011)
!1030 = !DILocation(line: 93, column: 40, scope: !1011)
!1031 = !DILocation(line: 93, column: 25, scope: !1011)
!1032 = !DILocation(line: 93, column: 4, scope: !1011)
!1033 = !DILocation(line: 93, column: 4, scope: !1013)
!1034 = !DILocation(line: 92, column: 19, scope: !1011)
!1035 = !DILocation(line: 92, column: 19, scope: !1013)
!1036 = !DILocation(line: 92, column: 2, scope: !1013)
!1037 = !DILocation(line: 92, column: 7, scope: !1013)
!1038 = !DILocation(line: 92, column: 17, scope: !1013)
!1039 = !DILocation(line: 95, column: 2, scope: !877)
!1040 = !DILocation(line: 95, column: 7, scope: !877)
!1041 = !DILocation(line: 95, column: 15, scope: !877)
!1042 = !DILocation(line: 97, column: 29, scope: !877)
!1043 = !DILocation(line: 97, column: 40, scope: !877)
!1044 = !DILocation(line: 97, column: 14, scope: !877)
!1045 = !DILocation(line: 97, column: 12, scope: !877)
!1046 = !DILocation(line: 98, column: 32, scope: !877)
!1047 = !DILocation(line: 98, column: 2, scope: !877)
!1048 = !DILocation(line: 99, column: 1, scope: !877)
!1049 = !DILocation(line: 99, column: 1, scope: !1002)
!1050 = distinct !DISubprogram(name: "dcc_destroy", scope: !814, file: !814, line: 102, type: !1051, isLocal: false, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !823)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{null, !880}
!1053 = !DILocalVariable(name: "dcc", arg: 1, scope: !1050, file: !814, line: 102, type: !880)
!1054 = !DILocation(line: 102, column: 27, scope: !1050)
!1055 = !DILocation(line: 104, column: 2, scope: !1050)
!1056 = distinct !{!1056, !1055}
!1057 = !DILocation(line: 104, column: 10, scope: !1058)
!1058 = !DILexicalBlockFile(scope: !1059, file: !814, discriminator: 1)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !814, line: 104, column: 10)
!1060 = distinct !DILexicalBlock(scope: !1050, file: !814, line: 104, column: 4)
!1061 = !DILocation(line: 104, column: 14, scope: !1058)
!1062 = !DILocation(line: 104, column: 5, scope: !1063)
!1063 = !DILexicalBlockFile(scope: !1064, file: !814, discriminator: 2)
!1064 = distinct !DILexicalBlock(scope: !1059, file: !814, line: 104, column: 3)
!1065 = !DILocation(line: 104, column: 14, scope: !1066)
!1066 = !DILexicalBlockFile(scope: !1067, file: !814, discriminator: 3)
!1067 = distinct !DILexicalBlock(scope: !1059, file: !814, line: 104, column: 12)
!1068 = !DILocation(line: 104, column: 98, scope: !1066)
!1069 = !DILocation(line: 104, column: 109, scope: !1070)
!1070 = !DILexicalBlockFile(scope: !1060, file: !814, discriminator: 4)
!1071 = !DILocation(line: 105, column: 6, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1050, file: !814, line: 105, column: 6)
!1073 = !DILocation(line: 105, column: 11, scope: !1072)
!1074 = !DILocation(line: 105, column: 6, scope: !1050)
!1075 = !DILocation(line: 105, column: 22, scope: !1076)
!1076 = !DILexicalBlockFile(scope: !1072, file: !814, discriminator: 1)
!1077 = !DILocation(line: 107, column: 29, scope: !1050)
!1078 = !DILocation(line: 107, column: 40, scope: !1050)
!1079 = !DILocation(line: 107, column: 14, scope: !1050)
!1080 = !DILocation(line: 107, column: 12, scope: !1050)
!1081 = !DILocation(line: 109, column: 2, scope: !1050)
!1082 = !DILocation(line: 109, column: 7, scope: !1050)
!1083 = !DILocation(line: 109, column: 17, scope: !1050)
!1084 = !DILocation(line: 110, column: 34, scope: !1050)
!1085 = !DILocation(line: 110, column: 2, scope: !1050)
!1086 = !DILocation(line: 112, column: 6, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1050, file: !814, line: 112, column: 6)
!1088 = !DILocation(line: 112, column: 11, scope: !1087)
!1089 = !DILocation(line: 112, column: 18, scope: !1087)
!1090 = !DILocation(line: 112, column: 6, scope: !1050)
!1091 = !DILocation(line: 112, column: 41, scope: !1092)
!1092 = !DILexicalBlockFile(scope: !1087, file: !814, discriminator: 1)
!1093 = !DILocation(line: 112, column: 46, scope: !1092)
!1094 = !DILocation(line: 112, column: 26, scope: !1092)
!1095 = !DILocation(line: 113, column: 6, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1050, file: !814, line: 113, column: 6)
!1097 = !DILocation(line: 113, column: 11, scope: !1096)
!1098 = !DILocation(line: 113, column: 19, scope: !1096)
!1099 = !DILocation(line: 113, column: 6, scope: !1050)
!1100 = !DILocation(line: 113, column: 42, scope: !1101)
!1101 = !DILexicalBlockFile(scope: !1096, file: !814, discriminator: 1)
!1102 = !DILocation(line: 113, column: 47, scope: !1101)
!1103 = !DILocation(line: 113, column: 26, scope: !1101)
!1104 = !DILocation(line: 114, column: 6, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1050, file: !814, line: 114, column: 6)
!1106 = !DILocation(line: 114, column: 11, scope: !1105)
!1107 = !DILocation(line: 114, column: 19, scope: !1105)
!1108 = !DILocation(line: 114, column: 6, scope: !1050)
!1109 = !DILocation(line: 114, column: 42, scope: !1110)
!1110 = !DILexicalBlockFile(scope: !1105, file: !814, discriminator: 1)
!1111 = !DILocation(line: 114, column: 47, scope: !1110)
!1112 = !DILocation(line: 114, column: 26, scope: !1110)
!1113 = !DILocation(line: 115, column: 6, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1050, file: !814, line: 115, column: 6)
!1115 = !DILocation(line: 115, column: 11, scope: !1114)
!1116 = !DILocation(line: 115, column: 20, scope: !1114)
!1117 = !DILocation(line: 115, column: 6, scope: !1050)
!1118 = !DILocation(line: 115, column: 43, scope: !1119)
!1119 = !DILexicalBlockFile(scope: !1114, file: !814, discriminator: 1)
!1120 = !DILocation(line: 115, column: 48, scope: !1119)
!1121 = !DILocation(line: 115, column: 27, scope: !1119)
!1122 = !DILocation(line: 117, column: 31, scope: !1050)
!1123 = !DILocation(line: 117, column: 37, scope: !1050)
!1124 = !DILocation(line: 117, column: 9, scope: !1050)
!1125 = !DILocation(line: 118, column: 9, scope: !1050)
!1126 = !DILocation(line: 118, column: 14, scope: !1050)
!1127 = !DILocation(line: 118, column: 2, scope: !1050)
!1128 = !DILocation(line: 119, column: 9, scope: !1050)
!1129 = !DILocation(line: 119, column: 14, scope: !1050)
!1130 = !DILocation(line: 119, column: 2, scope: !1050)
!1131 = !DILocation(line: 120, column: 9, scope: !1050)
!1132 = !DILocation(line: 120, column: 14, scope: !1050)
!1133 = !DILocation(line: 120, column: 2, scope: !1050)
!1134 = !DILocation(line: 121, column: 9, scope: !1050)
!1135 = !DILocation(line: 121, column: 14, scope: !1050)
!1136 = !DILocation(line: 121, column: 2, scope: !1050)
!1137 = !DILocation(line: 122, column: 9, scope: !1050)
!1138 = !DILocation(line: 122, column: 14, scope: !1050)
!1139 = !DILocation(line: 122, column: 2, scope: !1050)
!1140 = !DILocation(line: 123, column: 9, scope: !1050)
!1141 = !DILocation(line: 123, column: 2, scope: !1050)
!1142 = !DILocation(line: 124, column: 1, scope: !1050)
!1143 = !DILocation(line: 124, column: 1, scope: !1144)
!1144 = !DILexicalBlockFile(scope: !1050, file: !814, discriminator: 1)
!1145 = distinct !DISubprogram(name: "dcc_find_request_latest", scope: !814, file: !814, line: 126, type: !1146, isLocal: false, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !823)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!880, !105}
!1148 = !DILocalVariable(name: "type", arg: 1, scope: !1145, file: !814, line: 126, type: !105)
!1149 = !DILocation(line: 126, column: 38, scope: !1145)
!1150 = !DILocalVariable(name: "latest", scope: !1145, file: !814, line: 128, type: !880)
!1151 = !DILocation(line: 128, column: 11, scope: !1145)
!1152 = !DILocalVariable(name: "tmp", scope: !1145, file: !814, line: 129, type: !314)
!1153 = !DILocation(line: 129, column: 17, scope: !1145)
!1154 = !DILocation(line: 131, column: 16, scope: !1145)
!1155 = !DILocation(line: 132, column: 13, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1145, file: !814, line: 132, column: 2)
!1157 = !DILocation(line: 132, column: 11, scope: !1156)
!1158 = !DILocation(line: 132, column: 7, scope: !1156)
!1159 = !DILocation(line: 132, column: 24, scope: !1160)
!1160 = !DILexicalBlockFile(scope: !1161, file: !814, discriminator: 1)
!1161 = distinct !DILexicalBlock(scope: !1156, file: !814, line: 132, column: 2)
!1162 = !DILocation(line: 132, column: 28, scope: !1160)
!1163 = !DILocation(line: 132, column: 2, scope: !1160)
!1164 = !DILocalVariable(name: "dcc", scope: !1165, file: !814, line: 133, type: !880)
!1165 = distinct !DILexicalBlock(scope: !1161, file: !814, line: 132, column: 53)
!1166 = !DILocation(line: 133, column: 12, scope: !1165)
!1167 = !DILocation(line: 133, column: 18, scope: !1165)
!1168 = !DILocation(line: 133, column: 23, scope: !1165)
!1169 = !DILocation(line: 135, column: 7, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1165, file: !814, line: 135, column: 7)
!1171 = !DILocation(line: 135, column: 12, scope: !1170)
!1172 = !DILocation(line: 135, column: 20, scope: !1170)
!1173 = !DILocation(line: 135, column: 17, scope: !1170)
!1174 = !DILocation(line: 135, column: 25, scope: !1170)
!1175 = !DILocation(line: 135, column: 30, scope: !1176)
!1176 = !DILexicalBlockFile(scope: !1170, file: !814, discriminator: 1)
!1177 = !DILocation(line: 135, column: 36, scope: !1176)
!1178 = !DILocation(line: 135, column: 43, scope: !1176)
!1179 = !DILocation(line: 135, column: 7, scope: !1176)
!1180 = !DILocation(line: 136, column: 13, scope: !1170)
!1181 = !DILocation(line: 136, column: 11, scope: !1170)
!1182 = !DILocation(line: 136, column: 4, scope: !1170)
!1183 = !DILocation(line: 137, column: 2, scope: !1165)
!1184 = !DILocation(line: 132, column: 42, scope: !1185)
!1185 = !DILexicalBlockFile(scope: !1161, file: !814, discriminator: 2)
!1186 = !DILocation(line: 132, column: 47, scope: !1185)
!1187 = !DILocation(line: 132, column: 40, scope: !1185)
!1188 = !DILocation(line: 132, column: 2, scope: !1185)
!1189 = distinct !{!1189, !1190}
!1190 = !DILocation(line: 132, column: 2, scope: !1145)
!1191 = !DILocation(line: 139, column: 16, scope: !1145)
!1192 = !DILocation(line: 139, column: 9, scope: !1145)
!1193 = distinct !DISubprogram(name: "dcc_find_request", scope: !814, file: !814, line: 142, type: !1194, isLocal: false, isDefinition: true, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !823)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!880, !105, !93, !93}
!1196 = !DILocalVariable(name: "type", arg: 1, scope: !1193, file: !814, line: 142, type: !105)
!1197 = !DILocation(line: 142, column: 31, scope: !1193)
!1198 = !DILocalVariable(name: "nick", arg: 2, scope: !1193, file: !814, line: 142, type: !93)
!1199 = !DILocation(line: 142, column: 49, scope: !1193)
!1200 = !DILocalVariable(name: "arg", arg: 3, scope: !1193, file: !814, line: 142, type: !93)
!1201 = !DILocation(line: 142, column: 67, scope: !1193)
!1202 = !DILocalVariable(name: "tmp", scope: !1193, file: !814, line: 144, type: !314)
!1203 = !DILocation(line: 144, column: 10, scope: !1193)
!1204 = !DILocation(line: 146, column: 2, scope: !1193)
!1205 = distinct !{!1205, !1204}
!1206 = !DILocation(line: 146, column: 10, scope: !1207)
!1207 = !DILexicalBlockFile(scope: !1208, file: !814, discriminator: 1)
!1208 = distinct !DILexicalBlock(scope: !1209, file: !814, line: 146, column: 10)
!1209 = distinct !DILexicalBlock(scope: !1193, file: !814, line: 146, column: 4)
!1210 = !DILocation(line: 146, column: 15, scope: !1207)
!1211 = !DILocation(line: 146, column: 5, scope: !1212)
!1212 = !DILexicalBlockFile(scope: !1213, file: !814, discriminator: 2)
!1213 = distinct !DILexicalBlock(scope: !1208, file: !814, line: 146, column: 3)
!1214 = !DILocation(line: 146, column: 14, scope: !1215)
!1215 = !DILexicalBlockFile(scope: !1216, file: !814, discriminator: 3)
!1216 = distinct !DILexicalBlock(scope: !1208, file: !814, line: 146, column: 12)
!1217 = !DILocation(line: 146, column: 99, scope: !1215)
!1218 = !DILocation(line: 146, column: 7, scope: !1219)
!1219 = !DILexicalBlockFile(scope: !1209, file: !814, discriminator: 4)
!1220 = !DILocation(line: 148, column: 13, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1193, file: !814, line: 148, column: 2)
!1222 = !DILocation(line: 148, column: 11, scope: !1221)
!1223 = !DILocation(line: 148, column: 7, scope: !1221)
!1224 = !DILocation(line: 148, column: 24, scope: !1225)
!1225 = !DILexicalBlockFile(scope: !1226, file: !814, discriminator: 1)
!1226 = distinct !DILexicalBlock(scope: !1221, file: !814, line: 148, column: 2)
!1227 = !DILocation(line: 148, column: 28, scope: !1225)
!1228 = !DILocation(line: 148, column: 2, scope: !1225)
!1229 = !DILocalVariable(name: "dcc", scope: !1230, file: !814, line: 149, type: !880)
!1230 = distinct !DILexicalBlock(scope: !1226, file: !814, line: 148, column: 53)
!1231 = !DILocation(line: 149, column: 12, scope: !1230)
!1232 = !DILocation(line: 149, column: 18, scope: !1230)
!1233 = !DILocation(line: 149, column: 23, scope: !1230)
!1234 = !DILocation(line: 151, column: 7, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1230, file: !814, line: 151, column: 7)
!1236 = !DILocation(line: 151, column: 12, scope: !1235)
!1237 = !DILocation(line: 151, column: 20, scope: !1235)
!1238 = !DILocation(line: 151, column: 17, scope: !1235)
!1239 = !DILocation(line: 151, column: 25, scope: !1235)
!1240 = !DILocation(line: 151, column: 31, scope: !1241)
!1241 = !DILexicalBlockFile(scope: !1235, file: !814, discriminator: 1)
!1242 = !DILocation(line: 151, column: 37, scope: !1241)
!1243 = !DILocation(line: 151, column: 47, scope: !1241)
!1244 = !DILocation(line: 151, column: 53, scope: !1241)
!1245 = !DILocation(line: 152, column: 26, scope: !1235)
!1246 = !DILocation(line: 152, column: 31, scope: !1235)
!1247 = !DILocation(line: 152, column: 37, scope: !1235)
!1248 = !DILocation(line: 152, column: 7, scope: !1235)
!1249 = !DILocation(line: 152, column: 43, scope: !1235)
!1250 = !DILocation(line: 152, column: 48, scope: !1235)
!1251 = !DILocation(line: 153, column: 8, scope: !1235)
!1252 = !DILocation(line: 153, column: 12, scope: !1235)
!1253 = !DILocation(line: 153, column: 19, scope: !1235)
!1254 = !DILocation(line: 153, column: 32, scope: !1241)
!1255 = !DILocation(line: 153, column: 37, scope: !1241)
!1256 = !DILocation(line: 153, column: 42, scope: !1241)
!1257 = !DILocation(line: 153, column: 22, scope: !1241)
!1258 = !DILocation(line: 153, column: 47, scope: !1241)
!1259 = !DILocation(line: 151, column: 7, scope: !1260)
!1260 = !DILexicalBlockFile(scope: !1230, file: !814, discriminator: 2)
!1261 = !DILocation(line: 154, column: 11, scope: !1235)
!1262 = !DILocation(line: 154, column: 4, scope: !1235)
!1263 = !DILocation(line: 155, column: 2, scope: !1230)
!1264 = !DILocation(line: 148, column: 42, scope: !1265)
!1265 = !DILexicalBlockFile(scope: !1226, file: !814, discriminator: 2)
!1266 = !DILocation(line: 148, column: 47, scope: !1265)
!1267 = !DILocation(line: 148, column: 40, scope: !1265)
!1268 = !DILocation(line: 148, column: 2, scope: !1265)
!1269 = distinct !{!1269, !1270}
!1270 = !DILocation(line: 148, column: 2, scope: !1193)
!1271 = !DILocation(line: 157, column: 2, scope: !1193)
!1272 = !DILocation(line: 158, column: 1, scope: !1193)
!1273 = distinct !DISubprogram(name: "dcc_ip2str", scope: !814, file: !814, line: 160, type: !1274, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !823)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{null, !161, !149}
!1276 = !DILocalVariable(name: "ip", arg: 1, scope: !1273, file: !814, line: 160, type: !161)
!1277 = !DILocation(line: 160, column: 25, scope: !1273)
!1278 = !DILocalVariable(name: "host", arg: 2, scope: !1273, file: !814, line: 160, type: !149)
!1279 = !DILocation(line: 160, column: 35, scope: !1273)
!1280 = !DILocalVariable(name: "temp_ip", scope: !1273, file: !814, line: 162, type: !162)
!1281 = !DILocation(line: 162, column: 9, scope: !1273)
!1282 = !DILocalVariable(name: "addr", scope: !1273, file: !814, line: 163, type: !96)
!1283 = !DILocation(line: 163, column: 10, scope: !1273)
!1284 = !DILocation(line: 165, column: 7, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1273, file: !814, line: 165, column: 6)
!1286 = !DILocation(line: 165, column: 6, scope: !1285)
!1287 = !DILocation(line: 165, column: 38, scope: !1285)
!1288 = !DILocation(line: 165, column: 6, scope: !1273)
!1289 = !DILocation(line: 167, column: 15, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1285, file: !814, line: 165, column: 47)
!1291 = !DILocation(line: 167, column: 3, scope: !1292)
!1292 = !DILexicalBlockFile(scope: !1290, file: !814, discriminator: 1)
!1293 = !DILocation(line: 168, column: 20, scope: !1290)
!1294 = !DILocation(line: 169, column: 2, scope: !1290)
!1295 = !DILocation(line: 171, column: 8, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1273, file: !814, line: 171, column: 6)
!1297 = !DILocation(line: 171, column: 13, scope: !1296)
!1298 = !DILocation(line: 171, column: 7, scope: !1296)
!1299 = !DILocation(line: 171, column: 20, scope: !1296)
!1300 = !DILocation(line: 171, column: 6, scope: !1273)
!1301 = !DILocation(line: 173, column: 15, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1296, file: !814, line: 171, column: 8)
!1303 = !DILocation(line: 173, column: 19, scope: !1302)
!1304 = !DILocation(line: 173, column: 3, scope: !1302)
!1305 = !DILocation(line: 174, column: 2, scope: !1302)
!1306 = !DILocation(line: 175, column: 3, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1296, file: !814, line: 174, column: 9)
!1308 = !DILocation(line: 175, column: 18, scope: !1307)
!1309 = !DILocation(line: 175, column: 22, scope: !1307)
!1310 = !DILocation(line: 176, column: 14, scope: !1307)
!1311 = !DILocation(line: 177, column: 29, scope: !1307)
!1312 = !DILocation(line: 177, column: 23, scope: !1307)
!1313 = !DILocation(line: 177, column: 7, scope: !1307)
!1314 = !DILocation(line: 176, column: 3, scope: !1307)
!1315 = !DILocation(line: 179, column: 1, scope: !1273)
!1316 = distinct !DISubprogram(name: "dcc_str2ip", scope: !814, file: !814, line: 181, type: !1317, isLocal: false, isDefinition: true, scopeLine: 182, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !823)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{null, !93, !161}
!1319 = !DILocalVariable(name: "str", arg: 1, scope: !1316, file: !814, line: 181, type: !93)
!1320 = !DILocation(line: 181, column: 29, scope: !1316)
!1321 = !DILocalVariable(name: "ip", arg: 2, scope: !1316, file: !814, line: 181, type: !161)
!1322 = !DILocation(line: 181, column: 42, scope: !1316)
!1323 = !DILocalVariable(name: "addr", scope: !1316, file: !814, line: 183, type: !96)
!1324 = !DILocation(line: 183, column: 10, scope: !1316)
!1325 = !DILocation(line: 185, column: 13, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1316, file: !814, line: 185, column: 6)
!1327 = !DILocation(line: 185, column: 6, scope: !1326)
!1328 = !DILocation(line: 185, column: 23, scope: !1326)
!1329 = !DILocation(line: 185, column: 6, scope: !1316)
!1330 = !DILocation(line: 187, column: 32, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1326, file: !814, line: 185, column: 31)
!1332 = !DILocation(line: 187, column: 24, scope: !1331)
!1333 = !DILocation(line: 187, column: 22, scope: !1331)
!1334 = !DILocation(line: 188, column: 3, scope: !1331)
!1335 = !DILocation(line: 188, column: 7, scope: !1331)
!1336 = !DILocation(line: 188, column: 14, scope: !1331)
!1337 = !DILocation(line: 189, column: 26, scope: !1331)
!1338 = !DILocation(line: 189, column: 20, scope: !1331)
!1339 = !DILocation(line: 189, column: 8, scope: !1331)
!1340 = !DILocation(line: 190, column: 11, scope: !1331)
!1341 = !DILocation(line: 190, column: 15, scope: !1331)
!1342 = !DILocation(line: 190, column: 3, scope: !1331)
!1343 = !DILocation(line: 191, column: 2, scope: !1331)
!1344 = !DILocation(line: 193, column: 15, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1326, file: !814, line: 191, column: 9)
!1346 = !DILocation(line: 193, column: 20, scope: !1345)
!1347 = !DILocation(line: 193, column: 3, scope: !1345)
!1348 = !DILocation(line: 195, column: 1, scope: !1316)
!1349 = distinct !DISubprogram(name: "dcc_listen", scope: !814, file: !814, line: 198, type: !1350, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !823)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!206, !206, !161, !1352}
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!1353 = !DILocalVariable(name: "iface", arg: 1, scope: !1349, file: !814, line: 198, type: !206)
!1354 = !DILocation(line: 198, column: 36, scope: !1349)
!1355 = !DILocalVariable(name: "ip", arg: 2, scope: !1349, file: !814, line: 198, type: !161)
!1356 = !DILocation(line: 198, column: 51, scope: !1349)
!1357 = !DILocalVariable(name: "port", arg: 3, scope: !1349, file: !814, line: 198, type: !1352)
!1358 = !DILocation(line: 198, column: 60, scope: !1349)
!1359 = !DILocalVariable(name: "handle", scope: !1349, file: !814, line: 200, type: !206)
!1360 = !DILocation(line: 200, column: 21, scope: !1349)
!1361 = !DILocalVariable(name: "listen_ip", scope: !1349, file: !814, line: 201, type: !161)
!1362 = !DILocation(line: 201, column: 10, scope: !1349)
!1363 = !DILocalVariable(name: "dcc_port", scope: !1349, file: !814, line: 202, type: !93)
!1364 = !DILocation(line: 202, column: 14, scope: !1349)
!1365 = !DILocalVariable(name: "p", scope: !1349, file: !814, line: 202, type: !93)
!1366 = !DILocation(line: 202, column: 25, scope: !1349)
!1367 = !DILocalVariable(name: "own_ip", scope: !1349, file: !814, line: 202, type: !93)
!1368 = !DILocation(line: 202, column: 29, scope: !1349)
!1369 = !DILocalVariable(name: "first", scope: !1349, file: !814, line: 203, type: !105)
!1370 = !DILocation(line: 203, column: 6, scope: !1349)
!1371 = !DILocalVariable(name: "last", scope: !1349, file: !814, line: 203, type: !105)
!1372 = !DILocation(line: 203, column: 13, scope: !1349)
!1373 = !DILocation(line: 205, column: 22, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1349, file: !814, line: 205, column: 6)
!1375 = !DILocation(line: 205, column: 29, scope: !1374)
!1376 = !DILocation(line: 205, column: 6, scope: !1374)
!1377 = !DILocation(line: 205, column: 38, scope: !1374)
!1378 = !DILocation(line: 205, column: 6, scope: !1349)
!1379 = !DILocation(line: 206, column: 3, scope: !1374)
!1380 = !DILocation(line: 210, column: 11, scope: !1349)
!1381 = !DILocation(line: 210, column: 9, scope: !1349)
!1382 = !DILocation(line: 211, column: 7, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1349, file: !814, line: 211, column: 6)
!1384 = !DILocation(line: 211, column: 6, scope: !1383)
!1385 = !DILocation(line: 211, column: 14, scope: !1383)
!1386 = !DILocation(line: 211, column: 6, scope: !1349)
!1387 = !DILocation(line: 212, column: 23, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1389, file: !814, line: 212, column: 7)
!1389 = distinct !DILexicalBlock(scope: !1383, file: !814, line: 211, column: 23)
!1390 = !DILocation(line: 212, column: 7, scope: !1388)
!1391 = !DILocation(line: 212, column: 7, scope: !1389)
!1392 = !DILocation(line: 213, column: 14, scope: !1388)
!1393 = !DILocation(line: 213, column: 4, scope: !1388)
!1394 = !DILocation(line: 214, column: 2, scope: !1389)
!1395 = !DILocation(line: 215, column: 10, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1397, file: !814, line: 215, column: 7)
!1397 = distinct !DILexicalBlock(scope: !1383, file: !814, line: 214, column: 9)
!1398 = !DILocation(line: 215, column: 15, scope: !1396)
!1399 = !DILocation(line: 215, column: 9, scope: !1396)
!1400 = !DILocation(line: 215, column: 22, scope: !1396)
!1401 = !DILocation(line: 215, column: 7, scope: !1397)
!1402 = !DILocation(line: 216, column: 14, scope: !1396)
!1403 = !DILocation(line: 216, column: 4, scope: !1396)
!1404 = !DILocation(line: 220, column: 13, scope: !1349)
!1405 = !DILocation(line: 220, column: 11, scope: !1349)
!1406 = !DILocation(line: 221, column: 15, scope: !1349)
!1407 = !DILocation(line: 221, column: 10, scope: !1349)
!1408 = !DILocation(line: 221, column: 8, scope: !1349)
!1409 = !DILocation(line: 222, column: 6, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1349, file: !814, line: 222, column: 6)
!1411 = !DILocation(line: 222, column: 12, scope: !1410)
!1412 = !DILocation(line: 222, column: 6, scope: !1349)
!1413 = !DILocation(line: 224, column: 4, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1410, file: !814, line: 222, column: 18)
!1415 = !DILocation(line: 224, column: 9, scope: !1414)
!1416 = !DILocation(line: 225, column: 21, scope: !1414)
!1417 = !DILocation(line: 225, column: 32, scope: !1414)
!1418 = !DILocation(line: 225, column: 10, scope: !1414)
!1419 = !DILocation(line: 225, column: 3, scope: !1414)
!1420 = !DILocation(line: 229, column: 13, scope: !1349)
!1421 = !DILocation(line: 229, column: 6, scope: !1349)
!1422 = !DILocation(line: 229, column: 4, scope: !1349)
!1423 = !DILocation(line: 230, column: 6, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1349, file: !814, line: 230, column: 6)
!1425 = !DILocation(line: 230, column: 8, scope: !1424)
!1426 = !DILocation(line: 230, column: 6, scope: !1349)
!1427 = !DILocation(line: 230, column: 27, scope: !1428)
!1428 = !DILexicalBlockFile(scope: !1424, file: !814, discriminator: 1)
!1429 = !DILocation(line: 230, column: 20, scope: !1428)
!1430 = !DILocation(line: 230, column: 18, scope: !1428)
!1431 = !DILocation(line: 230, column: 16, scope: !1428)
!1432 = !DILocation(line: 232, column: 13, scope: !1349)
!1433 = !DILocation(line: 232, column: 11, scope: !1349)
!1434 = !DILocation(line: 233, column: 6, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1349, file: !814, line: 233, column: 6)
!1436 = !DILocation(line: 233, column: 15, scope: !1435)
!1437 = !DILocation(line: 233, column: 6, scope: !1349)
!1438 = !DILocation(line: 234, column: 10, scope: !1435)
!1439 = !DILocation(line: 234, column: 8, scope: !1435)
!1440 = !DILocation(line: 234, column: 3, scope: !1435)
!1441 = !DILocation(line: 236, column: 15, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1435, file: !814, line: 235, column: 7)
!1443 = !DILocation(line: 236, column: 23, scope: !1442)
!1444 = !DILocation(line: 236, column: 10, scope: !1442)
!1445 = !DILocation(line: 236, column: 8, scope: !1442)
!1446 = !DILocation(line: 237, column: 7, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1442, file: !814, line: 237, column: 7)
!1448 = !DILocation(line: 237, column: 12, scope: !1447)
!1449 = !DILocation(line: 237, column: 7, scope: !1442)
!1450 = !DILocation(line: 238, column: 11, scope: !1447)
!1451 = !DILocation(line: 238, column: 9, scope: !1447)
!1452 = !DILocation(line: 238, column: 4, scope: !1447)
!1453 = !DILocation(line: 242, column: 15, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1349, file: !814, line: 242, column: 2)
!1455 = !DILocation(line: 242, column: 8, scope: !1454)
!1456 = !DILocation(line: 242, column: 13, scope: !1454)
!1457 = !DILocation(line: 242, column: 7, scope: !1454)
!1458 = !DILocation(line: 242, column: 23, scope: !1459)
!1459 = !DILexicalBlockFile(scope: !1460, file: !814, discriminator: 1)
!1460 = distinct !DILexicalBlock(scope: !1454, file: !814, line: 242, column: 2)
!1461 = !DILocation(line: 242, column: 22, scope: !1459)
!1462 = !DILocation(line: 242, column: 31, scope: !1459)
!1463 = !DILocation(line: 242, column: 28, scope: !1459)
!1464 = !DILocation(line: 242, column: 2, scope: !1459)
!1465 = !DILocation(line: 243, column: 23, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1460, file: !814, line: 242, column: 48)
!1467 = !DILocation(line: 243, column: 34, scope: !1466)
!1468 = !DILocation(line: 243, column: 12, scope: !1466)
!1469 = !DILocation(line: 243, column: 10, scope: !1466)
!1470 = !DILocation(line: 244, column: 7, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1466, file: !814, line: 244, column: 7)
!1472 = !DILocation(line: 244, column: 14, scope: !1471)
!1473 = !DILocation(line: 244, column: 7, scope: !1466)
!1474 = !DILocation(line: 245, column: 32, scope: !1471)
!1475 = !DILocation(line: 245, column: 25, scope: !1471)
!1476 = !DILocation(line: 246, column: 2, scope: !1466)
!1477 = !DILocation(line: 242, column: 39, scope: !1478)
!1478 = !DILexicalBlockFile(scope: !1460, file: !814, discriminator: 2)
!1479 = !DILocation(line: 242, column: 44, scope: !1478)
!1480 = !DILocation(line: 242, column: 2, scope: !1478)
!1481 = distinct !{!1481, !1482}
!1482 = !DILocation(line: 242, column: 2, scope: !1349)
!1483 = !DILocation(line: 248, column: 9, scope: !1349)
!1484 = !DILocation(line: 249, column: 1, scope: !1349)
!1485 = distinct !DISubprogram(name: "dcc_connect_ip", scope: !814, file: !814, line: 252, type: !1486, isLocal: false, isDefinition: true, scopeLine: 253, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !823)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!206, !161, !105}
!1488 = !DILocalVariable(name: "ip", arg: 1, scope: !1485, file: !814, line: 252, type: !161)
!1489 = !DILocation(line: 252, column: 36, scope: !1485)
!1490 = !DILocalVariable(name: "port", arg: 2, scope: !1485, file: !814, line: 252, type: !105)
!1491 = !DILocation(line: 252, column: 44, scope: !1485)
!1492 = !DILocalVariable(name: "own_ip", scope: !1485, file: !814, line: 254, type: !161)
!1493 = !DILocation(line: 254, column: 10, scope: !1485)
!1494 = !DILocalVariable(name: "temp_ip", scope: !1485, file: !814, line: 254, type: !162)
!1495 = !DILocation(line: 254, column: 18, scope: !1485)
!1496 = !DILocalVariable(name: "own_ip_str", scope: !1485, file: !814, line: 255, type: !93)
!1497 = !DILocation(line: 255, column: 14, scope: !1485)
!1498 = !DILocalVariable(name: "handle", scope: !1485, file: !814, line: 256, type: !206)
!1499 = !DILocation(line: 256, column: 14, scope: !1485)
!1500 = !DILocation(line: 258, column: 15, scope: !1485)
!1501 = !DILocation(line: 258, column: 13, scope: !1485)
!1502 = !DILocation(line: 259, column: 9, scope: !1485)
!1503 = !DILocation(line: 260, column: 7, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1485, file: !814, line: 260, column: 6)
!1505 = !DILocation(line: 260, column: 6, scope: !1504)
!1506 = !DILocation(line: 260, column: 18, scope: !1504)
!1507 = !DILocation(line: 260, column: 6, scope: !1485)
!1508 = !DILocation(line: 262, column: 15, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1504, file: !814, line: 260, column: 27)
!1510 = !DILocation(line: 262, column: 3, scope: !1509)
!1511 = !DILocation(line: 263, column: 9, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1509, file: !814, line: 263, column: 7)
!1513 = !DILocation(line: 263, column: 14, scope: !1512)
!1514 = !DILocation(line: 263, column: 8, scope: !1512)
!1515 = !DILocation(line: 263, column: 21, scope: !1512)
!1516 = !DILocation(line: 263, column: 24, scope: !1512)
!1517 = !DILocation(line: 263, column: 12, scope: !1512)
!1518 = !DILocation(line: 263, column: 31, scope: !1512)
!1519 = !DILocation(line: 263, column: 7, scope: !1509)
!1520 = !DILocation(line: 264, column: 11, scope: !1512)
!1521 = !DILocation(line: 264, column: 4, scope: !1512)
!1522 = !DILocation(line: 265, column: 2, scope: !1509)
!1523 = !DILocation(line: 267, column: 6, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1485, file: !814, line: 267, column: 6)
!1525 = !DILocation(line: 267, column: 13, scope: !1524)
!1526 = !DILocation(line: 267, column: 6, scope: !1485)
!1527 = !DILocation(line: 268, column: 14, scope: !1524)
!1528 = !DILocation(line: 268, column: 19, scope: !1524)
!1529 = !DILocation(line: 268, column: 13, scope: !1524)
!1530 = !DILocation(line: 268, column: 26, scope: !1524)
!1531 = !DILocation(line: 268, column: 12, scope: !1524)
!1532 = !DILocation(line: 268, column: 15, scope: !1533)
!1533 = !DILexicalBlockFile(scope: !1524, file: !814, discriminator: 1)
!1534 = !DILocation(line: 268, column: 12, scope: !1533)
!1535 = !DILocation(line: 268, column: 33, scope: !1536)
!1536 = !DILexicalBlockFile(scope: !1524, file: !814, discriminator: 2)
!1537 = !DILocation(line: 268, column: 12, scope: !1536)
!1538 = !DILocation(line: 268, column: 12, scope: !1539)
!1539 = !DILexicalBlockFile(scope: !1524, file: !814, discriminator: 3)
!1540 = !DILocation(line: 268, column: 10, scope: !1539)
!1541 = !DILocation(line: 268, column: 3, scope: !1539)
!1542 = !DILocation(line: 270, column: 26, scope: !1485)
!1543 = !DILocation(line: 270, column: 30, scope: !1485)
!1544 = !DILocation(line: 270, column: 36, scope: !1485)
!1545 = !DILocation(line: 270, column: 11, scope: !1485)
!1546 = !DILocation(line: 270, column: 9, scope: !1485)
!1547 = !DILocation(line: 271, column: 6, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1485, file: !814, line: 271, column: 6)
!1549 = !DILocation(line: 271, column: 13, scope: !1548)
!1550 = !DILocation(line: 271, column: 20, scope: !1548)
!1551 = !DILocation(line: 271, column: 25, scope: !1552)
!1552 = !DILexicalBlockFile(scope: !1548, file: !814, discriminator: 1)
!1553 = !DILocation(line: 271, column: 24, scope: !1552)
!1554 = !DILocation(line: 271, column: 29, scope: !1552)
!1555 = !DILocation(line: 271, column: 46, scope: !1552)
!1556 = !DILocation(line: 271, column: 49, scope: !1557)
!1557 = !DILexicalBlockFile(scope: !1548, file: !814, discriminator: 2)
!1558 = !DILocation(line: 271, column: 56, scope: !1557)
!1559 = !DILocation(line: 271, column: 6, scope: !1557)
!1560 = !DILocation(line: 273, column: 14, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1548, file: !814, line: 271, column: 65)
!1562 = !DILocation(line: 273, column: 19, scope: !1561)
!1563 = !DILocation(line: 273, column: 13, scope: !1561)
!1564 = !DILocation(line: 273, column: 26, scope: !1561)
!1565 = !DILocation(line: 273, column: 12, scope: !1561)
!1566 = !DILocation(line: 273, column: 15, scope: !1567)
!1567 = !DILexicalBlockFile(scope: !1561, file: !814, discriminator: 1)
!1568 = !DILocation(line: 273, column: 12, scope: !1567)
!1569 = !DILocation(line: 273, column: 33, scope: !1570)
!1570 = !DILexicalBlockFile(scope: !1561, file: !814, discriminator: 2)
!1571 = !DILocation(line: 273, column: 12, scope: !1570)
!1572 = !DILocation(line: 273, column: 12, scope: !1573)
!1573 = !DILexicalBlockFile(scope: !1561, file: !814, discriminator: 3)
!1574 = !DILocation(line: 273, column: 10, scope: !1573)
!1575 = !DILocation(line: 274, column: 27, scope: !1561)
!1576 = !DILocation(line: 274, column: 31, scope: !1561)
!1577 = !DILocation(line: 274, column: 37, scope: !1561)
!1578 = !DILocation(line: 274, column: 12, scope: !1561)
!1579 = !DILocation(line: 274, column: 10, scope: !1561)
!1580 = !DILocation(line: 275, column: 2, scope: !1561)
!1581 = !DILocation(line: 276, column: 9, scope: !1485)
!1582 = !DILocation(line: 276, column: 2, scope: !1485)
!1583 = distinct !DISubprogram(name: "dcc_close", scope: !814, file: !814, line: 419, type: !1051, isLocal: false, isDefinition: true, scopeLine: 420, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !823)
!1584 = !DILocalVariable(name: "dcc", arg: 1, scope: !1583, file: !814, line: 419, type: !880)
!1585 = !DILocation(line: 419, column: 25, scope: !1583)
!1586 = !DILocation(line: 421, column: 31, scope: !1583)
!1587 = !DILocation(line: 421, column: 2, scope: !1583)
!1588 = !DILocation(line: 422, column: 21, scope: !1583)
!1589 = !DILocation(line: 422, column: 9, scope: !1583)
!1590 = !DILocation(line: 423, column: 1, scope: !1583)
!1591 = distinct !DISubprogram(name: "dcc_reject", scope: !814, file: !814, line: 426, type: !1592, isLocal: false, isDefinition: true, scopeLine: 427, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !823)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{null, !880, !129}
!1594 = !DILocalVariable(name: "dcc", arg: 1, scope: !1591, file: !814, line: 426, type: !880)
!1595 = !DILocation(line: 426, column: 26, scope: !1591)
!1596 = !DILocalVariable(name: "server", arg: 2, scope: !1591, file: !814, line: 426, type: !129)
!1597 = !DILocation(line: 426, column: 47, scope: !1591)
!1598 = !DILocation(line: 428, column: 2, scope: !1591)
!1599 = distinct !{!1599, !1598}
!1600 = !DILocation(line: 428, column: 10, scope: !1601)
!1601 = !DILexicalBlockFile(scope: !1602, file: !814, discriminator: 1)
!1602 = distinct !DILexicalBlock(scope: !1603, file: !814, line: 428, column: 10)
!1603 = distinct !DILexicalBlock(scope: !1591, file: !814, line: 428, column: 4)
!1604 = !DILocation(line: 428, column: 14, scope: !1601)
!1605 = !DILocation(line: 428, column: 5, scope: !1606)
!1606 = !DILexicalBlockFile(scope: !1607, file: !814, discriminator: 2)
!1607 = distinct !DILexicalBlock(scope: !1602, file: !814, line: 428, column: 3)
!1608 = !DILocation(line: 428, column: 14, scope: !1609)
!1609 = !DILexicalBlockFile(scope: !1610, file: !814, discriminator: 3)
!1610 = distinct !DILexicalBlock(scope: !1602, file: !814, line: 428, column: 12)
!1611 = !DILocation(line: 428, column: 98, scope: !1609)
!1612 = !DILocation(line: 428, column: 109, scope: !1613)
!1613 = !DILexicalBlockFile(scope: !1603, file: !814, discriminator: 4)
!1614 = !DILocation(line: 430, column: 33, scope: !1591)
!1615 = !DILocation(line: 430, column: 2, scope: !1591)
!1616 = !DILocation(line: 432, column: 6, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1591, file: !814, line: 432, column: 6)
!1618 = !DILocation(line: 432, column: 11, scope: !1617)
!1619 = !DILocation(line: 432, column: 18, scope: !1617)
!1620 = !DILocation(line: 432, column: 6, scope: !1591)
!1621 = !DILocation(line: 433, column: 12, scope: !1617)
!1622 = !DILocation(line: 433, column: 17, scope: !1617)
!1623 = !DILocation(line: 433, column: 10, scope: !1617)
!1624 = !DILocation(line: 433, column: 3, scope: !1617)
!1625 = !DILocation(line: 435, column: 6, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1591, file: !814, line: 435, column: 6)
!1627 = !DILocation(line: 435, column: 13, scope: !1626)
!1628 = !DILocation(line: 435, column: 20, scope: !1626)
!1629 = !DILocation(line: 435, column: 26, scope: !1630)
!1630 = !DILexicalBlockFile(scope: !1626, file: !814, discriminator: 1)
!1631 = !DILocation(line: 435, column: 32, scope: !1630)
!1632 = !DILocation(line: 435, column: 42, scope: !1630)
!1633 = !DILocation(line: 435, column: 6, scope: !1630)
!1634 = !DILocation(line: 436, column: 17, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1626, file: !814, line: 435, column: 49)
!1636 = !DILocation(line: 437, column: 10, scope: !1635)
!1637 = !DILocation(line: 437, column: 15, scope: !1635)
!1638 = !DILocation(line: 437, column: 48, scope: !1635)
!1639 = !DILocation(line: 437, column: 53, scope: !1635)
!1640 = !DILocation(line: 437, column: 22, scope: !1635)
!1641 = !DILocation(line: 438, column: 10, scope: !1635)
!1642 = !DILocation(line: 438, column: 15, scope: !1635)
!1643 = !DILocation(line: 436, column: 3, scope: !1635)
!1644 = !DILocation(line: 439, column: 2, scope: !1635)
!1645 = !DILocation(line: 441, column: 12, scope: !1591)
!1646 = !DILocation(line: 441, column: 2, scope: !1591)
!1647 = !DILocation(line: 442, column: 1, scope: !1591)
!1648 = !DILocation(line: 442, column: 1, scope: !1649)
!1649 = !DILexicalBlockFile(scope: !1591, file: !814, discriminator: 1)
!1650 = distinct !DISubprogram(name: "irc_dcc_init", scope: !814, file: !814, line: 541, type: !302, isLocal: false, isDefinition: true, scopeLine: 542, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !823)
!1651 = !DILocation(line: 543, column: 12, scope: !1650)
!1652 = !DILocation(line: 544, column: 19, scope: !1650)
!1653 = !DILocation(line: 544, column: 17, scope: !1650)
!1654 = !DILocation(line: 546, column: 2, scope: !1650)
!1655 = !DILocation(line: 547, column: 2, scope: !1650)
!1656 = !DILocation(line: 548, column: 2, scope: !1650)
!1657 = !DILocation(line: 550, column: 2, scope: !1650)
!1658 = !DILocation(line: 551, column: 2, scope: !1650)
!1659 = !DILocation(line: 552, column: 2, scope: !1650)
!1660 = !DILocation(line: 553, column: 2, scope: !1650)
!1661 = !DILocation(line: 554, column: 2, scope: !1650)
!1662 = !DILocation(line: 555, column: 2, scope: !1650)
!1663 = !DILocation(line: 556, column: 2, scope: !1650)
!1664 = !DILocation(line: 557, column: 2, scope: !1650)
!1665 = !DILocation(line: 558, column: 2, scope: !1650)
!1666 = !DILocation(line: 559, column: 2, scope: !1650)
!1667 = !DILocation(line: 560, column: 2, scope: !1650)
!1668 = !DILocation(line: 562, column: 2, scope: !1650)
!1669 = !DILocation(line: 563, column: 2, scope: !1650)
!1670 = !DILocation(line: 564, column: 2, scope: !1650)
!1671 = !DILocation(line: 565, column: 2, scope: !1650)
!1672 = !DILocation(line: 566, column: 2, scope: !1650)
!1673 = !DILocation(line: 567, column: 2, scope: !1650)
!1674 = !DILocation(line: 569, column: 2, scope: !1650)
!1675 = !DILocation(line: 570, column: 2, scope: !1650)
!1676 = !DILocation(line: 571, column: 1, scope: !1650)
!1677 = distinct !DISubprogram(name: "dcc_timeout_func", scope: !814, file: !814, line: 444, type: !1678, isLocal: true, isDefinition: true, scopeLine: 445, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !823)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!105}
!1680 = !DILocalVariable(name: "tmp", scope: !1677, file: !814, line: 446, type: !314)
!1681 = !DILocation(line: 446, column: 10, scope: !1677)
!1682 = !DILocalVariable(name: "next", scope: !1677, file: !814, line: 446, type: !314)
!1683 = !DILocation(line: 446, column: 16, scope: !1677)
!1684 = !DILocalVariable(name: "now", scope: !1677, file: !814, line: 447, type: !123)
!1685 = !DILocation(line: 447, column: 9, scope: !1677)
!1686 = !DILocation(line: 449, column: 8, scope: !1677)
!1687 = !DILocation(line: 449, column: 18, scope: !1688)
!1688 = !DILexicalBlockFile(scope: !1677, file: !814, discriminator: 1)
!1689 = !DILocation(line: 449, column: 50, scope: !1677)
!1690 = !DILocation(line: 449, column: 18, scope: !1677)
!1691 = !DILocation(line: 449, column: 17, scope: !1677)
!1692 = !DILocation(line: 449, column: 6, scope: !1677)
!1693 = !DILocation(line: 450, column: 13, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1677, file: !814, line: 450, column: 2)
!1695 = !DILocation(line: 450, column: 11, scope: !1694)
!1696 = !DILocation(line: 450, column: 7, scope: !1694)
!1697 = !DILocation(line: 450, column: 24, scope: !1698)
!1698 = !DILexicalBlockFile(scope: !1699, file: !814, discriminator: 1)
!1699 = distinct !DILexicalBlock(scope: !1694, file: !814, line: 450, column: 2)
!1700 = !DILocation(line: 450, column: 28, scope: !1698)
!1701 = !DILocation(line: 450, column: 2, scope: !1698)
!1702 = !DILocalVariable(name: "dcc", scope: !1703, file: !814, line: 451, type: !880)
!1703 = distinct !DILexicalBlock(scope: !1699, file: !814, line: 450, column: 48)
!1704 = !DILocation(line: 451, column: 12, scope: !1703)
!1705 = !DILocation(line: 451, column: 18, scope: !1703)
!1706 = !DILocation(line: 451, column: 23, scope: !1703)
!1707 = !DILocation(line: 453, column: 10, scope: !1703)
!1708 = !DILocation(line: 453, column: 15, scope: !1703)
!1709 = !DILocation(line: 453, column: 8, scope: !1703)
!1710 = !DILocation(line: 454, column: 7, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1703, file: !814, line: 454, column: 7)
!1712 = !DILocation(line: 454, column: 12, scope: !1711)
!1713 = !DILocation(line: 454, column: 20, scope: !1711)
!1714 = !DILocation(line: 454, column: 26, scope: !1711)
!1715 = !DILocation(line: 454, column: 29, scope: !1716)
!1716 = !DILexicalBlockFile(scope: !1711, file: !814, discriminator: 1)
!1717 = !DILocation(line: 454, column: 35, scope: !1716)
!1718 = !DILocation(line: 454, column: 40, scope: !1716)
!1719 = !DILocation(line: 454, column: 33, scope: !1716)
!1720 = !DILocation(line: 454, column: 48, scope: !1716)
!1721 = !DILocation(line: 454, column: 98, scope: !1722)
!1722 = !DILexicalBlockFile(scope: !1711, file: !814, discriminator: 2)
!1723 = !DILocation(line: 454, column: 73, scope: !1722)
!1724 = !DILocation(line: 454, column: 54, scope: !1722)
!1725 = !DILocation(line: 454, column: 7, scope: !1722)
!1726 = !DILocation(line: 454, column: 53, scope: !1727)
!1727 = !DILexicalBlockFile(scope: !1711, file: !814, discriminator: 3)
!1728 = !DILocation(line: 454, column: 7, scope: !1729)
!1729 = !DILexicalBlockFile(scope: !1703, file: !814, discriminator: 4)
!1730 = !DILocation(line: 461, column: 14, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1711, file: !814, line: 454, column: 88)
!1732 = !DILocation(line: 461, column: 4, scope: !1731)
!1733 = !DILocation(line: 462, column: 3, scope: !1731)
!1734 = !DILocation(line: 463, column: 2, scope: !1703)
!1735 = !DILocation(line: 450, column: 42, scope: !1736)
!1736 = !DILexicalBlockFile(scope: !1699, file: !814, discriminator: 2)
!1737 = !DILocation(line: 450, column: 40, scope: !1736)
!1738 = !DILocation(line: 450, column: 2, scope: !1736)
!1739 = distinct !{!1739, !1740}
!1740 = !DILocation(line: 450, column: 2, scope: !1677)
!1741 = !DILocation(line: 465, column: 2, scope: !1677)
!1742 = distinct !DISubprogram(name: "sig_connected", scope: !814, file: !814, line: 281, type: !1743, isLocal: true, isDefinition: true, scopeLine: 282, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !823)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{null, !129}
!1745 = !DILocalVariable(name: "server", arg: 1, scope: !1742, file: !814, line: 281, type: !129)
!1746 = !DILocation(line: 281, column: 43, scope: !1742)
!1747 = !DILocalVariable(name: "tmp", scope: !1742, file: !814, line: 283, type: !314)
!1748 = !DILocation(line: 283, column: 10, scope: !1742)
!1749 = !DILocation(line: 285, column: 2, scope: !1742)
!1750 = distinct !{!1750, !1749}
!1751 = !DILocation(line: 285, column: 10, scope: !1752)
!1752 = !DILexicalBlockFile(scope: !1753, file: !814, discriminator: 1)
!1753 = distinct !DILexicalBlock(scope: !1754, file: !814, line: 285, column: 10)
!1754 = distinct !DILexicalBlock(scope: !1742, file: !814, line: 285, column: 4)
!1755 = !DILocation(line: 285, column: 17, scope: !1752)
!1756 = !DILocation(line: 285, column: 5, scope: !1757)
!1757 = !DILexicalBlockFile(scope: !1758, file: !814, discriminator: 2)
!1758 = distinct !DILexicalBlock(scope: !1753, file: !814, line: 285, column: 3)
!1759 = !DILocation(line: 285, column: 14, scope: !1760)
!1760 = !DILexicalBlockFile(scope: !1761, file: !814, discriminator: 3)
!1761 = distinct !DILexicalBlock(scope: !1753, file: !814, line: 285, column: 12)
!1762 = !DILocation(line: 285, column: 101, scope: !1760)
!1763 = !DILocation(line: 285, column: 112, scope: !1764)
!1764 = !DILexicalBlockFile(scope: !1754, file: !814, discriminator: 4)
!1765 = !DILocation(line: 287, column: 13, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1742, file: !814, line: 287, column: 2)
!1767 = !DILocation(line: 287, column: 11, scope: !1766)
!1768 = !DILocation(line: 287, column: 7, scope: !1766)
!1769 = !DILocation(line: 287, column: 24, scope: !1770)
!1770 = !DILexicalBlockFile(scope: !1771, file: !814, discriminator: 1)
!1771 = distinct !DILexicalBlock(scope: !1766, file: !814, line: 287, column: 2)
!1772 = !DILocation(line: 287, column: 28, scope: !1770)
!1773 = !DILocation(line: 287, column: 2, scope: !1770)
!1774 = !DILocalVariable(name: "dcc", scope: !1775, file: !814, line: 288, type: !880)
!1775 = distinct !DILexicalBlock(scope: !1771, file: !814, line: 287, column: 53)
!1776 = !DILocation(line: 288, column: 12, scope: !1775)
!1777 = !DILocation(line: 288, column: 18, scope: !1775)
!1778 = !DILocation(line: 288, column: 23, scope: !1775)
!1779 = !DILocation(line: 290, column: 7, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1775, file: !814, line: 290, column: 7)
!1781 = !DILocation(line: 290, column: 12, scope: !1780)
!1782 = !DILocation(line: 290, column: 19, scope: !1780)
!1783 = !DILocation(line: 290, column: 26, scope: !1780)
!1784 = !DILocation(line: 290, column: 29, scope: !1785)
!1785 = !DILexicalBlockFile(scope: !1780, file: !814, discriminator: 1)
!1786 = !DILocation(line: 290, column: 34, scope: !1785)
!1787 = !DILocation(line: 290, column: 44, scope: !1785)
!1788 = !DILocation(line: 290, column: 52, scope: !1785)
!1789 = !DILocation(line: 291, column: 26, scope: !1780)
!1790 = !DILocation(line: 291, column: 31, scope: !1780)
!1791 = !DILocation(line: 291, column: 42, scope: !1780)
!1792 = !DILocation(line: 291, column: 50, scope: !1780)
!1793 = !DILocation(line: 291, column: 7, scope: !1780)
!1794 = !DILocation(line: 291, column: 55, scope: !1780)
!1795 = !DILocation(line: 290, column: 7, scope: !1796)
!1796 = !DILexicalBlockFile(scope: !1775, file: !814, discriminator: 2)
!1797 = !DILocation(line: 292, column: 18, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1780, file: !814, line: 291, column: 61)
!1799 = !DILocation(line: 292, column: 4, scope: !1798)
!1800 = !DILocation(line: 292, column: 9, scope: !1798)
!1801 = !DILocation(line: 292, column: 16, scope: !1798)
!1802 = !DILocation(line: 293, column: 11, scope: !1798)
!1803 = !DILocation(line: 293, column: 16, scope: !1798)
!1804 = !DILocation(line: 293, column: 4, scope: !1798)
!1805 = !DILocation(line: 294, column: 27, scope: !1798)
!1806 = !DILocation(line: 294, column: 35, scope: !1798)
!1807 = !DILocation(line: 294, column: 18, scope: !1798)
!1808 = !DILocation(line: 294, column: 4, scope: !1798)
!1809 = !DILocation(line: 294, column: 9, scope: !1798)
!1810 = !DILocation(line: 294, column: 16, scope: !1798)
!1811 = !DILocation(line: 295, column: 3, scope: !1798)
!1812 = !DILocation(line: 296, column: 2, scope: !1775)
!1813 = !DILocation(line: 287, column: 42, scope: !1814)
!1814 = !DILexicalBlockFile(scope: !1771, file: !814, discriminator: 2)
!1815 = !DILocation(line: 287, column: 47, scope: !1814)
!1816 = !DILocation(line: 287, column: 40, scope: !1814)
!1817 = !DILocation(line: 287, column: 2, scope: !1814)
!1818 = distinct !{!1818, !1819}
!1819 = !DILocation(line: 287, column: 2, scope: !1742)
!1820 = !DILocation(line: 297, column: 1, scope: !1742)
!1821 = distinct !DISubprogram(name: "sig_server_disconnected", scope: !814, file: !814, line: 300, type: !1743, isLocal: true, isDefinition: true, scopeLine: 301, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !823)
!1822 = !DILocalVariable(name: "server", arg: 1, scope: !1821, file: !814, line: 300, type: !129)
!1823 = !DILocation(line: 300, column: 53, scope: !1821)
!1824 = !DILocalVariable(name: "tmp", scope: !1821, file: !814, line: 302, type: !314)
!1825 = !DILocation(line: 302, column: 10, scope: !1821)
!1826 = !DILocation(line: 304, column: 2, scope: !1821)
!1827 = distinct !{!1827, !1826}
!1828 = !DILocation(line: 304, column: 10, scope: !1829)
!1829 = !DILexicalBlockFile(scope: !1830, file: !814, discriminator: 1)
!1830 = distinct !DILexicalBlock(scope: !1831, file: !814, line: 304, column: 10)
!1831 = distinct !DILexicalBlock(scope: !1821, file: !814, line: 304, column: 4)
!1832 = !DILocation(line: 304, column: 17, scope: !1829)
!1833 = !DILocation(line: 304, column: 5, scope: !1834)
!1834 = !DILexicalBlockFile(scope: !1835, file: !814, discriminator: 2)
!1835 = distinct !DILexicalBlock(scope: !1830, file: !814, line: 304, column: 3)
!1836 = !DILocation(line: 304, column: 14, scope: !1837)
!1837 = !DILexicalBlockFile(scope: !1838, file: !814, discriminator: 3)
!1838 = distinct !DILexicalBlock(scope: !1830, file: !814, line: 304, column: 12)
!1839 = !DILocation(line: 304, column: 101, scope: !1837)
!1840 = !DILocation(line: 304, column: 112, scope: !1841)
!1841 = !DILexicalBlockFile(scope: !1831, file: !814, discriminator: 4)
!1842 = !DILocation(line: 306, column: 13, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1821, file: !814, line: 306, column: 2)
!1844 = !DILocation(line: 306, column: 11, scope: !1843)
!1845 = !DILocation(line: 306, column: 7, scope: !1843)
!1846 = !DILocation(line: 306, column: 24, scope: !1847)
!1847 = !DILexicalBlockFile(scope: !1848, file: !814, discriminator: 1)
!1848 = distinct !DILexicalBlock(scope: !1843, file: !814, line: 306, column: 2)
!1849 = !DILocation(line: 306, column: 28, scope: !1847)
!1850 = !DILocation(line: 306, column: 2, scope: !1847)
!1851 = !DILocalVariable(name: "dcc", scope: !1852, file: !814, line: 307, type: !880)
!1852 = distinct !DILexicalBlock(scope: !1848, file: !814, line: 306, column: 53)
!1853 = !DILocation(line: 307, column: 12, scope: !1852)
!1854 = !DILocation(line: 307, column: 18, scope: !1852)
!1855 = !DILocation(line: 307, column: 23, scope: !1852)
!1856 = !DILocation(line: 309, column: 7, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1852, file: !814, line: 309, column: 7)
!1858 = !DILocation(line: 309, column: 12, scope: !1857)
!1859 = !DILocation(line: 309, column: 22, scope: !1857)
!1860 = !DILocation(line: 309, column: 19, scope: !1857)
!1861 = !DILocation(line: 309, column: 7, scope: !1852)
!1862 = !DILocation(line: 310, column: 25, scope: !1857)
!1863 = !DILocation(line: 310, column: 30, scope: !1857)
!1864 = !DILocation(line: 310, column: 37, scope: !1857)
!1865 = !DILocation(line: 311, column: 2, scope: !1852)
!1866 = !DILocation(line: 306, column: 42, scope: !1867)
!1867 = !DILexicalBlockFile(scope: !1848, file: !814, discriminator: 2)
!1868 = !DILocation(line: 306, column: 47, scope: !1867)
!1869 = !DILocation(line: 306, column: 40, scope: !1867)
!1870 = !DILocation(line: 306, column: 2, scope: !1867)
!1871 = distinct !{!1871, !1872}
!1872 = !DILocation(line: 306, column: 2, scope: !1821)
!1873 = !DILocation(line: 312, column: 1, scope: !1821)
!1874 = distinct !DISubprogram(name: "sig_server_nick_changed", scope: !814, file: !814, line: 315, type: !1743, isLocal: true, isDefinition: true, scopeLine: 316, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !823)
!1875 = !DILocalVariable(name: "server", arg: 1, scope: !1874, file: !814, line: 315, type: !129)
!1876 = !DILocation(line: 315, column: 53, scope: !1874)
!1877 = !DILocalVariable(name: "tmp", scope: !1874, file: !814, line: 317, type: !314)
!1878 = !DILocation(line: 317, column: 17, scope: !1874)
!1879 = !DILocation(line: 319, column: 94, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1874, file: !814, line: 319, column: 13)
!1881 = !DILocation(line: 319, column: 76, scope: !1880)
!1882 = !DILocation(line: 319, column: 61, scope: !1880)
!1883 = !DILocation(line: 319, column: 60, scope: !1880)
!1884 = !DILocation(line: 319, column: 35, scope: !1885)
!1885 = !DILexicalBlockFile(scope: !1880, file: !814, discriminator: 4)
!1886 = !DILocation(line: 319, column: 16, scope: !1880)
!1887 = !DILocation(line: 319, column: 13, scope: !1874)
!1888 = !DILocation(line: 319, column: 15, scope: !1889)
!1889 = !DILexicalBlockFile(scope: !1880, file: !814, discriminator: 1)
!1890 = !DILocation(line: 319, column: 13, scope: !1891)
!1891 = !DILexicalBlockFile(scope: !1874, file: !814, discriminator: 2)
!1892 = !DILocation(line: 319, column: 40, scope: !1893)
!1893 = !DILexicalBlockFile(scope: !1880, file: !814, discriminator: 3)
!1894 = !DILocation(line: 321, column: 13, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1874, file: !814, line: 321, column: 2)
!1896 = !DILocation(line: 321, column: 11, scope: !1895)
!1897 = !DILocation(line: 321, column: 7, scope: !1895)
!1898 = !DILocation(line: 321, column: 24, scope: !1899)
!1899 = !DILexicalBlockFile(scope: !1900, file: !814, discriminator: 1)
!1900 = distinct !DILexicalBlock(scope: !1895, file: !814, line: 321, column: 2)
!1901 = !DILocation(line: 321, column: 28, scope: !1899)
!1902 = !DILocation(line: 321, column: 2, scope: !1899)
!1903 = !DILocalVariable(name: "dcc", scope: !1904, file: !814, line: 322, type: !880)
!1904 = distinct !DILexicalBlock(scope: !1900, file: !814, line: 321, column: 53)
!1905 = !DILocation(line: 322, column: 12, scope: !1904)
!1906 = !DILocation(line: 322, column: 18, scope: !1904)
!1907 = !DILocation(line: 322, column: 23, scope: !1904)
!1908 = !DILocation(line: 324, column: 7, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1904, file: !814, line: 324, column: 7)
!1910 = !DILocation(line: 324, column: 12, scope: !1909)
!1911 = !DILocation(line: 324, column: 22, scope: !1909)
!1912 = !DILocation(line: 324, column: 19, scope: !1909)
!1913 = !DILocation(line: 324, column: 7, scope: !1904)
!1914 = !DILocation(line: 325, column: 11, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1909, file: !814, line: 324, column: 30)
!1916 = !DILocation(line: 325, column: 16, scope: !1915)
!1917 = !DILocation(line: 325, column: 4, scope: !1915)
!1918 = !DILocation(line: 326, column: 27, scope: !1915)
!1919 = !DILocation(line: 326, column: 35, scope: !1915)
!1920 = !DILocation(line: 326, column: 18, scope: !1915)
!1921 = !DILocation(line: 326, column: 4, scope: !1915)
!1922 = !DILocation(line: 326, column: 9, scope: !1915)
!1923 = !DILocation(line: 326, column: 16, scope: !1915)
!1924 = !DILocation(line: 327, column: 3, scope: !1915)
!1925 = !DILocation(line: 328, column: 2, scope: !1904)
!1926 = !DILocation(line: 321, column: 42, scope: !1927)
!1927 = !DILexicalBlockFile(scope: !1900, file: !814, discriminator: 2)
!1928 = !DILocation(line: 321, column: 47, scope: !1927)
!1929 = !DILocation(line: 321, column: 40, scope: !1927)
!1930 = !DILocation(line: 321, column: 2, scope: !1927)
!1931 = distinct !{!1931, !1932}
!1932 = !DILocation(line: 321, column: 2, scope: !1874)
!1933 = !DILocation(line: 329, column: 1, scope: !1874)
!1934 = distinct !DISubprogram(name: "ctcp_msg", scope: !814, file: !814, line: 333, type: !1935, isLocal: true, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !823)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{null, !129, !93, !93, !93, !93}
!1937 = !DILocalVariable(name: "server", arg: 1, scope: !1934, file: !814, line: 333, type: !129)
!1938 = !DILocation(line: 333, column: 38, scope: !1934)
!1939 = !DILocalVariable(name: "data", arg: 2, scope: !1934, file: !814, line: 333, type: !93)
!1940 = !DILocation(line: 333, column: 58, scope: !1934)
!1941 = !DILocalVariable(name: "nick", arg: 3, scope: !1934, file: !814, line: 334, type: !93)
!1942 = !DILocation(line: 334, column: 20, scope: !1934)
!1943 = !DILocalVariable(name: "addr", arg: 4, scope: !1934, file: !814, line: 334, type: !93)
!1944 = !DILocation(line: 334, column: 38, scope: !1934)
!1945 = !DILocalVariable(name: "target", arg: 5, scope: !1934, file: !814, line: 334, type: !93)
!1946 = !DILocation(line: 334, column: 56, scope: !1934)
!1947 = !DILocation(line: 336, column: 26, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1934, file: !814, line: 336, column: 6)
!1949 = !DILocation(line: 336, column: 6, scope: !1948)
!1950 = !DILocation(line: 336, column: 43, scope: !1948)
!1951 = !DILocation(line: 336, column: 6, scope: !1934)
!1952 = !DILocation(line: 337, column: 17, scope: !1948)
!1953 = !DILocation(line: 338, column: 7, scope: !1934)
!1954 = !DILocation(line: 340, column: 33, scope: !1934)
!1955 = !DILocation(line: 340, column: 41, scope: !1934)
!1956 = !DILocation(line: 340, column: 47, scope: !1934)
!1957 = !DILocation(line: 340, column: 53, scope: !1934)
!1958 = !DILocation(line: 340, column: 59, scope: !1934)
!1959 = !DILocation(line: 340, column: 2, scope: !1934)
!1960 = !DILocation(line: 341, column: 9, scope: !1934)
!1961 = !DILocation(line: 342, column: 1, scope: !1934)
!1962 = !DILocation(line: 342, column: 1, scope: !1963)
!1963 = !DILexicalBlockFile(scope: !1934, file: !814, discriminator: 1)
!1964 = distinct !DISubprogram(name: "ctcp_reply", scope: !814, file: !814, line: 346, type: !1935, isLocal: true, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !823)
!1965 = !DILocalVariable(name: "server", arg: 1, scope: !1964, file: !814, line: 346, type: !129)
!1966 = !DILocation(line: 346, column: 40, scope: !1964)
!1967 = !DILocalVariable(name: "data", arg: 2, scope: !1964, file: !814, line: 346, type: !93)
!1968 = !DILocation(line: 346, column: 60, scope: !1964)
!1969 = !DILocalVariable(name: "nick", arg: 3, scope: !1964, file: !814, line: 347, type: !93)
!1970 = !DILocation(line: 347, column: 22, scope: !1964)
!1971 = !DILocalVariable(name: "addr", arg: 4, scope: !1964, file: !814, line: 347, type: !93)
!1972 = !DILocation(line: 347, column: 40, scope: !1964)
!1973 = !DILocalVariable(name: "target", arg: 5, scope: !1964, file: !814, line: 347, type: !93)
!1974 = !DILocation(line: 347, column: 58, scope: !1964)
!1975 = !DILocation(line: 349, column: 26, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1964, file: !814, line: 349, column: 6)
!1977 = !DILocation(line: 349, column: 6, scope: !1976)
!1978 = !DILocation(line: 349, column: 43, scope: !1976)
!1979 = !DILocation(line: 349, column: 6, scope: !1964)
!1980 = !DILocation(line: 350, column: 17, scope: !1976)
!1981 = !DILocation(line: 351, column: 7, scope: !1964)
!1982 = !DILocation(line: 353, column: 35, scope: !1964)
!1983 = !DILocation(line: 353, column: 43, scope: !1964)
!1984 = !DILocation(line: 353, column: 49, scope: !1964)
!1985 = !DILocation(line: 353, column: 55, scope: !1964)
!1986 = !DILocation(line: 353, column: 61, scope: !1964)
!1987 = !DILocation(line: 353, column: 2, scope: !1964)
!1988 = !DILocation(line: 354, column: 9, scope: !1964)
!1989 = !DILocation(line: 355, column: 1, scope: !1964)
!1990 = !DILocation(line: 355, column: 1, scope: !1991)
!1991 = !DILexicalBlockFile(scope: !1964, file: !814, discriminator: 1)
!1992 = distinct !DISubprogram(name: "ctcp_msg_dcc", scope: !814, file: !814, line: 358, type: !1993, isLocal: true, isDefinition: true, scopeLine: 361, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !823)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{null, !129, !93, !93, !93, !93, !880}
!1995 = !DILocalVariable(name: "server", arg: 1, scope: !1992, file: !814, line: 358, type: !129)
!1996 = !DILocation(line: 358, column: 42, scope: !1992)
!1997 = !DILocalVariable(name: "data", arg: 2, scope: !1992, file: !814, line: 358, type: !93)
!1998 = !DILocation(line: 358, column: 62, scope: !1992)
!1999 = !DILocalVariable(name: "nick", arg: 3, scope: !1992, file: !814, line: 359, type: !93)
!2000 = !DILocation(line: 359, column: 17, scope: !1992)
!2001 = !DILocalVariable(name: "addr", arg: 4, scope: !1992, file: !814, line: 359, type: !93)
!2002 = !DILocation(line: 359, column: 35, scope: !1992)
!2003 = !DILocalVariable(name: "target", arg: 5, scope: !1992, file: !814, line: 360, type: !93)
!2004 = !DILocation(line: 360, column: 17, scope: !1992)
!2005 = !DILocalVariable(name: "chat", arg: 6, scope: !1992, file: !814, line: 360, type: !880)
!2006 = !DILocation(line: 360, column: 34, scope: !1992)
!2007 = !DILocalVariable(name: "args", scope: !1992, file: !814, line: 362, type: !149)
!2008 = !DILocation(line: 362, column: 8, scope: !1992)
!2009 = !DILocalVariable(name: "str", scope: !1992, file: !814, line: 362, type: !149)
!2010 = !DILocation(line: 362, column: 15, scope: !1992)
!2011 = !DILocation(line: 364, column: 53, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !1992, file: !814, line: 364, column: 6)
!2013 = !DILocation(line: 364, column: 35, scope: !2012)
!2014 = !DILocation(line: 364, column: 20, scope: !2012)
!2015 = !DILocation(line: 364, column: 32, scope: !2012)
!2016 = !DILocation(line: 364, column: 38, scope: !2012)
!2017 = !DILocation(line: 364, column: 44, scope: !2012)
!2018 = !DILocation(line: 364, column: 52, scope: !2012)
!2019 = !DILocation(line: 364, column: 6, scope: !2020)
!2020 = !DILexicalBlockFile(scope: !2012, file: !814, discriminator: 1)
!2021 = !DILocation(line: 364, column: 6, scope: !2012)
!2022 = !DILocation(line: 364, column: 6, scope: !1992)
!2023 = !DILocation(line: 365, column: 3, scope: !2012)
!2024 = !DILocation(line: 367, column: 37, scope: !1992)
!2025 = !DILocation(line: 367, column: 8, scope: !1992)
!2026 = !DILocation(line: 367, column: 6, scope: !1992)
!2027 = !DILocation(line: 368, column: 16, scope: !1992)
!2028 = !DILocation(line: 368, column: 19, scope: !1992)
!2029 = !DILocation(line: 368, column: 9, scope: !1992)
!2030 = !DILocation(line: 368, column: 7, scope: !1992)
!2031 = !DILocation(line: 369, column: 6, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !1992, file: !814, line: 369, column: 6)
!2033 = !DILocation(line: 369, column: 11, scope: !2032)
!2034 = !DILocation(line: 369, column: 6, scope: !1992)
!2035 = !DILocation(line: 369, column: 24, scope: !2036)
!2036 = !DILexicalBlockFile(scope: !2032, file: !814, discriminator: 1)
!2037 = !DILocation(line: 369, column: 27, scope: !2036)
!2038 = !DILocation(line: 369, column: 19, scope: !2036)
!2039 = !DILocation(line: 369, column: 45, scope: !2040)
!2040 = !DILexicalBlockFile(scope: !2032, file: !814, discriminator: 2)
!2041 = !DILocation(line: 371, column: 16, scope: !1992)
!2042 = !DILocation(line: 371, column: 19, scope: !1992)
!2043 = !DILocation(line: 371, column: 2, scope: !1992)
!2044 = !DILocation(line: 372, column: 19, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !1992, file: !814, line: 372, column: 6)
!2046 = !DILocation(line: 372, column: 27, scope: !2045)
!2047 = !DILocation(line: 372, column: 35, scope: !2045)
!2048 = !DILocation(line: 372, column: 41, scope: !2045)
!2049 = !DILocation(line: 372, column: 47, scope: !2045)
!2050 = !DILocation(line: 372, column: 53, scope: !2045)
!2051 = !DILocation(line: 372, column: 61, scope: !2045)
!2052 = !DILocation(line: 372, column: 7, scope: !2045)
!2053 = !DILocation(line: 372, column: 6, scope: !1992)
!2054 = !DILocation(line: 374, column: 8, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2045, file: !814, line: 372, column: 68)
!2056 = !DILocation(line: 374, column: 16, scope: !2055)
!2057 = !DILocation(line: 374, column: 22, scope: !2055)
!2058 = !DILocation(line: 374, column: 28, scope: !2055)
!2059 = !DILocation(line: 374, column: 34, scope: !2055)
!2060 = !DILocation(line: 374, column: 42, scope: !2055)
!2061 = !DILocation(line: 373, column: 3, scope: !2055)
!2062 = !DILocation(line: 375, column: 2, scope: !2055)
!2063 = !DILocation(line: 376, column: 9, scope: !1992)
!2064 = !DILocation(line: 376, column: 2, scope: !1992)
!2065 = !DILocation(line: 377, column: 1, scope: !1992)
!2066 = !DILocation(line: 377, column: 1, scope: !2067)
!2067 = !DILexicalBlockFile(scope: !1992, file: !814, discriminator: 1)
!2068 = distinct !DISubprogram(name: "ctcp_reply_dcc", scope: !814, file: !814, line: 380, type: !1935, isLocal: true, isDefinition: true, scopeLine: 383, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !823)
!2069 = !DILocalVariable(name: "server", arg: 1, scope: !2068, file: !814, line: 380, type: !129)
!2070 = !DILocation(line: 380, column: 44, scope: !2068)
!2071 = !DILocalVariable(name: "data", arg: 2, scope: !2068, file: !814, line: 380, type: !93)
!2072 = !DILocation(line: 380, column: 64, scope: !2068)
!2073 = !DILocalVariable(name: "nick", arg: 3, scope: !2068, file: !814, line: 381, type: !93)
!2074 = !DILocation(line: 381, column: 19, scope: !2068)
!2075 = !DILocalVariable(name: "addr", arg: 4, scope: !2068, file: !814, line: 381, type: !93)
!2076 = !DILocation(line: 381, column: 37, scope: !2068)
!2077 = !DILocalVariable(name: "target", arg: 5, scope: !2068, file: !814, line: 382, type: !93)
!2078 = !DILocation(line: 382, column: 19, scope: !2068)
!2079 = !DILocalVariable(name: "args", scope: !2068, file: !814, line: 384, type: !149)
!2080 = !DILocation(line: 384, column: 8, scope: !2068)
!2081 = !DILocalVariable(name: "str", scope: !2068, file: !814, line: 384, type: !149)
!2082 = !DILocation(line: 384, column: 15, scope: !2068)
!2083 = !DILocation(line: 386, column: 53, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2068, file: !814, line: 386, column: 6)
!2085 = !DILocation(line: 386, column: 35, scope: !2084)
!2086 = !DILocation(line: 386, column: 20, scope: !2084)
!2087 = !DILocation(line: 386, column: 32, scope: !2084)
!2088 = !DILocation(line: 386, column: 38, scope: !2084)
!2089 = !DILocation(line: 386, column: 44, scope: !2084)
!2090 = !DILocation(line: 386, column: 52, scope: !2084)
!2091 = !DILocation(line: 386, column: 6, scope: !2092)
!2092 = !DILexicalBlockFile(scope: !2084, file: !814, discriminator: 1)
!2093 = !DILocation(line: 386, column: 6, scope: !2084)
!2094 = !DILocation(line: 386, column: 6, scope: !2068)
!2095 = !DILocation(line: 387, column: 3, scope: !2084)
!2096 = !DILocation(line: 389, column: 39, scope: !2068)
!2097 = !DILocation(line: 389, column: 8, scope: !2068)
!2098 = !DILocation(line: 389, column: 6, scope: !2068)
!2099 = !DILocation(line: 390, column: 16, scope: !2068)
!2100 = !DILocation(line: 390, column: 19, scope: !2068)
!2101 = !DILocation(line: 390, column: 9, scope: !2068)
!2102 = !DILocation(line: 390, column: 7, scope: !2068)
!2103 = !DILocation(line: 391, column: 6, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2068, file: !814, line: 391, column: 6)
!2105 = !DILocation(line: 391, column: 11, scope: !2104)
!2106 = !DILocation(line: 391, column: 6, scope: !2068)
!2107 = !DILocation(line: 391, column: 24, scope: !2108)
!2108 = !DILexicalBlockFile(scope: !2104, file: !814, discriminator: 1)
!2109 = !DILocation(line: 391, column: 27, scope: !2108)
!2110 = !DILocation(line: 391, column: 19, scope: !2108)
!2111 = !DILocation(line: 391, column: 45, scope: !2112)
!2112 = !DILexicalBlockFile(scope: !2104, file: !814, discriminator: 2)
!2113 = !DILocation(line: 393, column: 16, scope: !2068)
!2114 = !DILocation(line: 393, column: 19, scope: !2068)
!2115 = !DILocation(line: 393, column: 2, scope: !2068)
!2116 = !DILocation(line: 394, column: 19, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2068, file: !814, line: 394, column: 6)
!2118 = !DILocation(line: 394, column: 27, scope: !2117)
!2119 = !DILocation(line: 394, column: 35, scope: !2117)
!2120 = !DILocation(line: 394, column: 41, scope: !2117)
!2121 = !DILocation(line: 394, column: 47, scope: !2117)
!2122 = !DILocation(line: 394, column: 53, scope: !2117)
!2123 = !DILocation(line: 394, column: 7, scope: !2117)
!2124 = !DILocation(line: 394, column: 6, scope: !2068)
!2125 = !DILocation(line: 396, column: 8, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2117, file: !814, line: 394, column: 62)
!2127 = !DILocation(line: 396, column: 16, scope: !2126)
!2128 = !DILocation(line: 396, column: 22, scope: !2126)
!2129 = !DILocation(line: 396, column: 28, scope: !2126)
!2130 = !DILocation(line: 396, column: 34, scope: !2126)
!2131 = !DILocation(line: 395, column: 3, scope: !2126)
!2132 = !DILocation(line: 397, column: 2, scope: !2126)
!2133 = !DILocation(line: 398, column: 9, scope: !2068)
!2134 = !DILocation(line: 398, column: 2, scope: !2068)
!2135 = !DILocation(line: 399, column: 1, scope: !2068)
!2136 = !DILocation(line: 399, column: 1, scope: !2137)
!2137 = !DILexicalBlockFile(scope: !2068, file: !814, discriminator: 1)
!2138 = distinct !DISubprogram(name: "ctcp_reply_dcc_reject", scope: !814, file: !814, line: 402, type: !2139, isLocal: true, isDefinition: true, scopeLine: 405, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !823)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{null, !129, !93, !93, !93, !880}
!2141 = !DILocalVariable(name: "server", arg: 1, scope: !2138, file: !814, line: 402, type: !129)
!2142 = !DILocation(line: 402, column: 51, scope: !2138)
!2143 = !DILocalVariable(name: "data", arg: 2, scope: !2138, file: !814, line: 402, type: !93)
!2144 = !DILocation(line: 402, column: 71, scope: !2138)
!2145 = !DILocalVariable(name: "nick", arg: 3, scope: !2138, file: !814, line: 403, type: !93)
!2146 = !DILocation(line: 403, column: 19, scope: !2138)
!2147 = !DILocalVariable(name: "addr", arg: 4, scope: !2138, file: !814, line: 403, type: !93)
!2148 = !DILocation(line: 403, column: 37, scope: !2138)
!2149 = !DILocalVariable(name: "chat", arg: 5, scope: !2138, file: !814, line: 404, type: !880)
!2150 = !DILocation(line: 404, column: 16, scope: !2138)
!2151 = !DILocalVariable(name: "dcc", scope: !2138, file: !814, line: 406, type: !880)
!2152 = !DILocation(line: 406, column: 18, scope: !2138)
!2153 = !DILocalVariable(name: "type", scope: !2138, file: !814, line: 407, type: !149)
!2154 = !DILocation(line: 407, column: 8, scope: !2138)
!2155 = !DILocalVariable(name: "args", scope: !2138, file: !814, line: 407, type: !149)
!2156 = !DILocation(line: 407, column: 15, scope: !2138)
!2157 = !DILocation(line: 409, column: 18, scope: !2138)
!2158 = !DILocation(line: 409, column: 9, scope: !2138)
!2159 = !DILocation(line: 409, column: 7, scope: !2138)
!2160 = !DILocation(line: 410, column: 16, scope: !2138)
!2161 = !DILocation(line: 410, column: 9, scope: !2138)
!2162 = !DILocation(line: 410, column: 7, scope: !2138)
!2163 = !DILocation(line: 411, column: 13, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2138, file: !814, line: 411, column: 13)
!2165 = !DILocation(line: 411, column: 18, scope: !2164)
!2166 = !DILocation(line: 411, column: 13, scope: !2138)
!2167 = !DILocation(line: 411, column: 31, scope: !2168)
!2168 = !DILexicalBlockFile(scope: !2164, file: !814, discriminator: 1)
!2169 = !DILocation(line: 411, column: 34, scope: !2168)
!2170 = !DILocation(line: 411, column: 26, scope: !2168)
!2171 = !DILocation(line: 411, column: 52, scope: !2172)
!2172 = !DILexicalBlockFile(scope: !2164, file: !814, discriminator: 2)
!2173 = !DILocation(line: 413, column: 38, scope: !2138)
!2174 = !DILocation(line: 413, column: 25, scope: !2138)
!2175 = !DILocation(line: 413, column: 45, scope: !2138)
!2176 = !DILocation(line: 413, column: 51, scope: !2138)
!2177 = !DILocation(line: 413, column: 8, scope: !2178)
!2178 = !DILexicalBlockFile(scope: !2138, file: !814, discriminator: 1)
!2179 = !DILocation(line: 413, column: 6, scope: !2138)
!2180 = !DILocation(line: 414, column: 6, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2138, file: !814, line: 414, column: 6)
!2182 = !DILocation(line: 414, column: 10, scope: !2181)
!2183 = !DILocation(line: 414, column: 6, scope: !2138)
!2184 = !DILocation(line: 414, column: 28, scope: !2185)
!2185 = !DILexicalBlockFile(scope: !2181, file: !814, discriminator: 1)
!2186 = !DILocation(line: 414, column: 18, scope: !2185)
!2187 = !DILocation(line: 416, column: 16, scope: !2138)
!2188 = !DILocation(line: 416, column: 9, scope: !2138)
!2189 = !DILocation(line: 417, column: 1, scope: !2138)
!2190 = distinct !DISubprogram(name: "event_no_such_nick", scope: !814, file: !814, line: 468, type: !2191, isLocal: true, isDefinition: true, scopeLine: 469, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !823)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{null, !129, !149}
!2193 = !DILocalVariable(name: "server", arg: 1, scope: !2190, file: !814, line: 468, type: !129)
!2194 = !DILocation(line: 468, column: 48, scope: !2190)
!2195 = !DILocalVariable(name: "data", arg: 2, scope: !2190, file: !814, line: 468, type: !149)
!2196 = !DILocation(line: 468, column: 62, scope: !2190)
!2197 = !DILocalVariable(name: "params", scope: !2190, file: !814, line: 470, type: !149)
!2198 = !DILocation(line: 470, column: 8, scope: !2190)
!2199 = !DILocalVariable(name: "nick", scope: !2190, file: !814, line: 470, type: !149)
!2200 = !DILocation(line: 470, column: 17, scope: !2190)
!2201 = !DILocalVariable(name: "tmp", scope: !2190, file: !814, line: 471, type: !314)
!2202 = !DILocation(line: 471, column: 10, scope: !2190)
!2203 = !DILocalVariable(name: "next", scope: !2190, file: !814, line: 471, type: !314)
!2204 = !DILocation(line: 471, column: 16, scope: !2190)
!2205 = !DILocation(line: 473, column: 2, scope: !2190)
!2206 = distinct !{!2206, !2205}
!2207 = !DILocation(line: 473, column: 10, scope: !2208)
!2208 = !DILexicalBlockFile(scope: !2209, file: !814, discriminator: 1)
!2209 = distinct !DILexicalBlock(scope: !2210, file: !814, line: 473, column: 10)
!2210 = distinct !DILexicalBlock(scope: !2190, file: !814, line: 473, column: 4)
!2211 = !DILocation(line: 473, column: 15, scope: !2208)
!2212 = !DILocation(line: 473, column: 5, scope: !2213)
!2213 = !DILexicalBlockFile(scope: !2214, file: !814, discriminator: 2)
!2214 = distinct !DILexicalBlock(scope: !2209, file: !814, line: 473, column: 3)
!2215 = !DILocation(line: 473, column: 14, scope: !2216)
!2216 = !DILexicalBlockFile(scope: !2217, file: !814, discriminator: 3)
!2217 = distinct !DILexicalBlock(scope: !2209, file: !814, line: 473, column: 12)
!2218 = !DILocation(line: 473, column: 99, scope: !2216)
!2219 = !DILocation(line: 473, column: 110, scope: !2220)
!2220 = !DILexicalBlockFile(scope: !2210, file: !814, discriminator: 4)
!2221 = !DILocation(line: 475, column: 28, scope: !2190)
!2222 = !DILocation(line: 475, column: 11, scope: !2190)
!2223 = !DILocation(line: 475, column: 9, scope: !2190)
!2224 = !DILocation(line: 478, column: 13, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2190, file: !814, line: 478, column: 2)
!2226 = !DILocation(line: 478, column: 11, scope: !2225)
!2227 = !DILocation(line: 478, column: 7, scope: !2225)
!2228 = !DILocation(line: 478, column: 24, scope: !2229)
!2229 = !DILexicalBlockFile(scope: !2230, file: !814, discriminator: 1)
!2230 = distinct !DILexicalBlock(scope: !2225, file: !814, line: 478, column: 2)
!2231 = !DILocation(line: 478, column: 28, scope: !2229)
!2232 = !DILocation(line: 478, column: 2, scope: !2229)
!2233 = !DILocalVariable(name: "dcc", scope: !2234, file: !814, line: 479, type: !880)
!2234 = distinct !DILexicalBlock(scope: !2230, file: !814, line: 478, column: 48)
!2235 = !DILocation(line: 479, column: 12, scope: !2234)
!2236 = !DILocation(line: 479, column: 18, scope: !2234)
!2237 = !DILocation(line: 479, column: 23, scope: !2234)
!2238 = !DILocation(line: 481, column: 10, scope: !2234)
!2239 = !DILocation(line: 481, column: 15, scope: !2234)
!2240 = !DILocation(line: 481, column: 8, scope: !2234)
!2241 = !DILocation(line: 482, column: 10, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2234, file: !814, line: 482, column: 7)
!2243 = !DILocation(line: 482, column: 16, scope: !2242)
!2244 = !DILocation(line: 482, column: 26, scope: !2242)
!2245 = !DILocation(line: 482, column: 32, scope: !2242)
!2246 = !DILocation(line: 482, column: 35, scope: !2247)
!2247 = !DILexicalBlockFile(scope: !2242, file: !814, discriminator: 1)
!2248 = !DILocation(line: 482, column: 40, scope: !2247)
!2249 = !DILocation(line: 482, column: 50, scope: !2247)
!2250 = !DILocation(line: 482, column: 47, scope: !2247)
!2251 = !DILocation(line: 482, column: 57, scope: !2247)
!2252 = !DILocation(line: 483, column: 7, scope: !2242)
!2253 = !DILocation(line: 483, column: 12, scope: !2242)
!2254 = !DILocation(line: 483, column: 17, scope: !2242)
!2255 = !DILocation(line: 483, column: 24, scope: !2242)
!2256 = !DILocation(line: 483, column: 46, scope: !2247)
!2257 = !DILocation(line: 483, column: 51, scope: !2247)
!2258 = !DILocation(line: 483, column: 57, scope: !2247)
!2259 = !DILocation(line: 483, column: 27, scope: !2247)
!2260 = !DILocation(line: 483, column: 63, scope: !2247)
!2261 = !DILocation(line: 482, column: 7, scope: !2262)
!2262 = !DILexicalBlockFile(scope: !2234, file: !814, discriminator: 2)
!2263 = !DILocation(line: 484, column: 14, scope: !2242)
!2264 = !DILocation(line: 484, column: 4, scope: !2242)
!2265 = !DILocation(line: 485, column: 2, scope: !2234)
!2266 = !DILocation(line: 478, column: 42, scope: !2267)
!2267 = !DILexicalBlockFile(scope: !2230, file: !814, discriminator: 2)
!2268 = !DILocation(line: 478, column: 40, scope: !2267)
!2269 = !DILocation(line: 478, column: 2, scope: !2267)
!2270 = distinct !{!2270, !2271}
!2271 = !DILocation(line: 478, column: 2, scope: !2190)
!2272 = !DILocation(line: 487, column: 9, scope: !2190)
!2273 = !DILocation(line: 487, column: 2, scope: !2190)
!2274 = !DILocation(line: 488, column: 1, scope: !2190)
!2275 = !DILocation(line: 488, column: 1, scope: !2276)
!2276 = !DILexicalBlockFile(scope: !2190, file: !814, discriminator: 1)
!2277 = distinct !DISubprogram(name: "cmd_dcc", scope: !814, file: !814, line: 536, type: !2278, isLocal: true, isDefinition: true, scopeLine: 537, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !823)
!2278 = !DISubroutineType(types: !2279)
!2279 = !{null, !93, !129, !88}
!2280 = !DILocalVariable(name: "data", arg: 1, scope: !2277, file: !814, line: 536, type: !93)
!2281 = !DILocation(line: 536, column: 33, scope: !2277)
!2282 = !DILocalVariable(name: "server", arg: 2, scope: !2277, file: !814, line: 536, type: !129)
!2283 = !DILocation(line: 536, column: 55, scope: !2277)
!2284 = !DILocalVariable(name: "item", arg: 3, scope: !2277, file: !814, line: 536, type: !88)
!2285 = !DILocation(line: 536, column: 69, scope: !2277)
!2286 = !DILocation(line: 538, column: 24, scope: !2277)
!2287 = !DILocation(line: 538, column: 30, scope: !2277)
!2288 = !DILocation(line: 538, column: 38, scope: !2277)
!2289 = !DILocation(line: 538, column: 2, scope: !2277)
!2290 = !DILocation(line: 539, column: 1, scope: !2277)
!2291 = distinct !DISubprogram(name: "cmd_dcc_close", scope: !814, file: !814, line: 491, type: !2292, isLocal: true, isDefinition: true, scopeLine: 492, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !823)
!2292 = !DISubroutineType(types: !2293)
!2293 = !{null, !149, !129}
!2294 = !DILocalVariable(name: "data", arg: 1, scope: !2291, file: !814, line: 491, type: !149)
!2295 = !DILocation(line: 491, column: 33, scope: !2291)
!2296 = !DILocalVariable(name: "server", arg: 2, scope: !2291, file: !814, line: 491, type: !129)
!2297 = !DILocation(line: 491, column: 55, scope: !2291)
!2298 = !DILocalVariable(name: "tmp", scope: !2291, file: !814, line: 493, type: !314)
!2299 = !DILocation(line: 493, column: 10, scope: !2291)
!2300 = !DILocalVariable(name: "next", scope: !2291, file: !814, line: 493, type: !314)
!2301 = !DILocation(line: 493, column: 16, scope: !2291)
!2302 = !DILocalVariable(name: "typestr", scope: !2291, file: !814, line: 494, type: !149)
!2303 = !DILocation(line: 494, column: 8, scope: !2291)
!2304 = !DILocalVariable(name: "nick", scope: !2291, file: !814, line: 494, type: !149)
!2305 = !DILocation(line: 494, column: 18, scope: !2291)
!2306 = !DILocalVariable(name: "arg", scope: !2291, file: !814, line: 494, type: !149)
!2307 = !DILocation(line: 494, column: 25, scope: !2291)
!2308 = !DILocalVariable(name: "fname", scope: !2291, file: !814, line: 494, type: !149)
!2309 = !DILocation(line: 494, column: 31, scope: !2291)
!2310 = !DILocalVariable(name: "free_arg", scope: !2291, file: !814, line: 495, type: !88)
!2311 = !DILocation(line: 495, column: 8, scope: !2291)
!2312 = !DILocalVariable(name: "found", scope: !2291, file: !814, line: 496, type: !105)
!2313 = !DILocation(line: 496, column: 6, scope: !2291)
!2314 = !DILocalVariable(name: "type", scope: !2291, file: !814, line: 496, type: !105)
!2315 = !DILocation(line: 496, column: 13, scope: !2291)
!2316 = !DILocation(line: 498, column: 2, scope: !2291)
!2317 = distinct !{!2317, !2316}
!2318 = !DILocation(line: 498, column: 10, scope: !2319)
!2319 = !DILexicalBlockFile(scope: !2320, file: !814, discriminator: 1)
!2320 = distinct !DILexicalBlock(scope: !2321, file: !814, line: 498, column: 10)
!2321 = distinct !DILexicalBlock(scope: !2291, file: !814, line: 498, column: 4)
!2322 = !DILocation(line: 498, column: 15, scope: !2319)
!2323 = !DILocation(line: 498, column: 5, scope: !2324)
!2324 = !DILexicalBlockFile(scope: !2325, file: !814, discriminator: 2)
!2325 = distinct !DILexicalBlock(scope: !2320, file: !814, line: 498, column: 3)
!2326 = !DILocation(line: 498, column: 14, scope: !2327)
!2327 = !DILexicalBlockFile(scope: !2328, file: !814, discriminator: 3)
!2328 = distinct !DILexicalBlock(scope: !2320, file: !814, line: 498, column: 12)
!2329 = !DILocation(line: 498, column: 99, scope: !2327)
!2330 = !DILocation(line: 498, column: 110, scope: !2331)
!2331 = !DILexicalBlockFile(scope: !2321, file: !814, discriminator: 4)
!2332 = !DILocation(line: 500, column: 22, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2291, file: !814, line: 500, column: 6)
!2334 = !DILocation(line: 500, column: 7, scope: !2333)
!2335 = !DILocation(line: 500, column: 6, scope: !2291)
!2336 = !DILocation(line: 502, column: 3, scope: !2333)
!2337 = !DILocation(line: 504, column: 7, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2291, file: !814, line: 504, column: 6)
!2339 = !DILocation(line: 504, column: 6, scope: !2338)
!2340 = !DILocation(line: 504, column: 12, scope: !2338)
!2341 = !DILocation(line: 504, column: 6, scope: !2291)
!2342 = !DILocation(line: 504, column: 21, scope: !2343)
!2343 = !DILexicalBlockFile(scope: !2338, file: !814, discriminator: 1)
!2344 = distinct !{!2344, !2345}
!2345 = !DILocation(line: 504, column: 21, scope: !2338)
!2346 = !DILocation(line: 504, column: 42, scope: !2347)
!2347 = !DILexicalBlockFile(scope: !2348, file: !814, discriminator: 2)
!2348 = distinct !DILexicalBlock(scope: !2338, file: !814, line: 504, column: 24)
!2349 = !DILocation(line: 504, column: 26, scope: !2347)
!2350 = !DILocation(line: 504, column: 53, scope: !2347)
!2351 = distinct !{!2351, !2352}
!2352 = !DILocation(line: 504, column: 53, scope: !2348)
!2353 = !DILocation(line: 504, column: 58, scope: !2354)
!2354 = !DILexicalBlockFile(scope: !2355, file: !814, discriminator: 3)
!2355 = distinct !DILexicalBlock(scope: !2348, file: !814, line: 504, column: 56)
!2356 = !DILocation(line: 504, column: 140, scope: !2357)
!2357 = !DILexicalBlockFile(scope: !2354, file: !814, discriminator: 6)
!2358 = !DILocation(line: 504, column: 155, scope: !2354)
!2359 = !DILocation(line: 504, column: 176, scope: !2360)
!2360 = !DILexicalBlockFile(scope: !2348, file: !814, discriminator: 4)
!2361 = !DILocation(line: 504, column: 176, scope: !2362)
!2362 = !DILexicalBlockFile(scope: !2348, file: !814, discriminator: 5)
!2363 = !DILocation(line: 506, column: 14, scope: !2291)
!2364 = !DILocation(line: 506, column: 2, scope: !2291)
!2365 = !DILocation(line: 507, column: 22, scope: !2291)
!2366 = !DILocation(line: 507, column: 9, scope: !2291)
!2367 = !DILocation(line: 507, column: 7, scope: !2291)
!2368 = !DILocation(line: 508, column: 6, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2291, file: !814, line: 508, column: 6)
!2370 = !DILocation(line: 508, column: 11, scope: !2369)
!2371 = !DILocation(line: 508, column: 6, scope: !2291)
!2372 = !DILocation(line: 509, column: 44, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2369, file: !814, line: 508, column: 18)
!2374 = !DILocation(line: 509, column: 3, scope: !2373)
!2375 = !DILocation(line: 510, column: 19, scope: !2373)
!2376 = !DILocation(line: 510, column: 3, scope: !2373)
!2377 = !DILocation(line: 511, column: 3, scope: !2373)
!2378 = !DILocation(line: 514, column: 10, scope: !2291)
!2379 = !DILocation(line: 514, column: 8, scope: !2291)
!2380 = !DILocation(line: 516, column: 8, scope: !2291)
!2381 = !DILocation(line: 517, column: 13, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2291, file: !814, line: 517, column: 2)
!2383 = !DILocation(line: 517, column: 11, scope: !2382)
!2384 = !DILocation(line: 517, column: 7, scope: !2382)
!2385 = !DILocation(line: 517, column: 24, scope: !2386)
!2386 = !DILexicalBlockFile(scope: !2387, file: !814, discriminator: 1)
!2387 = distinct !DILexicalBlock(scope: !2382, file: !814, line: 517, column: 2)
!2388 = !DILocation(line: 517, column: 28, scope: !2386)
!2389 = !DILocation(line: 517, column: 2, scope: !2386)
!2390 = !DILocalVariable(name: "dcc", scope: !2391, file: !814, line: 518, type: !880)
!2391 = distinct !DILexicalBlock(scope: !2387, file: !814, line: 517, column: 48)
!2392 = !DILocation(line: 518, column: 12, scope: !2391)
!2393 = !DILocation(line: 518, column: 18, scope: !2391)
!2394 = !DILocation(line: 518, column: 23, scope: !2391)
!2395 = !DILocation(line: 520, column: 10, scope: !2391)
!2396 = !DILocation(line: 520, column: 15, scope: !2391)
!2397 = !DILocation(line: 520, column: 8, scope: !2391)
!2398 = !DILocation(line: 521, column: 7, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2391, file: !814, line: 521, column: 7)
!2400 = !DILocation(line: 521, column: 12, scope: !2399)
!2401 = !DILocation(line: 521, column: 20, scope: !2399)
!2402 = !DILocation(line: 521, column: 17, scope: !2399)
!2403 = !DILocation(line: 521, column: 25, scope: !2399)
!2404 = !DILocation(line: 521, column: 47, scope: !2405)
!2405 = !DILexicalBlockFile(scope: !2399, file: !814, discriminator: 1)
!2406 = !DILocation(line: 521, column: 52, scope: !2405)
!2407 = !DILocation(line: 521, column: 58, scope: !2405)
!2408 = !DILocation(line: 521, column: 28, scope: !2405)
!2409 = !DILocation(line: 521, column: 64, scope: !2405)
!2410 = !DILocation(line: 521, column: 69, scope: !2405)
!2411 = !DILocation(line: 522, column: 9, scope: !2399)
!2412 = !DILocation(line: 522, column: 8, scope: !2399)
!2413 = !DILocation(line: 522, column: 15, scope: !2399)
!2414 = !DILocation(line: 522, column: 23, scope: !2399)
!2415 = !DILocation(line: 522, column: 36, scope: !2405)
!2416 = !DILocation(line: 522, column: 41, scope: !2405)
!2417 = !DILocation(line: 522, column: 46, scope: !2405)
!2418 = !DILocation(line: 522, column: 26, scope: !2405)
!2419 = !DILocation(line: 522, column: 53, scope: !2405)
!2420 = !DILocation(line: 521, column: 7, scope: !2421)
!2421 = !DILexicalBlockFile(scope: !2391, file: !814, discriminator: 2)
!2422 = !DILocation(line: 523, column: 15, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2399, file: !814, line: 522, column: 60)
!2424 = !DILocation(line: 523, column: 20, scope: !2423)
!2425 = !DILocation(line: 523, column: 4, scope: !2423)
!2426 = !DILocation(line: 524, column: 10, scope: !2423)
!2427 = !DILocation(line: 525, column: 3, scope: !2423)
!2428 = !DILocation(line: 526, column: 2, scope: !2391)
!2429 = !DILocation(line: 517, column: 42, scope: !2430)
!2430 = !DILexicalBlockFile(scope: !2387, file: !814, discriminator: 2)
!2431 = !DILocation(line: 517, column: 40, scope: !2430)
!2432 = !DILocation(line: 517, column: 2, scope: !2430)
!2433 = distinct !{!2433, !2434}
!2434 = !DILocation(line: 517, column: 2, scope: !2291)
!2435 = !DILocation(line: 528, column: 7, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2291, file: !814, line: 528, column: 6)
!2437 = !DILocation(line: 528, column: 6, scope: !2291)
!2438 = !DILocation(line: 530, column: 8, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2436, file: !814, line: 528, column: 14)
!2440 = !DILocation(line: 530, column: 17, scope: !2439)
!2441 = !DILocation(line: 530, column: 23, scope: !2439)
!2442 = !DILocation(line: 529, column: 3, scope: !2439)
!2443 = !DILocation(line: 531, column: 2, scope: !2439)
!2444 = !DILocation(line: 533, column: 18, scope: !2291)
!2445 = !DILocation(line: 533, column: 2, scope: !2291)
!2446 = !DILocation(line: 534, column: 1, scope: !2291)
!2447 = !DILocation(line: 534, column: 1, scope: !2448)
!2448 = !DILexicalBlockFile(scope: !2291, file: !814, discriminator: 1)
!2449 = distinct !DISubprogram(name: "irc_dcc_deinit", scope: !814, file: !814, line: 573, type: !302, isLocal: false, isDefinition: true, scopeLine: 574, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !823)
!2450 = !DILocation(line: 575, column: 2, scope: !2449)
!2451 = !DILocation(line: 575, column: 9, scope: !2452)
!2452 = !DILexicalBlockFile(scope: !2449, file: !814, discriminator: 1)
!2453 = !DILocation(line: 575, column: 19, scope: !2452)
!2454 = !DILocation(line: 575, column: 2, scope: !2452)
!2455 = !DILocation(line: 576, column: 15, scope: !2449)
!2456 = !DILocation(line: 576, column: 26, scope: !2449)
!2457 = !DILocation(line: 576, column: 3, scope: !2449)
!2458 = !DILocation(line: 575, column: 2, scope: !2459)
!2459 = !DILexicalBlockFile(scope: !2449, file: !814, discriminator: 2)
!2460 = distinct !{!2460, !2450}
!2461 = !DILocation(line: 578, column: 2, scope: !2449)
!2462 = !DILocation(line: 579, column: 2, scope: !2449)
!2463 = !DILocation(line: 580, column: 2, scope: !2449)
!2464 = !DILocation(line: 581, column: 2, scope: !2449)
!2465 = !DILocation(line: 582, column: 2, scope: !2449)
!2466 = !DILocation(line: 583, column: 2, scope: !2449)
!2467 = !DILocation(line: 585, column: 2, scope: !2449)
!2468 = !DILocation(line: 586, column: 2, scope: !2449)
!2469 = !DILocation(line: 587, column: 2, scope: !2449)
!2470 = !DILocation(line: 588, column: 2, scope: !2449)
!2471 = !DILocation(line: 589, column: 2, scope: !2449)
!2472 = !DILocation(line: 590, column: 2, scope: !2449)
!2473 = !DILocation(line: 591, column: 2, scope: !2449)
!2474 = !DILocation(line: 592, column: 2, scope: !2449)
!2475 = !DILocation(line: 593, column: 2, scope: !2449)
!2476 = !DILocation(line: 594, column: 2, scope: !2449)
!2477 = !DILocation(line: 595, column: 2, scope: !2449)
!2478 = !DILocation(line: 597, column: 18, scope: !2449)
!2479 = !DILocation(line: 597, column: 2, scope: !2449)
!2480 = !DILocation(line: 598, column: 1, scope: !2449)
