; ModuleID = './line320-fe-netsplit.o.i'
source_filename = "./line320-fe-netsplit.o.i"
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
%struct._TEXT_DEST_REC = type { %struct._WINDOW_REC*, %struct._SERVER_REC*, i8*, i8*, i8*, i8*, i32, i32, i8*, i32 }
%struct._WINDOW_REC = type { i32, i8*, i32, i32, %struct._GSList*, %struct._WI_ITEM_REC*, %struct._SERVER_REC*, %struct._SERVER_REC*, i8*, i32, %struct._GSList*, i8, %struct.HISTORY_REC*, i8*, i32, i8*, i64, i64, i8*, i8*, i8* }
%struct.HISTORY_REC = type { i8*, %struct._GList*, i32, i32, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.NETSPLIT_SERVER_REC = type { i8*, i8*, i32, i32, i64 }
%struct.TEMP_SPLIT_REC = type { %struct._IRC_SERVER_REC*, %struct._GSList*, %struct._GSList* }
%struct.NETSPLIT_REC = type { %struct.NETSPLIT_SERVER_REC*, i8*, i8*, %struct._GSList*, i8, i64 }
%struct.TEMP_SPLIT_CHAN_REC = type { i8*, i32, i32, %struct._GString* }
%struct.NETSPLIT_CHAN_REC = type { i8*, i8, [8 x i8] }

@.str = private unnamed_addr constant [14 x i8] c"fe-common/irc\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"misc\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"netsplit_max_nicks\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"netsplit_nicks_hide_threshold\00", align 1
@split_tag = internal global i32 0, align 4
@printing_splits = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"netsplit new\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"setup changed\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"netsplit\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"IRC\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"print starting\00", align 1
@netsplit_max_nicks = internal global i32 0, align 4
@netsplit_nicks_hide_threshold = internal global i32 0, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"hide_netsplit_quits\00", align 1
@servers = external global %struct._GSList*, align 8
@.str.10 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@__func__.check_server_splits = private unnamed_addr constant [20 x i8] c"check_server_splits\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"IS_IRC_SERVER(server)\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"%s, \00", align 1
@__func__.print_server_splits = private unnamed_addr constant [20 x i8] c"print_server_splits\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"rec->servers != NULL\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"error command\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"+\00", align 1

; Function Attrs: nounwind uwtable
define void @fe_netsplit_init() #0 !dbg !898 {
  call void @settings_add_int_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i32 10), !dbg !900
  call void @settings_add_int_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0), i32 15), !dbg !901
  store i32 -1, i32* @split_tag, align 4, !dbg !902
  store i32 0, i32* @printing_splits, align 4, !dbg !903
  call void @read_settings(), !dbg !904
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_netsplit_servers to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !905
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !906
  %1 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0)), !dbg !907
  call void @command_bind_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 %1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @cmd_netsplit to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !908
  ret void, !dbg !910
}

declare void @settings_add_int_module(i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @read_settings() #0 !dbg !911 {
  %1 = call i32 @settings_get_int(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0)), !dbg !912
  store i32 %1, i32* @netsplit_max_nicks, align 4, !dbg !913
  %2 = call i32 @settings_get_int(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0)), !dbg !914
  store i32 %2, i32* @netsplit_nicks_hide_threshold, align 4, !dbg !915
  %3 = load i32, i32* @netsplit_nicks_hide_threshold, align 4, !dbg !916
  %4 = load i32, i32* @netsplit_max_nicks, align 4, !dbg !918
  %5 = icmp slt i32 %3, %4, !dbg !919
  br i1 %5, label %6, label %8, !dbg !920

; <label>:6:                                      ; preds = %0
  %7 = load i32, i32* @netsplit_nicks_hide_threshold, align 4, !dbg !921
  store i32 %7, i32* @netsplit_max_nicks, align 4, !dbg !922
  br label %8, !dbg !923

; <label>:8:                                      ; preds = %6, %0
  ret void, !dbg !924
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @sig_netsplit_servers() #0 !dbg !925 {
  %1 = call i32 @settings_get_bool(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0)), !dbg !926
  %2 = icmp ne i32 %1, 0, !dbg !926
  br i1 %2, label %3, label %8, !dbg !928

; <label>:3:                                      ; preds = %0
  %4 = load i32, i32* @split_tag, align 4, !dbg !929
  %5 = icmp eq i32 %4, -1, !dbg !931
  br i1 %5, label %6, label %8, !dbg !932

; <label>:6:                                      ; preds = %3
  %7 = call i32 @g_timeout_add(i32 1000, i32 (i8*)* bitcast (i32 ()* @sig_check_splits to i32 (i8*)*), i8* null), !dbg !933
  store i32 %7, i32* @split_tag, align 4, !dbg !935
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._TEXT_DEST_REC*)* @sig_print_starting to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !936
  br label %8, !dbg !937

; <label>:8:                                      ; preds = %6, %3, %0
  ret void, !dbg !938
}

declare void @command_bind_full(i8*, i32, i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare i32 @chat_protocol_lookup(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @cmd_netsplit(i8*, %struct._IRC_SERVER_REC*) #0 !dbg !939 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca %struct._GSList*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !942, metadata !943), !dbg !944
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !945, metadata !943), !dbg !946
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !947, metadata !943), !dbg !948
  br label %6, !dbg !949, !llvm.loop !950

; <label>:6:                                      ; preds = %2
  %7 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !951
  %8 = icmp ne %struct._IRC_SERVER_REC* %7, null, !dbg !955
  br i1 %8, label %9, label %21, !dbg !956

; <label>:9:                                      ; preds = %6
  %10 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !957
  %11 = bitcast %struct._IRC_SERVER_REC* %10 to i8*, !dbg !957
  %12 = call i8* @module_check_cast(i8* %11, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !959
  %13 = bitcast i8* %12 to %struct._SERVER_REC*, !dbg !960
  %14 = bitcast %struct._SERVER_REC* %13 to i8*, !dbg !961
  %15 = call i8* @chat_protocol_check_cast(i8* %14, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0)), !dbg !962
  %16 = bitcast i8* %15 to %struct._IRC_SERVER_REC*, !dbg !964
  %17 = icmp ne %struct._IRC_SERVER_REC* %16, null, !dbg !964
  br i1 %17, label %18, label %19, !dbg !965

; <label>:18:                                     ; preds = %9
  br i1 false, label %20, label %21, !dbg !966

; <label>:19:                                     ; preds = %9
  br i1 false, label %21, label %20, !dbg !968

; <label>:20:                                     ; preds = %19, %18
  br label %57, !dbg !970

; <label>:21:                                     ; preds = %19, %18, %6
  %22 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !972
  %23 = icmp eq %struct._IRC_SERVER_REC* %22, null, !dbg !975
  br i1 %23, label %31, label %24, !dbg !976

; <label>:24:                                     ; preds = %21
  %25 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !977
  %26 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %25, i32 0, i32 8, !dbg !979
  %27 = load i8, i8* %26, align 8, !dbg !979
  %28 = and i8 %27, 1, !dbg !979
  %29 = zext i8 %28 to i32, !dbg !979
  %30 = icmp ne i32 %29, 0, !dbg !980
  br i1 %30, label %35, label %31, !dbg !981

; <label>:31:                                     ; preds = %24, %21
  br label %32, !dbg !982, !llvm.loop !984

; <label>:32:                                     ; preds = %31
  %33 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !986
  call void @signal_stop(), !dbg !989
  br label %57, !dbg !991
                                                  ; No predecessors!
  br label %35, !dbg !992

; <label>:35:                                     ; preds = %34, %24
  br label %36, !dbg !994

; <label>:36:                                     ; preds = %35
  %37 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !996
  %38 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %37, i32 0, i32 66, !dbg !998
  %39 = load %struct._GSList*, %struct._GSList** %38, align 8, !dbg !998
  %40 = icmp eq %struct._GSList* %39, null, !dbg !999
  br i1 %40, label %41, label %44, !dbg !1000

; <label>:41:                                     ; preds = %36
  %42 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1001
  %43 = bitcast %struct._IRC_SERVER_REC* %42 to i8*, !dbg !1001
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %43, i8* null, i32 262144, i32 6), !dbg !1003
  br label %57, !dbg !1004

; <label>:44:                                     ; preds = %36
  %45 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1005
  %46 = bitcast %struct._IRC_SERVER_REC* %45 to i8*, !dbg !1005
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %46, i8* null, i32 524288, i32 7), !dbg !1006
  store %struct._GSList* null, %struct._GSList** %5, align 8, !dbg !1007
  %47 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1008
  %48 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %47, i32 0, i32 65, !dbg !1009
  %49 = load %struct._GHashTable*, %struct._GHashTable** %48, align 8, !dbg !1009
  %50 = bitcast %struct._GSList** %5 to i8*, !dbg !1010
  call void @g_hash_table_foreach(%struct._GHashTable* %49, void (i8*, i8*, i8*)* bitcast (void (i8*, %struct.NETSPLIT_REC*, %struct._GSList**)* @split_get to void (i8*, i8*, i8*)*), i8* %50), !dbg !1011
  %51 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1012
  %52 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1013
  %53 = bitcast %struct._IRC_SERVER_REC* %52 to i8*, !dbg !1013
  call void @g_slist_foreach(%struct._GSList* %51, void (i8*, i8*)* bitcast (void (%struct.NETSPLIT_REC*, %struct._SERVER_REC*)* @split_print to void (i8*, i8*)*), i8* %53), !dbg !1014
  %54 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1015
  call void @g_slist_free(%struct._GSList* %54), !dbg !1016
  %55 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1017
  %56 = bitcast %struct._IRC_SERVER_REC* %55 to i8*, !dbg !1017
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %56, i8* null, i32 524288, i32 9), !dbg !1018
  br label %57, !dbg !1019

; <label>:57:                                     ; preds = %44, %41, %32, %20
  ret void, !dbg !1020
}

; Function Attrs: nounwind uwtable
define void @fe_netsplit_deinit() #0 !dbg !1022 {
  %1 = load i32, i32* @split_tag, align 4, !dbg !1023
  %2 = icmp ne i32 %1, -1, !dbg !1025
  br i1 %2, label %3, label %6, !dbg !1026

; <label>:3:                                      ; preds = %0
  %4 = load i32, i32* @split_tag, align 4, !dbg !1027
  %5 = call i32 @g_source_remove(i32 %4), !dbg !1029
  call void @signal_remove_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._TEXT_DEST_REC*)* @sig_print_starting to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1030
  br label %6, !dbg !1031

; <label>:6:                                      ; preds = %3, %0
  call void @signal_remove_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_netsplit_servers to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1032
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1033
  call void @command_unbind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @cmd_netsplit to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1034
  ret void, !dbg !1035
}

declare i32 @g_source_remove(i32) #1

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @sig_print_starting(%struct._TEXT_DEST_REC*) #0 !dbg !1036 {
  %2 = alloca %struct._TEXT_DEST_REC*, align 8
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  store %struct._TEXT_DEST_REC* %0, %struct._TEXT_DEST_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC** %2, metadata !1100, metadata !943), !dbg !1101
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1102, metadata !943), !dbg !1103
  %4 = load i32, i32* @printing_splits, align 4, !dbg !1104
  %5 = icmp ne i32 %4, 0, !dbg !1104
  br i1 %5, label %6, label %7, !dbg !1106

; <label>:6:                                      ; preds = %1
  br label %55, !dbg !1107

; <label>:7:                                      ; preds = %1
  %8 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %2, align 8, !dbg !1108
  %9 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %8, i32 0, i32 1, !dbg !1110
  %10 = load %struct._SERVER_REC*, %struct._SERVER_REC** %9, align 8, !dbg !1110
  %11 = bitcast %struct._SERVER_REC* %10 to i8*, !dbg !1108
  %12 = call i8* @module_check_cast(i8* %11, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !1111
  %13 = bitcast i8* %12 to %struct._SERVER_REC*, !dbg !1112
  %14 = bitcast %struct._SERVER_REC* %13 to i8*, !dbg !1113
  %15 = call i8* @chat_protocol_check_cast(i8* %14, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0)), !dbg !1114
  %16 = bitcast i8* %15 to %struct._IRC_SERVER_REC*, !dbg !1116
  %17 = icmp ne %struct._IRC_SERVER_REC* %16, null, !dbg !1116
  br i1 %17, label %18, label %19, !dbg !1117

; <label>:18:                                     ; preds = %7
  br i1 false, label %20, label %21, !dbg !1118

; <label>:19:                                     ; preds = %7
  br i1 false, label %21, label %20, !dbg !1120

; <label>:20:                                     ; preds = %19, %18
  br label %55, !dbg !1122

; <label>:21:                                     ; preds = %19, %18
  %22 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %2, align 8, !dbg !1123
  %23 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %22, i32 0, i32 1, !dbg !1124
  %24 = load %struct._SERVER_REC*, %struct._SERVER_REC** %23, align 8, !dbg !1124
  %25 = bitcast %struct._SERVER_REC* %24 to i8*, !dbg !1123
  %26 = call i8* @module_check_cast(i8* %25, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !1125
  %27 = bitcast i8* %26 to %struct._SERVER_REC*, !dbg !1126
  %28 = bitcast %struct._SERVER_REC* %27 to i8*, !dbg !1127
  %29 = call i8* @chat_protocol_check_cast(i8* %28, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0)), !dbg !1128
  %30 = bitcast i8* %29 to %struct._IRC_SERVER_REC*, !dbg !1130
  store %struct._IRC_SERVER_REC* %30, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1131
  %31 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1132
  %32 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %31, i32 0, i32 66, !dbg !1134
  %33 = load %struct._GSList*, %struct._GSList** %32, align 8, !dbg !1134
  %34 = icmp ne %struct._GSList* %33, null, !dbg !1135
  br i1 %34, label %35, label %55, !dbg !1136

; <label>:35:                                     ; preds = %21
  %36 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %2, align 8, !dbg !1137
  %37 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %36, i32 0, i32 3, !dbg !1140
  %38 = load i8*, i8** %37, align 8, !dbg !1140
  %39 = icmp ne i8* %38, null, !dbg !1141
  br i1 %39, label %40, label %53, !dbg !1142

; <label>:40:                                     ; preds = %35
  %41 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1143
  %42 = bitcast %struct._IRC_SERVER_REC* %41 to %struct._SERVER_REC*, !dbg !1145
  %43 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %42, i32 0, i32 27, !dbg !1145
  %44 = load i32 (%struct._SERVER_REC*, i8*)*, i32 (%struct._SERVER_REC*, i8*)** %43, align 8, !dbg !1145
  %45 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1146
  %46 = bitcast %struct._IRC_SERVER_REC* %45 to %struct._SERVER_REC*, !dbg !1147
  %47 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %2, align 8, !dbg !1148
  %48 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %47, i32 0, i32 3, !dbg !1149
  %49 = load i8*, i8** %48, align 8, !dbg !1149
  %50 = call i32 %44(%struct._SERVER_REC* %46, i8* %49), !dbg !1150
  %51 = icmp ne i32 %50, 0, !dbg !1150
  br i1 %51, label %53, label %52, !dbg !1151

; <label>:52:                                     ; preds = %40
  br label %55, !dbg !1152

; <label>:53:                                     ; preds = %40, %35
  %54 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1153
  call void @print_splits(%struct._IRC_SERVER_REC* %54, i8* null), !dbg !1154
  br label %55, !dbg !1155

; <label>:55:                                     ; preds = %6, %20, %52, %53, %21
  ret void, !dbg !1156
}

declare void @command_unbind_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare i32 @settings_get_int(i8*) #1

declare i32 @settings_get_bool(i8*) #1

declare i32 @g_timeout_add(i32, i32 (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @sig_check_splits() #0 !dbg !1157 {
  %1 = alloca %struct._GSList*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %1, metadata !1160, metadata !943), !dbg !1161
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1162, metadata !943), !dbg !1163
  store i32 1, i32* %2, align 4, !dbg !1164
  %4 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !1165
  store %struct._GSList* %4, %struct._GSList** %1, align 8, !dbg !1167
  br label %5, !dbg !1168

; <label>:5:                                      ; preds = %36, %0
  %6 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1169
  %7 = icmp ne %struct._GSList* %6, null, !dbg !1172
  br i1 %7, label %8, label %40, !dbg !1173

; <label>:8:                                      ; preds = %5
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1174, metadata !943), !dbg !1176
  %9 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1177
  %10 = getelementptr inbounds %struct._GSList, %struct._GSList* %9, i32 0, i32 0, !dbg !1178
  %11 = load i8*, i8** %10, align 8, !dbg !1178
  %12 = bitcast i8* %11 to %struct._IRC_SERVER_REC*, !dbg !1177
  store %struct._IRC_SERVER_REC* %12, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1176
  %13 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1179
  %14 = bitcast %struct._IRC_SERVER_REC* %13 to i8*, !dbg !1179
  %15 = call i8* @module_check_cast(i8* %14, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !1181
  %16 = bitcast i8* %15 to %struct._SERVER_REC*, !dbg !1182
  %17 = bitcast %struct._SERVER_REC* %16 to i8*, !dbg !1183
  %18 = call i8* @chat_protocol_check_cast(i8* %17, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0)), !dbg !1184
  %19 = bitcast i8* %18 to %struct._IRC_SERVER_REC*, !dbg !1186
  %20 = icmp ne %struct._IRC_SERVER_REC* %19, null, !dbg !1186
  br i1 %20, label %21, label %22, !dbg !1187

; <label>:21:                                     ; preds = %8
  br i1 false, label %23, label %24, !dbg !1188

; <label>:22:                                     ; preds = %8
  br i1 false, label %24, label %23, !dbg !1190

; <label>:23:                                     ; preds = %22, %21
  br label %36, !dbg !1192

; <label>:24:                                     ; preds = %22, %21
  %25 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1193
  %26 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %25, i32 0, i32 66, !dbg !1195
  %27 = load %struct._GSList*, %struct._GSList** %26, align 8, !dbg !1195
  %28 = icmp ne %struct._GSList* %27, null, !dbg !1196
  br i1 %28, label %29, label %35, !dbg !1197

; <label>:29:                                     ; preds = %24
  %30 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1198
  %31 = call i32 @check_server_splits(%struct._IRC_SERVER_REC* %30), !dbg !1201
  %32 = icmp ne i32 %31, 0, !dbg !1201
  br i1 %32, label %34, label %33, !dbg !1202

; <label>:33:                                     ; preds = %29
  store i32 0, i32* %2, align 4, !dbg !1203
  br label %34, !dbg !1204

; <label>:34:                                     ; preds = %33, %29
  br label %35, !dbg !1205

; <label>:35:                                     ; preds = %34, %24
  br label %36, !dbg !1206

; <label>:36:                                     ; preds = %35, %23
  %37 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1207
  %38 = getelementptr inbounds %struct._GSList, %struct._GSList* %37, i32 0, i32 1, !dbg !1209
  %39 = load %struct._GSList*, %struct._GSList** %38, align 8, !dbg !1209
  store %struct._GSList* %39, %struct._GSList** %1, align 8, !dbg !1210
  br label %5, !dbg !1211, !llvm.loop !1212

; <label>:40:                                     ; preds = %5
  %41 = load i32, i32* %2, align 4, !dbg !1214
  %42 = icmp ne i32 %41, 0, !dbg !1214
  br i1 %42, label %43, label %46, !dbg !1216

; <label>:43:                                     ; preds = %40
  %44 = load i32, i32* @split_tag, align 4, !dbg !1217
  %45 = call i32 @g_source_remove(i32 %44), !dbg !1219
  call void @signal_remove_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._TEXT_DEST_REC*)* @sig_print_starting to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1220
  store i32 -1, i32* @split_tag, align 4, !dbg !1221
  br label %46, !dbg !1222

; <label>:46:                                     ; preds = %43, %40
  ret i32 1, !dbg !1223
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare i8* @chat_protocol_check_cast(i8*, i32, i8*) #1

declare i8* @module_check_cast(i8*, i32, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @check_server_splits(%struct._IRC_SERVER_REC*) #0 !dbg !1224 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i64, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1227, metadata !943), !dbg !1228
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1229, metadata !943), !dbg !1230
  br label %5, !dbg !1231, !llvm.loop !1232

; <label>:5:                                      ; preds = %1
  %6 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1233
  %7 = bitcast %struct._IRC_SERVER_REC* %6 to i8*, !dbg !1233
  %8 = call i8* @module_check_cast(i8* %7, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !1237
  %9 = bitcast i8* %8 to %struct._SERVER_REC*, !dbg !1238
  %10 = bitcast %struct._SERVER_REC* %9 to i8*, !dbg !1239
  %11 = call i8* @chat_protocol_check_cast(i8* %10, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0)), !dbg !1240
  %12 = bitcast i8* %11 to %struct._IRC_SERVER_REC*, !dbg !1242
  %13 = icmp ne %struct._IRC_SERVER_REC* %12, null, !dbg !1242
  br i1 %13, label %14, label %15, !dbg !1243

; <label>:14:                                     ; preds = %5
  br i1 false, label %17, label %16, !dbg !1244

; <label>:15:                                     ; preds = %5
  br i1 false, label %16, label %17, !dbg !1246

; <label>:16:                                     ; preds = %15, %14
  br label %18, !dbg !1248

; <label>:17:                                     ; preds = %15, %14
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.check_server_splits, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0)), !dbg !1251
  store i32 0, i32* %2, align 4, !dbg !1254
  br label %30, !dbg !1254

; <label>:18:                                     ; preds = %16
  br label %19, !dbg !1255

; <label>:19:                                     ; preds = %18
  %20 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1257
  %21 = call i32 @get_last_split(%struct._IRC_SERVER_REC* %20), !dbg !1258
  %22 = sext i32 %21 to i64, !dbg !1258
  store i64 %22, i64* %4, align 8, !dbg !1259
  %23 = call i64 @time(i64* null) #6, !dbg !1260
  %24 = load i64, i64* %4, align 8, !dbg !1262
  %25 = sub nsw i64 %23, %24, !dbg !1263
  %26 = icmp slt i64 %25, 5, !dbg !1264
  br i1 %26, label %27, label %28, !dbg !1265

; <label>:27:                                     ; preds = %19
  store i32 0, i32* %2, align 4, !dbg !1266
  br label %30, !dbg !1266

; <label>:28:                                     ; preds = %19
  %29 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1267
  call void @print_splits(%struct._IRC_SERVER_REC* %29, i8* null), !dbg !1268
  store i32 1, i32* %2, align 4, !dbg !1269
  br label %30, !dbg !1269

; <label>:30:                                     ; preds = %28, %27, %17
  %31 = load i32, i32* %2, align 4, !dbg !1270
  ret i32 %31, !dbg !1270
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @get_last_split(%struct._IRC_SERVER_REC*) #0 !dbg !1271 {
  %2 = alloca %struct._IRC_SERVER_REC*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.NETSPLIT_SERVER_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %2, metadata !1272, metadata !943), !dbg !1273
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !1274, metadata !943), !dbg !1275
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1276, metadata !943), !dbg !1277
  store i64 0, i64* %4, align 8, !dbg !1278
  %6 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1279
  %7 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %6, i32 0, i32 66, !dbg !1281
  %8 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1281
  store %struct._GSList* %8, %struct._GSList** %3, align 8, !dbg !1282
  br label %9, !dbg !1283

; <label>:9:                                      ; preds = %27, %1
  %10 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1284
  %11 = icmp ne %struct._GSList* %10, null, !dbg !1287
  br i1 %11, label %12, label %31, !dbg !1288

; <label>:12:                                     ; preds = %9
  call void @llvm.dbg.declare(metadata %struct.NETSPLIT_SERVER_REC** %5, metadata !1289, metadata !943), !dbg !1291
  %13 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1292
  %14 = getelementptr inbounds %struct._GSList, %struct._GSList* %13, i32 0, i32 0, !dbg !1293
  %15 = load i8*, i8** %14, align 8, !dbg !1293
  %16 = bitcast i8* %15 to %struct.NETSPLIT_SERVER_REC*, !dbg !1292
  store %struct.NETSPLIT_SERVER_REC* %16, %struct.NETSPLIT_SERVER_REC** %5, align 8, !dbg !1291
  %17 = load %struct.NETSPLIT_SERVER_REC*, %struct.NETSPLIT_SERVER_REC** %5, align 8, !dbg !1294
  %18 = getelementptr inbounds %struct.NETSPLIT_SERVER_REC, %struct.NETSPLIT_SERVER_REC* %17, i32 0, i32 4, !dbg !1296
  %19 = load i64, i64* %18, align 8, !dbg !1296
  %20 = load i64, i64* %4, align 8, !dbg !1297
  %21 = icmp sgt i64 %19, %20, !dbg !1298
  br i1 %21, label %22, label %26, !dbg !1299

; <label>:22:                                     ; preds = %12
  %23 = load %struct.NETSPLIT_SERVER_REC*, %struct.NETSPLIT_SERVER_REC** %5, align 8, !dbg !1300
  %24 = getelementptr inbounds %struct.NETSPLIT_SERVER_REC, %struct.NETSPLIT_SERVER_REC* %23, i32 0, i32 4, !dbg !1302
  %25 = load i64, i64* %24, align 8, !dbg !1302
  store i64 %25, i64* %4, align 8, !dbg !1303
  br label %26, !dbg !1304

; <label>:26:                                     ; preds = %22, %12
  br label %27, !dbg !1305

; <label>:27:                                     ; preds = %26
  %28 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1306
  %29 = getelementptr inbounds %struct._GSList, %struct._GSList* %28, i32 0, i32 1, !dbg !1308
  %30 = load %struct._GSList*, %struct._GSList** %29, align 8, !dbg !1308
  store %struct._GSList* %30, %struct._GSList** %3, align 8, !dbg !1309
  br label %9, !dbg !1310, !llvm.loop !1311

; <label>:31:                                     ; preds = %9
  %32 = load i64, i64* %4, align 8, !dbg !1313
  %33 = trunc i64 %32 to i32, !dbg !1313
  ret i32 %33, !dbg !1314
}

; Function Attrs: nounwind
declare i64 @time(i64*) #3

; Function Attrs: nounwind uwtable
define internal void @print_splits(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !1315 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TEMP_SPLIT_REC, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca %struct.NETSPLIT_SERVER_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1318, metadata !943), !dbg !1319
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1320, metadata !943), !dbg !1321
  call void @llvm.dbg.declare(metadata %struct.TEMP_SPLIT_REC* %5, metadata !1322, metadata !943), !dbg !1329
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !1330, metadata !943), !dbg !1331
  store i32 1, i32* @printing_splits, align 4, !dbg !1332
  %8 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1333
  %9 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %8, i32 0, i32 66, !dbg !1334
  %10 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !1334
  %11 = call %struct._GSList* @g_slist_copy(%struct._GSList* %10), !dbg !1335
  store %struct._GSList* %11, %struct._GSList** %6, align 8, !dbg !1336
  br label %12, !dbg !1337

; <label>:12:                                     ; preds = %15, %2
  %13 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1338
  %14 = icmp ne %struct._GSList* %13, null, !dbg !1340
  br i1 %14, label %15, label %40, !dbg !1341

