; ModuleID = './line109-channels-query.o.i'
source_filename = "./line109-channels-query.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GHashTable = type opaque
%struct.modes_type = type { void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, i8 }
%struct._IRC_CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._IRC_SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)*, %struct._GSList*, i64, i32, i32 }
%struct.SERVER_QUERY_REC = type { i32, %struct._GSList*, [3 x %struct._GSList*] }

@.str = private unnamed_addr constant [9 x i8] c"irc/core\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"misc\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"channel_sync\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"channel_max_who_sync\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"server connected\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"server disconnected\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"channel joined\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"channel destroyed\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"chanquery mode\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"chanquery who end\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"chanquery ban end\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"chanquery abort\00", align 1
@__func__.sig_connected = private unnamed_addr constant [14 x i8] c"sig_connected\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"server != NULL\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"IRC\00", align 1
@__func__.sig_disconnected = private unnamed_addr constant [17 x i8] c"sig_disconnected\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"rec != NULL\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"WINDOW ITEM TYPE\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"CHANNEL\00", align 1
@__func__.query_add_channel = private unnamed_addr constant [18 x i8] c"query_add_channel\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"channel != NULL\00", align 1
@__func__.query_check = private unnamed_addr constant [12 x i8] c"query_check\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"MODE %s\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"mode channel\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"event 324\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"event 329\00", align 1
@.str.25 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"WHO %s\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"who\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"event 315\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"event 352\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"silent event who\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"MODE %s b\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"mode b\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"event 367\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"chanquery ban\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"event 368\00", align 1
@__func__.sig_channel_destroyed = private unnamed_addr constant [22 x i8] c"sig_channel_destroyed\00", align 1
@__func__.event_channel_mode = private unnamed_addr constant [19 x i8] c"event_channel_mode\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"-k\00", align 1
@__func__.channel_got_query = private unnamed_addr constant [18 x i8] c"channel_got_query\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"chanrec != NULL\00", align 1
@__func__.channel_checksync = private unnamed_addr constant [18 x i8] c"channel_checksync\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"channel sync\00", align 1
@__func__.event_end_of_who = private unnamed_addr constant [17 x i8] c"event_end_of_who\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"channel wholist\00", align 1
@__func__.event_end_of_banlist = private unnamed_addr constant [21 x i8] c"event_end_of_banlist\00", align 1

; Function Attrs: nounwind uwtable
define void @channels_query_init() #0 !dbg !690 {
  call void @settings_add_bool_module(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 1), !dbg !692
  call void @settings_add_int_module(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), i32 1000), !dbg !693
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @sig_connected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !694
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @sig_disconnected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !695
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_CHANNEL_REC*)* @sig_channel_joined to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !696
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_CHANNEL_REC*)* @sig_channel_destroyed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !697
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_channel_mode to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !698
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_end_of_who to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !699
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_end_of_banlist to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !700
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @query_current_error to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !701
  ret void, !dbg !702
}

declare void @settings_add_bool_module(i8*, i8*, i8*, i32) #1

declare void @settings_add_int_module(i8*, i8*, i8*, i32) #1

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @sig_connected(%struct._IRC_SERVER_REC*) #0 !dbg !703 {
  %2 = alloca %struct._IRC_SERVER_REC*, align 8
  %3 = alloca %struct.SERVER_QUERY_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %2, metadata !706, metadata !707), !dbg !708
  call void @llvm.dbg.declare(metadata %struct.SERVER_QUERY_REC** %3, metadata !709, metadata !707), !dbg !710
  br label %4, !dbg !711, !llvm.loop !712

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !713
  %6 = icmp ne %struct._IRC_SERVER_REC* %5, null, !dbg !717
  br i1 %6, label %7, label %8, !dbg !713

; <label>:7:                                      ; preds = %4
  br label %9, !dbg !718

; <label>:8:                                      ; preds = %4
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.sig_connected, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0)), !dbg !721
  br label %29, !dbg !724

; <label>:9:                                      ; preds = %7
  br label %10, !dbg !725

; <label>:10:                                     ; preds = %9
  %11 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !727
  %12 = bitcast %struct._IRC_SERVER_REC* %11 to i8*, !dbg !727
  %13 = call i8* @module_check_cast(i8* %12, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0)), !dbg !729
  %14 = bitcast i8* %13 to %struct._SERVER_REC*, !dbg !730
  %15 = bitcast %struct._SERVER_REC* %14 to i8*, !dbg !731
  %16 = call i8* @chat_protocol_check_cast(i8* %15, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0)), !dbg !732
  %17 = bitcast i8* %16 to %struct._IRC_SERVER_REC*, !dbg !734
  %18 = icmp ne %struct._IRC_SERVER_REC* %17, null, !dbg !734
  br i1 %18, label %19, label %20, !dbg !735

; <label>:19:                                     ; preds = %10
  br i1 false, label %21, label %22, !dbg !736

; <label>:20:                                     ; preds = %10
  br i1 false, label %22, label %21, !dbg !738

; <label>:21:                                     ; preds = %20, %19
  br label %29, !dbg !740

; <label>:22:                                     ; preds = %20, %19
  %23 = call noalias i8* @g_malloc0_n(i64 1, i64 40), !dbg !741
  %24 = bitcast i8* %23 to %struct.SERVER_QUERY_REC*, !dbg !742
  store %struct.SERVER_QUERY_REC* %24, %struct.SERVER_QUERY_REC** %3, align 8, !dbg !743
  %25 = load %struct.SERVER_QUERY_REC*, %struct.SERVER_QUERY_REC** %3, align 8, !dbg !744
  %26 = bitcast %struct.SERVER_QUERY_REC* %25 to i8*, !dbg !744
  %27 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !745
  %28 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %27, i32 0, i32 68, !dbg !746
  store i8* %26, i8** %28, align 8, !dbg !747
  br label %29, !dbg !748

; <label>:29:                                     ; preds = %22, %21, %8
  ret void, !dbg !749
}

; Function Attrs: nounwind uwtable
define internal void @sig_disconnected(%struct._IRC_SERVER_REC*) #0 !dbg !751 {
  %2 = alloca %struct._IRC_SERVER_REC*, align 8
  %3 = alloca %struct.SERVER_QUERY_REC*, align 8
  %4 = alloca i32, align 4
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %2, metadata !752, metadata !707), !dbg !753
  call void @llvm.dbg.declare(metadata %struct.SERVER_QUERY_REC** %3, metadata !754, metadata !707), !dbg !755
  call void @llvm.dbg.declare(metadata i32* %4, metadata !756, metadata !707), !dbg !757
  br label %5, !dbg !758, !llvm.loop !759

; <label>:5:                                      ; preds = %1
  %6 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !760
  %7 = icmp ne %struct._IRC_SERVER_REC* %6, null, !dbg !764
  br i1 %7, label %8, label %9, !dbg !760

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !765

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.sig_disconnected, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0)), !dbg !768
  br label %56, !dbg !771

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !772

; <label>:11:                                     ; preds = %10
  %12 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !774
  %13 = bitcast %struct._IRC_SERVER_REC* %12 to i8*, !dbg !774
  %14 = call i8* @module_check_cast(i8* %13, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0)), !dbg !776
  %15 = bitcast i8* %14 to %struct._SERVER_REC*, !dbg !777
  %16 = bitcast %struct._SERVER_REC* %15 to i8*, !dbg !778
  %17 = call i8* @chat_protocol_check_cast(i8* %16, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0)), !dbg !779
  %18 = bitcast i8* %17 to %struct._IRC_SERVER_REC*, !dbg !781
  %19 = icmp ne %struct._IRC_SERVER_REC* %18, null, !dbg !781
  br i1 %19, label %20, label %21, !dbg !782

; <label>:20:                                     ; preds = %11
  br i1 false, label %22, label %23, !dbg !783

; <label>:21:                                     ; preds = %11
  br i1 false, label %23, label %22, !dbg !785

; <label>:22:                                     ; preds = %21, %20
  br label %56, !dbg !787

; <label>:23:                                     ; preds = %21, %20
  %24 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !788
  %25 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %24, i32 0, i32 68, !dbg !789
  %26 = load i8*, i8** %25, align 8, !dbg !789
  %27 = bitcast i8* %26 to %struct.SERVER_QUERY_REC*, !dbg !788
  store %struct.SERVER_QUERY_REC* %27, %struct.SERVER_QUERY_REC** %3, align 8, !dbg !790
  br label %28, !dbg !791, !llvm.loop !792

; <label>:28:                                     ; preds = %23
  %29 = load %struct.SERVER_QUERY_REC*, %struct.SERVER_QUERY_REC** %3, align 8, !dbg !793
  %30 = icmp ne %struct.SERVER_QUERY_REC* %29, null, !dbg !797
  br i1 %30, label %31, label %32, !dbg !793

; <label>:31:                                     ; preds = %28
  br label %33, !dbg !798

; <label>:32:                                     ; preds = %28
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.sig_disconnected, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0)), !dbg !801
  br label %56, !dbg !804

; <label>:33:                                     ; preds = %31
  br label %34, !dbg !805

; <label>:34:                                     ; preds = %33
  store i32 0, i32* %4, align 4, !dbg !807
  br label %35, !dbg !809

; <label>:35:                                     ; preds = %45, %34
  %36 = load i32, i32* %4, align 4, !dbg !810
  %37 = icmp slt i32 %36, 3, !dbg !813
  br i1 %37, label %38, label %48, !dbg !814

; <label>:38:                                     ; preds = %35
  %39 = load i32, i32* %4, align 4, !dbg !815
  %40 = sext i32 %39 to i64, !dbg !816
  %41 = load %struct.SERVER_QUERY_REC*, %struct.SERVER_QUERY_REC** %3, align 8, !dbg !816
  %42 = getelementptr inbounds %struct.SERVER_QUERY_REC, %struct.SERVER_QUERY_REC* %41, i32 0, i32 2, !dbg !817
  %43 = getelementptr inbounds [3 x %struct._GSList*], [3 x %struct._GSList*]* %42, i64 0, i64 %40, !dbg !816
  %44 = load %struct._GSList*, %struct._GSList** %43, align 8, !dbg !816
  call void @g_slist_free(%struct._GSList* %44), !dbg !818
  br label %45, !dbg !818

; <label>:45:                                     ; preds = %38
  %46 = load i32, i32* %4, align 4, !dbg !819
  %47 = add nsw i32 %46, 1, !dbg !819
  store i32 %47, i32* %4, align 4, !dbg !819
  br label %35, !dbg !821, !llvm.loop !822

; <label>:48:                                     ; preds = %35
  %49 = load %struct.SERVER_QUERY_REC*, %struct.SERVER_QUERY_REC** %3, align 8, !dbg !824
  %50 = getelementptr inbounds %struct.SERVER_QUERY_REC, %struct.SERVER_QUERY_REC* %49, i32 0, i32 1, !dbg !825
  %51 = load %struct._GSList*, %struct._GSList** %50, align 8, !dbg !825
  call void @g_slist_free(%struct._GSList* %51), !dbg !826
  %52 = load %struct.SERVER_QUERY_REC*, %struct.SERVER_QUERY_REC** %3, align 8, !dbg !827
  %53 = bitcast %struct.SERVER_QUERY_REC* %52 to i8*, !dbg !827
  call void @g_free(i8* %53), !dbg !828
  %54 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !829
  %55 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %54, i32 0, i32 68, !dbg !830
  store i8* null, i8** %55, align 8, !dbg !831
  br label %56, !dbg !832

; <label>:56:                                     ; preds = %48, %32, %22, %9
  ret void, !dbg !833
}

; Function Attrs: nounwind uwtable
define internal void @sig_channel_joined(%struct._IRC_CHANNEL_REC*) #0 !dbg !835 {
  %2 = alloca %struct._IRC_CHANNEL_REC*, align 8
  store %struct._IRC_CHANNEL_REC* %0, %struct._IRC_CHANNEL_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %2, metadata !838, metadata !707), !dbg !839
  %3 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %2, align 8, !dbg !840
  %4 = bitcast %struct._IRC_CHANNEL_REC* %3 to i8*, !dbg !840
  %5 = call i8* @module_check_cast_module(i8* %4, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0)), !dbg !842
  %6 = bitcast i8* %5 to %struct._CHANNEL_REC*, !dbg !843
  %7 = bitcast %struct._CHANNEL_REC* %6 to i8*, !dbg !844
  %8 = call i8* @chat_protocol_check_cast(i8* %7, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0)), !dbg !845
  %9 = bitcast i8* %8 to %struct._IRC_CHANNEL_REC*, !dbg !847
  %10 = icmp ne %struct._IRC_CHANNEL_REC* %9, null, !dbg !847
  br i1 %10, label %11, label %12, !dbg !848

; <label>:11:                                     ; preds = %1
  br i1 false, label %13, label %14, !dbg !849

; <label>:12:                                     ; preds = %1
  br i1 false, label %14, label %13, !dbg !851

; <label>:13:                                     ; preds = %12, %11
  br label %49, !dbg !853

; <label>:14:                                     ; preds = %12, %11
  %15 = call i32 @settings_get_bool(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)), !dbg !854
  %16 = icmp ne i32 %15, 0, !dbg !854
  br i1 %16, label %18, label %17, !dbg !856

; <label>:17:                                     ; preds = %14
  br label %49, !dbg !857

; <label>:18:                                     ; preds = %14
  %19 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %2, align 8, !dbg !858
  %20 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %19, i32 0, i32 17, !dbg !860
  %21 = load i8, i8* %20, align 8, !dbg !860
  %22 = and i8 %21, 1, !dbg !860
  %23 = zext i8 %22 to i32, !dbg !860
  %24 = icmp ne i32 %23, 0, !dbg !858
  br i1 %24, label %27, label %25, !dbg !861

; <label>:25:                                     ; preds = %18
  %26 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %2, align 8, !dbg !862
  call void @query_add_channel(%struct._IRC_CHANNEL_REC* %26, i32 0), !dbg !863
  br label %27, !dbg !863

; <label>:27:                                     ; preds = %25, %18
  %28 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %2, align 8, !dbg !864
  %29 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %28, i32 0, i32 15, !dbg !866
  %30 = load %struct._GHashTable*, %struct._GHashTable** %29, align 8, !dbg !866
  %31 = call i32 @g_hash_table_size(%struct._GHashTable* %30), !dbg !867
  %32 = call i32 @settings_get_int(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0)), !dbg !868
  %33 = icmp ult i32 %31, %32, !dbg !869
  br i1 %33, label %34, label %36, !dbg !870

; <label>:34:                                     ; preds = %27
  %35 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %2, align 8, !dbg !871
  call void @query_add_channel(%struct._IRC_CHANNEL_REC* %35, i32 1), !dbg !872
  br label %36, !dbg !872

; <label>:36:                                     ; preds = %34, %27
  %37 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %2, align 8, !dbg !873
  %38 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %37, i32 0, i32 17, !dbg !875
  %39 = load i8, i8* %38, align 8, !dbg !875
  %40 = and i8 %39, 1, !dbg !875
  %41 = zext i8 %40 to i32, !dbg !875
  %42 = icmp ne i32 %41, 0, !dbg !873
  br i1 %42, label %45, label %43, !dbg !876

; <label>:43:                                     ; preds = %36
  %44 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %2, align 8, !dbg !877
  call void @query_add_channel(%struct._IRC_CHANNEL_REC* %44, i32 2), !dbg !878
  br label %45, !dbg !878

; <label>:45:                                     ; preds = %43, %36
  %46 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %2, align 8, !dbg !879
  %47 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %46, i32 0, i32 4, !dbg !880
  %48 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %47, align 8, !dbg !880
  call void @query_check(%struct._IRC_SERVER_REC* %48), !dbg !881
  br label %49, !dbg !882

; <label>:49:                                     ; preds = %45, %17, %13
  ret void, !dbg !883
}

; Function Attrs: nounwind uwtable
define internal void @sig_channel_destroyed(%struct._IRC_CHANNEL_REC*) #0 !dbg !885 {
  %2 = alloca %struct._IRC_CHANNEL_REC*, align 8
  store %struct._IRC_CHANNEL_REC* %0, %struct._IRC_CHANNEL_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %2, metadata !886, metadata !707), !dbg !887
  br label %3, !dbg !888, !llvm.loop !889

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %2, align 8, !dbg !890
  %5 = icmp ne %struct._IRC_CHANNEL_REC* %4, null, !dbg !894
  br i1 %5, label %6, label %7, !dbg !890

; <label>:6:                                      ; preds = %3
  br label %8, !dbg !895

; <label>:7:                                      ; preds = %3
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.sig_channel_destroyed, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0)), !dbg !898
  br label %22, !dbg !901

; <label>:8:                                      ; preds = %6
  br label %9, !dbg !902

; <label>:9:                                      ; preds = %8
  %10 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %2, align 8, !dbg !904
  %11 = bitcast %struct._IRC_CHANNEL_REC* %10 to i8*, !dbg !904
  %12 = call i8* @module_check_cast_module(i8* %11, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0)), !dbg !906
  %13 = bitcast i8* %12 to %struct._CHANNEL_REC*, !dbg !907
  %14 = bitcast %struct._CHANNEL_REC* %13 to i8*, !dbg !908
  %15 = call i8* @chat_protocol_check_cast(i8* %14, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0)), !dbg !909
  %16 = bitcast i8* %15 to %struct._IRC_CHANNEL_REC*, !dbg !911
  %17 = icmp ne %struct._IRC_CHANNEL_REC* %16, null, !dbg !911
  br i1 %17, label %18, label %19, !dbg !912

; <label>:18:                                     ; preds = %9
  br i1 false, label %22, label %20, !dbg !913

; <label>:19:                                     ; preds = %9
  br i1 false, label %20, label %22, !dbg !915

; <label>:20:                                     ; preds = %19, %18
  %21 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %2, align 8, !dbg !917
  call void @query_remove_all(%struct._IRC_CHANNEL_REC* %21), !dbg !918
  br label %22, !dbg !918

; <label>:22:                                     ; preds = %7, %20, %19, %18
  ret void, !dbg !919
}

; Function Attrs: nounwind uwtable
define internal void @event_channel_mode(%struct._IRC_SERVER_REC*, i8*, i8*) #0 !dbg !920 {
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !923, metadata !707), !dbg !924
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !925, metadata !707), !dbg !926
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !927, metadata !707), !dbg !928
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %7, metadata !929, metadata !707), !dbg !930
  call void @llvm.dbg.declare(metadata i8** %8, metadata !931, metadata !707), !dbg !932
  call void @llvm.dbg.declare(metadata i8** %9, metadata !933, metadata !707), !dbg !934
  call void @llvm.dbg.declare(metadata i8** %10, metadata !935, metadata !707), !dbg !936
  br label %11, !dbg !937, !llvm.loop !938

; <label>:11:                                     ; preds = %3
  %12 = load i8*, i8** %5, align 8, !dbg !939
  %13 = icmp ne i8* %12, null, !dbg !943
  br i1 %13, label %14, label %15, !dbg !939

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !944

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.event_channel_mode, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i32 0, i32 0)), !dbg !947
  br label %52, !dbg !950

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !951

; <label>:17:                                     ; preds = %16
  %18 = load i8*, i8** %5, align 8, !dbg !953
  %19 = call i8* (i8*, i32, ...) @event_get_params(i8* %18, i32 8195, i8* null, i8** %9, i8** %10), !dbg !954
  store i8* %19, i8** %8, align 8, !dbg !955
  %20 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !956
  %21 = bitcast %struct._IRC_SERVER_REC* %20 to i8*, !dbg !956
  %22 = call i8* @module_check_cast(i8* %21, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0)), !dbg !957
  %23 = bitcast i8* %22 to %struct._SERVER_REC*, !dbg !958
  %24 = load i8*, i8** %9, align 8, !dbg !959
  %25 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %23, i8* %24), !dbg !960
  %26 = bitcast %struct._CHANNEL_REC* %25 to i8*, !dbg !962
  %27 = call i8* @module_check_cast_module(i8* %26, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0)), !dbg !963
  %28 = bitcast i8* %27 to %struct._CHANNEL_REC*, !dbg !965
  %29 = bitcast %struct._CHANNEL_REC* %28 to i8*, !dbg !966
  %30 = call i8* @chat_protocol_check_cast(i8* %29, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0)), !dbg !967
  %31 = bitcast i8* %30 to %struct._IRC_CHANNEL_REC*, !dbg !969
  store %struct._IRC_CHANNEL_REC* %31, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !970
  %32 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !971
  %33 = icmp ne %struct._IRC_CHANNEL_REC* %32, null, !dbg !973
  br i1 %33, label %34, label %50, !dbg !974

; <label>:34:                                     ; preds = %17
  %35 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !975
  %36 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %35, i32 0, i32 20, !dbg !978
  %37 = load i8*, i8** %36, align 8, !dbg !978
  %38 = icmp ne i8* %37, null, !dbg !979
  br i1 %38, label %39, label %45, !dbg !980

; <label>:39:                                     ; preds = %34
  %40 = load i8*, i8** %10, align 8, !dbg !981
  %41 = call i8* @strchr(i8* %40, i32 107) #4, !dbg !983
  %42 = icmp eq i8* %41, null, !dbg !984
  br i1 %42, label %43, label %45, !dbg !985

; <label>:43:                                     ; preds = %39
  %44 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !986
  call void @parse_channel_modes(%struct._IRC_CHANNEL_REC* %44, i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i32 0, i32 0), i32 1), !dbg !988
  br label %45, !dbg !989

; <label>:45:                                     ; preds = %43, %39, %34
  %46 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !990
  %47 = load i8*, i8** %6, align 8, !dbg !991
  %48 = load i8*, i8** %10, align 8, !dbg !992
  call void @parse_channel_modes(%struct._IRC_CHANNEL_REC* %46, i8* %47, i8* %48, i32 0), !dbg !993
  %49 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !994
  call void @channel_got_query(%struct._IRC_CHANNEL_REC* %49, i32 0), !dbg !995
  br label %50, !dbg !996

; <label>:50:                                     ; preds = %45, %17
  %51 = load i8*, i8** %8, align 8, !dbg !997
  call void @g_free(i8* %51), !dbg !998
  br label %52, !dbg !999

; <label>:52:                                     ; preds = %50, %15
  ret void, !dbg !1000
}

; Function Attrs: nounwind uwtable
define internal void @event_end_of_who(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !1001 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.SERVER_QUERY_REC*, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca %struct._GSList*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct._IRC_CHANNEL_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1004, metadata !707), !dbg !1005
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1006, metadata !707), !dbg !1007
  call void @llvm.dbg.declare(metadata %struct.SERVER_QUERY_REC** %5, metadata !1008, metadata !707), !dbg !1009
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !1010, metadata !707), !dbg !1011
  call void @llvm.dbg.declare(metadata %struct._GSList** %7, metadata !1012, metadata !707), !dbg !1013
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1014, metadata !707), !dbg !1015
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1016, metadata !707), !dbg !1017
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !1018, metadata !707), !dbg !1019
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1020, metadata !707), !dbg !1021
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1022, metadata !707), !dbg !1023
  br label %14, !dbg !1024, !llvm.loop !1025

; <label>:14:                                     ; preds = %2
  %15 = load i8*, i8** %4, align 8, !dbg !1026
  %16 = icmp ne i8* %15, null, !dbg !1030
  br i1 %16, label %17, label %18, !dbg !1026

; <label>:17:                                     ; preds = %14
  br label %19, !dbg !1031

; <label>:18:                                     ; preds = %14
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.event_end_of_who, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i32 0, i32 0)), !dbg !1034
  br label %102, !dbg !1037

; <label>:19:                                     ; preds = %17
  br label %20, !dbg !1038

; <label>:20:                                     ; preds = %19
  %21 = load i8*, i8** %4, align 8, !dbg !1040
  %22 = call i8* (i8*, i32, ...) @event_get_params(i8* %21, i32 2, i8* null, i8** %9), !dbg !1041
  store i8* %22, i8** %8, align 8, !dbg !1042
  %23 = load i8*, i8** %9, align 8, !dbg !1043
  %24 = call i8* @strchr(i8* %23, i32 44) #4, !dbg !1044
  %25 = icmp ne i8* %24, null, !dbg !1045
  %26 = zext i1 %25 to i32, !dbg !1045
  store i32 %26, i32* %12, align 4, !dbg !1046
  %27 = load i8*, i8** %9, align 8, !dbg !1047
  %28 = call noalias i8** @g_strsplit(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i32 -1), !dbg !1048
  store i8** %28, i8*** %10, align 8, !dbg !1049
  store i32 0, i32* %11, align 4, !dbg !1050
  %29 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1051
  %30 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %29, i32 0, i32 68, !dbg !1052
  %31 = load i8*, i8** %30, align 8, !dbg !1052
  %32 = bitcast i8* %31 to %struct.SERVER_QUERY_REC*, !dbg !1051
  store %struct.SERVER_QUERY_REC* %32, %struct.SERVER_QUERY_REC** %5, align 8, !dbg !1053
  %33 = load %struct.SERVER_QUERY_REC*, %struct.SERVER_QUERY_REC** %5, align 8, !dbg !1054
  %34 = getelementptr inbounds %struct.SERVER_QUERY_REC, %struct.SERVER_QUERY_REC* %33, i32 0, i32 1, !dbg !1056
  %35 = load %struct._GSList*, %struct._GSList** %34, align 8, !dbg !1056
  store %struct._GSList* %35, %struct._GSList** %6, align 8, !dbg !1057
  br label %36, !dbg !1058

; <label>:36:                                     ; preds = %83, %20
  %37 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1059
  %38 = icmp ne %struct._GSList* %37, null, !dbg !1062
  br i1 %38, label %39, label %85, !dbg !1063

; <label>:39:                                     ; preds = %36
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %13, metadata !1064, metadata !707), !dbg !1066
  %40 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1067
  %41 = getelementptr inbounds %struct._GSList, %struct._GSList* %40, i32 0, i32 0, !dbg !1068
  %42 = load i8*, i8** %41, align 8, !dbg !1068
  %43 = bitcast i8* %42 to %struct._IRC_CHANNEL_REC*, !dbg !1067
  store %struct._IRC_CHANNEL_REC* %43, %struct._IRC_CHANNEL_REC** %13, align 8, !dbg !1066
  %44 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1069
  %45 = getelementptr inbounds %struct._GSList, %struct._GSList* %44, i32 0, i32 1, !dbg !1070
  %46 = load %struct._GSList*, %struct._GSList** %45, align 8, !dbg !1070
  store %struct._GSList* %46, %struct._GSList** %7, align 8, !dbg !1071
  %47 = load i8**, i8*** %10, align 8, !dbg !1072
  %48 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %13, align 8, !dbg !1074
  %49 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %48, i32 0, i32 6, !dbg !1075
  %50 = load i8*, i8** %49, align 8, !dbg !1075
  %51 = call i32 @strarray_find(i8** %47, i8* %50), !dbg !1076
  %52 = icmp eq i32 %51, -1, !dbg !1077
  br i1 %52, label %53, label %54, !dbg !1078

; <label>:53:                                     ; preds = %39
  br label %83, !dbg !1079

