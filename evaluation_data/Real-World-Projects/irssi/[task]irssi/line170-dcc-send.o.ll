; ModuleID = './line170-dcc-send.o.i'
source_filename = "./line170-dcc-send.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.SEND_DCC_REC = type { i32, i32, i64, %struct._IRC_SERVER_REC*, i8*, i8*, i8*, %struct.CHAT_DCC_REC*, i8*, i8*, %struct._IPADDR, [46 x i8], i32, %struct._GIOChannel*, i32, i32, i32, i64, i64, i32, i8, %struct._GHashTable*, i64, i64, i32, i32, [4 x i8], i32, i8 }
%struct._IRC_SERVER_REC = type { i32, i32, i32, %struct._IRC_SERVER_CONNECT_REC*, i64, i64, i8*, i8*, i8, %struct._NET_SENDBUF_REC*, i32, [2 x %struct._GIOChannel*], i32, i32, %struct._RAWLOG_REC*, %struct._GHashTable*, i8*, i8*, i8*, i8, %struct._GTimeVal, i64, i32, %struct._GSList*, %struct._GSList*, void (%struct._SERVER_REC*, i8*, i32)*, i32 (%struct._SERVER_REC*, i8)*, i32 (%struct._SERVER_REC*, i8*)*, i8* (%struct._SERVER_REC*)*, void (%struct._SERVER_REC*, i8*, i8*, i32)*, i8** (%struct._SERVER_REC*, i8*, i8*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)*, %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)*, %struct._GSList*, %struct._GSList*, %struct._REDIRECT_REC*, %struct._GSList*, i8*, i8*, i8*, i8*, i8*, i32, i16, i32, i32, i32, i32, %struct._GHashTable*, %struct._GSList*, %struct._GSList*, %struct._GString*, i32, i32, %struct._GSList*, %struct._GTimeVal, %struct._GTimeVal, i32, i32, i32, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GHashTable*, %struct._GSList*, %struct._GSList*, i8*, %struct._GHashTable*, [256 x %struct.modes_type], [256 x i8], i32 (i8*, i8*)* }
%struct._IRC_SERVER_CONNECT_REC = type { i32, i32, i32, i8*, i32, i8*, i8*, i8*, i16, i8*, i8*, i32, i8*, %struct._IPADDR*, %struct._IPADDR*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._GIOChannel*, i8, i8*, i8*, i8*, i8*, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct._NET_SENDBUF_REC = type { %struct._GIOChannel*, %struct._LINEBUF_REC*, i32, i32, i32, i8*, i32, i8 }
%struct._LINEBUF_REC = type opaque
%struct._RAWLOG_REC = type opaque
%struct._SERVER_REC = type { i32, i32, i32, %struct._SERVER_CONNECT_REC*, i64, i64, i8*, i8*, i8, %struct._NET_SENDBUF_REC*, i32, [2 x %struct._GIOChannel*], i32, i32, %struct._RAWLOG_REC*, %struct._GHashTable*, i8*, i8*, i8*, i8, %struct._GTimeVal, i64, i32, %struct._GSList*, %struct._GSList*, {}*, i32 (%struct._SERVER_REC*, i8)*, i32 (%struct._SERVER_REC*, i8*)*, i8* (%struct._SERVER_REC*)*, void (%struct._SERVER_REC*, i8*, i8*, i32)*, i8** (%struct._SERVER_REC*, i8*, i8*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)*, %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)* }
%struct._SERVER_CONNECT_REC = type { i32, i32, i32, i8*, i32, i8*, i8*, i8*, i16, i8*, i8*, i32, i8*, %struct._IPADDR*, %struct._IPADDR*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._GIOChannel*, i8, i8*, i8* }
%struct._CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)* }
%struct._WI_ITEM_REC = type opaque
%struct._NICK_REC = type { i32, i32, i64, i8*, i8*, i8*, i32, i8, [8 x i8], i8*, %struct._NICK_REC* }
%struct._QUERY_REC = type opaque
%struct._REDIRECT_REC = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._GTimeVal = type { i64, i64 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct.modes_type = type { void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, i8 }
%struct._IRC_CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._IRC_SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)*, %struct._GSList*, i64, i32, i32 }
%struct.CHAT_DCC_REC = type { i32, i32, i64, %struct._IRC_SERVER_REC*, i8*, i8*, i8*, %struct.CHAT_DCC_REC*, i8*, i8*, %struct._IPADDR, [46 x i8], i32, %struct._GIOChannel*, i32, i32, i32, i64, i64, i32, i8, %struct._GHashTable*, i8*, %struct._NET_SENDBUF_REC*, i8 }
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
%struct.DCC_REC = type { i32, i32, i64, %struct._IRC_SERVER_REC*, i8*, i8*, i8*, %struct.CHAT_DCC_REC*, i8*, i8*, %struct._IPADDR, [46 x i8], i32, %struct._GIOChannel*, i32, i32, i32, i64, i64, i32, i8, %struct._GHashTable* }
%struct.DCC_QUEUE_REC = type { %struct.CHAT_DCC_REC*, i8*, i8*, i8*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.glob_t = type { i64, i8**, i64, i32, void (i8*)*, i8* (i8*)*, i8* (i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)* }

@.str = private unnamed_addr constant [5 x i8] c"SEND\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"irc/dcc\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"dcc\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"dcc_upload_path\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"dcc_send_replace_space_with_underscore\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"dcc destroyed\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"dcc reply send pasv\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"dcc send\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"append flush prepend rmhead rmtail passive\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"DCC\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"IRC\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"dcc error send no route\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"dcc error send exists\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"dcc error file open\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"fstat() failed: %s\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"dcc_listen() failed: %s\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"dcc-send.c\00", align 1
@__func__.dcc_send_one_file = private unnamed_addr constant [18 x i8] c"dcc_send_one_file\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"dcc request send\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"DCC SEND \22%s\22 %s %d %lu\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"DCC SEND %s %s %d %lu\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"DCC SEND \22%s\22 16843009 0 %lu %d\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"DCC SEND %s 16843009 0 %lu %d\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"dcc connected\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"dcc transfer update\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"dcc error connect\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"error command\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"passive\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"rmhead\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"rmtail\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"append\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"prepend\00", align 1

; Function Attrs: nounwind uwtable
define void @dcc_send_init() #0 !dbg !851 {
  call void @dcc_register_type(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)), !dbg !854
  call void @settings_add_str_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)), !dbg !855
  call void @settings_add_bool_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i32 0, i32 0), i32 0), !dbg !856
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.SEND_DCC_REC*)* @sig_dcc_destroyed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !857
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.SEND_DCC_REC*)* @dcc_send_connect to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !858
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_dcc_send to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !859
  call void @command_set_options_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i32 0, i32 0)), !dbg !860
  call void @dcc_queue_init(), !dbg !861
  ret void, !dbg !862
}

declare void @dcc_register_type(i8*) #1

declare void @settings_add_str_module(i8*, i8*, i8*, i8*) #1

declare void @settings_add_bool_module(i8*, i8*, i8*, i32) #1

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @sig_dcc_destroyed(%struct.SEND_DCC_REC*) #0 !dbg !863 {
  %2 = alloca %struct.SEND_DCC_REC*, align 8
  store %struct.SEND_DCC_REC* %0, %struct.SEND_DCC_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.SEND_DCC_REC** %2, metadata !866, metadata !867), !dbg !868
  %3 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !869
  %4 = bitcast %struct.SEND_DCC_REC* %3 to i8*, !dbg !869
  %5 = call i8* @module_check_cast_module(i8* %4, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)), !dbg !871
  %6 = bitcast i8* %5 to %struct.SEND_DCC_REC*, !dbg !872
  %7 = icmp ne %struct.SEND_DCC_REC* %6, null, !dbg !872
  br i1 %7, label %8, label %9, !dbg !873

; <label>:8:                                      ; preds = %1
  br i1 false, label %10, label %11, !dbg !874

; <label>:9:                                      ; preds = %1
  br i1 false, label %11, label %10, !dbg !876

; <label>:10:                                     ; preds = %9, %8
  br label %25, !dbg !878

; <label>:11:                                     ; preds = %9, %8
  %12 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !880
  %13 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %12, i32 0, i32 24, !dbg !882
  %14 = load i32, i32* %13, align 8, !dbg !882
  %15 = icmp ne i32 %14, -1, !dbg !883
  br i1 %15, label %16, label %21, !dbg !884

; <label>:16:                                     ; preds = %11
  %17 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !885
  %18 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %17, i32 0, i32 24, !dbg !886
  %19 = load i32, i32* %18, align 8, !dbg !886
  %20 = call i32 @close(i32 %19), !dbg !887
  br label %21, !dbg !887

; <label>:21:                                     ; preds = %16, %11
  %22 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !888
  %23 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %22, i32 0, i32 25, !dbg !889
  %24 = load i32, i32* %23, align 4, !dbg !889
  call void @dcc_queue_send_next(i32 %24), !dbg !890
  br label %25, !dbg !891

; <label>:25:                                     ; preds = %21, %10
  ret void, !dbg !892
}

; Function Attrs: nounwind uwtable
define internal void @dcc_send_connect(%struct.SEND_DCC_REC*) #0 !dbg !894 {
  %2 = alloca %struct.SEND_DCC_REC*, align 8
  store %struct.SEND_DCC_REC* %0, %struct.SEND_DCC_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.SEND_DCC_REC** %2, metadata !895, metadata !867), !dbg !896
  %3 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !897
  %4 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %3, i32 0, i32 10, !dbg !898
  %5 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !899
  %6 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %5, i32 0, i32 12, !dbg !900
  %7 = load i32, i32* %6, align 4, !dbg !900
  %8 = call %struct._GIOChannel* @dcc_connect_ip(%struct._IPADDR* %4, i32 %7), !dbg !901
  %9 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !902
  %10 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %9, i32 0, i32 13, !dbg !903
  store %struct._GIOChannel* %8, %struct._GIOChannel** %10, align 8, !dbg !904
  %11 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !905
  %12 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %11, i32 0, i32 13, !dbg !907
  %13 = load %struct._GIOChannel*, %struct._GIOChannel** %12, align 8, !dbg !907
  %14 = icmp ne %struct._GIOChannel* %13, null, !dbg !908
  br i1 %14, label %15, label %37, !dbg !909

; <label>:15:                                     ; preds = %1
  %16 = call i64 @time(i64* null) #7, !dbg !910
  %17 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !912
  %18 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %17, i32 0, i32 17, !dbg !913
  store i64 %16, i64* %18, align 8, !dbg !914
  %19 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !915
  %20 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %19, i32 0, i32 13, !dbg !916
  %21 = load %struct._GIOChannel*, %struct._GIOChannel** %20, align 8, !dbg !916
  %22 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !917
  %23 = bitcast %struct.SEND_DCC_REC* %22 to i8*, !dbg !917
  %24 = call i32 @g_input_add(%struct._GIOChannel* %21, i32 1, void (i8*, %struct._GIOChannel*, i32)* bitcast (void (%struct.SEND_DCC_REC*)* @dcc_send_read_size to void (i8*, %struct._GIOChannel*, i32)*), i8* %23), !dbg !918
  %25 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !919
  %26 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %25, i32 0, i32 15, !dbg !920
  store i32 %24, i32* %26, align 4, !dbg !921
  %27 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !922
  %28 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %27, i32 0, i32 13, !dbg !923
  %29 = load %struct._GIOChannel*, %struct._GIOChannel** %28, align 8, !dbg !923
  %30 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !924
  %31 = bitcast %struct.SEND_DCC_REC* %30 to i8*, !dbg !924
  %32 = call i32 @g_input_add(%struct._GIOChannel* %29, i32 2, void (i8*, %struct._GIOChannel*, i32)* bitcast (void (%struct.SEND_DCC_REC*)* @dcc_send_data to void (i8*, %struct._GIOChannel*, i32)*), i8* %31), !dbg !925
  %33 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !926
  %34 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %33, i32 0, i32 16, !dbg !927
  store i32 %32, i32* %34, align 8, !dbg !928
  %35 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !929
  %36 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0), i32 1, %struct.SEND_DCC_REC* %35), !dbg !930
  br label %42, !dbg !931

; <label>:37:                                     ; preds = %1
  %38 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !932
  %39 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i32 0, i32 0), i32 1, %struct.SEND_DCC_REC* %38), !dbg !934
  %40 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !935
  %41 = bitcast %struct.SEND_DCC_REC* %40 to %struct.DCC_REC*, !dbg !936
  call void @dcc_destroy(%struct.DCC_REC* %41), !dbg !937
  br label %42

; <label>:42:                                     ; preds = %37, %15
  ret void, !dbg !938
}

declare void @command_bind_full(i8*, i32, i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @cmd_dcc_send(i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !939 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.CHAT_DCC_REC*, align 8
  %12 = alloca %struct._GHashTable*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !942, metadata !867), !dbg !943
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !944, metadata !867), !dbg !945
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !946, metadata !867), !dbg !947
  call void @llvm.dbg.declare(metadata i8** %7, metadata !948, metadata !867), !dbg !949
  call void @llvm.dbg.declare(metadata i8** %8, metadata !950, metadata !867), !dbg !951
  call void @llvm.dbg.declare(metadata i8** %9, metadata !952, metadata !867), !dbg !953
  call void @llvm.dbg.declare(metadata i8** %10, metadata !954, metadata !867), !dbg !955
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %11, metadata !956, metadata !867), !dbg !957
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %12, metadata !958, metadata !867), !dbg !959
  call void @llvm.dbg.declare(metadata i32* %13, metadata !960, metadata !867), !dbg !961
  call void @llvm.dbg.declare(metadata i32* %14, metadata !962, metadata !867), !dbg !963
  call void @llvm.dbg.declare(metadata i32* %15, metadata !964, metadata !867), !dbg !965
  %16 = load i8*, i8** %4, align 8, !dbg !966
  %17 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %16, i8** %10, i32 286722, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), %struct._GHashTable** %12, i8** %8, i8** %9), !dbg !968
  %18 = icmp ne i32 %17, 0, !dbg !968
  br i1 %18, label %20, label %19, !dbg !969

; <label>:19:                                     ; preds = %3
  br label %164, !dbg !970

; <label>:20:                                     ; preds = %3
  %21 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !971
  %22 = call %struct.CHAT_DCC_REC* @item_get_dcc(%struct._WI_ITEM_REC* %21), !dbg !972
  store %struct.CHAT_DCC_REC* %22, %struct.CHAT_DCC_REC** %11, align 8, !dbg !973
  %23 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %11, align 8, !dbg !974
  %24 = icmp ne %struct.CHAT_DCC_REC* %23, null, !dbg !976
  br i1 %24, label %25, label %40, !dbg !977

; <label>:25:                                     ; preds = %20
  %26 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %11, align 8, !dbg !978
  %27 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %26, i32 0, i32 24, !dbg !979
  %28 = load i8, i8* %27, align 8, !dbg !979
  %29 = and i8 %28, 1, !dbg !979
  %30 = zext i8 %29 to i32, !dbg !979
  %31 = icmp ne i32 %30, 0, !dbg !978
  br i1 %31, label %39, label %32, !dbg !980

; <label>:32:                                     ; preds = %25
  %33 = load i8*, i8** %8, align 8, !dbg !981
  %34 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %11, align 8, !dbg !983
  %35 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %34, i32 0, i32 6, !dbg !984
  %36 = load i8*, i8** %35, align 8, !dbg !984
  %37 = call i32 @g_ascii_strcasecmp(i8* %33, i8* %36), !dbg !985
  %38 = icmp ne i32 %37, 0, !dbg !986
  br i1 %38, label %39, label %40, !dbg !987

; <label>:39:                                     ; preds = %32, %25
  store %struct.CHAT_DCC_REC* null, %struct.CHAT_DCC_REC** %11, align 8, !dbg !989
  br label %40, !dbg !990

; <label>:40:                                     ; preds = %39, %32, %20
  %41 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !991
  %42 = bitcast %struct._IRC_SERVER_REC* %41 to i8*, !dbg !991
  %43 = call i8* @module_check_cast(i8* %42, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0)), !dbg !993
  %44 = bitcast i8* %43 to %struct._SERVER_REC*, !dbg !994
  %45 = bitcast %struct._SERVER_REC* %44 to i8*, !dbg !995
  %46 = call i8* @chat_protocol_check_cast(i8* %45, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0)), !dbg !996
  %47 = bitcast i8* %46 to %struct._IRC_SERVER_REC*, !dbg !998
  %48 = icmp ne %struct._IRC_SERVER_REC* %47, null, !dbg !998
  br i1 %48, label %49, label %50, !dbg !999

; <label>:49:                                     ; preds = %40
  br i1 false, label %62, label %51, !dbg !1000

; <label>:50:                                     ; preds = %40
  br i1 false, label %51, label %62, !dbg !1002

; <label>:51:                                     ; preds = %50, %49
  %52 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1004
  %53 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %52, i32 0, i32 8, !dbg !1006
  %54 = load i8, i8* %53, align 8, !dbg !1006
  %55 = and i8 %54, 1, !dbg !1006
  %56 = zext i8 %55 to i32, !dbg !1006
  %57 = icmp ne i32 %56, 0, !dbg !1004
  br i1 %57, label %58, label %62, !dbg !1007

; <label>:58:                                     ; preds = %51
  %59 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1008
  %60 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %59, i32 0, i32 6, !dbg !1009
  %61 = load i8*, i8** %60, align 8, !dbg !1009
  store i8* %61, i8** %7, align 8, !dbg !1010
  br label %71, !dbg !1011

; <label>:62:                                     ; preds = %51, %50, %49
  %63 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %11, align 8, !dbg !1012
  %64 = icmp ne %struct.CHAT_DCC_REC* %63, null, !dbg !1014
  br i1 %64, label %65, label %69, !dbg !1015

; <label>:65:                                     ; preds = %62
  %66 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %11, align 8, !dbg !1016
  %67 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %66, i32 0, i32 4, !dbg !1017
  %68 = load i8*, i8** %67, align 8, !dbg !1017
  store i8* %68, i8** %7, align 8, !dbg !1018
  br label %70, !dbg !1019

; <label>:69:                                     ; preds = %62
  store i8* null, i8** %7, align 8, !dbg !1020
  br label %70

; <label>:70:                                     ; preds = %69, %65
  br label %71

; <label>:71:                                     ; preds = %70, %58
  %72 = load i8*, i8** %7, align 8, !dbg !1021
  %73 = icmp eq i8* %72, null, !dbg !1023
  br i1 %73, label %74, label %84, !dbg !1024

; <label>:74:                                     ; preds = %71
  %75 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %11, align 8, !dbg !1025
  %76 = icmp eq %struct.CHAT_DCC_REC* %75, null, !dbg !1027
  br i1 %76, label %77, label %84, !dbg !1028

; <label>:77:                                     ; preds = %74
  br label %78, !dbg !1029, !llvm.loop !1030

; <label>:78:                                     ; preds = %77
  %79 = load i8*, i8** %10, align 8, !dbg !1031
  call void @cmd_params_free(i8* %79), !dbg !1034
  br label %80, !dbg !1035, !llvm.loop !1036

; <label>:80:                                     ; preds = %78
  %81 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !1038
  call void @signal_stop(), !dbg !1041
  br label %164, !dbg !1043
                                                  ; No predecessors!
  br label %83, !dbg !1044

; <label>:83:                                     ; preds = %82
  br label %84, !dbg !1046

; <label>:84:                                     ; preds = %83, %74, %71
  %85 = load %struct._GHashTable*, %struct._GHashTable** %12, align 8, !dbg !1048
  %86 = call i8* @g_hash_table_lookup(%struct._GHashTable* %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0)), !dbg !1049
  %87 = icmp ne i8* %86, null, !dbg !1050
  %88 = zext i1 %87 to i32, !dbg !1050
  store i32 %88, i32* %15, align 4, !dbg !1051
  %89 = load %struct._GHashTable*, %struct._GHashTable** %12, align 8, !dbg !1052
  %90 = call i8* @g_hash_table_lookup(%struct._GHashTable* %89, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0)), !dbg !1054
  %91 = icmp ne i8* %90, null, !dbg !1055
  br i1 %91, label %92, label %102, !dbg !1056

; <label>:92:                                     ; preds = %84
  %93 = load i8*, i8** %8, align 8, !dbg !1057
  %94 = load i8*, i8** %7, align 8, !dbg !1059
  %95 = call i32 @dcc_queue_old(i8* %93, i8* %94), !dbg !1060
  store i32 %95, i32* %13, align 4, !dbg !1061
  %96 = load i32, i32* %13, align 4, !dbg !1062
  %97 = icmp ne i32 %96, -1, !dbg !1064
  br i1 %97, label %98, label %101, !dbg !1065

; <label>:98:                                     ; preds = %92
  %99 = load i32, i32* %13, align 4, !dbg !1066
  %100 = call i32 @dcc_queue_remove_head(i32 %99), !dbg !1067
  br label %101, !dbg !1067

; <label>:101:                                    ; preds = %98, %92
  br label %162, !dbg !1068

; <label>:102:                                    ; preds = %84
  %103 = load %struct._GHashTable*, %struct._GHashTable** %12, align 8, !dbg !1069
  %104 = call i8* @g_hash_table_lookup(%struct._GHashTable* %103, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0)), !dbg !1072
  %105 = icmp ne i8* %104, null, !dbg !1073
  br i1 %105, label %106, label %116, !dbg !1072

; <label>:106:                                    ; preds = %102
  %107 = load i8*, i8** %8, align 8, !dbg !1074
  %108 = load i8*, i8** %7, align 8, !dbg !1076
  %109 = call i32 @dcc_queue_old(i8* %107, i8* %108), !dbg !1077
  store i32 %109, i32* %13, align 4, !dbg !1078
  %110 = load i32, i32* %13, align 4, !dbg !1079
  %111 = icmp ne i32 %110, -1, !dbg !1081
  br i1 %111, label %112, label %115, !dbg !1082

; <label>:112:                                    ; preds = %106
  %113 = load i32, i32* %13, align 4, !dbg !1083
  %114 = call i32 @dcc_queue_remove_tail(i32 %113), !dbg !1084
  br label %115, !dbg !1084

; <label>:115:                                    ; preds = %112, %106
  br label %161, !dbg !1085

; <label>:116:                                    ; preds = %102
  %117 = load %struct._GHashTable*, %struct._GHashTable** %12, align 8, !dbg !1086
  %118 = call i8* @g_hash_table_lookup(%struct._GHashTable* %117, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0)), !dbg !1089
  %119 = icmp ne i8* %118, null, !dbg !1090
  br i1 %119, label %120, label %129, !dbg !1089

; <label>:120:                                    ; preds = %116
  %121 = load i8*, i8** %8, align 8, !dbg !1091
  %122 = load i8*, i8** %7, align 8, !dbg !1093
  %123 = call i32 @dcc_queue_old(i8* %121, i8* %122), !dbg !1094
  store i32 %123, i32* %13, align 4, !dbg !1095
  %124 = load i32, i32* %13, align 4, !dbg !1096
  %125 = icmp ne i32 %124, -1, !dbg !1098
  br i1 %125, label %126, label %128, !dbg !1099

; <label>:126:                                    ; preds = %120
  %127 = load i32, i32* %13, align 4, !dbg !1100
  call void @dcc_queue_free(i32 %127), !dbg !1101
  br label %128, !dbg !1101

; <label>:128:                                    ; preds = %126, %120
  br label %160, !dbg !1102

; <label>:129:                                    ; preds = %116
  %130 = load %struct._GHashTable*, %struct._GHashTable** %12, align 8, !dbg !1103
  %131 = call i8* @g_hash_table_lookup(%struct._GHashTable* %130, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0)), !dbg !1106
  %132 = icmp ne i8* %131, null, !dbg !1107
  br i1 %132, label %133, label %134, !dbg !1108

; <label>:133:                                    ; preds = %129
  store i32 2, i32* %14, align 4, !dbg !1109
  br label %141, !dbg !1110

; <label>:134:                                    ; preds = %129
  %135 = load %struct._GHashTable*, %struct._GHashTable** %12, align 8, !dbg !1111
  %136 = call i8* @g_hash_table_lookup(%struct._GHashTable* %135, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0)), !dbg !1113
  %137 = icmp ne i8* %136, null, !dbg !1114
  br i1 %137, label %138, label %139, !dbg !1115

; <label>:138:                                    ; preds = %134
  store i32 1, i32* %14, align 4, !dbg !1116
  br label %140, !dbg !1117

; <label>:139:                                    ; preds = %134
  store i32 0, i32* %14, align 4, !dbg !1118
  br label %140

; <label>:140:                                    ; preds = %139, %138
  br label %141

; <label>:141:                                    ; preds = %140, %133
  %142 = load i8*, i8** %9, align 8, !dbg !1119
  %143 = load i8, i8* %142, align 1, !dbg !1121
  %144 = sext i8 %143 to i32, !dbg !1121
  %145 = icmp eq i32 %144, 0, !dbg !1122
  br i1 %145, label %146, label %153, !dbg !1123

; <label>:146:                                    ; preds = %141
  br label %147, !dbg !1124, !llvm.loop !1125

; <label>:147:                                    ; preds = %146
  %148 = load i8*, i8** %10, align 8, !dbg !1126
  call void @cmd_params_free(i8* %148), !dbg !1129
  br label %149, !dbg !1130, !llvm.loop !1131

; <label>:149:                                    ; preds = %147
  %150 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !1133
  call void @signal_stop(), !dbg !1136
  br label %164, !dbg !1138
                                                  ; No predecessors!
  br label %152, !dbg !1139

; <label>:152:                                    ; preds = %151
  br label %153, !dbg !1141

; <label>:153:                                    ; preds = %152, %141
  %154 = load i8*, i8** %7, align 8, !dbg !1143
  %155 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %11, align 8, !dbg !1144
  %156 = load i8*, i8** %8, align 8, !dbg !1145
  %157 = load i8*, i8** %9, align 8, !dbg !1146
  %158 = load i32, i32* %14, align 4, !dbg !1147
  %159 = load i32, i32* %15, align 4, !dbg !1148
  call void @dcc_send_add(i8* %154, %struct.CHAT_DCC_REC* %155, i8* %156, i8* %157, i32 %158, i32 %159), !dbg !1149
  br label %160

; <label>:160:                                    ; preds = %153, %128
  br label %161

; <label>:161:                                    ; preds = %160, %115
  br label %162

; <label>:162:                                    ; preds = %161, %101
  %163 = load i8*, i8** %10, align 8, !dbg !1150
  call void @cmd_params_free(i8* %163), !dbg !1151
  br label %164, !dbg !1152

; <label>:164:                                    ; preds = %162, %149, %80, %19
  ret void, !dbg !1153
}

declare void @command_set_options_module(i8*, i8*, i8*) #1

declare void @dcc_queue_init() #1

; Function Attrs: nounwind uwtable
define void @dcc_send_deinit() #0 !dbg !1154 {
  call void @dcc_queue_deinit(), !dbg !1155
  call void @dcc_unregister_type(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)), !dbg !1156
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.SEND_DCC_REC*)* @sig_dcc_destroyed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1157
  call void @signal_remove_full(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.SEND_DCC_REC*)* @dcc_send_connect to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1158
  call void @command_unbind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_dcc_send to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1159
  ret void, !dbg !1160
}

declare void @dcc_queue_deinit() #1

declare void @dcc_unregister_type(i8*) #1

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @command_unbind_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare i8* @module_check_cast_module(i8*, i32, i8*, i8*) #1

declare i32 @close(i32) #1

; Function Attrs: nounwind uwtable
define internal void @dcc_queue_send_next(i32) #0 !dbg !1161 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca %struct.DCC_QUEUE_REC*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1164, metadata !867), !dbg !1165
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1166, metadata !867), !dbg !1167
  call void @llvm.dbg.declare(metadata %struct.DCC_QUEUE_REC** %4, metadata !1168, metadata !867), !dbg !1178
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1179, metadata !867), !dbg !1180
  store i32 0, i32* %5, align 4, !dbg !1180
  br label %6, !dbg !1181

