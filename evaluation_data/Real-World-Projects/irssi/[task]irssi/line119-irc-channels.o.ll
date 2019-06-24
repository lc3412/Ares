; ModuleID = './line119-irc-channels.o.i'
source_filename = "./line119-irc-channels.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IRC_CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._IRC_SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)*, %struct._GSList*, i64, i32, i32 }
%struct._WI_ITEM_REC = type opaque
%struct._GHashTable = type opaque
%struct._NICK_REC = type { i32, i32, i64, i8*, i8*, i8*, i32, i8, [8 x i8], i8*, %struct._NICK_REC* }
%struct._CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)* }
%struct._SERVER_REC = type { i32, i32, i32, %struct._SERVER_CONNECT_REC*, i64, i64, i8*, i8*, i8, %struct._NET_SENDBUF_REC*, i32, [2 x %struct._GIOChannel*], i32, i32, %struct._RAWLOG_REC*, %struct._GHashTable*, i8*, i8*, i8*, i8, %struct._GTimeVal, i64, i32, %struct._GSList*, %struct._GSList*, {}*, i32 (%struct._SERVER_REC*, i8)*, i32 (%struct._SERVER_REC*, i8*)*, i8* (%struct._SERVER_REC*)*, void (%struct._SERVER_REC*, i8*, i8*, i32)*, i8** (%struct._SERVER_REC*, i8*, i8*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)*, %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)* }
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
%struct._QUERY_REC = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._IRC_SERVER_REC = type { i32, i32, i32, %struct._IRC_SERVER_CONNECT_REC*, i64, i64, i8*, i8*, i8, %struct._NET_SENDBUF_REC*, i32, [2 x %struct._GIOChannel*], i32, i32, %struct._RAWLOG_REC*, %struct._GHashTable*, i8*, i8*, i8*, i8, %struct._GTimeVal, i64, i32, %struct._GSList*, %struct._GSList*, void (%struct._SERVER_REC*, i8*, i32)*, i32 (%struct._SERVER_REC*, i8)*, i32 (%struct._SERVER_REC*, i8*)*, i8* (%struct._SERVER_REC*)*, void (%struct._SERVER_REC*, i8*, i8*, i32)*, i8** (%struct._SERVER_REC*, i8*, i8*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)*, %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)*, %struct._GSList*, %struct._GSList*, %struct._REDIRECT_REC*, %struct._GSList*, i8*, i8*, i8*, i8*, i8*, i32, i16, i32, i32, i32, i32, %struct._GHashTable*, %struct._GSList*, %struct._GSList*, %struct._GString*, i32, i32, %struct._GSList*, %struct._GTimeVal, %struct._GTimeVal, i32, i32, i32, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GHashTable*, %struct._GSList*, %struct._GSList*, i8*, %struct._GHashTable*, [256 x %struct.modes_type], [256 x i8], i32 (i8*, i8*)* }
%struct._IRC_SERVER_CONNECT_REC = type { i32, i32, i32, i8*, i32, i8*, i8*, i8*, i16, i8*, i8*, i32, i8*, %struct._IPADDR*, %struct._IPADDR*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._GIOChannel*, i8, i8*, i8*, i8*, i8*, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct._REDIRECT_REC = type opaque
%struct.modes_type = type { void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, i8 }
%struct._CHANNEL_SETUP_REC = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8, %struct._GHashTable* }

@.str = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"IRC\00", align 1
@__func__.irc_channel_create = private unnamed_addr constant [19 x i8] c"irc_channel_create\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"server == NULL || IS_IRC_SERVER(server)\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"name != NULL\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"irc/core\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"server connected\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"channel created\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"channel destroyed\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"#%s\00", align 1
@__func__.irc_channels_join = private unnamed_addr constant [18 x i8] c"irc_channels_join\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"IS_IRC_SERVER(server) && server->connected\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"WINDOW ITEM TYPE\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"CHANNEL\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"%s,\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"JOIN %s %s\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"JOIN %s\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"command part\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define %struct._IRC_CHANNEL_REC* @irc_channel_create(%struct._IRC_SERVER_REC*, i8*, i8*, i32) #0 !dbg !669 {
  %5 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %6 = alloca %struct._IRC_SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct._IRC_CHANNEL_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %6, metadata !674, metadata !675), !dbg !676
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !677, metadata !675), !dbg !678
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !679, metadata !675), !dbg !680
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !681, metadata !675), !dbg !682
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %10, metadata !683, metadata !675), !dbg !684
  br label %11, !dbg !685, !llvm.loop !686

; <label>:11:                                     ; preds = %4
  %12 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !687
  %13 = icmp eq %struct._IRC_SERVER_REC* %12, null, !dbg !691
  br i1 %13, label %25, label %14, !dbg !692

; <label>:14:                                     ; preds = %11
  %15 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !693
  %16 = bitcast %struct._IRC_SERVER_REC* %15 to i8*, !dbg !693
  %17 = call i8* @module_check_cast(i8* %16, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)), !dbg !695
  %18 = bitcast i8* %17 to %struct._SERVER_REC*, !dbg !696
  %19 = bitcast %struct._SERVER_REC* %18 to i8*, !dbg !697
  %20 = call i8* @chat_protocol_check_cast(i8* %19, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)), !dbg !698
  %21 = bitcast i8* %20 to %struct._IRC_SERVER_REC*, !dbg !700
  %22 = icmp ne %struct._IRC_SERVER_REC* %21, null, !dbg !700
  br i1 %22, label %23, label %24, !dbg !701

; <label>:23:                                     ; preds = %14
  br i1 false, label %26, label %25, !dbg !702

; <label>:24:                                     ; preds = %14
  br i1 false, label %25, label %26, !dbg !704

; <label>:25:                                     ; preds = %24, %23, %11
  br label %27, !dbg !706

; <label>:26:                                     ; preds = %24, %23
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.irc_channel_create, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i32 0, i32 0)), !dbg !709
  store %struct._IRC_CHANNEL_REC* null, %struct._IRC_CHANNEL_REC** %5, align 8, !dbg !712
  br label %57, !dbg !712

; <label>:27:                                     ; preds = %25
  br label %28, !dbg !713

; <label>:28:                                     ; preds = %27
  br label %29, !dbg !715, !llvm.loop !716

; <label>:29:                                     ; preds = %28
  %30 = load i8*, i8** %7, align 8, !dbg !717
  %31 = icmp ne i8* %30, null, !dbg !721
  br i1 %31, label %32, label %33, !dbg !717

; <label>:32:                                     ; preds = %29
  br label %34, !dbg !722

; <label>:33:                                     ; preds = %29
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.irc_channel_create, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0)), !dbg !725
  store %struct._IRC_CHANNEL_REC* null, %struct._IRC_CHANNEL_REC** %5, align 8, !dbg !728
  br label %57, !dbg !728

; <label>:34:                                     ; preds = %32
  br label %35, !dbg !729

; <label>:35:                                     ; preds = %34
  %36 = call noalias i8* @g_malloc0_n(i64 1, i64 200), !dbg !731
  %37 = bitcast i8* %36 to %struct._IRC_CHANNEL_REC*, !dbg !732
  store %struct._IRC_CHANNEL_REC* %37, %struct._IRC_CHANNEL_REC** %10, align 8, !dbg !733
  %38 = load i8*, i8** %7, align 8, !dbg !734
  %39 = load i8, i8* %38, align 1, !dbg !736
  %40 = sext i8 %39 to i32, !dbg !736
  %41 = icmp eq i32 %40, 43, !dbg !737
  br i1 %41, label %42, label %48, !dbg !738

; <label>:42:                                     ; preds = %35
  %43 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %10, align 8, !dbg !739
  %44 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %43, i32 0, i32 17, !dbg !741
  %45 = load i8, i8* %44, align 8, !dbg !742
  %46 = and i8 %45, -2, !dbg !742
  %47 = or i8 %46, 1, !dbg !742
  store i8 %47, i8* %44, align 8, !dbg !742
  br label %48, !dbg !739

; <label>:48:                                     ; preds = %42, %35
  %49 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %10, align 8, !dbg !743
  %50 = bitcast %struct._IRC_CHANNEL_REC* %49 to %struct._CHANNEL_REC*, !dbg !744
  %51 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !745
  %52 = bitcast %struct._IRC_SERVER_REC* %51 to %struct._SERVER_REC*, !dbg !746
  %53 = load i8*, i8** %7, align 8, !dbg !747
  %54 = load i8*, i8** %8, align 8, !dbg !748
  %55 = load i32, i32* %9, align 4, !dbg !749
  call void @channel_init(%struct._CHANNEL_REC* %50, %struct._SERVER_REC* %52, i8* %53, i8* %54, i32 %55), !dbg !750
  %56 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %10, align 8, !dbg !751
  store %struct._IRC_CHANNEL_REC* %56, %struct._IRC_CHANNEL_REC** %5, align 8, !dbg !752
  br label %57, !dbg !752

; <label>:57:                                     ; preds = %48, %33, %26
  %58 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %5, align 8, !dbg !753
  ret %struct._IRC_CHANNEL_REC* %58, !dbg !753
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @chat_protocol_check_cast(i8*, i32, i8*) #2

declare i8* @module_check_cast(i8*, i32, i8*) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare noalias i8* @g_malloc0_n(i64, i64) #2

declare void @channel_init(%struct._CHANNEL_REC*, %struct._SERVER_REC*, i8*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define void @irc_channels_init() #0 !dbg !754 {
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*)* @sig_server_connected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !755
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_CHANNEL_REC*)* @sig_channel_created to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !756
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_CHANNEL_REC*)* @sig_channel_destroyed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !757
  call void @channel_events_init(), !dbg !758
  call void @channel_rejoin_init(), !dbg !759
  call void @channels_query_init(), !dbg !760
  call void @irc_channels_setup_init(), !dbg !761
  call void @bans_init(), !dbg !762
  call void @modes_init(), !dbg !763
  call void @mode_lists_init(), !dbg !764
  call void @massjoin_init(), !dbg !765
  call void @irc_nicklist_init(), !dbg !766
  ret void, !dbg !767
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @sig_server_connected(%struct._SERVER_REC*) #0 !dbg !768 {
  %2 = alloca %struct._SERVER_REC*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %2, metadata !771, metadata !675), !dbg !772
  %3 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !773
  %4 = bitcast %struct._SERVER_REC* %3 to i8*, !dbg !773
  %5 = call i8* @module_check_cast(i8* %4, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)), !dbg !775
  %6 = bitcast i8* %5 to %struct._SERVER_REC*, !dbg !776
  %7 = bitcast %struct._SERVER_REC* %6 to i8*, !dbg !777
  %8 = call i8* @chat_protocol_check_cast(i8* %7, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)), !dbg !778
  %9 = bitcast i8* %8 to %struct._IRC_SERVER_REC*, !dbg !780
  %10 = icmp ne %struct._IRC_SERVER_REC* %9, null, !dbg !780
  br i1 %10, label %11, label %12, !dbg !781

; <label>:11:                                     ; preds = %1
  br i1 false, label %13, label %14, !dbg !782

; <label>:12:                                     ; preds = %1
  br i1 false, label %14, label %13, !dbg !784

; <label>:13:                                     ; preds = %12, %11
  br label %20, !dbg !786

; <label>:14:                                     ; preds = %12, %11
  %15 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !787
  %16 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %15, i32 0, i32 31, !dbg !788
  store %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)* @irc_channel_find_server, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)** %16, align 8, !dbg !789
  %17 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !790
  %18 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %17, i32 0, i32 25, !dbg !791
  %19 = bitcast {}** %18 to void (%struct._SERVER_REC*, i8*, i32)**, !dbg !791
  store void (%struct._SERVER_REC*, i8*, i32)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i32)* @irc_channels_join to void (%struct._SERVER_REC*, i8*, i32)*), void (%struct._SERVER_REC*, i8*, i32)** %19, align 8, !dbg !792
  br label %20, !dbg !793

; <label>:20:                                     ; preds = %14, %13
  ret void, !dbg !794
}

; Function Attrs: nounwind uwtable
define internal void @sig_channel_created(%struct._IRC_CHANNEL_REC*) #0 !dbg !796 {
  %2 = alloca %struct._IRC_CHANNEL_REC*, align 8
  store %struct._IRC_CHANNEL_REC* %0, %struct._IRC_CHANNEL_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %2, metadata !799, metadata !675), !dbg !800
  %3 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %2, align 8, !dbg !801
  %4 = bitcast %struct._IRC_CHANNEL_REC* %3 to i8*, !dbg !801
  %5 = call i8* @module_check_cast_module(i8* %4, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0)), !dbg !803
  %6 = bitcast i8* %5 to %struct._CHANNEL_REC*, !dbg !804
  %7 = bitcast %struct._CHANNEL_REC* %6 to i8*, !dbg !805
  %8 = call i8* @chat_protocol_check_cast(i8* %7, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)), !dbg !806
  %9 = bitcast i8* %8 to %struct._IRC_CHANNEL_REC*, !dbg !808
  %10 = icmp ne %struct._IRC_CHANNEL_REC* %9, null, !dbg !808
  br i1 %10, label %11, label %12, !dbg !809

; <label>:11:                                     ; preds = %1
  br i1 false, label %16, label %13, !dbg !810

; <label>:12:                                     ; preds = %1
  br i1 false, label %13, label %16, !dbg !812

; <label>:13:                                     ; preds = %12, %11
  %14 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %2, align 8, !dbg !814
  %15 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %14, i32 0, i32 22, !dbg !815
  store i8* (%struct._CHANNEL_REC*)* @irc_get_join_data, i8* (%struct._CHANNEL_REC*)** %15, align 8, !dbg !816
  br label %16, !dbg !814

; <label>:16:                                     ; preds = %13, %12, %11
  ret void, !dbg !817
}

; Function Attrs: nounwind uwtable
define internal void @sig_channel_destroyed(%struct._IRC_CHANNEL_REC*) #0 !dbg !818 {
  %2 = alloca %struct._IRC_CHANNEL_REC*, align 8
  store %struct._IRC_CHANNEL_REC* %0, %struct._IRC_CHANNEL_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %2, metadata !819, metadata !675), !dbg !820
  %3 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %2, align 8, !dbg !821
  %4 = bitcast %struct._IRC_CHANNEL_REC* %3 to i8*, !dbg !821
  %5 = call i8* @module_check_cast_module(i8* %4, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0)), !dbg !823
  %6 = bitcast i8* %5 to %struct._CHANNEL_REC*, !dbg !824
  %7 = bitcast %struct._CHANNEL_REC* %6 to i8*, !dbg !825
  %8 = call i8* @chat_protocol_check_cast(i8* %7, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)), !dbg !826
  %9 = bitcast i8* %8 to %struct._IRC_CHANNEL_REC*, !dbg !828
  %10 = icmp ne %struct._IRC_CHANNEL_REC* %9, null, !dbg !828
  br i1 %10, label %11, label %12, !dbg !829

; <label>:11:                                     ; preds = %1
  br i1 false, label %13, label %14, !dbg !830

; <label>:12:                                     ; preds = %1
  br i1 false, label %14, label %13, !dbg !832

; <label>:13:                                     ; preds = %12, %11
  br label %46, !dbg !834

; <label>:14:                                     ; preds = %12, %11
  %15 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %2, align 8, !dbg !835
  %16 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %15, i32 0, i32 4, !dbg !837
  %17 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %16, align 8, !dbg !837
  %18 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %17, i32 0, i32 8, !dbg !838
  %19 = load i8, i8* %18, align 8, !dbg !838
  %20 = lshr i8 %19, 1, !dbg !838
  %21 = and i8 %20, 1, !dbg !838
  %22 = zext i8 %21 to i32, !dbg !838
  %23 = icmp ne i32 %22, 0, !dbg !835
  br i1 %23, label %46, label %24, !dbg !839

; <label>:24:                                     ; preds = %14
  %25 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %2, align 8, !dbg !840
  %26 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %25, i32 0, i32 21, !dbg !842
  %27 = load i16, i16* %26, align 8, !dbg !842
  %28 = lshr i16 %27, 5, !dbg !842
  %29 = and i16 %28, 1, !dbg !842
  %30 = zext i16 %29 to i32, !dbg !842
  %31 = icmp ne i32 %30, 0, !dbg !840
  br i1 %31, label %46, label %32, !dbg !843

; <label>:32:                                     ; preds = %24
  %33 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %2, align 8, !dbg !844
  %34 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %33, i32 0, i32 21, !dbg !846
  %35 = load i16, i16* %34, align 8, !dbg !846
  %36 = lshr i16 %35, 6, !dbg !846
  %37 = and i16 %36, 1, !dbg !846
  %38 = zext i16 %37 to i32, !dbg !846
  %39 = icmp ne i32 %38, 0, !dbg !844
  br i1 %39, label %46, label %40, !dbg !847

; <label>:40:                                     ; preds = %32
  %41 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %2, align 8, !dbg !848
  %42 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %41, i32 0, i32 4, !dbg !850
  %43 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %42, align 8, !dbg !850
  %44 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %2, align 8, !dbg !851
  %45 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i32 0, i32 0), %struct._IRC_SERVER_REC* %43, %struct._IRC_CHANNEL_REC* %44), !dbg !852
  br label %46, !dbg !853

; <label>:46:                                     ; preds = %13, %40, %32, %24, %14
  ret void, !dbg !854
}

declare void @channel_events_init() #2

declare void @channel_rejoin_init() #2

declare void @channels_query_init() #2

declare void @irc_channels_setup_init() #2

declare void @bans_init() #2

declare void @modes_init() #2

declare void @mode_lists_init() #2

declare void @massjoin_init() #2

declare void @irc_nicklist_init() #2

; Function Attrs: nounwind uwtable
define void @irc_channels_deinit() #0 !dbg !855 {
  call void @signal_remove_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*)* @sig_server_connected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !856
  call void @signal_remove_full(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_CHANNEL_REC*)* @sig_channel_created to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !857
  call void @signal_remove_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_CHANNEL_REC*)* @sig_channel_destroyed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !858
  call void @channel_events_deinit(), !dbg !859
  call void @channel_rejoin_deinit(), !dbg !860
  call void @channels_query_deinit(), !dbg !861
  call void @irc_channels_setup_deinit(), !dbg !862
  call void @bans_deinit(), !dbg !863
  call void @modes_deinit(), !dbg !864
  call void @mode_lists_deinit(), !dbg !865
  call void @massjoin_deinit(), !dbg !866
  call void @irc_nicklist_deinit(), !dbg !867
  ret void, !dbg !868
}

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare void @channel_events_deinit() #2

declare void @channel_rejoin_deinit() #2

declare void @channels_query_deinit() #2

declare void @irc_channels_setup_deinit() #2

declare void @bans_deinit() #2

declare void @modes_deinit() #2

declare void @mode_lists_deinit() #2

declare void @massjoin_deinit() #2

declare void @irc_nicklist_deinit() #2

; Function Attrs: nounwind uwtable
define internal %struct._CHANNEL_REC* @irc_channel_find_server(%struct._SERVER_REC*, i8*) #0 !dbg !869 {
  %3 = alloca %struct._CHANNEL_REC*, align 8
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct._CHANNEL_REC*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !870, metadata !675), !dbg !871
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !872, metadata !675), !dbg !873
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !874, metadata !675), !dbg !875
  call void @llvm.dbg.declare(metadata i8** %7, metadata !876, metadata !675), !dbg !877
  %9 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !878
  %10 = bitcast %struct._SERVER_REC* %9 to i8*, !dbg !878
  %11 = call i8* @module_check_cast(i8* %10, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)), !dbg !879
  %12 = bitcast i8* %11 to %struct._SERVER_REC*, !dbg !880
  %13 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %12, i32 0, i32 27, !dbg !881
  %14 = load i32 (%struct._SERVER_REC*, i8*)*, i32 (%struct._SERVER_REC*, i8*)** %13, align 8, !dbg !881
  %15 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !882
  %16 = bitcast %struct._SERVER_REC* %15 to i8*, !dbg !882
  %17 = call i8* @module_check_cast(i8* %16, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)), !dbg !883
  %18 = bitcast i8* %17 to %struct._SERVER_REC*, !dbg !885
  %19 = load i8*, i8** %5, align 8, !dbg !886
  %20 = call i32 %14(%struct._SERVER_REC* %18, i8* %19), !dbg !887
  %21 = icmp ne i32 %20, 0, !dbg !889
  br i1 %21, label %22, label %25, !dbg !890