; <label>:54:                                     ; preds = %39
  %55 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %13, align 8, !dbg !1080
  %56 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %55, i32 0, i32 16, !dbg !1082
  %57 = load %struct._NICK_REC*, %struct._NICK_REC** %56, align 8, !dbg !1082
  %58 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %57, i32 0, i32 4, !dbg !1083
  %59 = load i8*, i8** %58, align 8, !dbg !1083
  %60 = icmp eq i8* %59, null, !dbg !1084
  br i1 %60, label %61, label %73, !dbg !1085

; <label>:61:                                     ; preds = %54
  %62 = load i32, i32* %12, align 4, !dbg !1086
  %63 = icmp ne i32 %62, 0, !dbg !1086
  br i1 %63, label %64, label %73, !dbg !1088

; <label>:64:                                     ; preds = %61
  %65 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1089
  %66 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %65, i32 0, i32 45, !dbg !1090
  %67 = load i16, i16* %66, align 4, !dbg !1090
  %68 = lshr i16 %67, 5, !dbg !1090
  %69 = and i16 %68, 1, !dbg !1090
  %70 = zext i16 %69 to i32, !dbg !1090
  %71 = icmp ne i32 %70, 0, !dbg !1089
  br i1 %71, label %73, label %72, !dbg !1091

; <label>:72:                                     ; preds = %64
  store i32 1, i32* %11, align 4, !dbg !1093
  br label %82, !dbg !1095

; <label>:73:                                     ; preds = %64, %61, %54
  %74 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %13, align 8, !dbg !1096
  %75 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %74, i32 0, i32 21, !dbg !1098
  %76 = load i16, i16* %75, align 8, !dbg !1099
  %77 = and i16 %76, -5, !dbg !1099
  %78 = or i16 %77, 4, !dbg !1099
  store i16 %78, i16* %75, align 8, !dbg !1099
  %79 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %13, align 8, !dbg !1100
  %80 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i32 0, i32 0), i32 1, %struct._IRC_CHANNEL_REC* %79), !dbg !1101
  %81 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %13, align 8, !dbg !1102
  call void @channel_got_query(%struct._IRC_CHANNEL_REC* %81, i32 1), !dbg !1103
  br label %82

; <label>:82:                                     ; preds = %73, %72
  br label %83, !dbg !1104

; <label>:83:                                     ; preds = %82, %53
  %84 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1105
  store %struct._GSList* %84, %struct._GSList** %6, align 8, !dbg !1107
  br label %36, !dbg !1108, !llvm.loop !1109

; <label>:85:                                     ; preds = %36
  %86 = load i8**, i8*** %10, align 8, !dbg !1111
  call void @g_strfreev(i8** %86), !dbg !1112
  %87 = load i32, i32* %12, align 4, !dbg !1113
  %88 = icmp ne i32 %87, 0, !dbg !1113
  br i1 %88, label %89, label %95, !dbg !1115

; <label>:89:                                     ; preds = %85
  %90 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1116
  %91 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %90, i32 0, i32 45, !dbg !1117
  %92 = load i16, i16* %91, align 4, !dbg !1118
  %93 = and i16 %92, -33, !dbg !1118
  %94 = or i16 %93, 32, !dbg !1118
  store i16 %94, i16* %91, align 4, !dbg !1118
  br label %95, !dbg !1116

; <label>:95:                                     ; preds = %89, %85
  %96 = load i32, i32* %11, align 4, !dbg !1119
  %97 = icmp ne i32 %96, 0, !dbg !1119
  br i1 %97, label %98, label %100, !dbg !1121

; <label>:98:                                     ; preds = %95
  %99 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1122
  call void @query_current_error(%struct._IRC_SERVER_REC* %99), !dbg !1124
  br label %100, !dbg !1125

; <label>:100:                                    ; preds = %98, %95
  %101 = load i8*, i8** %8, align 8, !dbg !1126
  call void @g_free(i8* %101), !dbg !1127
  br label %102, !dbg !1128

; <label>:102:                                    ; preds = %100, %18
  ret void, !dbg !1129
}

; Function Attrs: nounwind uwtable
define internal void @event_end_of_banlist(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !1131 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1132, metadata !707), !dbg !1133
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1134, metadata !707), !dbg !1135
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %5, metadata !1136, metadata !707), !dbg !1137
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1138, metadata !707), !dbg !1139
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1140, metadata !707), !dbg !1141
  br label %8, !dbg !1142, !llvm.loop !1143

; <label>:8:                                      ; preds = %2
  %9 = load i8*, i8** %4, align 8, !dbg !1144
  %10 = icmp ne i8* %9, null, !dbg !1148
  br i1 %10, label %11, label %12, !dbg !1144

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !1149

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.event_end_of_banlist, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i32 0, i32 0)), !dbg !1152
  br label %35, !dbg !1155

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !1156

; <label>:14:                                     ; preds = %13
  %15 = load i8*, i8** %4, align 8, !dbg !1158
  %16 = call i8* (i8*, i32, ...) @event_get_params(i8* %15, i32 2, i8* null, i8** %7), !dbg !1159
  store i8* %16, i8** %6, align 8, !dbg !1160
  %17 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1161
  %18 = bitcast %struct._IRC_SERVER_REC* %17 to i8*, !dbg !1161
  %19 = call i8* @module_check_cast(i8* %18, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0)), !dbg !1162
  %20 = bitcast i8* %19 to %struct._SERVER_REC*, !dbg !1163
  %21 = load i8*, i8** %7, align 8, !dbg !1164
  %22 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %20, i8* %21), !dbg !1165
  %23 = bitcast %struct._CHANNEL_REC* %22 to i8*, !dbg !1167
  %24 = call i8* @module_check_cast_module(i8* %23, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0)), !dbg !1168
  %25 = bitcast i8* %24 to %struct._CHANNEL_REC*, !dbg !1170
  %26 = bitcast %struct._CHANNEL_REC* %25 to i8*, !dbg !1171
  %27 = call i8* @chat_protocol_check_cast(i8* %26, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0)), !dbg !1172
  %28 = bitcast i8* %27 to %struct._IRC_CHANNEL_REC*, !dbg !1174
  store %struct._IRC_CHANNEL_REC* %28, %struct._IRC_CHANNEL_REC** %5, align 8, !dbg !1175
  %29 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %5, align 8, !dbg !1176
  %30 = icmp ne %struct._IRC_CHANNEL_REC* %29, null, !dbg !1178
  br i1 %30, label %31, label %33, !dbg !1179

; <label>:31:                                     ; preds = %14
  %32 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %5, align 8, !dbg !1180
  call void @channel_got_query(%struct._IRC_CHANNEL_REC* %32, i32 2), !dbg !1181
  br label %33, !dbg !1181

; <label>:33:                                     ; preds = %31, %14
  %34 = load i8*, i8** %6, align 8, !dbg !1182
  call void @g_free(i8* %34), !dbg !1183
  br label %35, !dbg !1184

; <label>:35:                                     ; preds = %33, %12
  ret void, !dbg !1185
}

; Function Attrs: nounwind uwtable
define internal void @query_current_error(%struct._IRC_SERVER_REC*) #0 !dbg !1186 {
  %2 = alloca %struct._IRC_SERVER_REC*, align 8
  %3 = alloca %struct.SERVER_QUERY_REC*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %2, metadata !1187, metadata !707), !dbg !1188
  call void @llvm.dbg.declare(metadata %struct.SERVER_QUERY_REC** %3, metadata !1189, metadata !707), !dbg !1190
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !1191, metadata !707), !dbg !1192
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1193, metadata !707), !dbg !1194
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1195, metadata !707), !dbg !1196
  %7 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1197
  %8 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %7, i32 0, i32 68, !dbg !1198
  %9 = load i8*, i8** %8, align 8, !dbg !1198
  %10 = bitcast i8* %9 to %struct.SERVER_QUERY_REC*, !dbg !1197
  store %struct.SERVER_QUERY_REC* %10, %struct.SERVER_QUERY_REC** %3, align 8, !dbg !1199
  store i32 0, i32* %6, align 4, !dbg !1200
  %11 = load %struct.SERVER_QUERY_REC*, %struct.SERVER_QUERY_REC** %3, align 8, !dbg !1201
  %12 = getelementptr inbounds %struct.SERVER_QUERY_REC, %struct.SERVER_QUERY_REC* %11, i32 0, i32 0, !dbg !1202
  %13 = load i32, i32* %12, align 8, !dbg !1202
  store i32 %13, i32* %5, align 4, !dbg !1203
  %14 = load i32, i32* %5, align 4, !dbg !1204
  %15 = icmp eq i32 %14, 1, !dbg !1206
  br i1 %15, label %16, label %32, !dbg !1207

; <label>:16:                                     ; preds = %1
  %17 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1208
  %18 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %17, i32 0, i32 45, !dbg !1211
  %19 = load i16, i16* %18, align 4, !dbg !1211
  %20 = lshr i16 %19, 4, !dbg !1211
  %21 = and i16 %20, 1, !dbg !1211
  %22 = zext i16 %21 to i32, !dbg !1211
  %23 = icmp ne i32 %22, 0, !dbg !1208
  br i1 %23, label %24, label %25, !dbg !1212

; <label>:24:                                     ; preds = %16
  store i32 1, i32* %6, align 4, !dbg !1213
  br label %31, !dbg !1214

; <label>:25:                                     ; preds = %16
  %26 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1215
  %27 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %26, i32 0, i32 45, !dbg !1216
  %28 = load i16, i16* %27, align 4, !dbg !1217
  %29 = and i16 %28, -17, !dbg !1217
  %30 = or i16 %29, 16, !dbg !1217
  store i16 %30, i16* %27, align 4, !dbg !1217
  br label %31

; <label>:31:                                     ; preds = %25, %24
  br label %48, !dbg !1218

; <label>:32:                                     ; preds = %1
  %33 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1219
  %34 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %33, i32 0, i32 45, !dbg !1222
  %35 = load i16, i16* %34, align 4, !dbg !1222
  %36 = lshr i16 %35, 3, !dbg !1222
  %37 = and i16 %36, 1, !dbg !1222
  %38 = zext i16 %37 to i32, !dbg !1222
  %39 = icmp ne i32 %38, 0, !dbg !1219
  br i1 %39, label %40, label %41, !dbg !1223

; <label>:40:                                     ; preds = %32
  store i32 1, i32* %6, align 4, !dbg !1224
  br label %47, !dbg !1225

; <label>:41:                                     ; preds = %32
  %42 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1226
  %43 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %42, i32 0, i32 45, !dbg !1227
  %44 = load i16, i16* %43, align 4, !dbg !1228
  %45 = and i16 %44, -9, !dbg !1228
  %46 = or i16 %45, 8, !dbg !1228
  store i16 %46, i16* %43, align 4, !dbg !1228
  br label %47

; <label>:47:                                     ; preds = %41, %40
  br label %48

; <label>:48:                                     ; preds = %47, %31
  %49 = load i32, i32* %6, align 4, !dbg !1229
  %50 = icmp ne i32 %49, 0, !dbg !1229
  br i1 %50, label %79, label %51, !dbg !1231

; <label>:51:                                     ; preds = %48
  %52 = load %struct.SERVER_QUERY_REC*, %struct.SERVER_QUERY_REC** %3, align 8, !dbg !1232
  %53 = getelementptr inbounds %struct.SERVER_QUERY_REC, %struct.SERVER_QUERY_REC* %52, i32 0, i32 1, !dbg !1235
  %54 = load %struct._GSList*, %struct._GSList** %53, align 8, !dbg !1235
  store %struct._GSList* %54, %struct._GSList** %4, align 8, !dbg !1236
  br label %55, !dbg !1237

; <label>:55:                                     ; preds = %74, %51
  %56 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1238
  %57 = icmp ne %struct._GSList* %56, null, !dbg !1241
  br i1 %57, label %58, label %78, !dbg !1242

; <label>:58:                                     ; preds = %55
  %59 = load i32, i32* %5, align 4, !dbg !1243
  %60 = sext i32 %59 to i64, !dbg !1245
  %61 = load %struct.SERVER_QUERY_REC*, %struct.SERVER_QUERY_REC** %3, align 8, !dbg !1245
  %62 = getelementptr inbounds %struct.SERVER_QUERY_REC, %struct.SERVER_QUERY_REC* %61, i32 0, i32 2, !dbg !1246
  %63 = getelementptr inbounds [3 x %struct._GSList*], [3 x %struct._GSList*]* %62, i64 0, i64 %60, !dbg !1245
  %64 = load %struct._GSList*, %struct._GSList** %63, align 8, !dbg !1245
  %65 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1247
  %66 = getelementptr inbounds %struct._GSList, %struct._GSList* %65, i32 0, i32 0, !dbg !1248
  %67 = load i8*, i8** %66, align 8, !dbg !1248
  %68 = call %struct._GSList* @g_slist_append(%struct._GSList* %64, i8* %67), !dbg !1249
  %69 = load i32, i32* %5, align 4, !dbg !1250
  %70 = sext i32 %69 to i64, !dbg !1251
  %71 = load %struct.SERVER_QUERY_REC*, %struct.SERVER_QUERY_REC** %3, align 8, !dbg !1251
  %72 = getelementptr inbounds %struct.SERVER_QUERY_REC, %struct.SERVER_QUERY_REC* %71, i32 0, i32 2, !dbg !1252
  %73 = getelementptr inbounds [3 x %struct._GSList*], [3 x %struct._GSList*]* %72, i64 0, i64 %70, !dbg !1251
  store %struct._GSList* %68, %struct._GSList** %73, align 8, !dbg !1253
  br label %74, !dbg !1254

; <label>:74:                                     ; preds = %58
  %75 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1255
  %76 = getelementptr inbounds %struct._GSList, %struct._GSList* %75, i32 0, i32 1, !dbg !1257
  %77 = load %struct._GSList*, %struct._GSList** %76, align 8, !dbg !1257
  store %struct._GSList* %77, %struct._GSList** %4, align 8, !dbg !1258
  br label %55, !dbg !1259, !llvm.loop !1260

; <label>:78:                                     ; preds = %55
  br label %83, !dbg !1262

; <label>:79:                                     ; preds = %48
  %80 = load %struct.SERVER_QUERY_REC*, %struct.SERVER_QUERY_REC** %3, align 8, !dbg !1263
  %81 = getelementptr inbounds %struct.SERVER_QUERY_REC, %struct.SERVER_QUERY_REC* %80, i32 0, i32 1, !dbg !1265
  %82 = load %struct._GSList*, %struct._GSList** %81, align 8, !dbg !1265
  call void @g_slist_foreach(%struct._GSList* %82, void (i8*, i8*)* bitcast (void (%struct._IRC_CHANNEL_REC*)* @channel_checksync to void (i8*, i8*)*), i8* null), !dbg !1266
  br label %83

; <label>:83:                                     ; preds = %79, %78
  %84 = load %struct.SERVER_QUERY_REC*, %struct.SERVER_QUERY_REC** %3, align 8, !dbg !1267
  %85 = getelementptr inbounds %struct.SERVER_QUERY_REC, %struct.SERVER_QUERY_REC* %84, i32 0, i32 1, !dbg !1268
  %86 = load %struct._GSList*, %struct._GSList** %85, align 8, !dbg !1268
  call void @g_slist_free(%struct._GSList* %86), !dbg !1269
  %87 = load %struct.SERVER_QUERY_REC*, %struct.SERVER_QUERY_REC** %3, align 8, !dbg !1270
  %88 = getelementptr inbounds %struct.SERVER_QUERY_REC, %struct.SERVER_QUERY_REC* %87, i32 0, i32 1, !dbg !1271
  store %struct._GSList* null, %struct._GSList** %88, align 8, !dbg !1272
  %89 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1273
  call void @query_check(%struct._IRC_SERVER_REC* %89), !dbg !1274
  ret void, !dbg !1275
}

; Function Attrs: nounwind uwtable
define void @channels_query_deinit() #0 !dbg !1276 {
  call void @signal_remove_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @sig_connected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1277
  call void @signal_remove_full(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @sig_disconnected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1278
  call void @signal_remove_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_CHANNEL_REC*)* @sig_channel_joined to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1279
  call void @signal_remove_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_CHANNEL_REC*)* @sig_channel_destroyed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1280
  call void @signal_remove_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_channel_mode to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1281
  call void @signal_remove_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_end_of_who to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1282
  call void @signal_remove_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_end_of_banlist to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1283
  call void @signal_remove_full(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @query_current_error to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1284
  ret void, !dbg !1285
}

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @chat_protocol_check_cast(i8*, i32, i8*) #1

declare i8* @module_check_cast(i8*, i32, i8*) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare void @g_slist_free(%struct._GSList*) #1

declare void @g_free(i8*) #1

declare i8* @module_check_cast_module(i8*, i32, i8*, i8*) #1

declare i32 @settings_get_bool(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @query_add_channel(%struct._IRC_CHANNEL_REC*, i32) #0 !dbg !1286 {
  %3 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.SERVER_QUERY_REC*, align 8
  store %struct._IRC_CHANNEL_REC* %0, %struct._IRC_CHANNEL_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %3, metadata !1289, metadata !707), !dbg !1290
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1291, metadata !707), !dbg !1292
  call void @llvm.dbg.declare(metadata %struct.SERVER_QUERY_REC** %5, metadata !1293, metadata !707), !dbg !1294
  br label %6, !dbg !1295, !llvm.loop !1296

; <label>:6:                                      ; preds = %2
  %7 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %3, align 8, !dbg !1297
  %8 = icmp ne %struct._IRC_CHANNEL_REC* %7, null, !dbg !1301
  br i1 %8, label %9, label %10, !dbg !1297

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !1302

; <label>:10:                                     ; preds = %6
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.query_add_channel, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0)), !dbg !1305
  br label %33, !dbg !1308

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !1309

; <label>:12:                                     ; preds = %11
  %13 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %3, align 8, !dbg !1311
  %14 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %13, i32 0, i32 4, !dbg !1312
  %15 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %14, align 8, !dbg !1312
  %16 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %15, i32 0, i32 68, !dbg !1313
  %17 = load i8*, i8** %16, align 8, !dbg !1313
  %18 = bitcast i8* %17 to %struct.SERVER_QUERY_REC*, !dbg !1311
  store %struct.SERVER_QUERY_REC* %18, %struct.SERVER_QUERY_REC** %5, align 8, !dbg !1314
  %19 = load i32, i32* %4, align 4, !dbg !1315
  %20 = sext i32 %19 to i64, !dbg !1316
  %21 = load %struct.SERVER_QUERY_REC*, %struct.SERVER_QUERY_REC** %5, align 8, !dbg !1316
  %22 = getelementptr inbounds %struct.SERVER_QUERY_REC, %struct.SERVER_QUERY_REC* %21, i32 0, i32 2, !dbg !1317
  %23 = getelementptr inbounds [3 x %struct._GSList*], [3 x %struct._GSList*]* %22, i64 0, i64 %20, !dbg !1316
  %24 = load %struct._GSList*, %struct._GSList** %23, align 8, !dbg !1316
  %25 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %3, align 8, !dbg !1318
  %26 = bitcast %struct._IRC_CHANNEL_REC* %25 to i8*, !dbg !1318
  %27 = call %struct._GSList* @g_slist_append(%struct._GSList* %24, i8* %26), !dbg !1319
  %28 = load i32, i32* %4, align 4, !dbg !1320
  %29 = sext i32 %28 to i64, !dbg !1321
  %30 = load %struct.SERVER_QUERY_REC*, %struct.SERVER_QUERY_REC** %5, align 8, !dbg !1321
  %31 = getelementptr inbounds %struct.SERVER_QUERY_REC, %struct.SERVER_QUERY_REC* %30, i32 0, i32 2, !dbg !1322
  %32 = getelementptr inbounds [3 x %struct._GSList*], [3 x %struct._GSList*]* %31, i64 0, i64 %29, !dbg !1321
  store %struct._GSList* %27, %struct._GSList** %32, align 8, !dbg !1323
  br label %33, !dbg !1324

; <label>:33:                                     ; preds = %12, %10
  ret void, !dbg !1325
}

declare i32 @g_hash_table_size(%struct._GHashTable*) #1

declare i32 @settings_get_int(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @query_check(%struct._IRC_SERVER_REC*) #0 !dbg !1327 {
  %2 = alloca %struct._IRC_SERVER_REC*, align 8
  %3 = alloca %struct.SERVER_QUERY_REC*, align 8
  %4 = alloca i32, align 4
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %2, metadata !1328, metadata !707), !dbg !1329
  call void @llvm.dbg.declare(metadata %struct.SERVER_QUERY_REC** %3, metadata !1330, metadata !707), !dbg !1331
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1332, metadata !707), !dbg !1333
  br label %5, !dbg !1334, !llvm.loop !1335

; <label>:5:                                      ; preds = %1
  %6 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1336
  %7 = icmp ne %struct._IRC_SERVER_REC* %6, null, !dbg !1340
  br i1 %7, label %8, label %9, !dbg !1336

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !1341

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.query_check, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0)), !dbg !1344
  br label %56, !dbg !1347

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !1348

; <label>:11:                                     ; preds = %10
  %12 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1350
  %13 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %12, i32 0, i32 68, !dbg !1351
  %14 = load i8*, i8** %13, align 8, !dbg !1351
  %15 = bitcast i8* %14 to %struct.SERVER_QUERY_REC*, !dbg !1350
  store %struct.SERVER_QUERY_REC* %15, %struct.SERVER_QUERY_REC** %3, align 8, !dbg !1352
  %16 = load %struct.SERVER_QUERY_REC*, %struct.SERVER_QUERY_REC** %3, align 8, !dbg !1353
  %17 = getelementptr inbounds %struct.SERVER_QUERY_REC, %struct.SERVER_QUERY_REC* %16, i32 0, i32 1, !dbg !1355
  %18 = load %struct._GSList*, %struct._GSList** %17, align 8, !dbg !1355
  %19 = icmp ne %struct._GSList* %18, null, !dbg !1356
  br i1 %19, label %20, label %21, !dbg !1357

; <label>:20:                                     ; preds = %11
  br label %56, !dbg !1358

; <label>:21:                                     ; preds = %11
  %22 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1359
  %23 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %22, i32 0, i32 61, !dbg !1361
  %24 = load i32, i32* %23, align 8, !dbg !1361
  %25 = icmp sgt i32 %24, 1, !dbg !1362
  br i1 %25, label %26, label %47, !dbg !1363

; <label>:26:                                     ; preds = %21
  %27 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1364
  %28 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %27, i32 0, i32 45, !dbg !1366
  %29 = load i16, i16* %28, align 4, !dbg !1366
  %30 = lshr i16 %29, 4, !dbg !1366
  %31 = and i16 %30, 1, !dbg !1366
  %32 = zext i16 %31 to i32, !dbg !1366
  %33 = icmp ne i32 %32, 0, !dbg !1364
  br i1 %33, label %47, label %34, !dbg !1367

; <label>:34:                                     ; preds = %26
  %35 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1368
  %36 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %35, i32 0, i32 45, !dbg !1370
  %37 = load i16, i16* %36, align 4, !dbg !1370
  %38 = lshr i16 %37, 3, !dbg !1370
  %39 = and i16 %38, 1, !dbg !1370
  %40 = zext i16 %39 to i32, !dbg !1370
  %41 = icmp ne i32 %40, 0, !dbg !1368
  br i1 %41, label %47, label %42, !dbg !1371

; <label>:42:                                     ; preds = %34
  %43 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1372
  %44 = call i32 @channels_have_all_names(%struct._IRC_SERVER_REC* %43), !dbg !1374
  %45 = icmp ne i32 %44, 0, !dbg !1374
  br i1 %45, label %47, label %46, !dbg !1375

; <label>:46:                                     ; preds = %42
  br label %56, !dbg !1376

; <label>:47:                                     ; preds = %42, %34, %26, %21
  %48 = load %struct.SERVER_QUERY_REC*, %struct.SERVER_QUERY_REC** %3, align 8, !dbg !1378
  %49 = call i32 @query_find_next(%struct.SERVER_QUERY_REC* %48), !dbg !1379
  store i32 %49, i32* %4, align 4, !dbg !1380
  %50 = load i32, i32* %4, align 4, !dbg !1381
  %51 = icmp eq i32 %50, -1, !dbg !1383
  br i1 %51, label %52, label %53, !dbg !1384

; <label>:52:                                     ; preds = %47
  br label %56, !dbg !1385

; <label>:53:                                     ; preds = %47
  %54 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1387
  %55 = load i32, i32* %4, align 4, !dbg !1388
  call void @query_send(%struct._IRC_SERVER_REC* %54, i32 %55), !dbg !1389
  br label %56, !dbg !1390

; <label>:56:                                     ; preds = %53, %52, %46, %20, %9
  ret void, !dbg !1391
}

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @channels_have_all_names(%struct._IRC_SERVER_REC*) #0 !dbg !1393 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct._IRC_CHANNEL_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1396, metadata !707), !dbg !1397
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !1398, metadata !707), !dbg !1399
  %6 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1400
  %7 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %6, i32 0, i32 23, !dbg !1402
  %8 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1402
  store %struct._GSList* %8, %struct._GSList** %4, align 8, !dbg !1403
  br label %9, !dbg !1404

; <label>:9:                                      ; preds = %37, %1
  %10 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1405
  %11 = icmp ne %struct._GSList* %10, null, !dbg !1408
  br i1 %11, label %12, label %41, !dbg !1409

; <label>:12:                                     ; preds = %9
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %5, metadata !1410, metadata !707), !dbg !1412
  %13 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1413
  %14 = getelementptr inbounds %struct._GSList, %struct._GSList* %13, i32 0, i32 0, !dbg !1414
  %15 = load i8*, i8** %14, align 8, !dbg !1414
  %16 = bitcast i8* %15 to %struct._IRC_CHANNEL_REC*, !dbg !1413
  store %struct._IRC_CHANNEL_REC* %16, %struct._IRC_CHANNEL_REC** %5, align 8, !dbg !1412
  %17 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %5, align 8, !dbg !1415
  %18 = bitcast %struct._IRC_CHANNEL_REC* %17 to i8*, !dbg !1415
  %19 = call i8* @module_check_cast_module(i8* %18, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0)), !dbg !1417
  %20 = bitcast i8* %19 to %struct._CHANNEL_REC*, !dbg !1418
  %21 = bitcast %struct._CHANNEL_REC* %20 to i8*, !dbg !1419
  %22 = call i8* @chat_protocol_check_cast(i8* %21, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0)), !dbg !1420
  %23 = bitcast i8* %22 to %struct._IRC_CHANNEL_REC*, !dbg !1422
  %24 = icmp ne %struct._IRC_CHANNEL_REC* %23, null, !dbg !1422
  br i1 %24, label %25, label %26, !dbg !1423

; <label>:25:                                     ; preds = %12
  br i1 false, label %36, label %27, !dbg !1424

; <label>:26:                                     ; preds = %12
  br i1 false, label %27, label %36, !dbg !1426