; <label>:15:                                     ; preds = %12
  call void @llvm.dbg.declare(metadata %struct.NETSPLIT_SERVER_REC** %7, metadata !1342, metadata !943), !dbg !1344
  %16 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1345
  %17 = getelementptr inbounds %struct._GSList, %struct._GSList* %16, i32 0, i32 0, !dbg !1346
  %18 = load i8*, i8** %17, align 8, !dbg !1346
  %19 = bitcast i8* %18 to %struct.NETSPLIT_SERVER_REC*, !dbg !1345
  store %struct.NETSPLIT_SERVER_REC* %19, %struct.NETSPLIT_SERVER_REC** %7, align 8, !dbg !1344
  %20 = load %struct.NETSPLIT_SERVER_REC*, %struct.NETSPLIT_SERVER_REC** %7, align 8, !dbg !1347
  %21 = getelementptr inbounds %struct.NETSPLIT_SERVER_REC, %struct.NETSPLIT_SERVER_REC* %20, i32 0, i32 0, !dbg !1348
  %22 = load i8*, i8** %21, align 8, !dbg !1348
  %23 = call %struct._GSList* @get_source_servers(i8* %22, %struct._GSList** %6), !dbg !1349
  %24 = getelementptr inbounds %struct.TEMP_SPLIT_REC, %struct.TEMP_SPLIT_REC* %5, i32 0, i32 1, !dbg !1350
  store %struct._GSList* %23, %struct._GSList** %24, align 8, !dbg !1351
  %25 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1352
  %26 = getelementptr inbounds %struct.TEMP_SPLIT_REC, %struct.TEMP_SPLIT_REC* %5, i32 0, i32 0, !dbg !1353
  store %struct._IRC_SERVER_REC* %25, %struct._IRC_SERVER_REC** %26, align 8, !dbg !1354
  %27 = getelementptr inbounds %struct.TEMP_SPLIT_REC, %struct.TEMP_SPLIT_REC* %5, i32 0, i32 2, !dbg !1355
  store %struct._GSList* null, %struct._GSList** %27, align 8, !dbg !1356
  %28 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1357
  %29 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %28, i32 0, i32 65, !dbg !1358
  %30 = load %struct._GHashTable*, %struct._GHashTable** %29, align 8, !dbg !1358
  %31 = bitcast %struct.TEMP_SPLIT_REC* %5 to i8*, !dbg !1359
  call void @g_hash_table_foreach(%struct._GHashTable* %30, void (i8*, i8*, i8*)* bitcast (void (i8*, %struct.NETSPLIT_REC*, %struct.TEMP_SPLIT_REC*)* @get_server_splits to void (i8*, i8*, i8*)*), i8* %31), !dbg !1360
  %32 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1361
  %33 = load i8*, i8** %4, align 8, !dbg !1362
  call void @print_server_splits(%struct._IRC_SERVER_REC* %32, %struct.TEMP_SPLIT_REC* %5, i8* %33), !dbg !1363
  %34 = getelementptr inbounds %struct.TEMP_SPLIT_REC, %struct.TEMP_SPLIT_REC* %5, i32 0, i32 2, !dbg !1364
  %35 = load %struct._GSList*, %struct._GSList** %34, align 8, !dbg !1364
  call void @g_slist_foreach(%struct._GSList* %35, void (i8*, i8*)* bitcast (void (%struct.TEMP_SPLIT_CHAN_REC*)* @temp_split_chan_free to void (i8*, i8*)*), i8* null), !dbg !1365
  %36 = getelementptr inbounds %struct.TEMP_SPLIT_REC, %struct.TEMP_SPLIT_REC* %5, i32 0, i32 1, !dbg !1366
  %37 = load %struct._GSList*, %struct._GSList** %36, align 8, !dbg !1366
  call void @g_slist_free(%struct._GSList* %37), !dbg !1367
  %38 = getelementptr inbounds %struct.TEMP_SPLIT_REC, %struct.TEMP_SPLIT_REC* %5, i32 0, i32 2, !dbg !1368
  %39 = load %struct._GSList*, %struct._GSList** %38, align 8, !dbg !1368
  call void @g_slist_free(%struct._GSList* %39), !dbg !1369
  br label %12, !dbg !1370, !llvm.loop !1372

; <label>:40:                                     ; preds = %12
  store i32 0, i32* @printing_splits, align 4, !dbg !1373
  ret void, !dbg !1374
}

declare %struct._GSList* @g_slist_copy(%struct._GSList*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GSList* @get_source_servers(i8*, %struct._GSList**) #0 !dbg !1375 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._GSList**, align 8
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca %struct._GSList*, align 8
  %8 = alloca %struct.NETSPLIT_SERVER_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1379, metadata !943), !dbg !1380
  store %struct._GSList** %1, %struct._GSList*** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList*** %4, metadata !1381, metadata !943), !dbg !1382
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !1383, metadata !943), !dbg !1384
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !1385, metadata !943), !dbg !1386
  call void @llvm.dbg.declare(metadata %struct._GSList** %7, metadata !1387, metadata !943), !dbg !1388
  store %struct._GSList* null, %struct._GSList** %5, align 8, !dbg !1389
  %9 = load %struct._GSList**, %struct._GSList*** %4, align 8, !dbg !1390
  %10 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !1392
  store %struct._GSList* %10, %struct._GSList** %7, align 8, !dbg !1393
  br label %11, !dbg !1394

; <label>:11:                                     ; preds = %42, %2
  %12 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1395
  %13 = icmp ne %struct._GSList* %12, null, !dbg !1398
  br i1 %13, label %14, label %44, !dbg !1399

; <label>:14:                                     ; preds = %11
  call void @llvm.dbg.declare(metadata %struct.NETSPLIT_SERVER_REC** %8, metadata !1400, metadata !943), !dbg !1402
  %15 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1403
  %16 = getelementptr inbounds %struct._GSList, %struct._GSList* %15, i32 0, i32 0, !dbg !1404
  %17 = load i8*, i8** %16, align 8, !dbg !1404
  %18 = bitcast i8* %17 to %struct.NETSPLIT_SERVER_REC*, !dbg !1403
  store %struct.NETSPLIT_SERVER_REC* %18, %struct.NETSPLIT_SERVER_REC** %8, align 8, !dbg !1402
  %19 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1405
  %20 = getelementptr inbounds %struct._GSList, %struct._GSList* %19, i32 0, i32 1, !dbg !1406
  %21 = load %struct._GSList*, %struct._GSList** %20, align 8, !dbg !1406
  store %struct._GSList* %21, %struct._GSList** %6, align 8, !dbg !1407
  %22 = load %struct.NETSPLIT_SERVER_REC*, %struct.NETSPLIT_SERVER_REC** %8, align 8, !dbg !1408
  %23 = getelementptr inbounds %struct.NETSPLIT_SERVER_REC, %struct.NETSPLIT_SERVER_REC* %22, i32 0, i32 0, !dbg !1410
  %24 = load i8*, i8** %23, align 8, !dbg !1410
  %25 = load i8*, i8** %3, align 8, !dbg !1411
  %26 = call i32 @g_ascii_strcasecmp(i8* %24, i8* %25), !dbg !1412
  %27 = icmp eq i32 %26, 0, !dbg !1413
  br i1 %27, label %28, label %41, !dbg !1414

; <label>:28:                                     ; preds = %14
  %29 = load %struct.NETSPLIT_SERVER_REC*, %struct.NETSPLIT_SERVER_REC** %8, align 8, !dbg !1415
  %30 = getelementptr inbounds %struct.NETSPLIT_SERVER_REC, %struct.NETSPLIT_SERVER_REC* %29, i32 0, i32 3, !dbg !1417
  store i32 0, i32* %30, align 4, !dbg !1418
  %31 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1419
  %32 = load %struct.NETSPLIT_SERVER_REC*, %struct.NETSPLIT_SERVER_REC** %8, align 8, !dbg !1420
  %33 = bitcast %struct.NETSPLIT_SERVER_REC* %32 to i8*, !dbg !1420
  %34 = call %struct._GSList* @g_slist_append(%struct._GSList* %31, i8* %33), !dbg !1421
  store %struct._GSList* %34, %struct._GSList** %5, align 8, !dbg !1422
  %35 = load %struct._GSList**, %struct._GSList*** %4, align 8, !dbg !1423
  %36 = load %struct._GSList*, %struct._GSList** %35, align 8, !dbg !1424
  %37 = load %struct.NETSPLIT_SERVER_REC*, %struct.NETSPLIT_SERVER_REC** %8, align 8, !dbg !1425
  %38 = bitcast %struct.NETSPLIT_SERVER_REC* %37 to i8*, !dbg !1425
  %39 = call %struct._GSList* @g_slist_remove(%struct._GSList* %36, i8* %38), !dbg !1426
  %40 = load %struct._GSList**, %struct._GSList*** %4, align 8, !dbg !1427
  store %struct._GSList* %39, %struct._GSList** %40, align 8, !dbg !1428
  br label %41, !dbg !1429

; <label>:41:                                     ; preds = %28, %14
  br label %42, !dbg !1430

; <label>:42:                                     ; preds = %41
  %43 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1431
  store %struct._GSList* %43, %struct._GSList** %7, align 8, !dbg !1433
  br label %11, !dbg !1434, !llvm.loop !1435

; <label>:44:                                     ; preds = %11
  %45 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1437
  ret %struct._GSList* %45, !dbg !1438
}

declare void @g_hash_table_foreach(%struct._GHashTable*, void (i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @get_server_splits(i8*, %struct.NETSPLIT_REC*, %struct.TEMP_SPLIT_REC*) #0 !dbg !1439 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.NETSPLIT_REC*, align 8
  %6 = alloca %struct.TEMP_SPLIT_REC*, align 8
  %7 = alloca %struct.TEMP_SPLIT_CHAN_REC*, align 8
  %8 = alloca %struct._GSList*, align 8
  %9 = alloca %struct.NETSPLIT_CHAN_REC*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1453, metadata !943), !dbg !1454
  store %struct.NETSPLIT_REC* %1, %struct.NETSPLIT_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.NETSPLIT_REC** %5, metadata !1455, metadata !943), !dbg !1456
  store %struct.TEMP_SPLIT_REC* %2, %struct.TEMP_SPLIT_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.TEMP_SPLIT_REC** %6, metadata !1457, metadata !943), !dbg !1458
  call void @llvm.dbg.declare(metadata %struct.TEMP_SPLIT_CHAN_REC** %7, metadata !1459, metadata !943), !dbg !1460
  call void @llvm.dbg.declare(metadata %struct._GSList** %8, metadata !1461, metadata !943), !dbg !1462
  %10 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %5, align 8, !dbg !1463
  %11 = getelementptr inbounds %struct.NETSPLIT_REC, %struct.NETSPLIT_REC* %10, i32 0, i32 4, !dbg !1465
  %12 = load i8, i8* %11, align 8, !dbg !1465
  %13 = and i8 %12, 1, !dbg !1465
  %14 = zext i8 %13 to i32, !dbg !1465
  %15 = icmp ne i32 %14, 0, !dbg !1463
  br i1 %15, label %26, label %16, !dbg !1466

; <label>:16:                                     ; preds = %3
  %17 = load %struct.TEMP_SPLIT_REC*, %struct.TEMP_SPLIT_REC** %6, align 8, !dbg !1467
  %18 = getelementptr inbounds %struct.TEMP_SPLIT_REC, %struct.TEMP_SPLIT_REC* %17, i32 0, i32 1, !dbg !1468
  %19 = load %struct._GSList*, %struct._GSList** %18, align 8, !dbg !1468
  %20 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %5, align 8, !dbg !1469
  %21 = getelementptr inbounds %struct.NETSPLIT_REC, %struct.NETSPLIT_REC* %20, i32 0, i32 0, !dbg !1470
  %22 = load %struct.NETSPLIT_SERVER_REC*, %struct.NETSPLIT_SERVER_REC** %21, align 8, !dbg !1470
  %23 = bitcast %struct.NETSPLIT_SERVER_REC* %22 to i8*, !dbg !1469
  %24 = call %struct._GSList* @g_slist_find(%struct._GSList* %19, i8* %23), !dbg !1471
  %25 = icmp eq %struct._GSList* %24, null, !dbg !1472
  br i1 %25, label %26, label %27, !dbg !1473

; <label>:26:                                     ; preds = %16, %3
  br label %161, !dbg !1475

; <label>:27:                                     ; preds = %16
  %28 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %5, align 8, !dbg !1476
  %29 = getelementptr inbounds %struct.NETSPLIT_REC, %struct.NETSPLIT_REC* %28, i32 0, i32 4, !dbg !1477
  %30 = load i8, i8* %29, align 8, !dbg !1478
  %31 = and i8 %30, -2, !dbg !1478
  %32 = or i8 %31, 1, !dbg !1478
  store i8 %32, i8* %29, align 8, !dbg !1478
  %33 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %5, align 8, !dbg !1479
  %34 = getelementptr inbounds %struct.NETSPLIT_REC, %struct.NETSPLIT_REC* %33, i32 0, i32 3, !dbg !1481
  %35 = load %struct._GSList*, %struct._GSList** %34, align 8, !dbg !1481
  store %struct._GSList* %35, %struct._GSList** %8, align 8, !dbg !1482
  br label %36, !dbg !1483

; <label>:36:                                     ; preds = %157, %27
  %37 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1484
  %38 = icmp ne %struct._GSList* %37, null, !dbg !1487
  br i1 %38, label %39, label %161, !dbg !1488

; <label>:39:                                     ; preds = %36
  call void @llvm.dbg.declare(metadata %struct.NETSPLIT_CHAN_REC** %9, metadata !1489, metadata !943), !dbg !1500
  %40 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1501
  %41 = getelementptr inbounds %struct._GSList, %struct._GSList* %40, i32 0, i32 0, !dbg !1502
  %42 = load i8*, i8** %41, align 8, !dbg !1502
  %43 = bitcast i8* %42 to %struct.NETSPLIT_CHAN_REC*, !dbg !1501
  store %struct.NETSPLIT_CHAN_REC* %43, %struct.NETSPLIT_CHAN_REC** %9, align 8, !dbg !1500
  %44 = load %struct.TEMP_SPLIT_REC*, %struct.TEMP_SPLIT_REC** %6, align 8, !dbg !1503
  %45 = getelementptr inbounds %struct.TEMP_SPLIT_REC, %struct.TEMP_SPLIT_REC* %44, i32 0, i32 0, !dbg !1505
  %46 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %45, align 8, !dbg !1505
  %47 = bitcast %struct._IRC_SERVER_REC* %46 to i8*, !dbg !1503
  %48 = call i8* @module_check_cast(i8* %47, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !1506
  %49 = bitcast i8* %48 to %struct._SERVER_REC*, !dbg !1507
  %50 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %5, align 8, !dbg !1508
  %51 = getelementptr inbounds %struct.NETSPLIT_REC, %struct.NETSPLIT_REC* %50, i32 0, i32 1, !dbg !1509
  %52 = load i8*, i8** %51, align 8, !dbg !1509
  %53 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %5, align 8, !dbg !1510
  %54 = getelementptr inbounds %struct.NETSPLIT_REC, %struct.NETSPLIT_REC* %53, i32 0, i32 2, !dbg !1511
  %55 = load i8*, i8** %54, align 8, !dbg !1511
  %56 = load %struct.NETSPLIT_CHAN_REC*, %struct.NETSPLIT_CHAN_REC** %9, align 8, !dbg !1512
  %57 = getelementptr inbounds %struct.NETSPLIT_CHAN_REC, %struct.NETSPLIT_CHAN_REC* %56, i32 0, i32 0, !dbg !1513
  %58 = load i8*, i8** %57, align 8, !dbg !1513
  %59 = call i32 @ignore_check(%struct._SERVER_REC* %49, i8* %52, i8* %55, i8* %58, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0), i32 512), !dbg !1514
  %60 = icmp ne i32 %59, 0, !dbg !1516
  br i1 %60, label %61, label %62, !dbg !1517

; <label>:61:                                     ; preds = %39
  br label %157, !dbg !1518

; <label>:62:                                     ; preds = %39
  %63 = load %struct.TEMP_SPLIT_REC*, %struct.TEMP_SPLIT_REC** %6, align 8, !dbg !1519
  %64 = load %struct.NETSPLIT_CHAN_REC*, %struct.NETSPLIT_CHAN_REC** %9, align 8, !dbg !1520
  %65 = getelementptr inbounds %struct.NETSPLIT_CHAN_REC, %struct.NETSPLIT_CHAN_REC* %64, i32 0, i32 0, !dbg !1521
  %66 = load i8*, i8** %65, align 8, !dbg !1521
  %67 = call %struct.TEMP_SPLIT_CHAN_REC* @find_split_chan(%struct.TEMP_SPLIT_REC* %63, i8* %66), !dbg !1522
  store %struct.TEMP_SPLIT_CHAN_REC* %67, %struct.TEMP_SPLIT_CHAN_REC** %7, align 8, !dbg !1523
  %68 = load %struct.TEMP_SPLIT_CHAN_REC*, %struct.TEMP_SPLIT_CHAN_REC** %7, align 8, !dbg !1524
  %69 = icmp eq %struct.TEMP_SPLIT_CHAN_REC* %68, null, !dbg !1526
  br i1 %69, label %70, label %89, !dbg !1527

; <label>:70:                                     ; preds = %62
  %71 = call noalias i8* @g_malloc0_n(i64 1, i64 24), !dbg !1528
  %72 = bitcast i8* %71 to %struct.TEMP_SPLIT_CHAN_REC*, !dbg !1530
  store %struct.TEMP_SPLIT_CHAN_REC* %72, %struct.TEMP_SPLIT_CHAN_REC** %7, align 8, !dbg !1531
  %73 = load %struct.NETSPLIT_CHAN_REC*, %struct.NETSPLIT_CHAN_REC** %9, align 8, !dbg !1532
  %74 = getelementptr inbounds %struct.NETSPLIT_CHAN_REC, %struct.NETSPLIT_CHAN_REC* %73, i32 0, i32 0, !dbg !1533
  %75 = load i8*, i8** %74, align 8, !dbg !1533
  %76 = load %struct.TEMP_SPLIT_CHAN_REC*, %struct.TEMP_SPLIT_CHAN_REC** %7, align 8, !dbg !1534
  %77 = getelementptr inbounds %struct.TEMP_SPLIT_CHAN_REC, %struct.TEMP_SPLIT_CHAN_REC* %76, i32 0, i32 0, !dbg !1535
  store i8* %75, i8** %77, align 8, !dbg !1536
  %78 = call %struct._GString* @g_string_new(i8* null), !dbg !1537
  %79 = load %struct.TEMP_SPLIT_CHAN_REC*, %struct.TEMP_SPLIT_CHAN_REC** %7, align 8, !dbg !1538
  %80 = getelementptr inbounds %struct.TEMP_SPLIT_CHAN_REC, %struct.TEMP_SPLIT_CHAN_REC* %79, i32 0, i32 3, !dbg !1539
  store %struct._GString* %78, %struct._GString** %80, align 8, !dbg !1540
  %81 = load %struct.TEMP_SPLIT_REC*, %struct.TEMP_SPLIT_REC** %6, align 8, !dbg !1541
  %82 = getelementptr inbounds %struct.TEMP_SPLIT_REC, %struct.TEMP_SPLIT_REC* %81, i32 0, i32 2, !dbg !1542
  %83 = load %struct._GSList*, %struct._GSList** %82, align 8, !dbg !1542
  %84 = load %struct.TEMP_SPLIT_CHAN_REC*, %struct.TEMP_SPLIT_CHAN_REC** %7, align 8, !dbg !1543
  %85 = bitcast %struct.TEMP_SPLIT_CHAN_REC* %84 to i8*, !dbg !1543
  %86 = call %struct._GSList* @g_slist_append(%struct._GSList* %83, i8* %85), !dbg !1544
  %87 = load %struct.TEMP_SPLIT_REC*, %struct.TEMP_SPLIT_REC** %6, align 8, !dbg !1545
  %88 = getelementptr inbounds %struct.TEMP_SPLIT_REC, %struct.TEMP_SPLIT_REC* %87, i32 0, i32 2, !dbg !1546
  store %struct._GSList* %86, %struct._GSList** %88, align 8, !dbg !1547
  br label %89, !dbg !1548

; <label>:89:                                     ; preds = %70, %62
  %90 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %5, align 8, !dbg !1549
  %91 = getelementptr inbounds %struct.NETSPLIT_REC, %struct.NETSPLIT_REC* %90, i32 0, i32 0, !dbg !1550
  %92 = load %struct.NETSPLIT_SERVER_REC*, %struct.NETSPLIT_SERVER_REC** %91, align 8, !dbg !1550
  %93 = getelementptr inbounds %struct.NETSPLIT_SERVER_REC, %struct.NETSPLIT_SERVER_REC* %92, i32 0, i32 3, !dbg !1551
  %94 = load i32, i32* %93, align 4, !dbg !1552
  %95 = add nsw i32 %94, 1, !dbg !1552
  store i32 %95, i32* %93, align 4, !dbg !1552
  %96 = load %struct.TEMP_SPLIT_CHAN_REC*, %struct.TEMP_SPLIT_CHAN_REC** %7, align 8, !dbg !1553
  %97 = getelementptr inbounds %struct.TEMP_SPLIT_CHAN_REC, %struct.TEMP_SPLIT_CHAN_REC* %96, i32 0, i32 1, !dbg !1554
  %98 = load i32, i32* %97, align 8, !dbg !1555
  %99 = add nsw i32 %98, 1, !dbg !1555
  store i32 %99, i32* %97, align 8, !dbg !1555
  %100 = load i32, i32* @netsplit_nicks_hide_threshold, align 4, !dbg !1556
  %101 = icmp sle i32 %100, 0, !dbg !1558
  br i1 %101, label %108, label %102, !dbg !1559

; <label>:102:                                    ; preds = %89
  %103 = load %struct.TEMP_SPLIT_CHAN_REC*, %struct.TEMP_SPLIT_CHAN_REC** %7, align 8, !dbg !1560
  %104 = getelementptr inbounds %struct.TEMP_SPLIT_CHAN_REC, %struct.TEMP_SPLIT_CHAN_REC* %103, i32 0, i32 1, !dbg !1561
  %105 = load i32, i32* %104, align 8, !dbg !1561
  %106 = load i32, i32* @netsplit_nicks_hide_threshold, align 4, !dbg !1562
  %107 = icmp sle i32 %105, %106, !dbg !1563
  br i1 %107, label %108, label %156, !dbg !1564

; <label>:108:                                    ; preds = %102, %89
  %109 = load %struct.NETSPLIT_CHAN_REC*, %struct.NETSPLIT_CHAN_REC** %9, align 8, !dbg !1566
  %110 = getelementptr inbounds %struct.NETSPLIT_CHAN_REC, %struct.NETSPLIT_CHAN_REC* %109, i32 0, i32 1, !dbg !1569
  %111 = load i8, i8* %110, align 8, !dbg !1569
  %112 = and i8 %111, 1, !dbg !1569
  %113 = zext i8 %112 to i32, !dbg !1569
  %114 = icmp ne i32 %113, 0, !dbg !1566
  br i1 %114, label %115, label %120, !dbg !1570

; <label>:115:                                    ; preds = %108
  %116 = load %struct.TEMP_SPLIT_CHAN_REC*, %struct.TEMP_SPLIT_CHAN_REC** %7, align 8, !dbg !1571
  %117 = getelementptr inbounds %struct.TEMP_SPLIT_CHAN_REC, %struct.TEMP_SPLIT_CHAN_REC* %116, i32 0, i32 3, !dbg !1572
  %118 = load %struct._GString*, %struct._GString** %117, align 8, !dbg !1572
  %119 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %118, i8 signext 64), !dbg !1573
  br label %134, !dbg !1573

; <label>:120:                                    ; preds = %108
  %121 = load %struct.NETSPLIT_CHAN_REC*, %struct.NETSPLIT_CHAN_REC** %9, align 8, !dbg !1574
  %122 = getelementptr inbounds %struct.NETSPLIT_CHAN_REC, %struct.NETSPLIT_CHAN_REC* %121, i32 0, i32 1, !dbg !1576
  %123 = load i8, i8* %122, align 8, !dbg !1576
  %124 = lshr i8 %123, 2, !dbg !1576
  %125 = and i8 %124, 1, !dbg !1576
  %126 = zext i8 %125 to i32, !dbg !1576
  %127 = icmp ne i32 %126, 0, !dbg !1574
  br i1 %127, label %128, label %133, !dbg !1577

; <label>:128:                                    ; preds = %120
  %129 = load %struct.TEMP_SPLIT_CHAN_REC*, %struct.TEMP_SPLIT_CHAN_REC** %7, align 8, !dbg !1578
  %130 = getelementptr inbounds %struct.TEMP_SPLIT_CHAN_REC, %struct.TEMP_SPLIT_CHAN_REC* %129, i32 0, i32 3, !dbg !1579
  %131 = load %struct._GString*, %struct._GString** %130, align 8, !dbg !1579
  %132 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %131, i8 signext 43), !dbg !1580
  br label %133, !dbg !1580

; <label>:133:                                    ; preds = %128, %120
  br label %134

; <label>:134:                                    ; preds = %133, %115
  %135 = load %struct.TEMP_SPLIT_CHAN_REC*, %struct.TEMP_SPLIT_CHAN_REC** %7, align 8, !dbg !1581
  %136 = getelementptr inbounds %struct.TEMP_SPLIT_CHAN_REC, %struct.TEMP_SPLIT_CHAN_REC* %135, i32 0, i32 3, !dbg !1582
  %137 = load %struct._GString*, %struct._GString** %136, align 8, !dbg !1582
  %138 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %5, align 8, !dbg !1583
  %139 = getelementptr inbounds %struct.NETSPLIT_REC, %struct.NETSPLIT_REC* %138, i32 0, i32 1, !dbg !1584
  %140 = load i8*, i8** %139, align 8, !dbg !1584
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %137, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* %140), !dbg !1585
  %141 = load %struct.TEMP_SPLIT_CHAN_REC*, %struct.TEMP_SPLIT_CHAN_REC** %7, align 8, !dbg !1586
  %142 = getelementptr inbounds %struct.TEMP_SPLIT_CHAN_REC, %struct.TEMP_SPLIT_CHAN_REC* %141, i32 0, i32 1, !dbg !1588
  %143 = load i32, i32* %142, align 8, !dbg !1588
  %144 = load i32, i32* @netsplit_max_nicks, align 4, !dbg !1589
  %145 = icmp eq i32 %143, %144, !dbg !1590
  br i1 %145, label %146, label %155, !dbg !1591

