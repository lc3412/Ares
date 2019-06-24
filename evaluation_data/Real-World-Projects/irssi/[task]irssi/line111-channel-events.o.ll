; ModuleID = './line111-channel-events.o.i'
source_filename = "./line111-channel-events.o.i"
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
%struct._CHANNEL_SETUP_REC = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8, %struct._GHashTable* }

@.str = private unnamed_addr constant [9 x i8] c"irc/core\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"misc\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"join_auto_chans_on_invite\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"server event\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"event 403\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"event 407\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"event topic\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"event join\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"event part\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"event kick\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"event invite\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"event 332\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"event 333\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"!%s\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"JOIN !%s\00", align 1
@__func__.event_duplicate_channel = private unnamed_addr constant [24 x i8] c"event_duplicate_channel\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@__func__.event_topic = private unnamed_addr constant [12 x i8] c"event_topic\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"channel topic changed\00", align 1
@__func__.event_join = private unnamed_addr constant [11 x i8] c"event_join\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"WINDOW ITEM TYPE\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"CHANNEL\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"IRC\00", align 1
@__func__.event_part = private unnamed_addr constant [11 x i8] c"event_part\00", align 1
@__func__.event_kick = private unnamed_addr constant [11 x i8] c"event_kick\00", align 1
@__func__.event_invite = private unnamed_addr constant [13 x i8] c"event_invite\00", align 1
@__func__.event_topic_get = private unnamed_addr constant [16 x i8] c"event_topic_get\00", align 1
@__func__.event_topic_info = private unnamed_addr constant [17 x i8] c"event_topic_info\00", align 1

; Function Attrs: nounwind uwtable
define void @channel_events_init() #0 !dbg !669 {
  call void @settings_add_bool_module(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i32 1), !dbg !672
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 100, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @irc_server_event to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !673
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_no_such_channel to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !674
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_duplicate_channel to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !675
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_topic to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !676
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_join to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !677
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_part to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !678
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_kick to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !679
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_invite to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !680
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_topic_get to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !681
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_topic_info to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !682
  ret void, !dbg !683
}

declare void @settings_add_bool_module(i8*, i8*, i8*, i32) #1

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @irc_server_event(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !684 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !687, metadata !688), !dbg !689
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !690, metadata !688), !dbg !691
  call void @llvm.dbg.declare(metadata i8** %5, metadata !692, metadata !688), !dbg !693
  call void @llvm.dbg.declare(metadata i8** %6, metadata !694, metadata !688), !dbg !695
  call void @llvm.dbg.declare(metadata i8** %7, metadata !696, metadata !688), !dbg !697
  %8 = load i8*, i8** %4, align 8, !dbg !698
  %9 = call i8* (i8*, i32, ...) @event_get_params(i8* %8, i32 3, i8** %6, i8* null, i8** %7), !dbg !699
  store i8* %9, i8** %5, align 8, !dbg !700
  %10 = load i8*, i8** %6, align 8, !dbg !701
  %11 = getelementptr inbounds i8, i8* %10, i64 0, !dbg !701
  %12 = load i8, i8* %11, align 1, !dbg !701
  %13 = sext i8 %12 to i32, !dbg !701
  %14 = icmp eq i32 %13, 52, !dbg !703
  br i1 %14, label %15, label %18, !dbg !704

; <label>:15:                                     ; preds = %2
  %16 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !705
  %17 = load i8*, i8** %7, align 8, !dbg !706
  call void @check_join_failure(%struct._IRC_SERVER_REC* %16, i8* %17), !dbg !707
  br label %18, !dbg !707

; <label>:18:                                     ; preds = %15, %2
  %19 = load i8*, i8** %5, align 8, !dbg !708
  call void @g_free(i8* %19), !dbg !709
  ret void, !dbg !710
}

; Function Attrs: nounwind uwtable
define internal void @event_no_such_channel(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !711 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._CHANNEL_REC*, align 8
  %6 = alloca %struct._CHANNEL_SETUP_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !712, metadata !688), !dbg !713
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !714, metadata !688), !dbg !715
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %5, metadata !716, metadata !688), !dbg !717
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_SETUP_REC** %6, metadata !718, metadata !688), !dbg !734
  call void @llvm.dbg.declare(metadata i8** %7, metadata !735, metadata !688), !dbg !736
  call void @llvm.dbg.declare(metadata i8** %8, metadata !737, metadata !688), !dbg !738
  %9 = load i8*, i8** %4, align 8, !dbg !739
  %10 = call i8* (i8*, i32, ...) @event_get_params(i8* %9, i32 2, i8* null, i8** %8), !dbg !740
  store i8* %10, i8** %7, align 8, !dbg !741
  %11 = load i8*, i8** %8, align 8, !dbg !742
  %12 = load i8, i8* %11, align 1, !dbg !743
  %13 = sext i8 %12 to i32, !dbg !743
  %14 = icmp eq i32 %13, 33, !dbg !744
  br i1 %14, label %15, label %28, !dbg !745

; <label>:15:                                     ; preds = %2
  %16 = load i8*, i8** %8, align 8, !dbg !746
  %17 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !746
  %18 = load i8, i8* %17, align 1, !dbg !746
  %19 = sext i8 %18 to i32, !dbg !746
  %20 = icmp ne i32 %19, 0, !dbg !748
  br i1 %20, label %21, label %28, !dbg !749

; <label>:21:                                     ; preds = %15
  %22 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !750
  %23 = bitcast %struct._IRC_SERVER_REC* %22 to i8*, !dbg !750
  %24 = call i8* @module_check_cast(i8* %23, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0)), !dbg !751
  %25 = bitcast i8* %24 to %struct._SERVER_REC*, !dbg !752
  %26 = load i8*, i8** %8, align 8, !dbg !753
  %27 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %25, i8* %26), !dbg !754
  br label %29, !dbg !755

; <label>:28:                                     ; preds = %15, %2
  br label %29, !dbg !757

; <label>:29:                                     ; preds = %28, %21
  %30 = phi %struct._CHANNEL_REC* [ %27, %21 ], [ null, %28 ], !dbg !759
  store %struct._CHANNEL_REC* %30, %struct._CHANNEL_REC** %5, align 8, !dbg !761
  %31 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %5, align 8, !dbg !762
  %32 = icmp ne %struct._CHANNEL_REC* %31, null, !dbg !764
  br i1 %32, label %33, label %61, !dbg !765

; <label>:33:                                     ; preds = %29
  %34 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %5, align 8, !dbg !766
  %35 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %34, i32 0, i32 6, !dbg !768
  %36 = load i8*, i8** %35, align 8, !dbg !768
  %37 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %5, align 8, !dbg !769
  %38 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %37, i32 0, i32 4, !dbg !770
  %39 = load %struct._SERVER_REC*, %struct._SERVER_REC** %38, align 8, !dbg !770
  %40 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %39, i32 0, i32 3, !dbg !771
  %41 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %40, align 8, !dbg !771
  %42 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %41, i32 0, i32 12, !dbg !772
  %43 = load i8*, i8** %42, align 8, !dbg !772
  %44 = call %struct._CHANNEL_SETUP_REC* @channel_setup_find(i8* %36, i8* %43), !dbg !773
  store %struct._CHANNEL_SETUP_REC* %44, %struct._CHANNEL_SETUP_REC** %6, align 8, !dbg !774
  %45 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %6, align 8, !dbg !775
  %46 = icmp ne %struct._CHANNEL_SETUP_REC* %45, null, !dbg !777
  br i1 %46, label %47, label %60, !dbg !778

; <label>:47:                                     ; preds = %33
  %48 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %6, align 8, !dbg !779
  %49 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %48, i32 0, i32 7, !dbg !781
  %50 = load i8, i8* %49, align 8, !dbg !781
  %51 = and i8 %50, 1, !dbg !781
  %52 = zext i8 %51 to i32, !dbg !781
  %53 = icmp ne i32 %52, 0, !dbg !779
  br i1 %53, label %54, label %60, !dbg !782

; <label>:54:                                     ; preds = %47
  %55 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !783
  %56 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %5, align 8, !dbg !785
  %57 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %56, i32 0, i32 6, !dbg !786
  %58 = load i8*, i8** %57, align 8, !dbg !786
  call void (%struct._IRC_SERVER_REC*, i8*, ...) @irc_send_cmdv(%struct._IRC_SERVER_REC* %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* %58), !dbg !787
  %59 = load i8*, i8** %7, align 8, !dbg !788
  call void @g_free(i8* %59), !dbg !789
  br label %65, !dbg !790

; <label>:60:                                     ; preds = %47, %33
  br label %61, !dbg !791

; <label>:61:                                     ; preds = %60, %29
  %62 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !792
  %63 = load i8*, i8** %8, align 8, !dbg !793
  call void @check_join_failure(%struct._IRC_SERVER_REC* %62, i8* %63), !dbg !794
  %64 = load i8*, i8** %7, align 8, !dbg !795
  call void @g_free(i8* %64), !dbg !796
  br label %65, !dbg !797

; <label>:65:                                     ; preds = %61, %54
  ret void, !dbg !798
}

; Function Attrs: nounwind uwtable
define internal void @event_duplicate_channel(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !799 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._CHANNEL_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !800, metadata !688), !dbg !801
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !802, metadata !688), !dbg !803
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %5, metadata !804, metadata !688), !dbg !805
  call void @llvm.dbg.declare(metadata i8** %6, metadata !806, metadata !688), !dbg !807
  call void @llvm.dbg.declare(metadata i8** %7, metadata !808, metadata !688), !dbg !809
  call void @llvm.dbg.declare(metadata i8** %8, metadata !810, metadata !688), !dbg !811
  br label %9, !dbg !812, !llvm.loop !813

; <label>:9:                                      ; preds = %2
  %10 = load i8*, i8** %4, align 8, !dbg !814
  %11 = icmp ne i8* %10, null, !dbg !818
  br i1 %11, label %12, label %13, !dbg !814

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !819

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.event_duplicate_channel, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0)), !dbg !822
  br label %65, !dbg !825

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !826

; <label>:15:                                     ; preds = %14
  %16 = load i8*, i8** %4, align 8, !dbg !828
  %17 = call i8* (i8*, i32, ...) @event_get_params(i8* %16, i32 3, i8* null, i8* null, i8** %7), !dbg !829
  store i8* %17, i8** %6, align 8, !dbg !830
  %18 = load i8*, i8** %7, align 8, !dbg !831
  %19 = call i8* @strchr(i8* %18, i32 32) #5, !dbg !832
  store i8* %19, i8** %8, align 8, !dbg !833
  %20 = load i8*, i8** %8, align 8, !dbg !834
  %21 = icmp ne i8* %20, null, !dbg !836
  br i1 %21, label %22, label %24, !dbg !837

; <label>:22:                                     ; preds = %15
  %23 = load i8*, i8** %8, align 8, !dbg !838
  store i8 0, i8* %23, align 1, !dbg !840
  br label %24, !dbg !841

; <label>:24:                                     ; preds = %22, %15
  %25 = load i8*, i8** %7, align 8, !dbg !842
  %26 = getelementptr inbounds i8, i8* %25, i64 0, !dbg !842
  %27 = load i8, i8* %26, align 1, !dbg !842
  %28 = sext i8 %27 to i32, !dbg !842
  %29 = icmp eq i32 %28, 33, !dbg !844
  br i1 %29, label %30, label %63, !dbg !845

; <label>:30:                                     ; preds = %24
  %31 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !846
  %32 = bitcast %struct._IRC_SERVER_REC* %31 to i8*, !dbg !846
  %33 = call i8* @module_check_cast(i8* %32, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0)), !dbg !848
  %34 = bitcast i8* %33 to %struct._SERVER_REC*, !dbg !849
  %35 = load i8*, i8** %7, align 8, !dbg !850
  %36 = load i8*, i8** %7, align 8, !dbg !851
  %37 = getelementptr inbounds i8, i8* %36, i64 1, !dbg !851
  %38 = load i8, i8* %37, align 1, !dbg !851
  %39 = sext i8 %38 to i32, !dbg !851
  %40 = icmp eq i32 %39, 33, !dbg !852
  %41 = zext i1 %40 to i32, !dbg !852
  %42 = sext i32 %41 to i64, !dbg !853
  %43 = getelementptr inbounds i8, i8* %35, i64 %42, !dbg !853
  %44 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %34, i8* %43), !dbg !854
  store %struct._CHANNEL_REC* %44, %struct._CHANNEL_REC** %5, align 8, !dbg !856
  %45 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %5, align 8, !dbg !857
  %46 = icmp ne %struct._CHANNEL_REC* %45, null, !dbg !859
  br i1 %46, label %47, label %62, !dbg !860

; <label>:47:                                     ; preds = %30
  %48 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %5, align 8, !dbg !861
  %49 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %48, i32 0, i32 21, !dbg !863
  %50 = load i16, i16* %49, align 8, !dbg !863
  %51 = lshr i16 %50, 1, !dbg !863
  %52 = and i16 %51, 1, !dbg !863
  %53 = zext i16 %52 to i32, !dbg !863
  %54 = icmp ne i32 %53, 0, !dbg !861
  br i1 %54, label %62, label %55, !dbg !864

; <label>:55:                                     ; preds = %47
  %56 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %5, align 8, !dbg !865
  %57 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %56, i32 0, i32 21, !dbg !867
  %58 = load i16, i16* %57, align 8, !dbg !868
  %59 = and i16 %58, -33, !dbg !868
  %60 = or i16 %59, 32, !dbg !868
  store i16 %60, i16* %57, align 8, !dbg !868
  %61 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %5, align 8, !dbg !869
  call void @channel_destroy(%struct._CHANNEL_REC* %61), !dbg !870
  br label %62, !dbg !871

; <label>:62:                                     ; preds = %55, %47, %30
  br label %63, !dbg !872

; <label>:63:                                     ; preds = %62, %24
  %64 = load i8*, i8** %6, align 8, !dbg !873
  call void @g_free(i8* %64), !dbg !874
  br label %65, !dbg !875

; <label>:65:                                     ; preds = %63, %13
  ret void, !dbg !876
}

; Function Attrs: nounwind uwtable
define internal void @event_topic(%struct._IRC_SERVER_REC*, i8*, i8*, i8*) #0 !dbg !878 {
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !881, metadata !688), !dbg !882
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !883, metadata !688), !dbg !884
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !885, metadata !688), !dbg !886
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !887, metadata !688), !dbg !888
  call void @llvm.dbg.declare(metadata i8** %9, metadata !889, metadata !688), !dbg !890
  call void @llvm.dbg.declare(metadata i8** %10, metadata !891, metadata !688), !dbg !892
  call void @llvm.dbg.declare(metadata i8** %11, metadata !893, metadata !688), !dbg !894
  call void @llvm.dbg.declare(metadata i8** %12, metadata !895, metadata !688), !dbg !896
  br label %13, !dbg !897, !llvm.loop !898

; <label>:13:                                     ; preds = %4
  %14 = load i8*, i8** %6, align 8, !dbg !899
  %15 = icmp ne i8* %14, null, !dbg !903
  br i1 %15, label %16, label %17, !dbg !899

; <label>:16:                                     ; preds = %13
  br label %18, !dbg !904

; <label>:17:                                     ; preds = %13
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.event_topic, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0)), !dbg !907
  br label %40, !dbg !910

; <label>:18:                                     ; preds = %16
  br label %19, !dbg !911

; <label>:19:                                     ; preds = %18
  %20 = load i8*, i8** %6, align 8, !dbg !913
  %21 = call i8* (i8*, i32, ...) @event_get_params(i8* %20, i32 2, i8** %10, i8** %11), !dbg !914
  store i8* %21, i8** %9, align 8, !dbg !915
  %22 = load i8*, i8** %8, align 8, !dbg !916
  %23 = icmp eq i8* %22, null, !dbg !917
  br i1 %23, label %24, label %27, !dbg !916

; <label>:24:                                     ; preds = %19
  %25 = load i8*, i8** %7, align 8, !dbg !918
  %26 = call noalias i8* @g_strdup(i8* %25), !dbg !920
  br label %31, !dbg !921

; <label>:27:                                     ; preds = %19
  %28 = load i8*, i8** %7, align 8, !dbg !922
  %29 = load i8*, i8** %8, align 8, !dbg !923
  %30 = call noalias i8* (i8*, ...) @g_strconcat(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i8* %29, i8* null), !dbg !924
  br label %31, !dbg !925

; <label>:31:                                     ; preds = %27, %24
  %32 = phi i8* [ %26, %24 ], [ %30, %27 ], !dbg !927
  store i8* %32, i8** %12, align 8, !dbg !929
  %33 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !930
  %34 = load i8*, i8** %10, align 8, !dbg !931
  %35 = load i8*, i8** %11, align 8, !dbg !932
  %36 = load i8*, i8** %12, align 8, !dbg !933
  %37 = call i64 @time(i64* null) #6, !dbg !934
  call void @channel_change_topic(%struct._IRC_SERVER_REC* %33, i8* %34, i8* %35, i8* %36, i64 %37), !dbg !935
  %38 = load i8*, i8** %12, align 8, !dbg !936
  call void @g_free(i8* %38), !dbg !937
  %39 = load i8*, i8** %9, align 8, !dbg !938
  call void @g_free(i8* %39), !dbg !939
  br label %40, !dbg !940

; <label>:40:                                     ; preds = %31, %17
  ret void, !dbg !941
}

; Function Attrs: nounwind uwtable
define internal void @event_join(%struct._IRC_SERVER_REC*, i8*, i8*, i8*) #0 !dbg !942 {
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct._IRC_CHANNEL_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !943, metadata !688), !dbg !944
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !945, metadata !688), !dbg !946
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !947, metadata !688), !dbg !948
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !949, metadata !688), !dbg !950
  call void @llvm.dbg.declare(metadata i8** %9, metadata !951, metadata !688), !dbg !952
  call void @llvm.dbg.declare(metadata i8** %10, metadata !953, metadata !688), !dbg !954
  call void @llvm.dbg.declare(metadata i8** %11, metadata !955, metadata !688), !dbg !956
  call void @llvm.dbg.declare(metadata i8** %12, metadata !957, metadata !688), !dbg !958
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %13, metadata !959, metadata !688), !dbg !960
  br label %14, !dbg !961, !llvm.loop !962

; <label>:14:                                     ; preds = %4
  %15 = load i8*, i8** %6, align 8, !dbg !963
  %16 = icmp ne i8* %15, null, !dbg !967
  br i1 %16, label %17, label %18, !dbg !963

; <label>:17:                                     ; preds = %14
  br label %19, !dbg !968

; <label>:18:                                     ; preds = %14
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.event_join, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0)), !dbg !971
  br label %178, !dbg !974

; <label>:19:                                     ; preds = %17
  br label %20, !dbg !975

; <label>:20:                                     ; preds = %19
  %21 = load i8*, i8** %7, align 8, !dbg !977
  %22 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !979
  %23 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %22, i32 0, i32 7, !dbg !980
  %24 = load i8*, i8** %23, align 8, !dbg !980
  %25 = call i32 @g_ascii_strcasecmp(i8* %21, i8* %24), !dbg !981
  %26 = icmp ne i32 %25, 0, !dbg !982
  br i1 %26, label %27, label %28, !dbg !983

; <label>:27:                                     ; preds = %20
  br label %178, !dbg !984

; <label>:28:                                     ; preds = %20
  %29 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !986
  %30 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %29, i32 0, i32 43, !dbg !988
  %31 = load i8*, i8** %30, align 8, !dbg !988
  %32 = icmp eq i8* %31, null, !dbg !989
  br i1 %32, label %33, label %38, !dbg !990

; <label>:33:                                     ; preds = %28
  %34 = load i8*, i8** %8, align 8, !dbg !991
  %35 = call noalias i8* @g_strdup(i8* %34), !dbg !992
  %36 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !993
  %37 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %36, i32 0, i32 43, !dbg !994
  store i8* %35, i8** %37, align 8, !dbg !995
  br label %38, !dbg !993

; <label>:38:                                     ; preds = %33, %28
  %39 = load i8*, i8** %6, align 8, !dbg !996
  %40 = call i8* (i8*, i32, ...) @event_get_params(i8* %39, i32 1, i8** %10), !dbg !997
  store i8* %40, i8** %9, align 8, !dbg !998
  %41 = load i8*, i8** %10, align 8, !dbg !999
  %42 = call i8* @strchr(i8* %41, i32 7) #5, !dbg !1000
  store i8* %42, i8** %11, align 8, !dbg !1001
  %43 = load i8*, i8** %11, align 8, !dbg !1002
  %44 = icmp ne i8* %43, null, !dbg !1004
  br i1 %44, label %45, label %47, !dbg !1005

; <label>:45:                                     ; preds = %38
  %46 = load i8*, i8** %11, align 8, !dbg !1006
  store i8 0, i8* %46, align 1, !dbg !1008
  br label %47, !dbg !1009

; <label>:47:                                     ; preds = %45, %38
  %48 = load i8*, i8** %10, align 8, !dbg !1010
  %49 = load i8, i8* %48, align 1, !dbg !1012
  %50 = sext i8 %49 to i32, !dbg !1012
  %51 = icmp ne i32 %50, 33, !dbg !1013
  br i1 %51, label %56, label %52, !dbg !1014

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !1015
  %54 = call i64 @strlen(i8* %53) #5, !dbg !1017
  %55 = icmp ult i64 %54, 7, !dbg !1018
  br i1 %55, label %56, label %57, !dbg !1019

; <label>:56:                                     ; preds = %52, %47
  store i8* null, i8** %12, align 8, !dbg !1020
  br label %107, !dbg !1021

; <label>:57:                                     ; preds = %52
  %58 = load i8*, i8** %10, align 8, !dbg !1022
  %59 = getelementptr inbounds i8, i8* %58, i64 6, !dbg !1024
  %60 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* %59), !dbg !1025
  store i8* %60, i8** %12, align 8, !dbg !1026
  %61 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1027
  %62 = load i8*, i8** %12, align 8, !dbg !1028
  %63 = call %struct._IRC_CHANNEL_REC* @channel_find_unjoined(%struct._IRC_SERVER_REC* %61, i8* %62), !dbg !1029
  store %struct._IRC_CHANNEL_REC* %63, %struct._IRC_CHANNEL_REC** %13, align 8, !dbg !1030
  %64 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %13, align 8, !dbg !1031
  %65 = icmp ne %struct._IRC_CHANNEL_REC* %64, null, !dbg !1033
  br i1 %65, label %66, label %79, !dbg !1034

; <label>:66:                                     ; preds = %57
  %67 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %13, align 8, !dbg !1035
  %68 = bitcast %struct._IRC_CHANNEL_REC* %67 to i8*, !dbg !1035
  %69 = call i8* @module_check_cast_module(i8* %68, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0)), !dbg !1037
  %70 = bitcast i8* %69 to %struct._CHANNEL_REC*, !dbg !1038
  %71 = load i8*, i8** %10, align 8, !dbg !1039
  call void @channel_change_name(%struct._CHANNEL_REC* %70, i8* %71), !dbg !1040
  %72 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %13, align 8, !dbg !1042
  %73 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %72, i32 0, i32 6, !dbg !1043
  %74 = load i8*, i8** %73, align 8, !dbg !1043
  call void @g_free(i8* %74), !dbg !1044
  %75 = load i8*, i8** %10, align 8, !dbg !1045
  %76 = call noalias i8* @g_strdup(i8* %75), !dbg !1046
  %77 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %13, align 8, !dbg !1047
  %78 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %77, i32 0, i32 6, !dbg !1048
  store i8* %76, i8** %78, align 8, !dbg !1049
  br label %106, !dbg !1050

; <label>:79:                                     ; preds = %57
  %80 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1051
  %81 = load i8*, i8** %10, align 8, !dbg !1053
  %82 = call %struct._IRC_CHANNEL_REC* @channel_find_unjoined(%struct._IRC_SERVER_REC* %80, i8* %81), !dbg !1054
  store %struct._IRC_CHANNEL_REC* %82, %struct._IRC_CHANNEL_REC** %13, align 8, !dbg !1055
  %83 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %13, align 8, !dbg !1056
  %84 = icmp ne %struct._IRC_CHANNEL_REC* %83, null, !dbg !1058
  br i1 %84, label %85, label %105, !dbg !1059

