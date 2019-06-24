; ModuleID = './line113-channel-rejoin.o.i'
source_filename = "./line113-channel-rejoin.o.i"
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
%struct._WI_ITEM_REC = type opaque
%struct._NICK_REC = type { i32, i32, i64, i8*, i8*, i8*, i32, i8, [8 x i8], i8*, %struct._NICK_REC* }
%struct._QUERY_REC = type opaque
%struct._REDIRECT_REC = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._GTimeVal = type { i64, i64 }
%struct._GHashTable = type opaque
%struct.modes_type = type { void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, i8 }
%struct._IRC_CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._IRC_SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)*, %struct._GSList*, i64, i32, i32 }
%struct.REJOIN_REC = type { i8*, i8*, i8 }

@.str = private unnamed_addr constant [9 x i8] c"irc/core\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"servers\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"channels_rejoin_unavailable\00", align 1
@rejoin_tag = internal global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"rmrejoins\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"IRC\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"event 407\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"event 437\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"channel joined\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"channel destroyed\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"server disconnected\00", align 1
@servers = external global %struct._GSList*, align 8
@.str.10 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@__func__.server_rejoin_channels = private unnamed_addr constant [23 x i8] c"server_rejoin_channels\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"IS_IRC_SERVER(server)\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%s,\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"x,\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@__func__.rejoin_destroy = private unnamed_addr constant [15 x i8] c"rejoin_destroy\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"rec != NULL\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"channel rejoin remove\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"error command\00", align 1
@__func__.event_duplicate_channel = private unnamed_addr constant [24 x i8] c"event_duplicate_channel\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@__func__.channel_rejoin = private unnamed_addr constant [15 x i8] c"channel_rejoin\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"channel != NULL\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"WINDOW ITEM TYPE\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"CHANNEL\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"channel rejoin new\00", align 1
@__func__.rejoin_find = private unnamed_addr constant [12 x i8] c"rejoin_find\00", align 1
@__func__.event_target_unavailable = private unnamed_addr constant [25 x i8] c"event_target_unavailable\00", align 1

; Function Attrs: nounwind uwtable
define void @channel_rejoin_init() #0 !dbg !701 {
  call void @settings_add_bool_module(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0), i32 1), !dbg !703
  %1 = call i32 @g_timeout_add(i32 300000, i32 (i8*)* bitcast (i32 ()* @sig_rejoin to i32 (i8*)*), i8* null), !dbg !704
  store i32 %1, i32* @rejoin_tag, align 4, !dbg !705
  %2 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)), !dbg !706
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 %2, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @cmd_rmrejoins to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !707
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_duplicate_channel to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !709
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_target_unavailable to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !710
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_CHANNEL_REC*)* @sig_remove_rejoin to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !711
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_CHANNEL_REC*)* @sig_remove_rejoin to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !712
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @sig_disconnected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !713
  ret void, !dbg !714
}

declare void @settings_add_bool_module(i8*, i8*, i8*, i32) #1

declare i32 @g_timeout_add(i32, i32 (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @sig_rejoin() #0 !dbg !715 {
  %1 = alloca %struct._GSList*, align 8
  %2 = alloca %struct._IRC_SERVER_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %1, metadata !718, metadata !719), !dbg !720
  %3 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !721
  store %struct._GSList* %3, %struct._GSList** %1, align 8, !dbg !723
  br label %4, !dbg !724

; <label>:4:                                      ; preds = %30, %0
  %5 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !725
  %6 = icmp ne %struct._GSList* %5, null, !dbg !728
  br i1 %6, label %7, label %34, !dbg !729

; <label>:7:                                      ; preds = %4
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %2, metadata !730, metadata !719), !dbg !732
  %8 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !733
  %9 = getelementptr inbounds %struct._GSList, %struct._GSList* %8, i32 0, i32 0, !dbg !734
  %10 = load i8*, i8** %9, align 8, !dbg !734
  %11 = bitcast i8* %10 to %struct._IRC_SERVER_REC*, !dbg !733
  store %struct._IRC_SERVER_REC* %11, %struct._IRC_SERVER_REC** %2, align 8, !dbg !732
  %12 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !735
  %13 = bitcast %struct._IRC_SERVER_REC* %12 to i8*, !dbg !735
  %14 = call i8* @module_check_cast(i8* %13, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !737
  %15 = bitcast i8* %14 to %struct._SERVER_REC*, !dbg !738
  %16 = bitcast %struct._SERVER_REC* %15 to i8*, !dbg !739
  %17 = call i8* @chat_protocol_check_cast(i8* %16, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)), !dbg !740
  %18 = bitcast i8* %17 to %struct._IRC_SERVER_REC*, !dbg !742
  %19 = icmp ne %struct._IRC_SERVER_REC* %18, null, !dbg !742
  br i1 %19, label %20, label %21, !dbg !743

; <label>:20:                                     ; preds = %7
  br i1 false, label %29, label %22, !dbg !744

; <label>:21:                                     ; preds = %7
  br i1 false, label %22, label %29, !dbg !746

; <label>:22:                                     ; preds = %21, %20
  %23 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !748
  %24 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %23, i32 0, i32 67, !dbg !750
  %25 = load %struct._GSList*, %struct._GSList** %24, align 8, !dbg !750
  %26 = icmp ne %struct._GSList* %25, null, !dbg !751
  br i1 %26, label %27, label %29, !dbg !752

; <label>:27:                                     ; preds = %22
  %28 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !753
  call void @server_rejoin_channels(%struct._IRC_SERVER_REC* %28), !dbg !754
  br label %29, !dbg !754

; <label>:29:                                     ; preds = %27, %22, %21, %20
  br label %30, !dbg !755

; <label>:30:                                     ; preds = %29
  %31 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !756
  %32 = getelementptr inbounds %struct._GSList, %struct._GSList* %31, i32 0, i32 1, !dbg !758
  %33 = load %struct._GSList*, %struct._GSList** %32, align 8, !dbg !758
  store %struct._GSList* %33, %struct._GSList** %1, align 8, !dbg !759
  br label %4, !dbg !760, !llvm.loop !761

; <label>:34:                                     ; preds = %4
  ret i32 1, !dbg !763
}

declare void @command_bind_full(i8*, i32, i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare i32 @chat_protocol_lookup(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @cmd_rmrejoins(i8*, %struct._IRC_SERVER_REC*) #0 !dbg !764 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !767, metadata !719), !dbg !768
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !769, metadata !719), !dbg !770
  br label %5, !dbg !771, !llvm.loop !772

; <label>:5:                                      ; preds = %2
  %6 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !773
  %7 = icmp ne %struct._IRC_SERVER_REC* %6, null, !dbg !777
  br i1 %7, label %8, label %20, !dbg !778

; <label>:8:                                      ; preds = %5
  %9 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !779
  %10 = bitcast %struct._IRC_SERVER_REC* %9 to i8*, !dbg !779
  %11 = call i8* @module_check_cast(i8* %10, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !781
  %12 = bitcast i8* %11 to %struct._SERVER_REC*, !dbg !782
  %13 = bitcast %struct._SERVER_REC* %12 to i8*, !dbg !783
  %14 = call i8* @chat_protocol_check_cast(i8* %13, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)), !dbg !784
  %15 = bitcast i8* %14 to %struct._IRC_SERVER_REC*, !dbg !786
  %16 = icmp ne %struct._IRC_SERVER_REC* %15, null, !dbg !786
  br i1 %16, label %17, label %18, !dbg !787

; <label>:17:                                     ; preds = %8
  br i1 false, label %19, label %20, !dbg !788

; <label>:18:                                     ; preds = %8
  br i1 false, label %20, label %19, !dbg !790

; <label>:19:                                     ; preds = %18, %17
  br label %49, !dbg !792

; <label>:20:                                     ; preds = %18, %17, %5
  %21 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !794
  %22 = icmp eq %struct._IRC_SERVER_REC* %21, null, !dbg !797
  br i1 %22, label %30, label %23, !dbg !798

; <label>:23:                                     ; preds = %20
  %24 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !799
  %25 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %24, i32 0, i32 8, !dbg !801
  %26 = load i8, i8* %25, align 8, !dbg !801
  %27 = and i8 %26, 1, !dbg !801
  %28 = zext i8 %27 to i32, !dbg !801
  %29 = icmp ne i32 %28, 0, !dbg !802
  br i1 %29, label %34, label %30, !dbg !803

; <label>:30:                                     ; preds = %23, %20
  br label %31, !dbg !804, !llvm.loop !806

; <label>:31:                                     ; preds = %30
  %32 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !808
  call void @signal_stop(), !dbg !811
  br label %49, !dbg !813
                                                  ; No predecessors!
  br label %34, !dbg !814

; <label>:34:                                     ; preds = %33, %23
  br label %35, !dbg !816

; <label>:35:                                     ; preds = %34
  br label %36, !dbg !818

; <label>:36:                                     ; preds = %41, %35
  %37 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !819
  %38 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %37, i32 0, i32 67, !dbg !821
  %39 = load %struct._GSList*, %struct._GSList** %38, align 8, !dbg !821
  %40 = icmp ne %struct._GSList* %39, null, !dbg !822
  br i1 %40, label %41, label %49, !dbg !823

; <label>:41:                                     ; preds = %36
  %42 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !824
  %43 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !825
  %44 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %43, i32 0, i32 67, !dbg !826
  %45 = load %struct._GSList*, %struct._GSList** %44, align 8, !dbg !826
  %46 = getelementptr inbounds %struct._GSList, %struct._GSList* %45, i32 0, i32 0, !dbg !827
  %47 = load i8*, i8** %46, align 8, !dbg !827
  %48 = bitcast i8* %47 to %struct.REJOIN_REC*, !dbg !825
  call void @rejoin_destroy(%struct._IRC_SERVER_REC* %42, %struct.REJOIN_REC* %48), !dbg !828
  br label %36, !dbg !829, !llvm.loop !831

; <label>:49:                                     ; preds = %19, %31, %36
  ret void, !dbg !832
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @event_duplicate_channel(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !833 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._CHANNEL_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !836, metadata !719), !dbg !837
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !838, metadata !719), !dbg !839
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %5, metadata !840, metadata !719), !dbg !841
  call void @llvm.dbg.declare(metadata i8** %6, metadata !842, metadata !719), !dbg !843
  call void @llvm.dbg.declare(metadata i8** %7, metadata !844, metadata !719), !dbg !845
  call void @llvm.dbg.declare(metadata i8** %8, metadata !846, metadata !719), !dbg !847
  br label %9, !dbg !848, !llvm.loop !849

; <label>:9:                                      ; preds = %2
  %10 = load i8*, i8** %4, align 8, !dbg !850
  %11 = icmp ne i8* %10, null, !dbg !854
  br i1 %11, label %12, label %13, !dbg !850

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !855

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.event_duplicate_channel, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0)), !dbg !858
  br label %63, !dbg !861

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !862

; <label>:15:                                     ; preds = %14
  %16 = load i8*, i8** %4, align 8, !dbg !864
  %17 = call i8* (i8*, i32, ...) @event_get_params(i8* %16, i32 3, i8* null, i8* null, i8** %7), !dbg !865
  store i8* %17, i8** %6, align 8, !dbg !866
  %18 = load i8*, i8** %7, align 8, !dbg !867
  %19 = call i8* @strchr(i8* %18, i32 32) #4, !dbg !868
  store i8* %19, i8** %8, align 8, !dbg !869
  %20 = load i8*, i8** %8, align 8, !dbg !870
  %21 = icmp ne i8* %20, null, !dbg !872
  br i1 %21, label %22, label %24, !dbg !873

; <label>:22:                                     ; preds = %15
  %23 = load i8*, i8** %8, align 8, !dbg !874
  store i8 0, i8* %23, align 1, !dbg !876
  br label %24, !dbg !877

; <label>:24:                                     ; preds = %22, %15
  %25 = load i8*, i8** %7, align 8, !dbg !878
  %26 = getelementptr inbounds i8, i8* %25, i64 0, !dbg !878
  %27 = load i8, i8* %26, align 1, !dbg !878
  %28 = sext i8 %27 to i32, !dbg !878
  %29 = icmp eq i32 %28, 33, !dbg !880
  br i1 %29, label %30, label %61, !dbg !881

; <label>:30:                                     ; preds = %24
  %31 = load i8*, i8** %7, align 8, !dbg !882
  %32 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !882
  %33 = load i8, i8* %32, align 1, !dbg !882
  %34 = sext i8 %33 to i32, !dbg !882
  %35 = icmp ne i32 %34, 33, !dbg !884
  br i1 %35, label %36, label %61, !dbg !885

; <label>:36:                                     ; preds = %30
  %37 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !886
  %38 = bitcast %struct._IRC_SERVER_REC* %37 to i8*, !dbg !886
  %39 = call i8* @module_check_cast(i8* %38, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !888
  %40 = bitcast i8* %39 to %struct._SERVER_REC*, !dbg !889
  %41 = load i8*, i8** %7, align 8, !dbg !890
  %42 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %40, i8* %41), !dbg !891
  store %struct._CHANNEL_REC* %42, %struct._CHANNEL_REC** %5, align 8, !dbg !893
  %43 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %5, align 8, !dbg !894
  %44 = icmp ne %struct._CHANNEL_REC* %43, null, !dbg !896
  br i1 %44, label %45, label %60, !dbg !897

; <label>:45:                                     ; preds = %36
  %46 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %5, align 8, !dbg !898
  %47 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %46, i32 0, i32 21, !dbg !900
  %48 = load i16, i16* %47, align 8, !dbg !900
  %49 = lshr i16 %48, 1, !dbg !900
  %50 = and i16 %49, 1, !dbg !900
  %51 = zext i16 %50 to i32, !dbg !900
  %52 = icmp ne i32 %51, 0, !dbg !898
  br i1 %52, label %60, label %53, !dbg !901

; <label>:53:                                     ; preds = %45
  %54 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !902
  %55 = load i8*, i8** %7, align 8, !dbg !905
  %56 = call i32 @channel_rejoin(%struct._IRC_SERVER_REC* %54, i8* %55), !dbg !906
  %57 = icmp ne i32 %56, 0, !dbg !906
  br i1 %57, label %58, label %59, !dbg !907

; <label>:58:                                     ; preds = %53
  call void @signal_stop(), !dbg !908
  br label %59, !dbg !910

; <label>:59:                                     ; preds = %58, %53
  br label %60, !dbg !911

; <label>:60:                                     ; preds = %59, %45, %36
  br label %61, !dbg !912

; <label>:61:                                     ; preds = %60, %30, %24
  %62 = load i8*, i8** %6, align 8, !dbg !913
  call void @g_free(i8* %62), !dbg !914
  br label %63, !dbg !915

; <label>:63:                                     ; preds = %61, %13
  ret void, !dbg !916
}

; Function Attrs: nounwind uwtable
define internal void @event_target_unavailable(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !918 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._IRC_CHANNEL_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !919, metadata !719), !dbg !920
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !921, metadata !719), !dbg !922
  call void @llvm.dbg.declare(metadata i8** %5, metadata !923, metadata !719), !dbg !924
  call void @llvm.dbg.declare(metadata i8** %6, metadata !925, metadata !719), !dbg !926
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %7, metadata !927, metadata !719), !dbg !928
  br label %8, !dbg !929, !llvm.loop !930

; <label>:8:                                      ; preds = %2
  %9 = load i8*, i8** %4, align 8, !dbg !931
  %10 = icmp ne i8* %9, null, !dbg !935
  br i1 %10, label %11, label %12, !dbg !931

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !936

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.event_target_unavailable, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0)), !dbg !939
  br label %64, !dbg !942

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !943

; <label>:14:                                     ; preds = %13
  %15 = load i8*, i8** %4, align 8, !dbg !945
  %16 = call i8* (i8*, i32, ...) @event_get_params(i8* %15, i32 2, i8* null, i8** %6), !dbg !946
  store i8* %16, i8** %5, align 8, !dbg !947
  %17 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !948
  %18 = bitcast %struct._IRC_SERVER_REC* %17 to i8*, !dbg !948
  %19 = call i8* @module_check_cast(i8* %18, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !950
  %20 = bitcast i8* %19 to %struct._SERVER_REC*, !dbg !951
  %21 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %20, i32 0, i32 27, !dbg !952
  %22 = load i32 (%struct._SERVER_REC*, i8*)*, i32 (%struct._SERVER_REC*, i8*)** %21, align 8, !dbg !952
  %23 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !953
  %24 = bitcast %struct._IRC_SERVER_REC* %23 to i8*, !dbg !953
  %25 = call i8* @module_check_cast(i8* %24, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !954
  %26 = bitcast i8* %25 to %struct._SERVER_REC*, !dbg !956
  %27 = load i8*, i8** %6, align 8, !dbg !957
  %28 = call i32 %22(%struct._SERVER_REC* %26, i8* %27), !dbg !958
  %29 = icmp ne i32 %28, 0, !dbg !960
  br i1 %29, label %30, label %62, !dbg !961

; <label>:30:                                     ; preds = %14
  %31 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !962
  %32 = bitcast %struct._IRC_SERVER_REC* %31 to i8*, !dbg !962
  %33 = call i8* @module_check_cast(i8* %32, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !964
  %34 = bitcast i8* %33 to %struct._SERVER_REC*, !dbg !965
  %35 = load i8*, i8** %6, align 8, !dbg !966
  %36 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %34, i8* %35), !dbg !967
  %37 = bitcast %struct._CHANNEL_REC* %36 to i8*, !dbg !969
  %38 = call i8* @module_check_cast_module(i8* %37, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0)), !dbg !970
  %39 = bitcast i8* %38 to %struct._CHANNEL_REC*, !dbg !972
  %40 = bitcast %struct._CHANNEL_REC* %39 to i8*, !dbg !973
  %41 = call i8* @chat_protocol_check_cast(i8* %40, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)), !dbg !974
  %42 = bitcast i8* %41 to %struct._IRC_CHANNEL_REC*, !dbg !976
  store %struct._IRC_CHANNEL_REC* %42, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !977
  %43 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !978
  %44 = icmp ne %struct._IRC_CHANNEL_REC* %43, null, !dbg !980
  br i1 %44, label %45, label %54, !dbg !981

; <label>:45:                                     ; preds = %30
  %46 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !982
  %47 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %46, i32 0, i32 21, !dbg !984
  %48 = load i16, i16* %47, align 8, !dbg !984
  %49 = lshr i16 %48, 4, !dbg !984
  %50 = and i16 %49, 1, !dbg !984
  %51 = zext i16 %50 to i32, !dbg !984
  %52 = icmp ne i32 %51, 0, !dbg !982
  br i1 %52, label %53, label %54, !dbg !985

; <label>:53:                                     ; preds = %45
  br label %61, !dbg !986

; <label>:54:                                     ; preds = %45, %30
  %55 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !988
  %56 = load i8*, i8** %6, align 8, !dbg !991
  %57 = call i32 @channel_rejoin(%struct._IRC_SERVER_REC* %55, i8* %56), !dbg !992
  %58 = icmp ne i32 %57, 0, !dbg !992
  br i1 %58, label %59, label %60, !dbg !993

; <label>:59:                                     ; preds = %54
  call void @signal_stop(), !dbg !994
  br label %60, !dbg !996

; <label>:60:                                     ; preds = %59, %54
  br label %61

; <label>:61:                                     ; preds = %60, %53
  br label %62, !dbg !997

; <label>:62:                                     ; preds = %61, %14
  %63 = load i8*, i8** %5, align 8, !dbg !998
  call void @g_free(i8* %63), !dbg !999
  br label %64, !dbg !1000

; <label>:64:                                     ; preds = %62, %12
  ret void, !dbg !1001
}

; Function Attrs: nounwind uwtable
define internal void @sig_remove_rejoin(%struct._IRC_CHANNEL_REC*) #0 !dbg !1003 {
  %2 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %3 = alloca %struct.REJOIN_REC*, align 8
  store %struct._IRC_CHANNEL_REC* %0, %struct._IRC_CHANNEL_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %2, metadata !1006, metadata !719), !dbg !1007
  call void @llvm.dbg.declare(metadata %struct.REJOIN_REC** %3, metadata !1008, metadata !719), !dbg !1009
  %4 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %2, align 8, !dbg !1010
  %5 = bitcast %struct._IRC_CHANNEL_REC* %4 to i8*, !dbg !1010
  %6 = call i8* @module_check_cast_module(i8* %5, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0)), !dbg !1012
  %7 = bitcast i8* %6 to %struct._CHANNEL_REC*, !dbg !1013
  %8 = bitcast %struct._CHANNEL_REC* %7 to i8*, !dbg !1014
  %9 = call i8* @chat_protocol_check_cast(i8* %8, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)), !dbg !1015
  %10 = bitcast i8* %9 to %struct._IRC_CHANNEL_REC*, !dbg !1017
  %11 = icmp ne %struct._IRC_CHANNEL_REC* %10, null, !dbg !1017
  br i1 %11, label %12, label %13, !dbg !1018

; <label>:12:                                     ; preds = %1
  br i1 false, label %14, label %15, !dbg !1019

; <label>:13:                                     ; preds = %1
  br i1 false, label %15, label %14, !dbg !1021

; <label>:14:                                     ; preds = %13, %12
  br label %37, !dbg !1023