; <label>:6:                                      ; preds = %66, %1
  %7 = load i32, i32* %2, align 4, !dbg !1182
  %8 = call %struct.DCC_QUEUE_REC* @dcc_queue_get_next(i32 %7), !dbg !1184
  store %struct.DCC_QUEUE_REC* %8, %struct.DCC_QUEUE_REC** %4, align 8, !dbg !1185
  %9 = icmp ne %struct.DCC_QUEUE_REC* %8, null, !dbg !1186
  br i1 %9, label %10, label %14, !dbg !1187

; <label>:10:                                     ; preds = %6
  %11 = load i32, i32* %5, align 4, !dbg !1188
  %12 = icmp ne i32 %11, 0, !dbg !1190
  %13 = xor i1 %12, true, !dbg !1190
  br label %14

; <label>:14:                                     ; preds = %10, %6
  %15 = phi i1 [ false, %6 ], [ %13, %10 ]
  br i1 %15, label %16, label %69, !dbg !1191

; <label>:16:                                     ; preds = %14
  %17 = load %struct.DCC_QUEUE_REC*, %struct.DCC_QUEUE_REC** %4, align 8, !dbg !1193
  %18 = getelementptr inbounds %struct.DCC_QUEUE_REC, %struct.DCC_QUEUE_REC* %17, i32 0, i32 1, !dbg !1195
  %19 = load i8*, i8** %18, align 8, !dbg !1195
  %20 = icmp eq i8* %19, null, !dbg !1196
  br i1 %20, label %21, label %22, !dbg !1193

; <label>:21:                                     ; preds = %16
  br label %33, !dbg !1197

; <label>:22:                                     ; preds = %16
  %23 = load %struct.DCC_QUEUE_REC*, %struct.DCC_QUEUE_REC** %4, align 8, !dbg !1199
  %24 = getelementptr inbounds %struct.DCC_QUEUE_REC, %struct.DCC_QUEUE_REC* %23, i32 0, i32 1, !dbg !1200
  %25 = load i8*, i8** %24, align 8, !dbg !1200
  %26 = call %struct._SERVER_REC* @server_find_tag(i8* %25), !dbg !1201
  %27 = bitcast %struct._SERVER_REC* %26 to i8*, !dbg !1201
  %28 = call i8* @module_check_cast(i8* %27, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0)), !dbg !1202
  %29 = bitcast i8* %28 to %struct._SERVER_REC*, !dbg !1203
  %30 = bitcast %struct._SERVER_REC* %29 to i8*, !dbg !1204
  %31 = call i8* @chat_protocol_check_cast(i8* %30, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0)), !dbg !1205
  %32 = bitcast i8* %31 to %struct._IRC_SERVER_REC*, !dbg !1207
  br label %33, !dbg !1208

; <label>:33:                                     ; preds = %22, %21
  %34 = phi %struct._IRC_SERVER_REC* [ null, %21 ], [ %32, %22 ], !dbg !1209
  store %struct._IRC_SERVER_REC* %34, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1211
  %35 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1212
  %36 = icmp eq %struct._IRC_SERVER_REC* %35, null, !dbg !1214
  br i1 %36, label %37, label %50, !dbg !1215

; <label>:37:                                     ; preds = %33
  %38 = load %struct.DCC_QUEUE_REC*, %struct.DCC_QUEUE_REC** %4, align 8, !dbg !1216
  %39 = getelementptr inbounds %struct.DCC_QUEUE_REC, %struct.DCC_QUEUE_REC* %38, i32 0, i32 0, !dbg !1218
  %40 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %39, align 8, !dbg !1218
  %41 = icmp eq %struct.CHAT_DCC_REC* %40, null, !dbg !1219
  br i1 %41, label %42, label %50, !dbg !1220

; <label>:42:                                     ; preds = %37
  %43 = load %struct.DCC_QUEUE_REC*, %struct.DCC_QUEUE_REC** %4, align 8, !dbg !1221
  %44 = getelementptr inbounds %struct.DCC_QUEUE_REC, %struct.DCC_QUEUE_REC* %43, i32 0, i32 2, !dbg !1223
  %45 = load i8*, i8** %44, align 8, !dbg !1223
  %46 = load %struct.DCC_QUEUE_REC*, %struct.DCC_QUEUE_REC** %4, align 8, !dbg !1224
  %47 = getelementptr inbounds %struct.DCC_QUEUE_REC, %struct.DCC_QUEUE_REC* %46, i32 0, i32 3, !dbg !1225
  %48 = load i8*, i8** %47, align 8, !dbg !1225
  %49 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0), i32 2, i8* %45, i8* %48), !dbg !1226
  br label %66, !dbg !1227

; <label>:50:                                     ; preds = %37, %33
  %51 = load i32, i32* %2, align 4, !dbg !1228
  %52 = load %struct.DCC_QUEUE_REC*, %struct.DCC_QUEUE_REC** %4, align 8, !dbg !1230
  %53 = getelementptr inbounds %struct.DCC_QUEUE_REC, %struct.DCC_QUEUE_REC* %52, i32 0, i32 2, !dbg !1231
  %54 = load i8*, i8** %53, align 8, !dbg !1231
  %55 = load %struct.DCC_QUEUE_REC*, %struct.DCC_QUEUE_REC** %4, align 8, !dbg !1232
  %56 = getelementptr inbounds %struct.DCC_QUEUE_REC, %struct.DCC_QUEUE_REC* %55, i32 0, i32 3, !dbg !1233
  %57 = load i8*, i8** %56, align 8, !dbg !1233
  %58 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1234
  %59 = load %struct.DCC_QUEUE_REC*, %struct.DCC_QUEUE_REC** %4, align 8, !dbg !1235
  %60 = getelementptr inbounds %struct.DCC_QUEUE_REC, %struct.DCC_QUEUE_REC* %59, i32 0, i32 0, !dbg !1236
  %61 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %60, align 8, !dbg !1236
  %62 = load %struct.DCC_QUEUE_REC*, %struct.DCC_QUEUE_REC** %4, align 8, !dbg !1237
  %63 = getelementptr inbounds %struct.DCC_QUEUE_REC, %struct.DCC_QUEUE_REC* %62, i32 0, i32 4, !dbg !1238
  %64 = load i32, i32* %63, align 8, !dbg !1238
  %65 = call i32 @dcc_send_one_file(i32 %51, i8* %54, i8* %57, %struct._IRC_SERVER_REC* %58, %struct.CHAT_DCC_REC* %61, i32 %64), !dbg !1239
  store i32 %65, i32* %5, align 4, !dbg !1240
  br label %66

; <label>:66:                                     ; preds = %50, %42
  %67 = load i32, i32* %2, align 4, !dbg !1241
  %68 = call i32 @dcc_queue_remove_head(i32 %67), !dbg !1242
  br label %6, !dbg !1243, !llvm.loop !1245

; <label>:69:                                     ; preds = %14
  %70 = load i32, i32* %5, align 4, !dbg !1246
  %71 = icmp ne i32 %70, 0, !dbg !1246
  br i1 %71, label %74, label %72, !dbg !1248

; <label>:72:                                     ; preds = %69
  %73 = load i32, i32* %2, align 4, !dbg !1249
  call void @dcc_queue_free(i32 %73), !dbg !1251
  br label %74, !dbg !1252

; <label>:74:                                     ; preds = %72, %69
  ret void, !dbg !1253
}

declare %struct.DCC_QUEUE_REC* @dcc_queue_get_next(i32) #1

declare i8* @chat_protocol_check_cast(i8*, i32, i8*) #1

declare i8* @module_check_cast(i8*, i32, i8*) #1

declare %struct._SERVER_REC* @server_find_tag(i8*) #1

declare i32 @signal_emit(i8*, i32, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @dcc_send_one_file(i32, i8*, i8*, %struct._IRC_SERVER_REC*, %struct.CHAT_DCC_REC*, i32) #0 !dbg !1254 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct._IRC_SERVER_REC*, align 8
  %12 = alloca %struct.CHAT_DCC_REC*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.stat, align 8
  %15 = alloca i8*, align 8
  %16 = alloca [46 x i8], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.SEND_DCC_REC*, align 8
  %20 = alloca %struct._IPADDR, align 4
  %21 = alloca %struct._GIOChannel*, align 8
  store i32 %0, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1257, metadata !867), !dbg !1258
  store i8* %1, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1259, metadata !867), !dbg !1260
  store i8* %2, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1261, metadata !867), !dbg !1262
  store %struct._IRC_SERVER_REC* %3, %struct._IRC_SERVER_REC** %11, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %11, metadata !1263, metadata !867), !dbg !1264
  store %struct.CHAT_DCC_REC* %4, %struct.CHAT_DCC_REC** %12, align 8
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %12, metadata !1265, metadata !867), !dbg !1266
  store i32 %5, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1267, metadata !867), !dbg !1268
  call void @llvm.dbg.declare(metadata %struct.stat* %14, metadata !1269, metadata !867), !dbg !1305
  call void @llvm.dbg.declare(metadata i8** %15, metadata !1306, metadata !867), !dbg !1307
  call void @llvm.dbg.declare(metadata [46 x i8]* %16, metadata !1308, metadata !867), !dbg !1309
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1310, metadata !867), !dbg !1311
  call void @llvm.dbg.declare(metadata i32* %18, metadata !1312, metadata !867), !dbg !1313
  store i32 0, i32* %18, align 4, !dbg !1313
  call void @llvm.dbg.declare(metadata %struct.SEND_DCC_REC** %19, metadata !1314, metadata !867), !dbg !1315
  call void @llvm.dbg.declare(metadata %struct._IPADDR* %20, metadata !1316, metadata !867), !dbg !1317
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %21, metadata !1318, metadata !867), !dbg !1319
  %22 = call i32 @module_get_uniq_id_str(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)), !dbg !1320
  %23 = load i8*, i8** %9, align 8, !dbg !1322
  %24 = load i8*, i8** %10, align 8, !dbg !1323
  %25 = call %struct.DCC_REC* @dcc_find_request(i32 %22, i8* %23, i8* %24), !dbg !1324
  %26 = icmp ne %struct.DCC_REC* %25, null, !dbg !1326
  br i1 %26, label %27, label %31, !dbg !1327

; <label>:27:                                     ; preds = %6
  %28 = load i8*, i8** %9, align 8, !dbg !1328
  %29 = load i8*, i8** %10, align 8, !dbg !1330
  %30 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0), i32 2, i8* %28, i8* %29), !dbg !1331
  store i32 0, i32* %7, align 4, !dbg !1332
  br label %198, !dbg !1332

; <label>:31:                                     ; preds = %6
  %32 = load i8*, i8** %10, align 8, !dbg !1333
  %33 = call i8* @dcc_send_get_file(i8* %32), !dbg !1334
  store i8* %33, i8** %15, align 8, !dbg !1335
  %34 = load i8*, i8** %15, align 8, !dbg !1336
  %35 = call i32 (i8*, i32, ...) @open(i8* %34, i32 0), !dbg !1337
  store i32 %35, i32* %17, align 4, !dbg !1338
  %36 = load i8*, i8** %15, align 8, !dbg !1339
  call void @g_free(i8* %36), !dbg !1340
  %37 = load i32, i32* %17, align 4, !dbg !1341
  %38 = icmp eq i32 %37, -1, !dbg !1343
  br i1 %38, label %39, label %47, !dbg !1344

; <label>:39:                                     ; preds = %31
  %40 = load i8*, i8** %9, align 8, !dbg !1345
  %41 = load i8*, i8** %10, align 8, !dbg !1347
  %42 = call i32* @__errno_location() #2, !dbg !1348
  %43 = load i32, i32* %42, align 4, !dbg !1349
  %44 = sext i32 %43 to i64, !dbg !1350
  %45 = inttoptr i64 %44 to i8*, !dbg !1348
  %46 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0), i32 3, i8* %40, i8* %41, i8* %45), !dbg !1351
  store i32 0, i32* %7, align 4, !dbg !1352
  br label %198, !dbg !1352

; <label>:47:                                     ; preds = %31
  %48 = load i32, i32* %17, align 4, !dbg !1353
  %49 = call i32 @fstat(i32 %48, %struct.stat* %14) #7, !dbg !1355
  %50 = icmp slt i32 %49, 0, !dbg !1356
  br i1 %50, label %51, label %57, !dbg !1357

; <label>:51:                                     ; preds = %47
  %52 = call i32* @__errno_location() #2, !dbg !1358
  %53 = load i32, i32* %52, align 4, !dbg !1360
  %54 = call i8* @strerror(i32 %53) #7, !dbg !1361
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0), i8* %54), !dbg !1363
  %55 = load i32, i32* %17, align 4, !dbg !1365
  %56 = call i32 @close(i32 %55), !dbg !1366
  store i32 0, i32* %7, align 4, !dbg !1367
  br label %198, !dbg !1367

; <label>:57:                                     ; preds = %47
  %58 = load i32, i32* %13, align 4, !dbg !1368
  %59 = icmp eq i32 %58, 0, !dbg !1370
  br i1 %59, label %60, label %84, !dbg !1371

; <label>:60:                                     ; preds = %57
  %61 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %12, align 8, !dbg !1372
  %62 = icmp ne %struct.CHAT_DCC_REC* %61, null, !dbg !1374
  br i1 %62, label %63, label %67, !dbg !1372

; <label>:63:                                     ; preds = %60
  %64 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %12, align 8, !dbg !1375
  %65 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %64, i32 0, i32 13, !dbg !1377
  %66 = load %struct._GIOChannel*, %struct._GIOChannel** %65, align 8, !dbg !1377
  br label %72, !dbg !1378

; <label>:67:                                     ; preds = %60
  %68 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %11, align 8, !dbg !1379
  %69 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %68, i32 0, i32 9, !dbg !1380
  %70 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %69, align 8, !dbg !1380
  %71 = call %struct._GIOChannel* @net_sendbuffer_handle(%struct._NET_SENDBUF_REC* %70), !dbg !1381
  br label %72, !dbg !1382

; <label>:72:                                     ; preds = %67, %63
  %73 = phi %struct._GIOChannel* [ %66, %63 ], [ %71, %67 ], !dbg !1384
  %74 = call %struct._GIOChannel* @dcc_listen(%struct._GIOChannel* %73, %struct._IPADDR* %20, i32* %18), !dbg !1386
  store %struct._GIOChannel* %74, %struct._GIOChannel** %21, align 8, !dbg !1387
  %75 = load %struct._GIOChannel*, %struct._GIOChannel** %21, align 8, !dbg !1388
  %76 = icmp eq %struct._GIOChannel* %75, null, !dbg !1390
  br i1 %76, label %77, label %83, !dbg !1391

; <label>:77:                                     ; preds = %72
  %78 = load i32, i32* %17, align 4, !dbg !1392
  %79 = call i32 @close(i32 %78), !dbg !1394
  %80 = call i32* @__errno_location() #2, !dbg !1395
  %81 = load i32, i32* %80, align 4, !dbg !1396
  %82 = call i8* @strerror(i32 %81) #7, !dbg !1397
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i32 0, i32 0), i8* %82), !dbg !1399
  store i32 0, i32* %7, align 4, !dbg !1401
  br label %198, !dbg !1401

; <label>:83:                                     ; preds = %72
  br label %85, !dbg !1402

; <label>:84:                                     ; preds = %57
  store %struct._GIOChannel* null, %struct._GIOChannel** %21, align 8, !dbg !1403
  br label %85

; <label>:85:                                     ; preds = %84, %83
  %86 = load i8*, i8** %10, align 8, !dbg !1405
  %87 = call noalias i8* @g_path_get_basename(i8* %86), !dbg !1406
  store i8* %87, i8** %15, align 8, !dbg !1407
  %88 = call i32 @settings_get_bool(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i32 0, i32 0)), !dbg !1408
  %89 = icmp ne i32 %88, 0, !dbg !1408
  br i1 %89, label %90, label %93, !dbg !1410

; <label>:90:                                     ; preds = %85
  %91 = load i8*, i8** %15, align 8, !dbg !1411
  %92 = call i8* @g_strdelimit(i8* %91, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), i8 signext 95), !dbg !1412
  br label %93, !dbg !1412

; <label>:93:                                     ; preds = %90, %85
  %94 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %11, align 8, !dbg !1413
  %95 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %12, align 8, !dbg !1414
  %96 = load i8*, i8** %9, align 8, !dbg !1415
  %97 = load i8*, i8** %15, align 8, !dbg !1416
  %98 = call %struct.SEND_DCC_REC* @dcc_send_create(%struct._IRC_SERVER_REC* %94, %struct.CHAT_DCC_REC* %95, i8* %96, i8* %97), !dbg !1417
  store %struct.SEND_DCC_REC* %98, %struct.SEND_DCC_REC** %19, align 8, !dbg !1418
  %99 = load i8*, i8** %15, align 8, !dbg !1419
  call void @g_free(i8* %99), !dbg !1420
  %100 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %19, align 8, !dbg !1421
  %101 = icmp eq %struct.SEND_DCC_REC* %100, null, !dbg !1423
  br i1 %101, label %102, label %105, !dbg !1424

; <label>:102:                                    ; preds = %93
  br label %103, !dbg !1425, !llvm.loop !1427

; <label>:103:                                    ; preds = %102
  call void @g_warn_message(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 427, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.dcc_send_one_file, i32 0, i32 0), i8* null), !dbg !1428
  br label %104, !dbg !1431

; <label>:104:                                    ; preds = %103
  store i32 0, i32* %7, align 4, !dbg !1432
  br label %198, !dbg !1432

; <label>:105:                                    ; preds = %93
  %106 = load %struct._GIOChannel*, %struct._GIOChannel** %21, align 8, !dbg !1433
  %107 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %19, align 8, !dbg !1434
  %108 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %107, i32 0, i32 13, !dbg !1435
  store %struct._GIOChannel* %106, %struct._GIOChannel** %108, align 8, !dbg !1436
  %109 = load i32, i32* %18, align 4, !dbg !1437
  %110 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %19, align 8, !dbg !1438
  %111 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %110, i32 0, i32 12, !dbg !1439
  store i32 %109, i32* %111, align 4, !dbg !1440
  %112 = getelementptr inbounds %struct.stat, %struct.stat* %14, i32 0, i32 8, !dbg !1441
  %113 = load i64, i64* %112, align 8, !dbg !1441
  %114 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %19, align 8, !dbg !1442
  %115 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %114, i32 0, i32 22, !dbg !1443
  store i64 %113, i64* %115, align 8, !dbg !1444
  %116 = load i32, i32* %17, align 4, !dbg !1445
  %117 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %19, align 8, !dbg !1446
  %118 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %117, i32 0, i32 24, !dbg !1447
  store i32 %116, i32* %118, align 8, !dbg !1448
  %119 = load i32, i32* %8, align 4, !dbg !1449
  %120 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %19, align 8, !dbg !1450
  %121 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %120, i32 0, i32 25, !dbg !1451
  store i32 %119, i32* %121, align 4, !dbg !1452
  %122 = load i8*, i8** %10, align 8, !dbg !1453
  %123 = call i8* @strchr(i8* %122, i32 32) #8, !dbg !1454
  %124 = icmp ne i8* %123, null, !dbg !1455
  %125 = zext i1 %124 to i32, !dbg !1455
  %126 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %19, align 8, !dbg !1456
  %127 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %126, i32 0, i32 28, !dbg !1457
  %128 = trunc i32 %125 to i8, !dbg !1458
  %129 = load i8, i8* %127, align 8, !dbg !1458
  %130 = and i8 %128, 1, !dbg !1458
  %131 = and i8 %129, -2, !dbg !1458
  %132 = or i8 %131, %130, !dbg !1458
  store i8 %132, i8* %127, align 8, !dbg !1458
  %133 = zext i8 %130 to i32, !dbg !1458
  %134 = load i32, i32* %13, align 4, !dbg !1459
  %135 = icmp ne i32 %134, 0, !dbg !1459
  br i1 %135, label %143, label %136, !dbg !1461

; <label>:136:                                    ; preds = %105
  %137 = load %struct._GIOChannel*, %struct._GIOChannel** %21, align 8, !dbg !1462
  %138 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %19, align 8, !dbg !1464
  %139 = bitcast %struct.SEND_DCC_REC* %138 to i8*, !dbg !1464
  %140 = call i32 @g_input_add(%struct._GIOChannel* %137, i32 1, void (i8*, %struct._GIOChannel*, i32)* bitcast (void (%struct.SEND_DCC_REC*)* @dcc_send_connected to void (i8*, %struct._GIOChannel*, i32)*), i8* %139), !dbg !1465
  %141 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %19, align 8, !dbg !1466
  %142 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %141, i32 0, i32 14, !dbg !1467
  store i32 %140, i32* %142, align 8, !dbg !1468
  br label %143, !dbg !1469

; <label>:143:                                    ; preds = %136, %105
  %144 = load i32, i32* %13, align 4, !dbg !1470
  %145 = icmp ne i32 %144, 0, !dbg !1470
  br i1 %145, label %146, label %151, !dbg !1472

; <label>:146:                                    ; preds = %143
  %147 = call i32 @rand() #7, !dbg !1473
  %148 = srem i32 %147, 64, !dbg !1475
  %149 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %19, align 8, !dbg !1476
  %150 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %149, i32 0, i32 19, !dbg !1477
  store i32 %148, i32* %150, align 8, !dbg !1478
  br label %151, !dbg !1479

; <label>:151:                                    ; preds = %146, %143
  %152 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %19, align 8, !dbg !1480
  %153 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i32 1, %struct.SEND_DCC_REC* %152), !dbg !1481
  %154 = getelementptr inbounds [46 x i8], [46 x i8]* %16, i32 0, i32 0, !dbg !1482
  call void @dcc_ip2str(%struct._IPADDR* %20, i8* %154), !dbg !1483
  %155 = load i32, i32* %13, align 4, !dbg !1484
  %156 = icmp eq i32 %155, 0, !dbg !1486
  br i1 %156, label %157, label %174, !dbg !1487

; <label>:157:                                    ; preds = %151
  %158 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %19, align 8, !dbg !1488
  %159 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %158, i32 0, i32 28, !dbg !1490
  %160 = load i8, i8* %159, align 8, !dbg !1490
  %161 = and i8 %160, 1, !dbg !1490
  %162 = zext i8 %161 to i32, !dbg !1490
  %163 = icmp ne i32 %162, 0, !dbg !1488
  %164 = select i1 %163, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0), !dbg !1488
  %165 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %19, align 8, !dbg !1491
  %166 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %165, i32 0, i32 9, !dbg !1492
  %167 = load i8*, i8** %166, align 8, !dbg !1492
  %168 = getelementptr inbounds [46 x i8], [46 x i8]* %16, i32 0, i32 0, !dbg !1493
  %169 = load i32, i32* %18, align 4, !dbg !1494
  %170 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %19, align 8, !dbg !1495
  %171 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %170, i32 0, i32 22, !dbg !1496
  %172 = load i64, i64* %171, align 8, !dbg !1496
  %173 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %164, i8* %167, i8* %168, i32 %169, i64 %172), !dbg !1497
  store i8* %173, i8** %15, align 8, !dbg !1498
  br label %192, !dbg !1499

; <label>:174:                                    ; preds = %151
  %175 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %19, align 8, !dbg !1500
  %176 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %175, i32 0, i32 28, !dbg !1502
  %177 = load i8, i8* %176, align 8, !dbg !1502
  %178 = and i8 %177, 1, !dbg !1502
  %179 = zext i8 %178 to i32, !dbg !1502
  %180 = icmp ne i32 %179, 0, !dbg !1500
  %181 = select i1 %180, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.24, i32 0, i32 0), !dbg !1500
  %182 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %19, align 8, !dbg !1503
  %183 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %182, i32 0, i32 9, !dbg !1504
  %184 = load i8*, i8** %183, align 8, !dbg !1504
  %185 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %19, align 8, !dbg !1505
  %186 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %185, i32 0, i32 22, !dbg !1506
  %187 = load i64, i64* %186, align 8, !dbg !1506
  %188 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %19, align 8, !dbg !1507
  %189 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %188, i32 0, i32 19, !dbg !1508
  %190 = load i32, i32* %189, align 8, !dbg !1508
  %191 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %181, i8* %184, i64 %187, i32 %190), !dbg !1509
  store i8* %191, i8** %15, align 8, !dbg !1510
  br label %192

; <label>:192:                                    ; preds = %174, %157
  %193 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %11, align 8, !dbg !1511
  %194 = load i8*, i8** %9, align 8, !dbg !1512
  %195 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %12, align 8, !dbg !1513
  %196 = load i8*, i8** %15, align 8, !dbg !1514
  call void @dcc_ctcp_message(%struct._IRC_SERVER_REC* %193, i8* %194, %struct.CHAT_DCC_REC* %195, i32 0, i8* %196), !dbg !1515
  %197 = load i8*, i8** %15, align 8, !dbg !1516
  call void @g_free(i8* %197), !dbg !1517
  store i32 1, i32* %7, align 4, !dbg !1518
  br label %198, !dbg !1518

; <label>:198:                                    ; preds = %192, %104, %77, %51, %39, %27
  %199 = load i32, i32* %7, align 4, !dbg !1519
  ret i32 %199, !dbg !1519
}

declare i32 @dcc_queue_remove_head(i32) #1

declare void @dcc_queue_free(i32) #1

declare %struct.DCC_REC* @dcc_find_request(i32, i8*, i8*) #1

declare i32 @module_get_uniq_id_str(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i8* @dcc_send_get_file(i8*) #0 !dbg !1520 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1523, metadata !867), !dbg !1524
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1525, metadata !867), !dbg !1526
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1527, metadata !867), !dbg !1528
  %5 = load i8*, i8** %2, align 8, !dbg !1529
  %6 = call i8* @convert_home(i8* %5), !dbg !1530
  store i8* %6, i8** %3, align 8, !dbg !1531
  %7 = load i8*, i8** %3, align 8, !dbg !1532
  %8 = call i32 @g_path_is_absolute(i8* %7), !dbg !1534
  %9 = icmp ne i32 %8, 0, !dbg !1534
  br i1 %9, label %28, label %10, !dbg !1535

; <label>:10:                                     ; preds = %1
  %11 = load i8*, i8** %3, align 8, !dbg !1536
  call void @g_free(i8* %11), !dbg !1538
  %12 = call i8* @settings_get_str(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0)), !dbg !1539
  %13 = call i8* @convert_home(i8* %12), !dbg !1540
  store i8* %13, i8** %4, align 8, !dbg !1542
  %14 = load i8*, i8** %4, align 8, !dbg !1543
  %15 = load i8, i8* %14, align 1, !dbg !1544
  %16 = sext i8 %15 to i32, !dbg !1544
  %17 = icmp eq i32 %16, 0, !dbg !1545
  br i1 %17, label %18, label %21, !dbg !1544

; <label>:18:                                     ; preds = %10
  %19 = load i8*, i8** %2, align 8, !dbg !1546
  %20 = call noalias i8* @g_strdup(i8* %19), !dbg !1547
  br label %25, !dbg !1548

; <label>:21:                                     ; preds = %10
  %22 = load i8*, i8** %4, align 8, !dbg !1549
  %23 = load i8*, i8** %2, align 8, !dbg !1550
  %24 = call noalias i8* (i8*, ...) @g_strconcat(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), i8* %23, i8* null), !dbg !1551
  br label %25, !dbg !1552

; <label>:25:                                     ; preds = %21, %18
  %26 = phi i8* [ %20, %18 ], [ %24, %21 ], !dbg !1554
  store i8* %26, i8** %3, align 8, !dbg !1556
  %27 = load i8*, i8** %4, align 8, !dbg !1557
  call void @g_free(i8* %27), !dbg !1558
  br label %28, !dbg !1559

; <label>:28:                                     ; preds = %25, %1
  %29 = load i8*, i8** %3, align 8, !dbg !1560
  ret i8* %29, !dbg !1561
}

declare i32 @open(i8*, i32, ...) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat*) #4

