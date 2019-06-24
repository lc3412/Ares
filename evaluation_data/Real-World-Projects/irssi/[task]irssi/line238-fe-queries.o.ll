; ModuleID = './line238-fe-queries.o.i'
source_filename = "./line238-fe-queries.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GSList = type { i8*, %struct._GSList* }
%struct._WINDOW_REC = type { i32, i8*, i32, i32, %struct._GSList*, %struct._WI_ITEM_REC*, %struct._SERVER_REC*, %struct._SERVER_REC*, i8*, i32, %struct._GSList*, i8, %struct.HISTORY_REC*, i8*, i32, i8*, i64, i64, i8*, i8*, i8* }
%struct._WI_ITEM_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, {}*, i8* (%struct._WI_ITEM_REC*)* }
%struct._GHashTable = type opaque
%struct._SERVER_REC = type { i32, i32, i32, %struct._SERVER_CONNECT_REC*, i64, i64, i8*, i8*, i8, %struct._NET_SENDBUF_REC*, i32, [2 x %struct._GIOChannel*], i32, i32, %struct._RAWLOG_REC*, %struct._GHashTable*, i8*, i8*, i8*, i8, %struct._GTimeVal, i64, i32, %struct._GSList*, %struct._GSList*, void (%struct._SERVER_REC*, i8*, i32)*, i32 (%struct._SERVER_REC*, i8)*, i32 (%struct._SERVER_REC*, i8*)*, i8* (%struct._SERVER_REC*)*, void (%struct._SERVER_REC*, i8*, i8*, i32)*, i8** (%struct._SERVER_REC*, i8*, i8*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)*, %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)* }
%struct._SERVER_CONNECT_REC = type { i32, i32, i32, i8*, i32, i8*, i8*, i8*, i16, i8*, i8*, i32, i8*, %struct._IPADDR*, %struct._IPADDR*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._GIOChannel*, i8, i8*, i8* }
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
%struct._GString = type { i8*, i64, i64 }
%struct._NET_SENDBUF_REC = type opaque
%struct._RAWLOG_REC = type opaque
%struct._GTimeVal = type { i64, i64 }
%struct._CHANNEL_REC = type opaque
%struct._QUERY_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, i8 }
%struct.HISTORY_REC = type { i8*, %struct._GList*, i32, i32, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._CHAT_PROTOCOL_REC = type { i32, i8, i8*, i8*, i8*, %struct._CHATNET_REC* ()*, %struct._SERVER_SETUP_REC* ()*, %struct._CHANNEL_SETUP_REC* ()*, %struct._SERVER_CONNECT_REC* ()*, void (%struct._SERVER_CONNECT_REC*)*, %struct._SERVER_REC* (%struct._SERVER_CONNECT_REC*)*, void (%struct._SERVER_REC*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*, i8*, i32)*, %struct._QUERY_REC* (i8*, i8*, i32)* }
%struct._CHATNET_REC = type opaque
%struct._SERVER_SETUP_REC = type opaque
%struct._CHANNEL_SETUP_REC = type opaque
%struct._TEXT_DEST_REC = type { %struct._WINDOW_REC*, %struct._SERVER_REC*, i8*, i8*, i8*, i8*, i32, i32, i8*, i32 }
%struct.WINDOW_BIND_REC = type { i8*, i8*, i8 }

@.str = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@__func__.privmsg_get_query = private unnamed_addr constant [18 x i8] c"privmsg_get_query\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"IS_SERVER(server)\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"nick != NULL\00", align 1
@command_hide_output = external global i32, align 4
@querycreate_level = internal global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"autocreate_own_query\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"fe-common/core\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"lookandfeel\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"autocreate_query_level\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"MSGS DCCMSGS\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"autoclose_query\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@queryclose_tag = internal global i32 0, align 4
@.str.10 = private unnamed_addr constant [14 x i8] c"query created\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"query destroyed\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"query server changed\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"query nick changed\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"window item server changed\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"server connected\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"window changed\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"message private\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"setup changed\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"query\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"unquery\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"window server\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"window\00", align 1
@query_auto_close = internal global i32 0, align 4
@queries = external global %struct._GSList*, align 8
@active_win = external global %struct._WINDOW_REC*, align 8
@.str.23 = private unnamed_addr constant [17 x i8] c"WINDOW ITEM TYPE\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"QUERY\00", align 1
@__func__.signal_query_created = private unnamed_addr constant [21 x i8] c"signal_query_created\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"IS_QUERY(query)\00", align 1
@__func__.signal_query_destroyed = private unnamed_addr constant [23 x i8] c"signal_query_destroyed\00", align 1
@__func__.signal_query_server_changed = private unnamed_addr constant [28 x i8] c"signal_query_server_changed\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"query != NULL\00", align 1
@__func__.signal_query_nick_changed = private unnamed_addr constant [26 x i8] c"signal_query_nick_changed\00", align 1
@.str.27 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"window item changed\00", align 1
@__func__.cmd_query = private unnamed_addr constant [10 x i8] c"cmd_query\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"error command\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"-nick %s %s\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"command msg\00", align 1
@__func__.signal_query_created_curwin = private unnamed_addr constant [28 x i8] c"signal_query_created_curwin\00", align 1
@__func__.cmd_unquery = private unnamed_addr constant [12 x i8] c"cmd_unquery\00", align 1
@__func__.cmd_window_server = private unnamed_addr constant [18 x i8] c"cmd_window_server\00", align 1

; Function Attrs: nounwind uwtable
define %struct._QUERY_REC* @privmsg_get_query(%struct._SERVER_REC*, i8*, i32, i32) #0 !dbg !784 {
  %5 = alloca %struct._QUERY_REC*, align 8
  %6 = alloca %struct._SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct._QUERY_REC*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %6, metadata !788, metadata !789), !dbg !790
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !791, metadata !789), !dbg !792
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !793, metadata !789), !dbg !794
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !795, metadata !789), !dbg !796
  call void @llvm.dbg.declare(metadata %struct._QUERY_REC** %10, metadata !797, metadata !789), !dbg !798
  br label %11, !dbg !799, !llvm.loop !800

; <label>:11:                                     ; preds = %4
  %12 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !801
  %13 = bitcast %struct._SERVER_REC* %12 to i8*, !dbg !801
  %14 = call i8* @module_check_cast(i8* %13, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)), !dbg !805
  %15 = bitcast i8* %14 to %struct._SERVER_REC*, !dbg !806
  %16 = icmp ne %struct._SERVER_REC* %15, null, !dbg !806
  br i1 %16, label %17, label %18, !dbg !807

; <label>:17:                                     ; preds = %11
  br i1 false, label %20, label %19, !dbg !808

; <label>:18:                                     ; preds = %11
  br i1 false, label %19, label %20, !dbg !810

; <label>:19:                                     ; preds = %18, %17
  br label %21, !dbg !812

; <label>:20:                                     ; preds = %18, %17
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.privmsg_get_query, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0)), !dbg !815
  store %struct._QUERY_REC* null, %struct._QUERY_REC** %5, align 8, !dbg !818
  br label %70, !dbg !818

; <label>:21:                                     ; preds = %19
  br label %22, !dbg !819

; <label>:22:                                     ; preds = %21
  br label %23, !dbg !821, !llvm.loop !822

; <label>:23:                                     ; preds = %22
  %24 = load i8*, i8** %7, align 8, !dbg !823
  %25 = icmp ne i8* %24, null, !dbg !827
  br i1 %25, label %26, label %27, !dbg !823

; <label>:26:                                     ; preds = %23
  br label %28, !dbg !828

; <label>:27:                                     ; preds = %23
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.privmsg_get_query, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)), !dbg !831
  store %struct._QUERY_REC* null, %struct._QUERY_REC** %5, align 8, !dbg !834
  br label %70, !dbg !834

; <label>:28:                                     ; preds = %26
  br label %29, !dbg !835

; <label>:29:                                     ; preds = %28
  %30 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !837
  %31 = load i8*, i8** %7, align 8, !dbg !838
  %32 = call %struct._QUERY_REC* @query_find(%struct._SERVER_REC* %30, i8* %31), !dbg !839
  store %struct._QUERY_REC* %32, %struct._QUERY_REC** %10, align 8, !dbg !840
  %33 = load %struct._QUERY_REC*, %struct._QUERY_REC** %10, align 8, !dbg !841
  %34 = icmp eq %struct._QUERY_REC* %33, null, !dbg !843
  br i1 %34, label %35, label %68, !dbg !844

; <label>:35:                                     ; preds = %29
  %36 = load i32, i32* @command_hide_output, align 4, !dbg !845
  %37 = icmp ne i32 %36, 0, !dbg !845
  br i1 %37, label %68, label %38, !dbg !847

; <label>:38:                                     ; preds = %35
  %39 = load i32, i32* @querycreate_level, align 4, !dbg !848
  %40 = load i32, i32* %9, align 4, !dbg !849
  %41 = and i32 %39, %40, !dbg !850
  %42 = icmp ne i32 %41, 0, !dbg !851
  br i1 %42, label %43, label %68, !dbg !852

; <label>:43:                                     ; preds = %38
  %44 = load i32, i32* %8, align 4, !dbg !853
  %45 = icmp ne i32 %44, 0, !dbg !853
  br i1 %45, label %46, label %49, !dbg !854

; <label>:46:                                     ; preds = %43
  %47 = call i32 @settings_get_bool(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0)), !dbg !855
  %48 = icmp ne i32 %47, 0, !dbg !855
  br i1 %48, label %49, label %68, !dbg !856

; <label>:49:                                     ; preds = %46, %43
  %50 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !858
  %51 = icmp eq %struct._SERVER_REC* %50, null, !dbg !860
  br i1 %51, label %52, label %54, !dbg !861

; <label>:52:                                     ; preds = %49
  %53 = call %struct._CHAT_PROTOCOL_REC* @chat_protocol_get_default(), !dbg !862
  br label %59, !dbg !862

; <label>:54:                                     ; preds = %49
  %55 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !864
  %56 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %55, i32 0, i32 1, !dbg !866
  %57 = load i32, i32* %56, align 4, !dbg !866
  %58 = call %struct._CHAT_PROTOCOL_REC* @chat_protocol_find_id(i32 %57), !dbg !867
  br label %59, !dbg !868

; <label>:59:                                     ; preds = %54, %52
  %60 = phi %struct._CHAT_PROTOCOL_REC* [ %53, %52 ], [ %58, %54 ], !dbg !869
  %61 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %60, i32 0, i32 13, !dbg !871
  %62 = load %struct._QUERY_REC* (i8*, i8*, i32)*, %struct._QUERY_REC* (i8*, i8*, i32)** %61, align 8, !dbg !871
  %63 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !872
  %64 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %63, i32 0, i32 6, !dbg !873
  %65 = load i8*, i8** %64, align 8, !dbg !873
  %66 = load i8*, i8** %7, align 8, !dbg !874
  %67 = call %struct._QUERY_REC* %62(i8* %65, i8* %66, i32 1), !dbg !875
  store %struct._QUERY_REC* %67, %struct._QUERY_REC** %10, align 8, !dbg !876
  br label %68, !dbg !877

; <label>:68:                                     ; preds = %59, %46, %38, %35, %29
  %69 = load %struct._QUERY_REC*, %struct._QUERY_REC** %10, align 8, !dbg !878
  store %struct._QUERY_REC* %69, %struct._QUERY_REC** %5, align 8, !dbg !879
  br label %70, !dbg !879

; <label>:70:                                     ; preds = %68, %27, %20
  %71 = load %struct._QUERY_REC*, %struct._QUERY_REC** %5, align 8, !dbg !880
  ret %struct._QUERY_REC* %71, !dbg !880
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @module_check_cast(i8*, i32, i8*) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare %struct._QUERY_REC* @query_find(%struct._SERVER_REC*, i8*) #2

declare i32 @settings_get_bool(i8*) #2

declare %struct._CHAT_PROTOCOL_REC* @chat_protocol_get_default() #2

declare %struct._CHAT_PROTOCOL_REC* @chat_protocol_find_id(i32) #2

; Function Attrs: nounwind uwtable
define void @fe_queries_init() #0 !dbg !881 {
  call void @settings_add_level_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0)), !dbg !882
  call void @settings_add_bool_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), i32 1), !dbg !883
  call void @settings_add_time_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0)), !dbg !884
  store i32 -1, i32* @queryclose_tag, align 4, !dbg !885
  call void @read_settings(), !dbg !886
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._QUERY_REC*, i8*)* @signal_query_created to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !887
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._QUERY_REC*)* @signal_query_destroyed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !888
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._QUERY_REC*)* @signal_query_server_changed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !889
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._QUERY_REC*, i8*)* @signal_query_nick_changed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !890
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*, %struct._QUERY_REC*)* @signal_window_item_server_changed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !891
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*)* @sig_server_connected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !892
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*, %struct._WINDOW_REC*)* @sig_window_changed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !893
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*, i8*)* @sig_message_private to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !894
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !895
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_query to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !896
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_unquery to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !897
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_window_server to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !898
  call void @command_set_options_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0)), !dbg !899
  ret void, !dbg !900
}

declare void @settings_add_level_module(i8*, i8*, i8*, i8*) #2

declare void @settings_add_bool_module(i8*, i8*, i8*, i32) #2

declare void @settings_add_time_module(i8*, i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @read_settings() #0 !dbg !901 {
  %1 = call i32 @settings_get_level(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0)), !dbg !902
  store i32 %1, i32* @querycreate_level, align 4, !dbg !903
  %2 = call i32 @settings_get_time(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0)), !dbg !904
  %3 = sdiv i32 %2, 1000, !dbg !905
  store i32 %3, i32* @query_auto_close, align 4, !dbg !906
  %4 = load i32, i32* @query_auto_close, align 4, !dbg !907
  %5 = icmp sgt i32 %4, 0, !dbg !909
  br i1 %5, label %6, label %11, !dbg !910

; <label>:6:                                      ; preds = %0
  %7 = load i32, i32* @queryclose_tag, align 4, !dbg !911
  %8 = icmp eq i32 %7, -1, !dbg !913
  br i1 %8, label %9, label %11, !dbg !914

; <label>:9:                                      ; preds = %6
  %10 = call i32 @g_timeout_add(i32 5000, i32 (i8*)* bitcast (i32 ()* @sig_query_autoclose to i32 (i8*)*), i8* null), !dbg !915
  store i32 %10, i32* @queryclose_tag, align 4, !dbg !916
  br label %21, !dbg !917

; <label>:11:                                     ; preds = %6, %0
  %12 = load i32, i32* @query_auto_close, align 4, !dbg !918
  %13 = icmp sle i32 %12, 0, !dbg !920
  br i1 %13, label %14, label %20, !dbg !921

; <label>:14:                                     ; preds = %11
  %15 = load i32, i32* @queryclose_tag, align 4, !dbg !922
  %16 = icmp ne i32 %15, -1, !dbg !924
  br i1 %16, label %17, label %20, !dbg !925

; <label>:17:                                     ; preds = %14
  %18 = load i32, i32* @queryclose_tag, align 4, !dbg !926
  %19 = call i32 @g_source_remove(i32 %18), !dbg !928
  store i32 -1, i32* @queryclose_tag, align 4, !dbg !929
  br label %20, !dbg !930

; <label>:20:                                     ; preds = %17, %14, %11
  br label %21

; <label>:21:                                     ; preds = %20, %9
  ret void, !dbg !931
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @signal_query_created(%struct._QUERY_REC*, i8*) #0 !dbg !932 {
  %3 = alloca %struct._QUERY_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._TEXT_DEST_REC, align 8
  store %struct._QUERY_REC* %0, %struct._QUERY_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._QUERY_REC** %3, metadata !935, metadata !789), !dbg !936
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !937, metadata !789), !dbg !938
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC* %5, metadata !939, metadata !789), !dbg !954
  br label %6, !dbg !955, !llvm.loop !956

; <label>:6:                                      ; preds = %2
  %7 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !957
  %8 = bitcast %struct._QUERY_REC* %7 to i8*, !dbg !957
  %9 = call i8* @module_check_cast_module(i8* %8, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0)), !dbg !961
  %10 = bitcast i8* %9 to %struct._QUERY_REC*, !dbg !962
  %11 = icmp ne %struct._QUERY_REC* %10, null, !dbg !962
  br i1 %11, label %12, label %13, !dbg !963

; <label>:12:                                     ; preds = %6
  br i1 false, label %15, label %14, !dbg !964

; <label>:13:                                     ; preds = %6
  br i1 false, label %14, label %15, !dbg !966

; <label>:14:                                     ; preds = %13, %12
  br label %16, !dbg !968

; <label>:15:                                     ; preds = %13, %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.signal_query_created, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0)), !dbg !971
  br label %47, !dbg !974

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !975

; <label>:17:                                     ; preds = %16
  %18 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !977
  %19 = bitcast %struct._QUERY_REC* %18 to %struct._WI_ITEM_REC*, !dbg !979
  %20 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %19, i32 0, i32 3, !dbg !979
  %21 = load i8*, i8** %20, align 8, !dbg !979
  %22 = bitcast i8* %21 to %struct._WINDOW_REC*, !dbg !980
  %23 = icmp eq %struct._WINDOW_REC* %22, null, !dbg !981
  br i1 %23, label %24, label %30, !dbg !982

; <label>:24:                                     ; preds = %17
  %25 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !983
  %26 = bitcast %struct._QUERY_REC* %25 to %struct._WI_ITEM_REC*, !dbg !985
  %27 = load i8*, i8** %4, align 8, !dbg !986
  %28 = ptrtoint i8* %27 to i64, !dbg !987
  %29 = trunc i64 %28 to i32, !dbg !988
  call void @window_item_create(%struct._WI_ITEM_REC* %26, i32 %29), !dbg !989
  br label %30, !dbg !990

; <label>:30:                                     ; preds = %24, %17
  %31 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !991
  %32 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %31, i32 0, i32 4, !dbg !992
  %33 = load %struct._SERVER_REC*, %struct._SERVER_REC** %32, align 8, !dbg !992
  %34 = bitcast %struct._SERVER_REC* %33 to i8*, !dbg !991
  %35 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !993
  %36 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %35, i32 0, i32 13, !dbg !994
  %37 = load i8*, i8** %36, align 8, !dbg !994
  %38 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !995
  %39 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %38, i32 0, i32 6, !dbg !996
  %40 = load i8*, i8** %39, align 8, !dbg !996
  call void @format_create_dest_tag(%struct._TEXT_DEST_REC* %5, i8* %34, i8* %37, i8* %40, i32 262144, %struct._WINDOW_REC* null), !dbg !997
  %41 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !998
  %42 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %41, i32 0, i32 6, !dbg !999
  %43 = load i8*, i8** %42, align 8, !dbg !999
  %44 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !1000
  %45 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %44, i32 0, i32 13, !dbg !1001
  %46 = load i8*, i8** %45, align 8, !dbg !1001
  call void (i8*, %struct._TEXT_DEST_REC*, i32, ...) @printformat_module_dest(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), %struct._TEXT_DEST_REC* %5, i32 108, i8* %43, i8* %46), !dbg !1002
  br label %47, !dbg !1003

; <label>:47:                                     ; preds = %30, %15
  ret void, !dbg !1004
}

; Function Attrs: nounwind uwtable
define internal void @signal_query_destroyed(%struct._QUERY_REC*) #0 !dbg !1006 {
  %2 = alloca %struct._QUERY_REC*, align 8
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca %struct._TEXT_DEST_REC, align 8
  store %struct._QUERY_REC* %0, %struct._QUERY_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._QUERY_REC** %2, metadata !1009, metadata !789), !dbg !1010
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !1011, metadata !789), !dbg !1012
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC* %4, metadata !1013, metadata !789), !dbg !1014
  br label %5, !dbg !1015, !llvm.loop !1016

; <label>:5:                                      ; preds = %1
  %6 = load %struct._QUERY_REC*, %struct._QUERY_REC** %2, align 8, !dbg !1017
  %7 = bitcast %struct._QUERY_REC* %6 to i8*, !dbg !1017
  %8 = call i8* @module_check_cast_module(i8* %7, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0)), !dbg !1021
  %9 = bitcast i8* %8 to %struct._QUERY_REC*, !dbg !1022
  %10 = icmp ne %struct._QUERY_REC* %9, null, !dbg !1022
  br i1 %10, label %11, label %12, !dbg !1023

; <label>:11:                                     ; preds = %5
  br i1 false, label %14, label %13, !dbg !1024

; <label>:12:                                     ; preds = %5
  br i1 false, label %13, label %14, !dbg !1026

; <label>:13:                                     ; preds = %12, %11
  br label %15, !dbg !1028

; <label>:14:                                     ; preds = %12, %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.signal_query_destroyed, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0)), !dbg !1031
  br label %58, !dbg !1034

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !1035

; <label>:16:                                     ; preds = %15
  %17 = load %struct._QUERY_REC*, %struct._QUERY_REC** %2, align 8, !dbg !1037
  %18 = bitcast %struct._QUERY_REC* %17 to %struct._WI_ITEM_REC*, !dbg !1038
  %19 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %18, i32 0, i32 3, !dbg !1038
  %20 = load i8*, i8** %19, align 8, !dbg !1038
  %21 = bitcast i8* %20 to %struct._WINDOW_REC*, !dbg !1039
  store %struct._WINDOW_REC* %21, %struct._WINDOW_REC** %3, align 8, !dbg !1040
  %22 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1041
  %23 = icmp eq %struct._WINDOW_REC* %22, null, !dbg !1043
  br i1 %23, label %24, label %25, !dbg !1044

; <label>:24:                                     ; preds = %16
  br label %58, !dbg !1045

; <label>:25:                                     ; preds = %16
  %26 = load %struct._QUERY_REC*, %struct._QUERY_REC** %2, align 8, !dbg !1046
  %27 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %26, i32 0, i32 4, !dbg !1047
  %28 = load %struct._SERVER_REC*, %struct._SERVER_REC** %27, align 8, !dbg !1047
  %29 = bitcast %struct._SERVER_REC* %28 to i8*, !dbg !1046
  %30 = load %struct._QUERY_REC*, %struct._QUERY_REC** %2, align 8, !dbg !1048
  %31 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %30, i32 0, i32 13, !dbg !1049
  %32 = load i8*, i8** %31, align 8, !dbg !1049
  %33 = load %struct._QUERY_REC*, %struct._QUERY_REC** %2, align 8, !dbg !1050
  %34 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %33, i32 0, i32 6, !dbg !1051
  %35 = load i8*, i8** %34, align 8, !dbg !1051
  call void @format_create_dest_tag(%struct._TEXT_DEST_REC* %4, i8* %29, i8* %32, i8* %35, i32 262144, %struct._WINDOW_REC* null), !dbg !1052
  %36 = load %struct._QUERY_REC*, %struct._QUERY_REC** %2, align 8, !dbg !1053
  %37 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %36, i32 0, i32 6, !dbg !1054
  %38 = load i8*, i8** %37, align 8, !dbg !1054
  call void (i8*, %struct._TEXT_DEST_REC*, i32, ...) @printformat_module_dest(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), %struct._TEXT_DEST_REC* %4, i32 109, i8* %38), !dbg !1055
  %39 = load %struct._QUERY_REC*, %struct._QUERY_REC** %2, align 8, !dbg !1056
  %40 = bitcast %struct._QUERY_REC* %39 to %struct._WI_ITEM_REC*, !dbg !1057
  call void @window_item_destroy(%struct._WI_ITEM_REC* %40), !dbg !1058
  %41 = load %struct._QUERY_REC*, %struct._QUERY_REC** %2, align 8, !dbg !1059
  %42 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %41, i32 0, i32 15, !dbg !1061
  %43 = load i8, i8* %42, align 8, !dbg !1061
  %44 = and i8 %43, 1, !dbg !1061
  %45 = zext i8 %44 to i32, !dbg !1061
  %46 = icmp ne i32 %45, 0, !dbg !1059
  br i1 %46, label %49, label %47, !dbg !1062

; <label>:47:                                     ; preds = %25
  %48 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1063
  call void @window_auto_destroy(%struct._WINDOW_REC* %48), !dbg !1064
  br label %58, !dbg !1064

; <label>:49:                                     ; preds = %25
  %50 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1065
  %51 = load %struct._QUERY_REC*, %struct._QUERY_REC** %2, align 8, !dbg !1067
  %52 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %51, i32 0, i32 13, !dbg !1068
  %53 = load i8*, i8** %52, align 8, !dbg !1068
  %54 = load %struct._QUERY_REC*, %struct._QUERY_REC** %2, align 8, !dbg !1069
  %55 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %54, i32 0, i32 6, !dbg !1070
  %56 = load i8*, i8** %55, align 8, !dbg !1070
  %57 = call %struct.WINDOW_BIND_REC* @window_bind_add(%struct._WINDOW_REC* %50, i8* %53, i8* %56), !dbg !1071
  br label %58

; <label>:58:                                     ; preds = %14, %24, %49, %47
  ret void, !dbg !1072
}

; Function Attrs: nounwind uwtable
define internal void @signal_query_server_changed(%struct._QUERY_REC*) #0 !dbg !1073 {
  %2 = alloca %struct._QUERY_REC*, align 8
  %3 = alloca %struct._WINDOW_REC*, align 8
  store %struct._QUERY_REC* %0, %struct._QUERY_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._QUERY_REC** %2, metadata !1074, metadata !789), !dbg !1075
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !1076, metadata !789), !dbg !1077
  br label %4, !dbg !1078, !llvm.loop !1079

; <label>:4:                                      ; preds = %1
  %5 = load %struct._QUERY_REC*, %struct._QUERY_REC** %2, align 8, !dbg !1080
  %6 = icmp ne %struct._QUERY_REC* %5, null, !dbg !1084
  br i1 %6, label %7, label %8, !dbg !1080

; <label>:7:                                      ; preds = %4
  br label %9, !dbg !1085

; <label>:8:                                      ; preds = %4
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.signal_query_server_changed, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0)), !dbg !1088
  br label %28, !dbg !1091