; <label>:15:                                     ; preds = %13, %12
  %16 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %2, align 8, !dbg !1024
  %17 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %16, i32 0, i32 4, !dbg !1025
  %18 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %17, align 8, !dbg !1025
  %19 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %2, align 8, !dbg !1026
  %20 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %19, i32 0, i32 6, !dbg !1027
  %21 = load i8*, i8** %20, align 8, !dbg !1027
  %22 = call %struct.REJOIN_REC* @rejoin_find(%struct._IRC_SERVER_REC* %18, i8* %21), !dbg !1028
  store %struct.REJOIN_REC* %22, %struct.REJOIN_REC** %3, align 8, !dbg !1029
  %23 = load %struct.REJOIN_REC*, %struct.REJOIN_REC** %3, align 8, !dbg !1030
  %24 = icmp ne %struct.REJOIN_REC* %23, null, !dbg !1032
  br i1 %24, label %25, label %37, !dbg !1033

; <label>:25:                                     ; preds = %15
  %26 = load %struct.REJOIN_REC*, %struct.REJOIN_REC** %3, align 8, !dbg !1034
  %27 = getelementptr inbounds %struct.REJOIN_REC, %struct.REJOIN_REC* %26, i32 0, i32 2, !dbg !1036
  %28 = load i8, i8* %27, align 8, !dbg !1036
  %29 = and i8 %28, 1, !dbg !1036
  %30 = zext i8 %29 to i32, !dbg !1036
  %31 = icmp ne i32 %30, 0, !dbg !1034
  br i1 %31, label %32, label %37, !dbg !1037

; <label>:32:                                     ; preds = %25
  %33 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %2, align 8, !dbg !1038
  %34 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %33, i32 0, i32 4, !dbg !1040
  %35 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %34, align 8, !dbg !1040
  %36 = load %struct.REJOIN_REC*, %struct.REJOIN_REC** %3, align 8, !dbg !1041
  call void @rejoin_destroy(%struct._IRC_SERVER_REC* %35, %struct.REJOIN_REC* %36), !dbg !1042
  br label %37, !dbg !1043

; <label>:37:                                     ; preds = %14, %32, %25, %15
  ret void, !dbg !1044
}

; Function Attrs: nounwind uwtable
define internal void @sig_disconnected(%struct._IRC_SERVER_REC*) #0 !dbg !1045 {
  %2 = alloca %struct._IRC_SERVER_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %2, metadata !1048, metadata !719), !dbg !1049
  %3 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1050
  %4 = bitcast %struct._IRC_SERVER_REC* %3 to i8*, !dbg !1050
  %5 = call i8* @module_check_cast(i8* %4, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !1052
  %6 = bitcast i8* %5 to %struct._SERVER_REC*, !dbg !1053
  %7 = bitcast %struct._SERVER_REC* %6 to i8*, !dbg !1054
  %8 = call i8* @chat_protocol_check_cast(i8* %7, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)), !dbg !1055
  %9 = bitcast i8* %8 to %struct._IRC_SERVER_REC*, !dbg !1057
  %10 = icmp ne %struct._IRC_SERVER_REC* %9, null, !dbg !1057
  br i1 %10, label %11, label %12, !dbg !1058

; <label>:11:                                     ; preds = %1
  br i1 false, label %13, label %14, !dbg !1059

; <label>:12:                                     ; preds = %1
  br i1 false, label %14, label %13, !dbg !1061

; <label>:13:                                     ; preds = %12, %11
  br label %28, !dbg !1063

; <label>:14:                                     ; preds = %12, %11
  br label %15, !dbg !1064

; <label>:15:                                     ; preds = %20, %14
  %16 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1065
  %17 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %16, i32 0, i32 67, !dbg !1067
  %18 = load %struct._GSList*, %struct._GSList** %17, align 8, !dbg !1067
  %19 = icmp ne %struct._GSList* %18, null, !dbg !1068
  br i1 %19, label %20, label %28, !dbg !1069

; <label>:20:                                     ; preds = %15
  %21 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1070
  %22 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1071
  %23 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %22, i32 0, i32 67, !dbg !1072
  %24 = load %struct._GSList*, %struct._GSList** %23, align 8, !dbg !1072
  %25 = getelementptr inbounds %struct._GSList, %struct._GSList* %24, i32 0, i32 0, !dbg !1073
  %26 = load i8*, i8** %25, align 8, !dbg !1073
  %27 = bitcast i8* %26 to %struct.REJOIN_REC*, !dbg !1071
  call void @rejoin_destroy(%struct._IRC_SERVER_REC* %21, %struct.REJOIN_REC* %27), !dbg !1074
  br label %15, !dbg !1075, !llvm.loop !1076

; <label>:28:                                     ; preds = %13, %15
  ret void, !dbg !1077
}

; Function Attrs: nounwind uwtable
define void @channel_rejoin_deinit() #0 !dbg !1078 {
  %1 = load i32, i32* @rejoin_tag, align 4, !dbg !1079
  %2 = call i32 @g_source_remove(i32 %1), !dbg !1080
  call void @command_unbind_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @cmd_rmrejoins to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1081
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_duplicate_channel to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1082
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_target_unavailable to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1083
  call void @signal_remove_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_CHANNEL_REC*)* @sig_remove_rejoin to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1084
  call void @signal_remove_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_CHANNEL_REC*)* @sig_remove_rejoin to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1085
  call void @signal_remove_full(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @sig_disconnected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1086
  ret void, !dbg !1087
}

declare i32 @g_source_remove(i32) #1

declare void @command_unbind_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare i8* @chat_protocol_check_cast(i8*, i32, i8*) #1

declare i8* @module_check_cast(i8*, i32, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @server_rejoin_channels(%struct._IRC_SERVER_REC*) #0 !dbg !1088 {
  %2 = alloca %struct._IRC_SERVER_REC*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct._GString*, align 8
  %6 = alloca %struct._GString*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.REJOIN_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %2, metadata !1089, metadata !719), !dbg !1090
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !1091, metadata !719), !dbg !1092
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !1093, metadata !719), !dbg !1094
  call void @llvm.dbg.declare(metadata %struct._GString** %5, metadata !1095, metadata !719), !dbg !1096
  call void @llvm.dbg.declare(metadata %struct._GString** %6, metadata !1097, metadata !719), !dbg !1098
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1099, metadata !719), !dbg !1100
  br label %9, !dbg !1101, !llvm.loop !1102

; <label>:9:                                      ; preds = %1
  %10 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1103
  %11 = bitcast %struct._IRC_SERVER_REC* %10 to i8*, !dbg !1103
  %12 = call i8* @module_check_cast(i8* %11, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !1107
  %13 = bitcast i8* %12 to %struct._SERVER_REC*, !dbg !1108
  %14 = bitcast %struct._SERVER_REC* %13 to i8*, !dbg !1109
  %15 = call i8* @chat_protocol_check_cast(i8* %14, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)), !dbg !1110
  %16 = bitcast i8* %15 to %struct._IRC_SERVER_REC*, !dbg !1112
  %17 = icmp ne %struct._IRC_SERVER_REC* %16, null, !dbg !1112
  br i1 %17, label %18, label %19, !dbg !1113

; <label>:18:                                     ; preds = %9
  br i1 false, label %21, label %20, !dbg !1114

; <label>:19:                                     ; preds = %9
  br i1 false, label %20, label %21, !dbg !1116

; <label>:20:                                     ; preds = %19, %18
  br label %22, !dbg !1118

; <label>:21:                                     ; preds = %19, %18
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.server_rejoin_channels, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0)), !dbg !1121
  br label %115, !dbg !1124

; <label>:22:                                     ; preds = %20
  br label %23, !dbg !1125

; <label>:23:                                     ; preds = %22
  %24 = call %struct._GString* @g_string_new(i8* null), !dbg !1127
  store %struct._GString* %24, %struct._GString** %5, align 8, !dbg !1128
  %25 = call %struct._GString* @g_string_new(i8* null), !dbg !1129
  store %struct._GString* %25, %struct._GString** %6, align 8, !dbg !1130
  store i32 0, i32* %7, align 4, !dbg !1131
  %26 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1132
  %27 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %26, i32 0, i32 67, !dbg !1134
  %28 = load %struct._GSList*, %struct._GSList** %27, align 8, !dbg !1134
  store %struct._GSList* %28, %struct._GSList** %3, align 8, !dbg !1135
  br label %29, !dbg !1136

; <label>:29:                                     ; preds = %72, %23
  %30 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1137
  %31 = icmp ne %struct._GSList* %30, null, !dbg !1140
  br i1 %31, label %32, label %74, !dbg !1141

; <label>:32:                                     ; preds = %29
  call void @llvm.dbg.declare(metadata %struct.REJOIN_REC** %8, metadata !1142, metadata !719), !dbg !1144
  %33 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1145
  %34 = getelementptr inbounds %struct._GSList, %struct._GSList* %33, i32 0, i32 0, !dbg !1146
  %35 = load i8*, i8** %34, align 8, !dbg !1146
  %36 = bitcast i8* %35 to %struct.REJOIN_REC*, !dbg !1145
  store %struct.REJOIN_REC* %36, %struct.REJOIN_REC** %8, align 8, !dbg !1144
  %37 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1147
  %38 = getelementptr inbounds %struct._GSList, %struct._GSList* %37, i32 0, i32 1, !dbg !1148
  %39 = load %struct._GSList*, %struct._GSList** %38, align 8, !dbg !1148
  store %struct._GSList* %39, %struct._GSList** %4, align 8, !dbg !1149
  %40 = load %struct.REJOIN_REC*, %struct.REJOIN_REC** %8, align 8, !dbg !1150
  %41 = getelementptr inbounds %struct.REJOIN_REC, %struct.REJOIN_REC* %40, i32 0, i32 2, !dbg !1152
  %42 = load i8, i8* %41, align 8, !dbg !1152
  %43 = and i8 %42, 1, !dbg !1152
  %44 = zext i8 %43 to i32, !dbg !1152
  %45 = icmp ne i32 %44, 0, !dbg !1150
  br i1 %45, label %46, label %49, !dbg !1153

; <label>:46:                                     ; preds = %32
  %47 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1154
  %48 = load %struct.REJOIN_REC*, %struct.REJOIN_REC** %8, align 8, !dbg !1156
  call void @rejoin_destroy(%struct._IRC_SERVER_REC* %47, %struct.REJOIN_REC* %48), !dbg !1157
  br label %72, !dbg !1158

; <label>:49:                                     ; preds = %32
  %50 = load %struct.REJOIN_REC*, %struct.REJOIN_REC** %8, align 8, !dbg !1159
  %51 = getelementptr inbounds %struct.REJOIN_REC, %struct.REJOIN_REC* %50, i32 0, i32 2, !dbg !1160
  %52 = load i8, i8* %51, align 8, !dbg !1161
  %53 = and i8 %52, -2, !dbg !1161
  %54 = or i8 %53, 1, !dbg !1161
  store i8 %54, i8* %51, align 8, !dbg !1161
  %55 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1162
  %56 = load %struct.REJOIN_REC*, %struct.REJOIN_REC** %8, align 8, !dbg !1163
  %57 = getelementptr inbounds %struct.REJOIN_REC, %struct.REJOIN_REC* %56, i32 0, i32 0, !dbg !1164
  %58 = load i8*, i8** %57, align 8, !dbg !1164
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* %58), !dbg !1165
  %59 = load %struct.REJOIN_REC*, %struct.REJOIN_REC** %8, align 8, !dbg !1166
  %60 = getelementptr inbounds %struct.REJOIN_REC, %struct.REJOIN_REC* %59, i32 0, i32 1, !dbg !1168
  %61 = load i8*, i8** %60, align 8, !dbg !1168
  %62 = icmp eq i8* %61, null, !dbg !1169
  br i1 %62, label %63, label %66, !dbg !1170

; <label>:63:                                     ; preds = %49
  %64 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1171
  %65 = call %struct._GString* @g_string_append(%struct._GString* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0)), !dbg !1172
  br label %71, !dbg !1172

; <label>:66:                                     ; preds = %49
  %67 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1173
  %68 = load %struct.REJOIN_REC*, %struct.REJOIN_REC** %8, align 8, !dbg !1175
  %69 = getelementptr inbounds %struct.REJOIN_REC, %struct.REJOIN_REC* %68, i32 0, i32 1, !dbg !1176
  %70 = load i8*, i8** %69, align 8, !dbg !1176
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* %70), !dbg !1177
  store i32 1, i32* %7, align 4, !dbg !1178
  br label %71

; <label>:71:                                     ; preds = %66, %63
  br label %72, !dbg !1179

; <label>:72:                                     ; preds = %71, %46
  %73 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1180
  store %struct._GSList* %73, %struct._GSList** %3, align 8, !dbg !1182
  br label %29, !dbg !1183, !llvm.loop !1184

; <label>:74:                                     ; preds = %29
  %75 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1186
  %76 = getelementptr inbounds %struct._GString, %struct._GString* %75, i32 0, i32 1, !dbg !1188
  %77 = load i64, i64* %76, align 8, !dbg !1188
  %78 = icmp ugt i64 %77, 0, !dbg !1189
  br i1 %78, label %79, label %110, !dbg !1190

; <label>:79:                                     ; preds = %74
  %80 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1191
  %81 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1193
  %82 = getelementptr inbounds %struct._GString, %struct._GString* %81, i32 0, i32 1, !dbg !1194
  %83 = load i64, i64* %82, align 8, !dbg !1194
  %84 = sub i64 %83, 1, !dbg !1195
  %85 = call %struct._GString* @g_string_truncate(%struct._GString* %80, i64 %84), !dbg !1196
  %86 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1197
  %87 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1198
  %88 = getelementptr inbounds %struct._GString, %struct._GString* %87, i32 0, i32 1, !dbg !1199
  %89 = load i64, i64* %88, align 8, !dbg !1199
  %90 = sub i64 %89, 1, !dbg !1200
  %91 = call %struct._GString* @g_string_truncate(%struct._GString* %86, i64 %90), !dbg !1201
  %92 = load i32, i32* %7, align 4, !dbg !1202
  %93 = icmp ne i32 %92, 0, !dbg !1202
  br i1 %93, label %94, label %99, !dbg !1204

; <label>:94:                                     ; preds = %79
  %95 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1205
  %96 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1207
  %97 = getelementptr inbounds %struct._GString, %struct._GString* %96, i32 0, i32 0, !dbg !1208
  %98 = load i8*, i8** %97, align 8, !dbg !1208
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* %98), !dbg !1209
  br label %99, !dbg !1209

; <label>:99:                                     ; preds = %94, %79
  %100 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1210
  %101 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %100, i32 0, i32 25, !dbg !1211
  %102 = load void (%struct._SERVER_REC*, i8*, i32)*, void (%struct._SERVER_REC*, i8*, i32)** %101, align 8, !dbg !1211
  %103 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1212
  %104 = bitcast %struct._IRC_SERVER_REC* %103 to i8*, !dbg !1212
  %105 = call i8* @module_check_cast(i8* %104, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !1213
  %106 = bitcast i8* %105 to %struct._SERVER_REC*, !dbg !1214
  %107 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1215
  %108 = getelementptr inbounds %struct._GString, %struct._GString* %107, i32 0, i32 0, !dbg !1216
  %109 = load i8*, i8** %108, align 8, !dbg !1216
  call void %102(%struct._SERVER_REC* %106, i8* %109, i32 1), !dbg !1217
  br label %110, !dbg !1219

; <label>:110:                                    ; preds = %99, %74
  %111 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1220
  %112 = call i8* @g_string_free(%struct._GString* %111, i32 1), !dbg !1221
  %113 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1222
  %114 = call i8* @g_string_free(%struct._GString* %113, i32 1), !dbg !1223
  br label %115, !dbg !1224

; <label>:115:                                    ; preds = %110, %21
  ret void, !dbg !1225
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare %struct._GString* @g_string_new(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @rejoin_destroy(%struct._IRC_SERVER_REC*, %struct.REJOIN_REC*) #0 !dbg !1227 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca %struct.REJOIN_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1230, metadata !719), !dbg !1231
  store %struct.REJOIN_REC* %1, %struct.REJOIN_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.REJOIN_REC** %4, metadata !1232, metadata !719), !dbg !1233
  br label %5, !dbg !1234, !llvm.loop !1235

; <label>:5:                                      ; preds = %2
  %6 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1236
  %7 = bitcast %struct._IRC_SERVER_REC* %6 to i8*, !dbg !1236
  %8 = call i8* @module_check_cast(i8* %7, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !1240
  %9 = bitcast i8* %8 to %struct._SERVER_REC*, !dbg !1241
  %10 = bitcast %struct._SERVER_REC* %9 to i8*, !dbg !1242
  %11 = call i8* @chat_protocol_check_cast(i8* %10, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)), !dbg !1243
  %12 = bitcast i8* %11 to %struct._IRC_SERVER_REC*, !dbg !1245
  %13 = icmp ne %struct._IRC_SERVER_REC* %12, null, !dbg !1245
  br i1 %13, label %14, label %15, !dbg !1246

; <label>:14:                                     ; preds = %5
  br i1 false, label %17, label %16, !dbg !1247

; <label>:15:                                     ; preds = %5
  br i1 false, label %16, label %17, !dbg !1249

; <label>:16:                                     ; preds = %15, %14
  br label %18, !dbg !1251

; <label>:17:                                     ; preds = %15, %14
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.rejoin_destroy, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0)), !dbg !1254
  br label %46, !dbg !1257

; <label>:18:                                     ; preds = %16
  br label %19, !dbg !1258

; <label>:19:                                     ; preds = %18
  br label %20, !dbg !1260, !llvm.loop !1261

; <label>:20:                                     ; preds = %19
  %21 = load %struct.REJOIN_REC*, %struct.REJOIN_REC** %4, align 8, !dbg !1262
  %22 = icmp ne %struct.REJOIN_REC* %21, null, !dbg !1266
  br i1 %22, label %23, label %24, !dbg !1262

; <label>:23:                                     ; preds = %20
  br label %25, !dbg !1267

; <label>:24:                                     ; preds = %20
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.rejoin_destroy, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0)), !dbg !1270
  br label %46, !dbg !1273

; <label>:25:                                     ; preds = %23
  br label %26, !dbg !1274

; <label>:26:                                     ; preds = %25
  %27 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1276
  %28 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %27, i32 0, i32 67, !dbg !1277
  %29 = load %struct._GSList*, %struct._GSList** %28, align 8, !dbg !1277
  %30 = load %struct.REJOIN_REC*, %struct.REJOIN_REC** %4, align 8, !dbg !1278
  %31 = bitcast %struct.REJOIN_REC* %30 to i8*, !dbg !1278
  %32 = call %struct._GSList* @g_slist_remove(%struct._GSList* %29, i8* %31), !dbg !1279
  %33 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1280
  %34 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %33, i32 0, i32 67, !dbg !1281
  store %struct._GSList* %32, %struct._GSList** %34, align 8, !dbg !1282
  %35 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1283
  %36 = load %struct.REJOIN_REC*, %struct.REJOIN_REC** %4, align 8, !dbg !1284
  %37 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i32 2, %struct._IRC_SERVER_REC* %35, %struct.REJOIN_REC* %36), !dbg !1285
  %38 = load %struct.REJOIN_REC*, %struct.REJOIN_REC** %4, align 8, !dbg !1286
  %39 = getelementptr inbounds %struct.REJOIN_REC, %struct.REJOIN_REC* %38, i32 0, i32 0, !dbg !1287
  %40 = load i8*, i8** %39, align 8, !dbg !1287
  call void @g_free(i8* %40), !dbg !1288
  %41 = load %struct.REJOIN_REC*, %struct.REJOIN_REC** %4, align 8, !dbg !1289
  %42 = getelementptr inbounds %struct.REJOIN_REC, %struct.REJOIN_REC* %41, i32 0, i32 1, !dbg !1290
  %43 = load i8*, i8** %42, align 8, !dbg !1290
  call void @g_free(i8* %43), !dbg !1291
  %44 = load %struct.REJOIN_REC*, %struct.REJOIN_REC** %4, align 8, !dbg !1292
  %45 = bitcast %struct.REJOIN_REC* %44 to i8*, !dbg !1292
  call void @g_free(i8* %45), !dbg !1293
  br label %46, !dbg !1294

; <label>:46:                                     ; preds = %26, %24, %17
  ret void, !dbg !1295
}

declare void @g_string_append_printf(%struct._GString*, i8*, ...) #1

declare %struct._GString* @g_string_append(%struct._GString*, i8*) #1

declare %struct._GString* @g_string_truncate(%struct._GString*, i64) #1

declare i8* @g_string_free(%struct._GString*, i32) #1

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #1

declare i32 @signal_emit(i8*, i32, ...) #1

declare void @g_free(i8*) #1

declare void @signal_stop() #1

declare i8* @event_get_params(i8*, i32, ...) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

declare %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @channel_rejoin(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !1297 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %7 = alloca %struct.REJOIN_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !1300, metadata !719), !dbg !1301
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1302, metadata !719), !dbg !1303
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %6, metadata !1304, metadata !719), !dbg !1305
  call void @llvm.dbg.declare(metadata %struct.REJOIN_REC** %7, metadata !1306, metadata !719), !dbg !1307
  br label %8, !dbg !1308, !llvm.loop !1309