declare void @g_log(i8*, i32, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @strerror(i32) #4

declare %struct._GIOChannel* @dcc_listen(%struct._GIOChannel*, %struct._IPADDR*, i32*) #1

declare %struct._GIOChannel* @net_sendbuffer_handle(%struct._NET_SENDBUF_REC*) #1

declare noalias i8* @g_path_get_basename(i8*) #1

declare i32 @settings_get_bool(i8*) #1

declare i8* @g_strdelimit(i8*, i8*, i8 signext) #1

; Function Attrs: nounwind uwtable
define internal %struct.SEND_DCC_REC* @dcc_send_create(%struct._IRC_SERVER_REC*, %struct.CHAT_DCC_REC*, i8*, i8*) #0 !dbg !1562 {
  %5 = alloca %struct.SEND_DCC_REC*, align 8
  %6 = alloca %struct._IRC_SERVER_REC*, align 8
  %7 = alloca %struct.CHAT_DCC_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.SEND_DCC_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %6, metadata !1565, metadata !867), !dbg !1566
  store %struct.CHAT_DCC_REC* %1, %struct.CHAT_DCC_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %7, metadata !1567, metadata !867), !dbg !1568
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1569, metadata !867), !dbg !1570
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1571, metadata !867), !dbg !1572
  call void @llvm.dbg.declare(metadata %struct.SEND_DCC_REC** %10, metadata !1573, metadata !867), !dbg !1574
  %11 = call noalias i8* @g_malloc0_n(i64 1, i64 240), !dbg !1575
  %12 = bitcast i8* %11 to %struct.SEND_DCC_REC*, !dbg !1576
  store %struct.SEND_DCC_REC* %12, %struct.SEND_DCC_REC** %10, align 8, !dbg !1577
  %13 = call i32 @module_get_uniq_id_str(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0)), !dbg !1578
  %14 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %10, align 8, !dbg !1579
  %15 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %14, i32 0, i32 1, !dbg !1580
  store i32 %13, i32* %15, align 4, !dbg !1581
  %16 = call i32 @module_get_uniq_id_str(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)), !dbg !1582
  %17 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %10, align 8, !dbg !1583
  %18 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %17, i32 0, i32 0, !dbg !1584
  store i32 %16, i32* %18, align 8, !dbg !1585
  %19 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %10, align 8, !dbg !1586
  %20 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %19, i32 0, i32 24, !dbg !1587
  store i32 -1, i32* %20, align 8, !dbg !1588
  %21 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %10, align 8, !dbg !1589
  %22 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %21, i32 0, i32 25, !dbg !1590
  store i32 -1, i32* %22, align 4, !dbg !1591
  %23 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %10, align 8, !dbg !1592
  %24 = bitcast %struct.SEND_DCC_REC* %23 to %struct.DCC_REC*, !dbg !1593
  %25 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1594
  %26 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %7, align 8, !dbg !1595
  %27 = load i8*, i8** %8, align 8, !dbg !1596
  %28 = load i8*, i8** %9, align 8, !dbg !1597
  call void @dcc_init_rec(%struct.DCC_REC* %24, %struct._IRC_SERVER_REC* %25, %struct.CHAT_DCC_REC* %26, i8* %27, i8* %28), !dbg !1598
  %29 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %10, align 8, !dbg !1599
  %30 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %29, i32 0, i32 21, !dbg !1601
  %31 = load %struct._GHashTable*, %struct._GHashTable** %30, align 8, !dbg !1601
  %32 = icmp eq %struct._GHashTable* %31, null, !dbg !1602
  br i1 %32, label %33, label %36, !dbg !1603

; <label>:33:                                     ; preds = %4
  %34 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %10, align 8, !dbg !1604
  %35 = bitcast %struct.SEND_DCC_REC* %34 to i8*, !dbg !1604
  call void @g_free(i8* %35), !dbg !1606
  store %struct.SEND_DCC_REC* null, %struct.SEND_DCC_REC** %5, align 8, !dbg !1607
  br label %38, !dbg !1607

; <label>:36:                                     ; preds = %4
  %37 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %10, align 8, !dbg !1608
  store %struct.SEND_DCC_REC* %37, %struct.SEND_DCC_REC** %5, align 8, !dbg !1609
  br label %38, !dbg !1609

; <label>:38:                                     ; preds = %36, %33
  %39 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %5, align 8, !dbg !1610
  ret %struct.SEND_DCC_REC* %39, !dbg !1610
}

declare void @g_warn_message(i8*, i8*, i32, i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #5

declare i32 @g_input_add(%struct._GIOChannel*, i32, void (i8*, %struct._GIOChannel*, i32)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @dcc_send_connected(%struct.SEND_DCC_REC*) #0 !dbg !1611 {
  %2 = alloca %struct.SEND_DCC_REC*, align 8
  %3 = alloca %struct._GIOChannel*, align 8
  %4 = alloca %struct._IPADDR, align 4
  %5 = alloca i32, align 4
  store %struct.SEND_DCC_REC* %0, %struct.SEND_DCC_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.SEND_DCC_REC** %2, metadata !1612, metadata !867), !dbg !1613
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %3, metadata !1614, metadata !867), !dbg !1615
  call void @llvm.dbg.declare(metadata %struct._IPADDR* %4, metadata !1616, metadata !867), !dbg !1617
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1618, metadata !867), !dbg !1619
  %6 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !1620
  %7 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %6, i32 0, i32 13, !dbg !1621
  %8 = load %struct._GIOChannel*, %struct._GIOChannel** %7, align 8, !dbg !1621
  %9 = call %struct._GIOChannel* @net_accept(%struct._GIOChannel* %8, %struct._IPADDR* %4, i32* %5), !dbg !1622
  store %struct._GIOChannel* %9, %struct._GIOChannel** %3, align 8, !dbg !1623
  %10 = load %struct._GIOChannel*, %struct._GIOChannel** %3, align 8, !dbg !1624
  %11 = icmp eq %struct._GIOChannel* %10, null, !dbg !1626
  br i1 %11, label %12, label %13, !dbg !1627

; <label>:12:                                     ; preds = %1
  br label %56, !dbg !1628

; <label>:13:                                     ; preds = %1
  %14 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !1629
  %15 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %14, i32 0, i32 13, !dbg !1630
  %16 = load %struct._GIOChannel*, %struct._GIOChannel** %15, align 8, !dbg !1630
  call void @net_disconnect(%struct._GIOChannel* %16), !dbg !1631
  %17 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !1632
  %18 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %17, i32 0, i32 14, !dbg !1633
  %19 = load i32, i32* %18, align 8, !dbg !1633
  %20 = call i32 @g_source_remove(i32 %19), !dbg !1634
  %21 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !1635
  %22 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %21, i32 0, i32 14, !dbg !1636
  store i32 -1, i32* %22, align 8, !dbg !1637
  %23 = call i64 @time(i64* null) #7, !dbg !1638
  %24 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !1639
  %25 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %24, i32 0, i32 17, !dbg !1640
  store i64 %23, i64* %25, align 8, !dbg !1641
  %26 = load %struct._GIOChannel*, %struct._GIOChannel** %3, align 8, !dbg !1642
  %27 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !1643
  %28 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %27, i32 0, i32 13, !dbg !1644
  store %struct._GIOChannel* %26, %struct._GIOChannel** %28, align 8, !dbg !1645
  %29 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !1646
  %30 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %29, i32 0, i32 10, !dbg !1647
  %31 = bitcast %struct._IPADDR* %30 to i8*, !dbg !1648
  %32 = bitcast %struct._IPADDR* %4 to i8*, !dbg !1648
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 20, i32 4, i1 false), !dbg !1648
  %33 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !1649
  %34 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %33, i32 0, i32 10, !dbg !1650
  %35 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !1651
  %36 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %35, i32 0, i32 11, !dbg !1652
  %37 = getelementptr inbounds [46 x i8], [46 x i8]* %36, i32 0, i32 0, !dbg !1651
  %38 = call i32 @net_ip2host(%struct._IPADDR* %34, i8* %37), !dbg !1653
  %39 = load i32, i32* %5, align 4, !dbg !1654
  %40 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !1655
  %41 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %40, i32 0, i32 12, !dbg !1656
  store i32 %39, i32* %41, align 4, !dbg !1657
  %42 = load %struct._GIOChannel*, %struct._GIOChannel** %3, align 8, !dbg !1658
  %43 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !1659
  %44 = bitcast %struct.SEND_DCC_REC* %43 to i8*, !dbg !1659
  %45 = call i32 @g_input_add(%struct._GIOChannel* %42, i32 1, void (i8*, %struct._GIOChannel*, i32)* bitcast (void (%struct.SEND_DCC_REC*)* @dcc_send_read_size to void (i8*, %struct._GIOChannel*, i32)*), i8* %44), !dbg !1660
  %46 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !1661
  %47 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %46, i32 0, i32 15, !dbg !1662
  store i32 %45, i32* %47, align 4, !dbg !1663
  %48 = load %struct._GIOChannel*, %struct._GIOChannel** %3, align 8, !dbg !1664
  %49 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !1665
  %50 = bitcast %struct.SEND_DCC_REC* %49 to i8*, !dbg !1665
  %51 = call i32 @g_input_add(%struct._GIOChannel* %48, i32 2, void (i8*, %struct._GIOChannel*, i32)* bitcast (void (%struct.SEND_DCC_REC*)* @dcc_send_data to void (i8*, %struct._GIOChannel*, i32)*), i8* %50), !dbg !1666
  %52 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !1667
  %53 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %52, i32 0, i32 16, !dbg !1668
  store i32 %51, i32* %53, align 8, !dbg !1669
  %54 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !1670
  %55 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0), i32 1, %struct.SEND_DCC_REC* %54), !dbg !1671
  br label %56, !dbg !1672

; <label>:56:                                     ; preds = %13, %12
  ret void, !dbg !1673
}

; Function Attrs: nounwind
declare i32 @rand() #4

declare void @dcc_ip2str(%struct._IPADDR*, i8*) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare void @dcc_ctcp_message(%struct._IRC_SERVER_REC*, i8*, %struct.CHAT_DCC_REC*, i32, i8*) #1

declare i8* @convert_home(i8*) #1

declare i32 @g_path_is_absolute(i8*) #1

declare i8* @settings_get_str(i8*) #1

declare noalias i8* @g_strdup(i8*) #1

declare noalias i8* @g_strconcat(i8*, ...) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare void @dcc_init_rec(%struct.DCC_REC*, %struct._IRC_SERVER_REC*, %struct.CHAT_DCC_REC*, i8*, i8*) #1

declare %struct._GIOChannel* @net_accept(%struct._GIOChannel*, %struct._IPADDR*, i32*) #1

declare void @net_disconnect(%struct._GIOChannel*) #1

declare i32 @g_source_remove(i32) #1

; Function Attrs: nounwind
declare i64 @time(i64*) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #6

declare i32 @net_ip2host(%struct._IPADDR*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @dcc_send_read_size(%struct.SEND_DCC_REC*) #0 !dbg !1675 {
  %2 = alloca %struct.SEND_DCC_REC*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.SEND_DCC_REC* %0, %struct.SEND_DCC_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.SEND_DCC_REC** %2, metadata !1676, metadata !867), !dbg !1677
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1678, metadata !867), !dbg !1679
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1680, metadata !867), !dbg !1681
  %5 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !1682
  %6 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %5, i32 0, i32 13, !dbg !1683
  %7 = load %struct._GIOChannel*, %struct._GIOChannel** %6, align 8, !dbg !1683
  %8 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !1684
  %9 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %8, i32 0, i32 26, !dbg !1685
  %10 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i32 0, i32 0, !dbg !1684
  %11 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !1686
  %12 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %11, i32 0, i32 27, !dbg !1687
  %13 = load i32, i32* %12, align 4, !dbg !1687
  %14 = sext i32 %13 to i64, !dbg !1688
  %15 = getelementptr inbounds i8, i8* %10, i64 %14, !dbg !1688
  %16 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !1689
  %17 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %16, i32 0, i32 27, !dbg !1690
  %18 = load i32, i32* %17, align 4, !dbg !1690
  %19 = sub nsw i32 4, %18, !dbg !1691
  %20 = call i32 @net_receive(%struct._GIOChannel* %7, i8* %15, i32 %19), !dbg !1692
  store i32 %20, i32* %4, align 4, !dbg !1693
  %21 = load i32, i32* %4, align 4, !dbg !1694
  %22 = icmp eq i32 %21, -1, !dbg !1696
  br i1 %22, label %23, label %26, !dbg !1697

; <label>:23:                                     ; preds = %1
  %24 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !1698
  %25 = bitcast %struct.SEND_DCC_REC* %24 to %struct.DCC_REC*, !dbg !1700
  call void @dcc_close(%struct.DCC_REC* %25), !dbg !1701
  br label %69, !dbg !1702

; <label>:26:                                     ; preds = %1
  %27 = load i32, i32* %4, align 4, !dbg !1703
  %28 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !1704
  %29 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %28, i32 0, i32 27, !dbg !1705
  %30 = load i32, i32* %29, align 4, !dbg !1706
  %31 = add nsw i32 %30, %27, !dbg !1706
  store i32 %31, i32* %29, align 4, !dbg !1706
  %32 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !1707
  %33 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %32, i32 0, i32 27, !dbg !1709
  %34 = load i32, i32* %33, align 4, !dbg !1709
  %35 = icmp ne i32 %34, 4, !dbg !1710
  br i1 %35, label %36, label %37, !dbg !1711

; <label>:36:                                     ; preds = %26
  br label %69, !dbg !1712

; <label>:37:                                     ; preds = %26
  %38 = bitcast i32* %3 to i8*, !dbg !1713
  %39 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !1714
  %40 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %39, i32 0, i32 26, !dbg !1715
  %41 = getelementptr inbounds [4 x i8], [4 x i8]* %40, i32 0, i32 0, !dbg !1713
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %41, i64 4, i32 4, i1 false), !dbg !1713
  %42 = load i32, i32* %3, align 4, !dbg !1716
  %43 = call i32 @ntohl(i32 %42) #2, !dbg !1717
  store i32 %43, i32* %3, align 4, !dbg !1718
  %44 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !1719
  %45 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %44, i32 0, i32 27, !dbg !1720
  store i32 0, i32* %45, align 4, !dbg !1721
  %46 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !1722
  %47 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %46, i32 0, i32 28, !dbg !1724
  %48 = load i8, i8* %47, align 8, !dbg !1724
  %49 = lshr i8 %48, 1, !dbg !1724
  %50 = and i8 %49, 1, !dbg !1724
  %51 = zext i8 %50 to i32, !dbg !1724
  %52 = icmp ne i32 %51, 0, !dbg !1722
  br i1 %52, label %53, label %69, !dbg !1725

; <label>:53:                                     ; preds = %37
  %54 = load i32, i32* %3, align 4, !dbg !1726
  %55 = zext i32 %54 to i64, !dbg !1726
  %56 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !1728
  %57 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %56, i32 0, i32 18, !dbg !1729
  %58 = load i64, i64* %57, align 8, !dbg !1729
  %59 = and i64 %58, 4294967295, !dbg !1730
  %60 = icmp eq i64 %55, %59, !dbg !1731
  br i1 %60, label %61, label %69, !dbg !1732

; <label>:61:                                     ; preds = %53
  %62 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !1733
  %63 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %62, i32 0, i32 28, !dbg !1735
  %64 = load i8, i8* %63, align 8, !dbg !1736
  %65 = and i8 %64, -5, !dbg !1736
  %66 = or i8 %65, 4, !dbg !1736
  store i8 %66, i8* %63, align 8, !dbg !1736
  %67 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !1737
  %68 = bitcast %struct.SEND_DCC_REC* %67 to %struct.DCC_REC*, !dbg !1738
  call void @dcc_close(%struct.DCC_REC* %68), !dbg !1739
  br label %69, !dbg !1740

; <label>:69:                                     ; preds = %23, %36, %61, %53, %37
  ret void, !dbg !1741
}

; Function Attrs: nounwind uwtable
define internal void @dcc_send_data(%struct.SEND_DCC_REC*) #0 !dbg !1742 {
  %2 = alloca %struct.SEND_DCC_REC*, align 8
  %3 = alloca [512 x i8], align 16
  %4 = alloca i32, align 4
  store %struct.SEND_DCC_REC* %0, %struct.SEND_DCC_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.SEND_DCC_REC** %2, metadata !1743, metadata !867), !dbg !1744
  call void @llvm.dbg.declare(metadata [512 x i8]* %3, metadata !1745, metadata !867), !dbg !1749
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1750, metadata !867), !dbg !1751
  %5 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !1752
  %6 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %5, i32 0, i32 24, !dbg !1753
  %7 = load i32, i32* %6, align 8, !dbg !1753
  %8 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i32 0, i32 0, !dbg !1754
  %9 = call i64 @read(i32 %7, i8* %8, i64 512), !dbg !1755
  %10 = trunc i64 %9 to i32, !dbg !1755
  store i32 %10, i32* %4, align 4, !dbg !1756
  %11 = load i32, i32* %4, align 4, !dbg !1757
  %12 = icmp sle i32 %11, 0, !dbg !1759
  br i1 %12, label %13, label %25, !dbg !1760

; <label>:13:                                     ; preds = %1
  %14 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !1761
  %15 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %14, i32 0, i32 28, !dbg !1763
  %16 = load i8, i8* %15, align 8, !dbg !1764
  %17 = and i8 %16, -3, !dbg !1764
  %18 = or i8 %17, 2, !dbg !1764
  store i8 %18, i8* %15, align 8, !dbg !1764
  %19 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !1765
  %20 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %19, i32 0, i32 16, !dbg !1766
  %21 = load i32, i32* %20, align 8, !dbg !1766
  %22 = call i32 @g_source_remove(i32 %21), !dbg !1767
  %23 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !1768
  %24 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %23, i32 0, i32 16, !dbg !1769
  store i32 -1, i32* %24, align 8, !dbg !1770
  br label %55, !dbg !1771

; <label>:25:                                     ; preds = %1
  %26 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !1772
  %27 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %26, i32 0, i32 13, !dbg !1773
  %28 = load %struct._GIOChannel*, %struct._GIOChannel** %27, align 8, !dbg !1773
  %29 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i32 0, i32 0, !dbg !1774
  %30 = load i32, i32* %4, align 4, !dbg !1775
  %31 = call i32 @net_transmit(%struct._GIOChannel* %28, i8* %29, i32 %30), !dbg !1776
  store i32 %31, i32* %4, align 4, !dbg !1777
  %32 = load i32, i32* %4, align 4, !dbg !1778
  %33 = icmp sgt i32 %32, 0, !dbg !1780
  br i1 %33, label %34, label %41, !dbg !1781

; <label>:34:                                     ; preds = %25
  %35 = load i32, i32* %4, align 4, !dbg !1782
  %36 = sext i32 %35 to i64, !dbg !1782
  %37 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !1784
  %38 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %37, i32 0, i32 18, !dbg !1785
  %39 = load i64, i64* %38, align 8, !dbg !1786
  %40 = add i64 %39, %36, !dbg !1786
  store i64 %40, i64* %38, align 8, !dbg !1786
  br label %41, !dbg !1784

; <label>:41:                                     ; preds = %34, %25
  %42 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !1787
  %43 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %42, i32 0, i32 28, !dbg !1788
  %44 = load i8, i8* %43, align 8, !dbg !1789
  %45 = and i8 %44, -5, !dbg !1789
  store i8 %45, i8* %43, align 8, !dbg !1789
  %46 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !1790
  %47 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %46, i32 0, i32 24, !dbg !1791
  %48 = load i32, i32* %47, align 8, !dbg !1791
  %49 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !1792
  %50 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %49, i32 0, i32 18, !dbg !1793
  %51 = load i64, i64* %50, align 8, !dbg !1793
  %52 = call i64 @lseek(i32 %48, i64 %51, i32 0) #7, !dbg !1794
  %53 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !1795
  %54 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i32 0, i32 0), i32 1, %struct.SEND_DCC_REC* %53), !dbg !1796
  br label %55, !dbg !1797

; <label>:55:                                     ; preds = %41, %13
  ret void, !dbg !1798
}

declare i32 @net_receive(%struct._GIOChannel*, i8*, i32) #1

declare void @dcc_close(%struct.DCC_REC*) #1

; Function Attrs: nounwind readnone
declare i32 @ntohl(i32) #3

declare i64 @read(i32, i8*, i64) #1

declare i32 @net_transmit(%struct._GIOChannel*, i8*, i32) #1

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #4

declare %struct._GIOChannel* @dcc_connect_ip(%struct._IPADDR*, i32) #1

declare void @dcc_destroy(%struct.DCC_REC*) #1

declare i32 @cmd_get_params(i8*, i8**, i32, ...) #1

declare %struct.CHAT_DCC_REC* @item_get_dcc(%struct._WI_ITEM_REC*) #1

declare i32 @g_ascii_strcasecmp(i8*, i8*) #1

declare void @cmd_params_free(i8*) #1

declare void @signal_stop() #1

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #1

declare i32 @dcc_queue_old(i8*, i8*) #1

declare i32 @dcc_queue_remove_tail(i32) #1

; Function Attrs: nounwind uwtable
define internal void @dcc_send_add(i8*, %struct.CHAT_DCC_REC*, i8*, i8*, i32, i32) #0 !dbg !1800 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.CHAT_DCC_REC*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.stat, align 8
  %14 = alloca %struct.glob_t, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1803, metadata !867), !dbg !1804
  store %struct.CHAT_DCC_REC* %1, %struct.CHAT_DCC_REC** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %8, metadata !1805, metadata !867), !dbg !1806
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1807, metadata !867), !dbg !1808
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1809, metadata !867), !dbg !1810
  store i32 %4, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1811, metadata !867), !dbg !1812
  store i32 %5, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1813, metadata !867), !dbg !1814
  call void @llvm.dbg.declare(metadata %struct.stat* %13, metadata !1815, metadata !867), !dbg !1816
  call void @llvm.dbg.declare(metadata %struct.glob_t* %14, metadata !1817, metadata !867), !dbg !1847
  call void @llvm.dbg.declare(metadata i8** %15, metadata !1848, metadata !867), !dbg !1849
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1850, metadata !867), !dbg !1851
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1852, metadata !867), !dbg !1853
  call void @llvm.dbg.declare(metadata i32* %18, metadata !1854, metadata !867), !dbg !1855
  call void @llvm.dbg.declare(metadata i32* %19, metadata !1856, metadata !867), !dbg !1857
  call void @llvm.dbg.declare(metadata i32* %20, metadata !1858, metadata !867), !dbg !1859
  call void @llvm.dbg.declare(metadata i32* %21, metadata !1860, metadata !867), !dbg !1861
  %23 = bitcast %struct.glob_t* %14 to i8*, !dbg !1862
  call void @llvm.memset.p0i8.i64(i8* %23, i8 0, i64 72, i32 8, i1 false), !dbg !1862
  store i32 4112, i32* %19, align 4, !dbg !1863
  br label %24, !dbg !1864

; <label>:24:                                     ; preds = %37, %6
  %25 = call i8* @cmd_get_quoted_param(i8** %10), !dbg !1865
  store i8* %25, i8** %15, align 8, !dbg !1869
  %26 = load i8*, i8** %15, align 8, !dbg !1870
  %27 = load i8, i8* %26, align 1, !dbg !1872
  %28 = sext i8 %27 to i32, !dbg !1872
  %29 = icmp eq i32 %28, 0, !dbg !1873
  br i1 %29, label %30, label %31, !dbg !1874

; <label>:30:                                     ; preds = %24
  br label %40, !dbg !1875

; <label>:31:                                     ; preds = %24
  %32 = load i8*, i8** %15, align 8, !dbg !1876
  %33 = load i32, i32* %19, align 4, !dbg !1878
  %34 = call i32 @glob(i8* %32, i32 %33, i32 (i8*, i32)* null, %struct.glob_t* %14) #7, !dbg !1879
  %35 = icmp slt i32 %34, 0, !dbg !1880
  br i1 %35, label %36, label %37, !dbg !1881

; <label>:36:                                     ; preds = %31
  br label %40, !dbg !1882

; <label>:37:                                     ; preds = %31
  %38 = load i32, i32* %19, align 4, !dbg !1883
  %39 = or i32 %38, 32, !dbg !1883
  store i32 %39, i32* %19, align 4, !dbg !1883
  br label %24, !dbg !1884, !llvm.loop !1886

; <label>:40:                                     ; preds = %36, %30
  store i32 0, i32* %18, align 4, !dbg !1887
  store i32 -1, i32* %20, align 4, !dbg !1888
  store i32 0, i32* %21, align 4, !dbg !1889
  store i32 0, i32* %16, align 4, !dbg !1890
  br label %41, !dbg !1892

; <label>:41:                                     ; preds = %103, %40
  %42 = load i32, i32* %16, align 4, !dbg !1893
  %43 = sext i32 %42 to i64, !dbg !1893
  %44 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %14, i32 0, i32 0, !dbg !1896
  %45 = load i64, i64* %44, align 8, !dbg !1896
  %46 = icmp ult i64 %43, %45, !dbg !1897
  br i1 %46, label %47, label %106, !dbg !1898

; <label>:47:                                     ; preds = %41
  call void @llvm.dbg.declare(metadata i8** %22, metadata !1899, metadata !867), !dbg !1901
  %48 = load i32, i32* %16, align 4, !dbg !1902
  %49 = sext i32 %48 to i64, !dbg !1903
  %50 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %14, i32 0, i32 1, !dbg !1904
  %51 = load i8**, i8*** %50, align 8, !dbg !1904
  %52 = getelementptr inbounds i8*, i8** %51, i64 %49, !dbg !1903
  %53 = load i8*, i8** %52, align 8, !dbg !1903
  %54 = call i8* @dcc_send_get_file(i8* %53), !dbg !1905
  store i8* %54, i8** %22, align 8, !dbg !1901
  %55 = load i8*, i8** %22, align 8, !dbg !1906
  %56 = call i32 @stat(i8* %55, %struct.stat* %13) #7, !dbg !1907
  store i32 %56, i32* %17, align 4, !dbg !1908
  %57 = load i32, i32* %17, align 4, !dbg !1909
  %58 = icmp eq i32 %57, 0, !dbg !1911
  br i1 %58, label %59, label %66, !dbg !1912

; <label>:59:                                     ; preds = %47
  %60 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 3, !dbg !1913
  %61 = load i32, i32* %60, align 8, !dbg !1913
  %62 = and i32 %61, 61440, !dbg !1913
  %63 = icmp eq i32 %62, 16384, !dbg !1915
  br i1 %63, label %64, label %66, !dbg !1916

; <label>:64:                                     ; preds = %59
  %65 = call i32* @__errno_location() #2, !dbg !1917
  store i32 21, i32* %65, align 4, !dbg !1919
  store i32 -1, i32* %17, align 4, !dbg !1920
  br label %66, !dbg !1921

; <label>:66:                                     ; preds = %64, %59, %47
  %67 = load i32, i32* %17, align 4, !dbg !1922
  %68 = icmp slt i32 %67, 0, !dbg !1924
  br i1 %68, label %69, label %76, !dbg !1925

; <label>:69:                                     ; preds = %66
  %70 = load i8*, i8** %9, align 8, !dbg !1926
  %71 = load i8*, i8** %22, align 8, !dbg !1928
  %72 = call i32* @__errno_location() #2, !dbg !1929
  %73 = load i32, i32* %72, align 4, !dbg !1930
  %74 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0), i32 3, i8* %70, i8* %71, i32 %73), !dbg !1931
  %75 = load i8*, i8** %22, align 8, !dbg !1932
  call void @g_free(i8* %75), !dbg !1933
  br label %103, !dbg !1934

; <label>:76:                                     ; preds = %66
  %77 = load i32, i32* %20, align 4, !dbg !1935
  %78 = icmp slt i32 %77, 0, !dbg !1937
  br i1 %78, label %79, label %92, !dbg !1938

; <label>:79:                                     ; preds = %76
  %80 = load i32, i32* %11, align 4, !dbg !1939
  %81 = icmp ne i32 %80, 0, !dbg !1942
  br i1 %81, label %82, label %86, !dbg !1943