; <label>:22:                                     ; preds = %2
  %23 = load i8*, i8** %5, align 8, !dbg !891
  %24 = call noalias i8* @g_strdup(i8* %23), !dbg !892
  br label %28, !dbg !893

; <label>:25:                                     ; preds = %2
  %26 = load i8*, i8** %5, align 8, !dbg !895
  %27 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* %26), !dbg !896
  br label %28, !dbg !897

; <label>:28:                                     ; preds = %25, %22
  %29 = phi i8* [ %24, %22 ], [ %27, %25 ], !dbg !899
  store i8* %29, i8** %7, align 8, !dbg !901
  %30 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !902
  %31 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %30, i32 0, i32 23, !dbg !904
  %32 = load %struct._GSList*, %struct._GSList** %31, align 8, !dbg !904
  store %struct._GSList* %32, %struct._GSList** %6, align 8, !dbg !905
  br label %33, !dbg !906

; <label>:33:                                     ; preds = %88, %28
  %34 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !907
  %35 = icmp ne %struct._GSList* %34, null, !dbg !910
  br i1 %35, label %36, label %92, !dbg !911

; <label>:36:                                     ; preds = %33
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %8, metadata !912, metadata !675), !dbg !914
  %37 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !915
  %38 = getelementptr inbounds %struct._GSList, %struct._GSList* %37, i32 0, i32 0, !dbg !916
  %39 = load i8*, i8** %38, align 8, !dbg !916
  %40 = bitcast i8* %39 to %struct._CHANNEL_REC*, !dbg !915
  store %struct._CHANNEL_REC* %40, %struct._CHANNEL_REC** %8, align 8, !dbg !914
  %41 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %8, align 8, !dbg !917
  %42 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %41, i32 0, i32 1, !dbg !919
  %43 = load i32, i32* %42, align 4, !dbg !919
  %44 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !920
  %45 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %44, i32 0, i32 1, !dbg !921
  %46 = load i32, i32* %45, align 4, !dbg !921
  %47 = icmp ne i32 %43, %46, !dbg !922
  br i1 %47, label %48, label %49, !dbg !923

; <label>:48:                                     ; preds = %36
  br label %88, !dbg !924

; <label>:49:                                     ; preds = %36
  %50 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !925
  %51 = bitcast %struct._SERVER_REC* %50 to i8*, !dbg !925
  %52 = call i8* @module_check_cast(i8* %51, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)), !dbg !927
  %53 = bitcast i8* %52 to %struct._SERVER_REC*, !dbg !928
  %54 = bitcast %struct._SERVER_REC* %53 to i8*, !dbg !929
  %55 = call i8* @chat_protocol_check_cast(i8* %54, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)), !dbg !930
  %56 = bitcast i8* %55 to %struct._IRC_SERVER_REC*, !dbg !932
  %57 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %56, i32 0, i32 72, !dbg !933
  %58 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %57, align 8, !dbg !933
  %59 = load i8*, i8** %7, align 8, !dbg !934
  %60 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %8, align 8, !dbg !935
  %61 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %60, i32 0, i32 6, !dbg !936
  %62 = load i8*, i8** %61, align 8, !dbg !936
  %63 = call i32 %58(i8* %59, i8* %62), !dbg !937
  %64 = icmp eq i32 %63, 0, !dbg !939
  br i1 %64, label %65, label %68, !dbg !940

; <label>:65:                                     ; preds = %49
  %66 = load i8*, i8** %7, align 8, !dbg !941
  call void @g_free(i8* %66), !dbg !943
  %67 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %8, align 8, !dbg !944
  store %struct._CHANNEL_REC* %67, %struct._CHANNEL_REC** %3, align 8, !dbg !945
  br label %94, !dbg !945

; <label>:68:                                     ; preds = %49
  %69 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !946
  %70 = bitcast %struct._SERVER_REC* %69 to i8*, !dbg !946
  %71 = call i8* @module_check_cast(i8* %70, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)), !dbg !948
  %72 = bitcast i8* %71 to %struct._SERVER_REC*, !dbg !949
  %73 = bitcast %struct._SERVER_REC* %72 to i8*, !dbg !950
  %74 = call i8* @chat_protocol_check_cast(i8* %73, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)), !dbg !951
  %75 = bitcast i8* %74 to %struct._IRC_SERVER_REC*, !dbg !953
  %76 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %75, i32 0, i32 72, !dbg !954
  %77 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %76, align 8, !dbg !954
  %78 = load i8*, i8** %7, align 8, !dbg !955
  %79 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %8, align 8, !dbg !956
  %80 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %79, i32 0, i32 5, !dbg !957
  %81 = load i8*, i8** %80, align 8, !dbg !957
  %82 = call i32 %77(i8* %78, i8* %81), !dbg !958
  %83 = icmp eq i32 %82, 0, !dbg !960
  br i1 %83, label %84, label %87, !dbg !961

; <label>:84:                                     ; preds = %68
  %85 = load i8*, i8** %7, align 8, !dbg !962
  call void @g_free(i8* %85), !dbg !964
  %86 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %8, align 8, !dbg !965
  store %struct._CHANNEL_REC* %86, %struct._CHANNEL_REC** %3, align 8, !dbg !966
  br label %94, !dbg !966

; <label>:87:                                     ; preds = %68
  br label %88, !dbg !967

; <label>:88:                                     ; preds = %87, %48
  %89 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !968
  %90 = getelementptr inbounds %struct._GSList, %struct._GSList* %89, i32 0, i32 1, !dbg !970
  %91 = load %struct._GSList*, %struct._GSList** %90, align 8, !dbg !970
  store %struct._GSList* %91, %struct._GSList** %6, align 8, !dbg !971
  br label %33, !dbg !972, !llvm.loop !973

; <label>:92:                                     ; preds = %33
  %93 = load i8*, i8** %7, align 8, !dbg !975
  call void @g_free(i8* %93), !dbg !976
  store %struct._CHANNEL_REC* null, %struct._CHANNEL_REC** %3, align 8, !dbg !977
  br label %94, !dbg !977

; <label>:94:                                     ; preds = %92, %84, %65
  %95 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !978
  ret %struct._CHANNEL_REC* %95, !dbg !978
}

; Function Attrs: nounwind uwtable
define internal void @irc_channels_join(%struct._IRC_SERVER_REC*, i8*, i32) #0 !dbg !979 {
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._CHANNEL_SETUP_REC*, align 8
  %8 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %9 = alloca %struct._GString*, align 8
  %10 = alloca %struct._GString*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i8**, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !982, metadata !675), !dbg !983
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !984, metadata !675), !dbg !985
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !986, metadata !675), !dbg !987
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_SETUP_REC** %7, metadata !988, metadata !675), !dbg !1004
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %8, metadata !1005, metadata !675), !dbg !1006
  call void @llvm.dbg.declare(metadata %struct._GString** %9, metadata !1007, metadata !675), !dbg !1008
  call void @llvm.dbg.declare(metadata %struct._GString** %10, metadata !1009, metadata !675), !dbg !1010
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1011, metadata !675), !dbg !1012
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1013, metadata !675), !dbg !1014
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1015, metadata !675), !dbg !1016
  call void @llvm.dbg.declare(metadata i8** %14, metadata !1017, metadata !675), !dbg !1018
  call void @llvm.dbg.declare(metadata i8*** %15, metadata !1019, metadata !675), !dbg !1020
  call void @llvm.dbg.declare(metadata i8*** %16, metadata !1021, metadata !675), !dbg !1022
  call void @llvm.dbg.declare(metadata i8*** %17, metadata !1023, metadata !675), !dbg !1024
  call void @llvm.dbg.declare(metadata i8*** %18, metadata !1025, metadata !675), !dbg !1026
  call void @llvm.dbg.declare(metadata i8*** %19, metadata !1027, metadata !675), !dbg !1028
  call void @llvm.dbg.declare(metadata i8** %20, metadata !1029, metadata !675), !dbg !1030
  call void @llvm.dbg.declare(metadata i8** %21, metadata !1031, metadata !675), !dbg !1032
  call void @llvm.dbg.declare(metadata i8** %22, metadata !1033, metadata !675), !dbg !1034
  call void @llvm.dbg.declare(metadata i32* %23, metadata !1035, metadata !675), !dbg !1036
  call void @llvm.dbg.declare(metadata i32* %24, metadata !1037, metadata !675), !dbg !1038
  br label %25, !dbg !1039, !llvm.loop !1040

; <label>:25:                                     ; preds = %3
  %26 = load i8*, i8** %5, align 8, !dbg !1041
  %27 = icmp ne i8* %26, null, !dbg !1045
  br i1 %27, label %28, label %29, !dbg !1041

; <label>:28:                                     ; preds = %25
  br label %30, !dbg !1046

; <label>:29:                                     ; preds = %25
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.irc_channels_join, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0)), !dbg !1049
  br label %357, !dbg !1052

; <label>:30:                                     ; preds = %28
  br label %31, !dbg !1053

; <label>:31:                                     ; preds = %30
  br label %32, !dbg !1055, !llvm.loop !1056

; <label>:32:                                     ; preds = %31
  %33 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1057
  %34 = bitcast %struct._IRC_SERVER_REC* %33 to i8*, !dbg !1057
  %35 = call i8* @module_check_cast(i8* %34, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)), !dbg !1061
  %36 = bitcast i8* %35 to %struct._SERVER_REC*, !dbg !1062
  %37 = bitcast %struct._SERVER_REC* %36 to i8*, !dbg !1063
  %38 = call i8* @chat_protocol_check_cast(i8* %37, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)), !dbg !1064
  %39 = bitcast i8* %38 to %struct._IRC_SERVER_REC*, !dbg !1066
  %40 = icmp ne %struct._IRC_SERVER_REC* %39, null, !dbg !1066
  br i1 %40, label %41, label %42, !dbg !1067

; <label>:41:                                     ; preds = %32
  br i1 false, label %51, label %43, !dbg !1068

; <label>:42:                                     ; preds = %32
  br i1 false, label %43, label %51, !dbg !1070

; <label>:43:                                     ; preds = %42, %41
  %44 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1072
  %45 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %44, i32 0, i32 8, !dbg !1074
  %46 = load i8, i8* %45, align 8, !dbg !1074
  %47 = and i8 %46, 1, !dbg !1074
  %48 = zext i8 %47 to i32, !dbg !1074
  %49 = icmp ne i32 %48, 0, !dbg !1072
  br i1 %49, label %50, label %51, !dbg !1075

; <label>:50:                                     ; preds = %43
  br label %52, !dbg !1076

; <label>:51:                                     ; preds = %43, %42, %41
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.irc_channels_join, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i32 0, i32 0)), !dbg !1079
  br label %357, !dbg !1082

; <label>:52:                                     ; preds = %50
  br label %53, !dbg !1083

; <label>:53:                                     ; preds = %52
  %54 = load i8*, i8** %5, align 8, !dbg !1085
  %55 = load i8, i8* %54, align 1, !dbg !1087
  %56 = sext i8 %55 to i32, !dbg !1087
  %57 = icmp eq i32 %56, 0, !dbg !1088
  br i1 %57, label %58, label %59, !dbg !1089

; <label>:58:                                     ; preds = %53
  br label %357, !dbg !1090

; <label>:59:                                     ; preds = %53
  %60 = load i8*, i8** %5, align 8, !dbg !1092
  %61 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %60, i8** %22, i32 8194, i8** %11, i8** %12), !dbg !1094
  %62 = icmp ne i32 %61, 0, !dbg !1094
  br i1 %62, label %64, label %63, !dbg !1095

; <label>:63:                                     ; preds = %59
  br label %357, !dbg !1096

; <label>:64:                                     ; preds = %59
  %65 = load i8*, i8** %12, align 8, !dbg !1097
  %66 = call i8* @strchr(i8* %65, i32 32) #4, !dbg !1098
  store i8* %66, i8** %14, align 8, !dbg !1099
  %67 = load i8*, i8** %14, align 8, !dbg !1100
  %68 = icmp ne i8* %67, null, !dbg !1102
  br i1 %68, label %69, label %71, !dbg !1103

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %14, align 8, !dbg !1104
  store i8 0, i8* %70, align 1, !dbg !1106
  br label %71, !dbg !1107

; <label>:71:                                     ; preds = %69, %64
  %72 = load i8*, i8** %11, align 8, !dbg !1108
  %73 = call noalias i8** @g_strsplit(i8* %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), i32 -1), !dbg !1109
  store i8** %73, i8*** %15, align 8, !dbg !1110
  %74 = load i8*, i8** %12, align 8, !dbg !1111
  %75 = call noalias i8** @g_strsplit(i8* %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), i32 -1), !dbg !1112
  store i8** %75, i8*** %16, align 8, !dbg !1113
  %76 = call %struct._GString* @g_string_new(i8* null), !dbg !1114
  store %struct._GString* %76, %struct._GString** %9, align 8, !dbg !1115
  %77 = call %struct._GString* @g_string_new(i8* null), !dbg !1116
  store %struct._GString* %77, %struct._GString** %10, align 8, !dbg !1117
  %78 = load i8*, i8** %12, align 8, !dbg !1118
  %79 = load i8, i8* %78, align 1, !dbg !1119
  %80 = sext i8 %79 to i32, !dbg !1119
  %81 = icmp ne i32 %80, 0, !dbg !1120
  %82 = zext i1 %81 to i32, !dbg !1120
  store i32 %82, i32* %23, align 4, !dbg !1121
  %83 = load i8**, i8*** %16, align 8, !dbg !1122
  store i8** %83, i8*** %18, align 8, !dbg !1123
  %84 = load i8**, i8*** %15, align 8, !dbg !1124
  store i8** %84, i8*** %17, align 8, !dbg !1125
  br label %85, !dbg !1126

; <label>:85:                                     ; preds = %346, %71
  %86 = load i8**, i8*** %17, align 8, !dbg !1127
  %87 = load i8*, i8** %86, align 8, !dbg !1132
  %88 = icmp ne i8* %87, null, !dbg !1133
  br i1 %88, label %89, label %285, !dbg !1134

; <label>:89:                                     ; preds = %85
  %90 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1135
  %91 = bitcast %struct._IRC_SERVER_REC* %90 to i8*, !dbg !1135
  %92 = call i8* @module_check_cast(i8* %91, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)), !dbg !1137
  %93 = bitcast i8* %92 to %struct._SERVER_REC*, !dbg !1138
  %94 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %93, i32 0, i32 27, !dbg !1139
  %95 = load i32 (%struct._SERVER_REC*, i8*)*, i32 (%struct._SERVER_REC*, i8*)** %94, align 8, !dbg !1139
  %96 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1140
  %97 = bitcast %struct._IRC_SERVER_REC* %96 to i8*, !dbg !1140
  %98 = call i8* @module_check_cast(i8* %97, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)), !dbg !1141
  %99 = bitcast i8* %98 to %struct._SERVER_REC*, !dbg !1143
  %100 = load i8**, i8*** %17, align 8, !dbg !1139
  %101 = load i8*, i8** %100, align 8, !dbg !1144
  %102 = call i32 %95(%struct._SERVER_REC* %99, i8* %101), !dbg !1145
  %103 = icmp ne i32 %102, 0, !dbg !1147
  br i1 %103, label %104, label %108, !dbg !1148

; <label>:104:                                    ; preds = %89
  %105 = load i8**, i8*** %17, align 8, !dbg !1149
  %106 = load i8*, i8** %105, align 8, !dbg !1151
  %107 = call noalias i8* @g_strdup(i8* %106), !dbg !1152
  br label %112, !dbg !1153

; <label>:108:                                    ; preds = %89
  %109 = load i8**, i8*** %17, align 8, !dbg !1154
  %110 = load i8*, i8** %109, align 8, !dbg !1155
  %111 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* %110), !dbg !1156
  br label %112, !dbg !1157

; <label>:112:                                    ; preds = %108, %104
  %113 = phi i8* [ %107, %104 ], [ %111, %108 ], !dbg !1159
  store i8* %113, i8** %20, align 8, !dbg !1161
  %114 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1162
  %115 = bitcast %struct._IRC_SERVER_REC* %114 to i8*, !dbg !1162
  %116 = call i8* @module_check_cast(i8* %115, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)), !dbg !1163
  %117 = bitcast i8* %116 to %struct._SERVER_REC*, !dbg !1164
  %118 = load i8*, i8** %20, align 8, !dbg !1165
  %119 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %117, i8* %118), !dbg !1166
  %120 = bitcast %struct._CHANNEL_REC* %119 to i8*, !dbg !1167
  %121 = call i8* @module_check_cast_module(i8* %120, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0)), !dbg !1168
  %122 = bitcast i8* %121 to %struct._CHANNEL_REC*, !dbg !1169
  %123 = bitcast %struct._CHANNEL_REC* %122 to i8*, !dbg !1170
  %124 = call i8* @chat_protocol_check_cast(i8* %123, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)), !dbg !1171
  %125 = bitcast i8* %124 to %struct._IRC_CHANNEL_REC*, !dbg !1172
  store %struct._IRC_CHANNEL_REC* %125, %struct._IRC_CHANNEL_REC** %8, align 8, !dbg !1173
  %126 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %8, align 8, !dbg !1174
  %127 = icmp eq %struct._IRC_CHANNEL_REC* %126, null, !dbg !1176
  br i1 %127, label %128, label %207, !dbg !1177

; <label>:128:                                    ; preds = %112
  %129 = load i8*, i8** %20, align 8, !dbg !1178
  %130 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1180
  %131 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %130, i32 0, i32 3, !dbg !1181
  %132 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %131, align 8, !dbg !1181
  %133 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %132, i32 0, i32 12, !dbg !1182
  %134 = load i8*, i8** %133, align 8, !dbg !1182
  %135 = call %struct._CHANNEL_SETUP_REC* @channel_setup_find(i8* %129, i8* %134), !dbg !1183
  store %struct._CHANNEL_SETUP_REC* %135, %struct._CHANNEL_SETUP_REC** %7, align 8, !dbg !1184
  %136 = load %struct._GString*, %struct._GString** %9, align 8, !dbg !1185
  %137 = load i8*, i8** %20, align 8, !dbg !1186
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %136, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* %137), !dbg !1187
  %138 = load i8**, i8*** %18, align 8, !dbg !1188
  %139 = load i8*, i8** %138, align 8, !dbg !1190
  %140 = icmp ne i8* %139, null, !dbg !1191
  br i1 %140, label %141, label %150, !dbg !1192

; <label>:141:                                    ; preds = %128
  %142 = load i8**, i8*** %18, align 8, !dbg !1193
  %143 = load i8*, i8** %142, align 8, !dbg !1195
  %144 = load i8, i8* %143, align 1, !dbg !1196
  %145 = sext i8 %144 to i32, !dbg !1196
  %146 = icmp ne i32 %145, 0, !dbg !1197
  br i1 %146, label %147, label %150, !dbg !1198

; <label>:147:                                    ; preds = %141
  %148 = load i8**, i8*** %18, align 8, !dbg !1199
  %149 = load i8*, i8** %148, align 8, !dbg !1200
  store i8* %149, i8** %13, align 8, !dbg !1201
  br label %164, !dbg !1202