; <label>:8:                                      ; preds = %2
  %9 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1310
  %10 = bitcast %struct._IRC_SERVER_REC* %9 to i8*, !dbg !1310
  %11 = call i8* @module_check_cast(i8* %10, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !1314
  %12 = bitcast i8* %11 to %struct._SERVER_REC*, !dbg !1315
  %13 = bitcast %struct._SERVER_REC* %12 to i8*, !dbg !1316
  %14 = call i8* @chat_protocol_check_cast(i8* %13, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)), !dbg !1317
  %15 = bitcast i8* %14 to %struct._IRC_SERVER_REC*, !dbg !1319
  %16 = icmp ne %struct._IRC_SERVER_REC* %15, null, !dbg !1319
  br i1 %16, label %17, label %18, !dbg !1320

; <label>:17:                                     ; preds = %8
  br i1 false, label %20, label %19, !dbg !1321

; <label>:18:                                     ; preds = %8
  br i1 false, label %19, label %20, !dbg !1323

; <label>:19:                                     ; preds = %18, %17
  br label %21, !dbg !1325

; <label>:20:                                     ; preds = %18, %17
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.channel_rejoin, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0)), !dbg !1328
  store i32 0, i32* %3, align 4, !dbg !1331
  br label %164, !dbg !1331

; <label>:21:                                     ; preds = %19
  br label %22, !dbg !1332

; <label>:22:                                     ; preds = %21
  br label %23, !dbg !1334, !llvm.loop !1335

; <label>:23:                                     ; preds = %22
  %24 = load i8*, i8** %5, align 8, !dbg !1336
  %25 = icmp ne i8* %24, null, !dbg !1340
  br i1 %25, label %26, label %27, !dbg !1336

; <label>:26:                                     ; preds = %23
  br label %28, !dbg !1341

; <label>:27:                                     ; preds = %23
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.channel_rejoin, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0)), !dbg !1344
  store i32 0, i32* %3, align 4, !dbg !1347
  br label %164, !dbg !1347

; <label>:28:                                     ; preds = %26
  br label %29, !dbg !1348

; <label>:29:                                     ; preds = %28
  %30 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1350
  %31 = bitcast %struct._IRC_SERVER_REC* %30 to i8*, !dbg !1350
  %32 = call i8* @module_check_cast(i8* %31, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !1351
  %33 = bitcast i8* %32 to %struct._SERVER_REC*, !dbg !1352
  %34 = load i8*, i8** %5, align 8, !dbg !1353
  %35 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %33, i8* %34), !dbg !1354
  %36 = bitcast %struct._CHANNEL_REC* %35 to i8*, !dbg !1356
  %37 = call i8* @module_check_cast_module(i8* %36, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0)), !dbg !1357
  %38 = bitcast i8* %37 to %struct._CHANNEL_REC*, !dbg !1359
  %39 = bitcast %struct._CHANNEL_REC* %38 to i8*, !dbg !1360
  %40 = call i8* @chat_protocol_check_cast(i8* %39, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)), !dbg !1361
  %41 = bitcast i8* %40 to %struct._IRC_CHANNEL_REC*, !dbg !1363
  store %struct._IRC_CHANNEL_REC* %41, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !1364
  %42 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !1365
  %43 = icmp eq %struct._IRC_CHANNEL_REC* %42, null, !dbg !1367
  br i1 %43, label %52, label %44, !dbg !1368

; <label>:44:                                     ; preds = %29
  %45 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !1369
  %46 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %45, i32 0, i32 21, !dbg !1371
  %47 = load i16, i16* %46, align 8, !dbg !1371
  %48 = lshr i16 %47, 4, !dbg !1371
  %49 = and i16 %48, 1, !dbg !1371
  %50 = zext i16 %49 to i32, !dbg !1371
  %51 = icmp ne i32 %50, 0, !dbg !1369
  br i1 %51, label %52, label %53, !dbg !1372

; <label>:52:                                     ; preds = %44, %29
  store i32 0, i32* %3, align 4, !dbg !1373
  br label %164, !dbg !1373

; <label>:53:                                     ; preds = %44
  %54 = call i32 @settings_get_bool(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0)), !dbg !1375
  %55 = icmp ne i32 %54, 0, !dbg !1375
  br i1 %55, label %66, label %56, !dbg !1377

; <label>:56:                                     ; preds = %53
  %57 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !1378
  %58 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %57, i32 0, i32 21, !dbg !1380
  %59 = load i16, i16* %58, align 8, !dbg !1381
  %60 = and i16 %59, -33, !dbg !1381
  %61 = or i16 %60, 32, !dbg !1381
  store i16 %61, i16* %58, align 8, !dbg !1381
  %62 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !1382
  %63 = bitcast %struct._IRC_CHANNEL_REC* %62 to i8*, !dbg !1382
  %64 = call i8* @module_check_cast_module(i8* %63, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0)), !dbg !1383
  %65 = bitcast i8* %64 to %struct._CHANNEL_REC*, !dbg !1384
  call void @channel_destroy(%struct._CHANNEL_REC* %65), !dbg !1385
  store i32 0, i32* %3, align 4, !dbg !1387
  br label %164, !dbg !1387

; <label>:66:                                     ; preds = %53
  %67 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1388
  %68 = load i8*, i8** %5, align 8, !dbg !1389
  %69 = call %struct.REJOIN_REC* @rejoin_find(%struct._IRC_SERVER_REC* %67, i8* %68), !dbg !1390
  store %struct.REJOIN_REC* %69, %struct.REJOIN_REC** %7, align 8, !dbg !1391
  %70 = load %struct.REJOIN_REC*, %struct.REJOIN_REC** %7, align 8, !dbg !1392
  %71 = icmp ne %struct.REJOIN_REC* %70, null, !dbg !1394
  br i1 %71, label %72, label %113, !dbg !1395

; <label>:72:                                     ; preds = %66
  %73 = load %struct.REJOIN_REC*, %struct.REJOIN_REC** %7, align 8, !dbg !1396
  %74 = getelementptr inbounds %struct.REJOIN_REC, %struct.REJOIN_REC* %73, i32 0, i32 2, !dbg !1398
  %75 = load i8, i8* %74, align 8, !dbg !1399
  %76 = and i8 %75, -2, !dbg !1399
  store i8 %76, i8* %74, align 8, !dbg !1399
  br label %77, !dbg !1400, !llvm.loop !1401

; <label>:77:                                     ; preds = %72
  %78 = load %struct.REJOIN_REC*, %struct.REJOIN_REC** %7, align 8, !dbg !1402
  %79 = getelementptr inbounds %struct.REJOIN_REC, %struct.REJOIN_REC* %78, i32 0, i32 1, !dbg !1406
  %80 = load i8*, i8** %79, align 8, !dbg !1406
  %81 = icmp ne i8* %80, null, !dbg !1402
  br i1 %81, label %82, label %88, !dbg !1402

; <label>:82:                                     ; preds = %77
  %83 = load %struct.REJOIN_REC*, %struct.REJOIN_REC** %7, align 8, !dbg !1407
  %84 = getelementptr inbounds %struct.REJOIN_REC, %struct.REJOIN_REC* %83, i32 0, i32 1, !dbg !1410
  %85 = load i8*, i8** %84, align 8, !dbg !1410
  call void @g_free(i8* %85), !dbg !1411
  %86 = load %struct.REJOIN_REC*, %struct.REJOIN_REC** %7, align 8, !dbg !1412
  %87 = getelementptr inbounds %struct.REJOIN_REC, %struct.REJOIN_REC* %86, i32 0, i32 1, !dbg !1413
  store i8* null, i8** %87, align 8, !dbg !1414
  br label %88, !dbg !1415

; <label>:88:                                     ; preds = %82, %77
  br label %89, !dbg !1416

; <label>:89:                                     ; preds = %88
  %90 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !1418
  %91 = icmp ne %struct._IRC_CHANNEL_REC* %90, null, !dbg !1420
  br i1 %91, label %92, label %112, !dbg !1421

; <label>:92:                                     ; preds = %89
  %93 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !1422
  %94 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %93, i32 0, i32 20, !dbg !1424
  %95 = load i8*, i8** %94, align 8, !dbg !1424
  %96 = icmp ne i8* %95, null, !dbg !1425
  br i1 %96, label %97, label %112, !dbg !1426

; <label>:97:                                     ; preds = %92
  %98 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !1427
  %99 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %98, i32 0, i32 20, !dbg !1429
  %100 = load i8*, i8** %99, align 8, !dbg !1429
  %101 = getelementptr inbounds i8, i8* %100, i64 0, !dbg !1430
  %102 = load i8, i8* %101, align 1, !dbg !1430
  %103 = sext i8 %102 to i32, !dbg !1430
  %104 = icmp ne i32 %103, 0, !dbg !1431
  br i1 %104, label %105, label %112, !dbg !1432

; <label>:105:                                    ; preds = %97
  %106 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !1433
  %107 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %106, i32 0, i32 20, !dbg !1434
  %108 = load i8*, i8** %107, align 8, !dbg !1434
  %109 = call noalias i8* @g_strdup(i8* %108), !dbg !1435
  %110 = load %struct.REJOIN_REC*, %struct.REJOIN_REC** %7, align 8, !dbg !1436
  %111 = getelementptr inbounds %struct.REJOIN_REC, %struct.REJOIN_REC* %110, i32 0, i32 1, !dbg !1437
  store i8* %109, i8** %111, align 8, !dbg !1438
  br label %112, !dbg !1436

; <label>:112:                                    ; preds = %105, %97, %92, %89
  br label %154, !dbg !1439

; <label>:113:                                    ; preds = %66
  %114 = call noalias i8* @g_malloc0_n(i64 1, i64 24), !dbg !1440
  %115 = bitcast i8* %114 to %struct.REJOIN_REC*, !dbg !1442
  store %struct.REJOIN_REC* %115, %struct.REJOIN_REC** %7, align 8, !dbg !1443
  %116 = load i8*, i8** %5, align 8, !dbg !1444
  %117 = call noalias i8* @g_strdup(i8* %116), !dbg !1445
  %118 = load %struct.REJOIN_REC*, %struct.REJOIN_REC** %7, align 8, !dbg !1446
  %119 = getelementptr inbounds %struct.REJOIN_REC, %struct.REJOIN_REC* %118, i32 0, i32 0, !dbg !1447
  store i8* %117, i8** %119, align 8, !dbg !1448
  %120 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !1449
  %121 = icmp ne %struct._IRC_CHANNEL_REC* %120, null, !dbg !1451
  br i1 %121, label %122, label %142, !dbg !1452

; <label>:122:                                    ; preds = %113
  %123 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !1453
  %124 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %123, i32 0, i32 20, !dbg !1455
  %125 = load i8*, i8** %124, align 8, !dbg !1455
  %126 = icmp ne i8* %125, null, !dbg !1456
  br i1 %126, label %127, label %142, !dbg !1457

; <label>:127:                                    ; preds = %122
  %128 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !1458
  %129 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %128, i32 0, i32 20, !dbg !1460
  %130 = load i8*, i8** %129, align 8, !dbg !1460
  %131 = getelementptr inbounds i8, i8* %130, i64 0, !dbg !1461
  %132 = load i8, i8* %131, align 1, !dbg !1461
  %133 = sext i8 %132 to i32, !dbg !1461
  %134 = icmp ne i32 %133, 0, !dbg !1462
  br i1 %134, label %135, label %142, !dbg !1463

; <label>:135:                                    ; preds = %127
  %136 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !1464
  %137 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %136, i32 0, i32 20, !dbg !1465
  %138 = load i8*, i8** %137, align 8, !dbg !1465
  %139 = call noalias i8* @g_strdup(i8* %138), !dbg !1466
  %140 = load %struct.REJOIN_REC*, %struct.REJOIN_REC** %7, align 8, !dbg !1467
  %141 = getelementptr inbounds %struct.REJOIN_REC, %struct.REJOIN_REC* %140, i32 0, i32 1, !dbg !1468
  store i8* %139, i8** %141, align 8, !dbg !1469
  br label %142, !dbg !1467

; <label>:142:                                    ; preds = %135, %127, %122, %113
  %143 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1470
  %144 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %143, i32 0, i32 67, !dbg !1471
  %145 = load %struct._GSList*, %struct._GSList** %144, align 8, !dbg !1471
  %146 = load %struct.REJOIN_REC*, %struct.REJOIN_REC** %7, align 8, !dbg !1472
  %147 = bitcast %struct.REJOIN_REC* %146 to i8*, !dbg !1472
  %148 = call %struct._GSList* @g_slist_append(%struct._GSList* %145, i8* %147), !dbg !1473
  %149 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1474
  %150 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %149, i32 0, i32 67, !dbg !1475
  store %struct._GSList* %148, %struct._GSList** %150, align 8, !dbg !1476
  %151 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1477
  %152 = load %struct.REJOIN_REC*, %struct.REJOIN_REC** %7, align 8, !dbg !1478
  %153 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i32 0, i32 0), i32 2, %struct._IRC_SERVER_REC* %151, %struct.REJOIN_REC* %152), !dbg !1479
  br label %154

; <label>:154:                                    ; preds = %142, %112
  %155 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !1480
  %156 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %155, i32 0, i32 21, !dbg !1481
  %157 = load i16, i16* %156, align 8, !dbg !1482
  %158 = and i16 %157, -33, !dbg !1482
  %159 = or i16 %158, 32, !dbg !1482
  store i16 %159, i16* %156, align 8, !dbg !1482
  %160 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !1483
  %161 = bitcast %struct._IRC_CHANNEL_REC* %160 to i8*, !dbg !1483
  %162 = call i8* @module_check_cast_module(i8* %161, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0)), !dbg !1484
  %163 = bitcast i8* %162 to %struct._CHANNEL_REC*, !dbg !1485
  call void @channel_destroy(%struct._CHANNEL_REC* %163), !dbg !1486
  store i32 1, i32* %3, align 4, !dbg !1487
  br label %164, !dbg !1487

; <label>:164:                                    ; preds = %154, %56, %52, %27, %20
  %165 = load i32, i32* %3, align 4, !dbg !1488
  ret i32 %165, !dbg !1488
}

declare i8* @module_check_cast_module(i8*, i32, i8*, i8*) #1

declare i32 @settings_get_bool(i8*) #1

declare void @channel_destroy(%struct._CHANNEL_REC*) #1

; Function Attrs: nounwind uwtable
define internal %struct.REJOIN_REC* @rejoin_find(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !1489 {
  %3 = alloca %struct.REJOIN_REC*, align 8
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca %struct.REJOIN_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !1492, metadata !719), !dbg !1493
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1494, metadata !719), !dbg !1495
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !1496, metadata !719), !dbg !1497
  br label %8, !dbg !1498, !llvm.loop !1499

; <label>:8:                                      ; preds = %2
  %9 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1500
  %10 = bitcast %struct._IRC_SERVER_REC* %9 to i8*, !dbg !1500
  %11 = call i8* @module_check_cast(i8* %10, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !1504
  %12 = bitcast i8* %11 to %struct._SERVER_REC*, !dbg !1505
  %13 = bitcast %struct._SERVER_REC* %12 to i8*, !dbg !1506
  %14 = call i8* @chat_protocol_check_cast(i8* %13, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)), !dbg !1507
  %15 = bitcast i8* %14 to %struct._IRC_SERVER_REC*, !dbg !1509
  %16 = icmp ne %struct._IRC_SERVER_REC* %15, null, !dbg !1509
  br i1 %16, label %17, label %18, !dbg !1510

; <label>:17:                                     ; preds = %8
  br i1 false, label %20, label %19, !dbg !1511

; <label>:18:                                     ; preds = %8
  br i1 false, label %19, label %20, !dbg !1513

; <label>:19:                                     ; preds = %18, %17
  br label %21, !dbg !1515

; <label>:20:                                     ; preds = %18, %17
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.rejoin_find, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0)), !dbg !1518
  store %struct.REJOIN_REC* null, %struct.REJOIN_REC** %3, align 8, !dbg !1521
  br label %55, !dbg !1521

; <label>:21:                                     ; preds = %19
  br label %22, !dbg !1522

; <label>:22:                                     ; preds = %21
  br label %23, !dbg !1524, !llvm.loop !1525

; <label>:23:                                     ; preds = %22
  %24 = load i8*, i8** %5, align 8, !dbg !1526
  %25 = icmp ne i8* %24, null, !dbg !1530
  br i1 %25, label %26, label %27, !dbg !1526

; <label>:26:                                     ; preds = %23
  br label %28, !dbg !1531

; <label>:27:                                     ; preds = %23
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.rejoin_find, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0)), !dbg !1534
  store %struct.REJOIN_REC* null, %struct.REJOIN_REC** %3, align 8, !dbg !1537
  br label %55, !dbg !1537

; <label>:28:                                     ; preds = %26
  br label %29, !dbg !1538

; <label>:29:                                     ; preds = %28
  %30 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1540
  %31 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %30, i32 0, i32 67, !dbg !1542
  %32 = load %struct._GSList*, %struct._GSList** %31, align 8, !dbg !1542
  store %struct._GSList* %32, %struct._GSList** %6, align 8, !dbg !1543
  br label %33, !dbg !1544

; <label>:33:                                     ; preds = %50, %29
  %34 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1545
  %35 = icmp ne %struct._GSList* %34, null, !dbg !1548
  br i1 %35, label %36, label %54, !dbg !1549

; <label>:36:                                     ; preds = %33
  call void @llvm.dbg.declare(metadata %struct.REJOIN_REC** %7, metadata !1550, metadata !719), !dbg !1552
  %37 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1553
  %38 = getelementptr inbounds %struct._GSList, %struct._GSList* %37, i32 0, i32 0, !dbg !1554
  %39 = load i8*, i8** %38, align 8, !dbg !1554
  %40 = bitcast i8* %39 to %struct.REJOIN_REC*, !dbg !1553
  store %struct.REJOIN_REC* %40, %struct.REJOIN_REC** %7, align 8, !dbg !1552
  %41 = load %struct.REJOIN_REC*, %struct.REJOIN_REC** %7, align 8, !dbg !1555
  %42 = getelementptr inbounds %struct.REJOIN_REC, %struct.REJOIN_REC* %41, i32 0, i32 0, !dbg !1557
  %43 = load i8*, i8** %42, align 8, !dbg !1557
  %44 = load i8*, i8** %5, align 8, !dbg !1558
  %45 = call i32 @g_ascii_strcasecmp(i8* %43, i8* %44), !dbg !1559
  %46 = icmp eq i32 %45, 0, !dbg !1560
  br i1 %46, label %47, label %49, !dbg !1561

; <label>:47:                                     ; preds = %36
  %48 = load %struct.REJOIN_REC*, %struct.REJOIN_REC** %7, align 8, !dbg !1562
  store %struct.REJOIN_REC* %48, %struct.REJOIN_REC** %3, align 8, !dbg !1563
  br label %55, !dbg !1563

; <label>:49:                                     ; preds = %36
  br label %50, !dbg !1564

; <label>:50:                                     ; preds = %49
  %51 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1565
  %52 = getelementptr inbounds %struct._GSList, %struct._GSList* %51, i32 0, i32 1, !dbg !1567
  %53 = load %struct._GSList*, %struct._GSList** %52, align 8, !dbg !1567
  store %struct._GSList* %53, %struct._GSList** %6, align 8, !dbg !1568
  br label %33, !dbg !1569, !llvm.loop !1570

; <label>:54:                                     ; preds = %33
  store %struct.REJOIN_REC* null, %struct.REJOIN_REC** %3, align 8, !dbg !1572
  br label %55, !dbg !1572

; <label>:55:                                     ; preds = %54, %47, %27, %20
  %56 = load %struct.REJOIN_REC*, %struct.REJOIN_REC** %3, align 8, !dbg !1573
  ret %struct.REJOIN_REC* %56, !dbg !1573
}

declare noalias i8* @g_strdup(i8*) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #1

