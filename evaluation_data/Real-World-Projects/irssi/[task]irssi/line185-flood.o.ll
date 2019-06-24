; ModuleID = './line185-flood.o.i'
source_filename = "./line185-flood.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GSList = type { i8*, %struct._GSList* }
%struct.MODULE_FILE_REC = type { %struct._MODULE_REC*, i8*, i8*, void ()*, %struct._GModule*, i8 }
%struct._MODULE_REC = type { i8*, %struct._GSList* }
%struct._GModule = type opaque
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
%struct._WI_ITEM_REC = type opaque
%struct._NICK_REC = type { i32, i32, i64, i8*, i8*, i8*, i32, i8, [8 x i8], i8*, %struct._NICK_REC* }
%struct._QUERY_REC = type opaque
%struct._REDIRECT_REC = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._GTimeVal = type { i64, i64 }
%struct._GHashTable = type opaque
%struct.modes_type = type { void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, i8 }
%struct._IRC_CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._IRC_SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)*, %struct._GSList*, i64, i32, i32 }
%struct.MODULE_SERVER_REC = type { %struct._GHashTable*, %struct._GSList*, i64 }
%struct.FLOOD_REC = type { i8*, %struct._GSList* }
%struct.FLOOD_ITEM_REC = type { i8*, i32, %struct._GSList* }

@.str = private unnamed_addr constant [10 x i8] c"irc/flood\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"flood\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"flood_timecheck\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"flood_max_msgs\00", align 1
@flood_tag = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"setup changed\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"server connected\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"server destroyed\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"irc\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"event privmsg\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"event notice\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"ctcp msg\00", align 1
@flood_timecheck = internal global i32 0, align 4
@flood_max_msgs = internal global i32 0, align 4
@servers = external global %struct._GSList*, align 8
@.str.11 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"IRC\00", align 1
@__func__.flood_hash_check_remove = private unnamed_addr constant [24 x i8] c"flood_hash_check_remove\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"key != NULL\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"flood != NULL\00", align 1
@__func__.flood_init_server = private unnamed_addr constant [18 x i8] c"flood_init_server\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"server != NULL\00", align 1
@__func__.flood_deinit_server = private unnamed_addr constant [20 x i8] c"flood_deinit_server\00", align 1
@__func__.flood_privmsg = private unnamed_addr constant [14 x i8] c"flood_privmsg\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@__func__.flood_newmsg = private unnamed_addr constant [13 x i8] c"flood_newmsg\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"nick != NULL\00", align 1
@__func__.flood_notice = private unnamed_addr constant [13 x i8] c"flood_notice\00", align 1
@__func__.flood_ctcp = private unnamed_addr constant [11 x i8] c"flood_ctcp\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"ACTION \00", align 1

; Function Attrs: nounwind uwtable
define void @irc_flood_init() #0 !dbg !748 {
  call void @settings_add_int_module(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i32 8), !dbg !750
  call void @settings_add_int_module(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32 4), !dbg !751
  store i32 -1, i32* @flood_tag, align 4, !dbg !752
  call void @read_settings(), !dbg !753
  call void @signal_add_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !754
  call void @signal_add_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @flood_init_server to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !755
  call void @signal_add_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @flood_deinit_server to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !756
  call void @autoignore_init(), !dbg !757
  call void @settings_check_module(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0)), !dbg !758
  %1 = call %struct.MODULE_FILE_REC* @module_register_full(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0)), !dbg !759
  ret void, !dbg !760
}

declare void @settings_add_int_module(i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @read_settings() #0 !dbg !761 {
  %1 = call i32 @settings_get_int(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0)), !dbg !762
  store i32 %1, i32* @flood_timecheck, align 4, !dbg !763
  %2 = call i32 @settings_get_int(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)), !dbg !764
  store i32 %2, i32* @flood_max_msgs, align 4, !dbg !765
  %3 = load i32, i32* @flood_timecheck, align 4, !dbg !766
  %4 = icmp sgt i32 %3, 0, !dbg !768
  br i1 %4, label %5, label %14, !dbg !769

; <label>:5:                                      ; preds = %0
  %6 = load i32, i32* @flood_max_msgs, align 4, !dbg !770
  %7 = icmp sgt i32 %6, 0, !dbg !772
  br i1 %7, label %8, label %14, !dbg !773

; <label>:8:                                      ; preds = %5
  %9 = load i32, i32* @flood_tag, align 4, !dbg !774
  %10 = icmp eq i32 %9, -1, !dbg !777
  br i1 %10, label %11, label %13, !dbg !778

; <label>:11:                                     ; preds = %8
  %12 = call i32 @g_timeout_add(i32 5000, i32 (i8*)* bitcast (i32 ()* @flood_timeout to i32 (i8*)*), i8* null), !dbg !779
  store i32 %12, i32* @flood_tag, align 4, !dbg !781
  call void @signal_add_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @flood_privmsg to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !782
  call void @signal_add_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @flood_notice to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !783
  call void @signal_add_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*)* @flood_ctcp to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !784
  br label %13, !dbg !785

; <label>:13:                                     ; preds = %11, %8
  br label %21, !dbg !786

; <label>:14:                                     ; preds = %5, %0
  %15 = load i32, i32* @flood_tag, align 4, !dbg !787
  %16 = icmp ne i32 %15, -1, !dbg !790
  br i1 %16, label %17, label %20, !dbg !787

; <label>:17:                                     ; preds = %14
  %18 = load i32, i32* @flood_tag, align 4, !dbg !791
  %19 = call i32 @g_source_remove(i32 %18), !dbg !793
  store i32 -1, i32* @flood_tag, align 4, !dbg !794
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @flood_privmsg to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !795
  call void @signal_remove_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @flood_notice to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !796
  call void @signal_remove_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*)* @flood_ctcp to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !797
  br label %20, !dbg !798

; <label>:20:                                     ; preds = %17, %14
  br label %21

; <label>:21:                                     ; preds = %20, %13
  ret void, !dbg !799
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @flood_init_server(%struct._IRC_SERVER_REC*) #0 !dbg !800 {
  %2 = alloca %struct._IRC_SERVER_REC*, align 8
  %3 = alloca %struct.MODULE_SERVER_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %2, metadata !803, metadata !804), !dbg !805
  call void @llvm.dbg.declare(metadata %struct.MODULE_SERVER_REC** %3, metadata !806, metadata !804), !dbg !807
  br label %4, !dbg !808, !llvm.loop !809

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !810
  %6 = icmp ne %struct._IRC_SERVER_REC* %5, null, !dbg !814
  br i1 %6, label %7, label %8, !dbg !810

; <label>:7:                                      ; preds = %4
  br label %9, !dbg !815

; <label>:8:                                      ; preds = %4
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.flood_init_server, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0)), !dbg !818
  br label %34, !dbg !821

; <label>:9:                                      ; preds = %7
  br label %10, !dbg !822

; <label>:10:                                     ; preds = %9
  %11 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !824
  %12 = bitcast %struct._IRC_SERVER_REC* %11 to i8*, !dbg !824
  %13 = call i8* @module_check_cast(i8* %12, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0)), !dbg !826
  %14 = bitcast i8* %13 to %struct._SERVER_REC*, !dbg !827
  %15 = bitcast %struct._SERVER_REC* %14 to i8*, !dbg !828
  %16 = call i8* @chat_protocol_check_cast(i8* %15, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0)), !dbg !829
  %17 = bitcast i8* %16 to %struct._IRC_SERVER_REC*, !dbg !831
  %18 = icmp ne %struct._IRC_SERVER_REC* %17, null, !dbg !831
  br i1 %18, label %19, label %20, !dbg !832

; <label>:19:                                     ; preds = %10
  br i1 false, label %21, label %22, !dbg !833

; <label>:20:                                     ; preds = %10
  br i1 false, label %22, label %21, !dbg !835

; <label>:21:                                     ; preds = %20, %19
  br label %34, !dbg !837

; <label>:22:                                     ; preds = %20, %19
  %23 = call noalias i8* @g_malloc0_n(i64 1, i64 24), !dbg !838
  %24 = bitcast i8* %23 to %struct.MODULE_SERVER_REC*, !dbg !839
  store %struct.MODULE_SERVER_REC* %24, %struct.MODULE_SERVER_REC** %3, align 8, !dbg !840
  %25 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !841
  %26 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %25, i32 0, i32 15, !dbg !842
  %27 = load %struct._GHashTable*, %struct._GHashTable** %26, align 8, !dbg !842
  %28 = load %struct.MODULE_SERVER_REC*, %struct.MODULE_SERVER_REC** %3, align 8, !dbg !843
  %29 = bitcast %struct.MODULE_SERVER_REC* %28 to i8*, !dbg !843
  %30 = call i32 @g_hash_table_insert(%struct._GHashTable* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* %29), !dbg !844
  %31 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_istr_hash, i32 (i8*, i8*)* @g_istr_equal), !dbg !845
  %32 = load %struct.MODULE_SERVER_REC*, %struct.MODULE_SERVER_REC** %3, align 8, !dbg !846
  %33 = getelementptr inbounds %struct.MODULE_SERVER_REC, %struct.MODULE_SERVER_REC* %32, i32 0, i32 0, !dbg !847
  store %struct._GHashTable* %31, %struct._GHashTable** %33, align 8, !dbg !848
  br label %34, !dbg !849

; <label>:34:                                     ; preds = %22, %21, %8
  ret void, !dbg !850
}

; Function Attrs: nounwind uwtable
define internal void @flood_deinit_server(%struct._IRC_SERVER_REC*) #0 !dbg !852 {
  %2 = alloca %struct._IRC_SERVER_REC*, align 8
  %3 = alloca %struct.MODULE_SERVER_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %2, metadata !853, metadata !804), !dbg !854
  call void @llvm.dbg.declare(metadata %struct.MODULE_SERVER_REC** %3, metadata !855, metadata !804), !dbg !856
  br label %4, !dbg !857, !llvm.loop !858

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !859
  %6 = icmp ne %struct._IRC_SERVER_REC* %5, null, !dbg !863
  br i1 %6, label %7, label %8, !dbg !859

; <label>:7:                                      ; preds = %4
  br label %9, !dbg !864

; <label>:8:                                      ; preds = %4
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.flood_deinit_server, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0)), !dbg !867
  br label %49, !dbg !870

; <label>:9:                                      ; preds = %7
  br label %10, !dbg !871

; <label>:10:                                     ; preds = %9
  %11 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !873
  %12 = bitcast %struct._IRC_SERVER_REC* %11 to i8*, !dbg !873
  %13 = call i8* @module_check_cast(i8* %12, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0)), !dbg !875
  %14 = bitcast i8* %13 to %struct._SERVER_REC*, !dbg !876
  %15 = bitcast %struct._SERVER_REC* %14 to i8*, !dbg !877
  %16 = call i8* @chat_protocol_check_cast(i8* %15, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0)), !dbg !878
  %17 = bitcast i8* %16 to %struct._IRC_SERVER_REC*, !dbg !880
  %18 = icmp ne %struct._IRC_SERVER_REC* %17, null, !dbg !880
  br i1 %18, label %19, label %20, !dbg !881

; <label>:19:                                     ; preds = %10
  br i1 false, label %21, label %22, !dbg !882

; <label>:20:                                     ; preds = %10
  br i1 false, label %22, label %21, !dbg !884

; <label>:21:                                     ; preds = %20, %19
  br label %49, !dbg !886

; <label>:22:                                     ; preds = %20, %19
  %23 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !887
  %24 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %23, i32 0, i32 15, !dbg !888
  %25 = load %struct._GHashTable*, %struct._GHashTable** %24, align 8, !dbg !888
  %26 = call i8* @g_hash_table_lookup(%struct._GHashTable* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0)), !dbg !889
  %27 = bitcast i8* %26 to %struct.MODULE_SERVER_REC*, !dbg !889
  store %struct.MODULE_SERVER_REC* %27, %struct.MODULE_SERVER_REC** %3, align 8, !dbg !890
  %28 = load %struct.MODULE_SERVER_REC*, %struct.MODULE_SERVER_REC** %3, align 8, !dbg !891
  %29 = icmp ne %struct.MODULE_SERVER_REC* %28, null, !dbg !893
  br i1 %29, label %30, label %42, !dbg !894

; <label>:30:                                     ; preds = %22
  %31 = load %struct.MODULE_SERVER_REC*, %struct.MODULE_SERVER_REC** %3, align 8, !dbg !895
  %32 = getelementptr inbounds %struct.MODULE_SERVER_REC, %struct.MODULE_SERVER_REC* %31, i32 0, i32 0, !dbg !897
  %33 = load %struct._GHashTable*, %struct._GHashTable** %32, align 8, !dbg !897
  %34 = icmp ne %struct._GHashTable* %33, null, !dbg !898
  br i1 %34, label %35, label %42, !dbg !899

; <label>:35:                                     ; preds = %30
  store i32 0, i32* @flood_timecheck, align 4, !dbg !900
  %36 = load %struct.MODULE_SERVER_REC*, %struct.MODULE_SERVER_REC** %3, align 8, !dbg !902
  %37 = getelementptr inbounds %struct.MODULE_SERVER_REC, %struct.MODULE_SERVER_REC* %36, i32 0, i32 0, !dbg !903
  %38 = load %struct._GHashTable*, %struct._GHashTable** %37, align 8, !dbg !903
  call void @g_hash_table_foreach(%struct._GHashTable* %38, void (i8*, i8*, i8*)* bitcast (void (i8*, %struct.FLOOD_REC*)* @flood_hash_destroy to void (i8*, i8*, i8*)*), i8* null), !dbg !904
  %39 = load %struct.MODULE_SERVER_REC*, %struct.MODULE_SERVER_REC** %3, align 8, !dbg !905
  %40 = getelementptr inbounds %struct.MODULE_SERVER_REC, %struct.MODULE_SERVER_REC* %39, i32 0, i32 0, !dbg !906
  %41 = load %struct._GHashTable*, %struct._GHashTable** %40, align 8, !dbg !906
  call void @g_hash_table_destroy(%struct._GHashTable* %41), !dbg !907
  br label %42, !dbg !908

; <label>:42:                                     ; preds = %35, %30, %22
  %43 = load %struct.MODULE_SERVER_REC*, %struct.MODULE_SERVER_REC** %3, align 8, !dbg !909
  %44 = bitcast %struct.MODULE_SERVER_REC* %43 to i8*, !dbg !909
  call void @g_free(i8* %44), !dbg !910
  %45 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !911
  %46 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %45, i32 0, i32 15, !dbg !912
  %47 = load %struct._GHashTable*, %struct._GHashTable** %46, align 8, !dbg !912
  %48 = call i32 @g_hash_table_remove(%struct._GHashTable* %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0)), !dbg !913
  br label %49, !dbg !914

; <label>:49:                                     ; preds = %42, %21, %8
  ret void, !dbg !915
}

declare void @autoignore_init() #1

declare void @settings_check_module(i8*) #1

declare %struct.MODULE_FILE_REC* @module_register_full(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @irc_flood_deinit() #0 !dbg !917 {
  call void @autoignore_deinit(), !dbg !918
  %1 = load i32, i32* @flood_tag, align 4, !dbg !919
  %2 = icmp ne i32 %1, -1, !dbg !921
  br i1 %2, label %3, label %6, !dbg !922

; <label>:3:                                      ; preds = %0
  %4 = load i32, i32* @flood_tag, align 4, !dbg !923
  %5 = call i32 @g_source_remove(i32 %4), !dbg !925
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @flood_privmsg to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !926
  call void @signal_remove_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @flood_notice to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !927
  call void @signal_remove_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*)* @flood_ctcp to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !928
  br label %6, !dbg !929

; <label>:6:                                      ; preds = %3, %0
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !930
  call void @signal_remove_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @flood_init_server to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !931
  call void @signal_remove_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @flood_deinit_server to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !932
  ret void, !dbg !933
}

declare void @autoignore_deinit() #1

declare i32 @g_source_remove(i32) #1

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @flood_privmsg(%struct._IRC_SERVER_REC*, i8*, i8*, i8*) #0 !dbg !934 {
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !937, metadata !804), !dbg !938
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !939, metadata !804), !dbg !940
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !941, metadata !804), !dbg !942
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !943, metadata !804), !dbg !944
  call void @llvm.dbg.declare(metadata i8** %9, metadata !945, metadata !804), !dbg !946
  call void @llvm.dbg.declare(metadata i8** %10, metadata !947, metadata !804), !dbg !948
  call void @llvm.dbg.declare(metadata i8** %11, metadata !949, metadata !804), !dbg !950
  call void @llvm.dbg.declare(metadata i32* %12, metadata !951, metadata !804), !dbg !952
  br label %13, !dbg !953, !llvm.loop !954

; <label>:13:                                     ; preds = %4
  %14 = load i8*, i8** %6, align 8, !dbg !955
  %15 = icmp ne i8* %14, null, !dbg !959
  br i1 %15, label %16, label %17, !dbg !955

; <label>:16:                                     ; preds = %13
  br label %18, !dbg !960

; <label>:17:                                     ; preds = %13
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.flood_privmsg, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0)), !dbg !963
  br label %76, !dbg !966

; <label>:18:                                     ; preds = %16
  br label %19, !dbg !967

; <label>:19:                                     ; preds = %18
  br label %20, !dbg !969, !llvm.loop !970

; <label>:20:                                     ; preds = %19
  %21 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !971
  %22 = icmp ne %struct._IRC_SERVER_REC* %21, null, !dbg !975
  br i1 %22, label %23, label %24, !dbg !971

; <label>:23:                                     ; preds = %20
  br label %25, !dbg !976

; <label>:24:                                     ; preds = %20
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.flood_privmsg, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0)), !dbg !979
  br label %76, !dbg !982

; <label>:25:                                     ; preds = %23
  br label %26, !dbg !983

; <label>:26:                                     ; preds = %25
  %27 = load i8*, i8** %8, align 8, !dbg !985
  %28 = icmp eq i8* %27, null, !dbg !987
  br i1 %28, label %36, label %29, !dbg !988

; <label>:29:                                     ; preds = %26
  %30 = load i8*, i8** %7, align 8, !dbg !989
  %31 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !991
  %32 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %31, i32 0, i32 7, !dbg !992
  %33 = load i8*, i8** %32, align 8, !dbg !992
  %34 = call i32 @g_ascii_strcasecmp(i8* %30, i8* %33), !dbg !993
  %35 = icmp eq i32 %34, 0, !dbg !994
  br i1 %35, label %36, label %37, !dbg !995

; <label>:36:                                     ; preds = %29, %26
  br label %76, !dbg !996

; <label>:37:                                     ; preds = %29
  %38 = load i8*, i8** %6, align 8, !dbg !997
  %39 = call i8* (i8*, i32, ...) @event_get_params(i8* %38, i32 2, i8** %10, i8** %11), !dbg !998
  store i8* %39, i8** %9, align 8, !dbg !999
  %40 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1000
  %41 = bitcast %struct._IRC_SERVER_REC* %40 to i8*, !dbg !1000
  %42 = call i8* @module_check_cast(i8* %41, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0)), !dbg !1001
  %43 = bitcast i8* %42 to %struct._SERVER_REC*, !dbg !1002
  %44 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %43, i32 0, i32 27, !dbg !1003
  %45 = load i32 (%struct._SERVER_REC*, i8*)*, i32 (%struct._SERVER_REC*, i8*)** %44, align 8, !dbg !1003
  %46 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1004
  %47 = bitcast %struct._IRC_SERVER_REC* %46 to i8*, !dbg !1004
  %48 = call i8* @module_check_cast(i8* %47, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0)), !dbg !1005
  %49 = bitcast i8* %48 to %struct._SERVER_REC*, !dbg !1007
  %50 = load i8*, i8** %10, align 8, !dbg !1008
  %51 = call i32 %45(%struct._SERVER_REC* %49, i8* %50), !dbg !1009
  %52 = icmp ne i32 %51, 0, !dbg !1011
  %53 = select i1 %52, i32 4, i32 2, !dbg !1011
  store i32 %53, i32* %12, align 4, !dbg !1012
  %54 = load i8*, i8** %8, align 8, !dbg !1013
  %55 = icmp ne i8* %54, null, !dbg !1015
  br i1 %55, label %56, label %74, !dbg !1016

; <label>:56:                                     ; preds = %37
  %57 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1017
  %58 = bitcast %struct._IRC_SERVER_REC* %57 to i8*, !dbg !1017
  %59 = call i8* @module_check_cast(i8* %58, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0)), !dbg !1019
  %60 = bitcast i8* %59 to %struct._SERVER_REC*, !dbg !1020
  %61 = load i8*, i8** %7, align 8, !dbg !1021
  %62 = load i8*, i8** %8, align 8, !dbg !1022
  %63 = load i8*, i8** %10, align 8, !dbg !1023
  %64 = load i8*, i8** %11, align 8, !dbg !1017
  %65 = load i32, i32* %12, align 4, !dbg !1024
  %66 = call i32 @ignore_check(%struct._SERVER_REC* %60, i8* %61, i8* %62, i8* %63, i8* %64, i32 %65), !dbg !1025
  %67 = icmp ne i32 %66, 0, !dbg !1027
  br i1 %67, label %74, label %68, !dbg !1028

; <label>:68:                                     ; preds = %56
  %69 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1029
  %70 = load i32, i32* %12, align 4, !dbg !1030
  %71 = load i8*, i8** %7, align 8, !dbg !1031
  %72 = load i8*, i8** %8, align 8, !dbg !1032
  %73 = load i8*, i8** %10, align 8, !dbg !1033
  call void @flood_newmsg(%struct._IRC_SERVER_REC* %69, i32 %70, i8* %71, i8* %72, i8* %73), !dbg !1034
  br label %74, !dbg !1034

; <label>:74:                                     ; preds = %68, %56, %37
  %75 = load i8*, i8** %9, align 8, !dbg !1035
  call void @g_free(i8* %75), !dbg !1036
  br label %76, !dbg !1037

; <label>:76:                                     ; preds = %74, %36, %24, %17
  ret void, !dbg !1038
}

; Function Attrs: nounwind uwtable
define internal void @flood_notice(%struct._IRC_SERVER_REC*, i8*, i8*, i8*) #0 !dbg !1039 {
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !1040, metadata !804), !dbg !1041
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1042, metadata !804), !dbg !1043
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1044, metadata !804), !dbg !1045
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1046, metadata !804), !dbg !1047
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1048, metadata !804), !dbg !1049
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1050, metadata !804), !dbg !1051
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1052, metadata !804), !dbg !1053
  br label %12, !dbg !1054, !llvm.loop !1055

; <label>:12:                                     ; preds = %4
  %13 = load i8*, i8** %6, align 8, !dbg !1056
  %14 = icmp ne i8* %13, null, !dbg !1060
  br i1 %14, label %15, label %16, !dbg !1056

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !1061

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.flood_notice, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0)), !dbg !1064
  br label %56, !dbg !1067

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !1068

; <label>:18:                                     ; preds = %17
  br label %19, !dbg !1070, !llvm.loop !1071

; <label>:19:                                     ; preds = %18
  %20 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1072
  %21 = icmp ne %struct._IRC_SERVER_REC* %20, null, !dbg !1076
  br i1 %21, label %22, label %23, !dbg !1072

; <label>:22:                                     ; preds = %19
  br label %24, !dbg !1077

; <label>:23:                                     ; preds = %19
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.flood_notice, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0)), !dbg !1080
  br label %56, !dbg !1083

; <label>:24:                                     ; preds = %22
  br label %25, !dbg !1084

; <label>:25:                                     ; preds = %24
  %26 = load i8*, i8** %8, align 8, !dbg !1086
  %27 = icmp eq i8* %26, null, !dbg !1088
  br i1 %27, label %35, label %28, !dbg !1089

; <label>:28:                                     ; preds = %25
  %29 = load i8*, i8** %7, align 8, !dbg !1090
  %30 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1092
  %31 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %30, i32 0, i32 7, !dbg !1093
  %32 = load i8*, i8** %31, align 8, !dbg !1093
  %33 = call i32 @g_ascii_strcasecmp(i8* %29, i8* %32), !dbg !1094
  %34 = icmp eq i32 %33, 0, !dbg !1095
  br i1 %34, label %35, label %36, !dbg !1096

; <label>:35:                                     ; preds = %28, %25
  br label %56, !dbg !1097