; <label>:82:                                     ; preds = %79
  %83 = load i8*, i8** %9, align 8, !dbg !1944
  %84 = load i8*, i8** %7, align 8, !dbg !1945
  %85 = call i32 @dcc_queue_old(i8* %83, i8* %84), !dbg !1946
  store i32 %85, i32* %20, align 4, !dbg !1947
  br label %86, !dbg !1948

; <label>:86:                                     ; preds = %82, %79
  store i32 0, i32* %21, align 4, !dbg !1949
  %87 = load i32, i32* %20, align 4, !dbg !1950
  %88 = icmp slt i32 %87, 0, !dbg !1952
  br i1 %88, label %89, label %91, !dbg !1953

; <label>:89:                                     ; preds = %86
  %90 = call i32 @dcc_queue_new(), !dbg !1954
  store i32 %90, i32* %20, align 4, !dbg !1956
  store i32 1, i32* %21, align 4, !dbg !1957
  br label %91, !dbg !1958

; <label>:91:                                     ; preds = %89, %86
  br label %92, !dbg !1959

; <label>:92:                                     ; preds = %91, %76
  %93 = load i32, i32* %20, align 4, !dbg !1960
  %94 = load i32, i32* %11, align 4, !dbg !1961
  %95 = load i8*, i8** %9, align 8, !dbg !1962
  %96 = load i8*, i8** %22, align 8, !dbg !1963
  %97 = load i8*, i8** %7, align 8, !dbg !1964
  %98 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %8, align 8, !dbg !1965
  %99 = load i32, i32* %12, align 4, !dbg !1966
  call void @dcc_queue_add(i32 %93, i32 %94, i8* %95, i8* %96, i8* %97, %struct.CHAT_DCC_REC* %98, i32 %99), !dbg !1967
  %100 = load i32, i32* %18, align 4, !dbg !1968
  %101 = add nsw i32 %100, 1, !dbg !1968
  store i32 %101, i32* %18, align 4, !dbg !1968
  %102 = load i8*, i8** %22, align 8, !dbg !1969
  call void @g_free(i8* %102), !dbg !1970
  br label %103, !dbg !1971

; <label>:103:                                    ; preds = %92, %69
  %104 = load i32, i32* %16, align 4, !dbg !1972
  %105 = add nsw i32 %104, 1, !dbg !1972
  store i32 %105, i32* %16, align 4, !dbg !1972
  br label %41, !dbg !1974, !llvm.loop !1975

; <label>:106:                                    ; preds = %41
  %107 = load i32, i32* %18, align 4, !dbg !1977
  %108 = icmp sgt i32 %107, 0, !dbg !1979
  br i1 %108, label %109, label %114, !dbg !1980

; <label>:109:                                    ; preds = %106
  %110 = load i32, i32* %21, align 4, !dbg !1981
  %111 = icmp ne i32 %110, 0, !dbg !1981
  br i1 %111, label %112, label %114, !dbg !1983

; <label>:112:                                    ; preds = %109
  %113 = load i32, i32* %20, align 4, !dbg !1984
  call void @dcc_queue_send_next(i32 %113), !dbg !1985
  br label %114, !dbg !1985

; <label>:114:                                    ; preds = %112, %109, %106
  call void @globfree(%struct.glob_t* %14) #7, !dbg !1986
  ret void, !dbg !1987
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #6

declare i8* @cmd_get_quoted_param(i8**) #1

; Function Attrs: nounwind
declare i32 @glob(i8*, i32, i32 (i8*, i32)*, %struct.glob_t*) #4

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #4

declare i32 @dcc_queue_new() #1

declare void @dcc_queue_add(i32, i32, i8*, i8*, i8*, %struct.CHAT_DCC_REC*, i32) #1