; <label>:150:                                    ; preds = %141, %128
  %151 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %7, align 8, !dbg !1203
  %152 = icmp ne %struct._CHANNEL_SETUP_REC* %151, null, !dbg !1205
  br i1 %152, label %153, label %162, !dbg !1206

; <label>:153:                                    ; preds = %150
  %154 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %7, align 8, !dbg !1207
  %155 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %154, i32 0, i32 4, !dbg !1209
  %156 = load i8*, i8** %155, align 8, !dbg !1209
  %157 = icmp ne i8* %156, null, !dbg !1210
  br i1 %157, label %158, label %162, !dbg !1211

; <label>:158:                                    ; preds = %153
  store i32 1, i32* %23, align 4, !dbg !1212
  %159 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %7, align 8, !dbg !1214
  %160 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %159, i32 0, i32 4, !dbg !1215
  %161 = load i8*, i8** %160, align 8, !dbg !1215
  store i8* %161, i8** %13, align 8, !dbg !1216
  br label %163, !dbg !1217

; <label>:162:                                    ; preds = %153, %150
  store i8* null, i8** %13, align 8, !dbg !1218
  br label %163

; <label>:163:                                    ; preds = %162, %158
  br label %164

; <label>:164:                                    ; preds = %163, %147
  %165 = load %struct._GString*, %struct._GString** %10, align 8, !dbg !1219
  %166 = load i8*, i8** %13, align 8, !dbg !1220
  %167 = icmp eq i8* %166, null, !dbg !1221
  br i1 %167, label %173, label %168, !dbg !1222

; <label>:168:                                    ; preds = %164
  %169 = load i8*, i8** %13, align 8, !dbg !1223
  %170 = load i8, i8* %169, align 1, !dbg !1225
  %171 = sext i8 %170 to i32, !dbg !1225
  %172 = icmp eq i32 %171, 0, !dbg !1226
  br i1 %172, label %173, label %174, !dbg !1227

; <label>:173:                                    ; preds = %168, %164
  br label %176, !dbg !1228

; <label>:174:                                    ; preds = %168
  %175 = load i8*, i8** %13, align 8, !dbg !1230
  br label %176, !dbg !1232

; <label>:176:                                    ; preds = %174, %173
  %177 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %173 ], [ %175, %174 ], !dbg !1233
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %165, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* %177), !dbg !1235
  %178 = load i8*, i8** %20, align 8, !dbg !1236
  %179 = load i8*, i8** %20, align 8, !dbg !1237
  %180 = getelementptr inbounds i8, i8* %179, i64 0, !dbg !1237
  %181 = load i8, i8* %180, align 1, !dbg !1237
  %182 = sext i8 %181 to i32, !dbg !1237
  %183 = icmp eq i32 %182, 33, !dbg !1238
  br i1 %183, label %184, label %190, !dbg !1239

; <label>:184:                                    ; preds = %176
  %185 = load i8*, i8** %20, align 8, !dbg !1240
  %186 = getelementptr inbounds i8, i8* %185, i64 1, !dbg !1240
  %187 = load i8, i8* %186, align 1, !dbg !1240
  %188 = sext i8 %187 to i32, !dbg !1240
  %189 = icmp eq i32 %188, 33, !dbg !1241
  br label %190

; <label>:190:                                    ; preds = %184, %176
  %191 = phi i1 [ false, %176 ], [ %189, %184 ]
  %192 = zext i1 %191 to i32, !dbg !1242
  %193 = sext i32 %192 to i64, !dbg !1243
  %194 = getelementptr inbounds i8, i8* %178, i64 %193, !dbg !1243
  store i8* %194, i8** %21, align 8, !dbg !1244
  %195 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1245
  %196 = load i8*, i8** %21, align 8, !dbg !1246
  %197 = load i32, i32* %6, align 4, !dbg !1247
  %198 = call %struct._IRC_CHANNEL_REC* @irc_channel_create(%struct._IRC_SERVER_REC* %195, i8* %196, i8* null, i32 %197), !dbg !1248
  store %struct._IRC_CHANNEL_REC* %198, %struct._IRC_CHANNEL_REC** %8, align 8, !dbg !1249
  %199 = load i8*, i8** %13, align 8, !dbg !1250
  %200 = icmp ne i8* %199, null, !dbg !1252
  br i1 %200, label %201, label %206, !dbg !1253

; <label>:201:                                    ; preds = %190
  %202 = load i8*, i8** %13, align 8, !dbg !1254
  %203 = call noalias i8* @g_strdup(i8* %202), !dbg !1256
  %204 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %8, align 8, !dbg !1257
  %205 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %204, i32 0, i32 20, !dbg !1258
  store i8* %203, i8** %205, align 8, !dbg !1259
  br label %206, !dbg !1257

; <label>:206:                                    ; preds = %201, %190
  br label %207, !dbg !1260

; <label>:207:                                    ; preds = %206, %112
  %208 = load i8*, i8** %20, align 8, !dbg !1261
  call void @g_free(i8* %208), !dbg !1262
  %209 = load i8**, i8*** %18, align 8, !dbg !1263
  %210 = load i8*, i8** %209, align 8, !dbg !1265
  %211 = icmp ne i8* %210, null, !dbg !1266
  br i1 %211, label %212, label %215, !dbg !1267

; <label>:212:                                    ; preds = %207
  %213 = load i8**, i8*** %18, align 8, !dbg !1268
  %214 = getelementptr inbounds i8*, i8** %213, i32 1, !dbg !1268
  store i8** %214, i8*** %18, align 8, !dbg !1268
  br label %215, !dbg !1269

; <label>:215:                                    ; preds = %212, %207
  %216 = load i8**, i8*** %17, align 8, !dbg !1270
  store i8** %216, i8*** %19, align 8, !dbg !1271
  %217 = load i8**, i8*** %19, align 8, !dbg !1272
  %218 = getelementptr inbounds i8*, i8** %217, i32 1, !dbg !1272
  store i8** %218, i8*** %19, align 8, !dbg !1272
  %219 = load %struct._GString*, %struct._GString** %9, align 8, !dbg !1273
  %220 = getelementptr inbounds %struct._GString, %struct._GString* %219, i32 0, i32 1, !dbg !1274
  %221 = load i64, i64* %220, align 8, !dbg !1274
  %222 = sub i64 %221, 1, !dbg !1275
  %223 = trunc i64 %222 to i32, !dbg !1273
  store i32 %223, i32* %24, align 4, !dbg !1276
  %224 = load i32, i32* %23, align 4, !dbg !1277
  %225 = icmp ne i32 %224, 0, !dbg !1277
  br i1 %225, label %226, label %234, !dbg !1279

; <label>:226:                                    ; preds = %215
  %227 = load %struct._GString*, %struct._GString** %10, align 8, !dbg !1280
  %228 = getelementptr inbounds %struct._GString, %struct._GString* %227, i32 0, i32 1, !dbg !1281
  %229 = load i64, i64* %228, align 8, !dbg !1281
  %230 = load i32, i32* %24, align 4, !dbg !1282
  %231 = sext i32 %230 to i64, !dbg !1282
  %232 = add i64 %231, %229, !dbg !1282
  %233 = trunc i64 %232 to i32, !dbg !1282
  store i32 %233, i32* %24, align 4, !dbg !1282
  br label %234, !dbg !1283

; <label>:234:                                    ; preds = %226, %215
  %235 = load i8**, i8*** %19, align 8, !dbg !1284
  %236 = load i8*, i8** %235, align 8, !dbg !1286
  %237 = icmp ne i8* %236, null, !dbg !1287
  br i1 %237, label %238, label %268, !dbg !1288

; <label>:238:                                    ; preds = %234
  %239 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1289
  %240 = bitcast %struct._IRC_SERVER_REC* %239 to i8*, !dbg !1289
  %241 = call i8* @module_check_cast(i8* %240, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)), !dbg !1290
  %242 = bitcast i8* %241 to %struct._SERVER_REC*, !dbg !1291
  %243 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %242, i32 0, i32 27, !dbg !1292
  %244 = load i32 (%struct._SERVER_REC*, i8*)*, i32 (%struct._SERVER_REC*, i8*)** %243, align 8, !dbg !1292
  %245 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1293
  %246 = bitcast %struct._IRC_SERVER_REC* %245 to i8*, !dbg !1293
  %247 = call i8* @module_check_cast(i8* %246, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)), !dbg !1294
  %248 = bitcast i8* %247 to %struct._SERVER_REC*, !dbg !1296
  %249 = load i8**, i8*** %19, align 8, !dbg !1292
  %250 = load i8*, i8** %249, align 8, !dbg !1297
  %251 = call i32 %244(%struct._SERVER_REC* %248, i8* %250), !dbg !1298
  %252 = icmp ne i32 %251, 0, !dbg !1300
  br i1 %252, label %253, label %257, !dbg !1301

; <label>:253:                                    ; preds = %238
  %254 = load i8**, i8*** %19, align 8, !dbg !1302
  %255 = load i8*, i8** %254, align 8, !dbg !1304
  %256 = call i64 @strlen(i8* %255) #4, !dbg !1305
  br label %262, !dbg !1306

; <label>:257:                                    ; preds = %238
  %258 = load i8**, i8*** %19, align 8, !dbg !1307
  %259 = load i8*, i8** %258, align 8, !dbg !1308
  %260 = call i64 @strlen(i8* %259) #4, !dbg !1309
  %261 = add i64 %260, 1, !dbg !1310
  br label %262, !dbg !1311

; <label>:262:                                    ; preds = %257, %253
  %263 = phi i64 [ %256, %253 ], [ %261, %257 ], !dbg !1313
  %264 = load i32, i32* %24, align 4, !dbg !1315
  %265 = sext i32 %264 to i64, !dbg !1315
  %266 = add i64 %265, %263, !dbg !1315
  %267 = trunc i64 %266 to i32, !dbg !1315
  store i32 %267, i32* %24, align 4, !dbg !1315
  br label %268, !dbg !1316

; <label>:268:                                    ; preds = %262, %234
  %269 = load i8**, i8*** %18, align 8, !dbg !1317
  %270 = load i8*, i8** %269, align 8, !dbg !1319
  %271 = icmp ne i8* %270, null, !dbg !1320
  br i1 %271, label %272, label %280, !dbg !1321

; <label>:272:                                    ; preds = %268
  %273 = load i8**, i8*** %18, align 8, !dbg !1322
  %274 = load i8*, i8** %273, align 8, !dbg !1323
  %275 = call i64 @strlen(i8* %274) #4, !dbg !1324
  %276 = load i32, i32* %24, align 4, !dbg !1325
  %277 = sext i32 %276 to i64, !dbg !1325
  %278 = add i64 %277, %275, !dbg !1325
  %279 = trunc i64 %278 to i32, !dbg !1325
  store i32 %279, i32* %24, align 4, !dbg !1325
  br label %280, !dbg !1326

; <label>:280:                                    ; preds = %272, %268
  %281 = load i32, i32* %24, align 4, !dbg !1327
  %282 = icmp slt i32 %281, 505, !dbg !1329
  br i1 %282, label %283, label %284, !dbg !1330

; <label>:283:                                    ; preds = %280
  br label %346, !dbg !1331

; <label>:284:                                    ; preds = %280
  br label %285, !dbg !1332

; <label>:285:                                    ; preds = %284, %85
  %286 = load %struct._GString*, %struct._GString** %9, align 8, !dbg !1333
  %287 = getelementptr inbounds %struct._GString, %struct._GString* %286, i32 0, i32 1, !dbg !1335
  %288 = load i64, i64* %287, align 8, !dbg !1335
  %289 = icmp ugt i64 %288, 0, !dbg !1336
  br i1 %289, label %290, label %331, !dbg !1337

; <label>:290:                                    ; preds = %285
  %291 = load %struct._GString*, %struct._GString** %9, align 8, !dbg !1338
  %292 = load %struct._GString*, %struct._GString** %9, align 8, !dbg !1340
  %293 = getelementptr inbounds %struct._GString, %struct._GString* %292, i32 0, i32 1, !dbg !1341
  %294 = load i64, i64* %293, align 8, !dbg !1341
  %295 = sub i64 %294, 1, !dbg !1342
  %296 = call %struct._GString* @g_string_truncate(%struct._GString* %291, i64 %295), !dbg !1343
  %297 = load %struct._GString*, %struct._GString** %10, align 8, !dbg !1344
  %298 = load %struct._GString*, %struct._GString** %10, align 8, !dbg !1345
  %299 = getelementptr inbounds %struct._GString, %struct._GString* %298, i32 0, i32 1, !dbg !1346
  %300 = load i64, i64* %299, align 8, !dbg !1346
  %301 = sub i64 %300, 1, !dbg !1347
  %302 = call %struct._GString* @g_string_truncate(%struct._GString* %297, i64 %301), !dbg !1348
  %303 = load i32, i32* %23, align 4, !dbg !1349
  %304 = icmp ne i32 %303, 0, !dbg !1349
  br i1 %304, label %305, label %319, !dbg !1351

; <label>:305:                                    ; preds = %290
  %306 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1352
  %307 = bitcast %struct._IRC_SERVER_REC* %306 to i8*, !dbg !1352
  %308 = call i8* @module_check_cast(i8* %307, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)), !dbg !1353
  %309 = bitcast i8* %308 to %struct._SERVER_REC*, !dbg !1354
  %310 = bitcast %struct._SERVER_REC* %309 to i8*, !dbg !1355
  %311 = call i8* @chat_protocol_check_cast(i8* %310, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)), !dbg !1356
  %312 = bitcast i8* %311 to %struct._IRC_SERVER_REC*, !dbg !1358
  %313 = load %struct._GString*, %struct._GString** %9, align 8, !dbg !1359
  %314 = getelementptr inbounds %struct._GString, %struct._GString* %313, i32 0, i32 0, !dbg !1360
  %315 = load i8*, i8** %314, align 8, !dbg !1360
  %316 = load %struct._GString*, %struct._GString** %10, align 8, !dbg !1361
  %317 = getelementptr inbounds %struct._GString, %struct._GString* %316, i32 0, i32 0, !dbg !1362
  %318 = load i8*, i8** %317, align 8, !dbg !1362
  call void (%struct._IRC_SERVER_REC*, i8*, ...) @irc_send_cmdv(%struct._IRC_SERVER_REC* %312, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), i8* %315, i8* %318), !dbg !1363
  br label %330, !dbg !1365

; <label>:319:                                    ; preds = %290
  %320 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1366
  %321 = bitcast %struct._IRC_SERVER_REC* %320 to i8*, !dbg !1366
  %322 = call i8* @module_check_cast(i8* %321, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)), !dbg !1367
  %323 = bitcast i8* %322 to %struct._SERVER_REC*, !dbg !1368
  %324 = bitcast %struct._SERVER_REC* %323 to i8*, !dbg !1369
  %325 = call i8* @chat_protocol_check_cast(i8* %324, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)), !dbg !1370
  %326 = bitcast i8* %325 to %struct._IRC_SERVER_REC*, !dbg !1371
  %327 = load %struct._GString*, %struct._GString** %9, align 8, !dbg !1372
  %328 = getelementptr inbounds %struct._GString, %struct._GString* %327, i32 0, i32 0, !dbg !1373
  %329 = load i8*, i8** %328, align 8, !dbg !1373
  call void (%struct._IRC_SERVER_REC*, i8*, ...) @irc_send_cmdv(%struct._IRC_SERVER_REC* %326, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* %329), !dbg !1374
  br label %330

; <label>:330:                                    ; preds = %319, %305
  br label %331, !dbg !1375

; <label>:331:                                    ; preds = %330, %285
  store i32 0, i32* %24, align 4, !dbg !1376
  %332 = load %struct._GString*, %struct._GString** %9, align 8, !dbg !1377
  %333 = call %struct._GString* @g_string_truncate(%struct._GString* %332, i64 0), !dbg !1378
  %334 = load %struct._GString*, %struct._GString** %10, align 8, !dbg !1379
  %335 = call %struct._GString* @g_string_truncate(%struct._GString* %334, i64 0), !dbg !1380
  %336 = load i8**, i8*** %17, align 8, !dbg !1381
  %337 = load i8*, i8** %336, align 8, !dbg !1383
  %338 = icmp eq i8* %337, null, !dbg !1384
  br i1 %338, label %344, label %339, !dbg !1385

; <label>:339:                                    ; preds = %331
  %340 = load i8**, i8*** %17, align 8, !dbg !1386
  %341 = getelementptr inbounds i8*, i8** %340, i64 1, !dbg !1386
  %342 = load i8*, i8** %341, align 8, !dbg !1386
  %343 = icmp eq i8* %342, null, !dbg !1388
  br i1 %343, label %344, label %345, !dbg !1389

; <label>:344:                                    ; preds = %339, %331
  br label %349, !dbg !1390

; <label>:345:                                    ; preds = %339
  br label %346, !dbg !1391

; <label>:346:                                    ; preds = %345, %283
  %347 = load i8**, i8*** %17, align 8, !dbg !1392
  %348 = getelementptr inbounds i8*, i8** %347, i32 1, !dbg !1392
  store i8** %348, i8*** %17, align 8, !dbg !1392
  br label %85, !dbg !1394, !llvm.loop !1395

; <label>:349:                                    ; preds = %344
  %350 = load %struct._GString*, %struct._GString** %9, align 8, !dbg !1396
  %351 = call i8* @g_string_free(%struct._GString* %350, i32 1), !dbg !1397
  %352 = load %struct._GString*, %struct._GString** %10, align 8, !dbg !1398
  %353 = call i8* @g_string_free(%struct._GString* %352, i32 1), !dbg !1399
  %354 = load i8**, i8*** %15, align 8, !dbg !1400
  call void @g_strfreev(i8** %354), !dbg !1401
  %355 = load i8**, i8*** %16, align 8, !dbg !1402
  call void @g_strfreev(i8** %355), !dbg !1403
  %356 = load i8*, i8** %22, align 8, !dbg !1404
  call void @cmd_params_free(i8* %356), !dbg !1405
  br label %357, !dbg !1406

; <label>:357:                                    ; preds = %349, %63, %58, %51, %29
  ret void, !dbg !1407
}

declare noalias i8* @g_strdup(i8*) #2

declare noalias i8* @g_strdup_printf(i8*, ...) #2

declare void @g_free(i8*) #2

declare i32 @cmd_get_params(i8*, i8**, i32, ...) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

declare noalias i8** @g_strsplit(i8*, i8*, i32) #2

declare %struct._GString* @g_string_new(i8*) #2

declare i8* @module_check_cast_module(i8*, i32, i8*, i8*) #2

declare %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC*, i8*) #2

declare %struct._CHANNEL_SETUP_REC* @channel_setup_find(i8*, i8*) #2

declare void @g_string_append_printf(%struct._GString*, i8*, ...) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare %struct._GString* @g_string_truncate(%struct._GString*, i64) #2

declare void @irc_send_cmdv(%struct._IRC_SERVER_REC*, i8*, ...) #2

declare i8* @g_string_free(%struct._GString*, i32) #2

declare void @g_strfreev(i8**) #2

declare void @cmd_params_free(i8*) #2