declare i32 @g_ascii_strcasecmp(i8*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!698, !699}
!llvm.ident = !{!700}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !56, globals: !695)
!1 = !DIFile(filename: "line113-channel-rejoin.o.i", directory: "/home/lichi/Desktop/irssi/task1")
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
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 25, size: 32, align: 32, elements: !37)
!36 = !DIFile(filename: "../../../src/core/commands.h", directory: "/home/lichi/Desktop/irssi/task1")
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55}
!38 = !DIEnumerator(name: "CMDERR_OPTION_UNKNOWN", value: -3)
!39 = !DIEnumerator(name: "CMDERR_OPTION_AMBIGUOUS", value: -2)
!40 = !DIEnumerator(name: "CMDERR_OPTION_ARG_MISSING", value: -1)
!41 = !DIEnumerator(name: "CMDERR_UNKNOWN", value: 0)
!42 = !DIEnumerator(name: "CMDERR_AMBIGUOUS", value: 1)
!43 = !DIEnumerator(name: "CMDERR_ERRNO", value: 2)
!44 = !DIEnumerator(name: "CMDERR_NOT_ENOUGH_PARAMS", value: 3)
!45 = !DIEnumerator(name: "CMDERR_NOT_CONNECTED", value: 4)
!46 = !DIEnumerator(name: "CMDERR_NOT_JOINED", value: 5)
!47 = !DIEnumerator(name: "CMDERR_CHAN_NOT_FOUND", value: 6)
!48 = !DIEnumerator(name: "CMDERR_CHAN_NOT_SYNCED", value: 7)
!49 = !DIEnumerator(name: "CMDERR_ILLEGAL_PROTO", value: 8)
!50 = !DIEnumerator(name: "CMDERR_NOT_GOOD_IDEA", value: 9)
!51 = !DIEnumerator(name: "CMDERR_INVALID_TIME", value: 10)
!52 = !DIEnumerator(name: "CMDERR_INVALID_CHARSET", value: 11)
!53 = !DIEnumerator(name: "CMDERR_EVAL_MAX_RECURSE", value: 12)
!54 = !DIEnumerator(name: "CMDERR_PROGRAM_NOT_FOUND", value: 13)
!55 = !DIEnumerator(name: "CMDERR_NO_SERVER_DEFINED", value: 14)
!56 = !{!57, !66, !67, !74, !378, !140, !466, !65, !368, !641, !485, !687}
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{!61, !65}
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !62, line: 50, baseType: !63)
!62 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !62, line: 49, baseType: !64)
!64 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !62, line: 77, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !68, line: 9, baseType: !69)
!68 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!70 = !DISubroutineType(types: !71)
!71 = !{null, !72, !72, !72, !72, !72, !72}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_REC", file: !76, line: 6, baseType: !77)
!76 = !DIFile(filename: "irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_REC", file: !78, line: 42, size: 39168, align: 64, elements: !79)
!78 = !DIFile(filename: "irc-servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!79 = !{!80, !82, !83, !84, !323, !328, !329, !330, !331, !332, !333, !334, !335, !336, !340, !341, !345, !346, !347, !351, !356, !357, !358, !359, !360, !361, !362, !363, !370, !371, !372, !373, !374, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !684, !686}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !77, file: !81, line: 3, baseType: !64, size: 32, align: 32)
!81 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!82 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !77, file: !81, line: 4, baseType: !64, size: 32, align: 32, offset: 32)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !77, file: !81, line: 6, baseType: !64, size: 32, align: 32, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !77, file: !81, line: 8, baseType: !85, size: 64, align: 64, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_CONNECT_REC", file: !76, line: 5, baseType: !87)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_CONNECT_REC", file: !78, line: 24, size: 2496, align: 64, elements: !88)
!88 = !{!89, !91, !92, !93, !96, !97, !98, !99, !100, !102, !103, !104, !105, !106, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !87, file: !90, line: 3, baseType: !64, size: 32, align: 32)
!90 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!91 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !87, file: !90, line: 4, baseType: !64, size: 32, align: 32, offset: 32)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !87, file: !90, line: 6, baseType: !64, size: 32, align: 32, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !87, file: !90, line: 9, baseType: !94, size: 64, align: 64, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!95 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !87, file: !90, line: 10, baseType: !64, size: 32, align: 32, offset: 192)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !87, file: !90, line: 11, baseType: !94, size: 64, align: 64, offset: 256)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !87, file: !90, line: 11, baseType: !94, size: 64, align: 64, offset: 320)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !87, file: !90, line: 11, baseType: !94, size: 64, align: 64, offset: 384)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !87, file: !90, line: 13, baseType: !101, size: 16, align: 16, offset: 448)
!101 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !87, file: !90, line: 14, baseType: !94, size: 64, align: 64, offset: 512)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !87, file: !90, line: 15, baseType: !94, size: 64, align: 64, offset: 576)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !87, file: !90, line: 16, baseType: !64, size: 32, align: 32, offset: 640)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !87, file: !90, line: 17, baseType: !94, size: 64, align: 64, offset: 704)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !87, file: !90, line: 19, baseType: !107, size: 64, align: 64, offset: 768)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, align: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !109, line: 99, baseType: !110)
!109 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!110 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !109, line: 99, flags: DIFlagFwdDecl)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !87, file: !90, line: 19, baseType: !107, size: 64, align: 64, offset: 832)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !87, file: !90, line: 21, baseType: !94, size: 64, align: 64, offset: 896)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !87, file: !90, line: 22, baseType: !94, size: 64, align: 64, offset: 960)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !87, file: !90, line: 23, baseType: !94, size: 64, align: 64, offset: 1024)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !87, file: !90, line: 24, baseType: !94, size: 64, align: 64, offset: 1088)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !87, file: !90, line: 26, baseType: !94, size: 64, align: 64, offset: 1152)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !87, file: !90, line: 27, baseType: !94, size: 64, align: 64, offset: 1216)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !87, file: !90, line: 28, baseType: !94, size: 64, align: 64, offset: 1280)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !87, file: !90, line: 29, baseType: !94, size: 64, align: 64, offset: 1344)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !87, file: !90, line: 30, baseType: !94, size: 64, align: 64, offset: 1408)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !87, file: !90, line: 31, baseType: !94, size: 64, align: 64, offset: 1472)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !87, file: !90, line: 32, baseType: !94, size: 64, align: 64, offset: 1536)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !87, file: !90, line: 33, baseType: !94, size: 64, align: 64, offset: 1600)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !87, file: !90, line: 35, baseType: !125, size: 64, align: 64, offset: 1664)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !127)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !128)
!128 = !{!129, !130, !268, !269, !274, !275, !276, !277, !278, !287, !288, !289, !293, !294, !295, !296, !297, !298, !299, !300}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !127, file: !4, line: 100, baseType: !63, size: 32, align: 32)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !127, file: !4, line: 101, baseType: !131, size: 64, align: 64, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, align: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !133)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !134)
!134 = !{!135, !159, !165, !172, !176, !255, !259, !264}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !133, file: !4, line: 133, baseType: !136, size: 64, align: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64, align: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{!139, !125, !140, !142, !145, !146}
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !62, line: 46, baseType: !95)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !143, line: 66, baseType: !144)
!143 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!144 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64, align: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64, align: 64)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64, align: 64)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !149, line: 42, baseType: !150)
!149 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !149, line: 44, size: 128, align: 64, elements: !151)
!151 = !{!152, !157, !158}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !150, file: !149, line: 46, baseType: !153, size: 32, align: 32)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !154, line: 36, baseType: !155)
!154 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !143, line: 45, baseType: !156)
!156 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !150, file: !149, line: 47, baseType: !63, size: 32, align: 32, offset: 32)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !150, file: !149, line: 48, baseType: !140, size: 64, align: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !133, file: !4, line: 138, baseType: !160, size: 64, align: 64, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64, align: 64)
!161 = !DISubroutineType(types: !162)
!162 = !{!139, !125, !163, !142, !145, !146}
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64, align: 64)
!164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !133, file: !4, line: 143, baseType: !166, size: 64, align: 64, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64, align: 64)
!167 = !DISubroutineType(types: !168)
!168 = !{!139, !125, !169, !171, !146}
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !143, line: 51, baseType: !170)
!170 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !133, file: !4, line: 147, baseType: !173, size: 64, align: 64, offset: 192)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64, align: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{!139, !125, !146}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !133, file: !4, line: 149, baseType: !177, size: 64, align: 64, offset: 256)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{!180, !125, !254}
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64, align: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !182)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !183)
!183 = !{!184, !185, !201, !230, !232, !236, !237, !238, !239, !247, !248, !249, !250}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !182, file: !16, line: 174, baseType: !65, size: 64, align: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !182, file: !16, line: 175, baseType: !186, size: 64, align: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64, align: 64)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !188)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !189)
!189 = !{!190, !194, !195}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !188, file: !16, line: 198, baseType: !191, size: 64, align: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64, align: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{null, !65}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !188, file: !16, line: 199, baseType: !191, size: 64, align: 64, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !188, file: !16, line: 200, baseType: !196, size: 64, align: 64, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{null, !65, !180, !199, !200}
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !182, file: !16, line: 177, baseType: !202, size: 64, align: 64, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !205)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !206)
!206 = !{!207, !212, !216, !220, !224, !225}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !205, file: !16, line: 216, baseType: !208, size: 64, align: 64)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64, align: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{!61, !180, !211}
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !205, file: !16, line: 218, baseType: !213, size: 64, align: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64, align: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!61, !180}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !205, file: !16, line: 219, baseType: !217, size: 64, align: 64, offset: 128)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64, align: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!61, !180, !57, !65}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !205, file: !16, line: 222, baseType: !221, size: 64, align: 64, offset: 192)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{null, !180}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !205, file: !16, line: 226, baseType: !57, size: 64, align: 64, offset: 256)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !205, file: !16, line: 227, baseType: !226, size: 64, align: 64, offset: 320)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64, align: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{null}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !182, file: !16, line: 178, baseType: !231, size: 32, align: 32, offset: 192)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !62, line: 55, baseType: !156)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !182, file: !16, line: 180, baseType: !233, size: 64, align: 64, offset: 256)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64, align: 64)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !235)
!235 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !182, file: !16, line: 182, baseType: !63, size: 32, align: 32, offset: 320)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !182, file: !16, line: 183, baseType: !231, size: 32, align: 32, offset: 352)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !182, file: !16, line: 184, baseType: !231, size: 32, align: 32, offset: 384)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !182, file: !16, line: 186, baseType: !240, size: 64, align: 64, offset: 448)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, align: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !242, line: 37, baseType: !243)
!242 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !242, line: 39, size: 128, align: 64, elements: !244)
!244 = !{!245, !246}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !243, file: !242, line: 41, baseType: !65, size: 64, align: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !243, file: !242, line: 42, baseType: !240, size: 64, align: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !182, file: !16, line: 188, baseType: !180, size: 64, align: 64, offset: 512)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !182, file: !16, line: 189, baseType: !180, size: 64, align: 64, offset: 576)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !182, file: !16, line: 191, baseType: !94, size: 64, align: 64, offset: 640)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !182, file: !16, line: 193, baseType: !251, size: 64, align: 64, offset: 704)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64, align: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !253)
!253 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !133, file: !4, line: 151, baseType: !256, size: 64, align: 64, offset: 320)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64, align: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{null, !125}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !133, file: !4, line: 152, baseType: !260, size: 64, align: 64, offset: 384)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!139, !125, !263, !146}
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !133, file: !4, line: 155, baseType: !265, size: 64, align: 64, offset: 448)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64, align: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{!263, !125}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !127, file: !4, line: 103, baseType: !140, size: 64, align: 64, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !127, file: !4, line: 104, baseType: !270, size: 64, align: 64, offset: 192)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !271, line: 77, baseType: !272)
!271 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64, align: 64)
!273 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !271, line: 77, flags: DIFlagFwdDecl)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !127, file: !4, line: 105, baseType: !270, size: 64, align: 64, offset: 256)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !127, file: !4, line: 106, baseType: !140, size: 64, align: 64, offset: 320)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !127, file: !4, line: 107, baseType: !231, size: 32, align: 32, offset: 384)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !127, file: !4, line: 109, baseType: !142, size: 64, align: 64, offset: 448)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !127, file: !4, line: 110, baseType: !279, size: 64, align: 64, offset: 512)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !281, line: 39, baseType: !282)
!281 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !281, line: 41, size: 192, align: 64, elements: !283)
!283 = !{!284, !285, !286}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !282, file: !281, line: 43, baseType: !140, size: 64, align: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !282, file: !281, line: 44, baseType: !142, size: 64, align: 64, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !282, file: !281, line: 45, baseType: !142, size: 64, align: 64, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !127, file: !4, line: 111, baseType: !279, size: 64, align: 64, offset: 576)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !127, file: !4, line: 112, baseType: !279, size: 64, align: 64, offset: 640)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !127, file: !4, line: 113, baseType: !290, size: 48, align: 8, offset: 704)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 48, align: 8, elements: !291)
!291 = !{!292}
!292 = !DISubrange(count: 6)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !127, file: !4, line: 117, baseType: !231, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !127, file: !4, line: 118, baseType: !231, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !127, file: !4, line: 119, baseType: !231, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !127, file: !4, line: 120, baseType: !231, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !127, file: !4, line: 121, baseType: !231, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !127, file: !4, line: 122, baseType: !231, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !127, file: !4, line: 124, baseType: !65, size: 64, align: 64, offset: 768)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !127, file: !4, line: 125, baseType: !65, size: 64, align: 64, offset: 832)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !87, file: !90, line: 38, baseType: !156, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !87, file: !90, line: 39, baseType: !156, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !87, file: !90, line: 40, baseType: !156, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !87, file: !90, line: 41, baseType: !156, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !87, file: !90, line: 42, baseType: !156, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !87, file: !90, line: 43, baseType: !156, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !87, file: !90, line: 44, baseType: !156, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !87, file: !90, line: 45, baseType: !156, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !87, file: !90, line: 46, baseType: !94, size: 64, align: 64, offset: 1792)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !87, file: !90, line: 47, baseType: !94, size: 64, align: 64, offset: 1856)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !87, file: !78, line: 27, baseType: !94, size: 64, align: 64, offset: 1920)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_nick", scope: !87, file: !78, line: 28, baseType: !94, size: 64, align: 64, offset: 1984)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !87, file: !78, line: 30, baseType: !64, size: 32, align: 32, offset: 2048)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_username", scope: !87, file: !78, line: 31, baseType: !94, size: 64, align: 64, offset: 2112)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !87, file: !78, line: 32, baseType: !94, size: 64, align: 64, offset: 2176)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !87, file: !78, line: 34, baseType: !64, size: 32, align: 32, offset: 2240)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !87, file: !78, line: 35, baseType: !64, size: 32, align: 32, offset: 2272)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !87, file: !78, line: 36, baseType: !64, size: 32, align: 32, offset: 2304)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks", scope: !87, file: !78, line: 38, baseType: !64, size: 32, align: 32, offset: 2336)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !87, file: !78, line: 38, baseType: !64, size: 32, align: 32, offset: 2368)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes", scope: !87, file: !78, line: 38, baseType: !64, size: 32, align: 32, offset: 2400)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois", scope: !87, file: !78, line: 38, baseType: !64, size: 32, align: 32, offset: 2432)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !77, file: !81, line: 9, baseType: !324, size: 64, align: 64, offset: 192)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !325, line: 75, baseType: !326)
!325 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !327, line: 139, baseType: !170)
!327 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!328 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !77, file: !81, line: 10, baseType: !324, size: 64, align: 64, offset: 256)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !77, file: !81, line: 12, baseType: !94, size: 64, align: 64, offset: 320)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !77, file: !81, line: 13, baseType: !94, size: 64, align: 64, offset: 384)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !77, file: !81, line: 15, baseType: !156, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !77, file: !81, line: 16, baseType: !156, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !77, file: !81, line: 17, baseType: !156, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !77, file: !81, line: 18, baseType: !156, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !77, file: !81, line: 19, baseType: !156, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !77, file: !81, line: 21, baseType: !337, size: 64, align: 64, offset: 512)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64, align: 64)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !109, line: 102, baseType: !339)
!339 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !109, line: 102, flags: DIFlagFwdDecl)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !77, file: !81, line: 22, baseType: !64, size: 32, align: 32, offset: 576)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !77, file: !81, line: 25, baseType: !342, size: 128, align: 64, offset: 640)
!342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 128, align: 64, elements: !343)
!343 = !{!344}
!344 = !DISubrange(count: 2)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !77, file: !81, line: 26, baseType: !64, size: 32, align: 32, offset: 768)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !77, file: !81, line: 27, baseType: !64, size: 32, align: 32, offset: 800)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !77, file: !81, line: 29, baseType: !348, size: 64, align: 64, offset: 832)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64, align: 64)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !109, line: 103, baseType: !350)
!350 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !109, line: 103, flags: DIFlagFwdDecl)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !77, file: !81, line: 30, baseType: !352, size: 64, align: 64, offset: 896)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64, align: 64)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !354, line: 37, baseType: !355)
!354 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!355 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !354, line: 37, flags: DIFlagFwdDecl)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !77, file: !81, line: 32, baseType: !94, size: 64, align: 64, offset: 960)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !77, file: !81, line: 33, baseType: !94, size: 64, align: 64, offset: 1024)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !77, file: !81, line: 34, baseType: !94, size: 64, align: 64, offset: 1088)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !77, file: !81, line: 35, baseType: !156, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !77, file: !81, line: 36, baseType: !156, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !77, file: !81, line: 37, baseType: !156, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !77, file: !81, line: 38, baseType: !156, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !77, file: !81, line: 40, baseType: !364, size: 128, align: 64, offset: 1216)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !62, line: 504, baseType: !365)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !62, line: 506, size: 128, align: 64, elements: !366)
!366 = !{!367, !369}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !365, file: !62, line: 508, baseType: !368, size: 64, align: 64)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !62, line: 48, baseType: !170)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !365, file: !62, line: 509, baseType: !368, size: 64, align: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !77, file: !81, line: 41, baseType: !324, size: 64, align: 64, offset: 1344)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !77, file: !81, line: 42, baseType: !64, size: 32, align: 32, offset: 1408)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !77, file: !81, line: 44, baseType: !240, size: 64, align: 64, offset: 1472)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !77, file: !81, line: 45, baseType: !240, size: 64, align: 64, offset: 1536)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !77, file: !81, line: 53, baseType: !375, size: 64, align: 64, offset: 1600)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64, align: 64)
!376 = !DISubroutineType(types: !377)
!377 = !{null, !378, !466, !64}
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64, align: 64)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !109, line: 107, baseType: !380)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !381, line: 30, size: 2240, align: 64, elements: !382)
!381 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!382 = !{!383, !384, !385, !386, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !462, !468, !472, !476, !481, !560, !567, !571}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !380, file: !81, line: 3, baseType: !64, size: 32, align: 32)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !380, file: !81, line: 4, baseType: !64, size: 32, align: 32, offset: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !380, file: !81, line: 6, baseType: !64, size: 32, align: 32, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !380, file: !81, line: 8, baseType: !387, size: 64, align: 64, offset: 128)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64, align: 64)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !109, line: 113, baseType: !389)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !381, line: 25, size: 1920, align: 64, elements: !390)
!390 = !{!391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !389, file: !90, line: 3, baseType: !64, size: 32, align: 32)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !389, file: !90, line: 4, baseType: !64, size: 32, align: 32, offset: 32)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !389, file: !90, line: 6, baseType: !64, size: 32, align: 32, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !389, file: !90, line: 9, baseType: !94, size: 64, align: 64, offset: 128)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !389, file: !90, line: 10, baseType: !64, size: 32, align: 32, offset: 192)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !389, file: !90, line: 11, baseType: !94, size: 64, align: 64, offset: 256)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !389, file: !90, line: 11, baseType: !94, size: 64, align: 64, offset: 320)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !389, file: !90, line: 11, baseType: !94, size: 64, align: 64, offset: 384)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !389, file: !90, line: 13, baseType: !101, size: 16, align: 16, offset: 448)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !389, file: !90, line: 14, baseType: !94, size: 64, align: 64, offset: 512)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !389, file: !90, line: 15, baseType: !94, size: 64, align: 64, offset: 576)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !389, file: !90, line: 16, baseType: !64, size: 32, align: 32, offset: 640)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !389, file: !90, line: 17, baseType: !94, size: 64, align: 64, offset: 704)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !389, file: !90, line: 19, baseType: !107, size: 64, align: 64, offset: 768)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !389, file: !90, line: 19, baseType: !107, size: 64, align: 64, offset: 832)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !389, file: !90, line: 21, baseType: !94, size: 64, align: 64, offset: 896)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !389, file: !90, line: 22, baseType: !94, size: 64, align: 64, offset: 960)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !389, file: !90, line: 23, baseType: !94, size: 64, align: 64, offset: 1024)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !389, file: !90, line: 24, baseType: !94, size: 64, align: 64, offset: 1088)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !389, file: !90, line: 26, baseType: !94, size: 64, align: 64, offset: 1152)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !389, file: !90, line: 27, baseType: !94, size: 64, align: 64, offset: 1216)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !389, file: !90, line: 28, baseType: !94, size: 64, align: 64, offset: 1280)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !389, file: !90, line: 29, baseType: !94, size: 64, align: 64, offset: 1344)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !389, file: !90, line: 30, baseType: !94, size: 64, align: 64, offset: 1408)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !389, file: !90, line: 31, baseType: !94, size: 64, align: 64, offset: 1472)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !389, file: !90, line: 32, baseType: !94, size: 64, align: 64, offset: 1536)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !389, file: !90, line: 33, baseType: !94, size: 64, align: 64, offset: 1600)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !389, file: !90, line: 35, baseType: !125, size: 64, align: 64, offset: 1664)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !389, file: !90, line: 38, baseType: !156, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !389, file: !90, line: 39, baseType: !156, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !389, file: !90, line: 40, baseType: !156, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !389, file: !90, line: 41, baseType: !156, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !389, file: !90, line: 42, baseType: !156, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !389, file: !90, line: 43, baseType: !156, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !389, file: !90, line: 44, baseType: !156, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !389, file: !90, line: 45, baseType: !156, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !389, file: !90, line: 46, baseType: !94, size: 64, align: 64, offset: 1792)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !389, file: !90, line: 47, baseType: !94, size: 64, align: 64, offset: 1856)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !380, file: !81, line: 9, baseType: !324, size: 64, align: 64, offset: 192)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !380, file: !81, line: 10, baseType: !324, size: 64, align: 64, offset: 256)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !380, file: !81, line: 12, baseType: !94, size: 64, align: 64, offset: 320)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !380, file: !81, line: 13, baseType: !94, size: 64, align: 64, offset: 384)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !380, file: !81, line: 15, baseType: !156, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !380, file: !81, line: 16, baseType: !156, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !380, file: !81, line: 17, baseType: !156, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !380, file: !81, line: 18, baseType: !156, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !380, file: !81, line: 19, baseType: !156, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !380, file: !81, line: 21, baseType: !337, size: 64, align: 64, offset: 512)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !380, file: !81, line: 22, baseType: !64, size: 32, align: 32, offset: 576)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !380, file: !81, line: 25, baseType: !342, size: 128, align: 64, offset: 640)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !380, file: !81, line: 26, baseType: !64, size: 32, align: 32, offset: 768)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !380, file: !81, line: 27, baseType: !64, size: 32, align: 32, offset: 800)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !380, file: !81, line: 29, baseType: !348, size: 64, align: 64, offset: 832)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !380, file: !81, line: 30, baseType: !352, size: 64, align: 64, offset: 896)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !380, file: !81, line: 32, baseType: !94, size: 64, align: 64, offset: 960)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !380, file: !81, line: 33, baseType: !94, size: 64, align: 64, offset: 1024)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !380, file: !81, line: 34, baseType: !94, size: 64, align: 64, offset: 1088)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !380, file: !81, line: 35, baseType: !156, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !380, file: !81, line: 36, baseType: !156, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !380, file: !81, line: 37, baseType: !156, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !380, file: !81, line: 38, baseType: !156, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !380, file: !81, line: 40, baseType: !364, size: 128, align: 64, offset: 1216)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !380, file: !81, line: 41, baseType: !324, size: 64, align: 64, offset: 1344)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !380, file: !81, line: 42, baseType: !64, size: 32, align: 32, offset: 1408)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !380, file: !81, line: 44, baseType: !240, size: 64, align: 64, offset: 1472)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !380, file: !81, line: 45, baseType: !240, size: 64, align: 64, offset: 1536)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !380, file: !81, line: 53, baseType: !375, size: 64, align: 64, offset: 1600)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !380, file: !81, line: 55, baseType: !459, size: 64, align: 64, offset: 1664)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64, align: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{!64, !378, !95}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !380, file: !81, line: 57, baseType: !463, size: 64, align: 64, offset: 1728)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64, align: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!64, !378, !466}
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64, align: 64)
!467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !380, file: !81, line: 60, baseType: !469, size: 64, align: 64, offset: 1792)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64, align: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{!466, !378}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !380, file: !81, line: 62, baseType: !473, size: 64, align: 64, offset: 1856)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64, align: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{null, !378, !466, !466, !64}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !380, file: !81, line: 65, baseType: !477, size: 64, align: 64, offset: 1920)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64, align: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{!480, !378, !466, !466}
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !380, file: !81, line: 69, baseType: !482, size: 64, align: 64, offset: 1984)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64, align: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!485, !378, !466}
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64, align: 64)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !109, line: 109, baseType: !487)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !488, line: 15, size: 1408, align: 64, elements: !489)
!488 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!489 = !{!490, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !508, !512, !514, !515, !516, !517, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !487, file: !491, line: 3, baseType: !64, size: 32, align: 32)
!491 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!492 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !487, file: !491, line: 4, baseType: !64, size: 32, align: 32, offset: 32)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !487, file: !491, line: 5, baseType: !352, size: 64, align: 64, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !487, file: !491, line: 7, baseType: !66, size: 64, align: 64, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !487, file: !491, line: 8, baseType: !378, size: 64, align: 64, offset: 192)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !487, file: !491, line: 9, baseType: !94, size: 64, align: 64, offset: 256)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !487, file: !491, line: 10, baseType: !94, size: 64, align: 64, offset: 320)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !487, file: !491, line: 11, baseType: !324, size: 64, align: 64, offset: 384)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !487, file: !491, line: 12, baseType: !64, size: 32, align: 32, offset: 448)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !487, file: !491, line: 13, baseType: !94, size: 64, align: 64, offset: 512)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !487, file: !491, line: 15, baseType: !502, size: 64, align: 64, offset: 576)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64, align: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{null, !505}
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64, align: 64)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !109, line: 108, baseType: !507)
!507 = !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !109, line: 108, flags: DIFlagFwdDecl)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !487, file: !491, line: 17, baseType: !509, size: 64, align: 64, offset: 640)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64, align: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!466, !505}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !487, file: !513, line: 5, baseType: !94, size: 64, align: 64, offset: 704)
!513 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!514 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !487, file: !513, line: 6, baseType: !94, size: 64, align: 64, offset: 768)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !487, file: !513, line: 7, baseType: !324, size: 64, align: 64, offset: 832)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !487, file: !513, line: 9, baseType: !352, size: 64, align: 64, offset: 896)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !487, file: !513, line: 10, baseType: !518, size: 64, align: 64, offset: 960)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64, align: 64)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !109, line: 111, baseType: !520)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !521, line: 13, size: 576, align: 64, elements: !522)
!521 = !DIFile(filename: "../../../src/core/nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!522 = !{!523, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !541, !542}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !520, file: !524, line: 3, baseType: !64, size: 32, align: 32)
!524 = !DIFile(filename: "../../../src/core/nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!525 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !520, file: !524, line: 4, baseType: !64, size: 32, align: 32, offset: 32)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !520, file: !524, line: 6, baseType: !324, size: 64, align: 64, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !520, file: !524, line: 8, baseType: !94, size: 64, align: 64, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !520, file: !524, line: 9, baseType: !94, size: 64, align: 64, offset: 192)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !520, file: !524, line: 10, baseType: !94, size: 64, align: 64, offset: 256)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !520, file: !524, line: 11, baseType: !64, size: 32, align: 32, offset: 320)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !520, file: !524, line: 14, baseType: !156, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !520, file: !524, line: 15, baseType: !156, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !520, file: !524, line: 18, baseType: !156, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !520, file: !524, line: 19, baseType: !156, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !520, file: !524, line: 20, baseType: !156, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !520, file: !524, line: 21, baseType: !156, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !520, file: !524, line: 22, baseType: !538, size: 64, align: 8, offset: 360)
!538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 64, align: 8, elements: !539)
!539 = !{!540}
!540 = !DISubrange(count: 8)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !520, file: !524, line: 26, baseType: !66, size: 64, align: 64, offset: 448)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !520, file: !524, line: 28, baseType: !518, size: 64, align: 64, offset: 512)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !487, file: !513, line: 12, baseType: !156, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !487, file: !513, line: 13, baseType: !94, size: 64, align: 64, offset: 1088)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !487, file: !513, line: 14, baseType: !64, size: 32, align: 32, offset: 1152)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !487, file: !513, line: 15, baseType: !94, size: 64, align: 64, offset: 1216)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !487, file: !513, line: 17, baseType: !156, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !487, file: !513, line: 18, baseType: !156, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !487, file: !513, line: 19, baseType: !156, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !487, file: !513, line: 20, baseType: !156, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !487, file: !513, line: 22, baseType: !156, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !487, file: !513, line: 23, baseType: !156, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !487, file: !513, line: 24, baseType: !156, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !487, file: !513, line: 25, baseType: !156, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !487, file: !513, line: 26, baseType: !156, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !487, file: !513, line: 31, baseType: !557, size: 64, align: 64, offset: 1344)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64, align: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!94, !485}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !380, file: !81, line: 70, baseType: !561, size: 64, align: 64, offset: 2048)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64, align: 64)
!562 = !DISubroutineType(types: !563)
!563 = !{!564, !378, !466}
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64, align: 64)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !109, line: 110, baseType: !566)
!566 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !109, line: 110, flags: DIFlagFwdDecl)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !380, file: !81, line: 71, baseType: !568, size: 64, align: 64, offset: 2112)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64, align: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!64, !466, !466}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !380, file: !81, line: 73, baseType: !568, size: 64, align: 64, offset: 2176)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !77, file: !81, line: 55, baseType: !459, size: 64, align: 64, offset: 1664)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !77, file: !81, line: 57, baseType: !463, size: 64, align: 64, offset: 1728)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !77, file: !81, line: 60, baseType: !469, size: 64, align: 64, offset: 1792)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !77, file: !81, line: 62, baseType: !473, size: 64, align: 64, offset: 1856)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !77, file: !81, line: 65, baseType: !477, size: 64, align: 64, offset: 1920)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !77, file: !81, line: 69, baseType: !482, size: 64, align: 64, offset: 1984)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !77, file: !81, line: 70, baseType: !561, size: 64, align: 64, offset: 2048)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !77, file: !81, line: 71, baseType: !568, size: 64, align: 64, offset: 2112)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !77, file: !81, line: 73, baseType: !568, size: 64, align: 64, offset: 2176)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "redirects", scope: !77, file: !78, line: 46, baseType: !240, size: 64, align: 64, offset: 2240)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_queue", scope: !77, file: !78, line: 47, baseType: !240, size: 64, align: 64, offset: 2304)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_next", scope: !77, file: !78, line: 48, baseType: !584, size: 64, align: 64, offset: 2368)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64, align: 64)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "REDIRECT_REC", file: !76, line: 8, baseType: !586)
!586 = !DICompositeType(tag: DW_TAG_structure_type, name: "_REDIRECT_REC", file: !76, line: 8, flags: DIFlagFwdDecl)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_active", scope: !77, file: !78, line: 49, baseType: !240, size: 64, align: 64, offset: 2432)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "last_nick", scope: !77, file: !78, line: 51, baseType: !94, size: 64, align: 64, offset: 2496)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !77, file: !78, line: 53, baseType: !94, size: 64, align: 64, offset: 2560)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !77, file: !78, line: 54, baseType: !94, size: 64, align: 64, offset: 2624)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "wanted_usermode", scope: !77, file: !78, line: 55, baseType: !94, size: 64, align: 64, offset: 2688)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "userhost", scope: !77, file: !78, line: 56, baseType: !94, size: 64, align: 64, offset: 2752)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "channels_formed", scope: !77, file: !78, line: 57, baseType: !64, size: 32, align: 32, offset: 2816)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "whois_found", scope: !77, file: !78, line: 59, baseType: !156, size: 1, align: 32, offset: 2848, flags: DIFlagBitField, extraData: i64 2848)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "whowas_found", scope: !77, file: !78, line: 60, baseType: !156, size: 1, align: 32, offset: 2849, flags: DIFlagBitField, extraData: i64 2848)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "emode_known", scope: !77, file: !78, line: 62, baseType: !156, size: 1, align: 32, offset: 2850, flags: DIFlagBitField, extraData: i64 2848)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_mode", scope: !77, file: !78, line: 63, baseType: !156, size: 1, align: 32, offset: 2851, flags: DIFlagBitField, extraData: i64 2848)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_who", scope: !77, file: !78, line: 64, baseType: !156, size: 1, align: 32, offset: 2852, flags: DIFlagBitField, extraData: i64 2848)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "one_endofwho", scope: !77, file: !78, line: 65, baseType: !156, size: 1, align: 32, offset: 2853, flags: DIFlagBitField, extraData: i64 2848)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "disable_lag", scope: !77, file: !78, line: 66, baseType: !156, size: 1, align: 32, offset: 2854, flags: DIFlagBitField, extraData: i64 2848)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "nick_collision", scope: !77, file: !78, line: 67, baseType: !156, size: 1, align: 32, offset: 2855, flags: DIFlagBitField, extraData: i64 2848)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "motd_got", scope: !77, file: !78, line: 68, baseType: !156, size: 1, align: 32, offset: 2856, flags: DIFlagBitField, extraData: i64 2848)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "isupport_sent", scope: !77, file: !78, line: 69, baseType: !156, size: 1, align: 32, offset: 2857, flags: DIFlagBitField, extraData: i64 2848)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "cap_complete", scope: !77, file: !78, line: 70, baseType: !156, size: 1, align: 32, offset: 2858, flags: DIFlagBitField, extraData: i64 2848)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "cap_in_multiline", scope: !77, file: !78, line: 71, baseType: !156, size: 1, align: 32, offset: 2859, flags: DIFlagBitField, extraData: i64 2848)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_success", scope: !77, file: !78, line: 72, baseType: !156, size: 1, align: 32, offset: 2860, flags: DIFlagBitField, extraData: i64 2848)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks_in_cmd", scope: !77, file: !78, line: 74, baseType: !64, size: 32, align: 32, offset: 2880)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes_in_cmd", scope: !77, file: !78, line: 75, baseType: !64, size: 32, align: 32, offset: 2912)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois_in_cmd", scope: !77, file: !78, line: 76, baseType: !64, size: 32, align: 32, offset: 2944)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs_in_cmd", scope: !77, file: !78, line: 77, baseType: !64, size: 32, align: 32, offset: 2976)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "cap_supported", scope: !77, file: !78, line: 79, baseType: !352, size: 64, align: 64, offset: 3008)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "cap_active", scope: !77, file: !78, line: 80, baseType: !240, size: 64, align: 64, offset: 3072)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "cap_queue", scope: !77, file: !78, line: 81, baseType: !240, size: 64, align: 64, offset: 3136)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_buffer", scope: !77, file: !78, line: 83, baseType: !279, size: 64, align: 64, offset: 3200)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_timeout", scope: !77, file: !78, line: 84, baseType: !231, size: 32, align: 32, offset: 3264)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcount", scope: !77, file: !78, line: 87, baseType: !64, size: 32, align: 32, offset: 3296)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "cmdqueue", scope: !77, file: !78, line: 91, baseType: !240, size: 64, align: 64, offset: 3328)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "wait_cmd", scope: !77, file: !78, line: 92, baseType: !364, size: 128, align: 64, offset: 3392)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd", scope: !77, file: !78, line: 93, baseType: !364, size: 128, align: 64, offset: 3520)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !77, file: !78, line: 95, baseType: !64, size: 32, align: 32, offset: 3648)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !77, file: !78, line: 96, baseType: !64, size: 32, align: 32, offset: 3680)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !77, file: !78, line: 97, baseType: !64, size: 32, align: 32, offset: 3712)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "idles", scope: !77, file: !78, line: 100, baseType: !240, size: 64, align: 64, offset: 3776)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "ctcpqueue", scope: !77, file: !78, line: 103, baseType: !240, size: 64, align: 64, offset: 3840)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "knockoutlist", scope: !77, file: !78, line: 106, baseType: !240, size: 64, align: 64, offset: 3904)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "splits", scope: !77, file: !78, line: 108, baseType: !352, size: 64, align: 64, offset: 3968)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "split_servers", scope: !77, file: !78, line: 109, baseType: !240, size: 64, align: 64, offset: 4032)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "rejoin_channels", scope: !77, file: !78, line: 111, baseType: !240, size: 64, align: 64, offset: 4096)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "chanqueries", scope: !77, file: !78, line: 114, baseType: !66, size: 64, align: 64, offset: 4160)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "isupport", scope: !77, file: !78, line: 116, baseType: !352, size: 64, align: 64, offset: 4224)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !77, file: !78, line: 117, baseType: !632, size: 32768, align: 64, offset: 4288)
!632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !633, size: 32768, align: 64, elements: !682)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "modes_type", file: !634, line: 10, size: 128, align: 64, elements: !635)
!634 = !DIFile(filename: "modes.h", directory: "/home/lichi/Desktop/irssi/task1")
!635 = !{!636, !681}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !633, file: !634, line: 11, baseType: !637, size: 64, align: 64)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64, align: 64)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_func_t", file: !634, line: 7, baseType: !639)
!639 = !DISubroutineType(types: !640)
!640 = !{null, !641, !466, !95, !95, !94, !279}
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64, align: 64)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_CHANNEL_REC", file: !76, line: 7, baseType: !643)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_CHANNEL_REC", file: !644, line: 15, size: 1600, align: 64, elements: !645)
!644 = !DIFile(filename: "irc-channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!645 = !{!646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !643, file: !491, line: 3, baseType: !64, size: 32, align: 32)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !643, file: !491, line: 4, baseType: !64, size: 32, align: 32, offset: 32)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !643, file: !491, line: 5, baseType: !352, size: 64, align: 64, offset: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !643, file: !491, line: 7, baseType: !66, size: 64, align: 64, offset: 128)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !643, file: !491, line: 8, baseType: !74, size: 64, align: 64, offset: 192)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !643, file: !491, line: 9, baseType: !94, size: 64, align: 64, offset: 256)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !643, file: !491, line: 10, baseType: !94, size: 64, align: 64, offset: 320)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !643, file: !491, line: 11, baseType: !324, size: 64, align: 64, offset: 384)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !643, file: !491, line: 12, baseType: !64, size: 32, align: 32, offset: 448)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !643, file: !491, line: 13, baseType: !94, size: 64, align: 64, offset: 512)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !643, file: !491, line: 15, baseType: !502, size: 64, align: 64, offset: 576)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !643, file: !491, line: 17, baseType: !509, size: 64, align: 64, offset: 640)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !643, file: !513, line: 5, baseType: !94, size: 64, align: 64, offset: 704)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !643, file: !513, line: 6, baseType: !94, size: 64, align: 64, offset: 768)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !643, file: !513, line: 7, baseType: !324, size: 64, align: 64, offset: 832)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !643, file: !513, line: 9, baseType: !352, size: 64, align: 64, offset: 896)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !643, file: !513, line: 10, baseType: !518, size: 64, align: 64, offset: 960)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !643, file: !513, line: 12, baseType: !156, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !643, file: !513, line: 13, baseType: !94, size: 64, align: 64, offset: 1088)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !643, file: !513, line: 14, baseType: !64, size: 32, align: 32, offset: 1152)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !643, file: !513, line: 15, baseType: !94, size: 64, align: 64, offset: 1216)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !643, file: !513, line: 17, baseType: !156, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !643, file: !513, line: 18, baseType: !156, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !643, file: !513, line: 19, baseType: !156, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !643, file: !513, line: 20, baseType: !156, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !643, file: !513, line: 22, baseType: !156, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !643, file: !513, line: 23, baseType: !156, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !643, file: !513, line: 24, baseType: !156, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !643, file: !513, line: 25, baseType: !156, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !643, file: !513, line: 26, baseType: !156, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !643, file: !513, line: 31, baseType: !557, size: 64, align: 64, offset: 1344)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "banlist", scope: !643, file: !644, line: 18, baseType: !240, size: 64, align: 64, offset: 1408)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "massjoin_start", scope: !643, file: !644, line: 20, baseType: !324, size: 64, align: 64, offset: 1472)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "massjoins", scope: !643, file: !644, line: 21, baseType: !64, size: 32, align: 32, offset: 1536)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "last_massjoins", scope: !643, file: !644, line: 22, baseType: !64, size: 32, align: 32, offset: 1568)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !633, file: !634, line: 12, baseType: !95, size: 8, align: 8, offset: 64)
!682 = !{!683}
!683 = !DISubrange(count: 256)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !77, file: !78, line: 118, baseType: !685, size: 2048, align: 8, offset: 37056)
!685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 2048, align: 8, elements: !682)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "nick_comp_func", scope: !77, file: !78, line: 120, baseType: !568, size: 64, align: 64, offset: 39104)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64, align: 64)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "REJOIN_REC", file: !689, line: 8, baseType: !690)
!689 = !DIFile(filename: "channel-rejoin.h", directory: "/home/lichi/Desktop/irssi/task1")
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !689, line: 4, size: 192, align: 64, elements: !691)
!691 = !{!692, !693, !694}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !690, file: !689, line: 5, baseType: !94, size: 64, align: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !690, file: !689, line: 6, baseType: !94, size: 64, align: 64, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "joining", scope: !690, file: !689, line: 7, baseType: !156, size: 1, align: 32, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!695 = !{!696}
!696 = distinct !DIGlobalVariable(name: "rejoin_tag", scope: !0, file: !697, line: 34, type: !64, isLocal: true, isDefinition: true, variable: i32* @rejoin_tag)
!697 = !DIFile(filename: "channel-rejoin.c", directory: "/home/lichi/Desktop/irssi/task1")
!698 = !{i32 2, !"Dwarf Version", i32 4}
!699 = !{i32 2, !"Debug Info Version", i32 3}
!700 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!701 = distinct !DISubprogram(name: "channel_rejoin_init", scope: !697, file: !697, line: 261, type: !228, isLocal: false, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !702)
!702 = !{}
!703 = !DILocation(line: 263, column: 2, scope: !701)
!704 = !DILocation(line: 265, column: 15, scope: !701)
!705 = !DILocation(line: 265, column: 13, scope: !701)
!706 = !DILocation(line: 268, column: 49, scope: !701)
!707 = !DILocation(line: 268, column: 2, scope: !708)
!708 = !DILexicalBlockFile(scope: !701, file: !697, discriminator: 1)
!709 = !DILocation(line: 269, column: 2, scope: !701)
!710 = !DILocation(line: 270, column: 2, scope: !701)
!711 = !DILocation(line: 271, column: 2, scope: !701)
!712 = !DILocation(line: 272, column: 2, scope: !701)
!713 = !DILocation(line: 273, column: 2, scope: !701)
!714 = !DILocation(line: 274, column: 1, scope: !701)
!715 = distinct !DISubprogram(name: "sig_rejoin", scope: !697, file: !697, line: 239, type: !716, isLocal: true, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !702)
!716 = !DISubroutineType(types: !717)
!717 = !{!64}
!718 = !DILocalVariable(name: "tmp", scope: !715, file: !697, line: 241, type: !240)
!719 = !DIExpression()
!720 = !DILocation(line: 241, column: 10, scope: !715)
!721 = !DILocation(line: 243, column: 13, scope: !722)
!722 = distinct !DILexicalBlock(scope: !715, file: !697, line: 243, column: 2)
!723 = !DILocation(line: 243, column: 11, scope: !722)
!724 = !DILocation(line: 243, column: 7, scope: !722)
!725 = !DILocation(line: 243, column: 22, scope: !726)
!726 = !DILexicalBlockFile(scope: !727, file: !697, discriminator: 1)
!727 = distinct !DILexicalBlock(scope: !722, file: !697, line: 243, column: 2)
!728 = !DILocation(line: 243, column: 26, scope: !726)
!729 = !DILocation(line: 243, column: 2, scope: !726)
!730 = !DILocalVariable(name: "rec", scope: !731, file: !697, line: 244, type: !74)
!731 = distinct !DILexicalBlock(scope: !727, file: !697, line: 243, column: 51)
!732 = !DILocation(line: 244, column: 19, scope: !731)
!733 = !DILocation(line: 244, column: 25, scope: !731)
!734 = !DILocation(line: 244, column: 30, scope: !731)
!735 = !DILocation(line: 246, column: 87, scope: !736)
!736 = distinct !DILexicalBlock(scope: !731, file: !697, line: 246, column: 7)
!737 = !DILocation(line: 246, column: 69, scope: !736)
!738 = !DILocation(line: 246, column: 54, scope: !736)
!739 = !DILocation(line: 246, column: 53, scope: !736)
!740 = !DILocation(line: 246, column: 28, scope: !741)
!741 = !DILexicalBlockFile(scope: !736, file: !697, discriminator: 4)
!742 = !DILocation(line: 246, column: 9, scope: !736)
!743 = !DILocation(line: 246, column: 32, scope: !736)
!744 = !DILocation(line: 246, column: 8, scope: !745)
!745 = !DILexicalBlockFile(scope: !736, file: !697, discriminator: 1)
!746 = !DILocation(line: 246, column: 32, scope: !747)
!747 = !DILexicalBlockFile(scope: !736, file: !697, discriminator: 2)
!748 = !DILocation(line: 246, column: 35, scope: !749)
!749 = !DILexicalBlockFile(scope: !736, file: !697, discriminator: 3)
!750 = !DILocation(line: 246, column: 40, scope: !749)
!751 = !DILocation(line: 246, column: 56, scope: !749)
!752 = !DILocation(line: 246, column: 7, scope: !749)
!753 = !DILocation(line: 247, column: 27, scope: !736)
!754 = !DILocation(line: 247, column: 4, scope: !736)
!755 = !DILocation(line: 248, column: 2, scope: !731)
!756 = !DILocation(line: 243, column: 40, scope: !757)
!757 = !DILexicalBlockFile(scope: !727, file: !697, discriminator: 2)
!758 = !DILocation(line: 243, column: 45, scope: !757)
!759 = !DILocation(line: 243, column: 38, scope: !757)
!760 = !DILocation(line: 243, column: 2, scope: !757)
!761 = distinct !{!761, !762}
!762 = !DILocation(line: 243, column: 2, scope: !715)
!763 = !DILocation(line: 250, column: 2, scope: !715)
!764 = distinct !DISubprogram(name: "cmd_rmrejoins", scope: !697, file: !697, line: 253, type: !765, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !702)
!765 = !DISubroutineType(types: !766)
!766 = !{null, !466, !74}
!767 = !DILocalVariable(name: "data", arg: 1, scope: !764, file: !697, line: 253, type: !466)
!768 = !DILocation(line: 253, column: 39, scope: !764)
!769 = !DILocalVariable(name: "server", arg: 2, scope: !764, file: !697, line: 253, type: !74)
!770 = !DILocation(line: 253, column: 61, scope: !764)
!771 = !DILocation(line: 255, column: 9, scope: !764)
!772 = distinct !{!772, !771}
!773 = !DILocation(line: 255, column: 18, scope: !774)
!774 = !DILexicalBlockFile(scope: !775, file: !697, discriminator: 1)
!775 = distinct !DILexicalBlock(scope: !776, file: !697, line: 255, column: 18)
!776 = distinct !DILexicalBlock(scope: !764, file: !697, line: 255, column: 12)
!777 = !DILocation(line: 255, column: 25, scope: !774)
!778 = !DILocation(line: 255, column: 8, scope: !774)
!779 = !DILocation(line: 255, column: 92, scope: !780)
!780 = !DILexicalBlockFile(scope: !775, file: !697, discriminator: 2)
!781 = !DILocation(line: 255, column: 74, scope: !780)
!782 = !DILocation(line: 255, column: 59, scope: !780)
!783 = !DILocation(line: 255, column: 58, scope: !780)
!784 = !DILocation(line: 255, column: 33, scope: !785)
!785 = !DILexicalBlockFile(scope: !780, file: !697, discriminator: 12)
!786 = !DILocation(line: 255, column: 14, scope: !780)
!787 = !DILocation(line: 255, column: 18, scope: !780)
!788 = !DILocation(line: 255, column: 13, scope: !789)
!789 = !DILexicalBlockFile(scope: !775, file: !697, discriminator: 3)
!790 = !DILocation(line: 255, column: 18, scope: !791)
!791 = !DILexicalBlockFile(scope: !776, file: !697, discriminator: 4)
!792 = !DILocation(line: 255, column: 35, scope: !793)
!793 = !DILexicalBlockFile(scope: !775, file: !697, discriminator: 5)
!794 = !DILocation(line: 255, column: 47, scope: !795)
!795 = !DILexicalBlockFile(scope: !796, file: !697, discriminator: 6)
!796 = distinct !DILexicalBlock(scope: !776, file: !697, line: 255, column: 47)
!797 = !DILocation(line: 255, column: 54, scope: !795)
!798 = !DILocation(line: 255, column: 8, scope: !795)
!799 = !DILocation(line: 255, column: 13, scope: !800)
!800 = !DILexicalBlockFile(scope: !796, file: !697, discriminator: 7)
!801 = !DILocation(line: 255, column: 22, scope: !800)
!802 = !DILocation(line: 255, column: 12, scope: !800)
!803 = !DILocation(line: 255, column: 47, scope: !800)
!804 = !DILocation(line: 255, column: 33, scope: !805)
!805 = !DILexicalBlockFile(scope: !796, file: !697, discriminator: 8)
!806 = distinct !{!806, !807}
!807 = !DILocation(line: 255, column: 33, scope: !796)
!808 = !DILocation(line: 255, column: 38, scope: !809)
!809 = !DILexicalBlockFile(scope: !810, file: !697, discriminator: 9)
!810 = distinct !DILexicalBlock(scope: !796, file: !697, line: 255, column: 36)
!811 = !DILocation(line: 255, column: 116, scope: !812)
!812 = !DILexicalBlockFile(scope: !809, file: !697, discriminator: 13)
!813 = !DILocation(line: 255, column: 131, scope: !809)
!814 = !DILocation(line: 255, column: 139, scope: !815)
!815 = !DILexicalBlockFile(scope: !810, file: !697, discriminator: 10)
!816 = !DILocation(line: 255, column: 152, scope: !817)
!817 = !DILexicalBlockFile(scope: !776, file: !697, discriminator: 11)
!818 = !DILocation(line: 257, column: 2, scope: !764)
!819 = !DILocation(line: 257, column: 9, scope: !820)
!820 = !DILexicalBlockFile(scope: !764, file: !697, discriminator: 1)
!821 = !DILocation(line: 257, column: 17, scope: !820)
!822 = !DILocation(line: 257, column: 33, scope: !820)
!823 = !DILocation(line: 257, column: 2, scope: !820)
!824 = !DILocation(line: 258, column: 18, scope: !764)
!825 = !DILocation(line: 258, column: 26, scope: !764)
!826 = !DILocation(line: 258, column: 34, scope: !764)
!827 = !DILocation(line: 258, column: 51, scope: !764)
!828 = !DILocation(line: 258, column: 3, scope: !764)
!829 = !DILocation(line: 257, column: 2, scope: !830)
!830 = !DILexicalBlockFile(scope: !764, file: !697, discriminator: 2)
!831 = distinct !{!831, !818}
!832 = !DILocation(line: 259, column: 1, scope: !764)
!833 = distinct !DISubprogram(name: "event_duplicate_channel", scope: !697, file: !697, line: 114, type: !834, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !702)
!834 = !DISubroutineType(types: !835)
!835 = !{null, !74, !466}
!836 = !DILocalVariable(name: "server", arg: 1, scope: !833, file: !697, line: 114, type: !74)
!837 = !DILocation(line: 114, column: 53, scope: !833)
!838 = !DILocalVariable(name: "data", arg: 2, scope: !833, file: !697, line: 114, type: !466)
!839 = !DILocation(line: 114, column: 73, scope: !833)
!840 = !DILocalVariable(name: "chanrec", scope: !833, file: !697, line: 116, type: !485)
!841 = !DILocation(line: 116, column: 15, scope: !833)
!842 = !DILocalVariable(name: "params", scope: !833, file: !697, line: 117, type: !94)
!843 = !DILocation(line: 117, column: 8, scope: !833)
!844 = !DILocalVariable(name: "channel", scope: !833, file: !697, line: 117, type: !94)
!845 = !DILocation(line: 117, column: 17, scope: !833)
!846 = !DILocalVariable(name: "p", scope: !833, file: !697, line: 117, type: !94)
!847 = !DILocation(line: 117, column: 27, scope: !833)
!848 = !DILocation(line: 119, column: 2, scope: !833)
!849 = distinct !{!849, !848}
!850 = !DILocation(line: 119, column: 10, scope: !851)
!851 = !DILexicalBlockFile(scope: !852, file: !697, discriminator: 1)
!852 = distinct !DILexicalBlock(scope: !853, file: !697, line: 119, column: 10)
!853 = distinct !DILexicalBlock(scope: !833, file: !697, line: 119, column: 4)
!854 = !DILocation(line: 119, column: 15, scope: !851)
!855 = !DILocation(line: 119, column: 5, scope: !856)
!856 = !DILexicalBlockFile(scope: !857, file: !697, discriminator: 2)
!857 = distinct !DILexicalBlock(scope: !852, file: !697, line: 119, column: 3)
!858 = !DILocation(line: 119, column: 14, scope: !859)
!859 = !DILexicalBlockFile(scope: !860, file: !697, discriminator: 3)
!860 = distinct !DILexicalBlock(scope: !852, file: !697, line: 119, column: 12)
!861 = !DILocation(line: 119, column: 99, scope: !859)
!862 = !DILocation(line: 119, column: 110, scope: !863)
!863 = !DILexicalBlockFile(scope: !853, file: !697, discriminator: 4)
!864 = !DILocation(line: 121, column: 28, scope: !833)
!865 = !DILocation(line: 121, column: 11, scope: !833)
!866 = !DILocation(line: 121, column: 9, scope: !833)
!867 = !DILocation(line: 122, column: 13, scope: !833)
!868 = !DILocation(line: 122, column: 6, scope: !833)
!869 = !DILocation(line: 122, column: 4, scope: !833)
!870 = !DILocation(line: 123, column: 6, scope: !871)
!871 = distinct !DILexicalBlock(scope: !833, file: !697, line: 123, column: 6)
!872 = !DILocation(line: 123, column: 8, scope: !871)
!873 = !DILocation(line: 123, column: 6, scope: !833)
!874 = !DILocation(line: 123, column: 17, scope: !875)
!875 = !DILexicalBlockFile(scope: !871, file: !697, discriminator: 1)
!876 = !DILocation(line: 123, column: 19, scope: !875)
!877 = !DILocation(line: 123, column: 16, scope: !875)
!878 = !DILocation(line: 125, column: 6, scope: !879)
!879 = distinct !DILexicalBlock(scope: !833, file: !697, line: 125, column: 6)
!880 = !DILocation(line: 125, column: 17, scope: !879)
!881 = !DILocation(line: 125, column: 24, scope: !879)
!882 = !DILocation(line: 125, column: 27, scope: !883)
!883 = !DILexicalBlockFile(scope: !879, file: !697, discriminator: 1)
!884 = !DILocation(line: 125, column: 38, scope: !883)
!885 = !DILocation(line: 125, column: 6, scope: !883)
!886 = !DILocation(line: 126, column: 60, scope: !887)
!887 = distinct !DILexicalBlock(scope: !879, file: !697, line: 125, column: 46)
!888 = !DILocation(line: 126, column: 42, scope: !887)
!889 = !DILocation(line: 126, column: 27, scope: !887)
!890 = !DILocation(line: 126, column: 39, scope: !887)
!891 = !DILocation(line: 126, column: 13, scope: !892)
!892 = !DILexicalBlockFile(scope: !887, file: !697, discriminator: 1)
!893 = !DILocation(line: 126, column: 11, scope: !887)
!894 = !DILocation(line: 127, column: 7, scope: !895)
!895 = distinct !DILexicalBlock(scope: !887, file: !697, line: 127, column: 7)
!896 = !DILocation(line: 127, column: 15, scope: !895)
!897 = !DILocation(line: 127, column: 22, scope: !895)
!898 = !DILocation(line: 127, column: 26, scope: !899)
!899 = !DILexicalBlockFile(scope: !895, file: !697, discriminator: 1)
!900 = !DILocation(line: 127, column: 35, scope: !899)
!901 = !DILocation(line: 127, column: 7, scope: !899)
!902 = !DILocation(line: 135, column: 23, scope: !903)
!903 = distinct !DILexicalBlock(scope: !904, file: !697, line: 135, column: 8)
!904 = distinct !DILexicalBlock(scope: !895, file: !697, line: 127, column: 46)
!905 = !DILocation(line: 135, column: 31, scope: !903)
!906 = !DILocation(line: 135, column: 8, scope: !903)
!907 = !DILocation(line: 135, column: 8, scope: !904)
!908 = !DILocation(line: 136, column: 5, scope: !909)
!909 = distinct !DILexicalBlock(scope: !903, file: !697, line: 135, column: 41)
!910 = !DILocation(line: 137, column: 4, scope: !909)
!911 = !DILocation(line: 138, column: 3, scope: !904)
!912 = !DILocation(line: 139, column: 2, scope: !887)
!913 = !DILocation(line: 141, column: 9, scope: !833)
!914 = !DILocation(line: 141, column: 2, scope: !833)
!915 = !DILocation(line: 142, column: 1, scope: !833)
!916 = !DILocation(line: 142, column: 1, scope: !917)
!917 = !DILexicalBlockFile(scope: !833, file: !697, discriminator: 1)
!918 = distinct !DISubprogram(name: "event_target_unavailable", scope: !697, file: !697, line: 144, type: !834, isLocal: true, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !702)
!919 = !DILocalVariable(name: "server", arg: 1, scope: !918, file: !697, line: 144, type: !74)
!920 = !DILocation(line: 144, column: 54, scope: !918)
!921 = !DILocalVariable(name: "data", arg: 2, scope: !918, file: !697, line: 144, type: !466)
!922 = !DILocation(line: 144, column: 74, scope: !918)
!923 = !DILocalVariable(name: "params", scope: !918, file: !697, line: 146, type: !94)
!924 = !DILocation(line: 146, column: 8, scope: !918)
!925 = !DILocalVariable(name: "channel", scope: !918, file: !697, line: 146, type: !94)
!926 = !DILocation(line: 146, column: 17, scope: !918)
!927 = !DILocalVariable(name: "chanrec", scope: !918, file: !697, line: 147, type: !641)
!928 = !DILocation(line: 147, column: 19, scope: !918)
!929 = !DILocation(line: 149, column: 2, scope: !918)
!930 = distinct !{!930, !929}
!931 = !DILocation(line: 149, column: 10, scope: !932)
!932 = !DILexicalBlockFile(scope: !933, file: !697, discriminator: 1)
!933 = distinct !DILexicalBlock(scope: !934, file: !697, line: 149, column: 10)
!934 = distinct !DILexicalBlock(scope: !918, file: !697, line: 149, column: 4)
!935 = !DILocation(line: 149, column: 15, scope: !932)
!936 = !DILocation(line: 149, column: 5, scope: !937)
!937 = !DILexicalBlockFile(scope: !938, file: !697, discriminator: 2)
!938 = distinct !DILexicalBlock(scope: !933, file: !697, line: 149, column: 3)
!939 = !DILocation(line: 149, column: 14, scope: !940)
!940 = !DILexicalBlockFile(scope: !941, file: !697, discriminator: 3)
!941 = distinct !DILexicalBlock(scope: !933, file: !697, line: 149, column: 12)
!942 = !DILocation(line: 149, column: 99, scope: !940)
!943 = !DILocation(line: 149, column: 110, scope: !944)
!944 = !DILexicalBlockFile(scope: !934, file: !697, discriminator: 4)
!945 = !DILocation(line: 151, column: 28, scope: !918)
!946 = !DILocation(line: 151, column: 11, scope: !918)
!947 = !DILocation(line: 151, column: 9, scope: !918)
!948 = !DILocation(line: 152, column: 42, scope: !949)
!949 = distinct !DILexicalBlock(scope: !918, file: !697, line: 152, column: 6)
!950 = !DILocation(line: 152, column: 24, scope: !949)
!951 = !DILocation(line: 152, column: 9, scope: !949)
!952 = !DILocation(line: 152, column: 20, scope: !949)
!953 = !DILocation(line: 152, column: 64, scope: !949)
!954 = !DILocation(line: 152, column: 46, scope: !955)
!955 = !DILexicalBlockFile(scope: !949, file: !697, discriminator: 1)
!956 = !DILocation(line: 152, column: 31, scope: !949)
!957 = !DILocation(line: 152, column: 19, scope: !949)
!958 = !DILocation(line: 152, column: 7, scope: !959)
!959 = !DILexicalBlockFile(scope: !949, file: !697, discriminator: 2)
!960 = !DILocation(line: 152, column: 7, scope: !949)
!961 = !DILocation(line: 152, column: 6, scope: !918)
!962 = !DILocation(line: 153, column: 148, scope: !963)
!963 = distinct !DILexicalBlock(scope: !949, file: !697, line: 152, column: 30)
!964 = !DILocation(line: 153, column: 130, scope: !963)
!965 = !DILocation(line: 153, column: 115, scope: !963)
!966 = !DILocation(line: 153, column: 26, scope: !963)
!967 = !DILocation(line: 153, column: 101, scope: !968)
!968 = !DILexicalBlockFile(scope: !963, file: !697, discriminator: 1)
!969 = !DILocation(line: 153, column: 101, scope: !963)
!970 = !DILocation(line: 153, column: 76, scope: !971)
!971 = !DILexicalBlockFile(scope: !963, file: !697, discriminator: 2)
!972 = !DILocation(line: 153, column: 60, scope: !963)
!973 = !DILocation(line: 153, column: 59, scope: !963)
!974 = !DILocation(line: 153, column: 34, scope: !975)
!975 = !DILexicalBlockFile(scope: !963, file: !697, discriminator: 3)
!976 = !DILocation(line: 153, column: 14, scope: !963)
!977 = !DILocation(line: 153, column: 11, scope: !963)
!978 = !DILocation(line: 154, column: 7, scope: !979)
!979 = distinct !DILexicalBlock(scope: !963, file: !697, line: 154, column: 7)
!980 = !DILocation(line: 154, column: 15, scope: !979)
!981 = !DILocation(line: 154, column: 22, scope: !979)
!982 = !DILocation(line: 154, column: 25, scope: !983)
!983 = !DILexicalBlockFile(scope: !979, file: !697, discriminator: 1)
!984 = !DILocation(line: 154, column: 34, scope: !983)
!985 = !DILocation(line: 154, column: 7, scope: !983)
!986 = !DILocation(line: 157, column: 3, scope: !987)
!987 = distinct !DILexicalBlock(scope: !979, file: !697, line: 154, column: 42)
!988 = !DILocation(line: 160, column: 23, scope: !989)
!989 = distinct !DILexicalBlock(scope: !990, file: !697, line: 160, column: 8)
!990 = distinct !DILexicalBlock(scope: !979, file: !697, line: 157, column: 10)
!991 = !DILocation(line: 160, column: 31, scope: !989)
!992 = !DILocation(line: 160, column: 8, scope: !989)
!993 = !DILocation(line: 160, column: 8, scope: !990)
!994 = !DILocation(line: 161, column: 5, scope: !995)
!995 = distinct !DILexicalBlock(scope: !989, file: !697, line: 160, column: 41)
!996 = !DILocation(line: 162, column: 4, scope: !995)
!997 = !DILocation(line: 164, column: 2, scope: !963)
!998 = !DILocation(line: 166, column: 9, scope: !918)
!999 = !DILocation(line: 166, column: 2, scope: !918)
!1000 = !DILocation(line: 167, column: 1, scope: !918)
!1001 = !DILocation(line: 167, column: 1, scope: !1002)
!1002 = !DILexicalBlockFile(scope: !918, file: !697, discriminator: 1)
!1003 = distinct !DISubprogram(name: "sig_remove_rejoin", scope: !697, file: !697, line: 171, type: !1004, isLocal: true, isDefinition: true, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !702)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{null, !641}
!1006 = !DILocalVariable(name: "channel", arg: 1, scope: !1003, file: !697, line: 171, type: !641)
!1007 = !DILocation(line: 171, column: 48, scope: !1003)
!1008 = !DILocalVariable(name: "rec", scope: !1003, file: !697, line: 173, type: !687)
!1009 = !DILocation(line: 173, column: 14, scope: !1003)
!1010 = !DILocation(line: 175, column: 96, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1003, file: !697, line: 175, column: 6)
!1012 = !DILocation(line: 175, column: 71, scope: !1011)
!1013 = !DILocation(line: 175, column: 55, scope: !1011)
!1014 = !DILocation(line: 175, column: 54, scope: !1011)
!1015 = !DILocation(line: 175, column: 29, scope: !1016)
!1016 = !DILexicalBlockFile(scope: !1011, file: !697, discriminator: 3)
!1017 = !DILocation(line: 175, column: 9, scope: !1011)
!1018 = !DILocation(line: 175, column: 6, scope: !1003)
!1019 = !DILocation(line: 175, column: 8, scope: !1020)
!1020 = !DILexicalBlockFile(scope: !1011, file: !697, discriminator: 1)
!1021 = !DILocation(line: 175, column: 6, scope: !1022)
!1022 = !DILexicalBlockFile(scope: !1003, file: !697, discriminator: 2)
!1023 = !DILocation(line: 176, column: 3, scope: !1011)
!1024 = !DILocation(line: 178, column: 20, scope: !1003)
!1025 = !DILocation(line: 178, column: 29, scope: !1003)
!1026 = !DILocation(line: 178, column: 37, scope: !1003)
!1027 = !DILocation(line: 178, column: 46, scope: !1003)
!1028 = !DILocation(line: 178, column: 8, scope: !1003)
!1029 = !DILocation(line: 178, column: 6, scope: !1003)
!1030 = !DILocation(line: 179, column: 6, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1003, file: !697, line: 179, column: 6)
!1032 = !DILocation(line: 179, column: 10, scope: !1031)
!1033 = !DILocation(line: 179, column: 17, scope: !1031)
!1034 = !DILocation(line: 179, column: 20, scope: !1035)
!1035 = !DILexicalBlockFile(scope: !1031, file: !697, discriminator: 1)
!1036 = !DILocation(line: 179, column: 25, scope: !1035)
!1037 = !DILocation(line: 179, column: 6, scope: !1035)
!1038 = !DILocation(line: 181, column: 18, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1031, file: !697, line: 179, column: 34)
!1040 = !DILocation(line: 181, column: 27, scope: !1039)
!1041 = !DILocation(line: 181, column: 35, scope: !1039)
!1042 = !DILocation(line: 181, column: 3, scope: !1039)
!1043 = !DILocation(line: 182, column: 2, scope: !1039)
!1044 = !DILocation(line: 183, column: 1, scope: !1003)
!1045 = distinct !DISubprogram(name: "sig_disconnected", scope: !697, file: !697, line: 185, type: !1046, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !702)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{null, !74}
!1048 = !DILocalVariable(name: "server", arg: 1, scope: !1045, file: !697, line: 185, type: !74)
!1049 = !DILocation(line: 185, column: 46, scope: !1045)
!1050 = !DILocation(line: 187, column: 87, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1045, file: !697, line: 187, column: 6)
!1052 = !DILocation(line: 187, column: 69, scope: !1051)
!1053 = !DILocation(line: 187, column: 54, scope: !1051)
!1054 = !DILocation(line: 187, column: 53, scope: !1051)
!1055 = !DILocation(line: 187, column: 28, scope: !1056)
!1056 = !DILexicalBlockFile(scope: !1051, file: !697, discriminator: 3)
!1057 = !DILocation(line: 187, column: 9, scope: !1051)
!1058 = !DILocation(line: 187, column: 6, scope: !1045)
!1059 = !DILocation(line: 187, column: 8, scope: !1060)
!1060 = !DILexicalBlockFile(scope: !1051, file: !697, discriminator: 1)
!1061 = !DILocation(line: 187, column: 6, scope: !1062)
!1062 = !DILexicalBlockFile(scope: !1045, file: !697, discriminator: 2)
!1063 = !DILocation(line: 188, column: 3, scope: !1051)
!1064 = !DILocation(line: 190, column: 2, scope: !1045)
!1065 = !DILocation(line: 190, column: 9, scope: !1066)
!1066 = !DILexicalBlockFile(scope: !1045, file: !697, discriminator: 1)
!1067 = !DILocation(line: 190, column: 17, scope: !1066)
!1068 = !DILocation(line: 190, column: 33, scope: !1066)
!1069 = !DILocation(line: 190, column: 2, scope: !1066)
!1070 = !DILocation(line: 191, column: 18, scope: !1045)
!1071 = !DILocation(line: 191, column: 26, scope: !1045)
!1072 = !DILocation(line: 191, column: 34, scope: !1045)
!1073 = !DILocation(line: 191, column: 51, scope: !1045)
!1074 = !DILocation(line: 191, column: 3, scope: !1045)
!1075 = !DILocation(line: 190, column: 2, scope: !1062)
!1076 = distinct !{!1076, !1064}
!1077 = !DILocation(line: 192, column: 1, scope: !1045)
!1078 = distinct !DISubprogram(name: "channel_rejoin_deinit", scope: !697, file: !697, line: 276, type: !228, isLocal: false, isDefinition: true, scopeLine: 277, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !702)
!1079 = !DILocation(line: 278, column: 18, scope: !1078)
!1080 = !DILocation(line: 278, column: 2, scope: !1078)
!1081 = !DILocation(line: 280, column: 2, scope: !1078)
!1082 = !DILocation(line: 281, column: 2, scope: !1078)
!1083 = !DILocation(line: 282, column: 2, scope: !1078)
!1084 = !DILocation(line: 283, column: 2, scope: !1078)
!1085 = !DILocation(line: 284, column: 2, scope: !1078)
!1086 = !DILocation(line: 285, column: 2, scope: !1078)
!1087 = !DILocation(line: 286, column: 1, scope: !1078)
!1088 = distinct !DISubprogram(name: "server_rejoin_channels", scope: !697, file: !697, line: 194, type: !1046, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !702)
!1089 = !DILocalVariable(name: "server", arg: 1, scope: !1088, file: !697, line: 194, type: !74)
!1090 = !DILocation(line: 194, column: 52, scope: !1088)
!1091 = !DILocalVariable(name: "tmp", scope: !1088, file: !697, line: 196, type: !240)
!1092 = !DILocation(line: 196, column: 10, scope: !1088)
!1093 = !DILocalVariable(name: "next", scope: !1088, file: !697, line: 196, type: !240)
!1094 = !DILocation(line: 196, column: 16, scope: !1088)
!1095 = !DILocalVariable(name: "channels", scope: !1088, file: !697, line: 197, type: !279)
!1096 = !DILocation(line: 197, column: 11, scope: !1088)
!1097 = !DILocalVariable(name: "keys", scope: !1088, file: !697, line: 197, type: !279)
!1098 = !DILocation(line: 197, column: 22, scope: !1088)
!1099 = !DILocalVariable(name: "use_keys", scope: !1088, file: !697, line: 198, type: !64)
!1100 = !DILocation(line: 198, column: 6, scope: !1088)
!1101 = !DILocation(line: 200, column: 2, scope: !1088)
!1102 = distinct !{!1102, !1101}
!1103 = !DILocation(line: 200, column: 90, scope: !1104)
!1104 = !DILexicalBlockFile(scope: !1105, file: !697, discriminator: 1)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !697, line: 200, column: 10)
!1106 = distinct !DILexicalBlock(scope: !1088, file: !697, line: 200, column: 4)
!1107 = !DILocation(line: 200, column: 72, scope: !1104)
!1108 = !DILocation(line: 200, column: 57, scope: !1104)
!1109 = !DILocation(line: 200, column: 56, scope: !1104)
!1110 = !DILocation(line: 200, column: 31, scope: !1111)
!1111 = !DILexicalBlockFile(scope: !1104, file: !697, discriminator: 7)
!1112 = !DILocation(line: 200, column: 12, scope: !1104)
!1113 = !DILocation(line: 200, column: 10, scope: !1104)
!1114 = !DILocation(line: 200, column: 11, scope: !1115)
!1115 = !DILexicalBlockFile(scope: !1105, file: !697, discriminator: 2)
!1116 = !DILocation(line: 200, column: 10, scope: !1117)
!1117 = !DILexicalBlockFile(scope: !1106, file: !697, discriminator: 3)
!1118 = !DILocation(line: 200, column: 30, scope: !1119)
!1119 = !DILexicalBlockFile(scope: !1120, file: !697, discriminator: 4)
!1120 = distinct !DILexicalBlock(scope: !1105, file: !697, line: 200, column: 28)
!1121 = !DILocation(line: 200, column: 39, scope: !1122)
!1122 = !DILexicalBlockFile(scope: !1123, file: !697, discriminator: 5)
!1123 = distinct !DILexicalBlock(scope: !1105, file: !697, line: 200, column: 37)
!1124 = !DILocation(line: 200, column: 133, scope: !1122)
!1125 = !DILocation(line: 200, column: 144, scope: !1126)
!1126 = !DILexicalBlockFile(scope: !1106, file: !697, discriminator: 6)
!1127 = !DILocation(line: 202, column: 13, scope: !1088)
!1128 = !DILocation(line: 202, column: 11, scope: !1088)
!1129 = !DILocation(line: 203, column: 9, scope: !1088)
!1130 = !DILocation(line: 203, column: 7, scope: !1088)
!1131 = !DILocation(line: 205, column: 18, scope: !1088)
!1132 = !DILocation(line: 206, column: 13, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1088, file: !697, line: 206, column: 2)
!1134 = !DILocation(line: 206, column: 21, scope: !1133)
!1135 = !DILocation(line: 206, column: 11, scope: !1133)
!1136 = !DILocation(line: 206, column: 7, scope: !1133)
!1137 = !DILocation(line: 206, column: 38, scope: !1138)
!1138 = !DILexicalBlockFile(scope: !1139, file: !697, discriminator: 1)
!1139 = distinct !DILexicalBlock(scope: !1133, file: !697, line: 206, column: 2)
!1140 = !DILocation(line: 206, column: 42, scope: !1138)
!1141 = !DILocation(line: 206, column: 2, scope: !1138)
!1142 = !DILocalVariable(name: "rec", scope: !1143, file: !697, line: 207, type: !687)
!1143 = distinct !DILexicalBlock(scope: !1139, file: !697, line: 206, column: 62)
!1144 = !DILocation(line: 207, column: 15, scope: !1143)
!1145 = !DILocation(line: 207, column: 21, scope: !1143)
!1146 = !DILocation(line: 207, column: 26, scope: !1143)
!1147 = !DILocation(line: 208, column: 10, scope: !1143)
!1148 = !DILocation(line: 208, column: 15, scope: !1143)
!1149 = !DILocation(line: 208, column: 8, scope: !1143)
!1150 = !DILocation(line: 210, column: 7, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1143, file: !697, line: 210, column: 7)
!1152 = !DILocation(line: 210, column: 12, scope: !1151)
!1153 = !DILocation(line: 210, column: 7, scope: !1143)
!1154 = !DILocation(line: 213, column: 19, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1151, file: !697, line: 210, column: 21)
!1156 = !DILocation(line: 213, column: 27, scope: !1155)
!1157 = !DILocation(line: 213, column: 4, scope: !1155)
!1158 = !DILocation(line: 214, column: 4, scope: !1155)
!1159 = !DILocation(line: 217, column: 3, scope: !1143)
!1160 = !DILocation(line: 217, column: 8, scope: !1143)
!1161 = !DILocation(line: 217, column: 16, scope: !1143)
!1162 = !DILocation(line: 218, column: 26, scope: !1143)
!1163 = !DILocation(line: 218, column: 43, scope: !1143)
!1164 = !DILocation(line: 218, column: 48, scope: !1143)
!1165 = !DILocation(line: 218, column: 3, scope: !1143)
!1166 = !DILocation(line: 219, column: 7, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1143, file: !697, line: 219, column: 7)
!1168 = !DILocation(line: 219, column: 12, scope: !1167)
!1169 = !DILocation(line: 219, column: 16, scope: !1167)
!1170 = !DILocation(line: 219, column: 7, scope: !1143)
!1171 = !DILocation(line: 220, column: 20, scope: !1167)
!1172 = !DILocation(line: 220, column: 4, scope: !1167)
!1173 = !DILocation(line: 222, column: 27, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1167, file: !697, line: 221, column: 8)
!1175 = !DILocation(line: 222, column: 40, scope: !1174)
!1176 = !DILocation(line: 222, column: 45, scope: !1174)
!1177 = !DILocation(line: 222, column: 4, scope: !1174)
!1178 = !DILocation(line: 223, column: 34, scope: !1174)
!1179 = !DILocation(line: 225, column: 2, scope: !1143)
!1180 = !DILocation(line: 206, column: 56, scope: !1181)
!1181 = !DILexicalBlockFile(scope: !1139, file: !697, discriminator: 2)
!1182 = !DILocation(line: 206, column: 54, scope: !1181)
!1183 = !DILocation(line: 206, column: 2, scope: !1181)
!1184 = distinct !{!1184, !1185}
!1185 = !DILocation(line: 206, column: 2, scope: !1088)
!1186 = !DILocation(line: 227, column: 6, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1088, file: !697, line: 227, column: 6)
!1188 = !DILocation(line: 227, column: 16, scope: !1187)
!1189 = !DILocation(line: 227, column: 20, scope: !1187)
!1190 = !DILocation(line: 227, column: 6, scope: !1088)
!1191 = !DILocation(line: 228, column: 35, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1187, file: !697, line: 227, column: 25)
!1193 = !DILocation(line: 228, column: 45, scope: !1192)
!1194 = !DILocation(line: 228, column: 55, scope: !1192)
!1195 = !DILocation(line: 228, column: 58, scope: !1192)
!1196 = !DILocation(line: 228, column: 17, scope: !1192)
!1197 = !DILocation(line: 229, column: 35, scope: !1192)
!1198 = !DILocation(line: 229, column: 41, scope: !1192)
!1199 = !DILocation(line: 229, column: 47, scope: !1192)
!1200 = !DILocation(line: 229, column: 50, scope: !1192)
!1201 = !DILocation(line: 229, column: 17, scope: !1192)
!1202 = !DILocation(line: 231, column: 7, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1192, file: !697, line: 231, column: 7)
!1204 = !DILocation(line: 231, column: 7, scope: !1192)
!1205 = !DILocation(line: 231, column: 40, scope: !1206)
!1206 = !DILexicalBlockFile(scope: !1203, file: !697, discriminator: 1)
!1207 = !DILocation(line: 231, column: 57, scope: !1206)
!1208 = !DILocation(line: 231, column: 63, scope: !1206)
!1209 = !DILocation(line: 231, column: 17, scope: !1206)
!1210 = !DILocation(line: 232, column: 3, scope: !1192)
!1211 = !DILocation(line: 232, column: 11, scope: !1192)
!1212 = !DILocation(line: 232, column: 59, scope: !1192)
!1213 = !DILocation(line: 232, column: 41, scope: !1192)
!1214 = !DILocation(line: 232, column: 26, scope: !1192)
!1215 = !DILocation(line: 232, column: 38, scope: !1192)
!1216 = !DILocation(line: 232, column: 48, scope: !1192)
!1217 = !DILocation(line: 232, column: 3, scope: !1218)
!1218 = !DILexicalBlockFile(scope: !1192, file: !697, discriminator: 1)
!1219 = !DILocation(line: 233, column: 2, scope: !1192)
!1220 = !DILocation(line: 235, column: 16, scope: !1088)
!1221 = !DILocation(line: 235, column: 2, scope: !1088)
!1222 = !DILocation(line: 236, column: 16, scope: !1088)
!1223 = !DILocation(line: 236, column: 2, scope: !1088)
!1224 = !DILocation(line: 237, column: 1, scope: !1088)
!1225 = !DILocation(line: 237, column: 1, scope: !1226)
!1226 = !DILexicalBlockFile(scope: !1088, file: !697, discriminator: 1)
!1227 = distinct !DISubprogram(name: "rejoin_destroy", scope: !697, file: !697, line: 36, type: !1228, isLocal: true, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !702)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{null, !74, !687}
!1230 = !DILocalVariable(name: "server", arg: 1, scope: !1227, file: !697, line: 36, type: !74)
!1231 = !DILocation(line: 36, column: 44, scope: !1227)
!1232 = !DILocalVariable(name: "rec", arg: 2, scope: !1227, file: !697, line: 36, type: !687)
!1233 = !DILocation(line: 36, column: 64, scope: !1227)
!1234 = !DILocation(line: 38, column: 2, scope: !1227)
!1235 = distinct !{!1235, !1234}
!1236 = !DILocation(line: 38, column: 90, scope: !1237)
!1237 = !DILexicalBlockFile(scope: !1238, file: !697, discriminator: 1)
!1238 = distinct !DILexicalBlock(scope: !1239, file: !697, line: 38, column: 10)
!1239 = distinct !DILexicalBlock(scope: !1227, file: !697, line: 38, column: 4)
!1240 = !DILocation(line: 38, column: 72, scope: !1237)
!1241 = !DILocation(line: 38, column: 57, scope: !1237)
!1242 = !DILocation(line: 38, column: 56, scope: !1237)
!1243 = !DILocation(line: 38, column: 31, scope: !1244)
!1244 = !DILexicalBlockFile(scope: !1237, file: !697, discriminator: 7)
!1245 = !DILocation(line: 38, column: 12, scope: !1237)
!1246 = !DILocation(line: 38, column: 10, scope: !1237)
!1247 = !DILocation(line: 38, column: 11, scope: !1248)
!1248 = !DILexicalBlockFile(scope: !1238, file: !697, discriminator: 2)
!1249 = !DILocation(line: 38, column: 10, scope: !1250)
!1250 = !DILexicalBlockFile(scope: !1239, file: !697, discriminator: 3)
!1251 = !DILocation(line: 38, column: 30, scope: !1252)
!1252 = !DILexicalBlockFile(scope: !1253, file: !697, discriminator: 4)
!1253 = distinct !DILexicalBlock(scope: !1238, file: !697, line: 38, column: 28)
!1254 = !DILocation(line: 38, column: 39, scope: !1255)
!1255 = !DILexicalBlockFile(scope: !1256, file: !697, discriminator: 5)
!1256 = distinct !DILexicalBlock(scope: !1238, file: !697, line: 38, column: 37)
!1257 = !DILocation(line: 38, column: 133, scope: !1255)
!1258 = !DILocation(line: 38, column: 144, scope: !1259)
!1259 = !DILexicalBlockFile(scope: !1239, file: !697, discriminator: 6)
!1260 = !DILocation(line: 39, column: 2, scope: !1227)
!1261 = distinct !{!1261, !1260}
!1262 = !DILocation(line: 39, column: 10, scope: !1263)
!1263 = !DILexicalBlockFile(scope: !1264, file: !697, discriminator: 1)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !697, line: 39, column: 10)
!1265 = distinct !DILexicalBlock(scope: !1227, file: !697, line: 39, column: 4)
!1266 = !DILocation(line: 39, column: 14, scope: !1263)
!1267 = !DILocation(line: 39, column: 5, scope: !1268)
!1268 = !DILexicalBlockFile(scope: !1269, file: !697, discriminator: 2)
!1269 = distinct !DILexicalBlock(scope: !1264, file: !697, line: 39, column: 3)
!1270 = !DILocation(line: 39, column: 14, scope: !1271)
!1271 = !DILexicalBlockFile(scope: !1272, file: !697, discriminator: 3)
!1272 = distinct !DILexicalBlock(scope: !1264, file: !697, line: 39, column: 12)
!1273 = !DILocation(line: 39, column: 98, scope: !1271)
!1274 = !DILocation(line: 39, column: 109, scope: !1275)
!1275 = !DILexicalBlockFile(scope: !1265, file: !697, discriminator: 4)
!1276 = !DILocation(line: 42, column: 18, scope: !1227)
!1277 = !DILocation(line: 42, column: 26, scope: !1227)
!1278 = !DILocation(line: 42, column: 43, scope: !1227)
!1279 = !DILocation(line: 42, column: 3, scope: !1227)
!1280 = !DILocation(line: 41, column: 2, scope: !1227)
!1281 = !DILocation(line: 41, column: 10, scope: !1227)
!1282 = !DILocation(line: 41, column: 26, scope: !1227)
!1283 = !DILocation(line: 44, column: 42, scope: !1227)
!1284 = !DILocation(line: 44, column: 50, scope: !1227)
!1285 = !DILocation(line: 44, column: 2, scope: !1227)
!1286 = !DILocation(line: 46, column: 9, scope: !1227)
!1287 = !DILocation(line: 46, column: 14, scope: !1227)
!1288 = !DILocation(line: 46, column: 2, scope: !1227)
!1289 = !DILocation(line: 47, column: 9, scope: !1227)
!1290 = !DILocation(line: 47, column: 14, scope: !1227)
!1291 = !DILocation(line: 47, column: 2, scope: !1227)
!1292 = !DILocation(line: 48, column: 9, scope: !1227)
!1293 = !DILocation(line: 48, column: 2, scope: !1227)
!1294 = !DILocation(line: 49, column: 1, scope: !1227)
!1295 = !DILocation(line: 49, column: 1, scope: !1296)
!1296 = !DILexicalBlockFile(scope: !1227, file: !697, discriminator: 1)
!1297 = distinct !DISubprogram(name: "channel_rejoin", scope: !697, file: !697, line: 71, type: !1298, isLocal: true, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !702)
!1298 = !DISubroutineType(types: !1299)
!1299 = !{!64, !74, !466}
!1300 = !DILocalVariable(name: "server", arg: 1, scope: !1297, file: !697, line: 71, type: !74)
!1301 = !DILocation(line: 71, column: 43, scope: !1297)
!1302 = !DILocalVariable(name: "channel", arg: 2, scope: !1297, file: !697, line: 71, type: !466)
!1303 = !DILocation(line: 71, column: 63, scope: !1297)
!1304 = !DILocalVariable(name: "chanrec", scope: !1297, file: !697, line: 73, type: !641)
!1305 = !DILocation(line: 73, column: 19, scope: !1297)
!1306 = !DILocalVariable(name: "rec", scope: !1297, file: !697, line: 74, type: !687)
!1307 = !DILocation(line: 74, column: 14, scope: !1297)
!1308 = !DILocation(line: 76, column: 2, scope: !1297)
!1309 = distinct !{!1309, !1308}
!1310 = !DILocation(line: 76, column: 90, scope: !1311)
!1311 = !DILexicalBlockFile(scope: !1312, file: !697, discriminator: 1)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !697, line: 76, column: 10)
!1313 = distinct !DILexicalBlock(scope: !1297, file: !697, line: 76, column: 4)
!1314 = !DILocation(line: 76, column: 72, scope: !1311)
!1315 = !DILocation(line: 76, column: 57, scope: !1311)
!1316 = !DILocation(line: 76, column: 56, scope: !1311)
!1317 = !DILocation(line: 76, column: 31, scope: !1318)
!1318 = !DILexicalBlockFile(scope: !1311, file: !697, discriminator: 7)
!1319 = !DILocation(line: 76, column: 12, scope: !1311)
!1320 = !DILocation(line: 76, column: 10, scope: !1311)
!1321 = !DILocation(line: 76, column: 11, scope: !1322)
!1322 = !DILexicalBlockFile(scope: !1312, file: !697, discriminator: 2)
!1323 = !DILocation(line: 76, column: 10, scope: !1324)
!1324 = !DILexicalBlockFile(scope: !1313, file: !697, discriminator: 3)
!1325 = !DILocation(line: 76, column: 30, scope: !1326)
!1326 = !DILexicalBlockFile(scope: !1327, file: !697, discriminator: 4)
!1327 = distinct !DILexicalBlock(scope: !1312, file: !697, line: 76, column: 28)
!1328 = !DILocation(line: 76, column: 39, scope: !1329)
!1329 = !DILexicalBlockFile(scope: !1330, file: !697, discriminator: 5)
!1330 = distinct !DILexicalBlock(scope: !1312, file: !697, line: 76, column: 37)
!1331 = !DILocation(line: 76, column: 133, scope: !1329)
!1332 = !DILocation(line: 76, column: 148, scope: !1333)
!1333 = !DILexicalBlockFile(scope: !1313, file: !697, discriminator: 6)
!1334 = !DILocation(line: 77, column: 2, scope: !1297)
!1335 = distinct !{!1335, !1334}
!1336 = !DILocation(line: 77, column: 10, scope: !1337)
!1337 = !DILexicalBlockFile(scope: !1338, file: !697, discriminator: 1)
!1338 = distinct !DILexicalBlock(scope: !1339, file: !697, line: 77, column: 10)
!1339 = distinct !DILexicalBlock(scope: !1297, file: !697, line: 77, column: 4)
!1340 = !DILocation(line: 77, column: 18, scope: !1337)
!1341 = !DILocation(line: 77, column: 5, scope: !1342)
!1342 = !DILexicalBlockFile(scope: !1343, file: !697, discriminator: 2)
!1343 = distinct !DILexicalBlock(scope: !1338, file: !697, line: 77, column: 3)
!1344 = !DILocation(line: 77, column: 14, scope: !1345)
!1345 = !DILexicalBlockFile(scope: !1346, file: !697, discriminator: 3)
!1346 = distinct !DILexicalBlock(scope: !1338, file: !697, line: 77, column: 12)
!1347 = !DILocation(line: 77, column: 102, scope: !1345)
!1348 = !DILocation(line: 77, column: 117, scope: !1349)
!1349 = !DILexicalBlockFile(scope: !1339, file: !697, discriminator: 4)
!1350 = !DILocation(line: 79, column: 147, scope: !1297)
!1351 = !DILocation(line: 79, column: 129, scope: !1297)
!1352 = !DILocation(line: 79, column: 114, scope: !1297)
!1353 = !DILocation(line: 79, column: 25, scope: !1297)
!1354 = !DILocation(line: 79, column: 100, scope: !1355)
!1355 = !DILexicalBlockFile(scope: !1297, file: !697, discriminator: 1)
!1356 = !DILocation(line: 79, column: 100, scope: !1297)
!1357 = !DILocation(line: 79, column: 75, scope: !1358)
!1358 = !DILexicalBlockFile(scope: !1297, file: !697, discriminator: 2)
!1359 = !DILocation(line: 79, column: 59, scope: !1297)
!1360 = !DILocation(line: 79, column: 58, scope: !1297)
!1361 = !DILocation(line: 79, column: 33, scope: !1362)
!1362 = !DILexicalBlockFile(scope: !1297, file: !697, discriminator: 3)
!1363 = !DILocation(line: 79, column: 13, scope: !1297)
!1364 = !DILocation(line: 79, column: 10, scope: !1297)
!1365 = !DILocation(line: 80, column: 6, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1297, file: !697, line: 80, column: 6)
!1367 = !DILocation(line: 80, column: 14, scope: !1366)
!1368 = !DILocation(line: 80, column: 21, scope: !1366)
!1369 = !DILocation(line: 80, column: 24, scope: !1370)
!1370 = !DILexicalBlockFile(scope: !1366, file: !697, discriminator: 1)
!1371 = !DILocation(line: 80, column: 33, scope: !1370)
!1372 = !DILocation(line: 80, column: 6, scope: !1370)
!1373 = !DILocation(line: 80, column: 41, scope: !1374)
!1374 = !DILexicalBlockFile(scope: !1366, file: !697, discriminator: 2)
!1375 = !DILocation(line: 82, column: 7, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1297, file: !697, line: 82, column: 6)
!1377 = !DILocation(line: 82, column: 6, scope: !1297)
!1378 = !DILocation(line: 83, column: 3, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1376, file: !697, line: 82, column: 57)
!1380 = !DILocation(line: 83, column: 12, scope: !1379)
!1381 = !DILocation(line: 83, column: 17, scope: !1379)
!1382 = !DILocation(line: 84, column: 61, scope: !1379)
!1383 = !DILocation(line: 84, column: 36, scope: !1379)
!1384 = !DILocation(line: 84, column: 20, scope: !1379)
!1385 = !DILocation(line: 84, column: 3, scope: !1386)
!1386 = !DILexicalBlockFile(scope: !1379, file: !697, discriminator: 1)
!1387 = !DILocation(line: 85, column: 3, scope: !1379)
!1388 = !DILocation(line: 88, column: 20, scope: !1297)
!1389 = !DILocation(line: 88, column: 28, scope: !1297)
!1390 = !DILocation(line: 88, column: 8, scope: !1297)
!1391 = !DILocation(line: 88, column: 6, scope: !1297)
!1392 = !DILocation(line: 89, column: 6, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1297, file: !697, line: 89, column: 6)
!1394 = !DILocation(line: 89, column: 10, scope: !1393)
!1395 = !DILocation(line: 89, column: 6, scope: !1297)
!1396 = !DILocation(line: 91, column: 3, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1393, file: !697, line: 89, column: 18)
!1398 = !DILocation(line: 91, column: 8, scope: !1397)
!1399 = !DILocation(line: 91, column: 16, scope: !1397)
!1400 = !DILocation(line: 94, column: 3, scope: !1397)
!1401 = distinct !{!1401, !1400}
!1402 = !DILocation(line: 94, column: 12, scope: !1403)
!1403 = !DILexicalBlockFile(scope: !1404, file: !697, discriminator: 1)
!1404 = distinct !DILexicalBlock(scope: !1405, file: !697, line: 94, column: 12)
!1405 = distinct !DILexicalBlock(scope: !1397, file: !697, line: 94, column: 6)
!1406 = !DILocation(line: 94, column: 17, scope: !1403)
!1407 = !DILocation(line: 94, column: 31, scope: !1408)
!1408 = !DILexicalBlockFile(scope: !1409, file: !697, discriminator: 2)
!1409 = distinct !DILexicalBlock(scope: !1404, file: !697, line: 94, column: 22)
!1410 = !DILocation(line: 94, column: 36, scope: !1408)
!1411 = !DILocation(line: 94, column: 24, scope: !1408)
!1412 = !DILocation(line: 94, column: 43, scope: !1408)
!1413 = !DILocation(line: 94, column: 48, scope: !1408)
!1414 = !DILocation(line: 94, column: 53, scope: !1408)
!1415 = !DILocation(line: 94, column: 4, scope: !1408)
!1416 = !DILocation(line: 94, column: 6, scope: !1417)
!1417 = !DILexicalBlockFile(scope: !1405, file: !697, discriminator: 3)
!1418 = !DILocation(line: 95, column: 9, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1397, file: !697, line: 95, column: 7)
!1420 = !DILocation(line: 95, column: 18, scope: !1419)
!1421 = !DILocation(line: 95, column: 6, scope: !1419)
!1422 = !DILocation(line: 95, column: 10, scope: !1423)
!1423 = !DILexicalBlockFile(scope: !1419, file: !697, discriminator: 1)
!1424 = !DILocation(line: 95, column: 20, scope: !1423)
!1425 = !DILocation(line: 95, column: 24, scope: !1423)
!1426 = !DILocation(line: 95, column: 6, scope: !1423)
!1427 = !DILocation(line: 95, column: 10, scope: !1428)
!1428 = !DILexicalBlockFile(scope: !1419, file: !697, discriminator: 2)
!1429 = !DILocation(line: 95, column: 20, scope: !1428)
!1430 = !DILocation(line: 95, column: 9, scope: !1428)
!1431 = !DILocation(line: 95, column: 27, scope: !1428)
!1432 = !DILocation(line: 95, column: 7, scope: !1428)
!1433 = !DILocation(line: 96, column: 24, scope: !1419)
!1434 = !DILocation(line: 96, column: 33, scope: !1419)
!1435 = !DILocation(line: 96, column: 15, scope: !1419)
!1436 = !DILocation(line: 96, column: 4, scope: !1419)
!1437 = !DILocation(line: 96, column: 9, scope: !1419)
!1438 = !DILocation(line: 96, column: 13, scope: !1419)
!1439 = !DILocation(line: 97, column: 2, scope: !1397)
!1440 = !DILocation(line: 99, column: 25, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1393, file: !697, line: 97, column: 9)
!1442 = !DILocation(line: 99, column: 10, scope: !1441)
!1443 = !DILocation(line: 99, column: 7, scope: !1441)
!1444 = !DILocation(line: 100, column: 27, scope: !1441)
!1445 = !DILocation(line: 100, column: 18, scope: !1441)
!1446 = !DILocation(line: 100, column: 3, scope: !1441)
!1447 = !DILocation(line: 100, column: 8, scope: !1441)
!1448 = !DILocation(line: 100, column: 16, scope: !1441)
!1449 = !DILocation(line: 101, column: 9, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1441, file: !697, line: 101, column: 7)
!1451 = !DILocation(line: 101, column: 18, scope: !1450)
!1452 = !DILocation(line: 101, column: 6, scope: !1450)
!1453 = !DILocation(line: 101, column: 10, scope: !1454)
!1454 = !DILexicalBlockFile(scope: !1450, file: !697, discriminator: 1)
!1455 = !DILocation(line: 101, column: 20, scope: !1454)
!1456 = !DILocation(line: 101, column: 24, scope: !1454)
!1457 = !DILocation(line: 101, column: 6, scope: !1454)
!1458 = !DILocation(line: 101, column: 10, scope: !1459)
!1459 = !DILexicalBlockFile(scope: !1450, file: !697, discriminator: 2)
!1460 = !DILocation(line: 101, column: 20, scope: !1459)
!1461 = !DILocation(line: 101, column: 9, scope: !1459)
!1462 = !DILocation(line: 101, column: 27, scope: !1459)
!1463 = !DILocation(line: 101, column: 7, scope: !1459)
!1464 = !DILocation(line: 102, column: 24, scope: !1450)
!1465 = !DILocation(line: 102, column: 33, scope: !1450)
!1466 = !DILocation(line: 102, column: 15, scope: !1450)
!1467 = !DILocation(line: 102, column: 4, scope: !1450)
!1468 = !DILocation(line: 102, column: 9, scope: !1450)
!1469 = !DILocation(line: 102, column: 13, scope: !1450)
!1470 = !DILocation(line: 105, column: 19, scope: !1441)
!1471 = !DILocation(line: 105, column: 27, scope: !1441)
!1472 = !DILocation(line: 105, column: 44, scope: !1441)
!1473 = !DILocation(line: 105, column: 4, scope: !1441)
!1474 = !DILocation(line: 104, column: 3, scope: !1441)
!1475 = !DILocation(line: 104, column: 11, scope: !1441)
!1476 = !DILocation(line: 104, column: 27, scope: !1441)
!1477 = !DILocation(line: 106, column: 40, scope: !1441)
!1478 = !DILocation(line: 106, column: 48, scope: !1441)
!1479 = !DILocation(line: 106, column: 3, scope: !1441)
!1480 = !DILocation(line: 109, column: 2, scope: !1297)
!1481 = !DILocation(line: 109, column: 11, scope: !1297)
!1482 = !DILocation(line: 109, column: 16, scope: !1297)
!1483 = !DILocation(line: 110, column: 60, scope: !1297)
!1484 = !DILocation(line: 110, column: 35, scope: !1297)
!1485 = !DILocation(line: 110, column: 19, scope: !1297)
!1486 = !DILocation(line: 110, column: 2, scope: !1355)
!1487 = !DILocation(line: 111, column: 2, scope: !1297)
!1488 = !DILocation(line: 112, column: 1, scope: !1297)
!1489 = distinct !DISubprogram(name: "rejoin_find", scope: !697, file: !697, line: 51, type: !1490, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !702)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{!687, !74, !466}
!1492 = !DILocalVariable(name: "server", arg: 1, scope: !1489, file: !697, line: 51, type: !74)
!1493 = !DILocation(line: 51, column: 48, scope: !1489)
!1494 = !DILocalVariable(name: "channel", arg: 2, scope: !1489, file: !697, line: 51, type: !466)
!1495 = !DILocation(line: 51, column: 68, scope: !1489)
!1496 = !DILocalVariable(name: "tmp", scope: !1489, file: !697, line: 53, type: !240)
!1497 = !DILocation(line: 53, column: 10, scope: !1489)
!1498 = !DILocation(line: 55, column: 2, scope: !1489)
!1499 = distinct !{!1499, !1498}
!1500 = !DILocation(line: 55, column: 90, scope: !1501)
!1501 = !DILexicalBlockFile(scope: !1502, file: !697, discriminator: 1)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !697, line: 55, column: 10)
!1503 = distinct !DILexicalBlock(scope: !1489, file: !697, line: 55, column: 4)
!1504 = !DILocation(line: 55, column: 72, scope: !1501)
!1505 = !DILocation(line: 55, column: 57, scope: !1501)
!1506 = !DILocation(line: 55, column: 56, scope: !1501)
!1507 = !DILocation(line: 55, column: 31, scope: !1508)
!1508 = !DILexicalBlockFile(scope: !1501, file: !697, discriminator: 7)
!1509 = !DILocation(line: 55, column: 12, scope: !1501)
!1510 = !DILocation(line: 55, column: 10, scope: !1501)
!1511 = !DILocation(line: 55, column: 11, scope: !1512)
!1512 = !DILexicalBlockFile(scope: !1502, file: !697, discriminator: 2)
!1513 = !DILocation(line: 55, column: 10, scope: !1514)
!1514 = !DILexicalBlockFile(scope: !1503, file: !697, discriminator: 3)
!1515 = !DILocation(line: 55, column: 30, scope: !1516)
!1516 = !DILexicalBlockFile(scope: !1517, file: !697, discriminator: 4)
!1517 = distinct !DILexicalBlock(scope: !1502, file: !697, line: 55, column: 28)
!1518 = !DILocation(line: 55, column: 39, scope: !1519)
!1519 = !DILexicalBlockFile(scope: !1520, file: !697, discriminator: 5)
!1520 = distinct !DILexicalBlock(scope: !1502, file: !697, line: 55, column: 37)
!1521 = !DILocation(line: 55, column: 133, scope: !1519)
!1522 = !DILocation(line: 55, column: 7, scope: !1523)
!1523 = !DILexicalBlockFile(scope: !1503, file: !697, discriminator: 6)
!1524 = !DILocation(line: 56, column: 2, scope: !1489)
!1525 = distinct !{!1525, !1524}
!1526 = !DILocation(line: 56, column: 10, scope: !1527)
!1527 = !DILexicalBlockFile(scope: !1528, file: !697, discriminator: 1)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !697, line: 56, column: 10)
!1529 = distinct !DILexicalBlock(scope: !1489, file: !697, line: 56, column: 4)
!1530 = !DILocation(line: 56, column: 18, scope: !1527)
!1531 = !DILocation(line: 56, column: 5, scope: !1532)
!1532 = !DILexicalBlockFile(scope: !1533, file: !697, discriminator: 2)
!1533 = distinct !DILexicalBlock(scope: !1528, file: !697, line: 56, column: 3)
!1534 = !DILocation(line: 56, column: 14, scope: !1535)
!1535 = !DILexicalBlockFile(scope: !1536, file: !697, discriminator: 3)
!1536 = distinct !DILexicalBlock(scope: !1528, file: !697, line: 56, column: 12)
!1537 = !DILocation(line: 56, column: 102, scope: !1535)
!1538 = !DILocation(line: 56, column: 7, scope: !1539)
!1539 = !DILexicalBlockFile(scope: !1529, file: !697, discriminator: 4)
!1540 = !DILocation(line: 58, column: 13, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1489, file: !697, line: 58, column: 2)
!1542 = !DILocation(line: 58, column: 21, scope: !1541)
!1543 = !DILocation(line: 58, column: 11, scope: !1541)
!1544 = !DILocation(line: 58, column: 7, scope: !1541)
!1545 = !DILocation(line: 58, column: 38, scope: !1546)
!1546 = !DILexicalBlockFile(scope: !1547, file: !697, discriminator: 1)
!1547 = distinct !DILexicalBlock(scope: !1541, file: !697, line: 58, column: 2)
!1548 = !DILocation(line: 58, column: 42, scope: !1546)
!1549 = !DILocation(line: 58, column: 2, scope: !1546)
!1550 = !DILocalVariable(name: "rec", scope: !1551, file: !697, line: 59, type: !687)
!1551 = distinct !DILexicalBlock(scope: !1547, file: !697, line: 58, column: 67)
!1552 = !DILocation(line: 59, column: 29, scope: !1551)
!1553 = !DILocation(line: 59, column: 35, scope: !1551)
!1554 = !DILocation(line: 59, column: 40, scope: !1551)
!1555 = !DILocation(line: 61, column: 26, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1551, file: !697, line: 61, column: 7)
!1557 = !DILocation(line: 61, column: 31, scope: !1556)
!1558 = !DILocation(line: 61, column: 40, scope: !1556)
!1559 = !DILocation(line: 61, column: 7, scope: !1556)
!1560 = !DILocation(line: 61, column: 49, scope: !1556)
!1561 = !DILocation(line: 61, column: 7, scope: !1551)
!1562 = !DILocation(line: 62, column: 32, scope: !1556)
!1563 = !DILocation(line: 62, column: 25, scope: !1556)
!1564 = !DILocation(line: 63, column: 2, scope: !1551)
!1565 = !DILocation(line: 58, column: 56, scope: !1566)
!1566 = !DILexicalBlockFile(scope: !1547, file: !697, discriminator: 2)
!1567 = !DILocation(line: 58, column: 61, scope: !1566)
!1568 = !DILocation(line: 58, column: 54, scope: !1566)
!1569 = !DILocation(line: 58, column: 2, scope: !1566)
!1570 = distinct !{!1570, !1571}
!1571 = !DILocation(line: 58, column: 2, scope: !1489)
!1572 = !DILocation(line: 65, column: 2, scope: !1489)
!1573 = !DILocation(line: 66, column: 1, scope: !1489)