; Function Attrs: nounwind
declare void @globfree(%struct.glob_t*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!848, !849}
!llvm.ident = !{!850}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !74)
!1 = !DIFile(filename: "line170-dcc-send.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !10, !15, !24, !35, !47, !68}
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
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 51, size: 32, align: 32, elements: !37)
!36 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/irssi/task1")
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46}
!38 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!39 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!40 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!41 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!42 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!43 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!44 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!45 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!46 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !48, line: 25, size: 32, align: 32, elements: !49)
!48 = !DIFile(filename: "../../../src/core/commands.h", directory: "/home/lichi/Desktop/irssi/task1")
!49 = !{!50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67}
!50 = !DIEnumerator(name: "CMDERR_OPTION_UNKNOWN", value: -3)
!51 = !DIEnumerator(name: "CMDERR_OPTION_AMBIGUOUS", value: -2)
!52 = !DIEnumerator(name: "CMDERR_OPTION_ARG_MISSING", value: -1)
!53 = !DIEnumerator(name: "CMDERR_UNKNOWN", value: 0)
!54 = !DIEnumerator(name: "CMDERR_AMBIGUOUS", value: 1)
!55 = !DIEnumerator(name: "CMDERR_ERRNO", value: 2)
!56 = !DIEnumerator(name: "CMDERR_NOT_ENOUGH_PARAMS", value: 3)
!57 = !DIEnumerator(name: "CMDERR_NOT_CONNECTED", value: 4)
!58 = !DIEnumerator(name: "CMDERR_NOT_JOINED", value: 5)
!59 = !DIEnumerator(name: "CMDERR_CHAN_NOT_FOUND", value: 6)
!60 = !DIEnumerator(name: "CMDERR_CHAN_NOT_SYNCED", value: 7)
!61 = !DIEnumerator(name: "CMDERR_ILLEGAL_PROTO", value: 8)
!62 = !DIEnumerator(name: "CMDERR_NOT_GOOD_IDEA", value: 9)
!63 = !DIEnumerator(name: "CMDERR_INVALID_TIME", value: 10)
!64 = !DIEnumerator(name: "CMDERR_INVALID_CHARSET", value: 11)
!65 = !DIEnumerator(name: "CMDERR_EVAL_MAX_RECURSE", value: 12)
!66 = !DIEnumerator(name: "CMDERR_PROGRAM_NOT_FOUND", value: 13)
!67 = !DIEnumerator(name: "CMDERR_NO_SERVER_DEFINED", value: 14)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !69, line: 6, size: 32, align: 32, elements: !70)
!69 = !DIFile(filename: "dcc-queue.h", directory: "/home/lichi/Desktop/irssi/task1")
!70 = !{!71, !72, !73}
!71 = !DIEnumerator(name: "DCC_QUEUE_NORMAL", value: 0)
!72 = !DIEnumerator(name: "DCC_QUEUE_PREPEND", value: 1)
!73 = !DIEnumerator(name: "DCC_QUEUE_APPEND", value: 2)
!74 = !{!75, !82, !83, !99, !446, !238, !436, !195, !534, !818, !822}
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !76, line: 9, baseType: !77)
!76 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64, align: 64)
!78 = !DISubroutineType(types: !79)
!79 = !{null, !80, !80, !80, !80, !80, !80}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64, align: 64)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64, align: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "SEND_DCC_REC", file: !85, line: 20, baseType: !86)
!85 = !DIFile(filename: "dcc-send.h", directory: "/home/lichi/Desktop/irssi/task1")
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !85, line: 12, size: 1920, align: 64, elements: !87)
!87 = !{!88, !91, !92, !98, !753, !754, !755, !756, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !809, !810, !811, !812, !814, !815, !816, !817}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !86, file: !89, line: 1, baseType: !90, size: 32, align: 32)
!89 = !DIFile(filename: "dcc-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!90 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !86, file: !89, line: 2, baseType: !90, size: 32, align: 32, offset: 32)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "created", scope: !86, file: !89, line: 3, baseType: !93, size: 64, align: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !94, line: 75, baseType: !95)
!94 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !96, line: 139, baseType: !97)
!96 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!97 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !86, file: !89, line: 5, baseType: !99, size: 64, align: 64, offset: 128)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64, align: 64)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_REC", file: !101, line: 6, baseType: !102)
!101 = !DIFile(filename: "../../../src/irc/core/irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_REC", file: !103, line: 42, size: 39168, align: 64, elements: !104)
!103 = !DIFile(filename: "../../../src/irc/core/irc-servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!104 = !{!105, !107, !108, !109, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !408, !409, !413, !414, !415, !419, !424, !425, !426, !427, !428, !429, !430, !431, !438, !439, !440, !441, !442, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !750, !752}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !102, file: !106, line: 3, baseType: !90, size: 32, align: 32)
!106 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!107 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !102, file: !106, line: 4, baseType: !90, size: 32, align: 32, offset: 32)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !102, file: !106, line: 6, baseType: !90, size: 32, align: 32, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !102, file: !106, line: 8, baseType: !110, size: 64, align: 64, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64, align: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_CONNECT_REC", file: !101, line: 5, baseType: !112)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_CONNECT_REC", file: !103, line: 24, size: 2496, align: 64, elements: !113)
!113 = !{!114, !116, !117, !118, !121, !122, !123, !124, !125, !127, !128, !129, !130, !131, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !112, file: !115, line: 3, baseType: !90, size: 32, align: 32)
!115 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!116 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !112, file: !115, line: 4, baseType: !90, size: 32, align: 32, offset: 32)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !112, file: !115, line: 6, baseType: !90, size: 32, align: 32, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !112, file: !115, line: 9, baseType: !119, size: 64, align: 64, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !112, file: !115, line: 10, baseType: !90, size: 32, align: 32, offset: 192)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !112, file: !115, line: 11, baseType: !119, size: 64, align: 64, offset: 256)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !112, file: !115, line: 11, baseType: !119, size: 64, align: 64, offset: 320)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !112, file: !115, line: 11, baseType: !119, size: 64, align: 64, offset: 384)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !112, file: !115, line: 13, baseType: !126, size: 16, align: 16, offset: 448)
!126 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !112, file: !115, line: 14, baseType: !119, size: 64, align: 64, offset: 512)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !112, file: !115, line: 15, baseType: !119, size: 64, align: 64, offset: 576)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !112, file: !115, line: 16, baseType: !90, size: 32, align: 32, offset: 640)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !112, file: !115, line: 17, baseType: !119, size: 64, align: 64, offset: 704)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !112, file: !115, line: 19, baseType: !132, size: 64, align: 64, offset: 768)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64, align: 64)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !134, line: 99, baseType: !135)
!134 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !136, line: 22, size: 160, align: 32, elements: !137)
!136 = !DIFile(filename: "../../../src/core/network.h", directory: "/home/lichi/Desktop/irssi/task1")
!137 = !{!138, !139}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !135, file: !136, line: 23, baseType: !126, size: 16, align: 16)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !135, file: !136, line: 24, baseType: !140, size: 128, align: 32, offset: 32)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !141, line: 211, size: 128, align: 32, elements: !142)
!141 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/irssi/task1")
!142 = !{!143}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !140, file: !141, line: 220, baseType: !144, size: 128, align: 32)
!144 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !140, file: !141, line: 213, size: 128, align: 32, elements: !145)
!145 = !{!146, !153, !158}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !144, file: !141, line: 215, baseType: !147, size: 128, align: 8)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 128, align: 8, elements: !151)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !149, line: 48, baseType: !150)
!149 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/irssi/task1")
!150 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!151 = !{!152}
!152 = !DISubrange(count: 16)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !144, file: !141, line: 217, baseType: !154, size: 128, align: 16)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 128, align: 16, elements: !156)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !149, line: 49, baseType: !126)
!156 = !{!157}
!157 = !DISubrange(count: 8)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !144, file: !141, line: 218, baseType: !159, size: 128, align: 32)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 128, align: 32, elements: !162)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !149, line: 51, baseType: !161)
!161 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!162 = !{!163}
!163 = !DISubrange(count: 4)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !112, file: !115, line: 19, baseType: !132, size: 64, align: 64, offset: 832)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !112, file: !115, line: 21, baseType: !119, size: 64, align: 64, offset: 896)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !112, file: !115, line: 22, baseType: !119, size: 64, align: 64, offset: 960)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !112, file: !115, line: 23, baseType: !119, size: 64, align: 64, offset: 1024)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !112, file: !115, line: 24, baseType: !119, size: 64, align: 64, offset: 1088)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !112, file: !115, line: 26, baseType: !119, size: 64, align: 64, offset: 1152)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !112, file: !115, line: 27, baseType: !119, size: 64, align: 64, offset: 1216)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !112, file: !115, line: 28, baseType: !119, size: 64, align: 64, offset: 1280)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !112, file: !115, line: 29, baseType: !119, size: 64, align: 64, offset: 1344)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !112, file: !115, line: 30, baseType: !119, size: 64, align: 64, offset: 1408)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !112, file: !115, line: 31, baseType: !119, size: 64, align: 64, offset: 1472)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !112, file: !115, line: 32, baseType: !119, size: 64, align: 64, offset: 1536)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !112, file: !115, line: 33, baseType: !119, size: 64, align: 64, offset: 1600)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !112, file: !115, line: 35, baseType: !178, size: 64, align: 64, offset: 1664)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64, align: 64)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !180)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !181)
!181 = !{!182, !185, !327, !328, !333, !334, !335, !336, !337, !346, !347, !348, !352, !353, !354, !355, !356, !357, !358, !359}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !180, file: !4, line: 100, baseType: !183, size: 32, align: 32)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !184, line: 49, baseType: !90)
!184 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!185 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !180, file: !4, line: 101, baseType: !186, size: 64, align: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64, align: 64)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !188)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !189)
!189 = !{!190, !213, !219, !225, !229, !314, !318, !323}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !188, file: !4, line: 133, baseType: !191, size: 64, align: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64, align: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{!194, !178, !195, !197, !200, !201}
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64, align: 64)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !184, line: 46, baseType: !120)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !198, line: 66, baseType: !199)
!198 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!199 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64, align: 64)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !204, line: 42, baseType: !205)
!204 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !204, line: 44, size: 128, align: 64, elements: !206)
!206 = !{!207, !211, !212}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !205, file: !204, line: 46, baseType: !208, size: 32, align: 32)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !209, line: 36, baseType: !210)
!209 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !198, line: 45, baseType: !161)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !205, file: !204, line: 47, baseType: !183, size: 32, align: 32, offset: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !205, file: !204, line: 48, baseType: !195, size: 64, align: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !188, file: !4, line: 138, baseType: !214, size: 64, align: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64, align: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{!194, !178, !217, !197, !200, !201}
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64, align: 64)
!218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !188, file: !4, line: 143, baseType: !220, size: 64, align: 64, offset: 128)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, align: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{!194, !178, !223, !224, !201}
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !198, line: 51, baseType: !97)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !188, file: !4, line: 147, baseType: !226, size: 64, align: 64, offset: 192)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{!194, !178, !201}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !188, file: !4, line: 149, baseType: !230, size: 64, align: 64, offset: 256)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64, align: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{!233, !178, !313}
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64, align: 64)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !235)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !236)
!236 = !{!237, !239, !260, !289, !291, !295, !296, !297, !298, !306, !307, !308, !309}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !235, file: !16, line: 174, baseType: !238, size: 64, align: 64)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !184, line: 77, baseType: !82)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !235, file: !16, line: 175, baseType: !240, size: 64, align: 64, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, align: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !242)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !243)
!243 = !{!244, !248, !249}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !242, file: !16, line: 198, baseType: !245, size: 64, align: 64)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64, align: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{null, !238}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !242, file: !16, line: 199, baseType: !245, size: 64, align: 64, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !242, file: !16, line: 200, baseType: !250, size: 64, align: 64, offset: 128)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64, align: 64)
!251 = !DISubroutineType(types: !252)
!252 = !{null, !238, !233, !253, !259}
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !255)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64, align: 64)
!256 = !DISubroutineType(types: !257)
!257 = !{!258, !238}
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !184, line: 50, baseType: !183)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64, align: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !235, file: !16, line: 177, baseType: !261, size: 64, align: 64, offset: 128)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64, align: 64)
!262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !263)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !264)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !265)
!265 = !{!266, !271, !275, !279, !283, !284}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !264, file: !16, line: 216, baseType: !267, size: 64, align: 64)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64, align: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{!258, !233, !270}
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64, align: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !264, file: !16, line: 218, baseType: !272, size: 64, align: 64, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64, align: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!258, !233}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !264, file: !16, line: 219, baseType: !276, size: 64, align: 64, offset: 128)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64, align: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!258, !233, !254, !238}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !264, file: !16, line: 222, baseType: !280, size: 64, align: 64, offset: 192)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64, align: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{null, !233}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !264, file: !16, line: 226, baseType: !254, size: 64, align: 64, offset: 256)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !264, file: !16, line: 227, baseType: !285, size: 64, align: 64, offset: 320)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !286)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64, align: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{null}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !235, file: !16, line: 178, baseType: !290, size: 32, align: 32, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !184, line: 55, baseType: !161)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !235, file: !16, line: 180, baseType: !292, size: 64, align: 64, offset: 256)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64, align: 64)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !294)
!294 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !235, file: !16, line: 182, baseType: !183, size: 32, align: 32, offset: 320)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !235, file: !16, line: 183, baseType: !290, size: 32, align: 32, offset: 352)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !235, file: !16, line: 184, baseType: !290, size: 32, align: 32, offset: 384)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !235, file: !16, line: 186, baseType: !299, size: 64, align: 64, offset: 448)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !301, line: 37, baseType: !302)
!301 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !301, line: 39, size: 128, align: 64, elements: !303)
!303 = !{!304, !305}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !302, file: !301, line: 41, baseType: !238, size: 64, align: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !302, file: !301, line: 42, baseType: !299, size: 64, align: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !235, file: !16, line: 188, baseType: !233, size: 64, align: 64, offset: 512)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !235, file: !16, line: 189, baseType: !233, size: 64, align: 64, offset: 576)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !235, file: !16, line: 191, baseType: !119, size: 64, align: 64, offset: 640)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !235, file: !16, line: 193, baseType: !310, size: 64, align: 64, offset: 704)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64, align: 64)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !312)
!312 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !188, file: !4, line: 151, baseType: !315, size: 64, align: 64, offset: 320)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64, align: 64)
!316 = !DISubroutineType(types: !317)
!317 = !{null, !178}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !188, file: !4, line: 152, baseType: !319, size: 64, align: 64, offset: 384)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64, align: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{!194, !178, !322, !201}
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !188, file: !4, line: 155, baseType: !324, size: 64, align: 64, offset: 448)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64, align: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{!322, !178}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !180, file: !4, line: 103, baseType: !195, size: 64, align: 64, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !180, file: !4, line: 104, baseType: !329, size: 64, align: 64, offset: 192)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !330, line: 77, baseType: !331)
!330 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64, align: 64)
!332 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !330, line: 77, flags: DIFlagFwdDecl)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !180, file: !4, line: 105, baseType: !329, size: 64, align: 64, offset: 256)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !180, file: !4, line: 106, baseType: !195, size: 64, align: 64, offset: 320)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !180, file: !4, line: 107, baseType: !290, size: 32, align: 32, offset: 384)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !180, file: !4, line: 109, baseType: !197, size: 64, align: 64, offset: 448)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !180, file: !4, line: 110, baseType: !338, size: 64, align: 64, offset: 512)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64, align: 64)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !340, line: 39, baseType: !341)
!340 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !340, line: 41, size: 192, align: 64, elements: !342)
!342 = !{!343, !344, !345}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !341, file: !340, line: 43, baseType: !195, size: 64, align: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !341, file: !340, line: 44, baseType: !197, size: 64, align: 64, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !341, file: !340, line: 45, baseType: !197, size: 64, align: 64, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !180, file: !4, line: 111, baseType: !338, size: 64, align: 64, offset: 576)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !180, file: !4, line: 112, baseType: !338, size: 64, align: 64, offset: 640)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !180, file: !4, line: 113, baseType: !349, size: 48, align: 8, offset: 704)
!349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 48, align: 8, elements: !350)
!350 = !{!351}
!351 = !DISubrange(count: 6)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !180, file: !4, line: 117, baseType: !290, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !180, file: !4, line: 118, baseType: !290, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !180, file: !4, line: 119, baseType: !290, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !180, file: !4, line: 120, baseType: !290, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !180, file: !4, line: 121, baseType: !290, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !180, file: !4, line: 122, baseType: !290, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !180, file: !4, line: 124, baseType: !238, size: 64, align: 64, offset: 768)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !180, file: !4, line: 125, baseType: !238, size: 64, align: 64, offset: 832)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !112, file: !115, line: 38, baseType: !161, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !112, file: !115, line: 39, baseType: !161, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !112, file: !115, line: 40, baseType: !161, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !112, file: !115, line: 41, baseType: !161, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !112, file: !115, line: 42, baseType: !161, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !112, file: !115, line: 43, baseType: !161, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !112, file: !115, line: 44, baseType: !161, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !112, file: !115, line: 45, baseType: !161, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !112, file: !115, line: 46, baseType: !119, size: 64, align: 64, offset: 1792)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !112, file: !115, line: 47, baseType: !119, size: 64, align: 64, offset: 1856)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !112, file: !103, line: 27, baseType: !119, size: 64, align: 64, offset: 1920)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_nick", scope: !112, file: !103, line: 28, baseType: !119, size: 64, align: 64, offset: 1984)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !112, file: !103, line: 30, baseType: !90, size: 32, align: 32, offset: 2048)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_username", scope: !112, file: !103, line: 31, baseType: !119, size: 64, align: 64, offset: 2112)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !112, file: !103, line: 32, baseType: !119, size: 64, align: 64, offset: 2176)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !112, file: !103, line: 34, baseType: !90, size: 32, align: 32, offset: 2240)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !112, file: !103, line: 35, baseType: !90, size: 32, align: 32, offset: 2272)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !112, file: !103, line: 36, baseType: !90, size: 32, align: 32, offset: 2304)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks", scope: !112, file: !103, line: 38, baseType: !90, size: 32, align: 32, offset: 2336)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !112, file: !103, line: 38, baseType: !90, size: 32, align: 32, offset: 2368)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes", scope: !112, file: !103, line: 38, baseType: !90, size: 32, align: 32, offset: 2400)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois", scope: !112, file: !103, line: 38, baseType: !90, size: 32, align: 32, offset: 2432)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !102, file: !106, line: 9, baseType: !93, size: 64, align: 64, offset: 192)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !102, file: !106, line: 10, baseType: !93, size: 64, align: 64, offset: 256)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !102, file: !106, line: 12, baseType: !119, size: 64, align: 64, offset: 320)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !102, file: !106, line: 13, baseType: !119, size: 64, align: 64, offset: 384)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !102, file: !106, line: 15, baseType: !161, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !102, file: !106, line: 16, baseType: !161, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !102, file: !106, line: 17, baseType: !161, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !102, file: !106, line: 18, baseType: !161, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !102, file: !106, line: 19, baseType: !161, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !102, file: !106, line: 21, baseType: !392, size: 64, align: 64, offset: 512)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64, align: 64)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !134, line: 102, baseType: !394)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !395, line: 7, size: 384, align: 64, elements: !396)
!395 = !DIFile(filename: "../../../src/core/net-sendbuffer.h", directory: "/home/lichi/Desktop/irssi/task1")
!396 = !{!397, !398, !402, !403, !404, !405, !406, !407}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !394, file: !395, line: 8, baseType: !178, size: 64, align: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "readbuffer", scope: !394, file: !395, line: 9, baseType: !399, size: 64, align: 64, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64, align: 64)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "LINEBUF_REC", file: !134, line: 101, baseType: !401)
!401 = !DICompositeType(tag: DW_TAG_structure_type, name: "_LINEBUF_REC", file: !134, line: 101, flags: DIFlagFwdDecl)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "send_tag", scope: !394, file: !395, line: 11, baseType: !90, size: 32, align: 32, offset: 128)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "bufsize", scope: !394, file: !395, line: 12, baseType: !90, size: 32, align: 32, offset: 160)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !394, file: !395, line: 13, baseType: !90, size: 32, align: 32, offset: 192)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !394, file: !395, line: 14, baseType: !119, size: 64, align: 64, offset: 256)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "def_bufsize", scope: !394, file: !395, line: 15, baseType: !90, size: 32, align: 32, offset: 320)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !394, file: !395, line: 16, baseType: !161, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !102, file: !106, line: 22, baseType: !90, size: 32, align: 32, offset: 576)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !102, file: !106, line: 25, baseType: !410, size: 128, align: 64, offset: 640)
!410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 128, align: 64, elements: !411)
!411 = !{!412}
!412 = !DISubrange(count: 2)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !102, file: !106, line: 26, baseType: !90, size: 32, align: 32, offset: 768)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !102, file: !106, line: 27, baseType: !90, size: 32, align: 32, offset: 800)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !102, file: !106, line: 29, baseType: !416, size: 64, align: 64, offset: 832)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64, align: 64)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !134, line: 103, baseType: !418)
!418 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !134, line: 103, flags: DIFlagFwdDecl)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !102, file: !106, line: 30, baseType: !420, size: 64, align: 64, offset: 896)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64, align: 64)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !422, line: 37, baseType: !423)
!422 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!423 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !422, line: 37, flags: DIFlagFwdDecl)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !102, file: !106, line: 32, baseType: !119, size: 64, align: 64, offset: 960)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !102, file: !106, line: 33, baseType: !119, size: 64, align: 64, offset: 1024)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !102, file: !106, line: 34, baseType: !119, size: 64, align: 64, offset: 1088)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !102, file: !106, line: 35, baseType: !161, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !102, file: !106, line: 36, baseType: !161, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !102, file: !106, line: 37, baseType: !161, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !102, file: !106, line: 38, baseType: !161, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !102, file: !106, line: 40, baseType: !432, size: 128, align: 64, offset: 1216)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !184, line: 504, baseType: !433)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !184, line: 506, size: 128, align: 64, elements: !434)
!434 = !{!435, !437}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !433, file: !184, line: 508, baseType: !436, size: 64, align: 64)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !184, line: 48, baseType: !97)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !433, file: !184, line: 509, baseType: !436, size: 64, align: 64, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !102, file: !106, line: 41, baseType: !93, size: 64, align: 64, offset: 1344)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !102, file: !106, line: 42, baseType: !90, size: 32, align: 32, offset: 1408)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !102, file: !106, line: 44, baseType: !299, size: 64, align: 64, offset: 1472)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !102, file: !106, line: 45, baseType: !299, size: 64, align: 64, offset: 1536)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !102, file: !106, line: 53, baseType: !443, size: 64, align: 64, offset: 1600)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64, align: 64)
!444 = !DISubroutineType(types: !445)
!445 = !{null, !446, !534, !90}
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64, align: 64)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !134, line: 107, baseType: !448)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !449, line: 30, size: 2240, align: 64, elements: !450)
!449 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!450 = !{!451, !452, !453, !454, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !530, !536, !540, !544, !549, !626, !633, !637}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !448, file: !106, line: 3, baseType: !90, size: 32, align: 32)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !448, file: !106, line: 4, baseType: !90, size: 32, align: 32, offset: 32)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !448, file: !106, line: 6, baseType: !90, size: 32, align: 32, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !448, file: !106, line: 8, baseType: !455, size: 64, align: 64, offset: 128)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64, align: 64)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !134, line: 113, baseType: !457)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !449, line: 25, size: 1920, align: 64, elements: !458)
!458 = !{!459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !457, file: !115, line: 3, baseType: !90, size: 32, align: 32)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !457, file: !115, line: 4, baseType: !90, size: 32, align: 32, offset: 32)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !457, file: !115, line: 6, baseType: !90, size: 32, align: 32, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !457, file: !115, line: 9, baseType: !119, size: 64, align: 64, offset: 128)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !457, file: !115, line: 10, baseType: !90, size: 32, align: 32, offset: 192)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !457, file: !115, line: 11, baseType: !119, size: 64, align: 64, offset: 256)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !457, file: !115, line: 11, baseType: !119, size: 64, align: 64, offset: 320)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !457, file: !115, line: 11, baseType: !119, size: 64, align: 64, offset: 384)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !457, file: !115, line: 13, baseType: !126, size: 16, align: 16, offset: 448)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !457, file: !115, line: 14, baseType: !119, size: 64, align: 64, offset: 512)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !457, file: !115, line: 15, baseType: !119, size: 64, align: 64, offset: 576)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !457, file: !115, line: 16, baseType: !90, size: 32, align: 32, offset: 640)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !457, file: !115, line: 17, baseType: !119, size: 64, align: 64, offset: 704)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !457, file: !115, line: 19, baseType: !132, size: 64, align: 64, offset: 768)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !457, file: !115, line: 19, baseType: !132, size: 64, align: 64, offset: 832)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !457, file: !115, line: 21, baseType: !119, size: 64, align: 64, offset: 896)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !457, file: !115, line: 22, baseType: !119, size: 64, align: 64, offset: 960)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !457, file: !115, line: 23, baseType: !119, size: 64, align: 64, offset: 1024)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !457, file: !115, line: 24, baseType: !119, size: 64, align: 64, offset: 1088)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !457, file: !115, line: 26, baseType: !119, size: 64, align: 64, offset: 1152)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !457, file: !115, line: 27, baseType: !119, size: 64, align: 64, offset: 1216)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !457, file: !115, line: 28, baseType: !119, size: 64, align: 64, offset: 1280)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !457, file: !115, line: 29, baseType: !119, size: 64, align: 64, offset: 1344)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !457, file: !115, line: 30, baseType: !119, size: 64, align: 64, offset: 1408)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !457, file: !115, line: 31, baseType: !119, size: 64, align: 64, offset: 1472)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !457, file: !115, line: 32, baseType: !119, size: 64, align: 64, offset: 1536)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !457, file: !115, line: 33, baseType: !119, size: 64, align: 64, offset: 1600)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !457, file: !115, line: 35, baseType: !178, size: 64, align: 64, offset: 1664)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !457, file: !115, line: 38, baseType: !161, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !457, file: !115, line: 39, baseType: !161, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !457, file: !115, line: 40, baseType: !161, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !457, file: !115, line: 41, baseType: !161, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !457, file: !115, line: 42, baseType: !161, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !457, file: !115, line: 43, baseType: !161, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !457, file: !115, line: 44, baseType: !161, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !457, file: !115, line: 45, baseType: !161, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !457, file: !115, line: 46, baseType: !119, size: 64, align: 64, offset: 1792)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !457, file: !115, line: 47, baseType: !119, size: 64, align: 64, offset: 1856)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !448, file: !106, line: 9, baseType: !93, size: 64, align: 64, offset: 192)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !448, file: !106, line: 10, baseType: !93, size: 64, align: 64, offset: 256)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !448, file: !106, line: 12, baseType: !119, size: 64, align: 64, offset: 320)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !448, file: !106, line: 13, baseType: !119, size: 64, align: 64, offset: 384)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !448, file: !106, line: 15, baseType: !161, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !448, file: !106, line: 16, baseType: !161, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !448, file: !106, line: 17, baseType: !161, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !448, file: !106, line: 18, baseType: !161, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !448, file: !106, line: 19, baseType: !161, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !448, file: !106, line: 21, baseType: !392, size: 64, align: 64, offset: 512)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !448, file: !106, line: 22, baseType: !90, size: 32, align: 32, offset: 576)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !448, file: !106, line: 25, baseType: !410, size: 128, align: 64, offset: 640)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !448, file: !106, line: 26, baseType: !90, size: 32, align: 32, offset: 768)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !448, file: !106, line: 27, baseType: !90, size: 32, align: 32, offset: 800)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !448, file: !106, line: 29, baseType: !416, size: 64, align: 64, offset: 832)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !448, file: !106, line: 30, baseType: !420, size: 64, align: 64, offset: 896)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !448, file: !106, line: 32, baseType: !119, size: 64, align: 64, offset: 960)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !448, file: !106, line: 33, baseType: !119, size: 64, align: 64, offset: 1024)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !448, file: !106, line: 34, baseType: !119, size: 64, align: 64, offset: 1088)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !448, file: !106, line: 35, baseType: !161, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !448, file: !106, line: 36, baseType: !161, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !448, file: !106, line: 37, baseType: !161, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !448, file: !106, line: 38, baseType: !161, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !448, file: !106, line: 40, baseType: !432, size: 128, align: 64, offset: 1216)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !448, file: !106, line: 41, baseType: !93, size: 64, align: 64, offset: 1344)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !448, file: !106, line: 42, baseType: !90, size: 32, align: 32, offset: 1408)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !448, file: !106, line: 44, baseType: !299, size: 64, align: 64, offset: 1472)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !448, file: !106, line: 45, baseType: !299, size: 64, align: 64, offset: 1536)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !448, file: !106, line: 53, baseType: !443, size: 64, align: 64, offset: 1600)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !448, file: !106, line: 55, baseType: !527, size: 64, align: 64, offset: 1664)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64, align: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!90, !446, !120}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !448, file: !106, line: 57, baseType: !531, size: 64, align: 64, offset: 1728)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64, align: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{!90, !446, !534}
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64, align: 64)
!535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !120)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !448, file: !106, line: 60, baseType: !537, size: 64, align: 64, offset: 1792)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64, align: 64)
!538 = !DISubroutineType(types: !539)
!539 = !{!534, !446}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !448, file: !106, line: 62, baseType: !541, size: 64, align: 64, offset: 1856)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64, align: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{null, !446, !534, !534, !90}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !448, file: !106, line: 65, baseType: !545, size: 64, align: 64, offset: 1920)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64, align: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!548, !446, !534, !534}
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64, align: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !448, file: !106, line: 69, baseType: !550, size: 64, align: 64, offset: 1984)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64, align: 64)
!551 = !DISubroutineType(types: !552)
!552 = !{!553, !446, !534}
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64, align: 64)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !134, line: 109, baseType: !555)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !556, line: 15, size: 1408, align: 64, elements: !557)
!556 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!557 = !{!558, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !576, !580, !582, !583, !584, !585, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !555, file: !559, line: 3, baseType: !90, size: 32, align: 32)
!559 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!560 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !555, file: !559, line: 4, baseType: !90, size: 32, align: 32, offset: 32)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !555, file: !559, line: 5, baseType: !420, size: 64, align: 64, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !555, file: !559, line: 7, baseType: !82, size: 64, align: 64, offset: 128)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !555, file: !559, line: 8, baseType: !446, size: 64, align: 64, offset: 192)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !555, file: !559, line: 9, baseType: !119, size: 64, align: 64, offset: 256)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !555, file: !559, line: 10, baseType: !119, size: 64, align: 64, offset: 320)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !555, file: !559, line: 11, baseType: !93, size: 64, align: 64, offset: 384)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !555, file: !559, line: 12, baseType: !90, size: 32, align: 32, offset: 448)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !555, file: !559, line: 13, baseType: !119, size: 64, align: 64, offset: 512)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !555, file: !559, line: 15, baseType: !570, size: 64, align: 64, offset: 576)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64, align: 64)
!571 = !DISubroutineType(types: !572)
!572 = !{null, !573}
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64, align: 64)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !134, line: 108, baseType: !575)
!575 = !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !134, line: 108, flags: DIFlagFwdDecl)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !555, file: !559, line: 17, baseType: !577, size: 64, align: 64, offset: 640)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64, align: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!534, !573}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !555, file: !581, line: 5, baseType: !119, size: 64, align: 64, offset: 704)
!581 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!582 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !555, file: !581, line: 6, baseType: !119, size: 64, align: 64, offset: 768)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !555, file: !581, line: 7, baseType: !93, size: 64, align: 64, offset: 832)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !555, file: !581, line: 9, baseType: !420, size: 64, align: 64, offset: 896)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !555, file: !581, line: 10, baseType: !586, size: 64, align: 64, offset: 960)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64, align: 64)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !134, line: 111, baseType: !588)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !589, line: 13, size: 576, align: 64, elements: !590)
!589 = !DIFile(filename: "../../../src/core/nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!590 = !{!591, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !607, !608}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !588, file: !592, line: 3, baseType: !90, size: 32, align: 32)
!592 = !DIFile(filename: "../../../src/core/nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!593 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !588, file: !592, line: 4, baseType: !90, size: 32, align: 32, offset: 32)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !588, file: !592, line: 6, baseType: !93, size: 64, align: 64, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !588, file: !592, line: 8, baseType: !119, size: 64, align: 64, offset: 128)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !588, file: !592, line: 9, baseType: !119, size: 64, align: 64, offset: 192)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !588, file: !592, line: 10, baseType: !119, size: 64, align: 64, offset: 256)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !588, file: !592, line: 11, baseType: !90, size: 32, align: 32, offset: 320)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !588, file: !592, line: 14, baseType: !161, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !588, file: !592, line: 15, baseType: !161, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !588, file: !592, line: 18, baseType: !161, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !588, file: !592, line: 19, baseType: !161, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !588, file: !592, line: 20, baseType: !161, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !588, file: !592, line: 21, baseType: !161, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !588, file: !592, line: 22, baseType: !606, size: 64, align: 8, offset: 360)
!606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 64, align: 8, elements: !156)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !588, file: !592, line: 26, baseType: !82, size: 64, align: 64, offset: 448)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !588, file: !592, line: 28, baseType: !586, size: 64, align: 64, offset: 512)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !555, file: !581, line: 12, baseType: !161, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !555, file: !581, line: 13, baseType: !119, size: 64, align: 64, offset: 1088)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !555, file: !581, line: 14, baseType: !90, size: 32, align: 32, offset: 1152)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !555, file: !581, line: 15, baseType: !119, size: 64, align: 64, offset: 1216)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !555, file: !581, line: 17, baseType: !161, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !555, file: !581, line: 18, baseType: !161, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !555, file: !581, line: 19, baseType: !161, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !555, file: !581, line: 20, baseType: !161, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !555, file: !581, line: 22, baseType: !161, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !555, file: !581, line: 23, baseType: !161, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !555, file: !581, line: 24, baseType: !161, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !555, file: !581, line: 25, baseType: !161, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !555, file: !581, line: 26, baseType: !161, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !555, file: !581, line: 31, baseType: !623, size: 64, align: 64, offset: 1344)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64, align: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{!119, !553}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !448, file: !106, line: 70, baseType: !627, size: 64, align: 64, offset: 2048)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64, align: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!630, !446, !534}
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64, align: 64)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !134, line: 110, baseType: !632)
!632 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !134, line: 110, flags: DIFlagFwdDecl)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !448, file: !106, line: 71, baseType: !634, size: 64, align: 64, offset: 2112)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64, align: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{!90, !534, !534}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !448, file: !106, line: 73, baseType: !634, size: 64, align: 64, offset: 2176)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !102, file: !106, line: 55, baseType: !527, size: 64, align: 64, offset: 1664)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !102, file: !106, line: 57, baseType: !531, size: 64, align: 64, offset: 1728)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !102, file: !106, line: 60, baseType: !537, size: 64, align: 64, offset: 1792)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !102, file: !106, line: 62, baseType: !541, size: 64, align: 64, offset: 1856)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !102, file: !106, line: 65, baseType: !545, size: 64, align: 64, offset: 1920)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !102, file: !106, line: 69, baseType: !550, size: 64, align: 64, offset: 1984)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !102, file: !106, line: 70, baseType: !627, size: 64, align: 64, offset: 2048)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !102, file: !106, line: 71, baseType: !634, size: 64, align: 64, offset: 2112)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !102, file: !106, line: 73, baseType: !634, size: 64, align: 64, offset: 2176)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "redirects", scope: !102, file: !103, line: 46, baseType: !299, size: 64, align: 64, offset: 2240)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_queue", scope: !102, file: !103, line: 47, baseType: !299, size: 64, align: 64, offset: 2304)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_next", scope: !102, file: !103, line: 48, baseType: !650, size: 64, align: 64, offset: 2368)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64, align: 64)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "REDIRECT_REC", file: !101, line: 8, baseType: !652)
!652 = !DICompositeType(tag: DW_TAG_structure_type, name: "_REDIRECT_REC", file: !101, line: 8, flags: DIFlagFwdDecl)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_active", scope: !102, file: !103, line: 49, baseType: !299, size: 64, align: 64, offset: 2432)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "last_nick", scope: !102, file: !103, line: 51, baseType: !119, size: 64, align: 64, offset: 2496)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !102, file: !103, line: 53, baseType: !119, size: 64, align: 64, offset: 2560)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !102, file: !103, line: 54, baseType: !119, size: 64, align: 64, offset: 2624)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "wanted_usermode", scope: !102, file: !103, line: 55, baseType: !119, size: 64, align: 64, offset: 2688)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "userhost", scope: !102, file: !103, line: 56, baseType: !119, size: 64, align: 64, offset: 2752)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "channels_formed", scope: !102, file: !103, line: 57, baseType: !90, size: 32, align: 32, offset: 2816)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "whois_found", scope: !102, file: !103, line: 59, baseType: !161, size: 1, align: 32, offset: 2848, flags: DIFlagBitField, extraData: i64 2848)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "whowas_found", scope: !102, file: !103, line: 60, baseType: !161, size: 1, align: 32, offset: 2849, flags: DIFlagBitField, extraData: i64 2848)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "emode_known", scope: !102, file: !103, line: 62, baseType: !161, size: 1, align: 32, offset: 2850, flags: DIFlagBitField, extraData: i64 2848)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_mode", scope: !102, file: !103, line: 63, baseType: !161, size: 1, align: 32, offset: 2851, flags: DIFlagBitField, extraData: i64 2848)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_who", scope: !102, file: !103, line: 64, baseType: !161, size: 1, align: 32, offset: 2852, flags: DIFlagBitField, extraData: i64 2848)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "one_endofwho", scope: !102, file: !103, line: 65, baseType: !161, size: 1, align: 32, offset: 2853, flags: DIFlagBitField, extraData: i64 2848)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "disable_lag", scope: !102, file: !103, line: 66, baseType: !161, size: 1, align: 32, offset: 2854, flags: DIFlagBitField, extraData: i64 2848)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "nick_collision", scope: !102, file: !103, line: 67, baseType: !161, size: 1, align: 32, offset: 2855, flags: DIFlagBitField, extraData: i64 2848)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "motd_got", scope: !102, file: !103, line: 68, baseType: !161, size: 1, align: 32, offset: 2856, flags: DIFlagBitField, extraData: i64 2848)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "isupport_sent", scope: !102, file: !103, line: 69, baseType: !161, size: 1, align: 32, offset: 2857, flags: DIFlagBitField, extraData: i64 2848)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "cap_complete", scope: !102, file: !103, line: 70, baseType: !161, size: 1, align: 32, offset: 2858, flags: DIFlagBitField, extraData: i64 2848)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "cap_in_multiline", scope: !102, file: !103, line: 71, baseType: !161, size: 1, align: 32, offset: 2859, flags: DIFlagBitField, extraData: i64 2848)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_success", scope: !102, file: !103, line: 72, baseType: !161, size: 1, align: 32, offset: 2860, flags: DIFlagBitField, extraData: i64 2848)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks_in_cmd", scope: !102, file: !103, line: 74, baseType: !90, size: 32, align: 32, offset: 2880)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes_in_cmd", scope: !102, file: !103, line: 75, baseType: !90, size: 32, align: 32, offset: 2912)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois_in_cmd", scope: !102, file: !103, line: 76, baseType: !90, size: 32, align: 32, offset: 2944)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs_in_cmd", scope: !102, file: !103, line: 77, baseType: !90, size: 32, align: 32, offset: 2976)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "cap_supported", scope: !102, file: !103, line: 79, baseType: !420, size: 64, align: 64, offset: 3008)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "cap_active", scope: !102, file: !103, line: 80, baseType: !299, size: 64, align: 64, offset: 3072)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "cap_queue", scope: !102, file: !103, line: 81, baseType: !299, size: 64, align: 64, offset: 3136)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_buffer", scope: !102, file: !103, line: 83, baseType: !338, size: 64, align: 64, offset: 3200)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_timeout", scope: !102, file: !103, line: 84, baseType: !290, size: 32, align: 32, offset: 3264)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcount", scope: !102, file: !103, line: 87, baseType: !90, size: 32, align: 32, offset: 3296)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "cmdqueue", scope: !102, file: !103, line: 91, baseType: !299, size: 64, align: 64, offset: 3328)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "wait_cmd", scope: !102, file: !103, line: 92, baseType: !432, size: 128, align: 64, offset: 3392)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd", scope: !102, file: !103, line: 93, baseType: !432, size: 128, align: 64, offset: 3520)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !102, file: !103, line: 95, baseType: !90, size: 32, align: 32, offset: 3648)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !102, file: !103, line: 96, baseType: !90, size: 32, align: 32, offset: 3680)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !102, file: !103, line: 97, baseType: !90, size: 32, align: 32, offset: 3712)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "idles", scope: !102, file: !103, line: 100, baseType: !299, size: 64, align: 64, offset: 3776)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "ctcpqueue", scope: !102, file: !103, line: 103, baseType: !299, size: 64, align: 64, offset: 3840)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "knockoutlist", scope: !102, file: !103, line: 106, baseType: !299, size: 64, align: 64, offset: 3904)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "splits", scope: !102, file: !103, line: 108, baseType: !420, size: 64, align: 64, offset: 3968)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "split_servers", scope: !102, file: !103, line: 109, baseType: !299, size: 64, align: 64, offset: 4032)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "rejoin_channels", scope: !102, file: !103, line: 111, baseType: !299, size: 64, align: 64, offset: 4096)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "chanqueries", scope: !102, file: !103, line: 114, baseType: !82, size: 64, align: 64, offset: 4160)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "isupport", scope: !102, file: !103, line: 116, baseType: !420, size: 64, align: 64, offset: 4224)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !102, file: !103, line: 117, baseType: !698, size: 32768, align: 64, offset: 4288)
!698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !699, size: 32768, align: 64, elements: !748)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "modes_type", file: !700, line: 10, size: 128, align: 64, elements: !701)
!700 = !DIFile(filename: "../../../src/irc/core/modes.h", directory: "/home/lichi/Desktop/irssi/task1")
!701 = !{!702, !747}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !699, file: !700, line: 11, baseType: !703, size: 64, align: 64)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64, align: 64)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_func_t", file: !700, line: 7, baseType: !705)
!705 = !DISubroutineType(types: !706)
!706 = !{null, !707, !534, !120, !120, !119, !338}
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64, align: 64)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_CHANNEL_REC", file: !101, line: 7, baseType: !709)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_CHANNEL_REC", file: !710, line: 15, size: 1600, align: 64, elements: !711)
!710 = !DIFile(filename: "../../../src/irc/core/irc-channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!711 = !{!712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !709, file: !559, line: 3, baseType: !90, size: 32, align: 32)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !709, file: !559, line: 4, baseType: !90, size: 32, align: 32, offset: 32)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !709, file: !559, line: 5, baseType: !420, size: 64, align: 64, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !709, file: !559, line: 7, baseType: !82, size: 64, align: 64, offset: 128)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !709, file: !559, line: 8, baseType: !99, size: 64, align: 64, offset: 192)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !709, file: !559, line: 9, baseType: !119, size: 64, align: 64, offset: 256)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !709, file: !559, line: 10, baseType: !119, size: 64, align: 64, offset: 320)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !709, file: !559, line: 11, baseType: !93, size: 64, align: 64, offset: 384)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !709, file: !559, line: 12, baseType: !90, size: 32, align: 32, offset: 448)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !709, file: !559, line: 13, baseType: !119, size: 64, align: 64, offset: 512)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !709, file: !559, line: 15, baseType: !570, size: 64, align: 64, offset: 576)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !709, file: !559, line: 17, baseType: !577, size: 64, align: 64, offset: 640)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !709, file: !581, line: 5, baseType: !119, size: 64, align: 64, offset: 704)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !709, file: !581, line: 6, baseType: !119, size: 64, align: 64, offset: 768)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !709, file: !581, line: 7, baseType: !93, size: 64, align: 64, offset: 832)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !709, file: !581, line: 9, baseType: !420, size: 64, align: 64, offset: 896)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !709, file: !581, line: 10, baseType: !586, size: 64, align: 64, offset: 960)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !709, file: !581, line: 12, baseType: !161, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !709, file: !581, line: 13, baseType: !119, size: 64, align: 64, offset: 1088)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !709, file: !581, line: 14, baseType: !90, size: 32, align: 32, offset: 1152)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !709, file: !581, line: 15, baseType: !119, size: 64, align: 64, offset: 1216)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !709, file: !581, line: 17, baseType: !161, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !709, file: !581, line: 18, baseType: !161, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !709, file: !581, line: 19, baseType: !161, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !709, file: !581, line: 20, baseType: !161, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !709, file: !581, line: 22, baseType: !161, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !709, file: !581, line: 23, baseType: !161, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !709, file: !581, line: 24, baseType: !161, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !709, file: !581, line: 25, baseType: !161, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !709, file: !581, line: 26, baseType: !161, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !709, file: !581, line: 31, baseType: !623, size: 64, align: 64, offset: 1344)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "banlist", scope: !709, file: !710, line: 18, baseType: !299, size: 64, align: 64, offset: 1408)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "massjoin_start", scope: !709, file: !710, line: 20, baseType: !93, size: 64, align: 64, offset: 1472)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "massjoins", scope: !709, file: !710, line: 21, baseType: !90, size: 32, align: 32, offset: 1536)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "last_massjoins", scope: !709, file: !710, line: 22, baseType: !90, size: 32, align: 32, offset: 1568)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !699, file: !700, line: 12, baseType: !120, size: 8, align: 8, offset: 64)
!748 = !{!749}
!749 = !DISubrange(count: 256)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !102, file: !103, line: 118, baseType: !751, size: 2048, align: 8, offset: 37056)
!751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 2048, align: 8, elements: !748)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "nick_comp_func", scope: !102, file: !103, line: 120, baseType: !634, size: 64, align: 64, offset: 39104)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !86, file: !89, line: 6, baseType: !119, size: 64, align: 64, offset: 192)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "mynick", scope: !86, file: !89, line: 7, baseType: !119, size: 64, align: 64, offset: 256)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !86, file: !89, line: 8, baseType: !119, size: 64, align: 64, offset: 320)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "chat", scope: !86, file: !89, line: 10, baseType: !757, size: 64, align: 64, offset: 384)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64, align: 64)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHAT_DCC_REC", file: !759, line: 9, baseType: !760)
!759 = !DIFile(filename: "dcc.h", directory: "/home/lichi/Desktop/irssi/task1")
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CHAT_DCC_REC", file: !761, line: 12, size: 1792, align: 64, elements: !762)
!761 = !DIFile(filename: "dcc-chat.h", directory: "/home/lichi/Desktop/irssi/task1")
!762 = !{!763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !778, !779, !780, !781, !782, !783, !784, !786, !787, !788, !789, !790, !791, !792}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !760, file: !89, line: 1, baseType: !90, size: 32, align: 32)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !760, file: !89, line: 2, baseType: !90, size: 32, align: 32, offset: 32)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "created", scope: !760, file: !89, line: 3, baseType: !93, size: 64, align: 64, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !760, file: !89, line: 5, baseType: !99, size: 64, align: 64, offset: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !760, file: !89, line: 6, baseType: !119, size: 64, align: 64, offset: 192)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "mynick", scope: !760, file: !89, line: 7, baseType: !119, size: 64, align: 64, offset: 256)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !760, file: !89, line: 8, baseType: !119, size: 64, align: 64, offset: 320)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "chat", scope: !760, file: !89, line: 10, baseType: !757, size: 64, align: 64, offset: 384)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !760, file: !89, line: 11, baseType: !119, size: 64, align: 64, offset: 448)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !760, file: !89, line: 12, baseType: !119, size: 64, align: 64, offset: 512)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !760, file: !89, line: 14, baseType: !133, size: 160, align: 32, offset: 576)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "addrstr", scope: !760, file: !89, line: 15, baseType: !775, size: 368, align: 8, offset: 736)
!775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 368, align: 8, elements: !776)
!776 = !{!777}
!777 = !DISubrange(count: 46)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !760, file: !89, line: 16, baseType: !90, size: 32, align: 32, offset: 1120)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !760, file: !89, line: 18, baseType: !178, size: 64, align: 64, offset: 1152)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "tagconn", scope: !760, file: !89, line: 19, baseType: !90, size: 32, align: 32, offset: 1216)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "tagread", scope: !760, file: !89, line: 19, baseType: !90, size: 32, align: 32, offset: 1248)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "tagwrite", scope: !760, file: !89, line: 19, baseType: !90, size: 32, align: 32, offset: 1280)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "starttime", scope: !760, file: !89, line: 20, baseType: !93, size: 64, align: 64, offset: 1344)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "transfd", scope: !760, file: !89, line: 21, baseType: !785, size: 64, align: 64, offset: 1408)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "uoff_t", file: !134, line: 49, baseType: !199)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "pasv_id", scope: !760, file: !89, line: 23, baseType: !90, size: 32, align: 32, offset: 1472)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "destroyed", scope: !760, file: !89, line: 25, baseType: !161, size: 1, align: 32, offset: 1504, flags: DIFlagBitField, extraData: i64 1504)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !760, file: !89, line: 27, baseType: !420, size: 64, align: 64, offset: 1536)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !760, file: !761, line: 15, baseType: !119, size: 64, align: 64, offset: 1600)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "sendbuf", scope: !760, file: !761, line: 16, baseType: !392, size: 64, align: 64, offset: 1664)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "mirc_ctcp", scope: !760, file: !761, line: 18, baseType: !161, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !760, file: !761, line: 19, baseType: !161, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !86, file: !89, line: 11, baseType: !119, size: 64, align: 64, offset: 448)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !86, file: !89, line: 12, baseType: !119, size: 64, align: 64, offset: 512)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !86, file: !89, line: 14, baseType: !133, size: 160, align: 32, offset: 576)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "addrstr", scope: !86, file: !89, line: 15, baseType: !775, size: 368, align: 8, offset: 736)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !86, file: !89, line: 16, baseType: !90, size: 32, align: 32, offset: 1120)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !86, file: !89, line: 18, baseType: !178, size: 64, align: 64, offset: 1152)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "tagconn", scope: !86, file: !89, line: 19, baseType: !90, size: 32, align: 32, offset: 1216)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "tagread", scope: !86, file: !89, line: 19, baseType: !90, size: 32, align: 32, offset: 1248)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "tagwrite", scope: !86, file: !89, line: 19, baseType: !90, size: 32, align: 32, offset: 1280)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "starttime", scope: !86, file: !89, line: 20, baseType: !93, size: 64, align: 64, offset: 1344)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "transfd", scope: !86, file: !89, line: 21, baseType: !785, size: 64, align: 64, offset: 1408)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "pasv_id", scope: !86, file: !89, line: 23, baseType: !90, size: 32, align: 32, offset: 1472)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "destroyed", scope: !86, file: !89, line: 25, baseType: !161, size: 1, align: 32, offset: 1504, flags: DIFlagBitField, extraData: i64 1504)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !86, file: !89, line: 27, baseType: !420, size: 64, align: 64, offset: 1536)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !86, file: !808, line: 3, baseType: !785, size: 64, align: 64, offset: 1600)
!808 = !DIFile(filename: "dcc-file-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!809 = !DIDerivedType(tag: DW_TAG_member, name: "skipped", scope: !86, file: !808, line: 3, baseType: !785, size: 64, align: 64, offset: 1664)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "fhandle", scope: !86, file: !808, line: 4, baseType: !90, size: 32, align: 32, offset: 1728)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !86, file: !808, line: 5, baseType: !90, size: 32, align: 32, offset: 1760)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "count_buf", scope: !86, file: !808, line: 8, baseType: !813, size: 32, align: 8, offset: 1792)
!813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 32, align: 8, elements: !162)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "count_pos", scope: !86, file: !808, line: 9, baseType: !90, size: 32, align: 32, offset: 1824)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "file_quoted", scope: !86, file: !85, line: 15, baseType: !161, size: 1, align: 32, offset: 1856, flags: DIFlagBitField, extraData: i64 1856)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "waitforend", scope: !86, file: !85, line: 18, baseType: !161, size: 1, align: 32, offset: 1857, flags: DIFlagBitField, extraData: i64 1856)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "gotalldata", scope: !86, file: !85, line: 19, baseType: !161, size: 1, align: 32, offset: 1858, flags: DIFlagBitField, extraData: i64 1856)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "GInputFunction", file: !134, line: 60, baseType: !819)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64, align: 64)
!820 = !DISubroutineType(types: !821)
!821 = !{null, !82, !178, !90}
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64, align: 64)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "DCC_REC", file: !759, line: 13, baseType: !824)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !759, line: 11, size: 1600, align: 64, elements: !825)
!825 = !{!826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !824, file: !89, line: 1, baseType: !90, size: 32, align: 32)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !824, file: !89, line: 2, baseType: !90, size: 32, align: 32, offset: 32)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "created", scope: !824, file: !89, line: 3, baseType: !93, size: 64, align: 64, offset: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !824, file: !89, line: 5, baseType: !99, size: 64, align: 64, offset: 128)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !824, file: !89, line: 6, baseType: !119, size: 64, align: 64, offset: 192)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "mynick", scope: !824, file: !89, line: 7, baseType: !119, size: 64, align: 64, offset: 256)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !824, file: !89, line: 8, baseType: !119, size: 64, align: 64, offset: 320)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "chat", scope: !824, file: !89, line: 10, baseType: !757, size: 64, align: 64, offset: 384)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !824, file: !89, line: 11, baseType: !119, size: 64, align: 64, offset: 448)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !824, file: !89, line: 12, baseType: !119, size: 64, align: 64, offset: 512)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !824, file: !89, line: 14, baseType: !133, size: 160, align: 32, offset: 576)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "addrstr", scope: !824, file: !89, line: 15, baseType: !775, size: 368, align: 8, offset: 736)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !824, file: !89, line: 16, baseType: !90, size: 32, align: 32, offset: 1120)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !824, file: !89, line: 18, baseType: !178, size: 64, align: 64, offset: 1152)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "tagconn", scope: !824, file: !89, line: 19, baseType: !90, size: 32, align: 32, offset: 1216)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "tagread", scope: !824, file: !89, line: 19, baseType: !90, size: 32, align: 32, offset: 1248)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "tagwrite", scope: !824, file: !89, line: 19, baseType: !90, size: 32, align: 32, offset: 1280)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "starttime", scope: !824, file: !89, line: 20, baseType: !93, size: 64, align: 64, offset: 1344)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "transfd", scope: !824, file: !89, line: 21, baseType: !785, size: 64, align: 64, offset: 1408)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "pasv_id", scope: !824, file: !89, line: 23, baseType: !90, size: 32, align: 32, offset: 1472)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "destroyed", scope: !824, file: !89, line: 25, baseType: !161, size: 1, align: 32, offset: 1504, flags: DIFlagBitField, extraData: i64 1504)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !824, file: !89, line: 27, baseType: !420, size: 64, align: 64, offset: 1536)
!848 = !{i32 2, !"Dwarf Version", i32 4}
!849 = !{i32 2, !"Debug Info Version", i32 3}
!850 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!851 = distinct !DISubprogram(name: "dcc_send_init", scope: !852, file: !852, line: 470, type: !287, isLocal: false, isDefinition: true, scopeLine: 471, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !853)
!852 = !DIFile(filename: "dcc-send.c", directory: "/home/lichi/Desktop/irssi/task1")
!853 = !{}
!854 = !DILocation(line: 472, column: 9, scope: !851)
!855 = !DILocation(line: 473, column: 2, scope: !851)
!856 = !DILocation(line: 474, column: 2, scope: !851)
!857 = !DILocation(line: 475, column: 2, scope: !851)
!858 = !DILocation(line: 476, column: 2, scope: !851)
!859 = !DILocation(line: 477, column: 2, scope: !851)
!860 = !DILocation(line: 478, column: 2, scope: !851)
!861 = !DILocation(line: 480, column: 2, scope: !851)
!862 = !DILocation(line: 481, column: 1, scope: !851)
!863 = distinct !DISubprogram(name: "sig_dcc_destroyed", scope: !852, file: !852, line: 249, type: !864, isLocal: true, isDefinition: true, scopeLine: 250, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !853)
!864 = !DISubroutineType(types: !865)
!865 = !{null, !83}
!866 = !DILocalVariable(name: "dcc", arg: 1, scope: !863, file: !852, line: 249, type: !83)
!867 = !DIExpression()
!868 = !DILocation(line: 249, column: 45, scope: !863)
!869 = !DILocation(line: 251, column: 51, scope: !870)
!870 = distinct !DILexicalBlock(scope: !863, file: !852, line: 251, column: 6)
!871 = !DILocation(line: 251, column: 26, scope: !870)
!872 = !DILocation(line: 251, column: 9, scope: !870)
!873 = !DILocation(line: 251, column: 6, scope: !863)
!874 = !DILocation(line: 251, column: 8, scope: !875)
!875 = !DILexicalBlockFile(scope: !870, file: !852, discriminator: 1)
!876 = !DILocation(line: 251, column: 6, scope: !877)
!877 = !DILexicalBlockFile(scope: !863, file: !852, discriminator: 2)
!878 = !DILocation(line: 251, column: 41, scope: !879)
!879 = !DILexicalBlockFile(scope: !870, file: !852, discriminator: 3)
!880 = !DILocation(line: 253, column: 6, scope: !881)
!881 = distinct !DILexicalBlock(scope: !863, file: !852, line: 253, column: 6)
!882 = !DILocation(line: 253, column: 11, scope: !881)
!883 = !DILocation(line: 253, column: 19, scope: !881)
!884 = !DILocation(line: 253, column: 6, scope: !863)
!885 = !DILocation(line: 254, column: 9, scope: !881)
!886 = !DILocation(line: 254, column: 14, scope: !881)
!887 = !DILocation(line: 254, column: 3, scope: !881)
!888 = !DILocation(line: 256, column: 22, scope: !863)
!889 = !DILocation(line: 256, column: 27, scope: !863)
!890 = !DILocation(line: 256, column: 2, scope: !863)
!891 = !DILocation(line: 257, column: 1, scope: !863)
!892 = !DILocation(line: 257, column: 1, scope: !893)
!893 = !DILexicalBlockFile(scope: !863, file: !852, discriminator: 1)
!894 = distinct !DISubprogram(name: "dcc_send_connect", scope: !852, file: !852, line: 348, type: !864, isLocal: true, isDefinition: true, scopeLine: 349, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !853)
!895 = !DILocalVariable(name: "dcc", arg: 1, scope: !894, file: !852, line: 348, type: !83)
!896 = !DILocation(line: 348, column: 44, scope: !894)
!897 = !DILocation(line: 350, column: 32, scope: !894)
!898 = !DILocation(line: 350, column: 37, scope: !894)
!899 = !DILocation(line: 350, column: 43, scope: !894)
!900 = !DILocation(line: 350, column: 48, scope: !894)
!901 = !DILocation(line: 350, column: 16, scope: !894)
!902 = !DILocation(line: 350, column: 2, scope: !894)
!903 = !DILocation(line: 350, column: 7, scope: !894)
!904 = !DILocation(line: 350, column: 14, scope: !894)
!905 = !DILocation(line: 352, column: 6, scope: !906)
!906 = distinct !DILexicalBlock(scope: !894, file: !852, line: 352, column: 6)
!907 = !DILocation(line: 352, column: 11, scope: !906)
!908 = !DILocation(line: 352, column: 18, scope: !906)
!909 = !DILocation(line: 352, column: 6, scope: !894)
!910 = !DILocation(line: 353, column: 20, scope: !911)
!911 = distinct !DILexicalBlock(scope: !906, file: !852, line: 352, column: 26)
!912 = !DILocation(line: 353, column: 3, scope: !911)
!913 = !DILocation(line: 353, column: 8, scope: !911)
!914 = !DILocation(line: 353, column: 18, scope: !911)
!915 = !DILocation(line: 355, column: 30, scope: !911)
!916 = !DILocation(line: 355, column: 35, scope: !911)
!917 = !DILocation(line: 357, column: 9, scope: !911)
!918 = !DILocation(line: 355, column: 18, scope: !911)
!919 = !DILocation(line: 355, column: 3, scope: !911)
!920 = !DILocation(line: 355, column: 8, scope: !911)
!921 = !DILocation(line: 355, column: 16, scope: !911)
!922 = !DILocation(line: 358, column: 31, scope: !911)
!923 = !DILocation(line: 358, column: 36, scope: !911)
!924 = !DILocation(line: 360, column: 10, scope: !911)
!925 = !DILocation(line: 358, column: 19, scope: !911)
!926 = !DILocation(line: 358, column: 3, scope: !911)
!927 = !DILocation(line: 358, column: 8, scope: !911)
!928 = !DILocation(line: 358, column: 17, scope: !911)
!929 = !DILocation(line: 361, column: 35, scope: !911)
!930 = !DILocation(line: 361, column: 3, scope: !911)
!931 = !DILocation(line: 362, column: 2, scope: !911)
!932 = !DILocation(line: 364, column: 39, scope: !933)
!933 = distinct !DILexicalBlock(scope: !906, file: !852, line: 362, column: 9)
!934 = !DILocation(line: 364, column: 3, scope: !933)
!935 = !DILocation(line: 365, column: 29, scope: !933)
!936 = !DILocation(line: 365, column: 16, scope: !933)
!937 = !DILocation(line: 365, column: 3, scope: !933)
!938 = !DILocation(line: 367, column: 1, scope: !894)
!939 = distinct !DISubprogram(name: "cmd_dcc_send", scope: !852, file: !852, line: 166, type: !940, isLocal: true, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !853)
!940 = !DISubroutineType(types: !941)
!941 = !{null, !534, !99, !573}
!942 = !DILocalVariable(name: "data", arg: 1, scope: !939, file: !852, line: 166, type: !534)
!943 = !DILocation(line: 166, column: 38, scope: !939)
!944 = !DILocalVariable(name: "server", arg: 2, scope: !939, file: !852, line: 166, type: !99)
!945 = !DILocation(line: 166, column: 60, scope: !939)
!946 = !DILocalVariable(name: "item", arg: 3, scope: !939, file: !852, line: 167, type: !573)
!947 = !DILocation(line: 167, column: 18, scope: !939)
!948 = !DILocalVariable(name: "servertag", scope: !939, file: !852, line: 169, type: !534)
!949 = !DILocation(line: 169, column: 14, scope: !939)
!950 = !DILocalVariable(name: "nick", scope: !939, file: !852, line: 170, type: !119)
!951 = !DILocation(line: 170, column: 8, scope: !939)
!952 = !DILocalVariable(name: "fileargs", scope: !939, file: !852, line: 170, type: !119)
!953 = !DILocation(line: 170, column: 15, scope: !939)
!954 = !DILocalVariable(name: "free_arg", scope: !939, file: !852, line: 171, type: !82)
!955 = !DILocation(line: 171, column: 8, scope: !939)
!956 = !DILocalVariable(name: "chat", scope: !939, file: !852, line: 172, type: !757)
!957 = !DILocation(line: 172, column: 16, scope: !939)
!958 = !DILocalVariable(name: "optlist", scope: !939, file: !852, line: 173, type: !420)
!959 = !DILocation(line: 173, column: 14, scope: !939)
!960 = !DILocalVariable(name: "queue", scope: !939, file: !852, line: 174, type: !90)
!961 = !DILocation(line: 174, column: 6, scope: !939)
!962 = !DILocalVariable(name: "mode", scope: !939, file: !852, line: 174, type: !90)
!963 = !DILocation(line: 174, column: 13, scope: !939)
!964 = !DILocalVariable(name: "passive", scope: !939, file: !852, line: 174, type: !90)
!965 = !DILocation(line: 174, column: 19, scope: !939)
!966 = !DILocation(line: 176, column: 22, scope: !967)
!967 = distinct !DILexicalBlock(scope: !939, file: !852, line: 176, column: 6)
!968 = !DILocation(line: 176, column: 7, scope: !967)
!969 = !DILocation(line: 176, column: 6, scope: !939)
!970 = !DILocation(line: 179, column: 3, scope: !967)
!971 = !DILocation(line: 181, column: 22, scope: !939)
!972 = !DILocation(line: 181, column: 9, scope: !939)
!973 = !DILocation(line: 181, column: 7, scope: !939)
!974 = !DILocation(line: 182, column: 6, scope: !975)
!975 = distinct !DILexicalBlock(scope: !939, file: !852, line: 182, column: 6)
!976 = !DILocation(line: 182, column: 11, scope: !975)
!977 = !DILocation(line: 182, column: 18, scope: !975)
!978 = !DILocation(line: 183, column: 7, scope: !975)
!979 = !DILocation(line: 183, column: 13, scope: !975)
!980 = !DILocation(line: 183, column: 23, scope: !975)
!981 = !DILocation(line: 183, column: 45, scope: !982)
!982 = !DILexicalBlockFile(scope: !975, file: !852, discriminator: 1)
!983 = !DILocation(line: 183, column: 51, scope: !982)
!984 = !DILocation(line: 183, column: 57, scope: !982)
!985 = !DILocation(line: 183, column: 26, scope: !982)
!986 = !DILocation(line: 183, column: 63, scope: !982)
!987 = !DILocation(line: 182, column: 6, scope: !988)
!988 = !DILexicalBlockFile(scope: !939, file: !852, discriminator: 1)
!989 = !DILocation(line: 184, column: 8, scope: !975)
!990 = !DILocation(line: 184, column: 3, scope: !975)
!991 = !DILocation(line: 186, column: 86, scope: !992)
!992 = distinct !DILexicalBlock(scope: !939, file: !852, line: 186, column: 6)
!993 = !DILocation(line: 186, column: 68, scope: !992)
!994 = !DILocation(line: 186, column: 53, scope: !992)
!995 = !DILocation(line: 186, column: 52, scope: !992)
!996 = !DILocation(line: 186, column: 27, scope: !997)
!997 = !DILexicalBlockFile(scope: !992, file: !852, discriminator: 4)
!998 = !DILocation(line: 186, column: 8, scope: !992)
!999 = !DILocation(line: 186, column: 31, scope: !992)
!1000 = !DILocation(line: 186, column: 7, scope: !1001)
!1001 = !DILexicalBlockFile(scope: !992, file: !852, discriminator: 1)
!1002 = !DILocation(line: 186, column: 31, scope: !1003)
!1003 = !DILexicalBlockFile(scope: !992, file: !852, discriminator: 2)
!1004 = !DILocation(line: 186, column: 34, scope: !1005)
!1005 = !DILexicalBlockFile(scope: !992, file: !852, discriminator: 3)
!1006 = !DILocation(line: 186, column: 42, scope: !1005)
!1007 = !DILocation(line: 186, column: 6, scope: !1005)
!1008 = !DILocation(line: 187, column: 15, scope: !992)
!1009 = !DILocation(line: 187, column: 23, scope: !992)
!1010 = !DILocation(line: 187, column: 13, scope: !992)
!1011 = !DILocation(line: 187, column: 3, scope: !992)
!1012 = !DILocation(line: 188, column: 11, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !992, file: !852, line: 188, column: 11)
!1014 = !DILocation(line: 188, column: 16, scope: !1013)
!1015 = !DILocation(line: 188, column: 11, scope: !992)
!1016 = !DILocation(line: 189, column: 15, scope: !1013)
!1017 = !DILocation(line: 189, column: 21, scope: !1013)
!1018 = !DILocation(line: 189, column: 13, scope: !1013)
!1019 = !DILocation(line: 189, column: 3, scope: !1013)
!1020 = !DILocation(line: 191, column: 13, scope: !1013)
!1021 = !DILocation(line: 193, column: 6, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !939, file: !852, line: 193, column: 6)
!1023 = !DILocation(line: 193, column: 16, scope: !1022)
!1024 = !DILocation(line: 193, column: 23, scope: !1022)
!1025 = !DILocation(line: 193, column: 26, scope: !1026)
!1026 = !DILexicalBlockFile(scope: !1022, file: !852, discriminator: 1)
!1027 = !DILocation(line: 193, column: 31, scope: !1026)
!1028 = !DILocation(line: 193, column: 6, scope: !1026)
!1029 = !DILocation(line: 194, column: 3, scope: !1022)
!1030 = distinct !{!1030, !1029}
!1031 = !DILocation(line: 194, column: 24, scope: !1032)
!1032 = !DILexicalBlockFile(scope: !1033, file: !852, discriminator: 1)
!1033 = distinct !DILexicalBlock(scope: !1022, file: !852, line: 194, column: 6)
!1034 = !DILocation(line: 194, column: 8, scope: !1032)
!1035 = !DILocation(line: 194, column: 35, scope: !1032)
!1036 = distinct !{!1036, !1037}
!1037 = !DILocation(line: 194, column: 35, scope: !1033)
!1038 = !DILocation(line: 194, column: 40, scope: !1039)
!1039 = !DILexicalBlockFile(scope: !1040, file: !852, discriminator: 2)
!1040 = distinct !DILexicalBlock(scope: !1033, file: !852, line: 194, column: 38)
!1041 = !DILocation(line: 194, column: 118, scope: !1042)
!1042 = !DILexicalBlockFile(scope: !1039, file: !852, discriminator: 5)
!1043 = !DILocation(line: 194, column: 133, scope: !1039)
!1044 = !DILocation(line: 194, column: 154, scope: !1045)
!1045 = !DILexicalBlockFile(scope: !1033, file: !852, discriminator: 3)
!1046 = !DILocation(line: 194, column: 154, scope: !1047)
!1047 = !DILexicalBlockFile(scope: !1033, file: !852, discriminator: 4)
!1048 = !DILocation(line: 196, column: 32, scope: !939)
!1049 = !DILocation(line: 196, column: 12, scope: !939)
!1050 = !DILocation(line: 196, column: 52, scope: !939)
!1051 = !DILocation(line: 196, column: 10, scope: !939)
!1052 = !DILocation(line: 198, column: 26, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !939, file: !852, line: 198, column: 6)
!1054 = !DILocation(line: 198, column: 6, scope: !1053)
!1055 = !DILocation(line: 198, column: 45, scope: !1053)
!1056 = !DILocation(line: 198, column: 6, scope: !939)
!1057 = !DILocation(line: 199, column: 25, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1053, file: !852, line: 198, column: 53)
!1059 = !DILocation(line: 199, column: 31, scope: !1058)
!1060 = !DILocation(line: 199, column: 11, scope: !1058)
!1061 = !DILocation(line: 199, column: 9, scope: !1058)
!1062 = !DILocation(line: 200, column: 7, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1058, file: !852, line: 200, column: 7)
!1064 = !DILocation(line: 200, column: 13, scope: !1063)
!1065 = !DILocation(line: 200, column: 7, scope: !1058)
!1066 = !DILocation(line: 201, column: 26, scope: !1063)
!1067 = !DILocation(line: 201, column: 4, scope: !1063)
!1068 = !DILocation(line: 202, column: 2, scope: !1058)
!1069 = !DILocation(line: 202, column: 33, scope: !1070)
!1070 = !DILexicalBlockFile(scope: !1071, file: !852, discriminator: 1)
!1071 = distinct !DILexicalBlock(scope: !1053, file: !852, line: 202, column: 13)
!1072 = !DILocation(line: 202, column: 13, scope: !1070)
!1073 = !DILocation(line: 202, column: 52, scope: !1070)
!1074 = !DILocation(line: 203, column: 25, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1071, file: !852, line: 202, column: 60)
!1076 = !DILocation(line: 203, column: 31, scope: !1075)
!1077 = !DILocation(line: 203, column: 11, scope: !1075)
!1078 = !DILocation(line: 203, column: 9, scope: !1075)
!1079 = !DILocation(line: 204, column: 7, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1075, file: !852, line: 204, column: 7)
!1081 = !DILocation(line: 204, column: 13, scope: !1080)
!1082 = !DILocation(line: 204, column: 7, scope: !1075)
!1083 = !DILocation(line: 205, column: 26, scope: !1080)
!1084 = !DILocation(line: 205, column: 4, scope: !1080)
!1085 = !DILocation(line: 206, column: 2, scope: !1075)
!1086 = !DILocation(line: 206, column: 33, scope: !1087)
!1087 = !DILexicalBlockFile(scope: !1088, file: !852, discriminator: 1)
!1088 = distinct !DILexicalBlock(scope: !1071, file: !852, line: 206, column: 13)
!1089 = !DILocation(line: 206, column: 13, scope: !1087)
!1090 = !DILocation(line: 206, column: 51, scope: !1087)
!1091 = !DILocation(line: 207, column: 25, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1088, file: !852, line: 206, column: 59)
!1093 = !DILocation(line: 207, column: 31, scope: !1092)
!1094 = !DILocation(line: 207, column: 11, scope: !1092)
!1095 = !DILocation(line: 207, column: 9, scope: !1092)
!1096 = !DILocation(line: 208, column: 7, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1092, file: !852, line: 208, column: 7)
!1098 = !DILocation(line: 208, column: 13, scope: !1097)
!1099 = !DILocation(line: 208, column: 7, scope: !1092)
!1100 = !DILocation(line: 209, column: 19, scope: !1097)
!1101 = !DILocation(line: 209, column: 4, scope: !1097)
!1102 = !DILocation(line: 210, column: 2, scope: !1092)
!1103 = !DILocation(line: 211, column: 27, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1105, file: !852, line: 211, column: 7)
!1105 = distinct !DILexicalBlock(scope: !1088, file: !852, line: 210, column: 9)
!1106 = !DILocation(line: 211, column: 7, scope: !1104)
!1107 = !DILocation(line: 211, column: 46, scope: !1104)
!1108 = !DILocation(line: 211, column: 7, scope: !1105)
!1109 = !DILocation(line: 212, column: 9, scope: !1104)
!1110 = !DILocation(line: 212, column: 4, scope: !1104)
!1111 = !DILocation(line: 213, column: 32, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1104, file: !852, line: 213, column: 12)
!1113 = !DILocation(line: 213, column: 12, scope: !1112)
!1114 = !DILocation(line: 213, column: 52, scope: !1112)
!1115 = !DILocation(line: 213, column: 12, scope: !1104)
!1116 = !DILocation(line: 214, column: 9, scope: !1112)
!1117 = !DILocation(line: 214, column: 4, scope: !1112)
!1118 = !DILocation(line: 216, column: 9, scope: !1112)
!1119 = !DILocation(line: 218, column: 8, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1105, file: !852, line: 218, column: 7)
!1121 = !DILocation(line: 218, column: 7, scope: !1120)
!1122 = !DILocation(line: 218, column: 17, scope: !1120)
!1123 = !DILocation(line: 218, column: 7, scope: !1105)
!1124 = !DILocation(line: 219, column: 4, scope: !1120)
!1125 = distinct !{!1125, !1124}
!1126 = !DILocation(line: 219, column: 25, scope: !1127)
!1127 = !DILexicalBlockFile(scope: !1128, file: !852, discriminator: 1)
!1128 = distinct !DILexicalBlock(scope: !1120, file: !852, line: 219, column: 7)
!1129 = !DILocation(line: 219, column: 9, scope: !1127)
!1130 = !DILocation(line: 219, column: 36, scope: !1127)
!1131 = distinct !{!1131, !1132}
!1132 = !DILocation(line: 219, column: 36, scope: !1128)
!1133 = !DILocation(line: 219, column: 41, scope: !1134)
!1134 = !DILexicalBlockFile(scope: !1135, file: !852, discriminator: 2)
!1135 = distinct !DILexicalBlock(scope: !1128, file: !852, line: 219, column: 39)
!1136 = !DILocation(line: 219, column: 123, scope: !1137)
!1137 = !DILexicalBlockFile(scope: !1134, file: !852, discriminator: 5)
!1138 = !DILocation(line: 219, column: 138, scope: !1134)
!1139 = !DILocation(line: 219, column: 159, scope: !1140)
!1140 = !DILexicalBlockFile(scope: !1128, file: !852, discriminator: 3)
!1141 = !DILocation(line: 219, column: 159, scope: !1142)
!1142 = !DILexicalBlockFile(scope: !1128, file: !852, discriminator: 4)
!1143 = !DILocation(line: 221, column: 16, scope: !1105)
!1144 = !DILocation(line: 221, column: 27, scope: !1105)
!1145 = !DILocation(line: 221, column: 33, scope: !1105)
!1146 = !DILocation(line: 221, column: 39, scope: !1105)
!1147 = !DILocation(line: 221, column: 49, scope: !1105)
!1148 = !DILocation(line: 221, column: 55, scope: !1105)
!1149 = !DILocation(line: 221, column: 3, scope: !1105)
!1150 = !DILocation(line: 224, column: 18, scope: !939)
!1151 = !DILocation(line: 224, column: 2, scope: !939)
!1152 = !DILocation(line: 225, column: 1, scope: !939)
!1153 = !DILocation(line: 225, column: 1, scope: !988)
!1154 = distinct !DISubprogram(name: "dcc_send_deinit", scope: !852, file: !852, line: 483, type: !287, isLocal: false, isDefinition: true, scopeLine: 484, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !853)
!1155 = !DILocation(line: 485, column: 2, scope: !1154)
!1156 = !DILocation(line: 487, column: 9, scope: !1154)
!1157 = !DILocation(line: 488, column: 2, scope: !1154)
!1158 = !DILocation(line: 489, column: 2, scope: !1154)
!1159 = !DILocation(line: 490, column: 2, scope: !1154)
!1160 = !DILocation(line: 491, column: 1, scope: !1154)
!1161 = distinct !DISubprogram(name: "dcc_queue_send_next", scope: !852, file: !852, line: 45, type: !1162, isLocal: true, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !853)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{null, !90}
!1164 = !DILocalVariable(name: "queue", arg: 1, scope: !1161, file: !852, line: 45, type: !90)
!1165 = !DILocation(line: 45, column: 37, scope: !1161)
!1166 = !DILocalVariable(name: "server", scope: !1161, file: !852, line: 47, type: !99)
!1167 = !DILocation(line: 47, column: 18, scope: !1161)
!1168 = !DILocalVariable(name: "qrec", scope: !1161, file: !852, line: 48, type: !1169)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64, align: 64)
!1170 = !DIDerivedType(tag: DW_TAG_typedef, name: "DCC_QUEUE_REC", file: !69, line: 18, baseType: !1171)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !69, line: 12, size: 320, align: 64, elements: !1172)
!1172 = !{!1173, !1174, !1175, !1176, !1177}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "chat", scope: !1171, file: !69, line: 13, baseType: !757, size: 64, align: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !1171, file: !69, line: 14, baseType: !119, size: 64, align: 64, offset: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !1171, file: !69, line: 15, baseType: !119, size: 64, align: 64, offset: 128)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1171, file: !69, line: 16, baseType: !119, size: 64, align: 64, offset: 192)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "passive", scope: !1171, file: !69, line: 17, baseType: !90, size: 32, align: 32, offset: 256)
!1178 = !DILocation(line: 48, column: 24, scope: !1161)
!1179 = !DILocalVariable(name: "send_started", scope: !1161, file: !852, line: 49, type: !90)
!1180 = !DILocation(line: 49, column: 6, scope: !1161)
!1181 = !DILocation(line: 51, column: 2, scope: !1161)
!1182 = !DILocation(line: 51, column: 36, scope: !1183)
!1183 = !DILexicalBlockFile(scope: !1161, file: !852, discriminator: 1)
!1184 = !DILocation(line: 51, column: 17, scope: !1183)
!1185 = !DILocation(line: 51, column: 15, scope: !1183)
!1186 = !DILocation(line: 51, column: 44, scope: !1183)
!1187 = !DILocation(line: 51, column: 51, scope: !1183)
!1188 = !DILocation(line: 51, column: 55, scope: !1189)
!1189 = !DILexicalBlockFile(scope: !1161, file: !852, discriminator: 2)
!1190 = !DILocation(line: 51, column: 54, scope: !1189)
!1191 = !DILocation(line: 51, column: 2, scope: !1192)
!1192 = !DILexicalBlockFile(scope: !1161, file: !852, discriminator: 3)
!1193 = !DILocation(line: 52, column: 12, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1161, file: !852, line: 51, column: 69)
!1195 = !DILocation(line: 52, column: 18, scope: !1194)
!1196 = !DILocation(line: 52, column: 28, scope: !1194)
!1197 = !DILocation(line: 52, column: 12, scope: !1198)
!1198 = !DILexicalBlockFile(scope: !1194, file: !852, discriminator: 1)
!1199 = !DILocation(line: 53, column: 99, scope: !1194)
!1200 = !DILocation(line: 53, column: 105, scope: !1194)
!1201 = !DILocation(line: 53, column: 83, scope: !1194)
!1202 = !DILocation(line: 53, column: 65, scope: !1198)
!1203 = !DILocation(line: 53, column: 50, scope: !1194)
!1204 = !DILocation(line: 53, column: 49, scope: !1194)
!1205 = !DILocation(line: 53, column: 24, scope: !1206)
!1206 = !DILexicalBlockFile(scope: !1194, file: !852, discriminator: 2)
!1207 = !DILocation(line: 53, column: 5, scope: !1194)
!1208 = !DILocation(line: 52, column: 12, scope: !1206)
!1209 = !DILocation(line: 52, column: 12, scope: !1210)
!1210 = !DILexicalBlockFile(scope: !1194, file: !852, discriminator: 3)
!1211 = !DILocation(line: 52, column: 10, scope: !1210)
!1212 = !DILocation(line: 55, column: 7, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1194, file: !852, line: 55, column: 7)
!1214 = !DILocation(line: 55, column: 14, scope: !1213)
!1215 = !DILocation(line: 55, column: 21, scope: !1213)
!1216 = !DILocation(line: 55, column: 24, scope: !1217)
!1217 = !DILexicalBlockFile(scope: !1213, file: !852, discriminator: 1)
!1218 = !DILocation(line: 55, column: 30, scope: !1217)
!1219 = !DILocation(line: 55, column: 35, scope: !1217)
!1220 = !DILocation(line: 55, column: 7, scope: !1217)
!1221 = !DILocation(line: 58, column: 9, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1213, file: !852, line: 55, column: 44)
!1223 = !DILocation(line: 58, column: 15, scope: !1222)
!1224 = !DILocation(line: 58, column: 21, scope: !1222)
!1225 = !DILocation(line: 58, column: 27, scope: !1222)
!1226 = !DILocation(line: 57, column: 4, scope: !1222)
!1227 = !DILocation(line: 59, column: 3, scope: !1222)
!1228 = !DILocation(line: 60, column: 37, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1213, file: !852, line: 59, column: 10)
!1230 = !DILocation(line: 60, column: 44, scope: !1229)
!1231 = !DILocation(line: 60, column: 50, scope: !1229)
!1232 = !DILocation(line: 61, column: 9, scope: !1229)
!1233 = !DILocation(line: 61, column: 15, scope: !1229)
!1234 = !DILocation(line: 61, column: 21, scope: !1229)
!1235 = !DILocation(line: 62, column: 9, scope: !1229)
!1236 = !DILocation(line: 62, column: 15, scope: !1229)
!1237 = !DILocation(line: 63, column: 9, scope: !1229)
!1238 = !DILocation(line: 63, column: 15, scope: !1229)
!1239 = !DILocation(line: 60, column: 19, scope: !1229)
!1240 = !DILocation(line: 60, column: 17, scope: !1229)
!1241 = !DILocation(line: 65, column: 39, scope: !1194)
!1242 = !DILocation(line: 65, column: 17, scope: !1194)
!1243 = !DILocation(line: 51, column: 2, scope: !1244)
!1244 = !DILexicalBlockFile(scope: !1161, file: !852, discriminator: 4)
!1245 = distinct !{!1245, !1181}
!1246 = !DILocation(line: 68, column: 7, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1161, file: !852, line: 68, column: 6)
!1248 = !DILocation(line: 68, column: 6, scope: !1161)
!1249 = !DILocation(line: 70, column: 18, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1247, file: !852, line: 68, column: 21)
!1251 = !DILocation(line: 70, column: 3, scope: !1250)
!1252 = !DILocation(line: 71, column: 2, scope: !1250)
!1253 = !DILocation(line: 72, column: 1, scope: !1161)
!1254 = distinct !DISubprogram(name: "dcc_send_one_file", scope: !852, file: !852, line: 369, type: !1255, isLocal: true, isDefinition: true, scopeLine: 372, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !853)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{!90, !90, !534, !534, !99, !757, !90}
!1257 = !DILocalVariable(name: "queue", arg: 1, scope: !1254, file: !852, line: 369, type: !90)
!1258 = !DILocation(line: 369, column: 34, scope: !1254)
!1259 = !DILocalVariable(name: "target", arg: 2, scope: !1254, file: !852, line: 369, type: !534)
!1260 = !DILocation(line: 369, column: 53, scope: !1254)
!1261 = !DILocalVariable(name: "fname", arg: 3, scope: !1254, file: !852, line: 369, type: !534)
!1262 = !DILocation(line: 369, column: 73, scope: !1254)
!1263 = !DILocalVariable(name: "server", arg: 4, scope: !1254, file: !852, line: 370, type: !99)
!1264 = !DILocation(line: 370, column: 25, scope: !1254)
!1265 = !DILocalVariable(name: "chat", arg: 5, scope: !1254, file: !852, line: 370, type: !757)
!1266 = !DILocation(line: 370, column: 47, scope: !1254)
!1267 = !DILocalVariable(name: "passive", arg: 6, scope: !1254, file: !852, line: 371, type: !90)
!1268 = !DILocation(line: 371, column: 13, scope: !1254)
!1269 = !DILocalVariable(name: "st", scope: !1254, file: !852, line: 373, type: !1270)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1271, line: 46, size: 1152, align: 64, elements: !1272)
!1271 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/irssi/task1")
!1272 = !{!1273, !1275, !1277, !1279, !1281, !1283, !1285, !1286, !1287, !1289, !1291, !1293, !1299, !1300, !1301}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1270, file: !1271, line: 48, baseType: !1274, size: 64, align: 64)
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !96, line: 124, baseType: !199)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1270, file: !1271, line: 53, baseType: !1276, size: 64, align: 64, offset: 64)
!1276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !96, line: 127, baseType: !199)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1270, file: !1271, line: 61, baseType: !1278, size: 64, align: 64, offset: 128)
!1278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !96, line: 130, baseType: !199)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1270, file: !1271, line: 62, baseType: !1280, size: 32, align: 32, offset: 192)
!1280 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !96, line: 129, baseType: !161)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1270, file: !1271, line: 64, baseType: !1282, size: 32, align: 32, offset: 224)
!1282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !96, line: 125, baseType: !161)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1270, file: !1271, line: 65, baseType: !1284, size: 32, align: 32, offset: 256)
!1284 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !96, line: 126, baseType: !161)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1270, file: !1271, line: 67, baseType: !90, size: 32, align: 32, offset: 288)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1270, file: !1271, line: 69, baseType: !1274, size: 64, align: 64, offset: 320)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1270, file: !1271, line: 74, baseType: !1288, size: 64, align: 64, offset: 384)
!1288 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !96, line: 131, baseType: !97)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1270, file: !1271, line: 78, baseType: !1290, size: 64, align: 64, offset: 448)
!1290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !96, line: 153, baseType: !97)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1270, file: !1271, line: 80, baseType: !1292, size: 64, align: 64, offset: 512)
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !96, line: 158, baseType: !97)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1270, file: !1271, line: 91, baseType: !1294, size: 128, align: 64, offset: 576)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !94, line: 120, size: 128, align: 64, elements: !1295)
!1295 = !{!1296, !1297}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1294, file: !94, line: 122, baseType: !95, size: 64, align: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1294, file: !94, line: 123, baseType: !1298, size: 64, align: 64, offset: 64)
!1298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !96, line: 175, baseType: !97)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1270, file: !1271, line: 92, baseType: !1294, size: 128, align: 64, offset: 704)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1270, file: !1271, line: 93, baseType: !1294, size: 128, align: 64, offset: 832)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1270, file: !1271, line: 106, baseType: !1302, size: 192, align: 64, offset: 960)
!1302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1298, size: 192, align: 64, elements: !1303)
!1303 = !{!1304}
!1304 = !DISubrange(count: 3)
!1305 = !DILocation(line: 373, column: 14, scope: !1254)
!1306 = !DILocalVariable(name: "str", scope: !1254, file: !852, line: 374, type: !119)
!1307 = !DILocation(line: 374, column: 8, scope: !1254)
!1308 = !DILocalVariable(name: "host", scope: !1254, file: !852, line: 375, type: !775)
!1309 = !DILocation(line: 375, column: 7, scope: !1254)
!1310 = !DILocalVariable(name: "hfile", scope: !1254, file: !852, line: 376, type: !90)
!1311 = !DILocation(line: 376, column: 6, scope: !1254)
!1312 = !DILocalVariable(name: "port", scope: !1254, file: !852, line: 376, type: !90)
!1313 = !DILocation(line: 376, column: 13, scope: !1254)
!1314 = !DILocalVariable(name: "dcc", scope: !1254, file: !852, line: 377, type: !83)
!1315 = !DILocation(line: 377, column: 23, scope: !1254)
!1316 = !DILocalVariable(name: "own_ip", scope: !1254, file: !852, line: 378, type: !133)
!1317 = !DILocation(line: 378, column: 9, scope: !1254)
!1318 = !DILocalVariable(name: "handle", scope: !1254, file: !852, line: 379, type: !178)
!1319 = !DILocation(line: 379, column: 14, scope: !1254)
!1320 = !DILocation(line: 381, column: 23, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1254, file: !852, line: 381, column: 6)
!1322 = !DILocation(line: 381, column: 62, scope: !1321)
!1323 = !DILocation(line: 381, column: 70, scope: !1321)
!1324 = !DILocation(line: 381, column: 6, scope: !1325)
!1325 = !DILexicalBlockFile(scope: !1321, file: !852, discriminator: 1)
!1326 = !DILocation(line: 381, column: 6, scope: !1321)
!1327 = !DILocation(line: 381, column: 6, scope: !1254)
!1328 = !DILocation(line: 382, column: 43, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1321, file: !852, line: 381, column: 78)
!1330 = !DILocation(line: 382, column: 51, scope: !1329)
!1331 = !DILocation(line: 382, column: 3, scope: !1329)
!1332 = !DILocation(line: 383, column: 3, scope: !1329)
!1333 = !DILocation(line: 386, column: 26, scope: !1254)
!1334 = !DILocation(line: 386, column: 8, scope: !1254)
!1335 = !DILocation(line: 386, column: 6, scope: !1254)
!1336 = !DILocation(line: 387, column: 15, scope: !1254)
!1337 = !DILocation(line: 387, column: 10, scope: !1254)
!1338 = !DILocation(line: 387, column: 8, scope: !1254)
!1339 = !DILocation(line: 388, column: 9, scope: !1254)
!1340 = !DILocation(line: 388, column: 2, scope: !1254)
!1341 = !DILocation(line: 390, column: 6, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1254, file: !852, line: 390, column: 6)
!1343 = !DILocation(line: 390, column: 12, scope: !1342)
!1344 = !DILocation(line: 390, column: 6, scope: !1254)
!1345 = !DILocation(line: 391, column: 41, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1342, file: !852, line: 390, column: 19)
!1347 = !DILocation(line: 391, column: 49, scope: !1346)
!1348 = !DILocation(line: 392, column: 9, scope: !1346)
!1349 = !DILocation(line: 392, column: 8, scope: !1346)
!1350 = !DILocation(line: 392, column: 20, scope: !1346)
!1351 = !DILocation(line: 391, column: 3, scope: !1346)
!1352 = !DILocation(line: 393, column: 3, scope: !1346)
!1353 = !DILocation(line: 396, column: 12, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1254, file: !852, line: 396, column: 6)
!1355 = !DILocation(line: 396, column: 6, scope: !1354)
!1356 = !DILocation(line: 396, column: 24, scope: !1354)
!1357 = !DILocation(line: 396, column: 6, scope: !1254)
!1358 = !DILocation(line: 397, column: 4, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1354, file: !852, line: 396, column: 29)
!1360 = !DILocation(line: 397, column: 3, scope: !1359)
!1361 = !DILocation(line: 397, column: 67, scope: !1362)
!1362 = !DILexicalBlockFile(scope: !1359, file: !852, discriminator: 1)
!1363 = !DILocation(line: 397, column: 3, scope: !1364)
!1364 = !DILexicalBlockFile(scope: !1359, file: !852, discriminator: 2)
!1365 = !DILocation(line: 398, column: 9, scope: !1359)
!1366 = !DILocation(line: 398, column: 3, scope: !1359)
!1367 = !DILocation(line: 399, column: 3, scope: !1359)
!1368 = !DILocation(line: 404, column: 6, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1254, file: !852, line: 404, column: 6)
!1370 = !DILocation(line: 404, column: 14, scope: !1369)
!1371 = !DILocation(line: 404, column: 6, scope: !1254)
!1372 = !DILocation(line: 405, column: 23, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1369, file: !852, line: 404, column: 22)
!1374 = !DILocation(line: 405, column: 28, scope: !1373)
!1375 = !DILocation(line: 405, column: 37, scope: !1376)
!1376 = !DILexicalBlockFile(scope: !1373, file: !852, discriminator: 1)
!1377 = !DILocation(line: 405, column: 43, scope: !1376)
!1378 = !DILocation(line: 405, column: 23, scope: !1376)
!1379 = !DILocation(line: 406, column: 31, scope: !1373)
!1380 = !DILocation(line: 406, column: 39, scope: !1373)
!1381 = !DILocation(line: 406, column: 9, scope: !1373)
!1382 = !DILocation(line: 405, column: 23, scope: !1383)
!1383 = !DILexicalBlockFile(scope: !1373, file: !852, discriminator: 2)
!1384 = !DILocation(line: 405, column: 23, scope: !1385)
!1385 = !DILexicalBlockFile(scope: !1373, file: !852, discriminator: 3)
!1386 = !DILocation(line: 405, column: 12, scope: !1385)
!1387 = !DILocation(line: 405, column: 10, scope: !1385)
!1388 = !DILocation(line: 408, column: 7, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1373, file: !852, line: 408, column: 7)
!1390 = !DILocation(line: 408, column: 14, scope: !1389)
!1391 = !DILocation(line: 408, column: 7, scope: !1373)
!1392 = !DILocation(line: 409, column: 10, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1389, file: !852, line: 408, column: 22)
!1394 = !DILocation(line: 409, column: 4, scope: !1393)
!1395 = !DILocation(line: 410, column: 5, scope: !1393)
!1396 = !DILocation(line: 410, column: 4, scope: !1393)
!1397 = !DILocation(line: 410, column: 73, scope: !1398)
!1398 = !DILexicalBlockFile(scope: !1393, file: !852, discriminator: 1)
!1399 = !DILocation(line: 410, column: 4, scope: !1400)
!1400 = !DILexicalBlockFile(scope: !1393, file: !852, discriminator: 2)
!1401 = !DILocation(line: 411, column: 4, scope: !1393)
!1402 = !DILocation(line: 413, column: 2, scope: !1373)
!1403 = !DILocation(line: 414, column: 10, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1369, file: !852, line: 413, column: 9)
!1405 = !DILocation(line: 417, column: 28, scope: !1254)
!1406 = !DILocation(line: 417, column: 8, scope: !1254)
!1407 = !DILocation(line: 417, column: 6, scope: !1254)
!1408 = !DILocation(line: 421, column: 6, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1254, file: !852, line: 421, column: 6)
!1410 = !DILocation(line: 421, column: 6, scope: !1254)
!1411 = !DILocation(line: 422, column: 16, scope: !1409)
!1412 = !DILocation(line: 422, column: 3, scope: !1409)
!1413 = !DILocation(line: 424, column: 24, scope: !1254)
!1414 = !DILocation(line: 424, column: 32, scope: !1254)
!1415 = !DILocation(line: 424, column: 38, scope: !1254)
!1416 = !DILocation(line: 424, column: 46, scope: !1254)
!1417 = !DILocation(line: 424, column: 8, scope: !1254)
!1418 = !DILocation(line: 424, column: 6, scope: !1254)
!1419 = !DILocation(line: 425, column: 9, scope: !1254)
!1420 = !DILocation(line: 425, column: 2, scope: !1254)
!1421 = !DILocation(line: 426, column: 6, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1254, file: !852, line: 426, column: 6)
!1423 = !DILocation(line: 426, column: 10, scope: !1422)
!1424 = !DILocation(line: 426, column: 6, scope: !1254)
!1425 = !DILocation(line: 427, column: 3, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1422, file: !852, line: 426, column: 18)
!1427 = distinct !{!1427, !1425}
!1428 = !DILocation(line: 427, column: 8, scope: !1429)
!1429 = !DILexicalBlockFile(scope: !1430, file: !852, discriminator: 1)
!1430 = distinct !DILexicalBlock(scope: !1426, file: !852, line: 427, column: 6)
!1431 = !DILocation(line: 427, column: 5, scope: !1429)
!1432 = !DILocation(line: 428, column: 3, scope: !1426)
!1433 = !DILocation(line: 431, column: 16, scope: !1254)
!1434 = !DILocation(line: 431, column: 2, scope: !1254)
!1435 = !DILocation(line: 431, column: 7, scope: !1254)
!1436 = !DILocation(line: 431, column: 14, scope: !1254)
!1437 = !DILocation(line: 432, column: 14, scope: !1254)
!1438 = !DILocation(line: 432, column: 2, scope: !1254)
!1439 = !DILocation(line: 432, column: 7, scope: !1254)
!1440 = !DILocation(line: 432, column: 12, scope: !1254)
!1441 = !DILocation(line: 433, column: 17, scope: !1254)
!1442 = !DILocation(line: 433, column: 2, scope: !1254)
!1443 = !DILocation(line: 433, column: 7, scope: !1254)
!1444 = !DILocation(line: 433, column: 12, scope: !1254)
!1445 = !DILocation(line: 434, column: 17, scope: !1254)
!1446 = !DILocation(line: 434, column: 2, scope: !1254)
!1447 = !DILocation(line: 434, column: 7, scope: !1254)
!1448 = !DILocation(line: 434, column: 15, scope: !1254)
!1449 = !DILocation(line: 435, column: 15, scope: !1254)
!1450 = !DILocation(line: 435, column: 2, scope: !1254)
!1451 = !DILocation(line: 435, column: 7, scope: !1254)
!1452 = !DILocation(line: 435, column: 13, scope: !1254)
!1453 = !DILocation(line: 436, column: 35, scope: !1254)
!1454 = !DILocation(line: 436, column: 28, scope: !1254)
!1455 = !DILocation(line: 436, column: 47, scope: !1254)
!1456 = !DILocation(line: 436, column: 9, scope: !1254)
!1457 = !DILocation(line: 436, column: 14, scope: !1254)
!1458 = !DILocation(line: 436, column: 26, scope: !1254)
!1459 = !DILocation(line: 437, column: 7, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1254, file: !852, line: 437, column: 6)
!1461 = !DILocation(line: 437, column: 6, scope: !1254)
!1462 = !DILocation(line: 438, column: 30, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1460, file: !852, line: 437, column: 16)
!1464 = !DILocation(line: 440, column: 9, scope: !1463)
!1465 = !DILocation(line: 438, column: 18, scope: !1463)
!1466 = !DILocation(line: 438, column: 3, scope: !1463)
!1467 = !DILocation(line: 438, column: 8, scope: !1463)
!1468 = !DILocation(line: 438, column: 16, scope: !1463)
!1469 = !DILocation(line: 441, column: 2, scope: !1463)
!1470 = !DILocation(line: 444, column: 6, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1254, file: !852, line: 444, column: 6)
!1472 = !DILocation(line: 444, column: 6, scope: !1254)
!1473 = !DILocation(line: 445, column: 18, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1471, file: !852, line: 444, column: 15)
!1475 = !DILocation(line: 445, column: 25, scope: !1474)
!1476 = !DILocation(line: 445, column: 3, scope: !1474)
!1477 = !DILocation(line: 445, column: 8, scope: !1474)
!1478 = !DILocation(line: 445, column: 16, scope: !1474)
!1479 = !DILocation(line: 446, column: 2, scope: !1474)
!1480 = !DILocation(line: 449, column: 37, scope: !1254)
!1481 = !DILocation(line: 449, column: 2, scope: !1254)
!1482 = !DILocation(line: 452, column: 22, scope: !1254)
!1483 = !DILocation(line: 452, column: 2, scope: !1254)
!1484 = !DILocation(line: 453, column: 6, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1254, file: !852, line: 453, column: 6)
!1486 = !DILocation(line: 453, column: 14, scope: !1485)
!1487 = !DILocation(line: 453, column: 6, scope: !1254)
!1488 = !DILocation(line: 454, column: 25, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1485, file: !852, line: 453, column: 22)
!1490 = !DILocation(line: 454, column: 30, scope: !1489)
!1491 = !DILocation(line: 457, column: 11, scope: !1489)
!1492 = !DILocation(line: 457, column: 16, scope: !1489)
!1493 = !DILocation(line: 457, column: 21, scope: !1489)
!1494 = !DILocation(line: 457, column: 27, scope: !1489)
!1495 = !DILocation(line: 457, column: 33, scope: !1489)
!1496 = !DILocation(line: 457, column: 38, scope: !1489)
!1497 = !DILocation(line: 454, column: 9, scope: !1489)
!1498 = !DILocation(line: 454, column: 7, scope: !1489)
!1499 = !DILocation(line: 458, column: 2, scope: !1489)
!1500 = !DILocation(line: 459, column: 25, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1485, file: !852, line: 458, column: 9)
!1502 = !DILocation(line: 459, column: 30, scope: !1501)
!1503 = !DILocation(line: 462, column: 11, scope: !1501)
!1504 = !DILocation(line: 462, column: 16, scope: !1501)
!1505 = !DILocation(line: 462, column: 21, scope: !1501)
!1506 = !DILocation(line: 462, column: 26, scope: !1501)
!1507 = !DILocation(line: 462, column: 32, scope: !1501)
!1508 = !DILocation(line: 462, column: 37, scope: !1501)
!1509 = !DILocation(line: 459, column: 9, scope: !1501)
!1510 = !DILocation(line: 459, column: 7, scope: !1501)
!1511 = !DILocation(line: 464, column: 19, scope: !1254)
!1512 = !DILocation(line: 464, column: 27, scope: !1254)
!1513 = !DILocation(line: 464, column: 35, scope: !1254)
!1514 = !DILocation(line: 464, column: 46, scope: !1254)
!1515 = !DILocation(line: 464, column: 2, scope: !1254)
!1516 = !DILocation(line: 466, column: 9, scope: !1254)
!1517 = !DILocation(line: 466, column: 2, scope: !1254)
!1518 = !DILocation(line: 467, column: 2, scope: !1254)
!1519 = !DILocation(line: 468, column: 1, scope: !1254)
!1520 = distinct !DISubprogram(name: "dcc_send_get_file", scope: !852, file: !852, line: 74, type: !1521, isLocal: true, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !853)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!119, !534}
!1523 = !DILocalVariable(name: "fname", arg: 1, scope: !1520, file: !852, line: 74, type: !534)
!1524 = !DILocation(line: 74, column: 44, scope: !1520)
!1525 = !DILocalVariable(name: "str", scope: !1520, file: !852, line: 76, type: !119)
!1526 = !DILocation(line: 76, column: 8, scope: !1520)
!1527 = !DILocalVariable(name: "path", scope: !1520, file: !852, line: 76, type: !119)
!1528 = !DILocation(line: 76, column: 14, scope: !1520)
!1529 = !DILocation(line: 78, column: 21, scope: !1520)
!1530 = !DILocation(line: 78, column: 8, scope: !1520)
!1531 = !DILocation(line: 78, column: 6, scope: !1520)
!1532 = !DILocation(line: 79, column: 26, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1520, file: !852, line: 79, column: 6)
!1534 = !DILocation(line: 79, column: 7, scope: !1533)
!1535 = !DILocation(line: 79, column: 6, scope: !1520)
!1536 = !DILocation(line: 81, column: 10, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1533, file: !852, line: 79, column: 32)
!1538 = !DILocation(line: 81, column: 3, scope: !1537)
!1539 = !DILocation(line: 83, column: 23, scope: !1537)
!1540 = !DILocation(line: 83, column: 10, scope: !1541)
!1541 = !DILexicalBlockFile(scope: !1537, file: !852, discriminator: 1)
!1542 = !DILocation(line: 83, column: 8, scope: !1537)
!1543 = !DILocation(line: 84, column: 10, scope: !1537)
!1544 = !DILocation(line: 84, column: 9, scope: !1537)
!1545 = !DILocation(line: 84, column: 15, scope: !1537)
!1546 = !DILocation(line: 84, column: 34, scope: !1541)
!1547 = !DILocation(line: 84, column: 25, scope: !1541)
!1548 = !DILocation(line: 84, column: 9, scope: !1541)
!1549 = !DILocation(line: 85, column: 16, scope: !1537)
!1550 = !DILocation(line: 85, column: 27, scope: !1537)
!1551 = !DILocation(line: 85, column: 4, scope: !1537)
!1552 = !DILocation(line: 84, column: 9, scope: !1553)
!1553 = !DILexicalBlockFile(scope: !1537, file: !852, discriminator: 2)
!1554 = !DILocation(line: 84, column: 9, scope: !1555)
!1555 = !DILexicalBlockFile(scope: !1537, file: !852, discriminator: 3)
!1556 = !DILocation(line: 84, column: 7, scope: !1555)
!1557 = !DILocation(line: 86, column: 10, scope: !1537)
!1558 = !DILocation(line: 86, column: 3, scope: !1537)
!1559 = !DILocation(line: 87, column: 2, scope: !1537)
!1560 = !DILocation(line: 89, column: 16, scope: !1520)
!1561 = !DILocation(line: 89, column: 9, scope: !1520)
!1562 = distinct !DISubprogram(name: "dcc_send_create", scope: !852, file: !852, line: 227, type: !1563, isLocal: true, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !853)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!83, !99, !757, !534, !534}
!1565 = !DILocalVariable(name: "server", arg: 1, scope: !1562, file: !852, line: 227, type: !99)
!1566 = !DILocation(line: 227, column: 54, scope: !1562)
!1567 = !DILocalVariable(name: "chat", arg: 2, scope: !1562, file: !852, line: 228, type: !757)
!1568 = !DILocation(line: 228, column: 24, scope: !1562)
!1569 = !DILocalVariable(name: "nick", arg: 3, scope: !1562, file: !852, line: 229, type: !534)
!1570 = !DILocation(line: 229, column: 22, scope: !1562)
!1571 = !DILocalVariable(name: "arg", arg: 4, scope: !1562, file: !852, line: 229, type: !534)
!1572 = !DILocation(line: 229, column: 40, scope: !1562)
!1573 = !DILocalVariable(name: "dcc", scope: !1562, file: !852, line: 231, type: !83)
!1574 = !DILocation(line: 231, column: 16, scope: !1562)
!1575 = !DILocation(line: 233, column: 26, scope: !1562)
!1576 = !DILocation(line: 233, column: 9, scope: !1562)
!1577 = !DILocation(line: 233, column: 6, scope: !1562)
!1578 = !DILocation(line: 234, column: 19, scope: !1562)
!1579 = !DILocation(line: 234, column: 2, scope: !1562)
!1580 = !DILocation(line: 234, column: 7, scope: !1562)
!1581 = !DILocation(line: 234, column: 17, scope: !1562)
!1582 = !DILocation(line: 235, column: 14, scope: !1562)
!1583 = !DILocation(line: 235, column: 2, scope: !1562)
!1584 = !DILocation(line: 235, column: 7, scope: !1562)
!1585 = !DILocation(line: 235, column: 12, scope: !1562)
!1586 = !DILocation(line: 236, column: 2, scope: !1562)
!1587 = !DILocation(line: 236, column: 7, scope: !1562)
!1588 = !DILocation(line: 236, column: 15, scope: !1562)
!1589 = !DILocation(line: 237, column: 2, scope: !1562)
!1590 = !DILocation(line: 237, column: 7, scope: !1562)
!1591 = !DILocation(line: 237, column: 13, scope: !1562)
!1592 = !DILocation(line: 239, column: 29, scope: !1562)
!1593 = !DILocation(line: 239, column: 16, scope: !1562)
!1594 = !DILocation(line: 239, column: 36, scope: !1562)
!1595 = !DILocation(line: 239, column: 44, scope: !1562)
!1596 = !DILocation(line: 239, column: 50, scope: !1562)
!1597 = !DILocation(line: 239, column: 56, scope: !1562)
!1598 = !DILocation(line: 239, column: 2, scope: !1562)
!1599 = !DILocation(line: 240, column: 6, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1562, file: !852, line: 240, column: 6)
!1601 = !DILocation(line: 240, column: 11, scope: !1600)
!1602 = !DILocation(line: 240, column: 23, scope: !1600)
!1603 = !DILocation(line: 240, column: 6, scope: !1562)
!1604 = !DILocation(line: 242, column: 10, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1600, file: !852, line: 240, column: 31)
!1606 = !DILocation(line: 242, column: 3, scope: !1605)
!1607 = !DILocation(line: 243, column: 3, scope: !1605)
!1608 = !DILocation(line: 246, column: 16, scope: !1562)
!1609 = !DILocation(line: 246, column: 9, scope: !1562)
!1610 = !DILocation(line: 247, column: 1, scope: !1562)
!1611 = distinct !DISubprogram(name: "dcc_send_connected", scope: !852, file: !852, line: 314, type: !864, isLocal: true, isDefinition: true, scopeLine: 315, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !853)
!1612 = !DILocalVariable(name: "dcc", arg: 1, scope: !1611, file: !852, line: 314, type: !83)
!1613 = !DILocation(line: 314, column: 46, scope: !1611)
!1614 = !DILocalVariable(name: "handle", scope: !1611, file: !852, line: 316, type: !178)
!1615 = !DILocation(line: 316, column: 21, scope: !1611)
!1616 = !DILocalVariable(name: "addr", scope: !1611, file: !852, line: 317, type: !133)
!1617 = !DILocation(line: 317, column: 9, scope: !1611)
!1618 = !DILocalVariable(name: "port", scope: !1611, file: !852, line: 318, type: !90)
!1619 = !DILocation(line: 318, column: 6, scope: !1611)
!1620 = !DILocation(line: 321, column: 22, scope: !1611)
!1621 = !DILocation(line: 321, column: 27, scope: !1611)
!1622 = !DILocation(line: 321, column: 11, scope: !1611)
!1623 = !DILocation(line: 321, column: 9, scope: !1611)
!1624 = !DILocation(line: 322, column: 6, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1611, file: !852, line: 322, column: 6)
!1626 = !DILocation(line: 322, column: 13, scope: !1625)
!1627 = !DILocation(line: 322, column: 6, scope: !1611)
!1628 = !DILocation(line: 323, column: 3, scope: !1625)
!1629 = !DILocation(line: 329, column: 17, scope: !1611)
!1630 = !DILocation(line: 329, column: 22, scope: !1611)
!1631 = !DILocation(line: 329, column: 2, scope: !1611)
!1632 = !DILocation(line: 330, column: 18, scope: !1611)
!1633 = !DILocation(line: 330, column: 23, scope: !1611)
!1634 = !DILocation(line: 330, column: 2, scope: !1611)
!1635 = !DILocation(line: 331, column: 9, scope: !1611)
!1636 = !DILocation(line: 331, column: 14, scope: !1611)
!1637 = !DILocation(line: 331, column: 22, scope: !1611)
!1638 = !DILocation(line: 333, column: 19, scope: !1611)
!1639 = !DILocation(line: 333, column: 2, scope: !1611)
!1640 = !DILocation(line: 333, column: 7, scope: !1611)
!1641 = !DILocation(line: 333, column: 17, scope: !1611)
!1642 = !DILocation(line: 334, column: 16, scope: !1611)
!1643 = !DILocation(line: 334, column: 2, scope: !1611)
!1644 = !DILocation(line: 334, column: 7, scope: !1611)
!1645 = !DILocation(line: 334, column: 14, scope: !1611)
!1646 = !DILocation(line: 335, column: 10, scope: !1611)
!1647 = !DILocation(line: 335, column: 15, scope: !1611)
!1648 = !DILocation(line: 335, column: 2, scope: !1611)
!1649 = !DILocation(line: 336, column: 15, scope: !1611)
!1650 = !DILocation(line: 336, column: 20, scope: !1611)
!1651 = !DILocation(line: 336, column: 26, scope: !1611)
!1652 = !DILocation(line: 336, column: 31, scope: !1611)
!1653 = !DILocation(line: 336, column: 2, scope: !1611)
!1654 = !DILocation(line: 337, column: 14, scope: !1611)
!1655 = !DILocation(line: 337, column: 2, scope: !1611)
!1656 = !DILocation(line: 337, column: 7, scope: !1611)
!1657 = !DILocation(line: 337, column: 12, scope: !1611)
!1658 = !DILocation(line: 339, column: 29, scope: !1611)
!1659 = !DILocation(line: 340, column: 45, scope: !1611)
!1660 = !DILocation(line: 339, column: 17, scope: !1611)
!1661 = !DILocation(line: 339, column: 2, scope: !1611)
!1662 = !DILocation(line: 339, column: 7, scope: !1611)
!1663 = !DILocation(line: 339, column: 15, scope: !1611)
!1664 = !DILocation(line: 341, column: 30, scope: !1611)
!1665 = !DILocation(line: 342, column: 41, scope: !1611)
!1666 = !DILocation(line: 341, column: 18, scope: !1611)
!1667 = !DILocation(line: 341, column: 2, scope: !1611)
!1668 = !DILocation(line: 341, column: 7, scope: !1611)
!1669 = !DILocation(line: 341, column: 16, scope: !1611)
!1670 = !DILocation(line: 344, column: 34, scope: !1611)
!1671 = !DILocation(line: 344, column: 2, scope: !1611)
!1672 = !DILocation(line: 345, column: 1, scope: !1611)
!1673 = !DILocation(line: 345, column: 1, scope: !1674)
!1674 = !DILexicalBlockFile(scope: !1611, file: !852, discriminator: 1)
!1675 = distinct !DISubprogram(name: "dcc_send_read_size", scope: !852, file: !852, line: 285, type: !864, isLocal: true, isDefinition: true, scopeLine: 286, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !853)
!1676 = !DILocalVariable(name: "dcc", arg: 1, scope: !1675, file: !852, line: 285, type: !83)
!1677 = !DILocation(line: 285, column: 46, scope: !1675)
!1678 = !DILocalVariable(name: "bytes", scope: !1675, file: !852, line: 287, type: !210)
!1679 = !DILocation(line: 287, column: 10, scope: !1675)
!1680 = !DILocalVariable(name: "ret", scope: !1675, file: !852, line: 288, type: !90)
!1681 = !DILocation(line: 288, column: 6, scope: !1675)
!1682 = !DILocation(line: 290, column: 20, scope: !1675)
!1683 = !DILocation(line: 290, column: 25, scope: !1675)
!1684 = !DILocation(line: 290, column: 33, scope: !1675)
!1685 = !DILocation(line: 290, column: 38, scope: !1675)
!1686 = !DILocation(line: 290, column: 48, scope: !1675)
!1687 = !DILocation(line: 290, column: 53, scope: !1675)
!1688 = !DILocation(line: 290, column: 47, scope: !1675)
!1689 = !DILocation(line: 291, column: 8, scope: !1675)
!1690 = !DILocation(line: 291, column: 13, scope: !1675)
!1691 = !DILocation(line: 291, column: 7, scope: !1675)
!1692 = !DILocation(line: 290, column: 8, scope: !1675)
!1693 = !DILocation(line: 290, column: 6, scope: !1675)
!1694 = !DILocation(line: 292, column: 6, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1675, file: !852, line: 292, column: 6)
!1696 = !DILocation(line: 292, column: 10, scope: !1695)
!1697 = !DILocation(line: 292, column: 6, scope: !1675)
!1698 = !DILocation(line: 293, column: 27, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1695, file: !852, line: 292, column: 17)
!1700 = !DILocation(line: 293, column: 14, scope: !1699)
!1701 = !DILocation(line: 293, column: 3, scope: !1699)
!1702 = !DILocation(line: 294, column: 3, scope: !1699)
!1703 = !DILocation(line: 297, column: 20, scope: !1675)
!1704 = !DILocation(line: 297, column: 2, scope: !1675)
!1705 = !DILocation(line: 297, column: 7, scope: !1675)
!1706 = !DILocation(line: 297, column: 17, scope: !1675)
!1707 = !DILocation(line: 299, column: 6, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1675, file: !852, line: 299, column: 6)
!1709 = !DILocation(line: 299, column: 11, scope: !1708)
!1710 = !DILocation(line: 299, column: 21, scope: !1708)
!1711 = !DILocation(line: 299, column: 6, scope: !1675)
!1712 = !DILocation(line: 300, column: 3, scope: !1708)
!1713 = !DILocation(line: 302, column: 2, scope: !1675)
!1714 = !DILocation(line: 302, column: 17, scope: !1675)
!1715 = !DILocation(line: 302, column: 22, scope: !1675)
!1716 = !DILocation(line: 303, column: 16, scope: !1675)
!1717 = !DILocation(line: 303, column: 10, scope: !1675)
!1718 = !DILocation(line: 303, column: 8, scope: !1675)
!1719 = !DILocation(line: 304, column: 2, scope: !1675)
!1720 = !DILocation(line: 304, column: 7, scope: !1675)
!1721 = !DILocation(line: 304, column: 17, scope: !1675)
!1722 = !DILocation(line: 306, column: 6, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1675, file: !852, line: 306, column: 6)
!1724 = !DILocation(line: 306, column: 11, scope: !1723)
!1725 = !DILocation(line: 306, column: 22, scope: !1723)
!1726 = !DILocation(line: 306, column: 25, scope: !1727)
!1727 = !DILexicalBlockFile(scope: !1723, file: !852, discriminator: 1)
!1728 = !DILocation(line: 306, column: 35, scope: !1727)
!1729 = !DILocation(line: 306, column: 40, scope: !1727)
!1730 = !DILocation(line: 306, column: 48, scope: !1727)
!1731 = !DILocation(line: 306, column: 31, scope: !1727)
!1732 = !DILocation(line: 306, column: 6, scope: !1727)
!1733 = !DILocation(line: 308, column: 3, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1723, file: !852, line: 306, column: 63)
!1735 = !DILocation(line: 308, column: 8, scope: !1734)
!1736 = !DILocation(line: 308, column: 19, scope: !1734)
!1737 = !DILocation(line: 309, column: 27, scope: !1734)
!1738 = !DILocation(line: 309, column: 14, scope: !1734)
!1739 = !DILocation(line: 309, column: 3, scope: !1734)
!1740 = !DILocation(line: 310, column: 2, scope: !1734)
!1741 = !DILocation(line: 311, column: 1, scope: !1675)
!1742 = distinct !DISubprogram(name: "dcc_send_data", scope: !852, file: !852, line: 260, type: !864, isLocal: true, isDefinition: true, scopeLine: 261, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !853)
!1743 = !DILocalVariable(name: "dcc", arg: 1, scope: !1742, file: !852, line: 260, type: !83)
!1744 = !DILocation(line: 260, column: 41, scope: !1742)
!1745 = !DILocalVariable(name: "buffer", scope: !1742, file: !852, line: 262, type: !1746)
!1746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 4096, align: 8, elements: !1747)
!1747 = !{!1748}
!1748 = !DISubrange(count: 512)
!1749 = !DILocation(line: 262, column: 14, scope: !1742)
!1750 = !DILocalVariable(name: "ret", scope: !1742, file: !852, line: 263, type: !90)
!1751 = !DILocation(line: 263, column: 6, scope: !1742)
!1752 = !DILocation(line: 265, column: 13, scope: !1742)
!1753 = !DILocation(line: 265, column: 18, scope: !1742)
!1754 = !DILocation(line: 265, column: 27, scope: !1742)
!1755 = !DILocation(line: 265, column: 8, scope: !1742)
!1756 = !DILocation(line: 265, column: 6, scope: !1742)
!1757 = !DILocation(line: 266, column: 6, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1742, file: !852, line: 266, column: 6)
!1759 = !DILocation(line: 266, column: 10, scope: !1758)
!1760 = !DILocation(line: 266, column: 6, scope: !1742)
!1761 = !DILocation(line: 269, column: 3, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1758, file: !852, line: 266, column: 16)
!1763 = !DILocation(line: 269, column: 8, scope: !1762)
!1764 = !DILocation(line: 269, column: 19, scope: !1762)
!1765 = !DILocation(line: 270, column: 19, scope: !1762)
!1766 = !DILocation(line: 270, column: 24, scope: !1762)
!1767 = !DILocation(line: 270, column: 3, scope: !1762)
!1768 = !DILocation(line: 271, column: 3, scope: !1762)
!1769 = !DILocation(line: 271, column: 8, scope: !1762)
!1770 = !DILocation(line: 271, column: 17, scope: !1762)
!1771 = !DILocation(line: 272, column: 3, scope: !1762)
!1772 = !DILocation(line: 275, column: 21, scope: !1742)
!1773 = !DILocation(line: 275, column: 26, scope: !1742)
!1774 = !DILocation(line: 275, column: 34, scope: !1742)
!1775 = !DILocation(line: 275, column: 42, scope: !1742)
!1776 = !DILocation(line: 275, column: 8, scope: !1742)
!1777 = !DILocation(line: 275, column: 6, scope: !1742)
!1778 = !DILocation(line: 276, column: 6, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1742, file: !852, line: 276, column: 6)
!1780 = !DILocation(line: 276, column: 10, scope: !1779)
!1781 = !DILocation(line: 276, column: 6, scope: !1742)
!1782 = !DILocation(line: 276, column: 31, scope: !1783)
!1783 = !DILexicalBlockFile(scope: !1779, file: !852, discriminator: 1)
!1784 = !DILocation(line: 276, column: 15, scope: !1783)
!1785 = !DILocation(line: 276, column: 20, scope: !1783)
!1786 = !DILocation(line: 276, column: 28, scope: !1783)
!1787 = !DILocation(line: 277, column: 2, scope: !1742)
!1788 = !DILocation(line: 277, column: 7, scope: !1742)
!1789 = !DILocation(line: 277, column: 18, scope: !1742)
!1790 = !DILocation(line: 279, column: 8, scope: !1742)
!1791 = !DILocation(line: 279, column: 13, scope: !1742)
!1792 = !DILocation(line: 279, column: 22, scope: !1742)
!1793 = !DILocation(line: 279, column: 27, scope: !1742)
!1794 = !DILocation(line: 279, column: 2, scope: !1742)
!1795 = !DILocation(line: 281, column: 40, scope: !1742)
!1796 = !DILocation(line: 281, column: 2, scope: !1742)
!1797 = !DILocation(line: 282, column: 1, scope: !1742)
!1798 = !DILocation(line: 282, column: 1, scope: !1799)
!1799 = !DILexicalBlockFile(scope: !1742, file: !852, discriminator: 1)
!1800 = distinct !DISubprogram(name: "dcc_send_add", scope: !852, file: !852, line: 92, type: !1801, isLocal: true, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !853)
!1801 = !DISubroutineType(types: !1802)
!1802 = !{null, !534, !757, !534, !119, !90, !90}
!1803 = !DILocalVariable(name: "servertag", arg: 1, scope: !1800, file: !852, line: 92, type: !534)
!1804 = !DILocation(line: 92, column: 38, scope: !1800)
!1805 = !DILocalVariable(name: "chat", arg: 2, scope: !1800, file: !852, line: 92, type: !757)
!1806 = !DILocation(line: 92, column: 63, scope: !1800)
!1807 = !DILocalVariable(name: "nick", arg: 3, scope: !1800, file: !852, line: 93, type: !534)
!1808 = !DILocation(line: 93, column: 17, scope: !1800)
!1809 = !DILocalVariable(name: "fileargs", arg: 4, scope: !1800, file: !852, line: 93, type: !119)
!1810 = !DILocation(line: 93, column: 29, scope: !1800)
!1811 = !DILocalVariable(name: "add_mode", arg: 5, scope: !1800, file: !852, line: 93, type: !90)
!1812 = !DILocation(line: 93, column: 43, scope: !1800)
!1813 = !DILocalVariable(name: "passive", arg: 6, scope: !1800, file: !852, line: 94, type: !90)
!1814 = !DILocation(line: 94, column: 9, scope: !1800)
!1815 = !DILocalVariable(name: "st", scope: !1800, file: !852, line: 96, type: !1270)
!1816 = !DILocation(line: 96, column: 14, scope: !1800)
!1817 = !DILocalVariable(name: "globbuf", scope: !1800, file: !852, line: 97, type: !1818)
!1818 = !DIDerivedType(tag: DW_TAG_typedef, name: "glob_t", file: !1819, line: 105, baseType: !1820)
!1819 = !DIFile(filename: "/usr/include/glob.h", directory: "/home/lichi/Desktop/irssi/task1")
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1819, line: 82, size: 576, align: 64, elements: !1821)
!1821 = !{!1822, !1825, !1826, !1827, !1828, !1832, !1836, !1840, !1846}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "gl_pathc", scope: !1820, file: !1819, line: 84, baseType: !1823, size: 64, align: 64)
!1823 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1824, line: 216, baseType: !199)
!1824 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/irssi/task1")
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "gl_pathv", scope: !1820, file: !1819, line: 85, baseType: !548, size: 64, align: 64, offset: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "gl_offs", scope: !1820, file: !1819, line: 86, baseType: !1823, size: 64, align: 64, offset: 128)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "gl_flags", scope: !1820, file: !1819, line: 87, baseType: !90, size: 32, align: 32, offset: 192)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "gl_closedir", scope: !1820, file: !1819, line: 91, baseType: !1829, size: 64, align: 64, offset: 256)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64, align: 64)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{null, !82}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "gl_readdir", scope: !1820, file: !1819, line: 95, baseType: !1833, size: 64, align: 64, offset: 320)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64, align: 64)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{!82, !82}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "gl_opendir", scope: !1820, file: !1819, line: 97, baseType: !1837, size: 64, align: 64, offset: 384)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64, align: 64)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{!82, !534}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "gl_lstat", scope: !1820, file: !1819, line: 102, baseType: !1841, size: 64, align: 64, offset: 448)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64, align: 64)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{!90, !1844, !1845}
!1844 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !534)
!1845 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !82)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "gl_stat", scope: !1820, file: !1819, line: 103, baseType: !1841, size: 64, align: 64, offset: 512)
!1847 = !DILocation(line: 97, column: 9, scope: !1800)
!1848 = !DILocalVariable(name: "fname", scope: !1800, file: !852, line: 98, type: !119)
!1849 = !DILocation(line: 98, column: 8, scope: !1800)
!1850 = !DILocalVariable(name: "i", scope: !1800, file: !852, line: 99, type: !90)
!1851 = !DILocation(line: 99, column: 6, scope: !1800)
!1852 = !DILocalVariable(name: "ret", scope: !1800, file: !852, line: 99, type: !90)
!1853 = !DILocation(line: 99, column: 9, scope: !1800)
!1854 = !DILocalVariable(name: "files", scope: !1800, file: !852, line: 99, type: !90)
!1855 = !DILocation(line: 99, column: 14, scope: !1800)
!1856 = !DILocalVariable(name: "flags", scope: !1800, file: !852, line: 99, type: !90)
!1857 = !DILocation(line: 99, column: 21, scope: !1800)
!1858 = !DILocalVariable(name: "queue", scope: !1800, file: !852, line: 99, type: !90)
!1859 = !DILocation(line: 99, column: 28, scope: !1800)
!1860 = !DILocalVariable(name: "start_new_transfer", scope: !1800, file: !852, line: 99, type: !90)
!1861 = !DILocation(line: 99, column: 35, scope: !1800)
!1862 = !DILocation(line: 101, column: 2, scope: !1800)
!1863 = !DILocation(line: 102, column: 15, scope: !1800)
!1864 = !DILocation(line: 105, column: 2, scope: !1800)
!1865 = !DILocation(line: 106, column: 11, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !852, line: 105, column: 11)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !852, line: 105, column: 2)
!1868 = distinct !DILexicalBlock(scope: !1800, file: !852, line: 105, column: 2)
!1869 = !DILocation(line: 106, column: 9, scope: !1866)
!1870 = !DILocation(line: 107, column: 8, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1866, file: !852, line: 107, column: 7)
!1872 = !DILocation(line: 107, column: 7, scope: !1871)
!1873 = !DILocation(line: 107, column: 14, scope: !1871)
!1874 = !DILocation(line: 107, column: 7, scope: !1866)
!1875 = !DILocation(line: 108, column: 4, scope: !1871)
!1876 = !DILocation(line: 110, column: 12, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1866, file: !852, line: 110, column: 7)
!1878 = !DILocation(line: 110, column: 19, scope: !1877)
!1879 = !DILocation(line: 110, column: 7, scope: !1877)
!1880 = !DILocation(line: 110, column: 39, scope: !1877)
!1881 = !DILocation(line: 110, column: 7, scope: !1866)
!1882 = !DILocation(line: 111, column: 4, scope: !1877)
!1883 = !DILocation(line: 115, column: 9, scope: !1866)
!1884 = !DILocation(line: 105, column: 2, scope: !1885)
!1885 = !DILexicalBlockFile(scope: !1867, file: !852, discriminator: 1)
!1886 = distinct !{!1886, !1864}
!1887 = !DILocation(line: 118, column: 8, scope: !1800)
!1888 = !DILocation(line: 118, column: 19, scope: !1800)
!1889 = !DILocation(line: 118, column: 44, scope: !1800)
!1890 = !DILocation(line: 121, column: 9, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1800, file: !852, line: 121, column: 2)
!1892 = !DILocation(line: 121, column: 7, scope: !1891)
!1893 = !DILocation(line: 121, column: 14, scope: !1894)
!1894 = !DILexicalBlockFile(scope: !1895, file: !852, discriminator: 1)
!1895 = distinct !DILexicalBlock(scope: !1891, file: !852, line: 121, column: 2)
!1896 = !DILocation(line: 121, column: 26, scope: !1894)
!1897 = !DILocation(line: 121, column: 16, scope: !1894)
!1898 = !DILocation(line: 121, column: 2, scope: !1894)
!1899 = !DILocalVariable(name: "fname", scope: !1900, file: !852, line: 122, type: !119)
!1900 = distinct !DILexicalBlock(scope: !1895, file: !852, line: 121, column: 41)
!1901 = !DILocation(line: 122, column: 9, scope: !1900)
!1902 = !DILocation(line: 122, column: 52, scope: !1900)
!1903 = !DILocation(line: 122, column: 35, scope: !1900)
!1904 = !DILocation(line: 122, column: 43, scope: !1900)
!1905 = !DILocation(line: 122, column: 17, scope: !1900)
!1906 = !DILocation(line: 124, column: 14, scope: !1900)
!1907 = !DILocation(line: 124, column: 9, scope: !1900)
!1908 = !DILocation(line: 124, column: 7, scope: !1900)
!1909 = !DILocation(line: 125, column: 7, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1900, file: !852, line: 125, column: 7)
!1911 = !DILocation(line: 125, column: 11, scope: !1910)
!1912 = !DILocation(line: 125, column: 16, scope: !1910)
!1913 = !DILocation(line: 125, column: 21, scope: !1914)
!1914 = !DILexicalBlockFile(scope: !1910, file: !852, discriminator: 1)
!1915 = !DILocation(line: 125, column: 32, scope: !1914)
!1916 = !DILocation(line: 125, column: 7, scope: !1914)
!1917 = !DILocation(line: 127, column: 5, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1910, file: !852, line: 125, column: 39)
!1919 = !DILocation(line: 127, column: 9, scope: !1918)
!1920 = !DILocation(line: 128, column: 8, scope: !1918)
!1921 = !DILocation(line: 129, column: 3, scope: !1918)
!1922 = !DILocation(line: 131, column: 7, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1900, file: !852, line: 131, column: 7)
!1924 = !DILocation(line: 131, column: 11, scope: !1923)
!1925 = !DILocation(line: 131, column: 7, scope: !1900)
!1926 = !DILocation(line: 133, column: 9, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1923, file: !852, line: 131, column: 16)
!1928 = !DILocation(line: 133, column: 15, scope: !1927)
!1929 = !DILocation(line: 133, column: 23, scope: !1927)
!1930 = !DILocation(line: 133, column: 22, scope: !1927)
!1931 = !DILocation(line: 132, column: 4, scope: !1927)
!1932 = !DILocation(line: 134, column: 11, scope: !1927)
!1933 = !DILocation(line: 134, column: 4, scope: !1927)
!1934 = !DILocation(line: 135, column: 4, scope: !1927)
!1935 = !DILocation(line: 138, column: 7, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1900, file: !852, line: 138, column: 7)
!1937 = !DILocation(line: 138, column: 13, scope: !1936)
!1938 = !DILocation(line: 138, column: 7, scope: !1900)
!1939 = !DILocation(line: 143, column: 8, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1941, file: !852, line: 143, column: 8)
!1941 = distinct !DILexicalBlock(scope: !1936, file: !852, line: 138, column: 18)
!1942 = !DILocation(line: 143, column: 17, scope: !1940)
!1943 = !DILocation(line: 143, column: 8, scope: !1941)
!1944 = !DILocation(line: 144, column: 27, scope: !1940)
!1945 = !DILocation(line: 144, column: 33, scope: !1940)
!1946 = !DILocation(line: 144, column: 13, scope: !1940)
!1947 = !DILocation(line: 144, column: 11, scope: !1940)
!1948 = !DILocation(line: 144, column: 5, scope: !1940)
!1949 = !DILocation(line: 145, column: 23, scope: !1941)
!1950 = !DILocation(line: 146, column: 8, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1941, file: !852, line: 146, column: 8)
!1952 = !DILocation(line: 146, column: 14, scope: !1951)
!1953 = !DILocation(line: 146, column: 8, scope: !1941)
!1954 = !DILocation(line: 147, column: 13, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1951, file: !852, line: 146, column: 19)
!1956 = !DILocation(line: 147, column: 11, scope: !1955)
!1957 = !DILocation(line: 148, column: 24, scope: !1955)
!1958 = !DILocation(line: 149, column: 4, scope: !1955)
!1959 = !DILocation(line: 150, column: 3, scope: !1941)
!1960 = !DILocation(line: 152, column: 17, scope: !1900)
!1961 = !DILocation(line: 152, column: 24, scope: !1900)
!1962 = !DILocation(line: 152, column: 34, scope: !1900)
!1963 = !DILocation(line: 153, column: 10, scope: !1900)
!1964 = !DILocation(line: 153, column: 17, scope: !1900)
!1965 = !DILocation(line: 153, column: 28, scope: !1900)
!1966 = !DILocation(line: 153, column: 34, scope: !1900)
!1967 = !DILocation(line: 152, column: 3, scope: !1900)
!1968 = !DILocation(line: 154, column: 8, scope: !1900)
!1969 = !DILocation(line: 155, column: 10, scope: !1900)
!1970 = !DILocation(line: 155, column: 3, scope: !1900)
!1971 = !DILocation(line: 156, column: 2, scope: !1900)
!1972 = !DILocation(line: 121, column: 37, scope: !1973)
!1973 = !DILexicalBlockFile(scope: !1895, file: !852, discriminator: 2)
!1974 = !DILocation(line: 121, column: 2, scope: !1973)
!1975 = distinct !{!1975, !1976}
!1976 = !DILocation(line: 121, column: 2, scope: !1800)
!1977 = !DILocation(line: 158, column: 6, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1800, file: !852, line: 158, column: 6)
!1979 = !DILocation(line: 158, column: 12, scope: !1978)
!1980 = !DILocation(line: 158, column: 16, scope: !1978)
!1981 = !DILocation(line: 158, column: 19, scope: !1982)
!1982 = !DILexicalBlockFile(scope: !1978, file: !852, discriminator: 1)
!1983 = !DILocation(line: 158, column: 6, scope: !1982)
!1984 = !DILocation(line: 159, column: 23, scope: !1978)
!1985 = !DILocation(line: 159, column: 3, scope: !1978)
!1986 = !DILocation(line: 161, column: 2, scope: !1800)
!1987 = !DILocation(line: 162, column: 1, scope: !1800)