; <label>:146:                                    ; preds = %134
  %147 = load %struct.TEMP_SPLIT_CHAN_REC*, %struct.TEMP_SPLIT_CHAN_REC** %7, align 8, !dbg !1592
  %148 = getelementptr inbounds %struct.TEMP_SPLIT_CHAN_REC, %struct.TEMP_SPLIT_CHAN_REC* %147, i32 0, i32 3, !dbg !1593
  %149 = load %struct._GString*, %struct._GString** %148, align 8, !dbg !1593
  %150 = getelementptr inbounds %struct._GString, %struct._GString* %149, i32 0, i32 1, !dbg !1594
  %151 = load i64, i64* %150, align 8, !dbg !1594
  %152 = trunc i64 %151 to i32, !dbg !1592
  %153 = load %struct.TEMP_SPLIT_CHAN_REC*, %struct.TEMP_SPLIT_CHAN_REC** %7, align 8, !dbg !1595
  %154 = getelementptr inbounds %struct.TEMP_SPLIT_CHAN_REC, %struct.TEMP_SPLIT_CHAN_REC* %153, i32 0, i32 2, !dbg !1596
  store i32 %152, i32* %154, align 4, !dbg !1597
  br label %155, !dbg !1595

; <label>:155:                                    ; preds = %146, %134
  br label %156, !dbg !1598

; <label>:156:                                    ; preds = %155, %102
  br label %157, !dbg !1599

; <label>:157:                                    ; preds = %156, %61
  %158 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1600
  %159 = getelementptr inbounds %struct._GSList, %struct._GSList* %158, i32 0, i32 1, !dbg !1602
  %160 = load %struct._GSList*, %struct._GSList** %159, align 8, !dbg !1602
  store %struct._GSList* %160, %struct._GSList** %8, align 8, !dbg !1603
  br label %36, !dbg !1604, !llvm.loop !1605

; <label>:161:                                    ; preds = %26, %36
  ret void, !dbg !1607
}

; Function Attrs: nounwind uwtable
define internal void @print_server_splits(%struct._IRC_SERVER_REC*, %struct.TEMP_SPLIT_REC*, i8*) #0 !dbg !1608 {
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca %struct.TEMP_SPLIT_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._GString*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._GSList*, align 8
  %10 = alloca %struct.NETSPLIT_SERVER_REC*, align 8
  %11 = alloca %struct.TEMP_SPLIT_CHAN_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !1611, metadata !943), !dbg !1612
  store %struct.TEMP_SPLIT_REC* %1, %struct.TEMP_SPLIT_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.TEMP_SPLIT_REC** %5, metadata !1613, metadata !943), !dbg !1614
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1615, metadata !943), !dbg !1616
  call void @llvm.dbg.declare(metadata %struct._GString** %7, metadata !1617, metadata !943), !dbg !1618
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1619, metadata !943), !dbg !1620
  call void @llvm.dbg.declare(metadata %struct._GSList** %9, metadata !1621, metadata !943), !dbg !1622
  br label %12, !dbg !1623, !llvm.loop !1624

; <label>:12:                                     ; preds = %3
  %13 = load %struct.TEMP_SPLIT_REC*, %struct.TEMP_SPLIT_REC** %5, align 8, !dbg !1625
  %14 = getelementptr inbounds %struct.TEMP_SPLIT_REC, %struct.TEMP_SPLIT_REC* %13, i32 0, i32 1, !dbg !1629
  %15 = load %struct._GSList*, %struct._GSList** %14, align 8, !dbg !1629
  %16 = icmp ne %struct._GSList* %15, null, !dbg !1630
  br i1 %16, label %17, label %18, !dbg !1625

; <label>:17:                                     ; preds = %12
  br label %19, !dbg !1631

; <label>:18:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.print_server_splits, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0)), !dbg !1634
  br label %161, !dbg !1637

; <label>:19:                                     ; preds = %17
  br label %20, !dbg !1638

; <label>:20:                                     ; preds = %19
  %21 = call %struct._GString* @g_string_new(i8* null), !dbg !1640
  store %struct._GString* %21, %struct._GString** %7, align 8, !dbg !1641
  %22 = load %struct.TEMP_SPLIT_REC*, %struct.TEMP_SPLIT_REC** %5, align 8, !dbg !1642
  %23 = getelementptr inbounds %struct.TEMP_SPLIT_REC, %struct.TEMP_SPLIT_REC* %22, i32 0, i32 1, !dbg !1644
  %24 = load %struct._GSList*, %struct._GSList** %23, align 8, !dbg !1644
  store %struct._GSList* %24, %struct._GSList** %9, align 8, !dbg !1645
  br label %25, !dbg !1646

; <label>:25:                                     ; preds = %43, %20
  %26 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !1647
  %27 = icmp ne %struct._GSList* %26, null, !dbg !1650
  br i1 %27, label %28, label %47, !dbg !1651

; <label>:28:                                     ; preds = %25
  call void @llvm.dbg.declare(metadata %struct.NETSPLIT_SERVER_REC** %10, metadata !1652, metadata !943), !dbg !1654
  %29 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !1655
  %30 = getelementptr inbounds %struct._GSList, %struct._GSList* %29, i32 0, i32 0, !dbg !1656
  %31 = load i8*, i8** %30, align 8, !dbg !1656
  %32 = bitcast i8* %31 to %struct.NETSPLIT_SERVER_REC*, !dbg !1655
  store %struct.NETSPLIT_SERVER_REC* %32, %struct.NETSPLIT_SERVER_REC** %10, align 8, !dbg !1654
  %33 = load %struct.NETSPLIT_SERVER_REC*, %struct.NETSPLIT_SERVER_REC** %10, align 8, !dbg !1657
  %34 = getelementptr inbounds %struct.NETSPLIT_SERVER_REC, %struct.NETSPLIT_SERVER_REC* %33, i32 0, i32 3, !dbg !1659
  %35 = load i32, i32* %34, align 4, !dbg !1659
  %36 = icmp sgt i32 %35, 0, !dbg !1660
  br i1 %36, label %37, label %42, !dbg !1661

; <label>:37:                                     ; preds = %28
  %38 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !1662
  %39 = load %struct.NETSPLIT_SERVER_REC*, %struct.NETSPLIT_SERVER_REC** %10, align 8, !dbg !1664
  %40 = getelementptr inbounds %struct.NETSPLIT_SERVER_REC, %struct.NETSPLIT_SERVER_REC* %39, i32 0, i32 1, !dbg !1665
  %41 = load i8*, i8** %40, align 8, !dbg !1665
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* %41), !dbg !1666
  br label %42, !dbg !1667

; <label>:42:                                     ; preds = %37, %28
  br label %43, !dbg !1668

; <label>:43:                                     ; preds = %42
  %44 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !1669
  %45 = getelementptr inbounds %struct._GSList, %struct._GSList* %44, i32 0, i32 1, !dbg !1671
  %46 = load %struct._GSList*, %struct._GSList** %45, align 8, !dbg !1671
  store %struct._GSList* %46, %struct._GSList** %9, align 8, !dbg !1672
  br label %25, !dbg !1673, !llvm.loop !1674

; <label>:47:                                     ; preds = %25
  %48 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !1676
  %49 = getelementptr inbounds %struct._GString, %struct._GString* %48, i32 0, i32 1, !dbg !1678
  %50 = load i64, i64* %49, align 8, !dbg !1678
  %51 = icmp eq i64 %50, 0, !dbg !1679
  br i1 %51, label %52, label %55, !dbg !1680

; <label>:52:                                     ; preds = %47
  %53 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !1681
  %54 = call i8* @g_string_free(%struct._GString* %53, i32 1), !dbg !1683
  br label %161, !dbg !1684

; <label>:55:                                     ; preds = %47
  %56 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !1685
  %57 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !1686
  %58 = getelementptr inbounds %struct._GString, %struct._GString* %57, i32 0, i32 1, !dbg !1687
  %59 = load i64, i64* %58, align 8, !dbg !1687
  %60 = sub i64 %59, 2, !dbg !1688
  %61 = call %struct._GString* @g_string_truncate(%struct._GString* %56, i64 %60), !dbg !1689
  %62 = load %struct.TEMP_SPLIT_REC*, %struct.TEMP_SPLIT_REC** %5, align 8, !dbg !1690
  %63 = getelementptr inbounds %struct.TEMP_SPLIT_REC, %struct.TEMP_SPLIT_REC* %62, i32 0, i32 1, !dbg !1691
  %64 = load %struct._GSList*, %struct._GSList** %63, align 8, !dbg !1691
  %65 = getelementptr inbounds %struct._GSList, %struct._GSList* %64, i32 0, i32 0, !dbg !1692
  %66 = load i8*, i8** %65, align 8, !dbg !1692
  %67 = bitcast i8* %66 to %struct.NETSPLIT_SERVER_REC*, !dbg !1693
  %68 = getelementptr inbounds %struct.NETSPLIT_SERVER_REC, %struct.NETSPLIT_SERVER_REC* %67, i32 0, i32 0, !dbg !1694
  %69 = load i8*, i8** %68, align 8, !dbg !1694
  store i8* %69, i8** %8, align 8, !dbg !1695
  %70 = load %struct.TEMP_SPLIT_REC*, %struct.TEMP_SPLIT_REC** %5, align 8, !dbg !1696
  %71 = getelementptr inbounds %struct.TEMP_SPLIT_REC, %struct.TEMP_SPLIT_REC* %70, i32 0, i32 2, !dbg !1698
  %72 = load %struct._GSList*, %struct._GSList** %71, align 8, !dbg !1698
  store %struct._GSList* %72, %struct._GSList** %9, align 8, !dbg !1699
  br label %73, !dbg !1700

; <label>:73:                                     ; preds = %154, %55
  %74 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !1701
  %75 = icmp ne %struct._GSList* %74, null, !dbg !1704
  br i1 %75, label %76, label %158, !dbg !1705

; <label>:76:                                     ; preds = %73
  call void @llvm.dbg.declare(metadata %struct.TEMP_SPLIT_CHAN_REC** %11, metadata !1706, metadata !943), !dbg !1708
  %77 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !1709
  %78 = getelementptr inbounds %struct._GSList, %struct._GSList* %77, i32 0, i32 0, !dbg !1710
  %79 = load i8*, i8** %78, align 8, !dbg !1710
  %80 = bitcast i8* %79 to %struct.TEMP_SPLIT_CHAN_REC*, !dbg !1709
  store %struct.TEMP_SPLIT_CHAN_REC* %80, %struct.TEMP_SPLIT_CHAN_REC** %11, align 8, !dbg !1708
  %81 = load i8*, i8** %6, align 8, !dbg !1711
  %82 = icmp ne i8* %81, null, !dbg !1713
  br i1 %82, label %83, label %91, !dbg !1714

; <label>:83:                                     ; preds = %76
  %84 = load %struct.TEMP_SPLIT_CHAN_REC*, %struct.TEMP_SPLIT_CHAN_REC** %11, align 8, !dbg !1715
  %85 = getelementptr inbounds %struct.TEMP_SPLIT_CHAN_REC, %struct.TEMP_SPLIT_CHAN_REC* %84, i32 0, i32 0, !dbg !1716
  %86 = load i8*, i8** %85, align 8, !dbg !1716
  %87 = load i8*, i8** %6, align 8, !dbg !1717
  %88 = call i32 @strcasecmp(i8* %86, i8* %87) #7, !dbg !1718
  %89 = icmp ne i32 %88, 0, !dbg !1719
  br i1 %89, label %90, label %91, !dbg !1720

; <label>:90:                                     ; preds = %83
  br label %154, !dbg !1722

; <label>:91:                                     ; preds = %83, %76
  %92 = load %struct.TEMP_SPLIT_CHAN_REC*, %struct.TEMP_SPLIT_CHAN_REC** %11, align 8, !dbg !1723
  %93 = getelementptr inbounds %struct.TEMP_SPLIT_CHAN_REC, %struct.TEMP_SPLIT_CHAN_REC* %92, i32 0, i32 3, !dbg !1724
  %94 = load %struct._GString*, %struct._GString** %93, align 8, !dbg !1724
  %95 = load %struct.TEMP_SPLIT_CHAN_REC*, %struct.TEMP_SPLIT_CHAN_REC** %11, align 8, !dbg !1725
  %96 = getelementptr inbounds %struct.TEMP_SPLIT_CHAN_REC, %struct.TEMP_SPLIT_CHAN_REC* %95, i32 0, i32 3, !dbg !1726
  %97 = load %struct._GString*, %struct._GString** %96, align 8, !dbg !1726
  %98 = getelementptr inbounds %struct._GString, %struct._GString* %97, i32 0, i32 1, !dbg !1727
  %99 = load i64, i64* %98, align 8, !dbg !1727
  %100 = sub i64 %99, 2, !dbg !1728
  %101 = call %struct._GString* @g_string_truncate(%struct._GString* %94, i64 %100), !dbg !1729
  %102 = load i32, i32* @netsplit_max_nicks, align 4, !dbg !1730
  %103 = icmp sgt i32 %102, 0, !dbg !1732
  br i1 %103, label %104, label %138, !dbg !1733

; <label>:104:                                    ; preds = %91
  %105 = load %struct.TEMP_SPLIT_CHAN_REC*, %struct.TEMP_SPLIT_CHAN_REC** %11, align 8, !dbg !1734
  %106 = getelementptr inbounds %struct.TEMP_SPLIT_CHAN_REC, %struct.TEMP_SPLIT_CHAN_REC* %105, i32 0, i32 1, !dbg !1735
  %107 = load i32, i32* %106, align 8, !dbg !1735
  %108 = load i32, i32* @netsplit_max_nicks, align 4, !dbg !1736
  %109 = icmp sgt i32 %107, %108, !dbg !1737
  br i1 %109, label %110, label %138, !dbg !1738

; <label>:110:                                    ; preds = %104
  %111 = load %struct.TEMP_SPLIT_CHAN_REC*, %struct.TEMP_SPLIT_CHAN_REC** %11, align 8, !dbg !1739
  %112 = getelementptr inbounds %struct.TEMP_SPLIT_CHAN_REC, %struct.TEMP_SPLIT_CHAN_REC* %111, i32 0, i32 3, !dbg !1741
  %113 = load %struct._GString*, %struct._GString** %112, align 8, !dbg !1741
  %114 = load %struct.TEMP_SPLIT_CHAN_REC*, %struct.TEMP_SPLIT_CHAN_REC** %11, align 8, !dbg !1742
  %115 = getelementptr inbounds %struct.TEMP_SPLIT_CHAN_REC, %struct.TEMP_SPLIT_CHAN_REC* %114, i32 0, i32 2, !dbg !1743
  %116 = load i32, i32* %115, align 4, !dbg !1743
  %117 = sext i32 %116 to i64, !dbg !1742
  %118 = call %struct._GString* @g_string_truncate(%struct._GString* %113, i64 %117), !dbg !1744
  %119 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1745
  %120 = bitcast %struct._IRC_SERVER_REC* %119 to i8*, !dbg !1745
  %121 = load %struct.TEMP_SPLIT_CHAN_REC*, %struct.TEMP_SPLIT_CHAN_REC** %11, align 8, !dbg !1746
  %122 = getelementptr inbounds %struct.TEMP_SPLIT_CHAN_REC, %struct.TEMP_SPLIT_CHAN_REC* %121, i32 0, i32 0, !dbg !1747
  %123 = load i8*, i8** %122, align 8, !dbg !1747
  %124 = load i8*, i8** %8, align 8, !dbg !1748
  %125 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !1749
  %126 = getelementptr inbounds %struct._GString, %struct._GString* %125, i32 0, i32 0, !dbg !1750
  %127 = load i8*, i8** %126, align 8, !dbg !1750
  %128 = load %struct.TEMP_SPLIT_CHAN_REC*, %struct.TEMP_SPLIT_CHAN_REC** %11, align 8, !dbg !1751
  %129 = getelementptr inbounds %struct.TEMP_SPLIT_CHAN_REC, %struct.TEMP_SPLIT_CHAN_REC* %128, i32 0, i32 3, !dbg !1752
  %130 = load %struct._GString*, %struct._GString** %129, align 8, !dbg !1752
  %131 = getelementptr inbounds %struct._GString, %struct._GString* %130, i32 0, i32 0, !dbg !1753
  %132 = load i8*, i8** %131, align 8, !dbg !1753
  %133 = load %struct.TEMP_SPLIT_CHAN_REC*, %struct.TEMP_SPLIT_CHAN_REC** %11, align 8, !dbg !1754
  %134 = getelementptr inbounds %struct.TEMP_SPLIT_CHAN_REC, %struct.TEMP_SPLIT_CHAN_REC* %133, i32 0, i32 1, !dbg !1755
  %135 = load i32, i32* %134, align 8, !dbg !1755
  %136 = load i32, i32* @netsplit_max_nicks, align 4, !dbg !1756
  %137 = sub nsw i32 %135, %136, !dbg !1757
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %120, i8* %123, i32 512, i32 3, i8* %124, i8* %127, i8* %132, i32 %137), !dbg !1758
  br label %153, !dbg !1759

; <label>:138:                                    ; preds = %104, %91
  %139 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1760
  %140 = bitcast %struct._IRC_SERVER_REC* %139 to i8*, !dbg !1760
  %141 = load %struct.TEMP_SPLIT_CHAN_REC*, %struct.TEMP_SPLIT_CHAN_REC** %11, align 8, !dbg !1762
  %142 = getelementptr inbounds %struct.TEMP_SPLIT_CHAN_REC, %struct.TEMP_SPLIT_CHAN_REC* %141, i32 0, i32 0, !dbg !1763
  %143 = load i8*, i8** %142, align 8, !dbg !1763
  %144 = load i8*, i8** %8, align 8, !dbg !1764
  %145 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !1765
  %146 = getelementptr inbounds %struct._GString, %struct._GString* %145, i32 0, i32 0, !dbg !1766
  %147 = load i8*, i8** %146, align 8, !dbg !1766
  %148 = load %struct.TEMP_SPLIT_CHAN_REC*, %struct.TEMP_SPLIT_CHAN_REC** %11, align 8, !dbg !1767
  %149 = getelementptr inbounds %struct.TEMP_SPLIT_CHAN_REC, %struct.TEMP_SPLIT_CHAN_REC* %148, i32 0, i32 3, !dbg !1768
  %150 = load %struct._GString*, %struct._GString** %149, align 8, !dbg !1768
  %151 = getelementptr inbounds %struct._GString, %struct._GString* %150, i32 0, i32 0, !dbg !1769
  %152 = load i8*, i8** %151, align 8, !dbg !1769
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %140, i8* %143, i32 512, i32 2, i8* %144, i8* %147, i8* %152), !dbg !1770
  br label %153

; <label>:153:                                    ; preds = %138, %110
  br label %154, !dbg !1771

; <label>:154:                                    ; preds = %153, %90
  %155 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !1772
  %156 = getelementptr inbounds %struct._GSList, %struct._GSList* %155, i32 0, i32 1, !dbg !1774
  %157 = load %struct._GSList*, %struct._GSList** %156, align 8, !dbg !1774
  store %struct._GSList* %157, %struct._GSList** %9, align 8, !dbg !1775
  br label %73, !dbg !1776, !llvm.loop !1777

; <label>:158:                                    ; preds = %73
  %159 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !1779
  %160 = call i8* @g_string_free(%struct._GString* %159, i32 1), !dbg !1780
  br label %161, !dbg !1781

; <label>:161:                                    ; preds = %158, %52, %18
  ret void, !dbg !1782
}

declare void @g_slist_foreach(%struct._GSList*, void (i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @temp_split_chan_free(%struct.TEMP_SPLIT_CHAN_REC*) #0 !dbg !1784 {
  %2 = alloca %struct.TEMP_SPLIT_CHAN_REC*, align 8
  store %struct.TEMP_SPLIT_CHAN_REC* %0, %struct.TEMP_SPLIT_CHAN_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.TEMP_SPLIT_CHAN_REC** %2, metadata !1787, metadata !943), !dbg !1788
  %3 = load %struct.TEMP_SPLIT_CHAN_REC*, %struct.TEMP_SPLIT_CHAN_REC** %2, align 8, !dbg !1789
  %4 = getelementptr inbounds %struct.TEMP_SPLIT_CHAN_REC, %struct.TEMP_SPLIT_CHAN_REC* %3, i32 0, i32 3, !dbg !1790
  %5 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !1790
  %6 = call i8* @g_string_free(%struct._GString* %5, i32 1), !dbg !1791
  %7 = load %struct.TEMP_SPLIT_CHAN_REC*, %struct.TEMP_SPLIT_CHAN_REC** %2, align 8, !dbg !1792
  %8 = bitcast %struct.TEMP_SPLIT_CHAN_REC* %7 to i8*, !dbg !1792
  call void @g_free(i8* %8), !dbg !1793
  ret void, !dbg !1794
}

declare void @g_slist_free(%struct._GSList*) #1

declare i32 @g_ascii_strcasecmp(i8*, i8*) #1

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #1

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #1

declare %struct._GSList* @g_slist_find(%struct._GSList*, i8*) #1

declare i32 @ignore_check(%struct._SERVER_REC*, i8*, i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct.TEMP_SPLIT_CHAN_REC* @find_split_chan(%struct.TEMP_SPLIT_REC*, i8*) #0 !dbg !1795 {
  %3 = alloca %struct.TEMP_SPLIT_CHAN_REC*, align 8
  %4 = alloca %struct.TEMP_SPLIT_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca %struct.TEMP_SPLIT_CHAN_REC*, align 8
  store %struct.TEMP_SPLIT_REC* %0, %struct.TEMP_SPLIT_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.TEMP_SPLIT_REC** %4, metadata !1798, metadata !943), !dbg !1799
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1800, metadata !943), !dbg !1801
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !1802, metadata !943), !dbg !1803
  %8 = load %struct.TEMP_SPLIT_REC*, %struct.TEMP_SPLIT_REC** %4, align 8, !dbg !1804
  %9 = getelementptr inbounds %struct.TEMP_SPLIT_REC, %struct.TEMP_SPLIT_REC* %8, i32 0, i32 2, !dbg !1806
  %10 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !1806
  store %struct._GSList* %10, %struct._GSList** %6, align 8, !dbg !1807
  br label %11, !dbg !1808

; <label>:11:                                     ; preds = %28, %2
  %12 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1809
  %13 = icmp ne %struct._GSList* %12, null, !dbg !1812
  br i1 %13, label %14, label %32, !dbg !1813

; <label>:14:                                     ; preds = %11
  call void @llvm.dbg.declare(metadata %struct.TEMP_SPLIT_CHAN_REC** %7, metadata !1814, metadata !943), !dbg !1816
  %15 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1817
  %16 = getelementptr inbounds %struct._GSList, %struct._GSList* %15, i32 0, i32 0, !dbg !1818
  %17 = load i8*, i8** %16, align 8, !dbg !1818
  %18 = bitcast i8* %17 to %struct.TEMP_SPLIT_CHAN_REC*, !dbg !1817
  store %struct.TEMP_SPLIT_CHAN_REC* %18, %struct.TEMP_SPLIT_CHAN_REC** %7, align 8, !dbg !1816
  %19 = load %struct.TEMP_SPLIT_CHAN_REC*, %struct.TEMP_SPLIT_CHAN_REC** %7, align 8, !dbg !1819
  %20 = getelementptr inbounds %struct.TEMP_SPLIT_CHAN_REC, %struct.TEMP_SPLIT_CHAN_REC* %19, i32 0, i32 0, !dbg !1821
  %21 = load i8*, i8** %20, align 8, !dbg !1821
  %22 = load i8*, i8** %5, align 8, !dbg !1822
  %23 = call i32 @g_ascii_strcasecmp(i8* %21, i8* %22), !dbg !1823
  %24 = icmp eq i32 %23, 0, !dbg !1824
  br i1 %24, label %25, label %27, !dbg !1825

; <label>:25:                                     ; preds = %14
  %26 = load %struct.TEMP_SPLIT_CHAN_REC*, %struct.TEMP_SPLIT_CHAN_REC** %7, align 8, !dbg !1826
  store %struct.TEMP_SPLIT_CHAN_REC* %26, %struct.TEMP_SPLIT_CHAN_REC** %3, align 8, !dbg !1827
  br label %33, !dbg !1827

; <label>:27:                                     ; preds = %14
  br label %28, !dbg !1828

; <label>:28:                                     ; preds = %27
  %29 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1829
  %30 = getelementptr inbounds %struct._GSList, %struct._GSList* %29, i32 0, i32 1, !dbg !1831
  %31 = load %struct._GSList*, %struct._GSList** %30, align 8, !dbg !1831
  store %struct._GSList* %31, %struct._GSList** %6, align 8, !dbg !1832
  br label %11, !dbg !1833, !llvm.loop !1834

; <label>:32:                                     ; preds = %11
  store %struct.TEMP_SPLIT_CHAN_REC* null, %struct.TEMP_SPLIT_CHAN_REC** %3, align 8, !dbg !1836
  br label %33, !dbg !1836

; <label>:33:                                     ; preds = %32, %25
  %34 = load %struct.TEMP_SPLIT_CHAN_REC*, %struct.TEMP_SPLIT_CHAN_REC** %3, align 8, !dbg !1837
  ret %struct.TEMP_SPLIT_CHAN_REC* %34, !dbg !1837
}

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare %struct._GString* @g_string_new(i8*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._GString* @g_string_append_c_inline(%struct._GString*, i8 signext) #4 !dbg !1838 {
  %3 = alloca %struct._GString*, align 8
  %4 = alloca i8, align 1
  store %struct._GString* %0, %struct._GString** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._GString** %3, metadata !1841, metadata !943), !dbg !1842
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !1843, metadata !943), !dbg !1844
  %5 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1845
  %6 = getelementptr inbounds %struct._GString, %struct._GString* %5, i32 0, i32 1, !dbg !1847
  %7 = load i64, i64* %6, align 8, !dbg !1847
  %8 = add i64 %7, 1, !dbg !1848
  %9 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1849
  %10 = getelementptr inbounds %struct._GString, %struct._GString* %9, i32 0, i32 2, !dbg !1850
  %11 = load i64, i64* %10, align 8, !dbg !1850
  %12 = icmp ult i64 %8, %11, !dbg !1851
  br i1 %12, label %13, label %30, !dbg !1852

; <label>:13:                                     ; preds = %2
  %14 = load i8, i8* %4, align 1, !dbg !1853
  %15 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1855
  %16 = getelementptr inbounds %struct._GString, %struct._GString* %15, i32 0, i32 1, !dbg !1856
  %17 = load i64, i64* %16, align 8, !dbg !1857
  %18 = add i64 %17, 1, !dbg !1857
  store i64 %18, i64* %16, align 8, !dbg !1857
  %19 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1858
  %20 = getelementptr inbounds %struct._GString, %struct._GString* %19, i32 0, i32 0, !dbg !1859
  %21 = load i8*, i8** %20, align 8, !dbg !1859
  %22 = getelementptr inbounds i8, i8* %21, i64 %17, !dbg !1858
  store i8 %14, i8* %22, align 1, !dbg !1860
  %23 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1861
  %24 = getelementptr inbounds %struct._GString, %struct._GString* %23, i32 0, i32 1, !dbg !1862
  %25 = load i64, i64* %24, align 8, !dbg !1862
  %26 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1863
  %27 = getelementptr inbounds %struct._GString, %struct._GString* %26, i32 0, i32 0, !dbg !1864
  %28 = load i8*, i8** %27, align 8, !dbg !1864
  %29 = getelementptr inbounds i8, i8* %28, i64 %25, !dbg !1863
  store i8 0, i8* %29, align 1, !dbg !1865
  br label %34, !dbg !1866