; <label>:9:                                      ; preds = %7
  br label %10, !dbg !1092

; <label>:10:                                     ; preds = %9
  %11 = load %struct._QUERY_REC*, %struct._QUERY_REC** %2, align 8, !dbg !1094
  %12 = bitcast %struct._QUERY_REC* %11 to %struct._WI_ITEM_REC*, !dbg !1095
  %13 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %12, i32 0, i32 3, !dbg !1095
  %14 = load i8*, i8** %13, align 8, !dbg !1095
  %15 = bitcast i8* %14 to %struct._WINDOW_REC*, !dbg !1096
  store %struct._WINDOW_REC* %15, %struct._WINDOW_REC** %3, align 8, !dbg !1097
  %16 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1098
  %17 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %16, i32 0, i32 5, !dbg !1100
  %18 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %17, align 8, !dbg !1100
  %19 = load %struct._QUERY_REC*, %struct._QUERY_REC** %2, align 8, !dbg !1101
  %20 = bitcast %struct._QUERY_REC* %19 to %struct._WI_ITEM_REC*, !dbg !1102
  %21 = icmp eq %struct._WI_ITEM_REC* %18, %20, !dbg !1103
  br i1 %21, label %22, label %28, !dbg !1104

; <label>:22:                                     ; preds = %10
  %23 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1105
  %24 = load %struct._QUERY_REC*, %struct._QUERY_REC** %2, align 8, !dbg !1106
  %25 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %24, i32 0, i32 4, !dbg !1107
  %26 = load %struct._SERVER_REC*, %struct._SERVER_REC** %25, align 8, !dbg !1107
  %27 = bitcast %struct._SERVER_REC* %26 to i8*, !dbg !1106
  call void @window_change_server(%struct._WINDOW_REC* %23, i8* %27), !dbg !1108
  br label %28, !dbg !1108

; <label>:28:                                     ; preds = %8, %22, %10
  ret void, !dbg !1109
}

; Function Attrs: nounwind uwtable
define internal void @signal_query_nick_changed(%struct._QUERY_REC*, i8*) #0 !dbg !1110 {
  %3 = alloca %struct._QUERY_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._TEXT_DEST_REC, align 8
  store %struct._QUERY_REC* %0, %struct._QUERY_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._QUERY_REC** %3, metadata !1113, metadata !789), !dbg !1114
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1115, metadata !789), !dbg !1116
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC* %5, metadata !1117, metadata !789), !dbg !1118
  br label %6, !dbg !1119, !llvm.loop !1120

; <label>:6:                                      ; preds = %2
  %7 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !1121
  %8 = icmp ne %struct._QUERY_REC* %7, null, !dbg !1125
  br i1 %8, label %9, label %10, !dbg !1121

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !1126

; <label>:10:                                     ; preds = %6
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.signal_query_nick_changed, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0)), !dbg !1129
  br label %56, !dbg !1132

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !1133

; <label>:12:                                     ; preds = %11
  %13 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !1135
  %14 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %13, i32 0, i32 4, !dbg !1136
  %15 = load %struct._SERVER_REC*, %struct._SERVER_REC** %14, align 8, !dbg !1136
  %16 = bitcast %struct._SERVER_REC* %15 to i8*, !dbg !1135
  %17 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !1137
  %18 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %17, i32 0, i32 13, !dbg !1138
  %19 = load i8*, i8** %18, align 8, !dbg !1138
  %20 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !1139
  %21 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %20, i32 0, i32 6, !dbg !1140
  %22 = load i8*, i8** %21, align 8, !dbg !1140
  call void @format_create_dest_tag(%struct._TEXT_DEST_REC* %5, i8* %16, i8* %19, i8* %22, i32 32768, %struct._WINDOW_REC* null), !dbg !1141
  %23 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !1142
  %24 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %23, i32 0, i32 6, !dbg !1144
  %25 = load i8*, i8** %24, align 8, !dbg !1144
  %26 = load i8*, i8** %4, align 8, !dbg !1145
  %27 = call i32 @g_ascii_strcasecmp(i8* %25, i8* %26), !dbg !1146
  %28 = icmp ne i32 %27, 0, !dbg !1147
  br i1 %28, label %29, label %48, !dbg !1148

; <label>:29:                                     ; preds = %12
  %30 = load i8*, i8** %4, align 8, !dbg !1149
  %31 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !1151
  %32 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %31, i32 0, i32 6, !dbg !1152
  %33 = load i8*, i8** %32, align 8, !dbg !1152
  %34 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !1153
  %35 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %34, i32 0, i32 6, !dbg !1154
  %36 = load i8*, i8** %35, align 8, !dbg !1154
  %37 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !1155
  %38 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %37, i32 0, i32 12, !dbg !1156
  %39 = load i8*, i8** %38, align 8, !dbg !1156
  %40 = icmp eq i8* %39, null, !dbg !1157
  br i1 %40, label %41, label %42, !dbg !1155

; <label>:41:                                     ; preds = %29
  br label %46, !dbg !1158

; <label>:42:                                     ; preds = %29
  %43 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !1160
  %44 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %43, i32 0, i32 12, !dbg !1162
  %45 = load i8*, i8** %44, align 8, !dbg !1162
  br label %46, !dbg !1163

; <label>:46:                                     ; preds = %42, %41
  %47 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.27, i32 0, i32 0), %41 ], [ %45, %42 ], !dbg !1164
  call void (i8*, %struct._TEXT_DEST_REC*, i32, ...) @printformat_module_dest(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), %struct._TEXT_DEST_REC* %5, i32 73, i8* %30, i8* %33, i8* %36, i8* %47), !dbg !1166
  br label %48, !dbg !1167

; <label>:48:                                     ; preds = %46, %12
  %49 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !1168
  %50 = bitcast %struct._QUERY_REC* %49 to %struct._WI_ITEM_REC*, !dbg !1169
  %51 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %50, i32 0, i32 3, !dbg !1169
  %52 = load i8*, i8** %51, align 8, !dbg !1169
  %53 = bitcast i8* %52 to %struct._WINDOW_REC*, !dbg !1170
  %54 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !1171
  %55 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i32 0, i32 0), i32 2, %struct._WINDOW_REC* %53, %struct._QUERY_REC* %54), !dbg !1172
  br label %56, !dbg !1173

; <label>:56:                                     ; preds = %48, %10
  ret void, !dbg !1174
}

; Function Attrs: nounwind uwtable
define internal void @signal_window_item_server_changed(%struct._WINDOW_REC*, %struct._QUERY_REC*) #0 !dbg !1176 {
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca %struct._QUERY_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !1179, metadata !789), !dbg !1180
  store %struct._QUERY_REC* %1, %struct._QUERY_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._QUERY_REC** %4, metadata !1181, metadata !789), !dbg !1182
  %5 = load %struct._QUERY_REC*, %struct._QUERY_REC** %4, align 8, !dbg !1183
  %6 = bitcast %struct._QUERY_REC* %5 to i8*, !dbg !1183
  %7 = call i8* @module_check_cast_module(i8* %6, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0)), !dbg !1185
  %8 = bitcast i8* %7 to %struct._QUERY_REC*, !dbg !1186
  %9 = icmp ne %struct._QUERY_REC* %8, null, !dbg !1186
  br i1 %9, label %10, label %11, !dbg !1187

; <label>:10:                                     ; preds = %2
  br i1 false, label %40, label %12, !dbg !1188

; <label>:11:                                     ; preds = %2
  br i1 false, label %12, label %40, !dbg !1190

; <label>:12:                                     ; preds = %11, %10
  br label %13, !dbg !1192, !llvm.loop !1194

; <label>:13:                                     ; preds = %12
  %14 = load %struct._QUERY_REC*, %struct._QUERY_REC** %4, align 8, !dbg !1195
  %15 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %14, i32 0, i32 13, !dbg !1199
  %16 = load i8*, i8** %15, align 8, !dbg !1199
  %17 = icmp ne i8* %16, null, !dbg !1195
  br i1 %17, label %18, label %24, !dbg !1195

; <label>:18:                                     ; preds = %13
  %19 = load %struct._QUERY_REC*, %struct._QUERY_REC** %4, align 8, !dbg !1200
  %20 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %19, i32 0, i32 13, !dbg !1203
  %21 = load i8*, i8** %20, align 8, !dbg !1203
  call void @g_free(i8* %21), !dbg !1204
  %22 = load %struct._QUERY_REC*, %struct._QUERY_REC** %4, align 8, !dbg !1205
  %23 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %22, i32 0, i32 13, !dbg !1206
  store i8* null, i8** %23, align 8, !dbg !1207
  br label %24, !dbg !1208

; <label>:24:                                     ; preds = %18, %13
  br label %25, !dbg !1209

; <label>:25:                                     ; preds = %24
  %26 = load %struct._QUERY_REC*, %struct._QUERY_REC** %4, align 8, !dbg !1211
  %27 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %26, i32 0, i32 4, !dbg !1213
  %28 = load %struct._SERVER_REC*, %struct._SERVER_REC** %27, align 8, !dbg !1213
  %29 = icmp ne %struct._SERVER_REC* %28, null, !dbg !1214
  br i1 %29, label %30, label %39, !dbg !1215

; <label>:30:                                     ; preds = %25
  %31 = load %struct._QUERY_REC*, %struct._QUERY_REC** %4, align 8, !dbg !1216
  %32 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %31, i32 0, i32 4, !dbg !1217
  %33 = load %struct._SERVER_REC*, %struct._SERVER_REC** %32, align 8, !dbg !1217
  %34 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %33, i32 0, i32 6, !dbg !1218
  %35 = load i8*, i8** %34, align 8, !dbg !1218
  %36 = call noalias i8* @g_strdup(i8* %35), !dbg !1219
  %37 = load %struct._QUERY_REC*, %struct._QUERY_REC** %4, align 8, !dbg !1220
  %38 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %37, i32 0, i32 13, !dbg !1221
  store i8* %36, i8** %38, align 8, !dbg !1222
  br label %39, !dbg !1220

; <label>:39:                                     ; preds = %30, %25
  br label %40, !dbg !1223

; <label>:40:                                     ; preds = %39, %11, %10
  ret void, !dbg !1224
}

; Function Attrs: nounwind uwtable
define internal void @sig_server_connected(%struct._SERVER_REC*) #0 !dbg !1225 {
  %2 = alloca %struct._SERVER_REC*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct._QUERY_REC*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %2, metadata !1228, metadata !789), !dbg !1229
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !1230, metadata !789), !dbg !1231
  %5 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1232
  %6 = bitcast %struct._SERVER_REC* %5 to i8*, !dbg !1232
  %7 = call i8* @module_check_cast(i8* %6, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)), !dbg !1234
  %8 = bitcast i8* %7 to %struct._SERVER_REC*, !dbg !1235
  %9 = icmp ne %struct._SERVER_REC* %8, null, !dbg !1235
  br i1 %9, label %10, label %11, !dbg !1236

; <label>:10:                                     ; preds = %1
  br i1 false, label %12, label %13, !dbg !1237

; <label>:11:                                     ; preds = %1
  br i1 false, label %13, label %12, !dbg !1239

; <label>:12:                                     ; preds = %11, %10
  br label %59, !dbg !1241

; <label>:13:                                     ; preds = %11, %10
  %14 = load %struct._GSList*, %struct._GSList** @queries, align 8, !dbg !1242
  store %struct._GSList* %14, %struct._GSList** %3, align 8, !dbg !1244
  br label %15, !dbg !1245

; <label>:15:                                     ; preds = %55, %13
  %16 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1246
  %17 = icmp ne %struct._GSList* %16, null, !dbg !1249
  br i1 %17, label %18, label %59, !dbg !1250

; <label>:18:                                     ; preds = %15
  call void @llvm.dbg.declare(metadata %struct._QUERY_REC** %4, metadata !1251, metadata !789), !dbg !1253
  %19 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1254
  %20 = getelementptr inbounds %struct._GSList, %struct._GSList* %19, i32 0, i32 0, !dbg !1255
  %21 = load i8*, i8** %20, align 8, !dbg !1255
  %22 = bitcast i8* %21 to %struct._QUERY_REC*, !dbg !1254
  store %struct._QUERY_REC* %22, %struct._QUERY_REC** %4, align 8, !dbg !1253
  %23 = load %struct._QUERY_REC*, %struct._QUERY_REC** %4, align 8, !dbg !1256
  %24 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %23, i32 0, i32 4, !dbg !1258
  %25 = load %struct._SERVER_REC*, %struct._SERVER_REC** %24, align 8, !dbg !1258
  %26 = icmp eq %struct._SERVER_REC* %25, null, !dbg !1259
  br i1 %26, label %27, label %54, !dbg !1260

; <label>:27:                                     ; preds = %18
  %28 = load %struct._QUERY_REC*, %struct._QUERY_REC** %4, align 8, !dbg !1261
  %29 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %28, i32 0, i32 13, !dbg !1262
  %30 = load i8*, i8** %29, align 8, !dbg !1262
  %31 = icmp eq i8* %30, null, !dbg !1263
  br i1 %31, label %41, label %32, !dbg !1264

; <label>:32:                                     ; preds = %27
  %33 = load %struct._QUERY_REC*, %struct._QUERY_REC** %4, align 8, !dbg !1265
  %34 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %33, i32 0, i32 13, !dbg !1266
  %35 = load i8*, i8** %34, align 8, !dbg !1266
  %36 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1267
  %37 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %36, i32 0, i32 6, !dbg !1268
  %38 = load i8*, i8** %37, align 8, !dbg !1268
  %39 = call i32 @g_ascii_strcasecmp(i8* %35, i8* %38), !dbg !1269
  %40 = icmp eq i32 %39, 0, !dbg !1270
  br i1 %40, label %41, label %54, !dbg !1271

; <label>:41:                                     ; preds = %32, %27
  %42 = load %struct._QUERY_REC*, %struct._QUERY_REC** %4, align 8, !dbg !1273
  %43 = bitcast %struct._QUERY_REC* %42 to %struct._WI_ITEM_REC*, !dbg !1275
  %44 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1276
  %45 = bitcast %struct._SERVER_REC* %44 to i8*, !dbg !1276
  call void @window_item_change_server(%struct._WI_ITEM_REC* %43, i8* %45), !dbg !1277
  %46 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1278
  %47 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %46, i32 0, i32 24, !dbg !1279
  %48 = load %struct._GSList*, %struct._GSList** %47, align 8, !dbg !1279
  %49 = load %struct._QUERY_REC*, %struct._QUERY_REC** %4, align 8, !dbg !1280
  %50 = bitcast %struct._QUERY_REC* %49 to i8*, !dbg !1280
  %51 = call %struct._GSList* @g_slist_append(%struct._GSList* %48, i8* %50), !dbg !1281
  %52 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1282
  %53 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %52, i32 0, i32 24, !dbg !1283
  store %struct._GSList* %51, %struct._GSList** %53, align 8, !dbg !1284
  br label %54, !dbg !1285

; <label>:54:                                     ; preds = %41, %32, %18
  br label %55, !dbg !1286

; <label>:55:                                     ; preds = %54
  %56 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1287
  %57 = getelementptr inbounds %struct._GSList, %struct._GSList* %56, i32 0, i32 1, !dbg !1289
  %58 = load %struct._GSList*, %struct._GSList** %57, align 8, !dbg !1289
  store %struct._GSList* %58, %struct._GSList** %3, align 8, !dbg !1290
  br label %15, !dbg !1291, !llvm.loop !1292

; <label>:59:                                     ; preds = %12, %15
  ret void, !dbg !1294
}

; Function Attrs: nounwind uwtable
define internal void @sig_window_changed(%struct._WINDOW_REC*, %struct._WINDOW_REC*) #0 !dbg !1295 {
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca %struct._WINDOW_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !1298, metadata !789), !dbg !1299
  store %struct._WINDOW_REC* %1, %struct._WINDOW_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %4, metadata !1300, metadata !789), !dbg !1301
  %5 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1302
  call void @window_reset_query_timestamps(%struct._WINDOW_REC* %5), !dbg !1303
  %6 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !1304
  call void @window_reset_query_timestamps(%struct._WINDOW_REC* %6), !dbg !1305
  ret void, !dbg !1306
}

; Function Attrs: nounwind uwtable
define internal void @sig_message_private(%struct._SERVER_REC*, i8*, i8*, i8*, i8*) #0 !dbg !1307 {
  %6 = alloca %struct._SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct._QUERY_REC*, align 8
  %12 = alloca i32, align 4
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %6, metadata !1310, metadata !789), !dbg !1311
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1312, metadata !789), !dbg !1313
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1314, metadata !789), !dbg !1315
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1316, metadata !789), !dbg !1317
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1318, metadata !789), !dbg !1319
  call void @llvm.dbg.declare(metadata %struct._QUERY_REC** %11, metadata !1320, metadata !789), !dbg !1321
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1322, metadata !789), !dbg !1323
  %13 = load i8*, i8** %8, align 8, !dbg !1324
  %14 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !1325
  %15 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %14, i32 0, i32 7, !dbg !1326
  %16 = load i8*, i8** %15, align 8, !dbg !1326
  %17 = call i32 @g_strcmp0(i8* %13, i8* %16), !dbg !1327
  %18 = icmp ne i32 %17, 0, !dbg !1328
  %19 = xor i1 %18, true, !dbg !1328
  %20 = zext i1 %19 to i32, !dbg !1328
  store i32 %20, i32* %12, align 4, !dbg !1323
  %21 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !1329
  %22 = load i32, i32* %12, align 4, !dbg !1330
  %23 = icmp ne i32 %22, 0, !dbg !1330
  br i1 %23, label %24, label %26, !dbg !1330

; <label>:24:                                     ; preds = %5
  %25 = load i8*, i8** %10, align 8, !dbg !1331
  br label %28, !dbg !1333

; <label>:26:                                     ; preds = %5
  %27 = load i8*, i8** %8, align 8, !dbg !1334
  br label %28, !dbg !1336

; <label>:28:                                     ; preds = %26, %24
  %29 = phi i8* [ %25, %24 ], [ %27, %26 ], !dbg !1337
  %30 = call %struct._QUERY_REC* @privmsg_get_query(%struct._SERVER_REC* %21, i8* %29, i32 0, i32 2), !dbg !1339
  store %struct._QUERY_REC* %30, %struct._QUERY_REC** %11, align 8, !dbg !1340
  %31 = load %struct._QUERY_REC*, %struct._QUERY_REC** %11, align 8, !dbg !1341
  %32 = icmp ne %struct._QUERY_REC* %31, null, !dbg !1343
  br i1 %32, label %33, label %37, !dbg !1344

; <label>:33:                                     ; preds = %28
  %34 = call i64 @time(i64* null) #4, !dbg !1345
  %35 = load %struct._QUERY_REC*, %struct._QUERY_REC** %11, align 8, !dbg !1346
  %36 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %35, i32 0, i32 14, !dbg !1347
  store i64 %34, i64* %36, align 8, !dbg !1348
  br label %37, !dbg !1346

; <label>:37:                                     ; preds = %33, %28
  ret void, !dbg !1349
}

declare void @command_bind_full(i8*, i32, i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @cmd_query(i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !1350 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  %7 = alloca %struct._GHashTable*, align 8
  %8 = alloca %struct._QUERY_REC*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct._WINDOW_REC*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1353, metadata !789), !dbg !1354
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !1355, metadata !789), !dbg !1356
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !1357, metadata !789), !dbg !1358
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %7, metadata !1359, metadata !789), !dbg !1360
  call void @llvm.dbg.declare(metadata %struct._QUERY_REC** %8, metadata !1361, metadata !789), !dbg !1362
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1363, metadata !789), !dbg !1364
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1365, metadata !789), !dbg !1366
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1367, metadata !789), !dbg !1368
  br label %13, !dbg !1369, !llvm.loop !1370

; <label>:13:                                     ; preds = %3
  %14 = load i8*, i8** %4, align 8, !dbg !1371
  %15 = icmp ne i8* %14, null, !dbg !1375
  br i1 %15, label %16, label %17, !dbg !1371

; <label>:16:                                     ; preds = %13
  br label %18, !dbg !1376

; <label>:17:                                     ; preds = %13
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.cmd_query, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0)), !dbg !1379
  br label %129, !dbg !1382

; <label>:18:                                     ; preds = %16
  br label %19, !dbg !1383

; <label>:19:                                     ; preds = %18
  %20 = load i8*, i8** %4, align 8, !dbg !1385
  %21 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %20, i8** %11, i32 57346, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), %struct._GHashTable** %7, i8** %9, i8** %10), !dbg !1387
  %22 = icmp ne i32 %21, 0, !dbg !1387
  br i1 %22, label %24, label %23, !dbg !1388

; <label>:23:                                     ; preds = %19
  br label %129, !dbg !1389

; <label>:24:                                     ; preds = %19
  %25 = load i8*, i8** %9, align 8, !dbg !1390
  %26 = load i8, i8* %25, align 1, !dbg !1392
  %27 = sext i8 %26 to i32, !dbg !1392
  %28 = icmp eq i32 %27, 0, !dbg !1393
  br i1 %28, label %29, label %33, !dbg !1394

; <label>:29:                                     ; preds = %24
  %30 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1395
  %31 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1397
  call void @cmd_unquery(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.27, i32 0, i32 0), %struct._SERVER_REC* %30, %struct._WI_ITEM_REC* %31), !dbg !1398
  %32 = load i8*, i8** %11, align 8, !dbg !1399
  call void @cmd_params_free(i8* %32), !dbg !1400
  br label %129, !dbg !1401

; <label>:33:                                     ; preds = %24
  %34 = load %struct._GHashTable*, %struct._GHashTable** %7, align 8, !dbg !1402
  %35 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1403
  %36 = call %struct._SERVER_REC* @cmd_options_get_server(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), %struct._GHashTable* %34, %struct._SERVER_REC* %35), !dbg !1404
  store %struct._SERVER_REC* %36, %struct._SERVER_REC** %5, align 8, !dbg !1405
  %37 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1406
  %38 = icmp eq %struct._SERVER_REC* %37, null, !dbg !1408
  br i1 %38, label %39, label %41, !dbg !1409

; <label>:39:                                     ; preds = %33
  %40 = load i8*, i8** %11, align 8, !dbg !1410
  call void @cmd_params_free(i8* %40), !dbg !1412
  br label %129, !dbg !1413

; <label>:41:                                     ; preds = %33
  %42 = load i8*, i8** %9, align 8, !dbg !1414
  %43 = load i8, i8* %42, align 1, !dbg !1416
  %44 = sext i8 %43 to i32, !dbg !1416
  %45 = icmp ne i32 %44, 61, !dbg !1417
  br i1 %45, label %46, label %63, !dbg !1418

; <label>:46:                                     ; preds = %41
  %47 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1419
  %48 = icmp eq %struct._SERVER_REC* %47, null, !dbg !1421
  br i1 %48, label %56, label %49, !dbg !1422

; <label>:49:                                     ; preds = %46
  %50 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1423
  %51 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %50, i32 0, i32 8, !dbg !1425
  %52 = load i8, i8* %51, align 8, !dbg !1425
  %53 = and i8 %52, 1, !dbg !1425
  %54 = zext i8 %53 to i32, !dbg !1425
  %55 = icmp ne i32 %54, 0, !dbg !1423
  br i1 %55, label %63, label %56, !dbg !1426

; <label>:56:                                     ; preds = %49, %46
  br label %57, !dbg !1427, !llvm.loop !1428

; <label>:57:                                     ; preds = %56
  %58 = load i8*, i8** %11, align 8, !dbg !1429
  call void @cmd_params_free(i8* %58), !dbg !1432
  br label %59, !dbg !1433, !llvm.loop !1434

; <label>:59:                                     ; preds = %57
  %60 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !1436
  call void @signal_stop(), !dbg !1439
  br label %129, !dbg !1441
                                                  ; No predecessors!
  br label %62, !dbg !1442

; <label>:62:                                     ; preds = %61
  br label %63, !dbg !1444

; <label>:63:                                     ; preds = %62, %49, %41
  %64 = load %struct._GHashTable*, %struct._GHashTable** %7, align 8, !dbg !1446
  %65 = call i8* @g_hash_table_lookup(%struct._GHashTable* %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0)), !dbg !1448
  %66 = icmp ne i8* %65, null, !dbg !1449
  br i1 %66, label %67, label %68, !dbg !1450

; <label>:67:                                     ; preds = %63
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._QUERY_REC*)* @signal_query_created_curwin to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1451
  br label %68, !dbg !1453

; <label>:68:                                     ; preds = %67, %63
  %69 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1454
  %70 = load i8*, i8** %9, align 8, !dbg !1455
  %71 = call %struct._QUERY_REC* @query_find(%struct._SERVER_REC* %69, i8* %70), !dbg !1456
  store %struct._QUERY_REC* %71, %struct._QUERY_REC** %8, align 8, !dbg !1457
  %72 = load %struct._QUERY_REC*, %struct._QUERY_REC** %8, align 8, !dbg !1458
  %73 = icmp eq %struct._QUERY_REC* %72, null, !dbg !1460
  br i1 %73, label %74, label %93, !dbg !1461

; <label>:74:                                     ; preds = %68
  %75 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1462
  %76 = icmp eq %struct._SERVER_REC* %75, null, !dbg !1463
  br i1 %76, label %77, label %79, !dbg !1464

; <label>:77:                                     ; preds = %74
  %78 = call %struct._CHAT_PROTOCOL_REC* @chat_protocol_get_default(), !dbg !1465
  br label %84, !dbg !1465

; <label>:79:                                     ; preds = %74
  %80 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1467
  %81 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %80, i32 0, i32 1, !dbg !1469
  %82 = load i32, i32* %81, align 4, !dbg !1469
  %83 = call %struct._CHAT_PROTOCOL_REC* @chat_protocol_find_id(i32 %82), !dbg !1470
  br label %84, !dbg !1471