; <label>:36:                                     ; preds = %28
  %37 = load i8*, i8** %6, align 8, !dbg !1098
  %38 = call i8* (i8*, i32, ...) @event_get_params(i8* %37, i32 2, i8** %10, i8** %11), !dbg !1099
  store i8* %38, i8** %9, align 8, !dbg !1100
  %39 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1101
  %40 = bitcast %struct._IRC_SERVER_REC* %39 to i8*, !dbg !1101
  %41 = call i8* @module_check_cast(i8* %40, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0)), !dbg !1103
  %42 = bitcast i8* %41 to %struct._SERVER_REC*, !dbg !1104
  %43 = load i8*, i8** %7, align 8, !dbg !1105
  %44 = load i8*, i8** %8, align 8, !dbg !1106
  %45 = load i8*, i8** %10, align 8, !dbg !1107
  %46 = load i8*, i8** %11, align 8, !dbg !1108
  %47 = call i32 @ignore_check(%struct._SERVER_REC* %42, i8* %43, i8* %44, i8* %45, i8* %46, i32 8), !dbg !1109
  %48 = icmp ne i32 %47, 0, !dbg !1111
  br i1 %48, label %54, label %49, !dbg !1112

; <label>:49:                                     ; preds = %36
  %50 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1113
  %51 = load i8*, i8** %7, align 8, !dbg !1114
  %52 = load i8*, i8** %8, align 8, !dbg !1115
  %53 = load i8*, i8** %10, align 8, !dbg !1116
  call void @flood_newmsg(%struct._IRC_SERVER_REC* %50, i32 8, i8* %51, i8* %52, i8* %53), !dbg !1117
  br label %54, !dbg !1117

; <label>:54:                                     ; preds = %49, %36
  %55 = load i8*, i8** %9, align 8, !dbg !1118
  call void @g_free(i8* %55), !dbg !1119
  br label %56, !dbg !1120

; <label>:56:                                     ; preds = %54, %35, %23, %16
  ret void, !dbg !1121
}

; Function Attrs: nounwind uwtable
define internal void @flood_ctcp(%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*) #0 !dbg !1123 {
  %6 = alloca %struct._IRC_SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %6, metadata !1126, metadata !804), !dbg !1127
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1128, metadata !804), !dbg !1129
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1130, metadata !804), !dbg !1131
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1132, metadata !804), !dbg !1133
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1134, metadata !804), !dbg !1135
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1136, metadata !804), !dbg !1137
  br label %12, !dbg !1138, !llvm.loop !1139

; <label>:12:                                     ; preds = %5
  %13 = load i8*, i8** %7, align 8, !dbg !1140
  %14 = icmp ne i8* %13, null, !dbg !1144
  br i1 %14, label %15, label %16, !dbg !1140

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !1145

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.flood_ctcp, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0)), !dbg !1148
  br label %75, !dbg !1151

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !1152

; <label>:18:                                     ; preds = %17
  br label %19, !dbg !1154, !llvm.loop !1155

; <label>:19:                                     ; preds = %18
  %20 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1156
  %21 = icmp ne %struct._IRC_SERVER_REC* %20, null, !dbg !1160
  br i1 %21, label %22, label %23, !dbg !1156

; <label>:22:                                     ; preds = %19
  br label %24, !dbg !1161

; <label>:23:                                     ; preds = %19
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.flood_ctcp, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0)), !dbg !1164
  br label %75, !dbg !1167

; <label>:24:                                     ; preds = %22
  br label %25, !dbg !1168

; <label>:25:                                     ; preds = %24
  %26 = load i8*, i8** %9, align 8, !dbg !1170
  %27 = icmp eq i8* %26, null, !dbg !1172
  br i1 %27, label %35, label %28, !dbg !1173

; <label>:28:                                     ; preds = %25
  %29 = load i8*, i8** %8, align 8, !dbg !1174
  %30 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1176
  %31 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %30, i32 0, i32 7, !dbg !1177
  %32 = load i8*, i8** %31, align 8, !dbg !1177
  %33 = call i32 @g_ascii_strcasecmp(i8* %29, i8* %32), !dbg !1178
  %34 = icmp eq i32 %33, 0, !dbg !1179
  br i1 %34, label %35, label %36, !dbg !1180

; <label>:35:                                     ; preds = %28, %25
  br label %75, !dbg !1181

; <label>:36:                                     ; preds = %28
  %37 = load i8*, i8** %7, align 8, !dbg !1182
  %38 = call i32 @g_ascii_strncasecmp(i8* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i64 7), !dbg !1183
  %39 = icmp ne i32 %38, 0, !dbg !1184
  br i1 %39, label %40, label %41, !dbg !1183

; <label>:40:                                     ; preds = %36
  br label %56, !dbg !1185

; <label>:41:                                     ; preds = %36
  %42 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1187
  %43 = bitcast %struct._IRC_SERVER_REC* %42 to i8*, !dbg !1187
  %44 = call i8* @module_check_cast(i8* %43, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0)), !dbg !1188
  %45 = bitcast i8* %44 to %struct._SERVER_REC*, !dbg !1189
  %46 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %45, i32 0, i32 27, !dbg !1190
  %47 = load i32 (%struct._SERVER_REC*, i8*)*, i32 (%struct._SERVER_REC*, i8*)** %46, align 8, !dbg !1190
  %48 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1191
  %49 = bitcast %struct._IRC_SERVER_REC* %48 to i8*, !dbg !1191
  %50 = call i8* @module_check_cast(i8* %49, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0)), !dbg !1192
  %51 = bitcast i8* %50 to %struct._SERVER_REC*, !dbg !1193
  %52 = load i8*, i8** %10, align 8, !dbg !1194
  %53 = call i32 %47(%struct._SERVER_REC* %51, i8* %52), !dbg !1195
  %54 = icmp ne i32 %53, 0, !dbg !1197
  %55 = select i1 %54, i32 4, i32 2, !dbg !1197
  br label %56, !dbg !1198

; <label>:56:                                     ; preds = %41, %40
  %57 = phi i32 [ 32, %40 ], [ %55, %41 ], !dbg !1199
  store i32 %57, i32* %11, align 4, !dbg !1201
  %58 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1202
  %59 = bitcast %struct._IRC_SERVER_REC* %58 to i8*, !dbg !1202
  %60 = call i8* @module_check_cast(i8* %59, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0)), !dbg !1204
  %61 = bitcast i8* %60 to %struct._SERVER_REC*, !dbg !1205
  %62 = load i8*, i8** %8, align 8, !dbg !1206
  %63 = load i8*, i8** %9, align 8, !dbg !1207
  %64 = load i8*, i8** %10, align 8, !dbg !1208
  %65 = load i8*, i8** %7, align 8, !dbg !1209
  %66 = load i32, i32* %11, align 4, !dbg !1210
  %67 = call i32 @ignore_check(%struct._SERVER_REC* %61, i8* %62, i8* %63, i8* %64, i8* %65, i32 %66), !dbg !1211
  %68 = icmp ne i32 %67, 0, !dbg !1213
  br i1 %68, label %75, label %69, !dbg !1214

; <label>:69:                                     ; preds = %56
  %70 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1215
  %71 = load i32, i32* %11, align 4, !dbg !1216
  %72 = load i8*, i8** %8, align 8, !dbg !1217
  %73 = load i8*, i8** %9, align 8, !dbg !1218
  %74 = load i8*, i8** %10, align 8, !dbg !1219
  call void @flood_newmsg(%struct._IRC_SERVER_REC* %70, i32 %71, i8* %72, i8* %73, i8* %74), !dbg !1220
  br label %75, !dbg !1220

; <label>:75:                                     ; preds = %16, %23, %35, %69, %56
  ret void, !dbg !1221
}

declare i32 @settings_get_int(i8*) #1

declare i32 @g_timeout_add(i32, i32 (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @flood_timeout() #0 !dbg !1222 {
  %1 = alloca %struct.MODULE_SERVER_REC*, align 8
  %2 = alloca %struct._GSList*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct.MODULE_SERVER_REC** %1, metadata !1225, metadata !804), !dbg !1226
  call void @llvm.dbg.declare(metadata %struct._GSList** %2, metadata !1227, metadata !804), !dbg !1228
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1229, metadata !804), !dbg !1230
  %5 = call i64 @time(i64* null) #4, !dbg !1231
  store i64 %5, i64* %3, align 8, !dbg !1232
  %6 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !1233
  store %struct._GSList* %6, %struct._GSList** %2, align 8, !dbg !1235
  br label %7, !dbg !1236

; <label>:7:                                      ; preds = %37, %0
  %8 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !1237
  %9 = icmp ne %struct._GSList* %8, null, !dbg !1240
  br i1 %9, label %10, label %41, !dbg !1241

; <label>:10:                                     ; preds = %7
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !1242, metadata !804), !dbg !1244
  %11 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !1245
  %12 = getelementptr inbounds %struct._GSList, %struct._GSList* %11, i32 0, i32 0, !dbg !1246
  %13 = load i8*, i8** %12, align 8, !dbg !1246
  %14 = bitcast i8* %13 to %struct._IRC_SERVER_REC*, !dbg !1245
  store %struct._IRC_SERVER_REC* %14, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1244
  %15 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1247
  %16 = bitcast %struct._IRC_SERVER_REC* %15 to i8*, !dbg !1247
  %17 = call i8* @module_check_cast(i8* %16, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0)), !dbg !1249
  %18 = bitcast i8* %17 to %struct._SERVER_REC*, !dbg !1250
  %19 = bitcast %struct._SERVER_REC* %18 to i8*, !dbg !1251
  %20 = call i8* @chat_protocol_check_cast(i8* %19, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0)), !dbg !1252
  %21 = bitcast i8* %20 to %struct._IRC_SERVER_REC*, !dbg !1254
  %22 = icmp ne %struct._IRC_SERVER_REC* %21, null, !dbg !1254
  br i1 %22, label %23, label %24, !dbg !1255

; <label>:23:                                     ; preds = %10
  br i1 false, label %25, label %26, !dbg !1256

; <label>:24:                                     ; preds = %10
  br i1 false, label %26, label %25, !dbg !1258

; <label>:25:                                     ; preds = %24, %23
  br label %37, !dbg !1260

; <label>:26:                                     ; preds = %24, %23
  %27 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1261
  %28 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %27, i32 0, i32 15, !dbg !1262
  %29 = load %struct._GHashTable*, %struct._GHashTable** %28, align 8, !dbg !1262
  %30 = call i8* @g_hash_table_lookup(%struct._GHashTable* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0)), !dbg !1263
  %31 = bitcast i8* %30 to %struct.MODULE_SERVER_REC*, !dbg !1263
  store %struct.MODULE_SERVER_REC* %31, %struct.MODULE_SERVER_REC** %1, align 8, !dbg !1264
  %32 = load %struct.MODULE_SERVER_REC*, %struct.MODULE_SERVER_REC** %1, align 8, !dbg !1265
  %33 = getelementptr inbounds %struct.MODULE_SERVER_REC, %struct.MODULE_SERVER_REC* %32, i32 0, i32 0, !dbg !1266
  %34 = load %struct._GHashTable*, %struct._GHashTable** %33, align 8, !dbg !1266
  %35 = bitcast i64* %3 to i8*, !dbg !1267
  %36 = call i32 @g_hash_table_foreach_remove(%struct._GHashTable* %34, i32 (i8*, i8*, i8*)* bitcast (i32 (i8*, %struct.FLOOD_REC*, i64*)* @flood_hash_check_remove to i32 (i8*, i8*, i8*)*), i8* %35), !dbg !1268
  br label %37, !dbg !1269

; <label>:37:                                     ; preds = %26, %25
  %38 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !1270
  %39 = getelementptr inbounds %struct._GSList, %struct._GSList* %38, i32 0, i32 1, !dbg !1272
  %40 = load %struct._GSList*, %struct._GSList** %39, align 8, !dbg !1272
  store %struct._GSList* %40, %struct._GSList** %2, align 8, !dbg !1273
  br label %7, !dbg !1274, !llvm.loop !1275

; <label>:41:                                     ; preds = %7
  ret i32 1, !dbg !1277
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind
declare i64 @time(i64*) #3

declare i8* @chat_protocol_check_cast(i8*, i32, i8*) #1

declare i8* @module_check_cast(i8*, i32, i8*) #1

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #1

declare i32 @g_hash_table_foreach_remove(%struct._GHashTable*, i32 (i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @flood_hash_check_remove(i8*, %struct.FLOOD_REC*, i64*) #0 !dbg !1278 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.FLOOD_REC*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct._GSList*, align 8
  %9 = alloca %struct._GSList*, align 8
  %10 = alloca %struct._GSList*, align 8
  %11 = alloca %struct._GSList*, align 8
  %12 = alloca %struct.FLOOD_ITEM_REC*, align 8
  %13 = alloca i64*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1281, metadata !804), !dbg !1282
  store %struct.FLOOD_REC* %1, %struct.FLOOD_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.FLOOD_REC** %6, metadata !1283, metadata !804), !dbg !1284
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !1285, metadata !804), !dbg !1286
  call void @llvm.dbg.declare(metadata %struct._GSList** %8, metadata !1287, metadata !804), !dbg !1288
  call void @llvm.dbg.declare(metadata %struct._GSList** %9, metadata !1289, metadata !804), !dbg !1290
  call void @llvm.dbg.declare(metadata %struct._GSList** %10, metadata !1291, metadata !804), !dbg !1292
  call void @llvm.dbg.declare(metadata %struct._GSList** %11, metadata !1293, metadata !804), !dbg !1294
  br label %14, !dbg !1295, !llvm.loop !1296

; <label>:14:                                     ; preds = %3
  %15 = load i8*, i8** %5, align 8, !dbg !1297
  %16 = icmp ne i8* %15, null, !dbg !1301
  br i1 %16, label %17, label %18, !dbg !1297

; <label>:17:                                     ; preds = %14
  br label %19, !dbg !1302

; <label>:18:                                     ; preds = %14
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.flood_hash_check_remove, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0)), !dbg !1305
  store i32 0, i32* %4, align 4, !dbg !1308
  br label %115, !dbg !1308

; <label>:19:                                     ; preds = %17
  br label %20, !dbg !1309

; <label>:20:                                     ; preds = %19
  br label %21, !dbg !1311, !llvm.loop !1312

; <label>:21:                                     ; preds = %20
  %22 = load %struct.FLOOD_REC*, %struct.FLOOD_REC** %6, align 8, !dbg !1313
  %23 = icmp ne %struct.FLOOD_REC* %22, null, !dbg !1317
  br i1 %23, label %24, label %25, !dbg !1313

; <label>:24:                                     ; preds = %21
  br label %26, !dbg !1318

; <label>:25:                                     ; preds = %21
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.flood_hash_check_remove, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0)), !dbg !1321
  store i32 0, i32* %4, align 4, !dbg !1324
  br label %115, !dbg !1324

; <label>:26:                                     ; preds = %24
  br label %27, !dbg !1325

; <label>:27:                                     ; preds = %26
  %28 = load %struct.FLOOD_REC*, %struct.FLOOD_REC** %6, align 8, !dbg !1327
  %29 = getelementptr inbounds %struct.FLOOD_REC, %struct.FLOOD_REC* %28, i32 0, i32 1, !dbg !1329
  %30 = load %struct._GSList*, %struct._GSList** %29, align 8, !dbg !1329
  store %struct._GSList* %30, %struct._GSList** %8, align 8, !dbg !1330
  br label %31, !dbg !1331

; <label>:31:                                     ; preds = %101, %27
  %32 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1332
  %33 = icmp ne %struct._GSList* %32, null, !dbg !1335
  br i1 %33, label %34, label %103, !dbg !1336

; <label>:34:                                     ; preds = %31
  call void @llvm.dbg.declare(metadata %struct.FLOOD_ITEM_REC** %12, metadata !1337, metadata !804), !dbg !1339
  %35 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1340
  %36 = getelementptr inbounds %struct._GSList, %struct._GSList* %35, i32 0, i32 0, !dbg !1341
  %37 = load i8*, i8** %36, align 8, !dbg !1341
  %38 = bitcast i8* %37 to %struct.FLOOD_ITEM_REC*, !dbg !1340
  store %struct.FLOOD_ITEM_REC* %38, %struct.FLOOD_ITEM_REC** %12, align 8, !dbg !1339
  %39 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1342
  %40 = getelementptr inbounds %struct._GSList, %struct._GSList* %39, i32 0, i32 1, !dbg !1343
  %41 = load %struct._GSList*, %struct._GSList** %40, align 8, !dbg !1343
  store %struct._GSList* %41, %struct._GSList** %9, align 8, !dbg !1344
  %42 = load %struct.FLOOD_ITEM_REC*, %struct.FLOOD_ITEM_REC** %12, align 8, !dbg !1345
  %43 = getelementptr inbounds %struct.FLOOD_ITEM_REC, %struct.FLOOD_ITEM_REC* %42, i32 0, i32 2, !dbg !1347
  %44 = load %struct._GSList*, %struct._GSList** %43, align 8, !dbg !1347
  store %struct._GSList* %44, %struct._GSList** %10, align 8, !dbg !1348
  br label %45, !dbg !1349

; <label>:45:                                     ; preds = %79, %34
  %46 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !1350
  %47 = icmp ne %struct._GSList* %46, null, !dbg !1353
  br i1 %47, label %48, label %81, !dbg !1354

; <label>:48:                                     ; preds = %45
  call void @llvm.dbg.declare(metadata i64** %13, metadata !1355, metadata !804), !dbg !1357
  %49 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !1358
  %50 = getelementptr inbounds %struct._GSList, %struct._GSList* %49, i32 0, i32 0, !dbg !1359
  %51 = load i8*, i8** %50, align 8, !dbg !1359
  %52 = bitcast i8* %51 to i64*, !dbg !1358
  store i64* %52, i64** %13, align 8, !dbg !1357
  %53 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !1360
  %54 = getelementptr inbounds %struct._GSList, %struct._GSList* %53, i32 0, i32 1, !dbg !1361
  %55 = load %struct._GSList*, %struct._GSList** %54, align 8, !dbg !1361
  store %struct._GSList* %55, %struct._GSList** %11, align 8, !dbg !1362
  %56 = load i64*, i64** %7, align 8, !dbg !1363
  %57 = load i64, i64* %56, align 8, !dbg !1365
  %58 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !1366
  %59 = getelementptr inbounds %struct._GSList, %struct._GSList* %58, i32 0, i32 0, !dbg !1367
  %60 = load i8*, i8** %59, align 8, !dbg !1367
  %61 = bitcast i8* %60 to i64*, !dbg !1368
  %62 = load i64, i64* %61, align 8, !dbg !1369
  %63 = sub nsw i64 %57, %62, !dbg !1370
  %64 = load i32, i32* @flood_timecheck, align 4, !dbg !1371
  %65 = sext i32 %64 to i64, !dbg !1371
  %66 = icmp sge i64 %63, %65, !dbg !1372
  br i1 %66, label %67, label %78, !dbg !1373

; <label>:67:                                     ; preds = %48
  %68 = load %struct.FLOOD_ITEM_REC*, %struct.FLOOD_ITEM_REC** %12, align 8, !dbg !1374
  %69 = getelementptr inbounds %struct.FLOOD_ITEM_REC, %struct.FLOOD_ITEM_REC* %68, i32 0, i32 2, !dbg !1376
  %70 = load %struct._GSList*, %struct._GSList** %69, align 8, !dbg !1376
  %71 = load i64*, i64** %13, align 8, !dbg !1377
  %72 = bitcast i64* %71 to i8*, !dbg !1377
  %73 = call %struct._GSList* @g_slist_remove(%struct._GSList* %70, i8* %72), !dbg !1378
  %74 = load %struct.FLOOD_ITEM_REC*, %struct.FLOOD_ITEM_REC** %12, align 8, !dbg !1379
  %75 = getelementptr inbounds %struct.FLOOD_ITEM_REC, %struct.FLOOD_ITEM_REC* %74, i32 0, i32 2, !dbg !1380
  store %struct._GSList* %73, %struct._GSList** %75, align 8, !dbg !1381
  %76 = load i64*, i64** %13, align 8, !dbg !1382
  %77 = bitcast i64* %76 to i8*, !dbg !1382
  call void @g_free(i8* %77), !dbg !1383
  br label %78, !dbg !1384

; <label>:78:                                     ; preds = %67, %48
  br label %79, !dbg !1385

; <label>:79:                                     ; preds = %78
  %80 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !1386
  store %struct._GSList* %80, %struct._GSList** %10, align 8, !dbg !1388
  br label %45, !dbg !1389, !llvm.loop !1390

; <label>:81:                                     ; preds = %45
  %82 = load %struct.FLOOD_ITEM_REC*, %struct.FLOOD_ITEM_REC** %12, align 8, !dbg !1392
  %83 = getelementptr inbounds %struct.FLOOD_ITEM_REC, %struct.FLOOD_ITEM_REC* %82, i32 0, i32 2, !dbg !1394
  %84 = load %struct._GSList*, %struct._GSList** %83, align 8, !dbg !1394
  %85 = icmp eq %struct._GSList* %84, null, !dbg !1395
  br i1 %85, label %86, label %100, !dbg !1396

; <label>:86:                                     ; preds = %81
  %87 = load %struct.FLOOD_REC*, %struct.FLOOD_REC** %6, align 8, !dbg !1397
  %88 = getelementptr inbounds %struct.FLOOD_REC, %struct.FLOOD_REC* %87, i32 0, i32 1, !dbg !1399
  %89 = load %struct._GSList*, %struct._GSList** %88, align 8, !dbg !1399
  %90 = load %struct.FLOOD_ITEM_REC*, %struct.FLOOD_ITEM_REC** %12, align 8, !dbg !1400
  %91 = bitcast %struct.FLOOD_ITEM_REC* %90 to i8*, !dbg !1400
  %92 = call %struct._GSList* @g_slist_remove(%struct._GSList* %89, i8* %91), !dbg !1401
  %93 = load %struct.FLOOD_REC*, %struct.FLOOD_REC** %6, align 8, !dbg !1402
  %94 = getelementptr inbounds %struct.FLOOD_REC, %struct.FLOOD_REC* %93, i32 0, i32 1, !dbg !1403
  store %struct._GSList* %92, %struct._GSList** %94, align 8, !dbg !1404
  %95 = load %struct.FLOOD_ITEM_REC*, %struct.FLOOD_ITEM_REC** %12, align 8, !dbg !1405
  %96 = getelementptr inbounds %struct.FLOOD_ITEM_REC, %struct.FLOOD_ITEM_REC* %95, i32 0, i32 0, !dbg !1406
  %97 = load i8*, i8** %96, align 8, !dbg !1406
  call void @g_free(i8* %97), !dbg !1407
  %98 = load %struct.FLOOD_ITEM_REC*, %struct.FLOOD_ITEM_REC** %12, align 8, !dbg !1408
  %99 = bitcast %struct.FLOOD_ITEM_REC* %98 to i8*, !dbg !1408
  call void @g_free(i8* %99), !dbg !1409
  br label %100, !dbg !1410

; <label>:100:                                    ; preds = %86, %81
  br label %101, !dbg !1411

; <label>:101:                                    ; preds = %100
  %102 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !1412
  store %struct._GSList* %102, %struct._GSList** %8, align 8, !dbg !1414
  br label %31, !dbg !1415, !llvm.loop !1416

; <label>:103:                                    ; preds = %31
  %104 = load %struct.FLOOD_REC*, %struct.FLOOD_REC** %6, align 8, !dbg !1418
  %105 = getelementptr inbounds %struct.FLOOD_REC, %struct.FLOOD_REC* %104, i32 0, i32 1, !dbg !1420
  %106 = load %struct._GSList*, %struct._GSList** %105, align 8, !dbg !1420
  %107 = icmp ne %struct._GSList* %106, null, !dbg !1421
  br i1 %107, label %108, label %109, !dbg !1422

; <label>:108:                                    ; preds = %103
  store i32 0, i32* %4, align 4, !dbg !1423
  br label %115, !dbg !1423

; <label>:109:                                    ; preds = %103
  %110 = load %struct.FLOOD_REC*, %struct.FLOOD_REC** %6, align 8, !dbg !1424
  %111 = getelementptr inbounds %struct.FLOOD_REC, %struct.FLOOD_REC* %110, i32 0, i32 0, !dbg !1425
  %112 = load i8*, i8** %111, align 8, !dbg !1425
  call void @g_free(i8* %112), !dbg !1426
  %113 = load %struct.FLOOD_REC*, %struct.FLOOD_REC** %6, align 8, !dbg !1427
  %114 = bitcast %struct.FLOOD_REC* %113 to i8*, !dbg !1427
  call void @g_free(i8* %114), !dbg !1428
  store i32 1, i32* %4, align 4, !dbg !1429
  br label %115, !dbg !1429

; <label>:115:                                    ; preds = %109, %108, %25, %18
  %116 = load i32, i32* %4, align 4, !dbg !1430
  ret i32 %116, !dbg !1430
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #1

declare void @g_free(i8*) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #1

declare %struct._GHashTable* @g_hash_table_new(i32 (i8*)*, i32 (i8*, i8*)*) #1

declare i32 @g_istr_hash(i8*) #1