; <label>:30:                                     ; preds = %2
  %31 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1867
  %32 = load i8, i8* %4, align 1, !dbg !1868
  %33 = call %struct._GString* @g_string_insert_c(%struct._GString* %31, i64 -1, i8 signext %32), !dbg !1869
  br label %34

; <label>:34:                                     ; preds = %30, %13
  %35 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1870
  ret %struct._GString* %35, !dbg !1871
}

declare void @g_string_append_printf(%struct._GString*, i8*, ...) #1

declare %struct._GString* @g_string_insert_c(%struct._GString*, i64, i8 signext) #1

declare i8* @g_string_free(%struct._GString*, i32) #1

declare %struct._GString* @g_string_truncate(%struct._GString*, i64) #1

; Function Attrs: nounwind readonly
declare i32 @strcasecmp(i8*, i8*) #5

declare void @printformat_module(i8*, i8*, i8*, i32, i32, ...) #1

declare void @g_free(i8*) #1

declare i32 @signal_emit(i8*, i32, ...) #1

declare void @signal_stop() #1

; Function Attrs: nounwind uwtable
define internal void @split_get(i8*, %struct.NETSPLIT_REC*, %struct._GSList**) #0 !dbg !1872 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.NETSPLIT_REC*, align 8
  %6 = alloca %struct._GSList**, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1875, metadata !943), !dbg !1876
  store %struct.NETSPLIT_REC* %1, %struct.NETSPLIT_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.NETSPLIT_REC** %5, metadata !1877, metadata !943), !dbg !1878
  store %struct._GSList** %2, %struct._GSList*** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList*** %6, metadata !1879, metadata !943), !dbg !1880
  %7 = load %struct._GSList**, %struct._GSList*** %6, align 8, !dbg !1881
  %8 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1882
  %9 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %5, align 8, !dbg !1883
  %10 = bitcast %struct.NETSPLIT_REC* %9 to i8*, !dbg !1883
  %11 = call %struct._GSList* @g_slist_insert_sorted(%struct._GSList* %8, i8* %10, i32 (i8*, i8*)* bitcast (i32 (%struct.NETSPLIT_REC*, %struct.NETSPLIT_REC*)* @split_equal to i32 (i8*, i8*)*)), !dbg !1884
  %12 = load %struct._GSList**, %struct._GSList*** %6, align 8, !dbg !1885
  store %struct._GSList* %11, %struct._GSList** %12, align 8, !dbg !1886
  ret void, !dbg !1887
}

; Function Attrs: nounwind uwtable
define internal void @split_print(%struct.NETSPLIT_REC*, %struct._SERVER_REC*) #0 !dbg !1888 {
  %3 = alloca %struct.NETSPLIT_REC*, align 8
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca %struct.NETSPLIT_CHAN_REC*, align 8
  %6 = alloca i8*, align 8
  store %struct.NETSPLIT_REC* %0, %struct.NETSPLIT_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.NETSPLIT_REC** %3, metadata !1891, metadata !943), !dbg !1892
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !1893, metadata !943), !dbg !1894
  call void @llvm.dbg.declare(metadata %struct.NETSPLIT_CHAN_REC** %5, metadata !1895, metadata !943), !dbg !1896
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1897, metadata !943), !dbg !1898
  %7 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %3, align 8, !dbg !1899
  %8 = getelementptr inbounds %struct.NETSPLIT_REC, %struct.NETSPLIT_REC* %7, i32 0, i32 3, !dbg !1900
  %9 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1900
  %10 = getelementptr inbounds %struct._GSList, %struct._GSList* %9, i32 0, i32 0, !dbg !1901
  %11 = load i8*, i8** %10, align 8, !dbg !1901
  %12 = bitcast i8* %11 to %struct.NETSPLIT_CHAN_REC*, !dbg !1899
  store %struct.NETSPLIT_CHAN_REC* %12, %struct.NETSPLIT_CHAN_REC** %5, align 8, !dbg !1902
  %13 = load %struct.NETSPLIT_CHAN_REC*, %struct.NETSPLIT_CHAN_REC** %5, align 8, !dbg !1903
  %14 = icmp eq %struct.NETSPLIT_CHAN_REC* %13, null, !dbg !1904
  br i1 %14, label %15, label %16, !dbg !1903

; <label>:15:                                     ; preds = %2
  br label %39, !dbg !1905

; <label>:16:                                     ; preds = %2
  %17 = load %struct.NETSPLIT_CHAN_REC*, %struct.NETSPLIT_CHAN_REC** %5, align 8, !dbg !1907
  %18 = getelementptr inbounds %struct.NETSPLIT_CHAN_REC, %struct.NETSPLIT_CHAN_REC* %17, i32 0, i32 1, !dbg !1908
  %19 = load i8, i8* %18, align 8, !dbg !1908
  %20 = and i8 %19, 1, !dbg !1908
  %21 = zext i8 %20 to i32, !dbg !1908
  %22 = icmp ne i32 %21, 0, !dbg !1907
  br i1 %22, label %23, label %24, !dbg !1907

; <label>:23:                                     ; preds = %16
  br label %33, !dbg !1909

; <label>:24:                                     ; preds = %16
  %25 = load %struct.NETSPLIT_CHAN_REC*, %struct.NETSPLIT_CHAN_REC** %5, align 8, !dbg !1910
  %26 = getelementptr inbounds %struct.NETSPLIT_CHAN_REC, %struct.NETSPLIT_CHAN_REC* %25, i32 0, i32 1, !dbg !1911
  %27 = load i8, i8* %26, align 8, !dbg !1911
  %28 = lshr i8 %27, 2, !dbg !1911
  %29 = and i8 %28, 1, !dbg !1911
  %30 = zext i8 %29 to i32, !dbg !1911
  %31 = icmp ne i32 %30, 0, !dbg !1910
  %32 = select i1 %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0), !dbg !1910
  br label %33, !dbg !1912

; <label>:33:                                     ; preds = %24, %23
  %34 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), %23 ], [ %32, %24 ], !dbg !1914
  %35 = load %struct.NETSPLIT_CHAN_REC*, %struct.NETSPLIT_CHAN_REC** %5, align 8, !dbg !1916
  %36 = getelementptr inbounds %struct.NETSPLIT_CHAN_REC, %struct.NETSPLIT_CHAN_REC* %35, i32 0, i32 0, !dbg !1917
  %37 = load i8*, i8** %36, align 8, !dbg !1917
  %38 = call noalias i8* (i8*, ...) @g_strconcat(i8* %34, i8* %37, i8* null), !dbg !1918
  br label %39, !dbg !1919

; <label>:39:                                     ; preds = %33, %15
  %40 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0), %15 ], [ %38, %33 ], !dbg !1920
  store i8* %40, i8** %6, align 8, !dbg !1921
  %41 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1922
  %42 = bitcast %struct._SERVER_REC* %41 to i8*, !dbg !1922
  %43 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %3, align 8, !dbg !1923
  %44 = getelementptr inbounds %struct.NETSPLIT_REC, %struct.NETSPLIT_REC* %43, i32 0, i32 1, !dbg !1924
  %45 = load i8*, i8** %44, align 8, !dbg !1924
  %46 = load i8*, i8** %6, align 8, !dbg !1925
  %47 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %3, align 8, !dbg !1926
  %48 = getelementptr inbounds %struct.NETSPLIT_REC, %struct.NETSPLIT_REC* %47, i32 0, i32 0, !dbg !1927
  %49 = load %struct.NETSPLIT_SERVER_REC*, %struct.NETSPLIT_SERVER_REC** %48, align 8, !dbg !1927
  %50 = getelementptr inbounds %struct.NETSPLIT_SERVER_REC, %struct.NETSPLIT_SERVER_REC* %49, i32 0, i32 0, !dbg !1928
  %51 = load i8*, i8** %50, align 8, !dbg !1928
  %52 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %3, align 8, !dbg !1929
  %53 = getelementptr inbounds %struct.NETSPLIT_REC, %struct.NETSPLIT_REC* %52, i32 0, i32 0, !dbg !1930
  %54 = load %struct.NETSPLIT_SERVER_REC*, %struct.NETSPLIT_SERVER_REC** %53, align 8, !dbg !1930
  %55 = getelementptr inbounds %struct.NETSPLIT_SERVER_REC, %struct.NETSPLIT_SERVER_REC* %54, i32 0, i32 1, !dbg !1931
  %56 = load i8*, i8** %55, align 8, !dbg !1931
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %42, i8* null, i32 524288, i32 8, i8* %45, i8* %46, i8* %51, i8* %56), !dbg !1932
  %57 = load i8*, i8** %6, align 8, !dbg !1933
  call void @g_free(i8* %57), !dbg !1934
  ret void, !dbg !1935
}

declare %struct._GSList* @g_slist_insert_sorted(%struct._GSList*, i8*, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @split_equal(%struct.NETSPLIT_REC*, %struct.NETSPLIT_REC*) #0 !dbg !1936 {
  %3 = alloca %struct.NETSPLIT_REC*, align 8
  %4 = alloca %struct.NETSPLIT_REC*, align 8
  store %struct.NETSPLIT_REC* %0, %struct.NETSPLIT_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.NETSPLIT_REC** %3, metadata !1939, metadata !943), !dbg !1940
  store %struct.NETSPLIT_REC* %1, %struct.NETSPLIT_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.NETSPLIT_REC** %4, metadata !1941, metadata !943), !dbg !1942
  %5 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %3, align 8, !dbg !1943
  %6 = getelementptr inbounds %struct.NETSPLIT_REC, %struct.NETSPLIT_REC* %5, i32 0, i32 1, !dbg !1944
  %7 = load i8*, i8** %6, align 8, !dbg !1944
  %8 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %4, align 8, !dbg !1945
  %9 = getelementptr inbounds %struct.NETSPLIT_REC, %struct.NETSPLIT_REC* %8, i32 0, i32 1, !dbg !1946
  %10 = load i8*, i8** %9, align 8, !dbg !1946
  %11 = call i32 @g_ascii_strcasecmp(i8* %7, i8* %10), !dbg !1947
  ret i32 %11, !dbg !1948
}