; <label>:84:                                     ; preds = %79, %77
  %85 = phi %struct._CHAT_PROTOCOL_REC* [ %78, %77 ], [ %83, %79 ], !dbg !1472
  %86 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %85, i32 0, i32 13, !dbg !1474
  %87 = load %struct._QUERY_REC* (i8*, i8*, i32)*, %struct._QUERY_REC* (i8*, i8*, i32)** %86, align 8, !dbg !1474
  %88 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1475
  %89 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %88, i32 0, i32 6, !dbg !1476
  %90 = load i8*, i8** %89, align 8, !dbg !1476
  %91 = load i8*, i8** %9, align 8, !dbg !1477
  %92 = call %struct._QUERY_REC* %87(i8* %90, i8* %91, i32 0), !dbg !1478
  store %struct._QUERY_REC* %92, %struct._QUERY_REC** %8, align 8, !dbg !1479
  br label %108, !dbg !1480

; <label>:93:                                     ; preds = %68
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %12, metadata !1481, metadata !789), !dbg !1483
  %94 = load %struct._QUERY_REC*, %struct._QUERY_REC** %8, align 8, !dbg !1484
  %95 = bitcast %struct._QUERY_REC* %94 to %struct._WI_ITEM_REC*, !dbg !1485
  %96 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %95, i32 0, i32 3, !dbg !1485
  %97 = load i8*, i8** %96, align 8, !dbg !1485
  %98 = bitcast i8* %97 to %struct._WINDOW_REC*, !dbg !1486
  store %struct._WINDOW_REC* %98, %struct._WINDOW_REC** %12, align 8, !dbg !1483
  %99 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %12, align 8, !dbg !1487
  %100 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1489
  %101 = icmp ne %struct._WINDOW_REC* %99, %100, !dbg !1490
  br i1 %101, label %102, label %104, !dbg !1491

; <label>:102:                                    ; preds = %93
  %103 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %12, align 8, !dbg !1492
  call void @window_set_active(%struct._WINDOW_REC* %103), !dbg !1493
  br label %104, !dbg !1493

; <label>:104:                                    ; preds = %102, %93
  %105 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1494
  %106 = load %struct._QUERY_REC*, %struct._QUERY_REC** %8, align 8, !dbg !1495
  %107 = bitcast %struct._QUERY_REC* %106 to %struct._WI_ITEM_REC*, !dbg !1496
  call void @window_item_set_active(%struct._WINDOW_REC* %105, %struct._WI_ITEM_REC* %107), !dbg !1497
  br label %108

; <label>:108:                                    ; preds = %104, %84
  %109 = load %struct._GHashTable*, %struct._GHashTable** %7, align 8, !dbg !1498
  %110 = call i8* @g_hash_table_lookup(%struct._GHashTable* %109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0)), !dbg !1500
  %111 = icmp ne i8* %110, null, !dbg !1501
  br i1 %111, label %112, label %113, !dbg !1502

; <label>:112:                                    ; preds = %108
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._QUERY_REC*)* @signal_query_created_curwin to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1503
  br label %113, !dbg !1505

; <label>:113:                                    ; preds = %112, %108
  %114 = load i8*, i8** %10, align 8, !dbg !1506
  %115 = load i8, i8* %114, align 1, !dbg !1508
  %116 = sext i8 %115 to i32, !dbg !1508
  %117 = icmp ne i32 %116, 0, !dbg !1509
  br i1 %117, label %118, label %127, !dbg !1510

; <label>:118:                                    ; preds = %113
  %119 = load i8*, i8** %9, align 8, !dbg !1511
  %120 = load i8*, i8** %10, align 8, !dbg !1513
  %121 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0), i8* %119, i8* %120), !dbg !1514
  store i8* %121, i8** %10, align 8, !dbg !1515
  %122 = load i8*, i8** %10, align 8, !dbg !1516
  %123 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1517
  %124 = load %struct._QUERY_REC*, %struct._QUERY_REC** %8, align 8, !dbg !1518
  %125 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 3, i8* %122, %struct._SERVER_REC* %123, %struct._QUERY_REC* %124), !dbg !1519
  %126 = load i8*, i8** %10, align 8, !dbg !1520
  call void @g_free(i8* %126), !dbg !1521
  br label %127, !dbg !1522

; <label>:127:                                    ; preds = %118, %113
  %128 = load i8*, i8** %11, align 8, !dbg !1523
  call void @cmd_params_free(i8* %128), !dbg !1524
  br label %129, !dbg !1525

; <label>:129:                                    ; preds = %127, %59, %39, %29, %23, %17
  ret void, !dbg !1526
}

; Function Attrs: nounwind uwtable
define internal void @cmd_unquery(i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !1528 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  %7 = alloca %struct._QUERY_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1529, metadata !789), !dbg !1530
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !1531, metadata !789), !dbg !1532
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !1533, metadata !789), !dbg !1534
  call void @llvm.dbg.declare(metadata %struct._QUERY_REC** %7, metadata !1535, metadata !789), !dbg !1536
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1537, metadata !789), !dbg !1538
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1539, metadata !789), !dbg !1540
  br label %10, !dbg !1541, !llvm.loop !1542

; <label>:10:                                     ; preds = %3
  %11 = load i8*, i8** %4, align 8, !dbg !1543
  %12 = icmp ne i8* %11, null, !dbg !1547
  br i1 %12, label %13, label %14, !dbg !1543

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !1548

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.cmd_unquery, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0)), !dbg !1551
  br label %49, !dbg !1554

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !1555

; <label>:16:                                     ; preds = %15
  %17 = load i8*, i8** %4, align 8, !dbg !1557
  %18 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %17, i8** %9, i32 1, i8** %8), !dbg !1559
  %19 = icmp ne i32 %18, 0, !dbg !1559
  br i1 %19, label %21, label %20, !dbg !1560

; <label>:20:                                     ; preds = %16
  br label %49, !dbg !1561

; <label>:21:                                     ; preds = %16
  %22 = load i8*, i8** %8, align 8, !dbg !1562
  %23 = load i8, i8* %22, align 1, !dbg !1564
  %24 = sext i8 %23 to i32, !dbg !1564
  %25 = icmp eq i32 %24, 0, !dbg !1565
  br i1 %25, label %26, label %31, !dbg !1566

; <label>:26:                                     ; preds = %21
  %27 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1567
  %28 = bitcast %struct._WI_ITEM_REC* %27 to i8*, !dbg !1567
  %29 = call i8* @module_check_cast_module(i8* %28, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0)), !dbg !1569
  %30 = bitcast i8* %29 to %struct._QUERY_REC*, !dbg !1570
  store %struct._QUERY_REC* %30, %struct._QUERY_REC** %7, align 8, !dbg !1571
  br label %42, !dbg !1572

; <label>:31:                                     ; preds = %21
  %32 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1573
  %33 = load i8*, i8** %8, align 8, !dbg !1575
  %34 = call %struct._QUERY_REC* @query_find(%struct._SERVER_REC* %32, i8* %33), !dbg !1576
  store %struct._QUERY_REC* %34, %struct._QUERY_REC** %7, align 8, !dbg !1577
  %35 = load %struct._QUERY_REC*, %struct._QUERY_REC** %7, align 8, !dbg !1578
  %36 = icmp eq %struct._QUERY_REC* %35, null, !dbg !1580
  br i1 %36, label %37, label %41, !dbg !1581

; <label>:37:                                     ; preds = %31
  %38 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1582
  %39 = bitcast %struct._SERVER_REC* %38 to i8*, !dbg !1582
  %40 = load i8*, i8** %8, align 8, !dbg !1582
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* %39, i8* null, i32 1048576, i32 110, i8* %40), !dbg !1584
  br label %41, !dbg !1585

; <label>:41:                                     ; preds = %37, %31
  br label %42

; <label>:42:                                     ; preds = %41, %26
  %43 = load %struct._QUERY_REC*, %struct._QUERY_REC** %7, align 8, !dbg !1586
  %44 = icmp ne %struct._QUERY_REC* %43, null, !dbg !1588
  br i1 %44, label %45, label %47, !dbg !1589

; <label>:45:                                     ; preds = %42
  %46 = load %struct._QUERY_REC*, %struct._QUERY_REC** %7, align 8, !dbg !1590
  call void @query_destroy(%struct._QUERY_REC* %46), !dbg !1591
  br label %47, !dbg !1591

; <label>:47:                                     ; preds = %45, %42
  %48 = load i8*, i8** %9, align 8, !dbg !1592
  call void @cmd_params_free(i8* %48), !dbg !1593
  br label %49, !dbg !1594

; <label>:49:                                     ; preds = %47, %20, %14
  ret void, !dbg !1595
}

; Function Attrs: nounwind uwtable
define internal void @cmd_window_server(i8*) #0 !dbg !1597 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._SERVER_REC*, align 8
  %4 = alloca %struct._QUERY_REC*, align 8
  %5 = alloca %struct._TEXT_DEST_REC, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1600, metadata !789), !dbg !1601
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %3, metadata !1602, metadata !789), !dbg !1603
  call void @llvm.dbg.declare(metadata %struct._QUERY_REC** %4, metadata !1604, metadata !789), !dbg !1605
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC* %5, metadata !1606, metadata !789), !dbg !1607
  br label %6, !dbg !1608, !llvm.loop !1609

; <label>:6:                                      ; preds = %1
  %7 = load i8*, i8** %2, align 8, !dbg !1610
  %8 = icmp ne i8* %7, null, !dbg !1614
  br i1 %8, label %9, label %10, !dbg !1610

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !1615

; <label>:10:                                     ; preds = %6
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.cmd_window_server, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0)), !dbg !1618
  br label %46, !dbg !1621

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !1622

; <label>:12:                                     ; preds = %11
  %13 = load i8*, i8** %2, align 8, !dbg !1624
  %14 = call %struct._SERVER_REC* @server_find_tag(i8* %13), !dbg !1625
  store %struct._SERVER_REC* %14, %struct._SERVER_REC** %3, align 8, !dbg !1626
  %15 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1627
  %16 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %15, i32 0, i32 5, !dbg !1628
  %17 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %16, align 8, !dbg !1628
  %18 = bitcast %struct._WI_ITEM_REC* %17 to i8*, !dbg !1627
  %19 = call i8* @module_check_cast_module(i8* %18, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0)), !dbg !1629
  %20 = bitcast i8* %19 to %struct._QUERY_REC*, !dbg !1630
  store %struct._QUERY_REC* %20, %struct._QUERY_REC** %4, align 8, !dbg !1631
  %21 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1632
  %22 = icmp eq %struct._SERVER_REC* %21, null, !dbg !1634
  br i1 %22, label %26, label %23, !dbg !1635

; <label>:23:                                     ; preds = %12
  %24 = load %struct._QUERY_REC*, %struct._QUERY_REC** %4, align 8, !dbg !1636
  %25 = icmp eq %struct._QUERY_REC* %24, null, !dbg !1638
  br i1 %25, label %26, label %27, !dbg !1639

; <label>:26:                                     ; preds = %23, %12
  br label %46, !dbg !1640

; <label>:27:                                     ; preds = %23
  %28 = load %struct._QUERY_REC*, %struct._QUERY_REC** %4, align 8, !dbg !1641
  %29 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %28, i32 0, i32 4, !dbg !1642
  %30 = load %struct._SERVER_REC*, %struct._SERVER_REC** %29, align 8, !dbg !1642
  %31 = bitcast %struct._SERVER_REC* %30 to i8*, !dbg !1641
  %32 = load %struct._QUERY_REC*, %struct._QUERY_REC** %4, align 8, !dbg !1643
  %33 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %32, i32 0, i32 13, !dbg !1644
  %34 = load i8*, i8** %33, align 8, !dbg !1644
  %35 = load %struct._QUERY_REC*, %struct._QUERY_REC** %4, align 8, !dbg !1645
  %36 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %35, i32 0, i32 6, !dbg !1646
  %37 = load i8*, i8** %36, align 8, !dbg !1646
  call void @format_create_dest_tag(%struct._TEXT_DEST_REC* %5, i8* %31, i8* %34, i8* %37, i32 262144, %struct._WINDOW_REC* null), !dbg !1647
  %38 = load %struct._QUERY_REC*, %struct._QUERY_REC** %4, align 8, !dbg !1648
  %39 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %38, i32 0, i32 6, !dbg !1649
  %40 = load i8*, i8** %39, align 8, !dbg !1649
  %41 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1650
  %42 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %41, i32 0, i32 6, !dbg !1651
  %43 = load i8*, i8** %42, align 8, !dbg !1651
  call void (i8*, %struct._TEXT_DEST_REC*, i32, ...) @printformat_module_dest(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), %struct._TEXT_DEST_REC* %5, i32 111, i8* %40, i8* %43), !dbg !1652
  %44 = load %struct._QUERY_REC*, %struct._QUERY_REC** %4, align 8, !dbg !1653
  %45 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1654
  call void @query_change_server(%struct._QUERY_REC* %44, %struct._SERVER_REC* %45), !dbg !1655
  call void @signal_stop(), !dbg !1656
  br label %46, !dbg !1657

; <label>:46:                                     ; preds = %27, %26, %10
  ret void, !dbg !1658
}

declare void @command_set_options_module(i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @fe_queries_deinit() #0 !dbg !1660 {
  %1 = load i32, i32* @queryclose_tag, align 4, !dbg !1661
  %2 = icmp ne i32 %1, -1, !dbg !1663
  br i1 %2, label %3, label %6, !dbg !1664

; <label>:3:                                      ; preds = %0
  %4 = load i32, i32* @queryclose_tag, align 4, !dbg !1665
  %5 = call i32 @g_source_remove(i32 %4), !dbg !1667
  br label %6, !dbg !1667

; <label>:6:                                      ; preds = %3, %0
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._QUERY_REC*, i8*)* @signal_query_created to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1668
  call void @signal_remove_full(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._QUERY_REC*)* @signal_query_destroyed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1669
  call void @signal_remove_full(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._QUERY_REC*)* @signal_query_server_changed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1670
  call void @signal_remove_full(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._QUERY_REC*, i8*)* @signal_query_nick_changed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1671
  call void @signal_remove_full(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*, %struct._QUERY_REC*)* @signal_window_item_server_changed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1672
  call void @signal_remove_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*)* @sig_server_connected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1673
  call void @signal_remove_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*, %struct._WINDOW_REC*)* @sig_window_changed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1674
  call void @signal_remove_full(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*, i8*)* @sig_message_private to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1675
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1676
  call void @command_unbind_full(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_query to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1677
  call void @command_unbind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_unquery to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1678
  call void @command_unbind_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_window_server to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1679
  ret void, !dbg !1680
}

declare i32 @g_source_remove(i32) #2

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare void @command_unbind_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare i32 @settings_get_level(i8*) #2

declare i32 @settings_get_time(i8*) #2

declare i32 @g_timeout_add(i32, i32 (i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @sig_query_autoclose() #0 !dbg !1681 {
  %1 = alloca %struct._WINDOW_REC*, align 8
  %2 = alloca %struct._GSList*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct._QUERY_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %1, metadata !1684, metadata !789), !dbg !1685
  call void @llvm.dbg.declare(metadata %struct._GSList** %2, metadata !1686, metadata !789), !dbg !1687
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !1688, metadata !789), !dbg !1689
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1690, metadata !789), !dbg !1691
  %6 = call i64 @time(i64* null) #4, !dbg !1692
  store i64 %6, i64* %4, align 8, !dbg !1693
  %7 = load %struct._GSList*, %struct._GSList** @queries, align 8, !dbg !1694
  store %struct._GSList* %7, %struct._GSList** %2, align 8, !dbg !1696
  br label %8, !dbg !1697

; <label>:8:                                      ; preds = %44, %0
  %9 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !1698
  %10 = icmp ne %struct._GSList* %9, null, !dbg !1701
  br i1 %10, label %11, label %46, !dbg !1702

; <label>:11:                                     ; preds = %8
  call void @llvm.dbg.declare(metadata %struct._QUERY_REC** %5, metadata !1703, metadata !789), !dbg !1705
  %12 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !1706
  %13 = getelementptr inbounds %struct._GSList, %struct._GSList* %12, i32 0, i32 0, !dbg !1707
  %14 = load i8*, i8** %13, align 8, !dbg !1707
  %15 = bitcast i8* %14 to %struct._QUERY_REC*, !dbg !1706
  store %struct._QUERY_REC* %15, %struct._QUERY_REC** %5, align 8, !dbg !1705
  %16 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !1708
  %17 = getelementptr inbounds %struct._GSList, %struct._GSList* %16, i32 0, i32 1, !dbg !1709
  %18 = load %struct._GSList*, %struct._GSList** %17, align 8, !dbg !1709
  store %struct._GSList* %18, %struct._GSList** %3, align 8, !dbg !1710
  %19 = load %struct._QUERY_REC*, %struct._QUERY_REC** %5, align 8, !dbg !1711
  %20 = bitcast %struct._QUERY_REC* %19 to %struct._WI_ITEM_REC*, !dbg !1712
  %21 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %20, i32 0, i32 3, !dbg !1712
  %22 = load i8*, i8** %21, align 8, !dbg !1712
  %23 = bitcast i8* %22 to %struct._WINDOW_REC*, !dbg !1713
  store %struct._WINDOW_REC* %23, %struct._WINDOW_REC** %1, align 8, !dbg !1714
  %24 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %1, align 8, !dbg !1715
  %25 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1717
  %26 = icmp ne %struct._WINDOW_REC* %24, %25, !dbg !1718
  br i1 %26, label %27, label %43, !dbg !1719

; <label>:27:                                     ; preds = %11
  %28 = load %struct._QUERY_REC*, %struct._QUERY_REC** %5, align 8, !dbg !1720
  %29 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %28, i32 0, i32 8, !dbg !1722
  %30 = load i32, i32* %29, align 8, !dbg !1722
  %31 = icmp slt i32 %30, 2, !dbg !1723
  br i1 %31, label %32, label %43, !dbg !1724

; <label>:32:                                     ; preds = %27
  %33 = load i64, i64* %4, align 8, !dbg !1725
  %34 = load %struct._QUERY_REC*, %struct._QUERY_REC** %5, align 8, !dbg !1726
  %35 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %34, i32 0, i32 14, !dbg !1727
  %36 = load i64, i64* %35, align 8, !dbg !1727
  %37 = sub nsw i64 %33, %36, !dbg !1728
  %38 = load i32, i32* @query_auto_close, align 4, !dbg !1729
  %39 = sext i32 %38 to i64, !dbg !1729
  %40 = icmp sgt i64 %37, %39, !dbg !1730
  br i1 %40, label %41, label %43, !dbg !1731

; <label>:41:                                     ; preds = %32
  %42 = load %struct._QUERY_REC*, %struct._QUERY_REC** %5, align 8, !dbg !1733
  call void @query_destroy(%struct._QUERY_REC* %42), !dbg !1734
  br label %43, !dbg !1734

; <label>:43:                                     ; preds = %41, %32, %27, %11
  br label %44, !dbg !1735

; <label>:44:                                     ; preds = %43
  %45 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1736
  store %struct._GSList* %45, %struct._GSList** %2, align 8, !dbg !1738
  br label %8, !dbg !1739, !llvm.loop !1740

; <label>:46:                                     ; preds = %8
  ret i32 1, !dbg !1742
}

; Function Attrs: nounwind
declare i64 @time(i64*) #3

declare void @query_destroy(%struct._QUERY_REC*) #2

declare i8* @module_check_cast_module(i8*, i32, i8*, i8*) #2

declare void @window_item_create(%struct._WI_ITEM_REC*, i32) #2

declare void @format_create_dest_tag(%struct._TEXT_DEST_REC*, i8*, i8*, i8*, i32, %struct._WINDOW_REC*) #2

declare void @printformat_module_dest(i8*, %struct._TEXT_DEST_REC*, i32, ...) #2

declare void @window_item_destroy(%struct._WI_ITEM_REC*) #2

declare void @window_auto_destroy(%struct._WINDOW_REC*) #2

declare %struct.WINDOW_BIND_REC* @window_bind_add(%struct._WINDOW_REC*, i8*, i8*) #2

declare void @window_change_server(%struct._WINDOW_REC*, i8*) #2

declare i32 @g_ascii_strcasecmp(i8*, i8*) #2

declare i32 @signal_emit(i8*, i32, ...) #2

declare void @g_free(i8*) #2

declare noalias i8* @g_strdup(i8*) #2

declare void @window_item_change_server(%struct._WI_ITEM_REC*, i8*) #2

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @window_reset_query_timestamps(%struct._WINDOW_REC*) #0 !dbg !1743 {
  %2 = alloca %struct._WINDOW_REC*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct._QUERY_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %2, metadata !1746, metadata !789), !dbg !1747
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !1748, metadata !789), !dbg !1749
  %5 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !1750
  %6 = icmp eq %struct._WINDOW_REC* %5, null, !dbg !1752
  br i1 %6, label %7, label %8, !dbg !1753

; <label>:7:                                      ; preds = %1
  br label %32, !dbg !1754

; <label>:8:                                      ; preds = %1
  %9 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !1755
  %10 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %9, i32 0, i32 4, !dbg !1757
  %11 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !1757
  store %struct._GSList* %11, %struct._GSList** %3, align 8, !dbg !1758
  br label %12, !dbg !1759

; <label>:12:                                     ; preds = %28, %8
  %13 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1760
  %14 = icmp ne %struct._GSList* %13, null, !dbg !1763
  br i1 %14, label %15, label %32, !dbg !1764

; <label>:15:                                     ; preds = %12
  call void @llvm.dbg.declare(metadata %struct._QUERY_REC** %4, metadata !1765, metadata !789), !dbg !1767
  %16 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1768
  %17 = getelementptr inbounds %struct._GSList, %struct._GSList* %16, i32 0, i32 0, !dbg !1769
  %18 = load i8*, i8** %17, align 8, !dbg !1769
  %19 = call i8* @module_check_cast_module(i8* %18, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0)), !dbg !1770
  %20 = bitcast i8* %19 to %struct._QUERY_REC*, !dbg !1771
  store %struct._QUERY_REC* %20, %struct._QUERY_REC** %4, align 8, !dbg !1767
  %21 = load %struct._QUERY_REC*, %struct._QUERY_REC** %4, align 8, !dbg !1772
  %22 = icmp ne %struct._QUERY_REC* %21, null, !dbg !1774
  br i1 %22, label %23, label %27, !dbg !1775

; <label>:23:                                     ; preds = %15
  %24 = call i64 @time(i64* null) #4, !dbg !1776
  %25 = load %struct._QUERY_REC*, %struct._QUERY_REC** %4, align 8, !dbg !1777
  %26 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %25, i32 0, i32 14, !dbg !1778
  store i64 %24, i64* %26, align 8, !dbg !1779
  br label %27, !dbg !1777

; <label>:27:                                     ; preds = %23, %15
  br label %28, !dbg !1780

; <label>:28:                                     ; preds = %27
  %29 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1781
  %30 = getelementptr inbounds %struct._GSList, %struct._GSList* %29, i32 0, i32 1, !dbg !1783
  %31 = load %struct._GSList*, %struct._GSList** %30, align 8, !dbg !1783
  store %struct._GSList* %31, %struct._GSList** %3, align 8, !dbg !1784
  br label %12, !dbg !1785, !llvm.loop !1786

; <label>:32:                                     ; preds = %7, %12
  ret void, !dbg !1788
}

declare i32 @g_strcmp0(i8*, i8*) #2

declare i32 @cmd_get_params(i8*, i8**, i32, ...) #2

declare void @cmd_params_free(i8*) #2

declare %struct._SERVER_REC* @cmd_options_get_server(i8*, %struct._GHashTable*, %struct._SERVER_REC*) #2

declare void @signal_stop() #2

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @signal_query_created_curwin(%struct._QUERY_REC*) #0 !dbg !1789 {
  %2 = alloca %struct._QUERY_REC*, align 8
  store %struct._QUERY_REC* %0, %struct._QUERY_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._QUERY_REC** %2, metadata !1790, metadata !789), !dbg !1791
  br label %3, !dbg !1792, !llvm.loop !1793

; <label>:3:                                      ; preds = %1
  %4 = load %struct._QUERY_REC*, %struct._QUERY_REC** %2, align 8, !dbg !1794
  %5 = bitcast %struct._QUERY_REC* %4 to i8*, !dbg !1794
  %6 = call i8* @module_check_cast_module(i8* %5, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0)), !dbg !1798
  %7 = bitcast i8* %6 to %struct._QUERY_REC*, !dbg !1799
  %8 = icmp ne %struct._QUERY_REC* %7, null, !dbg !1799
  br i1 %8, label %9, label %10, !dbg !1800

; <label>:9:                                      ; preds = %3
  br i1 false, label %12, label %11, !dbg !1801

; <label>:10:                                     ; preds = %3
  br i1 false, label %11, label %12, !dbg !1803

; <label>:11:                                     ; preds = %10, %9
  br label %13, !dbg !1805

; <label>:12:                                     ; preds = %10, %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.signal_query_created_curwin, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0)), !dbg !1808
  br label %18, !dbg !1811

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !1812

; <label>:14:                                     ; preds = %13
  %15 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1814
  %16 = load %struct._QUERY_REC*, %struct._QUERY_REC** %2, align 8, !dbg !1815
  %17 = bitcast %struct._QUERY_REC* %16 to %struct._WI_ITEM_REC*, !dbg !1816
  call void @window_item_add(%struct._WINDOW_REC* %15, %struct._WI_ITEM_REC* %17, i32 0), !dbg !1817
  br label %18, !dbg !1818

; <label>:18:                                     ; preds = %14, %12
  ret void, !dbg !1819
}

declare void @window_set_active(%struct._WINDOW_REC*) #2

declare void @window_item_set_active(%struct._WINDOW_REC*, %struct._WI_ITEM_REC*) #2

declare noalias i8* @g_strdup_printf(i8*, ...) #2

declare void @window_item_add(%struct._WINDOW_REC*, %struct._WI_ITEM_REC*, i32) #2

declare void @printformat_module(i8*, i8*, i8*, i32, i32, ...) #2

declare %struct._SERVER_REC* @server_find_tag(i8*) #2