; <label>:85:                                     ; preds = %79
  %86 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1060
  %87 = bitcast %struct._IRC_SERVER_REC* %86 to i8*, !dbg !1060
  %88 = call i8* @module_check_cast(i8* %87, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0)), !dbg !1061
  %89 = bitcast i8* %88 to %struct._SERVER_REC*, !dbg !1062
  %90 = load i8*, i8** %12, align 8, !dbg !1063
  %91 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %89, i8* %90), !dbg !1064
  %92 = bitcast %struct._CHANNEL_REC* %91 to i8*, !dbg !1066
  %93 = call i8* @module_check_cast_module(i8* %92, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0)), !dbg !1067
  %94 = bitcast i8* %93 to %struct._CHANNEL_REC*, !dbg !1069
  %95 = bitcast %struct._CHANNEL_REC* %94 to i8*, !dbg !1070
  %96 = call i8* @chat_protocol_check_cast(i8* %95, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0)), !dbg !1071
  %97 = bitcast i8* %96 to %struct._IRC_CHANNEL_REC*, !dbg !1073
  %98 = icmp eq %struct._IRC_CHANNEL_REC* %97, null, !dbg !1074
  br i1 %98, label %99, label %105, !dbg !1075

; <label>:99:                                     ; preds = %85
  %100 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %13, align 8, !dbg !1077
  %101 = bitcast %struct._IRC_CHANNEL_REC* %100 to i8*, !dbg !1077
  %102 = call i8* @module_check_cast_module(i8* %101, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0)), !dbg !1079
  %103 = bitcast i8* %102 to %struct._CHANNEL_REC*, !dbg !1080
  %104 = load i8*, i8** %12, align 8, !dbg !1081
  call void @channel_change_visible_name(%struct._CHANNEL_REC* %103, i8* %104), !dbg !1082
  br label %105, !dbg !1084

; <label>:105:                                    ; preds = %99, %85, %79
  br label %106

; <label>:106:                                    ; preds = %105, %66
  br label %107

; <label>:107:                                    ; preds = %106, %56
  %108 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1085
  %109 = bitcast %struct._IRC_SERVER_REC* %108 to i8*, !dbg !1085
  %110 = call i8* @module_check_cast(i8* %109, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0)), !dbg !1086
  %111 = bitcast i8* %110 to %struct._SERVER_REC*, !dbg !1087
  %112 = load i8*, i8** %10, align 8, !dbg !1088
  %113 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %111, i8* %112), !dbg !1089
  %114 = bitcast %struct._CHANNEL_REC* %113 to i8*, !dbg !1091
  %115 = call i8* @module_check_cast_module(i8* %114, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0)), !dbg !1092
  %116 = bitcast i8* %115 to %struct._CHANNEL_REC*, !dbg !1094
  %117 = bitcast %struct._CHANNEL_REC* %116 to i8*, !dbg !1095
  %118 = call i8* @chat_protocol_check_cast(i8* %117, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0)), !dbg !1096
  %119 = bitcast i8* %118 to %struct._IRC_CHANNEL_REC*, !dbg !1098
  store %struct._IRC_CHANNEL_REC* %119, %struct._IRC_CHANNEL_REC** %13, align 8, !dbg !1099
  %120 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %13, align 8, !dbg !1100
  %121 = icmp ne %struct._IRC_CHANNEL_REC* %120, null, !dbg !1102
  br i1 %121, label %122, label %140, !dbg !1103

; <label>:122:                                    ; preds = %107
  %123 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %13, align 8, !dbg !1104
  %124 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %123, i32 0, i32 21, !dbg !1106
  %125 = load i16, i16* %124, align 8, !dbg !1106
  %126 = lshr i16 %125, 4, !dbg !1106
  %127 = and i16 %126, 1, !dbg !1106
  %128 = zext i16 %127 to i32, !dbg !1106
  %129 = icmp ne i32 %128, 0, !dbg !1104
  br i1 %129, label %130, label %140, !dbg !1107

; <label>:130:                                    ; preds = %122
  %131 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %13, align 8, !dbg !1108
  %132 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %131, i32 0, i32 21, !dbg !1110
  %133 = load i16, i16* %132, align 8, !dbg !1111
  %134 = and i16 %133, -33, !dbg !1111
  %135 = or i16 %134, 32, !dbg !1111
  store i16 %135, i16* %132, align 8, !dbg !1111
  %136 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %13, align 8, !dbg !1112
  %137 = bitcast %struct._IRC_CHANNEL_REC* %136 to i8*, !dbg !1112
  %138 = call i8* @module_check_cast_module(i8* %137, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0)), !dbg !1113
  %139 = bitcast i8* %138 to %struct._CHANNEL_REC*, !dbg !1114
  call void @channel_destroy(%struct._CHANNEL_REC* %139), !dbg !1115
  store %struct._IRC_CHANNEL_REC* null, %struct._IRC_CHANNEL_REC** %13, align 8, !dbg !1117
  br label %140, !dbg !1118

; <label>:140:                                    ; preds = %130, %122, %107
  %141 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %13, align 8, !dbg !1119
  %142 = icmp eq %struct._IRC_CHANNEL_REC* %141, null, !dbg !1121
  br i1 %142, label %143, label %147, !dbg !1122

; <label>:143:                                    ; preds = %140
  %144 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1123
  %145 = load i8*, i8** %10, align 8, !dbg !1125
  %146 = call %struct._IRC_CHANNEL_REC* @channel_find_unjoined(%struct._IRC_SERVER_REC* %144, i8* %145), !dbg !1126
  store %struct._IRC_CHANNEL_REC* %146, %struct._IRC_CHANNEL_REC** %13, align 8, !dbg !1127
  br label %147, !dbg !1128

; <label>:147:                                    ; preds = %143, %140
  %148 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %13, align 8, !dbg !1129
  %149 = icmp eq %struct._IRC_CHANNEL_REC* %148, null, !dbg !1131
  br i1 %149, label %150, label %155, !dbg !1132

; <label>:150:                                    ; preds = %147
  %151 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1133
  %152 = load i8*, i8** %10, align 8, !dbg !1135
  %153 = load i8*, i8** %12, align 8, !dbg !1136
  %154 = call %struct._IRC_CHANNEL_REC* @irc_channel_create(%struct._IRC_SERVER_REC* %151, i8* %152, i8* %153, i32 1), !dbg !1137
  store %struct._IRC_CHANNEL_REC* %154, %struct._IRC_CHANNEL_REC** %13, align 8, !dbg !1138
  br label %155, !dbg !1139

; <label>:155:                                    ; preds = %150, %147
  %156 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %13, align 8, !dbg !1140
  %157 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %156, i32 0, i32 21, !dbg !1141
  %158 = load i16, i16* %157, align 8, !dbg !1142
  %159 = and i16 %158, -17, !dbg !1142
  %160 = or i16 %159, 16, !dbg !1142
  store i16 %160, i16* %157, align 8, !dbg !1142
  %161 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %13, align 8, !dbg !1143
  %162 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %161, i32 0, i32 6, !dbg !1145
  %163 = load i8*, i8** %162, align 8, !dbg !1145
  %164 = load i8*, i8** %10, align 8, !dbg !1146
  %165 = call i32 @g_strcmp0(i8* %163, i8* %164), !dbg !1147
  %166 = icmp ne i32 %165, 0, !dbg !1148
  br i1 %166, label %167, label %175, !dbg !1149

; <label>:167:                                    ; preds = %155
  %168 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %13, align 8, !dbg !1150
  %169 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %168, i32 0, i32 6, !dbg !1152
  %170 = load i8*, i8** %169, align 8, !dbg !1152
  call void @g_free(i8* %170), !dbg !1153
  %171 = load i8*, i8** %10, align 8, !dbg !1154
  %172 = call noalias i8* @g_strdup(i8* %171), !dbg !1155
  %173 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %13, align 8, !dbg !1156
  %174 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %173, i32 0, i32 6, !dbg !1157
  store i8* %172, i8** %174, align 8, !dbg !1158
  br label %175, !dbg !1159

; <label>:175:                                    ; preds = %167, %155
  %176 = load i8*, i8** %12, align 8, !dbg !1160
  call void @g_free(i8* %176), !dbg !1161
  %177 = load i8*, i8** %9, align 8, !dbg !1162
  call void @g_free(i8* %177), !dbg !1163
  br label %178, !dbg !1164

; <label>:178:                                    ; preds = %175, %27, %18
  ret void, !dbg !1165
}

; Function Attrs: nounwind uwtable
define internal void @event_part(%struct._IRC_SERVER_REC*, i8*, i8*) #0 !dbg !1166 {
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct._CHANNEL_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !1169, metadata !688), !dbg !1170
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1171, metadata !688), !dbg !1172
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1173, metadata !688), !dbg !1174
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1175, metadata !688), !dbg !1176
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1177, metadata !688), !dbg !1178
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1179, metadata !688), !dbg !1180
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %10, metadata !1181, metadata !688), !dbg !1182
  br label %11, !dbg !1183, !llvm.loop !1184

; <label>:11:                                     ; preds = %3
  %12 = load i8*, i8** %5, align 8, !dbg !1185
  %13 = icmp ne i8* %12, null, !dbg !1189
  br i1 %13, label %14, label %15, !dbg !1185

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !1190

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.event_part, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0)), !dbg !1193
  br label %53, !dbg !1196

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !1197

; <label>:17:                                     ; preds = %16
  %18 = load i8*, i8** %6, align 8, !dbg !1199
  %19 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1201
  %20 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %19, i32 0, i32 7, !dbg !1202
  %21 = load i8*, i8** %20, align 8, !dbg !1202
  %22 = call i32 @g_ascii_strcasecmp(i8* %18, i8* %21), !dbg !1203
  %23 = icmp ne i32 %22, 0, !dbg !1204
  br i1 %23, label %24, label %25, !dbg !1205

; <label>:24:                                     ; preds = %17
  br label %53, !dbg !1206

; <label>:25:                                     ; preds = %17
  %26 = load i8*, i8** %5, align 8, !dbg !1208
  %27 = call i8* (i8*, i32, ...) @event_get_params(i8* %26, i32 2, i8** %8, i8** %9), !dbg !1209
  store i8* %27, i8** %7, align 8, !dbg !1210
  %28 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1211
  %29 = bitcast %struct._IRC_SERVER_REC* %28 to i8*, !dbg !1211
  %30 = call i8* @module_check_cast(i8* %29, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0)), !dbg !1212
  %31 = bitcast i8* %30 to %struct._SERVER_REC*, !dbg !1213
  %32 = load i8*, i8** %8, align 8, !dbg !1214
  %33 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %31, i8* %32), !dbg !1215
  store %struct._CHANNEL_REC* %33, %struct._CHANNEL_REC** %10, align 8, !dbg !1217
  %34 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %10, align 8, !dbg !1218
  %35 = icmp ne %struct._CHANNEL_REC* %34, null, !dbg !1220
  br i1 %35, label %36, label %51, !dbg !1221

; <label>:36:                                     ; preds = %25
  %37 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %10, align 8, !dbg !1222
  %38 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %37, i32 0, i32 21, !dbg !1224
  %39 = load i16, i16* %38, align 8, !dbg !1224
  %40 = lshr i16 %39, 4, !dbg !1224
  %41 = and i16 %40, 1, !dbg !1224
  %42 = zext i16 %41 to i32, !dbg !1224
  %43 = icmp ne i32 %42, 0, !dbg !1222
  br i1 %43, label %44, label %51, !dbg !1225

; <label>:44:                                     ; preds = %36
  %45 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %10, align 8, !dbg !1226
  %46 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %45, i32 0, i32 21, !dbg !1228
  %47 = load i16, i16* %46, align 8, !dbg !1229
  %48 = and i16 %47, -33, !dbg !1229
  %49 = or i16 %48, 32, !dbg !1229
  store i16 %49, i16* %46, align 8, !dbg !1229
  %50 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %10, align 8, !dbg !1230
  call void @channel_destroy(%struct._CHANNEL_REC* %50), !dbg !1231
  br label %51, !dbg !1232

; <label>:51:                                     ; preds = %44, %36, %25
  %52 = load i8*, i8** %7, align 8, !dbg !1233
  call void @g_free(i8* %52), !dbg !1234
  br label %53, !dbg !1235

; <label>:53:                                     ; preds = %51, %24, %15
  ret void, !dbg !1236
}

; Function Attrs: nounwind uwtable
define internal void @event_kick(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !1237 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._CHANNEL_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1238, metadata !688), !dbg !1239
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1240, metadata !688), !dbg !1241
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %5, metadata !1242, metadata !688), !dbg !1243
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1244, metadata !688), !dbg !1245
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1246, metadata !688), !dbg !1247
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1248, metadata !688), !dbg !1249
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1250, metadata !688), !dbg !1251
  br label %10, !dbg !1252, !llvm.loop !1253

; <label>:10:                                     ; preds = %2
  %11 = load i8*, i8** %4, align 8, !dbg !1254
  %12 = icmp ne i8* %11, null, !dbg !1258
  br i1 %12, label %13, label %14, !dbg !1254

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !1259

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.event_kick, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0)), !dbg !1262
  br label %47, !dbg !1265

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !1266

; <label>:16:                                     ; preds = %15
  %17 = load i8*, i8** %4, align 8, !dbg !1268
  %18 = call i8* (i8*, i32, ...) @event_get_params(i8* %17, i32 3, i8** %7, i8** %8, i8** %9), !dbg !1269
  store i8* %18, i8** %6, align 8, !dbg !1270
  %19 = load i8*, i8** %8, align 8, !dbg !1271
  %20 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1273
  %21 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %20, i32 0, i32 7, !dbg !1274
  %22 = load i8*, i8** %21, align 8, !dbg !1274
  %23 = call i32 @g_ascii_strcasecmp(i8* %19, i8* %22), !dbg !1275
  %24 = icmp ne i32 %23, 0, !dbg !1276
  br i1 %24, label %25, label %27, !dbg !1277

; <label>:25:                                     ; preds = %16
  %26 = load i8*, i8** %6, align 8, !dbg !1278
  call void @g_free(i8* %26), !dbg !1280
  br label %47, !dbg !1281

; <label>:27:                                     ; preds = %16
  %28 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1282
  %29 = bitcast %struct._IRC_SERVER_REC* %28 to i8*, !dbg !1282
  %30 = call i8* @module_check_cast(i8* %29, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0)), !dbg !1283
  %31 = bitcast i8* %30 to %struct._SERVER_REC*, !dbg !1284
  %32 = load i8*, i8** %7, align 8, !dbg !1285
  %33 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %31, i8* %32), !dbg !1286
  store %struct._CHANNEL_REC* %33, %struct._CHANNEL_REC** %5, align 8, !dbg !1288
  %34 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %5, align 8, !dbg !1289
  %35 = icmp ne %struct._CHANNEL_REC* %34, null, !dbg !1291
  br i1 %35, label %36, label %45, !dbg !1292

; <label>:36:                                     ; preds = %27
  %37 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1293
  %38 = load i8*, i8** %7, align 8, !dbg !1295
  call void @irc_server_purge_output(%struct._IRC_SERVER_REC* %37, i8* %38), !dbg !1296
  %39 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %5, align 8, !dbg !1297
  %40 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %39, i32 0, i32 21, !dbg !1298
  %41 = load i16, i16* %40, align 8, !dbg !1299
  %42 = and i16 %41, -65, !dbg !1299
  %43 = or i16 %42, 64, !dbg !1299
  store i16 %43, i16* %40, align 8, !dbg !1299
  %44 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %5, align 8, !dbg !1300
  call void @channel_destroy(%struct._CHANNEL_REC* %44), !dbg !1301
  br label %45, !dbg !1302

; <label>:45:                                     ; preds = %36, %27
  %46 = load i8*, i8** %6, align 8, !dbg !1303
  call void @g_free(i8* %46), !dbg !1304
  br label %47, !dbg !1305

; <label>:47:                                     ; preds = %45, %25, %14
  ret void, !dbg !1306
}

; Function Attrs: nounwind uwtable
define internal void @event_invite(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !1307 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct._CHANNEL_SETUP_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1308, metadata !688), !dbg !1309
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1310, metadata !688), !dbg !1311
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1312, metadata !688), !dbg !1313
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1314, metadata !688), !dbg !1315
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1316, metadata !688), !dbg !1317
  br label %9, !dbg !1318, !llvm.loop !1319

; <label>:9:                                      ; preds = %2
  %10 = load i8*, i8** %4, align 8, !dbg !1320
  %11 = icmp ne i8* %10, null, !dbg !1324
  br i1 %11, label %12, label %13, !dbg !1320

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !1325

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.event_invite, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0)), !dbg !1328
  br label %95, !dbg !1331

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !1332

; <label>:15:                                     ; preds = %14
  %16 = load i8*, i8** %4, align 8, !dbg !1334
  %17 = call i8* (i8*, i32, ...) @event_get_params(i8* %16, i32 2, i8* null, i8** %6), !dbg !1335
  store i8* %17, i8** %5, align 8, !dbg !1336
  %18 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1337
  %19 = bitcast %struct._IRC_SERVER_REC* %18 to i8*, !dbg !1337
  %20 = call i8* @module_check_cast(i8* %19, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0)), !dbg !1339
  %21 = bitcast i8* %20 to %struct._SERVER_REC*, !dbg !1340
  %22 = load i8*, i8** %6, align 8, !dbg !1341
  %23 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %21, i8* %22), !dbg !1342
  %24 = bitcast %struct._CHANNEL_REC* %23 to i8*, !dbg !1344
  %25 = call i8* @module_check_cast_module(i8* %24, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0)), !dbg !1345
  %26 = bitcast i8* %25 to %struct._CHANNEL_REC*, !dbg !1347
  %27 = bitcast %struct._CHANNEL_REC* %26 to i8*, !dbg !1348
  %28 = call i8* @chat_protocol_check_cast(i8* %27, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0)), !dbg !1349
  %29 = bitcast i8* %28 to %struct._IRC_CHANNEL_REC*, !dbg !1351
  %30 = icmp eq %struct._IRC_CHANNEL_REC* %29, null, !dbg !1352
  br i1 %30, label %31, label %86, !dbg !1353

; <label>:31:                                     ; preds = %15
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_SETUP_REC** %8, metadata !1354, metadata !688), !dbg !1356
  %32 = load i8*, i8** %6, align 8, !dbg !1357
  %33 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1358
  %34 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %33, i32 0, i32 3, !dbg !1359
  %35 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %34, align 8, !dbg !1359
  %36 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %35, i32 0, i32 12, !dbg !1360
  %37 = load i8*, i8** %36, align 8, !dbg !1360
  %38 = call %struct._CHANNEL_SETUP_REC* @channel_setup_find(i8* %32, i8* %37), !dbg !1361
  store %struct._CHANNEL_SETUP_REC* %38, %struct._CHANNEL_SETUP_REC** %8, align 8, !dbg !1362
  %39 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %8, align 8, !dbg !1363
  %40 = icmp eq %struct._CHANNEL_SETUP_REC* %39, null, !dbg !1365
  br i1 %40, label %41, label %63, !dbg !1366

; <label>:41:                                     ; preds = %31
  %42 = load i8*, i8** %6, align 8, !dbg !1367
  %43 = getelementptr inbounds i8, i8* %42, i64 0, !dbg !1367
  %44 = load i8, i8* %43, align 1, !dbg !1367
  %45 = sext i8 %44 to i32, !dbg !1367
  %46 = icmp eq i32 %45, 33, !dbg !1369
  br i1 %46, label %47, label %63, !dbg !1370

; <label>:47:                                     ; preds = %41
  %48 = load i8*, i8** %6, align 8, !dbg !1371
  %49 = call i64 @strlen(i8* %48) #5, !dbg !1372
  %50 = icmp ugt i64 %49, 6, !dbg !1373
  br i1 %50, label %51, label %63, !dbg !1374

; <label>:51:                                     ; preds = %47
  %52 = load i8*, i8** %6, align 8, !dbg !1376
  %53 = getelementptr inbounds i8, i8* %52, i64 6, !dbg !1378
  %54 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* %53), !dbg !1379
  store i8* %54, i8** %7, align 8, !dbg !1380
  %55 = load i8*, i8** %7, align 8, !dbg !1381
  %56 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1382
  %57 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %56, i32 0, i32 3, !dbg !1383
  %58 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %57, align 8, !dbg !1383
  %59 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %58, i32 0, i32 12, !dbg !1384
  %60 = load i8*, i8** %59, align 8, !dbg !1384
  %61 = call %struct._CHANNEL_SETUP_REC* @channel_setup_find(i8* %55, i8* %60), !dbg !1385
  store %struct._CHANNEL_SETUP_REC* %61, %struct._CHANNEL_SETUP_REC** %8, align 8, !dbg !1386
  %62 = load i8*, i8** %7, align 8, !dbg !1387
  call void @g_free(i8* %62), !dbg !1388
  br label %63, !dbg !1389

; <label>:63:                                     ; preds = %51, %47, %41, %31
  %64 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %8, align 8, !dbg !1390
  %65 = icmp ne %struct._CHANNEL_SETUP_REC* %64, null, !dbg !1392
  br i1 %65, label %66, label %85, !dbg !1393

; <label>:66:                                     ; preds = %63
  %67 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %8, align 8, !dbg !1394
  %68 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %67, i32 0, i32 7, !dbg !1396
  %69 = load i8, i8* %68, align 8, !dbg !1396
  %70 = and i8 %69, 1, !dbg !1396
  %71 = zext i8 %70 to i32, !dbg !1396
  %72 = icmp ne i32 %71, 0, !dbg !1394
  br i1 %72, label %73, label %85, !dbg !1397

; <label>:73:                                     ; preds = %66
  %74 = call i32 @settings_get_bool(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0)), !dbg !1398
  %75 = icmp ne i32 %74, 0, !dbg !1398
  br i1 %75, label %76, label %85, !dbg !1400

; <label>:76:                                     ; preds = %73
  %77 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1401
  %78 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %77, i32 0, i32 25, !dbg !1402
  %79 = load void (%struct._SERVER_REC*, i8*, i32)*, void (%struct._SERVER_REC*, i8*, i32)** %78, align 8, !dbg !1402
  %80 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1403
  %81 = bitcast %struct._IRC_SERVER_REC* %80 to i8*, !dbg !1403
  %82 = call i8* @module_check_cast(i8* %81, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0)), !dbg !1404
  %83 = bitcast i8* %82 to %struct._SERVER_REC*, !dbg !1405
  %84 = load i8*, i8** %6, align 8, !dbg !1406
  call void %79(%struct._SERVER_REC* %83, i8* %84, i32 1), !dbg !1407
  br label %85, !dbg !1401

; <label>:85:                                     ; preds = %76, %73, %66, %63
  br label %86, !dbg !1408

; <label>:86:                                     ; preds = %85, %15
  %87 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1409
  %88 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %87, i32 0, i32 18, !dbg !1410
  %89 = load i8*, i8** %88, align 8, !dbg !1410
  call void @g_free(i8* %89), !dbg !1411
  %90 = load i8*, i8** %6, align 8, !dbg !1412
  %91 = call noalias i8* @g_strdup(i8* %90), !dbg !1413
  %92 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1414
  %93 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %92, i32 0, i32 18, !dbg !1415
  store i8* %91, i8** %93, align 8, !dbg !1416
  %94 = load i8*, i8** %5, align 8, !dbg !1417
  call void @g_free(i8* %94), !dbg !1418
  br label %95, !dbg !1419

; <label>:95:                                     ; preds = %86, %13
  ret void, !dbg !1420
}