declare noalias i8* @g_strconcat(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!895, !896}
!llvm.ident = !{!897}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !213, globals: !890)
!1 = !DIFile(filename: "line320-fe-netsplit.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !10, !15, !24, !35, !66, !192}
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
!192 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !193, line: 25, size: 32, align: 32, elements: !194)
!193 = !DIFile(filename: "../../../src/core/commands.h", directory: "/home/lichi/Desktop/irssi/task1")
!194 = !{!195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212}
!195 = !DIEnumerator(name: "CMDERR_OPTION_UNKNOWN", value: -3)
!196 = !DIEnumerator(name: "CMDERR_OPTION_AMBIGUOUS", value: -2)
!197 = !DIEnumerator(name: "CMDERR_OPTION_ARG_MISSING", value: -1)
!198 = !DIEnumerator(name: "CMDERR_UNKNOWN", value: 0)
!199 = !DIEnumerator(name: "CMDERR_AMBIGUOUS", value: 1)
!200 = !DIEnumerator(name: "CMDERR_ERRNO", value: 2)
!201 = !DIEnumerator(name: "CMDERR_NOT_ENOUGH_PARAMS", value: 3)
!202 = !DIEnumerator(name: "CMDERR_NOT_CONNECTED", value: 4)
!203 = !DIEnumerator(name: "CMDERR_NOT_JOINED", value: 5)
!204 = !DIEnumerator(name: "CMDERR_CHAN_NOT_FOUND", value: 6)
!205 = !DIEnumerator(name: "CMDERR_CHAN_NOT_SYNCED", value: 7)
!206 = !DIEnumerator(name: "CMDERR_ILLEGAL_PROTO", value: 8)
!207 = !DIEnumerator(name: "CMDERR_NOT_GOOD_IDEA", value: 9)
!208 = !DIEnumerator(name: "CMDERR_INVALID_TIME", value: 10)
!209 = !DIEnumerator(name: "CMDERR_INVALID_CHARSET", value: 11)
!210 = !DIEnumerator(name: "CMDERR_EVAL_MAX_RECURSE", value: 12)
!211 = !DIEnumerator(name: "CMDERR_PROGRAM_NOT_FOUND", value: 13)
!212 = !DIEnumerator(name: "CMDERR_NO_SERVER_DEFINED", value: 14)
!213 = !{!214, !221, !222, !231, !535, !297, !623, !858, !862, !866, !875, !230, !525, !885}
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !215, line: 9, baseType: !216)
!215 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{null, !219, !219, !219, !219, !219, !219}
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64, align: 64)
!220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64, align: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{!226, !230}
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !227, line: 50, baseType: !228)
!227 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !227, line: 49, baseType: !229)
!229 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !227, line: 77, baseType: !221)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64, align: 64)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_REC", file: !233, line: 6, baseType: !234)
!233 = !DIFile(filename: "../../../src/irc/core/irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_REC", file: !235, line: 42, size: 39168, align: 64, elements: !236)
!235 = !DIFile(filename: "../../../src/irc/core/irc-servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!236 = !{!237, !239, !240, !241, !480, !485, !486, !487, !488, !489, !490, !491, !492, !493, !497, !498, !502, !503, !504, !508, !513, !514, !515, !516, !517, !518, !519, !520, !527, !528, !529, !530, !531, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !855, !857}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !234, file: !238, line: 3, baseType: !229, size: 32, align: 32)
!238 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!239 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !234, file: !238, line: 4, baseType: !229, size: 32, align: 32, offset: 32)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !234, file: !238, line: 6, baseType: !229, size: 32, align: 32, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !234, file: !238, line: 8, baseType: !242, size: 64, align: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64, align: 64)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_CONNECT_REC", file: !233, line: 5, baseType: !244)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_CONNECT_REC", file: !235, line: 24, size: 2496, align: 64, elements: !245)
!245 = !{!246, !248, !249, !250, !253, !254, !255, !256, !257, !259, !260, !261, !262, !263, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !244, file: !247, line: 3, baseType: !229, size: 32, align: 32)
!247 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!248 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !244, file: !247, line: 4, baseType: !229, size: 32, align: 32, offset: 32)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !244, file: !247, line: 6, baseType: !229, size: 32, align: 32, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !244, file: !247, line: 9, baseType: !251, size: 64, align: 64, offset: 128)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64, align: 64)
!252 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !244, file: !247, line: 10, baseType: !229, size: 32, align: 32, offset: 192)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !244, file: !247, line: 11, baseType: !251, size: 64, align: 64, offset: 256)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !244, file: !247, line: 11, baseType: !251, size: 64, align: 64, offset: 320)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !244, file: !247, line: 11, baseType: !251, size: 64, align: 64, offset: 384)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !244, file: !247, line: 13, baseType: !258, size: 16, align: 16, offset: 448)
!258 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !244, file: !247, line: 14, baseType: !251, size: 64, align: 64, offset: 512)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !244, file: !247, line: 15, baseType: !251, size: 64, align: 64, offset: 576)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !244, file: !247, line: 16, baseType: !229, size: 32, align: 32, offset: 640)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !244, file: !247, line: 17, baseType: !251, size: 64, align: 64, offset: 704)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !244, file: !247, line: 19, baseType: !264, size: 64, align: 64, offset: 768)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64, align: 64)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !266, line: 99, baseType: !267)
!266 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!267 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !266, line: 99, flags: DIFlagFwdDecl)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !244, file: !247, line: 19, baseType: !264, size: 64, align: 64, offset: 832)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !244, file: !247, line: 21, baseType: !251, size: 64, align: 64, offset: 896)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !244, file: !247, line: 22, baseType: !251, size: 64, align: 64, offset: 960)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !244, file: !247, line: 23, baseType: !251, size: 64, align: 64, offset: 1024)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !244, file: !247, line: 24, baseType: !251, size: 64, align: 64, offset: 1088)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !244, file: !247, line: 26, baseType: !251, size: 64, align: 64, offset: 1152)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !244, file: !247, line: 27, baseType: !251, size: 64, align: 64, offset: 1216)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !244, file: !247, line: 28, baseType: !251, size: 64, align: 64, offset: 1280)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !244, file: !247, line: 29, baseType: !251, size: 64, align: 64, offset: 1344)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !244, file: !247, line: 30, baseType: !251, size: 64, align: 64, offset: 1408)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !244, file: !247, line: 31, baseType: !251, size: 64, align: 64, offset: 1472)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !244, file: !247, line: 32, baseType: !251, size: 64, align: 64, offset: 1536)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !244, file: !247, line: 33, baseType: !251, size: 64, align: 64, offset: 1600)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !244, file: !247, line: 35, baseType: !282, size: 64, align: 64, offset: 1664)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64, align: 64)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !284)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !285)
!285 = !{!286, !287, !425, !426, !431, !432, !433, !434, !435, !444, !445, !446, !450, !451, !452, !453, !454, !455, !456, !457}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !284, file: !4, line: 100, baseType: !228, size: 32, align: 32)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !284, file: !4, line: 101, baseType: !288, size: 64, align: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64, align: 64)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !290)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !291)
!291 = !{!292, !316, !322, !329, !333, !412, !416, !421}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !290, file: !4, line: 133, baseType: !293, size: 64, align: 64)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64, align: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{!296, !282, !297, !299, !302, !303}
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64, align: 64)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !227, line: 46, baseType: !252)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !300, line: 66, baseType: !301)
!300 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!301 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64, align: 64)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64, align: 64)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !306, line: 42, baseType: !307)
!306 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !306, line: 44, size: 128, align: 64, elements: !308)
!308 = !{!309, !314, !315}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !307, file: !306, line: 46, baseType: !310, size: 32, align: 32)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !311, line: 36, baseType: !312)
!311 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !300, line: 45, baseType: !313)
!313 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !307, file: !306, line: 47, baseType: !228, size: 32, align: 32, offset: 32)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !307, file: !306, line: 48, baseType: !297, size: 64, align: 64, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !290, file: !4, line: 138, baseType: !317, size: 64, align: 64, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64, align: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!296, !282, !320, !299, !302, !303}
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64, align: 64)
!321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !298)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !290, file: !4, line: 143, baseType: !323, size: 64, align: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64, align: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!296, !282, !326, !328, !303}
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !300, line: 51, baseType: !327)
!327 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !290, file: !4, line: 147, baseType: !330, size: 64, align: 64, offset: 192)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64, align: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{!296, !282, !303}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !290, file: !4, line: 149, baseType: !334, size: 64, align: 64, offset: 256)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64, align: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{!337, !282, !411}
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64, align: 64)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !339)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !340)
!340 = !{!341, !342, !358, !387, !389, !393, !394, !395, !396, !404, !405, !406, !407}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !339, file: !16, line: 174, baseType: !230, size: 64, align: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !339, file: !16, line: 175, baseType: !343, size: 64, align: 64, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64, align: 64)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !345)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !346)
!346 = !{!347, !351, !352}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !345, file: !16, line: 198, baseType: !348, size: 64, align: 64)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64, align: 64)
!349 = !DISubroutineType(types: !350)
!350 = !{null, !230}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !345, file: !16, line: 199, baseType: !348, size: 64, align: 64, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !345, file: !16, line: 200, baseType: !353, size: 64, align: 64, offset: 128)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64, align: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{null, !230, !337, !356, !357}
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64, align: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !339, file: !16, line: 177, baseType: !359, size: 64, align: 64, offset: 128)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64, align: 64)
!360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !361)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !362)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !363)
!363 = !{!364, !369, !373, !377, !381, !382}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !362, file: !16, line: 216, baseType: !365, size: 64, align: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64, align: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{!226, !337, !368}
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64, align: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !362, file: !16, line: 218, baseType: !370, size: 64, align: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64, align: 64)
!371 = !DISubroutineType(types: !372)
!372 = !{!226, !337}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !362, file: !16, line: 219, baseType: !374, size: 64, align: 64, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64, align: 64)
!375 = !DISubroutineType(types: !376)
!376 = !{!226, !337, !222, !230}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !362, file: !16, line: 222, baseType: !378, size: 64, align: 64, offset: 192)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64, align: 64)
!379 = !DISubroutineType(types: !380)
!380 = !{null, !337}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !362, file: !16, line: 226, baseType: !222, size: 64, align: 64, offset: 256)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !362, file: !16, line: 227, baseType: !383, size: 64, align: 64, offset: 320)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !384)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64, align: 64)
!385 = !DISubroutineType(types: !386)
!386 = !{null}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !339, file: !16, line: 178, baseType: !388, size: 32, align: 32, offset: 192)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !227, line: 55, baseType: !313)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !339, file: !16, line: 180, baseType: !390, size: 64, align: 64, offset: 256)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64, align: 64)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !392)
!392 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !339, file: !16, line: 182, baseType: !228, size: 32, align: 32, offset: 320)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !339, file: !16, line: 183, baseType: !388, size: 32, align: 32, offset: 352)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !339, file: !16, line: 184, baseType: !388, size: 32, align: 32, offset: 384)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !339, file: !16, line: 186, baseType: !397, size: 64, align: 64, offset: 448)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64, align: 64)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !399, line: 37, baseType: !400)
!399 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !399, line: 39, size: 128, align: 64, elements: !401)
!401 = !{!402, !403}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !400, file: !399, line: 41, baseType: !230, size: 64, align: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !400, file: !399, line: 42, baseType: !397, size: 64, align: 64, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !339, file: !16, line: 188, baseType: !337, size: 64, align: 64, offset: 512)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !339, file: !16, line: 189, baseType: !337, size: 64, align: 64, offset: 576)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !339, file: !16, line: 191, baseType: !251, size: 64, align: 64, offset: 640)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !339, file: !16, line: 193, baseType: !408, size: 64, align: 64, offset: 704)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64, align: 64)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !410)
!410 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !290, file: !4, line: 151, baseType: !413, size: 64, align: 64, offset: 320)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64, align: 64)
!414 = !DISubroutineType(types: !415)
!415 = !{null, !282}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !290, file: !4, line: 152, baseType: !417, size: 64, align: 64, offset: 384)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64, align: 64)
!418 = !DISubroutineType(types: !419)
!419 = !{!296, !282, !420, !303}
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !290, file: !4, line: 155, baseType: !422, size: 64, align: 64, offset: 448)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64, align: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{!420, !282}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !284, file: !4, line: 103, baseType: !297, size: 64, align: 64, offset: 128)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !284, file: !4, line: 104, baseType: !427, size: 64, align: 64, offset: 192)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !428, line: 77, baseType: !429)
!428 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64, align: 64)
!430 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !428, line: 77, flags: DIFlagFwdDecl)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !284, file: !4, line: 105, baseType: !427, size: 64, align: 64, offset: 256)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !284, file: !4, line: 106, baseType: !297, size: 64, align: 64, offset: 320)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !284, file: !4, line: 107, baseType: !388, size: 32, align: 32, offset: 384)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !284, file: !4, line: 109, baseType: !299, size: 64, align: 64, offset: 448)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !284, file: !4, line: 110, baseType: !436, size: 64, align: 64, offset: 512)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64, align: 64)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !438, line: 39, baseType: !439)
!438 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !438, line: 41, size: 192, align: 64, elements: !440)
!440 = !{!441, !442, !443}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !439, file: !438, line: 43, baseType: !297, size: 64, align: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !439, file: !438, line: 44, baseType: !299, size: 64, align: 64, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !439, file: !438, line: 45, baseType: !299, size: 64, align: 64, offset: 128)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !284, file: !4, line: 111, baseType: !436, size: 64, align: 64, offset: 576)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !284, file: !4, line: 112, baseType: !436, size: 64, align: 64, offset: 640)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !284, file: !4, line: 113, baseType: !447, size: 48, align: 8, offset: 704)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 48, align: 8, elements: !448)
!448 = !{!449}
!449 = !DISubrange(count: 6)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !284, file: !4, line: 117, baseType: !388, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !284, file: !4, line: 118, baseType: !388, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !284, file: !4, line: 119, baseType: !388, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !284, file: !4, line: 120, baseType: !388, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !284, file: !4, line: 121, baseType: !388, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !284, file: !4, line: 122, baseType: !388, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !284, file: !4, line: 124, baseType: !230, size: 64, align: 64, offset: 768)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !284, file: !4, line: 125, baseType: !230, size: 64, align: 64, offset: 832)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !244, file: !247, line: 38, baseType: !313, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !244, file: !247, line: 39, baseType: !313, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !244, file: !247, line: 40, baseType: !313, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !244, file: !247, line: 41, baseType: !313, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !244, file: !247, line: 42, baseType: !313, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !244, file: !247, line: 43, baseType: !313, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !244, file: !247, line: 44, baseType: !313, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !244, file: !247, line: 45, baseType: !313, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !244, file: !247, line: 46, baseType: !251, size: 64, align: 64, offset: 1792)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !244, file: !247, line: 47, baseType: !251, size: 64, align: 64, offset: 1856)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !244, file: !235, line: 27, baseType: !251, size: 64, align: 64, offset: 1920)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_nick", scope: !244, file: !235, line: 28, baseType: !251, size: 64, align: 64, offset: 1984)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !244, file: !235, line: 30, baseType: !229, size: 32, align: 32, offset: 2048)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_username", scope: !244, file: !235, line: 31, baseType: !251, size: 64, align: 64, offset: 2112)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !244, file: !235, line: 32, baseType: !251, size: 64, align: 64, offset: 2176)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !244, file: !235, line: 34, baseType: !229, size: 32, align: 32, offset: 2240)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !244, file: !235, line: 35, baseType: !229, size: 32, align: 32, offset: 2272)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !244, file: !235, line: 36, baseType: !229, size: 32, align: 32, offset: 2304)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks", scope: !244, file: !235, line: 38, baseType: !229, size: 32, align: 32, offset: 2336)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !244, file: !235, line: 38, baseType: !229, size: 32, align: 32, offset: 2368)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes", scope: !244, file: !235, line: 38, baseType: !229, size: 32, align: 32, offset: 2400)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois", scope: !244, file: !235, line: 38, baseType: !229, size: 32, align: 32, offset: 2432)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !234, file: !238, line: 9, baseType: !481, size: 64, align: 64, offset: 192)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !482, line: 75, baseType: !483)
!482 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !484, line: 139, baseType: !327)
!484 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!485 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !234, file: !238, line: 10, baseType: !481, size: 64, align: 64, offset: 256)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !234, file: !238, line: 12, baseType: !251, size: 64, align: 64, offset: 320)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !234, file: !238, line: 13, baseType: !251, size: 64, align: 64, offset: 384)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !234, file: !238, line: 15, baseType: !313, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !234, file: !238, line: 16, baseType: !313, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !234, file: !238, line: 17, baseType: !313, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !234, file: !238, line: 18, baseType: !313, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !234, file: !238, line: 19, baseType: !313, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !234, file: !238, line: 21, baseType: !494, size: 64, align: 64, offset: 512)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64, align: 64)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !266, line: 102, baseType: !496)
!496 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !266, line: 102, flags: DIFlagFwdDecl)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !234, file: !238, line: 22, baseType: !229, size: 32, align: 32, offset: 576)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !234, file: !238, line: 25, baseType: !499, size: 128, align: 64, offset: 640)
!499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, size: 128, align: 64, elements: !500)
!500 = !{!501}
!501 = !DISubrange(count: 2)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !234, file: !238, line: 26, baseType: !229, size: 32, align: 32, offset: 768)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !234, file: !238, line: 27, baseType: !229, size: 32, align: 32, offset: 800)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !234, file: !238, line: 29, baseType: !505, size: 64, align: 64, offset: 832)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64, align: 64)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !266, line: 103, baseType: !507)
!507 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !266, line: 103, flags: DIFlagFwdDecl)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !234, file: !238, line: 30, baseType: !509, size: 64, align: 64, offset: 896)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64, align: 64)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !511, line: 37, baseType: !512)
!511 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!512 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !511, line: 37, flags: DIFlagFwdDecl)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !234, file: !238, line: 32, baseType: !251, size: 64, align: 64, offset: 960)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !234, file: !238, line: 33, baseType: !251, size: 64, align: 64, offset: 1024)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !234, file: !238, line: 34, baseType: !251, size: 64, align: 64, offset: 1088)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !234, file: !238, line: 35, baseType: !313, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !234, file: !238, line: 36, baseType: !313, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !234, file: !238, line: 37, baseType: !313, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !234, file: !238, line: 38, baseType: !313, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !234, file: !238, line: 40, baseType: !521, size: 128, align: 64, offset: 1216)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !227, line: 504, baseType: !522)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !227, line: 506, size: 128, align: 64, elements: !523)
!523 = !{!524, !526}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !522, file: !227, line: 508, baseType: !525, size: 64, align: 64)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !227, line: 48, baseType: !327)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !522, file: !227, line: 509, baseType: !525, size: 64, align: 64, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !234, file: !238, line: 41, baseType: !481, size: 64, align: 64, offset: 1344)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !234, file: !238, line: 42, baseType: !229, size: 32, align: 32, offset: 1408)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !234, file: !238, line: 44, baseType: !397, size: 64, align: 64, offset: 1472)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !234, file: !238, line: 45, baseType: !397, size: 64, align: 64, offset: 1536)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !234, file: !238, line: 53, baseType: !532, size: 64, align: 64, offset: 1600)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64, align: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{null, !535, !623, !229}
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64, align: 64)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !266, line: 107, baseType: !537)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !538, line: 30, size: 2240, align: 64, elements: !539)
!538 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!539 = !{!540, !541, !542, !543, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !619, !625, !629, !633, !638, !731, !738, !742}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !537, file: !238, line: 3, baseType: !229, size: 32, align: 32)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !537, file: !238, line: 4, baseType: !229, size: 32, align: 32, offset: 32)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !537, file: !238, line: 6, baseType: !229, size: 32, align: 32, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !537, file: !238, line: 8, baseType: !544, size: 64, align: 64, offset: 128)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64, align: 64)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !266, line: 113, baseType: !546)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !538, line: 25, size: 1920, align: 64, elements: !547)
!547 = !{!548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !546, file: !247, line: 3, baseType: !229, size: 32, align: 32)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !546, file: !247, line: 4, baseType: !229, size: 32, align: 32, offset: 32)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !546, file: !247, line: 6, baseType: !229, size: 32, align: 32, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !546, file: !247, line: 9, baseType: !251, size: 64, align: 64, offset: 128)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !546, file: !247, line: 10, baseType: !229, size: 32, align: 32, offset: 192)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !546, file: !247, line: 11, baseType: !251, size: 64, align: 64, offset: 256)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !546, file: !247, line: 11, baseType: !251, size: 64, align: 64, offset: 320)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !546, file: !247, line: 11, baseType: !251, size: 64, align: 64, offset: 384)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !546, file: !247, line: 13, baseType: !258, size: 16, align: 16, offset: 448)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !546, file: !247, line: 14, baseType: !251, size: 64, align: 64, offset: 512)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !546, file: !247, line: 15, baseType: !251, size: 64, align: 64, offset: 576)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !546, file: !247, line: 16, baseType: !229, size: 32, align: 32, offset: 640)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !546, file: !247, line: 17, baseType: !251, size: 64, align: 64, offset: 704)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !546, file: !247, line: 19, baseType: !264, size: 64, align: 64, offset: 768)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !546, file: !247, line: 19, baseType: !264, size: 64, align: 64, offset: 832)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !546, file: !247, line: 21, baseType: !251, size: 64, align: 64, offset: 896)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !546, file: !247, line: 22, baseType: !251, size: 64, align: 64, offset: 960)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !546, file: !247, line: 23, baseType: !251, size: 64, align: 64, offset: 1024)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !546, file: !247, line: 24, baseType: !251, size: 64, align: 64, offset: 1088)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !546, file: !247, line: 26, baseType: !251, size: 64, align: 64, offset: 1152)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !546, file: !247, line: 27, baseType: !251, size: 64, align: 64, offset: 1216)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !546, file: !247, line: 28, baseType: !251, size: 64, align: 64, offset: 1280)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !546, file: !247, line: 29, baseType: !251, size: 64, align: 64, offset: 1344)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !546, file: !247, line: 30, baseType: !251, size: 64, align: 64, offset: 1408)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !546, file: !247, line: 31, baseType: !251, size: 64, align: 64, offset: 1472)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !546, file: !247, line: 32, baseType: !251, size: 64, align: 64, offset: 1536)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !546, file: !247, line: 33, baseType: !251, size: 64, align: 64, offset: 1600)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !546, file: !247, line: 35, baseType: !282, size: 64, align: 64, offset: 1664)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !546, file: !247, line: 38, baseType: !313, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !546, file: !247, line: 39, baseType: !313, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !546, file: !247, line: 40, baseType: !313, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !546, file: !247, line: 41, baseType: !313, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !546, file: !247, line: 42, baseType: !313, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !546, file: !247, line: 43, baseType: !313, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !546, file: !247, line: 44, baseType: !313, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !546, file: !247, line: 45, baseType: !313, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !546, file: !247, line: 46, baseType: !251, size: 64, align: 64, offset: 1792)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !546, file: !247, line: 47, baseType: !251, size: 64, align: 64, offset: 1856)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !537, file: !238, line: 9, baseType: !481, size: 64, align: 64, offset: 192)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !537, file: !238, line: 10, baseType: !481, size: 64, align: 64, offset: 256)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !537, file: !238, line: 12, baseType: !251, size: 64, align: 64, offset: 320)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !537, file: !238, line: 13, baseType: !251, size: 64, align: 64, offset: 384)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !537, file: !238, line: 15, baseType: !313, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !537, file: !238, line: 16, baseType: !313, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !537, file: !238, line: 17, baseType: !313, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !537, file: !238, line: 18, baseType: !313, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !537, file: !238, line: 19, baseType: !313, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !537, file: !238, line: 21, baseType: !494, size: 64, align: 64, offset: 512)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !537, file: !238, line: 22, baseType: !229, size: 32, align: 32, offset: 576)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !537, file: !238, line: 25, baseType: !499, size: 128, align: 64, offset: 640)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !537, file: !238, line: 26, baseType: !229, size: 32, align: 32, offset: 768)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !537, file: !238, line: 27, baseType: !229, size: 32, align: 32, offset: 800)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !537, file: !238, line: 29, baseType: !505, size: 64, align: 64, offset: 832)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !537, file: !238, line: 30, baseType: !509, size: 64, align: 64, offset: 896)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !537, file: !238, line: 32, baseType: !251, size: 64, align: 64, offset: 960)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !537, file: !238, line: 33, baseType: !251, size: 64, align: 64, offset: 1024)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !537, file: !238, line: 34, baseType: !251, size: 64, align: 64, offset: 1088)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !537, file: !238, line: 35, baseType: !313, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !537, file: !238, line: 36, baseType: !313, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !537, file: !238, line: 37, baseType: !313, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !537, file: !238, line: 38, baseType: !313, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !537, file: !238, line: 40, baseType: !521, size: 128, align: 64, offset: 1216)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !537, file: !238, line: 41, baseType: !481, size: 64, align: 64, offset: 1344)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !537, file: !238, line: 42, baseType: !229, size: 32, align: 32, offset: 1408)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !537, file: !238, line: 44, baseType: !397, size: 64, align: 64, offset: 1472)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !537, file: !238, line: 45, baseType: !397, size: 64, align: 64, offset: 1536)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !537, file: !238, line: 53, baseType: !532, size: 64, align: 64, offset: 1600)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !537, file: !238, line: 55, baseType: !616, size: 64, align: 64, offset: 1664)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64, align: 64)
!617 = !DISubroutineType(types: !618)
!618 = !{!229, !535, !252}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !537, file: !238, line: 57, baseType: !620, size: 64, align: 64, offset: 1728)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64, align: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!229, !535, !623}
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64, align: 64)
!624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !252)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !537, file: !238, line: 60, baseType: !626, size: 64, align: 64, offset: 1792)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64, align: 64)
!627 = !DISubroutineType(types: !628)
!628 = !{!623, !535}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !537, file: !238, line: 62, baseType: !630, size: 64, align: 64, offset: 1856)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64, align: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{null, !535, !623, !623, !229}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !537, file: !238, line: 65, baseType: !634, size: 64, align: 64, offset: 1920)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64, align: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{!637, !535, !623, !623}
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64, align: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !537, file: !238, line: 69, baseType: !639, size: 64, align: 64, offset: 1984)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64, align: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!642, !535, !623}
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64, align: 64)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !266, line: 109, baseType: !644)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !645, line: 15, size: 1408, align: 64, elements: !646)
!645 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!646 = !{!647, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !682, !683, !685, !686, !687, !688, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !644, file: !648, line: 3, baseType: !229, size: 32, align: 32)
!648 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!649 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !644, file: !648, line: 4, baseType: !229, size: 32, align: 32, offset: 32)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !644, file: !648, line: 5, baseType: !509, size: 64, align: 64, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !644, file: !648, line: 7, baseType: !221, size: 64, align: 64, offset: 128)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !644, file: !648, line: 8, baseType: !535, size: 64, align: 64, offset: 192)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !644, file: !648, line: 9, baseType: !251, size: 64, align: 64, offset: 256)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !644, file: !648, line: 10, baseType: !251, size: 64, align: 64, offset: 320)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !644, file: !648, line: 11, baseType: !481, size: 64, align: 64, offset: 384)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !644, file: !648, line: 12, baseType: !229, size: 32, align: 32, offset: 448)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !644, file: !648, line: 13, baseType: !251, size: 64, align: 64, offset: 512)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !644, file: !648, line: 15, baseType: !659, size: 64, align: 64, offset: 576)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64, align: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{null, !662}
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64, align: 64)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !266, line: 108, baseType: !664)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !665, line: 5, size: 704, align: 64, elements: !666)
!665 = !DIFile(filename: "../../../src/core/window-item-def.h", directory: "/home/lichi/Desktop/irssi/task1")
!666 = !{!667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !664, file: !648, line: 3, baseType: !229, size: 32, align: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !664, file: !648, line: 4, baseType: !229, size: 32, align: 32, offset: 32)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !664, file: !648, line: 5, baseType: !509, size: 64, align: 64, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !664, file: !648, line: 7, baseType: !221, size: 64, align: 64, offset: 128)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !664, file: !648, line: 8, baseType: !535, size: 64, align: 64, offset: 192)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !664, file: !648, line: 9, baseType: !251, size: 64, align: 64, offset: 256)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !664, file: !648, line: 10, baseType: !251, size: 64, align: 64, offset: 320)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !664, file: !648, line: 11, baseType: !481, size: 64, align: 64, offset: 384)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !664, file: !648, line: 12, baseType: !229, size: 32, align: 32, offset: 448)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !664, file: !648, line: 13, baseType: !251, size: 64, align: 64, offset: 512)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !664, file: !648, line: 15, baseType: !659, size: 64, align: 64, offset: 576)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !664, file: !648, line: 17, baseType: !679, size: 64, align: 64, offset: 640)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64, align: 64)
!680 = !DISubroutineType(types: !681)
!681 = !{!623, !662}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !644, file: !648, line: 17, baseType: !679, size: 64, align: 64, offset: 640)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !644, file: !684, line: 5, baseType: !251, size: 64, align: 64, offset: 704)
!684 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!685 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !644, file: !684, line: 6, baseType: !251, size: 64, align: 64, offset: 768)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !644, file: !684, line: 7, baseType: !481, size: 64, align: 64, offset: 832)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !644, file: !684, line: 9, baseType: !509, size: 64, align: 64, offset: 896)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !644, file: !684, line: 10, baseType: !689, size: 64, align: 64, offset: 960)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64, align: 64)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !266, line: 111, baseType: !691)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !692, line: 13, size: 576, align: 64, elements: !693)
!692 = !DIFile(filename: "../../../src/core/nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!693 = !{!694, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !712, !713}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !691, file: !695, line: 3, baseType: !229, size: 32, align: 32)
!695 = !DIFile(filename: "../../../src/core/nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!696 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !691, file: !695, line: 4, baseType: !229, size: 32, align: 32, offset: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !691, file: !695, line: 6, baseType: !481, size: 64, align: 64, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !691, file: !695, line: 8, baseType: !251, size: 64, align: 64, offset: 128)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !691, file: !695, line: 9, baseType: !251, size: 64, align: 64, offset: 192)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !691, file: !695, line: 10, baseType: !251, size: 64, align: 64, offset: 256)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !691, file: !695, line: 11, baseType: !229, size: 32, align: 32, offset: 320)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !691, file: !695, line: 14, baseType: !313, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !691, file: !695, line: 15, baseType: !313, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !691, file: !695, line: 18, baseType: !313, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !691, file: !695, line: 19, baseType: !313, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !691, file: !695, line: 20, baseType: !313, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !691, file: !695, line: 21, baseType: !313, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !691, file: !695, line: 22, baseType: !709, size: 64, align: 8, offset: 360)
!709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 64, align: 8, elements: !710)
!710 = !{!711}
!711 = !DISubrange(count: 8)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !691, file: !695, line: 26, baseType: !221, size: 64, align: 64, offset: 448)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !691, file: !695, line: 28, baseType: !689, size: 64, align: 64, offset: 512)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !644, file: !684, line: 12, baseType: !313, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !644, file: !684, line: 13, baseType: !251, size: 64, align: 64, offset: 1088)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !644, file: !684, line: 14, baseType: !229, size: 32, align: 32, offset: 1152)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !644, file: !684, line: 15, baseType: !251, size: 64, align: 64, offset: 1216)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !644, file: !684, line: 17, baseType: !313, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !644, file: !684, line: 18, baseType: !313, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !644, file: !684, line: 19, baseType: !313, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !644, file: !684, line: 20, baseType: !313, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !644, file: !684, line: 22, baseType: !313, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !644, file: !684, line: 23, baseType: !313, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !644, file: !684, line: 24, baseType: !313, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !644, file: !684, line: 25, baseType: !313, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !644, file: !684, line: 26, baseType: !313, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !644, file: !684, line: 31, baseType: !728, size: 64, align: 64, offset: 1344)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64, align: 64)
!729 = !DISubroutineType(types: !730)
!730 = !{!251, !642}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !537, file: !238, line: 70, baseType: !732, size: 64, align: 64, offset: 2048)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64, align: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{!735, !535, !623}
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64, align: 64)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !266, line: 110, baseType: !737)
!737 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !266, line: 110, flags: DIFlagFwdDecl)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !537, file: !238, line: 71, baseType: !739, size: 64, align: 64, offset: 2112)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64, align: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!229, !623, !623}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !537, file: !238, line: 73, baseType: !739, size: 64, align: 64, offset: 2176)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !234, file: !238, line: 55, baseType: !616, size: 64, align: 64, offset: 1664)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !234, file: !238, line: 57, baseType: !620, size: 64, align: 64, offset: 1728)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !234, file: !238, line: 60, baseType: !626, size: 64, align: 64, offset: 1792)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !234, file: !238, line: 62, baseType: !630, size: 64, align: 64, offset: 1856)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !234, file: !238, line: 65, baseType: !634, size: 64, align: 64, offset: 1920)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !234, file: !238, line: 69, baseType: !639, size: 64, align: 64, offset: 1984)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !234, file: !238, line: 70, baseType: !732, size: 64, align: 64, offset: 2048)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !234, file: !238, line: 71, baseType: !739, size: 64, align: 64, offset: 2112)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !234, file: !238, line: 73, baseType: !739, size: 64, align: 64, offset: 2176)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "redirects", scope: !234, file: !235, line: 46, baseType: !397, size: 64, align: 64, offset: 2240)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_queue", scope: !234, file: !235, line: 47, baseType: !397, size: 64, align: 64, offset: 2304)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_next", scope: !234, file: !235, line: 48, baseType: !755, size: 64, align: 64, offset: 2368)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64, align: 64)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "REDIRECT_REC", file: !233, line: 8, baseType: !757)
!757 = !DICompositeType(tag: DW_TAG_structure_type, name: "_REDIRECT_REC", file: !233, line: 8, flags: DIFlagFwdDecl)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_active", scope: !234, file: !235, line: 49, baseType: !397, size: 64, align: 64, offset: 2432)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "last_nick", scope: !234, file: !235, line: 51, baseType: !251, size: 64, align: 64, offset: 2496)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !234, file: !235, line: 53, baseType: !251, size: 64, align: 64, offset: 2560)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !234, file: !235, line: 54, baseType: !251, size: 64, align: 64, offset: 2624)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "wanted_usermode", scope: !234, file: !235, line: 55, baseType: !251, size: 64, align: 64, offset: 2688)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "userhost", scope: !234, file: !235, line: 56, baseType: !251, size: 64, align: 64, offset: 2752)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "channels_formed", scope: !234, file: !235, line: 57, baseType: !229, size: 32, align: 32, offset: 2816)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "whois_found", scope: !234, file: !235, line: 59, baseType: !313, size: 1, align: 32, offset: 2848, flags: DIFlagBitField, extraData: i64 2848)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "whowas_found", scope: !234, file: !235, line: 60, baseType: !313, size: 1, align: 32, offset: 2849, flags: DIFlagBitField, extraData: i64 2848)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "emode_known", scope: !234, file: !235, line: 62, baseType: !313, size: 1, align: 32, offset: 2850, flags: DIFlagBitField, extraData: i64 2848)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_mode", scope: !234, file: !235, line: 63, baseType: !313, size: 1, align: 32, offset: 2851, flags: DIFlagBitField, extraData: i64 2848)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_who", scope: !234, file: !235, line: 64, baseType: !313, size: 1, align: 32, offset: 2852, flags: DIFlagBitField, extraData: i64 2848)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "one_endofwho", scope: !234, file: !235, line: 65, baseType: !313, size: 1, align: 32, offset: 2853, flags: DIFlagBitField, extraData: i64 2848)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "disable_lag", scope: !234, file: !235, line: 66, baseType: !313, size: 1, align: 32, offset: 2854, flags: DIFlagBitField, extraData: i64 2848)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "nick_collision", scope: !234, file: !235, line: 67, baseType: !313, size: 1, align: 32, offset: 2855, flags: DIFlagBitField, extraData: i64 2848)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "motd_got", scope: !234, file: !235, line: 68, baseType: !313, size: 1, align: 32, offset: 2856, flags: DIFlagBitField, extraData: i64 2848)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "isupport_sent", scope: !234, file: !235, line: 69, baseType: !313, size: 1, align: 32, offset: 2857, flags: DIFlagBitField, extraData: i64 2848)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "cap_complete", scope: !234, file: !235, line: 70, baseType: !313, size: 1, align: 32, offset: 2858, flags: DIFlagBitField, extraData: i64 2848)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "cap_in_multiline", scope: !234, file: !235, line: 71, baseType: !313, size: 1, align: 32, offset: 2859, flags: DIFlagBitField, extraData: i64 2848)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_success", scope: !234, file: !235, line: 72, baseType: !313, size: 1, align: 32, offset: 2860, flags: DIFlagBitField, extraData: i64 2848)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks_in_cmd", scope: !234, file: !235, line: 74, baseType: !229, size: 32, align: 32, offset: 2880)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes_in_cmd", scope: !234, file: !235, line: 75, baseType: !229, size: 32, align: 32, offset: 2912)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois_in_cmd", scope: !234, file: !235, line: 76, baseType: !229, size: 32, align: 32, offset: 2944)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs_in_cmd", scope: !234, file: !235, line: 77, baseType: !229, size: 32, align: 32, offset: 2976)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "cap_supported", scope: !234, file: !235, line: 79, baseType: !509, size: 64, align: 64, offset: 3008)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "cap_active", scope: !234, file: !235, line: 80, baseType: !397, size: 64, align: 64, offset: 3072)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "cap_queue", scope: !234, file: !235, line: 81, baseType: !397, size: 64, align: 64, offset: 3136)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_buffer", scope: !234, file: !235, line: 83, baseType: !436, size: 64, align: 64, offset: 3200)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_timeout", scope: !234, file: !235, line: 84, baseType: !388, size: 32, align: 32, offset: 3264)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcount", scope: !234, file: !235, line: 87, baseType: !229, size: 32, align: 32, offset: 3296)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "cmdqueue", scope: !234, file: !235, line: 91, baseType: !397, size: 64, align: 64, offset: 3328)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "wait_cmd", scope: !234, file: !235, line: 92, baseType: !521, size: 128, align: 64, offset: 3392)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd", scope: !234, file: !235, line: 93, baseType: !521, size: 128, align: 64, offset: 3520)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !234, file: !235, line: 95, baseType: !229, size: 32, align: 32, offset: 3648)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !234, file: !235, line: 96, baseType: !229, size: 32, align: 32, offset: 3680)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !234, file: !235, line: 97, baseType: !229, size: 32, align: 32, offset: 3712)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "idles", scope: !234, file: !235, line: 100, baseType: !397, size: 64, align: 64, offset: 3776)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "ctcpqueue", scope: !234, file: !235, line: 103, baseType: !397, size: 64, align: 64, offset: 3840)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "knockoutlist", scope: !234, file: !235, line: 106, baseType: !397, size: 64, align: 64, offset: 3904)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "splits", scope: !234, file: !235, line: 108, baseType: !509, size: 64, align: 64, offset: 3968)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "split_servers", scope: !234, file: !235, line: 109, baseType: !397, size: 64, align: 64, offset: 4032)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "rejoin_channels", scope: !234, file: !235, line: 111, baseType: !397, size: 64, align: 64, offset: 4096)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "chanqueries", scope: !234, file: !235, line: 114, baseType: !221, size: 64, align: 64, offset: 4160)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "isupport", scope: !234, file: !235, line: 116, baseType: !509, size: 64, align: 64, offset: 4224)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !234, file: !235, line: 117, baseType: !803, size: 32768, align: 64, offset: 4288)
!803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !804, size: 32768, align: 64, elements: !853)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "modes_type", file: !805, line: 10, size: 128, align: 64, elements: !806)
!805 = !DIFile(filename: "../../../src/irc/core/modes.h", directory: "/home/lichi/Desktop/irssi/task1")
!806 = !{!807, !852}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !804, file: !805, line: 11, baseType: !808, size: 64, align: 64)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64, align: 64)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_func_t", file: !805, line: 7, baseType: !810)
!810 = !DISubroutineType(types: !811)
!811 = !{null, !812, !623, !252, !252, !251, !436}
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64, align: 64)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_CHANNEL_REC", file: !233, line: 7, baseType: !814)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_CHANNEL_REC", file: !815, line: 15, size: 1600, align: 64, elements: !816)
!815 = !DIFile(filename: "../../../src/irc/core/irc-channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!816 = !{!817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !814, file: !648, line: 3, baseType: !229, size: 32, align: 32)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !814, file: !648, line: 4, baseType: !229, size: 32, align: 32, offset: 32)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !814, file: !648, line: 5, baseType: !509, size: 64, align: 64, offset: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !814, file: !648, line: 7, baseType: !221, size: 64, align: 64, offset: 128)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !814, file: !648, line: 8, baseType: !231, size: 64, align: 64, offset: 192)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !814, file: !648, line: 9, baseType: !251, size: 64, align: 64, offset: 256)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !814, file: !648, line: 10, baseType: !251, size: 64, align: 64, offset: 320)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !814, file: !648, line: 11, baseType: !481, size: 64, align: 64, offset: 384)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !814, file: !648, line: 12, baseType: !229, size: 32, align: 32, offset: 448)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !814, file: !648, line: 13, baseType: !251, size: 64, align: 64, offset: 512)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !814, file: !648, line: 15, baseType: !659, size: 64, align: 64, offset: 576)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !814, file: !648, line: 17, baseType: !679, size: 64, align: 64, offset: 640)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !814, file: !684, line: 5, baseType: !251, size: 64, align: 64, offset: 704)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !814, file: !684, line: 6, baseType: !251, size: 64, align: 64, offset: 768)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !814, file: !684, line: 7, baseType: !481, size: 64, align: 64, offset: 832)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !814, file: !684, line: 9, baseType: !509, size: 64, align: 64, offset: 896)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !814, file: !684, line: 10, baseType: !689, size: 64, align: 64, offset: 960)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !814, file: !684, line: 12, baseType: !313, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !814, file: !684, line: 13, baseType: !251, size: 64, align: 64, offset: 1088)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !814, file: !684, line: 14, baseType: !229, size: 32, align: 32, offset: 1152)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !814, file: !684, line: 15, baseType: !251, size: 64, align: 64, offset: 1216)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !814, file: !684, line: 17, baseType: !313, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !814, file: !684, line: 18, baseType: !313, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !814, file: !684, line: 19, baseType: !313, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !814, file: !684, line: 20, baseType: !313, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !814, file: !684, line: 22, baseType: !313, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !814, file: !684, line: 23, baseType: !313, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !814, file: !684, line: 24, baseType: !313, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !814, file: !684, line: 25, baseType: !313, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !814, file: !684, line: 26, baseType: !313, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !814, file: !684, line: 31, baseType: !728, size: 64, align: 64, offset: 1344)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "banlist", scope: !814, file: !815, line: 18, baseType: !397, size: 64, align: 64, offset: 1408)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "massjoin_start", scope: !814, file: !815, line: 20, baseType: !481, size: 64, align: 64, offset: 1472)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "massjoins", scope: !814, file: !815, line: 21, baseType: !229, size: 32, align: 32, offset: 1536)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "last_massjoins", scope: !814, file: !815, line: 22, baseType: !229, size: 32, align: 32, offset: 1568)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !804, file: !805, line: 12, baseType: !252, size: 8, align: 8, offset: 64)
!853 = !{!854}
!854 = !DISubrange(count: 256)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !234, file: !235, line: 118, baseType: !856, size: 2048, align: 8, offset: 37056)
!856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 2048, align: 8, elements: !853)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "nick_comp_func", scope: !234, file: !235, line: 120, baseType: !739, size: 64, align: 64, offset: 39104)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHFunc", file: !227, line: 91, baseType: !859)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64, align: 64)
!860 = !DISubroutineType(types: !861)
!861 = !{null, !230, !230, !230}
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "GFunc", file: !227, line: 88, baseType: !863)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64, align: 64)
!864 = !DISubroutineType(types: !865)
!865 = !{null, !230, !230}
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64, align: 64)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEMP_SPLIT_CHAN_REC", file: !868, line: 59, baseType: !869)
!868 = !DIFile(filename: "fe-netsplit.c", directory: "/home/lichi/Desktop/irssi/task1")
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !868, line: 55, size: 192, align: 64, elements: !870)
!870 = !{!871, !872, !873, !874}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !869, file: !868, line: 56, baseType: !251, size: 64, align: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "nick_count", scope: !869, file: !868, line: 57, baseType: !229, size: 32, align: 32, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "maxnickpos", scope: !869, file: !868, line: 57, baseType: !229, size: 32, align: 32, offset: 96)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !869, file: !868, line: 58, baseType: !436, size: 64, align: 64, offset: 128)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64, align: 64)
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "NETSPLIT_SERVER_REC", file: !877, line: 13, baseType: !878)
!877 = !DIFile(filename: "../../../src/irc/core/netsplit.h", directory: "/home/lichi/Desktop/irssi/task1")
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !877, line: 6, size: 256, align: 64, elements: !879)
!879 = !{!880, !881, !882, !883, !884}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !878, file: !877, line: 7, baseType: !251, size: 64, align: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "destserver", scope: !878, file: !877, line: 8, baseType: !251, size: 64, align: 64, offset: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !878, file: !877, line: 9, baseType: !229, size: 32, align: 32, offset: 128)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "prints", scope: !878, file: !877, line: 10, baseType: !229, size: 32, align: 32, offset: 160)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !878, file: !877, line: 12, baseType: !481, size: 64, align: 64, offset: 192)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCompareFunc", file: !227, line: 80, baseType: !886)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64, align: 64)
!887 = !DISubroutineType(types: !888)
!888 = !{!228, !889, !889}
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "gconstpointer", file: !227, line: 78, baseType: !219)
!890 = !{!891, !892, !893, !894}
!891 = distinct !DIGlobalVariable(name: "split_tag", scope: !0, file: !868, line: 36, type: !229, isLocal: true, isDefinition: true, variable: i32* @split_tag)
!892 = distinct !DIGlobalVariable(name: "printing_splits", scope: !0, file: !868, line: 38, type: !229, isLocal: true, isDefinition: true, variable: i32* @printing_splits)
!893 = distinct !DIGlobalVariable(name: "netsplit_max_nicks", scope: !0, file: !868, line: 37, type: !229, isLocal: true, isDefinition: true, variable: i32* @netsplit_max_nicks)
!894 = distinct !DIGlobalVariable(name: "netsplit_nicks_hide_threshold", scope: !0, file: !868, line: 37, type: !229, isLocal: true, isDefinition: true, variable: i32* @netsplit_nicks_hide_threshold)
!895 = !{i32 2, !"Dwarf Version", i32 4}
!896 = !{i32 2, !"Debug Info Version", i32 3}
!897 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!898 = distinct !DISubprogram(name: "fe_netsplit_init", scope: !868, file: !868, line: 366, type: !385, isLocal: false, isDefinition: true, scopeLine: 367, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !899)
!899 = !{}
!900 = !DILocation(line: 368, column: 2, scope: !898)
!901 = !DILocation(line: 369, column: 2, scope: !898)
!902 = !DILocation(line: 370, column: 12, scope: !898)
!903 = !DILocation(line: 371, column: 18, scope: !898)
!904 = !DILocation(line: 373, column: 2, scope: !898)
!905 = !DILocation(line: 374, column: 2, scope: !898)
!906 = !DILocation(line: 375, column: 2, scope: !898)
!907 = !DILocation(line: 376, column: 53, scope: !898)
!908 = !DILocation(line: 376, column: 2, scope: !909)
!909 = !DILexicalBlockFile(scope: !898, file: !868, discriminator: 1)
!910 = !DILocation(line: 377, column: 1, scope: !898)
!911 = distinct !DISubprogram(name: "read_settings", scope: !868, file: !868, line: 357, type: !385, isLocal: true, isDefinition: true, scopeLine: 358, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !899)
!912 = !DILocation(line: 359, column: 30, scope: !911)
!913 = !DILocation(line: 359, column: 28, scope: !911)
!914 = !DILocation(line: 361, column: 3, scope: !911)
!915 = !DILocation(line: 360, column: 32, scope: !911)
!916 = !DILocation(line: 362, column: 6, scope: !917)
!917 = distinct !DILexicalBlock(scope: !911, file: !868, line: 362, column: 6)
!918 = !DILocation(line: 362, column: 38, scope: !917)
!919 = !DILocation(line: 362, column: 36, scope: !917)
!920 = !DILocation(line: 362, column: 6, scope: !911)
!921 = !DILocation(line: 363, column: 24, scope: !917)
!922 = !DILocation(line: 363, column: 22, scope: !917)
!923 = !DILocation(line: 363, column: 3, scope: !917)
!924 = !DILocation(line: 364, column: 1, scope: !911)
!925 = distinct !DISubprogram(name: "sig_netsplit_servers", scope: !868, file: !868, line: 296, type: !385, isLocal: true, isDefinition: true, scopeLine: 297, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !899)
!926 = !DILocation(line: 298, column: 6, scope: !927)
!927 = distinct !DILexicalBlock(scope: !925, file: !868, line: 298, column: 6)
!928 = !DILocation(line: 298, column: 47, scope: !927)
!929 = !DILocation(line: 298, column: 50, scope: !930)
!930 = !DILexicalBlockFile(scope: !927, file: !868, discriminator: 1)
!931 = !DILocation(line: 298, column: 60, scope: !930)
!932 = !DILocation(line: 298, column: 6, scope: !930)
!933 = !DILocation(line: 299, column: 15, scope: !934)
!934 = distinct !DILexicalBlock(scope: !927, file: !868, line: 298, column: 67)
!935 = !DILocation(line: 299, column: 13, scope: !934)
!936 = !DILocation(line: 302, column: 3, scope: !934)
!937 = !DILocation(line: 303, column: 2, scope: !934)
!938 = !DILocation(line: 304, column: 1, scope: !925)
!939 = distinct !DISubprogram(name: "cmd_netsplit", scope: !868, file: !868, line: 335, type: !940, isLocal: true, isDefinition: true, scopeLine: 336, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !899)
!940 = !DISubroutineType(types: !941)
!941 = !{null, !623, !231}
!942 = !DILocalVariable(name: "data", arg: 1, scope: !939, file: !868, line: 335, type: !623)
!943 = !DIExpression()
!944 = !DILocation(line: 335, column: 38, scope: !939)
!945 = !DILocalVariable(name: "server", arg: 2, scope: !939, file: !868, line: 335, type: !231)
!946 = !DILocation(line: 335, column: 60, scope: !939)
!947 = !DILocalVariable(name: "list", scope: !939, file: !868, line: 337, type: !397)
!948 = !DILocation(line: 337, column: 10, scope: !939)
!949 = !DILocation(line: 339, column: 9, scope: !939)
!950 = distinct !{!950, !949}
!951 = !DILocation(line: 339, column: 18, scope: !952)
!952 = !DILexicalBlockFile(scope: !953, file: !868, discriminator: 1)
!953 = distinct !DILexicalBlock(scope: !954, file: !868, line: 339, column: 18)
!954 = distinct !DILexicalBlock(scope: !939, file: !868, line: 339, column: 12)
!955 = !DILocation(line: 339, column: 25, scope: !952)
!956 = !DILocation(line: 339, column: 8, scope: !952)
!957 = !DILocation(line: 339, column: 92, scope: !958)
!958 = !DILexicalBlockFile(scope: !953, file: !868, discriminator: 2)
!959 = !DILocation(line: 339, column: 74, scope: !958)
!960 = !DILocation(line: 339, column: 59, scope: !958)
!961 = !DILocation(line: 339, column: 58, scope: !958)
!962 = !DILocation(line: 339, column: 33, scope: !963)
!963 = !DILexicalBlockFile(scope: !958, file: !868, discriminator: 12)
!964 = !DILocation(line: 339, column: 14, scope: !958)
!965 = !DILocation(line: 339, column: 18, scope: !958)
!966 = !DILocation(line: 339, column: 13, scope: !967)
!967 = !DILexicalBlockFile(scope: !953, file: !868, discriminator: 3)
!968 = !DILocation(line: 339, column: 18, scope: !969)
!969 = !DILexicalBlockFile(scope: !954, file: !868, discriminator: 4)
!970 = !DILocation(line: 339, column: 35, scope: !971)
!971 = !DILexicalBlockFile(scope: !953, file: !868, discriminator: 5)
!972 = !DILocation(line: 339, column: 47, scope: !973)
!973 = !DILexicalBlockFile(scope: !974, file: !868, discriminator: 6)
!974 = distinct !DILexicalBlock(scope: !954, file: !868, line: 339, column: 47)
!975 = !DILocation(line: 339, column: 54, scope: !973)
!976 = !DILocation(line: 339, column: 8, scope: !973)
!977 = !DILocation(line: 339, column: 13, scope: !978)
!978 = !DILexicalBlockFile(scope: !974, file: !868, discriminator: 7)
!979 = !DILocation(line: 339, column: 22, scope: !978)
!980 = !DILocation(line: 339, column: 12, scope: !978)
!981 = !DILocation(line: 339, column: 47, scope: !978)
!982 = !DILocation(line: 339, column: 33, scope: !983)
!983 = !DILexicalBlockFile(scope: !974, file: !868, discriminator: 8)
!984 = distinct !{!984, !985}
!985 = !DILocation(line: 339, column: 33, scope: !974)
!986 = !DILocation(line: 339, column: 38, scope: !987)
!987 = !DILexicalBlockFile(scope: !988, file: !868, discriminator: 9)
!988 = distinct !DILexicalBlock(scope: !974, file: !868, line: 339, column: 36)
!989 = !DILocation(line: 339, column: 116, scope: !990)
!990 = !DILexicalBlockFile(scope: !987, file: !868, discriminator: 13)
!991 = !DILocation(line: 339, column: 131, scope: !987)
!992 = !DILocation(line: 339, column: 139, scope: !993)
!993 = !DILexicalBlockFile(scope: !988, file: !868, discriminator: 10)
!994 = !DILocation(line: 339, column: 152, scope: !995)
!995 = !DILexicalBlockFile(scope: !954, file: !868, discriminator: 11)
!996 = !DILocation(line: 341, column: 6, scope: !997)
!997 = distinct !DILexicalBlock(scope: !939, file: !868, line: 341, column: 6)
!998 = !DILocation(line: 341, column: 14, scope: !997)
!999 = !DILocation(line: 341, column: 28, scope: !997)
!1000 = !DILocation(line: 341, column: 6, scope: !939)
!1001 = !DILocation(line: 342, column: 39, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !997, file: !868, line: 341, column: 36)
!1003 = !DILocation(line: 342, column: 3, scope: !1002)
!1004 = !DILocation(line: 344, column: 3, scope: !1002)
!1005 = !DILocation(line: 347, column: 38, scope: !939)
!1006 = !DILocation(line: 347, column: 2, scope: !939)
!1007 = !DILocation(line: 349, column: 14, scope: !939)
!1008 = !DILocation(line: 350, column: 23, scope: !939)
!1009 = !DILocation(line: 350, column: 31, scope: !939)
!1010 = !DILocation(line: 350, column: 59, scope: !939)
!1011 = !DILocation(line: 350, column: 2, scope: !939)
!1012 = !DILocation(line: 351, column: 18, scope: !939)
!1013 = !DILocation(line: 351, column: 45, scope: !939)
!1014 = !DILocation(line: 351, column: 2, scope: !939)
!1015 = !DILocation(line: 352, column: 22, scope: !939)
!1016 = !DILocation(line: 352, column: 9, scope: !939)
!1017 = !DILocation(line: 354, column: 38, scope: !939)
!1018 = !DILocation(line: 354, column: 2, scope: !939)
!1019 = !DILocation(line: 355, column: 1, scope: !939)
!1020 = !DILocation(line: 355, column: 1, scope: !1021)
!1021 = !DILexicalBlockFile(scope: !939, file: !868, discriminator: 1)
!1022 = distinct !DISubprogram(name: "fe_netsplit_deinit", scope: !868, file: !868, line: 379, type: !385, isLocal: false, isDefinition: true, scopeLine: 380, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !899)
!1023 = !DILocation(line: 381, column: 6, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1022, file: !868, line: 381, column: 6)
!1025 = !DILocation(line: 381, column: 16, scope: !1024)
!1026 = !DILocation(line: 381, column: 6, scope: !1022)
!1027 = !DILocation(line: 382, column: 19, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1024, file: !868, line: 381, column: 23)
!1029 = !DILocation(line: 382, column: 3, scope: !1028)
!1030 = !DILocation(line: 383, column: 3, scope: !1028)
!1031 = !DILocation(line: 384, column: 2, scope: !1028)
!1032 = !DILocation(line: 386, column: 2, scope: !1022)
!1033 = !DILocation(line: 387, column: 2, scope: !1022)
!1034 = !DILocation(line: 388, column: 2, scope: !1022)
!1035 = !DILocation(line: 389, column: 1, scope: !1022)
!1036 = distinct !DISubprogram(name: "sig_print_starting", scope: !868, file: !868, line: 248, type: !1037, isLocal: true, isDefinition: true, scopeLine: 249, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !899)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{null, !1039}
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64, align: 64)
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_DEST_REC", file: !1041, line: 62, baseType: !1042)
!1041 = !DIFile(filename: "../../../src/fe-common/core/formats.h", directory: "/home/lichi/Desktop/irssi/task1")
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TEXT_DEST_REC", file: !1041, line: 50, size: 576, align: 64, elements: !1043)
!1043 = !{!1044, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !1042, file: !1041, line: 51, baseType: !1045, size: 64, align: 64)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64, align: 64)
!1046 = !DIDerivedType(tag: DW_TAG_typedef, name: "WINDOW_REC", file: !266, line: 117, baseType: !1047)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WINDOW_REC", file: !1048, line: 28, size: 1280, align: 64, elements: !1049)
!1048 = !DIFile(filename: "../../../src/fe-common/core/fe-windows.h", directory: "/home/lichi/Desktop/irssi/task1")
!1049 = !{!1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "refnum", scope: !1047, file: !1048, line: 29, baseType: !229, size: 32, align: 32)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1047, file: !1048, line: 30, baseType: !251, size: 64, align: 64, offset: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !1047, file: !1048, line: 32, baseType: !229, size: 32, align: 32, offset: 128)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !1047, file: !1048, line: 32, baseType: !229, size: 32, align: 32, offset: 160)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !1047, file: !1048, line: 34, baseType: !397, size: 64, align: 64, offset: 192)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1047, file: !1048, line: 35, baseType: !662, size: 64, align: 64, offset: 256)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "active_server", scope: !1047, file: !1048, line: 36, baseType: !535, size: 64, align: 64, offset: 320)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "connect_server", scope: !1047, file: !1048, line: 37, baseType: !535, size: 64, align: 64, offset: 384)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !1047, file: !1048, line: 38, baseType: !251, size: 64, align: 64, offset: 448)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1047, file: !1048, line: 40, baseType: !229, size: 32, align: 32, offset: 512)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "bound_items", scope: !1047, file: !1048, line: 41, baseType: !397, size: 64, align: 64, offset: 576)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "immortal", scope: !1047, file: !1048, line: 43, baseType: !313, size: 1, align: 32, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "sticky_refnum", scope: !1047, file: !1048, line: 44, baseType: !313, size: 1, align: 32, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !1047, file: !1048, line: 45, baseType: !313, size: 1, align: 32, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !1047, file: !1048, line: 48, baseType: !1065, size: 64, align: 64, offset: 704)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64, align: 64)
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "HISTORY_REC", file: !1067, line: 14, baseType: !1068)
!1067 = !DIFile(filename: "../../../src/fe-common/core/command-history.h", directory: "/home/lichi/Desktop/irssi/task1")
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1067, line: 6, size: 256, align: 64, elements: !1069)
!1069 = !{!1070, !1071, !1080, !1081, !1082}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1068, file: !1067, line: 7, baseType: !251, size: 64, align: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1068, file: !1067, line: 9, baseType: !1072, size: 64, align: 64, offset: 64)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64, align: 64)
!1073 = !DIDerivedType(tag: DW_TAG_typedef, name: "GList", file: !1074, line: 37, baseType: !1075)
!1074 = !DIFile(filename: "/usr/include/glib-2.0/glib/glist.h", directory: "/home/lichi/Desktop/irssi/task1")
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GList", file: !1074, line: 39, size: 192, align: 64, elements: !1076)
!1076 = !{!1077, !1078, !1079}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1075, file: !1074, line: 41, baseType: !230, size: 64, align: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1075, file: !1074, line: 42, baseType: !1072, size: 64, align: 64, offset: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1075, file: !1074, line: 43, baseType: !1072, size: 64, align: 64, offset: 128)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "lines", scope: !1068, file: !1067, line: 10, baseType: !229, size: 32, align: 32, offset: 128)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1068, file: !1067, line: 12, baseType: !229, size: 32, align: 32, offset: 160)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "redo", scope: !1068, file: !1067, line: 13, baseType: !229, size: 1, align: 32, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "history_name", scope: !1047, file: !1048, line: 49, baseType: !251, size: 64, align: 64, offset: 768)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !1047, file: !1048, line: 51, baseType: !229, size: 32, align: 32, offset: 832)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !1047, file: !1048, line: 52, baseType: !251, size: 64, align: 64, offset: 896)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "last_timestamp", scope: !1047, file: !1048, line: 54, baseType: !481, size: 64, align: 64, offset: 960)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "last_line", scope: !1047, file: !1048, line: 55, baseType: !481, size: 64, align: 64, offset: 1024)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "theme_name", scope: !1047, file: !1048, line: 57, baseType: !251, size: 64, align: 64, offset: 1088)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "theme", scope: !1047, file: !1048, line: 58, baseType: !221, size: 64, align: 64, offset: 1152)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "gui_data", scope: !1047, file: !1048, line: 60, baseType: !221, size: 64, align: 64, offset: 1216)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !1042, file: !1041, line: 52, baseType: !535, size: 64, align: 64, offset: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "server_tag", scope: !1042, file: !1041, line: 53, baseType: !623, size: 64, align: 64, offset: 128)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1042, file: !1041, line: 54, baseType: !623, size: 64, align: 64, offset: 192)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !1042, file: !1041, line: 55, baseType: !623, size: 64, align: 64, offset: 256)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1042, file: !1041, line: 56, baseType: !623, size: 64, align: 64, offset: 320)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1042, file: !1041, line: 57, baseType: !229, size: 32, align: 32, offset: 384)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_priority", scope: !1042, file: !1041, line: 59, baseType: !229, size: 32, align: 32, offset: 416)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !1042, file: !1041, line: 60, baseType: !251, size: 64, align: 64, offset: 448)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1042, file: !1041, line: 61, baseType: !229, size: 32, align: 32, offset: 512)
!1100 = !DILocalVariable(name: "dest", arg: 1, scope: !1036, file: !868, line: 248, type: !1039)
!1101 = !DILocation(line: 248, column: 47, scope: !1036)
!1102 = !DILocalVariable(name: "rec", scope: !1036, file: !868, line: 250, type: !231)
!1103 = !DILocation(line: 250, column: 18, scope: !1036)
!1104 = !DILocation(line: 252, column: 6, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1036, file: !868, line: 252, column: 6)
!1106 = !DILocation(line: 252, column: 6, scope: !1036)
!1107 = !DILocation(line: 253, column: 3, scope: !1105)
!1108 = !DILocation(line: 255, column: 87, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1036, file: !868, line: 255, column: 6)
!1110 = !DILocation(line: 255, column: 93, scope: !1109)
!1111 = !DILocation(line: 255, column: 69, scope: !1109)
!1112 = !DILocation(line: 255, column: 54, scope: !1109)
!1113 = !DILocation(line: 255, column: 53, scope: !1109)
!1114 = !DILocation(line: 255, column: 28, scope: !1115)
!1115 = !DILexicalBlockFile(scope: !1109, file: !868, discriminator: 3)
!1116 = !DILocation(line: 255, column: 9, scope: !1109)
!1117 = !DILocation(line: 255, column: 6, scope: !1036)
!1118 = !DILocation(line: 255, column: 8, scope: !1119)
!1119 = !DILexicalBlockFile(scope: !1109, file: !868, discriminator: 1)
!1120 = !DILocation(line: 255, column: 6, scope: !1121)
!1121 = !DILexicalBlockFile(scope: !1036, file: !868, discriminator: 2)
!1122 = !DILocation(line: 256, column: 3, scope: !1109)
!1123 = !DILocation(line: 258, column: 87, scope: !1036)
!1124 = !DILocation(line: 258, column: 93, scope: !1036)
!1125 = !DILocation(line: 258, column: 69, scope: !1036)
!1126 = !DILocation(line: 258, column: 54, scope: !1036)
!1127 = !DILocation(line: 258, column: 53, scope: !1036)
!1128 = !DILocation(line: 258, column: 28, scope: !1129)
!1129 = !DILexicalBlockFile(scope: !1036, file: !868, discriminator: 1)
!1130 = !DILocation(line: 258, column: 9, scope: !1036)
!1131 = !DILocation(line: 258, column: 6, scope: !1036)
!1132 = !DILocation(line: 259, column: 6, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1036, file: !868, line: 259, column: 6)
!1134 = !DILocation(line: 259, column: 11, scope: !1133)
!1135 = !DILocation(line: 259, column: 25, scope: !1133)
!1136 = !DILocation(line: 259, column: 6, scope: !1036)
!1137 = !DILocation(line: 263, column: 7, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1139, file: !868, line: 263, column: 7)
!1139 = distinct !DILexicalBlock(scope: !1133, file: !868, line: 259, column: 33)
!1140 = !DILocation(line: 263, column: 13, scope: !1138)
!1141 = !DILocation(line: 263, column: 20, scope: !1138)
!1142 = !DILocation(line: 263, column: 27, scope: !1138)
!1143 = !DILocation(line: 263, column: 48, scope: !1144)
!1144 = !DILexicalBlockFile(scope: !1138, file: !868, discriminator: 1)
!1145 = !DILocation(line: 263, column: 54, scope: !1144)
!1146 = !DILocation(line: 263, column: 79, scope: !1144)
!1147 = !DILocation(line: 263, column: 64, scope: !1144)
!1148 = !DILocation(line: 263, column: 84, scope: !1144)
!1149 = !DILocation(line: 263, column: 90, scope: !1144)
!1150 = !DILocation(line: 263, column: 32, scope: !1144)
!1151 = !DILocation(line: 263, column: 7, scope: !1144)
!1152 = !DILocation(line: 264, column: 4, scope: !1138)
!1153 = !DILocation(line: 266, column: 16, scope: !1139)
!1154 = !DILocation(line: 266, column: 3, scope: !1139)
!1155 = !DILocation(line: 267, column: 2, scope: !1139)
!1156 = !DILocation(line: 268, column: 1, scope: !1036)
!1157 = distinct !DISubprogram(name: "sig_check_splits", scope: !868, file: !868, line: 270, type: !1158, isLocal: true, isDefinition: true, scopeLine: 271, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !899)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!229}
!1160 = !DILocalVariable(name: "tmp", scope: !1157, file: !868, line: 272, type: !397)
!1161 = !DILocation(line: 272, column: 10, scope: !1157)
!1162 = !DILocalVariable(name: "stop", scope: !1157, file: !868, line: 273, type: !229)
!1163 = !DILocation(line: 273, column: 6, scope: !1157)
!1164 = !DILocation(line: 275, column: 7, scope: !1157)
!1165 = !DILocation(line: 276, column: 13, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1157, file: !868, line: 276, column: 2)
!1167 = !DILocation(line: 276, column: 11, scope: !1166)
!1168 = !DILocation(line: 276, column: 7, scope: !1166)
!1169 = !DILocation(line: 276, column: 22, scope: !1170)
!1170 = !DILexicalBlockFile(scope: !1171, file: !868, discriminator: 1)
!1171 = distinct !DILexicalBlock(scope: !1166, file: !868, line: 276, column: 2)
!1172 = !DILocation(line: 276, column: 26, scope: !1170)
!1173 = !DILocation(line: 276, column: 2, scope: !1170)
!1174 = !DILocalVariable(name: "rec", scope: !1175, file: !868, line: 277, type: !231)
!1175 = distinct !DILexicalBlock(scope: !1171, file: !868, line: 276, column: 51)
!1176 = !DILocation(line: 277, column: 19, scope: !1175)
!1177 = !DILocation(line: 277, column: 25, scope: !1175)
!1178 = !DILocation(line: 277, column: 30, scope: !1175)
!1179 = !DILocation(line: 279, column: 88, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1175, file: !868, line: 279, column: 7)
!1181 = !DILocation(line: 279, column: 70, scope: !1180)
!1182 = !DILocation(line: 279, column: 55, scope: !1180)
!1183 = !DILocation(line: 279, column: 54, scope: !1180)
!1184 = !DILocation(line: 279, column: 29, scope: !1185)
!1185 = !DILexicalBlockFile(scope: !1180, file: !868, discriminator: 3)
!1186 = !DILocation(line: 279, column: 10, scope: !1180)
!1187 = !DILocation(line: 279, column: 7, scope: !1175)
!1188 = !DILocation(line: 279, column: 9, scope: !1189)
!1189 = !DILexicalBlockFile(scope: !1180, file: !868, discriminator: 1)
!1190 = !DILocation(line: 279, column: 7, scope: !1191)
!1191 = !DILexicalBlockFile(scope: !1175, file: !868, discriminator: 2)
!1192 = !DILocation(line: 280, column: 4, scope: !1180)
!1193 = !DILocation(line: 282, column: 7, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1175, file: !868, line: 282, column: 7)
!1195 = !DILocation(line: 282, column: 12, scope: !1194)
!1196 = !DILocation(line: 282, column: 26, scope: !1194)
!1197 = !DILocation(line: 282, column: 7, scope: !1175)
!1198 = !DILocation(line: 283, column: 29, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !868, line: 283, column: 8)
!1200 = distinct !DILexicalBlock(scope: !1194, file: !868, line: 282, column: 34)
!1201 = !DILocation(line: 283, column: 9, scope: !1199)
!1202 = !DILocation(line: 283, column: 8, scope: !1200)
!1203 = !DILocation(line: 284, column: 10, scope: !1199)
!1204 = !DILocation(line: 284, column: 5, scope: !1199)
!1205 = !DILocation(line: 285, column: 3, scope: !1200)
!1206 = !DILocation(line: 286, column: 2, scope: !1175)
!1207 = !DILocation(line: 276, column: 40, scope: !1208)
!1208 = !DILexicalBlockFile(scope: !1171, file: !868, discriminator: 2)
!1209 = !DILocation(line: 276, column: 45, scope: !1208)
!1210 = !DILocation(line: 276, column: 38, scope: !1208)
!1211 = !DILocation(line: 276, column: 2, scope: !1208)
!1212 = distinct !{!1212, !1213}
!1213 = !DILocation(line: 276, column: 2, scope: !1157)
!1214 = !DILocation(line: 288, column: 6, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1157, file: !868, line: 288, column: 6)
!1216 = !DILocation(line: 288, column: 6, scope: !1157)
!1217 = !DILocation(line: 289, column: 19, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1215, file: !868, line: 288, column: 12)
!1219 = !DILocation(line: 289, column: 3, scope: !1218)
!1220 = !DILocation(line: 290, column: 3, scope: !1218)
!1221 = !DILocation(line: 291, column: 27, scope: !1218)
!1222 = !DILocation(line: 292, column: 2, scope: !1218)
!1223 = !DILocation(line: 293, column: 2, scope: !1157)
!1224 = distinct !DISubprogram(name: "check_server_splits", scope: !868, file: !868, line: 232, type: !1225, isLocal: true, isDefinition: true, scopeLine: 233, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !899)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!229, !231}
!1227 = !DILocalVariable(name: "server", arg: 1, scope: !1224, file: !868, line: 232, type: !231)
!1228 = !DILocation(line: 232, column: 48, scope: !1224)
!1229 = !DILocalVariable(name: "last", scope: !1224, file: !868, line: 234, type: !481)
!1230 = !DILocation(line: 234, column: 9, scope: !1224)
!1231 = !DILocation(line: 236, column: 2, scope: !1224)
!1232 = distinct !{!1232, !1231}
!1233 = !DILocation(line: 236, column: 90, scope: !1234)
!1234 = !DILexicalBlockFile(scope: !1235, file: !868, discriminator: 1)
!1235 = distinct !DILexicalBlock(scope: !1236, file: !868, line: 236, column: 10)
!1236 = distinct !DILexicalBlock(scope: !1224, file: !868, line: 236, column: 4)
!1237 = !DILocation(line: 236, column: 72, scope: !1234)
!1238 = !DILocation(line: 236, column: 57, scope: !1234)
!1239 = !DILocation(line: 236, column: 56, scope: !1234)
!1240 = !DILocation(line: 236, column: 31, scope: !1241)
!1241 = !DILexicalBlockFile(scope: !1234, file: !868, discriminator: 7)
!1242 = !DILocation(line: 236, column: 12, scope: !1234)
!1243 = !DILocation(line: 236, column: 10, scope: !1234)
!1244 = !DILocation(line: 236, column: 11, scope: !1245)
!1245 = !DILexicalBlockFile(scope: !1235, file: !868, discriminator: 2)
!1246 = !DILocation(line: 236, column: 10, scope: !1247)
!1247 = !DILexicalBlockFile(scope: !1236, file: !868, discriminator: 3)
!1248 = !DILocation(line: 236, column: 30, scope: !1249)
!1249 = !DILexicalBlockFile(scope: !1250, file: !868, discriminator: 4)
!1250 = distinct !DILexicalBlock(scope: !1235, file: !868, line: 236, column: 28)
!1251 = !DILocation(line: 236, column: 39, scope: !1252)
!1252 = !DILexicalBlockFile(scope: !1253, file: !868, discriminator: 5)
!1253 = distinct !DILexicalBlock(scope: !1235, file: !868, line: 236, column: 37)
!1254 = !DILocation(line: 236, column: 133, scope: !1252)
!1255 = !DILocation(line: 236, column: 150, scope: !1256)
!1256 = !DILexicalBlockFile(scope: !1236, file: !868, discriminator: 6)
!1257 = !DILocation(line: 238, column: 24, scope: !1224)
!1258 = !DILocation(line: 238, column: 9, scope: !1224)
!1259 = !DILocation(line: 238, column: 7, scope: !1224)
!1260 = !DILocation(line: 239, column: 6, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1224, file: !868, line: 239, column: 6)
!1262 = !DILocation(line: 239, column: 16, scope: !1261)
!1263 = !DILocation(line: 239, column: 15, scope: !1261)
!1264 = !DILocation(line: 239, column: 21, scope: !1261)
!1265 = !DILocation(line: 239, column: 6, scope: !1224)
!1266 = !DILocation(line: 240, column: 3, scope: !1261)
!1267 = !DILocation(line: 242, column: 15, scope: !1224)
!1268 = !DILocation(line: 242, column: 2, scope: !1224)
!1269 = !DILocation(line: 243, column: 9, scope: !1224)
!1270 = !DILocation(line: 244, column: 1, scope: !1224)
!1271 = distinct !DISubprogram(name: "get_last_split", scope: !868, file: !868, line: 40, type: !1225, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !899)
!1272 = !DILocalVariable(name: "server", arg: 1, scope: !1271, file: !868, line: 40, type: !231)
!1273 = !DILocation(line: 40, column: 43, scope: !1271)
!1274 = !DILocalVariable(name: "tmp", scope: !1271, file: !868, line: 42, type: !397)
!1275 = !DILocation(line: 42, column: 10, scope: !1271)
!1276 = !DILocalVariable(name: "last", scope: !1271, file: !868, line: 43, type: !481)
!1277 = !DILocation(line: 43, column: 9, scope: !1271)
!1278 = !DILocation(line: 45, column: 14, scope: !1271)
!1279 = !DILocation(line: 46, column: 13, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1271, file: !868, line: 46, column: 2)
!1281 = !DILocation(line: 46, column: 21, scope: !1280)
!1282 = !DILocation(line: 46, column: 11, scope: !1280)
!1283 = !DILocation(line: 46, column: 7, scope: !1280)
!1284 = !DILocation(line: 46, column: 36, scope: !1285)
!1285 = !DILexicalBlockFile(scope: !1286, file: !868, discriminator: 1)
!1286 = distinct !DILexicalBlock(scope: !1280, file: !868, line: 46, column: 2)
!1287 = !DILocation(line: 46, column: 40, scope: !1285)
!1288 = !DILocation(line: 46, column: 2, scope: !1285)
!1289 = !DILocalVariable(name: "rec", scope: !1290, file: !868, line: 47, type: !875)
!1290 = distinct !DILexicalBlock(scope: !1286, file: !868, line: 46, column: 65)
!1291 = !DILocation(line: 47, column: 24, scope: !1290)
!1292 = !DILocation(line: 47, column: 30, scope: !1290)
!1293 = !DILocation(line: 47, column: 35, scope: !1290)
!1294 = !DILocation(line: 49, column: 7, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1290, file: !868, line: 49, column: 7)
!1296 = !DILocation(line: 49, column: 12, scope: !1295)
!1297 = !DILocation(line: 49, column: 19, scope: !1295)
!1298 = !DILocation(line: 49, column: 17, scope: !1295)
!1299 = !DILocation(line: 49, column: 7, scope: !1290)
!1300 = !DILocation(line: 49, column: 32, scope: !1301)
!1301 = !DILexicalBlockFile(scope: !1295, file: !868, discriminator: 1)
!1302 = !DILocation(line: 49, column: 37, scope: !1301)
!1303 = !DILocation(line: 49, column: 30, scope: !1301)
!1304 = !DILocation(line: 49, column: 25, scope: !1301)
!1305 = !DILocation(line: 50, column: 2, scope: !1290)
!1306 = !DILocation(line: 46, column: 54, scope: !1307)
!1307 = !DILexicalBlockFile(scope: !1286, file: !868, discriminator: 2)
!1308 = !DILocation(line: 46, column: 59, scope: !1307)
!1309 = !DILocation(line: 46, column: 52, scope: !1307)
!1310 = !DILocation(line: 46, column: 2, scope: !1307)
!1311 = distinct !{!1311, !1312}
!1312 = !DILocation(line: 46, column: 2, scope: !1271)
!1313 = !DILocation(line: 52, column: 9, scope: !1271)
!1314 = !DILocation(line: 52, column: 2, scope: !1271)
!1315 = distinct !DISubprogram(name: "print_splits", scope: !868, file: !868, line: 202, type: !1316, isLocal: true, isDefinition: true, scopeLine: 203, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !899)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{null, !231, !623}
!1318 = !DILocalVariable(name: "server", arg: 1, scope: !1315, file: !868, line: 202, type: !231)
!1319 = !DILocation(line: 202, column: 42, scope: !1315)
!1320 = !DILocalVariable(name: "filter_channel", arg: 2, scope: !1315, file: !868, line: 202, type: !623)
!1321 = !DILocation(line: 202, column: 62, scope: !1315)
!1322 = !DILocalVariable(name: "temp", scope: !1315, file: !868, line: 204, type: !1323)
!1323 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEMP_SPLIT_REC", file: !868, line: 65, baseType: !1324)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !868, line: 61, size: 192, align: 64, elements: !1325)
!1325 = !{!1326, !1327, !1328}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "server_rec", scope: !1324, file: !868, line: 62, baseType: !231, size: 64, align: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "servers", scope: !1324, file: !868, line: 63, baseType: !397, size: 64, align: 64, offset: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !1324, file: !868, line: 64, baseType: !397, size: 64, align: 64, offset: 128)
!1329 = !DILocation(line: 204, column: 17, scope: !1315)
!1330 = !DILocalVariable(name: "servers", scope: !1315, file: !868, line: 205, type: !397)
!1331 = !DILocation(line: 205, column: 10, scope: !1315)
!1332 = !DILocation(line: 207, column: 18, scope: !1315)
!1333 = !DILocation(line: 209, column: 25, scope: !1315)
!1334 = !DILocation(line: 209, column: 33, scope: !1315)
!1335 = !DILocation(line: 209, column: 12, scope: !1315)
!1336 = !DILocation(line: 209, column: 10, scope: !1315)
!1337 = !DILocation(line: 210, column: 2, scope: !1315)
!1338 = !DILocation(line: 210, column: 9, scope: !1339)
!1339 = !DILexicalBlockFile(scope: !1315, file: !868, discriminator: 1)
!1340 = !DILocation(line: 210, column: 17, scope: !1339)
!1341 = !DILocation(line: 210, column: 2, scope: !1339)
!1342 = !DILocalVariable(name: "sserver", scope: !1343, file: !868, line: 211, type: !875)
!1343 = distinct !DILexicalBlock(scope: !1315, file: !868, line: 210, column: 25)
!1344 = !DILocation(line: 211, column: 24, scope: !1343)
!1345 = !DILocation(line: 211, column: 34, scope: !1343)
!1346 = !DILocation(line: 211, column: 43, scope: !1343)
!1347 = !DILocation(line: 215, column: 51, scope: !1343)
!1348 = !DILocation(line: 215, column: 60, scope: !1343)
!1349 = !DILocation(line: 215, column: 32, scope: !1343)
!1350 = !DILocation(line: 215, column: 22, scope: !1343)
!1351 = !DILocation(line: 215, column: 30, scope: !1343)
!1352 = !DILocation(line: 216, column: 35, scope: !1343)
!1353 = !DILocation(line: 216, column: 22, scope: !1343)
!1354 = !DILocation(line: 216, column: 33, scope: !1343)
!1355 = !DILocation(line: 217, column: 8, scope: !1343)
!1356 = !DILocation(line: 217, column: 17, scope: !1343)
!1357 = !DILocation(line: 219, column: 24, scope: !1343)
!1358 = !DILocation(line: 219, column: 32, scope: !1343)
!1359 = !DILocation(line: 220, column: 38, scope: !1343)
!1360 = !DILocation(line: 219, column: 3, scope: !1343)
!1361 = !DILocation(line: 221, column: 23, scope: !1343)
!1362 = !DILocation(line: 221, column: 38, scope: !1343)
!1363 = !DILocation(line: 221, column: 3, scope: !1343)
!1364 = !DILocation(line: 223, column: 24, scope: !1343)
!1365 = !DILocation(line: 223, column: 3, scope: !1343)
!1366 = !DILocation(line: 225, column: 21, scope: !1343)
!1367 = !DILocation(line: 225, column: 3, scope: !1343)
!1368 = !DILocation(line: 226, column: 21, scope: !1343)
!1369 = !DILocation(line: 226, column: 3, scope: !1343)
!1370 = !DILocation(line: 210, column: 2, scope: !1371)
!1371 = !DILexicalBlockFile(scope: !1315, file: !868, discriminator: 2)
!1372 = distinct !{!1372, !1337}
!1373 = !DILocation(line: 229, column: 18, scope: !1315)
!1374 = !DILocation(line: 230, column: 1, scope: !1315)
!1375 = distinct !DISubprogram(name: "get_source_servers", scope: !868, file: !868, line: 67, type: !1376, isLocal: true, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !899)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!397, !623, !1378}
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64, align: 64)
!1379 = !DILocalVariable(name: "server", arg: 1, scope: !1375, file: !868, line: 67, type: !623)
!1380 = !DILocation(line: 67, column: 47, scope: !1375)
!1381 = !DILocalVariable(name: "servers", arg: 2, scope: !1375, file: !868, line: 67, type: !1378)
!1382 = !DILocation(line: 67, column: 64, scope: !1375)
!1383 = !DILocalVariable(name: "list", scope: !1375, file: !868, line: 69, type: !397)
!1384 = !DILocation(line: 69, column: 10, scope: !1375)
!1385 = !DILocalVariable(name: "next", scope: !1375, file: !868, line: 69, type: !397)
!1386 = !DILocation(line: 69, column: 17, scope: !1375)
!1387 = !DILocalVariable(name: "tmp", scope: !1375, file: !868, line: 69, type: !397)
!1388 = !DILocation(line: 69, column: 24, scope: !1375)
!1389 = !DILocation(line: 71, column: 7, scope: !1375)
!1390 = !DILocation(line: 72, column: 14, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1375, file: !868, line: 72, column: 2)
!1392 = !DILocation(line: 72, column: 13, scope: !1391)
!1393 = !DILocation(line: 72, column: 11, scope: !1391)
!1394 = !DILocation(line: 72, column: 7, scope: !1391)
!1395 = !DILocation(line: 72, column: 23, scope: !1396)
!1396 = !DILexicalBlockFile(scope: !1397, file: !868, discriminator: 1)
!1397 = distinct !DILexicalBlock(scope: !1391, file: !868, line: 72, column: 2)
!1398 = !DILocation(line: 72, column: 27, scope: !1396)
!1399 = !DILocation(line: 72, column: 2, scope: !1396)
!1400 = !DILocalVariable(name: "rec", scope: !1401, file: !868, line: 73, type: !875)
!1401 = distinct !DILexicalBlock(scope: !1397, file: !868, line: 72, column: 47)
!1402 = !DILocation(line: 73, column: 24, scope: !1401)
!1403 = !DILocation(line: 73, column: 30, scope: !1401)
!1404 = !DILocation(line: 73, column: 35, scope: !1401)
!1405 = !DILocation(line: 74, column: 10, scope: !1401)
!1406 = !DILocation(line: 74, column: 15, scope: !1401)
!1407 = !DILocation(line: 74, column: 8, scope: !1401)
!1408 = !DILocation(line: 76, column: 26, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1401, file: !868, line: 76, column: 7)
!1410 = !DILocation(line: 76, column: 31, scope: !1409)
!1411 = !DILocation(line: 76, column: 39, scope: !1409)
!1412 = !DILocation(line: 76, column: 7, scope: !1409)
!1413 = !DILocation(line: 76, column: 47, scope: !1409)
!1414 = !DILocation(line: 76, column: 7, scope: !1401)
!1415 = !DILocation(line: 77, column: 4, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1409, file: !868, line: 76, column: 53)
!1417 = !DILocation(line: 77, column: 9, scope: !1416)
!1418 = !DILocation(line: 77, column: 16, scope: !1416)
!1419 = !DILocation(line: 78, column: 26, scope: !1416)
!1420 = !DILocation(line: 78, column: 32, scope: !1416)
!1421 = !DILocation(line: 78, column: 11, scope: !1416)
!1422 = !DILocation(line: 78, column: 9, scope: !1416)
!1423 = !DILocation(line: 79, column: 31, scope: !1416)
!1424 = !DILocation(line: 79, column: 30, scope: !1416)
!1425 = !DILocation(line: 79, column: 40, scope: !1416)
!1426 = !DILocation(line: 79, column: 15, scope: !1416)
!1427 = !DILocation(line: 79, column: 5, scope: !1416)
!1428 = !DILocation(line: 79, column: 13, scope: !1416)
!1429 = !DILocation(line: 80, column: 3, scope: !1416)
!1430 = !DILocation(line: 81, column: 2, scope: !1401)
!1431 = !DILocation(line: 72, column: 41, scope: !1432)
!1432 = !DILexicalBlockFile(scope: !1397, file: !868, discriminator: 2)
!1433 = !DILocation(line: 72, column: 39, scope: !1432)
!1434 = !DILocation(line: 72, column: 2, scope: !1432)
!1435 = distinct !{!1435, !1436}
!1436 = !DILocation(line: 72, column: 2, scope: !1375)
!1437 = !DILocation(line: 83, column: 9, scope: !1375)
!1438 = !DILocation(line: 83, column: 2, scope: !1375)
!1439 = distinct !DISubprogram(name: "get_server_splits", scope: !868, file: !868, line: 101, type: !1440, isLocal: true, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !899)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{null, !221, !1442, !1452}
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64, align: 64)
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "NETSPLIT_REC", file: !877, line: 24, baseType: !1444)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !877, line: 15, size: 384, align: 64, elements: !1445)
!1445 = !{!1446, !1447, !1448, !1449, !1450, !1451}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !1444, file: !877, line: 16, baseType: !875, size: 64, align: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !1444, file: !877, line: 18, baseType: !251, size: 64, align: 64, offset: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1444, file: !877, line: 19, baseType: !251, size: 64, align: 64, offset: 128)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !1444, file: !877, line: 20, baseType: !397, size: 64, align: 64, offset: 192)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1444, file: !877, line: 22, baseType: !313, size: 1, align: 32, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !1444, file: !877, line: 23, baseType: !481, size: 64, align: 64, offset: 320)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64, align: 64)
!1453 = !DILocalVariable(name: "key", arg: 1, scope: !1439, file: !868, line: 101, type: !221)
!1454 = !DILocation(line: 101, column: 37, scope: !1439)
!1455 = !DILocalVariable(name: "split", arg: 2, scope: !1439, file: !868, line: 101, type: !1442)
!1456 = !DILocation(line: 101, column: 56, scope: !1439)
!1457 = !DILocalVariable(name: "rec", arg: 3, scope: !1439, file: !868, line: 102, type: !1452)
!1458 = !DILocation(line: 102, column: 26, scope: !1439)
!1459 = !DILocalVariable(name: "chanrec", scope: !1439, file: !868, line: 104, type: !866)
!1460 = !DILocation(line: 104, column: 23, scope: !1439)
!1461 = !DILocalVariable(name: "tmp", scope: !1439, file: !868, line: 105, type: !397)
!1462 = !DILocation(line: 105, column: 10, scope: !1439)
!1463 = !DILocation(line: 107, column: 6, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1439, file: !868, line: 107, column: 6)
!1465 = !DILocation(line: 107, column: 13, scope: !1464)
!1466 = !DILocation(line: 107, column: 21, scope: !1464)
!1467 = !DILocation(line: 108, column: 19, scope: !1464)
!1468 = !DILocation(line: 108, column: 24, scope: !1464)
!1469 = !DILocation(line: 108, column: 33, scope: !1464)
!1470 = !DILocation(line: 108, column: 40, scope: !1464)
!1471 = !DILocation(line: 108, column: 6, scope: !1464)
!1472 = !DILocation(line: 108, column: 48, scope: !1464)
!1473 = !DILocation(line: 107, column: 6, scope: !1474)
!1474 = !DILexicalBlockFile(scope: !1439, file: !868, discriminator: 1)
!1475 = !DILocation(line: 109, column: 3, scope: !1464)
!1476 = !DILocation(line: 111, column: 2, scope: !1439)
!1477 = !DILocation(line: 111, column: 9, scope: !1439)
!1478 = !DILocation(line: 111, column: 17, scope: !1439)
!1479 = !DILocation(line: 112, column: 13, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1439, file: !868, line: 112, column: 2)
!1481 = !DILocation(line: 112, column: 20, scope: !1480)
!1482 = !DILocation(line: 112, column: 11, scope: !1480)
!1483 = !DILocation(line: 112, column: 7, scope: !1480)
!1484 = !DILocation(line: 112, column: 30, scope: !1485)
!1485 = !DILexicalBlockFile(scope: !1486, file: !868, discriminator: 1)
!1486 = distinct !DILexicalBlock(scope: !1480, file: !868, line: 112, column: 2)
!1487 = !DILocation(line: 112, column: 34, scope: !1485)
!1488 = !DILocation(line: 112, column: 2, scope: !1485)
!1489 = !DILocalVariable(name: "splitchan", scope: !1490, file: !868, line: 113, type: !1491)
!1490 = distinct !DILexicalBlock(scope: !1486, file: !868, line: 112, column: 59)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64, align: 64)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "NETSPLIT_CHAN_REC", file: !877, line: 32, baseType: !1493)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !877, line: 26, size: 192, align: 64, elements: !1494)
!1494 = !{!1495, !1496, !1497, !1498, !1499}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1493, file: !877, line: 27, baseType: !251, size: 64, align: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1493, file: !877, line: 28, baseType: !313, size: 1, align: 32, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !1493, file: !877, line: 29, baseType: !313, size: 1, align: 32, offset: 65, flags: DIFlagBitField, extraData: i64 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !1493, file: !877, line: 30, baseType: !313, size: 1, align: 32, offset: 66, flags: DIFlagBitField, extraData: i64 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !1493, file: !877, line: 31, baseType: !709, size: 64, align: 8, offset: 72)
!1500 = !DILocation(line: 113, column: 22, scope: !1490)
!1501 = !DILocation(line: 113, column: 34, scope: !1490)
!1502 = !DILocation(line: 113, column: 39, scope: !1490)
!1503 = !DILocation(line: 115, column: 54, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1490, file: !868, line: 115, column: 7)
!1505 = !DILocation(line: 115, column: 59, scope: !1504)
!1506 = !DILocation(line: 115, column: 36, scope: !1504)
!1507 = !DILocation(line: 115, column: 21, scope: !1504)
!1508 = !DILocation(line: 115, column: 33, scope: !1504)
!1509 = !DILocation(line: 115, column: 40, scope: !1504)
!1510 = !DILocation(line: 116, column: 6, scope: !1504)
!1511 = !DILocation(line: 116, column: 13, scope: !1504)
!1512 = !DILocation(line: 116, column: 22, scope: !1504)
!1513 = !DILocation(line: 116, column: 33, scope: !1504)
!1514 = !DILocation(line: 115, column: 7, scope: !1515)
!1515 = !DILexicalBlockFile(scope: !1504, file: !868, discriminator: 1)
!1516 = !DILocation(line: 115, column: 7, scope: !1504)
!1517 = !DILocation(line: 115, column: 7, scope: !1490)
!1518 = !DILocation(line: 118, column: 4, scope: !1504)
!1519 = !DILocation(line: 120, column: 29, scope: !1490)
!1520 = !DILocation(line: 120, column: 34, scope: !1490)
!1521 = !DILocation(line: 120, column: 45, scope: !1490)
!1522 = !DILocation(line: 120, column: 13, scope: !1490)
!1523 = !DILocation(line: 120, column: 11, scope: !1490)
!1524 = !DILocation(line: 121, column: 7, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1490, file: !868, line: 121, column: 7)
!1526 = !DILocation(line: 121, column: 15, scope: !1525)
!1527 = !DILocation(line: 121, column: 7, scope: !1490)
!1528 = !DILocation(line: 122, column: 39, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1525, file: !868, line: 121, column: 23)
!1530 = !DILocation(line: 122, column: 15, scope: !1529)
!1531 = !DILocation(line: 122, column: 12, scope: !1529)
!1532 = !DILocation(line: 123, column: 20, scope: !1529)
!1533 = !DILocation(line: 123, column: 31, scope: !1529)
!1534 = !DILocation(line: 123, column: 4, scope: !1529)
!1535 = !DILocation(line: 123, column: 13, scope: !1529)
!1536 = !DILocation(line: 123, column: 18, scope: !1529)
!1537 = !DILocation(line: 124, column: 21, scope: !1529)
!1538 = !DILocation(line: 124, column: 4, scope: !1529)
!1539 = !DILocation(line: 124, column: 13, scope: !1529)
!1540 = !DILocation(line: 124, column: 19, scope: !1529)
!1541 = !DILocation(line: 126, column: 35, scope: !1529)
!1542 = !DILocation(line: 126, column: 40, scope: !1529)
!1543 = !DILocation(line: 126, column: 50, scope: !1529)
!1544 = !DILocation(line: 126, column: 20, scope: !1529)
!1545 = !DILocation(line: 126, column: 4, scope: !1529)
!1546 = !DILocation(line: 126, column: 9, scope: !1529)
!1547 = !DILocation(line: 126, column: 18, scope: !1529)
!1548 = !DILocation(line: 127, column: 3, scope: !1529)
!1549 = !DILocation(line: 129, column: 3, scope: !1490)
!1550 = !DILocation(line: 129, column: 10, scope: !1490)
!1551 = !DILocation(line: 129, column: 18, scope: !1490)
!1552 = !DILocation(line: 129, column: 24, scope: !1490)
!1553 = !DILocation(line: 130, column: 3, scope: !1490)
!1554 = !DILocation(line: 130, column: 12, scope: !1490)
!1555 = !DILocation(line: 130, column: 22, scope: !1490)
!1556 = !DILocation(line: 131, column: 7, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1490, file: !868, line: 131, column: 7)
!1558 = !DILocation(line: 131, column: 37, scope: !1557)
!1559 = !DILocation(line: 131, column: 42, scope: !1557)
!1560 = !DILocation(line: 132, column: 7, scope: !1557)
!1561 = !DILocation(line: 132, column: 16, scope: !1557)
!1562 = !DILocation(line: 132, column: 30, scope: !1557)
!1563 = !DILocation(line: 132, column: 27, scope: !1557)
!1564 = !DILocation(line: 131, column: 7, scope: !1565)
!1565 = !DILexicalBlockFile(scope: !1490, file: !868, discriminator: 1)
!1566 = !DILocation(line: 133, column: 8, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !868, line: 133, column: 8)
!1568 = distinct !DILexicalBlock(scope: !1557, file: !868, line: 132, column: 61)
!1569 = !DILocation(line: 133, column: 19, scope: !1567)
!1570 = !DILocation(line: 133, column: 8, scope: !1568)
!1571 = !DILocation(line: 134, column: 31, scope: !1567)
!1572 = !DILocation(line: 134, column: 40, scope: !1567)
!1573 = !DILocation(line: 134, column: 5, scope: !1567)
!1574 = !DILocation(line: 135, column: 13, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1567, file: !868, line: 135, column: 13)
!1576 = !DILocation(line: 135, column: 24, scope: !1575)
!1577 = !DILocation(line: 135, column: 13, scope: !1567)
!1578 = !DILocation(line: 136, column: 31, scope: !1575)
!1579 = !DILocation(line: 136, column: 40, scope: !1575)
!1580 = !DILocation(line: 136, column: 5, scope: !1575)
!1581 = !DILocation(line: 137, column: 27, scope: !1568)
!1582 = !DILocation(line: 137, column: 36, scope: !1568)
!1583 = !DILocation(line: 137, column: 51, scope: !1568)
!1584 = !DILocation(line: 137, column: 58, scope: !1568)
!1585 = !DILocation(line: 137, column: 4, scope: !1568)
!1586 = !DILocation(line: 139, column: 8, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1568, file: !868, line: 139, column: 8)
!1588 = !DILocation(line: 139, column: 17, scope: !1587)
!1589 = !DILocation(line: 139, column: 31, scope: !1587)
!1590 = !DILocation(line: 139, column: 28, scope: !1587)
!1591 = !DILocation(line: 139, column: 8, scope: !1568)
!1592 = !DILocation(line: 140, column: 55, scope: !1587)
!1593 = !DILocation(line: 140, column: 64, scope: !1587)
!1594 = !DILocation(line: 140, column: 71, scope: !1587)
!1595 = !DILocation(line: 140, column: 33, scope: !1587)
!1596 = !DILocation(line: 140, column: 42, scope: !1587)
!1597 = !DILocation(line: 140, column: 53, scope: !1587)
!1598 = !DILocation(line: 141, column: 3, scope: !1568)
!1599 = !DILocation(line: 142, column: 2, scope: !1490)
!1600 = !DILocation(line: 112, column: 48, scope: !1601)
!1601 = !DILexicalBlockFile(scope: !1486, file: !868, discriminator: 2)
!1602 = !DILocation(line: 112, column: 53, scope: !1601)
!1603 = !DILocation(line: 112, column: 46, scope: !1601)
!1604 = !DILocation(line: 112, column: 2, scope: !1601)
!1605 = distinct !{!1605, !1606}
!1606 = !DILocation(line: 112, column: 2, scope: !1439)
!1607 = !DILocation(line: 143, column: 1, scope: !1439)
!1608 = distinct !DISubprogram(name: "print_server_splits", scope: !868, file: !868, line: 145, type: !1609, isLocal: true, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !899)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{null, !231, !1452, !623}
!1611 = !DILocalVariable(name: "server", arg: 1, scope: !1608, file: !868, line: 145, type: !231)
!1612 = !DILocation(line: 145, column: 49, scope: !1608)
!1613 = !DILocalVariable(name: "rec", arg: 2, scope: !1608, file: !868, line: 145, type: !1452)
!1614 = !DILocation(line: 145, column: 73, scope: !1608)
!1615 = !DILocalVariable(name: "filter_channel", arg: 3, scope: !1608, file: !868, line: 145, type: !623)
!1616 = !DILocation(line: 145, column: 90, scope: !1608)
!1617 = !DILocalVariable(name: "destservers", scope: !1608, file: !868, line: 147, type: !436)
!1618 = !DILocation(line: 147, column: 11, scope: !1608)
!1619 = !DILocalVariable(name: "sourceserver", scope: !1608, file: !868, line: 148, type: !251)
!1620 = !DILocation(line: 148, column: 8, scope: !1608)
!1621 = !DILocalVariable(name: "tmp", scope: !1608, file: !868, line: 149, type: !397)
!1622 = !DILocation(line: 149, column: 10, scope: !1608)
!1623 = !DILocation(line: 151, column: 2, scope: !1608)
!1624 = distinct !{!1624, !1623}
!1625 = !DILocation(line: 151, column: 10, scope: !1626)
!1626 = !DILexicalBlockFile(scope: !1627, file: !868, discriminator: 1)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !868, line: 151, column: 10)
!1628 = distinct !DILexicalBlock(scope: !1608, file: !868, line: 151, column: 4)
!1629 = !DILocation(line: 151, column: 15, scope: !1626)
!1630 = !DILocation(line: 151, column: 23, scope: !1626)
!1631 = !DILocation(line: 151, column: 5, scope: !1632)
!1632 = !DILexicalBlockFile(scope: !1633, file: !868, discriminator: 2)
!1633 = distinct !DILexicalBlock(scope: !1627, file: !868, line: 151, column: 3)
!1634 = !DILocation(line: 151, column: 14, scope: !1635)
!1635 = !DILexicalBlockFile(scope: !1636, file: !868, discriminator: 3)
!1636 = distinct !DILexicalBlock(scope: !1627, file: !868, line: 151, column: 12)
!1637 = !DILocation(line: 151, column: 107, scope: !1635)
!1638 = !DILocation(line: 151, column: 118, scope: !1639)
!1639 = !DILexicalBlockFile(scope: !1628, file: !868, discriminator: 4)
!1640 = !DILocation(line: 153, column: 16, scope: !1608)
!1641 = !DILocation(line: 153, column: 14, scope: !1608)
!1642 = !DILocation(line: 154, column: 13, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1608, file: !868, line: 154, column: 2)
!1644 = !DILocation(line: 154, column: 18, scope: !1643)
!1645 = !DILocation(line: 154, column: 11, scope: !1643)
!1646 = !DILocation(line: 154, column: 7, scope: !1643)
!1647 = !DILocation(line: 154, column: 27, scope: !1648)
!1648 = !DILexicalBlockFile(scope: !1649, file: !868, discriminator: 1)
!1649 = distinct !DILexicalBlock(scope: !1643, file: !868, line: 154, column: 2)
!1650 = !DILocation(line: 154, column: 31, scope: !1648)
!1651 = !DILocation(line: 154, column: 2, scope: !1648)
!1652 = !DILocalVariable(name: "rec", scope: !1653, file: !868, line: 155, type: !875)
!1653 = distinct !DILexicalBlock(scope: !1649, file: !868, line: 154, column: 56)
!1654 = !DILocation(line: 155, column: 24, scope: !1653)
!1655 = !DILocation(line: 155, column: 30, scope: !1653)
!1656 = !DILocation(line: 155, column: 35, scope: !1653)
!1657 = !DILocation(line: 157, column: 7, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1653, file: !868, line: 157, column: 7)
!1659 = !DILocation(line: 157, column: 12, scope: !1658)
!1660 = !DILocation(line: 157, column: 19, scope: !1658)
!1661 = !DILocation(line: 157, column: 7, scope: !1653)
!1662 = !DILocation(line: 158, column: 27, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1658, file: !868, line: 157, column: 24)
!1664 = !DILocation(line: 159, column: 8, scope: !1663)
!1665 = !DILocation(line: 159, column: 13, scope: !1663)
!1666 = !DILocation(line: 158, column: 4, scope: !1663)
!1667 = !DILocation(line: 160, column: 3, scope: !1663)
!1668 = !DILocation(line: 161, column: 2, scope: !1653)
!1669 = !DILocation(line: 154, column: 45, scope: !1670)
!1670 = !DILexicalBlockFile(scope: !1649, file: !868, discriminator: 2)
!1671 = !DILocation(line: 154, column: 50, scope: !1670)
!1672 = !DILocation(line: 154, column: 43, scope: !1670)
!1673 = !DILocation(line: 154, column: 2, scope: !1670)
!1674 = distinct !{!1674, !1675}
!1675 = !DILocation(line: 154, column: 2, scope: !1608)
!1676 = !DILocation(line: 162, column: 6, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1608, file: !868, line: 162, column: 6)
!1678 = !DILocation(line: 162, column: 19, scope: !1677)
!1679 = !DILocation(line: 162, column: 23, scope: !1677)
!1680 = !DILocation(line: 162, column: 6, scope: !1608)
!1681 = !DILocation(line: 164, column: 17, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1677, file: !868, line: 162, column: 29)
!1683 = !DILocation(line: 164, column: 3, scope: !1682)
!1684 = !DILocation(line: 165, column: 3, scope: !1682)
!1685 = !DILocation(line: 167, column: 20, scope: !1608)
!1686 = !DILocation(line: 167, column: 33, scope: !1608)
!1687 = !DILocation(line: 167, column: 46, scope: !1608)
!1688 = !DILocation(line: 167, column: 49, scope: !1608)
!1689 = !DILocation(line: 167, column: 2, scope: !1608)
!1690 = !DILocation(line: 169, column: 43, scope: !1608)
!1691 = !DILocation(line: 169, column: 48, scope: !1608)
!1692 = !DILocation(line: 169, column: 57, scope: !1608)
!1693 = !DILocation(line: 169, column: 18, scope: !1608)
!1694 = !DILocation(line: 169, column: 65, scope: !1608)
!1695 = !DILocation(line: 169, column: 15, scope: !1608)
!1696 = !DILocation(line: 170, column: 13, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1608, file: !868, line: 170, column: 2)
!1698 = !DILocation(line: 170, column: 18, scope: !1697)
!1699 = !DILocation(line: 170, column: 11, scope: !1697)
!1700 = !DILocation(line: 170, column: 7, scope: !1697)
!1701 = !DILocation(line: 170, column: 28, scope: !1702)
!1702 = !DILexicalBlockFile(scope: !1703, file: !868, discriminator: 1)
!1703 = distinct !DILexicalBlock(scope: !1697, file: !868, line: 170, column: 2)
!1704 = !DILocation(line: 170, column: 32, scope: !1702)
!1705 = !DILocation(line: 170, column: 2, scope: !1702)
!1706 = !DILocalVariable(name: "chan", scope: !1707, file: !868, line: 171, type: !866)
!1707 = distinct !DILexicalBlock(scope: !1703, file: !868, line: 170, column: 57)
!1708 = !DILocation(line: 171, column: 24, scope: !1707)
!1709 = !DILocation(line: 171, column: 31, scope: !1707)
!1710 = !DILocation(line: 171, column: 36, scope: !1707)
!1711 = !DILocation(line: 173, column: 7, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1707, file: !868, line: 173, column: 7)
!1713 = !DILocation(line: 173, column: 22, scope: !1712)
!1714 = !DILocation(line: 173, column: 29, scope: !1712)
!1715 = !DILocation(line: 174, column: 18, scope: !1712)
!1716 = !DILocation(line: 174, column: 24, scope: !1712)
!1717 = !DILocation(line: 174, column: 30, scope: !1712)
!1718 = !DILocation(line: 174, column: 7, scope: !1712)
!1719 = !DILocation(line: 174, column: 46, scope: !1712)
!1720 = !DILocation(line: 173, column: 7, scope: !1721)
!1721 = !DILexicalBlockFile(scope: !1707, file: !868, discriminator: 1)
!1722 = !DILocation(line: 175, column: 4, scope: !1712)
!1723 = !DILocation(line: 177, column: 21, scope: !1707)
!1724 = !DILocation(line: 177, column: 27, scope: !1707)
!1725 = !DILocation(line: 177, column: 34, scope: !1707)
!1726 = !DILocation(line: 177, column: 40, scope: !1707)
!1727 = !DILocation(line: 177, column: 47, scope: !1707)
!1728 = !DILocation(line: 177, column: 50, scope: !1707)
!1729 = !DILocation(line: 177, column: 3, scope: !1707)
!1730 = !DILocation(line: 179, column: 7, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1707, file: !868, line: 179, column: 7)
!1732 = !DILocation(line: 179, column: 26, scope: !1731)
!1733 = !DILocation(line: 179, column: 30, scope: !1731)
!1734 = !DILocation(line: 180, column: 7, scope: !1731)
!1735 = !DILocation(line: 180, column: 13, scope: !1731)
!1736 = !DILocation(line: 180, column: 26, scope: !1731)
!1737 = !DILocation(line: 180, column: 24, scope: !1731)
!1738 = !DILocation(line: 179, column: 7, scope: !1721)
!1739 = !DILocation(line: 181, column: 22, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1731, file: !868, line: 180, column: 46)
!1741 = !DILocation(line: 181, column: 28, scope: !1740)
!1742 = !DILocation(line: 181, column: 35, scope: !1740)
!1743 = !DILocation(line: 181, column: 41, scope: !1740)
!1744 = !DILocation(line: 181, column: 4, scope: !1740)
!1745 = !DILocation(line: 182, column: 40, scope: !1740)
!1746 = !DILocation(line: 182, column: 48, scope: !1740)
!1747 = !DILocation(line: 182, column: 54, scope: !1740)
!1748 = !DILocation(line: 182, column: 98, scope: !1740)
!1749 = !DILocation(line: 182, column: 112, scope: !1740)
!1750 = !DILocation(line: 182, column: 125, scope: !1740)
!1751 = !DILocation(line: 182, column: 130, scope: !1740)
!1752 = !DILocation(line: 182, column: 136, scope: !1740)
!1753 = !DILocation(line: 182, column: 143, scope: !1740)
!1754 = !DILocation(line: 182, column: 148, scope: !1740)
!1755 = !DILocation(line: 182, column: 154, scope: !1740)
!1756 = !DILocation(line: 182, column: 167, scope: !1740)
!1757 = !DILocation(line: 182, column: 165, scope: !1740)
!1758 = !DILocation(line: 182, column: 4, scope: !1740)
!1759 = !DILocation(line: 186, column: 3, scope: !1740)
!1760 = !DILocation(line: 187, column: 40, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1731, file: !868, line: 186, column: 10)
!1762 = !DILocation(line: 187, column: 48, scope: !1761)
!1763 = !DILocation(line: 187, column: 54, scope: !1761)
!1764 = !DILocation(line: 187, column: 93, scope: !1761)
!1765 = !DILocation(line: 187, column: 107, scope: !1761)
!1766 = !DILocation(line: 187, column: 120, scope: !1761)
!1767 = !DILocation(line: 187, column: 125, scope: !1761)
!1768 = !DILocation(line: 187, column: 131, scope: !1761)
!1769 = !DILocation(line: 187, column: 138, scope: !1761)
!1770 = !DILocation(line: 187, column: 4, scope: !1761)
!1771 = !DILocation(line: 191, column: 2, scope: !1707)
!1772 = !DILocation(line: 170, column: 46, scope: !1773)
!1773 = !DILexicalBlockFile(scope: !1703, file: !868, discriminator: 2)
!1774 = !DILocation(line: 170, column: 51, scope: !1773)
!1775 = !DILocation(line: 170, column: 44, scope: !1773)
!1776 = !DILocation(line: 170, column: 2, scope: !1773)
!1777 = distinct !{!1777, !1778}
!1778 = !DILocation(line: 170, column: 2, scope: !1608)
!1779 = !DILocation(line: 193, column: 16, scope: !1608)
!1780 = !DILocation(line: 193, column: 2, scope: !1608)
!1781 = !DILocation(line: 194, column: 1, scope: !1608)
!1782 = !DILocation(line: 194, column: 1, scope: !1783)
!1783 = !DILexicalBlockFile(scope: !1608, file: !868, discriminator: 1)
!1784 = distinct !DISubprogram(name: "temp_split_chan_free", scope: !868, file: !868, line: 196, type: !1785, isLocal: true, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !899)
!1785 = !DISubroutineType(types: !1786)
!1786 = !{null, !866}
!1787 = !DILocalVariable(name: "rec", arg: 1, scope: !1784, file: !868, line: 196, type: !866)
!1788 = !DILocation(line: 196, column: 55, scope: !1784)
!1789 = !DILocation(line: 198, column: 16, scope: !1784)
!1790 = !DILocation(line: 198, column: 21, scope: !1784)
!1791 = !DILocation(line: 198, column: 2, scope: !1784)
!1792 = !DILocation(line: 199, column: 9, scope: !1784)
!1793 = !DILocation(line: 199, column: 2, scope: !1784)
!1794 = !DILocation(line: 200, column: 1, scope: !1784)
!1795 = distinct !DISubprogram(name: "find_split_chan", scope: !868, file: !868, line: 86, type: !1796, isLocal: true, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !899)
!1796 = !DISubroutineType(types: !1797)
!1797 = !{!866, !1452, !623}
!1798 = !DILocalVariable(name: "rec", arg: 1, scope: !1795, file: !868, line: 86, type: !1452)
!1799 = !DILocation(line: 86, column: 61, scope: !1795)
!1800 = !DILocalVariable(name: "name", arg: 2, scope: !1795, file: !868, line: 87, type: !623)
!1801 = !DILocation(line: 87, column: 22, scope: !1795)
!1802 = !DILocalVariable(name: "tmp", scope: !1795, file: !868, line: 89, type: !397)
!1803 = !DILocation(line: 89, column: 10, scope: !1795)
!1804 = !DILocation(line: 91, column: 13, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1795, file: !868, line: 91, column: 2)
!1806 = !DILocation(line: 91, column: 18, scope: !1805)
!1807 = !DILocation(line: 91, column: 11, scope: !1805)
!1808 = !DILocation(line: 91, column: 7, scope: !1805)
!1809 = !DILocation(line: 91, column: 28, scope: !1810)
!1810 = !DILexicalBlockFile(scope: !1811, file: !868, discriminator: 1)
!1811 = distinct !DILexicalBlock(scope: !1805, file: !868, line: 91, column: 2)
!1812 = !DILocation(line: 91, column: 32, scope: !1810)
!1813 = !DILocation(line: 91, column: 2, scope: !1810)
!1814 = !DILocalVariable(name: "chanrec", scope: !1815, file: !868, line: 92, type: !866)
!1815 = distinct !DILexicalBlock(scope: !1811, file: !868, line: 91, column: 57)
!1816 = !DILocation(line: 92, column: 24, scope: !1815)
!1817 = !DILocation(line: 92, column: 34, scope: !1815)
!1818 = !DILocation(line: 92, column: 39, scope: !1815)
!1819 = !DILocation(line: 94, column: 26, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1815, file: !868, line: 94, column: 7)
!1821 = !DILocation(line: 94, column: 35, scope: !1820)
!1822 = !DILocation(line: 94, column: 41, scope: !1820)
!1823 = !DILocation(line: 94, column: 7, scope: !1820)
!1824 = !DILocation(line: 94, column: 47, scope: !1820)
!1825 = !DILocation(line: 94, column: 7, scope: !1815)
!1826 = !DILocation(line: 95, column: 11, scope: !1820)
!1827 = !DILocation(line: 95, column: 4, scope: !1820)
!1828 = !DILocation(line: 96, column: 2, scope: !1815)
!1829 = !DILocation(line: 91, column: 46, scope: !1830)
!1830 = !DILexicalBlockFile(scope: !1811, file: !868, discriminator: 2)
!1831 = !DILocation(line: 91, column: 51, scope: !1830)
!1832 = !DILocation(line: 91, column: 44, scope: !1830)
!1833 = !DILocation(line: 91, column: 2, scope: !1830)
!1834 = distinct !{!1834, !1835}
!1835 = !DILocation(line: 91, column: 2, scope: !1795)
!1836 = !DILocation(line: 98, column: 2, scope: !1795)
!1837 = !DILocation(line: 99, column: 1, scope: !1795)
!1838 = distinct !DISubprogram(name: "g_string_append_c_inline", scope: !438, file: !438, line: 161, type: !1839, isLocal: true, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !899)
!1839 = !DISubroutineType(types: !1840)
!1840 = !{!436, !436, !298}
!1841 = !DILocalVariable(name: "gstring", arg: 1, scope: !1838, file: !438, line: 161, type: !436)
!1842 = !DILocation(line: 161, column: 36, scope: !1838)
!1843 = !DILocalVariable(name: "c", arg: 2, scope: !1838, file: !438, line: 162, type: !298)
!1844 = !DILocation(line: 162, column: 33, scope: !1838)
!1845 = !DILocation(line: 164, column: 7, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1838, file: !438, line: 164, column: 7)
!1847 = !DILocation(line: 164, column: 16, scope: !1846)
!1848 = !DILocation(line: 164, column: 20, scope: !1846)
!1849 = !DILocation(line: 164, column: 26, scope: !1846)
!1850 = !DILocation(line: 164, column: 35, scope: !1846)
!1851 = !DILocation(line: 164, column: 24, scope: !1846)
!1852 = !DILocation(line: 164, column: 7, scope: !1838)
!1853 = !DILocation(line: 166, column: 38, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1846, file: !438, line: 165, column: 5)
!1855 = !DILocation(line: 166, column: 20, scope: !1854)
!1856 = !DILocation(line: 166, column: 29, scope: !1854)
!1857 = !DILocation(line: 166, column: 32, scope: !1854)
!1858 = !DILocation(line: 166, column: 7, scope: !1854)
!1859 = !DILocation(line: 166, column: 16, scope: !1854)
!1860 = !DILocation(line: 166, column: 36, scope: !1854)
!1861 = !DILocation(line: 167, column: 20, scope: !1854)
!1862 = !DILocation(line: 167, column: 29, scope: !1854)
!1863 = !DILocation(line: 167, column: 7, scope: !1854)
!1864 = !DILocation(line: 167, column: 16, scope: !1854)
!1865 = !DILocation(line: 167, column: 34, scope: !1854)
!1866 = !DILocation(line: 168, column: 5, scope: !1854)
!1867 = !DILocation(line: 170, column: 24, scope: !1846)
!1868 = !DILocation(line: 170, column: 37, scope: !1846)
!1869 = !DILocation(line: 170, column: 5, scope: !1846)
!1870 = !DILocation(line: 171, column: 10, scope: !1838)
!1871 = !DILocation(line: 171, column: 3, scope: !1838)
!1872 = distinct !DISubprogram(name: "split_get", scope: !868, file: !868, line: 311, type: !1873, isLocal: true, isDefinition: true, scopeLine: 312, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !899)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{null, !221, !1442, !1378}
!1875 = !DILocalVariable(name: "key", arg: 1, scope: !1872, file: !868, line: 311, type: !221)
!1876 = !DILocation(line: 311, column: 29, scope: !1872)
!1877 = !DILocalVariable(name: "rec", arg: 2, scope: !1872, file: !868, line: 311, type: !1442)
!1878 = !DILocation(line: 311, column: 48, scope: !1872)
!1879 = !DILocalVariable(name: "list", arg: 3, scope: !1872, file: !868, line: 311, type: !1378)
!1880 = !DILocation(line: 311, column: 62, scope: !1872)
!1881 = !DILocation(line: 313, column: 33, scope: !1872)
!1882 = !DILocation(line: 313, column: 32, scope: !1872)
!1883 = !DILocation(line: 313, column: 39, scope: !1872)
!1884 = !DILocation(line: 313, column: 10, scope: !1872)
!1885 = !DILocation(line: 313, column: 3, scope: !1872)
!1886 = !DILocation(line: 313, column: 8, scope: !1872)
!1887 = !DILocation(line: 315, column: 1, scope: !1872)
!1888 = distinct !DISubprogram(name: "split_print", scope: !868, file: !868, line: 317, type: !1889, isLocal: true, isDefinition: true, scopeLine: 318, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !899)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{null, !1442, !535}
!1891 = !DILocalVariable(name: "rec", arg: 1, scope: !1888, file: !868, line: 317, type: !1442)
!1892 = !DILocation(line: 317, column: 39, scope: !1888)
!1893 = !DILocalVariable(name: "server", arg: 2, scope: !1888, file: !868, line: 317, type: !535)
!1894 = !DILocation(line: 317, column: 56, scope: !1888)
!1895 = !DILocalVariable(name: "chan", scope: !1888, file: !868, line: 319, type: !1491)
!1896 = !DILocation(line: 319, column: 21, scope: !1888)
!1897 = !DILocalVariable(name: "chanstr", scope: !1888, file: !868, line: 320, type: !251)
!1898 = !DILocation(line: 320, column: 15, scope: !1888)
!1899 = !DILocation(line: 322, column: 9, scope: !1888)
!1900 = !DILocation(line: 322, column: 14, scope: !1888)
!1901 = !DILocation(line: 322, column: 24, scope: !1888)
!1902 = !DILocation(line: 322, column: 7, scope: !1888)
!1903 = !DILocation(line: 323, column: 12, scope: !1888)
!1904 = !DILocation(line: 323, column: 17, scope: !1888)
!1905 = !DILocation(line: 323, column: 12, scope: !1906)
!1906 = !DILexicalBlockFile(scope: !1888, file: !868, discriminator: 1)
!1907 = !DILocation(line: 324, column: 15, scope: !1888)
!1908 = !DILocation(line: 324, column: 21, scope: !1888)
!1909 = !DILocation(line: 324, column: 15, scope: !1906)
!1910 = !DILocation(line: 325, column: 9, scope: !1888)
!1911 = !DILocation(line: 325, column: 15, scope: !1888)
!1912 = !DILocation(line: 324, column: 15, scope: !1913)
!1913 = !DILexicalBlockFile(scope: !1888, file: !868, discriminator: 2)
!1914 = !DILocation(line: 324, column: 15, scope: !1915)
!1915 = !DILexicalBlockFile(scope: !1888, file: !868, discriminator: 3)
!1916 = !DILocation(line: 325, column: 34, scope: !1906)
!1917 = !DILocation(line: 325, column: 40, scope: !1906)
!1918 = !DILocation(line: 324, column: 3, scope: !1915)
!1919 = !DILocation(line: 323, column: 12, scope: !1913)
!1920 = !DILocation(line: 323, column: 12, scope: !1915)
!1921 = !DILocation(line: 323, column: 10, scope: !1915)
!1922 = !DILocation(line: 327, column: 38, scope: !1888)
!1923 = !DILocation(line: 327, column: 47, scope: !1888)
!1924 = !DILocation(line: 327, column: 52, scope: !1888)
!1925 = !DILocation(line: 327, column: 58, scope: !1888)
!1926 = !DILocation(line: 327, column: 67, scope: !1888)
!1927 = !DILocation(line: 327, column: 72, scope: !1888)
!1928 = !DILocation(line: 327, column: 80, scope: !1888)
!1929 = !DILocation(line: 327, column: 88, scope: !1888)
!1930 = !DILocation(line: 327, column: 93, scope: !1888)
!1931 = !DILocation(line: 327, column: 101, scope: !1888)
!1932 = !DILocation(line: 327, column: 2, scope: !1888)
!1933 = !DILocation(line: 331, column: 9, scope: !1888)
!1934 = !DILocation(line: 331, column: 2, scope: !1888)
!1935 = !DILocation(line: 332, column: 1, scope: !1888)
!1936 = distinct !DISubprogram(name: "split_equal", scope: !868, file: !868, line: 306, type: !1937, isLocal: true, isDefinition: true, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !899)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{!229, !1442, !1442}
!1939 = !DILocalVariable(name: "n1", arg: 1, scope: !1936, file: !868, line: 306, type: !1442)
!1940 = !DILocation(line: 306, column: 38, scope: !1936)
!1941 = !DILocalVariable(name: "n2", arg: 2, scope: !1936, file: !868, line: 306, type: !1442)
!1942 = !DILocation(line: 306, column: 56, scope: !1936)
!1943 = !DILocation(line: 308, column: 35, scope: !1936)
!1944 = !DILocation(line: 308, column: 39, scope: !1936)
!1945 = !DILocation(line: 308, column: 45, scope: !1936)
!1946 = !DILocation(line: 308, column: 49, scope: !1936)
!1947 = !DILocation(line: 308, column: 16, scope: !1936)
!1948 = !DILocation(line: 308, column: 9, scope: !1936)