declare i32 @g_istr_equal(i8*, i8*) #1

declare void @g_hash_table_foreach(%struct._GHashTable*, void (i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @flood_hash_destroy(i8*, %struct.FLOOD_REC*) #0 !dbg !1431 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.FLOOD_REC*, align 8
  %5 = alloca %struct.FLOOD_ITEM_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1434, metadata !804), !dbg !1435
  store %struct.FLOOD_REC* %1, %struct.FLOOD_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.FLOOD_REC** %4, metadata !1436, metadata !804), !dbg !1437
  br label %6, !dbg !1438

; <label>:6:                                      ; preds = %11, %2
  %7 = load %struct.FLOOD_REC*, %struct.FLOOD_REC** %4, align 8, !dbg !1439
  %8 = getelementptr inbounds %struct.FLOOD_REC, %struct.FLOOD_REC* %7, i32 0, i32 1, !dbg !1441
  %9 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1441
  %10 = icmp ne %struct._GSList* %9, null, !dbg !1442
  br i1 %10, label %11, label %37, !dbg !1443

; <label>:11:                                     ; preds = %6
  call void @llvm.dbg.declare(metadata %struct.FLOOD_ITEM_REC** %5, metadata !1444, metadata !804), !dbg !1446
  %12 = load %struct.FLOOD_REC*, %struct.FLOOD_REC** %4, align 8, !dbg !1447
  %13 = getelementptr inbounds %struct.FLOOD_REC, %struct.FLOOD_REC* %12, i32 0, i32 1, !dbg !1448
  %14 = load %struct._GSList*, %struct._GSList** %13, align 8, !dbg !1448
  %15 = getelementptr inbounds %struct._GSList, %struct._GSList* %14, i32 0, i32 0, !dbg !1449
  %16 = load i8*, i8** %15, align 8, !dbg !1449
  %17 = bitcast i8* %16 to %struct.FLOOD_ITEM_REC*, !dbg !1447
  store %struct.FLOOD_ITEM_REC* %17, %struct.FLOOD_ITEM_REC** %5, align 8, !dbg !1446
  %18 = load %struct.FLOOD_REC*, %struct.FLOOD_REC** %4, align 8, !dbg !1450
  %19 = getelementptr inbounds %struct.FLOOD_REC, %struct.FLOOD_REC* %18, i32 0, i32 1, !dbg !1451
  %20 = load %struct._GSList*, %struct._GSList** %19, align 8, !dbg !1451
  %21 = load %struct.FLOOD_ITEM_REC*, %struct.FLOOD_ITEM_REC** %5, align 8, !dbg !1452
  %22 = bitcast %struct.FLOOD_ITEM_REC* %21 to i8*, !dbg !1452
  %23 = call %struct._GSList* @g_slist_remove(%struct._GSList* %20, i8* %22), !dbg !1453
  %24 = load %struct.FLOOD_REC*, %struct.FLOOD_REC** %4, align 8, !dbg !1454
  %25 = getelementptr inbounds %struct.FLOOD_REC, %struct.FLOOD_REC* %24, i32 0, i32 1, !dbg !1455
  store %struct._GSList* %23, %struct._GSList** %25, align 8, !dbg !1456
  %26 = load %struct.FLOOD_ITEM_REC*, %struct.FLOOD_ITEM_REC** %5, align 8, !dbg !1457
  %27 = getelementptr inbounds %struct.FLOOD_ITEM_REC, %struct.FLOOD_ITEM_REC* %26, i32 0, i32 2, !dbg !1458
  %28 = load %struct._GSList*, %struct._GSList** %27, align 8, !dbg !1458
  call void @g_slist_foreach(%struct._GSList* %28, void (i8*, i8*)* bitcast (void (i8*)* @g_free to void (i8*, i8*)*), i8* null), !dbg !1459
  %29 = load %struct.FLOOD_ITEM_REC*, %struct.FLOOD_ITEM_REC** %5, align 8, !dbg !1460
  %30 = getelementptr inbounds %struct.FLOOD_ITEM_REC, %struct.FLOOD_ITEM_REC* %29, i32 0, i32 2, !dbg !1461
  %31 = load %struct._GSList*, %struct._GSList** %30, align 8, !dbg !1461
  call void @g_slist_free(%struct._GSList* %31), !dbg !1462
  %32 = load %struct.FLOOD_ITEM_REC*, %struct.FLOOD_ITEM_REC** %5, align 8, !dbg !1463
  %33 = getelementptr inbounds %struct.FLOOD_ITEM_REC, %struct.FLOOD_ITEM_REC* %32, i32 0, i32 0, !dbg !1464
  %34 = load i8*, i8** %33, align 8, !dbg !1464
  call void @g_free(i8* %34), !dbg !1465
  %35 = load %struct.FLOOD_ITEM_REC*, %struct.FLOOD_ITEM_REC** %5, align 8, !dbg !1466
  %36 = bitcast %struct.FLOOD_ITEM_REC* %35 to i8*, !dbg !1466
  call void @g_free(i8* %36), !dbg !1467
  br label %6, !dbg !1468, !llvm.loop !1470

; <label>:37:                                     ; preds = %6
  %38 = load %struct.FLOOD_REC*, %struct.FLOOD_REC** %4, align 8, !dbg !1471
  %39 = getelementptr inbounds %struct.FLOOD_REC, %struct.FLOOD_REC* %38, i32 0, i32 0, !dbg !1472
  %40 = load i8*, i8** %39, align 8, !dbg !1472
  call void @g_free(i8* %40), !dbg !1473
  %41 = load %struct.FLOOD_REC*, %struct.FLOOD_REC** %4, align 8, !dbg !1474
  %42 = bitcast %struct.FLOOD_REC* %41 to i8*, !dbg !1474
  call void @g_free(i8* %42), !dbg !1475
  ret void, !dbg !1476
}

declare void @g_hash_table_destroy(%struct._GHashTable*) #1

declare i32 @g_hash_table_remove(%struct._GHashTable*, i8*) #1

declare void @g_slist_foreach(%struct._GSList*, void (i8*, i8*)*, i8*) #1

declare void @g_slist_free(%struct._GSList*) #1

declare i32 @g_ascii_strcasecmp(i8*, i8*) #1

declare i8* @event_get_params(i8*, i32, ...) #1

declare i32 @ignore_check(%struct._SERVER_REC*, i8*, i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @flood_newmsg(%struct._IRC_SERVER_REC*, i32, i8*, i8*, i8*) #0 !dbg !1477 {
  %6 = alloca %struct._IRC_SERVER_REC*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.MODULE_SERVER_REC*, align 8
  %12 = alloca %struct.FLOOD_REC*, align 8
  %13 = alloca %struct.FLOOD_ITEM_REC*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca %struct._GSList*, align 8
  %17 = alloca %struct._GSList*, align 8
  %18 = alloca i64*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %6, metadata !1480, metadata !804), !dbg !1481
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1482, metadata !804), !dbg !1483
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1484, metadata !804), !dbg !1485
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1486, metadata !804), !dbg !1487
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1488, metadata !804), !dbg !1489
  call void @llvm.dbg.declare(metadata %struct.MODULE_SERVER_REC** %11, metadata !1490, metadata !804), !dbg !1491
  call void @llvm.dbg.declare(metadata %struct.FLOOD_REC** %12, metadata !1492, metadata !804), !dbg !1493
  call void @llvm.dbg.declare(metadata %struct.FLOOD_ITEM_REC** %13, metadata !1494, metadata !804), !dbg !1495
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1496, metadata !804), !dbg !1497
  call void @llvm.dbg.declare(metadata i64** %15, metadata !1498, metadata !804), !dbg !1499
  call void @llvm.dbg.declare(metadata %struct._GSList** %16, metadata !1500, metadata !804), !dbg !1501
  call void @llvm.dbg.declare(metadata %struct._GSList** %17, metadata !1502, metadata !804), !dbg !1503
  br label %19, !dbg !1504, !llvm.loop !1505

; <label>:19:                                     ; preds = %5
  %20 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1506
  %21 = icmp ne %struct._IRC_SERVER_REC* %20, null, !dbg !1510
  br i1 %21, label %22, label %23, !dbg !1506

; <label>:22:                                     ; preds = %19
  br label %24, !dbg !1511

; <label>:23:                                     ; preds = %19
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.flood_newmsg, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0)), !dbg !1514
  br label %176, !dbg !1517

; <label>:24:                                     ; preds = %22
  br label %25, !dbg !1518

; <label>:25:                                     ; preds = %24
  br label %26, !dbg !1520, !llvm.loop !1521

; <label>:26:                                     ; preds = %25
  %27 = load i8*, i8** %8, align 8, !dbg !1522
  %28 = icmp ne i8* %27, null, !dbg !1526
  br i1 %28, label %29, label %30, !dbg !1522

; <label>:29:                                     ; preds = %26
  br label %31, !dbg !1527

; <label>:30:                                     ; preds = %26
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.flood_newmsg, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0)), !dbg !1530
  br label %176, !dbg !1533

; <label>:31:                                     ; preds = %29
  br label %32, !dbg !1534

; <label>:32:                                     ; preds = %31
  %33 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1536
  %34 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %33, i32 0, i32 15, !dbg !1537
  %35 = load %struct._GHashTable*, %struct._GHashTable** %34, align 8, !dbg !1537
  %36 = call i8* @g_hash_table_lookup(%struct._GHashTable* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0)), !dbg !1538
  %37 = bitcast i8* %36 to %struct.MODULE_SERVER_REC*, !dbg !1538
  store %struct.MODULE_SERVER_REC* %37, %struct.MODULE_SERVER_REC** %11, align 8, !dbg !1539
  %38 = load %struct.MODULE_SERVER_REC*, %struct.MODULE_SERVER_REC** %11, align 8, !dbg !1540
  %39 = getelementptr inbounds %struct.MODULE_SERVER_REC, %struct.MODULE_SERVER_REC* %38, i32 0, i32 0, !dbg !1541
  %40 = load %struct._GHashTable*, %struct._GHashTable** %39, align 8, !dbg !1541
  %41 = load i8*, i8** %8, align 8, !dbg !1542
  %42 = call i8* @g_hash_table_lookup(%struct._GHashTable* %40, i8* %41), !dbg !1543
  %43 = bitcast i8* %42 to %struct.FLOOD_REC*, !dbg !1543
  store %struct.FLOOD_REC* %43, %struct.FLOOD_REC** %12, align 8, !dbg !1544
  %44 = load %struct.FLOOD_REC*, %struct.FLOOD_REC** %12, align 8, !dbg !1545
  %45 = icmp eq %struct.FLOOD_REC* %44, null, !dbg !1546
  br i1 %45, label %46, label %47, !dbg !1545

; <label>:46:                                     ; preds = %32
  br label %52, !dbg !1547

; <label>:47:                                     ; preds = %32
  %48 = load %struct.FLOOD_REC*, %struct.FLOOD_REC** %12, align 8, !dbg !1549
  %49 = load i32, i32* %7, align 4, !dbg !1551
  %50 = load i8*, i8** %10, align 8, !dbg !1552
  %51 = call %struct.FLOOD_ITEM_REC* @flood_find(%struct.FLOOD_REC* %48, i32 %49, i8* %50), !dbg !1553
  br label %52, !dbg !1554

; <label>:52:                                     ; preds = %47, %46
  %53 = phi %struct.FLOOD_ITEM_REC* [ null, %46 ], [ %51, %47 ], !dbg !1555
  store %struct.FLOOD_ITEM_REC* %53, %struct.FLOOD_ITEM_REC** %13, align 8, !dbg !1557
  %54 = load %struct.FLOOD_ITEM_REC*, %struct.FLOOD_ITEM_REC** %13, align 8, !dbg !1558
  %55 = icmp ne %struct.FLOOD_ITEM_REC* %54, null, !dbg !1560
  br i1 %55, label %56, label %125, !dbg !1561

; <label>:56:                                     ; preds = %52
  %57 = call i64 @time(i64* null) #4, !dbg !1562
  store i64 %57, i64* %14, align 8, !dbg !1564
  %58 = load %struct.FLOOD_ITEM_REC*, %struct.FLOOD_ITEM_REC** %13, align 8, !dbg !1565
  %59 = getelementptr inbounds %struct.FLOOD_ITEM_REC, %struct.FLOOD_ITEM_REC* %58, i32 0, i32 2, !dbg !1567
  %60 = load %struct._GSList*, %struct._GSList** %59, align 8, !dbg !1567
  store %struct._GSList* %60, %struct._GSList** %16, align 8, !dbg !1568
  br label %61, !dbg !1569

; <label>:61:                                     ; preds = %92, %56
  %62 = load %struct._GSList*, %struct._GSList** %16, align 8, !dbg !1570
  %63 = icmp ne %struct._GSList* %62, null, !dbg !1573
  br i1 %63, label %64, label %94, !dbg !1574

; <label>:64:                                     ; preds = %61
  call void @llvm.dbg.declare(metadata i64** %18, metadata !1575, metadata !804), !dbg !1577
  %65 = load %struct._GSList*, %struct._GSList** %16, align 8, !dbg !1578
  %66 = getelementptr inbounds %struct._GSList, %struct._GSList* %65, i32 0, i32 0, !dbg !1579
  %67 = load i8*, i8** %66, align 8, !dbg !1579
  %68 = bitcast i8* %67 to i64*, !dbg !1578
  store i64* %68, i64** %18, align 8, !dbg !1577
  %69 = load %struct._GSList*, %struct._GSList** %16, align 8, !dbg !1580
  %70 = getelementptr inbounds %struct._GSList, %struct._GSList* %69, i32 0, i32 1, !dbg !1581
  %71 = load %struct._GSList*, %struct._GSList** %70, align 8, !dbg !1581
  store %struct._GSList* %71, %struct._GSList** %17, align 8, !dbg !1582
  %72 = load i64, i64* %14, align 8, !dbg !1583
  %73 = load i64*, i64** %18, align 8, !dbg !1585
  %74 = load i64, i64* %73, align 8, !dbg !1586
  %75 = sub nsw i64 %72, %74, !dbg !1587
  %76 = load i32, i32* @flood_timecheck, align 4, !dbg !1588
  %77 = sext i32 %76 to i64, !dbg !1588
  %78 = icmp sge i64 %75, %77, !dbg !1589
  br i1 %78, label %79, label %90, !dbg !1590

; <label>:79:                                     ; preds = %64
  %80 = load %struct.FLOOD_ITEM_REC*, %struct.FLOOD_ITEM_REC** %13, align 8, !dbg !1591
  %81 = getelementptr inbounds %struct.FLOOD_ITEM_REC, %struct.FLOOD_ITEM_REC* %80, i32 0, i32 2, !dbg !1593
  %82 = load %struct._GSList*, %struct._GSList** %81, align 8, !dbg !1593
  %83 = load i64*, i64** %18, align 8, !dbg !1594
  %84 = bitcast i64* %83 to i8*, !dbg !1594
  %85 = call %struct._GSList* @g_slist_remove(%struct._GSList* %82, i8* %84), !dbg !1595
  %86 = load %struct.FLOOD_ITEM_REC*, %struct.FLOOD_ITEM_REC** %13, align 8, !dbg !1596
  %87 = getelementptr inbounds %struct.FLOOD_ITEM_REC, %struct.FLOOD_ITEM_REC* %86, i32 0, i32 2, !dbg !1597
  store %struct._GSList* %85, %struct._GSList** %87, align 8, !dbg !1598
  %88 = load i64*, i64** %18, align 8, !dbg !1599
  %89 = bitcast i64* %88 to i8*, !dbg !1599
  call void @g_free(i8* %89), !dbg !1600
  br label %91, !dbg !1601

; <label>:90:                                     ; preds = %64
  br label %94, !dbg !1602

; <label>:91:                                     ; preds = %79
  br label %92, !dbg !1603

; <label>:92:                                     ; preds = %91
  %93 = load %struct._GSList*, %struct._GSList** %17, align 8, !dbg !1604
  store %struct._GSList* %93, %struct._GSList** %16, align 8, !dbg !1606
  br label %61, !dbg !1607, !llvm.loop !1608

; <label>:94:                                     ; preds = %90, %61
  %95 = call noalias i8* @g_malloc_n(i64 1, i64 8), !dbg !1610
  %96 = bitcast i8* %95 to i64*, !dbg !1611
  store i64* %96, i64** %15, align 8, !dbg !1612
  %97 = load i64, i64* %14, align 8, !dbg !1613
  %98 = load i64*, i64** %15, align 8, !dbg !1614
  store i64 %97, i64* %98, align 8, !dbg !1615
  %99 = load %struct.FLOOD_ITEM_REC*, %struct.FLOOD_ITEM_REC** %13, align 8, !dbg !1616
  %100 = getelementptr inbounds %struct.FLOOD_ITEM_REC, %struct.FLOOD_ITEM_REC* %99, i32 0, i32 2, !dbg !1617
  %101 = load %struct._GSList*, %struct._GSList** %100, align 8, !dbg !1617
  %102 = load i64*, i64** %15, align 8, !dbg !1618
  %103 = bitcast i64* %102 to i8*, !dbg !1618
  %104 = call %struct._GSList* @g_slist_append(%struct._GSList* %101, i8* %103), !dbg !1619
  %105 = load %struct.FLOOD_ITEM_REC*, %struct.FLOOD_ITEM_REC** %13, align 8, !dbg !1620
  %106 = getelementptr inbounds %struct.FLOOD_ITEM_REC, %struct.FLOOD_ITEM_REC* %105, i32 0, i32 2, !dbg !1621
  store %struct._GSList* %104, %struct._GSList** %106, align 8, !dbg !1622
  %107 = load %struct.FLOOD_ITEM_REC*, %struct.FLOOD_ITEM_REC** %13, align 8, !dbg !1623
  %108 = getelementptr inbounds %struct.FLOOD_ITEM_REC, %struct.FLOOD_ITEM_REC* %107, i32 0, i32 2, !dbg !1625
  %109 = load %struct._GSList*, %struct._GSList** %108, align 8, !dbg !1625
  %110 = call i32 @g_slist_length(%struct._GSList* %109), !dbg !1626
  %111 = load i32, i32* @flood_max_msgs, align 4, !dbg !1627
  %112 = icmp ugt i32 %110, %111, !dbg !1628
  br i1 %112, label %113, label %124, !dbg !1629

; <label>:113:                                    ; preds = %94
  %114 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1630
  %115 = load i8*, i8** %8, align 8, !dbg !1632
  %116 = load i8*, i8** %9, align 8, !dbg !1633
  %117 = load %struct.FLOOD_ITEM_REC*, %struct.FLOOD_ITEM_REC** %13, align 8, !dbg !1634
  %118 = getelementptr inbounds %struct.FLOOD_ITEM_REC, %struct.FLOOD_ITEM_REC* %117, i32 0, i32 1, !dbg !1635
  %119 = load i32, i32* %118, align 8, !dbg !1635
  %120 = sext i32 %119 to i64, !dbg !1636
  %121 = inttoptr i64 %120 to i8*, !dbg !1637
  %122 = load i8*, i8** %10, align 8, !dbg !1638
  %123 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 5, %struct._IRC_SERVER_REC* %114, i8* %115, i8* %116, i8* %121, i8* %122), !dbg !1639
  br label %124, !dbg !1640

; <label>:124:                                    ; preds = %113, %94
  br label %176, !dbg !1641

; <label>:125:                                    ; preds = %52
  %126 = load %struct.FLOOD_REC*, %struct.FLOOD_REC** %12, align 8, !dbg !1642
  %127 = icmp eq %struct.FLOOD_REC* %126, null, !dbg !1644
  br i1 %127, label %128, label %144, !dbg !1645

; <label>:128:                                    ; preds = %125
  %129 = call noalias i8* @g_malloc0_n(i64 1, i64 16), !dbg !1646
  %130 = bitcast i8* %129 to %struct.FLOOD_REC*, !dbg !1648
  store %struct.FLOOD_REC* %130, %struct.FLOOD_REC** %12, align 8, !dbg !1649
  %131 = load i8*, i8** %8, align 8, !dbg !1650
  %132 = call noalias i8* @g_strdup(i8* %131), !dbg !1651
  %133 = load %struct.FLOOD_REC*, %struct.FLOOD_REC** %12, align 8, !dbg !1652
  %134 = getelementptr inbounds %struct.FLOOD_REC, %struct.FLOOD_REC* %133, i32 0, i32 0, !dbg !1653
  store i8* %132, i8** %134, align 8, !dbg !1654
  %135 = load %struct.MODULE_SERVER_REC*, %struct.MODULE_SERVER_REC** %11, align 8, !dbg !1655
  %136 = getelementptr inbounds %struct.MODULE_SERVER_REC, %struct.MODULE_SERVER_REC* %135, i32 0, i32 0, !dbg !1656
  %137 = load %struct._GHashTable*, %struct._GHashTable** %136, align 8, !dbg !1656
  %138 = load %struct.FLOOD_REC*, %struct.FLOOD_REC** %12, align 8, !dbg !1657
  %139 = getelementptr inbounds %struct.FLOOD_REC, %struct.FLOOD_REC* %138, i32 0, i32 0, !dbg !1658
  %140 = load i8*, i8** %139, align 8, !dbg !1658
  %141 = load %struct.FLOOD_REC*, %struct.FLOOD_REC** %12, align 8, !dbg !1659
  %142 = bitcast %struct.FLOOD_REC* %141 to i8*, !dbg !1659
  %143 = call i32 @g_hash_table_insert(%struct._GHashTable* %137, i8* %140, i8* %142), !dbg !1660
  br label %144, !dbg !1661

; <label>:144:                                    ; preds = %128, %125
  %145 = call noalias i8* @g_malloc0_n(i64 1, i64 24), !dbg !1662
  %146 = bitcast i8* %145 to %struct.FLOOD_ITEM_REC*, !dbg !1663
  store %struct.FLOOD_ITEM_REC* %146, %struct.FLOOD_ITEM_REC** %13, align 8, !dbg !1664
  %147 = load i32, i32* %7, align 4, !dbg !1665
  %148 = load %struct.FLOOD_ITEM_REC*, %struct.FLOOD_ITEM_REC** %13, align 8, !dbg !1666
  %149 = getelementptr inbounds %struct.FLOOD_ITEM_REC, %struct.FLOOD_ITEM_REC* %148, i32 0, i32 1, !dbg !1667
  store i32 %147, i32* %149, align 8, !dbg !1668
  %150 = load %struct.FLOOD_ITEM_REC*, %struct.FLOOD_ITEM_REC** %13, align 8, !dbg !1669
  %151 = getelementptr inbounds %struct.FLOOD_ITEM_REC, %struct.FLOOD_ITEM_REC* %150, i32 0, i32 2, !dbg !1670
  store %struct._GSList* null, %struct._GSList** %151, align 8, !dbg !1671
  %152 = call noalias i8* @g_malloc_n(i64 1, i64 8), !dbg !1672
  %153 = bitcast i8* %152 to i64*, !dbg !1673
  store i64* %153, i64** %15, align 8, !dbg !1674
  %154 = call i64 @time(i64* null) #4, !dbg !1675
  %155 = load i64*, i64** %15, align 8, !dbg !1676
  store i64 %154, i64* %155, align 8, !dbg !1677
  %156 = load %struct.FLOOD_ITEM_REC*, %struct.FLOOD_ITEM_REC** %13, align 8, !dbg !1678
  %157 = getelementptr inbounds %struct.FLOOD_ITEM_REC, %struct.FLOOD_ITEM_REC* %156, i32 0, i32 2, !dbg !1679
  %158 = load %struct._GSList*, %struct._GSList** %157, align 8, !dbg !1679
  %159 = load i64*, i64** %15, align 8, !dbg !1680
  %160 = bitcast i64* %159 to i8*, !dbg !1680
  %161 = call %struct._GSList* @g_slist_append(%struct._GSList* %158, i8* %160), !dbg !1681
  %162 = load %struct.FLOOD_ITEM_REC*, %struct.FLOOD_ITEM_REC** %13, align 8, !dbg !1682
  %163 = getelementptr inbounds %struct.FLOOD_ITEM_REC, %struct.FLOOD_ITEM_REC* %162, i32 0, i32 2, !dbg !1683
  store %struct._GSList* %161, %struct._GSList** %163, align 8, !dbg !1684
  %164 = load i8*, i8** %10, align 8, !dbg !1685
  %165 = call noalias i8* @g_strdup(i8* %164), !dbg !1686
  %166 = load %struct.FLOOD_ITEM_REC*, %struct.FLOOD_ITEM_REC** %13, align 8, !dbg !1687
  %167 = getelementptr inbounds %struct.FLOOD_ITEM_REC, %struct.FLOOD_ITEM_REC* %166, i32 0, i32 0, !dbg !1688
  store i8* %165, i8** %167, align 8, !dbg !1689
  %168 = load %struct.FLOOD_REC*, %struct.FLOOD_REC** %12, align 8, !dbg !1690
  %169 = getelementptr inbounds %struct.FLOOD_REC, %struct.FLOOD_REC* %168, i32 0, i32 1, !dbg !1691
  %170 = load %struct._GSList*, %struct._GSList** %169, align 8, !dbg !1691
  %171 = load %struct.FLOOD_ITEM_REC*, %struct.FLOOD_ITEM_REC** %13, align 8, !dbg !1692
  %172 = bitcast %struct.FLOOD_ITEM_REC* %171 to i8*, !dbg !1692
  %173 = call %struct._GSList* @g_slist_append(%struct._GSList* %170, i8* %172), !dbg !1693
  %174 = load %struct.FLOOD_REC*, %struct.FLOOD_REC** %12, align 8, !dbg !1694
  %175 = getelementptr inbounds %struct.FLOOD_REC, %struct.FLOOD_REC* %174, i32 0, i32 1, !dbg !1695
  store %struct._GSList* %173, %struct._GSList** %175, align 8, !dbg !1696
  br label %176, !dbg !1697