; Function Attrs: nounwind uwtable
define internal void @event_topic_get(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !1422 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1423, metadata !688), !dbg !1424
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1425, metadata !688), !dbg !1426
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1427, metadata !688), !dbg !1428
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1429, metadata !688), !dbg !1430
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1431, metadata !688), !dbg !1432
  br label %8, !dbg !1433, !llvm.loop !1434

; <label>:8:                                      ; preds = %2
  %9 = load i8*, i8** %4, align 8, !dbg !1435
  %10 = icmp ne i8* %9, null, !dbg !1439
  br i1 %10, label %11, label %12, !dbg !1435

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !1440

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.event_topic_get, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0)), !dbg !1443
  br label %21, !dbg !1446

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !1447

; <label>:14:                                     ; preds = %13
  %15 = load i8*, i8** %4, align 8, !dbg !1449
  %16 = call i8* (i8*, i32, ...) @event_get_params(i8* %15, i32 3, i8* null, i8** %6, i8** %7), !dbg !1450
  store i8* %16, i8** %5, align 8, !dbg !1451
  %17 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1452
  %18 = load i8*, i8** %6, align 8, !dbg !1453
  %19 = load i8*, i8** %7, align 8, !dbg !1454
  call void @channel_change_topic(%struct._IRC_SERVER_REC* %17, i8* %18, i8* %19, i8* null, i64 0), !dbg !1455
  %20 = load i8*, i8** %5, align 8, !dbg !1456
  call void @g_free(i8* %20), !dbg !1457
  br label %21, !dbg !1458

; <label>:21:                                     ; preds = %14, %12
  ret void, !dbg !1459
}

; Function Attrs: nounwind uwtable
define internal void @event_topic_info(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !1461 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1462, metadata !688), !dbg !1463
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1464, metadata !688), !dbg !1465
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1466, metadata !688), !dbg !1467
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1468, metadata !688), !dbg !1469
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1470, metadata !688), !dbg !1471
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1472, metadata !688), !dbg !1473
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1474, metadata !688), !dbg !1475
  br label %10, !dbg !1476, !llvm.loop !1477

; <label>:10:                                     ; preds = %2
  %11 = load i8*, i8** %4, align 8, !dbg !1478
  %12 = icmp ne i8* %11, null, !dbg !1482
  br i1 %12, label %13, label %14, !dbg !1478

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !1483

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.event_topic_info, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0)), !dbg !1486
  br label %26, !dbg !1489

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !1490

; <label>:16:                                     ; preds = %15
  %17 = load i8*, i8** %4, align 8, !dbg !1492
  %18 = call i8* (i8*, i32, ...) @event_get_params(i8* %17, i32 4, i8* null, i8** %6, i8** %7, i8** %8), !dbg !1493
  store i8* %18, i8** %5, align 8, !dbg !1494
  %19 = load i8*, i8** %8, align 8, !dbg !1495
  %20 = call i64 @atol(i8* %19) #5, !dbg !1496
  store i64 %20, i64* %9, align 8, !dbg !1497
  %21 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1498
  %22 = load i8*, i8** %6, align 8, !dbg !1499
  %23 = load i8*, i8** %7, align 8, !dbg !1500
  %24 = load i64, i64* %9, align 8, !dbg !1501
  call void @channel_change_topic(%struct._IRC_SERVER_REC* %21, i8* %22, i8* null, i8* %23, i64 %24), !dbg !1502
  %25 = load i8*, i8** %5, align 8, !dbg !1503
  call void @g_free(i8* %25), !dbg !1504
  br label %26, !dbg !1505

; <label>:26:                                     ; preds = %16, %14
  ret void, !dbg !1506
}

; Function Attrs: nounwind uwtable
define void @channel_events_deinit() #0 !dbg !1508 {
  call void @signal_remove_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @irc_server_event to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1509
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_no_such_channel to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1510
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_duplicate_channel to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1511
  call void @signal_remove_full(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_topic to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1512
  call void @signal_remove_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_join to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1513
  call void @signal_remove_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_part to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1514
  call void @signal_remove_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_kick to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1515
  call void @signal_remove_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_invite to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1516
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_topic_get to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1517
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_topic_info to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1518
  ret void, !dbg !1519
}

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare i8* @event_get_params(i8*, i32, ...) #1

; Function Attrs: nounwind uwtable
define internal void @check_join_failure(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !1520 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._CHANNEL_REC*, align 8
  %6 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1521, metadata !688), !dbg !1522
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1523, metadata !688), !dbg !1524
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %5, metadata !1525, metadata !688), !dbg !1526
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1527, metadata !688), !dbg !1528
  %7 = load i8*, i8** %4, align 8, !dbg !1529
  %8 = getelementptr inbounds i8, i8* %7, i64 0, !dbg !1529
  %9 = load i8, i8* %8, align 1, !dbg !1529
  %10 = sext i8 %9 to i32, !dbg !1529
  %11 = icmp eq i32 %10, 33, !dbg !1531
  br i1 %11, label %12, label %21, !dbg !1532

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %4, align 8, !dbg !1533
  %14 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !1533
  %15 = load i8, i8* %14, align 1, !dbg !1533
  %16 = sext i8 %15 to i32, !dbg !1533
  %17 = icmp eq i32 %16, 33, !dbg !1535
  br i1 %17, label %18, label %21, !dbg !1536

; <label>:18:                                     ; preds = %12
  %19 = load i8*, i8** %4, align 8, !dbg !1537
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !1537
  store i8* %20, i8** %4, align 8, !dbg !1537
  br label %21, !dbg !1538

; <label>:21:                                     ; preds = %18, %12, %2
  %22 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1539
  %23 = bitcast %struct._IRC_SERVER_REC* %22 to i8*, !dbg !1539
  %24 = call i8* @module_check_cast(i8* %23, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0)), !dbg !1540
  %25 = bitcast i8* %24 to %struct._SERVER_REC*, !dbg !1541
  %26 = load i8*, i8** %4, align 8, !dbg !1542
  %27 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %25, i8* %26), !dbg !1543
  store %struct._CHANNEL_REC* %27, %struct._CHANNEL_REC** %5, align 8, !dbg !1545
  %28 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %5, align 8, !dbg !1546
  %29 = icmp eq %struct._CHANNEL_REC* %28, null, !dbg !1548
  br i1 %29, label %30, label %51, !dbg !1549

; <label>:30:                                     ; preds = %21
  %31 = load i8*, i8** %4, align 8, !dbg !1550
  %32 = getelementptr inbounds i8, i8* %31, i64 0, !dbg !1550
  %33 = load i8, i8* %32, align 1, !dbg !1550
  %34 = sext i8 %33 to i32, !dbg !1550
  %35 = icmp eq i32 %34, 33, !dbg !1552
  br i1 %35, label %36, label %51, !dbg !1553

; <label>:36:                                     ; preds = %30
  %37 = load i8*, i8** %4, align 8, !dbg !1554
  %38 = call i64 @strlen(i8* %37) #5, !dbg !1556
  %39 = icmp ugt i64 %38, 6, !dbg !1557
  br i1 %39, label %40, label %51, !dbg !1558

; <label>:40:                                     ; preds = %36
  %41 = load i8*, i8** %4, align 8, !dbg !1559
  %42 = getelementptr inbounds i8, i8* %41, i64 6, !dbg !1561
  %43 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* %42), !dbg !1562
  store i8* %43, i8** %6, align 8, !dbg !1563
  %44 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1564
  %45 = bitcast %struct._IRC_SERVER_REC* %44 to i8*, !dbg !1564
  %46 = call i8* @module_check_cast(i8* %45, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0)), !dbg !1565
  %47 = bitcast i8* %46 to %struct._SERVER_REC*, !dbg !1566
  %48 = load i8*, i8** %6, align 8, !dbg !1567
  %49 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %47, i8* %48), !dbg !1568
  store %struct._CHANNEL_REC* %49, %struct._CHANNEL_REC** %5, align 8, !dbg !1570
  %50 = load i8*, i8** %6, align 8, !dbg !1571
  call void @g_free(i8* %50), !dbg !1572
  br label %51, !dbg !1573

; <label>:51:                                     ; preds = %40, %36, %30, %21
  %52 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %5, align 8, !dbg !1574
  %53 = icmp ne %struct._CHANNEL_REC* %52, null, !dbg !1576
  br i1 %53, label %54, label %69, !dbg !1577

; <label>:54:                                     ; preds = %51
  %55 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %5, align 8, !dbg !1578
  %56 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %55, i32 0, i32 21, !dbg !1580
  %57 = load i16, i16* %56, align 8, !dbg !1580
  %58 = lshr i16 %57, 4, !dbg !1580
  %59 = and i16 %58, 1, !dbg !1580
  %60 = zext i16 %59 to i32, !dbg !1580
  %61 = icmp ne i32 %60, 0, !dbg !1578
  br i1 %61, label %69, label %62, !dbg !1581

; <label>:62:                                     ; preds = %54
  %63 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %5, align 8, !dbg !1582
  %64 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %63, i32 0, i32 21, !dbg !1584
  %65 = load i16, i16* %64, align 8, !dbg !1585
  %66 = and i16 %65, -33, !dbg !1585
  %67 = or i16 %66, 32, !dbg !1585
  store i16 %67, i16* %64, align 8, !dbg !1585
  %68 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %5, align 8, !dbg !1586
  call void @channel_destroy(%struct._CHANNEL_REC* %68), !dbg !1587
  br label %69, !dbg !1588

; <label>:69:                                     ; preds = %62, %54, %51
  ret void, !dbg !1589
}

declare void @g_free(i8*) #1

declare %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC*, i8*) #1

declare i8* @module_check_cast(i8*, i32, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare void @channel_destroy(%struct._CHANNEL_REC*) #1

declare %struct._CHANNEL_SETUP_REC* @channel_setup_find(i8*, i8*) #1

declare void @irc_send_cmdv(%struct._IRC_SERVER_REC*, i8*, ...) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

declare noalias i8* @g_strdup(i8*) #1

declare noalias i8* @g_strconcat(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @channel_change_topic(%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i64) #0 !dbg !1590 {
  %6 = alloca %struct._IRC_SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct._CHANNEL_REC*, align 8
  %12 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %6, metadata !1593, metadata !688), !dbg !1594
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1595, metadata !688), !dbg !1596
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1597, metadata !688), !dbg !1598
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1599, metadata !688), !dbg !1600
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1601, metadata !688), !dbg !1602
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %11, metadata !1603, metadata !688), !dbg !1604
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1605, metadata !688), !dbg !1606
  store i8* null, i8** %12, align 8, !dbg !1606
  %13 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1607
  %14 = bitcast %struct._IRC_SERVER_REC* %13 to i8*, !dbg !1607
  %15 = call i8* @module_check_cast(i8* %14, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0)), !dbg !1608
  %16 = bitcast i8* %15 to %struct._SERVER_REC*, !dbg !1609
  %17 = load i8*, i8** %7, align 8, !dbg !1610
  %18 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %16, i8* %17), !dbg !1611
  store %struct._CHANNEL_REC* %18, %struct._CHANNEL_REC** %11, align 8, !dbg !1613
  %19 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %11, align 8, !dbg !1614
  %20 = icmp eq %struct._CHANNEL_REC* %19, null, !dbg !1616
  br i1 %20, label %21, label %22, !dbg !1617

; <label>:21:                                     ; preds = %5
  br label %69, !dbg !1618

; <label>:22:                                     ; preds = %5
  %23 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1620
  %24 = bitcast %struct._IRC_SERVER_REC* %23 to i8*, !dbg !1620
  %25 = call i8* @module_check_cast(i8* %24, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0)), !dbg !1621
  %26 = bitcast i8* %25 to %struct._SERVER_REC*, !dbg !1622
  %27 = load i8*, i8** %8, align 8, !dbg !1623
  %28 = load i8*, i8** %7, align 8, !dbg !1624
  %29 = call i8* @recode_in(%struct._SERVER_REC* %26, i8* %27, i8* %28), !dbg !1625
  store i8* %29, i8** %12, align 8, !dbg !1626
  %30 = load i8*, i8** %8, align 8, !dbg !1627
  %31 = icmp ne i8* %30, null, !dbg !1629
  br i1 %31, label %32, label %46, !dbg !1630

; <label>:32:                                     ; preds = %22
  %33 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %11, align 8, !dbg !1631
  %34 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %33, i32 0, i32 12, !dbg !1633
  %35 = load i8*, i8** %34, align 8, !dbg !1633
  call void @g_free(i8* %35), !dbg !1634
  %36 = load i8*, i8** %12, align 8, !dbg !1635
  %37 = icmp eq i8* %36, null, !dbg !1636
  br i1 %37, label %38, label %39, !dbg !1635

; <label>:38:                                     ; preds = %32
  br label %42, !dbg !1637

; <label>:39:                                     ; preds = %32
  %40 = load i8*, i8** %12, align 8, !dbg !1639
  %41 = call noalias i8* @g_strdup(i8* %40), !dbg !1641
  br label %42, !dbg !1642

; <label>:42:                                     ; preds = %39, %38
  %43 = phi i8* [ null, %38 ], [ %41, %39 ], !dbg !1643
  %44 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %11, align 8, !dbg !1645
  %45 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %44, i32 0, i32 12, !dbg !1646
  store i8* %43, i8** %45, align 8, !dbg !1647
  br label %46, !dbg !1648

; <label>:46:                                     ; preds = %42, %22
  %47 = load i8*, i8** %12, align 8, !dbg !1649
  call void @g_free(i8* %47), !dbg !1650
  %48 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %11, align 8, !dbg !1651
  %49 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %48, i32 0, i32 13, !dbg !1652
  %50 = load i8*, i8** %49, align 8, !dbg !1652
  call void @g_free(i8* %50), !dbg !1653
  %51 = load i8*, i8** %9, align 8, !dbg !1654
  %52 = call noalias i8* @g_strdup(i8* %51), !dbg !1655
  %53 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %11, align 8, !dbg !1656
  %54 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %53, i32 0, i32 13, !dbg !1657
  store i8* %52, i8** %54, align 8, !dbg !1658
  %55 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %11, align 8, !dbg !1659
  %56 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %55, i32 0, i32 13, !dbg !1661
  %57 = load i8*, i8** %56, align 8, !dbg !1661
  %58 = icmp eq i8* %57, null, !dbg !1662
  br i1 %58, label %59, label %62, !dbg !1663

; <label>:59:                                     ; preds = %46
  %60 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %11, align 8, !dbg !1664
  %61 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %60, i32 0, i32 14, !dbg !1666
  store i64 0, i64* %61, align 8, !dbg !1667
  br label %66, !dbg !1668

; <label>:62:                                     ; preds = %46
  %63 = load i64, i64* %10, align 8, !dbg !1669
  %64 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %11, align 8, !dbg !1671
  %65 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %64, i32 0, i32 14, !dbg !1672
  store i64 %63, i64* %65, align 8, !dbg !1673
  br label %66

; <label>:66:                                     ; preds = %62, %59
  %67 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %11, align 8, !dbg !1674
  %68 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i32 0, i32 0), i32 1, %struct._CHANNEL_REC* %67), !dbg !1675
  br label %69, !dbg !1676

; <label>:69:                                     ; preds = %66, %21
  ret void, !dbg !1677
}

; Function Attrs: nounwind
declare i64 @time(i64*) #4

declare i8* @recode_in(%struct._SERVER_REC*, i8*, i8*) #1

declare i32 @signal_emit(i8*, i32, ...) #1

declare i32 @g_ascii_strcasecmp(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._IRC_CHANNEL_REC* @channel_find_unjoined(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !1678 {
  %3 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._IRC_CHANNEL_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !1681, metadata !688), !dbg !1682
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1683, metadata !688), !dbg !1684
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !1685, metadata !688), !dbg !1686
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1687, metadata !688), !dbg !1688
  %9 = load i8*, i8** %5, align 8, !dbg !1689
  %10 = call i64 @strlen(i8* %9) #5, !dbg !1690
  %11 = trunc i64 %10 to i32, !dbg !1690
  store i32 %11, i32* %7, align 4, !dbg !1691
  %12 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1692
  %13 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %12, i32 0, i32 23, !dbg !1694
  %14 = load %struct._GSList*, %struct._GSList** %13, align 8, !dbg !1694
  store %struct._GSList* %14, %struct._GSList** %6, align 8, !dbg !1695
  br label %15, !dbg !1696

; <label>:15:                                     ; preds = %67, %2
  %16 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1697
  %17 = icmp ne %struct._GSList* %16, null, !dbg !1700
  br i1 %17, label %18, label %71, !dbg !1701

; <label>:18:                                     ; preds = %15
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %8, metadata !1702, metadata !688), !dbg !1704
  %19 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1705
  %20 = getelementptr inbounds %struct._GSList, %struct._GSList* %19, i32 0, i32 0, !dbg !1706
  %21 = load i8*, i8** %20, align 8, !dbg !1706
  %22 = bitcast i8* %21 to %struct._IRC_CHANNEL_REC*, !dbg !1705
  store %struct._IRC_CHANNEL_REC* %22, %struct._IRC_CHANNEL_REC** %8, align 8, !dbg !1704
  %23 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %8, align 8, !dbg !1707
  %24 = bitcast %struct._IRC_CHANNEL_REC* %23 to i8*, !dbg !1707
  %25 = call i8* @module_check_cast_module(i8* %24, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0)), !dbg !1709
  %26 = bitcast i8* %25 to %struct._CHANNEL_REC*, !dbg !1710
  %27 = bitcast %struct._CHANNEL_REC* %26 to i8*, !dbg !1711
  %28 = call i8* @chat_protocol_check_cast(i8* %27, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0)), !dbg !1712
  %29 = bitcast i8* %28 to %struct._IRC_CHANNEL_REC*, !dbg !1714
  %30 = icmp ne %struct._IRC_CHANNEL_REC* %29, null, !dbg !1714
  br i1 %30, label %31, label %32, !dbg !1715

; <label>:31:                                     ; preds = %18
  br i1 false, label %41, label %33, !dbg !1716

; <label>:32:                                     ; preds = %18
  br i1 false, label %33, label %41, !dbg !1718

; <label>:33:                                     ; preds = %32, %31
  %34 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %8, align 8, !dbg !1720
  %35 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %34, i32 0, i32 21, !dbg !1722
  %36 = load i16, i16* %35, align 8, !dbg !1722
  %37 = lshr i16 %36, 4, !dbg !1722
  %38 = and i16 %37, 1, !dbg !1722
  %39 = zext i16 %38 to i32, !dbg !1722
  %40 = icmp ne i32 %39, 0, !dbg !1720
  br i1 %40, label %41, label %42, !dbg !1723

; <label>:41:                                     ; preds = %33, %32, %31
  br label %67, !dbg !1724

; <label>:42:                                     ; preds = %33
  %43 = load i8*, i8** %5, align 8, !dbg !1725
  %44 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %8, align 8, !dbg !1727
  %45 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %44, i32 0, i32 6, !dbg !1728
  %46 = load i8*, i8** %45, align 8, !dbg !1728
  %47 = load i32, i32* %7, align 4, !dbg !1729
  %48 = sext i32 %47 to i64, !dbg !1729
  %49 = call i32 @g_ascii_strncasecmp(i8* %43, i8* %46, i64 %48), !dbg !1730
  %50 = icmp eq i32 %49, 0, !dbg !1731
  br i1 %50, label %51, label %66, !dbg !1732

; <label>:51:                                     ; preds = %42
  %52 = load i32, i32* %7, align 4, !dbg !1733
  %53 = icmp sgt i32 %52, 20, !dbg !1734
  br i1 %53, label %64, label %54, !dbg !1735

; <label>:54:                                     ; preds = %51
  %55 = load i32, i32* %7, align 4, !dbg !1736
  %56 = sext i32 %55 to i64, !dbg !1738
  %57 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %8, align 8, !dbg !1738
  %58 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %57, i32 0, i32 6, !dbg !1739
  %59 = load i8*, i8** %58, align 8, !dbg !1739
  %60 = getelementptr inbounds i8, i8* %59, i64 %56, !dbg !1738
  %61 = load i8, i8* %60, align 1, !dbg !1738
  %62 = sext i8 %61 to i32, !dbg !1738
  %63 = icmp eq i32 %62, 0, !dbg !1740
  br i1 %63, label %64, label %66, !dbg !1741

; <label>:64:                                     ; preds = %54, %51
  %65 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %8, align 8, !dbg !1743
  store %struct._IRC_CHANNEL_REC* %65, %struct._IRC_CHANNEL_REC** %3, align 8, !dbg !1744
  br label %72, !dbg !1744

; <label>:66:                                     ; preds = %54, %42
  br label %67, !dbg !1745

; <label>:67:                                     ; preds = %66, %41
  %68 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1746
  %69 = getelementptr inbounds %struct._GSList, %struct._GSList* %68, i32 0, i32 1, !dbg !1748
  %70 = load %struct._GSList*, %struct._GSList** %69, align 8, !dbg !1748
  store %struct._GSList* %70, %struct._GSList** %6, align 8, !dbg !1749
  br label %15, !dbg !1750, !llvm.loop !1751

; <label>:71:                                     ; preds = %15
  store %struct._IRC_CHANNEL_REC* null, %struct._IRC_CHANNEL_REC** %3, align 8, !dbg !1753
  br label %72, !dbg !1753

; <label>:72:                                     ; preds = %71, %64
  %73 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %3, align 8, !dbg !1754
  ret %struct._IRC_CHANNEL_REC* %73, !dbg !1754
}

declare void @channel_change_name(%struct._CHANNEL_REC*, i8*) #1

declare i8* @module_check_cast_module(i8*, i32, i8*, i8*) #1

declare i8* @chat_protocol_check_cast(i8*, i32, i8*) #1

declare void @channel_change_visible_name(%struct._CHANNEL_REC*, i8*) #1

declare %struct._IRC_CHANNEL_REC* @irc_channel_create(%struct._IRC_SERVER_REC*, i8*, i8*, i32) #1

declare i32 @g_strcmp0(i8*, i8*) #1

declare i32 @g_ascii_strncasecmp(i8*, i8*, i64) #1

declare void @irc_server_purge_output(%struct._IRC_SERVER_REC*, i8*) #1

declare i32 @settings_get_bool(i8*) #1