; Function Attrs: nounwind uwtable
define internal i8* @irc_get_join_data(%struct._CHANNEL_REC*) #0 !dbg !1409 {
  %2 = alloca %struct._CHANNEL_REC*, align 8
  %3 = alloca %struct._IRC_CHANNEL_REC*, align 8
  store %struct._CHANNEL_REC* %0, %struct._CHANNEL_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %2, metadata !1410, metadata !675), !dbg !1411
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %3, metadata !1412, metadata !675), !dbg !1413
  %4 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !1414
  %5 = bitcast %struct._CHANNEL_REC* %4 to %struct._IRC_CHANNEL_REC*, !dbg !1415
  store %struct._IRC_CHANNEL_REC* %5, %struct._IRC_CHANNEL_REC** %3, align 8, !dbg !1413
  %6 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %3, align 8, !dbg !1416
  %7 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %6, i32 0, i32 20, !dbg !1417
  %8 = load i8*, i8** %7, align 8, !dbg !1417
  %9 = icmp eq i8* %8, null, !dbg !1418
  br i1 %9, label %10, label %15, !dbg !1416

; <label>:10:                                     ; preds = %1
  %11 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %3, align 8, !dbg !1419
  %12 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %11, i32 0, i32 6, !dbg !1421
  %13 = load i8*, i8** %12, align 8, !dbg !1421
  %14 = call noalias i8* @g_strdup(i8* %13), !dbg !1422
  br label %23, !dbg !1423

; <label>:15:                                     ; preds = %1
  %16 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %3, align 8, !dbg !1424
  %17 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %16, i32 0, i32 6, !dbg !1425
  %18 = load i8*, i8** %17, align 8, !dbg !1425
  %19 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %3, align 8, !dbg !1426
  %20 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %19, i32 0, i32 20, !dbg !1427
  %21 = load i8*, i8** %20, align 8, !dbg !1427
  %22 = call noalias i8* (i8*, ...) @g_strconcat(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), i8* %21, i8* null), !dbg !1428
  br label %23, !dbg !1429

; <label>:23:                                     ; preds = %15, %10
  %24 = phi i8* [ %14, %10 ], [ %22, %15 ], !dbg !1431
  ret i8* %24, !dbg !1433
}

declare noalias i8* @g_strconcat(i8*, ...) #2