declare void @query_change_server(%struct._QUERY_REC*, %struct._SERVER_REC*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!781, !782}
!llvm.ident = !{!783}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !336, globals: !776)
!1 = !DIFile(filename: "line238-fe-queries.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !10, !15, !24, !35, !42, !73, !315}
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
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 7, size: 32, align: 32, elements: !37)
!36 = !DIFile(filename: "fe-windows.h", directory: "/home/lichi/Desktop/irssi/task1")
!37 = !{!38, !39, !40, !41}
!38 = !DIEnumerator(name: "DATA_LEVEL_NONE", value: 0)
!39 = !DIEnumerator(name: "DATA_LEVEL_TEXT", value: 1)
!40 = !DIEnumerator(name: "DATA_LEVEL_MSG", value: 2)
!41 = !DIEnumerator(name: "DATA_LEVEL_HILIGHT", value: 3)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !43, line: 10, size: 32, align: 32, elements: !44)
!43 = !DIFile(filename: "../../../src/core/levels.h", directory: "/home/lichi/Desktop/irssi/task1")
!44 = !{!45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72}
!45 = !DIEnumerator(name: "MSGLEVEL_CRAP", value: 1)
!46 = !DIEnumerator(name: "MSGLEVEL_MSGS", value: 2)
!47 = !DIEnumerator(name: "MSGLEVEL_PUBLIC", value: 4)
!48 = !DIEnumerator(name: "MSGLEVEL_NOTICES", value: 8)
!49 = !DIEnumerator(name: "MSGLEVEL_SNOTES", value: 16)
!50 = !DIEnumerator(name: "MSGLEVEL_CTCPS", value: 32)
!51 = !DIEnumerator(name: "MSGLEVEL_ACTIONS", value: 64)
!52 = !DIEnumerator(name: "MSGLEVEL_JOINS", value: 128)
!53 = !DIEnumerator(name: "MSGLEVEL_PARTS", value: 256)
!54 = !DIEnumerator(name: "MSGLEVEL_QUITS", value: 512)
!55 = !DIEnumerator(name: "MSGLEVEL_KICKS", value: 1024)
!56 = !DIEnumerator(name: "MSGLEVEL_MODES", value: 2048)
!57 = !DIEnumerator(name: "MSGLEVEL_TOPICS", value: 4096)
!58 = !DIEnumerator(name: "MSGLEVEL_WALLOPS", value: 8192)
!59 = !DIEnumerator(name: "MSGLEVEL_INVITES", value: 16384)
!60 = !DIEnumerator(name: "MSGLEVEL_NICKS", value: 32768)
!61 = !DIEnumerator(name: "MSGLEVEL_DCC", value: 65536)
!62 = !DIEnumerator(name: "MSGLEVEL_DCCMSGS", value: 131072)
!63 = !DIEnumerator(name: "MSGLEVEL_CLIENTNOTICE", value: 262144)
!64 = !DIEnumerator(name: "MSGLEVEL_CLIENTCRAP", value: 524288)
!65 = !DIEnumerator(name: "MSGLEVEL_CLIENTERROR", value: 1048576)
!66 = !DIEnumerator(name: "MSGLEVEL_HILIGHT", value: 2097152)
!67 = !DIEnumerator(name: "MSGLEVEL_ALL", value: 4194303)
!68 = !DIEnumerator(name: "MSGLEVEL_NOHILIGHT", value: 16777216)
!69 = !DIEnumerator(name: "MSGLEVEL_NO_ACT", value: 33554432)
!70 = !DIEnumerator(name: "MSGLEVEL_NEVER", value: 67108864)
!71 = !DIEnumerator(name: "MSGLEVEL_LASTLOG", value: 134217728)
!72 = !DIEnumerator(name: "MSGLEVEL_HIDDEN", value: 268435456)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !74, line: 3, size: 32, align: 32, elements: !75)
!74 = !DIFile(filename: "module-formats.h", directory: "/home/lichi/Desktop/irssi/task1")
!75 = !{!76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314}
!76 = !DIEnumerator(name: "TXT_MODULE_NAME", value: 0)
!77 = !DIEnumerator(name: "TXT_FILL_1", value: 1)
!78 = !DIEnumerator(name: "TXT_LINE_START", value: 2)
!79 = !DIEnumerator(name: "TXT_LINE_START_IRSSI", value: 3)
!80 = !DIEnumerator(name: "TXT_TIMESTAMP", value: 4)
!81 = !DIEnumerator(name: "TXT_SERVERTAG", value: 5)
!82 = !DIEnumerator(name: "TXT_DAYCHANGE", value: 6)
!83 = !DIEnumerator(name: "TXT_TALKING_WITH", value: 7)
!84 = !DIEnumerator(name: "TXT_REFNUM_TOO_LOW", value: 8)
!85 = !DIEnumerator(name: "TXT_ERROR_SERVER_STICKY", value: 9)
!86 = !DIEnumerator(name: "TXT_SET_SERVER_STICKY", value: 10)
!87 = !DIEnumerator(name: "TXT_UNSET_SERVER_STICKY", value: 11)
!88 = !DIEnumerator(name: "TXT_WINDOW_NAME_NOT_UNIQUE", value: 12)
!89 = !DIEnumerator(name: "TXT_WINDOW_LEVEL", value: 13)
!90 = !DIEnumerator(name: "TXT_WINDOW_SET_IMMORTAL", value: 14)
!91 = !DIEnumerator(name: "TXT_WINDOW_UNSET_IMMORTAL", value: 15)
!92 = !DIEnumerator(name: "TXT_WINDOW_IMMORTAL_ERROR", value: 16)
!93 = !DIEnumerator(name: "TXT_WINDOWLIST_HEADER", value: 17)
!94 = !DIEnumerator(name: "TXT_WINDOWLIST_LINE", value: 18)
!95 = !DIEnumerator(name: "TXT_WINDOWLIST_FOOTER", value: 19)
!96 = !DIEnumerator(name: "TXT_WINDOWS_LAYOUT_SAVED", value: 20)
!97 = !DIEnumerator(name: "TXT_WINDOWS_LAYOUT_RESET", value: 21)
!98 = !DIEnumerator(name: "TXT_WINDOW_INFO_HEADER", value: 22)
!99 = !DIEnumerator(name: "TXT_WINDOW_INFO_FOOTER", value: 23)
!100 = !DIEnumerator(name: "TXT_WINDOW_INFO_REFNUM", value: 24)
!101 = !DIEnumerator(name: "TXT_WINDOW_INFO_REFNUM_STICKY", value: 25)
!102 = !DIEnumerator(name: "TXT_WINDOW_INFO_NAME", value: 26)
!103 = !DIEnumerator(name: "TXT_WINDOW_INFO_HISTORY", value: 27)
!104 = !DIEnumerator(name: "TXT_WINDOW_INFO_IMMORTAL", value: 28)
!105 = !DIEnumerator(name: "TXT_WINDOW_INFO_SIZE", value: 29)
!106 = !DIEnumerator(name: "TXT_WINDOW_INFO_LEVEL", value: 30)
!107 = !DIEnumerator(name: "TXT_WINDOW_INFO_SERVER", value: 31)
!108 = !DIEnumerator(name: "TXT_WINDOW_INFO_SERVER_STICKY", value: 32)
!109 = !DIEnumerator(name: "TXT_WINDOW_INFO_THEME", value: 33)
!110 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEMS_HEADER", value: 34)
!111 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEM", value: 35)
!112 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEMS_FOOTER", value: 36)
!113 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEMS_HEADER", value: 37)
!114 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEM", value: 38)
!115 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEMS_FOOTER", value: 39)
!116 = !DIEnumerator(name: "TXT_FILL_2", value: 40)
!117 = !DIEnumerator(name: "TXT_LOOKING_UP", value: 41)
!118 = !DIEnumerator(name: "TXT_CONNECTING", value: 42)
!119 = !DIEnumerator(name: "TXT_RECONNECTING", value: 43)
!120 = !DIEnumerator(name: "TXT_CONNECTION_ESTABLISHED", value: 44)
!121 = !DIEnumerator(name: "TXT_CANT_CONNECT", value: 45)
!122 = !DIEnumerator(name: "TXT_CONNECTION_LOST", value: 46)
!123 = !DIEnumerator(name: "TXT_LAG_DISCONNECTED", value: 47)
!124 = !DIEnumerator(name: "TXT_DISCONNECTED", value: 48)
!125 = !DIEnumerator(name: "TXT_SERVER_QUIT", value: 49)
!126 = !DIEnumerator(name: "TXT_SERVER_CHANGED", value: 50)
!127 = !DIEnumerator(name: "TXT_UNKNOWN_SERVER_TAG", value: 51)
!128 = !DIEnumerator(name: "TXT_NO_CONNECTED_SERVERS", value: 52)
!129 = !DIEnumerator(name: "TXT_SERVER_LIST", value: 53)
!130 = !DIEnumerator(name: "TXT_SERVER_LOOKUP_LIST", value: 54)
!131 = !DIEnumerator(name: "TXT_SERVER_RECONNECT_LIST", value: 55)
!132 = !DIEnumerator(name: "TXT_RECONNECT_REMOVED", value: 56)
!133 = !DIEnumerator(name: "TXT_RECONNECT_NOT_FOUND", value: 57)
!134 = !DIEnumerator(name: "TXT_SETUPSERVER_ADDED", value: 58)
!135 = !DIEnumerator(name: "TXT_SETUPSERVER_REMOVED", value: 59)
!136 = !DIEnumerator(name: "TXT_SETUPSERVER_NOT_FOUND", value: 60)
!137 = !DIEnumerator(name: "TXT_YOUR_NICK", value: 61)
!138 = !DIEnumerator(name: "TXT_FILL_3", value: 62)
!139 = !DIEnumerator(name: "TXT_JOIN", value: 63)
!140 = !DIEnumerator(name: "TXT_PART", value: 64)
!141 = !DIEnumerator(name: "TXT_KICK", value: 65)
!142 = !DIEnumerator(name: "TXT_QUIT", value: 66)
!143 = !DIEnumerator(name: "TXT_QUIT_ONCE", value: 67)
!144 = !DIEnumerator(name: "TXT_INVITE", value: 68)
!145 = !DIEnumerator(name: "TXT_NOT_INVITED", value: 69)
!146 = !DIEnumerator(name: "TXT_NEW_TOPIC", value: 70)
!147 = !DIEnumerator(name: "TXT_TOPIC_UNSET", value: 71)
!148 = !DIEnumerator(name: "TXT_YOUR_NICK_CHANGED", value: 72)
!149 = !DIEnumerator(name: "TXT_NICK_CHANGED", value: 73)
!150 = !DIEnumerator(name: "TXT_TALKING_IN", value: 74)
!151 = !DIEnumerator(name: "TXT_NOT_IN_CHANNELS", value: 75)
!152 = !DIEnumerator(name: "TXT_CURRENT_CHANNEL", value: 76)
!153 = !DIEnumerator(name: "TXT_NAMES", value: 77)
!154 = !DIEnumerator(name: "TXT_NAMES_PREFIX", value: 78)
!155 = !DIEnumerator(name: "TXT_NAMES_NICK_OP", value: 79)
!156 = !DIEnumerator(name: "TXT_NAMES_NICK_HALFOP", value: 80)
!157 = !DIEnumerator(name: "TXT_NAMES_NICK_VOICE", value: 81)
!158 = !DIEnumerator(name: "TXT_NAMES_NICK", value: 82)
!159 = !DIEnumerator(name: "TXT_ENDOFNAMES", value: 83)
!160 = !DIEnumerator(name: "TXT_CHANLIST_HEADER", value: 84)
!161 = !DIEnumerator(name: "TXT_CHANLIST_LINE", value: 85)
!162 = !DIEnumerator(name: "TXT_CHANSETUP_NOT_FOUND", value: 86)
!163 = !DIEnumerator(name: "TXT_CHANSETUP_ADDED", value: 87)
!164 = !DIEnumerator(name: "TXT_CHANSETUP_REMOVED", value: 88)
!165 = !DIEnumerator(name: "TXT_CHANSETUP_HEADER", value: 89)
!166 = !DIEnumerator(name: "TXT_CHANSETUP_LINE", value: 90)
!167 = !DIEnumerator(name: "TXT_CHANSETUP_FOOTER", value: 91)
!168 = !DIEnumerator(name: "TXT_FILL_4", value: 92)
!169 = !DIEnumerator(name: "TXT_OWN_MSG", value: 93)
!170 = !DIEnumerator(name: "TXT_OWN_MSG_CHANNEL", value: 94)
!171 = !DIEnumerator(name: "TXT_OWN_MSG_PRIVATE", value: 95)
!172 = !DIEnumerator(name: "TXT_OWN_MSG_PRIVATE_QUERY", value: 96)
!173 = !DIEnumerator(name: "TXT_PUBMSG_ME", value: 97)
!174 = !DIEnumerator(name: "TXT_PUBMSG_ME_CHANNEL", value: 98)
!175 = !DIEnumerator(name: "TXT_PUBMSG_HILIGHT", value: 99)
!176 = !DIEnumerator(name: "TXT_PUBMSG_HILIGHT_CHANNEL", value: 100)
!177 = !DIEnumerator(name: "TXT_PUBMSG", value: 101)
!178 = !DIEnumerator(name: "TXT_PUBMSG_CHANNEL", value: 102)
!179 = !DIEnumerator(name: "TXT_MSG_PRIVATE", value: 103)
!180 = !DIEnumerator(name: "TXT_MSG_PRIVATE_QUERY", value: 104)
!181 = !DIEnumerator(name: "TXT_NO_MSGS_GOT", value: 105)
!182 = !DIEnumerator(name: "TXT_NO_MSGS_SENT", value: 106)
!183 = !DIEnumerator(name: "TXT_FILL_5", value: 107)
!184 = !DIEnumerator(name: "TXT_QUERY_START", value: 108)
!185 = !DIEnumerator(name: "TXT_QUERY_STOP", value: 109)
!186 = !DIEnumerator(name: "TXT_NO_QUERY", value: 110)
!187 = !DIEnumerator(name: "TXT_QUERY_SERVER_CHANGED", value: 111)
!188 = !DIEnumerator(name: "TXT_FILL_6", value: 112)
!189 = !DIEnumerator(name: "TXT_HILIGHT_HEADER", value: 113)
!190 = !DIEnumerator(name: "TXT_HILIGHT_LINE", value: 114)
!191 = !DIEnumerator(name: "TXT_HILIGHT_FOOTER", value: 115)
!192 = !DIEnumerator(name: "TXT_HILIGHT_NOT_FOUND", value: 116)
!193 = !DIEnumerator(name: "TXT_HILIGHT_REMOVED", value: 117)
!194 = !DIEnumerator(name: "TXT_FILL_7", value: 118)
!195 = !DIEnumerator(name: "TXT_ALIAS_ADDED", value: 119)
!196 = !DIEnumerator(name: "TXT_ALIAS_REMOVED", value: 120)
!197 = !DIEnumerator(name: "TXT_ALIAS_NOT_FOUND", value: 121)
!198 = !DIEnumerator(name: "TXT_ALIASLIST_HEADER", value: 122)
!199 = !DIEnumerator(name: "TXT_ALIASLIST_LINE", value: 123)
!200 = !DIEnumerator(name: "TXT_ALIASLIST_FOOTER", value: 124)
!201 = !DIEnumerator(name: "TXT_FILL_8", value: 125)
!202 = !DIEnumerator(name: "TXT_LOG_OPENED", value: 126)
!203 = !DIEnumerator(name: "TXT_LOG_CLOSED", value: 127)
!204 = !DIEnumerator(name: "TXT_LOG_CREATE_FAILED", value: 128)
!205 = !DIEnumerator(name: "TXT_LOG_LOCKED", value: 129)
!206 = !DIEnumerator(name: "TXT_LOG_NOT_OPEN", value: 130)
!207 = !DIEnumerator(name: "TXT_LOG_STARTED", value: 131)
!208 = !DIEnumerator(name: "TXT_LOG_STOPPED", value: 132)
!209 = !DIEnumerator(name: "TXT_LOG_LIST_HEADER", value: 133)
!210 = !DIEnumerator(name: "TXT_LOG_LIST", value: 134)
!211 = !DIEnumerator(name: "TXT_LOG_LIST_FOOTER", value: 135)
!212 = !DIEnumerator(name: "TXT_WINDOWLOG_FILE", value: 136)
!213 = !DIEnumerator(name: "TXT_WINDOWLOG_FILE_LOGGING", value: 137)
!214 = !DIEnumerator(name: "TXT_LOG_NO_AWAY_MSGS", value: 138)
!215 = !DIEnumerator(name: "TXT_LOG_AWAY_MSGS", value: 139)
!216 = !DIEnumerator(name: "TXT_FILL_9", value: 140)
!217 = !DIEnumerator(name: "TXT_MODULE_HEADER", value: 141)
!218 = !DIEnumerator(name: "TXT_MODULE_LINE", value: 142)
!219 = !DIEnumerator(name: "TXT_MODULE_FOOTER", value: 143)
!220 = !DIEnumerator(name: "TXT_MODULE_ALREADY_LOADED", value: 144)
!221 = !DIEnumerator(name: "TXT_MODULE_NOT_LOADED", value: 145)
!222 = !DIEnumerator(name: "TXT_MODULE_LOAD_ERROR", value: 146)
!223 = !DIEnumerator(name: "TXT_MODULE_VERSION_MISMATCH", value: 147)
!224 = !DIEnumerator(name: "TXT_MODULE_INVALID", value: 148)
!225 = !DIEnumerator(name: "TXT_MODULE_LOADED", value: 149)
!226 = !DIEnumerator(name: "TXT_MODULE_UNLOADED", value: 150)
!227 = !DIEnumerator(name: "TXT_FILL_10", value: 151)
!228 = !DIEnumerator(name: "TXT_COMMAND_UNKNOWN", value: 152)
!229 = !DIEnumerator(name: "TXT_COMMAND_AMBIGUOUS", value: 153)
!230 = !DIEnumerator(name: "TXT_OPTION_UNKNOWN", value: 154)
!231 = !DIEnumerator(name: "TXT_OPTION_AMBIGUOUS", value: 155)
!232 = !DIEnumerator(name: "TXT_OPTION_MISSING_ARG", value: 156)
!233 = !DIEnumerator(name: "TXT_NOT_ENOUGH_PARAMS", value: 157)
!234 = !DIEnumerator(name: "TXT_NOT_CONNECTED", value: 158)
!235 = !DIEnumerator(name: "TXT_NOT_JOINED", value: 159)
!236 = !DIEnumerator(name: "TXT_CHAN_NOT_FOUND", value: 160)
!237 = !DIEnumerator(name: "TXT_CHAN_NOT_SYNCED", value: 161)
!238 = !DIEnumerator(name: "TXT_ILLEGAL_PROTO", value: 162)
!239 = !DIEnumerator(name: "TXT_NOT_GOOD_IDEA", value: 163)
!240 = !DIEnumerator(name: "TXT_INVALID_NUMBER", value: 164)
!241 = !DIEnumerator(name: "TXT_INVALID_TIME", value: 165)
!242 = !DIEnumerator(name: "TXT_INVALID_LEVEL", value: 166)
!243 = !DIEnumerator(name: "TXT_INVALID_SIZE", value: 167)
!244 = !DIEnumerator(name: "TXT_INVALID_CHARSET", value: 168)
!245 = !DIEnumerator(name: "TXT_INVALID_CHOICE", value: 169)
!246 = !DIEnumerator(name: "TXT_EVAL_MAX_RECURSE", value: 170)
!247 = !DIEnumerator(name: "TXT_PROGRAM_NOT_FOUND", value: 171)
!248 = !DIEnumerator(name: "TXT_NO_SERVER_DEFINED", value: 172)
!249 = !DIEnumerator(name: "TXT_FILL_11", value: 173)
!250 = !DIEnumerator(name: "TXT_THEME_SAVED", value: 174)
!251 = !DIEnumerator(name: "TXT_THEME_SAVE_FAILED", value: 175)
!252 = !DIEnumerator(name: "TXT_THEME_NOT_FOUND", value: 176)
!253 = !DIEnumerator(name: "TXT_THEME_CHANGED", value: 177)
!254 = !DIEnumerator(name: "TXT_WINDOW_THEME", value: 178)
!255 = !DIEnumerator(name: "TXT_WINDOW_THEME_DEFAULT", value: 179)
!256 = !DIEnumerator(name: "TXT_WINDOW_THEME_CHANGED", value: 180)
!257 = !DIEnumerator(name: "TXT_WINDOW_THEME_REMOVED", value: 181)
!258 = !DIEnumerator(name: "TXT_FORMAT_TITLE", value: 182)
!259 = !DIEnumerator(name: "TXT_FORMAT_SUBTITLE", value: 183)
!260 = !DIEnumerator(name: "TXT_FORMAT_ITEM", value: 184)
!261 = !DIEnumerator(name: "TXT_FILL_12", value: 185)
!262 = !DIEnumerator(name: "TXT_IGNORED", value: 186)
!263 = !DIEnumerator(name: "TXT_IGNORED_OPTIONS", value: 187)
!264 = !DIEnumerator(name: "TXT_UNIGNORED", value: 188)
!265 = !DIEnumerator(name: "TXT_IGNORE_NOT_FOUND", value: 189)
!266 = !DIEnumerator(name: "TXT_IGNORE_NO_IGNORES", value: 190)
!267 = !DIEnumerator(name: "TXT_IGNORE_HEADER", value: 191)
!268 = !DIEnumerator(name: "TXT_IGNORE_LINE", value: 192)
!269 = !DIEnumerator(name: "TXT_IGNORE_FOOTER", value: 193)
!270 = !DIEnumerator(name: "TXT_FILL_13", value: 194)
!271 = !DIEnumerator(name: "TXT_NOT_CHANNEL_OR_QUERY", value: 195)
!272 = !DIEnumerator(name: "TXT_CONVERSION_ADDED", value: 196)
!273 = !DIEnumerator(name: "TXT_CONVERSION_REMOVED", value: 197)
!274 = !DIEnumerator(name: "TXT_CONVERSION_NOT_FOUND", value: 198)
!275 = !DIEnumerator(name: "TXT_CONVERSION_NO_TRANSLITS", value: 199)
!276 = !DIEnumerator(name: "TXT_RECODE_HEADER", value: 200)
!277 = !DIEnumerator(name: "TXT_RECODE_LINE", value: 201)
!278 = !DIEnumerator(name: "TXT_FILL_14", value: 202)
!279 = !DIEnumerator(name: "TXT_UNKNOWN_CHAT_PROTOCOL", value: 203)
!280 = !DIEnumerator(name: "TXT_UNKNOWN_CHATNET", value: 204)
!281 = !DIEnumerator(name: "TXT_NOT_TOGGLE", value: 205)
!282 = !DIEnumerator(name: "TXT_PERL_ERROR", value: 206)
!283 = !DIEnumerator(name: "TXT_BIND_HEADER", value: 207)
!284 = !DIEnumerator(name: "TXT_BIND_LIST", value: 208)
!285 = !DIEnumerator(name: "TXT_BIND_COMMAND_LIST", value: 209)
!286 = !DIEnumerator(name: "TXT_BIND_FOOTER", value: 210)
!287 = !DIEnumerator(name: "TXT_BIND_UNKNOWN_ID", value: 211)
!288 = !DIEnumerator(name: "TXT_CONFIG_SAVED", value: 212)
!289 = !DIEnumerator(name: "TXT_CONFIG_RELOADED", value: 213)
!290 = !DIEnumerator(name: "TXT_CONFIG_MODIFIED", value: 214)
!291 = !DIEnumerator(name: "TXT_GLIB_ERROR", value: 215)
!292 = !DIEnumerator(name: "TXT_OVERWRITE_CONFIG", value: 216)
!293 = !DIEnumerator(name: "TXT_SET_TITLE", value: 217)
!294 = !DIEnumerator(name: "TXT_SET_ITEM", value: 218)
!295 = !DIEnumerator(name: "TXT_SET_UNKNOWN", value: 219)
!296 = !DIEnumerator(name: "TXT_SET_NOT_BOOLEAN", value: 220)
!297 = !DIEnumerator(name: "TXT_NO_COMPLETIONS", value: 221)
!298 = !DIEnumerator(name: "TXT_COMPLETION_REMOVED", value: 222)
!299 = !DIEnumerator(name: "TXT_COMPLETION_HEADER", value: 223)
!300 = !DIEnumerator(name: "TXT_COMPLETION_LINE", value: 224)
!301 = !DIEnumerator(name: "TXT_COMPLETION_FOOTER", value: 225)
!302 = !DIEnumerator(name: "TXT_CAPSICUM_ENABLED", value: 226)
!303 = !DIEnumerator(name: "TXT_CAPSICUM_DISABLED", value: 227)
!304 = !DIEnumerator(name: "TXT_CAPSICUM_FAILED", value: 228)
!305 = !DIEnumerator(name: "TLS_FILL_15", value: 229)
!306 = !DIEnumerator(name: "TXT_TLS_EPHEMERAL_KEY", value: 230)
!307 = !DIEnumerator(name: "TXT_TLS_EPHEMERAL_KEY_UNAVAILBLE", value: 231)
!308 = !DIEnumerator(name: "TXT_TLS_PUBKEY", value: 232)
!309 = !DIEnumerator(name: "TXT_TLS_CERT_HEADER", value: 233)
!310 = !DIEnumerator(name: "TXT_TLS_CERT_SUBJECT", value: 234)
!311 = !DIEnumerator(name: "TXT_TLS_CERT_ISSUER", value: 235)
!312 = !DIEnumerator(name: "TXT_TLS_PUBKEY_FINGERPRINT", value: 236)
!313 = !DIEnumerator(name: "TXT_TLS_CERT_FINGERPRINT", value: 237)
!314 = !DIEnumerator(name: "TXT_TLS_PROTOCOL_VERSION", value: 238)
!315 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !316, line: 25, size: 32, align: 32, elements: !317)
!316 = !DIFile(filename: "../../../src/core/commands.h", directory: "/home/lichi/Desktop/irssi/task1")
!317 = !{!318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335}
!318 = !DIEnumerator(name: "CMDERR_OPTION_UNKNOWN", value: -3)
!319 = !DIEnumerator(name: "CMDERR_OPTION_AMBIGUOUS", value: -2)
!320 = !DIEnumerator(name: "CMDERR_OPTION_ARG_MISSING", value: -1)
!321 = !DIEnumerator(name: "CMDERR_UNKNOWN", value: 0)
!322 = !DIEnumerator(name: "CMDERR_AMBIGUOUS", value: 1)
!323 = !DIEnumerator(name: "CMDERR_ERRNO", value: 2)
!324 = !DIEnumerator(name: "CMDERR_NOT_ENOUGH_PARAMS", value: 3)
!325 = !DIEnumerator(name: "CMDERR_NOT_CONNECTED", value: 4)
!326 = !DIEnumerator(name: "CMDERR_NOT_JOINED", value: 5)
!327 = !DIEnumerator(name: "CMDERR_CHAN_NOT_FOUND", value: 6)
!328 = !DIEnumerator(name: "CMDERR_CHAN_NOT_SYNCED", value: 7)
!329 = !DIEnumerator(name: "CMDERR_ILLEGAL_PROTO", value: 8)
!330 = !DIEnumerator(name: "CMDERR_NOT_GOOD_IDEA", value: 9)
!331 = !DIEnumerator(name: "CMDERR_INVALID_TIME", value: 10)
!332 = !DIEnumerator(name: "CMDERR_INVALID_CHARSET", value: 11)
!333 = !DIEnumerator(name: "CMDERR_EVAL_MAX_RECURSE", value: 12)
!334 = !DIEnumerator(name: "CMDERR_PROGRAM_NOT_FOUND", value: 13)
!335 = !DIEnumerator(name: "CMDERR_NO_SERVER_DEFINED", value: 14)
!336 = !{!337, !405, !638, !451, !724, !467, !731, !692, !672, !393, !628, !450}
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64, align: 64)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !339, line: 107, baseType: !340)
!339 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !341, line: 30, size: 2240, align: 64, elements: !342)
!341 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!342 = !{!343, !346, !347, !348, !583, !588, !589, !590, !591, !592, !593, !594, !595, !596, !600, !601, !605, !606, !607, !611, !616, !617, !618, !619, !620, !621, !622, !623, !630, !631, !632, !633, !634, !640, !644, !648, !652, !656, !661, !668, !719, !723}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !340, file: !344, line: 3, baseType: !345, size: 32, align: 32)
!344 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!345 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !340, file: !344, line: 4, baseType: !345, size: 32, align: 32, offset: 32)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !340, file: !344, line: 6, baseType: !345, size: 32, align: 32, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !340, file: !344, line: 8, baseType: !349, size: 64, align: 64, offset: 128)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64, align: 64)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !339, line: 113, baseType: !351)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !341, line: 25, size: 1920, align: 64, elements: !352)
!352 = !{!353, !355, !356, !357, !360, !361, !362, !363, !364, !366, !367, !368, !369, !370, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !351, file: !354, line: 3, baseType: !345, size: 32, align: 32)
!354 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!355 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !351, file: !354, line: 4, baseType: !345, size: 32, align: 32, offset: 32)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !351, file: !354, line: 6, baseType: !345, size: 32, align: 32, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !351, file: !354, line: 9, baseType: !358, size: 64, align: 64, offset: 128)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64, align: 64)
!359 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !351, file: !354, line: 10, baseType: !345, size: 32, align: 32, offset: 192)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !351, file: !354, line: 11, baseType: !358, size: 64, align: 64, offset: 256)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !351, file: !354, line: 11, baseType: !358, size: 64, align: 64, offset: 320)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !351, file: !354, line: 11, baseType: !358, size: 64, align: 64, offset: 384)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !351, file: !354, line: 13, baseType: !365, size: 16, align: 16, offset: 448)
!365 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !351, file: !354, line: 14, baseType: !358, size: 64, align: 64, offset: 512)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !351, file: !354, line: 15, baseType: !358, size: 64, align: 64, offset: 576)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !351, file: !354, line: 16, baseType: !345, size: 32, align: 32, offset: 640)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !351, file: !354, line: 17, baseType: !358, size: 64, align: 64, offset: 704)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !351, file: !354, line: 19, baseType: !371, size: 64, align: 64, offset: 768)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64, align: 64)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !339, line: 99, baseType: !373)
!373 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !339, line: 99, flags: DIFlagFwdDecl)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !351, file: !354, line: 19, baseType: !371, size: 64, align: 64, offset: 832)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !351, file: !354, line: 21, baseType: !358, size: 64, align: 64, offset: 896)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !351, file: !354, line: 22, baseType: !358, size: 64, align: 64, offset: 960)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !351, file: !354, line: 23, baseType: !358, size: 64, align: 64, offset: 1024)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !351, file: !354, line: 24, baseType: !358, size: 64, align: 64, offset: 1088)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !351, file: !354, line: 26, baseType: !358, size: 64, align: 64, offset: 1152)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !351, file: !354, line: 27, baseType: !358, size: 64, align: 64, offset: 1216)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !351, file: !354, line: 28, baseType: !358, size: 64, align: 64, offset: 1280)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !351, file: !354, line: 29, baseType: !358, size: 64, align: 64, offset: 1344)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !351, file: !354, line: 30, baseType: !358, size: 64, align: 64, offset: 1408)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !351, file: !354, line: 31, baseType: !358, size: 64, align: 64, offset: 1472)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !351, file: !354, line: 32, baseType: !358, size: 64, align: 64, offset: 1536)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !351, file: !354, line: 33, baseType: !358, size: 64, align: 64, offset: 1600)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !351, file: !354, line: 35, baseType: !388, size: 64, align: 64, offset: 1664)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64, align: 64)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !390)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !391)
!391 = !{!392, !395, !540, !541, !546, !547, !548, !549, !550, !559, !560, !561, !565, !566, !567, !568, !569, !570, !571, !572}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !390, file: !4, line: 100, baseType: !393, size: 32, align: 32)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !394, line: 49, baseType: !345)
!394 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!395 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !390, file: !4, line: 101, baseType: !396, size: 64, align: 64, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64, align: 64)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !398)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !399)
!399 = !{!400, !424, !430, !437, !441, !527, !531, !536}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !398, file: !4, line: 133, baseType: !401, size: 64, align: 64)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64, align: 64)
!402 = !DISubroutineType(types: !403)
!403 = !{!404, !388, !405, !407, !410, !411}
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64, align: 64)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !394, line: 46, baseType: !359)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !408, line: 66, baseType: !409)
!408 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!409 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64, align: 64)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64, align: 64)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64, align: 64)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !414, line: 42, baseType: !415)
!414 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !414, line: 44, size: 128, align: 64, elements: !416)
!416 = !{!417, !422, !423}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !415, file: !414, line: 46, baseType: !418, size: 32, align: 32)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !419, line: 36, baseType: !420)
!419 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !408, line: 45, baseType: !421)
!421 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !415, file: !414, line: 47, baseType: !393, size: 32, align: 32, offset: 32)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !415, file: !414, line: 48, baseType: !405, size: 64, align: 64, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !398, file: !4, line: 138, baseType: !425, size: 64, align: 64, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64, align: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{!404, !388, !428, !407, !410, !411}
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64, align: 64)
!429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !406)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !398, file: !4, line: 143, baseType: !431, size: 64, align: 64, offset: 128)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64, align: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{!404, !388, !434, !436, !411}
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !408, line: 51, baseType: !435)
!435 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !398, file: !4, line: 147, baseType: !438, size: 64, align: 64, offset: 192)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64, align: 64)
!439 = !DISubroutineType(types: !440)
!440 = !{!404, !388, !411}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !398, file: !4, line: 149, baseType: !442, size: 64, align: 64, offset: 256)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64, align: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!445, !388, !526}
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64, align: 64)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !447)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !448)
!448 = !{!449, !452, !473, !502, !504, !508, !509, !510, !511, !519, !520, !521, !522}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !447, file: !16, line: 174, baseType: !450, size: 64, align: 64)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !394, line: 77, baseType: !451)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !447, file: !16, line: 175, baseType: !453, size: 64, align: 64, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64, align: 64)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !455)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !456)
!456 = !{!457, !461, !462}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !455, file: !16, line: 198, baseType: !458, size: 64, align: 64)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64, align: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{null, !450}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !455, file: !16, line: 199, baseType: !458, size: 64, align: 64, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !455, file: !16, line: 200, baseType: !463, size: 64, align: 64, offset: 128)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64, align: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{null, !450, !445, !466, !472}
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64, align: 64)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !468)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64, align: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!471, !450}
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !394, line: 50, baseType: !393)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64, align: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !447, file: !16, line: 177, baseType: !474, size: 64, align: 64, offset: 128)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64, align: 64)
!475 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !476)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !477)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !478)
!478 = !{!479, !484, !488, !492, !496, !497}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !477, file: !16, line: 216, baseType: !480, size: 64, align: 64)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64, align: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!471, !445, !483}
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64, align: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !477, file: !16, line: 218, baseType: !485, size: 64, align: 64, offset: 64)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64, align: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!471, !445}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !477, file: !16, line: 219, baseType: !489, size: 64, align: 64, offset: 128)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64, align: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{!471, !445, !467, !450}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !477, file: !16, line: 222, baseType: !493, size: 64, align: 64, offset: 192)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64, align: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{null, !445}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !477, file: !16, line: 226, baseType: !467, size: 64, align: 64, offset: 256)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !477, file: !16, line: 227, baseType: !498, size: 64, align: 64, offset: 320)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !499)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64, align: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{null}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !447, file: !16, line: 178, baseType: !503, size: 32, align: 32, offset: 192)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !394, line: 55, baseType: !421)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !447, file: !16, line: 180, baseType: !505, size: 64, align: 64, offset: 256)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64, align: 64)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !507)
!507 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !447, file: !16, line: 182, baseType: !393, size: 32, align: 32, offset: 320)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !447, file: !16, line: 183, baseType: !503, size: 32, align: 32, offset: 352)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !447, file: !16, line: 184, baseType: !503, size: 32, align: 32, offset: 384)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !447, file: !16, line: 186, baseType: !512, size: 64, align: 64, offset: 448)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64, align: 64)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !514, line: 37, baseType: !515)
!514 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !514, line: 39, size: 128, align: 64, elements: !516)
!516 = !{!517, !518}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !515, file: !514, line: 41, baseType: !450, size: 64, align: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !515, file: !514, line: 42, baseType: !512, size: 64, align: 64, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !447, file: !16, line: 188, baseType: !445, size: 64, align: 64, offset: 512)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !447, file: !16, line: 189, baseType: !445, size: 64, align: 64, offset: 576)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !447, file: !16, line: 191, baseType: !358, size: 64, align: 64, offset: 640)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !447, file: !16, line: 193, baseType: !523, size: 64, align: 64, offset: 704)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64, align: 64)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !525)
!525 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !398, file: !4, line: 151, baseType: !528, size: 64, align: 64, offset: 320)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64, align: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{null, !388}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !398, file: !4, line: 152, baseType: !532, size: 64, align: 64, offset: 384)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64, align: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!404, !388, !535, !411}
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !398, file: !4, line: 155, baseType: !537, size: 64, align: 64, offset: 448)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64, align: 64)
!538 = !DISubroutineType(types: !539)
!539 = !{!535, !388}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !390, file: !4, line: 103, baseType: !405, size: 64, align: 64, offset: 128)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !390, file: !4, line: 104, baseType: !542, size: 64, align: 64, offset: 192)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !543, line: 77, baseType: !544)
!543 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64, align: 64)
!545 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !543, line: 77, flags: DIFlagFwdDecl)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !390, file: !4, line: 105, baseType: !542, size: 64, align: 64, offset: 256)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !390, file: !4, line: 106, baseType: !405, size: 64, align: 64, offset: 320)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !390, file: !4, line: 107, baseType: !503, size: 32, align: 32, offset: 384)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !390, file: !4, line: 109, baseType: !407, size: 64, align: 64, offset: 448)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !390, file: !4, line: 110, baseType: !551, size: 64, align: 64, offset: 512)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64, align: 64)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !553, line: 39, baseType: !554)
!553 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !553, line: 41, size: 192, align: 64, elements: !555)
!555 = !{!556, !557, !558}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !554, file: !553, line: 43, baseType: !405, size: 64, align: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !554, file: !553, line: 44, baseType: !407, size: 64, align: 64, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !554, file: !553, line: 45, baseType: !407, size: 64, align: 64, offset: 128)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !390, file: !4, line: 111, baseType: !551, size: 64, align: 64, offset: 576)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !390, file: !4, line: 112, baseType: !551, size: 64, align: 64, offset: 640)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !390, file: !4, line: 113, baseType: !562, size: 48, align: 8, offset: 704)
!562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !406, size: 48, align: 8, elements: !563)
!563 = !{!564}
!564 = !DISubrange(count: 6)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !390, file: !4, line: 117, baseType: !503, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !390, file: !4, line: 118, baseType: !503, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !390, file: !4, line: 119, baseType: !503, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !390, file: !4, line: 120, baseType: !503, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !390, file: !4, line: 121, baseType: !503, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !390, file: !4, line: 122, baseType: !503, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !390, file: !4, line: 124, baseType: !450, size: 64, align: 64, offset: 768)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !390, file: !4, line: 125, baseType: !450, size: 64, align: 64, offset: 832)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !351, file: !354, line: 38, baseType: !421, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !351, file: !354, line: 39, baseType: !421, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !351, file: !354, line: 40, baseType: !421, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !351, file: !354, line: 41, baseType: !421, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !351, file: !354, line: 42, baseType: !421, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !351, file: !354, line: 43, baseType: !421, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !351, file: !354, line: 44, baseType: !421, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !351, file: !354, line: 45, baseType: !421, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !351, file: !354, line: 46, baseType: !358, size: 64, align: 64, offset: 1792)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !351, file: !354, line: 47, baseType: !358, size: 64, align: 64, offset: 1856)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !340, file: !344, line: 9, baseType: !584, size: 64, align: 64, offset: 192)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !585, line: 75, baseType: !586)
!585 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !587, line: 139, baseType: !435)
!587 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!588 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !340, file: !344, line: 10, baseType: !584, size: 64, align: 64, offset: 256)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !340, file: !344, line: 12, baseType: !358, size: 64, align: 64, offset: 320)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !340, file: !344, line: 13, baseType: !358, size: 64, align: 64, offset: 384)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !340, file: !344, line: 15, baseType: !421, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !340, file: !344, line: 16, baseType: !421, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !340, file: !344, line: 17, baseType: !421, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !340, file: !344, line: 18, baseType: !421, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !340, file: !344, line: 19, baseType: !421, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !340, file: !344, line: 21, baseType: !597, size: 64, align: 64, offset: 512)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64, align: 64)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !339, line: 102, baseType: !599)
!599 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !339, line: 102, flags: DIFlagFwdDecl)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !340, file: !344, line: 22, baseType: !345, size: 32, align: 32, offset: 576)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !340, file: !344, line: 25, baseType: !602, size: 128, align: 64, offset: 640)
!602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 128, align: 64, elements: !603)
!603 = !{!604}
!604 = !DISubrange(count: 2)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !340, file: !344, line: 26, baseType: !345, size: 32, align: 32, offset: 768)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !340, file: !344, line: 27, baseType: !345, size: 32, align: 32, offset: 800)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !340, file: !344, line: 29, baseType: !608, size: 64, align: 64, offset: 832)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64, align: 64)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !339, line: 103, baseType: !610)
!610 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !339, line: 103, flags: DIFlagFwdDecl)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !340, file: !344, line: 30, baseType: !612, size: 64, align: 64, offset: 896)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64, align: 64)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !614, line: 37, baseType: !615)
!614 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!615 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !614, line: 37, flags: DIFlagFwdDecl)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !340, file: !344, line: 32, baseType: !358, size: 64, align: 64, offset: 960)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !340, file: !344, line: 33, baseType: !358, size: 64, align: 64, offset: 1024)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !340, file: !344, line: 34, baseType: !358, size: 64, align: 64, offset: 1088)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !340, file: !344, line: 35, baseType: !421, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !340, file: !344, line: 36, baseType: !421, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !340, file: !344, line: 37, baseType: !421, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !340, file: !344, line: 38, baseType: !421, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !340, file: !344, line: 40, baseType: !624, size: 128, align: 64, offset: 1216)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !394, line: 504, baseType: !625)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !394, line: 506, size: 128, align: 64, elements: !626)
!626 = !{!627, !629}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !625, file: !394, line: 508, baseType: !628, size: 64, align: 64)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !394, line: 48, baseType: !435)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !625, file: !394, line: 509, baseType: !628, size: 64, align: 64, offset: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !340, file: !344, line: 41, baseType: !584, size: 64, align: 64, offset: 1344)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !340, file: !344, line: 42, baseType: !345, size: 32, align: 32, offset: 1408)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !340, file: !344, line: 44, baseType: !512, size: 64, align: 64, offset: 1472)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !340, file: !344, line: 45, baseType: !512, size: 64, align: 64, offset: 1536)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !340, file: !344, line: 53, baseType: !635, size: 64, align: 64, offset: 1600)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64, align: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{null, !337, !638, !345}
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64, align: 64)
!639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !359)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !340, file: !344, line: 55, baseType: !641, size: 64, align: 64, offset: 1664)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64, align: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{!345, !337, !359}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !340, file: !344, line: 57, baseType: !645, size: 64, align: 64, offset: 1728)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64, align: 64)
!646 = !DISubroutineType(types: !647)
!647 = !{!345, !337, !638}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !340, file: !344, line: 60, baseType: !649, size: 64, align: 64, offset: 1792)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64, align: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{!638, !337}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !340, file: !344, line: 62, baseType: !653, size: 64, align: 64, offset: 1856)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64, align: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{null, !337, !638, !638, !345}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !340, file: !344, line: 65, baseType: !657, size: 64, align: 64, offset: 1920)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64, align: 64)
!658 = !DISubroutineType(types: !659)
!659 = !{!660, !337, !638, !638}
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64, align: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !340, file: !344, line: 69, baseType: !662, size: 64, align: 64, offset: 1984)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64, align: 64)
!663 = !DISubroutineType(types: !664)
!664 = !{!665, !337, !638}
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64, align: 64)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !339, line: 109, baseType: !667)
!667 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !339, line: 109, flags: DIFlagFwdDecl)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !340, file: !344, line: 70, baseType: !669, size: 64, align: 64, offset: 2048)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64, align: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{!672, !337, !638}
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64, align: 64)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !339, line: 110, baseType: !674)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !675, line: 15, size: 960, align: 64, elements: !676)
!675 = !DIFile(filename: "../../../src/core/queries.h", directory: "/home/lichi/Desktop/irssi/task1")
!676 = !{!677, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !712, !713, !715, !716, !717, !718}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !674, file: !678, line: 3, baseType: !345, size: 32, align: 32)
!678 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!679 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !674, file: !678, line: 4, baseType: !345, size: 32, align: 32, offset: 32)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !674, file: !678, line: 5, baseType: !612, size: 64, align: 64, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !674, file: !678, line: 7, baseType: !451, size: 64, align: 64, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !674, file: !678, line: 8, baseType: !337, size: 64, align: 64, offset: 192)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !674, file: !678, line: 9, baseType: !358, size: 64, align: 64, offset: 256)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !674, file: !678, line: 10, baseType: !358, size: 64, align: 64, offset: 320)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !674, file: !678, line: 11, baseType: !584, size: 64, align: 64, offset: 384)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !674, file: !678, line: 12, baseType: !345, size: 32, align: 32, offset: 448)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !674, file: !678, line: 13, baseType: !358, size: 64, align: 64, offset: 512)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !674, file: !678, line: 15, baseType: !689, size: 64, align: 64, offset: 576)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64, align: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{null, !692}
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64, align: 64)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !339, line: 108, baseType: !694)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !695, line: 5, size: 704, align: 64, elements: !696)
!695 = !DIFile(filename: "../../../src/core/window-item-def.h", directory: "/home/lichi/Desktop/irssi/task1")
!696 = !{!697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !694, file: !678, line: 3, baseType: !345, size: 32, align: 32)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !694, file: !678, line: 4, baseType: !345, size: 32, align: 32, offset: 32)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !694, file: !678, line: 5, baseType: !612, size: 64, align: 64, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !694, file: !678, line: 7, baseType: !451, size: 64, align: 64, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !694, file: !678, line: 8, baseType: !337, size: 64, align: 64, offset: 192)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !694, file: !678, line: 9, baseType: !358, size: 64, align: 64, offset: 256)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !694, file: !678, line: 10, baseType: !358, size: 64, align: 64, offset: 320)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !694, file: !678, line: 11, baseType: !584, size: 64, align: 64, offset: 384)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !694, file: !678, line: 12, baseType: !345, size: 32, align: 32, offset: 448)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !694, file: !678, line: 13, baseType: !358, size: 64, align: 64, offset: 512)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !694, file: !678, line: 15, baseType: !689, size: 64, align: 64, offset: 576)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !694, file: !678, line: 17, baseType: !709, size: 64, align: 64, offset: 640)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64, align: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{!638, !692}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !674, file: !678, line: 17, baseType: !709, size: 64, align: 64, offset: 640)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !674, file: !714, line: 5, baseType: !358, size: 64, align: 64, offset: 704)
!714 = !DIFile(filename: "../../../src/core/query-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!715 = !DIDerivedType(tag: DW_TAG_member, name: "server_tag", scope: !674, file: !714, line: 6, baseType: !358, size: 64, align: 64, offset: 768)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "last_unread_msg", scope: !674, file: !714, line: 7, baseType: !584, size: 64, align: 64, offset: 832)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "unwanted", scope: !674, file: !714, line: 9, baseType: !421, size: 1, align: 32, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !674, file: !714, line: 11, baseType: !421, size: 1, align: 32, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !340, file: !344, line: 71, baseType: !720, size: 64, align: 64, offset: 2112)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64, align: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{!345, !638, !638}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !340, file: !344, line: 73, baseType: !720, size: 64, align: 64, offset: 2176)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !725, line: 9, baseType: !726)
!725 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64, align: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{null, !729, !729, !729, !729, !729, !729}
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64, align: 64)
!730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64, align: 64)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "WINDOW_REC", file: !339, line: 117, baseType: !733)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WINDOW_REC", file: !36, line: 28, size: 1280, align: 64, elements: !734)
!734 = !{!735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !768, !769, !770, !771, !772, !773, !774, !775}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "refnum", scope: !733, file: !36, line: 29, baseType: !345, size: 32, align: 32)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !733, file: !36, line: 30, baseType: !358, size: 64, align: 64, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !733, file: !36, line: 32, baseType: !345, size: 32, align: 32, offset: 128)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !733, file: !36, line: 32, baseType: !345, size: 32, align: 32, offset: 160)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !733, file: !36, line: 34, baseType: !512, size: 64, align: 64, offset: 192)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !733, file: !36, line: 35, baseType: !692, size: 64, align: 64, offset: 256)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "active_server", scope: !733, file: !36, line: 36, baseType: !337, size: 64, align: 64, offset: 320)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "connect_server", scope: !733, file: !36, line: 37, baseType: !337, size: 64, align: 64, offset: 384)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !733, file: !36, line: 38, baseType: !358, size: 64, align: 64, offset: 448)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !733, file: !36, line: 40, baseType: !345, size: 32, align: 32, offset: 512)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "bound_items", scope: !733, file: !36, line: 41, baseType: !512, size: 64, align: 64, offset: 576)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "immortal", scope: !733, file: !36, line: 43, baseType: !421, size: 1, align: 32, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "sticky_refnum", scope: !733, file: !36, line: 44, baseType: !421, size: 1, align: 32, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !733, file: !36, line: 45, baseType: !421, size: 1, align: 32, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !733, file: !36, line: 48, baseType: !750, size: 64, align: 64, offset: 704)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64, align: 64)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "HISTORY_REC", file: !752, line: 14, baseType: !753)
!752 = !DIFile(filename: "command-history.h", directory: "/home/lichi/Desktop/irssi/task1")
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !752, line: 6, size: 256, align: 64, elements: !754)
!754 = !{!755, !756, !765, !766, !767}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !753, file: !752, line: 7, baseType: !358, size: 64, align: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !753, file: !752, line: 9, baseType: !757, size: 64, align: 64, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64, align: 64)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "GList", file: !759, line: 37, baseType: !760)
!759 = !DIFile(filename: "/usr/include/glib-2.0/glib/glist.h", directory: "/home/lichi/Desktop/irssi/task1")
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GList", file: !759, line: 39, size: 192, align: 64, elements: !761)
!761 = !{!762, !763, !764}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !760, file: !759, line: 41, baseType: !450, size: 64, align: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !760, file: !759, line: 42, baseType: !757, size: 64, align: 64, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !760, file: !759, line: 43, baseType: !757, size: 64, align: 64, offset: 128)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "lines", scope: !753, file: !752, line: 10, baseType: !345, size: 32, align: 32, offset: 128)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !753, file: !752, line: 12, baseType: !345, size: 32, align: 32, offset: 160)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "redo", scope: !753, file: !752, line: 13, baseType: !345, size: 1, align: 32, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "history_name", scope: !733, file: !36, line: 49, baseType: !358, size: 64, align: 64, offset: 768)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !733, file: !36, line: 51, baseType: !345, size: 32, align: 32, offset: 832)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !733, file: !36, line: 52, baseType: !358, size: 64, align: 64, offset: 896)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "last_timestamp", scope: !733, file: !36, line: 54, baseType: !584, size: 64, align: 64, offset: 960)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "last_line", scope: !733, file: !36, line: 55, baseType: !584, size: 64, align: 64, offset: 1024)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "theme_name", scope: !733, file: !36, line: 57, baseType: !358, size: 64, align: 64, offset: 1088)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "theme", scope: !733, file: !36, line: 58, baseType: !451, size: 64, align: 64, offset: 1152)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "gui_data", scope: !733, file: !36, line: 60, baseType: !451, size: 64, align: 64, offset: 1216)
!776 = !{!777, !779, !780}
!777 = distinct !DIGlobalVariable(name: "queryclose_tag", scope: !0, file: !778, line: 38, type: !345, isLocal: true, isDefinition: true, variable: i32* @queryclose_tag)
!778 = !DIFile(filename: "fe-queries.c", directory: "/home/lichi/Desktop/irssi/task1")
!779 = distinct !DIGlobalVariable(name: "querycreate_level", scope: !0, file: !778, line: 38, type: !345, isLocal: true, isDefinition: true, variable: i32* @querycreate_level)
!780 = distinct !DIGlobalVariable(name: "query_auto_close", scope: !0, file: !778, line: 38, type: !345, isLocal: true, isDefinition: true, variable: i32* @query_auto_close)
!781 = !{i32 2, !"Dwarf Version", i32 4}
!782 = !{i32 2, !"Debug Info Version", i32 3}
!783 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!784 = distinct !DISubprogram(name: "privmsg_get_query", scope: !778, file: !778, line: 41, type: !785, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !787)
!785 = !DISubroutineType(types: !786)
!786 = !{!672, !337, !638, !345, !345}
!787 = !{}
!788 = !DILocalVariable(name: "server", arg: 1, scope: !784, file: !778, line: 41, type: !337)
!789 = !DIExpression()
!790 = !DILocation(line: 41, column: 42, scope: !784)
!791 = !DILocalVariable(name: "nick", arg: 2, scope: !784, file: !778, line: 41, type: !638)
!792 = !DILocation(line: 41, column: 62, scope: !784)
!793 = !DILocalVariable(name: "own", arg: 3, scope: !784, file: !778, line: 42, type: !345)
!794 = !DILocation(line: 42, column: 13, scope: !784)
!795 = !DILocalVariable(name: "level", arg: 4, scope: !784, file: !778, line: 42, type: !345)
!796 = !DILocation(line: 42, column: 22, scope: !784)
!797 = !DILocalVariable(name: "query", scope: !784, file: !778, line: 44, type: !672)
!798 = !DILocation(line: 44, column: 13, scope: !784)
!799 = !DILocation(line: 46, column: 2, scope: !784)
!800 = distinct !{!800, !799}
!801 = !DILocation(line: 46, column: 45, scope: !802)
!802 = !DILexicalBlockFile(scope: !803, file: !778, discriminator: 1)
!803 = distinct !DILexicalBlock(scope: !804, file: !778, line: 46, column: 10)
!804 = distinct !DILexicalBlock(scope: !784, file: !778, line: 46, column: 4)
!805 = !DILocation(line: 46, column: 27, scope: !802)
!806 = !DILocation(line: 46, column: 12, scope: !802)
!807 = !DILocation(line: 46, column: 10, scope: !802)
!808 = !DILocation(line: 46, column: 11, scope: !809)
!809 = !DILexicalBlockFile(scope: !803, file: !778, discriminator: 2)
!810 = !DILocation(line: 46, column: 10, scope: !811)
!811 = !DILexicalBlockFile(scope: !804, file: !778, discriminator: 3)
!812 = !DILocation(line: 46, column: 33, scope: !813)
!813 = !DILexicalBlockFile(scope: !814, file: !778, discriminator: 4)
!814 = distinct !DILexicalBlock(scope: !803, file: !778, line: 46, column: 31)
!815 = !DILocation(line: 46, column: 42, scope: !816)
!816 = !DILexicalBlockFile(scope: !817, file: !778, discriminator: 5)
!817 = distinct !DILexicalBlock(scope: !803, file: !778, line: 46, column: 40)
!818 = !DILocation(line: 46, column: 132, scope: !816)
!819 = !DILocation(line: 46, column: 7, scope: !820)
!820 = !DILexicalBlockFile(scope: !804, file: !778, discriminator: 6)
!821 = !DILocation(line: 47, column: 9, scope: !784)
!822 = distinct !{!822, !821}
!823 = !DILocation(line: 47, column: 17, scope: !824)
!824 = !DILexicalBlockFile(scope: !825, file: !778, discriminator: 1)
!825 = distinct !DILexicalBlock(scope: !826, file: !778, line: 47, column: 17)
!826 = distinct !DILexicalBlock(scope: !784, file: !778, line: 47, column: 11)
!827 = !DILocation(line: 47, column: 22, scope: !824)
!828 = !DILocation(line: 47, column: 12, scope: !829)
!829 = !DILexicalBlockFile(scope: !830, file: !778, discriminator: 2)
!830 = distinct !DILexicalBlock(scope: !825, file: !778, line: 47, column: 10)
!831 = !DILocation(line: 47, column: 21, scope: !832)
!832 = !DILexicalBlockFile(scope: !833, file: !778, discriminator: 3)
!833 = distinct !DILexicalBlock(scope: !825, file: !778, line: 47, column: 19)
!834 = !DILocation(line: 47, column: 106, scope: !832)
!835 = !DILocation(line: 47, column: 14, scope: !836)
!836 = !DILexicalBlockFile(scope: !826, file: !778, discriminator: 4)
!837 = !DILocation(line: 49, column: 21, scope: !784)
!838 = !DILocation(line: 49, column: 29, scope: !784)
!839 = !DILocation(line: 49, column: 10, scope: !784)
!840 = !DILocation(line: 49, column: 8, scope: !784)
!841 = !DILocation(line: 50, column: 6, scope: !842)
!842 = distinct !DILexicalBlock(scope: !784, file: !778, line: 50, column: 6)
!843 = !DILocation(line: 50, column: 12, scope: !842)
!844 = !DILocation(line: 50, column: 19, scope: !842)
!845 = !DILocation(line: 50, column: 23, scope: !846)
!846 = !DILexicalBlockFile(scope: !842, file: !778, discriminator: 1)
!847 = !DILocation(line: 50, column: 43, scope: !846)
!848 = !DILocation(line: 51, column: 7, scope: !842)
!849 = !DILocation(line: 51, column: 27, scope: !842)
!850 = !DILocation(line: 51, column: 25, scope: !842)
!851 = !DILocation(line: 51, column: 34, scope: !842)
!852 = !DILocation(line: 51, column: 39, scope: !842)
!853 = !DILocation(line: 52, column: 8, scope: !842)
!854 = !DILocation(line: 52, column: 12, scope: !842)
!855 = !DILocation(line: 52, column: 15, scope: !846)
!856 = !DILocation(line: 50, column: 6, scope: !857)
!857 = !DILexicalBlockFile(scope: !784, file: !778, discriminator: 2)
!858 = !DILocation(line: 53, column: 13, scope: !859)
!859 = distinct !DILexicalBlock(scope: !842, file: !778, line: 52, column: 59)
!860 = !DILocation(line: 53, column: 21, scope: !859)
!861 = !DILocation(line: 53, column: 12, scope: !859)
!862 = !DILocation(line: 53, column: 12, scope: !863)
!863 = !DILexicalBlockFile(scope: !859, file: !778, discriminator: 1)
!864 = !DILocation(line: 53, column: 65, scope: !865)
!865 = !DILexicalBlockFile(scope: !859, file: !778, discriminator: 2)
!866 = !DILocation(line: 53, column: 74, scope: !865)
!867 = !DILocation(line: 53, column: 42, scope: !865)
!868 = !DILocation(line: 53, column: 12, scope: !865)
!869 = !DILocation(line: 53, column: 12, scope: !870)
!870 = !DILexicalBlockFile(scope: !859, file: !778, discriminator: 3)
!871 = !DILocation(line: 54, column: 4, scope: !859)
!872 = !DILocation(line: 54, column: 17, scope: !859)
!873 = !DILocation(line: 54, column: 25, scope: !859)
!874 = !DILocation(line: 54, column: 30, scope: !859)
!875 = !DILocation(line: 53, column: 11, scope: !870)
!876 = !DILocation(line: 53, column: 9, scope: !870)
!877 = !DILocation(line: 55, column: 2, scope: !859)
!878 = !DILocation(line: 57, column: 9, scope: !784)
!879 = !DILocation(line: 57, column: 2, scope: !784)
!880 = !DILocation(line: 58, column: 1, scope: !784)
!881 = distinct !DISubprogram(name: "fe_queries_init", scope: !778, file: !778, line: 356, type: !500, isLocal: false, isDefinition: true, scopeLine: 357, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !787)
!882 = !DILocation(line: 358, column: 2, scope: !881)
!883 = !DILocation(line: 359, column: 2, scope: !881)
!884 = !DILocation(line: 360, column: 2, scope: !881)
!885 = !DILocation(line: 362, column: 17, scope: !881)
!886 = !DILocation(line: 363, column: 2, scope: !881)
!887 = !DILocation(line: 365, column: 2, scope: !881)
!888 = !DILocation(line: 366, column: 2, scope: !881)
!889 = !DILocation(line: 367, column: 2, scope: !881)
!890 = !DILocation(line: 368, column: 2, scope: !881)
!891 = !DILocation(line: 369, column: 9, scope: !881)
!892 = !DILocation(line: 370, column: 2, scope: !881)
!893 = !DILocation(line: 371, column: 2, scope: !881)
!894 = !DILocation(line: 372, column: 2, scope: !881)
!895 = !DILocation(line: 373, column: 2, scope: !881)
!896 = !DILocation(line: 375, column: 2, scope: !881)
!897 = !DILocation(line: 376, column: 2, scope: !881)
!898 = !DILocation(line: 377, column: 2, scope: !881)
!899 = !DILocation(line: 379, column: 2, scope: !881)
!900 = !DILocation(line: 380, column: 1, scope: !881)
!901 = distinct !DISubprogram(name: "read_settings", scope: !778, file: !778, line: 344, type: !500, isLocal: true, isDefinition: true, scopeLine: 345, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !787)
!902 = !DILocation(line: 346, column: 22, scope: !901)
!903 = !DILocation(line: 346, column: 20, scope: !901)
!904 = !DILocation(line: 347, column: 21, scope: !901)
!905 = !DILocation(line: 347, column: 57, scope: !901)
!906 = !DILocation(line: 347, column: 19, scope: !901)
!907 = !DILocation(line: 348, column: 6, scope: !908)
!908 = distinct !DILexicalBlock(scope: !901, file: !778, line: 348, column: 6)
!909 = !DILocation(line: 348, column: 23, scope: !908)
!910 = !DILocation(line: 348, column: 27, scope: !908)
!911 = !DILocation(line: 348, column: 30, scope: !912)
!912 = !DILexicalBlockFile(scope: !908, file: !778, discriminator: 1)
!913 = !DILocation(line: 348, column: 45, scope: !912)
!914 = !DILocation(line: 348, column: 6, scope: !912)
!915 = !DILocation(line: 349, column: 20, scope: !908)
!916 = !DILocation(line: 349, column: 18, scope: !908)
!917 = !DILocation(line: 349, column: 3, scope: !908)
!918 = !DILocation(line: 350, column: 11, scope: !919)
!919 = distinct !DILexicalBlock(scope: !908, file: !778, line: 350, column: 11)
!920 = !DILocation(line: 350, column: 28, scope: !919)
!921 = !DILocation(line: 350, column: 33, scope: !919)
!922 = !DILocation(line: 350, column: 36, scope: !923)
!923 = !DILexicalBlockFile(scope: !919, file: !778, discriminator: 1)
!924 = !DILocation(line: 350, column: 51, scope: !923)
!925 = !DILocation(line: 350, column: 11, scope: !923)
!926 = !DILocation(line: 351, column: 19, scope: !927)
!927 = distinct !DILexicalBlock(scope: !919, file: !778, line: 350, column: 58)
!928 = !DILocation(line: 351, column: 3, scope: !927)
!929 = !DILocation(line: 352, column: 18, scope: !927)
!930 = !DILocation(line: 353, column: 2, scope: !927)
!931 = !DILocation(line: 354, column: 1, scope: !901)
!932 = distinct !DISubprogram(name: "signal_query_created", scope: !778, file: !778, line: 60, type: !933, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !787)
!933 = !DISubroutineType(types: !934)
!934 = !{null, !672, !450}
!935 = !DILocalVariable(name: "query", arg: 1, scope: !932, file: !778, line: 60, type: !672)
!936 = !DILocation(line: 60, column: 45, scope: !932)
!937 = !DILocalVariable(name: "automatic", arg: 2, scope: !932, file: !778, line: 60, type: !450)
!938 = !DILocation(line: 60, column: 61, scope: !932)
!939 = !DILocalVariable(name: "dest", scope: !932, file: !778, line: 62, type: !940)
!940 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_DEST_REC", file: !941, line: 62, baseType: !942)
!941 = !DIFile(filename: "formats.h", directory: "/home/lichi/Desktop/irssi/task1")
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TEXT_DEST_REC", file: !941, line: 50, size: 576, align: 64, elements: !943)
!943 = !{!944, !945, !946, !947, !948, !949, !950, !951, !952, !953}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !942, file: !941, line: 51, baseType: !731, size: 64, align: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !942, file: !941, line: 52, baseType: !337, size: 64, align: 64, offset: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "server_tag", scope: !942, file: !941, line: 53, baseType: !638, size: 64, align: 64, offset: 128)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !942, file: !941, line: 54, baseType: !638, size: 64, align: 64, offset: 192)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !942, file: !941, line: 55, baseType: !638, size: 64, align: 64, offset: 256)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !942, file: !941, line: 56, baseType: !638, size: 64, align: 64, offset: 320)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !942, file: !941, line: 57, baseType: !345, size: 32, align: 32, offset: 384)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_priority", scope: !942, file: !941, line: 59, baseType: !345, size: 32, align: 32, offset: 416)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !942, file: !941, line: 60, baseType: !358, size: 64, align: 64, offset: 448)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !942, file: !941, line: 61, baseType: !345, size: 32, align: 32, offset: 512)
!954 = !DILocation(line: 62, column: 23, scope: !932)
!955 = !DILocation(line: 64, column: 2, scope: !932)
!956 = distinct !{!956, !955}
!957 = !DILocation(line: 64, column: 51, scope: !958)
!958 = !DILexicalBlockFile(scope: !959, file: !778, discriminator: 1)
!959 = distinct !DILexicalBlock(scope: !960, file: !778, line: 64, column: 10)
!960 = distinct !DILexicalBlock(scope: !932, file: !778, line: 64, column: 4)
!961 = !DILocation(line: 64, column: 26, scope: !958)
!962 = !DILocation(line: 64, column: 12, scope: !958)
!963 = !DILocation(line: 64, column: 10, scope: !958)
!964 = !DILocation(line: 64, column: 11, scope: !965)
!965 = !DILexicalBlockFile(scope: !959, file: !778, discriminator: 2)
!966 = !DILocation(line: 64, column: 10, scope: !967)
!967 = !DILexicalBlockFile(scope: !960, file: !778, discriminator: 3)
!968 = !DILocation(line: 64, column: 52, scope: !969)
!969 = !DILexicalBlockFile(scope: !970, file: !778, discriminator: 4)
!970 = distinct !DILexicalBlock(scope: !959, file: !778, line: 64, column: 50)
!971 = !DILocation(line: 64, column: 61, scope: !972)
!972 = !DILexicalBlockFile(scope: !973, file: !778, discriminator: 5)
!973 = distinct !DILexicalBlock(scope: !959, file: !778, line: 64, column: 59)
!974 = !DILocation(line: 64, column: 149, scope: !972)
!975 = !DILocation(line: 64, column: 160, scope: !976)
!976 = !DILexicalBlockFile(scope: !960, file: !778, discriminator: 6)
!977 = !DILocation(line: 66, column: 40, scope: !978)
!978 = distinct !DILexicalBlock(scope: !932, file: !778, line: 66, column: 6)
!979 = !DILocation(line: 66, column: 49, scope: !978)
!980 = !DILocation(line: 66, column: 7, scope: !978)
!981 = !DILocation(line: 66, column: 57, scope: !978)
!982 = !DILocation(line: 66, column: 6, scope: !932)
!983 = !DILocation(line: 67, column: 38, scope: !984)
!984 = distinct !DILexicalBlock(scope: !978, file: !778, line: 66, column: 40)
!985 = !DILocation(line: 67, column: 22, scope: !984)
!986 = !DILocation(line: 68, column: 25, scope: !984)
!987 = !DILocation(line: 68, column: 16, scope: !984)
!988 = !DILocation(line: 68, column: 9, scope: !984)
!989 = !DILocation(line: 67, column: 3, scope: !984)
!990 = !DILocation(line: 69, column: 2, scope: !984)
!991 = !DILocation(line: 71, column: 32, scope: !932)
!992 = !DILocation(line: 71, column: 39, scope: !932)
!993 = !DILocation(line: 71, column: 47, scope: !932)
!994 = !DILocation(line: 71, column: 54, scope: !932)
!995 = !DILocation(line: 72, column: 11, scope: !932)
!996 = !DILocation(line: 72, column: 18, scope: !932)
!997 = !DILocation(line: 71, column: 2, scope: !932)
!998 = !DILocation(line: 73, column: 68, scope: !932)
!999 = !DILocation(line: 73, column: 75, scope: !932)
!1000 = !DILocation(line: 73, column: 81, scope: !932)
!1001 = !DILocation(line: 73, column: 88, scope: !932)
!1002 = !DILocation(line: 73, column: 2, scope: !932)
!1003 = !DILocation(line: 75, column: 1, scope: !932)
!1004 = !DILocation(line: 75, column: 1, scope: !1005)
!1005 = !DILexicalBlockFile(scope: !932, file: !778, discriminator: 1)
!1006 = distinct !DISubprogram(name: "signal_query_destroyed", scope: !778, file: !778, line: 84, type: !1007, isLocal: true, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !787)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{null, !672}
!1009 = !DILocalVariable(name: "query", arg: 1, scope: !1006, file: !778, line: 84, type: !672)
!1010 = !DILocation(line: 84, column: 47, scope: !1006)
!1011 = !DILocalVariable(name: "window", scope: !1006, file: !778, line: 86, type: !731)
!1012 = !DILocation(line: 86, column: 14, scope: !1006)
!1013 = !DILocalVariable(name: "dest", scope: !1006, file: !778, line: 87, type: !940)
!1014 = !DILocation(line: 87, column: 23, scope: !1006)
!1015 = !DILocation(line: 89, column: 2, scope: !1006)
!1016 = distinct !{!1016, !1015}
!1017 = !DILocation(line: 89, column: 51, scope: !1018)
!1018 = !DILexicalBlockFile(scope: !1019, file: !778, discriminator: 1)
!1019 = distinct !DILexicalBlock(scope: !1020, file: !778, line: 89, column: 10)
!1020 = distinct !DILexicalBlock(scope: !1006, file: !778, line: 89, column: 4)
!1021 = !DILocation(line: 89, column: 26, scope: !1018)
!1022 = !DILocation(line: 89, column: 12, scope: !1018)
!1023 = !DILocation(line: 89, column: 10, scope: !1018)
!1024 = !DILocation(line: 89, column: 11, scope: !1025)
!1025 = !DILexicalBlockFile(scope: !1019, file: !778, discriminator: 2)
!1026 = !DILocation(line: 89, column: 10, scope: !1027)
!1027 = !DILexicalBlockFile(scope: !1020, file: !778, discriminator: 3)
!1028 = !DILocation(line: 89, column: 52, scope: !1029)
!1029 = !DILexicalBlockFile(scope: !1030, file: !778, discriminator: 4)
!1030 = distinct !DILexicalBlock(scope: !1019, file: !778, line: 89, column: 50)
!1031 = !DILocation(line: 89, column: 61, scope: !1032)
!1032 = !DILexicalBlockFile(scope: !1033, file: !778, discriminator: 5)
!1033 = distinct !DILexicalBlock(scope: !1019, file: !778, line: 89, column: 59)
!1034 = !DILocation(line: 89, column: 149, scope: !1032)
!1035 = !DILocation(line: 89, column: 160, scope: !1036)
!1036 = !DILexicalBlockFile(scope: !1020, file: !778, discriminator: 6)
!1037 = !DILocation(line: 91, column: 61, scope: !1006)
!1038 = !DILocation(line: 91, column: 70, scope: !1006)
!1039 = !DILocation(line: 91, column: 12, scope: !1006)
!1040 = !DILocation(line: 91, column: 9, scope: !1006)
!1041 = !DILocation(line: 92, column: 6, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1006, file: !778, line: 92, column: 6)
!1043 = !DILocation(line: 92, column: 13, scope: !1042)
!1044 = !DILocation(line: 92, column: 6, scope: !1006)
!1045 = !DILocation(line: 93, column: 3, scope: !1042)
!1046 = !DILocation(line: 95, column: 32, scope: !1006)
!1047 = !DILocation(line: 95, column: 39, scope: !1006)
!1048 = !DILocation(line: 95, column: 47, scope: !1006)
!1049 = !DILocation(line: 95, column: 54, scope: !1006)
!1050 = !DILocation(line: 96, column: 11, scope: !1006)
!1051 = !DILocation(line: 96, column: 18, scope: !1006)
!1052 = !DILocation(line: 95, column: 2, scope: !1006)
!1053 = !DILocation(line: 97, column: 67, scope: !1006)
!1054 = !DILocation(line: 97, column: 74, scope: !1006)
!1055 = !DILocation(line: 97, column: 2, scope: !1006)
!1056 = !DILocation(line: 99, column: 38, scope: !1006)
!1057 = !DILocation(line: 99, column: 22, scope: !1006)
!1058 = !DILocation(line: 99, column: 2, scope: !1006)
!1059 = !DILocation(line: 101, column: 7, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1006, file: !778, line: 101, column: 6)
!1061 = !DILocation(line: 101, column: 14, scope: !1060)
!1062 = !DILocation(line: 101, column: 6, scope: !1006)
!1063 = !DILocation(line: 102, column: 23, scope: !1060)
!1064 = !DILocation(line: 102, column: 3, scope: !1060)
!1065 = !DILocation(line: 105, column: 19, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1060, file: !778, line: 103, column: 7)
!1067 = !DILocation(line: 105, column: 27, scope: !1066)
!1068 = !DILocation(line: 105, column: 34, scope: !1066)
!1069 = !DILocation(line: 105, column: 46, scope: !1066)
!1070 = !DILocation(line: 105, column: 53, scope: !1066)
!1071 = !DILocation(line: 105, column: 3, scope: !1066)
!1072 = !DILocation(line: 107, column: 1, scope: !1006)
!1073 = distinct !DISubprogram(name: "signal_query_server_changed", scope: !778, file: !778, line: 109, type: !1007, isLocal: true, isDefinition: true, scopeLine: 110, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !787)
!1074 = !DILocalVariable(name: "query", arg: 1, scope: !1073, file: !778, line: 109, type: !672)
!1075 = !DILocation(line: 109, column: 52, scope: !1073)
!1076 = !DILocalVariable(name: "window", scope: !1073, file: !778, line: 111, type: !731)
!1077 = !DILocation(line: 111, column: 14, scope: !1073)
!1078 = !DILocation(line: 113, column: 2, scope: !1073)
!1079 = distinct !{!1079, !1078}
!1080 = !DILocation(line: 113, column: 10, scope: !1081)
!1081 = !DILexicalBlockFile(scope: !1082, file: !778, discriminator: 1)
!1082 = distinct !DILexicalBlock(scope: !1083, file: !778, line: 113, column: 10)
!1083 = distinct !DILexicalBlock(scope: !1073, file: !778, line: 113, column: 4)
!1084 = !DILocation(line: 113, column: 16, scope: !1081)
!1085 = !DILocation(line: 113, column: 5, scope: !1086)
!1086 = !DILexicalBlockFile(scope: !1087, file: !778, discriminator: 2)
!1087 = distinct !DILexicalBlock(scope: !1082, file: !778, line: 113, column: 3)
!1088 = !DILocation(line: 113, column: 14, scope: !1089)
!1089 = !DILexicalBlockFile(scope: !1090, file: !778, discriminator: 3)
!1090 = distinct !DILexicalBlock(scope: !1082, file: !778, line: 113, column: 12)
!1091 = !DILocation(line: 113, column: 100, scope: !1089)
!1092 = !DILocation(line: 113, column: 111, scope: !1093)
!1093 = !DILexicalBlockFile(scope: !1083, file: !778, discriminator: 4)
!1094 = !DILocation(line: 115, column: 61, scope: !1073)
!1095 = !DILocation(line: 115, column: 70, scope: !1073)
!1096 = !DILocation(line: 115, column: 12, scope: !1073)
!1097 = !DILocation(line: 115, column: 9, scope: !1073)
!1098 = !DILocation(line: 116, column: 6, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1073, file: !778, line: 116, column: 6)
!1100 = !DILocation(line: 116, column: 14, scope: !1099)
!1101 = !DILocation(line: 116, column: 40, scope: !1099)
!1102 = !DILocation(line: 116, column: 24, scope: !1099)
!1103 = !DILocation(line: 116, column: 21, scope: !1099)
!1104 = !DILocation(line: 116, column: 6, scope: !1073)
!1105 = !DILocation(line: 117, column: 24, scope: !1099)
!1106 = !DILocation(line: 117, column: 32, scope: !1099)
!1107 = !DILocation(line: 117, column: 39, scope: !1099)
!1108 = !DILocation(line: 117, column: 3, scope: !1099)
!1109 = !DILocation(line: 118, column: 1, scope: !1073)
!1110 = distinct !DISubprogram(name: "signal_query_nick_changed", scope: !778, file: !778, line: 120, type: !1111, isLocal: true, isDefinition: true, scopeLine: 121, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !787)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{null, !672, !638}
!1113 = !DILocalVariable(name: "query", arg: 1, scope: !1110, file: !778, line: 120, type: !672)
!1114 = !DILocation(line: 120, column: 50, scope: !1110)
!1115 = !DILocalVariable(name: "oldnick", arg: 2, scope: !1110, file: !778, line: 120, type: !638)
!1116 = !DILocation(line: 120, column: 69, scope: !1110)
!1117 = !DILocalVariable(name: "dest", scope: !1110, file: !778, line: 122, type: !940)
!1118 = !DILocation(line: 122, column: 23, scope: !1110)
!1119 = !DILocation(line: 124, column: 2, scope: !1110)
!1120 = distinct !{!1120, !1119}
!1121 = !DILocation(line: 124, column: 10, scope: !1122)
!1122 = !DILexicalBlockFile(scope: !1123, file: !778, discriminator: 1)
!1123 = distinct !DILexicalBlock(scope: !1124, file: !778, line: 124, column: 10)
!1124 = distinct !DILexicalBlock(scope: !1110, file: !778, line: 124, column: 4)
!1125 = !DILocation(line: 124, column: 16, scope: !1122)
!1126 = !DILocation(line: 124, column: 5, scope: !1127)
!1127 = !DILexicalBlockFile(scope: !1128, file: !778, discriminator: 2)
!1128 = distinct !DILexicalBlock(scope: !1123, file: !778, line: 124, column: 3)
!1129 = !DILocation(line: 124, column: 14, scope: !1130)
!1130 = !DILexicalBlockFile(scope: !1131, file: !778, discriminator: 3)
!1131 = distinct !DILexicalBlock(scope: !1123, file: !778, line: 124, column: 12)
!1132 = !DILocation(line: 124, column: 100, scope: !1130)
!1133 = !DILocation(line: 124, column: 111, scope: !1134)
!1134 = !DILexicalBlockFile(scope: !1124, file: !778, discriminator: 4)
!1135 = !DILocation(line: 126, column: 32, scope: !1110)
!1136 = !DILocation(line: 126, column: 39, scope: !1110)
!1137 = !DILocation(line: 126, column: 47, scope: !1110)
!1138 = !DILocation(line: 126, column: 54, scope: !1110)
!1139 = !DILocation(line: 127, column: 11, scope: !1110)
!1140 = !DILocation(line: 127, column: 18, scope: !1110)
!1141 = !DILocation(line: 126, column: 2, scope: !1110)
!1142 = !DILocation(line: 130, column: 25, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1110, file: !778, line: 130, column: 6)
!1144 = !DILocation(line: 130, column: 32, scope: !1143)
!1145 = !DILocation(line: 130, column: 38, scope: !1143)
!1146 = !DILocation(line: 130, column: 6, scope: !1143)
!1147 = !DILocation(line: 130, column: 47, scope: !1143)
!1148 = !DILocation(line: 130, column: 6, scope: !1110)
!1149 = !DILocation(line: 131, column: 70, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1143, file: !778, line: 130, column: 53)
!1151 = !DILocation(line: 131, column: 79, scope: !1150)
!1152 = !DILocation(line: 131, column: 86, scope: !1150)
!1153 = !DILocation(line: 131, column: 92, scope: !1150)
!1154 = !DILocation(line: 131, column: 99, scope: !1150)
!1155 = !DILocation(line: 131, column: 105, scope: !1150)
!1156 = !DILocation(line: 131, column: 112, scope: !1150)
!1157 = !DILocation(line: 131, column: 120, scope: !1150)
!1158 = !DILocation(line: 131, column: 105, scope: !1159)
!1159 = !DILexicalBlockFile(scope: !1150, file: !778, discriminator: 1)
!1160 = !DILocation(line: 131, column: 9, scope: !1161)
!1161 = !DILexicalBlockFile(scope: !1150, file: !778, discriminator: 2)
!1162 = !DILocation(line: 131, column: 16, scope: !1161)
!1163 = !DILocation(line: 131, column: 105, scope: !1161)
!1164 = !DILocation(line: 131, column: 105, scope: !1165)
!1165 = !DILexicalBlockFile(scope: !1150, file: !778, discriminator: 3)
!1166 = !DILocation(line: 131, column: 3, scope: !1165)
!1167 = !DILocation(line: 134, column: 2, scope: !1150)
!1168 = !DILocation(line: 137, column: 57, scope: !1110)
!1169 = !DILocation(line: 137, column: 66, scope: !1110)
!1170 = !DILocation(line: 137, column: 8, scope: !1110)
!1171 = !DILocation(line: 137, column: 75, scope: !1110)
!1172 = !DILocation(line: 136, column: 2, scope: !1110)
!1173 = !DILocation(line: 138, column: 1, scope: !1110)
!1174 = !DILocation(line: 138, column: 1, scope: !1175)
!1175 = !DILexicalBlockFile(scope: !1110, file: !778, discriminator: 1)
!1176 = distinct !DISubprogram(name: "signal_window_item_server_changed", scope: !778, file: !778, line: 140, type: !1177, isLocal: true, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !787)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{null, !731, !672}
!1179 = !DILocalVariable(name: "window", arg: 1, scope: !1176, file: !778, line: 140, type: !731)
!1180 = !DILocation(line: 140, column: 59, scope: !1176)
!1181 = !DILocalVariable(name: "query", arg: 2, scope: !1176, file: !778, line: 141, type: !672)
!1182 = !DILocation(line: 141, column: 23, scope: !1176)
!1183 = !DILocation(line: 143, column: 47, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1176, file: !778, line: 143, column: 6)
!1185 = !DILocation(line: 143, column: 22, scope: !1184)
!1186 = !DILocation(line: 143, column: 8, scope: !1184)
!1187 = !DILocation(line: 143, column: 6, scope: !1176)
!1188 = !DILocation(line: 143, column: 7, scope: !1189)
!1189 = !DILexicalBlockFile(scope: !1184, file: !778, discriminator: 1)
!1190 = !DILocation(line: 143, column: 6, scope: !1191)
!1191 = !DILexicalBlockFile(scope: !1176, file: !778, discriminator: 2)
!1192 = !DILocation(line: 144, column: 3, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1184, file: !778, line: 143, column: 54)
!1194 = distinct !{!1194, !1192}
!1195 = !DILocation(line: 144, column: 12, scope: !1196)
!1196 = !DILexicalBlockFile(scope: !1197, file: !778, discriminator: 1)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !778, line: 144, column: 12)
!1198 = distinct !DILexicalBlock(scope: !1193, file: !778, line: 144, column: 6)
!1199 = !DILocation(line: 144, column: 19, scope: !1196)
!1200 = !DILocation(line: 144, column: 40, scope: !1201)
!1201 = !DILexicalBlockFile(scope: !1202, file: !778, discriminator: 2)
!1202 = distinct !DILexicalBlock(scope: !1197, file: !778, line: 144, column: 31)
!1203 = !DILocation(line: 144, column: 47, scope: !1201)
!1204 = !DILocation(line: 144, column: 33, scope: !1201)
!1205 = !DILocation(line: 144, column: 61, scope: !1201)
!1206 = !DILocation(line: 144, column: 68, scope: !1201)
!1207 = !DILocation(line: 144, column: 80, scope: !1201)
!1208 = !DILocation(line: 144, column: 4, scope: !1201)
!1209 = !DILocation(line: 144, column: 6, scope: !1210)
!1210 = !DILexicalBlockFile(scope: !1198, file: !778, discriminator: 3)
!1211 = !DILocation(line: 145, column: 21, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1193, file: !778, line: 145, column: 21)
!1213 = !DILocation(line: 145, column: 28, scope: !1212)
!1214 = !DILocation(line: 145, column: 35, scope: !1212)
!1215 = !DILocation(line: 145, column: 21, scope: !1193)
!1216 = !DILocation(line: 146, column: 33, scope: !1212)
!1217 = !DILocation(line: 146, column: 40, scope: !1212)
!1218 = !DILocation(line: 146, column: 48, scope: !1212)
!1219 = !DILocation(line: 146, column: 24, scope: !1212)
!1220 = !DILocation(line: 146, column: 4, scope: !1212)
!1221 = !DILocation(line: 146, column: 11, scope: !1212)
!1222 = !DILocation(line: 146, column: 22, scope: !1212)
!1223 = !DILocation(line: 147, column: 2, scope: !1193)
!1224 = !DILocation(line: 148, column: 1, scope: !1176)
!1225 = distinct !DISubprogram(name: "sig_server_connected", scope: !778, file: !778, line: 150, type: !1226, isLocal: true, isDefinition: true, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !787)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{null, !337}
!1228 = !DILocalVariable(name: "server", arg: 1, scope: !1225, file: !778, line: 150, type: !337)
!1229 = !DILocation(line: 150, column: 46, scope: !1225)
!1230 = !DILocalVariable(name: "tmp", scope: !1225, file: !778, line: 152, type: !512)
!1231 = !DILocation(line: 152, column: 10, scope: !1225)
!1232 = !DILocation(line: 154, column: 42, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1225, file: !778, line: 154, column: 6)
!1234 = !DILocation(line: 154, column: 24, scope: !1233)
!1235 = !DILocation(line: 154, column: 9, scope: !1233)
!1236 = !DILocation(line: 154, column: 6, scope: !1225)
!1237 = !DILocation(line: 154, column: 8, scope: !1238)
!1238 = !DILexicalBlockFile(scope: !1233, file: !778, discriminator: 1)
!1239 = !DILocation(line: 154, column: 6, scope: !1240)
!1240 = !DILexicalBlockFile(scope: !1225, file: !778, discriminator: 2)
!1241 = !DILocation(line: 155, column: 3, scope: !1233)
!1242 = !DILocation(line: 158, column: 13, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1225, file: !778, line: 158, column: 2)
!1244 = !DILocation(line: 158, column: 11, scope: !1243)
!1245 = !DILocation(line: 158, column: 7, scope: !1243)
!1246 = !DILocation(line: 158, column: 22, scope: !1247)
!1247 = !DILexicalBlockFile(scope: !1248, file: !778, discriminator: 1)
!1248 = distinct !DILexicalBlock(scope: !1243, file: !778, line: 158, column: 2)
!1249 = !DILocation(line: 158, column: 26, scope: !1247)
!1250 = !DILocation(line: 158, column: 2, scope: !1247)
!1251 = !DILocalVariable(name: "rec", scope: !1252, file: !778, line: 159, type: !672)
!1252 = distinct !DILexicalBlock(scope: !1248, file: !778, line: 158, column: 51)
!1253 = !DILocation(line: 159, column: 14, scope: !1252)
!1254 = !DILocation(line: 159, column: 20, scope: !1252)
!1255 = !DILocation(line: 159, column: 25, scope: !1252)
!1256 = !DILocation(line: 161, column: 7, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1252, file: !778, line: 161, column: 7)
!1258 = !DILocation(line: 161, column: 12, scope: !1257)
!1259 = !DILocation(line: 161, column: 19, scope: !1257)
!1260 = !DILocation(line: 161, column: 26, scope: !1257)
!1261 = !DILocation(line: 162, column: 8, scope: !1257)
!1262 = !DILocation(line: 162, column: 13, scope: !1257)
!1263 = !DILocation(line: 162, column: 24, scope: !1257)
!1264 = !DILocation(line: 162, column: 31, scope: !1257)
!1265 = !DILocation(line: 163, column: 27, scope: !1257)
!1266 = !DILocation(line: 163, column: 32, scope: !1257)
!1267 = !DILocation(line: 163, column: 44, scope: !1257)
!1268 = !DILocation(line: 163, column: 52, scope: !1257)
!1269 = !DILocation(line: 163, column: 8, scope: !1257)
!1270 = !DILocation(line: 163, column: 57, scope: !1257)
!1271 = !DILocation(line: 161, column: 7, scope: !1272)
!1272 = !DILexicalBlockFile(scope: !1252, file: !778, discriminator: 1)
!1273 = !DILocation(line: 164, column: 46, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1257, file: !778, line: 163, column: 64)
!1275 = !DILocation(line: 164, column: 30, scope: !1274)
!1276 = !DILocation(line: 164, column: 51, scope: !1274)
!1277 = !DILocation(line: 164, column: 4, scope: !1274)
!1278 = !DILocation(line: 165, column: 37, scope: !1274)
!1279 = !DILocation(line: 165, column: 45, scope: !1274)
!1280 = !DILocation(line: 165, column: 54, scope: !1274)
!1281 = !DILocation(line: 165, column: 22, scope: !1274)
!1282 = !DILocation(line: 165, column: 4, scope: !1274)
!1283 = !DILocation(line: 165, column: 12, scope: !1274)
!1284 = !DILocation(line: 165, column: 20, scope: !1274)
!1285 = !DILocation(line: 166, column: 3, scope: !1274)
!1286 = !DILocation(line: 167, column: 2, scope: !1252)
!1287 = !DILocation(line: 158, column: 40, scope: !1288)
!1288 = !DILexicalBlockFile(scope: !1248, file: !778, discriminator: 2)
!1289 = !DILocation(line: 158, column: 45, scope: !1288)
!1290 = !DILocation(line: 158, column: 38, scope: !1288)
!1291 = !DILocation(line: 158, column: 2, scope: !1288)
!1292 = distinct !{!1292, !1293}
!1293 = !DILocation(line: 158, column: 2, scope: !1225)
!1294 = !DILocation(line: 168, column: 1, scope: !1225)
!1295 = distinct !DISubprogram(name: "sig_window_changed", scope: !778, file: !778, line: 300, type: !1296, isLocal: true, isDefinition: true, scopeLine: 301, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !787)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{null, !731, !731}
!1298 = !DILocalVariable(name: "window", arg: 1, scope: !1295, file: !778, line: 300, type: !731)
!1299 = !DILocation(line: 300, column: 44, scope: !1295)
!1300 = !DILocalVariable(name: "old_window", arg: 2, scope: !1295, file: !778, line: 300, type: !731)
!1301 = !DILocation(line: 300, column: 64, scope: !1295)
!1302 = !DILocation(line: 305, column: 39, scope: !1295)
!1303 = !DILocation(line: 305, column: 9, scope: !1295)
!1304 = !DILocation(line: 306, column: 39, scope: !1295)
!1305 = !DILocation(line: 306, column: 9, scope: !1295)
!1306 = !DILocation(line: 307, column: 1, scope: !1295)
!1307 = distinct !DISubprogram(name: "sig_message_private", scope: !778, file: !778, line: 328, type: !1308, isLocal: true, isDefinition: true, scopeLine: 330, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !787)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{null, !337, !638, !638, !638, !638}
!1310 = !DILocalVariable(name: "server", arg: 1, scope: !1307, file: !778, line: 328, type: !337)
!1311 = !DILocation(line: 328, column: 45, scope: !1307)
!1312 = !DILocalVariable(name: "msg", arg: 2, scope: !1307, file: !778, line: 328, type: !638)
!1313 = !DILocation(line: 328, column: 65, scope: !1307)
!1314 = !DILocalVariable(name: "nick", arg: 3, scope: !1307, file: !778, line: 329, type: !638)
!1315 = !DILocation(line: 329, column: 17, scope: !1307)
!1316 = !DILocalVariable(name: "address", arg: 4, scope: !1307, file: !778, line: 329, type: !638)
!1317 = !DILocation(line: 329, column: 35, scope: !1307)
!1318 = !DILocalVariable(name: "target", arg: 5, scope: !1307, file: !778, line: 329, type: !638)
!1319 = !DILocation(line: 329, column: 56, scope: !1307)
!1320 = !DILocalVariable(name: "query", scope: !1307, file: !778, line: 331, type: !672)
!1321 = !DILocation(line: 331, column: 13, scope: !1307)
!1322 = !DILocalVariable(name: "own", scope: !1307, file: !778, line: 334, type: !345)
!1323 = !DILocation(line: 334, column: 6, scope: !1307)
!1324 = !DILocation(line: 334, column: 24, scope: !1307)
!1325 = !DILocation(line: 334, column: 30, scope: !1307)
!1326 = !DILocation(line: 334, column: 38, scope: !1307)
!1327 = !DILocation(line: 334, column: 14, scope: !1307)
!1328 = !DILocation(line: 334, column: 13, scope: !1307)
!1329 = !DILocation(line: 337, column: 28, scope: !1307)
!1330 = !DILocation(line: 337, column: 36, scope: !1307)
!1331 = !DILocation(line: 337, column: 42, scope: !1332)
!1332 = !DILexicalBlockFile(scope: !1307, file: !778, discriminator: 1)
!1333 = !DILocation(line: 337, column: 36, scope: !1332)
!1334 = !DILocation(line: 337, column: 51, scope: !1335)
!1335 = !DILexicalBlockFile(scope: !1307, file: !778, discriminator: 2)
!1336 = !DILocation(line: 337, column: 36, scope: !1335)
!1337 = !DILocation(line: 337, column: 36, scope: !1338)
!1338 = !DILexicalBlockFile(scope: !1307, file: !778, discriminator: 3)
!1339 = !DILocation(line: 337, column: 10, scope: !1338)
!1340 = !DILocation(line: 337, column: 8, scope: !1338)
!1341 = !DILocation(line: 340, column: 13, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1307, file: !778, line: 340, column: 13)
!1343 = !DILocation(line: 340, column: 19, scope: !1342)
!1344 = !DILocation(line: 340, column: 13, scope: !1307)
!1345 = !DILocation(line: 341, column: 28, scope: !1342)
!1346 = !DILocation(line: 341, column: 3, scope: !1342)
!1347 = !DILocation(line: 341, column: 10, scope: !1342)
!1348 = !DILocation(line: 341, column: 26, scope: !1342)
!1349 = !DILocation(line: 342, column: 1, scope: !1307)
!1350 = distinct !DISubprogram(name: "cmd_query", scope: !778, file: !778, line: 223, type: !1351, isLocal: true, isDefinition: true, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !787)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{null, !638, !337, !692}
!1353 = !DILocalVariable(name: "data", arg: 1, scope: !1350, file: !778, line: 223, type: !638)
!1354 = !DILocation(line: 223, column: 35, scope: !1350)
!1355 = !DILocalVariable(name: "server", arg: 2, scope: !1350, file: !778, line: 223, type: !337)
!1356 = !DILocation(line: 223, column: 53, scope: !1350)
!1357 = !DILocalVariable(name: "item", arg: 3, scope: !1350, file: !778, line: 223, type: !692)
!1358 = !DILocation(line: 223, column: 74, scope: !1350)
!1359 = !DILocalVariable(name: "optlist", scope: !1350, file: !778, line: 225, type: !612)
!1360 = !DILocation(line: 225, column: 14, scope: !1350)
!1361 = !DILocalVariable(name: "query", scope: !1350, file: !778, line: 226, type: !672)
!1362 = !DILocation(line: 226, column: 13, scope: !1350)
!1363 = !DILocalVariable(name: "nick", scope: !1350, file: !778, line: 227, type: !358)
!1364 = !DILocation(line: 227, column: 8, scope: !1350)
!1365 = !DILocalVariable(name: "msg", scope: !1350, file: !778, line: 227, type: !358)
!1366 = !DILocation(line: 227, column: 15, scope: !1350)
!1367 = !DILocalVariable(name: "free_arg", scope: !1350, file: !778, line: 228, type: !451)
!1368 = !DILocation(line: 228, column: 8, scope: !1350)
!1369 = !DILocation(line: 230, column: 2, scope: !1350)
!1370 = distinct !{!1370, !1369}
!1371 = !DILocation(line: 230, column: 10, scope: !1372)
!1372 = !DILexicalBlockFile(scope: !1373, file: !778, discriminator: 1)
!1373 = distinct !DILexicalBlock(scope: !1374, file: !778, line: 230, column: 10)
!1374 = distinct !DILexicalBlock(scope: !1350, file: !778, line: 230, column: 4)
!1375 = !DILocation(line: 230, column: 15, scope: !1372)
!1376 = !DILocation(line: 230, column: 5, scope: !1377)
!1377 = !DILexicalBlockFile(scope: !1378, file: !778, discriminator: 2)
!1378 = distinct !DILexicalBlock(scope: !1373, file: !778, line: 230, column: 3)
!1379 = !DILocation(line: 230, column: 14, scope: !1380)
!1380 = !DILexicalBlockFile(scope: !1381, file: !778, discriminator: 3)
!1381 = distinct !DILexicalBlock(scope: !1373, file: !778, line: 230, column: 12)
!1382 = !DILocation(line: 230, column: 99, scope: !1380)
!1383 = !DILocation(line: 230, column: 110, scope: !1384)
!1384 = !DILexicalBlockFile(scope: !1374, file: !778, discriminator: 4)
!1385 = !DILocation(line: 232, column: 22, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1350, file: !778, line: 232, column: 6)
!1387 = !DILocation(line: 232, column: 7, scope: !1386)
!1388 = !DILocation(line: 232, column: 6, scope: !1350)
!1389 = !DILocation(line: 235, column: 3, scope: !1386)
!1390 = !DILocation(line: 237, column: 7, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1350, file: !778, line: 237, column: 6)
!1392 = !DILocation(line: 237, column: 6, scope: !1391)
!1393 = !DILocation(line: 237, column: 12, scope: !1391)
!1394 = !DILocation(line: 237, column: 6, scope: !1350)
!1395 = !DILocation(line: 239, column: 19, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1391, file: !778, line: 237, column: 21)
!1397 = !DILocation(line: 239, column: 27, scope: !1396)
!1398 = !DILocation(line: 239, column: 3, scope: !1396)
!1399 = !DILocation(line: 240, column: 19, scope: !1396)
!1400 = !DILocation(line: 240, column: 3, scope: !1396)
!1401 = !DILocation(line: 241, column: 17, scope: !1396)
!1402 = !DILocation(line: 244, column: 43, scope: !1350)
!1403 = !DILocation(line: 244, column: 52, scope: !1350)
!1404 = !DILocation(line: 244, column: 11, scope: !1350)
!1405 = !DILocation(line: 244, column: 9, scope: !1350)
!1406 = !DILocation(line: 245, column: 6, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1350, file: !778, line: 245, column: 6)
!1408 = !DILocation(line: 245, column: 13, scope: !1407)
!1409 = !DILocation(line: 245, column: 6, scope: !1350)
!1410 = !DILocation(line: 246, column: 19, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1407, file: !778, line: 245, column: 21)
!1412 = !DILocation(line: 246, column: 3, scope: !1411)
!1413 = !DILocation(line: 247, column: 17, scope: !1411)
!1414 = !DILocation(line: 250, column: 7, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1350, file: !778, line: 250, column: 6)
!1416 = !DILocation(line: 250, column: 6, scope: !1415)
!1417 = !DILocation(line: 250, column: 12, scope: !1415)
!1418 = !DILocation(line: 250, column: 19, scope: !1415)
!1419 = !DILocation(line: 250, column: 23, scope: !1420)
!1420 = !DILexicalBlockFile(scope: !1415, file: !778, discriminator: 1)
!1421 = !DILocation(line: 250, column: 30, scope: !1420)
!1422 = !DILocation(line: 250, column: 37, scope: !1420)
!1423 = !DILocation(line: 250, column: 41, scope: !1424)
!1424 = !DILexicalBlockFile(scope: !1415, file: !778, discriminator: 2)
!1425 = !DILocation(line: 250, column: 49, scope: !1424)
!1426 = !DILocation(line: 250, column: 6, scope: !1424)
!1427 = !DILocation(line: 251, column: 3, scope: !1415)
!1428 = distinct !{!1428, !1427}
!1429 = !DILocation(line: 251, column: 24, scope: !1430)
!1430 = !DILexicalBlockFile(scope: !1431, file: !778, discriminator: 1)
!1431 = distinct !DILexicalBlock(scope: !1415, file: !778, line: 251, column: 6)
!1432 = !DILocation(line: 251, column: 8, scope: !1430)
!1433 = !DILocation(line: 251, column: 35, scope: !1430)
!1434 = distinct !{!1434, !1435}
!1435 = !DILocation(line: 251, column: 35, scope: !1431)
!1436 = !DILocation(line: 251, column: 40, scope: !1437)
!1437 = !DILexicalBlockFile(scope: !1438, file: !778, discriminator: 2)
!1438 = distinct !DILexicalBlock(scope: !1431, file: !778, line: 251, column: 38)
!1439 = !DILocation(line: 251, column: 118, scope: !1440)
!1440 = !DILexicalBlockFile(scope: !1437, file: !778, discriminator: 5)
!1441 = !DILocation(line: 251, column: 133, scope: !1437)
!1442 = !DILocation(line: 251, column: 154, scope: !1443)
!1443 = !DILexicalBlockFile(scope: !1431, file: !778, discriminator: 3)
!1444 = !DILocation(line: 251, column: 154, scope: !1445)
!1445 = !DILexicalBlockFile(scope: !1431, file: !778, discriminator: 4)
!1446 = !DILocation(line: 253, column: 26, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1350, file: !778, line: 253, column: 6)
!1448 = !DILocation(line: 253, column: 6, scope: !1447)
!1449 = !DILocation(line: 253, column: 45, scope: !1447)
!1450 = !DILocation(line: 253, column: 6, scope: !1350)
!1451 = !DILocation(line: 254, column: 3, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1447, file: !778, line: 253, column: 53)
!1453 = !DILocation(line: 256, column: 2, scope: !1452)
!1454 = !DILocation(line: 258, column: 21, scope: !1350)
!1455 = !DILocation(line: 258, column: 29, scope: !1350)
!1456 = !DILocation(line: 258, column: 10, scope: !1350)
!1457 = !DILocation(line: 258, column: 8, scope: !1350)
!1458 = !DILocation(line: 259, column: 6, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1350, file: !778, line: 259, column: 6)
!1460 = !DILocation(line: 259, column: 12, scope: !1459)
!1461 = !DILocation(line: 259, column: 6, scope: !1350)
!1462 = !DILocation(line: 260, column: 13, scope: !1459)
!1463 = !DILocation(line: 260, column: 21, scope: !1459)
!1464 = !DILocation(line: 260, column: 12, scope: !1459)
!1465 = !DILocation(line: 260, column: 12, scope: !1466)
!1466 = !DILexicalBlockFile(scope: !1459, file: !778, discriminator: 1)
!1467 = !DILocation(line: 260, column: 65, scope: !1468)
!1468 = !DILexicalBlockFile(scope: !1459, file: !778, discriminator: 2)
!1469 = !DILocation(line: 260, column: 74, scope: !1468)
!1470 = !DILocation(line: 260, column: 42, scope: !1468)
!1471 = !DILocation(line: 260, column: 12, scope: !1468)
!1472 = !DILocation(line: 260, column: 12, scope: !1473)
!1473 = !DILexicalBlockFile(scope: !1459, file: !778, discriminator: 3)
!1474 = !DILocation(line: 261, column: 4, scope: !1459)
!1475 = !DILocation(line: 261, column: 17, scope: !1459)
!1476 = !DILocation(line: 261, column: 25, scope: !1459)
!1477 = !DILocation(line: 261, column: 30, scope: !1459)
!1478 = !DILocation(line: 260, column: 11, scope: !1473)
!1479 = !DILocation(line: 260, column: 9, scope: !1473)
!1480 = !DILocation(line: 260, column: 3, scope: !1473)
!1481 = !DILocalVariable(name: "window", scope: !1482, file: !778, line: 264, type: !731)
!1482 = distinct !DILexicalBlock(scope: !1459, file: !778, line: 262, column: 7)
!1483 = !DILocation(line: 264, column: 15, scope: !1482)
!1484 = !DILocation(line: 264, column: 58, scope: !1482)
!1485 = !DILocation(line: 264, column: 67, scope: !1482)
!1486 = !DILocation(line: 264, column: 25, scope: !1482)
!1487 = !DILocation(line: 266, column: 7, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1482, file: !778, line: 266, column: 7)
!1489 = !DILocation(line: 266, column: 17, scope: !1488)
!1490 = !DILocation(line: 266, column: 14, scope: !1488)
!1491 = !DILocation(line: 266, column: 7, scope: !1482)
!1492 = !DILocation(line: 267, column: 22, scope: !1488)
!1493 = !DILocation(line: 267, column: 4, scope: !1488)
!1494 = !DILocation(line: 268, column: 26, scope: !1482)
!1495 = !DILocation(line: 268, column: 54, scope: !1482)
!1496 = !DILocation(line: 268, column: 38, scope: !1482)
!1497 = !DILocation(line: 268, column: 3, scope: !1482)
!1498 = !DILocation(line: 271, column: 26, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1350, file: !778, line: 271, column: 6)
!1500 = !DILocation(line: 271, column: 6, scope: !1499)
!1501 = !DILocation(line: 271, column: 45, scope: !1499)
!1502 = !DILocation(line: 271, column: 6, scope: !1350)
!1503 = !DILocation(line: 272, column: 3, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1499, file: !778, line: 271, column: 53)
!1505 = !DILocation(line: 274, column: 2, scope: !1504)
!1506 = !DILocation(line: 276, column: 7, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1350, file: !778, line: 276, column: 6)
!1508 = !DILocation(line: 276, column: 6, scope: !1507)
!1509 = !DILocation(line: 276, column: 11, scope: !1507)
!1510 = !DILocation(line: 276, column: 6, scope: !1350)
!1511 = !DILocation(line: 277, column: 54, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1507, file: !778, line: 276, column: 20)
!1513 = !DILocation(line: 277, column: 60, scope: !1512)
!1514 = !DILocation(line: 277, column: 23, scope: !1512)
!1515 = !DILocation(line: 277, column: 21, scope: !1512)
!1516 = !DILocation(line: 278, column: 33, scope: !1512)
!1517 = !DILocation(line: 278, column: 38, scope: !1512)
!1518 = !DILocation(line: 278, column: 46, scope: !1512)
!1519 = !DILocation(line: 278, column: 3, scope: !1512)
!1520 = !DILocation(line: 279, column: 24, scope: !1512)
!1521 = !DILocation(line: 279, column: 17, scope: !1512)
!1522 = !DILocation(line: 280, column: 2, scope: !1512)
!1523 = !DILocation(line: 282, column: 18, scope: !1350)
!1524 = !DILocation(line: 282, column: 2, scope: !1350)
!1525 = !DILocation(line: 283, column: 1, scope: !1350)
!1526 = !DILocation(line: 283, column: 1, scope: !1527)
!1527 = !DILexicalBlockFile(scope: !1350, file: !778, discriminator: 1)
!1528 = distinct !DISubprogram(name: "cmd_unquery", scope: !778, file: !778, line: 194, type: !1351, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !787)
!1529 = !DILocalVariable(name: "data", arg: 1, scope: !1528, file: !778, line: 194, type: !638)
!1530 = !DILocation(line: 194, column: 37, scope: !1528)
!1531 = !DILocalVariable(name: "server", arg: 2, scope: !1528, file: !778, line: 194, type: !337)
!1532 = !DILocation(line: 194, column: 55, scope: !1528)
!1533 = !DILocalVariable(name: "item", arg: 3, scope: !1528, file: !778, line: 194, type: !692)
!1534 = !DILocation(line: 194, column: 76, scope: !1528)
!1535 = !DILocalVariable(name: "query", scope: !1528, file: !778, line: 196, type: !672)
!1536 = !DILocation(line: 196, column: 13, scope: !1528)
!1537 = !DILocalVariable(name: "nick", scope: !1528, file: !778, line: 197, type: !358)
!1538 = !DILocation(line: 197, column: 8, scope: !1528)
!1539 = !DILocalVariable(name: "free_arg", scope: !1528, file: !778, line: 198, type: !451)
!1540 = !DILocation(line: 198, column: 8, scope: !1528)
!1541 = !DILocation(line: 200, column: 2, scope: !1528)
!1542 = distinct !{!1542, !1541}
!1543 = !DILocation(line: 200, column: 10, scope: !1544)
!1544 = !DILexicalBlockFile(scope: !1545, file: !778, discriminator: 1)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !778, line: 200, column: 10)
!1546 = distinct !DILexicalBlock(scope: !1528, file: !778, line: 200, column: 4)
!1547 = !DILocation(line: 200, column: 15, scope: !1544)
!1548 = !DILocation(line: 200, column: 5, scope: !1549)
!1549 = !DILexicalBlockFile(scope: !1550, file: !778, discriminator: 2)
!1550 = distinct !DILexicalBlock(scope: !1545, file: !778, line: 200, column: 3)
!1551 = !DILocation(line: 200, column: 14, scope: !1552)
!1552 = !DILexicalBlockFile(scope: !1553, file: !778, discriminator: 3)
!1553 = distinct !DILexicalBlock(scope: !1545, file: !778, line: 200, column: 12)
!1554 = !DILocation(line: 200, column: 99, scope: !1552)
!1555 = !DILocation(line: 200, column: 110, scope: !1556)
!1556 = !DILexicalBlockFile(scope: !1546, file: !778, discriminator: 4)
!1557 = !DILocation(line: 202, column: 22, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1528, file: !778, line: 202, column: 6)
!1559 = !DILocation(line: 202, column: 7, scope: !1558)
!1560 = !DILocation(line: 202, column: 6, scope: !1528)
!1561 = !DILocation(line: 203, column: 3, scope: !1558)
!1562 = !DILocation(line: 205, column: 7, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1528, file: !778, line: 205, column: 6)
!1564 = !DILocation(line: 205, column: 6, scope: !1563)
!1565 = !DILocation(line: 205, column: 12, scope: !1563)
!1566 = !DILocation(line: 205, column: 6, scope: !1528)
!1567 = !DILocation(line: 207, column: 51, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1563, file: !778, line: 205, column: 21)
!1569 = !DILocation(line: 207, column: 26, scope: !1568)
!1570 = !DILocation(line: 207, column: 12, scope: !1568)
!1571 = !DILocation(line: 207, column: 9, scope: !1568)
!1572 = !DILocation(line: 208, column: 2, scope: !1568)
!1573 = !DILocation(line: 209, column: 22, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1563, file: !778, line: 208, column: 9)
!1575 = !DILocation(line: 209, column: 30, scope: !1574)
!1576 = !DILocation(line: 209, column: 11, scope: !1574)
!1577 = !DILocation(line: 209, column: 9, scope: !1574)
!1578 = !DILocation(line: 210, column: 7, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1574, file: !778, line: 210, column: 7)
!1580 = !DILocation(line: 210, column: 13, scope: !1579)
!1581 = !DILocation(line: 210, column: 7, scope: !1574)
!1582 = !DILocation(line: 211, column: 41, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1579, file: !778, line: 210, column: 21)
!1584 = !DILocation(line: 211, column: 4, scope: !1583)
!1585 = !DILocation(line: 213, column: 3, scope: !1583)
!1586 = !DILocation(line: 216, column: 6, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1528, file: !778, line: 216, column: 6)
!1588 = !DILocation(line: 216, column: 12, scope: !1587)
!1589 = !DILocation(line: 216, column: 6, scope: !1528)
!1590 = !DILocation(line: 217, column: 17, scope: !1587)
!1591 = !DILocation(line: 217, column: 3, scope: !1587)
!1592 = !DILocation(line: 219, column: 18, scope: !1528)
!1593 = !DILocation(line: 219, column: 2, scope: !1528)
!1594 = !DILocation(line: 220, column: 1, scope: !1528)
!1595 = !DILocation(line: 220, column: 1, scope: !1596)
!1596 = !DILexicalBlockFile(scope: !1528, file: !778, discriminator: 1)
!1597 = distinct !DISubprogram(name: "cmd_window_server", scope: !778, file: !778, line: 170, type: !1598, isLocal: true, isDefinition: true, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !787)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{null, !638}
!1600 = !DILocalVariable(name: "data", arg: 1, scope: !1597, file: !778, line: 170, type: !638)
!1601 = !DILocation(line: 170, column: 43, scope: !1597)
!1602 = !DILocalVariable(name: "server", scope: !1597, file: !778, line: 172, type: !337)
!1603 = !DILocation(line: 172, column: 14, scope: !1597)
!1604 = !DILocalVariable(name: "query", scope: !1597, file: !778, line: 173, type: !672)
!1605 = !DILocation(line: 173, column: 20, scope: !1597)
!1606 = !DILocalVariable(name: "dest", scope: !1597, file: !778, line: 174, type: !940)
!1607 = !DILocation(line: 174, column: 23, scope: !1597)
!1608 = !DILocation(line: 176, column: 2, scope: !1597)
!1609 = distinct !{!1609, !1608}
!1610 = !DILocation(line: 176, column: 10, scope: !1611)
!1611 = !DILexicalBlockFile(scope: !1612, file: !778, discriminator: 1)
!1612 = distinct !DILexicalBlock(scope: !1613, file: !778, line: 176, column: 10)
!1613 = distinct !DILexicalBlock(scope: !1597, file: !778, line: 176, column: 4)
!1614 = !DILocation(line: 176, column: 15, scope: !1611)
!1615 = !DILocation(line: 176, column: 5, scope: !1616)
!1616 = !DILexicalBlockFile(scope: !1617, file: !778, discriminator: 2)
!1617 = distinct !DILexicalBlock(scope: !1612, file: !778, line: 176, column: 3)
!1618 = !DILocation(line: 176, column: 14, scope: !1619)
!1619 = !DILexicalBlockFile(scope: !1620, file: !778, discriminator: 3)
!1620 = distinct !DILexicalBlock(scope: !1612, file: !778, line: 176, column: 12)
!1621 = !DILocation(line: 176, column: 99, scope: !1619)
!1622 = !DILocation(line: 176, column: 110, scope: !1623)
!1623 = !DILexicalBlockFile(scope: !1613, file: !778, discriminator: 4)
!1624 = !DILocation(line: 178, column: 27, scope: !1597)
!1625 = !DILocation(line: 178, column: 11, scope: !1597)
!1626 = !DILocation(line: 178, column: 9, scope: !1597)
!1627 = !DILocation(line: 179, column: 57, scope: !1597)
!1628 = !DILocation(line: 179, column: 69, scope: !1597)
!1629 = !DILocation(line: 179, column: 32, scope: !1597)
!1630 = !DILocation(line: 179, column: 18, scope: !1597)
!1631 = !DILocation(line: 179, column: 15, scope: !1597)
!1632 = !DILocation(line: 180, column: 6, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1597, file: !778, line: 180, column: 6)
!1634 = !DILocation(line: 180, column: 13, scope: !1633)
!1635 = !DILocation(line: 180, column: 20, scope: !1633)
!1636 = !DILocation(line: 180, column: 23, scope: !1637)
!1637 = !DILexicalBlockFile(scope: !1633, file: !778, discriminator: 1)
!1638 = !DILocation(line: 180, column: 29, scope: !1637)
!1639 = !DILocation(line: 180, column: 6, scope: !1637)
!1640 = !DILocation(line: 181, column: 3, scope: !1633)
!1641 = !DILocation(line: 184, column: 32, scope: !1597)
!1642 = !DILocation(line: 184, column: 39, scope: !1597)
!1643 = !DILocation(line: 184, column: 47, scope: !1597)
!1644 = !DILocation(line: 184, column: 54, scope: !1597)
!1645 = !DILocation(line: 185, column: 11, scope: !1597)
!1646 = !DILocation(line: 185, column: 18, scope: !1597)
!1647 = !DILocation(line: 184, column: 2, scope: !1597)
!1648 = !DILocation(line: 186, column: 77, scope: !1597)
!1649 = !DILocation(line: 186, column: 84, scope: !1597)
!1650 = !DILocation(line: 186, column: 90, scope: !1597)
!1651 = !DILocation(line: 186, column: 98, scope: !1597)
!1652 = !DILocation(line: 186, column: 2, scope: !1597)
!1653 = !DILocation(line: 189, column: 22, scope: !1597)
!1654 = !DILocation(line: 189, column: 29, scope: !1597)
!1655 = !DILocation(line: 189, column: 2, scope: !1597)
!1656 = !DILocation(line: 190, column: 2, scope: !1597)
!1657 = !DILocation(line: 191, column: 1, scope: !1597)
!1658 = !DILocation(line: 191, column: 1, scope: !1659)
!1659 = !DILexicalBlockFile(scope: !1597, file: !778, discriminator: 1)
!1660 = distinct !DISubprogram(name: "fe_queries_deinit", scope: !778, file: !778, line: 382, type: !500, isLocal: false, isDefinition: true, scopeLine: 383, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !787)
!1661 = !DILocation(line: 384, column: 6, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1660, file: !778, line: 384, column: 6)
!1663 = !DILocation(line: 384, column: 21, scope: !1662)
!1664 = !DILocation(line: 384, column: 6, scope: !1660)
!1665 = !DILocation(line: 384, column: 44, scope: !1666)
!1666 = !DILexicalBlockFile(scope: !1662, file: !778, discriminator: 1)
!1667 = !DILocation(line: 384, column: 28, scope: !1666)
!1668 = !DILocation(line: 386, column: 2, scope: !1660)
!1669 = !DILocation(line: 387, column: 2, scope: !1660)
!1670 = !DILocation(line: 388, column: 2, scope: !1660)
!1671 = !DILocation(line: 389, column: 2, scope: !1660)
!1672 = !DILocation(line: 390, column: 9, scope: !1660)
!1673 = !DILocation(line: 391, column: 2, scope: !1660)
!1674 = !DILocation(line: 392, column: 2, scope: !1660)
!1675 = !DILocation(line: 393, column: 2, scope: !1660)
!1676 = !DILocation(line: 394, column: 2, scope: !1660)
!1677 = !DILocation(line: 396, column: 2, scope: !1660)
!1678 = !DILocation(line: 397, column: 2, scope: !1660)
!1679 = !DILocation(line: 398, column: 2, scope: !1660)
!1680 = !DILocation(line: 399, column: 1, scope: !1660)
!1681 = distinct !DISubprogram(name: "sig_query_autoclose", scope: !778, file: !778, line: 309, type: !1682, isLocal: true, isDefinition: true, scopeLine: 310, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !787)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{!345}
!1684 = !DILocalVariable(name: "window", scope: !1681, file: !778, line: 311, type: !731)
!1685 = !DILocation(line: 311, column: 14, scope: !1681)
!1686 = !DILocalVariable(name: "tmp", scope: !1681, file: !778, line: 312, type: !512)
!1687 = !DILocation(line: 312, column: 10, scope: !1681)
!1688 = !DILocalVariable(name: "next", scope: !1681, file: !778, line: 312, type: !512)
!1689 = !DILocation(line: 312, column: 16, scope: !1681)
!1690 = !DILocalVariable(name: "now", scope: !1681, file: !778, line: 313, type: !584)
!1691 = !DILocation(line: 313, column: 9, scope: !1681)
!1692 = !DILocation(line: 315, column: 8, scope: !1681)
!1693 = !DILocation(line: 315, column: 6, scope: !1681)
!1694 = !DILocation(line: 316, column: 13, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1681, file: !778, line: 316, column: 2)
!1696 = !DILocation(line: 316, column: 11, scope: !1695)
!1697 = !DILocation(line: 316, column: 7, scope: !1695)
!1698 = !DILocation(line: 316, column: 22, scope: !1699)
!1699 = !DILexicalBlockFile(scope: !1700, file: !778, discriminator: 1)
!1700 = distinct !DILexicalBlock(scope: !1695, file: !778, line: 316, column: 2)
!1701 = !DILocation(line: 316, column: 26, scope: !1699)
!1702 = !DILocation(line: 316, column: 2, scope: !1699)
!1703 = !DILocalVariable(name: "rec", scope: !1704, file: !778, line: 317, type: !672)
!1704 = distinct !DILexicalBlock(scope: !1700, file: !778, line: 316, column: 46)
!1705 = !DILocation(line: 317, column: 14, scope: !1704)
!1706 = !DILocation(line: 317, column: 20, scope: !1704)
!1707 = !DILocation(line: 317, column: 25, scope: !1704)
!1708 = !DILocation(line: 319, column: 10, scope: !1704)
!1709 = !DILocation(line: 319, column: 15, scope: !1704)
!1710 = !DILocation(line: 319, column: 8, scope: !1704)
!1711 = !DILocation(line: 320, column: 62, scope: !1704)
!1712 = !DILocation(line: 320, column: 69, scope: !1704)
!1713 = !DILocation(line: 320, column: 13, scope: !1704)
!1714 = !DILocation(line: 320, column: 10, scope: !1704)
!1715 = !DILocation(line: 321, column: 7, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1704, file: !778, line: 321, column: 7)
!1717 = !DILocation(line: 321, column: 17, scope: !1716)
!1718 = !DILocation(line: 321, column: 14, scope: !1716)
!1719 = !DILocation(line: 321, column: 28, scope: !1716)
!1720 = !DILocation(line: 321, column: 31, scope: !1721)
!1721 = !DILexicalBlockFile(scope: !1716, file: !778, discriminator: 1)
!1722 = !DILocation(line: 321, column: 36, scope: !1721)
!1723 = !DILocation(line: 321, column: 47, scope: !1721)
!1724 = !DILocation(line: 321, column: 64, scope: !1721)
!1725 = !DILocation(line: 322, column: 7, scope: !1716)
!1726 = !DILocation(line: 322, column: 11, scope: !1716)
!1727 = !DILocation(line: 322, column: 16, scope: !1716)
!1728 = !DILocation(line: 322, column: 10, scope: !1716)
!1729 = !DILocation(line: 322, column: 34, scope: !1716)
!1730 = !DILocation(line: 322, column: 32, scope: !1716)
!1731 = !DILocation(line: 321, column: 7, scope: !1732)
!1732 = !DILexicalBlockFile(scope: !1704, file: !778, discriminator: 2)
!1733 = !DILocation(line: 323, column: 18, scope: !1716)
!1734 = !DILocation(line: 323, column: 4, scope: !1716)
!1735 = !DILocation(line: 324, column: 2, scope: !1704)
!1736 = !DILocation(line: 316, column: 40, scope: !1737)
!1737 = !DILexicalBlockFile(scope: !1700, file: !778, discriminator: 2)
!1738 = !DILocation(line: 316, column: 38, scope: !1737)
!1739 = !DILocation(line: 316, column: 2, scope: !1737)
!1740 = distinct !{!1740, !1741}
!1741 = !DILocation(line: 316, column: 2, scope: !1681)
!1742 = !DILocation(line: 325, column: 6, scope: !1681)
!1743 = distinct !DISubprogram(name: "window_reset_query_timestamps", scope: !778, file: !778, line: 285, type: !1744, isLocal: true, isDefinition: true, scopeLine: 286, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !787)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{null, !731}
!1746 = !DILocalVariable(name: "window", arg: 1, scope: !1743, file: !778, line: 285, type: !731)
!1747 = !DILocation(line: 285, column: 55, scope: !1743)
!1748 = !DILocalVariable(name: "tmp", scope: !1743, file: !778, line: 287, type: !512)
!1749 = !DILocation(line: 287, column: 10, scope: !1743)
!1750 = !DILocation(line: 289, column: 6, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1743, file: !778, line: 289, column: 6)
!1752 = !DILocation(line: 289, column: 13, scope: !1751)
!1753 = !DILocation(line: 289, column: 6, scope: !1743)
!1754 = !DILocation(line: 290, column: 17, scope: !1751)
!1755 = !DILocation(line: 292, column: 13, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1743, file: !778, line: 292, column: 2)
!1757 = !DILocation(line: 292, column: 21, scope: !1756)
!1758 = !DILocation(line: 292, column: 11, scope: !1756)
!1759 = !DILocation(line: 292, column: 7, scope: !1756)
!1760 = !DILocation(line: 292, column: 28, scope: !1761)
!1761 = !DILexicalBlockFile(scope: !1762, file: !778, discriminator: 1)
!1762 = distinct !DILexicalBlock(scope: !1756, file: !778, line: 292, column: 2)
!1763 = !DILocation(line: 292, column: 32, scope: !1761)
!1764 = !DILocation(line: 292, column: 2, scope: !1761)
!1765 = !DILocalVariable(name: "query", scope: !1766, file: !778, line: 293, type: !672)
!1766 = distinct !DILexicalBlock(scope: !1762, file: !778, line: 292, column: 57)
!1767 = !DILocation(line: 293, column: 14, scope: !1766)
!1768 = !DILocation(line: 293, column: 62, scope: !1766)
!1769 = !DILocation(line: 293, column: 67, scope: !1766)
!1770 = !DILocation(line: 293, column: 37, scope: !1766)
!1771 = !DILocation(line: 293, column: 23, scope: !1766)
!1772 = !DILocation(line: 295, column: 7, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1766, file: !778, line: 295, column: 7)
!1774 = !DILocation(line: 295, column: 13, scope: !1773)
!1775 = !DILocation(line: 295, column: 7, scope: !1766)
!1776 = !DILocation(line: 296, column: 50, scope: !1773)
!1777 = !DILocation(line: 296, column: 25, scope: !1773)
!1778 = !DILocation(line: 296, column: 32, scope: !1773)
!1779 = !DILocation(line: 296, column: 48, scope: !1773)
!1780 = !DILocation(line: 297, column: 2, scope: !1766)
!1781 = !DILocation(line: 292, column: 46, scope: !1782)
!1782 = !DILexicalBlockFile(scope: !1762, file: !778, discriminator: 2)
!1783 = !DILocation(line: 292, column: 51, scope: !1782)
!1784 = !DILocation(line: 292, column: 44, scope: !1782)
!1785 = !DILocation(line: 292, column: 2, scope: !1782)
!1786 = distinct !{!1786, !1787}
!1787 = !DILocation(line: 292, column: 2, scope: !1743)
!1788 = !DILocation(line: 298, column: 1, scope: !1743)
!1789 = distinct !DISubprogram(name: "signal_query_created_curwin", scope: !778, file: !778, line: 77, type: !1007, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !787)
!1790 = !DILocalVariable(name: "query", arg: 1, scope: !1789, file: !778, line: 77, type: !672)
!1791 = !DILocation(line: 77, column: 52, scope: !1789)
!1792 = !DILocation(line: 79, column: 2, scope: !1789)
!1793 = distinct !{!1793, !1792}
!1794 = !DILocation(line: 79, column: 51, scope: !1795)
!1795 = !DILexicalBlockFile(scope: !1796, file: !778, discriminator: 1)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !778, line: 79, column: 10)
!1797 = distinct !DILexicalBlock(scope: !1789, file: !778, line: 79, column: 4)
!1798 = !DILocation(line: 79, column: 26, scope: !1795)
!1799 = !DILocation(line: 79, column: 12, scope: !1795)
!1800 = !DILocation(line: 79, column: 10, scope: !1795)
!1801 = !DILocation(line: 79, column: 11, scope: !1802)
!1802 = !DILexicalBlockFile(scope: !1796, file: !778, discriminator: 2)
!1803 = !DILocation(line: 79, column: 10, scope: !1804)
!1804 = !DILexicalBlockFile(scope: !1797, file: !778, discriminator: 3)
!1805 = !DILocation(line: 79, column: 52, scope: !1806)
!1806 = !DILexicalBlockFile(scope: !1807, file: !778, discriminator: 4)
!1807 = distinct !DILexicalBlock(scope: !1796, file: !778, line: 79, column: 50)
!1808 = !DILocation(line: 79, column: 61, scope: !1809)
!1809 = !DILexicalBlockFile(scope: !1810, file: !778, discriminator: 5)
!1810 = distinct !DILexicalBlock(scope: !1796, file: !778, line: 79, column: 59)
!1811 = !DILocation(line: 79, column: 149, scope: !1809)
!1812 = !DILocation(line: 79, column: 160, scope: !1813)
!1813 = !DILexicalBlockFile(scope: !1797, file: !778, discriminator: 6)
!1814 = !DILocation(line: 81, column: 18, scope: !1789)
!1815 = !DILocation(line: 81, column: 46, scope: !1789)
!1816 = !DILocation(line: 81, column: 30, scope: !1789)
!1817 = !DILocation(line: 81, column: 2, scope: !1789)
!1818 = !DILocation(line: 82, column: 1, scope: !1789)
!1819 = !DILocation(line: 82, column: 1, scope: !1820)
!1820 = !DILexicalBlockFile(scope: !1789, file: !778, discriminator: 1)