; Function Attrs: nounwind readonly
declare i64 @atol(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!666, !667}
!llvm.ident = !{!668}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !35)
!1 = !DIFile(filename: "line111-channel-events.o.i", directory: "/home/lichi/Desktop/irssi/task1")
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
!35 = !{!36, !43, !44, !112, !344, !371, !458, !290}
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !37, line: 9, baseType: !38)
!37 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !41, !41, !41, !41, !41, !41}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !46, line: 107, baseType: !47)
!46 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !48, line: 30, size: 2240, align: 64, elements: !49)
!48 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!49 = !{!50, !53, !54, !55, !289, !294, !295, !296, !297, !298, !299, !300, !301, !302, !306, !307, !311, !312, !313, !317, !322, !323, !324, !325, !326, !327, !328, !329, !336, !337, !338, !339, !340, !346, !350, !354, !358, !362, !367, !446, !453, !457}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !47, file: !51, line: 3, baseType: !52, size: 32, align: 32)
!51 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!52 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !47, file: !51, line: 4, baseType: !52, size: 32, align: 32, offset: 32)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !47, file: !51, line: 6, baseType: !52, size: 32, align: 32, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !47, file: !51, line: 8, baseType: !56, size: 64, align: 64, offset: 128)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !46, line: 113, baseType: !58)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !48, line: 25, size: 1920, align: 64, elements: !59)
!59 = !{!60, !62, !63, !64, !67, !68, !69, !70, !71, !73, !74, !75, !76, !77, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !58, file: !61, line: 3, baseType: !52, size: 32, align: 32)
!61 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!62 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !58, file: !61, line: 4, baseType: !52, size: 32, align: 32, offset: 32)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !58, file: !61, line: 6, baseType: !52, size: 32, align: 32, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !58, file: !61, line: 9, baseType: !65, size: 64, align: 64, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!66 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !58, file: !61, line: 10, baseType: !52, size: 32, align: 32, offset: 192)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !58, file: !61, line: 11, baseType: !65, size: 64, align: 64, offset: 256)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !58, file: !61, line: 11, baseType: !65, size: 64, align: 64, offset: 320)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !58, file: !61, line: 11, baseType: !65, size: 64, align: 64, offset: 384)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !58, file: !61, line: 13, baseType: !72, size: 16, align: 16, offset: 448)
!72 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !58, file: !61, line: 14, baseType: !65, size: 64, align: 64, offset: 512)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !58, file: !61, line: 15, baseType: !65, size: 64, align: 64, offset: 576)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !58, file: !61, line: 16, baseType: !52, size: 32, align: 32, offset: 640)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !58, file: !61, line: 17, baseType: !65, size: 64, align: 64, offset: 704)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !58, file: !61, line: 19, baseType: !78, size: 64, align: 64, offset: 768)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !46, line: 99, baseType: !80)
!80 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !46, line: 99, flags: DIFlagFwdDecl)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !58, file: !61, line: 19, baseType: !78, size: 64, align: 64, offset: 832)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !58, file: !61, line: 21, baseType: !65, size: 64, align: 64, offset: 896)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !58, file: !61, line: 22, baseType: !65, size: 64, align: 64, offset: 960)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !58, file: !61, line: 23, baseType: !65, size: 64, align: 64, offset: 1024)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !58, file: !61, line: 24, baseType: !65, size: 64, align: 64, offset: 1088)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !58, file: !61, line: 26, baseType: !65, size: 64, align: 64, offset: 1152)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !58, file: !61, line: 27, baseType: !65, size: 64, align: 64, offset: 1216)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !58, file: !61, line: 28, baseType: !65, size: 64, align: 64, offset: 1280)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !58, file: !61, line: 29, baseType: !65, size: 64, align: 64, offset: 1344)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !58, file: !61, line: 30, baseType: !65, size: 64, align: 64, offset: 1408)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !58, file: !61, line: 31, baseType: !65, size: 64, align: 64, offset: 1472)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !58, file: !61, line: 32, baseType: !65, size: 64, align: 64, offset: 1536)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !58, file: !61, line: 33, baseType: !65, size: 64, align: 64, offset: 1600)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !58, file: !61, line: 35, baseType: !95, size: 64, align: 64, offset: 1664)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64, align: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !97)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !98)
!98 = !{!99, !102, !246, !247, !252, !253, !254, !255, !256, !265, !266, !267, !271, !272, !273, !274, !275, !276, !277, !278}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !97, file: !4, line: 100, baseType: !100, size: 32, align: 32)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !101, line: 49, baseType: !52)
!101 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!102 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !97, file: !4, line: 101, baseType: !103, size: 64, align: 64, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64, align: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !105)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !106)
!106 = !{!107, !131, !137, !144, !148, !233, !237, !242}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !105, file: !4, line: 133, baseType: !108, size: 64, align: 64)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64, align: 64)
!109 = !DISubroutineType(types: !110)
!110 = !{!111, !95, !112, !114, !117, !118}
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64, align: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !101, line: 46, baseType: !66)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !115, line: 66, baseType: !116)
!115 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!116 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64, align: 64)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64, align: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !121, line: 42, baseType: !122)
!121 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !121, line: 44, size: 128, align: 64, elements: !123)
!123 = !{!124, !129, !130}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !122, file: !121, line: 46, baseType: !125, size: 32, align: 32)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !126, line: 36, baseType: !127)
!126 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !115, line: 45, baseType: !128)
!128 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !122, file: !121, line: 47, baseType: !100, size: 32, align: 32, offset: 32)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !122, file: !121, line: 48, baseType: !112, size: 64, align: 64, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !105, file: !4, line: 138, baseType: !132, size: 64, align: 64, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64, align: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{!111, !95, !135, !114, !117, !118}
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64, align: 64)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !105, file: !4, line: 143, baseType: !138, size: 64, align: 64, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64, align: 64)
!139 = !DISubroutineType(types: !140)
!140 = !{!111, !95, !141, !143, !118}
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !115, line: 51, baseType: !142)
!142 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !105, file: !4, line: 147, baseType: !145, size: 64, align: 64, offset: 192)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64, align: 64)
!146 = !DISubroutineType(types: !147)
!147 = !{!111, !95, !118}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !105, file: !4, line: 149, baseType: !149, size: 64, align: 64, offset: 256)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!150 = !DISubroutineType(types: !151)
!151 = !{!152, !95, !232}
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64, align: 64)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !154)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !155)
!155 = !{!156, !158, !179, !208, !210, !214, !215, !216, !217, !225, !226, !227, !228}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !154, file: !16, line: 174, baseType: !157, size: 64, align: 64)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !101, line: 77, baseType: !43)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !154, file: !16, line: 175, baseType: !159, size: 64, align: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64, align: 64)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !161)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !162)
!162 = !{!163, !167, !168}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !161, file: !16, line: 198, baseType: !164, size: 64, align: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64, align: 64)
!165 = !DISubroutineType(types: !166)
!166 = !{null, !157}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !161, file: !16, line: 199, baseType: !164, size: 64, align: 64, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !161, file: !16, line: 200, baseType: !169, size: 64, align: 64, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64, align: 64)
!170 = !DISubroutineType(types: !171)
!171 = !{null, !157, !152, !172, !178}
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64, align: 64)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64, align: 64)
!175 = !DISubroutineType(types: !176)
!176 = !{!177, !157}
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !101, line: 50, baseType: !100)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64, align: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !154, file: !16, line: 177, baseType: !180, size: 64, align: 64, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64, align: 64)
!181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !183)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !184)
!184 = !{!185, !190, !194, !198, !202, !203}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !183, file: !16, line: 216, baseType: !186, size: 64, align: 64)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64, align: 64)
!187 = !DISubroutineType(types: !188)
!188 = !{!177, !152, !189}
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64, align: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !183, file: !16, line: 218, baseType: !191, size: 64, align: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64, align: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{!177, !152}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !183, file: !16, line: 219, baseType: !195, size: 64, align: 64, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64, align: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{!177, !152, !173, !157}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !183, file: !16, line: 222, baseType: !199, size: 64, align: 64, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64, align: 64)
!200 = !DISubroutineType(types: !201)
!201 = !{null, !152}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !183, file: !16, line: 226, baseType: !173, size: 64, align: 64, offset: 256)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !183, file: !16, line: 227, baseType: !204, size: 64, align: 64, offset: 320)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64, align: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{null}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !154, file: !16, line: 178, baseType: !209, size: 32, align: 32, offset: 192)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !101, line: 55, baseType: !128)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !154, file: !16, line: 180, baseType: !211, size: 64, align: 64, offset: 256)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64, align: 64)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !213)
!213 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !154, file: !16, line: 182, baseType: !100, size: 32, align: 32, offset: 320)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !154, file: !16, line: 183, baseType: !209, size: 32, align: 32, offset: 352)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !154, file: !16, line: 184, baseType: !209, size: 32, align: 32, offset: 384)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !154, file: !16, line: 186, baseType: !218, size: 64, align: 64, offset: 448)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64, align: 64)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !220, line: 37, baseType: !221)
!220 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !220, line: 39, size: 128, align: 64, elements: !222)
!222 = !{!223, !224}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !221, file: !220, line: 41, baseType: !157, size: 64, align: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !221, file: !220, line: 42, baseType: !218, size: 64, align: 64, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !154, file: !16, line: 188, baseType: !152, size: 64, align: 64, offset: 512)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !154, file: !16, line: 189, baseType: !152, size: 64, align: 64, offset: 576)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !154, file: !16, line: 191, baseType: !65, size: 64, align: 64, offset: 640)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !154, file: !16, line: 193, baseType: !229, size: 64, align: 64, offset: 704)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64, align: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !231)
!231 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !105, file: !4, line: 151, baseType: !234, size: 64, align: 64, offset: 320)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64, align: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{null, !95}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !105, file: !4, line: 152, baseType: !238, size: 64, align: 64, offset: 384)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, align: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!111, !95, !241, !118}
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !105, file: !4, line: 155, baseType: !243, size: 64, align: 64, offset: 448)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64, align: 64)
!244 = !DISubroutineType(types: !245)
!245 = !{!241, !95}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !97, file: !4, line: 103, baseType: !112, size: 64, align: 64, offset: 128)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !97, file: !4, line: 104, baseType: !248, size: 64, align: 64, offset: 192)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !249, line: 77, baseType: !250)
!249 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64, align: 64)
!251 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !249, line: 77, flags: DIFlagFwdDecl)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !97, file: !4, line: 105, baseType: !248, size: 64, align: 64, offset: 256)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !97, file: !4, line: 106, baseType: !112, size: 64, align: 64, offset: 320)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !97, file: !4, line: 107, baseType: !209, size: 32, align: 32, offset: 384)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !97, file: !4, line: 109, baseType: !114, size: 64, align: 64, offset: 448)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !97, file: !4, line: 110, baseType: !257, size: 64, align: 64, offset: 512)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64, align: 64)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !259, line: 39, baseType: !260)
!259 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !259, line: 41, size: 192, align: 64, elements: !261)
!261 = !{!262, !263, !264}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !260, file: !259, line: 43, baseType: !112, size: 64, align: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !260, file: !259, line: 44, baseType: !114, size: 64, align: 64, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !260, file: !259, line: 45, baseType: !114, size: 64, align: 64, offset: 128)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !97, file: !4, line: 111, baseType: !257, size: 64, align: 64, offset: 576)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !97, file: !4, line: 112, baseType: !257, size: 64, align: 64, offset: 640)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !97, file: !4, line: 113, baseType: !268, size: 48, align: 8, offset: 704)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 48, align: 8, elements: !269)
!269 = !{!270}
!270 = !DISubrange(count: 6)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !97, file: !4, line: 117, baseType: !209, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !97, file: !4, line: 118, baseType: !209, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !97, file: !4, line: 119, baseType: !209, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !97, file: !4, line: 120, baseType: !209, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !97, file: !4, line: 121, baseType: !209, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !97, file: !4, line: 122, baseType: !209, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !97, file: !4, line: 124, baseType: !157, size: 64, align: 64, offset: 768)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !97, file: !4, line: 125, baseType: !157, size: 64, align: 64, offset: 832)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !58, file: !61, line: 38, baseType: !128, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !58, file: !61, line: 39, baseType: !128, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !58, file: !61, line: 40, baseType: !128, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !58, file: !61, line: 41, baseType: !128, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !58, file: !61, line: 42, baseType: !128, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !58, file: !61, line: 43, baseType: !128, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !58, file: !61, line: 44, baseType: !128, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !58, file: !61, line: 45, baseType: !128, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !58, file: !61, line: 46, baseType: !65, size: 64, align: 64, offset: 1792)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !58, file: !61, line: 47, baseType: !65, size: 64, align: 64, offset: 1856)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !47, file: !51, line: 9, baseType: !290, size: 64, align: 64, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !291, line: 75, baseType: !292)
!291 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !293, line: 139, baseType: !142)
!293 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!294 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !47, file: !51, line: 10, baseType: !290, size: 64, align: 64, offset: 256)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !47, file: !51, line: 12, baseType: !65, size: 64, align: 64, offset: 320)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !47, file: !51, line: 13, baseType: !65, size: 64, align: 64, offset: 384)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !47, file: !51, line: 15, baseType: !128, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !47, file: !51, line: 16, baseType: !128, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !47, file: !51, line: 17, baseType: !128, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !47, file: !51, line: 18, baseType: !128, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !47, file: !51, line: 19, baseType: !128, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !47, file: !51, line: 21, baseType: !303, size: 64, align: 64, offset: 512)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64, align: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !46, line: 102, baseType: !305)
!305 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !46, line: 102, flags: DIFlagFwdDecl)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !47, file: !51, line: 22, baseType: !52, size: 32, align: 32, offset: 576)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !47, file: !51, line: 25, baseType: !308, size: 128, align: 64, offset: 640)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 128, align: 64, elements: !309)
!309 = !{!310}
!310 = !DISubrange(count: 2)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !47, file: !51, line: 26, baseType: !52, size: 32, align: 32, offset: 768)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !47, file: !51, line: 27, baseType: !52, size: 32, align: 32, offset: 800)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !47, file: !51, line: 29, baseType: !314, size: 64, align: 64, offset: 832)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64, align: 64)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !46, line: 103, baseType: !316)
!316 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !46, line: 103, flags: DIFlagFwdDecl)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !47, file: !51, line: 30, baseType: !318, size: 64, align: 64, offset: 896)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64, align: 64)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !320, line: 37, baseType: !321)
!320 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!321 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !320, line: 37, flags: DIFlagFwdDecl)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !47, file: !51, line: 32, baseType: !65, size: 64, align: 64, offset: 960)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !47, file: !51, line: 33, baseType: !65, size: 64, align: 64, offset: 1024)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !47, file: !51, line: 34, baseType: !65, size: 64, align: 64, offset: 1088)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !47, file: !51, line: 35, baseType: !128, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !47, file: !51, line: 36, baseType: !128, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !47, file: !51, line: 37, baseType: !128, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !47, file: !51, line: 38, baseType: !128, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !47, file: !51, line: 40, baseType: !330, size: 128, align: 64, offset: 1216)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !101, line: 504, baseType: !331)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !101, line: 506, size: 128, align: 64, elements: !332)
!332 = !{!333, !335}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !331, file: !101, line: 508, baseType: !334, size: 64, align: 64)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !101, line: 48, baseType: !142)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !331, file: !101, line: 509, baseType: !334, size: 64, align: 64, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !47, file: !51, line: 41, baseType: !290, size: 64, align: 64, offset: 1344)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !47, file: !51, line: 42, baseType: !52, size: 32, align: 32, offset: 1408)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !47, file: !51, line: 44, baseType: !218, size: 64, align: 64, offset: 1472)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !47, file: !51, line: 45, baseType: !218, size: 64, align: 64, offset: 1536)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !47, file: !51, line: 53, baseType: !341, size: 64, align: 64, offset: 1600)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64, align: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{null, !44, !344, !52}
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64, align: 64)
!345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !47, file: !51, line: 55, baseType: !347, size: 64, align: 64, offset: 1664)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64, align: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{!52, !44, !66}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !47, file: !51, line: 57, baseType: !351, size: 64, align: 64, offset: 1728)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64, align: 64)
!352 = !DISubroutineType(types: !353)
!353 = !{!52, !44, !344}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !47, file: !51, line: 60, baseType: !355, size: 64, align: 64, offset: 1792)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64, align: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!344, !44}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !47, file: !51, line: 62, baseType: !359, size: 64, align: 64, offset: 1856)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64, align: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{null, !44, !344, !344, !52}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !47, file: !51, line: 65, baseType: !363, size: 64, align: 64, offset: 1920)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64, align: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{!366, !44, !344, !344}
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !47, file: !51, line: 69, baseType: !368, size: 64, align: 64, offset: 1984)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64, align: 64)
!369 = !DISubroutineType(types: !370)
!370 = !{!371, !44, !344}
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64, align: 64)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !46, line: 109, baseType: !373)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !374, line: 15, size: 1408, align: 64, elements: !375)
!374 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!375 = !{!376, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !394, !398, !400, !401, !402, !403, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !373, file: !377, line: 3, baseType: !52, size: 32, align: 32)
!377 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!378 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !373, file: !377, line: 4, baseType: !52, size: 32, align: 32, offset: 32)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !373, file: !377, line: 5, baseType: !318, size: 64, align: 64, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !373, file: !377, line: 7, baseType: !43, size: 64, align: 64, offset: 128)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !373, file: !377, line: 8, baseType: !44, size: 64, align: 64, offset: 192)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !373, file: !377, line: 9, baseType: !65, size: 64, align: 64, offset: 256)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !373, file: !377, line: 10, baseType: !65, size: 64, align: 64, offset: 320)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !373, file: !377, line: 11, baseType: !290, size: 64, align: 64, offset: 384)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !373, file: !377, line: 12, baseType: !52, size: 32, align: 32, offset: 448)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !373, file: !377, line: 13, baseType: !65, size: 64, align: 64, offset: 512)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !373, file: !377, line: 15, baseType: !388, size: 64, align: 64, offset: 576)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64, align: 64)
!389 = !DISubroutineType(types: !390)
!390 = !{null, !391}
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64, align: 64)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !46, line: 108, baseType: !393)
!393 = !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !46, line: 108, flags: DIFlagFwdDecl)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !373, file: !377, line: 17, baseType: !395, size: 64, align: 64, offset: 640)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64, align: 64)
!396 = !DISubroutineType(types: !397)
!397 = !{!344, !391}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !373, file: !399, line: 5, baseType: !65, size: 64, align: 64, offset: 704)
!399 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!400 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !373, file: !399, line: 6, baseType: !65, size: 64, align: 64, offset: 768)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !373, file: !399, line: 7, baseType: !290, size: 64, align: 64, offset: 832)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !373, file: !399, line: 9, baseType: !318, size: 64, align: 64, offset: 896)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !373, file: !399, line: 10, baseType: !404, size: 64, align: 64, offset: 960)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64, align: 64)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !46, line: 111, baseType: !406)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !407, line: 13, size: 576, align: 64, elements: !408)
!407 = !DIFile(filename: "../../../src/core/nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!408 = !{!409, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !427, !428}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !406, file: !410, line: 3, baseType: !52, size: 32, align: 32)
!410 = !DIFile(filename: "../../../src/core/nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!411 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !406, file: !410, line: 4, baseType: !52, size: 32, align: 32, offset: 32)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !406, file: !410, line: 6, baseType: !290, size: 64, align: 64, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !406, file: !410, line: 8, baseType: !65, size: 64, align: 64, offset: 128)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !406, file: !410, line: 9, baseType: !65, size: 64, align: 64, offset: 192)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !406, file: !410, line: 10, baseType: !65, size: 64, align: 64, offset: 256)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !406, file: !410, line: 11, baseType: !52, size: 32, align: 32, offset: 320)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !406, file: !410, line: 14, baseType: !128, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !406, file: !410, line: 15, baseType: !128, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !406, file: !410, line: 18, baseType: !128, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !406, file: !410, line: 19, baseType: !128, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !406, file: !410, line: 20, baseType: !128, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !406, file: !410, line: 21, baseType: !128, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !406, file: !410, line: 22, baseType: !424, size: 64, align: 8, offset: 360)
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 64, align: 8, elements: !425)
!425 = !{!426}
!426 = !DISubrange(count: 8)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !406, file: !410, line: 26, baseType: !43, size: 64, align: 64, offset: 448)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !406, file: !410, line: 28, baseType: !404, size: 64, align: 64, offset: 512)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !373, file: !399, line: 12, baseType: !128, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !373, file: !399, line: 13, baseType: !65, size: 64, align: 64, offset: 1088)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !373, file: !399, line: 14, baseType: !52, size: 32, align: 32, offset: 1152)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !373, file: !399, line: 15, baseType: !65, size: 64, align: 64, offset: 1216)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !373, file: !399, line: 17, baseType: !128, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !373, file: !399, line: 18, baseType: !128, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !373, file: !399, line: 19, baseType: !128, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !373, file: !399, line: 20, baseType: !128, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !373, file: !399, line: 22, baseType: !128, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !373, file: !399, line: 23, baseType: !128, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !373, file: !399, line: 24, baseType: !128, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !373, file: !399, line: 25, baseType: !128, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !373, file: !399, line: 26, baseType: !128, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !373, file: !399, line: 31, baseType: !443, size: 64, align: 64, offset: 1344)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64, align: 64)
!444 = !DISubroutineType(types: !445)
!445 = !{!65, !371}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !47, file: !51, line: 70, baseType: !447, size: 64, align: 64, offset: 2048)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64, align: 64)
!448 = !DISubroutineType(types: !449)
!449 = !{!450, !44, !344}
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64, align: 64)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !46, line: 110, baseType: !452)
!452 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !46, line: 110, flags: DIFlagFwdDecl)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !47, file: !51, line: 71, baseType: !454, size: 64, align: 64, offset: 2112)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64, align: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{!52, !344, !344}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !47, file: !51, line: 73, baseType: !454, size: 64, align: 64, offset: 2176)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64, align: 64)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_CHANNEL_REC", file: !460, line: 7, baseType: !461)
!460 = !DIFile(filename: "irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_CHANNEL_REC", file: !462, line: 15, size: 1600, align: 64, elements: !463)
!462 = !DIFile(filename: "irc-channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!463 = !{!464, !465, !466, !467, !468, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !461, file: !377, line: 3, baseType: !52, size: 32, align: 32)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !461, file: !377, line: 4, baseType: !52, size: 32, align: 32, offset: 32)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !461, file: !377, line: 5, baseType: !318, size: 64, align: 64, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !461, file: !377, line: 7, baseType: !43, size: 64, align: 64, offset: 128)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !461, file: !377, line: 8, baseType: !469, size: 64, align: 64, offset: 192)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64, align: 64)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_REC", file: !460, line: 6, baseType: !471)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_REC", file: !472, line: 42, size: 39168, align: 64, elements: !473)
!472 = !DIFile(filename: "irc-servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!473 = !{!474, !475, !476, !477, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !633, !635}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !471, file: !51, line: 3, baseType: !52, size: 32, align: 32)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !471, file: !51, line: 4, baseType: !52, size: 32, align: 32, offset: 32)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !471, file: !51, line: 6, baseType: !52, size: 32, align: 32, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !471, file: !51, line: 8, baseType: !478, size: 64, align: 64, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64, align: 64)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_CONNECT_REC", file: !460, line: 5, baseType: !480)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_CONNECT_REC", file: !472, line: 24, size: 2496, align: 64, elements: !481)
!481 = !{!482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !480, file: !61, line: 3, baseType: !52, size: 32, align: 32)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !480, file: !61, line: 4, baseType: !52, size: 32, align: 32, offset: 32)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !480, file: !61, line: 6, baseType: !52, size: 32, align: 32, offset: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !480, file: !61, line: 9, baseType: !65, size: 64, align: 64, offset: 128)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !480, file: !61, line: 10, baseType: !52, size: 32, align: 32, offset: 192)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !480, file: !61, line: 11, baseType: !65, size: 64, align: 64, offset: 256)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !480, file: !61, line: 11, baseType: !65, size: 64, align: 64, offset: 320)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !480, file: !61, line: 11, baseType: !65, size: 64, align: 64, offset: 384)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !480, file: !61, line: 13, baseType: !72, size: 16, align: 16, offset: 448)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !480, file: !61, line: 14, baseType: !65, size: 64, align: 64, offset: 512)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !480, file: !61, line: 15, baseType: !65, size: 64, align: 64, offset: 576)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !480, file: !61, line: 16, baseType: !52, size: 32, align: 32, offset: 640)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !480, file: !61, line: 17, baseType: !65, size: 64, align: 64, offset: 704)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !480, file: !61, line: 19, baseType: !78, size: 64, align: 64, offset: 768)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !480, file: !61, line: 19, baseType: !78, size: 64, align: 64, offset: 832)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !480, file: !61, line: 21, baseType: !65, size: 64, align: 64, offset: 896)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !480, file: !61, line: 22, baseType: !65, size: 64, align: 64, offset: 960)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !480, file: !61, line: 23, baseType: !65, size: 64, align: 64, offset: 1024)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !480, file: !61, line: 24, baseType: !65, size: 64, align: 64, offset: 1088)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !480, file: !61, line: 26, baseType: !65, size: 64, align: 64, offset: 1152)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !480, file: !61, line: 27, baseType: !65, size: 64, align: 64, offset: 1216)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !480, file: !61, line: 28, baseType: !65, size: 64, align: 64, offset: 1280)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !480, file: !61, line: 29, baseType: !65, size: 64, align: 64, offset: 1344)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !480, file: !61, line: 30, baseType: !65, size: 64, align: 64, offset: 1408)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !480, file: !61, line: 31, baseType: !65, size: 64, align: 64, offset: 1472)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !480, file: !61, line: 32, baseType: !65, size: 64, align: 64, offset: 1536)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !480, file: !61, line: 33, baseType: !65, size: 64, align: 64, offset: 1600)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !480, file: !61, line: 35, baseType: !95, size: 64, align: 64, offset: 1664)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !480, file: !61, line: 38, baseType: !128, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !480, file: !61, line: 39, baseType: !128, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !480, file: !61, line: 40, baseType: !128, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !480, file: !61, line: 41, baseType: !128, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !480, file: !61, line: 42, baseType: !128, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !480, file: !61, line: 43, baseType: !128, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !480, file: !61, line: 44, baseType: !128, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !480, file: !61, line: 45, baseType: !128, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !480, file: !61, line: 46, baseType: !65, size: 64, align: 64, offset: 1792)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !480, file: !61, line: 47, baseType: !65, size: 64, align: 64, offset: 1856)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !480, file: !472, line: 27, baseType: !65, size: 64, align: 64, offset: 1920)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_nick", scope: !480, file: !472, line: 28, baseType: !65, size: 64, align: 64, offset: 1984)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !480, file: !472, line: 30, baseType: !52, size: 32, align: 32, offset: 2048)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_username", scope: !480, file: !472, line: 31, baseType: !65, size: 64, align: 64, offset: 2112)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !480, file: !472, line: 32, baseType: !65, size: 64, align: 64, offset: 2176)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !480, file: !472, line: 34, baseType: !52, size: 32, align: 32, offset: 2240)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !480, file: !472, line: 35, baseType: !52, size: 32, align: 32, offset: 2272)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !480, file: !472, line: 36, baseType: !52, size: 32, align: 32, offset: 2304)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks", scope: !480, file: !472, line: 38, baseType: !52, size: 32, align: 32, offset: 2336)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !480, file: !472, line: 38, baseType: !52, size: 32, align: 32, offset: 2368)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes", scope: !480, file: !472, line: 38, baseType: !52, size: 32, align: 32, offset: 2400)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois", scope: !480, file: !472, line: 38, baseType: !52, size: 32, align: 32, offset: 2432)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !471, file: !51, line: 9, baseType: !290, size: 64, align: 64, offset: 192)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !471, file: !51, line: 10, baseType: !290, size: 64, align: 64, offset: 256)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !471, file: !51, line: 12, baseType: !65, size: 64, align: 64, offset: 320)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !471, file: !51, line: 13, baseType: !65, size: 64, align: 64, offset: 384)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !471, file: !51, line: 15, baseType: !128, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !471, file: !51, line: 16, baseType: !128, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !471, file: !51, line: 17, baseType: !128, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !471, file: !51, line: 18, baseType: !128, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !471, file: !51, line: 19, baseType: !128, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !471, file: !51, line: 21, baseType: !303, size: 64, align: 64, offset: 512)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !471, file: !51, line: 22, baseType: !52, size: 32, align: 32, offset: 576)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !471, file: !51, line: 25, baseType: !308, size: 128, align: 64, offset: 640)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !471, file: !51, line: 26, baseType: !52, size: 32, align: 32, offset: 768)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !471, file: !51, line: 27, baseType: !52, size: 32, align: 32, offset: 800)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !471, file: !51, line: 29, baseType: !314, size: 64, align: 64, offset: 832)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !471, file: !51, line: 30, baseType: !318, size: 64, align: 64, offset: 896)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !471, file: !51, line: 32, baseType: !65, size: 64, align: 64, offset: 960)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !471, file: !51, line: 33, baseType: !65, size: 64, align: 64, offset: 1024)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !471, file: !51, line: 34, baseType: !65, size: 64, align: 64, offset: 1088)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !471, file: !51, line: 35, baseType: !128, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !471, file: !51, line: 36, baseType: !128, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !471, file: !51, line: 37, baseType: !128, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !471, file: !51, line: 38, baseType: !128, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !471, file: !51, line: 40, baseType: !330, size: 128, align: 64, offset: 1216)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !471, file: !51, line: 41, baseType: !290, size: 64, align: 64, offset: 1344)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !471, file: !51, line: 42, baseType: !52, size: 32, align: 32, offset: 1408)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !471, file: !51, line: 44, baseType: !218, size: 64, align: 64, offset: 1472)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !471, file: !51, line: 45, baseType: !218, size: 64, align: 64, offset: 1536)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !471, file: !51, line: 53, baseType: !341, size: 64, align: 64, offset: 1600)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !471, file: !51, line: 55, baseType: !347, size: 64, align: 64, offset: 1664)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !471, file: !51, line: 57, baseType: !351, size: 64, align: 64, offset: 1728)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !471, file: !51, line: 60, baseType: !355, size: 64, align: 64, offset: 1792)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !471, file: !51, line: 62, baseType: !359, size: 64, align: 64, offset: 1856)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !471, file: !51, line: 65, baseType: !363, size: 64, align: 64, offset: 1920)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !471, file: !51, line: 69, baseType: !368, size: 64, align: 64, offset: 1984)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !471, file: !51, line: 70, baseType: !447, size: 64, align: 64, offset: 2048)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !471, file: !51, line: 71, baseType: !454, size: 64, align: 64, offset: 2112)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !471, file: !51, line: 73, baseType: !454, size: 64, align: 64, offset: 2176)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "redirects", scope: !471, file: !472, line: 46, baseType: !218, size: 64, align: 64, offset: 2240)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_queue", scope: !471, file: !472, line: 47, baseType: !218, size: 64, align: 64, offset: 2304)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_next", scope: !471, file: !472, line: 48, baseType: !573, size: 64, align: 64, offset: 2368)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64, align: 64)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "REDIRECT_REC", file: !460, line: 8, baseType: !575)
!575 = !DICompositeType(tag: DW_TAG_structure_type, name: "_REDIRECT_REC", file: !460, line: 8, flags: DIFlagFwdDecl)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_active", scope: !471, file: !472, line: 49, baseType: !218, size: 64, align: 64, offset: 2432)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "last_nick", scope: !471, file: !472, line: 51, baseType: !65, size: 64, align: 64, offset: 2496)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !471, file: !472, line: 53, baseType: !65, size: 64, align: 64, offset: 2560)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !471, file: !472, line: 54, baseType: !65, size: 64, align: 64, offset: 2624)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "wanted_usermode", scope: !471, file: !472, line: 55, baseType: !65, size: 64, align: 64, offset: 2688)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "userhost", scope: !471, file: !472, line: 56, baseType: !65, size: 64, align: 64, offset: 2752)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "channels_formed", scope: !471, file: !472, line: 57, baseType: !52, size: 32, align: 32, offset: 2816)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "whois_found", scope: !471, file: !472, line: 59, baseType: !128, size: 1, align: 32, offset: 2848, flags: DIFlagBitField, extraData: i64 2848)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "whowas_found", scope: !471, file: !472, line: 60, baseType: !128, size: 1, align: 32, offset: 2849, flags: DIFlagBitField, extraData: i64 2848)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "emode_known", scope: !471, file: !472, line: 62, baseType: !128, size: 1, align: 32, offset: 2850, flags: DIFlagBitField, extraData: i64 2848)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_mode", scope: !471, file: !472, line: 63, baseType: !128, size: 1, align: 32, offset: 2851, flags: DIFlagBitField, extraData: i64 2848)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_who", scope: !471, file: !472, line: 64, baseType: !128, size: 1, align: 32, offset: 2852, flags: DIFlagBitField, extraData: i64 2848)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "one_endofwho", scope: !471, file: !472, line: 65, baseType: !128, size: 1, align: 32, offset: 2853, flags: DIFlagBitField, extraData: i64 2848)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "disable_lag", scope: !471, file: !472, line: 66, baseType: !128, size: 1, align: 32, offset: 2854, flags: DIFlagBitField, extraData: i64 2848)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "nick_collision", scope: !471, file: !472, line: 67, baseType: !128, size: 1, align: 32, offset: 2855, flags: DIFlagBitField, extraData: i64 2848)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "motd_got", scope: !471, file: !472, line: 68, baseType: !128, size: 1, align: 32, offset: 2856, flags: DIFlagBitField, extraData: i64 2848)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "isupport_sent", scope: !471, file: !472, line: 69, baseType: !128, size: 1, align: 32, offset: 2857, flags: DIFlagBitField, extraData: i64 2848)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "cap_complete", scope: !471, file: !472, line: 70, baseType: !128, size: 1, align: 32, offset: 2858, flags: DIFlagBitField, extraData: i64 2848)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "cap_in_multiline", scope: !471, file: !472, line: 71, baseType: !128, size: 1, align: 32, offset: 2859, flags: DIFlagBitField, extraData: i64 2848)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_success", scope: !471, file: !472, line: 72, baseType: !128, size: 1, align: 32, offset: 2860, flags: DIFlagBitField, extraData: i64 2848)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks_in_cmd", scope: !471, file: !472, line: 74, baseType: !52, size: 32, align: 32, offset: 2880)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes_in_cmd", scope: !471, file: !472, line: 75, baseType: !52, size: 32, align: 32, offset: 2912)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois_in_cmd", scope: !471, file: !472, line: 76, baseType: !52, size: 32, align: 32, offset: 2944)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs_in_cmd", scope: !471, file: !472, line: 77, baseType: !52, size: 32, align: 32, offset: 2976)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "cap_supported", scope: !471, file: !472, line: 79, baseType: !318, size: 64, align: 64, offset: 3008)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "cap_active", scope: !471, file: !472, line: 80, baseType: !218, size: 64, align: 64, offset: 3072)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "cap_queue", scope: !471, file: !472, line: 81, baseType: !218, size: 64, align: 64, offset: 3136)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_buffer", scope: !471, file: !472, line: 83, baseType: !257, size: 64, align: 64, offset: 3200)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_timeout", scope: !471, file: !472, line: 84, baseType: !209, size: 32, align: 32, offset: 3264)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcount", scope: !471, file: !472, line: 87, baseType: !52, size: 32, align: 32, offset: 3296)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "cmdqueue", scope: !471, file: !472, line: 91, baseType: !218, size: 64, align: 64, offset: 3328)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "wait_cmd", scope: !471, file: !472, line: 92, baseType: !330, size: 128, align: 64, offset: 3392)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd", scope: !471, file: !472, line: 93, baseType: !330, size: 128, align: 64, offset: 3520)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !471, file: !472, line: 95, baseType: !52, size: 32, align: 32, offset: 3648)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !471, file: !472, line: 96, baseType: !52, size: 32, align: 32, offset: 3680)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !471, file: !472, line: 97, baseType: !52, size: 32, align: 32, offset: 3712)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "idles", scope: !471, file: !472, line: 100, baseType: !218, size: 64, align: 64, offset: 3776)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "ctcpqueue", scope: !471, file: !472, line: 103, baseType: !218, size: 64, align: 64, offset: 3840)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "knockoutlist", scope: !471, file: !472, line: 106, baseType: !218, size: 64, align: 64, offset: 3904)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "splits", scope: !471, file: !472, line: 108, baseType: !318, size: 64, align: 64, offset: 3968)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "split_servers", scope: !471, file: !472, line: 109, baseType: !218, size: 64, align: 64, offset: 4032)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "rejoin_channels", scope: !471, file: !472, line: 111, baseType: !218, size: 64, align: 64, offset: 4096)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "chanqueries", scope: !471, file: !472, line: 114, baseType: !43, size: 64, align: 64, offset: 4160)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "isupport", scope: !471, file: !472, line: 116, baseType: !318, size: 64, align: 64, offset: 4224)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !471, file: !472, line: 117, baseType: !621, size: 32768, align: 64, offset: 4288)
!621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !622, size: 32768, align: 64, elements: !631)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "modes_type", file: !623, line: 10, size: 128, align: 64, elements: !624)
!623 = !DIFile(filename: "modes.h", directory: "/home/lichi/Desktop/irssi/task1")
!624 = !{!625, !630}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !622, file: !623, line: 11, baseType: !626, size: 64, align: 64)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64, align: 64)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_func_t", file: !623, line: 7, baseType: !628)
!628 = !DISubroutineType(types: !629)
!629 = !{null, !458, !344, !66, !66, !65, !257}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !622, file: !623, line: 12, baseType: !66, size: 8, align: 8, offset: 64)
!631 = !{!632}
!632 = !DISubrange(count: 256)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !471, file: !472, line: 118, baseType: !634, size: 2048, align: 8, offset: 37056)
!634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 2048, align: 8, elements: !631)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "nick_comp_func", scope: !471, file: !472, line: 120, baseType: !454, size: 64, align: 64, offset: 39104)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !461, file: !377, line: 9, baseType: !65, size: 64, align: 64, offset: 256)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !461, file: !377, line: 10, baseType: !65, size: 64, align: 64, offset: 320)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !461, file: !377, line: 11, baseType: !290, size: 64, align: 64, offset: 384)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !461, file: !377, line: 12, baseType: !52, size: 32, align: 32, offset: 448)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !461, file: !377, line: 13, baseType: !65, size: 64, align: 64, offset: 512)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !461, file: !377, line: 15, baseType: !388, size: 64, align: 64, offset: 576)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !461, file: !377, line: 17, baseType: !395, size: 64, align: 64, offset: 640)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !461, file: !399, line: 5, baseType: !65, size: 64, align: 64, offset: 704)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !461, file: !399, line: 6, baseType: !65, size: 64, align: 64, offset: 768)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !461, file: !399, line: 7, baseType: !290, size: 64, align: 64, offset: 832)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !461, file: !399, line: 9, baseType: !318, size: 64, align: 64, offset: 896)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !461, file: !399, line: 10, baseType: !404, size: 64, align: 64, offset: 960)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !461, file: !399, line: 12, baseType: !128, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !461, file: !399, line: 13, baseType: !65, size: 64, align: 64, offset: 1088)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !461, file: !399, line: 14, baseType: !52, size: 32, align: 32, offset: 1152)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !461, file: !399, line: 15, baseType: !65, size: 64, align: 64, offset: 1216)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !461, file: !399, line: 17, baseType: !128, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !461, file: !399, line: 18, baseType: !128, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !461, file: !399, line: 19, baseType: !128, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !461, file: !399, line: 20, baseType: !128, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !461, file: !399, line: 22, baseType: !128, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !461, file: !399, line: 23, baseType: !128, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !461, file: !399, line: 24, baseType: !128, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !461, file: !399, line: 25, baseType: !128, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !461, file: !399, line: 26, baseType: !128, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !461, file: !399, line: 31, baseType: !443, size: 64, align: 64, offset: 1344)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "banlist", scope: !461, file: !462, line: 18, baseType: !218, size: 64, align: 64, offset: 1408)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "massjoin_start", scope: !461, file: !462, line: 20, baseType: !290, size: 64, align: 64, offset: 1472)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "massjoins", scope: !461, file: !462, line: 21, baseType: !52, size: 32, align: 32, offset: 1536)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "last_massjoins", scope: !461, file: !462, line: 22, baseType: !52, size: 32, align: 32, offset: 1568)
!666 = !{i32 2, !"Dwarf Version", i32 4}
!667 = !{i32 2, !"Debug Info Version", i32 3}
!668 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!669 = distinct !DISubprogram(name: "channel_events_init", scope: !670, file: !670, line: 365, type: !206, isLocal: false, isDefinition: true, scopeLine: 366, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !671)
!670 = !DIFile(filename: "channel-events.c", directory: "/home/lichi/Desktop/irssi/task1")
!671 = !{}
!672 = !DILocation(line: 367, column: 2, scope: !669)
!673 = !DILocation(line: 369, column: 2, scope: !669)
!674 = !DILocation(line: 370, column: 2, scope: !669)
!675 = !DILocation(line: 371, column: 2, scope: !669)
!676 = !DILocation(line: 373, column: 2, scope: !669)
!677 = !DILocation(line: 374, column: 2, scope: !669)
!678 = !DILocation(line: 375, column: 2, scope: !669)
!679 = !DILocation(line: 376, column: 2, scope: !669)
!680 = !DILocation(line: 377, column: 2, scope: !669)
!681 = !DILocation(line: 378, column: 2, scope: !669)
!682 = !DILocation(line: 379, column: 2, scope: !669)
!683 = !DILocation(line: 380, column: 1, scope: !669)
!684 = distinct !DISubprogram(name: "irc_server_event", scope: !670, file: !670, line: 54, type: !685, isLocal: true, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !671)
!685 = !DISubroutineType(types: !686)
!686 = !{null, !469, !344}
!687 = !DILocalVariable(name: "server", arg: 1, scope: !684, file: !670, line: 54, type: !469)
!688 = !DIExpression()
!689 = !DILocation(line: 54, column: 46, scope: !684)
!690 = !DILocalVariable(name: "line", arg: 2, scope: !684, file: !670, line: 54, type: !344)
!691 = !DILocation(line: 54, column: 66, scope: !684)
!692 = !DILocalVariable(name: "params", scope: !684, file: !670, line: 56, type: !65)
!693 = !DILocation(line: 56, column: 8, scope: !684)
!694 = !DILocalVariable(name: "numeric", scope: !684, file: !670, line: 56, type: !65)
!695 = !DILocation(line: 56, column: 17, scope: !684)
!696 = !DILocalVariable(name: "channel", scope: !684, file: !670, line: 56, type: !65)
!697 = !DILocation(line: 56, column: 27, scope: !684)
!698 = !DILocation(line: 61, column: 28, scope: !684)
!699 = !DILocation(line: 61, column: 11, scope: !684)
!700 = !DILocation(line: 61, column: 9, scope: !684)
!701 = !DILocation(line: 63, column: 6, scope: !702)
!702 = distinct !DILexicalBlock(scope: !684, file: !670, line: 63, column: 6)
!703 = !DILocation(line: 63, column: 17, scope: !702)
!704 = !DILocation(line: 63, column: 6, scope: !684)
!705 = !DILocation(line: 64, column: 22, scope: !702)
!706 = !DILocation(line: 64, column: 30, scope: !702)
!707 = !DILocation(line: 64, column: 3, scope: !702)
!708 = !DILocation(line: 66, column: 9, scope: !684)
!709 = !DILocation(line: 66, column: 2, scope: !684)
!710 = !DILocation(line: 67, column: 1, scope: !684)
!711 = distinct !DISubprogram(name: "event_no_such_channel", scope: !670, file: !670, line: 69, type: !685, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !671)
!712 = !DILocalVariable(name: "server", arg: 1, scope: !711, file: !670, line: 69, type: !469)
!713 = !DILocation(line: 69, column: 51, scope: !711)
!714 = !DILocalVariable(name: "data", arg: 2, scope: !711, file: !670, line: 69, type: !344)
!715 = !DILocation(line: 69, column: 71, scope: !711)
!716 = !DILocalVariable(name: "chanrec", scope: !711, file: !670, line: 71, type: !371)
!717 = !DILocation(line: 71, column: 15, scope: !711)
!718 = !DILocalVariable(name: "setup", scope: !711, file: !670, line: 72, type: !719)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64, align: 64)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_SETUP_REC", file: !46, line: 115, baseType: !721)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_SETUP_REC", file: !722, line: 12, size: 512, align: 64, elements: !723)
!722 = !DIFile(filename: "../../../src/core/channels-setup.h", directory: "/home/lichi/Desktop/irssi/task1")
!723 = !{!724, !726, !727, !728, !729, !730, !731, !732, !733}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !721, file: !725, line: 1, baseType: !52, size: 32, align: 32)
!725 = !DIFile(filename: "../../../src/core/channel-setup-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!726 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !721, file: !725, line: 2, baseType: !52, size: 32, align: 32, offset: 32)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !721, file: !725, line: 4, baseType: !65, size: 64, align: 64, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !721, file: !725, line: 5, baseType: !65, size: 64, align: 64, offset: 128)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !721, file: !725, line: 6, baseType: !65, size: 64, align: 64, offset: 192)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "botmasks", scope: !721, file: !725, line: 8, baseType: !65, size: 64, align: 64, offset: 256)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "autosendcmd", scope: !721, file: !725, line: 9, baseType: !65, size: 64, align: 64, offset: 320)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "autojoin", scope: !721, file: !725, line: 11, baseType: !128, size: 1, align: 32, offset: 384, flags: DIFlagBitField, extraData: i64 384)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !721, file: !725, line: 12, baseType: !318, size: 64, align: 64, offset: 448)
!734 = !DILocation(line: 72, column: 21, scope: !711)
!735 = !DILocalVariable(name: "params", scope: !711, file: !670, line: 73, type: !65)
!736 = !DILocation(line: 73, column: 8, scope: !711)
!737 = !DILocalVariable(name: "channel", scope: !711, file: !670, line: 73, type: !65)
!738 = !DILocation(line: 73, column: 17, scope: !711)
!739 = !DILocation(line: 75, column: 28, scope: !711)
!740 = !DILocation(line: 75, column: 11, scope: !711)
!741 = !DILocation(line: 75, column: 9, scope: !711)
!742 = !DILocation(line: 76, column: 13, scope: !711)
!743 = !DILocation(line: 76, column: 12, scope: !711)
!744 = !DILocation(line: 76, column: 21, scope: !711)
!745 = !DILocation(line: 76, column: 28, scope: !711)
!746 = !DILocation(line: 76, column: 31, scope: !747)
!747 = !DILexicalBlockFile(scope: !711, file: !670, discriminator: 1)
!748 = !DILocation(line: 76, column: 42, scope: !747)
!749 = !DILocation(line: 76, column: 12, scope: !747)
!750 = !DILocation(line: 77, column: 50, scope: !711)
!751 = !DILocation(line: 77, column: 32, scope: !711)
!752 = !DILocation(line: 77, column: 17, scope: !711)
!753 = !DILocation(line: 77, column: 29, scope: !711)
!754 = !DILocation(line: 77, column: 3, scope: !747)
!755 = !DILocation(line: 76, column: 12, scope: !756)
!756 = !DILexicalBlockFile(scope: !711, file: !670, discriminator: 2)
!757 = !DILocation(line: 76, column: 12, scope: !758)
!758 = !DILexicalBlockFile(scope: !711, file: !670, discriminator: 3)
!759 = !DILocation(line: 76, column: 12, scope: !760)
!760 = !DILexicalBlockFile(scope: !711, file: !670, discriminator: 4)
!761 = !DILocation(line: 76, column: 10, scope: !760)
!762 = !DILocation(line: 79, column: 6, scope: !763)
!763 = distinct !DILexicalBlock(scope: !711, file: !670, line: 79, column: 6)
!764 = !DILocation(line: 79, column: 14, scope: !763)
!765 = !DILocation(line: 79, column: 6, scope: !711)
!766 = !DILocation(line: 81, column: 30, scope: !767)
!767 = distinct !DILexicalBlock(scope: !763, file: !670, line: 79, column: 22)
!768 = !DILocation(line: 81, column: 39, scope: !767)
!769 = !DILocation(line: 82, column: 9, scope: !767)
!770 = !DILocation(line: 82, column: 18, scope: !767)
!771 = !DILocation(line: 82, column: 26, scope: !767)
!772 = !DILocation(line: 82, column: 35, scope: !767)
!773 = !DILocation(line: 81, column: 11, scope: !767)
!774 = !DILocation(line: 81, column: 9, scope: !767)
!775 = !DILocation(line: 83, column: 7, scope: !776)
!776 = distinct !DILexicalBlock(scope: !767, file: !670, line: 83, column: 7)
!777 = !DILocation(line: 83, column: 13, scope: !776)
!778 = !DILocation(line: 83, column: 20, scope: !776)
!779 = !DILocation(line: 83, column: 23, scope: !780)
!780 = !DILexicalBlockFile(scope: !776, file: !670, discriminator: 1)
!781 = !DILocation(line: 83, column: 30, scope: !780)
!782 = !DILocation(line: 83, column: 7, scope: !780)
!783 = !DILocation(line: 85, column: 18, scope: !784)
!784 = distinct !DILexicalBlock(scope: !776, file: !670, line: 83, column: 40)
!785 = !DILocation(line: 85, column: 38, scope: !784)
!786 = !DILocation(line: 85, column: 47, scope: !784)
!787 = !DILocation(line: 85, column: 4, scope: !784)
!788 = !DILocation(line: 86, column: 11, scope: !784)
!789 = !DILocation(line: 86, column: 4, scope: !784)
!790 = !DILocation(line: 87, column: 25, scope: !784)
!791 = !DILocation(line: 89, column: 2, scope: !767)
!792 = !DILocation(line: 91, column: 21, scope: !711)
!793 = !DILocation(line: 91, column: 29, scope: !711)
!794 = !DILocation(line: 91, column: 2, scope: !711)
!795 = !DILocation(line: 92, column: 9, scope: !711)
!796 = !DILocation(line: 92, column: 2, scope: !711)
!797 = !DILocation(line: 93, column: 1, scope: !711)
!798 = !DILocation(line: 93, column: 1, scope: !747)
!799 = distinct !DISubprogram(name: "event_duplicate_channel", scope: !670, file: !670, line: 95, type: !685, isLocal: true, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !671)
!800 = !DILocalVariable(name: "server", arg: 1, scope: !799, file: !670, line: 95, type: !469)
!801 = !DILocation(line: 95, column: 53, scope: !799)
!802 = !DILocalVariable(name: "data", arg: 2, scope: !799, file: !670, line: 95, type: !344)
!803 = !DILocation(line: 95, column: 73, scope: !799)
!804 = !DILocalVariable(name: "chanrec", scope: !799, file: !670, line: 97, type: !371)
!805 = !DILocation(line: 97, column: 15, scope: !799)
!806 = !DILocalVariable(name: "params", scope: !799, file: !670, line: 98, type: !65)
!807 = !DILocation(line: 98, column: 8, scope: !799)
!808 = !DILocalVariable(name: "channel", scope: !799, file: !670, line: 98, type: !65)
!809 = !DILocation(line: 98, column: 17, scope: !799)
!810 = !DILocalVariable(name: "p", scope: !799, file: !670, line: 98, type: !65)
!811 = !DILocation(line: 98, column: 27, scope: !799)
!812 = !DILocation(line: 100, column: 2, scope: !799)
!813 = distinct !{!813, !812}
!814 = !DILocation(line: 100, column: 10, scope: !815)
!815 = !DILexicalBlockFile(scope: !816, file: !670, discriminator: 1)
!816 = distinct !DILexicalBlock(scope: !817, file: !670, line: 100, column: 10)
!817 = distinct !DILexicalBlock(scope: !799, file: !670, line: 100, column: 4)
!818 = !DILocation(line: 100, column: 15, scope: !815)
!819 = !DILocation(line: 100, column: 5, scope: !820)
!820 = !DILexicalBlockFile(scope: !821, file: !670, discriminator: 2)
!821 = distinct !DILexicalBlock(scope: !816, file: !670, line: 100, column: 3)
!822 = !DILocation(line: 100, column: 14, scope: !823)
!823 = !DILexicalBlockFile(scope: !824, file: !670, discriminator: 3)
!824 = distinct !DILexicalBlock(scope: !816, file: !670, line: 100, column: 12)
!825 = !DILocation(line: 100, column: 99, scope: !823)
!826 = !DILocation(line: 100, column: 110, scope: !827)
!827 = !DILexicalBlockFile(scope: !817, file: !670, discriminator: 4)
!828 = !DILocation(line: 104, column: 28, scope: !799)
!829 = !DILocation(line: 104, column: 11, scope: !799)
!830 = !DILocation(line: 104, column: 9, scope: !799)
!831 = !DILocation(line: 105, column: 13, scope: !799)
!832 = !DILocation(line: 105, column: 6, scope: !799)
!833 = !DILocation(line: 105, column: 4, scope: !799)
!834 = !DILocation(line: 106, column: 6, scope: !835)
!835 = distinct !DILexicalBlock(scope: !799, file: !670, line: 106, column: 6)
!836 = !DILocation(line: 106, column: 8, scope: !835)
!837 = !DILocation(line: 106, column: 6, scope: !799)
!838 = !DILocation(line: 106, column: 17, scope: !839)
!839 = !DILexicalBlockFile(scope: !835, file: !670, discriminator: 1)
!840 = !DILocation(line: 106, column: 19, scope: !839)
!841 = !DILocation(line: 106, column: 16, scope: !839)
!842 = !DILocation(line: 108, column: 6, scope: !843)
!843 = distinct !DILexicalBlock(scope: !799, file: !670, line: 108, column: 6)
!844 = !DILocation(line: 108, column: 17, scope: !843)
!845 = !DILocation(line: 108, column: 6, scope: !799)
!846 = !DILocation(line: 109, column: 60, scope: !847)
!847 = distinct !DILexicalBlock(scope: !843, file: !670, line: 108, column: 25)
!848 = !DILocation(line: 109, column: 42, scope: !847)
!849 = !DILocation(line: 109, column: 27, scope: !847)
!850 = !DILocation(line: 110, column: 12, scope: !847)
!851 = !DILocation(line: 110, column: 21, scope: !847)
!852 = !DILocation(line: 110, column: 32, scope: !847)
!853 = !DILocation(line: 110, column: 19, scope: !847)
!854 = !DILocation(line: 109, column: 13, scope: !855)
!855 = !DILexicalBlockFile(scope: !847, file: !670, discriminator: 1)
!856 = !DILocation(line: 109, column: 11, scope: !847)
!857 = !DILocation(line: 111, column: 7, scope: !858)
!858 = distinct !DILexicalBlock(scope: !847, file: !670, line: 111, column: 7)
!859 = !DILocation(line: 111, column: 15, scope: !858)
!860 = !DILocation(line: 111, column: 22, scope: !858)
!861 = !DILocation(line: 111, column: 26, scope: !862)
!862 = !DILexicalBlockFile(scope: !858, file: !670, discriminator: 1)
!863 = !DILocation(line: 111, column: 35, scope: !862)
!864 = !DILocation(line: 111, column: 7, scope: !862)
!865 = !DILocation(line: 112, column: 4, scope: !866)
!866 = distinct !DILexicalBlock(scope: !858, file: !670, line: 111, column: 46)
!867 = !DILocation(line: 112, column: 13, scope: !866)
!868 = !DILocation(line: 112, column: 18, scope: !866)
!869 = !DILocation(line: 113, column: 20, scope: !866)
!870 = !DILocation(line: 113, column: 4, scope: !866)
!871 = !DILocation(line: 114, column: 3, scope: !866)
!872 = !DILocation(line: 115, column: 2, scope: !847)
!873 = !DILocation(line: 117, column: 9, scope: !799)
!874 = !DILocation(line: 117, column: 2, scope: !799)
!875 = !DILocation(line: 118, column: 1, scope: !799)
!876 = !DILocation(line: 118, column: 1, scope: !877)
!877 = !DILexicalBlockFile(scope: !799, file: !670, discriminator: 1)
!878 = distinct !DISubprogram(name: "event_topic", scope: !670, file: !670, line: 163, type: !879, isLocal: true, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !671)
!879 = !DISubroutineType(types: !880)
!880 = !{null, !469, !344, !344, !344}
!881 = !DILocalVariable(name: "server", arg: 1, scope: !878, file: !670, line: 163, type: !469)
!882 = !DILocation(line: 163, column: 41, scope: !878)
!883 = !DILocalVariable(name: "data", arg: 2, scope: !878, file: !670, line: 163, type: !344)
!884 = !DILocation(line: 163, column: 61, scope: !878)
!885 = !DILocalVariable(name: "nick", arg: 3, scope: !878, file: !670, line: 164, type: !344)
!886 = !DILocation(line: 164, column: 16, scope: !878)
!887 = !DILocalVariable(name: "addr", arg: 4, scope: !878, file: !670, line: 164, type: !344)
!888 = !DILocation(line: 164, column: 34, scope: !878)
!889 = !DILocalVariable(name: "params", scope: !878, file: !670, line: 166, type: !65)
!890 = !DILocation(line: 166, column: 8, scope: !878)
!891 = !DILocalVariable(name: "channel", scope: !878, file: !670, line: 166, type: !65)
!892 = !DILocation(line: 166, column: 17, scope: !878)
!893 = !DILocalVariable(name: "topic", scope: !878, file: !670, line: 166, type: !65)
!894 = !DILocation(line: 166, column: 27, scope: !878)
!895 = !DILocalVariable(name: "mask", scope: !878, file: !670, line: 166, type: !65)
!896 = !DILocation(line: 166, column: 35, scope: !878)
!897 = !DILocation(line: 168, column: 2, scope: !878)
!898 = distinct !{!898, !897}
!899 = !DILocation(line: 168, column: 10, scope: !900)
!900 = !DILexicalBlockFile(scope: !901, file: !670, discriminator: 1)
!901 = distinct !DILexicalBlock(scope: !902, file: !670, line: 168, column: 10)
!902 = distinct !DILexicalBlock(scope: !878, file: !670, line: 168, column: 4)
!903 = !DILocation(line: 168, column: 15, scope: !900)
!904 = !DILocation(line: 168, column: 5, scope: !905)
!905 = !DILexicalBlockFile(scope: !906, file: !670, discriminator: 2)
!906 = distinct !DILexicalBlock(scope: !901, file: !670, line: 168, column: 3)
!907 = !DILocation(line: 168, column: 14, scope: !908)
!908 = !DILexicalBlockFile(scope: !909, file: !670, discriminator: 3)
!909 = distinct !DILexicalBlock(scope: !901, file: !670, line: 168, column: 12)
!910 = !DILocation(line: 168, column: 99, scope: !908)
!911 = !DILocation(line: 168, column: 110, scope: !912)
!912 = !DILexicalBlockFile(scope: !902, file: !670, discriminator: 4)
!913 = !DILocation(line: 170, column: 28, scope: !878)
!914 = !DILocation(line: 170, column: 11, scope: !878)
!915 = !DILocation(line: 170, column: 9, scope: !878)
!916 = !DILocation(line: 171, column: 9, scope: !878)
!917 = !DILocation(line: 171, column: 14, scope: !878)
!918 = !DILocation(line: 171, column: 32, scope: !919)
!919 = !DILexicalBlockFile(scope: !878, file: !670, discriminator: 1)
!920 = !DILocation(line: 171, column: 23, scope: !919)
!921 = !DILocation(line: 171, column: 9, scope: !919)
!922 = !DILocation(line: 172, column: 15, scope: !878)
!923 = !DILocation(line: 172, column: 26, scope: !878)
!924 = !DILocation(line: 172, column: 3, scope: !878)
!925 = !DILocation(line: 171, column: 9, scope: !926)
!926 = !DILexicalBlockFile(scope: !878, file: !670, discriminator: 2)
!927 = !DILocation(line: 171, column: 9, scope: !928)
!928 = !DILexicalBlockFile(scope: !878, file: !670, discriminator: 3)
!929 = !DILocation(line: 171, column: 7, scope: !928)
!930 = !DILocation(line: 173, column: 23, scope: !878)
!931 = !DILocation(line: 173, column: 31, scope: !878)
!932 = !DILocation(line: 173, column: 40, scope: !878)
!933 = !DILocation(line: 173, column: 47, scope: !878)
!934 = !DILocation(line: 173, column: 53, scope: !878)
!935 = !DILocation(line: 173, column: 2, scope: !919)
!936 = !DILocation(line: 174, column: 9, scope: !878)
!937 = !DILocation(line: 174, column: 2, scope: !878)
!938 = !DILocation(line: 175, column: 9, scope: !878)
!939 = !DILocation(line: 175, column: 2, scope: !878)
!940 = !DILocation(line: 176, column: 1, scope: !878)
!941 = !DILocation(line: 176, column: 1, scope: !919)
!942 = distinct !DISubprogram(name: "event_join", scope: !670, file: !670, line: 216, type: !879, isLocal: true, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !671)
!943 = !DILocalVariable(name: "server", arg: 1, scope: !942, file: !670, line: 216, type: !469)
!944 = !DILocation(line: 216, column: 40, scope: !942)
!945 = !DILocalVariable(name: "data", arg: 2, scope: !942, file: !670, line: 216, type: !344)
!946 = !DILocation(line: 216, column: 60, scope: !942)
!947 = !DILocalVariable(name: "nick", arg: 3, scope: !942, file: !670, line: 216, type: !344)
!948 = !DILocation(line: 216, column: 78, scope: !942)
!949 = !DILocalVariable(name: "address", arg: 4, scope: !942, file: !670, line: 216, type: !344)
!950 = !DILocation(line: 216, column: 96, scope: !942)
!951 = !DILocalVariable(name: "params", scope: !942, file: !670, line: 218, type: !65)
!952 = !DILocation(line: 218, column: 8, scope: !942)
!953 = !DILocalVariable(name: "channel", scope: !942, file: !670, line: 218, type: !65)
!954 = !DILocation(line: 218, column: 17, scope: !942)
!955 = !DILocalVariable(name: "tmp", scope: !942, file: !670, line: 218, type: !65)
!956 = !DILocation(line: 218, column: 27, scope: !942)
!957 = !DILocalVariable(name: "shortchan", scope: !942, file: !670, line: 218, type: !65)
!958 = !DILocation(line: 218, column: 33, scope: !942)
!959 = !DILocalVariable(name: "chanrec", scope: !942, file: !670, line: 219, type: !458)
!960 = !DILocation(line: 219, column: 19, scope: !942)
!961 = !DILocation(line: 221, column: 2, scope: !942)
!962 = distinct !{!962, !961}
!963 = !DILocation(line: 221, column: 10, scope: !964)
!964 = !DILexicalBlockFile(scope: !965, file: !670, discriminator: 1)
!965 = distinct !DILexicalBlock(scope: !966, file: !670, line: 221, column: 10)
!966 = distinct !DILexicalBlock(scope: !942, file: !670, line: 221, column: 4)
!967 = !DILocation(line: 221, column: 15, scope: !964)
!968 = !DILocation(line: 221, column: 5, scope: !969)
!969 = !DILexicalBlockFile(scope: !970, file: !670, discriminator: 2)
!970 = distinct !DILexicalBlock(scope: !965, file: !670, line: 221, column: 3)
!971 = !DILocation(line: 221, column: 14, scope: !972)
!972 = !DILexicalBlockFile(scope: !973, file: !670, discriminator: 3)
!973 = distinct !DILexicalBlock(scope: !965, file: !670, line: 221, column: 12)
!974 = !DILocation(line: 221, column: 99, scope: !972)
!975 = !DILocation(line: 221, column: 110, scope: !976)
!976 = !DILexicalBlockFile(scope: !966, file: !670, discriminator: 4)
!977 = !DILocation(line: 223, column: 25, scope: !978)
!978 = distinct !DILexicalBlock(scope: !942, file: !670, line: 223, column: 6)
!979 = !DILocation(line: 223, column: 31, scope: !978)
!980 = !DILocation(line: 223, column: 39, scope: !978)
!981 = !DILocation(line: 223, column: 6, scope: !978)
!982 = !DILocation(line: 223, column: 45, scope: !978)
!983 = !DILocation(line: 223, column: 6, scope: !942)
!984 = !DILocation(line: 225, column: 3, scope: !985)
!985 = distinct !DILexicalBlock(scope: !978, file: !670, line: 223, column: 51)
!986 = !DILocation(line: 228, column: 6, scope: !987)
!987 = distinct !DILexicalBlock(scope: !942, file: !670, line: 228, column: 6)
!988 = !DILocation(line: 228, column: 14, scope: !987)
!989 = !DILocation(line: 228, column: 23, scope: !987)
!990 = !DILocation(line: 228, column: 6, scope: !942)
!991 = !DILocation(line: 229, column: 31, scope: !987)
!992 = !DILocation(line: 229, column: 22, scope: !987)
!993 = !DILocation(line: 229, column: 3, scope: !987)
!994 = !DILocation(line: 229, column: 11, scope: !987)
!995 = !DILocation(line: 229, column: 20, scope: !987)
!996 = !DILocation(line: 231, column: 28, scope: !942)
!997 = !DILocation(line: 231, column: 11, scope: !942)
!998 = !DILocation(line: 231, column: 9, scope: !942)
!999 = !DILocation(line: 232, column: 15, scope: !942)
!1000 = !DILocation(line: 232, column: 8, scope: !942)
!1001 = !DILocation(line: 232, column: 6, scope: !942)
!1002 = !DILocation(line: 233, column: 6, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !942, file: !670, line: 233, column: 6)
!1004 = !DILocation(line: 233, column: 10, scope: !1003)
!1005 = !DILocation(line: 233, column: 6, scope: !942)
!1006 = !DILocation(line: 233, column: 19, scope: !1007)
!1007 = !DILexicalBlockFile(scope: !1003, file: !670, discriminator: 1)
!1008 = !DILocation(line: 233, column: 23, scope: !1007)
!1009 = !DILocation(line: 233, column: 18, scope: !1007)
!1010 = !DILocation(line: 235, column: 7, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !942, file: !670, line: 235, column: 6)
!1012 = !DILocation(line: 235, column: 6, scope: !1011)
!1013 = !DILocation(line: 235, column: 15, scope: !1011)
!1014 = !DILocation(line: 235, column: 22, scope: !1011)
!1015 = !DILocation(line: 235, column: 32, scope: !1016)
!1016 = !DILexicalBlockFile(scope: !1011, file: !670, discriminator: 1)
!1017 = !DILocation(line: 235, column: 25, scope: !1016)
!1018 = !DILocation(line: 235, column: 41, scope: !1016)
!1019 = !DILocation(line: 235, column: 6, scope: !1016)
!1020 = !DILocation(line: 236, column: 13, scope: !1011)
!1021 = !DILocation(line: 236, column: 3, scope: !1011)
!1022 = !DILocation(line: 241, column: 38, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1011, file: !670, line: 237, column: 7)
!1024 = !DILocation(line: 241, column: 45, scope: !1023)
!1025 = !DILocation(line: 241, column: 15, scope: !1023)
!1026 = !DILocation(line: 241, column: 13, scope: !1023)
!1027 = !DILocation(line: 242, column: 35, scope: !1023)
!1028 = !DILocation(line: 242, column: 43, scope: !1023)
!1029 = !DILocation(line: 242, column: 13, scope: !1023)
!1030 = !DILocation(line: 242, column: 11, scope: !1023)
!1031 = !DILocation(line: 243, column: 7, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1023, file: !670, line: 243, column: 7)
!1033 = !DILocation(line: 243, column: 15, scope: !1032)
!1034 = !DILocation(line: 243, column: 7, scope: !1023)
!1035 = !DILocation(line: 244, column: 66, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1032, file: !670, line: 243, column: 23)
!1037 = !DILocation(line: 244, column: 41, scope: !1036)
!1038 = !DILocation(line: 244, column: 25, scope: !1036)
!1039 = !DILocation(line: 244, column: 58, scope: !1036)
!1040 = !DILocation(line: 244, column: 4, scope: !1041)
!1041 = !DILexicalBlockFile(scope: !1036, file: !670, discriminator: 1)
!1042 = !DILocation(line: 245, column: 11, scope: !1036)
!1043 = !DILocation(line: 245, column: 20, scope: !1036)
!1044 = !DILocation(line: 245, column: 4, scope: !1036)
!1045 = !DILocation(line: 246, column: 29, scope: !1036)
!1046 = !DILocation(line: 246, column: 20, scope: !1036)
!1047 = !DILocation(line: 246, column: 4, scope: !1036)
!1048 = !DILocation(line: 246, column: 13, scope: !1036)
!1049 = !DILocation(line: 246, column: 18, scope: !1036)
!1050 = !DILocation(line: 247, column: 3, scope: !1036)
!1051 = !DILocation(line: 250, column: 36, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1032, file: !670, line: 247, column: 10)
!1053 = !DILocation(line: 250, column: 44, scope: !1052)
!1054 = !DILocation(line: 250, column: 14, scope: !1052)
!1055 = !DILocation(line: 250, column: 12, scope: !1052)
!1056 = !DILocation(line: 251, column: 8, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1052, file: !670, line: 251, column: 8)
!1058 = !DILocation(line: 251, column: 16, scope: !1057)
!1059 = !DILocation(line: 251, column: 23, scope: !1057)
!1060 = !DILocation(line: 252, column: 143, scope: !1057)
!1061 = !DILocation(line: 252, column: 125, scope: !1057)
!1062 = !DILocation(line: 252, column: 110, scope: !1057)
!1063 = !DILocation(line: 252, column: 21, scope: !1057)
!1064 = !DILocation(line: 252, column: 96, scope: !1065)
!1065 = !DILexicalBlockFile(scope: !1057, file: !670, discriminator: 1)
!1066 = !DILocation(line: 252, column: 96, scope: !1057)
!1067 = !DILocation(line: 252, column: 71, scope: !1068)
!1068 = !DILexicalBlockFile(scope: !1057, file: !670, discriminator: 2)
!1069 = !DILocation(line: 252, column: 55, scope: !1057)
!1070 = !DILocation(line: 252, column: 54, scope: !1057)
!1071 = !DILocation(line: 252, column: 29, scope: !1072)
!1072 = !DILexicalBlockFile(scope: !1057, file: !670, discriminator: 3)
!1073 = !DILocation(line: 252, column: 9, scope: !1057)
!1074 = !DILocation(line: 252, column: 17, scope: !1057)
!1075 = !DILocation(line: 251, column: 8, scope: !1076)
!1076 = !DILexicalBlockFile(scope: !1052, file: !670, discriminator: 1)
!1077 = !DILocation(line: 253, column: 75, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1057, file: !670, line: 252, column: 52)
!1079 = !DILocation(line: 253, column: 50, scope: !1078)
!1080 = !DILocation(line: 253, column: 34, scope: !1078)
!1081 = !DILocation(line: 254, column: 12, scope: !1078)
!1082 = !DILocation(line: 253, column: 5, scope: !1083)
!1083 = !DILexicalBlockFile(scope: !1078, file: !670, discriminator: 1)
!1084 = !DILocation(line: 255, column: 4, scope: !1078)
!1085 = !DILocation(line: 259, column: 147, scope: !942)
!1086 = !DILocation(line: 259, column: 129, scope: !942)
!1087 = !DILocation(line: 259, column: 114, scope: !942)
!1088 = !DILocation(line: 259, column: 25, scope: !942)
!1089 = !DILocation(line: 259, column: 100, scope: !1090)
!1090 = !DILexicalBlockFile(scope: !942, file: !670, discriminator: 1)
!1091 = !DILocation(line: 259, column: 100, scope: !942)
!1092 = !DILocation(line: 259, column: 75, scope: !1093)
!1093 = !DILexicalBlockFile(scope: !942, file: !670, discriminator: 2)
!1094 = !DILocation(line: 259, column: 59, scope: !942)
!1095 = !DILocation(line: 259, column: 58, scope: !942)
!1096 = !DILocation(line: 259, column: 33, scope: !1097)
!1097 = !DILexicalBlockFile(scope: !942, file: !670, discriminator: 3)
!1098 = !DILocation(line: 259, column: 13, scope: !942)
!1099 = !DILocation(line: 259, column: 10, scope: !942)
!1100 = !DILocation(line: 260, column: 6, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !942, file: !670, line: 260, column: 6)
!1102 = !DILocation(line: 260, column: 14, scope: !1101)
!1103 = !DILocation(line: 260, column: 21, scope: !1101)
!1104 = !DILocation(line: 260, column: 24, scope: !1105)
!1105 = !DILexicalBlockFile(scope: !1101, file: !670, discriminator: 1)
!1106 = !DILocation(line: 260, column: 33, scope: !1105)
!1107 = !DILocation(line: 260, column: 6, scope: !1105)
!1108 = !DILocation(line: 263, column: 3, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1101, file: !670, line: 260, column: 41)
!1110 = !DILocation(line: 263, column: 12, scope: !1109)
!1111 = !DILocation(line: 263, column: 17, scope: !1109)
!1112 = !DILocation(line: 264, column: 61, scope: !1109)
!1113 = !DILocation(line: 264, column: 36, scope: !1109)
!1114 = !DILocation(line: 264, column: 20, scope: !1109)
!1115 = !DILocation(line: 264, column: 3, scope: !1116)
!1116 = !DILexicalBlockFile(scope: !1109, file: !670, discriminator: 1)
!1117 = !DILocation(line: 265, column: 11, scope: !1109)
!1118 = !DILocation(line: 266, column: 2, scope: !1109)
!1119 = !DILocation(line: 268, column: 6, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !942, file: !670, line: 268, column: 6)
!1121 = !DILocation(line: 268, column: 14, scope: !1120)
!1122 = !DILocation(line: 268, column: 6, scope: !942)
!1123 = !DILocation(line: 270, column: 35, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1120, file: !670, line: 268, column: 22)
!1125 = !DILocation(line: 270, column: 43, scope: !1124)
!1126 = !DILocation(line: 270, column: 13, scope: !1124)
!1127 = !DILocation(line: 270, column: 11, scope: !1124)
!1128 = !DILocation(line: 271, column: 2, scope: !1124)
!1129 = !DILocation(line: 273, column: 6, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !942, file: !670, line: 273, column: 6)
!1131 = !DILocation(line: 273, column: 14, scope: !1130)
!1132 = !DILocation(line: 273, column: 6, scope: !942)
!1133 = !DILocation(line: 275, column: 32, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1130, file: !670, line: 273, column: 22)
!1135 = !DILocation(line: 275, column: 40, scope: !1134)
!1136 = !DILocation(line: 275, column: 49, scope: !1134)
!1137 = !DILocation(line: 275, column: 13, scope: !1134)
!1138 = !DILocation(line: 275, column: 11, scope: !1134)
!1139 = !DILocation(line: 276, column: 2, scope: !1134)
!1140 = !DILocation(line: 278, column: 2, scope: !942)
!1141 = !DILocation(line: 278, column: 11, scope: !942)
!1142 = !DILocation(line: 278, column: 18, scope: !942)
!1143 = !DILocation(line: 279, column: 16, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !942, file: !670, line: 279, column: 6)
!1145 = !DILocation(line: 279, column: 25, scope: !1144)
!1146 = !DILocation(line: 279, column: 31, scope: !1144)
!1147 = !DILocation(line: 279, column: 6, scope: !1144)
!1148 = !DILocation(line: 279, column: 40, scope: !1144)
!1149 = !DILocation(line: 279, column: 6, scope: !942)
!1150 = !DILocation(line: 280, column: 24, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1144, file: !670, line: 279, column: 46)
!1152 = !DILocation(line: 280, column: 33, scope: !1151)
!1153 = !DILocation(line: 280, column: 17, scope: !1151)
!1154 = !DILocation(line: 281, column: 28, scope: !1151)
!1155 = !DILocation(line: 281, column: 19, scope: !1151)
!1156 = !DILocation(line: 281, column: 3, scope: !1151)
!1157 = !DILocation(line: 281, column: 12, scope: !1151)
!1158 = !DILocation(line: 281, column: 17, scope: !1151)
!1159 = !DILocation(line: 282, column: 2, scope: !1151)
!1160 = !DILocation(line: 284, column: 9, scope: !942)
!1161 = !DILocation(line: 284, column: 2, scope: !942)
!1162 = !DILocation(line: 285, column: 9, scope: !942)
!1163 = !DILocation(line: 285, column: 2, scope: !942)
!1164 = !DILocation(line: 286, column: 1, scope: !942)
!1165 = !DILocation(line: 286, column: 1, scope: !1090)
!1166 = distinct !DISubprogram(name: "event_part", scope: !670, file: !670, line: 288, type: !1167, isLocal: true, isDefinition: true, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !671)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{null, !469, !344, !344}
!1169 = !DILocalVariable(name: "server", arg: 1, scope: !1166, file: !670, line: 288, type: !469)
!1170 = !DILocation(line: 288, column: 40, scope: !1166)
!1171 = !DILocalVariable(name: "data", arg: 2, scope: !1166, file: !670, line: 288, type: !344)
!1172 = !DILocation(line: 288, column: 60, scope: !1166)
!1173 = !DILocalVariable(name: "nick", arg: 3, scope: !1166, file: !670, line: 288, type: !344)
!1174 = !DILocation(line: 288, column: 78, scope: !1166)
!1175 = !DILocalVariable(name: "params", scope: !1166, file: !670, line: 290, type: !65)
!1176 = !DILocation(line: 290, column: 8, scope: !1166)
!1177 = !DILocalVariable(name: "channel", scope: !1166, file: !670, line: 290, type: !65)
!1178 = !DILocation(line: 290, column: 17, scope: !1166)
!1179 = !DILocalVariable(name: "reason", scope: !1166, file: !670, line: 290, type: !65)
!1180 = !DILocation(line: 290, column: 27, scope: !1166)
!1181 = !DILocalVariable(name: "chanrec", scope: !1166, file: !670, line: 291, type: !371)
!1182 = !DILocation(line: 291, column: 15, scope: !1166)
!1183 = !DILocation(line: 293, column: 2, scope: !1166)
!1184 = distinct !{!1184, !1183}
!1185 = !DILocation(line: 293, column: 10, scope: !1186)
!1186 = !DILexicalBlockFile(scope: !1187, file: !670, discriminator: 1)
!1187 = distinct !DILexicalBlock(scope: !1188, file: !670, line: 293, column: 10)
!1188 = distinct !DILexicalBlock(scope: !1166, file: !670, line: 293, column: 4)
!1189 = !DILocation(line: 293, column: 15, scope: !1186)
!1190 = !DILocation(line: 293, column: 5, scope: !1191)
!1191 = !DILexicalBlockFile(scope: !1192, file: !670, discriminator: 2)
!1192 = distinct !DILexicalBlock(scope: !1187, file: !670, line: 293, column: 3)
!1193 = !DILocation(line: 293, column: 14, scope: !1194)
!1194 = !DILexicalBlockFile(scope: !1195, file: !670, discriminator: 3)
!1195 = distinct !DILexicalBlock(scope: !1187, file: !670, line: 293, column: 12)
!1196 = !DILocation(line: 293, column: 99, scope: !1194)
!1197 = !DILocation(line: 293, column: 110, scope: !1198)
!1198 = !DILexicalBlockFile(scope: !1188, file: !670, discriminator: 4)
!1199 = !DILocation(line: 295, column: 25, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1166, file: !670, line: 295, column: 6)
!1201 = !DILocation(line: 295, column: 31, scope: !1200)
!1202 = !DILocation(line: 295, column: 39, scope: !1200)
!1203 = !DILocation(line: 295, column: 6, scope: !1200)
!1204 = !DILocation(line: 295, column: 45, scope: !1200)
!1205 = !DILocation(line: 295, column: 6, scope: !1166)
!1206 = !DILocation(line: 297, column: 3, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1200, file: !670, line: 295, column: 51)
!1208 = !DILocation(line: 300, column: 28, scope: !1166)
!1209 = !DILocation(line: 300, column: 11, scope: !1166)
!1210 = !DILocation(line: 300, column: 9, scope: !1166)
!1211 = !DILocation(line: 302, column: 59, scope: !1166)
!1212 = !DILocation(line: 302, column: 41, scope: !1166)
!1213 = !DILocation(line: 302, column: 26, scope: !1166)
!1214 = !DILocation(line: 302, column: 38, scope: !1166)
!1215 = !DILocation(line: 302, column: 12, scope: !1216)
!1216 = !DILexicalBlockFile(scope: !1166, file: !670, discriminator: 1)
!1217 = !DILocation(line: 302, column: 10, scope: !1166)
!1218 = !DILocation(line: 303, column: 6, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1166, file: !670, line: 303, column: 6)
!1220 = !DILocation(line: 303, column: 14, scope: !1219)
!1221 = !DILocation(line: 303, column: 21, scope: !1219)
!1222 = !DILocation(line: 303, column: 24, scope: !1223)
!1223 = !DILexicalBlockFile(scope: !1219, file: !670, discriminator: 1)
!1224 = !DILocation(line: 303, column: 33, scope: !1223)
!1225 = !DILocation(line: 303, column: 6, scope: !1223)
!1226 = !DILocation(line: 304, column: 3, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1219, file: !670, line: 303, column: 41)
!1228 = !DILocation(line: 304, column: 12, scope: !1227)
!1229 = !DILocation(line: 304, column: 17, scope: !1227)
!1230 = !DILocation(line: 305, column: 19, scope: !1227)
!1231 = !DILocation(line: 305, column: 3, scope: !1227)
!1232 = !DILocation(line: 306, column: 2, scope: !1227)
!1233 = !DILocation(line: 308, column: 9, scope: !1166)
!1234 = !DILocation(line: 308, column: 2, scope: !1166)
!1235 = !DILocation(line: 309, column: 1, scope: !1166)
!1236 = !DILocation(line: 309, column: 1, scope: !1216)
!1237 = distinct !DISubprogram(name: "event_kick", scope: !670, file: !670, line: 311, type: !685, isLocal: true, isDefinition: true, scopeLine: 312, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !671)
!1238 = !DILocalVariable(name: "server", arg: 1, scope: !1237, file: !670, line: 311, type: !469)
!1239 = !DILocation(line: 311, column: 40, scope: !1237)
!1240 = !DILocalVariable(name: "data", arg: 2, scope: !1237, file: !670, line: 311, type: !344)
!1241 = !DILocation(line: 311, column: 60, scope: !1237)
!1242 = !DILocalVariable(name: "chanrec", scope: !1237, file: !670, line: 313, type: !371)
!1243 = !DILocation(line: 313, column: 15, scope: !1237)
!1244 = !DILocalVariable(name: "params", scope: !1237, file: !670, line: 314, type: !65)
!1245 = !DILocation(line: 314, column: 8, scope: !1237)
!1246 = !DILocalVariable(name: "channel", scope: !1237, file: !670, line: 314, type: !65)
!1247 = !DILocation(line: 314, column: 17, scope: !1237)
!1248 = !DILocalVariable(name: "nick", scope: !1237, file: !670, line: 314, type: !65)
!1249 = !DILocation(line: 314, column: 27, scope: !1237)
!1250 = !DILocalVariable(name: "reason", scope: !1237, file: !670, line: 314, type: !65)
!1251 = !DILocation(line: 314, column: 34, scope: !1237)
!1252 = !DILocation(line: 316, column: 2, scope: !1237)
!1253 = distinct !{!1253, !1252}
!1254 = !DILocation(line: 316, column: 10, scope: !1255)
!1255 = !DILexicalBlockFile(scope: !1256, file: !670, discriminator: 1)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !670, line: 316, column: 10)
!1257 = distinct !DILexicalBlock(scope: !1237, file: !670, line: 316, column: 4)
!1258 = !DILocation(line: 316, column: 15, scope: !1255)
!1259 = !DILocation(line: 316, column: 5, scope: !1260)
!1260 = !DILexicalBlockFile(scope: !1261, file: !670, discriminator: 2)
!1261 = distinct !DILexicalBlock(scope: !1256, file: !670, line: 316, column: 3)
!1262 = !DILocation(line: 316, column: 14, scope: !1263)
!1263 = !DILexicalBlockFile(scope: !1264, file: !670, discriminator: 3)
!1264 = distinct !DILexicalBlock(scope: !1256, file: !670, line: 316, column: 12)
!1265 = !DILocation(line: 316, column: 99, scope: !1263)
!1266 = !DILocation(line: 316, column: 110, scope: !1267)
!1267 = !DILexicalBlockFile(scope: !1257, file: !670, discriminator: 4)
!1268 = !DILocation(line: 318, column: 28, scope: !1237)
!1269 = !DILocation(line: 318, column: 11, scope: !1237)
!1270 = !DILocation(line: 318, column: 9, scope: !1237)
!1271 = !DILocation(line: 320, column: 25, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1237, file: !670, line: 320, column: 6)
!1273 = !DILocation(line: 320, column: 31, scope: !1272)
!1274 = !DILocation(line: 320, column: 39, scope: !1272)
!1275 = !DILocation(line: 320, column: 6, scope: !1272)
!1276 = !DILocation(line: 320, column: 45, scope: !1272)
!1277 = !DILocation(line: 320, column: 6, scope: !1237)
!1278 = !DILocation(line: 322, column: 10, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1272, file: !670, line: 320, column: 51)
!1280 = !DILocation(line: 322, column: 3, scope: !1279)
!1281 = !DILocation(line: 323, column: 3, scope: !1279)
!1282 = !DILocation(line: 326, column: 59, scope: !1237)
!1283 = !DILocation(line: 326, column: 41, scope: !1237)
!1284 = !DILocation(line: 326, column: 26, scope: !1237)
!1285 = !DILocation(line: 326, column: 38, scope: !1237)
!1286 = !DILocation(line: 326, column: 12, scope: !1287)
!1287 = !DILexicalBlockFile(scope: !1237, file: !670, discriminator: 1)
!1288 = !DILocation(line: 326, column: 10, scope: !1237)
!1289 = !DILocation(line: 327, column: 6, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1237, file: !670, line: 327, column: 6)
!1291 = !DILocation(line: 327, column: 14, scope: !1290)
!1292 = !DILocation(line: 327, column: 6, scope: !1237)
!1293 = !DILocation(line: 328, column: 27, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1290, file: !670, line: 327, column: 22)
!1295 = !DILocation(line: 328, column: 35, scope: !1294)
!1296 = !DILocation(line: 328, column: 3, scope: !1294)
!1297 = !DILocation(line: 329, column: 3, scope: !1294)
!1298 = !DILocation(line: 329, column: 12, scope: !1294)
!1299 = !DILocation(line: 329, column: 19, scope: !1294)
!1300 = !DILocation(line: 330, column: 19, scope: !1294)
!1301 = !DILocation(line: 330, column: 3, scope: !1294)
!1302 = !DILocation(line: 331, column: 2, scope: !1294)
!1303 = !DILocation(line: 333, column: 9, scope: !1237)
!1304 = !DILocation(line: 333, column: 2, scope: !1237)
!1305 = !DILocation(line: 334, column: 1, scope: !1237)
!1306 = !DILocation(line: 334, column: 1, scope: !1287)
!1307 = distinct !DISubprogram(name: "event_invite", scope: !670, file: !670, line: 336, type: !685, isLocal: true, isDefinition: true, scopeLine: 337, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !671)
!1308 = !DILocalVariable(name: "server", arg: 1, scope: !1307, file: !670, line: 336, type: !469)
!1309 = !DILocation(line: 336, column: 42, scope: !1307)
!1310 = !DILocalVariable(name: "data", arg: 2, scope: !1307, file: !670, line: 336, type: !344)
!1311 = !DILocation(line: 336, column: 62, scope: !1307)
!1312 = !DILocalVariable(name: "params", scope: !1307, file: !670, line: 338, type: !65)
!1313 = !DILocation(line: 338, column: 8, scope: !1307)
!1314 = !DILocalVariable(name: "channel", scope: !1307, file: !670, line: 338, type: !65)
!1315 = !DILocation(line: 338, column: 17, scope: !1307)
!1316 = !DILocalVariable(name: "shortchan", scope: !1307, file: !670, line: 338, type: !65)
!1317 = !DILocation(line: 338, column: 27, scope: !1307)
!1318 = !DILocation(line: 340, column: 2, scope: !1307)
!1319 = distinct !{!1319, !1318}
!1320 = !DILocation(line: 340, column: 10, scope: !1321)
!1321 = !DILexicalBlockFile(scope: !1322, file: !670, discriminator: 1)
!1322 = distinct !DILexicalBlock(scope: !1323, file: !670, line: 340, column: 10)
!1323 = distinct !DILexicalBlock(scope: !1307, file: !670, line: 340, column: 4)
!1324 = !DILocation(line: 340, column: 15, scope: !1321)
!1325 = !DILocation(line: 340, column: 5, scope: !1326)
!1326 = !DILexicalBlockFile(scope: !1327, file: !670, discriminator: 2)
!1327 = distinct !DILexicalBlock(scope: !1322, file: !670, line: 340, column: 3)
!1328 = !DILocation(line: 340, column: 14, scope: !1329)
!1329 = !DILexicalBlockFile(scope: !1330, file: !670, discriminator: 3)
!1330 = distinct !DILexicalBlock(scope: !1322, file: !670, line: 340, column: 12)
!1331 = !DILocation(line: 340, column: 99, scope: !1329)
!1332 = !DILocation(line: 340, column: 110, scope: !1333)
!1333 = !DILexicalBlockFile(scope: !1323, file: !670, discriminator: 4)
!1334 = !DILocation(line: 342, column: 28, scope: !1307)
!1335 = !DILocation(line: 342, column: 11, scope: !1307)
!1336 = !DILocation(line: 342, column: 9, scope: !1307)
!1337 = !DILocation(line: 344, column: 141, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1307, file: !670, line: 344, column: 6)
!1339 = !DILocation(line: 344, column: 123, scope: !1338)
!1340 = !DILocation(line: 344, column: 108, scope: !1338)
!1341 = !DILocation(line: 344, column: 19, scope: !1338)
!1342 = !DILocation(line: 344, column: 94, scope: !1343)
!1343 = !DILexicalBlockFile(scope: !1338, file: !670, discriminator: 1)
!1344 = !DILocation(line: 344, column: 94, scope: !1338)
!1345 = !DILocation(line: 344, column: 69, scope: !1346)
!1346 = !DILexicalBlockFile(scope: !1338, file: !670, discriminator: 2)
!1347 = !DILocation(line: 344, column: 53, scope: !1338)
!1348 = !DILocation(line: 344, column: 52, scope: !1338)
!1349 = !DILocation(line: 344, column: 27, scope: !1350)
!1350 = !DILexicalBlockFile(scope: !1338, file: !670, discriminator: 3)
!1351 = !DILocation(line: 344, column: 7, scope: !1338)
!1352 = !DILocation(line: 344, column: 15, scope: !1338)
!1353 = !DILocation(line: 344, column: 6, scope: !1307)
!1354 = !DILocalVariable(name: "setup", scope: !1355, file: !670, line: 346, type: !719)
!1355 = distinct !DILexicalBlock(scope: !1338, file: !670, line: 344, column: 48)
!1356 = !DILocation(line: 346, column: 22, scope: !1355)
!1357 = !DILocation(line: 348, column: 30, scope: !1355)
!1358 = !DILocation(line: 348, column: 39, scope: !1355)
!1359 = !DILocation(line: 348, column: 47, scope: !1355)
!1360 = !DILocation(line: 348, column: 56, scope: !1355)
!1361 = !DILocation(line: 348, column: 11, scope: !1355)
!1362 = !DILocation(line: 348, column: 9, scope: !1355)
!1363 = !DILocation(line: 349, column: 7, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1355, file: !670, line: 349, column: 7)
!1365 = !DILocation(line: 349, column: 13, scope: !1364)
!1366 = !DILocation(line: 349, column: 20, scope: !1364)
!1367 = !DILocation(line: 349, column: 23, scope: !1368)
!1368 = !DILexicalBlockFile(scope: !1364, file: !670, discriminator: 1)
!1369 = !DILocation(line: 349, column: 34, scope: !1368)
!1370 = !DILocation(line: 349, column: 41, scope: !1368)
!1371 = !DILocation(line: 350, column: 14, scope: !1364)
!1372 = !DILocation(line: 350, column: 7, scope: !1364)
!1373 = !DILocation(line: 350, column: 23, scope: !1364)
!1374 = !DILocation(line: 349, column: 7, scope: !1375)
!1375 = !DILexicalBlockFile(scope: !1355, file: !670, discriminator: 2)
!1376 = !DILocation(line: 351, column: 39, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1364, file: !670, line: 350, column: 28)
!1378 = !DILocation(line: 351, column: 46, scope: !1377)
!1379 = !DILocation(line: 351, column: 16, scope: !1377)
!1380 = !DILocation(line: 351, column: 14, scope: !1377)
!1381 = !DILocation(line: 352, column: 31, scope: !1377)
!1382 = !DILocation(line: 353, column: 10, scope: !1377)
!1383 = !DILocation(line: 353, column: 18, scope: !1377)
!1384 = !DILocation(line: 353, column: 27, scope: !1377)
!1385 = !DILocation(line: 352, column: 12, scope: !1377)
!1386 = !DILocation(line: 352, column: 10, scope: !1377)
!1387 = !DILocation(line: 354, column: 11, scope: !1377)
!1388 = !DILocation(line: 354, column: 4, scope: !1377)
!1389 = !DILocation(line: 355, column: 3, scope: !1377)
!1390 = !DILocation(line: 356, column: 7, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1355, file: !670, line: 356, column: 7)
!1392 = !DILocation(line: 356, column: 13, scope: !1391)
!1393 = !DILocation(line: 356, column: 20, scope: !1391)
!1394 = !DILocation(line: 356, column: 23, scope: !1395)
!1395 = !DILexicalBlockFile(scope: !1391, file: !670, discriminator: 1)
!1396 = !DILocation(line: 356, column: 30, scope: !1395)
!1397 = !DILocation(line: 356, column: 39, scope: !1395)
!1398 = !DILocation(line: 356, column: 42, scope: !1399)
!1399 = !DILexicalBlockFile(scope: !1391, file: !670, discriminator: 2)
!1400 = !DILocation(line: 356, column: 7, scope: !1399)
!1401 = !DILocation(line: 357, column: 4, scope: !1391)
!1402 = !DILocation(line: 357, column: 12, scope: !1391)
!1403 = !DILocation(line: 357, column: 60, scope: !1391)
!1404 = !DILocation(line: 357, column: 42, scope: !1391)
!1405 = !DILocation(line: 357, column: 27, scope: !1391)
!1406 = !DILocation(line: 357, column: 39, scope: !1391)
!1407 = !DILocation(line: 357, column: 4, scope: !1395)
!1408 = !DILocation(line: 358, column: 2, scope: !1355)
!1409 = !DILocation(line: 360, column: 9, scope: !1307)
!1410 = !DILocation(line: 360, column: 17, scope: !1307)
!1411 = !DILocation(line: 360, column: 2, scope: !1307)
!1412 = !DILocation(line: 361, column: 33, scope: !1307)
!1413 = !DILocation(line: 361, column: 24, scope: !1307)
!1414 = !DILocation(line: 361, column: 2, scope: !1307)
!1415 = !DILocation(line: 361, column: 10, scope: !1307)
!1416 = !DILocation(line: 361, column: 22, scope: !1307)
!1417 = !DILocation(line: 362, column: 9, scope: !1307)
!1418 = !DILocation(line: 362, column: 2, scope: !1307)
!1419 = !DILocation(line: 363, column: 1, scope: !1307)
!1420 = !DILocation(line: 363, column: 1, scope: !1421)
!1421 = !DILexicalBlockFile(scope: !1307, file: !670, discriminator: 1)
!1422 = distinct !DISubprogram(name: "event_topic_get", scope: !670, file: !670, line: 152, type: !685, isLocal: true, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !671)
!1423 = !DILocalVariable(name: "server", arg: 1, scope: !1422, file: !670, line: 152, type: !469)
!1424 = !DILocation(line: 152, column: 45, scope: !1422)
!1425 = !DILocalVariable(name: "data", arg: 2, scope: !1422, file: !670, line: 152, type: !344)
!1426 = !DILocation(line: 152, column: 65, scope: !1422)
!1427 = !DILocalVariable(name: "params", scope: !1422, file: !670, line: 154, type: !65)
!1428 = !DILocation(line: 154, column: 8, scope: !1422)
!1429 = !DILocalVariable(name: "channel", scope: !1422, file: !670, line: 154, type: !65)
!1430 = !DILocation(line: 154, column: 17, scope: !1422)
!1431 = !DILocalVariable(name: "topic", scope: !1422, file: !670, line: 154, type: !65)
!1432 = !DILocation(line: 154, column: 27, scope: !1422)
!1433 = !DILocation(line: 156, column: 2, scope: !1422)
!1434 = distinct !{!1434, !1433}
!1435 = !DILocation(line: 156, column: 10, scope: !1436)
!1436 = !DILexicalBlockFile(scope: !1437, file: !670, discriminator: 1)
!1437 = distinct !DILexicalBlock(scope: !1438, file: !670, line: 156, column: 10)
!1438 = distinct !DILexicalBlock(scope: !1422, file: !670, line: 156, column: 4)
!1439 = !DILocation(line: 156, column: 15, scope: !1436)
!1440 = !DILocation(line: 156, column: 5, scope: !1441)
!1441 = !DILexicalBlockFile(scope: !1442, file: !670, discriminator: 2)
!1442 = distinct !DILexicalBlock(scope: !1437, file: !670, line: 156, column: 3)
!1443 = !DILocation(line: 156, column: 14, scope: !1444)
!1444 = !DILexicalBlockFile(scope: !1445, file: !670, discriminator: 3)
!1445 = distinct !DILexicalBlock(scope: !1437, file: !670, line: 156, column: 12)
!1446 = !DILocation(line: 156, column: 99, scope: !1444)
!1447 = !DILocation(line: 156, column: 110, scope: !1448)
!1448 = !DILexicalBlockFile(scope: !1438, file: !670, discriminator: 4)
!1449 = !DILocation(line: 158, column: 28, scope: !1422)
!1450 = !DILocation(line: 158, column: 11, scope: !1422)
!1451 = !DILocation(line: 158, column: 9, scope: !1422)
!1452 = !DILocation(line: 159, column: 23, scope: !1422)
!1453 = !DILocation(line: 159, column: 31, scope: !1422)
!1454 = !DILocation(line: 159, column: 40, scope: !1422)
!1455 = !DILocation(line: 159, column: 2, scope: !1422)
!1456 = !DILocation(line: 160, column: 9, scope: !1422)
!1457 = !DILocation(line: 160, column: 2, scope: !1422)
!1458 = !DILocation(line: 161, column: 1, scope: !1422)
!1459 = !DILocation(line: 161, column: 1, scope: !1460)
!1460 = !DILexicalBlockFile(scope: !1422, file: !670, discriminator: 1)
!1461 = distinct !DISubprogram(name: "event_topic_info", scope: !670, file: !670, line: 178, type: !685, isLocal: true, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !671)
!1462 = !DILocalVariable(name: "server", arg: 1, scope: !1461, file: !670, line: 178, type: !469)
!1463 = !DILocation(line: 178, column: 46, scope: !1461)
!1464 = !DILocalVariable(name: "data", arg: 2, scope: !1461, file: !670, line: 178, type: !344)
!1465 = !DILocation(line: 178, column: 66, scope: !1461)
!1466 = !DILocalVariable(name: "params", scope: !1461, file: !670, line: 180, type: !65)
!1467 = !DILocation(line: 180, column: 8, scope: !1461)
!1468 = !DILocalVariable(name: "channel", scope: !1461, file: !670, line: 180, type: !65)
!1469 = !DILocation(line: 180, column: 17, scope: !1461)
!1470 = !DILocalVariable(name: "topicby", scope: !1461, file: !670, line: 180, type: !65)
!1471 = !DILocation(line: 180, column: 27, scope: !1461)
!1472 = !DILocalVariable(name: "topictime", scope: !1461, file: !670, line: 180, type: !65)
!1473 = !DILocation(line: 180, column: 37, scope: !1461)
!1474 = !DILocalVariable(name: "t", scope: !1461, file: !670, line: 181, type: !290)
!1475 = !DILocation(line: 181, column: 9, scope: !1461)
!1476 = !DILocation(line: 183, column: 2, scope: !1461)
!1477 = distinct !{!1477, !1476}
!1478 = !DILocation(line: 183, column: 10, scope: !1479)
!1479 = !DILexicalBlockFile(scope: !1480, file: !670, discriminator: 1)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !670, line: 183, column: 10)
!1481 = distinct !DILexicalBlock(scope: !1461, file: !670, line: 183, column: 4)
!1482 = !DILocation(line: 183, column: 15, scope: !1479)
!1483 = !DILocation(line: 183, column: 5, scope: !1484)
!1484 = !DILexicalBlockFile(scope: !1485, file: !670, discriminator: 2)
!1485 = distinct !DILexicalBlock(scope: !1480, file: !670, line: 183, column: 3)
!1486 = !DILocation(line: 183, column: 14, scope: !1487)
!1487 = !DILexicalBlockFile(scope: !1488, file: !670, discriminator: 3)
!1488 = distinct !DILexicalBlock(scope: !1480, file: !670, line: 183, column: 12)
!1489 = !DILocation(line: 183, column: 99, scope: !1487)
!1490 = !DILocation(line: 183, column: 110, scope: !1491)
!1491 = !DILexicalBlockFile(scope: !1481, file: !670, discriminator: 4)
!1492 = !DILocation(line: 185, column: 28, scope: !1461)
!1493 = !DILocation(line: 185, column: 11, scope: !1461)
!1494 = !DILocation(line: 185, column: 9, scope: !1461)
!1495 = !DILocation(line: 188, column: 20, scope: !1461)
!1496 = !DILocation(line: 188, column: 15, scope: !1461)
!1497 = !DILocation(line: 188, column: 4, scope: !1461)
!1498 = !DILocation(line: 189, column: 23, scope: !1461)
!1499 = !DILocation(line: 189, column: 31, scope: !1461)
!1500 = !DILocation(line: 189, column: 45, scope: !1461)
!1501 = !DILocation(line: 189, column: 54, scope: !1461)
!1502 = !DILocation(line: 189, column: 2, scope: !1461)
!1503 = !DILocation(line: 190, column: 9, scope: !1461)
!1504 = !DILocation(line: 190, column: 2, scope: !1461)
!1505 = !DILocation(line: 191, column: 1, scope: !1461)
!1506 = !DILocation(line: 191, column: 1, scope: !1507)
!1507 = !DILexicalBlockFile(scope: !1461, file: !670, discriminator: 1)
!1508 = distinct !DISubprogram(name: "channel_events_deinit", scope: !670, file: !670, line: 382, type: !206, isLocal: false, isDefinition: true, scopeLine: 383, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !671)
!1509 = !DILocation(line: 384, column: 2, scope: !1508)
!1510 = !DILocation(line: 385, column: 2, scope: !1508)
!1511 = !DILocation(line: 386, column: 2, scope: !1508)
!1512 = !DILocation(line: 388, column: 2, scope: !1508)
!1513 = !DILocation(line: 389, column: 2, scope: !1508)
!1514 = !DILocation(line: 390, column: 2, scope: !1508)
!1515 = !DILocation(line: 391, column: 2, scope: !1508)
!1516 = !DILocation(line: 392, column: 2, scope: !1508)
!1517 = !DILocation(line: 393, column: 2, scope: !1508)
!1518 = !DILocation(line: 394, column: 2, scope: !1508)
!1519 = !DILocation(line: 395, column: 1, scope: !1508)
!1520 = distinct !DISubprogram(name: "check_join_failure", scope: !670, file: !670, line: 31, type: !685, isLocal: true, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !671)
!1521 = !DILocalVariable(name: "server", arg: 1, scope: !1520, file: !670, line: 31, type: !469)
!1522 = !DILocation(line: 31, column: 48, scope: !1520)
!1523 = !DILocalVariable(name: "channel", arg: 2, scope: !1520, file: !670, line: 31, type: !344)
!1524 = !DILocation(line: 31, column: 68, scope: !1520)
!1525 = !DILocalVariable(name: "chanrec", scope: !1520, file: !670, line: 33, type: !371)
!1526 = !DILocation(line: 33, column: 15, scope: !1520)
!1527 = !DILocalVariable(name: "chan2", scope: !1520, file: !670, line: 34, type: !65)
!1528 = !DILocation(line: 34, column: 8, scope: !1520)
!1529 = !DILocation(line: 36, column: 6, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1520, file: !670, line: 36, column: 6)
!1531 = !DILocation(line: 36, column: 17, scope: !1530)
!1532 = !DILocation(line: 36, column: 24, scope: !1530)
!1533 = !DILocation(line: 36, column: 27, scope: !1534)
!1534 = !DILexicalBlockFile(scope: !1530, file: !670, discriminator: 1)
!1535 = !DILocation(line: 36, column: 38, scope: !1534)
!1536 = !DILocation(line: 36, column: 6, scope: !1534)
!1537 = !DILocation(line: 37, column: 10, scope: !1530)
!1538 = !DILocation(line: 37, column: 3, scope: !1530)
!1539 = !DILocation(line: 39, column: 59, scope: !1520)
!1540 = !DILocation(line: 39, column: 41, scope: !1520)
!1541 = !DILocation(line: 39, column: 26, scope: !1520)
!1542 = !DILocation(line: 39, column: 38, scope: !1520)
!1543 = !DILocation(line: 39, column: 12, scope: !1544)
!1544 = !DILexicalBlockFile(scope: !1520, file: !670, discriminator: 1)
!1545 = !DILocation(line: 39, column: 10, scope: !1520)
!1546 = !DILocation(line: 40, column: 6, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1520, file: !670, line: 40, column: 6)
!1548 = !DILocation(line: 40, column: 14, scope: !1547)
!1549 = !DILocation(line: 40, column: 21, scope: !1547)
!1550 = !DILocation(line: 40, column: 24, scope: !1551)
!1551 = !DILexicalBlockFile(scope: !1547, file: !670, discriminator: 1)
!1552 = !DILocation(line: 40, column: 35, scope: !1551)
!1553 = !DILocation(line: 40, column: 42, scope: !1551)
!1554 = !DILocation(line: 40, column: 52, scope: !1555)
!1555 = !DILexicalBlockFile(scope: !1547, file: !670, discriminator: 2)
!1556 = !DILocation(line: 40, column: 45, scope: !1555)
!1557 = !DILocation(line: 40, column: 61, scope: !1555)
!1558 = !DILocation(line: 40, column: 6, scope: !1555)
!1559 = !DILocation(line: 43, column: 34, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1547, file: !670, line: 40, column: 66)
!1561 = !DILocation(line: 43, column: 41, scope: !1560)
!1562 = !DILocation(line: 43, column: 11, scope: !1560)
!1563 = !DILocation(line: 43, column: 9, scope: !1560)
!1564 = !DILocation(line: 44, column: 60, scope: !1560)
!1565 = !DILocation(line: 44, column: 42, scope: !1560)
!1566 = !DILocation(line: 44, column: 27, scope: !1560)
!1567 = !DILocation(line: 44, column: 39, scope: !1560)
!1568 = !DILocation(line: 44, column: 13, scope: !1569)
!1569 = !DILexicalBlockFile(scope: !1560, file: !670, discriminator: 1)
!1570 = !DILocation(line: 44, column: 11, scope: !1560)
!1571 = !DILocation(line: 45, column: 10, scope: !1560)
!1572 = !DILocation(line: 45, column: 3, scope: !1560)
!1573 = !DILocation(line: 46, column: 2, scope: !1560)
!1574 = !DILocation(line: 48, column: 6, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1520, file: !670, line: 48, column: 6)
!1576 = !DILocation(line: 48, column: 14, scope: !1575)
!1577 = !DILocation(line: 48, column: 21, scope: !1575)
!1578 = !DILocation(line: 48, column: 25, scope: !1579)
!1579 = !DILexicalBlockFile(scope: !1575, file: !670, discriminator: 1)
!1580 = !DILocation(line: 48, column: 34, scope: !1579)
!1581 = !DILocation(line: 48, column: 6, scope: !1579)
!1582 = !DILocation(line: 49, column: 3, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1575, file: !670, line: 48, column: 42)
!1584 = !DILocation(line: 49, column: 12, scope: !1583)
!1585 = !DILocation(line: 49, column: 17, scope: !1583)
!1586 = !DILocation(line: 50, column: 19, scope: !1583)
!1587 = !DILocation(line: 50, column: 3, scope: !1583)
!1588 = !DILocation(line: 51, column: 2, scope: !1583)
!1589 = !DILocation(line: 52, column: 1, scope: !1520)
!1590 = distinct !DISubprogram(name: "channel_change_topic", scope: !670, file: !670, line: 120, type: !1591, isLocal: true, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !671)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{null, !469, !344, !344, !344, !290}
!1593 = !DILocalVariable(name: "server", arg: 1, scope: !1590, file: !670, line: 120, type: !469)
!1594 = !DILocation(line: 120, column: 50, scope: !1590)
!1595 = !DILocalVariable(name: "channel", arg: 2, scope: !1590, file: !670, line: 120, type: !344)
!1596 = !DILocation(line: 120, column: 70, scope: !1590)
!1597 = !DILocalVariable(name: "topic", arg: 3, scope: !1590, file: !670, line: 121, type: !344)
!1598 = !DILocation(line: 121, column: 18, scope: !1590)
!1599 = !DILocalVariable(name: "setby", arg: 4, scope: !1590, file: !670, line: 121, type: !344)
!1600 = !DILocation(line: 121, column: 37, scope: !1590)
!1601 = !DILocalVariable(name: "settime", arg: 5, scope: !1590, file: !670, line: 122, type: !290)
!1602 = !DILocation(line: 122, column: 13, scope: !1590)
!1603 = !DILocalVariable(name: "chanrec", scope: !1590, file: !670, line: 124, type: !371)
!1604 = !DILocation(line: 124, column: 15, scope: !1590)
!1605 = !DILocalVariable(name: "recoded", scope: !1590, file: !670, line: 125, type: !65)
!1606 = !DILocation(line: 125, column: 8, scope: !1590)
!1607 = !DILocation(line: 127, column: 59, scope: !1590)
!1608 = !DILocation(line: 127, column: 41, scope: !1590)
!1609 = !DILocation(line: 127, column: 26, scope: !1590)
!1610 = !DILocation(line: 127, column: 38, scope: !1590)
!1611 = !DILocation(line: 127, column: 12, scope: !1612)
!1612 = !DILexicalBlockFile(scope: !1590, file: !670, discriminator: 1)
!1613 = !DILocation(line: 127, column: 10, scope: !1590)
!1614 = !DILocation(line: 128, column: 6, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1590, file: !670, line: 128, column: 6)
!1616 = !DILocation(line: 128, column: 14, scope: !1615)
!1617 = !DILocation(line: 128, column: 6, scope: !1590)
!1618 = !DILocation(line: 128, column: 22, scope: !1619)
!1619 = !DILexicalBlockFile(scope: !1615, file: !670, discriminator: 1)
!1620 = !DILocation(line: 131, column: 56, scope: !1590)
!1621 = !DILocation(line: 131, column: 38, scope: !1590)
!1622 = !DILocation(line: 131, column: 23, scope: !1590)
!1623 = !DILocation(line: 131, column: 35, scope: !1590)
!1624 = !DILocation(line: 131, column: 42, scope: !1590)
!1625 = !DILocation(line: 131, column: 12, scope: !1612)
!1626 = !DILocation(line: 131, column: 10, scope: !1590)
!1627 = !DILocation(line: 132, column: 6, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1590, file: !670, line: 132, column: 6)
!1629 = !DILocation(line: 132, column: 12, scope: !1628)
!1630 = !DILocation(line: 132, column: 6, scope: !1590)
!1631 = !DILocation(line: 133, column: 10, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1628, file: !670, line: 132, column: 20)
!1633 = !DILocation(line: 133, column: 19, scope: !1632)
!1634 = !DILocation(line: 133, column: 3, scope: !1632)
!1635 = !DILocation(line: 134, column: 20, scope: !1632)
!1636 = !DILocation(line: 134, column: 28, scope: !1632)
!1637 = !DILocation(line: 134, column: 20, scope: !1638)
!1638 = !DILexicalBlockFile(scope: !1632, file: !670, discriminator: 1)
!1639 = !DILocation(line: 134, column: 53, scope: !1640)
!1640 = !DILexicalBlockFile(scope: !1632, file: !670, discriminator: 2)
!1641 = !DILocation(line: 134, column: 44, scope: !1640)
!1642 = !DILocation(line: 134, column: 20, scope: !1640)
!1643 = !DILocation(line: 134, column: 20, scope: !1644)
!1644 = !DILexicalBlockFile(scope: !1632, file: !670, discriminator: 3)
!1645 = !DILocation(line: 134, column: 3, scope: !1644)
!1646 = !DILocation(line: 134, column: 12, scope: !1644)
!1647 = !DILocation(line: 134, column: 18, scope: !1644)
!1648 = !DILocation(line: 135, column: 2, scope: !1632)
!1649 = !DILocation(line: 136, column: 9, scope: !1590)
!1650 = !DILocation(line: 136, column: 2, scope: !1590)
!1651 = !DILocation(line: 138, column: 9, scope: !1590)
!1652 = !DILocation(line: 138, column: 18, scope: !1590)
!1653 = !DILocation(line: 138, column: 2, scope: !1590)
!1654 = !DILocation(line: 139, column: 31, scope: !1590)
!1655 = !DILocation(line: 139, column: 22, scope: !1590)
!1656 = !DILocation(line: 139, column: 2, scope: !1590)
!1657 = !DILocation(line: 139, column: 11, scope: !1590)
!1658 = !DILocation(line: 139, column: 20, scope: !1590)
!1659 = !DILocation(line: 141, column: 6, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1590, file: !670, line: 141, column: 6)
!1661 = !DILocation(line: 141, column: 15, scope: !1660)
!1662 = !DILocation(line: 141, column: 24, scope: !1660)
!1663 = !DILocation(line: 141, column: 6, scope: !1590)
!1664 = !DILocation(line: 144, column: 3, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1660, file: !670, line: 141, column: 32)
!1666 = !DILocation(line: 144, column: 12, scope: !1665)
!1667 = !DILocation(line: 144, column: 23, scope: !1665)
!1668 = !DILocation(line: 145, column: 2, scope: !1665)
!1669 = !DILocation(line: 146, column: 25, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1660, file: !670, line: 145, column: 9)
!1671 = !DILocation(line: 146, column: 3, scope: !1670)
!1672 = !DILocation(line: 146, column: 12, scope: !1670)
!1673 = !DILocation(line: 146, column: 23, scope: !1670)
!1674 = !DILocation(line: 149, column: 42, scope: !1590)
!1675 = !DILocation(line: 149, column: 2, scope: !1590)
!1676 = !DILocation(line: 150, column: 1, scope: !1590)
!1677 = !DILocation(line: 150, column: 1, scope: !1612)
!1678 = distinct !DISubprogram(name: "channel_find_unjoined", scope: !670, file: !670, line: 195, type: !1679, isLocal: true, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !671)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!458, !469, !344}
!1681 = !DILocalVariable(name: "server", arg: 1, scope: !1678, file: !670, line: 195, type: !469)
!1682 = !DILocation(line: 195, column: 63, scope: !1678)
!1683 = !DILocalVariable(name: "channel", arg: 2, scope: !1678, file: !670, line: 196, type: !344)
!1684 = !DILocation(line: 196, column: 24, scope: !1678)
!1685 = !DILocalVariable(name: "tmp", scope: !1678, file: !670, line: 198, type: !218)
!1686 = !DILocation(line: 198, column: 10, scope: !1678)
!1687 = !DILocalVariable(name: "len", scope: !1678, file: !670, line: 199, type: !52)
!1688 = !DILocation(line: 199, column: 6, scope: !1678)
!1689 = !DILocation(line: 201, column: 15, scope: !1678)
!1690 = !DILocation(line: 201, column: 8, scope: !1678)
!1691 = !DILocation(line: 201, column: 6, scope: !1678)
!1692 = !DILocation(line: 202, column: 13, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1678, file: !670, line: 202, column: 2)
!1694 = !DILocation(line: 202, column: 21, scope: !1693)
!1695 = !DILocation(line: 202, column: 11, scope: !1693)
!1696 = !DILocation(line: 202, column: 7, scope: !1693)
!1697 = !DILocation(line: 202, column: 31, scope: !1698)
!1698 = !DILexicalBlockFile(scope: !1699, file: !670, discriminator: 1)
!1699 = distinct !DILexicalBlock(scope: !1693, file: !670, line: 202, column: 2)
!1700 = !DILocation(line: 202, column: 35, scope: !1698)
!1701 = !DILocation(line: 202, column: 2, scope: !1698)
!1702 = !DILocalVariable(name: "rec", scope: !1703, file: !670, line: 203, type: !458)
!1703 = distinct !DILexicalBlock(scope: !1699, file: !670, line: 202, column: 60)
!1704 = !DILocation(line: 203, column: 20, scope: !1703)
!1705 = !DILocation(line: 203, column: 26, scope: !1703)
!1706 = !DILocation(line: 203, column: 31, scope: !1703)
!1707 = !DILocation(line: 205, column: 97, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1703, file: !670, line: 205, column: 7)
!1709 = !DILocation(line: 205, column: 72, scope: !1708)
!1710 = !DILocation(line: 205, column: 56, scope: !1708)
!1711 = !DILocation(line: 205, column: 55, scope: !1708)
!1712 = !DILocation(line: 205, column: 30, scope: !1713)
!1713 = !DILexicalBlockFile(scope: !1708, file: !670, discriminator: 4)
!1714 = !DILocation(line: 205, column: 10, scope: !1708)
!1715 = !DILocation(line: 205, column: 33, scope: !1708)
!1716 = !DILocation(line: 205, column: 9, scope: !1717)
!1717 = !DILexicalBlockFile(scope: !1708, file: !670, discriminator: 1)
!1718 = !DILocation(line: 205, column: 33, scope: !1719)
!1719 = !DILexicalBlockFile(scope: !1708, file: !670, discriminator: 2)
!1720 = !DILocation(line: 205, column: 36, scope: !1721)
!1721 = !DILexicalBlockFile(scope: !1708, file: !670, discriminator: 3)
!1722 = !DILocation(line: 205, column: 41, scope: !1721)
!1723 = !DILocation(line: 205, column: 7, scope: !1721)
!1724 = !DILocation(line: 206, column: 4, scope: !1708)
!1725 = !DILocation(line: 208, column: 27, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1703, file: !670, line: 208, column: 7)
!1727 = !DILocation(line: 208, column: 36, scope: !1726)
!1728 = !DILocation(line: 208, column: 41, scope: !1726)
!1729 = !DILocation(line: 208, column: 47, scope: !1726)
!1730 = !DILocation(line: 208, column: 7, scope: !1726)
!1731 = !DILocation(line: 208, column: 52, scope: !1726)
!1732 = !DILocation(line: 208, column: 57, scope: !1726)
!1733 = !DILocation(line: 209, column: 8, scope: !1726)
!1734 = !DILocation(line: 209, column: 12, scope: !1726)
!1735 = !DILocation(line: 209, column: 17, scope: !1726)
!1736 = !DILocation(line: 209, column: 30, scope: !1737)
!1737 = !DILexicalBlockFile(scope: !1726, file: !670, discriminator: 1)
!1738 = !DILocation(line: 209, column: 20, scope: !1737)
!1739 = !DILocation(line: 209, column: 25, scope: !1737)
!1740 = !DILocation(line: 209, column: 35, scope: !1737)
!1741 = !DILocation(line: 208, column: 7, scope: !1742)
!1742 = !DILexicalBlockFile(scope: !1703, file: !670, discriminator: 1)
!1743 = !DILocation(line: 210, column: 11, scope: !1726)
!1744 = !DILocation(line: 210, column: 4, scope: !1726)
!1745 = !DILocation(line: 211, column: 2, scope: !1703)
!1746 = !DILocation(line: 202, column: 49, scope: !1747)
!1747 = !DILexicalBlockFile(scope: !1699, file: !670, discriminator: 2)
!1748 = !DILocation(line: 202, column: 54, scope: !1747)
!1749 = !DILocation(line: 202, column: 47, scope: !1747)
!1750 = !DILocation(line: 202, column: 2, scope: !1747)
!1751 = distinct !{!1751, !1752}
!1752 = !DILocation(line: 202, column: 2, scope: !1678)
!1753 = !DILocation(line: 213, column: 2, scope: !1678)
!1754 = !DILocation(line: 214, column: 1, scope: !1678)