; <label>:27:                                     ; preds = %26, %25
  %28 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %5, align 8, !dbg !1428
  %29 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %28, i32 0, i32 21, !dbg !1430
  %30 = load i16, i16* %29, align 8, !dbg !1430
  %31 = lshr i16 %30, 1, !dbg !1430
  %32 = and i16 %31, 1, !dbg !1430
  %33 = zext i16 %32 to i32, !dbg !1430
  %34 = icmp ne i32 %33, 0, !dbg !1428
  br i1 %34, label %36, label %35, !dbg !1431

; <label>:35:                                     ; preds = %27
  store i32 0, i32* %2, align 4, !dbg !1432
  br label %42, !dbg !1432

; <label>:36:                                     ; preds = %27, %26, %25
  br label %37, !dbg !1433

; <label>:37:                                     ; preds = %36
  %38 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1434
  %39 = getelementptr inbounds %struct._GSList, %struct._GSList* %38, i32 0, i32 1, !dbg !1436
  %40 = load %struct._GSList*, %struct._GSList** %39, align 8, !dbg !1436
  store %struct._GSList* %40, %struct._GSList** %4, align 8, !dbg !1437
  br label %9, !dbg !1438, !llvm.loop !1439

; <label>:41:                                     ; preds = %9
  store i32 1, i32* %2, align 4, !dbg !1441
  br label %42, !dbg !1441

; <label>:42:                                     ; preds = %41, %35
  %43 = load i32, i32* %2, align 4, !dbg !1442
  ret i32 %43, !dbg !1442
}

; Function Attrs: nounwind uwtable
define internal i32 @query_find_next(%struct.SERVER_QUERY_REC*) #0 !dbg !1443 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.SERVER_QUERY_REC*, align 8
  %4 = alloca i32, align 4
  store %struct.SERVER_QUERY_REC* %0, %struct.SERVER_QUERY_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.SERVER_QUERY_REC** %3, metadata !1446, metadata !707), !dbg !1447
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1448, metadata !707), !dbg !1449
  store i32 0, i32* %4, align 4, !dbg !1450
  br label %5, !dbg !1452

; <label>:5:                                      ; preds = %19, %1
  %6 = load i32, i32* %4, align 4, !dbg !1453
  %7 = icmp slt i32 %6, 3, !dbg !1456
  br i1 %7, label %8, label %22, !dbg !1457

; <label>:8:                                      ; preds = %5
  %9 = load i32, i32* %4, align 4, !dbg !1458
  %10 = sext i32 %9 to i64, !dbg !1461
  %11 = load %struct.SERVER_QUERY_REC*, %struct.SERVER_QUERY_REC** %3, align 8, !dbg !1461
  %12 = getelementptr inbounds %struct.SERVER_QUERY_REC, %struct.SERVER_QUERY_REC* %11, i32 0, i32 2, !dbg !1462
  %13 = getelementptr inbounds [3 x %struct._GSList*], [3 x %struct._GSList*]* %12, i64 0, i64 %10, !dbg !1461
  %14 = load %struct._GSList*, %struct._GSList** %13, align 8, !dbg !1461
  %15 = icmp ne %struct._GSList* %14, null, !dbg !1463
  br i1 %15, label %16, label %18, !dbg !1464

; <label>:16:                                     ; preds = %8
  %17 = load i32, i32* %4, align 4, !dbg !1465
  store i32 %17, i32* %2, align 4, !dbg !1466
  br label %23, !dbg !1466

; <label>:18:                                     ; preds = %8
  br label %19, !dbg !1467

; <label>:19:                                     ; preds = %18
  %20 = load i32, i32* %4, align 4, !dbg !1468
  %21 = add nsw i32 %20, 1, !dbg !1468
  store i32 %21, i32* %4, align 4, !dbg !1468
  br label %5, !dbg !1470, !llvm.loop !1471

; <label>:22:                                     ; preds = %5
  store i32 -1, i32* %2, align 4, !dbg !1473
  br label %23, !dbg !1473

; <label>:23:                                     ; preds = %22, %16
  %24 = load i32, i32* %2, align 4, !dbg !1474
  ret i32 %24, !dbg !1474
}

; Function Attrs: nounwind uwtable
define internal void @query_send(%struct._IRC_SERVER_REC*, i32) #0 !dbg !1475 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.SERVER_QUERY_REC*, align 8
  %6 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %7 = alloca %struct._GSList*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct._GSList*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1478, metadata !707), !dbg !1479
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1480, metadata !707), !dbg !1481
  call void @llvm.dbg.declare(metadata %struct.SERVER_QUERY_REC** %5, metadata !1482, metadata !707), !dbg !1483
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %6, metadata !1484, metadata !707), !dbg !1485
  call void @llvm.dbg.declare(metadata %struct._GSList** %7, metadata !1486, metadata !707), !dbg !1487
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1488, metadata !707), !dbg !1489
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1490, metadata !707), !dbg !1491
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1492, metadata !707), !dbg !1493
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1494, metadata !707), !dbg !1495
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1496, metadata !707), !dbg !1497
  %15 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1498
  %16 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %15, i32 0, i32 68, !dbg !1499
  %17 = load i8*, i8** %16, align 8, !dbg !1499
  %18 = bitcast i8* %17 to %struct.SERVER_QUERY_REC*, !dbg !1498
  store %struct.SERVER_QUERY_REC* %18, %struct.SERVER_QUERY_REC** %5, align 8, !dbg !1500
  %19 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1501
  %20 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %19, i32 0, i32 45, !dbg !1502
  %21 = load i16, i16* %20, align 4, !dbg !1502
  %22 = lshr i16 %21, 4, !dbg !1502
  %23 = and i16 %22, 1, !dbg !1502
  %24 = zext i16 %23 to i32, !dbg !1502
  %25 = icmp ne i32 %24, 0, !dbg !1501
  br i1 %25, label %26, label %29, !dbg !1503

; <label>:26:                                     ; preds = %2
  %27 = load i32, i32* %4, align 4, !dbg !1504
  %28 = icmp eq i32 %27, 1, !dbg !1506
  br i1 %28, label %42, label %29, !dbg !1507

; <label>:29:                                     ; preds = %26, %2
  %30 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1508
  %31 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %30, i32 0, i32 45, !dbg !1509
  %32 = load i16, i16* %31, align 4, !dbg !1509
  %33 = lshr i16 %32, 3, !dbg !1509
  %34 = and i16 %33, 1, !dbg !1509
  %35 = zext i16 %34 to i32, !dbg !1509
  %36 = icmp ne i32 %35, 0, !dbg !1508
  br i1 %36, label %37, label %40, !dbg !1510

; <label>:37:                                     ; preds = %29
  %38 = load i32, i32* %4, align 4, !dbg !1511
  %39 = icmp ne i32 %38, 1, !dbg !1512
  br label %40

; <label>:40:                                     ; preds = %37, %29
  %41 = phi i1 [ false, %29 ], [ %39, %37 ]
  br label %42, !dbg !1513

; <label>:42:                                     ; preds = %40, %26
  %43 = phi i1 [ true, %26 ], [ %41, %40 ]
  %44 = zext i1 %43 to i32, !dbg !1515
  store i32 %44, i32* %11, align 4, !dbg !1517
  %45 = load i32, i32* %11, align 4, !dbg !1518
  %46 = icmp ne i32 %45, 0, !dbg !1518
  br i1 %46, label %47, label %79, !dbg !1520

; <label>:47:                                     ; preds = %42
  %48 = load i32, i32* %4, align 4, !dbg !1521
  %49 = sext i32 %48 to i64, !dbg !1523
  %50 = load %struct.SERVER_QUERY_REC*, %struct.SERVER_QUERY_REC** %5, align 8, !dbg !1523
  %51 = getelementptr inbounds %struct.SERVER_QUERY_REC, %struct.SERVER_QUERY_REC* %50, i32 0, i32 2, !dbg !1524
  %52 = getelementptr inbounds [3 x %struct._GSList*], [3 x %struct._GSList*]* %51, i64 0, i64 %49, !dbg !1523
  %53 = load %struct._GSList*, %struct._GSList** %52, align 8, !dbg !1523
  store %struct._GSList* %53, %struct._GSList** %7, align 8, !dbg !1525
  %54 = load i32, i32* %4, align 4, !dbg !1526
  %55 = sext i32 %54 to i64, !dbg !1527
  %56 = load %struct.SERVER_QUERY_REC*, %struct.SERVER_QUERY_REC** %5, align 8, !dbg !1527
  %57 = getelementptr inbounds %struct.SERVER_QUERY_REC, %struct.SERVER_QUERY_REC* %56, i32 0, i32 2, !dbg !1528
  %58 = getelementptr inbounds [3 x %struct._GSList*], [3 x %struct._GSList*]* %57, i64 0, i64 %55, !dbg !1527
  %59 = load %struct._GSList*, %struct._GSList** %58, align 8, !dbg !1527
  %60 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1529
  %61 = call %struct._GSList* @g_slist_remove_link(%struct._GSList* %59, %struct._GSList* %60), !dbg !1530
  %62 = load i32, i32* %4, align 4, !dbg !1531
  %63 = sext i32 %62 to i64, !dbg !1532
  %64 = load %struct.SERVER_QUERY_REC*, %struct.SERVER_QUERY_REC** %5, align 8, !dbg !1532
  %65 = getelementptr inbounds %struct.SERVER_QUERY_REC, %struct.SERVER_QUERY_REC* %64, i32 0, i32 2, !dbg !1533
  %66 = getelementptr inbounds [3 x %struct._GSList*], [3 x %struct._GSList*]* %65, i64 0, i64 %63, !dbg !1532
  store %struct._GSList* %61, %struct._GSList** %66, align 8, !dbg !1534
  %67 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1535
  %68 = getelementptr inbounds %struct._GSList, %struct._GSList* %67, i32 0, i32 0, !dbg !1536
  %69 = load i8*, i8** %68, align 8, !dbg !1536
  %70 = bitcast i8* %69 to %struct._IRC_CHANNEL_REC*, !dbg !1535
  store %struct._IRC_CHANNEL_REC* %70, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !1537
  %71 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !1538
  %72 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %71, i32 0, i32 6, !dbg !1539
  %73 = load i8*, i8** %72, align 8, !dbg !1539
  %74 = call noalias i8* @g_strdup(i8* %73), !dbg !1540
  store i8* %74, i8** %9, align 8, !dbg !1541
  %75 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !1542
  %76 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %75, i32 0, i32 6, !dbg !1543
  %77 = load i8*, i8** %76, align 8, !dbg !1543
  %78 = call noalias i8* @g_strdup(i8* %77), !dbg !1544
  store i8* %78, i8** %10, align 8, !dbg !1545
  store i32 1, i32* %12, align 4, !dbg !1546
  br label %133, !dbg !1547

; <label>:79:                                     ; preds = %42
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1548, metadata !707), !dbg !1550
  %80 = load i32, i32* %4, align 4, !dbg !1551
  %81 = sext i32 %80 to i64, !dbg !1552
  %82 = load %struct.SERVER_QUERY_REC*, %struct.SERVER_QUERY_REC** %5, align 8, !dbg !1552
  %83 = getelementptr inbounds %struct.SERVER_QUERY_REC, %struct.SERVER_QUERY_REC* %82, i32 0, i32 2, !dbg !1553
  %84 = getelementptr inbounds [3 x %struct._GSList*], [3 x %struct._GSList*]* %83, i64 0, i64 %81, !dbg !1552
  %85 = load %struct._GSList*, %struct._GSList** %84, align 8, !dbg !1552
  store %struct._GSList* %85, %struct._GSList** %7, align 8, !dbg !1554
  %86 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1555
  %87 = call i32 @g_slist_length(%struct._GSList* %86), !dbg !1556
  store i32 %87, i32* %12, align 4, !dbg !1557
  %88 = load i32, i32* %12, align 4, !dbg !1558
  %89 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1560
  %90 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %89, i32 0, i32 61, !dbg !1561
  %91 = load i32, i32* %90, align 8, !dbg !1561
  %92 = icmp sgt i32 %88, %91, !dbg !1562
  br i1 %92, label %93, label %118, !dbg !1563

; <label>:93:                                     ; preds = %79
  call void @llvm.dbg.declare(metadata %struct._GSList** %14, metadata !1564, metadata !707), !dbg !1566
  %94 = load i32, i32* %4, align 4, !dbg !1567
  %95 = sext i32 %94 to i64, !dbg !1568
  %96 = load %struct.SERVER_QUERY_REC*, %struct.SERVER_QUERY_REC** %5, align 8, !dbg !1568
  %97 = getelementptr inbounds %struct.SERVER_QUERY_REC, %struct.SERVER_QUERY_REC* %96, i32 0, i32 2, !dbg !1569
  %98 = getelementptr inbounds [3 x %struct._GSList*], [3 x %struct._GSList*]* %97, i64 0, i64 %95, !dbg !1568
  %99 = load %struct._GSList*, %struct._GSList** %98, align 8, !dbg !1568
  %100 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1570
  %101 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %100, i32 0, i32 61, !dbg !1571
  %102 = load i32, i32* %101, align 8, !dbg !1571
  %103 = sub nsw i32 %102, 1, !dbg !1572
  %104 = call %struct._GSList* @g_slist_nth(%struct._GSList* %99, i32 %103), !dbg !1573
  store %struct._GSList* %104, %struct._GSList** %14, align 8, !dbg !1574
  %105 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1575
  %106 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %105, i32 0, i32 61, !dbg !1576
  %107 = load i32, i32* %106, align 8, !dbg !1576
  store i32 %107, i32* %12, align 4, !dbg !1577
  %108 = load %struct._GSList*, %struct._GSList** %14, align 8, !dbg !1578
  %109 = getelementptr inbounds %struct._GSList, %struct._GSList* %108, i32 0, i32 1, !dbg !1579
  %110 = load %struct._GSList*, %struct._GSList** %109, align 8, !dbg !1579
  %111 = load i32, i32* %4, align 4, !dbg !1580
  %112 = sext i32 %111 to i64, !dbg !1581
  %113 = load %struct.SERVER_QUERY_REC*, %struct.SERVER_QUERY_REC** %5, align 8, !dbg !1581
  %114 = getelementptr inbounds %struct.SERVER_QUERY_REC, %struct.SERVER_QUERY_REC* %113, i32 0, i32 2, !dbg !1582
  %115 = getelementptr inbounds [3 x %struct._GSList*], [3 x %struct._GSList*]* %114, i64 0, i64 %112, !dbg !1581
  store %struct._GSList* %110, %struct._GSList** %115, align 8, !dbg !1583
  %116 = load %struct._GSList*, %struct._GSList** %14, align 8, !dbg !1584
  %117 = getelementptr inbounds %struct._GSList, %struct._GSList* %116, i32 0, i32 1, !dbg !1585
  store %struct._GSList* null, %struct._GSList** %117, align 8, !dbg !1586
  br label %124, !dbg !1587

; <label>:118:                                    ; preds = %79
  %119 = load i32, i32* %4, align 4, !dbg !1588
  %120 = sext i32 %119 to i64, !dbg !1590
  %121 = load %struct.SERVER_QUERY_REC*, %struct.SERVER_QUERY_REC** %5, align 8, !dbg !1590
  %122 = getelementptr inbounds %struct.SERVER_QUERY_REC, %struct.SERVER_QUERY_REC* %121, i32 0, i32 2, !dbg !1591
  %123 = getelementptr inbounds [3 x %struct._GSList*], [3 x %struct._GSList*]* %122, i64 0, i64 %120, !dbg !1590
  store %struct._GSList* null, %struct._GSList** %123, align 8, !dbg !1592
  br label %124

; <label>:124:                                    ; preds = %118, %93
  %125 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1593
  %126 = call i8* @gslistptr_to_string(%struct._GSList* %125, i32 40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0)), !dbg !1594
  store i8* %126, i8** %9, align 8, !dbg !1595
  %127 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1596
  %128 = call i8* @gslistptr_to_string(%struct._GSList* %127, i32 40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0)), !dbg !1597
  store i8* %128, i8** %13, align 8, !dbg !1598
  %129 = load i8*, i8** %9, align 8, !dbg !1599
  %130 = load i8*, i8** %13, align 8, !dbg !1600
  %131 = call noalias i8* (i8*, ...) @g_strconcat(i8* %129, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), i8* %130, i8* null), !dbg !1601
  store i8* %131, i8** %10, align 8, !dbg !1602
  %132 = load i8*, i8** %13, align 8, !dbg !1603
  call void @g_free(i8* %132), !dbg !1604
  br label %133

; <label>:133:                                    ; preds = %124, %47
  %134 = load i32, i32* %4, align 4, !dbg !1605
  %135 = load %struct.SERVER_QUERY_REC*, %struct.SERVER_QUERY_REC** %5, align 8, !dbg !1606
  %136 = getelementptr inbounds %struct.SERVER_QUERY_REC, %struct.SERVER_QUERY_REC* %135, i32 0, i32 0, !dbg !1607
  store i32 %134, i32* %136, align 8, !dbg !1608
  %137 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1609
  %138 = load %struct.SERVER_QUERY_REC*, %struct.SERVER_QUERY_REC** %5, align 8, !dbg !1610
  %139 = getelementptr inbounds %struct.SERVER_QUERY_REC, %struct.SERVER_QUERY_REC* %138, i32 0, i32 1, !dbg !1611
  store %struct._GSList* %137, %struct._GSList** %139, align 8, !dbg !1612
  %140 = load i32, i32* %4, align 4, !dbg !1613
  switch i32 %140, label %170 [
    i32 0, label %141
    i32 1, label %147
    i32 2, label %164
  ], !dbg !1614

; <label>:141:                                    ; preds = %133
  %142 = load i8*, i8** %9, align 8, !dbg !1615
  %143 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i8* %142), !dbg !1617
  store i8* %143, i8** %8, align 8, !dbg !1618
  %144 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1619
  %145 = load i32, i32* %12, align 4, !dbg !1620
  %146 = load i8*, i8** %10, align 8, !dbg !1621
  call void (%struct._IRC_SERVER_REC*, i8*, i32, i8*, i32, i8*, ...) @server_redirect_event(%struct._IRC_SERVER_REC* %144, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), i32 %145, i8* %146, i32 -1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i8* null), !dbg !1622
  br label %171, !dbg !1623

; <label>:147:                                    ; preds = %133
  %148 = load i8*, i8** %9, align 8, !dbg !1624
  %149 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* %148), !dbg !1625
  store i8* %149, i8** %8, align 8, !dbg !1626
  %150 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1627
  %151 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1628
  %152 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %151, i32 0, i32 45, !dbg !1629
  %153 = load i16, i16* %152, align 4, !dbg !1629
  %154 = lshr i16 %153, 5, !dbg !1629
  %155 = and i16 %154, 1, !dbg !1629
  %156 = zext i16 %155 to i32, !dbg !1629
  %157 = icmp ne i32 %156, 0, !dbg !1628
  br i1 %157, label %158, label %159, !dbg !1628

; <label>:158:                                    ; preds = %147
  br label %161, !dbg !1630

; <label>:159:                                    ; preds = %147
  %160 = load i32, i32* %12, align 4, !dbg !1632
  br label %161, !dbg !1634

; <label>:161:                                    ; preds = %159, %158
  %162 = phi i32 [ 1, %158 ], [ %160, %159 ], !dbg !1635
  %163 = load i8*, i8** %10, align 8, !dbg !1637
  call void (%struct._IRC_SERVER_REC*, i8*, i32, i8*, i32, i8*, ...) @server_redirect_event(%struct._IRC_SERVER_REC* %150, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i32 %162, i8* %163, i32 -1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i8* null), !dbg !1638
  br label %171, !dbg !1639

; <label>:164:                                    ; preds = %133
  %165 = load i8*, i8** %9, align 8, !dbg !1640
  %166 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* %165), !dbg !1641
  store i8* %166, i8** %8, align 8, !dbg !1642
  %167 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1643
  %168 = load i32, i32* %12, align 4, !dbg !1644
  %169 = load i8*, i8** %10, align 8, !dbg !1645
  call void (%struct._IRC_SERVER_REC*, i8*, i32, i8*, i32, i8*, ...) @server_redirect_event(%struct._IRC_SERVER_REC* %167, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i32 %168, i8* %169, i32 -1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i8* null), !dbg !1646
  br label %171, !dbg !1647

; <label>:170:                                    ; preds = %133
  store i8* null, i8** %8, align 8, !dbg !1648
  br label %171, !dbg !1649

; <label>:171:                                    ; preds = %170, %164, %161, %141
  %172 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1650
  %173 = load i8*, i8** %8, align 8, !dbg !1651
  call void @irc_send_cmd(%struct._IRC_SERVER_REC* %172, i8* %173), !dbg !1652
  %174 = load i8*, i8** %10, align 8, !dbg !1653
  call void @g_free(i8* %174), !dbg !1654
  %175 = load i8*, i8** %9, align 8, !dbg !1655
  call void @g_free(i8* %175), !dbg !1656
  %176 = load i8*, i8** %8, align 8, !dbg !1657
  call void @g_free(i8* %176), !dbg !1658
  ret void, !dbg !1659
}

declare %struct._GSList* @g_slist_remove_link(%struct._GSList*, %struct._GSList*) #1

declare noalias i8* @g_strdup(i8*) #1

declare i32 @g_slist_length(%struct._GSList*) #1

declare %struct._GSList* @g_slist_nth(%struct._GSList*, i32) #1

declare i8* @gslistptr_to_string(%struct._GSList*, i32, i8*) #1

declare noalias i8* @g_strconcat(i8*, ...) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare void @server_redirect_event(%struct._IRC_SERVER_REC*, i8*, i32, i8*, i32, i8*, ...) #1

declare void @irc_send_cmd(%struct._IRC_SERVER_REC*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @query_remove_all(%struct._IRC_CHANNEL_REC*) #0 !dbg !1660 {
  %2 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %3 = alloca %struct.SERVER_QUERY_REC*, align 8
  %4 = alloca i32, align 4
  store %struct._IRC_CHANNEL_REC* %0, %struct._IRC_CHANNEL_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %2, metadata !1661, metadata !707), !dbg !1662
  call void @llvm.dbg.declare(metadata %struct.SERVER_QUERY_REC** %3, metadata !1663, metadata !707), !dbg !1664
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1665, metadata !707), !dbg !1666
  %5 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %2, align 8, !dbg !1667
  %6 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %5, i32 0, i32 4, !dbg !1668
  %7 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1668
  %8 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %7, i32 0, i32 68, !dbg !1669
  %9 = load i8*, i8** %8, align 8, !dbg !1669
  %10 = bitcast i8* %9 to %struct.SERVER_QUERY_REC*, !dbg !1667
  store %struct.SERVER_QUERY_REC* %10, %struct.SERVER_QUERY_REC** %3, align 8, !dbg !1670
  %11 = load %struct.SERVER_QUERY_REC*, %struct.SERVER_QUERY_REC** %3, align 8, !dbg !1671
  %12 = icmp eq %struct.SERVER_QUERY_REC* %11, null, !dbg !1673
  br i1 %12, label %13, label %14, !dbg !1674

; <label>:13:                                     ; preds = %1
  br label %58, !dbg !1675

; <label>:14:                                     ; preds = %1
  store i32 0, i32* %4, align 4, !dbg !1677
  br label %15, !dbg !1679

; <label>:15:                                     ; preds = %33, %14
  %16 = load i32, i32* %4, align 4, !dbg !1680
  %17 = icmp slt i32 %16, 3, !dbg !1683
  br i1 %17, label %18, label %36, !dbg !1684

; <label>:18:                                     ; preds = %15
  %19 = load i32, i32* %4, align 4, !dbg !1685
  %20 = sext i32 %19 to i64, !dbg !1686
  %21 = load %struct.SERVER_QUERY_REC*, %struct.SERVER_QUERY_REC** %3, align 8, !dbg !1686
  %22 = getelementptr inbounds %struct.SERVER_QUERY_REC, %struct.SERVER_QUERY_REC* %21, i32 0, i32 2, !dbg !1687
  %23 = getelementptr inbounds [3 x %struct._GSList*], [3 x %struct._GSList*]* %22, i64 0, i64 %20, !dbg !1686
  %24 = load %struct._GSList*, %struct._GSList** %23, align 8, !dbg !1686
  %25 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %2, align 8, !dbg !1688
  %26 = bitcast %struct._IRC_CHANNEL_REC* %25 to i8*, !dbg !1688
  %27 = call %struct._GSList* @g_slist_remove(%struct._GSList* %24, i8* %26), !dbg !1689
  %28 = load i32, i32* %4, align 4, !dbg !1690
  %29 = sext i32 %28 to i64, !dbg !1691
  %30 = load %struct.SERVER_QUERY_REC*, %struct.SERVER_QUERY_REC** %3, align 8, !dbg !1691
  %31 = getelementptr inbounds %struct.SERVER_QUERY_REC, %struct.SERVER_QUERY_REC* %30, i32 0, i32 2, !dbg !1692
  %32 = getelementptr inbounds [3 x %struct._GSList*], [3 x %struct._GSList*]* %31, i64 0, i64 %29, !dbg !1691
  store %struct._GSList* %27, %struct._GSList** %32, align 8, !dbg !1693
  br label %33, !dbg !1691

; <label>:33:                                     ; preds = %18
  %34 = load i32, i32* %4, align 4, !dbg !1694
  %35 = add nsw i32 %34, 1, !dbg !1694
  store i32 %35, i32* %4, align 4, !dbg !1694
  br label %15, !dbg !1696, !llvm.loop !1697

; <label>:36:                                     ; preds = %15
  %37 = load %struct.SERVER_QUERY_REC*, %struct.SERVER_QUERY_REC** %3, align 8, !dbg !1699
  %38 = getelementptr inbounds %struct.SERVER_QUERY_REC, %struct.SERVER_QUERY_REC* %37, i32 0, i32 1, !dbg !1700
  %39 = load %struct._GSList*, %struct._GSList** %38, align 8, !dbg !1700
  %40 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %2, align 8, !dbg !1701
  %41 = bitcast %struct._IRC_CHANNEL_REC* %40 to i8*, !dbg !1701
  %42 = call %struct._GSList* @g_slist_remove(%struct._GSList* %39, i8* %41), !dbg !1702
  %43 = load %struct.SERVER_QUERY_REC*, %struct.SERVER_QUERY_REC** %3, align 8, !dbg !1703
  %44 = getelementptr inbounds %struct.SERVER_QUERY_REC, %struct.SERVER_QUERY_REC* %43, i32 0, i32 1, !dbg !1704
  store %struct._GSList* %42, %struct._GSList** %44, align 8, !dbg !1705
  %45 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %2, align 8, !dbg !1706
  %46 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %45, i32 0, i32 4, !dbg !1708
  %47 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %46, align 8, !dbg !1708
  %48 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %47, i32 0, i32 8, !dbg !1709
  %49 = load i8, i8* %48, align 8, !dbg !1709
  %50 = lshr i8 %49, 1, !dbg !1709
  %51 = and i8 %50, 1, !dbg !1709
  %52 = zext i8 %51 to i32, !dbg !1709
  %53 = icmp ne i32 %52, 0, !dbg !1706
  br i1 %53, label %58, label %54, !dbg !1710