; <label>:176:                                    ; preds = %144, %124, %30, %23
  ret void, !dbg !1698
}

; Function Attrs: nounwind uwtable
define internal %struct.FLOOD_ITEM_REC* @flood_find(%struct.FLOOD_REC*, i32, i8*) #0 !dbg !1699 {
  %4 = alloca %struct.FLOOD_ITEM_REC*, align 8
  %5 = alloca %struct.FLOOD_REC*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct._GSList*, align 8
  %9 = alloca %struct.FLOOD_ITEM_REC*, align 8
  store %struct.FLOOD_REC* %0, %struct.FLOOD_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.FLOOD_REC** %5, metadata !1702, metadata !804), !dbg !1703
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1704, metadata !804), !dbg !1705
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1706, metadata !804), !dbg !1707
  call void @llvm.dbg.declare(metadata %struct._GSList** %8, metadata !1708, metadata !804), !dbg !1709
  %10 = load %struct.FLOOD_REC*, %struct.FLOOD_REC** %5, align 8, !dbg !1710
  %11 = getelementptr inbounds %struct.FLOOD_REC, %struct.FLOOD_REC* %10, i32 0, i32 1, !dbg !1712
  %12 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !1712
  store %struct._GSList* %12, %struct._GSList** %8, align 8, !dbg !1713
  br label %13, !dbg !1714

; <label>:13:                                     ; preds = %36, %3
  %14 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1715
  %15 = icmp ne %struct._GSList* %14, null, !dbg !1718
  br i1 %15, label %16, label %40, !dbg !1719

; <label>:16:                                     ; preds = %13
  call void @llvm.dbg.declare(metadata %struct.FLOOD_ITEM_REC** %9, metadata !1720, metadata !804), !dbg !1722
  %17 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1723
  %18 = getelementptr inbounds %struct._GSList, %struct._GSList* %17, i32 0, i32 0, !dbg !1724
  %19 = load i8*, i8** %18, align 8, !dbg !1724
  %20 = bitcast i8* %19 to %struct.FLOOD_ITEM_REC*, !dbg !1723
  store %struct.FLOOD_ITEM_REC* %20, %struct.FLOOD_ITEM_REC** %9, align 8, !dbg !1722
  %21 = load %struct.FLOOD_ITEM_REC*, %struct.FLOOD_ITEM_REC** %9, align 8, !dbg !1725
  %22 = getelementptr inbounds %struct.FLOOD_ITEM_REC, %struct.FLOOD_ITEM_REC* %21, i32 0, i32 1, !dbg !1727
  %23 = load i32, i32* %22, align 8, !dbg !1727
  %24 = load i32, i32* %6, align 4, !dbg !1728
  %25 = icmp eq i32 %23, %24, !dbg !1729
  br i1 %25, label %26, label %35, !dbg !1730

; <label>:26:                                     ; preds = %16
  %27 = load %struct.FLOOD_ITEM_REC*, %struct.FLOOD_ITEM_REC** %9, align 8, !dbg !1731
  %28 = getelementptr inbounds %struct.FLOOD_ITEM_REC, %struct.FLOOD_ITEM_REC* %27, i32 0, i32 0, !dbg !1732
  %29 = load i8*, i8** %28, align 8, !dbg !1732
  %30 = load i8*, i8** %7, align 8, !dbg !1733
  %31 = call i32 @g_ascii_strcasecmp(i8* %29, i8* %30), !dbg !1734
  %32 = icmp eq i32 %31, 0, !dbg !1735
  br i1 %32, label %33, label %35, !dbg !1736

; <label>:33:                                     ; preds = %26
  %34 = load %struct.FLOOD_ITEM_REC*, %struct.FLOOD_ITEM_REC** %9, align 8, !dbg !1738
  store %struct.FLOOD_ITEM_REC* %34, %struct.FLOOD_ITEM_REC** %4, align 8, !dbg !1739
  br label %41, !dbg !1739

; <label>:35:                                     ; preds = %26, %16
  br label %36, !dbg !1740

; <label>:36:                                     ; preds = %35
  %37 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1741
  %38 = getelementptr inbounds %struct._GSList, %struct._GSList* %37, i32 0, i32 1, !dbg !1743
  %39 = load %struct._GSList*, %struct._GSList** %38, align 8, !dbg !1743
  store %struct._GSList* %39, %struct._GSList** %8, align 8, !dbg !1744
  br label %13, !dbg !1745, !llvm.loop !1746

; <label>:40:                                     ; preds = %13
  store %struct.FLOOD_ITEM_REC* null, %struct.FLOOD_ITEM_REC** %4, align 8, !dbg !1748
  br label %41, !dbg !1748

; <label>:41:                                     ; preds = %40, %33
  %42 = load %struct.FLOOD_ITEM_REC*, %struct.FLOOD_ITEM_REC** %4, align 8, !dbg !1749
  ret %struct.FLOOD_ITEM_REC* %42, !dbg !1749
}

declare noalias i8* @g_malloc_n(i64, i64) #1

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #1

declare i32 @g_slist_length(%struct._GSList*) #1

declare i32 @signal_emit(i8*, i32, ...) #1

declare noalias i8* @g_strdup(i8*) #1