declare i32 @signal_emit(i8*, i32, ...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!666, !667}
!llvm.ident = !{!668}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !35)
!1 = !DIFile(filename: "line119-irc-channels.o.i", directory: "/home/lichi/Desktop/irssi/task1")
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
!35 = !{!36, !37, !350, !106, !438, !613, !457, !659, !347}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_REC", file: !39, line: 6, baseType: !40)
!39 = !DIFile(filename: "irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_REC", file: !41, line: 42, size: 39168, align: 64, elements: !42)
!41 = !DIFile(filename: "irc-servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!42 = !{!43, !46, !47, !48, !295, !300, !301, !302, !303, !304, !305, !306, !307, !308, !312, !313, !317, !318, !319, !323, !328, !329, !330, !331, !332, !333, !334, !335, !342, !343, !344, !345, !346, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !656, !658}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !40, file: !44, line: 3, baseType: !45, size: 32, align: 32)
!44 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!45 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !40, file: !44, line: 4, baseType: !45, size: 32, align: 32, offset: 32)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !40, file: !44, line: 6, baseType: !45, size: 32, align: 32, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !40, file: !44, line: 8, baseType: !49, size: 64, align: 64, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_CONNECT_REC", file: !39, line: 5, baseType: !51)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_CONNECT_REC", file: !41, line: 24, size: 2496, align: 64, elements: !52)
!52 = !{!53, !55, !56, !57, !60, !61, !62, !63, !64, !66, !67, !68, !69, !70, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !51, file: !54, line: 3, baseType: !45, size: 32, align: 32)
!54 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!55 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !51, file: !54, line: 4, baseType: !45, size: 32, align: 32, offset: 32)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !51, file: !54, line: 6, baseType: !45, size: 32, align: 32, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !51, file: !54, line: 9, baseType: !58, size: 64, align: 64, offset: 128)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !51, file: !54, line: 10, baseType: !45, size: 32, align: 32, offset: 192)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !51, file: !54, line: 11, baseType: !58, size: 64, align: 64, offset: 256)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !51, file: !54, line: 11, baseType: !58, size: 64, align: 64, offset: 320)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !51, file: !54, line: 11, baseType: !58, size: 64, align: 64, offset: 384)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !51, file: !54, line: 13, baseType: !65, size: 16, align: 16, offset: 448)
!65 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !51, file: !54, line: 14, baseType: !58, size: 64, align: 64, offset: 512)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !51, file: !54, line: 15, baseType: !58, size: 64, align: 64, offset: 576)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !51, file: !54, line: 16, baseType: !45, size: 32, align: 32, offset: 640)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !51, file: !54, line: 17, baseType: !58, size: 64, align: 64, offset: 704)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !51, file: !54, line: 19, baseType: !71, size: 64, align: 64, offset: 768)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !73, line: 99, baseType: !74)
!73 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!74 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !73, line: 99, flags: DIFlagFwdDecl)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !51, file: !54, line: 19, baseType: !71, size: 64, align: 64, offset: 832)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !51, file: !54, line: 21, baseType: !58, size: 64, align: 64, offset: 896)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !51, file: !54, line: 22, baseType: !58, size: 64, align: 64, offset: 960)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !51, file: !54, line: 23, baseType: !58, size: 64, align: 64, offset: 1024)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !51, file: !54, line: 24, baseType: !58, size: 64, align: 64, offset: 1088)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !51, file: !54, line: 26, baseType: !58, size: 64, align: 64, offset: 1152)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !51, file: !54, line: 27, baseType: !58, size: 64, align: 64, offset: 1216)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !51, file: !54, line: 28, baseType: !58, size: 64, align: 64, offset: 1280)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !51, file: !54, line: 29, baseType: !58, size: 64, align: 64, offset: 1344)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !51, file: !54, line: 30, baseType: !58, size: 64, align: 64, offset: 1408)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !51, file: !54, line: 31, baseType: !58, size: 64, align: 64, offset: 1472)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !51, file: !54, line: 32, baseType: !58, size: 64, align: 64, offset: 1536)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !51, file: !54, line: 33, baseType: !58, size: 64, align: 64, offset: 1600)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !51, file: !54, line: 35, baseType: !89, size: 64, align: 64, offset: 1664)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !91)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !92)
!92 = !{!93, !96, !240, !241, !246, !247, !248, !249, !250, !259, !260, !261, !265, !266, !267, !268, !269, !270, !271, !272}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !91, file: !4, line: 100, baseType: !94, size: 32, align: 32)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !95, line: 49, baseType: !45)
!95 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!96 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !91, file: !4, line: 101, baseType: !97, size: 64, align: 64, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !99)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !100)
!100 = !{!101, !125, !131, !138, !142, !227, !231, !236}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !99, file: !4, line: 133, baseType: !102, size: 64, align: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64, align: 64)
!103 = !DISubroutineType(types: !104)
!104 = !{!105, !89, !106, !108, !111, !112}
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64, align: 64)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !95, line: 46, baseType: !59)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !109, line: 66, baseType: !110)
!109 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!110 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, align: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64, align: 64)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64, align: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !115, line: 42, baseType: !116)
!115 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !115, line: 44, size: 128, align: 64, elements: !117)
!117 = !{!118, !123, !124}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !116, file: !115, line: 46, baseType: !119, size: 32, align: 32)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !120, line: 36, baseType: !121)
!120 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !109, line: 45, baseType: !122)
!122 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !116, file: !115, line: 47, baseType: !94, size: 32, align: 32, offset: 32)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !116, file: !115, line: 48, baseType: !106, size: 64, align: 64, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !99, file: !4, line: 138, baseType: !126, size: 64, align: 64, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64, align: 64)
!127 = !DISubroutineType(types: !128)
!128 = !{!105, !89, !129, !108, !111, !112}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !99, file: !4, line: 143, baseType: !132, size: 64, align: 64, offset: 128)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64, align: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{!105, !89, !135, !137, !112}
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !109, line: 51, baseType: !136)
!136 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !99, file: !4, line: 147, baseType: !139, size: 64, align: 64, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!140 = !DISubroutineType(types: !141)
!141 = !{!105, !89, !112}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !99, file: !4, line: 149, baseType: !143, size: 64, align: 64, offset: 256)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!146, !89, !226}
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64, align: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !148)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !149)
!149 = !{!150, !152, !173, !202, !204, !208, !209, !210, !211, !219, !220, !221, !222}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !148, file: !16, line: 174, baseType: !151, size: 64, align: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !95, line: 77, baseType: !36)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !148, file: !16, line: 175, baseType: !153, size: 64, align: 64, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64, align: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !155)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !156)
!156 = !{!157, !161, !162}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !155, file: !16, line: 198, baseType: !158, size: 64, align: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64, align: 64)
!159 = !DISubroutineType(types: !160)
!160 = !{null, !151}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !155, file: !16, line: 199, baseType: !158, size: 64, align: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !155, file: !16, line: 200, baseType: !163, size: 64, align: 64, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64, align: 64)
!164 = !DISubroutineType(types: !165)
!165 = !{null, !151, !146, !166, !172}
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64, align: 64)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !168)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64, align: 64)
!169 = !DISubroutineType(types: !170)
!170 = !{!171, !151}
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !95, line: 50, baseType: !94)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, align: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !148, file: !16, line: 177, baseType: !174, size: 64, align: 64, offset: 128)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64, align: 64)
!175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !177)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !178)
!178 = !{!179, !184, !188, !192, !196, !197}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !177, file: !16, line: 216, baseType: !180, size: 64, align: 64)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64, align: 64)
!181 = !DISubroutineType(types: !182)
!182 = !{!171, !146, !183}
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !177, file: !16, line: 218, baseType: !185, size: 64, align: 64, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64, align: 64)
!186 = !DISubroutineType(types: !187)
!187 = !{!171, !146}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !177, file: !16, line: 219, baseType: !189, size: 64, align: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64, align: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!171, !146, !167, !151}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !177, file: !16, line: 222, baseType: !193, size: 64, align: 64, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64, align: 64)
!194 = !DISubroutineType(types: !195)
!195 = !{null, !146}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !177, file: !16, line: 226, baseType: !167, size: 64, align: 64, offset: 256)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !177, file: !16, line: 227, baseType: !198, size: 64, align: 64, offset: 320)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !199)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64, align: 64)
!200 = !DISubroutineType(types: !201)
!201 = !{null}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !148, file: !16, line: 178, baseType: !203, size: 32, align: 32, offset: 192)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !95, line: 55, baseType: !122)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !148, file: !16, line: 180, baseType: !205, size: 64, align: 64, offset: 256)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64, align: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !207)
!207 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !148, file: !16, line: 182, baseType: !94, size: 32, align: 32, offset: 320)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !148, file: !16, line: 183, baseType: !203, size: 32, align: 32, offset: 352)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !148, file: !16, line: 184, baseType: !203, size: 32, align: 32, offset: 384)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !148, file: !16, line: 186, baseType: !212, size: 64, align: 64, offset: 448)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64, align: 64)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !214, line: 37, baseType: !215)
!214 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !214, line: 39, size: 128, align: 64, elements: !216)
!216 = !{!217, !218}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !215, file: !214, line: 41, baseType: !151, size: 64, align: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !215, file: !214, line: 42, baseType: !212, size: 64, align: 64, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !148, file: !16, line: 188, baseType: !146, size: 64, align: 64, offset: 512)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !148, file: !16, line: 189, baseType: !146, size: 64, align: 64, offset: 576)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !148, file: !16, line: 191, baseType: !58, size: 64, align: 64, offset: 640)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !148, file: !16, line: 193, baseType: !223, size: 64, align: 64, offset: 704)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64, align: 64)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !225)
!225 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !99, file: !4, line: 151, baseType: !228, size: 64, align: 64, offset: 320)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64, align: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{null, !89}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !99, file: !4, line: 152, baseType: !232, size: 64, align: 64, offset: 384)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!105, !89, !235, !112}
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !99, file: !4, line: 155, baseType: !237, size: 64, align: 64, offset: 448)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64, align: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{!235, !89}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !91, file: !4, line: 103, baseType: !106, size: 64, align: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !91, file: !4, line: 104, baseType: !242, size: 64, align: 64, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !243, line: 77, baseType: !244)
!243 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64, align: 64)
!245 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !243, line: 77, flags: DIFlagFwdDecl)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !91, file: !4, line: 105, baseType: !242, size: 64, align: 64, offset: 256)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !91, file: !4, line: 106, baseType: !106, size: 64, align: 64, offset: 320)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !91, file: !4, line: 107, baseType: !203, size: 32, align: 32, offset: 384)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !91, file: !4, line: 109, baseType: !108, size: 64, align: 64, offset: 448)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !91, file: !4, line: 110, baseType: !251, size: 64, align: 64, offset: 512)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64, align: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !253, line: 39, baseType: !254)
!253 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !253, line: 41, size: 192, align: 64, elements: !255)
!255 = !{!256, !257, !258}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !254, file: !253, line: 43, baseType: !106, size: 64, align: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !254, file: !253, line: 44, baseType: !108, size: 64, align: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !254, file: !253, line: 45, baseType: !108, size: 64, align: 64, offset: 128)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !91, file: !4, line: 111, baseType: !251, size: 64, align: 64, offset: 576)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !91, file: !4, line: 112, baseType: !251, size: 64, align: 64, offset: 640)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !91, file: !4, line: 113, baseType: !262, size: 48, align: 8, offset: 704)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 48, align: 8, elements: !263)
!263 = !{!264}
!264 = !DISubrange(count: 6)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !91, file: !4, line: 117, baseType: !203, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !91, file: !4, line: 118, baseType: !203, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !91, file: !4, line: 119, baseType: !203, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !91, file: !4, line: 120, baseType: !203, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !91, file: !4, line: 121, baseType: !203, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !91, file: !4, line: 122, baseType: !203, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !91, file: !4, line: 124, baseType: !151, size: 64, align: 64, offset: 768)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !91, file: !4, line: 125, baseType: !151, size: 64, align: 64, offset: 832)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !51, file: !54, line: 38, baseType: !122, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !51, file: !54, line: 39, baseType: !122, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !51, file: !54, line: 40, baseType: !122, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !51, file: !54, line: 41, baseType: !122, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !51, file: !54, line: 42, baseType: !122, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !51, file: !54, line: 43, baseType: !122, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !51, file: !54, line: 44, baseType: !122, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !51, file: !54, line: 45, baseType: !122, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !51, file: !54, line: 46, baseType: !58, size: 64, align: 64, offset: 1792)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !51, file: !54, line: 47, baseType: !58, size: 64, align: 64, offset: 1856)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !51, file: !41, line: 27, baseType: !58, size: 64, align: 64, offset: 1920)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_nick", scope: !51, file: !41, line: 28, baseType: !58, size: 64, align: 64, offset: 1984)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !51, file: !41, line: 30, baseType: !45, size: 32, align: 32, offset: 2048)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_username", scope: !51, file: !41, line: 31, baseType: !58, size: 64, align: 64, offset: 2112)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !51, file: !41, line: 32, baseType: !58, size: 64, align: 64, offset: 2176)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !51, file: !41, line: 34, baseType: !45, size: 32, align: 32, offset: 2240)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !51, file: !41, line: 35, baseType: !45, size: 32, align: 32, offset: 2272)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !51, file: !41, line: 36, baseType: !45, size: 32, align: 32, offset: 2304)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks", scope: !51, file: !41, line: 38, baseType: !45, size: 32, align: 32, offset: 2336)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !51, file: !41, line: 38, baseType: !45, size: 32, align: 32, offset: 2368)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes", scope: !51, file: !41, line: 38, baseType: !45, size: 32, align: 32, offset: 2400)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois", scope: !51, file: !41, line: 38, baseType: !45, size: 32, align: 32, offset: 2432)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !40, file: !44, line: 9, baseType: !296, size: 64, align: 64, offset: 192)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !297, line: 75, baseType: !298)
!297 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !299, line: 139, baseType: !136)
!299 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!300 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !40, file: !44, line: 10, baseType: !296, size: 64, align: 64, offset: 256)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !40, file: !44, line: 12, baseType: !58, size: 64, align: 64, offset: 320)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !40, file: !44, line: 13, baseType: !58, size: 64, align: 64, offset: 384)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !40, file: !44, line: 15, baseType: !122, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !40, file: !44, line: 16, baseType: !122, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !40, file: !44, line: 17, baseType: !122, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !40, file: !44, line: 18, baseType: !122, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !40, file: !44, line: 19, baseType: !122, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !40, file: !44, line: 21, baseType: !309, size: 64, align: 64, offset: 512)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64, align: 64)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !73, line: 102, baseType: !311)
!311 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !73, line: 102, flags: DIFlagFwdDecl)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !40, file: !44, line: 22, baseType: !45, size: 32, align: 32, offset: 576)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !40, file: !44, line: 25, baseType: !314, size: 128, align: 64, offset: 640)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 128, align: 64, elements: !315)
!315 = !{!316}
!316 = !DISubrange(count: 2)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !40, file: !44, line: 26, baseType: !45, size: 32, align: 32, offset: 768)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !40, file: !44, line: 27, baseType: !45, size: 32, align: 32, offset: 800)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !40, file: !44, line: 29, baseType: !320, size: 64, align: 64, offset: 832)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64, align: 64)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !73, line: 103, baseType: !322)
!322 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !73, line: 103, flags: DIFlagFwdDecl)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !40, file: !44, line: 30, baseType: !324, size: 64, align: 64, offset: 896)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64, align: 64)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !326, line: 37, baseType: !327)
!326 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!327 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !326, line: 37, flags: DIFlagFwdDecl)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !40, file: !44, line: 32, baseType: !58, size: 64, align: 64, offset: 960)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !40, file: !44, line: 33, baseType: !58, size: 64, align: 64, offset: 1024)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !40, file: !44, line: 34, baseType: !58, size: 64, align: 64, offset: 1088)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !40, file: !44, line: 35, baseType: !122, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !40, file: !44, line: 36, baseType: !122, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !40, file: !44, line: 37, baseType: !122, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !40, file: !44, line: 38, baseType: !122, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !40, file: !44, line: 40, baseType: !336, size: 128, align: 64, offset: 1216)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !95, line: 504, baseType: !337)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !95, line: 506, size: 128, align: 64, elements: !338)
!338 = !{!339, !341}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !337, file: !95, line: 508, baseType: !340, size: 64, align: 64)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !95, line: 48, baseType: !136)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !337, file: !95, line: 509, baseType: !340, size: 64, align: 64, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !40, file: !44, line: 41, baseType: !296, size: 64, align: 64, offset: 1344)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !40, file: !44, line: 42, baseType: !45, size: 32, align: 32, offset: 1408)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !40, file: !44, line: 44, baseType: !212, size: 64, align: 64, offset: 1472)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !40, file: !44, line: 45, baseType: !212, size: 64, align: 64, offset: 1536)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !40, file: !44, line: 53, baseType: !347, size: 64, align: 64, offset: 1600)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64, align: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{null, !350, !438, !45}
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64, align: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !73, line: 107, baseType: !352)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !353, line: 30, size: 2240, align: 64, elements: !354)
!353 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!354 = !{!355, !356, !357, !358, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !434, !440, !444, !448, !453, !532, !539, !543}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !352, file: !44, line: 3, baseType: !45, size: 32, align: 32)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !352, file: !44, line: 4, baseType: !45, size: 32, align: 32, offset: 32)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !352, file: !44, line: 6, baseType: !45, size: 32, align: 32, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !352, file: !44, line: 8, baseType: !359, size: 64, align: 64, offset: 128)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64, align: 64)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !73, line: 113, baseType: !361)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !353, line: 25, size: 1920, align: 64, elements: !362)
!362 = !{!363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !361, file: !54, line: 3, baseType: !45, size: 32, align: 32)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !361, file: !54, line: 4, baseType: !45, size: 32, align: 32, offset: 32)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !361, file: !54, line: 6, baseType: !45, size: 32, align: 32, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !361, file: !54, line: 9, baseType: !58, size: 64, align: 64, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !361, file: !54, line: 10, baseType: !45, size: 32, align: 32, offset: 192)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !361, file: !54, line: 11, baseType: !58, size: 64, align: 64, offset: 256)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !361, file: !54, line: 11, baseType: !58, size: 64, align: 64, offset: 320)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !361, file: !54, line: 11, baseType: !58, size: 64, align: 64, offset: 384)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !361, file: !54, line: 13, baseType: !65, size: 16, align: 16, offset: 448)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !361, file: !54, line: 14, baseType: !58, size: 64, align: 64, offset: 512)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !361, file: !54, line: 15, baseType: !58, size: 64, align: 64, offset: 576)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !361, file: !54, line: 16, baseType: !45, size: 32, align: 32, offset: 640)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !361, file: !54, line: 17, baseType: !58, size: 64, align: 64, offset: 704)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !361, file: !54, line: 19, baseType: !71, size: 64, align: 64, offset: 768)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !361, file: !54, line: 19, baseType: !71, size: 64, align: 64, offset: 832)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !361, file: !54, line: 21, baseType: !58, size: 64, align: 64, offset: 896)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !361, file: !54, line: 22, baseType: !58, size: 64, align: 64, offset: 960)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !361, file: !54, line: 23, baseType: !58, size: 64, align: 64, offset: 1024)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !361, file: !54, line: 24, baseType: !58, size: 64, align: 64, offset: 1088)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !361, file: !54, line: 26, baseType: !58, size: 64, align: 64, offset: 1152)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !361, file: !54, line: 27, baseType: !58, size: 64, align: 64, offset: 1216)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !361, file: !54, line: 28, baseType: !58, size: 64, align: 64, offset: 1280)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !361, file: !54, line: 29, baseType: !58, size: 64, align: 64, offset: 1344)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !361, file: !54, line: 30, baseType: !58, size: 64, align: 64, offset: 1408)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !361, file: !54, line: 31, baseType: !58, size: 64, align: 64, offset: 1472)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !361, file: !54, line: 32, baseType: !58, size: 64, align: 64, offset: 1536)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !361, file: !54, line: 33, baseType: !58, size: 64, align: 64, offset: 1600)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !361, file: !54, line: 35, baseType: !89, size: 64, align: 64, offset: 1664)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !361, file: !54, line: 38, baseType: !122, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !361, file: !54, line: 39, baseType: !122, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !361, file: !54, line: 40, baseType: !122, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !361, file: !54, line: 41, baseType: !122, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !361, file: !54, line: 42, baseType: !122, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !361, file: !54, line: 43, baseType: !122, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !361, file: !54, line: 44, baseType: !122, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !361, file: !54, line: 45, baseType: !122, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !361, file: !54, line: 46, baseType: !58, size: 64, align: 64, offset: 1792)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !361, file: !54, line: 47, baseType: !58, size: 64, align: 64, offset: 1856)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !352, file: !44, line: 9, baseType: !296, size: 64, align: 64, offset: 192)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !352, file: !44, line: 10, baseType: !296, size: 64, align: 64, offset: 256)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !352, file: !44, line: 12, baseType: !58, size: 64, align: 64, offset: 320)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !352, file: !44, line: 13, baseType: !58, size: 64, align: 64, offset: 384)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !352, file: !44, line: 15, baseType: !122, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !352, file: !44, line: 16, baseType: !122, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !352, file: !44, line: 17, baseType: !122, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !352, file: !44, line: 18, baseType: !122, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !352, file: !44, line: 19, baseType: !122, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !352, file: !44, line: 21, baseType: !309, size: 64, align: 64, offset: 512)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !352, file: !44, line: 22, baseType: !45, size: 32, align: 32, offset: 576)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !352, file: !44, line: 25, baseType: !314, size: 128, align: 64, offset: 640)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !352, file: !44, line: 26, baseType: !45, size: 32, align: 32, offset: 768)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !352, file: !44, line: 27, baseType: !45, size: 32, align: 32, offset: 800)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !352, file: !44, line: 29, baseType: !320, size: 64, align: 64, offset: 832)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !352, file: !44, line: 30, baseType: !324, size: 64, align: 64, offset: 896)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !352, file: !44, line: 32, baseType: !58, size: 64, align: 64, offset: 960)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !352, file: !44, line: 33, baseType: !58, size: 64, align: 64, offset: 1024)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !352, file: !44, line: 34, baseType: !58, size: 64, align: 64, offset: 1088)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !352, file: !44, line: 35, baseType: !122, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !352, file: !44, line: 36, baseType: !122, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !352, file: !44, line: 37, baseType: !122, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !352, file: !44, line: 38, baseType: !122, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !352, file: !44, line: 40, baseType: !336, size: 128, align: 64, offset: 1216)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !352, file: !44, line: 41, baseType: !296, size: 64, align: 64, offset: 1344)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !352, file: !44, line: 42, baseType: !45, size: 32, align: 32, offset: 1408)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !352, file: !44, line: 44, baseType: !212, size: 64, align: 64, offset: 1472)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !352, file: !44, line: 45, baseType: !212, size: 64, align: 64, offset: 1536)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !352, file: !44, line: 53, baseType: !347, size: 64, align: 64, offset: 1600)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !352, file: !44, line: 55, baseType: !431, size: 64, align: 64, offset: 1664)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64, align: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{!45, !350, !59}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !352, file: !44, line: 57, baseType: !435, size: 64, align: 64, offset: 1728)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64, align: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{!45, !350, !438}
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64, align: 64)
!439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !352, file: !44, line: 60, baseType: !441, size: 64, align: 64, offset: 1792)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64, align: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{!438, !350}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !352, file: !44, line: 62, baseType: !445, size: 64, align: 64, offset: 1856)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64, align: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{null, !350, !438, !438, !45}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !352, file: !44, line: 65, baseType: !449, size: 64, align: 64, offset: 1920)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64, align: 64)
!450 = !DISubroutineType(types: !451)
!451 = !{!452, !350, !438, !438}
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !352, file: !44, line: 69, baseType: !454, size: 64, align: 64, offset: 1984)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64, align: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{!457, !350, !438}
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64, align: 64)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !73, line: 109, baseType: !459)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !460, line: 15, size: 1408, align: 64, elements: !461)
!460 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!461 = !{!462, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !480, !484, !486, !487, !488, !489, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !459, file: !463, line: 3, baseType: !45, size: 32, align: 32)
!463 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!464 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !459, file: !463, line: 4, baseType: !45, size: 32, align: 32, offset: 32)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !459, file: !463, line: 5, baseType: !324, size: 64, align: 64, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !459, file: !463, line: 7, baseType: !36, size: 64, align: 64, offset: 128)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !459, file: !463, line: 8, baseType: !350, size: 64, align: 64, offset: 192)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !459, file: !463, line: 9, baseType: !58, size: 64, align: 64, offset: 256)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !459, file: !463, line: 10, baseType: !58, size: 64, align: 64, offset: 320)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !459, file: !463, line: 11, baseType: !296, size: 64, align: 64, offset: 384)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !459, file: !463, line: 12, baseType: !45, size: 32, align: 32, offset: 448)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !459, file: !463, line: 13, baseType: !58, size: 64, align: 64, offset: 512)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !459, file: !463, line: 15, baseType: !474, size: 64, align: 64, offset: 576)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64, align: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{null, !477}
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64, align: 64)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !73, line: 108, baseType: !479)
!479 = !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !73, line: 108, flags: DIFlagFwdDecl)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !459, file: !463, line: 17, baseType: !481, size: 64, align: 64, offset: 640)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64, align: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!438, !477}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !459, file: !485, line: 5, baseType: !58, size: 64, align: 64, offset: 704)
!485 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!486 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !459, file: !485, line: 6, baseType: !58, size: 64, align: 64, offset: 768)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !459, file: !485, line: 7, baseType: !296, size: 64, align: 64, offset: 832)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !459, file: !485, line: 9, baseType: !324, size: 64, align: 64, offset: 896)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !459, file: !485, line: 10, baseType: !490, size: 64, align: 64, offset: 960)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64, align: 64)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !73, line: 111, baseType: !492)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !493, line: 13, size: 576, align: 64, elements: !494)
!493 = !DIFile(filename: "../../../src/core/nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!494 = !{!495, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !513, !514}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !492, file: !496, line: 3, baseType: !45, size: 32, align: 32)
!496 = !DIFile(filename: "../../../src/core/nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!497 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !492, file: !496, line: 4, baseType: !45, size: 32, align: 32, offset: 32)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !492, file: !496, line: 6, baseType: !296, size: 64, align: 64, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !492, file: !496, line: 8, baseType: !58, size: 64, align: 64, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !492, file: !496, line: 9, baseType: !58, size: 64, align: 64, offset: 192)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !492, file: !496, line: 10, baseType: !58, size: 64, align: 64, offset: 256)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !492, file: !496, line: 11, baseType: !45, size: 32, align: 32, offset: 320)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !492, file: !496, line: 14, baseType: !122, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !492, file: !496, line: 15, baseType: !122, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !492, file: !496, line: 18, baseType: !122, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !492, file: !496, line: 19, baseType: !122, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !492, file: !496, line: 20, baseType: !122, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !492, file: !496, line: 21, baseType: !122, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !492, file: !496, line: 22, baseType: !510, size: 64, align: 8, offset: 360)
!510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 64, align: 8, elements: !511)
!511 = !{!512}
!512 = !DISubrange(count: 8)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !492, file: !496, line: 26, baseType: !36, size: 64, align: 64, offset: 448)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !492, file: !496, line: 28, baseType: !490, size: 64, align: 64, offset: 512)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !459, file: !485, line: 12, baseType: !122, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !459, file: !485, line: 13, baseType: !58, size: 64, align: 64, offset: 1088)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !459, file: !485, line: 14, baseType: !45, size: 32, align: 32, offset: 1152)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !459, file: !485, line: 15, baseType: !58, size: 64, align: 64, offset: 1216)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !459, file: !485, line: 17, baseType: !122, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !459, file: !485, line: 18, baseType: !122, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !459, file: !485, line: 19, baseType: !122, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !459, file: !485, line: 20, baseType: !122, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !459, file: !485, line: 22, baseType: !122, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !459, file: !485, line: 23, baseType: !122, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !459, file: !485, line: 24, baseType: !122, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !459, file: !485, line: 25, baseType: !122, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !459, file: !485, line: 26, baseType: !122, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !459, file: !485, line: 31, baseType: !529, size: 64, align: 64, offset: 1344)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64, align: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{!58, !457}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !352, file: !44, line: 70, baseType: !533, size: 64, align: 64, offset: 2048)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64, align: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!536, !350, !438}
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64, align: 64)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !73, line: 110, baseType: !538)
!538 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !73, line: 110, flags: DIFlagFwdDecl)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !352, file: !44, line: 71, baseType: !540, size: 64, align: 64, offset: 2112)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64, align: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!45, !438, !438}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !352, file: !44, line: 73, baseType: !540, size: 64, align: 64, offset: 2176)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !40, file: !44, line: 55, baseType: !431, size: 64, align: 64, offset: 1664)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !40, file: !44, line: 57, baseType: !435, size: 64, align: 64, offset: 1728)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !40, file: !44, line: 60, baseType: !441, size: 64, align: 64, offset: 1792)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !40, file: !44, line: 62, baseType: !445, size: 64, align: 64, offset: 1856)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !40, file: !44, line: 65, baseType: !449, size: 64, align: 64, offset: 1920)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !40, file: !44, line: 69, baseType: !454, size: 64, align: 64, offset: 1984)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !40, file: !44, line: 70, baseType: !533, size: 64, align: 64, offset: 2048)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !40, file: !44, line: 71, baseType: !540, size: 64, align: 64, offset: 2112)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !40, file: !44, line: 73, baseType: !540, size: 64, align: 64, offset: 2176)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "redirects", scope: !40, file: !41, line: 46, baseType: !212, size: 64, align: 64, offset: 2240)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_queue", scope: !40, file: !41, line: 47, baseType: !212, size: 64, align: 64, offset: 2304)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_next", scope: !40, file: !41, line: 48, baseType: !556, size: 64, align: 64, offset: 2368)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64, align: 64)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "REDIRECT_REC", file: !39, line: 8, baseType: !558)
!558 = !DICompositeType(tag: DW_TAG_structure_type, name: "_REDIRECT_REC", file: !39, line: 8, flags: DIFlagFwdDecl)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_active", scope: !40, file: !41, line: 49, baseType: !212, size: 64, align: 64, offset: 2432)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "last_nick", scope: !40, file: !41, line: 51, baseType: !58, size: 64, align: 64, offset: 2496)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !40, file: !41, line: 53, baseType: !58, size: 64, align: 64, offset: 2560)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !40, file: !41, line: 54, baseType: !58, size: 64, align: 64, offset: 2624)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "wanted_usermode", scope: !40, file: !41, line: 55, baseType: !58, size: 64, align: 64, offset: 2688)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "userhost", scope: !40, file: !41, line: 56, baseType: !58, size: 64, align: 64, offset: 2752)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "channels_formed", scope: !40, file: !41, line: 57, baseType: !45, size: 32, align: 32, offset: 2816)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "whois_found", scope: !40, file: !41, line: 59, baseType: !122, size: 1, align: 32, offset: 2848, flags: DIFlagBitField, extraData: i64 2848)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "whowas_found", scope: !40, file: !41, line: 60, baseType: !122, size: 1, align: 32, offset: 2849, flags: DIFlagBitField, extraData: i64 2848)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "emode_known", scope: !40, file: !41, line: 62, baseType: !122, size: 1, align: 32, offset: 2850, flags: DIFlagBitField, extraData: i64 2848)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_mode", scope: !40, file: !41, line: 63, baseType: !122, size: 1, align: 32, offset: 2851, flags: DIFlagBitField, extraData: i64 2848)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_who", scope: !40, file: !41, line: 64, baseType: !122, size: 1, align: 32, offset: 2852, flags: DIFlagBitField, extraData: i64 2848)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "one_endofwho", scope: !40, file: !41, line: 65, baseType: !122, size: 1, align: 32, offset: 2853, flags: DIFlagBitField, extraData: i64 2848)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "disable_lag", scope: !40, file: !41, line: 66, baseType: !122, size: 1, align: 32, offset: 2854, flags: DIFlagBitField, extraData: i64 2848)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "nick_collision", scope: !40, file: !41, line: 67, baseType: !122, size: 1, align: 32, offset: 2855, flags: DIFlagBitField, extraData: i64 2848)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "motd_got", scope: !40, file: !41, line: 68, baseType: !122, size: 1, align: 32, offset: 2856, flags: DIFlagBitField, extraData: i64 2848)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "isupport_sent", scope: !40, file: !41, line: 69, baseType: !122, size: 1, align: 32, offset: 2857, flags: DIFlagBitField, extraData: i64 2848)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "cap_complete", scope: !40, file: !41, line: 70, baseType: !122, size: 1, align: 32, offset: 2858, flags: DIFlagBitField, extraData: i64 2848)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "cap_in_multiline", scope: !40, file: !41, line: 71, baseType: !122, size: 1, align: 32, offset: 2859, flags: DIFlagBitField, extraData: i64 2848)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_success", scope: !40, file: !41, line: 72, baseType: !122, size: 1, align: 32, offset: 2860, flags: DIFlagBitField, extraData: i64 2848)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks_in_cmd", scope: !40, file: !41, line: 74, baseType: !45, size: 32, align: 32, offset: 2880)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes_in_cmd", scope: !40, file: !41, line: 75, baseType: !45, size: 32, align: 32, offset: 2912)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois_in_cmd", scope: !40, file: !41, line: 76, baseType: !45, size: 32, align: 32, offset: 2944)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs_in_cmd", scope: !40, file: !41, line: 77, baseType: !45, size: 32, align: 32, offset: 2976)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "cap_supported", scope: !40, file: !41, line: 79, baseType: !324, size: 64, align: 64, offset: 3008)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "cap_active", scope: !40, file: !41, line: 80, baseType: !212, size: 64, align: 64, offset: 3072)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "cap_queue", scope: !40, file: !41, line: 81, baseType: !212, size: 64, align: 64, offset: 3136)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_buffer", scope: !40, file: !41, line: 83, baseType: !251, size: 64, align: 64, offset: 3200)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_timeout", scope: !40, file: !41, line: 84, baseType: !203, size: 32, align: 32, offset: 3264)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcount", scope: !40, file: !41, line: 87, baseType: !45, size: 32, align: 32, offset: 3296)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "cmdqueue", scope: !40, file: !41, line: 91, baseType: !212, size: 64, align: 64, offset: 3328)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "wait_cmd", scope: !40, file: !41, line: 92, baseType: !336, size: 128, align: 64, offset: 3392)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd", scope: !40, file: !41, line: 93, baseType: !336, size: 128, align: 64, offset: 3520)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !40, file: !41, line: 95, baseType: !45, size: 32, align: 32, offset: 3648)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !40, file: !41, line: 96, baseType: !45, size: 32, align: 32, offset: 3680)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !40, file: !41, line: 97, baseType: !45, size: 32, align: 32, offset: 3712)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "idles", scope: !40, file: !41, line: 100, baseType: !212, size: 64, align: 64, offset: 3776)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "ctcpqueue", scope: !40, file: !41, line: 103, baseType: !212, size: 64, align: 64, offset: 3840)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "knockoutlist", scope: !40, file: !41, line: 106, baseType: !212, size: 64, align: 64, offset: 3904)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "splits", scope: !40, file: !41, line: 108, baseType: !324, size: 64, align: 64, offset: 3968)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "split_servers", scope: !40, file: !41, line: 109, baseType: !212, size: 64, align: 64, offset: 4032)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "rejoin_channels", scope: !40, file: !41, line: 111, baseType: !212, size: 64, align: 64, offset: 4096)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "chanqueries", scope: !40, file: !41, line: 114, baseType: !36, size: 64, align: 64, offset: 4160)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "isupport", scope: !40, file: !41, line: 116, baseType: !324, size: 64, align: 64, offset: 4224)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !40, file: !41, line: 117, baseType: !604, size: 32768, align: 64, offset: 4288)
!604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !605, size: 32768, align: 64, elements: !654)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "modes_type", file: !606, line: 10, size: 128, align: 64, elements: !607)
!606 = !DIFile(filename: "modes.h", directory: "/home/lichi/Desktop/irssi/task1")
!607 = !{!608, !653}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !605, file: !606, line: 11, baseType: !609, size: 64, align: 64)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64, align: 64)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_func_t", file: !606, line: 7, baseType: !611)
!611 = !DISubroutineType(types: !612)
!612 = !{null, !613, !438, !59, !59, !58, !251}
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64, align: 64)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_CHANNEL_REC", file: !39, line: 7, baseType: !615)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_CHANNEL_REC", file: !616, line: 15, size: 1600, align: 64, elements: !617)
!616 = !DIFile(filename: "irc-channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!617 = !{!618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !615, file: !463, line: 3, baseType: !45, size: 32, align: 32)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !615, file: !463, line: 4, baseType: !45, size: 32, align: 32, offset: 32)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !615, file: !463, line: 5, baseType: !324, size: 64, align: 64, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !615, file: !463, line: 7, baseType: !36, size: 64, align: 64, offset: 128)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !615, file: !463, line: 8, baseType: !37, size: 64, align: 64, offset: 192)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !615, file: !463, line: 9, baseType: !58, size: 64, align: 64, offset: 256)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !615, file: !463, line: 10, baseType: !58, size: 64, align: 64, offset: 320)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !615, file: !463, line: 11, baseType: !296, size: 64, align: 64, offset: 384)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !615, file: !463, line: 12, baseType: !45, size: 32, align: 32, offset: 448)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !615, file: !463, line: 13, baseType: !58, size: 64, align: 64, offset: 512)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !615, file: !463, line: 15, baseType: !474, size: 64, align: 64, offset: 576)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !615, file: !463, line: 17, baseType: !481, size: 64, align: 64, offset: 640)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !615, file: !485, line: 5, baseType: !58, size: 64, align: 64, offset: 704)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !615, file: !485, line: 6, baseType: !58, size: 64, align: 64, offset: 768)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !615, file: !485, line: 7, baseType: !296, size: 64, align: 64, offset: 832)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !615, file: !485, line: 9, baseType: !324, size: 64, align: 64, offset: 896)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !615, file: !485, line: 10, baseType: !490, size: 64, align: 64, offset: 960)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !615, file: !485, line: 12, baseType: !122, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !615, file: !485, line: 13, baseType: !58, size: 64, align: 64, offset: 1088)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !615, file: !485, line: 14, baseType: !45, size: 32, align: 32, offset: 1152)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !615, file: !485, line: 15, baseType: !58, size: 64, align: 64, offset: 1216)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !615, file: !485, line: 17, baseType: !122, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !615, file: !485, line: 18, baseType: !122, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !615, file: !485, line: 19, baseType: !122, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !615, file: !485, line: 20, baseType: !122, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !615, file: !485, line: 22, baseType: !122, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !615, file: !485, line: 23, baseType: !122, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !615, file: !485, line: 24, baseType: !122, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !615, file: !485, line: 25, baseType: !122, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !615, file: !485, line: 26, baseType: !122, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !615, file: !485, line: 31, baseType: !529, size: 64, align: 64, offset: 1344)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "banlist", scope: !615, file: !616, line: 18, baseType: !212, size: 64, align: 64, offset: 1408)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "massjoin_start", scope: !615, file: !616, line: 20, baseType: !296, size: 64, align: 64, offset: 1472)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "massjoins", scope: !615, file: !616, line: 21, baseType: !45, size: 32, align: 32, offset: 1536)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "last_massjoins", scope: !615, file: !616, line: 22, baseType: !45, size: 32, align: 32, offset: 1568)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !605, file: !606, line: 12, baseType: !59, size: 8, align: 8, offset: 64)
!654 = !{!655}
!655 = !DISubrange(count: 256)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !40, file: !41, line: 118, baseType: !657, size: 2048, align: 8, offset: 37056)
!657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 2048, align: 8, elements: !654)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "nick_comp_func", scope: !40, file: !41, line: 120, baseType: !540, size: 64, align: 64, offset: 39104)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !660, line: 9, baseType: !661)
!660 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64, align: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{null, !664, !664, !664, !664, !664, !664}
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64, align: 64)
!665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!666 = !{i32 2, !"Dwarf Version", i32 4}
!667 = !{i32 2, !"Debug Info Version", i32 3}
!668 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!669 = distinct !DISubprogram(name: "irc_channel_create", scope: !670, file: !670, line: 47, type: !671, isLocal: false, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !673)
!670 = !DIFile(filename: "irc-channels.c", directory: "/home/lichi/Desktop/irssi/task1")
!671 = !DISubroutineType(types: !672)
!672 = !{!613, !37, !438, !438, !45}
!673 = !{}
!674 = !DILocalVariable(name: "server", arg: 1, scope: !669, file: !670, line: 47, type: !37)
!675 = !DIExpression()
!676 = !DILocation(line: 47, column: 53, scope: !669)
!677 = !DILocalVariable(name: "name", arg: 2, scope: !669, file: !670, line: 47, type: !438)
!678 = !DILocation(line: 47, column: 73, scope: !669)
!679 = !DILocalVariable(name: "visible_name", arg: 3, scope: !669, file: !670, line: 48, type: !438)
!680 = !DILocation(line: 48, column: 21, scope: !669)
!681 = !DILocalVariable(name: "automatic", arg: 4, scope: !669, file: !670, line: 48, type: !45)
!682 = !DILocation(line: 48, column: 39, scope: !669)
!683 = !DILocalVariable(name: "rec", scope: !669, file: !670, line: 50, type: !613)
!684 = !DILocation(line: 50, column: 19, scope: !669)
!685 = !DILocation(line: 52, column: 2, scope: !669)
!686 = distinct !{!686, !685}
!687 = !DILocation(line: 52, column: 10, scope: !688)
!688 = !DILexicalBlockFile(scope: !689, file: !670, discriminator: 1)
!689 = distinct !DILexicalBlock(scope: !690, file: !670, line: 52, column: 10)
!690 = distinct !DILexicalBlock(scope: !669, file: !670, line: 52, column: 4)
!691 = !DILocation(line: 52, column: 17, scope: !688)
!692 = !DILocation(line: 52, column: 1, scope: !688)
!693 = !DILocation(line: 52, column: 84, scope: !694)
!694 = !DILexicalBlockFile(scope: !689, file: !670, discriminator: 2)
!695 = !DILocation(line: 52, column: 66, scope: !694)
!696 = !DILocation(line: 52, column: 51, scope: !694)
!697 = !DILocation(line: 52, column: 50, scope: !694)
!698 = !DILocation(line: 52, column: 25, scope: !699)
!699 = !DILexicalBlockFile(scope: !694, file: !670, discriminator: 8)
!700 = !DILocation(line: 52, column: 6, scope: !694)
!701 = !DILocation(line: 52, column: 10, scope: !694)
!702 = !DILocation(line: 52, column: 5, scope: !703)
!703 = !DILexicalBlockFile(scope: !689, file: !670, discriminator: 3)
!704 = !DILocation(line: 52, column: 10, scope: !705)
!705 = !DILexicalBlockFile(scope: !690, file: !670, discriminator: 4)
!706 = !DILocation(line: 52, column: 30, scope: !707)
!707 = !DILexicalBlockFile(scope: !708, file: !670, discriminator: 5)
!708 = distinct !DILexicalBlock(scope: !689, file: !670, line: 52, column: 28)
!709 = !DILocation(line: 52, column: 39, scope: !710)
!710 = !DILexicalBlockFile(scope: !711, file: !670, discriminator: 6)
!711 = distinct !DILexicalBlock(scope: !689, file: !670, line: 52, column: 37)
!712 = !DILocation(line: 52, column: 151, scope: !710)
!713 = !DILocation(line: 52, column: 7, scope: !714)
!714 = !DILexicalBlockFile(scope: !690, file: !670, discriminator: 7)
!715 = !DILocation(line: 53, column: 2, scope: !669)
!716 = distinct !{!716, !715}
!717 = !DILocation(line: 53, column: 10, scope: !718)
!718 = !DILexicalBlockFile(scope: !719, file: !670, discriminator: 1)
!719 = distinct !DILexicalBlock(scope: !720, file: !670, line: 53, column: 10)
!720 = distinct !DILexicalBlock(scope: !669, file: !670, line: 53, column: 4)
!721 = !DILocation(line: 53, column: 15, scope: !718)
!722 = !DILocation(line: 53, column: 5, scope: !723)
!723 = !DILexicalBlockFile(scope: !724, file: !670, discriminator: 2)
!724 = distinct !DILexicalBlock(scope: !719, file: !670, line: 53, column: 3)
!725 = !DILocation(line: 53, column: 14, scope: !726)
!726 = !DILexicalBlockFile(scope: !727, file: !670, discriminator: 3)
!727 = distinct !DILexicalBlock(scope: !719, file: !670, line: 53, column: 12)
!728 = !DILocation(line: 53, column: 99, scope: !726)
!729 = !DILocation(line: 53, column: 7, scope: !730)
!730 = !DILexicalBlockFile(scope: !720, file: !670, discriminator: 4)
!731 = !DILocation(line: 55, column: 29, scope: !669)
!732 = !DILocation(line: 55, column: 9, scope: !669)
!733 = !DILocation(line: 55, column: 6, scope: !669)
!734 = !DILocation(line: 56, column: 7, scope: !735)
!735 = distinct !DILexicalBlock(scope: !669, file: !670, line: 56, column: 6)
!736 = !DILocation(line: 56, column: 6, scope: !735)
!737 = !DILocation(line: 56, column: 12, scope: !735)
!738 = !DILocation(line: 56, column: 6, scope: !669)
!739 = !DILocation(line: 56, column: 20, scope: !740)
!740 = !DILexicalBlockFile(scope: !735, file: !670, discriminator: 1)
!741 = !DILocation(line: 56, column: 25, scope: !740)
!742 = !DILocation(line: 56, column: 34, scope: !740)
!743 = !DILocation(line: 58, column: 31, scope: !669)
!744 = !DILocation(line: 58, column: 15, scope: !669)
!745 = !DILocation(line: 58, column: 51, scope: !669)
!746 = !DILocation(line: 58, column: 36, scope: !669)
!747 = !DILocation(line: 59, column: 8, scope: !669)
!748 = !DILocation(line: 59, column: 14, scope: !669)
!749 = !DILocation(line: 59, column: 28, scope: !669)
!750 = !DILocation(line: 58, column: 2, scope: !669)
!751 = !DILocation(line: 60, column: 9, scope: !669)
!752 = !DILocation(line: 60, column: 2, scope: !669)
!753 = !DILocation(line: 61, column: 1, scope: !669)
!754 = distinct !DISubprogram(name: "irc_channels_init", scope: !670, file: !670, line: 244, type: !200, isLocal: false, isDefinition: true, scopeLine: 245, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !673)
!755 = !DILocation(line: 246, column: 2, scope: !754)
!756 = !DILocation(line: 247, column: 2, scope: !754)
!757 = !DILocation(line: 248, column: 2, scope: !754)
!758 = !DILocation(line: 250, column: 2, scope: !754)
!759 = !DILocation(line: 251, column: 2, scope: !754)
!760 = !DILocation(line: 252, column: 9, scope: !754)
!761 = !DILocation(line: 253, column: 2, scope: !754)
!762 = !DILocation(line: 255, column: 2, scope: !754)
!763 = !DILocation(line: 256, column: 9, scope: !754)
!764 = !DILocation(line: 257, column: 2, scope: !754)
!765 = !DILocation(line: 258, column: 2, scope: !754)
!766 = !DILocation(line: 259, column: 2, scope: !754)
!767 = !DILocation(line: 260, column: 1, scope: !754)
!768 = distinct !DISubprogram(name: "sig_server_connected", scope: !670, file: !670, line: 208, type: !769, isLocal: true, isDefinition: true, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !673)
!769 = !DISubroutineType(types: !770)
!770 = !{null, !350}
!771 = !DILocalVariable(name: "server", arg: 1, scope: !768, file: !670, line: 208, type: !350)
!772 = !DILocation(line: 208, column: 46, scope: !768)
!773 = !DILocation(line: 210, column: 87, scope: !774)
!774 = distinct !DILexicalBlock(scope: !768, file: !670, line: 210, column: 6)
!775 = !DILocation(line: 210, column: 69, scope: !774)
!776 = !DILocation(line: 210, column: 54, scope: !774)
!777 = !DILocation(line: 210, column: 53, scope: !774)
!778 = !DILocation(line: 210, column: 28, scope: !779)
!779 = !DILexicalBlockFile(scope: !774, file: !670, discriminator: 3)
!780 = !DILocation(line: 210, column: 9, scope: !774)
!781 = !DILocation(line: 210, column: 6, scope: !768)
!782 = !DILocation(line: 210, column: 8, scope: !783)
!783 = !DILexicalBlockFile(scope: !774, file: !670, discriminator: 1)
!784 = !DILocation(line: 210, column: 6, scope: !785)
!785 = !DILexicalBlockFile(scope: !768, file: !670, discriminator: 2)
!786 = !DILocation(line: 211, column: 3, scope: !774)
!787 = !DILocation(line: 213, column: 2, scope: !768)
!788 = !DILocation(line: 213, column: 10, scope: !768)
!789 = !DILocation(line: 213, column: 28, scope: !768)
!790 = !DILocation(line: 214, column: 2, scope: !768)
!791 = !DILocation(line: 214, column: 10, scope: !768)
!792 = !DILocation(line: 214, column: 24, scope: !768)
!793 = !DILocation(line: 216, column: 1, scope: !768)
!794 = !DILocation(line: 216, column: 1, scope: !795)
!795 = !DILexicalBlockFile(scope: !768, file: !670, discriminator: 1)
!796 = distinct !DISubprogram(name: "sig_channel_created", scope: !670, file: !670, line: 226, type: !797, isLocal: true, isDefinition: true, scopeLine: 227, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !673)
!797 = !DISubroutineType(types: !798)
!798 = !{null, !613}
!799 = !DILocalVariable(name: "channel", arg: 1, scope: !796, file: !670, line: 226, type: !613)
!800 = !DILocation(line: 226, column: 50, scope: !796)
!801 = !DILocation(line: 228, column: 95, scope: !802)
!802 = distinct !DILexicalBlock(scope: !796, file: !670, line: 228, column: 6)
!803 = !DILocation(line: 228, column: 70, scope: !802)
!804 = !DILocation(line: 228, column: 54, scope: !802)
!805 = !DILocation(line: 228, column: 53, scope: !802)
!806 = !DILocation(line: 228, column: 28, scope: !807)
!807 = !DILexicalBlockFile(scope: !802, file: !670, discriminator: 3)
!808 = !DILocation(line: 228, column: 8, scope: !802)
!809 = !DILocation(line: 228, column: 6, scope: !796)
!810 = !DILocation(line: 228, column: 7, scope: !811)
!811 = !DILexicalBlockFile(scope: !802, file: !670, discriminator: 1)
!812 = !DILocation(line: 228, column: 6, scope: !813)
!813 = !DILexicalBlockFile(scope: !796, file: !670, discriminator: 2)
!814 = !DILocation(line: 229, column: 17, scope: !802)
!815 = !DILocation(line: 229, column: 26, scope: !802)
!816 = !DILocation(line: 229, column: 40, scope: !802)
!817 = !DILocation(line: 230, column: 1, scope: !796)
!818 = distinct !DISubprogram(name: "sig_channel_destroyed", scope: !670, file: !670, line: 232, type: !797, isLocal: true, isDefinition: true, scopeLine: 233, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !673)
!819 = !DILocalVariable(name: "channel", arg: 1, scope: !818, file: !670, line: 232, type: !613)
!820 = !DILocation(line: 232, column: 52, scope: !818)
!821 = !DILocation(line: 234, column: 96, scope: !822)
!822 = distinct !DILexicalBlock(scope: !818, file: !670, line: 234, column: 6)
!823 = !DILocation(line: 234, column: 71, scope: !822)
!824 = !DILocation(line: 234, column: 55, scope: !822)
!825 = !DILocation(line: 234, column: 54, scope: !822)
!826 = !DILocation(line: 234, column: 29, scope: !827)
!827 = !DILexicalBlockFile(scope: !822, file: !670, discriminator: 3)
!828 = !DILocation(line: 234, column: 9, scope: !822)
!829 = !DILocation(line: 234, column: 6, scope: !818)
!830 = !DILocation(line: 234, column: 8, scope: !831)
!831 = !DILexicalBlockFile(scope: !822, file: !670, discriminator: 1)
!832 = !DILocation(line: 234, column: 6, scope: !833)
!833 = !DILexicalBlockFile(scope: !818, file: !670, discriminator: 2)
!834 = !DILocation(line: 235, column: 17, scope: !822)
!835 = !DILocation(line: 237, column: 7, scope: !836)
!836 = distinct !DILexicalBlock(scope: !818, file: !670, line: 237, column: 6)
!837 = !DILocation(line: 237, column: 16, scope: !836)
!838 = !DILocation(line: 237, column: 24, scope: !836)
!839 = !DILocation(line: 237, column: 37, scope: !836)
!840 = !DILocation(line: 237, column: 41, scope: !841)
!841 = !DILexicalBlockFile(scope: !836, file: !670, discriminator: 1)
!842 = !DILocation(line: 237, column: 50, scope: !841)
!843 = !DILocation(line: 237, column: 55, scope: !841)
!844 = !DILocation(line: 237, column: 59, scope: !845)
!845 = !DILexicalBlockFile(scope: !836, file: !670, discriminator: 2)
!846 = !DILocation(line: 237, column: 68, scope: !845)
!847 = !DILocation(line: 237, column: 6, scope: !845)
!848 = !DILocation(line: 240, column: 38, scope: !849)
!849 = distinct !DILexicalBlock(scope: !836, file: !670, line: 237, column: 76)
!850 = !DILocation(line: 240, column: 47, scope: !849)
!851 = !DILocation(line: 240, column: 55, scope: !849)
!852 = !DILocation(line: 240, column: 3, scope: !849)
!853 = !DILocation(line: 241, column: 2, scope: !849)
!854 = !DILocation(line: 242, column: 1, scope: !818)
!855 = distinct !DISubprogram(name: "irc_channels_deinit", scope: !670, file: !670, line: 262, type: !200, isLocal: false, isDefinition: true, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !673)
!856 = !DILocation(line: 264, column: 2, scope: !855)
!857 = !DILocation(line: 265, column: 2, scope: !855)
!858 = !DILocation(line: 266, column: 2, scope: !855)
!859 = !DILocation(line: 268, column: 2, scope: !855)
!860 = !DILocation(line: 269, column: 2, scope: !855)
!861 = !DILocation(line: 270, column: 9, scope: !855)
!862 = !DILocation(line: 271, column: 9, scope: !855)
!863 = !DILocation(line: 273, column: 2, scope: !855)
!864 = !DILocation(line: 274, column: 9, scope: !855)
!865 = !DILocation(line: 275, column: 2, scope: !855)
!866 = !DILocation(line: 276, column: 2, scope: !855)
!867 = !DILocation(line: 277, column: 2, scope: !855)
!868 = !DILocation(line: 278, column: 1, scope: !855)
!869 = distinct !DISubprogram(name: "irc_channel_find_server", scope: !670, file: !670, line: 173, type: !455, isLocal: true, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !673)
!870 = !DILocalVariable(name: "server", arg: 1, scope: !869, file: !670, line: 173, type: !350)
!871 = !DILocation(line: 173, column: 57, scope: !869)
!872 = !DILocalVariable(name: "channel", arg: 2, scope: !869, file: !670, line: 174, type: !438)
!873 = !DILocation(line: 174, column: 22, scope: !869)
!874 = !DILocalVariable(name: "tmp", scope: !869, file: !670, line: 176, type: !212)
!875 = !DILocation(line: 176, column: 10, scope: !869)
!876 = !DILocalVariable(name: "fmt_channel", scope: !869, file: !670, line: 177, type: !58)
!877 = !DILocation(line: 177, column: 8, scope: !869)
!878 = !DILocation(line: 181, column: 52, scope: !869)
!879 = !DILocation(line: 181, column: 34, scope: !869)
!880 = !DILocation(line: 181, column: 19, scope: !869)
!881 = !DILocation(line: 181, column: 30, scope: !869)
!882 = !DILocation(line: 181, column: 74, scope: !869)
!883 = !DILocation(line: 181, column: 56, scope: !884)
!884 = !DILexicalBlockFile(scope: !869, file: !670, discriminator: 4)
!885 = !DILocation(line: 181, column: 41, scope: !869)
!886 = !DILocation(line: 181, column: 29, scope: !869)
!887 = !DILocation(line: 181, column: 17, scope: !888)
!888 = !DILexicalBlockFile(scope: !869, file: !670, discriminator: 5)
!889 = !DILocation(line: 181, column: 17, scope: !869)
!890 = !DILocation(line: 181, column: 16, scope: !869)
!891 = !DILocation(line: 182, column: 15, scope: !869)
!892 = !DILocation(line: 182, column: 6, scope: !869)
!893 = !DILocation(line: 181, column: 16, scope: !894)
!894 = !DILexicalBlockFile(scope: !869, file: !670, discriminator: 1)
!895 = !DILocation(line: 183, column: 29, scope: !869)
!896 = !DILocation(line: 183, column: 6, scope: !869)
!897 = !DILocation(line: 181, column: 16, scope: !898)
!898 = !DILexicalBlockFile(scope: !869, file: !670, discriminator: 2)
!899 = !DILocation(line: 181, column: 16, scope: !900)
!900 = !DILexicalBlockFile(scope: !869, file: !670, discriminator: 3)
!901 = !DILocation(line: 181, column: 14, scope: !900)
!902 = !DILocation(line: 185, column: 13, scope: !903)
!903 = distinct !DILexicalBlock(scope: !869, file: !670, line: 185, column: 2)
!904 = !DILocation(line: 185, column: 21, scope: !903)
!905 = !DILocation(line: 185, column: 11, scope: !903)
!906 = !DILocation(line: 185, column: 7, scope: !903)
!907 = !DILocation(line: 185, column: 31, scope: !908)
!908 = !DILexicalBlockFile(scope: !909, file: !670, discriminator: 1)
!909 = distinct !DILexicalBlock(scope: !903, file: !670, line: 185, column: 2)
!910 = !DILocation(line: 185, column: 35, scope: !908)
!911 = !DILocation(line: 185, column: 2, scope: !908)
!912 = !DILocalVariable(name: "rec", scope: !913, file: !670, line: 186, type: !457)
!913 = distinct !DILexicalBlock(scope: !909, file: !670, line: 185, column: 60)
!914 = !DILocation(line: 186, column: 16, scope: !913)
!915 = !DILocation(line: 186, column: 22, scope: !913)
!916 = !DILocation(line: 186, column: 27, scope: !913)
!917 = !DILocation(line: 188, column: 7, scope: !918)
!918 = distinct !DILexicalBlock(scope: !913, file: !670, line: 188, column: 7)
!919 = !DILocation(line: 188, column: 12, scope: !918)
!920 = !DILocation(line: 188, column: 25, scope: !918)
!921 = !DILocation(line: 188, column: 33, scope: !918)
!922 = !DILocation(line: 188, column: 22, scope: !918)
!923 = !DILocation(line: 188, column: 7, scope: !913)
!924 = !DILocation(line: 189, column: 25, scope: !918)
!925 = !DILocation(line: 192, column: 86, scope: !926)
!926 = distinct !DILexicalBlock(scope: !913, file: !670, line: 192, column: 7)
!927 = !DILocation(line: 192, column: 68, scope: !926)
!928 = !DILocation(line: 192, column: 53, scope: !926)
!929 = !DILocation(line: 192, column: 52, scope: !926)
!930 = !DILocation(line: 192, column: 27, scope: !931)
!931 = !DILexicalBlockFile(scope: !926, file: !670, discriminator: 1)
!932 = !DILocation(line: 192, column: 8, scope: !926)
!933 = !DILocation(line: 192, column: 17, scope: !926)
!934 = !DILocation(line: 192, column: 32, scope: !926)
!935 = !DILocation(line: 192, column: 45, scope: !926)
!936 = !DILocation(line: 192, column: 50, scope: !926)
!937 = !DILocation(line: 192, column: 7, scope: !938)
!938 = !DILexicalBlockFile(scope: !926, file: !670, discriminator: 2)
!939 = !DILocation(line: 192, column: 56, scope: !926)
!940 = !DILocation(line: 192, column: 7, scope: !913)
!941 = !DILocation(line: 193, column: 11, scope: !942)
!942 = distinct !DILexicalBlock(scope: !926, file: !670, line: 192, column: 62)
!943 = !DILocation(line: 193, column: 4, scope: !942)
!944 = !DILocation(line: 194, column: 11, scope: !942)
!945 = !DILocation(line: 194, column: 4, scope: !942)
!946 = !DILocation(line: 197, column: 86, scope: !947)
!947 = distinct !DILexicalBlock(scope: !913, file: !670, line: 197, column: 7)
!948 = !DILocation(line: 197, column: 68, scope: !947)
!949 = !DILocation(line: 197, column: 53, scope: !947)
!950 = !DILocation(line: 197, column: 52, scope: !947)
!951 = !DILocation(line: 197, column: 27, scope: !952)
!952 = !DILexicalBlockFile(scope: !947, file: !670, discriminator: 1)
!953 = !DILocation(line: 197, column: 8, scope: !947)
!954 = !DILocation(line: 197, column: 17, scope: !947)
!955 = !DILocation(line: 197, column: 32, scope: !947)
!956 = !DILocation(line: 197, column: 45, scope: !947)
!957 = !DILocation(line: 197, column: 50, scope: !947)
!958 = !DILocation(line: 197, column: 7, scope: !959)
!959 = !DILexicalBlockFile(scope: !947, file: !670, discriminator: 2)
!960 = !DILocation(line: 197, column: 64, scope: !947)
!961 = !DILocation(line: 197, column: 7, scope: !913)
!962 = !DILocation(line: 198, column: 11, scope: !963)
!963 = distinct !DILexicalBlock(scope: !947, file: !670, line: 197, column: 70)
!964 = !DILocation(line: 198, column: 4, scope: !963)
!965 = !DILocation(line: 199, column: 11, scope: !963)
!966 = !DILocation(line: 199, column: 4, scope: !963)
!967 = !DILocation(line: 201, column: 2, scope: !913)
!968 = !DILocation(line: 185, column: 49, scope: !969)
!969 = !DILexicalBlockFile(scope: !909, file: !670, discriminator: 2)
!970 = !DILocation(line: 185, column: 54, scope: !969)
!971 = !DILocation(line: 185, column: 47, scope: !969)
!972 = !DILocation(line: 185, column: 2, scope: !969)
!973 = distinct !{!973, !974}
!974 = !DILocation(line: 185, column: 2, scope: !869)
!975 = !DILocation(line: 203, column: 9, scope: !869)
!976 = !DILocation(line: 203, column: 2, scope: !869)
!977 = !DILocation(line: 205, column: 2, scope: !869)
!978 = !DILocation(line: 206, column: 1, scope: !869)
!979 = distinct !DISubprogram(name: "irc_channels_join", scope: !670, file: !670, line: 66, type: !980, isLocal: true, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !673)
!980 = !DISubroutineType(types: !981)
!981 = !{null, !37, !438, !45}
!982 = !DILocalVariable(name: "server", arg: 1, scope: !979, file: !670, line: 66, type: !37)
!983 = !DILocation(line: 66, column: 47, scope: !979)
!984 = !DILocalVariable(name: "data", arg: 2, scope: !979, file: !670, line: 66, type: !438)
!985 = !DILocation(line: 66, column: 67, scope: !979)
!986 = !DILocalVariable(name: "automatic", arg: 3, scope: !979, file: !670, line: 67, type: !45)
!987 = !DILocation(line: 67, column: 14, scope: !979)
!988 = !DILocalVariable(name: "schannel", scope: !979, file: !670, line: 69, type: !989)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64, align: 64)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_SETUP_REC", file: !73, line: 115, baseType: !991)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_SETUP_REC", file: !992, line: 12, size: 512, align: 64, elements: !993)
!992 = !DIFile(filename: "../../../src/core/channels-setup.h", directory: "/home/lichi/Desktop/irssi/task1")
!993 = !{!994, !996, !997, !998, !999, !1000, !1001, !1002, !1003}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !991, file: !995, line: 1, baseType: !45, size: 32, align: 32)
!995 = !DIFile(filename: "../../../src/core/channel-setup-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!996 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !991, file: !995, line: 2, baseType: !45, size: 32, align: 32, offset: 32)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !991, file: !995, line: 4, baseType: !58, size: 64, align: 64, offset: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !991, file: !995, line: 5, baseType: !58, size: 64, align: 64, offset: 128)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !991, file: !995, line: 6, baseType: !58, size: 64, align: 64, offset: 192)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "botmasks", scope: !991, file: !995, line: 8, baseType: !58, size: 64, align: 64, offset: 256)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "autosendcmd", scope: !991, file: !995, line: 9, baseType: !58, size: 64, align: 64, offset: 320)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "autojoin", scope: !991, file: !995, line: 11, baseType: !122, size: 1, align: 32, offset: 384, flags: DIFlagBitField, extraData: i64 384)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !991, file: !995, line: 12, baseType: !324, size: 64, align: 64, offset: 448)
!1004 = !DILocation(line: 69, column: 21, scope: !979)
!1005 = !DILocalVariable(name: "chanrec", scope: !979, file: !670, line: 70, type: !613)
!1006 = !DILocation(line: 70, column: 19, scope: !979)
!1007 = !DILocalVariable(name: "outchans", scope: !979, file: !670, line: 71, type: !251)
!1008 = !DILocation(line: 71, column: 11, scope: !979)
!1009 = !DILocalVariable(name: "outkeys", scope: !979, file: !670, line: 71, type: !251)
!1010 = !DILocation(line: 71, column: 22, scope: !979)
!1011 = !DILocalVariable(name: "channels", scope: !979, file: !670, line: 72, type: !58)
!1012 = !DILocation(line: 72, column: 8, scope: !979)
!1013 = !DILocalVariable(name: "keys", scope: !979, file: !670, line: 72, type: !58)
!1014 = !DILocation(line: 72, column: 19, scope: !979)
!1015 = !DILocalVariable(name: "key", scope: !979, file: !670, line: 72, type: !58)
!1016 = !DILocation(line: 72, column: 26, scope: !979)
!1017 = !DILocalVariable(name: "space", scope: !979, file: !670, line: 72, type: !58)
!1018 = !DILocation(line: 72, column: 32, scope: !979)
!1019 = !DILocalVariable(name: "chanlist", scope: !979, file: !670, line: 73, type: !452)
!1020 = !DILocation(line: 73, column: 9, scope: !979)
!1021 = !DILocalVariable(name: "keylist", scope: !979, file: !670, line: 73, type: !452)
!1022 = !DILocation(line: 73, column: 21, scope: !979)
!1023 = !DILocalVariable(name: "tmp", scope: !979, file: !670, line: 73, type: !452)
!1024 = !DILocation(line: 73, column: 32, scope: !979)
!1025 = !DILocalVariable(name: "tmpkey", scope: !979, file: !670, line: 73, type: !452)
!1026 = !DILocation(line: 73, column: 39, scope: !979)
!1027 = !DILocalVariable(name: "tmpstr", scope: !979, file: !670, line: 73, type: !452)
!1028 = !DILocation(line: 73, column: 49, scope: !979)
!1029 = !DILocalVariable(name: "channel", scope: !979, file: !670, line: 73, type: !58)
!1030 = !DILocation(line: 73, column: 58, scope: !979)
!1031 = !DILocalVariable(name: "channame", scope: !979, file: !670, line: 73, type: !58)
!1032 = !DILocation(line: 73, column: 68, scope: !979)
!1033 = !DILocalVariable(name: "free_arg", scope: !979, file: !670, line: 74, type: !36)
!1034 = !DILocation(line: 74, column: 8, scope: !979)
!1035 = !DILocalVariable(name: "use_keys", scope: !979, file: !670, line: 75, type: !45)
!1036 = !DILocation(line: 75, column: 6, scope: !979)
!1037 = !DILocalVariable(name: "cmdlen", scope: !979, file: !670, line: 75, type: !45)
!1038 = !DILocation(line: 75, column: 16, scope: !979)
!1039 = !DILocation(line: 77, column: 2, scope: !979)
!1040 = distinct !{!1040, !1039}
!1041 = !DILocation(line: 77, column: 10, scope: !1042)
!1042 = !DILexicalBlockFile(scope: !1043, file: !670, discriminator: 1)
!1043 = distinct !DILexicalBlock(scope: !1044, file: !670, line: 77, column: 10)
!1044 = distinct !DILexicalBlock(scope: !979, file: !670, line: 77, column: 4)
!1045 = !DILocation(line: 77, column: 15, scope: !1042)
!1046 = !DILocation(line: 77, column: 5, scope: !1047)
!1047 = !DILexicalBlockFile(scope: !1048, file: !670, discriminator: 2)
!1048 = distinct !DILexicalBlock(scope: !1043, file: !670, line: 77, column: 3)
!1049 = !DILocation(line: 77, column: 14, scope: !1050)
!1050 = !DILexicalBlockFile(scope: !1051, file: !670, discriminator: 3)
!1051 = distinct !DILexicalBlock(scope: !1043, file: !670, line: 77, column: 12)
!1052 = !DILocation(line: 77, column: 99, scope: !1050)
!1053 = !DILocation(line: 77, column: 110, scope: !1054)
!1054 = !DILexicalBlockFile(scope: !1044, file: !670, discriminator: 4)
!1055 = !DILocation(line: 78, column: 2, scope: !979)
!1056 = distinct !{!1056, !1055}
!1057 = !DILocation(line: 78, column: 90, scope: !1058)
!1058 = !DILexicalBlockFile(scope: !1059, file: !670, discriminator: 1)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !670, line: 78, column: 10)
!1060 = distinct !DILexicalBlock(scope: !979, file: !670, line: 78, column: 4)
!1061 = !DILocation(line: 78, column: 72, scope: !1058)
!1062 = !DILocation(line: 78, column: 57, scope: !1058)
!1063 = !DILocation(line: 78, column: 56, scope: !1058)
!1064 = !DILocation(line: 78, column: 31, scope: !1065)
!1065 = !DILexicalBlockFile(scope: !1058, file: !670, discriminator: 8)
!1066 = !DILocation(line: 78, column: 12, scope: !1058)
!1067 = !DILocation(line: 78, column: 27, scope: !1058)
!1068 = !DILocation(line: 78, column: 11, scope: !1069)
!1069 = !DILexicalBlockFile(scope: !1059, file: !670, discriminator: 2)
!1070 = !DILocation(line: 78, column: 27, scope: !1071)
!1071 = !DILexicalBlockFile(scope: !1059, file: !670, discriminator: 3)
!1072 = !DILocation(line: 78, column: 30, scope: !1073)
!1073 = !DILexicalBlockFile(scope: !1059, file: !670, discriminator: 4)
!1074 = !DILocation(line: 78, column: 38, scope: !1073)
!1075 = !DILocation(line: 78, column: 10, scope: !1073)
!1076 = !DILocation(line: 78, column: 51, scope: !1077)
!1077 = !DILexicalBlockFile(scope: !1078, file: !670, discriminator: 5)
!1078 = distinct !DILexicalBlock(scope: !1059, file: !670, line: 78, column: 49)
!1079 = !DILocation(line: 78, column: 60, scope: !1080)
!1080 = !DILexicalBlockFile(scope: !1081, file: !670, discriminator: 6)
!1081 = distinct !DILexicalBlock(scope: !1059, file: !670, line: 78, column: 58)
!1082 = !DILocation(line: 78, column: 175, scope: !1080)
!1083 = !DILocation(line: 78, column: 186, scope: !1084)
!1084 = !DILexicalBlockFile(scope: !1060, file: !670, discriminator: 7)
!1085 = !DILocation(line: 79, column: 7, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !979, file: !670, line: 79, column: 6)
!1087 = !DILocation(line: 79, column: 6, scope: !1086)
!1088 = !DILocation(line: 79, column: 12, scope: !1086)
!1089 = !DILocation(line: 79, column: 6, scope: !979)
!1090 = !DILocation(line: 79, column: 21, scope: !1091)
!1091 = !DILexicalBlockFile(scope: !1086, file: !670, discriminator: 1)
!1092 = !DILocation(line: 81, column: 22, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !979, file: !670, line: 81, column: 6)
!1094 = !DILocation(line: 81, column: 7, scope: !1093)
!1095 = !DILocation(line: 81, column: 6, scope: !979)
!1096 = !DILocation(line: 83, column: 3, scope: !1093)
!1097 = !DILocation(line: 86, column: 17, scope: !979)
!1098 = !DILocation(line: 86, column: 10, scope: !979)
!1099 = !DILocation(line: 86, column: 8, scope: !979)
!1100 = !DILocation(line: 87, column: 6, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !979, file: !670, line: 87, column: 6)
!1102 = !DILocation(line: 87, column: 12, scope: !1101)
!1103 = !DILocation(line: 87, column: 6, scope: !979)
!1104 = !DILocation(line: 88, column: 4, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1101, file: !670, line: 87, column: 20)
!1106 = !DILocation(line: 88, column: 10, scope: !1105)
!1107 = !DILocation(line: 89, column: 2, scope: !1105)
!1108 = !DILocation(line: 91, column: 31, scope: !979)
!1109 = !DILocation(line: 91, column: 20, scope: !979)
!1110 = !DILocation(line: 91, column: 18, scope: !979)
!1111 = !DILocation(line: 92, column: 23, scope: !979)
!1112 = !DILocation(line: 92, column: 12, scope: !979)
!1113 = !DILocation(line: 92, column: 10, scope: !979)
!1114 = !DILocation(line: 94, column: 13, scope: !979)
!1115 = !DILocation(line: 94, column: 11, scope: !979)
!1116 = !DILocation(line: 95, column: 12, scope: !979)
!1117 = !DILocation(line: 95, column: 10, scope: !979)
!1118 = !DILocation(line: 97, column: 14, scope: !979)
!1119 = !DILocation(line: 97, column: 13, scope: !979)
!1120 = !DILocation(line: 97, column: 19, scope: !979)
!1121 = !DILocation(line: 97, column: 11, scope: !979)
!1122 = !DILocation(line: 98, column: 11, scope: !979)
!1123 = !DILocation(line: 98, column: 9, scope: !979)
!1124 = !DILocation(line: 99, column: 8, scope: !979)
!1125 = !DILocation(line: 99, column: 6, scope: !979)
!1126 = !DILocation(line: 100, column: 2, scope: !979)
!1127 = !DILocation(line: 101, column: 8, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !670, line: 101, column: 7)
!1129 = distinct !DILexicalBlock(scope: !1130, file: !670, line: 100, column: 17)
!1130 = distinct !DILexicalBlock(scope: !1131, file: !670, line: 100, column: 2)
!1131 = distinct !DILexicalBlock(scope: !979, file: !670, line: 100, column: 2)
!1132 = !DILocation(line: 101, column: 7, scope: !1128)
!1133 = !DILocation(line: 101, column: 12, scope: !1128)
!1134 = !DILocation(line: 101, column: 7, scope: !1129)
!1135 = !DILocation(line: 102, column: 50, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1128, file: !670, line: 101, column: 21)
!1137 = !DILocation(line: 102, column: 32, scope: !1136)
!1138 = !DILocation(line: 102, column: 17, scope: !1136)
!1139 = !DILocation(line: 102, column: 28, scope: !1136)
!1140 = !DILocation(line: 102, column: 72, scope: !1136)
!1141 = !DILocation(line: 102, column: 54, scope: !1142)
!1142 = !DILexicalBlockFile(scope: !1136, file: !670, discriminator: 4)
!1143 = !DILocation(line: 102, column: 39, scope: !1136)
!1144 = !DILocation(line: 102, column: 27, scope: !1136)
!1145 = !DILocation(line: 102, column: 15, scope: !1146)
!1146 = !DILexicalBlockFile(scope: !1136, file: !670, discriminator: 5)
!1147 = !DILocation(line: 102, column: 15, scope: !1136)
!1148 = !DILocation(line: 102, column: 14, scope: !1136)
!1149 = !DILocation(line: 102, column: 46, scope: !1150)
!1150 = !DILexicalBlockFile(scope: !1136, file: !670, discriminator: 1)
!1151 = !DILocation(line: 102, column: 45, scope: !1150)
!1152 = !DILocation(line: 102, column: 36, scope: !1150)
!1153 = !DILocation(line: 102, column: 14, scope: !1150)
!1154 = !DILocation(line: 103, column: 28, scope: !1136)
!1155 = !DILocation(line: 103, column: 27, scope: !1136)
!1156 = !DILocation(line: 103, column: 4, scope: !1136)
!1157 = !DILocation(line: 102, column: 14, scope: !1158)
!1158 = !DILexicalBlockFile(scope: !1136, file: !670, discriminator: 2)
!1159 = !DILocation(line: 102, column: 14, scope: !1160)
!1160 = !DILexicalBlockFile(scope: !1136, file: !670, discriminator: 3)
!1161 = !DILocation(line: 102, column: 12, scope: !1160)
!1162 = !DILocation(line: 105, column: 149, scope: !1136)
!1163 = !DILocation(line: 105, column: 131, scope: !1136)
!1164 = !DILocation(line: 105, column: 116, scope: !1136)
!1165 = !DILocation(line: 105, column: 27, scope: !1136)
!1166 = !DILocation(line: 105, column: 102, scope: !1150)
!1167 = !DILocation(line: 105, column: 102, scope: !1136)
!1168 = !DILocation(line: 105, column: 77, scope: !1158)
!1169 = !DILocation(line: 105, column: 61, scope: !1136)
!1170 = !DILocation(line: 105, column: 60, scope: !1136)
!1171 = !DILocation(line: 105, column: 35, scope: !1160)
!1172 = !DILocation(line: 105, column: 15, scope: !1136)
!1173 = !DILocation(line: 105, column: 12, scope: !1136)
!1174 = !DILocation(line: 106, column: 8, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1136, file: !670, line: 106, column: 8)
!1176 = !DILocation(line: 106, column: 16, scope: !1175)
!1177 = !DILocation(line: 106, column: 8, scope: !1136)
!1178 = !DILocation(line: 107, column: 35, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1175, file: !670, line: 106, column: 24)
!1180 = !DILocation(line: 107, column: 44, scope: !1179)
!1181 = !DILocation(line: 107, column: 52, scope: !1179)
!1182 = !DILocation(line: 107, column: 61, scope: !1179)
!1183 = !DILocation(line: 107, column: 16, scope: !1179)
!1184 = !DILocation(line: 107, column: 14, scope: !1179)
!1185 = !DILocation(line: 109, column: 28, scope: !1179)
!1186 = !DILocation(line: 109, column: 45, scope: !1179)
!1187 = !DILocation(line: 109, column: 5, scope: !1179)
!1188 = !DILocation(line: 110, column: 10, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1179, file: !670, line: 110, column: 9)
!1190 = !DILocation(line: 110, column: 9, scope: !1189)
!1191 = !DILocation(line: 110, column: 17, scope: !1189)
!1192 = !DILocation(line: 110, column: 24, scope: !1189)
!1193 = !DILocation(line: 110, column: 29, scope: !1194)
!1194 = !DILexicalBlockFile(scope: !1189, file: !670, discriminator: 1)
!1195 = !DILocation(line: 110, column: 28, scope: !1194)
!1196 = !DILocation(line: 110, column: 27, scope: !1194)
!1197 = !DILocation(line: 110, column: 36, scope: !1194)
!1198 = !DILocation(line: 110, column: 9, scope: !1194)
!1199 = !DILocation(line: 111, column: 34, scope: !1189)
!1200 = !DILocation(line: 111, column: 33, scope: !1189)
!1201 = !DILocation(line: 111, column: 31, scope: !1189)
!1202 = !DILocation(line: 111, column: 27, scope: !1189)
!1203 = !DILocation(line: 112, column: 35, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1189, file: !670, line: 112, column: 35)
!1205 = !DILocation(line: 112, column: 44, scope: !1204)
!1206 = !DILocation(line: 112, column: 51, scope: !1204)
!1207 = !DILocation(line: 112, column: 54, scope: !1208)
!1208 = !DILexicalBlockFile(scope: !1204, file: !670, discriminator: 1)
!1209 = !DILocation(line: 112, column: 64, scope: !1208)
!1210 = !DILocation(line: 112, column: 73, scope: !1208)
!1211 = !DILocation(line: 112, column: 35, scope: !1208)
!1212 = !DILocation(line: 114, column: 43, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1204, file: !670, line: 112, column: 82)
!1214 = !DILocation(line: 115, column: 12, scope: !1213)
!1215 = !DILocation(line: 115, column: 22, scope: !1213)
!1216 = !DILocation(line: 115, column: 10, scope: !1213)
!1217 = !DILocation(line: 116, column: 5, scope: !1213)
!1218 = !DILocation(line: 116, column: 16, scope: !1208)
!1219 = !DILocation(line: 118, column: 28, scope: !1179)
!1220 = !DILocation(line: 118, column: 47, scope: !1179)
!1221 = !DILocation(line: 118, column: 52, scope: !1179)
!1222 = !DILocation(line: 118, column: 43, scope: !1179)
!1223 = !DILocation(line: 118, column: 48, scope: !1224)
!1224 = !DILexicalBlockFile(scope: !1179, file: !670, discriminator: 1)
!1225 = !DILocation(line: 118, column: 46, scope: !1224)
!1226 = !DILocation(line: 118, column: 53, scope: !1224)
!1227 = !DILocation(line: 118, column: 45, scope: !1224)
!1228 = !DILocation(line: 118, column: 45, scope: !1229)
!1229 = !DILexicalBlockFile(scope: !1179, file: !670, discriminator: 2)
!1230 = !DILocation(line: 118, column: 71, scope: !1231)
!1231 = !DILexicalBlockFile(scope: !1179, file: !670, discriminator: 3)
!1232 = !DILocation(line: 118, column: 45, scope: !1231)
!1233 = !DILocation(line: 118, column: 45, scope: !1234)
!1234 = !DILexicalBlockFile(scope: !1179, file: !670, discriminator: 4)
!1235 = !DILocation(line: 118, column: 5, scope: !1234)
!1236 = !DILocation(line: 119, column: 16, scope: !1179)
!1237 = !DILocation(line: 119, column: 27, scope: !1179)
!1238 = !DILocation(line: 119, column: 38, scope: !1179)
!1239 = !DILocation(line: 119, column: 45, scope: !1179)
!1240 = !DILocation(line: 120, column: 13, scope: !1179)
!1241 = !DILocation(line: 120, column: 24, scope: !1179)
!1242 = !DILocation(line: 119, column: 45, scope: !1224)
!1243 = !DILocation(line: 119, column: 24, scope: !1224)
!1244 = !DILocation(line: 119, column: 14, scope: !1224)
!1245 = !DILocation(line: 121, column: 34, scope: !1179)
!1246 = !DILocation(line: 121, column: 42, scope: !1179)
!1247 = !DILocation(line: 122, column: 13, scope: !1179)
!1248 = !DILocation(line: 121, column: 15, scope: !1179)
!1249 = !DILocation(line: 121, column: 13, scope: !1179)
!1250 = !DILocation(line: 123, column: 9, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1179, file: !670, line: 123, column: 9)
!1252 = !DILocation(line: 123, column: 13, scope: !1251)
!1253 = !DILocation(line: 123, column: 9, scope: !1179)
!1254 = !DILocation(line: 123, column: 45, scope: !1255)
!1255 = !DILexicalBlockFile(scope: !1251, file: !670, discriminator: 1)
!1256 = !DILocation(line: 123, column: 36, scope: !1255)
!1257 = !DILocation(line: 123, column: 21, scope: !1255)
!1258 = !DILocation(line: 123, column: 30, scope: !1255)
!1259 = !DILocation(line: 123, column: 34, scope: !1255)
!1260 = !DILocation(line: 124, column: 4, scope: !1179)
!1261 = !DILocation(line: 125, column: 11, scope: !1136)
!1262 = !DILocation(line: 125, column: 4, scope: !1136)
!1263 = !DILocation(line: 127, column: 9, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1136, file: !670, line: 127, column: 8)
!1265 = !DILocation(line: 127, column: 8, scope: !1264)
!1266 = !DILocation(line: 127, column: 16, scope: !1264)
!1267 = !DILocation(line: 127, column: 8, scope: !1136)
!1268 = !DILocation(line: 128, column: 32, scope: !1264)
!1269 = !DILocation(line: 128, column: 26, scope: !1264)
!1270 = !DILocation(line: 130, column: 13, scope: !1136)
!1271 = !DILocation(line: 130, column: 11, scope: !1136)
!1272 = !DILocation(line: 131, column: 10, scope: !1136)
!1273 = !DILocation(line: 132, column: 13, scope: !1136)
!1274 = !DILocation(line: 132, column: 23, scope: !1136)
!1275 = !DILocation(line: 132, column: 26, scope: !1136)
!1276 = !DILocation(line: 132, column: 11, scope: !1136)
!1277 = !DILocation(line: 134, column: 8, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1136, file: !670, line: 134, column: 8)
!1279 = !DILocation(line: 134, column: 8, scope: !1136)
!1280 = !DILocation(line: 135, column: 15, scope: !1278)
!1281 = !DILocation(line: 135, column: 24, scope: !1278)
!1282 = !DILocation(line: 135, column: 12, scope: !1278)
!1283 = !DILocation(line: 135, column: 5, scope: !1278)
!1284 = !DILocation(line: 136, column: 9, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1136, file: !670, line: 136, column: 8)
!1286 = !DILocation(line: 136, column: 8, scope: !1285)
!1287 = !DILocation(line: 136, column: 16, scope: !1285)
!1288 = !DILocation(line: 136, column: 8, scope: !1136)
!1289 = !DILocation(line: 137, column: 51, scope: !1285)
!1290 = !DILocation(line: 137, column: 33, scope: !1285)
!1291 = !DILocation(line: 137, column: 18, scope: !1285)
!1292 = !DILocation(line: 137, column: 29, scope: !1285)
!1293 = !DILocation(line: 137, column: 73, scope: !1285)
!1294 = !DILocation(line: 137, column: 55, scope: !1295)
!1295 = !DILexicalBlockFile(scope: !1285, file: !670, discriminator: 4)
!1296 = !DILocation(line: 137, column: 40, scope: !1285)
!1297 = !DILocation(line: 137, column: 28, scope: !1285)
!1298 = !DILocation(line: 137, column: 16, scope: !1299)
!1299 = !DILexicalBlockFile(scope: !1285, file: !670, discriminator: 5)
!1300 = !DILocation(line: 137, column: 16, scope: !1285)
!1301 = !DILocation(line: 137, column: 15, scope: !1285)
!1302 = !DILocation(line: 137, column: 48, scope: !1303)
!1303 = !DILexicalBlockFile(scope: !1285, file: !670, discriminator: 1)
!1304 = !DILocation(line: 137, column: 47, scope: !1303)
!1305 = !DILocation(line: 137, column: 40, scope: !1303)
!1306 = !DILocation(line: 137, column: 15, scope: !1303)
!1307 = !DILocation(line: 138, column: 16, scope: !1285)
!1308 = !DILocation(line: 138, column: 15, scope: !1285)
!1309 = !DILocation(line: 138, column: 8, scope: !1285)
!1310 = !DILocation(line: 138, column: 23, scope: !1285)
!1311 = !DILocation(line: 137, column: 15, scope: !1312)
!1312 = !DILexicalBlockFile(scope: !1285, file: !670, discriminator: 2)
!1313 = !DILocation(line: 137, column: 15, scope: !1314)
!1314 = !DILexicalBlockFile(scope: !1285, file: !670, discriminator: 3)
!1315 = !DILocation(line: 137, column: 12, scope: !1314)
!1316 = !DILocation(line: 137, column: 5, scope: !1314)
!1317 = !DILocation(line: 139, column: 9, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1136, file: !670, line: 139, column: 8)
!1319 = !DILocation(line: 139, column: 8, scope: !1318)
!1320 = !DILocation(line: 139, column: 16, scope: !1318)
!1321 = !DILocation(line: 139, column: 8, scope: !1136)
!1322 = !DILocation(line: 140, column: 23, scope: !1318)
!1323 = !DILocation(line: 140, column: 22, scope: !1318)
!1324 = !DILocation(line: 140, column: 15, scope: !1318)
!1325 = !DILocation(line: 140, column: 12, scope: !1318)
!1326 = !DILocation(line: 140, column: 5, scope: !1318)
!1327 = !DILocation(line: 145, column: 8, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1136, file: !670, line: 145, column: 8)
!1329 = !DILocation(line: 145, column: 15, scope: !1328)
!1330 = !DILocation(line: 145, column: 8, scope: !1136)
!1331 = !DILocation(line: 146, column: 5, scope: !1328)
!1332 = !DILocation(line: 147, column: 3, scope: !1136)
!1333 = !DILocation(line: 148, column: 7, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1129, file: !670, line: 148, column: 7)
!1335 = !DILocation(line: 148, column: 17, scope: !1334)
!1336 = !DILocation(line: 148, column: 21, scope: !1334)
!1337 = !DILocation(line: 148, column: 7, scope: !1129)
!1338 = !DILocation(line: 149, column: 22, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1334, file: !670, line: 148, column: 26)
!1340 = !DILocation(line: 149, column: 32, scope: !1339)
!1341 = !DILocation(line: 149, column: 42, scope: !1339)
!1342 = !DILocation(line: 149, column: 46, scope: !1339)
!1343 = !DILocation(line: 149, column: 4, scope: !1339)
!1344 = !DILocation(line: 150, column: 22, scope: !1339)
!1345 = !DILocation(line: 150, column: 31, scope: !1339)
!1346 = !DILocation(line: 150, column: 40, scope: !1339)
!1347 = !DILocation(line: 150, column: 44, scope: !1339)
!1348 = !DILocation(line: 150, column: 4, scope: !1339)
!1349 = !DILocation(line: 152, column: 8, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1339, file: !670, line: 152, column: 8)
!1351 = !DILocation(line: 152, column: 8, scope: !1339)
!1352 = !DILocation(line: 153, column: 98, scope: !1350)
!1353 = !DILocation(line: 153, column: 80, scope: !1350)
!1354 = !DILocation(line: 153, column: 65, scope: !1350)
!1355 = !DILocation(line: 153, column: 64, scope: !1350)
!1356 = !DILocation(line: 153, column: 39, scope: !1357)
!1357 = !DILexicalBlockFile(scope: !1350, file: !670, discriminator: 1)
!1358 = !DILocation(line: 153, column: 20, scope: !1350)
!1359 = !DILocation(line: 153, column: 43, scope: !1350)
!1360 = !DILocation(line: 153, column: 53, scope: !1350)
!1361 = !DILocation(line: 153, column: 58, scope: !1350)
!1362 = !DILocation(line: 153, column: 67, scope: !1350)
!1363 = !DILocation(line: 153, column: 5, scope: !1364)
!1364 = !DILexicalBlockFile(scope: !1350, file: !670, discriminator: 2)
!1365 = !DILocation(line: 153, column: 5, scope: !1350)
!1366 = !DILocation(line: 155, column: 98, scope: !1350)
!1367 = !DILocation(line: 155, column: 80, scope: !1350)
!1368 = !DILocation(line: 155, column: 65, scope: !1350)
!1369 = !DILocation(line: 155, column: 64, scope: !1350)
!1370 = !DILocation(line: 155, column: 39, scope: !1357)
!1371 = !DILocation(line: 155, column: 20, scope: !1350)
!1372 = !DILocation(line: 155, column: 40, scope: !1350)
!1373 = !DILocation(line: 155, column: 50, scope: !1350)
!1374 = !DILocation(line: 155, column: 5, scope: !1364)
!1375 = !DILocation(line: 156, column: 3, scope: !1339)
!1376 = !DILocation(line: 157, column: 10, scope: !1129)
!1377 = !DILocation(line: 158, column: 21, scope: !1129)
!1378 = !DILocation(line: 158, column: 3, scope: !1129)
!1379 = !DILocation(line: 159, column: 21, scope: !1129)
!1380 = !DILocation(line: 159, column: 3, scope: !1129)
!1381 = !DILocation(line: 160, column: 8, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1129, file: !670, line: 160, column: 7)
!1383 = !DILocation(line: 160, column: 7, scope: !1382)
!1384 = !DILocation(line: 160, column: 12, scope: !1382)
!1385 = !DILocation(line: 160, column: 19, scope: !1382)
!1386 = !DILocation(line: 160, column: 22, scope: !1387)
!1387 = !DILexicalBlockFile(scope: !1382, file: !670, discriminator: 1)
!1388 = !DILocation(line: 160, column: 29, scope: !1387)
!1389 = !DILocation(line: 160, column: 7, scope: !1387)
!1390 = !DILocation(line: 161, column: 4, scope: !1382)
!1391 = !DILocation(line: 162, column: 2, scope: !1129)
!1392 = !DILocation(line: 100, column: 13, scope: !1393)
!1393 = !DILexicalBlockFile(scope: !1130, file: !670, discriminator: 1)
!1394 = !DILocation(line: 100, column: 2, scope: !1393)
!1395 = distinct !{!1395, !1126}
!1396 = !DILocation(line: 163, column: 16, scope: !979)
!1397 = !DILocation(line: 163, column: 2, scope: !979)
!1398 = !DILocation(line: 164, column: 16, scope: !979)
!1399 = !DILocation(line: 164, column: 2, scope: !979)
!1400 = !DILocation(line: 166, column: 13, scope: !979)
!1401 = !DILocation(line: 166, column: 2, scope: !979)
!1402 = !DILocation(line: 167, column: 13, scope: !979)
!1403 = !DILocation(line: 167, column: 2, scope: !979)
!1404 = !DILocation(line: 169, column: 18, scope: !979)
!1405 = !DILocation(line: 169, column: 2, scope: !979)
!1406 = !DILocation(line: 170, column: 1, scope: !979)
!1407 = !DILocation(line: 170, column: 1, scope: !1408)
!1408 = !DILexicalBlockFile(scope: !979, file: !670, discriminator: 1)
!1409 = distinct !DISubprogram(name: "irc_get_join_data", scope: !670, file: !670, line: 218, type: !530, isLocal: true, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !673)
!1410 = !DILocalVariable(name: "channel", arg: 1, scope: !1409, file: !670, line: 218, type: !457)
!1411 = !DILocation(line: 218, column: 45, scope: !1409)
!1412 = !DILocalVariable(name: "irc_channel", scope: !1409, file: !670, line: 220, type: !613)
!1413 = !DILocation(line: 220, column: 19, scope: !1409)
!1414 = !DILocation(line: 220, column: 53, scope: !1409)
!1415 = !DILocation(line: 220, column: 33, scope: !1409)
!1416 = !DILocation(line: 222, column: 9, scope: !1409)
!1417 = !DILocation(line: 222, column: 22, scope: !1409)
!1418 = !DILocation(line: 222, column: 26, scope: !1409)
!1419 = !DILocation(line: 222, column: 44, scope: !1420)
!1420 = !DILexicalBlockFile(scope: !1409, file: !670, discriminator: 1)
!1421 = !DILocation(line: 222, column: 57, scope: !1420)
!1422 = !DILocation(line: 222, column: 35, scope: !1420)
!1423 = !DILocation(line: 222, column: 9, scope: !1420)
!1424 = !DILocation(line: 223, column: 29, scope: !1409)
!1425 = !DILocation(line: 223, column: 42, scope: !1409)
!1426 = !DILocation(line: 223, column: 53, scope: !1409)
!1427 = !DILocation(line: 223, column: 66, scope: !1409)
!1428 = !DILocation(line: 223, column: 17, scope: !1409)
!1429 = !DILocation(line: 222, column: 9, scope: !1430)
!1430 = !DILexicalBlockFile(scope: !1409, file: !670, discriminator: 2)
!1431 = !DILocation(line: 222, column: 9, scope: !1432)
!1432 = !DILexicalBlockFile(scope: !1409, file: !670, discriminator: 3)
!1433 = !DILocation(line: 222, column: 2, scope: !1432)