; <label>:54:                                     ; preds = %36
  %55 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %2, align 8, !dbg !1711
  %56 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %55, i32 0, i32 4, !dbg !1712
  %57 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %56, align 8, !dbg !1712
  call void @query_check(%struct._IRC_SERVER_REC* %57), !dbg !1713
  br label %58, !dbg !1713

; <label>:58:                                     ; preds = %13, %54, %36
  ret void, !dbg !1714
}

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #1

declare i8* @event_get_params(i8*, i32, ...) #1

declare %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC*, i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

declare void @parse_channel_modes(%struct._IRC_CHANNEL_REC*, i8*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @channel_got_query(%struct._IRC_CHANNEL_REC*, i32) #0 !dbg !1715 {
  %3 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.SERVER_QUERY_REC*, align 8
  store %struct._IRC_CHANNEL_REC* %0, %struct._IRC_CHANNEL_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %3, metadata !1716, metadata !707), !dbg !1717
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1718, metadata !707), !dbg !1719
  call void @llvm.dbg.declare(metadata %struct.SERVER_QUERY_REC** %5, metadata !1720, metadata !707), !dbg !1721
  br label %6, !dbg !1722, !llvm.loop !1723

; <label>:6:                                      ; preds = %2
  %7 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %3, align 8, !dbg !1724
  %8 = icmp ne %struct._IRC_CHANNEL_REC* %7, null, !dbg !1728
  br i1 %8, label %9, label %10, !dbg !1724

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !1729

; <label>:10:                                     ; preds = %6
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.channel_got_query, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i32 0, i32 0)), !dbg !1732
  br label %38, !dbg !1735

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !1736

; <label>:12:                                     ; preds = %11
  %13 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %3, align 8, !dbg !1738
  %14 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %13, i32 0, i32 4, !dbg !1739
  %15 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %14, align 8, !dbg !1739
  %16 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %15, i32 0, i32 68, !dbg !1740
  %17 = load i8*, i8** %16, align 8, !dbg !1740
  %18 = bitcast i8* %17 to %struct.SERVER_QUERY_REC*, !dbg !1738
  store %struct.SERVER_QUERY_REC* %18, %struct.SERVER_QUERY_REC** %5, align 8, !dbg !1741
  %19 = load i32, i32* %4, align 4, !dbg !1742
  %20 = load %struct.SERVER_QUERY_REC*, %struct.SERVER_QUERY_REC** %5, align 8, !dbg !1744
  %21 = getelementptr inbounds %struct.SERVER_QUERY_REC, %struct.SERVER_QUERY_REC* %20, i32 0, i32 0, !dbg !1745
  %22 = load i32, i32* %21, align 8, !dbg !1745
  %23 = icmp ne i32 %19, %22, !dbg !1746
  br i1 %23, label %24, label %25, !dbg !1747

; <label>:24:                                     ; preds = %12
  br label %38, !dbg !1748

; <label>:25:                                     ; preds = %12
  %26 = load %struct.SERVER_QUERY_REC*, %struct.SERVER_QUERY_REC** %5, align 8, !dbg !1749
  %27 = getelementptr inbounds %struct.SERVER_QUERY_REC, %struct.SERVER_QUERY_REC* %26, i32 0, i32 1, !dbg !1750
  %28 = load %struct._GSList*, %struct._GSList** %27, align 8, !dbg !1750
  %29 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %3, align 8, !dbg !1751
  %30 = bitcast %struct._IRC_CHANNEL_REC* %29 to i8*, !dbg !1751
  %31 = call %struct._GSList* @g_slist_remove(%struct._GSList* %28, i8* %30), !dbg !1752
  %32 = load %struct.SERVER_QUERY_REC*, %struct.SERVER_QUERY_REC** %5, align 8, !dbg !1753
  %33 = getelementptr inbounds %struct.SERVER_QUERY_REC, %struct.SERVER_QUERY_REC* %32, i32 0, i32 1, !dbg !1754
  store %struct._GSList* %31, %struct._GSList** %33, align 8, !dbg !1755
  %34 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %3, align 8, !dbg !1756
  call void @channel_checksync(%struct._IRC_CHANNEL_REC* %34), !dbg !1757
  %35 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %3, align 8, !dbg !1758
  %36 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %35, i32 0, i32 4, !dbg !1759
  %37 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %36, align 8, !dbg !1759
  call void @query_check(%struct._IRC_SERVER_REC* %37), !dbg !1760
  br label %38, !dbg !1761

; <label>:38:                                     ; preds = %25, %24, %10
  ret void, !dbg !1762
}

; Function Attrs: nounwind uwtable
define internal void @channel_checksync(%struct._IRC_CHANNEL_REC*) #0 !dbg !1764 {
  %2 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %3 = alloca %struct.SERVER_QUERY_REC*, align 8
  %4 = alloca i32, align 4
  store %struct._IRC_CHANNEL_REC* %0, %struct._IRC_CHANNEL_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %2, metadata !1765, metadata !707), !dbg !1766
  call void @llvm.dbg.declare(metadata %struct.SERVER_QUERY_REC** %3, metadata !1767, metadata !707), !dbg !1768
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1769, metadata !707), !dbg !1770
  br label %5, !dbg !1771, !llvm.loop !1772

; <label>:5:                                      ; preds = %1
  %6 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %2, align 8, !dbg !1773
  %7 = icmp ne %struct._IRC_CHANNEL_REC* %6, null, !dbg !1777
  br i1 %7, label %8, label %9, !dbg !1773

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !1778

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.channel_checksync, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0)), !dbg !1781
  br label %54, !dbg !1784

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !1785

; <label>:11:                                     ; preds = %10
  %12 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %2, align 8, !dbg !1787
  %13 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %12, i32 0, i32 21, !dbg !1789
  %14 = load i16, i16* %13, align 8, !dbg !1789
  %15 = lshr i16 %14, 3, !dbg !1789
  %16 = and i16 %15, 1, !dbg !1789
  %17 = zext i16 %16 to i32, !dbg !1789
  %18 = icmp ne i32 %17, 0, !dbg !1787
  br i1 %18, label %19, label %20, !dbg !1790

; <label>:19:                                     ; preds = %11
  br label %54, !dbg !1791

; <label>:20:                                     ; preds = %11
  %21 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %2, align 8, !dbg !1792
  %22 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %21, i32 0, i32 4, !dbg !1793
  %23 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %22, align 8, !dbg !1793
  %24 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %23, i32 0, i32 68, !dbg !1794
  %25 = load i8*, i8** %24, align 8, !dbg !1794
  %26 = bitcast i8* %25 to %struct.SERVER_QUERY_REC*, !dbg !1792
  store %struct.SERVER_QUERY_REC* %26, %struct.SERVER_QUERY_REC** %3, align 8, !dbg !1795
  store i32 0, i32* %4, align 4, !dbg !1796
  br label %27, !dbg !1798

; <label>:27:                                     ; preds = %43, %20
  %28 = load i32, i32* %4, align 4, !dbg !1799
  %29 = icmp slt i32 %28, 3, !dbg !1802
  br i1 %29, label %30, label %46, !dbg !1803

; <label>:30:                                     ; preds = %27
  %31 = load i32, i32* %4, align 4, !dbg !1804
  %32 = sext i32 %31 to i64, !dbg !1807
  %33 = load %struct.SERVER_QUERY_REC*, %struct.SERVER_QUERY_REC** %3, align 8, !dbg !1807
  %34 = getelementptr inbounds %struct.SERVER_QUERY_REC, %struct.SERVER_QUERY_REC* %33, i32 0, i32 2, !dbg !1808
  %35 = getelementptr inbounds [3 x %struct._GSList*], [3 x %struct._GSList*]* %34, i64 0, i64 %32, !dbg !1807
  %36 = load %struct._GSList*, %struct._GSList** %35, align 8, !dbg !1807
  %37 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %2, align 8, !dbg !1809
  %38 = bitcast %struct._IRC_CHANNEL_REC* %37 to i8*, !dbg !1809
  %39 = call %struct._GSList* @g_slist_find(%struct._GSList* %36, i8* %38), !dbg !1810
  %40 = icmp ne %struct._GSList* %39, null, !dbg !1810
  br i1 %40, label %41, label %42, !dbg !1811

; <label>:41:                                     ; preds = %30
  br label %54, !dbg !1812

; <label>:42:                                     ; preds = %30
  br label %43, !dbg !1813

; <label>:43:                                     ; preds = %42
  %44 = load i32, i32* %4, align 4, !dbg !1814
  %45 = add nsw i32 %44, 1, !dbg !1814
  store i32 %45, i32* %4, align 4, !dbg !1814
  br label %27, !dbg !1816, !llvm.loop !1817

; <label>:46:                                     ; preds = %27
  %47 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %2, align 8, !dbg !1819
  %48 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %47, i32 0, i32 21, !dbg !1820
  %49 = load i16, i16* %48, align 8, !dbg !1821
  %50 = and i16 %49, -9, !dbg !1821
  %51 = or i16 %50, 8, !dbg !1821
  store i16 %51, i16* %48, align 8, !dbg !1821
  %52 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %2, align 8, !dbg !1822
  %53 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i32 0, i32 0), i32 1, %struct._IRC_CHANNEL_REC* %52), !dbg !1823
  br label %54, !dbg !1824

; <label>:54:                                     ; preds = %46, %41, %19, %9
  ret void, !dbg !1825
}

declare %struct._GSList* @g_slist_find(%struct._GSList*, i8*) #1

declare i32 @signal_emit(i8*, i32, ...) #1

declare noalias i8** @g_strsplit(i8*, i8*, i32) #1

declare i32 @strarray_find(i8**, i8*) #1

declare void @g_strfreev(i8**) #1