declare i32 @g_ascii_strncasecmp(i8*, i8*, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!745, !746}
!llvm.ident = !{!747}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !66, globals: !741)
!1 = !DIFile(filename: "line185-flood.o.i", directory: "/home/lichi/Desktop/irssi/task1")
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
!66 = !{!67, !74, !75, !84, !388, !697, !150, !476, !701, !702, !710, !715, !719, !723, !83, !378, !727, !734}
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !68, line: 9, baseType: !69)
!68 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!70 = !DISubroutineType(types: !71)
!71 = !{null, !72, !72, !72, !72, !72, !72}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !76)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, align: 64)
!77 = !DISubroutineType(types: !78)
!78 = !{!79, !83}
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !80, line: 50, baseType: !81)
!80 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !80, line: 49, baseType: !82)
!82 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !80, line: 77, baseType: !74)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_REC", file: !86, line: 6, baseType: !87)
!86 = !DIFile(filename: "../../../src/irc/core/irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_REC", file: !88, line: 42, size: 39168, align: 64, elements: !89)
!88 = !DIFile(filename: "../../../src/irc/core/irc-servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!89 = !{!90, !92, !93, !94, !333, !338, !339, !340, !341, !342, !343, !344, !345, !346, !350, !351, !355, !356, !357, !361, !366, !367, !368, !369, !370, !371, !372, !373, !380, !381, !382, !383, !384, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !694, !696}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !87, file: !91, line: 3, baseType: !82, size: 32, align: 32)
!91 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!92 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !87, file: !91, line: 4, baseType: !82, size: 32, align: 32, offset: 32)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !87, file: !91, line: 6, baseType: !82, size: 32, align: 32, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !87, file: !91, line: 8, baseType: !95, size: 64, align: 64, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64, align: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_CONNECT_REC", file: !86, line: 5, baseType: !97)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_CONNECT_REC", file: !88, line: 24, size: 2496, align: 64, elements: !98)
!98 = !{!99, !101, !102, !103, !106, !107, !108, !109, !110, !112, !113, !114, !115, !116, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !97, file: !100, line: 3, baseType: !82, size: 32, align: 32)
!100 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!101 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !97, file: !100, line: 4, baseType: !82, size: 32, align: 32, offset: 32)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !97, file: !100, line: 6, baseType: !82, size: 32, align: 32, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !97, file: !100, line: 9, baseType: !104, size: 64, align: 64, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !97, file: !100, line: 10, baseType: !82, size: 32, align: 32, offset: 192)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !97, file: !100, line: 11, baseType: !104, size: 64, align: 64, offset: 256)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !97, file: !100, line: 11, baseType: !104, size: 64, align: 64, offset: 320)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !97, file: !100, line: 11, baseType: !104, size: 64, align: 64, offset: 384)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !97, file: !100, line: 13, baseType: !111, size: 16, align: 16, offset: 448)
!111 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !97, file: !100, line: 14, baseType: !104, size: 64, align: 64, offset: 512)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !97, file: !100, line: 15, baseType: !104, size: 64, align: 64, offset: 576)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !97, file: !100, line: 16, baseType: !82, size: 32, align: 32, offset: 640)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !97, file: !100, line: 17, baseType: !104, size: 64, align: 64, offset: 704)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !97, file: !100, line: 19, baseType: !117, size: 64, align: 64, offset: 768)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, align: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !119, line: 99, baseType: !120)
!119 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!120 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !119, line: 99, flags: DIFlagFwdDecl)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !97, file: !100, line: 19, baseType: !117, size: 64, align: 64, offset: 832)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !97, file: !100, line: 21, baseType: !104, size: 64, align: 64, offset: 896)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !97, file: !100, line: 22, baseType: !104, size: 64, align: 64, offset: 960)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !97, file: !100, line: 23, baseType: !104, size: 64, align: 64, offset: 1024)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !97, file: !100, line: 24, baseType: !104, size: 64, align: 64, offset: 1088)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !97, file: !100, line: 26, baseType: !104, size: 64, align: 64, offset: 1152)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !97, file: !100, line: 27, baseType: !104, size: 64, align: 64, offset: 1216)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !97, file: !100, line: 28, baseType: !104, size: 64, align: 64, offset: 1280)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !97, file: !100, line: 29, baseType: !104, size: 64, align: 64, offset: 1344)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !97, file: !100, line: 30, baseType: !104, size: 64, align: 64, offset: 1408)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !97, file: !100, line: 31, baseType: !104, size: 64, align: 64, offset: 1472)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !97, file: !100, line: 32, baseType: !104, size: 64, align: 64, offset: 1536)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !97, file: !100, line: 33, baseType: !104, size: 64, align: 64, offset: 1600)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !97, file: !100, line: 35, baseType: !135, size: 64, align: 64, offset: 1664)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64, align: 64)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !137)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !138)
!138 = !{!139, !140, !278, !279, !284, !285, !286, !287, !288, !297, !298, !299, !303, !304, !305, !306, !307, !308, !309, !310}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !137, file: !4, line: 100, baseType: !81, size: 32, align: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !137, file: !4, line: 101, baseType: !141, size: 64, align: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64, align: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !143)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !144)
!144 = !{!145, !169, !175, !182, !186, !265, !269, !274}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !143, file: !4, line: 133, baseType: !146, size: 64, align: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64, align: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{!149, !135, !150, !152, !155, !156}
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, align: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !80, line: 46, baseType: !105)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !153, line: 66, baseType: !154)
!153 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!154 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64, align: 64)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64, align: 64)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64, align: 64)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !159, line: 42, baseType: !160)
!159 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !159, line: 44, size: 128, align: 64, elements: !161)
!161 = !{!162, !167, !168}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !160, file: !159, line: 46, baseType: !163, size: 32, align: 32)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !164, line: 36, baseType: !165)
!164 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !153, line: 45, baseType: !166)
!166 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !160, file: !159, line: 47, baseType: !81, size: 32, align: 32, offset: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !160, file: !159, line: 48, baseType: !150, size: 64, align: 64, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !143, file: !4, line: 138, baseType: !170, size: 64, align: 64, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64, align: 64)
!171 = !DISubroutineType(types: !172)
!172 = !{!149, !135, !173, !152, !155, !156}
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64, align: 64)
!174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !143, file: !4, line: 143, baseType: !176, size: 64, align: 64, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64, align: 64)
!177 = !DISubroutineType(types: !178)
!178 = !{!149, !135, !179, !181, !156}
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !153, line: 51, baseType: !180)
!180 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !143, file: !4, line: 147, baseType: !183, size: 64, align: 64, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!149, !135, !156}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !143, file: !4, line: 149, baseType: !187, size: 64, align: 64, offset: 256)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64, align: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{!190, !135, !264}
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !192)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !193)
!193 = !{!194, !195, !211, !240, !242, !246, !247, !248, !249, !257, !258, !259, !260}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !192, file: !16, line: 174, baseType: !83, size: 64, align: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !192, file: !16, line: 175, baseType: !196, size: 64, align: 64, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !198)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !199)
!199 = !{!200, !204, !205}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !198, file: !16, line: 198, baseType: !201, size: 64, align: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64, align: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{null, !83}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !198, file: !16, line: 199, baseType: !201, size: 64, align: 64, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !198, file: !16, line: 200, baseType: !206, size: 64, align: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64, align: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{null, !83, !190, !209, !210}
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !192, file: !16, line: 177, baseType: !212, size: 64, align: 64, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64, align: 64)
!213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !215)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !216)
!216 = !{!217, !222, !226, !230, !234, !235}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !215, file: !16, line: 216, baseType: !218, size: 64, align: 64)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64, align: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{!79, !190, !221}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64, align: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !215, file: !16, line: 218, baseType: !223, size: 64, align: 64, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64, align: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{!79, !190}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !215, file: !16, line: 219, baseType: !227, size: 64, align: 64, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64, align: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{!79, !190, !75, !83}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !215, file: !16, line: 222, baseType: !231, size: 64, align: 64, offset: 192)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64, align: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{null, !190}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !215, file: !16, line: 226, baseType: !75, size: 64, align: 64, offset: 256)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !215, file: !16, line: 227, baseType: !236, size: 64, align: 64, offset: 320)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64, align: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{null}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !192, file: !16, line: 178, baseType: !241, size: 32, align: 32, offset: 192)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !80, line: 55, baseType: !166)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !192, file: !16, line: 180, baseType: !243, size: 64, align: 64, offset: 256)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64, align: 64)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !245)
!245 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !192, file: !16, line: 182, baseType: !81, size: 32, align: 32, offset: 320)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !192, file: !16, line: 183, baseType: !241, size: 32, align: 32, offset: 352)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !192, file: !16, line: 184, baseType: !241, size: 32, align: 32, offset: 384)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !192, file: !16, line: 186, baseType: !250, size: 64, align: 64, offset: 448)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64, align: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !252, line: 37, baseType: !253)
!252 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !252, line: 39, size: 128, align: 64, elements: !254)
!254 = !{!255, !256}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !253, file: !252, line: 41, baseType: !83, size: 64, align: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !253, file: !252, line: 42, baseType: !250, size: 64, align: 64, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !192, file: !16, line: 188, baseType: !190, size: 64, align: 64, offset: 512)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !192, file: !16, line: 189, baseType: !190, size: 64, align: 64, offset: 576)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !192, file: !16, line: 191, baseType: !104, size: 64, align: 64, offset: 640)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !192, file: !16, line: 193, baseType: !261, size: 64, align: 64, offset: 704)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64, align: 64)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !263)
!263 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !143, file: !4, line: 151, baseType: !266, size: 64, align: 64, offset: 320)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64, align: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{null, !135}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !143, file: !4, line: 152, baseType: !270, size: 64, align: 64, offset: 384)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!149, !135, !273, !156}
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !143, file: !4, line: 155, baseType: !275, size: 64, align: 64, offset: 448)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64, align: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!273, !135}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !137, file: !4, line: 103, baseType: !150, size: 64, align: 64, offset: 128)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !137, file: !4, line: 104, baseType: !280, size: 64, align: 64, offset: 192)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !281, line: 77, baseType: !282)
!281 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64, align: 64)
!283 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !281, line: 77, flags: DIFlagFwdDecl)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !137, file: !4, line: 105, baseType: !280, size: 64, align: 64, offset: 256)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !137, file: !4, line: 106, baseType: !150, size: 64, align: 64, offset: 320)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !137, file: !4, line: 107, baseType: !241, size: 32, align: 32, offset: 384)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !137, file: !4, line: 109, baseType: !152, size: 64, align: 64, offset: 448)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !137, file: !4, line: 110, baseType: !289, size: 64, align: 64, offset: 512)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !291, line: 39, baseType: !292)
!291 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !291, line: 41, size: 192, align: 64, elements: !293)
!293 = !{!294, !295, !296}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !292, file: !291, line: 43, baseType: !150, size: 64, align: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !292, file: !291, line: 44, baseType: !152, size: 64, align: 64, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !292, file: !291, line: 45, baseType: !152, size: 64, align: 64, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !137, file: !4, line: 111, baseType: !289, size: 64, align: 64, offset: 576)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !137, file: !4, line: 112, baseType: !289, size: 64, align: 64, offset: 640)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !137, file: !4, line: 113, baseType: !300, size: 48, align: 8, offset: 704)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 48, align: 8, elements: !301)
!301 = !{!302}
!302 = !DISubrange(count: 6)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !137, file: !4, line: 117, baseType: !241, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !137, file: !4, line: 118, baseType: !241, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !137, file: !4, line: 119, baseType: !241, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !137, file: !4, line: 120, baseType: !241, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !137, file: !4, line: 121, baseType: !241, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !137, file: !4, line: 122, baseType: !241, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !137, file: !4, line: 124, baseType: !83, size: 64, align: 64, offset: 768)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !137, file: !4, line: 125, baseType: !83, size: 64, align: 64, offset: 832)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !97, file: !100, line: 38, baseType: !166, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !97, file: !100, line: 39, baseType: !166, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !97, file: !100, line: 40, baseType: !166, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !97, file: !100, line: 41, baseType: !166, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !97, file: !100, line: 42, baseType: !166, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !97, file: !100, line: 43, baseType: !166, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !97, file: !100, line: 44, baseType: !166, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !97, file: !100, line: 45, baseType: !166, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !97, file: !100, line: 46, baseType: !104, size: 64, align: 64, offset: 1792)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !97, file: !100, line: 47, baseType: !104, size: 64, align: 64, offset: 1856)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !97, file: !88, line: 27, baseType: !104, size: 64, align: 64, offset: 1920)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_nick", scope: !97, file: !88, line: 28, baseType: !104, size: 64, align: 64, offset: 1984)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !97, file: !88, line: 30, baseType: !82, size: 32, align: 32, offset: 2048)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_username", scope: !97, file: !88, line: 31, baseType: !104, size: 64, align: 64, offset: 2112)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !97, file: !88, line: 32, baseType: !104, size: 64, align: 64, offset: 2176)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !97, file: !88, line: 34, baseType: !82, size: 32, align: 32, offset: 2240)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !97, file: !88, line: 35, baseType: !82, size: 32, align: 32, offset: 2272)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !97, file: !88, line: 36, baseType: !82, size: 32, align: 32, offset: 2304)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks", scope: !97, file: !88, line: 38, baseType: !82, size: 32, align: 32, offset: 2336)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !97, file: !88, line: 38, baseType: !82, size: 32, align: 32, offset: 2368)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes", scope: !97, file: !88, line: 38, baseType: !82, size: 32, align: 32, offset: 2400)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois", scope: !97, file: !88, line: 38, baseType: !82, size: 32, align: 32, offset: 2432)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !87, file: !91, line: 9, baseType: !334, size: 64, align: 64, offset: 192)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !335, line: 75, baseType: !336)
!335 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !337, line: 139, baseType: !180)
!337 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!338 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !87, file: !91, line: 10, baseType: !334, size: 64, align: 64, offset: 256)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !87, file: !91, line: 12, baseType: !104, size: 64, align: 64, offset: 320)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !87, file: !91, line: 13, baseType: !104, size: 64, align: 64, offset: 384)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !87, file: !91, line: 15, baseType: !166, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !87, file: !91, line: 16, baseType: !166, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !87, file: !91, line: 17, baseType: !166, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !87, file: !91, line: 18, baseType: !166, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !87, file: !91, line: 19, baseType: !166, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !87, file: !91, line: 21, baseType: !347, size: 64, align: 64, offset: 512)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64, align: 64)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !119, line: 102, baseType: !349)
!349 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !119, line: 102, flags: DIFlagFwdDecl)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !87, file: !91, line: 22, baseType: !82, size: 32, align: 32, offset: 576)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !87, file: !91, line: 25, baseType: !352, size: 128, align: 64, offset: 640)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 128, align: 64, elements: !353)
!353 = !{!354}
!354 = !DISubrange(count: 2)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !87, file: !91, line: 26, baseType: !82, size: 32, align: 32, offset: 768)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !87, file: !91, line: 27, baseType: !82, size: 32, align: 32, offset: 800)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !87, file: !91, line: 29, baseType: !358, size: 64, align: 64, offset: 832)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64, align: 64)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !119, line: 103, baseType: !360)
!360 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !119, line: 103, flags: DIFlagFwdDecl)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !87, file: !91, line: 30, baseType: !362, size: 64, align: 64, offset: 896)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64, align: 64)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !364, line: 37, baseType: !365)
!364 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!365 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !364, line: 37, flags: DIFlagFwdDecl)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !87, file: !91, line: 32, baseType: !104, size: 64, align: 64, offset: 960)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !87, file: !91, line: 33, baseType: !104, size: 64, align: 64, offset: 1024)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !87, file: !91, line: 34, baseType: !104, size: 64, align: 64, offset: 1088)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !87, file: !91, line: 35, baseType: !166, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !87, file: !91, line: 36, baseType: !166, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !87, file: !91, line: 37, baseType: !166, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !87, file: !91, line: 38, baseType: !166, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !87, file: !91, line: 40, baseType: !374, size: 128, align: 64, offset: 1216)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !80, line: 504, baseType: !375)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !80, line: 506, size: 128, align: 64, elements: !376)
!376 = !{!377, !379}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !375, file: !80, line: 508, baseType: !378, size: 64, align: 64)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !80, line: 48, baseType: !180)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !375, file: !80, line: 509, baseType: !378, size: 64, align: 64, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !87, file: !91, line: 41, baseType: !334, size: 64, align: 64, offset: 1344)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !87, file: !91, line: 42, baseType: !82, size: 32, align: 32, offset: 1408)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !87, file: !91, line: 44, baseType: !250, size: 64, align: 64, offset: 1472)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !87, file: !91, line: 45, baseType: !250, size: 64, align: 64, offset: 1536)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !87, file: !91, line: 53, baseType: !385, size: 64, align: 64, offset: 1600)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64, align: 64)
!386 = !DISubroutineType(types: !387)
!387 = !{null, !388, !476, !82}
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64, align: 64)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !119, line: 107, baseType: !390)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !391, line: 30, size: 2240, align: 64, elements: !392)
!391 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!392 = !{!393, !394, !395, !396, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !472, !478, !482, !486, !491, !570, !577, !581}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !390, file: !91, line: 3, baseType: !82, size: 32, align: 32)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !390, file: !91, line: 4, baseType: !82, size: 32, align: 32, offset: 32)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !390, file: !91, line: 6, baseType: !82, size: 32, align: 32, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !390, file: !91, line: 8, baseType: !397, size: 64, align: 64, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64, align: 64)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !119, line: 113, baseType: !399)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !391, line: 25, size: 1920, align: 64, elements: !400)
!400 = !{!401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !399, file: !100, line: 3, baseType: !82, size: 32, align: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !399, file: !100, line: 4, baseType: !82, size: 32, align: 32, offset: 32)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !399, file: !100, line: 6, baseType: !82, size: 32, align: 32, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !399, file: !100, line: 9, baseType: !104, size: 64, align: 64, offset: 128)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !399, file: !100, line: 10, baseType: !82, size: 32, align: 32, offset: 192)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !399, file: !100, line: 11, baseType: !104, size: 64, align: 64, offset: 256)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !399, file: !100, line: 11, baseType: !104, size: 64, align: 64, offset: 320)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !399, file: !100, line: 11, baseType: !104, size: 64, align: 64, offset: 384)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !399, file: !100, line: 13, baseType: !111, size: 16, align: 16, offset: 448)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !399, file: !100, line: 14, baseType: !104, size: 64, align: 64, offset: 512)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !399, file: !100, line: 15, baseType: !104, size: 64, align: 64, offset: 576)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !399, file: !100, line: 16, baseType: !82, size: 32, align: 32, offset: 640)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !399, file: !100, line: 17, baseType: !104, size: 64, align: 64, offset: 704)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !399, file: !100, line: 19, baseType: !117, size: 64, align: 64, offset: 768)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !399, file: !100, line: 19, baseType: !117, size: 64, align: 64, offset: 832)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !399, file: !100, line: 21, baseType: !104, size: 64, align: 64, offset: 896)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !399, file: !100, line: 22, baseType: !104, size: 64, align: 64, offset: 960)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !399, file: !100, line: 23, baseType: !104, size: 64, align: 64, offset: 1024)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !399, file: !100, line: 24, baseType: !104, size: 64, align: 64, offset: 1088)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !399, file: !100, line: 26, baseType: !104, size: 64, align: 64, offset: 1152)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !399, file: !100, line: 27, baseType: !104, size: 64, align: 64, offset: 1216)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !399, file: !100, line: 28, baseType: !104, size: 64, align: 64, offset: 1280)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !399, file: !100, line: 29, baseType: !104, size: 64, align: 64, offset: 1344)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !399, file: !100, line: 30, baseType: !104, size: 64, align: 64, offset: 1408)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !399, file: !100, line: 31, baseType: !104, size: 64, align: 64, offset: 1472)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !399, file: !100, line: 32, baseType: !104, size: 64, align: 64, offset: 1536)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !399, file: !100, line: 33, baseType: !104, size: 64, align: 64, offset: 1600)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !399, file: !100, line: 35, baseType: !135, size: 64, align: 64, offset: 1664)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !399, file: !100, line: 38, baseType: !166, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !399, file: !100, line: 39, baseType: !166, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !399, file: !100, line: 40, baseType: !166, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !399, file: !100, line: 41, baseType: !166, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !399, file: !100, line: 42, baseType: !166, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !399, file: !100, line: 43, baseType: !166, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !399, file: !100, line: 44, baseType: !166, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !399, file: !100, line: 45, baseType: !166, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !399, file: !100, line: 46, baseType: !104, size: 64, align: 64, offset: 1792)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !399, file: !100, line: 47, baseType: !104, size: 64, align: 64, offset: 1856)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !390, file: !91, line: 9, baseType: !334, size: 64, align: 64, offset: 192)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !390, file: !91, line: 10, baseType: !334, size: 64, align: 64, offset: 256)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !390, file: !91, line: 12, baseType: !104, size: 64, align: 64, offset: 320)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !390, file: !91, line: 13, baseType: !104, size: 64, align: 64, offset: 384)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !390, file: !91, line: 15, baseType: !166, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !390, file: !91, line: 16, baseType: !166, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !390, file: !91, line: 17, baseType: !166, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !390, file: !91, line: 18, baseType: !166, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !390, file: !91, line: 19, baseType: !166, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !390, file: !91, line: 21, baseType: !347, size: 64, align: 64, offset: 512)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !390, file: !91, line: 22, baseType: !82, size: 32, align: 32, offset: 576)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !390, file: !91, line: 25, baseType: !352, size: 128, align: 64, offset: 640)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !390, file: !91, line: 26, baseType: !82, size: 32, align: 32, offset: 768)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !390, file: !91, line: 27, baseType: !82, size: 32, align: 32, offset: 800)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !390, file: !91, line: 29, baseType: !358, size: 64, align: 64, offset: 832)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !390, file: !91, line: 30, baseType: !362, size: 64, align: 64, offset: 896)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !390, file: !91, line: 32, baseType: !104, size: 64, align: 64, offset: 960)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !390, file: !91, line: 33, baseType: !104, size: 64, align: 64, offset: 1024)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !390, file: !91, line: 34, baseType: !104, size: 64, align: 64, offset: 1088)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !390, file: !91, line: 35, baseType: !166, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !390, file: !91, line: 36, baseType: !166, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !390, file: !91, line: 37, baseType: !166, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !390, file: !91, line: 38, baseType: !166, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !390, file: !91, line: 40, baseType: !374, size: 128, align: 64, offset: 1216)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !390, file: !91, line: 41, baseType: !334, size: 64, align: 64, offset: 1344)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !390, file: !91, line: 42, baseType: !82, size: 32, align: 32, offset: 1408)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !390, file: !91, line: 44, baseType: !250, size: 64, align: 64, offset: 1472)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !390, file: !91, line: 45, baseType: !250, size: 64, align: 64, offset: 1536)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !390, file: !91, line: 53, baseType: !385, size: 64, align: 64, offset: 1600)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !390, file: !91, line: 55, baseType: !469, size: 64, align: 64, offset: 1664)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64, align: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{!82, !388, !105}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !390, file: !91, line: 57, baseType: !473, size: 64, align: 64, offset: 1728)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64, align: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{!82, !388, !476}
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64, align: 64)
!477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !390, file: !91, line: 60, baseType: !479, size: 64, align: 64, offset: 1792)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64, align: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{!476, !388}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !390, file: !91, line: 62, baseType: !483, size: 64, align: 64, offset: 1856)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64, align: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{null, !388, !476, !476, !82}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !390, file: !91, line: 65, baseType: !487, size: 64, align: 64, offset: 1920)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64, align: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!490, !388, !476, !476}
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64, align: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !390, file: !91, line: 69, baseType: !492, size: 64, align: 64, offset: 1984)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64, align: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{!495, !388, !476}
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64, align: 64)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !119, line: 109, baseType: !497)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !498, line: 15, size: 1408, align: 64, elements: !499)
!498 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!499 = !{!500, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !518, !522, !524, !525, !526, !527, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !497, file: !501, line: 3, baseType: !82, size: 32, align: 32)
!501 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!502 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !497, file: !501, line: 4, baseType: !82, size: 32, align: 32, offset: 32)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !497, file: !501, line: 5, baseType: !362, size: 64, align: 64, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !497, file: !501, line: 7, baseType: !74, size: 64, align: 64, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !497, file: !501, line: 8, baseType: !388, size: 64, align: 64, offset: 192)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !497, file: !501, line: 9, baseType: !104, size: 64, align: 64, offset: 256)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !497, file: !501, line: 10, baseType: !104, size: 64, align: 64, offset: 320)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !497, file: !501, line: 11, baseType: !334, size: 64, align: 64, offset: 384)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !497, file: !501, line: 12, baseType: !82, size: 32, align: 32, offset: 448)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !497, file: !501, line: 13, baseType: !104, size: 64, align: 64, offset: 512)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !497, file: !501, line: 15, baseType: !512, size: 64, align: 64, offset: 576)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64, align: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{null, !515}
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64, align: 64)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !119, line: 108, baseType: !517)
!517 = !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !119, line: 108, flags: DIFlagFwdDecl)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !497, file: !501, line: 17, baseType: !519, size: 64, align: 64, offset: 640)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64, align: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{!476, !515}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !497, file: !523, line: 5, baseType: !104, size: 64, align: 64, offset: 704)
!523 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!524 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !497, file: !523, line: 6, baseType: !104, size: 64, align: 64, offset: 768)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !497, file: !523, line: 7, baseType: !334, size: 64, align: 64, offset: 832)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !497, file: !523, line: 9, baseType: !362, size: 64, align: 64, offset: 896)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !497, file: !523, line: 10, baseType: !528, size: 64, align: 64, offset: 960)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64, align: 64)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !119, line: 111, baseType: !530)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !531, line: 13, size: 576, align: 64, elements: !532)
!531 = !DIFile(filename: "../../../src/core/nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!532 = !{!533, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !551, !552}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !530, file: !534, line: 3, baseType: !82, size: 32, align: 32)
!534 = !DIFile(filename: "../../../src/core/nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!535 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !530, file: !534, line: 4, baseType: !82, size: 32, align: 32, offset: 32)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !530, file: !534, line: 6, baseType: !334, size: 64, align: 64, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !530, file: !534, line: 8, baseType: !104, size: 64, align: 64, offset: 128)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !530, file: !534, line: 9, baseType: !104, size: 64, align: 64, offset: 192)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !530, file: !534, line: 10, baseType: !104, size: 64, align: 64, offset: 256)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !530, file: !534, line: 11, baseType: !82, size: 32, align: 32, offset: 320)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !530, file: !534, line: 14, baseType: !166, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !530, file: !534, line: 15, baseType: !166, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !530, file: !534, line: 18, baseType: !166, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !530, file: !534, line: 19, baseType: !166, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !530, file: !534, line: 20, baseType: !166, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !530, file: !534, line: 21, baseType: !166, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !530, file: !534, line: 22, baseType: !548, size: 64, align: 8, offset: 360)
!548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 64, align: 8, elements: !549)
!549 = !{!550}
!550 = !DISubrange(count: 8)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !530, file: !534, line: 26, baseType: !74, size: 64, align: 64, offset: 448)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !530, file: !534, line: 28, baseType: !528, size: 64, align: 64, offset: 512)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !497, file: !523, line: 12, baseType: !166, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !497, file: !523, line: 13, baseType: !104, size: 64, align: 64, offset: 1088)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !497, file: !523, line: 14, baseType: !82, size: 32, align: 32, offset: 1152)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !497, file: !523, line: 15, baseType: !104, size: 64, align: 64, offset: 1216)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !497, file: !523, line: 17, baseType: !166, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !497, file: !523, line: 18, baseType: !166, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !497, file: !523, line: 19, baseType: !166, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !497, file: !523, line: 20, baseType: !166, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !497, file: !523, line: 22, baseType: !166, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !497, file: !523, line: 23, baseType: !166, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !497, file: !523, line: 24, baseType: !166, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !497, file: !523, line: 25, baseType: !166, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !497, file: !523, line: 26, baseType: !166, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !497, file: !523, line: 31, baseType: !567, size: 64, align: 64, offset: 1344)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64, align: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{!104, !495}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !390, file: !91, line: 70, baseType: !571, size: 64, align: 64, offset: 2048)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64, align: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!574, !388, !476}
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64, align: 64)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !119, line: 110, baseType: !576)
!576 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !119, line: 110, flags: DIFlagFwdDecl)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !390, file: !91, line: 71, baseType: !578, size: 64, align: 64, offset: 2112)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64, align: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{!82, !476, !476}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !390, file: !91, line: 73, baseType: !578, size: 64, align: 64, offset: 2176)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !87, file: !91, line: 55, baseType: !469, size: 64, align: 64, offset: 1664)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !87, file: !91, line: 57, baseType: !473, size: 64, align: 64, offset: 1728)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !87, file: !91, line: 60, baseType: !479, size: 64, align: 64, offset: 1792)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !87, file: !91, line: 62, baseType: !483, size: 64, align: 64, offset: 1856)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !87, file: !91, line: 65, baseType: !487, size: 64, align: 64, offset: 1920)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !87, file: !91, line: 69, baseType: !492, size: 64, align: 64, offset: 1984)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !87, file: !91, line: 70, baseType: !571, size: 64, align: 64, offset: 2048)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !87, file: !91, line: 71, baseType: !578, size: 64, align: 64, offset: 2112)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !87, file: !91, line: 73, baseType: !578, size: 64, align: 64, offset: 2176)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "redirects", scope: !87, file: !88, line: 46, baseType: !250, size: 64, align: 64, offset: 2240)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_queue", scope: !87, file: !88, line: 47, baseType: !250, size: 64, align: 64, offset: 2304)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_next", scope: !87, file: !88, line: 48, baseType: !594, size: 64, align: 64, offset: 2368)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64, align: 64)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "REDIRECT_REC", file: !86, line: 8, baseType: !596)
!596 = !DICompositeType(tag: DW_TAG_structure_type, name: "_REDIRECT_REC", file: !86, line: 8, flags: DIFlagFwdDecl)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_active", scope: !87, file: !88, line: 49, baseType: !250, size: 64, align: 64, offset: 2432)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "last_nick", scope: !87, file: !88, line: 51, baseType: !104, size: 64, align: 64, offset: 2496)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !87, file: !88, line: 53, baseType: !104, size: 64, align: 64, offset: 2560)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !87, file: !88, line: 54, baseType: !104, size: 64, align: 64, offset: 2624)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "wanted_usermode", scope: !87, file: !88, line: 55, baseType: !104, size: 64, align: 64, offset: 2688)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "userhost", scope: !87, file: !88, line: 56, baseType: !104, size: 64, align: 64, offset: 2752)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "channels_formed", scope: !87, file: !88, line: 57, baseType: !82, size: 32, align: 32, offset: 2816)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "whois_found", scope: !87, file: !88, line: 59, baseType: !166, size: 1, align: 32, offset: 2848, flags: DIFlagBitField, extraData: i64 2848)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "whowas_found", scope: !87, file: !88, line: 60, baseType: !166, size: 1, align: 32, offset: 2849, flags: DIFlagBitField, extraData: i64 2848)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "emode_known", scope: !87, file: !88, line: 62, baseType: !166, size: 1, align: 32, offset: 2850, flags: DIFlagBitField, extraData: i64 2848)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_mode", scope: !87, file: !88, line: 63, baseType: !166, size: 1, align: 32, offset: 2851, flags: DIFlagBitField, extraData: i64 2848)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_who", scope: !87, file: !88, line: 64, baseType: !166, size: 1, align: 32, offset: 2852, flags: DIFlagBitField, extraData: i64 2848)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "one_endofwho", scope: !87, file: !88, line: 65, baseType: !166, size: 1, align: 32, offset: 2853, flags: DIFlagBitField, extraData: i64 2848)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "disable_lag", scope: !87, file: !88, line: 66, baseType: !166, size: 1, align: 32, offset: 2854, flags: DIFlagBitField, extraData: i64 2848)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "nick_collision", scope: !87, file: !88, line: 67, baseType: !166, size: 1, align: 32, offset: 2855, flags: DIFlagBitField, extraData: i64 2848)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "motd_got", scope: !87, file: !88, line: 68, baseType: !166, size: 1, align: 32, offset: 2856, flags: DIFlagBitField, extraData: i64 2848)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "isupport_sent", scope: !87, file: !88, line: 69, baseType: !166, size: 1, align: 32, offset: 2857, flags: DIFlagBitField, extraData: i64 2848)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "cap_complete", scope: !87, file: !88, line: 70, baseType: !166, size: 1, align: 32, offset: 2858, flags: DIFlagBitField, extraData: i64 2848)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "cap_in_multiline", scope: !87, file: !88, line: 71, baseType: !166, size: 1, align: 32, offset: 2859, flags: DIFlagBitField, extraData: i64 2848)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_success", scope: !87, file: !88, line: 72, baseType: !166, size: 1, align: 32, offset: 2860, flags: DIFlagBitField, extraData: i64 2848)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks_in_cmd", scope: !87, file: !88, line: 74, baseType: !82, size: 32, align: 32, offset: 2880)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes_in_cmd", scope: !87, file: !88, line: 75, baseType: !82, size: 32, align: 32, offset: 2912)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois_in_cmd", scope: !87, file: !88, line: 76, baseType: !82, size: 32, align: 32, offset: 2944)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs_in_cmd", scope: !87, file: !88, line: 77, baseType: !82, size: 32, align: 32, offset: 2976)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "cap_supported", scope: !87, file: !88, line: 79, baseType: !362, size: 64, align: 64, offset: 3008)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "cap_active", scope: !87, file: !88, line: 80, baseType: !250, size: 64, align: 64, offset: 3072)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "cap_queue", scope: !87, file: !88, line: 81, baseType: !250, size: 64, align: 64, offset: 3136)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_buffer", scope: !87, file: !88, line: 83, baseType: !289, size: 64, align: 64, offset: 3200)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_timeout", scope: !87, file: !88, line: 84, baseType: !241, size: 32, align: 32, offset: 3264)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcount", scope: !87, file: !88, line: 87, baseType: !82, size: 32, align: 32, offset: 3296)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "cmdqueue", scope: !87, file: !88, line: 91, baseType: !250, size: 64, align: 64, offset: 3328)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "wait_cmd", scope: !87, file: !88, line: 92, baseType: !374, size: 128, align: 64, offset: 3392)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd", scope: !87, file: !88, line: 93, baseType: !374, size: 128, align: 64, offset: 3520)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !87, file: !88, line: 95, baseType: !82, size: 32, align: 32, offset: 3648)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !87, file: !88, line: 96, baseType: !82, size: 32, align: 32, offset: 3680)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !87, file: !88, line: 97, baseType: !82, size: 32, align: 32, offset: 3712)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "idles", scope: !87, file: !88, line: 100, baseType: !250, size: 64, align: 64, offset: 3776)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "ctcpqueue", scope: !87, file: !88, line: 103, baseType: !250, size: 64, align: 64, offset: 3840)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "knockoutlist", scope: !87, file: !88, line: 106, baseType: !250, size: 64, align: 64, offset: 3904)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "splits", scope: !87, file: !88, line: 108, baseType: !362, size: 64, align: 64, offset: 3968)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "split_servers", scope: !87, file: !88, line: 109, baseType: !250, size: 64, align: 64, offset: 4032)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "rejoin_channels", scope: !87, file: !88, line: 111, baseType: !250, size: 64, align: 64, offset: 4096)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "chanqueries", scope: !87, file: !88, line: 114, baseType: !74, size: 64, align: 64, offset: 4160)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "isupport", scope: !87, file: !88, line: 116, baseType: !362, size: 64, align: 64, offset: 4224)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !87, file: !88, line: 117, baseType: !642, size: 32768, align: 64, offset: 4288)
!642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !643, size: 32768, align: 64, elements: !692)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "modes_type", file: !644, line: 10, size: 128, align: 64, elements: !645)
!644 = !DIFile(filename: "../../../src/irc/core/modes.h", directory: "/home/lichi/Desktop/irssi/task1")
!645 = !{!646, !691}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !643, file: !644, line: 11, baseType: !647, size: 64, align: 64)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64, align: 64)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_func_t", file: !644, line: 7, baseType: !649)
!649 = !DISubroutineType(types: !650)
!650 = !{null, !651, !476, !105, !105, !104, !289}
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64, align: 64)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_CHANNEL_REC", file: !86, line: 7, baseType: !653)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_CHANNEL_REC", file: !654, line: 15, size: 1600, align: 64, elements: !655)
!654 = !DIFile(filename: "../../../src/irc/core/irc-channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!655 = !{!656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !653, file: !501, line: 3, baseType: !82, size: 32, align: 32)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !653, file: !501, line: 4, baseType: !82, size: 32, align: 32, offset: 32)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !653, file: !501, line: 5, baseType: !362, size: 64, align: 64, offset: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !653, file: !501, line: 7, baseType: !74, size: 64, align: 64, offset: 128)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !653, file: !501, line: 8, baseType: !84, size: 64, align: 64, offset: 192)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !653, file: !501, line: 9, baseType: !104, size: 64, align: 64, offset: 256)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !653, file: !501, line: 10, baseType: !104, size: 64, align: 64, offset: 320)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !653, file: !501, line: 11, baseType: !334, size: 64, align: 64, offset: 384)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !653, file: !501, line: 12, baseType: !82, size: 32, align: 32, offset: 448)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !653, file: !501, line: 13, baseType: !104, size: 64, align: 64, offset: 512)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !653, file: !501, line: 15, baseType: !512, size: 64, align: 64, offset: 576)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !653, file: !501, line: 17, baseType: !519, size: 64, align: 64, offset: 640)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !653, file: !523, line: 5, baseType: !104, size: 64, align: 64, offset: 704)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !653, file: !523, line: 6, baseType: !104, size: 64, align: 64, offset: 768)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !653, file: !523, line: 7, baseType: !334, size: 64, align: 64, offset: 832)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !653, file: !523, line: 9, baseType: !362, size: 64, align: 64, offset: 896)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !653, file: !523, line: 10, baseType: !528, size: 64, align: 64, offset: 960)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !653, file: !523, line: 12, baseType: !166, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !653, file: !523, line: 13, baseType: !104, size: 64, align: 64, offset: 1088)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !653, file: !523, line: 14, baseType: !82, size: 32, align: 32, offset: 1152)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !653, file: !523, line: 15, baseType: !104, size: 64, align: 64, offset: 1216)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !653, file: !523, line: 17, baseType: !166, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !653, file: !523, line: 18, baseType: !166, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !653, file: !523, line: 19, baseType: !166, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !653, file: !523, line: 20, baseType: !166, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !653, file: !523, line: 22, baseType: !166, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !653, file: !523, line: 23, baseType: !166, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !653, file: !523, line: 24, baseType: !166, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !653, file: !523, line: 25, baseType: !166, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !653, file: !523, line: 26, baseType: !166, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !653, file: !523, line: 31, baseType: !567, size: 64, align: 64, offset: 1344)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "banlist", scope: !653, file: !654, line: 18, baseType: !250, size: 64, align: 64, offset: 1408)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "massjoin_start", scope: !653, file: !654, line: 20, baseType: !334, size: 64, align: 64, offset: 1472)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "massjoins", scope: !653, file: !654, line: 21, baseType: !82, size: 32, align: 32, offset: 1536)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "last_massjoins", scope: !653, file: !654, line: 22, baseType: !82, size: 32, align: 32, offset: 1568)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !643, file: !644, line: 12, baseType: !105, size: 8, align: 8, offset: 64)
!692 = !{!693}
!693 = !DISubrange(count: 256)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !87, file: !88, line: 118, baseType: !695, size: 2048, align: 8, offset: 37056)
!695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 2048, align: 8, elements: !692)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "nick_comp_func", scope: !87, file: !88, line: 120, baseType: !578, size: 64, align: 64, offset: 39104)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHRFunc", file: !364, line: 39, baseType: !698)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64, align: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{!79, !83, !83, !83}
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64, align: 64)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64, align: 64)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "MODULE_SERVER_REC", file: !704, line: 11, baseType: !705)
!704 = !DIFile(filename: "module.h", directory: "/home/lichi/Desktop/irssi/task1")
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !704, line: 4, size: 192, align: 64, elements: !706)
!706 = !{!707, !708, !709}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "floodlist", scope: !705, file: !704, line: 6, baseType: !362, size: 64, align: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "ignorelist", scope: !705, file: !704, line: 9, baseType: !250, size: 64, align: 64, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_lastcheck", scope: !705, file: !704, line: 10, baseType: !334, size: 64, align: 64, offset: 128)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashFunc", file: !80, line: 90, baseType: !711)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64, align: 64)
!712 = !DISubroutineType(types: !713)
!713 = !{!241, !714}
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "gconstpointer", file: !80, line: 78, baseType: !72)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCompareFunc", file: !80, line: 80, baseType: !716)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64, align: 64)
!717 = !DISubroutineType(types: !718)
!718 = !{!81, !714, !714}
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHFunc", file: !80, line: 91, baseType: !720)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64, align: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{null, !83, !83, !83}
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "GFunc", file: !80, line: 88, baseType: !724)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64, align: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{null, !83, !83}
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64, align: 64)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "FLOOD_REC", file: !729, line: 45, baseType: !730)
!729 = !DIFile(filename: "flood.c", directory: "/home/lichi/Desktop/irssi/task1")
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !729, line: 42, size: 128, align: 64, elements: !731)
!731 = !{!732, !733}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !730, file: !729, line: 43, baseType: !104, size: 64, align: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !730, file: !729, line: 44, baseType: !250, size: 64, align: 64, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64, align: 64)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "FLOOD_ITEM_REC", file: !729, line: 40, baseType: !736)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !729, line: 35, size: 192, align: 64, elements: !737)
!737 = !{!738, !739, !740}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !736, file: !729, line: 36, baseType: !104, size: 64, align: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !736, file: !729, line: 37, baseType: !82, size: 32, align: 32, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "msgtimes", scope: !736, file: !729, line: 39, baseType: !250, size: 64, align: 64, offset: 128)
!741 = !{!742, !743, !744}
!742 = distinct !DIGlobalVariable(name: "flood_tag", scope: !0, file: !729, line: 47, type: !82, isLocal: true, isDefinition: true, variable: i32* @flood_tag)
!743 = distinct !DIGlobalVariable(name: "flood_timecheck", scope: !0, file: !729, line: 48, type: !82, isLocal: true, isDefinition: true, variable: i32* @flood_timecheck)
!744 = distinct !DIGlobalVariable(name: "flood_max_msgs", scope: !0, file: !729, line: 48, type: !82, isLocal: true, isDefinition: true, variable: i32* @flood_max_msgs)
!745 = !{i32 2, !"Dwarf Version", i32 4}
!746 = !{i32 2, !"Debug Info Version", i32 3}
!747 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!748 = distinct !DISubprogram(name: "irc_flood_init", scope: !729, file: !729, line: 318, type: !238, isLocal: false, isDefinition: true, scopeLine: 319, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !749)
!749 = !{}
!750 = !DILocation(line: 320, column: 2, scope: !748)
!751 = !DILocation(line: 321, column: 2, scope: !748)
!752 = !DILocation(line: 323, column: 12, scope: !748)
!753 = !DILocation(line: 324, column: 2, scope: !748)
!754 = !DILocation(line: 325, column: 2, scope: !748)
!755 = !DILocation(line: 326, column: 2, scope: !748)
!756 = !DILocation(line: 327, column: 2, scope: !748)
!757 = !DILocation(line: 329, column: 2, scope: !748)
!758 = !DILocation(line: 330, column: 2, scope: !748)
!759 = !DILocation(line: 331, column: 2, scope: !748)
!760 = !DILocation(line: 332, column: 1, scope: !748)
!761 = distinct !DISubprogram(name: "read_settings", scope: !729, file: !729, line: 295, type: !238, isLocal: true, isDefinition: true, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !749)
!762 = !DILocation(line: 297, column: 20, scope: !761)
!763 = !DILocation(line: 297, column: 18, scope: !761)
!764 = !DILocation(line: 298, column: 19, scope: !761)
!765 = !DILocation(line: 298, column: 17, scope: !761)
!766 = !DILocation(line: 300, column: 6, scope: !767)
!767 = distinct !DILexicalBlock(scope: !761, file: !729, line: 300, column: 6)
!768 = !DILocation(line: 300, column: 22, scope: !767)
!769 = !DILocation(line: 300, column: 26, scope: !767)
!770 = !DILocation(line: 300, column: 29, scope: !771)
!771 = !DILexicalBlockFile(scope: !767, file: !729, discriminator: 1)
!772 = !DILocation(line: 300, column: 44, scope: !771)
!773 = !DILocation(line: 300, column: 6, scope: !771)
!774 = !DILocation(line: 301, column: 7, scope: !775)
!775 = distinct !DILexicalBlock(scope: !776, file: !729, line: 301, column: 7)
!776 = distinct !DILexicalBlock(scope: !767, file: !729, line: 300, column: 49)
!777 = !DILocation(line: 301, column: 17, scope: !775)
!778 = !DILocation(line: 301, column: 7, scope: !776)
!779 = !DILocation(line: 302, column: 16, scope: !780)
!780 = distinct !DILexicalBlock(scope: !775, file: !729, line: 301, column: 24)
!781 = !DILocation(line: 302, column: 14, scope: !780)
!782 = !DILocation(line: 304, column: 4, scope: !780)
!783 = !DILocation(line: 305, column: 4, scope: !780)
!784 = !DILocation(line: 306, column: 4, scope: !780)
!785 = !DILocation(line: 307, column: 3, scope: !780)
!786 = !DILocation(line: 308, column: 2, scope: !776)
!787 = !DILocation(line: 308, column: 13, scope: !788)
!788 = !DILexicalBlockFile(scope: !789, file: !729, discriminator: 1)
!789 = distinct !DILexicalBlock(scope: !767, file: !729, line: 308, column: 13)
!790 = !DILocation(line: 308, column: 23, scope: !788)
!791 = !DILocation(line: 309, column: 19, scope: !792)
!792 = distinct !DILexicalBlock(scope: !789, file: !729, line: 308, column: 30)
!793 = !DILocation(line: 309, column: 3, scope: !792)
!794 = !DILocation(line: 310, column: 13, scope: !792)
!795 = !DILocation(line: 312, column: 3, scope: !792)
!796 = !DILocation(line: 313, column: 3, scope: !792)
!797 = !DILocation(line: 314, column: 3, scope: !792)
!798 = !DILocation(line: 315, column: 2, scope: !792)
!799 = !DILocation(line: 316, column: 1, scope: !761)
!800 = distinct !DISubprogram(name: "flood_init_server", scope: !729, file: !729, line: 111, type: !801, isLocal: true, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !749)
!801 = !DISubroutineType(types: !802)
!802 = !{null, !84}
!803 = !DILocalVariable(name: "server", arg: 1, scope: !800, file: !729, line: 111, type: !84)
!804 = !DIExpression()
!805 = !DILocation(line: 111, column: 47, scope: !800)
!806 = !DILocalVariable(name: "rec", scope: !800, file: !729, line: 113, type: !702)
!807 = !DILocation(line: 113, column: 21, scope: !800)
!808 = !DILocation(line: 115, column: 2, scope: !800)
!809 = distinct !{!809, !808}
!810 = !DILocation(line: 115, column: 10, scope: !811)
!811 = !DILexicalBlockFile(scope: !812, file: !729, discriminator: 1)
!812 = distinct !DILexicalBlock(scope: !813, file: !729, line: 115, column: 10)
!813 = distinct !DILexicalBlock(scope: !800, file: !729, line: 115, column: 4)
!814 = !DILocation(line: 115, column: 17, scope: !811)
!815 = !DILocation(line: 115, column: 5, scope: !816)
!816 = !DILexicalBlockFile(scope: !817, file: !729, discriminator: 2)
!817 = distinct !DILexicalBlock(scope: !812, file: !729, line: 115, column: 3)
!818 = !DILocation(line: 115, column: 14, scope: !819)
!819 = !DILexicalBlockFile(scope: !820, file: !729, discriminator: 3)
!820 = distinct !DILexicalBlock(scope: !812, file: !729, line: 115, column: 12)
!821 = !DILocation(line: 115, column: 101, scope: !819)
!822 = !DILocation(line: 115, column: 112, scope: !823)
!823 = !DILexicalBlockFile(scope: !813, file: !729, discriminator: 4)
!824 = !DILocation(line: 117, column: 87, scope: !825)
!825 = distinct !DILexicalBlock(scope: !800, file: !729, line: 117, column: 6)
!826 = !DILocation(line: 117, column: 69, scope: !825)
!827 = !DILocation(line: 117, column: 54, scope: !825)
!828 = !DILocation(line: 117, column: 53, scope: !825)
!829 = !DILocation(line: 117, column: 28, scope: !830)
!830 = !DILexicalBlockFile(scope: !825, file: !729, discriminator: 3)
!831 = !DILocation(line: 117, column: 9, scope: !825)
!832 = !DILocation(line: 117, column: 6, scope: !800)
!833 = !DILocation(line: 117, column: 8, scope: !834)
!834 = !DILexicalBlockFile(scope: !825, file: !729, discriminator: 1)
!835 = !DILocation(line: 117, column: 6, scope: !836)
!836 = !DILexicalBlockFile(scope: !800, file: !729, discriminator: 2)
!837 = !DILocation(line: 118, column: 17, scope: !825)
!838 = !DILocation(line: 120, column: 31, scope: !800)
!839 = !DILocation(line: 120, column: 9, scope: !800)
!840 = !DILocation(line: 120, column: 6, scope: !800)
!841 = !DILocation(line: 121, column: 23, scope: !800)
!842 = !DILocation(line: 121, column: 32, scope: !800)
!843 = !DILocation(line: 121, column: 58, scope: !800)
!844 = !DILocation(line: 121, column: 2, scope: !800)
!845 = !DILocation(line: 123, column: 19, scope: !800)
!846 = !DILocation(line: 123, column: 2, scope: !800)
!847 = !DILocation(line: 123, column: 7, scope: !800)
!848 = !DILocation(line: 123, column: 17, scope: !800)
!849 = !DILocation(line: 125, column: 1, scope: !800)
!850 = !DILocation(line: 125, column: 1, scope: !851)
!851 = !DILexicalBlockFile(scope: !800, file: !729, discriminator: 1)
!852 = distinct !DISubprogram(name: "flood_deinit_server", scope: !729, file: !729, line: 145, type: !801, isLocal: true, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !749)
!853 = !DILocalVariable(name: "server", arg: 1, scope: !852, file: !729, line: 145, type: !84)
!854 = !DILocation(line: 145, column: 49, scope: !852)
!855 = !DILocalVariable(name: "mserver", scope: !852, file: !729, line: 147, type: !702)
!856 = !DILocation(line: 147, column: 21, scope: !852)
!857 = !DILocation(line: 149, column: 2, scope: !852)
!858 = distinct !{!858, !857}
!859 = !DILocation(line: 149, column: 10, scope: !860)
!860 = !DILexicalBlockFile(scope: !861, file: !729, discriminator: 1)
!861 = distinct !DILexicalBlock(scope: !862, file: !729, line: 149, column: 10)
!862 = distinct !DILexicalBlock(scope: !852, file: !729, line: 149, column: 4)
!863 = !DILocation(line: 149, column: 17, scope: !860)
!864 = !DILocation(line: 149, column: 5, scope: !865)
!865 = !DILexicalBlockFile(scope: !866, file: !729, discriminator: 2)
!866 = distinct !DILexicalBlock(scope: !861, file: !729, line: 149, column: 3)
!867 = !DILocation(line: 149, column: 14, scope: !868)
!868 = !DILexicalBlockFile(scope: !869, file: !729, discriminator: 3)
!869 = distinct !DILexicalBlock(scope: !861, file: !729, line: 149, column: 12)
!870 = !DILocation(line: 149, column: 101, scope: !868)
!871 = !DILocation(line: 149, column: 112, scope: !872)
!872 = !DILexicalBlockFile(scope: !862, file: !729, discriminator: 4)
!873 = !DILocation(line: 151, column: 87, scope: !874)
!874 = distinct !DILexicalBlock(scope: !852, file: !729, line: 151, column: 6)
!875 = !DILocation(line: 151, column: 69, scope: !874)
!876 = !DILocation(line: 151, column: 54, scope: !874)
!877 = !DILocation(line: 151, column: 53, scope: !874)
!878 = !DILocation(line: 151, column: 28, scope: !879)
!879 = !DILexicalBlockFile(scope: !874, file: !729, discriminator: 3)
!880 = !DILocation(line: 151, column: 9, scope: !874)
!881 = !DILocation(line: 151, column: 6, scope: !852)
!882 = !DILocation(line: 151, column: 8, scope: !883)
!883 = !DILexicalBlockFile(scope: !874, file: !729, discriminator: 1)
!884 = !DILocation(line: 151, column: 6, scope: !885)
!885 = !DILexicalBlockFile(scope: !852, file: !729, discriminator: 2)
!886 = !DILocation(line: 152, column: 17, scope: !874)
!887 = !DILocation(line: 154, column: 33, scope: !852)
!888 = !DILocation(line: 154, column: 42, scope: !852)
!889 = !DILocation(line: 154, column: 12, scope: !852)
!890 = !DILocation(line: 154, column: 10, scope: !852)
!891 = !DILocation(line: 155, column: 6, scope: !892)
!892 = distinct !DILexicalBlock(scope: !852, file: !729, line: 155, column: 6)
!893 = !DILocation(line: 155, column: 14, scope: !892)
!894 = !DILocation(line: 155, column: 21, scope: !892)
!895 = !DILocation(line: 155, column: 24, scope: !896)
!896 = !DILexicalBlockFile(scope: !892, file: !729, discriminator: 1)
!897 = !DILocation(line: 155, column: 33, scope: !896)
!898 = !DILocation(line: 155, column: 43, scope: !896)
!899 = !DILocation(line: 155, column: 6, scope: !896)
!900 = !DILocation(line: 156, column: 19, scope: !901)
!901 = distinct !DILexicalBlock(scope: !892, file: !729, line: 155, column: 52)
!902 = !DILocation(line: 158, column: 24, scope: !901)
!903 = !DILocation(line: 158, column: 33, scope: !901)
!904 = !DILocation(line: 158, column: 3, scope: !901)
!905 = !DILocation(line: 160, column: 24, scope: !901)
!906 = !DILocation(line: 160, column: 33, scope: !901)
!907 = !DILocation(line: 160, column: 3, scope: !901)
!908 = !DILocation(line: 161, column: 2, scope: !901)
!909 = !DILocation(line: 162, column: 9, scope: !852)
!910 = !DILocation(line: 162, column: 2, scope: !852)
!911 = !DILocation(line: 163, column: 23, scope: !852)
!912 = !DILocation(line: 163, column: 32, scope: !852)
!913 = !DILocation(line: 163, column: 2, scope: !852)
!914 = !DILocation(line: 164, column: 1, scope: !852)
!915 = !DILocation(line: 164, column: 1, scope: !916)
!916 = !DILexicalBlockFile(scope: !852, file: !729, discriminator: 1)
!917 = distinct !DISubprogram(name: "irc_flood_deinit", scope: !729, file: !729, line: 334, type: !238, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !749)
!918 = !DILocation(line: 336, column: 2, scope: !917)
!919 = !DILocation(line: 338, column: 6, scope: !920)
!920 = distinct !DILexicalBlock(scope: !917, file: !729, line: 338, column: 6)
!921 = !DILocation(line: 338, column: 16, scope: !920)
!922 = !DILocation(line: 338, column: 6, scope: !917)
!923 = !DILocation(line: 339, column: 19, scope: !924)
!924 = distinct !DILexicalBlock(scope: !920, file: !729, line: 338, column: 23)
!925 = !DILocation(line: 339, column: 3, scope: !924)
!926 = !DILocation(line: 340, column: 3, scope: !924)
!927 = !DILocation(line: 341, column: 3, scope: !924)
!928 = !DILocation(line: 342, column: 3, scope: !924)
!929 = !DILocation(line: 343, column: 2, scope: !924)
!930 = !DILocation(line: 345, column: 2, scope: !917)
!931 = !DILocation(line: 346, column: 2, scope: !917)
!932 = !DILocation(line: 347, column: 2, scope: !917)
!933 = !DILocation(line: 348, column: 1, scope: !917)
!934 = distinct !DISubprogram(name: "flood_privmsg", scope: !729, file: !729, line: 239, type: !935, isLocal: true, isDefinition: true, scopeLine: 241, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !749)
!935 = !DISubroutineType(types: !936)
!936 = !{null, !84, !476, !476, !476}
!937 = !DILocalVariable(name: "server", arg: 1, scope: !934, file: !729, line: 239, type: !84)
!938 = !DILocation(line: 239, column: 43, scope: !934)
!939 = !DILocalVariable(name: "data", arg: 2, scope: !934, file: !729, line: 239, type: !476)
!940 = !DILocation(line: 239, column: 63, scope: !934)
!941 = !DILocalVariable(name: "nick", arg: 3, scope: !934, file: !729, line: 240, type: !476)
!942 = !DILocation(line: 240, column: 18, scope: !934)
!943 = !DILocalVariable(name: "addr", arg: 4, scope: !934, file: !729, line: 240, type: !476)
!944 = !DILocation(line: 240, column: 36, scope: !934)
!945 = !DILocalVariable(name: "params", scope: !934, file: !729, line: 242, type: !104)
!946 = !DILocation(line: 242, column: 8, scope: !934)
!947 = !DILocalVariable(name: "target", scope: !934, file: !729, line: 242, type: !104)
!948 = !DILocation(line: 242, column: 17, scope: !934)
!949 = !DILocalVariable(name: "text", scope: !934, file: !729, line: 242, type: !104)
!950 = !DILocation(line: 242, column: 26, scope: !934)
!951 = !DILocalVariable(name: "level", scope: !934, file: !729, line: 243, type: !82)
!952 = !DILocation(line: 243, column: 6, scope: !934)
!953 = !DILocation(line: 245, column: 2, scope: !934)
!954 = distinct !{!954, !953}
!955 = !DILocation(line: 245, column: 10, scope: !956)
!956 = !DILexicalBlockFile(scope: !957, file: !729, discriminator: 1)
!957 = distinct !DILexicalBlock(scope: !958, file: !729, line: 245, column: 10)
!958 = distinct !DILexicalBlock(scope: !934, file: !729, line: 245, column: 4)
!959 = !DILocation(line: 245, column: 15, scope: !956)
!960 = !DILocation(line: 245, column: 5, scope: !961)
!961 = !DILexicalBlockFile(scope: !962, file: !729, discriminator: 2)
!962 = distinct !DILexicalBlock(scope: !957, file: !729, line: 245, column: 3)
!963 = !DILocation(line: 245, column: 14, scope: !964)
!964 = !DILexicalBlockFile(scope: !965, file: !729, discriminator: 3)
!965 = distinct !DILexicalBlock(scope: !957, file: !729, line: 245, column: 12)
!966 = !DILocation(line: 245, column: 99, scope: !964)
!967 = !DILocation(line: 245, column: 110, scope: !968)
!968 = !DILexicalBlockFile(scope: !958, file: !729, discriminator: 4)
!969 = !DILocation(line: 246, column: 2, scope: !934)
!970 = distinct !{!970, !969}
!971 = !DILocation(line: 246, column: 10, scope: !972)
!972 = !DILexicalBlockFile(scope: !973, file: !729, discriminator: 1)
!973 = distinct !DILexicalBlock(scope: !974, file: !729, line: 246, column: 10)
!974 = distinct !DILexicalBlock(scope: !934, file: !729, line: 246, column: 4)
!975 = !DILocation(line: 246, column: 17, scope: !972)
!976 = !DILocation(line: 246, column: 5, scope: !977)
!977 = !DILexicalBlockFile(scope: !978, file: !729, discriminator: 2)
!978 = distinct !DILexicalBlock(scope: !973, file: !729, line: 246, column: 3)
!979 = !DILocation(line: 246, column: 14, scope: !980)
!980 = !DILexicalBlockFile(scope: !981, file: !729, discriminator: 3)
!981 = distinct !DILexicalBlock(scope: !973, file: !729, line: 246, column: 12)
!982 = !DILocation(line: 246, column: 101, scope: !980)
!983 = !DILocation(line: 246, column: 112, scope: !984)
!984 = !DILexicalBlockFile(scope: !974, file: !729, discriminator: 4)
!985 = !DILocation(line: 248, column: 6, scope: !986)
!986 = distinct !DILexicalBlock(scope: !934, file: !729, line: 248, column: 6)
!987 = !DILocation(line: 248, column: 11, scope: !986)
!988 = !DILocation(line: 248, column: 18, scope: !986)
!989 = !DILocation(line: 248, column: 40, scope: !990)
!990 = !DILexicalBlockFile(scope: !986, file: !729, discriminator: 1)
!991 = !DILocation(line: 248, column: 46, scope: !990)
!992 = !DILocation(line: 248, column: 54, scope: !990)
!993 = !DILocation(line: 248, column: 21, scope: !990)
!994 = !DILocation(line: 248, column: 60, scope: !990)
!995 = !DILocation(line: 248, column: 6, scope: !990)
!996 = !DILocation(line: 249, column: 3, scope: !986)
!997 = !DILocation(line: 251, column: 28, scope: !934)
!998 = !DILocation(line: 251, column: 11, scope: !934)
!999 = !DILocation(line: 251, column: 9, scope: !934)
!1000 = !DILocation(line: 253, column: 46, scope: !934)
!1001 = !DILocation(line: 253, column: 28, scope: !934)
!1002 = !DILocation(line: 253, column: 13, scope: !934)
!1003 = !DILocation(line: 253, column: 24, scope: !934)
!1004 = !DILocation(line: 253, column: 68, scope: !934)
!1005 = !DILocation(line: 253, column: 50, scope: !1006)
!1006 = !DILexicalBlockFile(scope: !934, file: !729, discriminator: 1)
!1007 = !DILocation(line: 253, column: 35, scope: !934)
!1008 = !DILocation(line: 253, column: 23, scope: !934)
!1009 = !DILocation(line: 253, column: 11, scope: !1010)
!1010 = !DILexicalBlockFile(scope: !934, file: !729, discriminator: 2)
!1011 = !DILocation(line: 253, column: 10, scope: !934)
!1012 = !DILocation(line: 253, column: 8, scope: !934)
!1013 = !DILocation(line: 254, column: 6, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !934, file: !729, line: 254, column: 6)
!1015 = !DILocation(line: 254, column: 11, scope: !1014)
!1016 = !DILocation(line: 254, column: 18, scope: !1014)
!1017 = !DILocation(line: 254, column: 69, scope: !1018)
!1018 = !DILexicalBlockFile(scope: !1014, file: !729, discriminator: 1)
!1019 = !DILocation(line: 254, column: 51, scope: !1018)
!1020 = !DILocation(line: 254, column: 36, scope: !1018)
!1021 = !DILocation(line: 254, column: 49, scope: !1018)
!1022 = !DILocation(line: 254, column: 55, scope: !1018)
!1023 = !DILocation(line: 254, column: 61, scope: !1018)
!1024 = !DILocation(line: 254, column: 75, scope: !1018)
!1025 = !DILocation(line: 254, column: 22, scope: !1026)
!1026 = !DILexicalBlockFile(scope: !1018, file: !729, discriminator: 2)
!1027 = !DILocation(line: 254, column: 22, scope: !1018)
!1028 = !DILocation(line: 254, column: 6, scope: !1018)
!1029 = !DILocation(line: 255, column: 16, scope: !1014)
!1030 = !DILocation(line: 255, column: 24, scope: !1014)
!1031 = !DILocation(line: 255, column: 31, scope: !1014)
!1032 = !DILocation(line: 255, column: 37, scope: !1014)
!1033 = !DILocation(line: 255, column: 43, scope: !1014)
!1034 = !DILocation(line: 255, column: 3, scope: !1014)
!1035 = !DILocation(line: 257, column: 9, scope: !934)
!1036 = !DILocation(line: 257, column: 2, scope: !934)
!1037 = !DILocation(line: 258, column: 1, scope: !934)
!1038 = !DILocation(line: 258, column: 1, scope: !1006)
!1039 = distinct !DISubprogram(name: "flood_notice", scope: !729, file: !729, line: 260, type: !935, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !749)
!1040 = !DILocalVariable(name: "server", arg: 1, scope: !1039, file: !729, line: 260, type: !84)
!1041 = !DILocation(line: 260, column: 42, scope: !1039)
!1042 = !DILocalVariable(name: "data", arg: 2, scope: !1039, file: !729, line: 260, type: !476)
!1043 = !DILocation(line: 260, column: 62, scope: !1039)
!1044 = !DILocalVariable(name: "nick", arg: 3, scope: !1039, file: !729, line: 261, type: !476)
!1045 = !DILocation(line: 261, column: 17, scope: !1039)
!1046 = !DILocalVariable(name: "addr", arg: 4, scope: !1039, file: !729, line: 261, type: !476)
!1047 = !DILocation(line: 261, column: 35, scope: !1039)
!1048 = !DILocalVariable(name: "params", scope: !1039, file: !729, line: 263, type: !104)
!1049 = !DILocation(line: 263, column: 8, scope: !1039)
!1050 = !DILocalVariable(name: "target", scope: !1039, file: !729, line: 263, type: !104)
!1051 = !DILocation(line: 263, column: 17, scope: !1039)
!1052 = !DILocalVariable(name: "text", scope: !1039, file: !729, line: 263, type: !104)
!1053 = !DILocation(line: 263, column: 26, scope: !1039)
!1054 = !DILocation(line: 265, column: 2, scope: !1039)
!1055 = distinct !{!1055, !1054}
!1056 = !DILocation(line: 265, column: 10, scope: !1057)
!1057 = !DILexicalBlockFile(scope: !1058, file: !729, discriminator: 1)
!1058 = distinct !DILexicalBlock(scope: !1059, file: !729, line: 265, column: 10)
!1059 = distinct !DILexicalBlock(scope: !1039, file: !729, line: 265, column: 4)
!1060 = !DILocation(line: 265, column: 15, scope: !1057)
!1061 = !DILocation(line: 265, column: 5, scope: !1062)
!1062 = !DILexicalBlockFile(scope: !1063, file: !729, discriminator: 2)
!1063 = distinct !DILexicalBlock(scope: !1058, file: !729, line: 265, column: 3)
!1064 = !DILocation(line: 265, column: 14, scope: !1065)
!1065 = !DILexicalBlockFile(scope: !1066, file: !729, discriminator: 3)
!1066 = distinct !DILexicalBlock(scope: !1058, file: !729, line: 265, column: 12)
!1067 = !DILocation(line: 265, column: 99, scope: !1065)
!1068 = !DILocation(line: 265, column: 110, scope: !1069)
!1069 = !DILexicalBlockFile(scope: !1059, file: !729, discriminator: 4)
!1070 = !DILocation(line: 266, column: 2, scope: !1039)
!1071 = distinct !{!1071, !1070}
!1072 = !DILocation(line: 266, column: 10, scope: !1073)
!1073 = !DILexicalBlockFile(scope: !1074, file: !729, discriminator: 1)
!1074 = distinct !DILexicalBlock(scope: !1075, file: !729, line: 266, column: 10)
!1075 = distinct !DILexicalBlock(scope: !1039, file: !729, line: 266, column: 4)
!1076 = !DILocation(line: 266, column: 17, scope: !1073)
!1077 = !DILocation(line: 266, column: 5, scope: !1078)
!1078 = !DILexicalBlockFile(scope: !1079, file: !729, discriminator: 2)
!1079 = distinct !DILexicalBlock(scope: !1074, file: !729, line: 266, column: 3)
!1080 = !DILocation(line: 266, column: 14, scope: !1081)
!1081 = !DILexicalBlockFile(scope: !1082, file: !729, discriminator: 3)
!1082 = distinct !DILexicalBlock(scope: !1074, file: !729, line: 266, column: 12)
!1083 = !DILocation(line: 266, column: 101, scope: !1081)
!1084 = !DILocation(line: 266, column: 112, scope: !1085)
!1085 = !DILexicalBlockFile(scope: !1075, file: !729, discriminator: 4)
!1086 = !DILocation(line: 268, column: 6, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1039, file: !729, line: 268, column: 6)
!1088 = !DILocation(line: 268, column: 11, scope: !1087)
!1089 = !DILocation(line: 268, column: 18, scope: !1087)
!1090 = !DILocation(line: 268, column: 40, scope: !1091)
!1091 = !DILexicalBlockFile(scope: !1087, file: !729, discriminator: 1)
!1092 = !DILocation(line: 268, column: 46, scope: !1091)
!1093 = !DILocation(line: 268, column: 54, scope: !1091)
!1094 = !DILocation(line: 268, column: 21, scope: !1091)
!1095 = !DILocation(line: 268, column: 60, scope: !1091)
!1096 = !DILocation(line: 268, column: 6, scope: !1091)
!1097 = !DILocation(line: 269, column: 3, scope: !1087)
!1098 = !DILocation(line: 271, column: 28, scope: !1039)
!1099 = !DILocation(line: 271, column: 11, scope: !1039)
!1100 = !DILocation(line: 271, column: 9, scope: !1039)
!1101 = !DILocation(line: 272, column: 54, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1039, file: !729, line: 272, column: 6)
!1103 = !DILocation(line: 272, column: 36, scope: !1102)
!1104 = !DILocation(line: 272, column: 21, scope: !1102)
!1105 = !DILocation(line: 272, column: 33, scope: !1102)
!1106 = !DILocation(line: 272, column: 39, scope: !1102)
!1107 = !DILocation(line: 272, column: 45, scope: !1102)
!1108 = !DILocation(line: 272, column: 53, scope: !1102)
!1109 = !DILocation(line: 272, column: 7, scope: !1110)
!1110 = !DILexicalBlockFile(scope: !1102, file: !729, discriminator: 1)
!1111 = !DILocation(line: 272, column: 7, scope: !1102)
!1112 = !DILocation(line: 272, column: 6, scope: !1039)
!1113 = !DILocation(line: 273, column: 16, scope: !1102)
!1114 = !DILocation(line: 273, column: 42, scope: !1102)
!1115 = !DILocation(line: 273, column: 48, scope: !1102)
!1116 = !DILocation(line: 273, column: 54, scope: !1102)
!1117 = !DILocation(line: 273, column: 3, scope: !1102)
!1118 = !DILocation(line: 275, column: 9, scope: !1039)
!1119 = !DILocation(line: 275, column: 2, scope: !1039)
!1120 = !DILocation(line: 276, column: 1, scope: !1039)
!1121 = !DILocation(line: 276, column: 1, scope: !1122)
!1122 = !DILexicalBlockFile(scope: !1039, file: !729, discriminator: 1)
!1123 = distinct !DISubprogram(name: "flood_ctcp", scope: !729, file: !729, line: 278, type: !1124, isLocal: true, isDefinition: true, scopeLine: 280, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !749)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{null, !84, !476, !476, !476, !476}
!1126 = !DILocalVariable(name: "server", arg: 1, scope: !1123, file: !729, line: 278, type: !84)
!1127 = !DILocation(line: 278, column: 40, scope: !1123)
!1128 = !DILocalVariable(name: "data", arg: 2, scope: !1123, file: !729, line: 278, type: !476)
!1129 = !DILocation(line: 278, column: 60, scope: !1123)
!1130 = !DILocalVariable(name: "nick", arg: 3, scope: !1123, file: !729, line: 279, type: !476)
!1131 = !DILocation(line: 279, column: 22, scope: !1123)
!1132 = !DILocalVariable(name: "addr", arg: 4, scope: !1123, file: !729, line: 279, type: !476)
!1133 = !DILocation(line: 279, column: 40, scope: !1123)
!1134 = !DILocalVariable(name: "target", arg: 5, scope: !1123, file: !729, line: 279, type: !476)
!1135 = !DILocation(line: 279, column: 58, scope: !1123)
!1136 = !DILocalVariable(name: "level", scope: !1123, file: !729, line: 281, type: !82)
!1137 = !DILocation(line: 281, column: 6, scope: !1123)
!1138 = !DILocation(line: 283, column: 2, scope: !1123)
!1139 = distinct !{!1139, !1138}
!1140 = !DILocation(line: 283, column: 10, scope: !1141)
!1141 = !DILexicalBlockFile(scope: !1142, file: !729, discriminator: 1)
!1142 = distinct !DILexicalBlock(scope: !1143, file: !729, line: 283, column: 10)
!1143 = distinct !DILexicalBlock(scope: !1123, file: !729, line: 283, column: 4)
!1144 = !DILocation(line: 283, column: 15, scope: !1141)
!1145 = !DILocation(line: 283, column: 5, scope: !1146)
!1146 = !DILexicalBlockFile(scope: !1147, file: !729, discriminator: 2)
!1147 = distinct !DILexicalBlock(scope: !1142, file: !729, line: 283, column: 3)
!1148 = !DILocation(line: 283, column: 14, scope: !1149)
!1149 = !DILexicalBlockFile(scope: !1150, file: !729, discriminator: 3)
!1150 = distinct !DILexicalBlock(scope: !1142, file: !729, line: 283, column: 12)
!1151 = !DILocation(line: 283, column: 99, scope: !1149)
!1152 = !DILocation(line: 283, column: 110, scope: !1153)
!1153 = !DILexicalBlockFile(scope: !1143, file: !729, discriminator: 4)
!1154 = !DILocation(line: 284, column: 2, scope: !1123)
!1155 = distinct !{!1155, !1154}
!1156 = !DILocation(line: 284, column: 10, scope: !1157)
!1157 = !DILexicalBlockFile(scope: !1158, file: !729, discriminator: 1)
!1158 = distinct !DILexicalBlock(scope: !1159, file: !729, line: 284, column: 10)
!1159 = distinct !DILexicalBlock(scope: !1123, file: !729, line: 284, column: 4)
!1160 = !DILocation(line: 284, column: 17, scope: !1157)
!1161 = !DILocation(line: 284, column: 5, scope: !1162)
!1162 = !DILexicalBlockFile(scope: !1163, file: !729, discriminator: 2)
!1163 = distinct !DILexicalBlock(scope: !1158, file: !729, line: 284, column: 3)
!1164 = !DILocation(line: 284, column: 14, scope: !1165)
!1165 = !DILexicalBlockFile(scope: !1166, file: !729, discriminator: 3)
!1166 = distinct !DILexicalBlock(scope: !1158, file: !729, line: 284, column: 12)
!1167 = !DILocation(line: 284, column: 101, scope: !1165)
!1168 = !DILocation(line: 284, column: 112, scope: !1169)
!1169 = !DILexicalBlockFile(scope: !1159, file: !729, discriminator: 4)
!1170 = !DILocation(line: 286, column: 6, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1123, file: !729, line: 286, column: 6)
!1172 = !DILocation(line: 286, column: 11, scope: !1171)
!1173 = !DILocation(line: 286, column: 18, scope: !1171)
!1174 = !DILocation(line: 286, column: 40, scope: !1175)
!1175 = !DILexicalBlockFile(scope: !1171, file: !729, discriminator: 1)
!1176 = !DILocation(line: 286, column: 46, scope: !1175)
!1177 = !DILocation(line: 286, column: 54, scope: !1175)
!1178 = !DILocation(line: 286, column: 21, scope: !1175)
!1179 = !DILocation(line: 286, column: 60, scope: !1175)
!1180 = !DILocation(line: 286, column: 6, scope: !1175)
!1181 = !DILocation(line: 287, column: 3, scope: !1171)
!1182 = !DILocation(line: 289, column: 30, scope: !1123)
!1183 = !DILocation(line: 289, column: 10, scope: !1123)
!1184 = !DILocation(line: 289, column: 50, scope: !1123)
!1185 = !DILocation(line: 289, column: 10, scope: !1186)
!1186 = !DILexicalBlockFile(scope: !1123, file: !729, discriminator: 1)
!1187 = !DILocation(line: 290, column: 40, scope: !1123)
!1188 = !DILocation(line: 290, column: 22, scope: !1123)
!1189 = !DILocation(line: 290, column: 7, scope: !1123)
!1190 = !DILocation(line: 290, column: 18, scope: !1123)
!1191 = !DILocation(line: 290, column: 62, scope: !1123)
!1192 = !DILocation(line: 290, column: 44, scope: !1186)
!1193 = !DILocation(line: 290, column: 29, scope: !1123)
!1194 = !DILocation(line: 290, column: 17, scope: !1123)
!1195 = !DILocation(line: 290, column: 5, scope: !1196)
!1196 = !DILexicalBlockFile(scope: !1123, file: !729, discriminator: 2)
!1197 = !DILocation(line: 290, column: 4, scope: !1123)
!1198 = !DILocation(line: 289, column: 10, scope: !1196)
!1199 = !DILocation(line: 289, column: 10, scope: !1200)
!1200 = !DILexicalBlockFile(scope: !1123, file: !729, discriminator: 3)
!1201 = !DILocation(line: 289, column: 8, scope: !1200)
!1202 = !DILocation(line: 291, column: 54, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1123, file: !729, line: 291, column: 6)
!1204 = !DILocation(line: 291, column: 36, scope: !1203)
!1205 = !DILocation(line: 291, column: 21, scope: !1203)
!1206 = !DILocation(line: 291, column: 33, scope: !1203)
!1207 = !DILocation(line: 291, column: 39, scope: !1203)
!1208 = !DILocation(line: 291, column: 45, scope: !1203)
!1209 = !DILocation(line: 291, column: 53, scope: !1203)
!1210 = !DILocation(line: 291, column: 59, scope: !1203)
!1211 = !DILocation(line: 291, column: 7, scope: !1212)
!1212 = !DILexicalBlockFile(scope: !1203, file: !729, discriminator: 1)
!1213 = !DILocation(line: 291, column: 7, scope: !1203)
!1214 = !DILocation(line: 291, column: 6, scope: !1123)
!1215 = !DILocation(line: 292, column: 16, scope: !1203)
!1216 = !DILocation(line: 292, column: 24, scope: !1203)
!1217 = !DILocation(line: 292, column: 31, scope: !1203)
!1218 = !DILocation(line: 292, column: 37, scope: !1203)
!1219 = !DILocation(line: 292, column: 43, scope: !1203)
!1220 = !DILocation(line: 292, column: 3, scope: !1203)
!1221 = !DILocation(line: 293, column: 1, scope: !1123)
!1222 = distinct !DISubprogram(name: "flood_timeout", scope: !729, file: !729, line: 88, type: !1223, isLocal: true, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !749)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!82}
!1225 = !DILocalVariable(name: "mserver", scope: !1222, file: !729, line: 90, type: !702)
!1226 = !DILocation(line: 90, column: 21, scope: !1222)
!1227 = !DILocalVariable(name: "tmp", scope: !1222, file: !729, line: 91, type: !250)
!1228 = !DILocation(line: 91, column: 10, scope: !1222)
!1229 = !DILocalVariable(name: "now", scope: !1222, file: !729, line: 92, type: !334)
!1230 = !DILocation(line: 92, column: 9, scope: !1222)
!1231 = !DILocation(line: 95, column: 8, scope: !1222)
!1232 = !DILocation(line: 95, column: 6, scope: !1222)
!1233 = !DILocation(line: 96, column: 13, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1222, file: !729, line: 96, column: 2)
!1235 = !DILocation(line: 96, column: 11, scope: !1234)
!1236 = !DILocation(line: 96, column: 7, scope: !1234)
!1237 = !DILocation(line: 96, column: 22, scope: !1238)
!1238 = !DILexicalBlockFile(scope: !1239, file: !729, discriminator: 1)
!1239 = distinct !DILexicalBlock(scope: !1234, file: !729, line: 96, column: 2)
!1240 = !DILocation(line: 96, column: 26, scope: !1238)
!1241 = !DILocation(line: 96, column: 2, scope: !1238)
!1242 = !DILocalVariable(name: "rec", scope: !1243, file: !729, line: 97, type: !84)
!1243 = distinct !DILexicalBlock(scope: !1239, file: !729, line: 96, column: 51)
!1244 = !DILocation(line: 97, column: 19, scope: !1243)
!1245 = !DILocation(line: 97, column: 25, scope: !1243)
!1246 = !DILocation(line: 97, column: 30, scope: !1243)
!1247 = !DILocation(line: 99, column: 88, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1243, file: !729, line: 99, column: 7)
!1249 = !DILocation(line: 99, column: 70, scope: !1248)
!1250 = !DILocation(line: 99, column: 55, scope: !1248)
!1251 = !DILocation(line: 99, column: 54, scope: !1248)
!1252 = !DILocation(line: 99, column: 29, scope: !1253)
!1253 = !DILexicalBlockFile(scope: !1248, file: !729, discriminator: 3)
!1254 = !DILocation(line: 99, column: 10, scope: !1248)
!1255 = !DILocation(line: 99, column: 7, scope: !1243)
!1256 = !DILocation(line: 99, column: 9, scope: !1257)
!1257 = !DILexicalBlockFile(scope: !1248, file: !729, discriminator: 1)
!1258 = !DILocation(line: 99, column: 7, scope: !1259)
!1259 = !DILexicalBlockFile(scope: !1243, file: !729, discriminator: 2)
!1260 = !DILocation(line: 100, column: 25, scope: !1248)
!1261 = !DILocation(line: 102, column: 34, scope: !1243)
!1262 = !DILocation(line: 102, column: 40, scope: !1243)
!1263 = !DILocation(line: 102, column: 13, scope: !1243)
!1264 = !DILocation(line: 102, column: 11, scope: !1243)
!1265 = !DILocation(line: 103, column: 31, scope: !1243)
!1266 = !DILocation(line: 103, column: 40, scope: !1243)
!1267 = !DILocation(line: 105, column: 10, scope: !1243)
!1268 = !DILocation(line: 103, column: 3, scope: !1243)
!1269 = !DILocation(line: 106, column: 2, scope: !1243)
!1270 = !DILocation(line: 96, column: 40, scope: !1271)
!1271 = !DILexicalBlockFile(scope: !1239, file: !729, discriminator: 2)
!1272 = !DILocation(line: 96, column: 45, scope: !1271)
!1273 = !DILocation(line: 96, column: 38, scope: !1271)
!1274 = !DILocation(line: 96, column: 2, scope: !1271)
!1275 = distinct !{!1275, !1276}
!1276 = !DILocation(line: 96, column: 2, scope: !1222)
!1277 = !DILocation(line: 107, column: 2, scope: !1222)
!1278 = distinct !DISubprogram(name: "flood_hash_check_remove", scope: !729, file: !729, line: 50, type: !1279, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !749)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!82, !476, !727, !701}
!1281 = !DILocalVariable(name: "key", arg: 1, scope: !1278, file: !729, line: 50, type: !476)
!1282 = !DILocation(line: 50, column: 48, scope: !1278)
!1283 = !DILocalVariable(name: "flood", arg: 2, scope: !1278, file: !729, line: 50, type: !727)
!1284 = !DILocation(line: 50, column: 64, scope: !1278)
!1285 = !DILocalVariable(name: "now", arg: 3, scope: !1278, file: !729, line: 51, type: !701)
!1286 = !DILocation(line: 51, column: 16, scope: !1278)
!1287 = !DILocalVariable(name: "tmp", scope: !1278, file: !729, line: 53, type: !250)
!1288 = !DILocation(line: 53, column: 10, scope: !1278)
!1289 = !DILocalVariable(name: "next", scope: !1278, file: !729, line: 53, type: !250)
!1290 = !DILocation(line: 53, column: 16, scope: !1278)
!1291 = !DILocalVariable(name: "times", scope: !1278, file: !729, line: 53, type: !250)
!1292 = !DILocation(line: 53, column: 23, scope: !1278)
!1293 = !DILocalVariable(name: "tnext", scope: !1278, file: !729, line: 53, type: !250)
!1294 = !DILocation(line: 53, column: 31, scope: !1278)
!1295 = !DILocation(line: 55, column: 2, scope: !1278)
!1296 = distinct !{!1296, !1295}
!1297 = !DILocation(line: 55, column: 10, scope: !1298)
!1298 = !DILexicalBlockFile(scope: !1299, file: !729, discriminator: 1)
!1299 = distinct !DILexicalBlock(scope: !1300, file: !729, line: 55, column: 10)
!1300 = distinct !DILexicalBlock(scope: !1278, file: !729, line: 55, column: 4)
!1301 = !DILocation(line: 55, column: 14, scope: !1298)
!1302 = !DILocation(line: 55, column: 5, scope: !1303)
!1303 = !DILexicalBlockFile(scope: !1304, file: !729, discriminator: 2)
!1304 = distinct !DILexicalBlock(scope: !1299, file: !729, line: 55, column: 3)
!1305 = !DILocation(line: 55, column: 14, scope: !1306)
!1306 = !DILexicalBlockFile(scope: !1307, file: !729, discriminator: 3)
!1307 = distinct !DILexicalBlock(scope: !1299, file: !729, line: 55, column: 12)
!1308 = !DILocation(line: 55, column: 98, scope: !1306)
!1309 = !DILocation(line: 55, column: 115, scope: !1310)
!1310 = !DILexicalBlockFile(scope: !1300, file: !729, discriminator: 4)
!1311 = !DILocation(line: 56, column: 2, scope: !1278)
!1312 = distinct !{!1312, !1311}
!1313 = !DILocation(line: 56, column: 10, scope: !1314)
!1314 = !DILexicalBlockFile(scope: !1315, file: !729, discriminator: 1)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !729, line: 56, column: 10)
!1316 = distinct !DILexicalBlock(scope: !1278, file: !729, line: 56, column: 4)
!1317 = !DILocation(line: 56, column: 16, scope: !1314)
!1318 = !DILocation(line: 56, column: 5, scope: !1319)
!1319 = !DILexicalBlockFile(scope: !1320, file: !729, discriminator: 2)
!1320 = distinct !DILexicalBlock(scope: !1315, file: !729, line: 56, column: 3)
!1321 = !DILocation(line: 56, column: 14, scope: !1322)
!1322 = !DILexicalBlockFile(scope: !1323, file: !729, discriminator: 3)
!1323 = distinct !DILexicalBlock(scope: !1315, file: !729, line: 56, column: 12)
!1324 = !DILocation(line: 56, column: 100, scope: !1322)
!1325 = !DILocation(line: 56, column: 117, scope: !1326)
!1326 = !DILexicalBlockFile(scope: !1316, file: !729, discriminator: 4)
!1327 = !DILocation(line: 58, column: 13, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1278, file: !729, line: 58, column: 2)
!1329 = !DILocation(line: 58, column: 20, scope: !1328)
!1330 = !DILocation(line: 58, column: 11, scope: !1328)
!1331 = !DILocation(line: 58, column: 7, scope: !1328)
!1332 = !DILocation(line: 58, column: 27, scope: !1333)
!1333 = !DILexicalBlockFile(scope: !1334, file: !729, discriminator: 1)
!1334 = distinct !DILexicalBlock(scope: !1328, file: !729, line: 58, column: 2)
!1335 = !DILocation(line: 58, column: 31, scope: !1333)
!1336 = !DILocation(line: 58, column: 2, scope: !1333)
!1337 = !DILocalVariable(name: "rec", scope: !1338, file: !729, line: 59, type: !734)
!1338 = distinct !DILexicalBlock(scope: !1334, file: !729, line: 58, column: 51)
!1339 = !DILocation(line: 59, column: 19, scope: !1338)
!1340 = !DILocation(line: 59, column: 25, scope: !1338)
!1341 = !DILocation(line: 59, column: 30, scope: !1338)
!1342 = !DILocation(line: 61, column: 10, scope: !1338)
!1343 = !DILocation(line: 61, column: 15, scope: !1338)
!1344 = !DILocation(line: 61, column: 8, scope: !1338)
!1345 = !DILocation(line: 63, column: 16, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1338, file: !729, line: 63, column: 3)
!1347 = !DILocation(line: 63, column: 21, scope: !1346)
!1348 = !DILocation(line: 63, column: 14, scope: !1346)
!1349 = !DILocation(line: 63, column: 8, scope: !1346)
!1350 = !DILocation(line: 63, column: 31, scope: !1351)
!1351 = !DILexicalBlockFile(scope: !1352, file: !729, discriminator: 1)
!1352 = distinct !DILexicalBlock(scope: !1346, file: !729, line: 63, column: 3)
!1353 = !DILocation(line: 63, column: 37, scope: !1351)
!1354 = !DILocation(line: 63, column: 3, scope: !1351)
!1355 = !DILocalVariable(name: "data", scope: !1356, file: !729, line: 64, type: !701)
!1356 = distinct !DILexicalBlock(scope: !1352, file: !729, line: 63, column: 60)
!1357 = !DILocation(line: 64, column: 33, scope: !1356)
!1358 = !DILocation(line: 64, column: 40, scope: !1356)
!1359 = !DILocation(line: 64, column: 47, scope: !1356)
!1360 = !DILocation(line: 65, column: 12, scope: !1356)
!1361 = !DILocation(line: 65, column: 19, scope: !1356)
!1362 = !DILocation(line: 65, column: 10, scope: !1356)
!1363 = !DILocation(line: 67, column: 9, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1356, file: !729, line: 67, column: 8)
!1365 = !DILocation(line: 67, column: 8, scope: !1364)
!1366 = !DILocation(line: 67, column: 26, scope: !1364)
!1367 = !DILocation(line: 67, column: 33, scope: !1364)
!1368 = !DILocation(line: 67, column: 15, scope: !1364)
!1369 = !DILocation(line: 67, column: 13, scope: !1364)
!1370 = !DILocation(line: 67, column: 12, scope: !1364)
!1371 = !DILocation(line: 67, column: 42, scope: !1364)
!1372 = !DILocation(line: 67, column: 39, scope: !1364)
!1373 = !DILocation(line: 67, column: 8, scope: !1356)
!1374 = !DILocation(line: 68, column: 36, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1364, file: !729, line: 67, column: 59)
!1376 = !DILocation(line: 68, column: 41, scope: !1375)
!1377 = !DILocation(line: 68, column: 51, scope: !1375)
!1378 = !DILocation(line: 68, column: 21, scope: !1375)
!1379 = !DILocation(line: 68, column: 5, scope: !1375)
!1380 = !DILocation(line: 68, column: 10, scope: !1375)
!1381 = !DILocation(line: 68, column: 19, scope: !1375)
!1382 = !DILocation(line: 69, column: 12, scope: !1375)
!1383 = !DILocation(line: 69, column: 5, scope: !1375)
!1384 = !DILocation(line: 70, column: 4, scope: !1375)
!1385 = !DILocation(line: 71, column: 3, scope: !1356)
!1386 = !DILocation(line: 63, column: 53, scope: !1387)
!1387 = !DILexicalBlockFile(scope: !1352, file: !729, discriminator: 2)
!1388 = !DILocation(line: 63, column: 51, scope: !1387)
!1389 = !DILocation(line: 63, column: 3, scope: !1387)
!1390 = distinct !{!1390, !1391}
!1391 = !DILocation(line: 63, column: 3, scope: !1338)
!1392 = !DILocation(line: 73, column: 7, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1338, file: !729, line: 73, column: 7)
!1394 = !DILocation(line: 73, column: 12, scope: !1393)
!1395 = !DILocation(line: 73, column: 21, scope: !1393)
!1396 = !DILocation(line: 73, column: 7, scope: !1338)
!1397 = !DILocation(line: 74, column: 34, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1393, file: !729, line: 73, column: 29)
!1399 = !DILocation(line: 74, column: 41, scope: !1398)
!1400 = !DILocation(line: 74, column: 48, scope: !1398)
!1401 = !DILocation(line: 74, column: 19, scope: !1398)
!1402 = !DILocation(line: 74, column: 4, scope: !1398)
!1403 = !DILocation(line: 74, column: 11, scope: !1398)
!1404 = !DILocation(line: 74, column: 17, scope: !1398)
!1405 = !DILocation(line: 75, column: 11, scope: !1398)
!1406 = !DILocation(line: 75, column: 16, scope: !1398)
!1407 = !DILocation(line: 75, column: 4, scope: !1398)
!1408 = !DILocation(line: 76, column: 11, scope: !1398)
!1409 = !DILocation(line: 76, column: 4, scope: !1398)
!1410 = !DILocation(line: 77, column: 3, scope: !1398)
!1411 = !DILocation(line: 78, column: 2, scope: !1338)
!1412 = !DILocation(line: 58, column: 45, scope: !1413)
!1413 = !DILexicalBlockFile(scope: !1334, file: !729, discriminator: 2)
!1414 = !DILocation(line: 58, column: 43, scope: !1413)
!1415 = !DILocation(line: 58, column: 2, scope: !1413)
!1416 = distinct !{!1416, !1417}
!1417 = !DILocation(line: 58, column: 2, scope: !1278)
!1418 = !DILocation(line: 80, column: 6, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1278, file: !729, line: 80, column: 6)
!1420 = !DILocation(line: 80, column: 13, scope: !1419)
!1421 = !DILocation(line: 80, column: 19, scope: !1419)
!1422 = !DILocation(line: 80, column: 6, scope: !1278)
!1423 = !DILocation(line: 81, column: 3, scope: !1419)
!1424 = !DILocation(line: 83, column: 9, scope: !1278)
!1425 = !DILocation(line: 83, column: 16, scope: !1278)
!1426 = !DILocation(line: 83, column: 2, scope: !1278)
!1427 = !DILocation(line: 84, column: 9, scope: !1278)
!1428 = !DILocation(line: 84, column: 2, scope: !1278)
!1429 = !DILocation(line: 85, column: 2, scope: !1278)
!1430 = !DILocation(line: 86, column: 1, scope: !1278)
!1431 = distinct !DISubprogram(name: "flood_hash_destroy", scope: !729, file: !729, line: 127, type: !1432, isLocal: true, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !749)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{null, !476, !727}
!1434 = !DILocalVariable(name: "key", arg: 1, scope: !1431, file: !729, line: 127, type: !476)
!1435 = !DILocation(line: 127, column: 44, scope: !1431)
!1436 = !DILocalVariable(name: "flood", arg: 2, scope: !1431, file: !729, line: 127, type: !727)
!1437 = !DILocation(line: 127, column: 60, scope: !1431)
!1438 = !DILocation(line: 129, column: 2, scope: !1431)
!1439 = !DILocation(line: 129, column: 9, scope: !1440)
!1440 = !DILexicalBlockFile(scope: !1431, file: !729, discriminator: 1)
!1441 = !DILocation(line: 129, column: 16, scope: !1440)
!1442 = !DILocation(line: 129, column: 22, scope: !1440)
!1443 = !DILocation(line: 129, column: 2, scope: !1440)
!1444 = !DILocalVariable(name: "rec", scope: !1445, file: !729, line: 130, type: !734)
!1445 = distinct !DILexicalBlock(scope: !1431, file: !729, line: 129, column: 30)
!1446 = !DILocation(line: 130, column: 19, scope: !1445)
!1447 = !DILocation(line: 130, column: 25, scope: !1445)
!1448 = !DILocation(line: 130, column: 32, scope: !1445)
!1449 = !DILocation(line: 130, column: 39, scope: !1445)
!1450 = !DILocation(line: 132, column: 33, scope: !1445)
!1451 = !DILocation(line: 132, column: 40, scope: !1445)
!1452 = !DILocation(line: 132, column: 47, scope: !1445)
!1453 = !DILocation(line: 132, column: 18, scope: !1445)
!1454 = !DILocation(line: 132, column: 3, scope: !1445)
!1455 = !DILocation(line: 132, column: 10, scope: !1445)
!1456 = !DILocation(line: 132, column: 16, scope: !1445)
!1457 = !DILocation(line: 134, column: 19, scope: !1445)
!1458 = !DILocation(line: 134, column: 24, scope: !1445)
!1459 = !DILocation(line: 134, column: 3, scope: !1445)
!1460 = !DILocation(line: 135, column: 16, scope: !1445)
!1461 = !DILocation(line: 135, column: 21, scope: !1445)
!1462 = !DILocation(line: 135, column: 3, scope: !1445)
!1463 = !DILocation(line: 136, column: 10, scope: !1445)
!1464 = !DILocation(line: 136, column: 15, scope: !1445)
!1465 = !DILocation(line: 136, column: 3, scope: !1445)
!1466 = !DILocation(line: 137, column: 10, scope: !1445)
!1467 = !DILocation(line: 137, column: 3, scope: !1445)
!1468 = !DILocation(line: 129, column: 2, scope: !1469)
!1469 = !DILexicalBlockFile(scope: !1431, file: !729, discriminator: 2)
!1470 = distinct !{!1470, !1438}
!1471 = !DILocation(line: 140, column: 9, scope: !1431)
!1472 = !DILocation(line: 140, column: 16, scope: !1431)
!1473 = !DILocation(line: 140, column: 2, scope: !1431)
!1474 = !DILocation(line: 141, column: 9, scope: !1431)
!1475 = !DILocation(line: 141, column: 2, scope: !1431)
!1476 = !DILocation(line: 142, column: 1, scope: !1431)
!1477 = distinct !DISubprogram(name: "flood_newmsg", scope: !729, file: !729, line: 183, type: !1478, isLocal: true, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !749)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{null, !84, !82, !476, !476, !476}
!1480 = !DILocalVariable(name: "server", arg: 1, scope: !1477, file: !729, line: 183, type: !84)
!1481 = !DILocation(line: 183, column: 42, scope: !1477)
!1482 = !DILocalVariable(name: "level", arg: 2, scope: !1477, file: !729, line: 183, type: !82)
!1483 = !DILocation(line: 183, column: 54, scope: !1477)
!1484 = !DILocalVariable(name: "nick", arg: 3, scope: !1477, file: !729, line: 183, type: !476)
!1485 = !DILocation(line: 183, column: 73, scope: !1477)
!1486 = !DILocalVariable(name: "host", arg: 4, scope: !1477, file: !729, line: 184, type: !476)
!1487 = !DILocation(line: 184, column: 17, scope: !1477)
!1488 = !DILocalVariable(name: "target", arg: 5, scope: !1477, file: !729, line: 184, type: !476)
!1489 = !DILocation(line: 184, column: 35, scope: !1477)
!1490 = !DILocalVariable(name: "mserver", scope: !1477, file: !729, line: 186, type: !702)
!1491 = !DILocation(line: 186, column: 21, scope: !1477)
!1492 = !DILocalVariable(name: "flood", scope: !1477, file: !729, line: 187, type: !727)
!1493 = !DILocation(line: 187, column: 13, scope: !1477)
!1494 = !DILocalVariable(name: "rec", scope: !1477, file: !729, line: 188, type: !734)
!1495 = !DILocation(line: 188, column: 18, scope: !1477)
!1496 = !DILocalVariable(name: "now", scope: !1477, file: !729, line: 189, type: !334)
!1497 = !DILocation(line: 189, column: 9, scope: !1477)
!1498 = !DILocalVariable(name: "ttime", scope: !1477, file: !729, line: 189, type: !701)
!1499 = !DILocation(line: 189, column: 15, scope: !1477)
!1500 = !DILocalVariable(name: "times", scope: !1477, file: !729, line: 190, type: !250)
!1501 = !DILocation(line: 190, column: 10, scope: !1477)
!1502 = !DILocalVariable(name: "tnext", scope: !1477, file: !729, line: 190, type: !250)
!1503 = !DILocation(line: 190, column: 18, scope: !1477)
!1504 = !DILocation(line: 192, column: 2, scope: !1477)
!1505 = distinct !{!1505, !1504}
!1506 = !DILocation(line: 192, column: 10, scope: !1507)
!1507 = !DILexicalBlockFile(scope: !1508, file: !729, discriminator: 1)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !729, line: 192, column: 10)
!1509 = distinct !DILexicalBlock(scope: !1477, file: !729, line: 192, column: 4)
!1510 = !DILocation(line: 192, column: 17, scope: !1507)
!1511 = !DILocation(line: 192, column: 5, scope: !1512)
!1512 = !DILexicalBlockFile(scope: !1513, file: !729, discriminator: 2)
!1513 = distinct !DILexicalBlock(scope: !1508, file: !729, line: 192, column: 3)
!1514 = !DILocation(line: 192, column: 14, scope: !1515)
!1515 = !DILexicalBlockFile(scope: !1516, file: !729, discriminator: 3)
!1516 = distinct !DILexicalBlock(scope: !1508, file: !729, line: 192, column: 12)
!1517 = !DILocation(line: 192, column: 101, scope: !1515)
!1518 = !DILocation(line: 192, column: 112, scope: !1519)
!1519 = !DILexicalBlockFile(scope: !1509, file: !729, discriminator: 4)
!1520 = !DILocation(line: 193, column: 2, scope: !1477)
!1521 = distinct !{!1521, !1520}
!1522 = !DILocation(line: 193, column: 10, scope: !1523)
!1523 = !DILexicalBlockFile(scope: !1524, file: !729, discriminator: 1)
!1524 = distinct !DILexicalBlock(scope: !1525, file: !729, line: 193, column: 10)
!1525 = distinct !DILexicalBlock(scope: !1477, file: !729, line: 193, column: 4)
!1526 = !DILocation(line: 193, column: 15, scope: !1523)
!1527 = !DILocation(line: 193, column: 5, scope: !1528)
!1528 = !DILexicalBlockFile(scope: !1529, file: !729, discriminator: 2)
!1529 = distinct !DILexicalBlock(scope: !1524, file: !729, line: 193, column: 3)
!1530 = !DILocation(line: 193, column: 14, scope: !1531)
!1531 = !DILexicalBlockFile(scope: !1532, file: !729, discriminator: 3)
!1532 = distinct !DILexicalBlock(scope: !1524, file: !729, line: 193, column: 12)
!1533 = !DILocation(line: 193, column: 99, scope: !1531)
!1534 = !DILocation(line: 193, column: 110, scope: !1535)
!1535 = !DILexicalBlockFile(scope: !1525, file: !729, discriminator: 4)
!1536 = !DILocation(line: 195, column: 33, scope: !1477)
!1537 = !DILocation(line: 195, column: 42, scope: !1477)
!1538 = !DILocation(line: 195, column: 12, scope: !1477)
!1539 = !DILocation(line: 195, column: 10, scope: !1477)
!1540 = !DILocation(line: 196, column: 30, scope: !1477)
!1541 = !DILocation(line: 196, column: 39, scope: !1477)
!1542 = !DILocation(line: 196, column: 50, scope: !1477)
!1543 = !DILocation(line: 196, column: 10, scope: !1477)
!1544 = !DILocation(line: 196, column: 8, scope: !1477)
!1545 = !DILocation(line: 198, column: 8, scope: !1477)
!1546 = !DILocation(line: 198, column: 14, scope: !1477)
!1547 = !DILocation(line: 198, column: 8, scope: !1548)
!1548 = !DILexicalBlockFile(scope: !1477, file: !729, discriminator: 1)
!1549 = !DILocation(line: 198, column: 41, scope: !1550)
!1550 = !DILexicalBlockFile(scope: !1477, file: !729, discriminator: 2)
!1551 = !DILocation(line: 198, column: 48, scope: !1550)
!1552 = !DILocation(line: 198, column: 55, scope: !1550)
!1553 = !DILocation(line: 198, column: 30, scope: !1550)
!1554 = !DILocation(line: 198, column: 8, scope: !1550)
!1555 = !DILocation(line: 198, column: 8, scope: !1556)
!1556 = !DILexicalBlockFile(scope: !1477, file: !729, discriminator: 3)
!1557 = !DILocation(line: 198, column: 6, scope: !1556)
!1558 = !DILocation(line: 199, column: 6, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1477, file: !729, line: 199, column: 6)
!1560 = !DILocation(line: 199, column: 10, scope: !1559)
!1561 = !DILocation(line: 199, column: 6, scope: !1477)
!1562 = !DILocation(line: 200, column: 9, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1559, file: !729, line: 199, column: 18)
!1564 = !DILocation(line: 200, column: 7, scope: !1563)
!1565 = !DILocation(line: 201, column: 16, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1563, file: !729, line: 201, column: 3)
!1567 = !DILocation(line: 201, column: 21, scope: !1566)
!1568 = !DILocation(line: 201, column: 14, scope: !1566)
!1569 = !DILocation(line: 201, column: 8, scope: !1566)
!1570 = !DILocation(line: 201, column: 31, scope: !1571)
!1571 = !DILexicalBlockFile(scope: !1572, file: !729, discriminator: 1)
!1572 = distinct !DILexicalBlock(scope: !1566, file: !729, line: 201, column: 3)
!1573 = !DILocation(line: 201, column: 37, scope: !1571)
!1574 = !DILocation(line: 201, column: 3, scope: !1571)
!1575 = !DILocalVariable(name: "data", scope: !1576, file: !729, line: 202, type: !701)
!1576 = distinct !DILexicalBlock(scope: !1572, file: !729, line: 201, column: 60)
!1577 = !DILocation(line: 202, column: 12, scope: !1576)
!1578 = !DILocation(line: 202, column: 19, scope: !1576)
!1579 = !DILocation(line: 202, column: 26, scope: !1576)
!1580 = !DILocation(line: 203, column: 12, scope: !1576)
!1581 = !DILocation(line: 203, column: 19, scope: !1576)
!1582 = !DILocation(line: 203, column: 10, scope: !1576)
!1583 = !DILocation(line: 205, column: 8, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1576, file: !729, line: 205, column: 8)
!1585 = !DILocation(line: 205, column: 15, scope: !1584)
!1586 = !DILocation(line: 205, column: 14, scope: !1584)
!1587 = !DILocation(line: 205, column: 12, scope: !1584)
!1588 = !DILocation(line: 205, column: 23, scope: !1584)
!1589 = !DILocation(line: 205, column: 20, scope: !1584)
!1590 = !DILocation(line: 205, column: 8, scope: !1576)
!1591 = !DILocation(line: 206, column: 36, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1584, file: !729, line: 205, column: 40)
!1593 = !DILocation(line: 206, column: 41, scope: !1592)
!1594 = !DILocation(line: 206, column: 51, scope: !1592)
!1595 = !DILocation(line: 206, column: 21, scope: !1592)
!1596 = !DILocation(line: 206, column: 5, scope: !1592)
!1597 = !DILocation(line: 206, column: 10, scope: !1592)
!1598 = !DILocation(line: 206, column: 19, scope: !1592)
!1599 = !DILocation(line: 207, column: 12, scope: !1592)
!1600 = !DILocation(line: 207, column: 5, scope: !1592)
!1601 = !DILocation(line: 208, column: 4, scope: !1592)
!1602 = !DILocation(line: 209, column: 5, scope: !1584)
!1603 = !DILocation(line: 210, column: 3, scope: !1576)
!1604 = !DILocation(line: 201, column: 53, scope: !1605)
!1605 = !DILexicalBlockFile(scope: !1572, file: !729, discriminator: 2)
!1606 = !DILocation(line: 201, column: 51, scope: !1605)
!1607 = !DILocation(line: 201, column: 3, scope: !1605)
!1608 = distinct !{!1608, !1609}
!1609 = !DILocation(line: 201, column: 3, scope: !1563)
!1610 = !DILocation(line: 211, column: 23, scope: !1563)
!1611 = !DILocation(line: 211, column: 12, scope: !1563)
!1612 = !DILocation(line: 211, column: 9, scope: !1563)
!1613 = !DILocation(line: 212, column: 12, scope: !1563)
!1614 = !DILocation(line: 212, column: 4, scope: !1563)
!1615 = !DILocation(line: 212, column: 10, scope: !1563)
!1616 = !DILocation(line: 213, column: 34, scope: !1563)
!1617 = !DILocation(line: 213, column: 39, scope: !1563)
!1618 = !DILocation(line: 213, column: 49, scope: !1563)
!1619 = !DILocation(line: 213, column: 19, scope: !1563)
!1620 = !DILocation(line: 213, column: 3, scope: !1563)
!1621 = !DILocation(line: 213, column: 8, scope: !1563)
!1622 = !DILocation(line: 213, column: 17, scope: !1563)
!1623 = !DILocation(line: 214, column: 22, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1563, file: !729, line: 214, column: 7)
!1625 = !DILocation(line: 214, column: 27, scope: !1624)
!1626 = !DILocation(line: 214, column: 7, scope: !1624)
!1627 = !DILocation(line: 214, column: 39, scope: !1624)
!1628 = !DILocation(line: 214, column: 37, scope: !1624)
!1629 = !DILocation(line: 214, column: 7, scope: !1563)
!1630 = !DILocation(line: 216, column: 28, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1624, file: !729, line: 214, column: 55)
!1632 = !DILocation(line: 216, column: 36, scope: !1631)
!1633 = !DILocation(line: 216, column: 42, scope: !1631)
!1634 = !DILocation(line: 217, column: 30, scope: !1631)
!1635 = !DILocation(line: 217, column: 35, scope: !1631)
!1636 = !DILocation(line: 217, column: 21, scope: !1631)
!1637 = !DILocation(line: 217, column: 10, scope: !1631)
!1638 = !DILocation(line: 217, column: 44, scope: !1631)
!1639 = !DILocation(line: 216, column: 4, scope: !1631)
!1640 = !DILocation(line: 218, column: 3, scope: !1631)
!1641 = !DILocation(line: 219, column: 3, scope: !1563)
!1642 = !DILocation(line: 222, column: 6, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1477, file: !729, line: 222, column: 6)
!1644 = !DILocation(line: 222, column: 12, scope: !1643)
!1645 = !DILocation(line: 222, column: 6, scope: !1477)
!1646 = !DILocation(line: 223, column: 26, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1643, file: !729, line: 222, column: 20)
!1648 = !DILocation(line: 223, column: 12, scope: !1647)
!1649 = !DILocation(line: 223, column: 9, scope: !1647)
!1650 = !DILocation(line: 224, column: 26, scope: !1647)
!1651 = !DILocation(line: 224, column: 17, scope: !1647)
!1652 = !DILocation(line: 224, column: 3, scope: !1647)
!1653 = !DILocation(line: 224, column: 10, scope: !1647)
!1654 = !DILocation(line: 224, column: 15, scope: !1647)
!1655 = !DILocation(line: 225, column: 23, scope: !1647)
!1656 = !DILocation(line: 225, column: 32, scope: !1647)
!1657 = !DILocation(line: 225, column: 43, scope: !1647)
!1658 = !DILocation(line: 225, column: 50, scope: !1647)
!1659 = !DILocation(line: 225, column: 56, scope: !1647)
!1660 = !DILocation(line: 225, column: 3, scope: !1647)
!1661 = !DILocation(line: 226, column: 2, scope: !1647)
!1662 = !DILocation(line: 228, column: 28, scope: !1477)
!1663 = !DILocation(line: 228, column: 9, scope: !1477)
!1664 = !DILocation(line: 228, column: 6, scope: !1477)
!1665 = !DILocation(line: 229, column: 15, scope: !1477)
!1666 = !DILocation(line: 229, column: 2, scope: !1477)
!1667 = !DILocation(line: 229, column: 7, scope: !1477)
!1668 = !DILocation(line: 229, column: 13, scope: !1477)
!1669 = !DILocation(line: 230, column: 2, scope: !1477)
!1670 = !DILocation(line: 230, column: 7, scope: !1477)
!1671 = !DILocation(line: 230, column: 16, scope: !1477)
!1672 = !DILocation(line: 231, column: 22, scope: !1477)
!1673 = !DILocation(line: 231, column: 11, scope: !1477)
!1674 = !DILocation(line: 231, column: 8, scope: !1477)
!1675 = !DILocation(line: 232, column: 11, scope: !1477)
!1676 = !DILocation(line: 232, column: 3, scope: !1477)
!1677 = !DILocation(line: 232, column: 9, scope: !1477)
!1678 = !DILocation(line: 233, column: 33, scope: !1477)
!1679 = !DILocation(line: 233, column: 38, scope: !1477)
!1680 = !DILocation(line: 233, column: 48, scope: !1477)
!1681 = !DILocation(line: 233, column: 18, scope: !1477)
!1682 = !DILocation(line: 233, column: 2, scope: !1477)
!1683 = !DILocation(line: 233, column: 7, scope: !1477)
!1684 = !DILocation(line: 233, column: 16, scope: !1477)
!1685 = !DILocation(line: 234, column: 25, scope: !1477)
!1686 = !DILocation(line: 234, column: 16, scope: !1477)
!1687 = !DILocation(line: 234, column: 2, scope: !1477)
!1688 = !DILocation(line: 234, column: 7, scope: !1477)
!1689 = !DILocation(line: 234, column: 14, scope: !1477)
!1690 = !DILocation(line: 236, column: 32, scope: !1477)
!1691 = !DILocation(line: 236, column: 39, scope: !1477)
!1692 = !DILocation(line: 236, column: 46, scope: !1477)
!1693 = !DILocation(line: 236, column: 17, scope: !1477)
!1694 = !DILocation(line: 236, column: 2, scope: !1477)
!1695 = !DILocation(line: 236, column: 9, scope: !1477)
!1696 = !DILocation(line: 236, column: 15, scope: !1477)
!1697 = !DILocation(line: 237, column: 1, scope: !1477)
!1698 = !DILocation(line: 237, column: 1, scope: !1548)
!1699 = distinct !DISubprogram(name: "flood_find", scope: !729, file: !729, line: 166, type: !1700, isLocal: true, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !749)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{!734, !727, !82, !476}
!1702 = !DILocalVariable(name: "flood", arg: 1, scope: !1699, file: !729, line: 166, type: !727)
!1703 = !DILocation(line: 166, column: 46, scope: !1699)
!1704 = !DILocalVariable(name: "level", arg: 2, scope: !1699, file: !729, line: 166, type: !82)
!1705 = !DILocation(line: 166, column: 57, scope: !1699)
!1706 = !DILocalVariable(name: "target", arg: 3, scope: !1699, file: !729, line: 167, type: !476)
!1707 = !DILocation(line: 167, column: 19, scope: !1699)
!1708 = !DILocalVariable(name: "tmp", scope: !1699, file: !729, line: 169, type: !250)
!1709 = !DILocation(line: 169, column: 10, scope: !1699)
!1710 = !DILocation(line: 171, column: 13, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1699, file: !729, line: 171, column: 2)
!1712 = !DILocation(line: 171, column: 20, scope: !1711)
!1713 = !DILocation(line: 171, column: 11, scope: !1711)
!1714 = !DILocation(line: 171, column: 7, scope: !1711)
!1715 = !DILocation(line: 171, column: 27, scope: !1716)
!1716 = !DILexicalBlockFile(scope: !1717, file: !729, discriminator: 1)
!1717 = distinct !DILexicalBlock(scope: !1711, file: !729, line: 171, column: 2)
!1718 = !DILocation(line: 171, column: 31, scope: !1716)
!1719 = !DILocation(line: 171, column: 2, scope: !1716)
!1720 = !DILocalVariable(name: "rec", scope: !1721, file: !729, line: 172, type: !734)
!1721 = distinct !DILexicalBlock(scope: !1717, file: !729, line: 171, column: 56)
!1722 = !DILocation(line: 172, column: 19, scope: !1721)
!1723 = !DILocation(line: 172, column: 25, scope: !1721)
!1724 = !DILocation(line: 172, column: 30, scope: !1721)
!1725 = !DILocation(line: 174, column: 7, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1721, file: !729, line: 174, column: 7)
!1727 = !DILocation(line: 174, column: 12, scope: !1726)
!1728 = !DILocation(line: 174, column: 21, scope: !1726)
!1729 = !DILocation(line: 174, column: 18, scope: !1726)
!1730 = !DILocation(line: 174, column: 27, scope: !1726)
!1731 = !DILocation(line: 175, column: 26, scope: !1726)
!1732 = !DILocation(line: 175, column: 31, scope: !1726)
!1733 = !DILocation(line: 175, column: 39, scope: !1726)
!1734 = !DILocation(line: 175, column: 7, scope: !1726)
!1735 = !DILocation(line: 175, column: 47, scope: !1726)
!1736 = !DILocation(line: 174, column: 7, scope: !1737)
!1737 = !DILexicalBlockFile(scope: !1721, file: !729, discriminator: 1)
!1738 = !DILocation(line: 176, column: 11, scope: !1726)
!1739 = !DILocation(line: 176, column: 4, scope: !1726)
!1740 = !DILocation(line: 177, column: 2, scope: !1721)
!1741 = !DILocation(line: 171, column: 45, scope: !1742)
!1742 = !DILexicalBlockFile(scope: !1717, file: !729, discriminator: 2)
!1743 = !DILocation(line: 171, column: 50, scope: !1742)
!1744 = !DILocation(line: 171, column: 43, scope: !1742)
!1745 = !DILocation(line: 171, column: 2, scope: !1742)
!1746 = distinct !{!1746, !1747}
!1747 = !DILocation(line: 171, column: 2, scope: !1699)
!1748 = !DILocation(line: 179, column: 2, scope: !1699)
!1749 = !DILocation(line: 180, column: 1, scope: !1699)