declare void @g_slist_foreach(%struct._GSList*, void (i8*, i8*)*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!687, !688}
!llvm.ident = !{!689}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !42)
!1 = !DIFile(filename: "line109-channels-query.o.i", directory: "/home/lichi/Desktop/irssi/task1")
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
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 53, size: 32, align: 32, elements: !37)
!36 = !DIFile(filename: "channels-query.c", directory: "/home/lichi/Desktop/irssi/task1")
!37 = !{!38, !39, !40, !41}
!38 = !DIEnumerator(name: "CHANNEL_QUERY_MODE", value: 0)
!39 = !DIEnumerator(name: "CHANNEL_QUERY_WHO", value: 1)
!40 = !DIEnumerator(name: "CHANNEL_QUERY_BMODE", value: 2)
!41 = !DIEnumerator(name: "CHANNEL_QUERIES", value: 3)
!42 = !{!43, !50, !51, !55, !57, !366, !673, !627, !471, !356, !683}
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !44, line: 9, baseType: !45)
!44 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DISubroutineType(types: !47)
!47 = !{null, !48, !48, !48, !48, !48, !48}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !53, line: 46, baseType: !54)
!53 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!54 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_REC", file: !59, line: 6, baseType: !60)
!59 = !DIFile(filename: "irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_REC", file: !61, line: 42, size: 39168, align: 64, elements: !62)
!61 = !DIFile(filename: "irc-servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!62 = !{!63, !66, !67, !68, !311, !316, !317, !318, !319, !320, !321, !322, !323, !324, !328, !329, !333, !334, !335, !339, !344, !345, !346, !347, !348, !349, !350, !351, !358, !359, !360, !361, !362, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !670, !672}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !60, file: !64, line: 3, baseType: !65, size: 32, align: 32)
!64 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!65 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !60, file: !64, line: 4, baseType: !65, size: 32, align: 32, offset: 32)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !60, file: !64, line: 6, baseType: !65, size: 32, align: 32, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !60, file: !64, line: 8, baseType: !69, size: 64, align: 64, offset: 128)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_CONNECT_REC", file: !59, line: 5, baseType: !71)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_CONNECT_REC", file: !61, line: 24, size: 2496, align: 64, elements: !72)
!72 = !{!73, !75, !76, !77, !79, !80, !81, !82, !83, !85, !86, !87, !88, !89, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !71, file: !74, line: 3, baseType: !65, size: 32, align: 32)
!74 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!75 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !71, file: !74, line: 4, baseType: !65, size: 32, align: 32, offset: 32)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !71, file: !74, line: 6, baseType: !65, size: 32, align: 32, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !71, file: !74, line: 9, baseType: !78, size: 64, align: 64, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !71, file: !74, line: 10, baseType: !65, size: 32, align: 32, offset: 192)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !71, file: !74, line: 11, baseType: !78, size: 64, align: 64, offset: 256)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !71, file: !74, line: 11, baseType: !78, size: 64, align: 64, offset: 320)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !71, file: !74, line: 11, baseType: !78, size: 64, align: 64, offset: 384)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !71, file: !74, line: 13, baseType: !84, size: 16, align: 16, offset: 448)
!84 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !71, file: !74, line: 14, baseType: !78, size: 64, align: 64, offset: 512)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !71, file: !74, line: 15, baseType: !78, size: 64, align: 64, offset: 576)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !71, file: !74, line: 16, baseType: !65, size: 32, align: 32, offset: 640)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !71, file: !74, line: 17, baseType: !78, size: 64, align: 64, offset: 704)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !71, file: !74, line: 19, baseType: !90, size: 64, align: 64, offset: 768)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !92, line: 99, baseType: !93)
!92 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!93 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !92, line: 99, flags: DIFlagFwdDecl)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !71, file: !74, line: 19, baseType: !90, size: 64, align: 64, offset: 832)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !71, file: !74, line: 21, baseType: !78, size: 64, align: 64, offset: 896)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !71, file: !74, line: 22, baseType: !78, size: 64, align: 64, offset: 960)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !71, file: !74, line: 23, baseType: !78, size: 64, align: 64, offset: 1024)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !71, file: !74, line: 24, baseType: !78, size: 64, align: 64, offset: 1088)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !71, file: !74, line: 26, baseType: !78, size: 64, align: 64, offset: 1152)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !71, file: !74, line: 27, baseType: !78, size: 64, align: 64, offset: 1216)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !71, file: !74, line: 28, baseType: !78, size: 64, align: 64, offset: 1280)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !71, file: !74, line: 29, baseType: !78, size: 64, align: 64, offset: 1344)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !71, file: !74, line: 30, baseType: !78, size: 64, align: 64, offset: 1408)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !71, file: !74, line: 31, baseType: !78, size: 64, align: 64, offset: 1472)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !71, file: !74, line: 32, baseType: !78, size: 64, align: 64, offset: 1536)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !71, file: !74, line: 33, baseType: !78, size: 64, align: 64, offset: 1600)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !71, file: !74, line: 35, baseType: !108, size: 64, align: 64, offset: 1664)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64, align: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !110)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !111)
!111 = !{!112, !114, !256, !257, !262, !263, !264, !265, !266, !275, !276, !277, !281, !282, !283, !284, !285, !286, !287, !288}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !110, file: !4, line: 100, baseType: !113, size: 32, align: 32)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !53, line: 49, baseType: !65)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !110, file: !4, line: 101, baseType: !115, size: 64, align: 64, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !117)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !118)
!118 = !{!119, !141, !147, !154, !158, !243, !247, !252}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !117, file: !4, line: 133, baseType: !120, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, align: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{!123, !108, !51, !124, !127, !128}
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !125, line: 66, baseType: !126)
!125 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!126 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64, align: 64)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !131, line: 42, baseType: !132)
!131 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !131, line: 44, size: 128, align: 64, elements: !133)
!133 = !{!134, !139, !140}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !132, file: !131, line: 46, baseType: !135, size: 32, align: 32)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !136, line: 36, baseType: !137)
!136 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !125, line: 45, baseType: !138)
!138 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !132, file: !131, line: 47, baseType: !113, size: 32, align: 32, offset: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !132, file: !131, line: 48, baseType: !51, size: 64, align: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !117, file: !4, line: 138, baseType: !142, size: 64, align: 64, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64, align: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{!123, !108, !145, !124, !127, !128}
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64, align: 64)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !117, file: !4, line: 143, baseType: !148, size: 64, align: 64, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64, align: 64)
!149 = !DISubroutineType(types: !150)
!150 = !{!123, !108, !151, !153, !128}
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !125, line: 51, baseType: !152)
!152 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !117, file: !4, line: 147, baseType: !155, size: 64, align: 64, offset: 192)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64, align: 64)
!156 = !DISubroutineType(types: !157)
!157 = !{!123, !108, !128}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !117, file: !4, line: 149, baseType: !159, size: 64, align: 64, offset: 256)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64, align: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{!162, !108, !242}
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64, align: 64)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !164)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !165)
!165 = !{!166, !168, !189, !218, !220, !224, !225, !226, !227, !235, !236, !237, !238}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !164, file: !16, line: 174, baseType: !167, size: 64, align: 64)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !53, line: 77, baseType: !50)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !164, file: !16, line: 175, baseType: !169, size: 64, align: 64, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64, align: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !171)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !172)
!172 = !{!173, !177, !178}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !171, file: !16, line: 198, baseType: !174, size: 64, align: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64, align: 64)
!175 = !DISubroutineType(types: !176)
!176 = !{null, !167}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !171, file: !16, line: 199, baseType: !174, size: 64, align: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !171, file: !16, line: 200, baseType: !179, size: 64, align: 64, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64, align: 64)
!180 = !DISubroutineType(types: !181)
!181 = !{null, !167, !162, !182, !188}
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64, align: 64)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !184)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64, align: 64)
!185 = !DISubroutineType(types: !186)
!186 = !{!187, !167}
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !53, line: 50, baseType: !113)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64, align: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !164, file: !16, line: 177, baseType: !190, size: 64, align: 64, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !193)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !194)
!194 = !{!195, !200, !204, !208, !212, !213}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !193, file: !16, line: 216, baseType: !196, size: 64, align: 64)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!187, !162, !199}
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64, align: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !193, file: !16, line: 218, baseType: !201, size: 64, align: 64, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64, align: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{!187, !162}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !193, file: !16, line: 219, baseType: !205, size: 64, align: 64, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64, align: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{!187, !162, !183, !167}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !193, file: !16, line: 222, baseType: !209, size: 64, align: 64, offset: 192)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64, align: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{null, !162}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !193, file: !16, line: 226, baseType: !183, size: 64, align: 64, offset: 256)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !193, file: !16, line: 227, baseType: !214, size: 64, align: 64, offset: 320)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{null}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !164, file: !16, line: 178, baseType: !219, size: 32, align: 32, offset: 192)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !53, line: 55, baseType: !138)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !164, file: !16, line: 180, baseType: !221, size: 64, align: 64, offset: 256)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !223)
!223 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !164, file: !16, line: 182, baseType: !113, size: 32, align: 32, offset: 320)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !164, file: !16, line: 183, baseType: !219, size: 32, align: 32, offset: 352)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !164, file: !16, line: 184, baseType: !219, size: 32, align: 32, offset: 384)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !164, file: !16, line: 186, baseType: !228, size: 64, align: 64, offset: 448)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64, align: 64)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !230, line: 37, baseType: !231)
!230 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !230, line: 39, size: 128, align: 64, elements: !232)
!232 = !{!233, !234}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !231, file: !230, line: 41, baseType: !167, size: 64, align: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !231, file: !230, line: 42, baseType: !228, size: 64, align: 64, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !164, file: !16, line: 188, baseType: !162, size: 64, align: 64, offset: 512)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !164, file: !16, line: 189, baseType: !162, size: 64, align: 64, offset: 576)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !164, file: !16, line: 191, baseType: !78, size: 64, align: 64, offset: 640)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !164, file: !16, line: 193, baseType: !239, size: 64, align: 64, offset: 704)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64, align: 64)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !241)
!241 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !117, file: !4, line: 151, baseType: !244, size: 64, align: 64, offset: 320)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64, align: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{null, !108}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !117, file: !4, line: 152, baseType: !248, size: 64, align: 64, offset: 384)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64, align: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{!123, !108, !251, !128}
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !117, file: !4, line: 155, baseType: !253, size: 64, align: 64, offset: 448)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{!251, !108}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !110, file: !4, line: 103, baseType: !51, size: 64, align: 64, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !110, file: !4, line: 104, baseType: !258, size: 64, align: 64, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !259, line: 77, baseType: !260)
!259 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !259, line: 77, flags: DIFlagFwdDecl)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !110, file: !4, line: 105, baseType: !258, size: 64, align: 64, offset: 256)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !110, file: !4, line: 106, baseType: !51, size: 64, align: 64, offset: 320)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !110, file: !4, line: 107, baseType: !219, size: 32, align: 32, offset: 384)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !110, file: !4, line: 109, baseType: !124, size: 64, align: 64, offset: 448)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !110, file: !4, line: 110, baseType: !267, size: 64, align: 64, offset: 512)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64, align: 64)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !269, line: 39, baseType: !270)
!269 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !269, line: 41, size: 192, align: 64, elements: !271)
!271 = !{!272, !273, !274}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !270, file: !269, line: 43, baseType: !51, size: 64, align: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !270, file: !269, line: 44, baseType: !124, size: 64, align: 64, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !270, file: !269, line: 45, baseType: !124, size: 64, align: 64, offset: 128)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !110, file: !4, line: 111, baseType: !267, size: 64, align: 64, offset: 576)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !110, file: !4, line: 112, baseType: !267, size: 64, align: 64, offset: 640)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !110, file: !4, line: 113, baseType: !278, size: 48, align: 8, offset: 704)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 48, align: 8, elements: !279)
!279 = !{!280}
!280 = !DISubrange(count: 6)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !110, file: !4, line: 117, baseType: !219, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !110, file: !4, line: 118, baseType: !219, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !110, file: !4, line: 119, baseType: !219, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !110, file: !4, line: 120, baseType: !219, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !110, file: !4, line: 121, baseType: !219, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !110, file: !4, line: 122, baseType: !219, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !110, file: !4, line: 124, baseType: !167, size: 64, align: 64, offset: 768)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !110, file: !4, line: 125, baseType: !167, size: 64, align: 64, offset: 832)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !71, file: !74, line: 38, baseType: !138, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !71, file: !74, line: 39, baseType: !138, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !71, file: !74, line: 40, baseType: !138, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !71, file: !74, line: 41, baseType: !138, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !71, file: !74, line: 42, baseType: !138, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !71, file: !74, line: 43, baseType: !138, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !71, file: !74, line: 44, baseType: !138, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !71, file: !74, line: 45, baseType: !138, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !71, file: !74, line: 46, baseType: !78, size: 64, align: 64, offset: 1792)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !71, file: !74, line: 47, baseType: !78, size: 64, align: 64, offset: 1856)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !71, file: !61, line: 27, baseType: !78, size: 64, align: 64, offset: 1920)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_nick", scope: !71, file: !61, line: 28, baseType: !78, size: 64, align: 64, offset: 1984)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !71, file: !61, line: 30, baseType: !65, size: 32, align: 32, offset: 2048)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_username", scope: !71, file: !61, line: 31, baseType: !78, size: 64, align: 64, offset: 2112)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !71, file: !61, line: 32, baseType: !78, size: 64, align: 64, offset: 2176)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !71, file: !61, line: 34, baseType: !65, size: 32, align: 32, offset: 2240)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !71, file: !61, line: 35, baseType: !65, size: 32, align: 32, offset: 2272)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !71, file: !61, line: 36, baseType: !65, size: 32, align: 32, offset: 2304)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks", scope: !71, file: !61, line: 38, baseType: !65, size: 32, align: 32, offset: 2336)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !71, file: !61, line: 38, baseType: !65, size: 32, align: 32, offset: 2368)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes", scope: !71, file: !61, line: 38, baseType: !65, size: 32, align: 32, offset: 2400)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois", scope: !71, file: !61, line: 38, baseType: !65, size: 32, align: 32, offset: 2432)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !60, file: !64, line: 9, baseType: !312, size: 64, align: 64, offset: 192)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !313, line: 75, baseType: !314)
!313 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !315, line: 139, baseType: !152)
!315 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!316 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !60, file: !64, line: 10, baseType: !312, size: 64, align: 64, offset: 256)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !60, file: !64, line: 12, baseType: !78, size: 64, align: 64, offset: 320)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !60, file: !64, line: 13, baseType: !78, size: 64, align: 64, offset: 384)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !60, file: !64, line: 15, baseType: !138, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !60, file: !64, line: 16, baseType: !138, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !60, file: !64, line: 17, baseType: !138, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !60, file: !64, line: 18, baseType: !138, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !60, file: !64, line: 19, baseType: !138, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !60, file: !64, line: 21, baseType: !325, size: 64, align: 64, offset: 512)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64, align: 64)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !92, line: 102, baseType: !327)
!327 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !92, line: 102, flags: DIFlagFwdDecl)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !60, file: !64, line: 22, baseType: !65, size: 32, align: 32, offset: 576)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !60, file: !64, line: 25, baseType: !330, size: 128, align: 64, offset: 640)
!330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 128, align: 64, elements: !331)
!331 = !{!332}
!332 = !DISubrange(count: 2)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !60, file: !64, line: 26, baseType: !65, size: 32, align: 32, offset: 768)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !60, file: !64, line: 27, baseType: !65, size: 32, align: 32, offset: 800)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !60, file: !64, line: 29, baseType: !336, size: 64, align: 64, offset: 832)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64, align: 64)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !92, line: 103, baseType: !338)
!338 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !92, line: 103, flags: DIFlagFwdDecl)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !60, file: !64, line: 30, baseType: !340, size: 64, align: 64, offset: 896)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64, align: 64)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !342, line: 37, baseType: !343)
!342 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!343 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !342, line: 37, flags: DIFlagFwdDecl)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !60, file: !64, line: 32, baseType: !78, size: 64, align: 64, offset: 960)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !60, file: !64, line: 33, baseType: !78, size: 64, align: 64, offset: 1024)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !60, file: !64, line: 34, baseType: !78, size: 64, align: 64, offset: 1088)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !60, file: !64, line: 35, baseType: !138, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !60, file: !64, line: 36, baseType: !138, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !60, file: !64, line: 37, baseType: !138, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !60, file: !64, line: 38, baseType: !138, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !60, file: !64, line: 40, baseType: !352, size: 128, align: 64, offset: 1216)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !53, line: 504, baseType: !353)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !53, line: 506, size: 128, align: 64, elements: !354)
!354 = !{!355, !357}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !353, file: !53, line: 508, baseType: !356, size: 64, align: 64)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !53, line: 48, baseType: !152)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !353, file: !53, line: 509, baseType: !356, size: 64, align: 64, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !60, file: !64, line: 41, baseType: !312, size: 64, align: 64, offset: 1344)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !60, file: !64, line: 42, baseType: !65, size: 32, align: 32, offset: 1408)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !60, file: !64, line: 44, baseType: !228, size: 64, align: 64, offset: 1472)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !60, file: !64, line: 45, baseType: !228, size: 64, align: 64, offset: 1536)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !60, file: !64, line: 53, baseType: !363, size: 64, align: 64, offset: 1600)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64, align: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{null, !366, !55, !65}
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64, align: 64)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !92, line: 107, baseType: !368)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !369, line: 30, size: 2240, align: 64, elements: !370)
!369 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!370 = !{!371, !372, !373, !374, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !450, !454, !458, !462, !467, !546, !553, !557}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !368, file: !64, line: 3, baseType: !65, size: 32, align: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !368, file: !64, line: 4, baseType: !65, size: 32, align: 32, offset: 32)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !368, file: !64, line: 6, baseType: !65, size: 32, align: 32, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !368, file: !64, line: 8, baseType: !375, size: 64, align: 64, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64, align: 64)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !92, line: 113, baseType: !377)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !369, line: 25, size: 1920, align: 64, elements: !378)
!378 = !{!379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !377, file: !74, line: 3, baseType: !65, size: 32, align: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !377, file: !74, line: 4, baseType: !65, size: 32, align: 32, offset: 32)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !377, file: !74, line: 6, baseType: !65, size: 32, align: 32, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !377, file: !74, line: 9, baseType: !78, size: 64, align: 64, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !377, file: !74, line: 10, baseType: !65, size: 32, align: 32, offset: 192)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !377, file: !74, line: 11, baseType: !78, size: 64, align: 64, offset: 256)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !377, file: !74, line: 11, baseType: !78, size: 64, align: 64, offset: 320)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !377, file: !74, line: 11, baseType: !78, size: 64, align: 64, offset: 384)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !377, file: !74, line: 13, baseType: !84, size: 16, align: 16, offset: 448)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !377, file: !74, line: 14, baseType: !78, size: 64, align: 64, offset: 512)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !377, file: !74, line: 15, baseType: !78, size: 64, align: 64, offset: 576)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !377, file: !74, line: 16, baseType: !65, size: 32, align: 32, offset: 640)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !377, file: !74, line: 17, baseType: !78, size: 64, align: 64, offset: 704)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !377, file: !74, line: 19, baseType: !90, size: 64, align: 64, offset: 768)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !377, file: !74, line: 19, baseType: !90, size: 64, align: 64, offset: 832)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !377, file: !74, line: 21, baseType: !78, size: 64, align: 64, offset: 896)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !377, file: !74, line: 22, baseType: !78, size: 64, align: 64, offset: 960)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !377, file: !74, line: 23, baseType: !78, size: 64, align: 64, offset: 1024)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !377, file: !74, line: 24, baseType: !78, size: 64, align: 64, offset: 1088)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !377, file: !74, line: 26, baseType: !78, size: 64, align: 64, offset: 1152)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !377, file: !74, line: 27, baseType: !78, size: 64, align: 64, offset: 1216)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !377, file: !74, line: 28, baseType: !78, size: 64, align: 64, offset: 1280)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !377, file: !74, line: 29, baseType: !78, size: 64, align: 64, offset: 1344)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !377, file: !74, line: 30, baseType: !78, size: 64, align: 64, offset: 1408)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !377, file: !74, line: 31, baseType: !78, size: 64, align: 64, offset: 1472)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !377, file: !74, line: 32, baseType: !78, size: 64, align: 64, offset: 1536)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !377, file: !74, line: 33, baseType: !78, size: 64, align: 64, offset: 1600)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !377, file: !74, line: 35, baseType: !108, size: 64, align: 64, offset: 1664)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !377, file: !74, line: 38, baseType: !138, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !377, file: !74, line: 39, baseType: !138, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !377, file: !74, line: 40, baseType: !138, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !377, file: !74, line: 41, baseType: !138, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !377, file: !74, line: 42, baseType: !138, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !377, file: !74, line: 43, baseType: !138, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !377, file: !74, line: 44, baseType: !138, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !377, file: !74, line: 45, baseType: !138, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !377, file: !74, line: 46, baseType: !78, size: 64, align: 64, offset: 1792)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !377, file: !74, line: 47, baseType: !78, size: 64, align: 64, offset: 1856)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !368, file: !64, line: 9, baseType: !312, size: 64, align: 64, offset: 192)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !368, file: !64, line: 10, baseType: !312, size: 64, align: 64, offset: 256)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !368, file: !64, line: 12, baseType: !78, size: 64, align: 64, offset: 320)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !368, file: !64, line: 13, baseType: !78, size: 64, align: 64, offset: 384)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !368, file: !64, line: 15, baseType: !138, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !368, file: !64, line: 16, baseType: !138, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !368, file: !64, line: 17, baseType: !138, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !368, file: !64, line: 18, baseType: !138, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !368, file: !64, line: 19, baseType: !138, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !368, file: !64, line: 21, baseType: !325, size: 64, align: 64, offset: 512)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !368, file: !64, line: 22, baseType: !65, size: 32, align: 32, offset: 576)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !368, file: !64, line: 25, baseType: !330, size: 128, align: 64, offset: 640)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !368, file: !64, line: 26, baseType: !65, size: 32, align: 32, offset: 768)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !368, file: !64, line: 27, baseType: !65, size: 32, align: 32, offset: 800)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !368, file: !64, line: 29, baseType: !336, size: 64, align: 64, offset: 832)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !368, file: !64, line: 30, baseType: !340, size: 64, align: 64, offset: 896)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !368, file: !64, line: 32, baseType: !78, size: 64, align: 64, offset: 960)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !368, file: !64, line: 33, baseType: !78, size: 64, align: 64, offset: 1024)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !368, file: !64, line: 34, baseType: !78, size: 64, align: 64, offset: 1088)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !368, file: !64, line: 35, baseType: !138, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !368, file: !64, line: 36, baseType: !138, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !368, file: !64, line: 37, baseType: !138, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !368, file: !64, line: 38, baseType: !138, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !368, file: !64, line: 40, baseType: !352, size: 128, align: 64, offset: 1216)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !368, file: !64, line: 41, baseType: !312, size: 64, align: 64, offset: 1344)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !368, file: !64, line: 42, baseType: !65, size: 32, align: 32, offset: 1408)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !368, file: !64, line: 44, baseType: !228, size: 64, align: 64, offset: 1472)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !368, file: !64, line: 45, baseType: !228, size: 64, align: 64, offset: 1536)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !368, file: !64, line: 53, baseType: !363, size: 64, align: 64, offset: 1600)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !368, file: !64, line: 55, baseType: !447, size: 64, align: 64, offset: 1664)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64, align: 64)
!448 = !DISubroutineType(types: !449)
!449 = !{!65, !366, !54}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !368, file: !64, line: 57, baseType: !451, size: 64, align: 64, offset: 1728)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64, align: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!65, !366, !55}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !368, file: !64, line: 60, baseType: !455, size: 64, align: 64, offset: 1792)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64, align: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{!55, !366}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !368, file: !64, line: 62, baseType: !459, size: 64, align: 64, offset: 1856)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64, align: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{null, !366, !55, !55, !65}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !368, file: !64, line: 65, baseType: !463, size: 64, align: 64, offset: 1920)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64, align: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!466, !366, !55, !55}
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64, align: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !368, file: !64, line: 69, baseType: !468, size: 64, align: 64, offset: 1984)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64, align: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!471, !366, !55}
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64, align: 64)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !92, line: 109, baseType: !473)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !474, line: 15, size: 1408, align: 64, elements: !475)
!474 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!475 = !{!476, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !494, !498, !500, !501, !502, !503, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !473, file: !477, line: 3, baseType: !65, size: 32, align: 32)
!477 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!478 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !473, file: !477, line: 4, baseType: !65, size: 32, align: 32, offset: 32)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !473, file: !477, line: 5, baseType: !340, size: 64, align: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !473, file: !477, line: 7, baseType: !50, size: 64, align: 64, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !473, file: !477, line: 8, baseType: !366, size: 64, align: 64, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !473, file: !477, line: 9, baseType: !78, size: 64, align: 64, offset: 256)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !473, file: !477, line: 10, baseType: !78, size: 64, align: 64, offset: 320)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !473, file: !477, line: 11, baseType: !312, size: 64, align: 64, offset: 384)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !473, file: !477, line: 12, baseType: !65, size: 32, align: 32, offset: 448)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !473, file: !477, line: 13, baseType: !78, size: 64, align: 64, offset: 512)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !473, file: !477, line: 15, baseType: !488, size: 64, align: 64, offset: 576)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64, align: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{null, !491}
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64, align: 64)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !92, line: 108, baseType: !493)
!493 = !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !92, line: 108, flags: DIFlagFwdDecl)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !473, file: !477, line: 17, baseType: !495, size: 64, align: 64, offset: 640)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64, align: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!55, !491}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !473, file: !499, line: 5, baseType: !78, size: 64, align: 64, offset: 704)
!499 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!500 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !473, file: !499, line: 6, baseType: !78, size: 64, align: 64, offset: 768)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !473, file: !499, line: 7, baseType: !312, size: 64, align: 64, offset: 832)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !473, file: !499, line: 9, baseType: !340, size: 64, align: 64, offset: 896)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !473, file: !499, line: 10, baseType: !504, size: 64, align: 64, offset: 960)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64, align: 64)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !92, line: 111, baseType: !506)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !507, line: 13, size: 576, align: 64, elements: !508)
!507 = !DIFile(filename: "../../../src/core/nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!508 = !{!509, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !527, !528}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !506, file: !510, line: 3, baseType: !65, size: 32, align: 32)
!510 = !DIFile(filename: "../../../src/core/nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!511 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !506, file: !510, line: 4, baseType: !65, size: 32, align: 32, offset: 32)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !506, file: !510, line: 6, baseType: !312, size: 64, align: 64, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !506, file: !510, line: 8, baseType: !78, size: 64, align: 64, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !506, file: !510, line: 9, baseType: !78, size: 64, align: 64, offset: 192)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !506, file: !510, line: 10, baseType: !78, size: 64, align: 64, offset: 256)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !506, file: !510, line: 11, baseType: !65, size: 32, align: 32, offset: 320)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !506, file: !510, line: 14, baseType: !138, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !506, file: !510, line: 15, baseType: !138, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !506, file: !510, line: 18, baseType: !138, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !506, file: !510, line: 19, baseType: !138, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !506, file: !510, line: 20, baseType: !138, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !506, file: !510, line: 21, baseType: !138, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !506, file: !510, line: 22, baseType: !524, size: 64, align: 8, offset: 360)
!524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 64, align: 8, elements: !525)
!525 = !{!526}
!526 = !DISubrange(count: 8)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !506, file: !510, line: 26, baseType: !50, size: 64, align: 64, offset: 448)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !506, file: !510, line: 28, baseType: !504, size: 64, align: 64, offset: 512)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !473, file: !499, line: 12, baseType: !138, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !473, file: !499, line: 13, baseType: !78, size: 64, align: 64, offset: 1088)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !473, file: !499, line: 14, baseType: !65, size: 32, align: 32, offset: 1152)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !473, file: !499, line: 15, baseType: !78, size: 64, align: 64, offset: 1216)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !473, file: !499, line: 17, baseType: !138, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !473, file: !499, line: 18, baseType: !138, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !473, file: !499, line: 19, baseType: !138, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !473, file: !499, line: 20, baseType: !138, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !473, file: !499, line: 22, baseType: !138, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !473, file: !499, line: 23, baseType: !138, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !473, file: !499, line: 24, baseType: !138, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !473, file: !499, line: 25, baseType: !138, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !473, file: !499, line: 26, baseType: !138, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !473, file: !499, line: 31, baseType: !543, size: 64, align: 64, offset: 1344)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64, align: 64)
!544 = !DISubroutineType(types: !545)
!545 = !{!78, !471}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !368, file: !64, line: 70, baseType: !547, size: 64, align: 64, offset: 2048)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64, align: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{!550, !366, !55}
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64, align: 64)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !92, line: 110, baseType: !552)
!552 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !92, line: 110, flags: DIFlagFwdDecl)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !368, file: !64, line: 71, baseType: !554, size: 64, align: 64, offset: 2112)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64, align: 64)
!555 = !DISubroutineType(types: !556)
!556 = !{!65, !55, !55}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !368, file: !64, line: 73, baseType: !554, size: 64, align: 64, offset: 2176)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !60, file: !64, line: 55, baseType: !447, size: 64, align: 64, offset: 1664)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !60, file: !64, line: 57, baseType: !451, size: 64, align: 64, offset: 1728)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !60, file: !64, line: 60, baseType: !455, size: 64, align: 64, offset: 1792)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !60, file: !64, line: 62, baseType: !459, size: 64, align: 64, offset: 1856)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !60, file: !64, line: 65, baseType: !463, size: 64, align: 64, offset: 1920)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !60, file: !64, line: 69, baseType: !468, size: 64, align: 64, offset: 1984)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !60, file: !64, line: 70, baseType: !547, size: 64, align: 64, offset: 2048)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !60, file: !64, line: 71, baseType: !554, size: 64, align: 64, offset: 2112)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !60, file: !64, line: 73, baseType: !554, size: 64, align: 64, offset: 2176)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "redirects", scope: !60, file: !61, line: 46, baseType: !228, size: 64, align: 64, offset: 2240)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_queue", scope: !60, file: !61, line: 47, baseType: !228, size: 64, align: 64, offset: 2304)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_next", scope: !60, file: !61, line: 48, baseType: !570, size: 64, align: 64, offset: 2368)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64, align: 64)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "REDIRECT_REC", file: !59, line: 8, baseType: !572)
!572 = !DICompositeType(tag: DW_TAG_structure_type, name: "_REDIRECT_REC", file: !59, line: 8, flags: DIFlagFwdDecl)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_active", scope: !60, file: !61, line: 49, baseType: !228, size: 64, align: 64, offset: 2432)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "last_nick", scope: !60, file: !61, line: 51, baseType: !78, size: 64, align: 64, offset: 2496)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !60, file: !61, line: 53, baseType: !78, size: 64, align: 64, offset: 2560)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !60, file: !61, line: 54, baseType: !78, size: 64, align: 64, offset: 2624)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "wanted_usermode", scope: !60, file: !61, line: 55, baseType: !78, size: 64, align: 64, offset: 2688)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "userhost", scope: !60, file: !61, line: 56, baseType: !78, size: 64, align: 64, offset: 2752)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "channels_formed", scope: !60, file: !61, line: 57, baseType: !65, size: 32, align: 32, offset: 2816)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "whois_found", scope: !60, file: !61, line: 59, baseType: !138, size: 1, align: 32, offset: 2848, flags: DIFlagBitField, extraData: i64 2848)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "whowas_found", scope: !60, file: !61, line: 60, baseType: !138, size: 1, align: 32, offset: 2849, flags: DIFlagBitField, extraData: i64 2848)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "emode_known", scope: !60, file: !61, line: 62, baseType: !138, size: 1, align: 32, offset: 2850, flags: DIFlagBitField, extraData: i64 2848)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_mode", scope: !60, file: !61, line: 63, baseType: !138, size: 1, align: 32, offset: 2851, flags: DIFlagBitField, extraData: i64 2848)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_who", scope: !60, file: !61, line: 64, baseType: !138, size: 1, align: 32, offset: 2852, flags: DIFlagBitField, extraData: i64 2848)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "one_endofwho", scope: !60, file: !61, line: 65, baseType: !138, size: 1, align: 32, offset: 2853, flags: DIFlagBitField, extraData: i64 2848)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "disable_lag", scope: !60, file: !61, line: 66, baseType: !138, size: 1, align: 32, offset: 2854, flags: DIFlagBitField, extraData: i64 2848)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "nick_collision", scope: !60, file: !61, line: 67, baseType: !138, size: 1, align: 32, offset: 2855, flags: DIFlagBitField, extraData: i64 2848)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "motd_got", scope: !60, file: !61, line: 68, baseType: !138, size: 1, align: 32, offset: 2856, flags: DIFlagBitField, extraData: i64 2848)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "isupport_sent", scope: !60, file: !61, line: 69, baseType: !138, size: 1, align: 32, offset: 2857, flags: DIFlagBitField, extraData: i64 2848)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "cap_complete", scope: !60, file: !61, line: 70, baseType: !138, size: 1, align: 32, offset: 2858, flags: DIFlagBitField, extraData: i64 2848)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "cap_in_multiline", scope: !60, file: !61, line: 71, baseType: !138, size: 1, align: 32, offset: 2859, flags: DIFlagBitField, extraData: i64 2848)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_success", scope: !60, file: !61, line: 72, baseType: !138, size: 1, align: 32, offset: 2860, flags: DIFlagBitField, extraData: i64 2848)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks_in_cmd", scope: !60, file: !61, line: 74, baseType: !65, size: 32, align: 32, offset: 2880)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes_in_cmd", scope: !60, file: !61, line: 75, baseType: !65, size: 32, align: 32, offset: 2912)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois_in_cmd", scope: !60, file: !61, line: 76, baseType: !65, size: 32, align: 32, offset: 2944)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs_in_cmd", scope: !60, file: !61, line: 77, baseType: !65, size: 32, align: 32, offset: 2976)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "cap_supported", scope: !60, file: !61, line: 79, baseType: !340, size: 64, align: 64, offset: 3008)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "cap_active", scope: !60, file: !61, line: 80, baseType: !228, size: 64, align: 64, offset: 3072)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "cap_queue", scope: !60, file: !61, line: 81, baseType: !228, size: 64, align: 64, offset: 3136)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_buffer", scope: !60, file: !61, line: 83, baseType: !267, size: 64, align: 64, offset: 3200)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_timeout", scope: !60, file: !61, line: 84, baseType: !219, size: 32, align: 32, offset: 3264)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcount", scope: !60, file: !61, line: 87, baseType: !65, size: 32, align: 32, offset: 3296)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "cmdqueue", scope: !60, file: !61, line: 91, baseType: !228, size: 64, align: 64, offset: 3328)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "wait_cmd", scope: !60, file: !61, line: 92, baseType: !352, size: 128, align: 64, offset: 3392)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd", scope: !60, file: !61, line: 93, baseType: !352, size: 128, align: 64, offset: 3520)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !60, file: !61, line: 95, baseType: !65, size: 32, align: 32, offset: 3648)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !60, file: !61, line: 96, baseType: !65, size: 32, align: 32, offset: 3680)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !60, file: !61, line: 97, baseType: !65, size: 32, align: 32, offset: 3712)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "idles", scope: !60, file: !61, line: 100, baseType: !228, size: 64, align: 64, offset: 3776)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "ctcpqueue", scope: !60, file: !61, line: 103, baseType: !228, size: 64, align: 64, offset: 3840)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "knockoutlist", scope: !60, file: !61, line: 106, baseType: !228, size: 64, align: 64, offset: 3904)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "splits", scope: !60, file: !61, line: 108, baseType: !340, size: 64, align: 64, offset: 3968)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "split_servers", scope: !60, file: !61, line: 109, baseType: !228, size: 64, align: 64, offset: 4032)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "rejoin_channels", scope: !60, file: !61, line: 111, baseType: !228, size: 64, align: 64, offset: 4096)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "chanqueries", scope: !60, file: !61, line: 114, baseType: !50, size: 64, align: 64, offset: 4160)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "isupport", scope: !60, file: !61, line: 116, baseType: !340, size: 64, align: 64, offset: 4224)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !60, file: !61, line: 117, baseType: !618, size: 32768, align: 64, offset: 4288)
!618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !619, size: 32768, align: 64, elements: !668)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "modes_type", file: !620, line: 10, size: 128, align: 64, elements: !621)
!620 = !DIFile(filename: "modes.h", directory: "/home/lichi/Desktop/irssi/task1")
!621 = !{!622, !667}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !619, file: !620, line: 11, baseType: !623, size: 64, align: 64)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64, align: 64)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_func_t", file: !620, line: 7, baseType: !625)
!625 = !DISubroutineType(types: !626)
!626 = !{null, !627, !55, !54, !54, !78, !267}
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64, align: 64)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_CHANNEL_REC", file: !59, line: 7, baseType: !629)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_CHANNEL_REC", file: !630, line: 15, size: 1600, align: 64, elements: !631)
!630 = !DIFile(filename: "irc-channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!631 = !{!632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !629, file: !477, line: 3, baseType: !65, size: 32, align: 32)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !629, file: !477, line: 4, baseType: !65, size: 32, align: 32, offset: 32)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !629, file: !477, line: 5, baseType: !340, size: 64, align: 64, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !629, file: !477, line: 7, baseType: !50, size: 64, align: 64, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !629, file: !477, line: 8, baseType: !57, size: 64, align: 64, offset: 192)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !629, file: !477, line: 9, baseType: !78, size: 64, align: 64, offset: 256)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !629, file: !477, line: 10, baseType: !78, size: 64, align: 64, offset: 320)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !629, file: !477, line: 11, baseType: !312, size: 64, align: 64, offset: 384)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !629, file: !477, line: 12, baseType: !65, size: 32, align: 32, offset: 448)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !629, file: !477, line: 13, baseType: !78, size: 64, align: 64, offset: 512)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !629, file: !477, line: 15, baseType: !488, size: 64, align: 64, offset: 576)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !629, file: !477, line: 17, baseType: !495, size: 64, align: 64, offset: 640)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !629, file: !499, line: 5, baseType: !78, size: 64, align: 64, offset: 704)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !629, file: !499, line: 6, baseType: !78, size: 64, align: 64, offset: 768)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !629, file: !499, line: 7, baseType: !312, size: 64, align: 64, offset: 832)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !629, file: !499, line: 9, baseType: !340, size: 64, align: 64, offset: 896)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !629, file: !499, line: 10, baseType: !504, size: 64, align: 64, offset: 960)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !629, file: !499, line: 12, baseType: !138, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !629, file: !499, line: 13, baseType: !78, size: 64, align: 64, offset: 1088)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !629, file: !499, line: 14, baseType: !65, size: 32, align: 32, offset: 1152)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !629, file: !499, line: 15, baseType: !78, size: 64, align: 64, offset: 1216)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !629, file: !499, line: 17, baseType: !138, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !629, file: !499, line: 18, baseType: !138, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !629, file: !499, line: 19, baseType: !138, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !629, file: !499, line: 20, baseType: !138, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !629, file: !499, line: 22, baseType: !138, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !629, file: !499, line: 23, baseType: !138, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !629, file: !499, line: 24, baseType: !138, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !629, file: !499, line: 25, baseType: !138, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !629, file: !499, line: 26, baseType: !138, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !629, file: !499, line: 31, baseType: !543, size: 64, align: 64, offset: 1344)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "banlist", scope: !629, file: !630, line: 18, baseType: !228, size: 64, align: 64, offset: 1408)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "massjoin_start", scope: !629, file: !630, line: 20, baseType: !312, size: 64, align: 64, offset: 1472)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "massjoins", scope: !629, file: !630, line: 21, baseType: !65, size: 32, align: 32, offset: 1536)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "last_massjoins", scope: !629, file: !630, line: 22, baseType: !65, size: 32, align: 32, offset: 1568)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !619, file: !620, line: 12, baseType: !54, size: 8, align: 8, offset: 64)
!668 = !{!669}
!669 = !DISubrange(count: 256)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !60, file: !61, line: 118, baseType: !671, size: 2048, align: 8, offset: 37056)
!671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 2048, align: 8, elements: !668)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "nick_comp_func", scope: !60, file: !61, line: 120, baseType: !554, size: 64, align: 64, offset: 39104)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64, align: 64)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_QUERY_REC", file: !36, line: 68, baseType: !675)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 63, size: 320, align: 64, elements: !676)
!676 = !{!677, !678, !679}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "current_query_type", scope: !675, file: !36, line: 64, baseType: !65, size: 32, align: 32)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "current_queries", scope: !675, file: !36, line: 65, baseType: !228, size: 64, align: 64, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !675, file: !36, line: 67, baseType: !680, size: 192, align: 64, offset: 128)
!680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 192, align: 64, elements: !681)
!681 = !{!682}
!682 = !DISubrange(count: 3)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "GFunc", file: !53, line: 88, baseType: !684)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64, align: 64)
!685 = !DISubroutineType(types: !686)
!686 = !{null, !167, !167}
!687 = !{i32 2, !"Dwarf Version", i32 4}
!688 = !{i32 2, !"Debug Info Version", i32 3}
!689 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!690 = distinct !DISubprogram(name: "channels_query_init", scope: !36, file: !36, line: 486, type: !216, isLocal: false, isDefinition: true, scopeLine: 487, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !691)
!691 = !{}
!692 = !DILocation(line: 488, column: 2, scope: !690)
!693 = !DILocation(line: 489, column: 2, scope: !690)
!694 = !DILocation(line: 491, column: 2, scope: !690)
!695 = !DILocation(line: 492, column: 2, scope: !690)
!696 = !DILocation(line: 493, column: 2, scope: !690)
!697 = !DILocation(line: 494, column: 2, scope: !690)
!698 = !DILocation(line: 496, column: 2, scope: !690)
!699 = !DILocation(line: 497, column: 2, scope: !690)
!700 = !DILocation(line: 499, column: 2, scope: !690)
!701 = !DILocation(line: 500, column: 2, scope: !690)
!702 = !DILocation(line: 501, column: 1, scope: !690)
!703 = distinct !DISubprogram(name: "sig_connected", scope: !36, file: !36, line: 70, type: !704, isLocal: true, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !691)
!704 = !DISubroutineType(types: !705)
!705 = !{null, !57}
!706 = !DILocalVariable(name: "server", arg: 1, scope: !703, file: !36, line: 70, type: !57)
!707 = !DIExpression()
!708 = !DILocation(line: 70, column: 43, scope: !703)
!709 = !DILocalVariable(name: "rec", scope: !703, file: !36, line: 72, type: !673)
!710 = !DILocation(line: 72, column: 20, scope: !703)
!711 = !DILocation(line: 74, column: 2, scope: !703)
!712 = distinct !{!712, !711}
!713 = !DILocation(line: 74, column: 10, scope: !714)
!714 = !DILexicalBlockFile(scope: !715, file: !36, discriminator: 1)
!715 = distinct !DILexicalBlock(scope: !716, file: !36, line: 74, column: 10)
!716 = distinct !DILexicalBlock(scope: !703, file: !36, line: 74, column: 4)
!717 = !DILocation(line: 74, column: 17, scope: !714)
!718 = !DILocation(line: 74, column: 5, scope: !719)
!719 = !DILexicalBlockFile(scope: !720, file: !36, discriminator: 2)
!720 = distinct !DILexicalBlock(scope: !715, file: !36, line: 74, column: 3)
!721 = !DILocation(line: 74, column: 14, scope: !722)
!722 = !DILexicalBlockFile(scope: !723, file: !36, discriminator: 3)
!723 = distinct !DILexicalBlock(scope: !715, file: !36, line: 74, column: 12)
!724 = !DILocation(line: 74, column: 101, scope: !722)
!725 = !DILocation(line: 74, column: 112, scope: !726)
!726 = !DILexicalBlockFile(scope: !716, file: !36, discriminator: 4)
!727 = !DILocation(line: 75, column: 87, scope: !728)
!728 = distinct !DILexicalBlock(scope: !703, file: !36, line: 75, column: 6)
!729 = !DILocation(line: 75, column: 69, scope: !728)
!730 = !DILocation(line: 75, column: 54, scope: !728)
!731 = !DILocation(line: 75, column: 53, scope: !728)
!732 = !DILocation(line: 75, column: 28, scope: !733)
!733 = !DILexicalBlockFile(scope: !728, file: !36, discriminator: 3)
!734 = !DILocation(line: 75, column: 9, scope: !728)
!735 = !DILocation(line: 75, column: 6, scope: !703)
!736 = !DILocation(line: 75, column: 8, scope: !737)
!737 = !DILexicalBlockFile(scope: !728, file: !36, discriminator: 1)
!738 = !DILocation(line: 75, column: 6, scope: !739)
!739 = !DILexicalBlockFile(scope: !703, file: !36, discriminator: 2)
!740 = !DILocation(line: 76, column: 3, scope: !728)
!741 = !DILocation(line: 78, column: 30, scope: !703)
!742 = !DILocation(line: 78, column: 9, scope: !703)
!743 = !DILocation(line: 78, column: 6, scope: !703)
!744 = !DILocation(line: 79, column: 31, scope: !703)
!745 = !DILocation(line: 79, column: 9, scope: !703)
!746 = !DILocation(line: 79, column: 17, scope: !703)
!747 = !DILocation(line: 79, column: 29, scope: !703)
!748 = !DILocation(line: 80, column: 1, scope: !703)
!749 = !DILocation(line: 80, column: 1, scope: !750)
!750 = !DILexicalBlockFile(scope: !703, file: !36, discriminator: 1)
!751 = distinct !DISubprogram(name: "sig_disconnected", scope: !36, file: !36, line: 82, type: !704, isLocal: true, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !691)
!752 = !DILocalVariable(name: "server", arg: 1, scope: !751, file: !36, line: 82, type: !57)
!753 = !DILocation(line: 82, column: 46, scope: !751)
!754 = !DILocalVariable(name: "rec", scope: !751, file: !36, line: 84, type: !673)
!755 = !DILocation(line: 84, column: 20, scope: !751)
!756 = !DILocalVariable(name: "n", scope: !751, file: !36, line: 85, type: !65)
!757 = !DILocation(line: 85, column: 6, scope: !751)
!758 = !DILocation(line: 87, column: 2, scope: !751)
!759 = distinct !{!759, !758}
!760 = !DILocation(line: 87, column: 10, scope: !761)
!761 = !DILexicalBlockFile(scope: !762, file: !36, discriminator: 1)
!762 = distinct !DILexicalBlock(scope: !763, file: !36, line: 87, column: 10)
!763 = distinct !DILexicalBlock(scope: !751, file: !36, line: 87, column: 4)
!764 = !DILocation(line: 87, column: 17, scope: !761)
!765 = !DILocation(line: 87, column: 5, scope: !766)
!766 = !DILexicalBlockFile(scope: !767, file: !36, discriminator: 2)
!767 = distinct !DILexicalBlock(scope: !762, file: !36, line: 87, column: 3)
!768 = !DILocation(line: 87, column: 14, scope: !769)
!769 = !DILexicalBlockFile(scope: !770, file: !36, discriminator: 3)
!770 = distinct !DILexicalBlock(scope: !762, file: !36, line: 87, column: 12)
!771 = !DILocation(line: 87, column: 101, scope: !769)
!772 = !DILocation(line: 87, column: 112, scope: !773)
!773 = !DILexicalBlockFile(scope: !763, file: !36, discriminator: 4)
!774 = !DILocation(line: 88, column: 87, scope: !775)
!775 = distinct !DILexicalBlock(scope: !751, file: !36, line: 88, column: 6)
!776 = !DILocation(line: 88, column: 69, scope: !775)
!777 = !DILocation(line: 88, column: 54, scope: !775)
!778 = !DILocation(line: 88, column: 53, scope: !775)
!779 = !DILocation(line: 88, column: 28, scope: !780)
!780 = !DILexicalBlockFile(scope: !775, file: !36, discriminator: 3)
!781 = !DILocation(line: 88, column: 9, scope: !775)
!782 = !DILocation(line: 88, column: 6, scope: !751)
!783 = !DILocation(line: 88, column: 8, scope: !784)
!784 = !DILexicalBlockFile(scope: !775, file: !36, discriminator: 1)
!785 = !DILocation(line: 88, column: 6, scope: !786)
!786 = !DILexicalBlockFile(scope: !751, file: !36, discriminator: 2)
!787 = !DILocation(line: 89, column: 3, scope: !775)
!788 = !DILocation(line: 91, column: 8, scope: !751)
!789 = !DILocation(line: 91, column: 16, scope: !751)
!790 = !DILocation(line: 91, column: 6, scope: !751)
!791 = !DILocation(line: 92, column: 2, scope: !751)
!792 = distinct !{!792, !791}
!793 = !DILocation(line: 92, column: 10, scope: !794)
!794 = !DILexicalBlockFile(scope: !795, file: !36, discriminator: 1)
!795 = distinct !DILexicalBlock(scope: !796, file: !36, line: 92, column: 10)
!796 = distinct !DILexicalBlock(scope: !751, file: !36, line: 92, column: 4)
!797 = !DILocation(line: 92, column: 14, scope: !794)
!798 = !DILocation(line: 92, column: 5, scope: !799)
!799 = !DILexicalBlockFile(scope: !800, file: !36, discriminator: 2)
!800 = distinct !DILexicalBlock(scope: !795, file: !36, line: 92, column: 3)
!801 = !DILocation(line: 92, column: 14, scope: !802)
!802 = !DILexicalBlockFile(scope: !803, file: !36, discriminator: 3)
!803 = distinct !DILexicalBlock(scope: !795, file: !36, line: 92, column: 12)
!804 = !DILocation(line: 92, column: 98, scope: !802)
!805 = !DILocation(line: 92, column: 109, scope: !806)
!806 = !DILexicalBlockFile(scope: !796, file: !36, discriminator: 4)
!807 = !DILocation(line: 94, column: 9, scope: !808)
!808 = distinct !DILexicalBlock(scope: !751, file: !36, line: 94, column: 2)
!809 = !DILocation(line: 94, column: 7, scope: !808)
!810 = !DILocation(line: 94, column: 14, scope: !811)
!811 = !DILexicalBlockFile(scope: !812, file: !36, discriminator: 1)
!812 = distinct !DILexicalBlock(scope: !808, file: !36, line: 94, column: 2)
!813 = !DILocation(line: 94, column: 16, scope: !811)
!814 = !DILocation(line: 94, column: 2, scope: !811)
!815 = !DILocation(line: 95, column: 29, scope: !812)
!816 = !DILocation(line: 95, column: 16, scope: !812)
!817 = !DILocation(line: 95, column: 21, scope: !812)
!818 = !DILocation(line: 95, column: 3, scope: !812)
!819 = !DILocation(line: 94, column: 36, scope: !820)
!820 = !DILexicalBlockFile(scope: !812, file: !36, discriminator: 2)
!821 = !DILocation(line: 94, column: 2, scope: !820)
!822 = distinct !{!822, !823}
!823 = !DILocation(line: 94, column: 2, scope: !751)
!824 = !DILocation(line: 96, column: 22, scope: !751)
!825 = !DILocation(line: 96, column: 27, scope: !751)
!826 = !DILocation(line: 96, column: 9, scope: !751)
!827 = !DILocation(line: 97, column: 9, scope: !751)
!828 = !DILocation(line: 97, column: 2, scope: !751)
!829 = !DILocation(line: 99, column: 9, scope: !751)
!830 = !DILocation(line: 99, column: 17, scope: !751)
!831 = !DILocation(line: 99, column: 29, scope: !751)
!832 = !DILocation(line: 100, column: 1, scope: !751)
!833 = !DILocation(line: 100, column: 1, scope: !834)
!834 = !DILexicalBlockFile(scope: !751, file: !36, discriminator: 1)
!835 = distinct !DISubprogram(name: "sig_channel_joined", scope: !36, file: !36, line: 359, type: !836, isLocal: true, isDefinition: true, scopeLine: 360, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !691)
!836 = !DISubroutineType(types: !837)
!837 = !{null, !627}
!838 = !DILocalVariable(name: "channel", arg: 1, scope: !835, file: !36, line: 359, type: !627)
!839 = !DILocation(line: 359, column: 49, scope: !835)
!840 = !DILocation(line: 361, column: 96, scope: !841)
!841 = distinct !DILexicalBlock(scope: !835, file: !36, line: 361, column: 6)
!842 = !DILocation(line: 361, column: 71, scope: !841)
!843 = !DILocation(line: 361, column: 55, scope: !841)
!844 = !DILocation(line: 361, column: 54, scope: !841)
!845 = !DILocation(line: 361, column: 29, scope: !846)
!846 = !DILexicalBlockFile(scope: !841, file: !36, discriminator: 3)
!847 = !DILocation(line: 361, column: 9, scope: !841)
!848 = !DILocation(line: 361, column: 6, scope: !835)
!849 = !DILocation(line: 361, column: 8, scope: !850)
!850 = !DILexicalBlockFile(scope: !841, file: !36, discriminator: 1)
!851 = !DILocation(line: 361, column: 6, scope: !852)
!852 = !DILexicalBlockFile(scope: !835, file: !36, discriminator: 2)
!853 = !DILocation(line: 362, column: 3, scope: !841)
!854 = !DILocation(line: 364, column: 7, scope: !855)
!855 = distinct !DILexicalBlock(scope: !835, file: !36, line: 364, column: 6)
!856 = !DILocation(line: 364, column: 6, scope: !835)
!857 = !DILocation(line: 365, column: 3, scope: !855)
!858 = !DILocation(line: 368, column: 7, scope: !859)
!859 = distinct !DILexicalBlock(scope: !835, file: !36, line: 368, column: 6)
!860 = !DILocation(line: 368, column: 16, scope: !859)
!861 = !DILocation(line: 368, column: 6, scope: !835)
!862 = !DILocation(line: 369, column: 21, scope: !859)
!863 = !DILocation(line: 369, column: 3, scope: !859)
!864 = !DILocation(line: 370, column: 24, scope: !865)
!865 = distinct !DILexicalBlock(scope: !835, file: !36, line: 370, column: 6)
!866 = !DILocation(line: 370, column: 33, scope: !865)
!867 = !DILocation(line: 370, column: 6, scope: !865)
!868 = !DILocation(line: 371, column: 6, scope: !865)
!869 = !DILocation(line: 370, column: 40, scope: !865)
!870 = !DILocation(line: 370, column: 6, scope: !835)
!871 = !DILocation(line: 372, column: 21, scope: !865)
!872 = !DILocation(line: 372, column: 3, scope: !865)
!873 = !DILocation(line: 373, column: 7, scope: !874)
!874 = distinct !DILexicalBlock(scope: !835, file: !36, line: 373, column: 6)
!875 = !DILocation(line: 373, column: 16, scope: !874)
!876 = !DILocation(line: 373, column: 6, scope: !835)
!877 = !DILocation(line: 374, column: 21, scope: !874)
!878 = !DILocation(line: 374, column: 3, scope: !874)
!879 = !DILocation(line: 376, column: 14, scope: !835)
!880 = !DILocation(line: 376, column: 23, scope: !835)
!881 = !DILocation(line: 376, column: 2, scope: !835)
!882 = !DILocation(line: 377, column: 1, scope: !835)
!883 = !DILocation(line: 377, column: 1, scope: !884)
!884 = !DILexicalBlockFile(scope: !835, file: !36, discriminator: 1)
!885 = distinct !DISubprogram(name: "sig_channel_destroyed", scope: !36, file: !36, line: 133, type: !836, isLocal: true, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !691)
!886 = !DILocalVariable(name: "channel", arg: 1, scope: !885, file: !36, line: 133, type: !627)
!887 = !DILocation(line: 133, column: 52, scope: !885)
!888 = !DILocation(line: 135, column: 2, scope: !885)
!889 = distinct !{!889, !888}
!890 = !DILocation(line: 135, column: 10, scope: !891)
!891 = !DILexicalBlockFile(scope: !892, file: !36, discriminator: 1)
!892 = distinct !DILexicalBlock(scope: !893, file: !36, line: 135, column: 10)
!893 = distinct !DILexicalBlock(scope: !885, file: !36, line: 135, column: 4)
!894 = !DILocation(line: 135, column: 18, scope: !891)
!895 = !DILocation(line: 135, column: 5, scope: !896)
!896 = !DILexicalBlockFile(scope: !897, file: !36, discriminator: 2)
!897 = distinct !DILexicalBlock(scope: !892, file: !36, line: 135, column: 3)
!898 = !DILocation(line: 135, column: 14, scope: !899)
!899 = !DILexicalBlockFile(scope: !900, file: !36, discriminator: 3)
!900 = distinct !DILexicalBlock(scope: !892, file: !36, line: 135, column: 12)
!901 = !DILocation(line: 135, column: 102, scope: !899)
!902 = !DILocation(line: 135, column: 113, scope: !903)
!903 = !DILexicalBlockFile(scope: !893, file: !36, discriminator: 4)
!904 = !DILocation(line: 137, column: 95, scope: !905)
!905 = distinct !DILexicalBlock(scope: !885, file: !36, line: 137, column: 6)
!906 = !DILocation(line: 137, column: 70, scope: !905)
!907 = !DILocation(line: 137, column: 54, scope: !905)
!908 = !DILocation(line: 137, column: 53, scope: !905)
!909 = !DILocation(line: 137, column: 28, scope: !910)
!910 = !DILexicalBlockFile(scope: !905, file: !36, discriminator: 3)
!911 = !DILocation(line: 137, column: 8, scope: !905)
!912 = !DILocation(line: 137, column: 6, scope: !885)
!913 = !DILocation(line: 137, column: 7, scope: !914)
!914 = !DILexicalBlockFile(scope: !905, file: !36, discriminator: 1)
!915 = !DILocation(line: 137, column: 6, scope: !916)
!916 = !DILexicalBlockFile(scope: !885, file: !36, discriminator: 2)
!917 = !DILocation(line: 138, column: 20, scope: !905)
!918 = !DILocation(line: 138, column: 3, scope: !905)
!919 = !DILocation(line: 139, column: 1, scope: !885)
!920 = distinct !DISubprogram(name: "event_channel_mode", scope: !36, file: !36, line: 398, type: !921, isLocal: true, isDefinition: true, scopeLine: 400, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !691)
!921 = !DISubroutineType(types: !922)
!922 = !{null, !57, !55, !55}
!923 = !DILocalVariable(name: "server", arg: 1, scope: !920, file: !36, line: 398, type: !57)
!924 = !DILocation(line: 398, column: 48, scope: !920)
!925 = !DILocalVariable(name: "data", arg: 2, scope: !920, file: !36, line: 398, type: !55)
!926 = !DILocation(line: 398, column: 68, scope: !920)
!927 = !DILocalVariable(name: "nick", arg: 3, scope: !920, file: !36, line: 399, type: !55)
!928 = !DILocation(line: 399, column: 23, scope: !920)
!929 = !DILocalVariable(name: "chanrec", scope: !920, file: !36, line: 401, type: !627)
!930 = !DILocation(line: 401, column: 19, scope: !920)
!931 = !DILocalVariable(name: "params", scope: !920, file: !36, line: 402, type: !78)
!932 = !DILocation(line: 402, column: 8, scope: !920)
!933 = !DILocalVariable(name: "channel", scope: !920, file: !36, line: 402, type: !78)
!934 = !DILocation(line: 402, column: 17, scope: !920)
!935 = !DILocalVariable(name: "mode", scope: !920, file: !36, line: 402, type: !78)
!936 = !DILocation(line: 402, column: 27, scope: !920)
!937 = !DILocation(line: 404, column: 2, scope: !920)
!938 = distinct !{!938, !937}
!939 = !DILocation(line: 404, column: 10, scope: !940)
!940 = !DILexicalBlockFile(scope: !941, file: !36, discriminator: 1)
!941 = distinct !DILexicalBlock(scope: !942, file: !36, line: 404, column: 10)
!942 = distinct !DILexicalBlock(scope: !920, file: !36, line: 404, column: 4)
!943 = !DILocation(line: 404, column: 15, scope: !940)
!944 = !DILocation(line: 404, column: 5, scope: !945)
!945 = !DILexicalBlockFile(scope: !946, file: !36, discriminator: 2)
!946 = distinct !DILexicalBlock(scope: !941, file: !36, line: 404, column: 3)
!947 = !DILocation(line: 404, column: 14, scope: !948)
!948 = !DILexicalBlockFile(scope: !949, file: !36, discriminator: 3)
!949 = distinct !DILexicalBlock(scope: !941, file: !36, line: 404, column: 12)
!950 = !DILocation(line: 404, column: 99, scope: !948)
!951 = !DILocation(line: 404, column: 110, scope: !952)
!952 = !DILexicalBlockFile(scope: !942, file: !36, discriminator: 4)
!953 = !DILocation(line: 406, column: 28, scope: !920)
!954 = !DILocation(line: 406, column: 11, scope: !920)
!955 = !DILocation(line: 406, column: 9, scope: !920)
!956 = !DILocation(line: 408, column: 147, scope: !920)
!957 = !DILocation(line: 408, column: 129, scope: !920)
!958 = !DILocation(line: 408, column: 114, scope: !920)
!959 = !DILocation(line: 408, column: 25, scope: !920)
!960 = !DILocation(line: 408, column: 100, scope: !961)
!961 = !DILexicalBlockFile(scope: !920, file: !36, discriminator: 1)
!962 = !DILocation(line: 408, column: 100, scope: !920)
!963 = !DILocation(line: 408, column: 75, scope: !964)
!964 = !DILexicalBlockFile(scope: !920, file: !36, discriminator: 2)
!965 = !DILocation(line: 408, column: 59, scope: !920)
!966 = !DILocation(line: 408, column: 58, scope: !920)
!967 = !DILocation(line: 408, column: 33, scope: !968)
!968 = !DILexicalBlockFile(scope: !920, file: !36, discriminator: 3)
!969 = !DILocation(line: 408, column: 13, scope: !920)
!970 = !DILocation(line: 408, column: 10, scope: !920)
!971 = !DILocation(line: 409, column: 6, scope: !972)
!972 = distinct !DILexicalBlock(scope: !920, file: !36, line: 409, column: 6)
!973 = !DILocation(line: 409, column: 14, scope: !972)
!974 = !DILocation(line: 409, column: 6, scope: !920)
!975 = !DILocation(line: 410, column: 7, scope: !976)
!976 = distinct !DILexicalBlock(scope: !977, file: !36, line: 410, column: 7)
!977 = distinct !DILexicalBlock(scope: !972, file: !36, line: 409, column: 22)
!978 = !DILocation(line: 410, column: 16, scope: !976)
!979 = !DILocation(line: 410, column: 20, scope: !976)
!980 = !DILocation(line: 410, column: 27, scope: !976)
!981 = !DILocation(line: 410, column: 37, scope: !982)
!982 = !DILexicalBlockFile(scope: !976, file: !36, discriminator: 1)
!983 = !DILocation(line: 410, column: 30, scope: !982)
!984 = !DILocation(line: 410, column: 48, scope: !982)
!985 = !DILocation(line: 410, column: 7, scope: !982)
!986 = !DILocation(line: 413, column: 45, scope: !987)
!987 = distinct !DILexicalBlock(scope: !976, file: !36, line: 410, column: 57)
!988 = !DILocation(line: 413, column: 25, scope: !987)
!989 = !DILocation(line: 414, column: 3, scope: !987)
!990 = !DILocation(line: 415, column: 23, scope: !977)
!991 = !DILocation(line: 415, column: 32, scope: !977)
!992 = !DILocation(line: 415, column: 38, scope: !977)
!993 = !DILocation(line: 415, column: 3, scope: !977)
!994 = !DILocation(line: 416, column: 21, scope: !977)
!995 = !DILocation(line: 416, column: 3, scope: !977)
!996 = !DILocation(line: 417, column: 2, scope: !977)
!997 = !DILocation(line: 419, column: 9, scope: !920)
!998 = !DILocation(line: 419, column: 2, scope: !920)
!999 = !DILocation(line: 420, column: 1, scope: !920)
!1000 = !DILocation(line: 420, column: 1, scope: !961)
!1001 = distinct !DISubprogram(name: "event_end_of_who", scope: !36, file: !36, line: 422, type: !1002, isLocal: true, isDefinition: true, scopeLine: 423, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !691)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{null, !57, !55}
!1004 = !DILocalVariable(name: "server", arg: 1, scope: !1001, file: !36, line: 422, type: !57)
!1005 = !DILocation(line: 422, column: 46, scope: !1001)
!1006 = !DILocalVariable(name: "data", arg: 2, scope: !1001, file: !36, line: 422, type: !55)
!1007 = !DILocation(line: 422, column: 66, scope: !1001)
!1008 = !DILocalVariable(name: "rec", scope: !1001, file: !36, line: 424, type: !673)
!1009 = !DILocation(line: 424, column: 27, scope: !1001)
!1010 = !DILocalVariable(name: "tmp", scope: !1001, file: !36, line: 425, type: !228)
!1011 = !DILocation(line: 425, column: 17, scope: !1001)
!1012 = !DILocalVariable(name: "next", scope: !1001, file: !36, line: 425, type: !228)
!1013 = !DILocation(line: 425, column: 23, scope: !1001)
!1014 = !DILocalVariable(name: "params", scope: !1001, file: !36, line: 426, type: !78)
!1015 = !DILocation(line: 426, column: 8, scope: !1001)
!1016 = !DILocalVariable(name: "channel", scope: !1001, file: !36, line: 426, type: !78)
!1017 = !DILocation(line: 426, column: 17, scope: !1001)
!1018 = !DILocalVariable(name: "channels", scope: !1001, file: !36, line: 426, type: !466)
!1019 = !DILocation(line: 426, column: 28, scope: !1001)
!1020 = !DILocalVariable(name: "failed", scope: !1001, file: !36, line: 427, type: !65)
!1021 = !DILocation(line: 427, column: 13, scope: !1001)
!1022 = !DILocalVariable(name: "multiple", scope: !1001, file: !36, line: 427, type: !65)
!1023 = !DILocation(line: 427, column: 21, scope: !1001)
!1024 = !DILocation(line: 429, column: 2, scope: !1001)
!1025 = distinct !{!1025, !1024}
!1026 = !DILocation(line: 429, column: 10, scope: !1027)
!1027 = !DILexicalBlockFile(scope: !1028, file: !36, discriminator: 1)
!1028 = distinct !DILexicalBlock(scope: !1029, file: !36, line: 429, column: 10)
!1029 = distinct !DILexicalBlock(scope: !1001, file: !36, line: 429, column: 4)
!1030 = !DILocation(line: 429, column: 15, scope: !1027)
!1031 = !DILocation(line: 429, column: 5, scope: !1032)
!1032 = !DILexicalBlockFile(scope: !1033, file: !36, discriminator: 2)
!1033 = distinct !DILexicalBlock(scope: !1028, file: !36, line: 429, column: 3)
!1034 = !DILocation(line: 429, column: 14, scope: !1035)
!1035 = !DILexicalBlockFile(scope: !1036, file: !36, discriminator: 3)
!1036 = distinct !DILexicalBlock(scope: !1028, file: !36, line: 429, column: 12)
!1037 = !DILocation(line: 429, column: 99, scope: !1035)
!1038 = !DILocation(line: 429, column: 110, scope: !1039)
!1039 = !DILexicalBlockFile(scope: !1029, file: !36, discriminator: 4)
!1040 = !DILocation(line: 431, column: 28, scope: !1001)
!1041 = !DILocation(line: 431, column: 11, scope: !1001)
!1042 = !DILocation(line: 431, column: 9, scope: !1001)
!1043 = !DILocation(line: 432, column: 20, scope: !1001)
!1044 = !DILocation(line: 432, column: 13, scope: !1001)
!1045 = !DILocation(line: 432, column: 34, scope: !1001)
!1046 = !DILocation(line: 432, column: 11, scope: !1001)
!1047 = !DILocation(line: 433, column: 24, scope: !1001)
!1048 = !DILocation(line: 433, column: 13, scope: !1001)
!1049 = !DILocation(line: 433, column: 11, scope: !1001)
!1050 = !DILocation(line: 435, column: 16, scope: !1001)
!1051 = !DILocation(line: 436, column: 8, scope: !1001)
!1052 = !DILocation(line: 436, column: 16, scope: !1001)
!1053 = !DILocation(line: 436, column: 6, scope: !1001)
!1054 = !DILocation(line: 437, column: 13, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1001, file: !36, line: 437, column: 2)
!1056 = !DILocation(line: 437, column: 18, scope: !1055)
!1057 = !DILocation(line: 437, column: 11, scope: !1055)
!1058 = !DILocation(line: 437, column: 7, scope: !1055)
!1059 = !DILocation(line: 437, column: 35, scope: !1060)
!1060 = !DILexicalBlockFile(scope: !1061, file: !36, discriminator: 1)
!1061 = distinct !DILexicalBlock(scope: !1055, file: !36, line: 437, column: 2)
!1062 = !DILocation(line: 437, column: 39, scope: !1060)
!1063 = !DILocation(line: 437, column: 2, scope: !1060)
!1064 = !DILocalVariable(name: "chanrec", scope: !1065, file: !36, line: 438, type: !627)
!1065 = distinct !DILexicalBlock(scope: !1061, file: !36, line: 437, column: 59)
!1066 = !DILocation(line: 438, column: 20, scope: !1065)
!1067 = !DILocation(line: 438, column: 30, scope: !1065)
!1068 = !DILocation(line: 438, column: 35, scope: !1065)
!1069 = !DILocation(line: 440, column: 24, scope: !1065)
!1070 = !DILocation(line: 440, column: 29, scope: !1065)
!1071 = !DILocation(line: 440, column: 22, scope: !1065)
!1072 = !DILocation(line: 441, column: 21, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1065, file: !36, line: 441, column: 7)
!1074 = !DILocation(line: 441, column: 31, scope: !1073)
!1075 = !DILocation(line: 441, column: 40, scope: !1073)
!1076 = !DILocation(line: 441, column: 7, scope: !1073)
!1077 = !DILocation(line: 441, column: 46, scope: !1073)
!1078 = !DILocation(line: 441, column: 7, scope: !1065)
!1079 = !DILocation(line: 442, column: 4, scope: !1073)
!1080 = !DILocation(line: 444, column: 7, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1065, file: !36, line: 444, column: 7)
!1082 = !DILocation(line: 444, column: 16, scope: !1081)
!1083 = !DILocation(line: 444, column: 25, scope: !1081)
!1084 = !DILocation(line: 444, column: 30, scope: !1081)
!1085 = !DILocation(line: 444, column: 37, scope: !1081)
!1086 = !DILocation(line: 444, column: 40, scope: !1087)
!1087 = !DILexicalBlockFile(scope: !1081, file: !36, discriminator: 1)
!1088 = !DILocation(line: 444, column: 49, scope: !1087)
!1089 = !DILocation(line: 445, column: 8, scope: !1081)
!1090 = !DILocation(line: 445, column: 16, scope: !1081)
!1091 = !DILocation(line: 444, column: 7, scope: !1092)
!1092 = !DILexicalBlockFile(scope: !1065, file: !36, discriminator: 2)
!1093 = !DILocation(line: 449, column: 11, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1081, file: !36, line: 445, column: 30)
!1095 = !DILocation(line: 450, column: 3, scope: !1094)
!1096 = !DILocation(line: 451, column: 4, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1081, file: !36, line: 450, column: 10)
!1098 = !DILocation(line: 451, column: 13, scope: !1097)
!1099 = !DILocation(line: 451, column: 21, scope: !1097)
!1100 = !DILocation(line: 452, column: 38, scope: !1097)
!1101 = !DILocation(line: 452, column: 4, scope: !1097)
!1102 = !DILocation(line: 453, column: 22, scope: !1097)
!1103 = !DILocation(line: 453, column: 4, scope: !1097)
!1104 = !DILocation(line: 455, column: 2, scope: !1065)
!1105 = !DILocation(line: 437, column: 53, scope: !1106)
!1106 = !DILexicalBlockFile(scope: !1061, file: !36, discriminator: 2)
!1107 = !DILocation(line: 437, column: 51, scope: !1106)
!1108 = !DILocation(line: 437, column: 2, scope: !1106)
!1109 = distinct !{!1109, !1110}
!1110 = !DILocation(line: 437, column: 2, scope: !1001)
!1111 = !DILocation(line: 457, column: 13, scope: !1001)
!1112 = !DILocation(line: 457, column: 2, scope: !1001)
!1113 = !DILocation(line: 458, column: 6, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1001, file: !36, line: 458, column: 6)
!1115 = !DILocation(line: 458, column: 6, scope: !1001)
!1116 = !DILocation(line: 459, column: 3, scope: !1114)
!1117 = !DILocation(line: 459, column: 11, scope: !1114)
!1118 = !DILocation(line: 459, column: 24, scope: !1114)
!1119 = !DILocation(line: 461, column: 6, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1001, file: !36, line: 461, column: 6)
!1121 = !DILocation(line: 461, column: 6, scope: !1001)
!1122 = !DILocation(line: 464, column: 37, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1120, file: !36, line: 461, column: 14)
!1124 = !DILocation(line: 464, column: 17, scope: !1123)
!1125 = !DILocation(line: 465, column: 2, scope: !1123)
!1126 = !DILocation(line: 467, column: 16, scope: !1001)
!1127 = !DILocation(line: 467, column: 9, scope: !1001)
!1128 = !DILocation(line: 468, column: 1, scope: !1001)
!1129 = !DILocation(line: 468, column: 1, scope: !1130)
!1130 = !DILexicalBlockFile(scope: !1001, file: !36, discriminator: 1)
!1131 = distinct !DISubprogram(name: "event_end_of_banlist", scope: !36, file: !36, line: 470, type: !1002, isLocal: true, isDefinition: true, scopeLine: 471, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !691)
!1132 = !DILocalVariable(name: "server", arg: 1, scope: !1131, file: !36, line: 470, type: !57)
!1133 = !DILocation(line: 470, column: 50, scope: !1131)
!1134 = !DILocalVariable(name: "data", arg: 2, scope: !1131, file: !36, line: 470, type: !55)
!1135 = !DILocation(line: 470, column: 70, scope: !1131)
!1136 = !DILocalVariable(name: "chanrec", scope: !1131, file: !36, line: 472, type: !627)
!1137 = !DILocation(line: 472, column: 19, scope: !1131)
!1138 = !DILocalVariable(name: "params", scope: !1131, file: !36, line: 473, type: !78)
!1139 = !DILocation(line: 473, column: 8, scope: !1131)
!1140 = !DILocalVariable(name: "channel", scope: !1131, file: !36, line: 473, type: !78)
!1141 = !DILocation(line: 473, column: 17, scope: !1131)
!1142 = !DILocation(line: 475, column: 2, scope: !1131)
!1143 = distinct !{!1143, !1142}
!1144 = !DILocation(line: 475, column: 10, scope: !1145)
!1145 = !DILexicalBlockFile(scope: !1146, file: !36, discriminator: 1)
!1146 = distinct !DILexicalBlock(scope: !1147, file: !36, line: 475, column: 10)
!1147 = distinct !DILexicalBlock(scope: !1131, file: !36, line: 475, column: 4)
!1148 = !DILocation(line: 475, column: 15, scope: !1145)
!1149 = !DILocation(line: 475, column: 5, scope: !1150)
!1150 = !DILexicalBlockFile(scope: !1151, file: !36, discriminator: 2)
!1151 = distinct !DILexicalBlock(scope: !1146, file: !36, line: 475, column: 3)
!1152 = !DILocation(line: 475, column: 14, scope: !1153)
!1153 = !DILexicalBlockFile(scope: !1154, file: !36, discriminator: 3)
!1154 = distinct !DILexicalBlock(scope: !1146, file: !36, line: 475, column: 12)
!1155 = !DILocation(line: 475, column: 99, scope: !1153)
!1156 = !DILocation(line: 475, column: 110, scope: !1157)
!1157 = !DILexicalBlockFile(scope: !1147, file: !36, discriminator: 4)
!1158 = !DILocation(line: 477, column: 28, scope: !1131)
!1159 = !DILocation(line: 477, column: 11, scope: !1131)
!1160 = !DILocation(line: 477, column: 9, scope: !1131)
!1161 = !DILocation(line: 478, column: 147, scope: !1131)
!1162 = !DILocation(line: 478, column: 129, scope: !1131)
!1163 = !DILocation(line: 478, column: 114, scope: !1131)
!1164 = !DILocation(line: 478, column: 25, scope: !1131)
!1165 = !DILocation(line: 478, column: 100, scope: !1166)
!1166 = !DILexicalBlockFile(scope: !1131, file: !36, discriminator: 1)
!1167 = !DILocation(line: 478, column: 100, scope: !1131)
!1168 = !DILocation(line: 478, column: 75, scope: !1169)
!1169 = !DILexicalBlockFile(scope: !1131, file: !36, discriminator: 2)
!1170 = !DILocation(line: 478, column: 59, scope: !1131)
!1171 = !DILocation(line: 478, column: 58, scope: !1131)
!1172 = !DILocation(line: 478, column: 33, scope: !1173)
!1173 = !DILexicalBlockFile(scope: !1131, file: !36, discriminator: 3)
!1174 = !DILocation(line: 478, column: 13, scope: !1131)
!1175 = !DILocation(line: 478, column: 10, scope: !1131)
!1176 = !DILocation(line: 480, column: 6, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1131, file: !36, line: 480, column: 6)
!1178 = !DILocation(line: 480, column: 14, scope: !1177)
!1179 = !DILocation(line: 480, column: 6, scope: !1131)
!1180 = !DILocation(line: 481, column: 21, scope: !1177)
!1181 = !DILocation(line: 481, column: 3, scope: !1177)
!1182 = !DILocation(line: 483, column: 9, scope: !1131)
!1183 = !DILocation(line: 483, column: 2, scope: !1131)
!1184 = !DILocation(line: 484, column: 1, scope: !1131)
!1185 = !DILocation(line: 484, column: 1, scope: !1166)
!1186 = distinct !DISubprogram(name: "query_current_error", scope: !36, file: !36, line: 316, type: !704, isLocal: true, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !691)
!1187 = !DILocalVariable(name: "server", arg: 1, scope: !1186, file: !36, line: 316, type: !57)
!1188 = !DILocation(line: 316, column: 49, scope: !1186)
!1189 = !DILocalVariable(name: "rec", scope: !1186, file: !36, line: 318, type: !673)
!1190 = !DILocation(line: 318, column: 20, scope: !1186)
!1191 = !DILocalVariable(name: "tmp", scope: !1186, file: !36, line: 319, type: !228)
!1192 = !DILocation(line: 319, column: 10, scope: !1186)
!1193 = !DILocalVariable(name: "query", scope: !1186, file: !36, line: 320, type: !65)
!1194 = !DILocation(line: 320, column: 13, scope: !1186)
!1195 = !DILocalVariable(name: "abort_query", scope: !1186, file: !36, line: 320, type: !65)
!1196 = !DILocation(line: 320, column: 20, scope: !1186)
!1197 = !DILocation(line: 322, column: 8, scope: !1186)
!1198 = !DILocation(line: 322, column: 16, scope: !1186)
!1199 = !DILocation(line: 322, column: 6, scope: !1186)
!1200 = !DILocation(line: 326, column: 21, scope: !1186)
!1201 = !DILocation(line: 328, column: 10, scope: !1186)
!1202 = !DILocation(line: 328, column: 15, scope: !1186)
!1203 = !DILocation(line: 328, column: 8, scope: !1186)
!1204 = !DILocation(line: 329, column: 6, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1186, file: !36, line: 329, column: 6)
!1206 = !DILocation(line: 329, column: 12, scope: !1205)
!1207 = !DILocation(line: 329, column: 6, scope: !1186)
!1208 = !DILocation(line: 330, column: 7, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1210, file: !36, line: 330, column: 7)
!1210 = distinct !DILexicalBlock(scope: !1205, file: !36, line: 329, column: 34)
!1211 = !DILocation(line: 330, column: 15, scope: !1209)
!1212 = !DILocation(line: 330, column: 7, scope: !1210)
!1213 = !DILocation(line: 331, column: 16, scope: !1209)
!1214 = !DILocation(line: 331, column: 4, scope: !1209)
!1215 = !DILocation(line: 333, column: 4, scope: !1209)
!1216 = !DILocation(line: 333, column: 12, scope: !1209)
!1217 = !DILocation(line: 333, column: 25, scope: !1209)
!1218 = !DILocation(line: 334, column: 2, scope: !1210)
!1219 = !DILocation(line: 335, column: 7, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !36, line: 335, column: 7)
!1221 = distinct !DILexicalBlock(scope: !1205, file: !36, line: 334, column: 9)
!1222 = !DILocation(line: 335, column: 15, scope: !1220)
!1223 = !DILocation(line: 335, column: 7, scope: !1221)
!1224 = !DILocation(line: 336, column: 37, scope: !1220)
!1225 = !DILocation(line: 336, column: 25, scope: !1220)
!1226 = !DILocation(line: 338, column: 4, scope: !1220)
!1227 = !DILocation(line: 338, column: 12, scope: !1220)
!1228 = !DILocation(line: 338, column: 26, scope: !1220)
!1229 = !DILocation(line: 341, column: 7, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1186, file: !36, line: 341, column: 6)
!1231 = !DILocation(line: 341, column: 6, scope: !1186)
!1232 = !DILocation(line: 343, column: 14, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1234, file: !36, line: 343, column: 3)
!1234 = distinct !DILexicalBlock(scope: !1230, file: !36, line: 341, column: 20)
!1235 = !DILocation(line: 343, column: 19, scope: !1233)
!1236 = !DILocation(line: 343, column: 12, scope: !1233)
!1237 = !DILocation(line: 343, column: 8, scope: !1233)
!1238 = !DILocation(line: 343, column: 36, scope: !1239)
!1239 = !DILexicalBlockFile(scope: !1240, file: !36, discriminator: 1)
!1240 = distinct !DILexicalBlock(scope: !1233, file: !36, line: 343, column: 3)
!1241 = !DILocation(line: 343, column: 40, scope: !1239)
!1242 = !DILocation(line: 343, column: 3, scope: !1239)
!1243 = !DILocation(line: 345, column: 33, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1240, file: !36, line: 343, column: 65)
!1245 = !DILocation(line: 345, column: 20, scope: !1244)
!1246 = !DILocation(line: 345, column: 25, scope: !1244)
!1247 = !DILocation(line: 345, column: 41, scope: !1244)
!1248 = !DILocation(line: 345, column: 46, scope: !1244)
!1249 = !DILocation(line: 345, column: 5, scope: !1244)
!1250 = !DILocation(line: 344, column: 17, scope: !1244)
!1251 = !DILocation(line: 344, column: 4, scope: !1244)
!1252 = !DILocation(line: 344, column: 9, scope: !1244)
!1253 = !DILocation(line: 344, column: 24, scope: !1244)
!1254 = !DILocation(line: 346, column: 3, scope: !1244)
!1255 = !DILocation(line: 343, column: 54, scope: !1256)
!1256 = !DILexicalBlockFile(scope: !1240, file: !36, discriminator: 2)
!1257 = !DILocation(line: 343, column: 59, scope: !1256)
!1258 = !DILocation(line: 343, column: 52, scope: !1256)
!1259 = !DILocation(line: 343, column: 3, scope: !1256)
!1260 = distinct !{!1260, !1261}
!1261 = !DILocation(line: 343, column: 3, scope: !1234)
!1262 = !DILocation(line: 347, column: 2, scope: !1234)
!1263 = !DILocation(line: 349, column: 19, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1230, file: !36, line: 347, column: 9)
!1265 = !DILocation(line: 349, column: 24, scope: !1264)
!1266 = !DILocation(line: 349, column: 3, scope: !1264)
!1267 = !DILocation(line: 353, column: 15, scope: !1186)
!1268 = !DILocation(line: 353, column: 20, scope: !1186)
!1269 = !DILocation(line: 353, column: 2, scope: !1186)
!1270 = !DILocation(line: 354, column: 2, scope: !1186)
!1271 = !DILocation(line: 354, column: 7, scope: !1186)
!1272 = !DILocation(line: 354, column: 23, scope: !1186)
!1273 = !DILocation(line: 356, column: 21, scope: !1186)
!1274 = !DILocation(line: 356, column: 9, scope: !1186)
!1275 = !DILocation(line: 357, column: 1, scope: !1186)
!1276 = distinct !DISubprogram(name: "channels_query_deinit", scope: !36, file: !36, line: 503, type: !216, isLocal: false, isDefinition: true, scopeLine: 504, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !691)
!1277 = !DILocation(line: 505, column: 2, scope: !1276)
!1278 = !DILocation(line: 506, column: 2, scope: !1276)
!1279 = !DILocation(line: 507, column: 2, scope: !1276)
!1280 = !DILocation(line: 508, column: 2, scope: !1276)
!1281 = !DILocation(line: 510, column: 2, scope: !1276)
!1282 = !DILocation(line: 511, column: 2, scope: !1276)
!1283 = !DILocation(line: 513, column: 2, scope: !1276)
!1284 = !DILocation(line: 514, column: 2, scope: !1276)
!1285 = !DILocation(line: 515, column: 1, scope: !1276)
!1286 = distinct !DISubprogram(name: "query_add_channel", scope: !36, file: !36, line: 103, type: !1287, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !691)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{null, !627, !65}
!1289 = !DILocalVariable(name: "channel", arg: 1, scope: !1286, file: !36, line: 103, type: !627)
!1290 = !DILocation(line: 103, column: 48, scope: !1286)
!1291 = !DILocalVariable(name: "query_type", arg: 2, scope: !1286, file: !36, line: 103, type: !65)
!1292 = !DILocation(line: 103, column: 61, scope: !1286)
!1293 = !DILocalVariable(name: "rec", scope: !1286, file: !36, line: 105, type: !673)
!1294 = !DILocation(line: 105, column: 20, scope: !1286)
!1295 = !DILocation(line: 107, column: 2, scope: !1286)
!1296 = distinct !{!1296, !1295}
!1297 = !DILocation(line: 107, column: 10, scope: !1298)
!1298 = !DILexicalBlockFile(scope: !1299, file: !36, discriminator: 1)
!1299 = distinct !DILexicalBlock(scope: !1300, file: !36, line: 107, column: 10)
!1300 = distinct !DILexicalBlock(scope: !1286, file: !36, line: 107, column: 4)
!1301 = !DILocation(line: 107, column: 18, scope: !1298)
!1302 = !DILocation(line: 107, column: 5, scope: !1303)
!1303 = !DILexicalBlockFile(scope: !1304, file: !36, discriminator: 2)
!1304 = distinct !DILexicalBlock(scope: !1299, file: !36, line: 107, column: 3)
!1305 = !DILocation(line: 107, column: 14, scope: !1306)
!1306 = !DILexicalBlockFile(scope: !1307, file: !36, discriminator: 3)
!1307 = distinct !DILexicalBlock(scope: !1299, file: !36, line: 107, column: 12)
!1308 = !DILocation(line: 107, column: 102, scope: !1306)
!1309 = !DILocation(line: 107, column: 113, scope: !1310)
!1310 = !DILexicalBlockFile(scope: !1300, file: !36, discriminator: 4)
!1311 = !DILocation(line: 109, column: 8, scope: !1286)
!1312 = !DILocation(line: 109, column: 17, scope: !1286)
!1313 = !DILocation(line: 109, column: 25, scope: !1286)
!1314 = !DILocation(line: 109, column: 6, scope: !1286)
!1315 = !DILocation(line: 111, column: 31, scope: !1286)
!1316 = !DILocation(line: 111, column: 18, scope: !1286)
!1317 = !DILocation(line: 111, column: 23, scope: !1286)
!1318 = !DILocation(line: 111, column: 44, scope: !1286)
!1319 = !DILocation(line: 111, column: 3, scope: !1286)
!1320 = !DILocation(line: 110, column: 15, scope: !1286)
!1321 = !DILocation(line: 110, column: 2, scope: !1286)
!1322 = !DILocation(line: 110, column: 7, scope: !1286)
!1323 = !DILocation(line: 110, column: 27, scope: !1286)
!1324 = !DILocation(line: 112, column: 1, scope: !1286)
!1325 = !DILocation(line: 112, column: 1, scope: !1326)
!1326 = !DILexicalBlockFile(scope: !1286, file: !36, discriminator: 1)
!1327 = distinct !DISubprogram(name: "query_check", scope: !36, file: !36, line: 267, type: !704, isLocal: true, isDefinition: true, scopeLine: 268, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !691)
!1328 = !DILocalVariable(name: "server", arg: 1, scope: !1327, file: !36, line: 267, type: !57)
!1329 = !DILocation(line: 267, column: 41, scope: !1327)
!1330 = !DILocalVariable(name: "rec", scope: !1327, file: !36, line: 269, type: !673)
!1331 = !DILocation(line: 269, column: 20, scope: !1327)
!1332 = !DILocalVariable(name: "query", scope: !1327, file: !36, line: 270, type: !65)
!1333 = !DILocation(line: 270, column: 13, scope: !1327)
!1334 = !DILocation(line: 272, column: 2, scope: !1327)
!1335 = distinct !{!1335, !1334}
!1336 = !DILocation(line: 272, column: 10, scope: !1337)
!1337 = !DILexicalBlockFile(scope: !1338, file: !36, discriminator: 1)
!1338 = distinct !DILexicalBlock(scope: !1339, file: !36, line: 272, column: 10)
!1339 = distinct !DILexicalBlock(scope: !1327, file: !36, line: 272, column: 4)
!1340 = !DILocation(line: 272, column: 17, scope: !1337)
!1341 = !DILocation(line: 272, column: 5, scope: !1342)
!1342 = !DILexicalBlockFile(scope: !1343, file: !36, discriminator: 2)
!1343 = distinct !DILexicalBlock(scope: !1338, file: !36, line: 272, column: 3)
!1344 = !DILocation(line: 272, column: 14, scope: !1345)
!1345 = !DILexicalBlockFile(scope: !1346, file: !36, discriminator: 3)
!1346 = distinct !DILexicalBlock(scope: !1338, file: !36, line: 272, column: 12)
!1347 = !DILocation(line: 272, column: 101, scope: !1345)
!1348 = !DILocation(line: 272, column: 112, scope: !1349)
!1349 = !DILexicalBlockFile(scope: !1339, file: !36, discriminator: 4)
!1350 = !DILocation(line: 274, column: 8, scope: !1327)
!1351 = !DILocation(line: 274, column: 16, scope: !1327)
!1352 = !DILocation(line: 274, column: 6, scope: !1327)
!1353 = !DILocation(line: 275, column: 6, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1327, file: !36, line: 275, column: 6)
!1355 = !DILocation(line: 275, column: 11, scope: !1354)
!1356 = !DILocation(line: 275, column: 27, scope: !1354)
!1357 = !DILocation(line: 275, column: 6, scope: !1327)
!1358 = !DILocation(line: 276, column: 17, scope: !1354)
!1359 = !DILocation(line: 278, column: 6, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1327, file: !36, line: 278, column: 6)
!1361 = !DILocation(line: 278, column: 14, scope: !1360)
!1362 = !DILocation(line: 278, column: 30, scope: !1360)
!1363 = !DILocation(line: 278, column: 34, scope: !1360)
!1364 = !DILocation(line: 278, column: 38, scope: !1365)
!1365 = !DILexicalBlockFile(scope: !1360, file: !36, discriminator: 1)
!1366 = !DILocation(line: 278, column: 46, scope: !1365)
!1367 = !DILocation(line: 278, column: 59, scope: !1365)
!1368 = !DILocation(line: 278, column: 63, scope: !1369)
!1369 = !DILexicalBlockFile(scope: !1360, file: !36, discriminator: 2)
!1370 = !DILocation(line: 278, column: 71, scope: !1369)
!1371 = !DILocation(line: 278, column: 85, scope: !1369)
!1372 = !DILocation(line: 278, column: 113, scope: !1373)
!1373 = !DILexicalBlockFile(scope: !1360, file: !36, discriminator: 3)
!1374 = !DILocation(line: 278, column: 89, scope: !1373)
!1375 = !DILocation(line: 278, column: 6, scope: !1373)
!1376 = !DILocation(line: 282, column: 3, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1360, file: !36, line: 278, column: 122)
!1378 = !DILocation(line: 285, column: 26, scope: !1327)
!1379 = !DILocation(line: 285, column: 10, scope: !1327)
!1380 = !DILocation(line: 285, column: 8, scope: !1327)
!1381 = !DILocation(line: 286, column: 6, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1327, file: !36, line: 286, column: 6)
!1383 = !DILocation(line: 286, column: 12, scope: !1382)
!1384 = !DILocation(line: 286, column: 6, scope: !1327)
!1385 = !DILocation(line: 288, column: 3, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1382, file: !36, line: 286, column: 19)
!1387 = !DILocation(line: 291, column: 20, scope: !1327)
!1388 = !DILocation(line: 291, column: 28, scope: !1327)
!1389 = !DILocation(line: 291, column: 9, scope: !1327)
!1390 = !DILocation(line: 292, column: 1, scope: !1327)
!1391 = !DILocation(line: 292, column: 1, scope: !1392)
!1392 = !DILexicalBlockFile(scope: !1327, file: !36, discriminator: 1)
!1393 = distinct !DISubprogram(name: "channels_have_all_names", scope: !36, file: !36, line: 141, type: !1394, isLocal: true, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !691)
!1394 = !DISubroutineType(types: !1395)
!1395 = !{!65, !57}
!1396 = !DILocalVariable(name: "server", arg: 1, scope: !1393, file: !36, line: 141, type: !57)
!1397 = !DILocation(line: 141, column: 52, scope: !1393)
!1398 = !DILocalVariable(name: "tmp", scope: !1393, file: !36, line: 143, type: !228)
!1399 = !DILocation(line: 143, column: 10, scope: !1393)
!1400 = !DILocation(line: 145, column: 13, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1393, file: !36, line: 145, column: 2)
!1402 = !DILocation(line: 145, column: 21, scope: !1401)
!1403 = !DILocation(line: 145, column: 11, scope: !1401)
!1404 = !DILocation(line: 145, column: 7, scope: !1401)
!1405 = !DILocation(line: 145, column: 31, scope: !1406)
!1406 = !DILexicalBlockFile(scope: !1407, file: !36, discriminator: 1)
!1407 = distinct !DILexicalBlock(scope: !1401, file: !36, line: 145, column: 2)
!1408 = !DILocation(line: 145, column: 35, scope: !1406)
!1409 = !DILocation(line: 145, column: 2, scope: !1406)
!1410 = !DILocalVariable(name: "rec", scope: !1411, file: !36, line: 146, type: !627)
!1411 = distinct !DILexicalBlock(scope: !1407, file: !36, line: 145, column: 60)
!1412 = !DILocation(line: 146, column: 20, scope: !1411)
!1413 = !DILocation(line: 146, column: 26, scope: !1411)
!1414 = !DILocation(line: 146, column: 31, scope: !1411)
!1415 = !DILocation(line: 148, column: 96, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1411, file: !36, line: 148, column: 7)
!1417 = !DILocation(line: 148, column: 71, scope: !1416)
!1418 = !DILocation(line: 148, column: 55, scope: !1416)
!1419 = !DILocation(line: 148, column: 54, scope: !1416)
!1420 = !DILocation(line: 148, column: 29, scope: !1421)
!1421 = !DILexicalBlockFile(scope: !1416, file: !36, discriminator: 4)
!1422 = !DILocation(line: 148, column: 9, scope: !1416)
!1423 = !DILocation(line: 148, column: 32, scope: !1416)
!1424 = !DILocation(line: 148, column: 8, scope: !1425)
!1425 = !DILexicalBlockFile(scope: !1416, file: !36, discriminator: 1)
!1426 = !DILocation(line: 148, column: 32, scope: !1427)
!1427 = !DILexicalBlockFile(scope: !1416, file: !36, discriminator: 2)
!1428 = !DILocation(line: 148, column: 36, scope: !1429)
!1429 = !DILexicalBlockFile(scope: !1416, file: !36, discriminator: 3)
!1430 = !DILocation(line: 148, column: 41, scope: !1429)
!1431 = !DILocation(line: 148, column: 7, scope: !1429)
!1432 = !DILocation(line: 149, column: 4, scope: !1416)
!1433 = !DILocation(line: 150, column: 2, scope: !1411)
!1434 = !DILocation(line: 145, column: 49, scope: !1435)
!1435 = !DILexicalBlockFile(scope: !1407, file: !36, discriminator: 2)
!1436 = !DILocation(line: 145, column: 54, scope: !1435)
!1437 = !DILocation(line: 145, column: 47, scope: !1435)
!1438 = !DILocation(line: 145, column: 2, scope: !1435)
!1439 = distinct !{!1439, !1440}
!1440 = !DILocation(line: 145, column: 2, scope: !1393)
!1441 = !DILocation(line: 152, column: 2, scope: !1393)
!1442 = !DILocation(line: 153, column: 1, scope: !1393)
!1443 = distinct !DISubprogram(name: "query_find_next", scope: !36, file: !36, line: 155, type: !1444, isLocal: true, isDefinition: true, scopeLine: 156, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !691)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{!65, !673}
!1446 = !DILocalVariable(name: "server", arg: 1, scope: !1443, file: !36, line: 155, type: !673)
!1447 = !DILocation(line: 155, column: 46, scope: !1443)
!1448 = !DILocalVariable(name: "n", scope: !1443, file: !36, line: 157, type: !65)
!1449 = !DILocation(line: 157, column: 6, scope: !1443)
!1450 = !DILocation(line: 159, column: 9, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1443, file: !36, line: 159, column: 2)
!1452 = !DILocation(line: 159, column: 7, scope: !1451)
!1453 = !DILocation(line: 159, column: 14, scope: !1454)
!1454 = !DILexicalBlockFile(scope: !1455, file: !36, discriminator: 1)
!1455 = distinct !DILexicalBlock(scope: !1451, file: !36, line: 159, column: 2)
!1456 = !DILocation(line: 159, column: 16, scope: !1454)
!1457 = !DILocation(line: 159, column: 2, scope: !1454)
!1458 = !DILocation(line: 160, column: 23, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !36, line: 160, column: 7)
!1460 = distinct !DILexicalBlock(scope: !1455, file: !36, line: 159, column: 40)
!1461 = !DILocation(line: 160, column: 7, scope: !1459)
!1462 = !DILocation(line: 160, column: 15, scope: !1459)
!1463 = !DILocation(line: 160, column: 26, scope: !1459)
!1464 = !DILocation(line: 160, column: 7, scope: !1460)
!1465 = !DILocation(line: 161, column: 11, scope: !1459)
!1466 = !DILocation(line: 161, column: 4, scope: !1459)
!1467 = !DILocation(line: 162, column: 2, scope: !1460)
!1468 = !DILocation(line: 159, column: 36, scope: !1469)
!1469 = !DILexicalBlockFile(scope: !1455, file: !36, discriminator: 2)
!1470 = !DILocation(line: 159, column: 2, scope: !1469)
!1471 = distinct !{!1471, !1472}
!1472 = !DILocation(line: 159, column: 2, scope: !1443)
!1473 = !DILocation(line: 164, column: 2, scope: !1443)
!1474 = !DILocation(line: 165, column: 1, scope: !1443)
!1475 = distinct !DISubprogram(name: "query_send", scope: !36, file: !36, line: 167, type: !1476, isLocal: true, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !691)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{null, !57, !65}
!1478 = !DILocalVariable(name: "server", arg: 1, scope: !1475, file: !36, line: 167, type: !57)
!1479 = !DILocation(line: 167, column: 40, scope: !1475)
!1480 = !DILocalVariable(name: "query", arg: 2, scope: !1475, file: !36, line: 167, type: !65)
!1481 = !DILocation(line: 167, column: 52, scope: !1475)
!1482 = !DILocalVariable(name: "rec", scope: !1475, file: !36, line: 169, type: !673)
!1483 = !DILocation(line: 169, column: 20, scope: !1475)
!1484 = !DILocalVariable(name: "chanrec", scope: !1475, file: !36, line: 170, type: !627)
!1485 = !DILocation(line: 170, column: 19, scope: !1475)
!1486 = !DILocalVariable(name: "chans", scope: !1475, file: !36, line: 171, type: !228)
!1487 = !DILocation(line: 171, column: 10, scope: !1475)
!1488 = !DILocalVariable(name: "cmd", scope: !1475, file: !36, line: 172, type: !78)
!1489 = !DILocation(line: 172, column: 8, scope: !1475)
!1490 = !DILocalVariable(name: "chanstr_commas", scope: !1475, file: !36, line: 172, type: !78)
!1491 = !DILocation(line: 172, column: 14, scope: !1475)
!1492 = !DILocalVariable(name: "chanstr", scope: !1475, file: !36, line: 172, type: !78)
!1493 = !DILocation(line: 172, column: 31, scope: !1475)
!1494 = !DILocalVariable(name: "onlyone", scope: !1475, file: !36, line: 173, type: !65)
!1495 = !DILocation(line: 173, column: 6, scope: !1475)
!1496 = !DILocalVariable(name: "count", scope: !1475, file: !36, line: 173, type: !65)
!1497 = !DILocation(line: 173, column: 15, scope: !1475)
!1498 = !DILocation(line: 175, column: 8, scope: !1475)
!1499 = !DILocation(line: 175, column: 16, scope: !1475)
!1500 = !DILocation(line: 175, column: 6, scope: !1475)
!1501 = !DILocation(line: 178, column: 13, scope: !1475)
!1502 = !DILocation(line: 178, column: 21, scope: !1475)
!1503 = !DILocation(line: 178, column: 34, scope: !1475)
!1504 = !DILocation(line: 178, column: 37, scope: !1505)
!1505 = !DILexicalBlockFile(scope: !1475, file: !36, discriminator: 1)
!1506 = !DILocation(line: 178, column: 43, scope: !1505)
!1507 = !DILocation(line: 178, column: 65, scope: !1505)
!1508 = !DILocation(line: 179, column: 4, scope: !1475)
!1509 = !DILocation(line: 179, column: 12, scope: !1475)
!1510 = !DILocation(line: 179, column: 26, scope: !1475)
!1511 = !DILocation(line: 179, column: 31, scope: !1505)
!1512 = !DILocation(line: 179, column: 38, scope: !1505)
!1513 = !DILocation(line: 178, column: 65, scope: !1514)
!1514 = !DILexicalBlockFile(scope: !1475, file: !36, discriminator: 2)
!1515 = !DILocation(line: 178, column: 65, scope: !1516)
!1516 = !DILexicalBlockFile(scope: !1475, file: !36, discriminator: 3)
!1517 = !DILocation(line: 178, column: 10, scope: !1516)
!1518 = !DILocation(line: 181, column: 6, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1475, file: !36, line: 181, column: 6)
!1520 = !DILocation(line: 181, column: 6, scope: !1475)
!1521 = !DILocation(line: 182, column: 38, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1519, file: !36, line: 181, column: 15)
!1523 = !DILocation(line: 182, column: 25, scope: !1522)
!1524 = !DILocation(line: 182, column: 30, scope: !1522)
!1525 = !DILocation(line: 182, column: 23, scope: !1522)
!1526 = !DILocation(line: 184, column: 37, scope: !1522)
!1527 = !DILocation(line: 184, column: 24, scope: !1522)
!1528 = !DILocation(line: 184, column: 29, scope: !1522)
!1529 = !DILocation(line: 184, column: 45, scope: !1522)
!1530 = !DILocation(line: 184, column: 4, scope: !1522)
!1531 = !DILocation(line: 183, column: 16, scope: !1522)
!1532 = !DILocation(line: 183, column: 3, scope: !1522)
!1533 = !DILocation(line: 183, column: 8, scope: !1522)
!1534 = !DILocation(line: 183, column: 23, scope: !1522)
!1535 = !DILocation(line: 186, column: 13, scope: !1522)
!1536 = !DILocation(line: 186, column: 20, scope: !1522)
!1537 = !DILocation(line: 186, column: 11, scope: !1522)
!1538 = !DILocation(line: 187, column: 29, scope: !1522)
!1539 = !DILocation(line: 187, column: 38, scope: !1522)
!1540 = !DILocation(line: 187, column: 20, scope: !1522)
!1541 = !DILocation(line: 187, column: 18, scope: !1522)
!1542 = !DILocation(line: 188, column: 22, scope: !1522)
!1543 = !DILocation(line: 188, column: 31, scope: !1522)
!1544 = !DILocation(line: 188, column: 13, scope: !1522)
!1545 = !DILocation(line: 188, column: 11, scope: !1522)
!1546 = !DILocation(line: 189, column: 23, scope: !1522)
!1547 = !DILocation(line: 190, column: 2, scope: !1522)
!1548 = !DILocalVariable(name: "chanstr_spaces", scope: !1549, file: !36, line: 191, type: !78)
!1549 = distinct !DILexicalBlock(scope: !1519, file: !36, line: 190, column: 9)
!1550 = !DILocation(line: 191, column: 9, scope: !1549)
!1551 = !DILocation(line: 193, column: 24, scope: !1549)
!1552 = !DILocation(line: 193, column: 11, scope: !1549)
!1553 = !DILocation(line: 193, column: 16, scope: !1549)
!1554 = !DILocation(line: 193, column: 9, scope: !1549)
!1555 = !DILocation(line: 194, column: 40, scope: !1549)
!1556 = !DILocation(line: 194, column: 25, scope: !1549)
!1557 = !DILocation(line: 194, column: 23, scope: !1549)
!1558 = !DILocation(line: 196, column: 7, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1549, file: !36, line: 196, column: 7)
!1560 = !DILocation(line: 196, column: 15, scope: !1559)
!1561 = !DILocation(line: 196, column: 23, scope: !1559)
!1562 = !DILocation(line: 196, column: 13, scope: !1559)
!1563 = !DILocation(line: 196, column: 7, scope: !1549)
!1564 = !DILocalVariable(name: "lastchan", scope: !1565, file: !36, line: 197, type: !228)
!1565 = distinct !DILexicalBlock(scope: !1559, file: !36, line: 196, column: 40)
!1566 = !DILocation(line: 197, column: 12, scope: !1565)
!1567 = !DILocation(line: 199, column: 40, scope: !1565)
!1568 = !DILocation(line: 199, column: 27, scope: !1565)
!1569 = !DILocation(line: 199, column: 32, scope: !1565)
!1570 = !DILocation(line: 200, column: 13, scope: !1565)
!1571 = !DILocation(line: 200, column: 21, scope: !1565)
!1572 = !DILocation(line: 200, column: 36, scope: !1565)
!1573 = !DILocation(line: 199, column: 15, scope: !1565)
!1574 = !DILocation(line: 199, column: 13, scope: !1565)
!1575 = !DILocation(line: 201, column: 33, scope: !1565)
!1576 = !DILocation(line: 201, column: 41, scope: !1565)
!1577 = !DILocation(line: 201, column: 31, scope: !1565)
!1578 = !DILocation(line: 202, column: 26, scope: !1565)
!1579 = !DILocation(line: 202, column: 36, scope: !1565)
!1580 = !DILocation(line: 202, column: 17, scope: !1565)
!1581 = !DILocation(line: 202, column: 4, scope: !1565)
!1582 = !DILocation(line: 202, column: 9, scope: !1565)
!1583 = !DILocation(line: 202, column: 24, scope: !1565)
!1584 = !DILocation(line: 203, column: 4, scope: !1565)
!1585 = !DILocation(line: 203, column: 14, scope: !1565)
!1586 = !DILocation(line: 203, column: 19, scope: !1565)
!1587 = !DILocation(line: 204, column: 3, scope: !1565)
!1588 = !DILocation(line: 205, column: 38, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1559, file: !36, line: 204, column: 10)
!1590 = !DILocation(line: 205, column: 25, scope: !1589)
!1591 = !DILocation(line: 205, column: 30, scope: !1589)
!1592 = !DILocation(line: 205, column: 45, scope: !1589)
!1593 = !DILocation(line: 208, column: 40, scope: !1549)
!1594 = !DILocation(line: 208, column: 20, scope: !1549)
!1595 = !DILocation(line: 208, column: 18, scope: !1549)
!1596 = !DILocation(line: 209, column: 40, scope: !1549)
!1597 = !DILocation(line: 209, column: 20, scope: !1549)
!1598 = !DILocation(line: 209, column: 18, scope: !1549)
!1599 = !DILocation(line: 211, column: 25, scope: !1549)
!1600 = !DILocation(line: 211, column: 46, scope: !1549)
!1601 = !DILocation(line: 211, column: 13, scope: !1549)
!1602 = !DILocation(line: 211, column: 11, scope: !1549)
!1603 = !DILocation(line: 212, column: 10, scope: !1549)
!1604 = !DILocation(line: 212, column: 3, scope: !1549)
!1605 = !DILocation(line: 215, column: 28, scope: !1475)
!1606 = !DILocation(line: 215, column: 2, scope: !1475)
!1607 = !DILocation(line: 215, column: 7, scope: !1475)
!1608 = !DILocation(line: 215, column: 26, scope: !1475)
!1609 = !DILocation(line: 216, column: 32, scope: !1475)
!1610 = !DILocation(line: 216, column: 9, scope: !1475)
!1611 = !DILocation(line: 216, column: 14, scope: !1475)
!1612 = !DILocation(line: 216, column: 30, scope: !1475)
!1613 = !DILocation(line: 218, column: 10, scope: !1475)
!1614 = !DILocation(line: 218, column: 2, scope: !1475)
!1615 = !DILocation(line: 220, column: 36, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1475, file: !36, line: 218, column: 17)
!1617 = !DILocation(line: 220, column: 9, scope: !1616)
!1618 = !DILocation(line: 220, column: 7, scope: !1616)
!1619 = !DILocation(line: 224, column: 25, scope: !1616)
!1620 = !DILocation(line: 224, column: 49, scope: !1616)
!1621 = !DILocation(line: 225, column: 11, scope: !1616)
!1622 = !DILocation(line: 224, column: 3, scope: !1616)
!1623 = !DILocation(line: 229, column: 3, scope: !1616)
!1624 = !DILocation(line: 232, column: 35, scope: !1616)
!1625 = !DILocation(line: 232, column: 9, scope: !1616)
!1626 = !DILocation(line: 232, column: 7, scope: !1616)
!1627 = !DILocation(line: 234, column: 25, scope: !1616)
!1628 = !DILocation(line: 235, column: 11, scope: !1616)
!1629 = !DILocation(line: 235, column: 19, scope: !1616)
!1630 = !DILocation(line: 235, column: 11, scope: !1631)
!1631 = !DILexicalBlockFile(scope: !1616, file: !36, discriminator: 1)
!1632 = !DILocation(line: 235, column: 38, scope: !1633)
!1633 = !DILexicalBlockFile(scope: !1616, file: !36, discriminator: 2)
!1634 = !DILocation(line: 235, column: 11, scope: !1633)
!1635 = !DILocation(line: 235, column: 11, scope: !1636)
!1636 = !DILexicalBlockFile(scope: !1616, file: !36, discriminator: 3)
!1637 = !DILocation(line: 236, column: 11, scope: !1616)
!1638 = !DILocation(line: 234, column: 3, scope: !1631)
!1639 = !DILocation(line: 241, column: 3, scope: !1616)
!1640 = !DILocation(line: 244, column: 38, scope: !1616)
!1641 = !DILocation(line: 244, column: 9, scope: !1616)
!1642 = !DILocation(line: 244, column: 7, scope: !1616)
!1643 = !DILocation(line: 249, column: 25, scope: !1616)
!1644 = !DILocation(line: 249, column: 43, scope: !1616)
!1645 = !DILocation(line: 249, column: 50, scope: !1616)
!1646 = !DILocation(line: 249, column: 3, scope: !1616)
!1647 = !DILocation(line: 254, column: 3, scope: !1616)
!1648 = !DILocation(line: 257, column: 21, scope: !1616)
!1649 = !DILocation(line: 258, column: 2, scope: !1616)
!1650 = !DILocation(line: 260, column: 15, scope: !1475)
!1651 = !DILocation(line: 260, column: 23, scope: !1475)
!1652 = !DILocation(line: 260, column: 2, scope: !1475)
!1653 = !DILocation(line: 262, column: 9, scope: !1475)
!1654 = !DILocation(line: 262, column: 2, scope: !1475)
!1655 = !DILocation(line: 263, column: 9, scope: !1475)
!1656 = !DILocation(line: 263, column: 2, scope: !1475)
!1657 = !DILocation(line: 264, column: 9, scope: !1475)
!1658 = !DILocation(line: 264, column: 2, scope: !1475)
!1659 = !DILocation(line: 265, column: 1, scope: !1475)
!1660 = distinct !DISubprogram(name: "query_remove_all", scope: !36, file: !36, line: 116, type: !836, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !691)
!1661 = !DILocalVariable(name: "channel", arg: 1, scope: !1660, file: !36, line: 116, type: !627)
!1662 = !DILocation(line: 116, column: 47, scope: !1660)
!1663 = !DILocalVariable(name: "rec", scope: !1660, file: !36, line: 118, type: !673)
!1664 = !DILocation(line: 118, column: 20, scope: !1660)
!1665 = !DILocalVariable(name: "n", scope: !1660, file: !36, line: 119, type: !65)
!1666 = !DILocation(line: 119, column: 6, scope: !1660)
!1667 = !DILocation(line: 121, column: 8, scope: !1660)
!1668 = !DILocation(line: 121, column: 17, scope: !1660)
!1669 = !DILocation(line: 121, column: 25, scope: !1660)
!1670 = !DILocation(line: 121, column: 6, scope: !1660)
!1671 = !DILocation(line: 122, column: 6, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1660, file: !36, line: 122, column: 6)
!1673 = !DILocation(line: 122, column: 10, scope: !1672)
!1674 = !DILocation(line: 122, column: 6, scope: !1660)
!1675 = !DILocation(line: 122, column: 18, scope: !1676)
!1676 = !DILexicalBlockFile(scope: !1672, file: !36, discriminator: 1)
!1677 = !DILocation(line: 125, column: 9, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1660, file: !36, line: 125, column: 2)
!1679 = !DILocation(line: 125, column: 7, scope: !1678)
!1680 = !DILocation(line: 125, column: 14, scope: !1681)
!1681 = !DILexicalBlockFile(scope: !1682, file: !36, discriminator: 1)
!1682 = distinct !DILexicalBlock(scope: !1678, file: !36, line: 125, column: 2)
!1683 = !DILocation(line: 125, column: 16, scope: !1681)
!1684 = !DILocation(line: 125, column: 2, scope: !1681)
!1685 = !DILocation(line: 126, column: 49, scope: !1682)
!1686 = !DILocation(line: 126, column: 36, scope: !1682)
!1687 = !DILocation(line: 126, column: 41, scope: !1682)
!1688 = !DILocation(line: 126, column: 53, scope: !1682)
!1689 = !DILocation(line: 126, column: 21, scope: !1682)
!1690 = !DILocation(line: 126, column: 16, scope: !1682)
!1691 = !DILocation(line: 126, column: 3, scope: !1682)
!1692 = !DILocation(line: 126, column: 8, scope: !1682)
!1693 = !DILocation(line: 126, column: 19, scope: !1682)
!1694 = !DILocation(line: 125, column: 36, scope: !1695)
!1695 = !DILexicalBlockFile(scope: !1682, file: !36, discriminator: 2)
!1696 = !DILocation(line: 125, column: 2, scope: !1695)
!1697 = distinct !{!1697, !1698}
!1698 = !DILocation(line: 125, column: 2, scope: !1660)
!1699 = !DILocation(line: 127, column: 40, scope: !1660)
!1700 = !DILocation(line: 127, column: 45, scope: !1660)
!1701 = !DILocation(line: 127, column: 62, scope: !1660)
!1702 = !DILocation(line: 127, column: 25, scope: !1660)
!1703 = !DILocation(line: 127, column: 2, scope: !1660)
!1704 = !DILocation(line: 127, column: 7, scope: !1660)
!1705 = !DILocation(line: 127, column: 23, scope: !1660)
!1706 = !DILocation(line: 129, column: 7, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1660, file: !36, line: 129, column: 6)
!1708 = !DILocation(line: 129, column: 16, scope: !1707)
!1709 = !DILocation(line: 129, column: 24, scope: !1707)
!1710 = !DILocation(line: 129, column: 6, scope: !1660)
!1711 = !DILocation(line: 130, column: 15, scope: !1707)
!1712 = !DILocation(line: 130, column: 24, scope: !1707)
!1713 = !DILocation(line: 130, column: 3, scope: !1707)
!1714 = !DILocation(line: 131, column: 1, scope: !1660)
!1715 = distinct !DISubprogram(name: "channel_got_query", scope: !36, file: !36, line: 379, type: !1287, isLocal: true, isDefinition: true, scopeLine: 380, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !691)
!1716 = !DILocalVariable(name: "chanrec", arg: 1, scope: !1715, file: !36, line: 379, type: !627)
!1717 = !DILocation(line: 379, column: 48, scope: !1715)
!1718 = !DILocalVariable(name: "query_type", arg: 2, scope: !1715, file: !36, line: 379, type: !65)
!1719 = !DILocation(line: 379, column: 61, scope: !1715)
!1720 = !DILocalVariable(name: "rec", scope: !1715, file: !36, line: 381, type: !673)
!1721 = !DILocation(line: 381, column: 20, scope: !1715)
!1722 = !DILocation(line: 383, column: 2, scope: !1715)
!1723 = distinct !{!1723, !1722}
!1724 = !DILocation(line: 383, column: 10, scope: !1725)
!1725 = !DILexicalBlockFile(scope: !1726, file: !36, discriminator: 1)
!1726 = distinct !DILexicalBlock(scope: !1727, file: !36, line: 383, column: 10)
!1727 = distinct !DILexicalBlock(scope: !1715, file: !36, line: 383, column: 4)
!1728 = !DILocation(line: 383, column: 18, scope: !1725)
!1729 = !DILocation(line: 383, column: 5, scope: !1730)
!1730 = !DILexicalBlockFile(scope: !1731, file: !36, discriminator: 2)
!1731 = distinct !DILexicalBlock(scope: !1726, file: !36, line: 383, column: 3)
!1732 = !DILocation(line: 383, column: 14, scope: !1733)
!1733 = !DILexicalBlockFile(scope: !1734, file: !36, discriminator: 3)
!1734 = distinct !DILexicalBlock(scope: !1726, file: !36, line: 383, column: 12)
!1735 = !DILocation(line: 383, column: 102, scope: !1733)
!1736 = !DILocation(line: 383, column: 113, scope: !1737)
!1737 = !DILexicalBlockFile(scope: !1727, file: !36, discriminator: 4)
!1738 = !DILocation(line: 385, column: 8, scope: !1715)
!1739 = !DILocation(line: 385, column: 17, scope: !1715)
!1740 = !DILocation(line: 385, column: 25, scope: !1715)
!1741 = !DILocation(line: 385, column: 6, scope: !1715)
!1742 = !DILocation(line: 386, column: 6, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1715, file: !36, line: 386, column: 6)
!1744 = !DILocation(line: 386, column: 20, scope: !1743)
!1745 = !DILocation(line: 386, column: 25, scope: !1743)
!1746 = !DILocation(line: 386, column: 17, scope: !1743)
!1747 = !DILocation(line: 386, column: 6, scope: !1715)
!1748 = !DILocation(line: 387, column: 17, scope: !1743)
!1749 = !DILocation(line: 391, column: 18, scope: !1715)
!1750 = !DILocation(line: 391, column: 23, scope: !1715)
!1751 = !DILocation(line: 391, column: 40, scope: !1715)
!1752 = !DILocation(line: 391, column: 3, scope: !1715)
!1753 = !DILocation(line: 390, column: 2, scope: !1715)
!1754 = !DILocation(line: 390, column: 7, scope: !1715)
!1755 = !DILocation(line: 390, column: 23, scope: !1715)
!1756 = !DILocation(line: 392, column: 20, scope: !1715)
!1757 = !DILocation(line: 392, column: 2, scope: !1715)
!1758 = !DILocation(line: 395, column: 14, scope: !1715)
!1759 = !DILocation(line: 395, column: 23, scope: !1715)
!1760 = !DILocation(line: 395, column: 2, scope: !1715)
!1761 = !DILocation(line: 396, column: 1, scope: !1715)
!1762 = !DILocation(line: 396, column: 1, scope: !1763)
!1763 = !DILexicalBlockFile(scope: !1715, file: !36, discriminator: 1)
!1764 = distinct !DISubprogram(name: "channel_checksync", scope: !36, file: !36, line: 295, type: !836, isLocal: true, isDefinition: true, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !691)
!1765 = !DILocalVariable(name: "channel", arg: 1, scope: !1764, file: !36, line: 295, type: !627)
!1766 = !DILocation(line: 295, column: 48, scope: !1764)
!1767 = !DILocalVariable(name: "rec", scope: !1764, file: !36, line: 297, type: !673)
!1768 = !DILocation(line: 297, column: 20, scope: !1764)
!1769 = !DILocalVariable(name: "n", scope: !1764, file: !36, line: 298, type: !65)
!1770 = !DILocation(line: 298, column: 6, scope: !1764)
!1771 = !DILocation(line: 300, column: 2, scope: !1764)
!1772 = distinct !{!1772, !1771}
!1773 = !DILocation(line: 300, column: 10, scope: !1774)
!1774 = !DILexicalBlockFile(scope: !1775, file: !36, discriminator: 1)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !36, line: 300, column: 10)
!1776 = distinct !DILexicalBlock(scope: !1764, file: !36, line: 300, column: 4)
!1777 = !DILocation(line: 300, column: 18, scope: !1774)
!1778 = !DILocation(line: 300, column: 5, scope: !1779)
!1779 = !DILexicalBlockFile(scope: !1780, file: !36, discriminator: 2)
!1780 = distinct !DILexicalBlock(scope: !1775, file: !36, line: 300, column: 3)
!1781 = !DILocation(line: 300, column: 14, scope: !1782)
!1782 = !DILexicalBlockFile(scope: !1783, file: !36, discriminator: 3)
!1783 = distinct !DILexicalBlock(scope: !1775, file: !36, line: 300, column: 12)
!1784 = !DILocation(line: 300, column: 102, scope: !1782)
!1785 = !DILocation(line: 300, column: 113, scope: !1786)
!1786 = !DILexicalBlockFile(scope: !1776, file: !36, discriminator: 4)
!1787 = !DILocation(line: 302, column: 6, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1764, file: !36, line: 302, column: 6)
!1789 = !DILocation(line: 302, column: 15, scope: !1788)
!1790 = !DILocation(line: 302, column: 6, scope: !1764)
!1791 = !DILocation(line: 303, column: 3, scope: !1788)
!1792 = !DILocation(line: 305, column: 8, scope: !1764)
!1793 = !DILocation(line: 305, column: 17, scope: !1764)
!1794 = !DILocation(line: 305, column: 25, scope: !1764)
!1795 = !DILocation(line: 305, column: 6, scope: !1764)
!1796 = !DILocation(line: 306, column: 9, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1764, file: !36, line: 306, column: 2)
!1798 = !DILocation(line: 306, column: 7, scope: !1797)
!1799 = !DILocation(line: 306, column: 14, scope: !1800)
!1800 = !DILexicalBlockFile(scope: !1801, file: !36, discriminator: 1)
!1801 = distinct !DILexicalBlock(scope: !1797, file: !36, line: 306, column: 2)
!1802 = !DILocation(line: 306, column: 16, scope: !1800)
!1803 = !DILocation(line: 306, column: 2, scope: !1800)
!1804 = !DILocation(line: 307, column: 33, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !36, line: 307, column: 7)
!1806 = distinct !DILexicalBlock(scope: !1801, file: !36, line: 306, column: 40)
!1807 = !DILocation(line: 307, column: 20, scope: !1805)
!1808 = !DILocation(line: 307, column: 25, scope: !1805)
!1809 = !DILocation(line: 307, column: 37, scope: !1805)
!1810 = !DILocation(line: 307, column: 7, scope: !1805)
!1811 = !DILocation(line: 307, column: 7, scope: !1806)
!1812 = !DILocation(line: 308, column: 4, scope: !1805)
!1813 = !DILocation(line: 309, column: 2, scope: !1806)
!1814 = !DILocation(line: 306, column: 36, scope: !1815)
!1815 = !DILexicalBlockFile(scope: !1801, file: !36, discriminator: 2)
!1816 = !DILocation(line: 306, column: 2, scope: !1815)
!1817 = distinct !{!1817, !1818}
!1818 = !DILocation(line: 306, column: 2, scope: !1764)
!1819 = !DILocation(line: 311, column: 2, scope: !1764)
!1820 = !DILocation(line: 311, column: 11, scope: !1764)
!1821 = !DILocation(line: 311, column: 18, scope: !1764)
!1822 = !DILocation(line: 312, column: 33, scope: !1764)
!1823 = !DILocation(line: 312, column: 2, scope: !1764)
!1824 = !DILocation(line: 313, column: 1, scope: !1764)
!1825 = !DILocation(line: 313, column: 1, scope: !1826)
!1826 = !DILexicalBlockFile(scope: !1764, file: !36, discriminator: 1)
