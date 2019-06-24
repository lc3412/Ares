; ModuleID = './line291-fe-notifylist.o.i'
source_filename = "./line291-fe-notifylist.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._FORMAT_REC = type { i8*, i8*, i32, [10 x i32] }
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
%struct._WI_ITEM_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, {}*, i8* (%struct._WI_ITEM_REC*)* }
%struct._NICK_REC = type { i32, i32, i64, i8*, i8*, i8*, i32, i8, [8 x i8], i8*, %struct._NICK_REC* }
%struct._QUERY_REC = type opaque
%struct._REDIRECT_REC = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._GTimeVal = type { i64, i64 }
%struct._GHashTable = type opaque
%struct.modes_type = type { void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, i8 }
%struct._IRC_CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._IRC_SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)*, %struct._GSList*, i64, i32, i32 }
%struct.NOTIFYLIST_REC = type { i8*, i8**, i8 }
%struct._IRC_CHATNET_REC = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IPADDR*, %struct._IPADDR*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct._CHATNET_REC = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IPADDR*, %struct._IPADDR* }

@.str = private unnamed_addr constant [25 x i8] c"fe-common/irc/notifylist\00", align 1
@fecommon_irc_notifylist_formats = external global [0 x %struct._FORMAT_REC], align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"notify\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"notifylist joined\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"notifylist left\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"notifylist away changed\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"notifylist\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"fe-irc\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"-list\00", align 1
@notifies = external global %struct._GSList*, align 8
@chatnets = external global %struct._GSList*, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"CHATNET\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"IRC\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@servers = external global %struct._GSList*, align 8
@.str.12 = private unnamed_addr constant [5 x i8] c"%s, \00", align 1
@__func__.mask_add_once = private unnamed_addr constant [14 x i8] c"mask_add_once\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"mask != NULL\00", align 1
@__func__.print_notify_onserver = private unnamed_addr constant [22 x i8] c"print_notify_onserver\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"IS_IRC_SERVER(server)\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"offline != NULL\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"desc != NULL\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.18 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"-away\00", align 1
@__func__.notifylist_joined = private unnamed_addr constant [18 x i8] c"notifylist_joined\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"nick != NULL\00", align 1
@__func__.notifylist_left = private unnamed_addr constant [16 x i8] c"notifylist_left\00", align 1
@__func__.notifylist_away = private unnamed_addr constant [16 x i8] c"notifylist_away\00", align 1

; Function Attrs: nounwind uwtable
define void @fe_irc_notifylist_init() #0 !dbg !774 {
  call void @theme_register_module(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), %struct._FORMAT_REC* getelementptr inbounds ([0 x %struct._FORMAT_REC], [0 x %struct._FORMAT_REC]* @fecommon_irc_notifylist_formats, i32 0, i32 0)), !dbg !777
  call void @command_bind_full(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_notify to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !778
  call void @signal_add_full(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*, i8*)* @notifylist_joined to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !779
  call void @signal_add_full(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*, i8*)* @notifylist_left to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !780
  call void @signal_add_full(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*, i8*)* @notifylist_away to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !781
  call void @command_set_options_module(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0)), !dbg !782
  call void @settings_check_module(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0)), !dbg !783
  %1 = call %struct.MODULE_FILE_REC* @module_register_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0)), !dbg !784
  ret void, !dbg !785
}

declare void @theme_register_module(i8*, %struct._FORMAT_REC*) #1

declare void @command_bind_full(i8*, i32, i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @cmd_notify(i8*) #0 !dbg !786 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !789, metadata !790), !dbg !791
  %3 = load i8*, i8** %2, align 8, !dbg !792
  %4 = load i8, i8* %3, align 1, !dbg !794
  %5 = sext i8 %4 to i32, !dbg !794
  %6 = icmp eq i32 %5, 0, !dbg !795
  br i1 %6, label %7, label %8, !dbg !796

; <label>:7:                                      ; preds = %1
  call void @cmd_notify_show(), !dbg !797
  call void @signal_stop(), !dbg !799
  br label %8, !dbg !800

; <label>:8:                                      ; preds = %7, %1
  %9 = load i8*, i8** %2, align 8, !dbg !801
  %10 = call i32 @g_ascii_strncasecmp(i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i64 4), !dbg !803
  %11 = icmp eq i32 %10, 0, !dbg !804
  br i1 %11, label %12, label %13, !dbg !805

; <label>:12:                                     ; preds = %8
  call void @cmd_notifylist_show(), !dbg !806
  call void @signal_stop(), !dbg !808
  br label %13, !dbg !809

; <label>:13:                                     ; preds = %12, %8
  ret void, !dbg !810
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @notifylist_joined(%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*, i8*) #0 !dbg !811 {
  %7 = alloca %struct._IRC_SERVER_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %7, metadata !814, metadata !790), !dbg !815
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !816, metadata !790), !dbg !817
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !818, metadata !790), !dbg !819
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !820, metadata !790), !dbg !821
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !822, metadata !790), !dbg !823
  store i8* %5, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !824, metadata !790), !dbg !825
  br label %13, !dbg !826, !llvm.loop !827

; <label>:13:                                     ; preds = %6
  %14 = load i8*, i8** %8, align 8, !dbg !828
  %15 = icmp ne i8* %14, null, !dbg !832
  br i1 %15, label %16, label %17, !dbg !828

; <label>:16:                                     ; preds = %13
  br label %18, !dbg !833

; <label>:17:                                     ; preds = %13
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.notifylist_joined, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0)), !dbg !836
  br label %42, !dbg !839

; <label>:18:                                     ; preds = %16
  br label %19, !dbg !840

; <label>:19:                                     ; preds = %18
  %20 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %7, align 8, !dbg !842
  %21 = bitcast %struct._IRC_SERVER_REC* %20 to i8*, !dbg !842
  %22 = load i8*, i8** %8, align 8, !dbg !843
  %23 = load i8*, i8** %8, align 8, !dbg !844
  %24 = load i8*, i8** %9, align 8, !dbg !845
  %25 = load i8*, i8** %10, align 8, !dbg !846
  %26 = load i8*, i8** %11, align 8, !dbg !847
  %27 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %7, align 8, !dbg !848
  %28 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %27, i32 0, i32 3, !dbg !849
  %29 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %28, align 8, !dbg !849
  %30 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %29, i32 0, i32 12, !dbg !850
  %31 = load i8*, i8** %30, align 8, !dbg !850
  %32 = icmp eq i8* %31, null, !dbg !851
  br i1 %32, label %33, label %34, !dbg !848

; <label>:33:                                     ; preds = %19
  br label %40, !dbg !852

; <label>:34:                                     ; preds = %19
  %35 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %7, align 8, !dbg !854
  %36 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %35, i32 0, i32 3, !dbg !856
  %37 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %36, align 8, !dbg !856
  %38 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %37, i32 0, i32 12, !dbg !857
  %39 = load i8*, i8** %38, align 8, !dbg !857
  br label %40, !dbg !858

; <label>:40:                                     ; preds = %34, %33
  %41 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), %33 ], [ %39, %34 ], !dbg !859
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), i8* %21, i8* %22, i32 262144, i32 2, i8* %23, i8* %24, i8* %25, i8* %26, i8* %41), !dbg !861
  br label %42, !dbg !862

; <label>:42:                                     ; preds = %40, %17
  ret void, !dbg !863
}

; Function Attrs: nounwind uwtable
define internal void @notifylist_left(%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*, i8*) #0 !dbg !864 {
  %7 = alloca %struct._IRC_SERVER_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %7, metadata !865, metadata !790), !dbg !866
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !867, metadata !790), !dbg !868
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !869, metadata !790), !dbg !870
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !871, metadata !790), !dbg !872
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !873, metadata !790), !dbg !874
  store i8* %5, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !875, metadata !790), !dbg !876
  br label %13, !dbg !877, !llvm.loop !878

; <label>:13:                                     ; preds = %6
  %14 = load i8*, i8** %8, align 8, !dbg !879
  %15 = icmp ne i8* %14, null, !dbg !883
  br i1 %15, label %16, label %17, !dbg !879

; <label>:16:                                     ; preds = %13
  br label %18, !dbg !884

; <label>:17:                                     ; preds = %13
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.notifylist_left, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0)), !dbg !887
  br label %42, !dbg !890

; <label>:18:                                     ; preds = %16
  br label %19, !dbg !891

; <label>:19:                                     ; preds = %18
  %20 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %7, align 8, !dbg !893
  %21 = bitcast %struct._IRC_SERVER_REC* %20 to i8*, !dbg !893
  %22 = load i8*, i8** %8, align 8, !dbg !894
  %23 = load i8*, i8** %8, align 8, !dbg !895
  %24 = load i8*, i8** %9, align 8, !dbg !896
  %25 = load i8*, i8** %10, align 8, !dbg !897
  %26 = load i8*, i8** %11, align 8, !dbg !898
  %27 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %7, align 8, !dbg !899
  %28 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %27, i32 0, i32 3, !dbg !900
  %29 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %28, align 8, !dbg !900
  %30 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %29, i32 0, i32 12, !dbg !901
  %31 = load i8*, i8** %30, align 8, !dbg !901
  %32 = icmp eq i8* %31, null, !dbg !902
  br i1 %32, label %33, label %34, !dbg !899

; <label>:33:                                     ; preds = %19
  br label %40, !dbg !903

; <label>:34:                                     ; preds = %19
  %35 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %7, align 8, !dbg !905
  %36 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %35, i32 0, i32 3, !dbg !907
  %37 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %36, align 8, !dbg !907
  %38 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %37, i32 0, i32 12, !dbg !908
  %39 = load i8*, i8** %38, align 8, !dbg !908
  br label %40, !dbg !909

; <label>:40:                                     ; preds = %34, %33
  %41 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), %33 ], [ %39, %34 ], !dbg !910
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), i8* %21, i8* %22, i32 262144, i32 3, i8* %23, i8* %24, i8* %25, i8* %26, i8* %41), !dbg !912
  br label %42, !dbg !913

; <label>:42:                                     ; preds = %40, %17
  ret void, !dbg !914
}

; Function Attrs: nounwind uwtable
define internal void @notifylist_away(%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*, i8*) #0 !dbg !915 {
  %7 = alloca %struct._IRC_SERVER_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %7, metadata !916, metadata !790), !dbg !917
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !918, metadata !790), !dbg !919
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !920, metadata !790), !dbg !921
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !922, metadata !790), !dbg !923
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !924, metadata !790), !dbg !925
  store i8* %5, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !926, metadata !790), !dbg !927
  br label %13, !dbg !928, !llvm.loop !929

; <label>:13:                                     ; preds = %6
  %14 = load i8*, i8** %8, align 8, !dbg !930
  %15 = icmp ne i8* %14, null, !dbg !934
  br i1 %15, label %16, label %17, !dbg !930

; <label>:16:                                     ; preds = %13
  br label %18, !dbg !935

; <label>:17:                                     ; preds = %13
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.notifylist_away, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0)), !dbg !938
  br label %69, !dbg !941

; <label>:18:                                     ; preds = %16
  br label %19, !dbg !942

; <label>:19:                                     ; preds = %18
  %20 = load i8*, i8** %12, align 8, !dbg !944
  %21 = icmp ne i8* %20, null, !dbg !946
  br i1 %21, label %22, label %46, !dbg !947

; <label>:22:                                     ; preds = %19
  %23 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %7, align 8, !dbg !948
  %24 = bitcast %struct._IRC_SERVER_REC* %23 to i8*, !dbg !948
  %25 = load i8*, i8** %8, align 8, !dbg !950
  %26 = load i8*, i8** %8, align 8, !dbg !951
  %27 = load i8*, i8** %9, align 8, !dbg !952
  %28 = load i8*, i8** %10, align 8, !dbg !953
  %29 = load i8*, i8** %11, align 8, !dbg !954
  %30 = load i8*, i8** %12, align 8, !dbg !955
  %31 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %7, align 8, !dbg !956
  %32 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %31, i32 0, i32 3, !dbg !957
  %33 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %32, align 8, !dbg !957
  %34 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %33, i32 0, i32 12, !dbg !958
  %35 = load i8*, i8** %34, align 8, !dbg !958
  %36 = icmp eq i8* %35, null, !dbg !959
  br i1 %36, label %37, label %38, !dbg !956

; <label>:37:                                     ; preds = %22
  br label %44, !dbg !960

; <label>:38:                                     ; preds = %22
  %39 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %7, align 8, !dbg !962
  %40 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %39, i32 0, i32 3, !dbg !964
  %41 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %40, align 8, !dbg !964
  %42 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %41, i32 0, i32 12, !dbg !965
  %43 = load i8*, i8** %42, align 8, !dbg !965
  br label %44, !dbg !966

; <label>:44:                                     ; preds = %38, %37
  %45 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), %37 ], [ %43, %38 ], !dbg !967
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), i8* %24, i8* %25, i32 262144, i32 4, i8* %26, i8* %27, i8* %28, i8* %29, i8* %30, i8* %45), !dbg !969
  br label %69, !dbg !970

; <label>:46:                                     ; preds = %19
  %47 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %7, align 8, !dbg !971
  %48 = bitcast %struct._IRC_SERVER_REC* %47 to i8*, !dbg !971
  %49 = load i8*, i8** %8, align 8, !dbg !973
  %50 = load i8*, i8** %8, align 8, !dbg !974
  %51 = load i8*, i8** %9, align 8, !dbg !975
  %52 = load i8*, i8** %10, align 8, !dbg !976
  %53 = load i8*, i8** %11, align 8, !dbg !977
  %54 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %7, align 8, !dbg !978
  %55 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %54, i32 0, i32 3, !dbg !979
  %56 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %55, align 8, !dbg !979
  %57 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %56, i32 0, i32 12, !dbg !980
  %58 = load i8*, i8** %57, align 8, !dbg !980
  %59 = icmp eq i8* %58, null, !dbg !981
  br i1 %59, label %60, label %61, !dbg !978

; <label>:60:                                     ; preds = %46
  br label %67, !dbg !982

; <label>:61:                                     ; preds = %46
  %62 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %7, align 8, !dbg !984
  %63 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %62, i32 0, i32 3, !dbg !986
  %64 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %63, align 8, !dbg !986
  %65 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %64, i32 0, i32 12, !dbg !987
  %66 = load i8*, i8** %65, align 8, !dbg !987
  br label %67, !dbg !988

; <label>:67:                                     ; preds = %61, %60
  %68 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), %60 ], [ %66, %61 ], !dbg !989
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), i8* %48, i8* %49, i32 262144, i32 5, i8* %50, i8* %51, i8* %52, i8* %53, i8* %68), !dbg !991
  br label %69

; <label>:69:                                     ; preds = %17, %67, %44
  ret void, !dbg !992
}

declare void @command_set_options_module(i8*, i8*, i8*) #1

declare void @settings_check_module(i8*) #1

declare %struct.MODULE_FILE_REC* @module_register_full(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @fe_irc_notifylist_deinit() #0 !dbg !993 {
  call void @theme_unregister_module(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0)), !dbg !994
  call void @command_unbind_full(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_notify to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !995
  call void @signal_remove_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*, i8*)* @notifylist_joined to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !996
  call void @signal_remove_full(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*, i8*)* @notifylist_left to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !997
  call void @signal_remove_full(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*, i8*)* @notifylist_away to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !998
  ret void, !dbg !999
}

declare void @theme_unregister_module(i8*) #1

declare void @command_unbind_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind uwtable
define internal void @cmd_notify_show() #0 !dbg !1000 {
  %1 = alloca %struct._GSList*, align 8
  %2 = alloca %struct._GSList*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca %struct.NOTIFYLIST_REC*, align 8
  %6 = alloca %struct._IRC_CHATNET_REC*, align 8
  %7 = alloca %struct._GString*, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %1, metadata !1001, metadata !790), !dbg !1002
  call void @llvm.dbg.declare(metadata %struct._GSList** %2, metadata !1003, metadata !790), !dbg !1004
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !1005, metadata !790), !dbg !1006
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !1007, metadata !790), !dbg !1008
  %8 = load %struct._GSList*, %struct._GSList** @notifies, align 8, !dbg !1009
  %9 = icmp eq %struct._GSList* %8, null, !dbg !1011
  br i1 %9, label %10, label %11, !dbg !1012

; <label>:10:                                     ; preds = %0
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 9), !dbg !1013
  br label %152, !dbg !1015

; <label>:11:                                     ; preds = %0
  store %struct._GSList* null, %struct._GSList** %1, align 8, !dbg !1016
  %12 = load %struct._GSList*, %struct._GSList** @notifies, align 8, !dbg !1017
  store %struct._GSList* %12, %struct._GSList** %3, align 8, !dbg !1019
  br label %13, !dbg !1020

; <label>:13:                                     ; preds = %26, %11
  %14 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1021
  %15 = icmp ne %struct._GSList* %14, null, !dbg !1024
  br i1 %15, label %16, label %30, !dbg !1025

; <label>:16:                                     ; preds = %13
  call void @llvm.dbg.declare(metadata %struct.NOTIFYLIST_REC** %5, metadata !1026, metadata !790), !dbg !1036
  %17 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1037
  %18 = getelementptr inbounds %struct._GSList, %struct._GSList* %17, i32 0, i32 0, !dbg !1038
  %19 = load i8*, i8** %18, align 8, !dbg !1038
  %20 = bitcast i8* %19 to %struct.NOTIFYLIST_REC*, !dbg !1037
  store %struct.NOTIFYLIST_REC* %20, %struct.NOTIFYLIST_REC** %5, align 8, !dbg !1036
  %21 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1039
  %22 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %5, align 8, !dbg !1040
  %23 = getelementptr inbounds %struct.NOTIFYLIST_REC, %struct.NOTIFYLIST_REC* %22, i32 0, i32 0, !dbg !1041
  %24 = load i8*, i8** %23, align 8, !dbg !1041
  %25 = call %struct._GSList* @mask_add_once(%struct._GSList* %21, i8* %24), !dbg !1042
  store %struct._GSList* %25, %struct._GSList** %1, align 8, !dbg !1043
  br label %26, !dbg !1044

; <label>:26:                                     ; preds = %16
  %27 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1045
  %28 = getelementptr inbounds %struct._GSList, %struct._GSList* %27, i32 0, i32 1, !dbg !1047
  %29 = load %struct._GSList*, %struct._GSList** %28, align 8, !dbg !1047
  store %struct._GSList* %29, %struct._GSList** %3, align 8, !dbg !1048
  br label %13, !dbg !1049, !llvm.loop !1050

; <label>:30:                                     ; preds = %13
  %31 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1052
  %32 = call %struct._GSList* @g_slist_copy(%struct._GSList* %31), !dbg !1053
  store %struct._GSList* %32, %struct._GSList** %2, align 8, !dbg !1054
  %33 = load %struct._GSList*, %struct._GSList** @chatnets, align 8, !dbg !1055
  store %struct._GSList* %33, %struct._GSList** %3, align 8, !dbg !1057
  br label %34, !dbg !1058

; <label>:34:                                     ; preds = %76, %30
  %35 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1059
  %36 = icmp ne %struct._GSList* %35, null, !dbg !1062
  br i1 %36, label %37, label %80, !dbg !1063

; <label>:37:                                     ; preds = %34
  call void @llvm.dbg.declare(metadata %struct._IRC_CHATNET_REC** %6, metadata !1064, metadata !790), !dbg !1066
  %38 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1067
  %39 = getelementptr inbounds %struct._GSList, %struct._GSList* %38, i32 0, i32 0, !dbg !1068
  %40 = load i8*, i8** %39, align 8, !dbg !1068
  %41 = bitcast i8* %40 to %struct._IRC_CHATNET_REC*, !dbg !1067
  store %struct._IRC_CHATNET_REC* %41, %struct._IRC_CHATNET_REC** %6, align 8, !dbg !1066
  %42 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %6, align 8, !dbg !1069
  %43 = bitcast %struct._IRC_CHATNET_REC* %42 to i8*, !dbg !1069
  %44 = call i8* @module_check_cast(i8* %43, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0)), !dbg !1071
  %45 = bitcast i8* %44 to %struct._CHATNET_REC*, !dbg !1072
  %46 = bitcast %struct._CHATNET_REC* %45 to i8*, !dbg !1073
  %47 = call i8* @chat_protocol_check_cast(i8* %46, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0)), !dbg !1074
  %48 = bitcast i8* %47 to %struct._IRC_CHATNET_REC*, !dbg !1076
  %49 = icmp ne %struct._IRC_CHATNET_REC* %48, null, !dbg !1076
  br i1 %49, label %50, label %51, !dbg !1077

; <label>:50:                                     ; preds = %37
  br i1 false, label %52, label %53, !dbg !1078

; <label>:51:                                     ; preds = %37
  br i1 false, label %53, label %52, !dbg !1080

; <label>:52:                                     ; preds = %51, %50
  br label %76, !dbg !1082

; <label>:53:                                     ; preds = %51, %50
  %54 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %6, align 8, !dbg !1083
  %55 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %54, i32 0, i32 2, !dbg !1084
  %56 = load i8*, i8** %55, align 8, !dbg !1084
  %57 = call %struct._SERVER_REC* @server_find_chatnet(i8* %56), !dbg !1085
  %58 = bitcast %struct._SERVER_REC* %57 to %struct._IRC_SERVER_REC*, !dbg !1086
  store %struct._IRC_SERVER_REC* %58, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1087
  %59 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1088
  %60 = bitcast %struct._IRC_SERVER_REC* %59 to i8*, !dbg !1088
  %61 = call i8* @module_check_cast(i8* %60, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0)), !dbg !1090
  %62 = bitcast i8* %61 to %struct._SERVER_REC*, !dbg !1091
  %63 = bitcast %struct._SERVER_REC* %62 to i8*, !dbg !1092
  %64 = call i8* @chat_protocol_check_cast(i8* %63, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0)), !dbg !1093
  %65 = bitcast i8* %64 to %struct._IRC_SERVER_REC*, !dbg !1095
  %66 = icmp ne %struct._IRC_SERVER_REC* %65, null, !dbg !1095
  br i1 %66, label %67, label %68, !dbg !1096

; <label>:67:                                     ; preds = %53
  br i1 false, label %69, label %70, !dbg !1097

; <label>:68:                                     ; preds = %53
  br i1 false, label %70, label %69, !dbg !1099

; <label>:69:                                     ; preds = %68, %67
  br label %76, !dbg !1100

; <label>:70:                                     ; preds = %68, %67
  %71 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1101
  %72 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1102
  %73 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %6, align 8, !dbg !1103
  %74 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %73, i32 0, i32 2, !dbg !1104
  %75 = load i8*, i8** %74, align 8, !dbg !1104
  call void @print_notify_onserver(%struct._IRC_SERVER_REC* %71, %struct._GSList* %72, %struct._GSList** %2, i8* %75), !dbg !1105
  br label %76, !dbg !1106

; <label>:76:                                     ; preds = %70, %69, %52
  %77 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1107
  %78 = getelementptr inbounds %struct._GSList, %struct._GSList* %77, i32 0, i32 1, !dbg !1109
  %79 = load %struct._GSList*, %struct._GSList** %78, align 8, !dbg !1109
  store %struct._GSList* %79, %struct._GSList** %3, align 8, !dbg !1110
  br label %34, !dbg !1111, !llvm.loop !1112

; <label>:80:                                     ; preds = %34
  %81 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !1114
  store %struct._GSList* %81, %struct._GSList** %3, align 8, !dbg !1116
  br label %82, !dbg !1117

; <label>:82:                                     ; preds = %114, %80
  %83 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1118
  %84 = icmp ne %struct._GSList* %83, null, !dbg !1121
  br i1 %84, label %85, label %118, !dbg !1122

; <label>:85:                                     ; preds = %82
  %86 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1123
  %87 = getelementptr inbounds %struct._GSList, %struct._GSList* %86, i32 0, i32 0, !dbg !1125
  %88 = load i8*, i8** %87, align 8, !dbg !1125
  %89 = bitcast i8* %88 to %struct._IRC_SERVER_REC*, !dbg !1123
  store %struct._IRC_SERVER_REC* %89, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1126
  %90 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1127
  %91 = bitcast %struct._IRC_SERVER_REC* %90 to i8*, !dbg !1127
  %92 = call i8* @module_check_cast(i8* %91, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0)), !dbg !1129
  %93 = bitcast i8* %92 to %struct._SERVER_REC*, !dbg !1130
  %94 = bitcast %struct._SERVER_REC* %93 to i8*, !dbg !1131
  %95 = call i8* @chat_protocol_check_cast(i8* %94, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0)), !dbg !1132
  %96 = bitcast i8* %95 to %struct._IRC_SERVER_REC*, !dbg !1134
  %97 = icmp ne %struct._IRC_SERVER_REC* %96, null, !dbg !1134
  br i1 %97, label %98, label %99, !dbg !1135

; <label>:98:                                     ; preds = %85
  br i1 false, label %107, label %100, !dbg !1136

; <label>:99:                                     ; preds = %85
  br i1 false, label %100, label %107, !dbg !1138

; <label>:100:                                    ; preds = %99, %98
  %101 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1140
  %102 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %101, i32 0, i32 3, !dbg !1142
  %103 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %102, align 8, !dbg !1142
  %104 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %103, i32 0, i32 12, !dbg !1143
  %105 = load i8*, i8** %104, align 8, !dbg !1143
  %106 = icmp ne i8* %105, null, !dbg !1144
  br i1 %106, label %107, label %108, !dbg !1145

; <label>:107:                                    ; preds = %100, %99, %98
  br label %114, !dbg !1146

; <label>:108:                                    ; preds = %100
  %109 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1147
  %110 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1148
  %111 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1149
  %112 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %111, i32 0, i32 6, !dbg !1150
  %113 = load i8*, i8** %112, align 8, !dbg !1150
  call void @print_notify_onserver(%struct._IRC_SERVER_REC* %109, %struct._GSList* %110, %struct._GSList** %2, i8* %113), !dbg !1151
  br label %114, !dbg !1152

; <label>:114:                                    ; preds = %108, %107
  %115 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1153
  %116 = getelementptr inbounds %struct._GSList, %struct._GSList* %115, i32 0, i32 1, !dbg !1155
  %117 = load %struct._GSList*, %struct._GSList** %116, align 8, !dbg !1155
  store %struct._GSList* %117, %struct._GSList** %3, align 8, !dbg !1156
  br label %82, !dbg !1157, !llvm.loop !1158

; <label>:118:                                    ; preds = %82
  %119 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !1160
  %120 = icmp ne %struct._GSList* %119, null, !dbg !1162
  br i1 %120, label %121, label %149, !dbg !1163

; <label>:121:                                    ; preds = %118
  call void @llvm.dbg.declare(metadata %struct._GString** %7, metadata !1164, metadata !790), !dbg !1166
  %122 = call %struct._GString* @g_string_new(i8* null), !dbg !1167
  store %struct._GString* %122, %struct._GString** %7, align 8, !dbg !1168
  %123 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !1169
  store %struct._GSList* %123, %struct._GSList** %3, align 8, !dbg !1171
  br label %124, !dbg !1172

; <label>:124:                                    ; preds = %132, %121
  %125 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1173
  %126 = icmp ne %struct._GSList* %125, null, !dbg !1176
  br i1 %126, label %127, label %136, !dbg !1177

; <label>:127:                                    ; preds = %124
  %128 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !1178
  %129 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1179
  %130 = getelementptr inbounds %struct._GSList, %struct._GSList* %129, i32 0, i32 0, !dbg !1180
  %131 = load i8*, i8** %130, align 8, !dbg !1180
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* %131), !dbg !1181
  br label %132, !dbg !1181

; <label>:132:                                    ; preds = %127
  %133 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1182
  %134 = getelementptr inbounds %struct._GSList, %struct._GSList* %133, i32 0, i32 1, !dbg !1184
  %135 = load %struct._GSList*, %struct._GSList** %134, align 8, !dbg !1184
  store %struct._GSList* %135, %struct._GSList** %3, align 8, !dbg !1185
  br label %124, !dbg !1186, !llvm.loop !1187

; <label>:136:                                    ; preds = %124
  %137 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !1189
  %138 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !1190
  %139 = getelementptr inbounds %struct._GString, %struct._GString* %138, i32 0, i32 1, !dbg !1191
  %140 = load i64, i64* %139, align 8, !dbg !1191
  %141 = sub i64 %140, 2, !dbg !1192
  %142 = call %struct._GString* @g_string_truncate(%struct._GString* %137, i64 %141), !dbg !1193
  %143 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !1194
  %144 = getelementptr inbounds %struct._GString, %struct._GString* %143, i32 0, i32 0, !dbg !1195
  %145 = load i8*, i8** %144, align 8, !dbg !1195
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 7, i8* %145), !dbg !1196
  %146 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !1197
  %147 = call i8* @g_string_free(%struct._GString* %146, i32 1), !dbg !1198
  %148 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !1199
  call void @g_slist_free(%struct._GSList* %148), !dbg !1200
  br label %149, !dbg !1201

; <label>:149:                                    ; preds = %136, %118
  %150 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1202
  call void @g_slist_foreach(%struct._GSList* %150, void (i8*, i8*)* bitcast (void (i8*)* @g_free to void (i8*, i8*)*), i8* null), !dbg !1203
  %151 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1204
  call void @g_slist_free(%struct._GSList* %151), !dbg !1205
  br label %152, !dbg !1206

; <label>:152:                                    ; preds = %149, %10
  ret void, !dbg !1207
}

declare void @signal_stop() #1

declare i32 @g_ascii_strncasecmp(i8*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @cmd_notifylist_show() #0 !dbg !1209 {
  %1 = load %struct._GSList*, %struct._GSList** @notifies, align 8, !dbg !1210
  %2 = icmp eq %struct._GSList* %1, null, !dbg !1212
  br i1 %2, label %3, label %4, !dbg !1213

; <label>:3:                                      ; preds = %0
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 9), !dbg !1214
  br label %6, !dbg !1216

; <label>:4:                                      ; preds = %0
  %5 = load %struct._GSList*, %struct._GSList** @notifies, align 8, !dbg !1217
  call void @g_slist_foreach(%struct._GSList* %5, void (i8*, i8*)* bitcast (void (%struct.NOTIFYLIST_REC*)* @notifylist_print to void (i8*, i8*)*), i8* null), !dbg !1219
  br label %6

; <label>:6:                                      ; preds = %4, %3
  ret void, !dbg !1220
}

declare void @printformat_module(i8*, i8*, i8*, i32, i32, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._GSList* @mask_add_once(%struct._GSList*, i8*) #0 !dbg !1221 {
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct._GSList* %0, %struct._GSList** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !1224, metadata !790), !dbg !1225
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1226, metadata !790), !dbg !1227
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1228, metadata !790), !dbg !1229
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1230, metadata !790), !dbg !1231
  br label %8, !dbg !1232, !llvm.loop !1233

; <label>:8:                                      ; preds = %2
  %9 = load i8*, i8** %5, align 8, !dbg !1234
  %10 = icmp ne i8* %9, null, !dbg !1238
  br i1 %10, label %11, label %12, !dbg !1234

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !1239

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.mask_add_once, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0)), !dbg !1242
  store %struct._GSList* null, %struct._GSList** %3, align 8, !dbg !1245
  br label %45, !dbg !1245

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !1246

; <label>:14:                                     ; preds = %13
  %15 = load i8*, i8** %5, align 8, !dbg !1248
  %16 = call i8* @strchr(i8* %15, i32 33) #4, !dbg !1249
  store i8* %16, i8** %7, align 8, !dbg !1250
  %17 = load i8*, i8** %7, align 8, !dbg !1251
  %18 = icmp eq i8* %17, null, !dbg !1252
  br i1 %18, label %19, label %22, !dbg !1251

; <label>:19:                                     ; preds = %14
  %20 = load i8*, i8** %5, align 8, !dbg !1253
  %21 = call noalias i8* @g_strdup(i8* %20), !dbg !1255
  br label %32, !dbg !1256

; <label>:22:                                     ; preds = %14
  %23 = load i8*, i8** %5, align 8, !dbg !1257
  %24 = load i8*, i8** %7, align 8, !dbg !1258
  %25 = load i8*, i8** %5, align 8, !dbg !1259
  %26 = ptrtoint i8* %24 to i64, !dbg !1260
  %27 = ptrtoint i8* %25 to i64, !dbg !1260
  %28 = sub i64 %26, %27, !dbg !1260
  %29 = trunc i64 %28 to i32, !dbg !1261
  %30 = sext i32 %29 to i64, !dbg !1261
  %31 = call noalias i8* @g_strndup(i8* %23, i64 %30), !dbg !1262
  br label %32, !dbg !1263

; <label>:32:                                     ; preds = %22, %19
  %33 = phi i8* [ %21, %19 ], [ %31, %22 ], !dbg !1265
  store i8* %33, i8** %6, align 8, !dbg !1267
  %34 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1268
  %35 = load i8*, i8** %6, align 8, !dbg !1270
  %36 = call %struct._GSList* @gslist_find_icase_string(%struct._GSList* %34, i8* %35), !dbg !1271
  %37 = icmp eq %struct._GSList* %36, null, !dbg !1272
  br i1 %37, label %38, label %42, !dbg !1273

; <label>:38:                                     ; preds = %32
  %39 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1274
  %40 = load i8*, i8** %6, align 8, !dbg !1275
  %41 = call %struct._GSList* @g_slist_append(%struct._GSList* %39, i8* %40), !dbg !1276
  store %struct._GSList* %41, %struct._GSList** %3, align 8, !dbg !1277
  br label %45, !dbg !1277

; <label>:42:                                     ; preds = %32
  %43 = load i8*, i8** %6, align 8, !dbg !1278
  call void @g_free(i8* %43), !dbg !1279
  %44 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1280
  store %struct._GSList* %44, %struct._GSList** %3, align 8, !dbg !1281
  br label %45, !dbg !1281

; <label>:45:                                     ; preds = %42, %38, %12
  %46 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1282
  ret %struct._GSList* %46, !dbg !1282
}

declare %struct._GSList* @g_slist_copy(%struct._GSList*) #1

declare i8* @chat_protocol_check_cast(i8*, i32, i8*) #1

declare i8* @module_check_cast(i8*, i32, i8*) #1

declare %struct._SERVER_REC* @server_find_chatnet(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @print_notify_onserver(%struct._IRC_SERVER_REC*, %struct._GSList*, %struct._GSList**, i8*) #0 !dbg !1283 {
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca %struct._GSList**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._GSList*, align 8
  %10 = alloca %struct._GString*, align 8
  %11 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !1287, metadata !790), !dbg !1288
  store %struct._GSList* %1, %struct._GSList** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !1289, metadata !790), !dbg !1290
  store %struct._GSList** %2, %struct._GSList*** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList*** %7, metadata !1291, metadata !790), !dbg !1292
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1293, metadata !790), !dbg !1294
  call void @llvm.dbg.declare(metadata %struct._GSList** %9, metadata !1295, metadata !790), !dbg !1296
  call void @llvm.dbg.declare(metadata %struct._GString** %10, metadata !1297, metadata !790), !dbg !1298
  br label %12, !dbg !1299, !llvm.loop !1300

; <label>:12:                                     ; preds = %4
  %13 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1301
  %14 = bitcast %struct._IRC_SERVER_REC* %13 to i8*, !dbg !1301
  %15 = call i8* @module_check_cast(i8* %14, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0)), !dbg !1305
  %16 = bitcast i8* %15 to %struct._SERVER_REC*, !dbg !1306
  %17 = bitcast %struct._SERVER_REC* %16 to i8*, !dbg !1307
  %18 = call i8* @chat_protocol_check_cast(i8* %17, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0)), !dbg !1308
  %19 = bitcast i8* %18 to %struct._IRC_SERVER_REC*, !dbg !1310
  %20 = icmp ne %struct._IRC_SERVER_REC* %19, null, !dbg !1310
  br i1 %20, label %21, label %22, !dbg !1311

; <label>:21:                                     ; preds = %12
  br i1 false, label %24, label %23, !dbg !1312

; <label>:22:                                     ; preds = %12
  br i1 false, label %23, label %24, !dbg !1314

; <label>:23:                                     ; preds = %22, %21
  br label %25, !dbg !1316

; <label>:24:                                     ; preds = %22, %21
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.print_notify_onserver, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0)), !dbg !1319
  br label %86, !dbg !1322

; <label>:25:                                     ; preds = %23
  br label %26, !dbg !1323

; <label>:26:                                     ; preds = %25
  br label %27, !dbg !1325, !llvm.loop !1326

; <label>:27:                                     ; preds = %26
  %28 = load %struct._GSList**, %struct._GSList*** %7, align 8, !dbg !1327
  %29 = icmp ne %struct._GSList** %28, null, !dbg !1331
  br i1 %29, label %30, label %31, !dbg !1327

; <label>:30:                                     ; preds = %27
  br label %32, !dbg !1332

; <label>:31:                                     ; preds = %27
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.print_notify_onserver, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0)), !dbg !1335
  br label %86, !dbg !1338

; <label>:32:                                     ; preds = %30
  br label %33, !dbg !1339

; <label>:33:                                     ; preds = %32
  br label %34, !dbg !1341, !llvm.loop !1342

; <label>:34:                                     ; preds = %33
  %35 = load i8*, i8** %8, align 8, !dbg !1343
  %36 = icmp ne i8* %35, null, !dbg !1347
  br i1 %36, label %37, label %38, !dbg !1343

; <label>:37:                                     ; preds = %34
  br label %39, !dbg !1348

; <label>:38:                                     ; preds = %34
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.print_notify_onserver, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0)), !dbg !1351
  br label %86, !dbg !1354

; <label>:39:                                     ; preds = %37
  br label %40, !dbg !1355

; <label>:40:                                     ; preds = %39
  %41 = call %struct._GString* @g_string_new(i8* null), !dbg !1357
  store %struct._GString* %41, %struct._GString** %10, align 8, !dbg !1358
  %42 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1359
  store %struct._GSList* %42, %struct._GSList** %9, align 8, !dbg !1361
  br label %43, !dbg !1362

; <label>:43:                                     ; preds = %63, %40
  %44 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !1363
  %45 = icmp ne %struct._GSList* %44, null, !dbg !1366
  br i1 %45, label %46, label %67, !dbg !1367

; <label>:46:                                     ; preds = %43
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1368, metadata !790), !dbg !1370
  %47 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !1371
  %48 = getelementptr inbounds %struct._GSList, %struct._GSList* %47, i32 0, i32 0, !dbg !1372
  %49 = load i8*, i8** %48, align 8, !dbg !1372
  store i8* %49, i8** %11, align 8, !dbg !1370
  %50 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1373
  %51 = load i8*, i8** %11, align 8, !dbg !1375
  %52 = call i32 @notifylist_ison_server(%struct._IRC_SERVER_REC* %50, i8* %51), !dbg !1376
  %53 = icmp ne i32 %52, 0, !dbg !1376
  br i1 %53, label %55, label %54, !dbg !1377

; <label>:54:                                     ; preds = %46
  br label %63, !dbg !1378

; <label>:55:                                     ; preds = %46
  %56 = load %struct._GString*, %struct._GString** %10, align 8, !dbg !1379
  %57 = load i8*, i8** %11, align 8, !dbg !1380
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* %57), !dbg !1381
  %58 = load %struct._GSList**, %struct._GSList*** %7, align 8, !dbg !1382
  %59 = load %struct._GSList*, %struct._GSList** %58, align 8, !dbg !1383
  %60 = load i8*, i8** %11, align 8, !dbg !1384
  %61 = call %struct._GSList* @g_slist_remove(%struct._GSList* %59, i8* %60), !dbg !1385
  %62 = load %struct._GSList**, %struct._GSList*** %7, align 8, !dbg !1386
  store %struct._GSList* %61, %struct._GSList** %62, align 8, !dbg !1387
  br label %63, !dbg !1388

; <label>:63:                                     ; preds = %55, %54
  %64 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !1389
  %65 = getelementptr inbounds %struct._GSList, %struct._GSList* %64, i32 0, i32 1, !dbg !1391
  %66 = load %struct._GSList*, %struct._GSList** %65, align 8, !dbg !1391
  store %struct._GSList* %66, %struct._GSList** %9, align 8, !dbg !1392
  br label %43, !dbg !1393, !llvm.loop !1394

; <label>:67:                                     ; preds = %43
  %68 = load %struct._GString*, %struct._GString** %10, align 8, !dbg !1396
  %69 = getelementptr inbounds %struct._GString, %struct._GString* %68, i32 0, i32 1, !dbg !1398
  %70 = load i64, i64* %69, align 8, !dbg !1398
  %71 = icmp ugt i64 %70, 0, !dbg !1399
  br i1 %71, label %72, label %83, !dbg !1400

; <label>:72:                                     ; preds = %67
  %73 = load %struct._GString*, %struct._GString** %10, align 8, !dbg !1401
  %74 = load %struct._GString*, %struct._GString** %10, align 8, !dbg !1403
  %75 = getelementptr inbounds %struct._GString, %struct._GString* %74, i32 0, i32 1, !dbg !1404
  %76 = load i64, i64* %75, align 8, !dbg !1404
  %77 = sub i64 %76, 2, !dbg !1405
  %78 = call %struct._GString* @g_string_truncate(%struct._GString* %73, i64 %77), !dbg !1406
  %79 = load i8*, i8** %8, align 8, !dbg !1407
  %80 = load %struct._GString*, %struct._GString** %10, align 8, !dbg !1408
  %81 = getelementptr inbounds %struct._GString, %struct._GString* %80, i32 0, i32 0, !dbg !1409
  %82 = load i8*, i8** %81, align 8, !dbg !1409
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 6, i8* %79, i8* %82), !dbg !1410
  br label %83, !dbg !1411

; <label>:83:                                     ; preds = %72, %67
  %84 = load %struct._GString*, %struct._GString** %10, align 8, !dbg !1412
  %85 = call i8* @g_string_free(%struct._GString* %84, i32 1), !dbg !1413
  br label %86, !dbg !1414

; <label>:86:                                     ; preds = %83, %38, %31, %24
  ret void, !dbg !1415
}

declare %struct._GString* @g_string_new(i8*) #1

declare void @g_string_append_printf(%struct._GString*, i8*, ...) #1

declare %struct._GString* @g_string_truncate(%struct._GString*, i64) #1

declare i8* @g_string_free(%struct._GString*, i32) #1

declare void @g_slist_free(%struct._GSList*) #1

declare void @g_slist_foreach(%struct._GSList*, void (i8*, i8*)*, i8*) #1

declare void @g_free(i8*) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

declare noalias i8* @g_strdup(i8*) #1

declare noalias i8* @g_strndup(i8*, i64) #1

declare %struct._GSList* @gslist_find_icase_string(%struct._GSList*, i8*) #1

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #1

declare i32 @notifylist_ison_server(%struct._IRC_SERVER_REC*, i8*) #1

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @notifylist_print(%struct.NOTIFYLIST_REC*) #0 !dbg !1417 {
  %2 = alloca %struct.NOTIFYLIST_REC*, align 8
  %3 = alloca i8*, align 8
  store %struct.NOTIFYLIST_REC* %0, %struct.NOTIFYLIST_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.NOTIFYLIST_REC** %2, metadata !1420, metadata !790), !dbg !1421
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1422, metadata !790), !dbg !1423
  %4 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %2, align 8, !dbg !1424
  %5 = getelementptr inbounds %struct.NOTIFYLIST_REC, %struct.NOTIFYLIST_REC* %4, i32 0, i32 1, !dbg !1425
  %6 = load i8**, i8*** %5, align 8, !dbg !1425
  %7 = icmp eq i8** %6, null, !dbg !1426
  br i1 %7, label %8, label %9, !dbg !1424

; <label>:8:                                      ; preds = %1
  br label %14, !dbg !1427

; <label>:9:                                      ; preds = %1
  %10 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %2, align 8, !dbg !1429
  %11 = getelementptr inbounds %struct.NOTIFYLIST_REC, %struct.NOTIFYLIST_REC* %10, i32 0, i32 1, !dbg !1430
  %12 = load i8**, i8*** %11, align 8, !dbg !1430
  %13 = call noalias i8* @g_strjoinv(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i8** %12), !dbg !1431
  br label %14, !dbg !1432

; <label>:14:                                     ; preds = %9, %8
  %15 = phi i8* [ null, %8 ], [ %13, %9 ], !dbg !1434
  store i8* %15, i8** %3, align 8, !dbg !1436
  %16 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %2, align 8, !dbg !1437
  %17 = getelementptr inbounds %struct.NOTIFYLIST_REC, %struct.NOTIFYLIST_REC* %16, i32 0, i32 0, !dbg !1438
  %18 = load i8*, i8** %17, align 8, !dbg !1438
  %19 = load i8*, i8** %3, align 8, !dbg !1439
  %20 = icmp ne i8* %19, null, !dbg !1440
  br i1 %20, label %21, label %23, !dbg !1439

; <label>:21:                                     ; preds = %14
  %22 = load i8*, i8** %3, align 8, !dbg !1441
  br label %24, !dbg !1442

; <label>:23:                                     ; preds = %14
  br label %24, !dbg !1443

; <label>:24:                                     ; preds = %23, %21
  %25 = phi i8* [ %22, %21 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i32 0, i32 0), %23 ], !dbg !1444
  %26 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %2, align 8, !dbg !1445
  %27 = getelementptr inbounds %struct.NOTIFYLIST_REC, %struct.NOTIFYLIST_REC* %26, i32 0, i32 2, !dbg !1446
  %28 = load i8, i8* %27, align 8, !dbg !1446
  %29 = and i8 %28, 1, !dbg !1446
  %30 = zext i8 %29 to i32, !dbg !1446
  %31 = icmp ne i32 %30, 0, !dbg !1445
  %32 = select i1 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i32 0, i32 0), !dbg !1445
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 8, i8* %18, i8* %25, i8* %32), !dbg !1447
  %33 = load i8*, i8** %3, align 8, !dbg !1448
  call void @g_free(i8* %33), !dbg !1449
  ret void, !dbg !1450
}

declare noalias i8* @g_strjoinv(i8*, i8**) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!771, !772}
!llvm.ident = !{!773}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !79)
!1 = !DIFile(filename: "line291-fe-notifylist.o.i", directory: "/home/lichi/Desktop/irssi/task1")
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
!36 = !DIFile(filename: "../../../../src/core/levels.h", directory: "/home/lichi/Desktop/irssi/task1")
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
!68 = !{!69, !70, !71, !72, !73, !74, !75, !76, !77, !78}
!69 = !DIEnumerator(name: "IRCTXT_MODULE_NAME", value: 0)
!70 = !DIEnumerator(name: "IRCTXT_FILL_1", value: 1)
!71 = !DIEnumerator(name: "IRCTXT_NOTIFY_JOIN", value: 2)
!72 = !DIEnumerator(name: "IRCTXT_NOTIFY_PART", value: 3)
!73 = !DIEnumerator(name: "IRCTXT_NOTIFY_AWAY", value: 4)
!74 = !DIEnumerator(name: "IRCTXT_NOTIFY_UNAWAY", value: 5)
!75 = !DIEnumerator(name: "IRCTXT_NOTIFY_ONLINE", value: 6)
!76 = !DIEnumerator(name: "IRCTXT_NOTIFY_OFFLINE", value: 7)
!77 = !DIEnumerator(name: "IRCTXT_NOTIFY_LIST", value: 8)
!78 = !DIEnumerator(name: "IRCTXT_NOTIFY_LIST_EMPTY", value: 9)
!79 = !{!80, !87, !88, !124, !139, !444, !99, !767, !200, !532, !96}
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !81, line: 9, baseType: !82)
!81 = !DIFile(filename: "../../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!83 = !DISubroutineType(types: !84)
!84 = !{null, !85, !85, !85, !85, !85, !85}
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64, align: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_CHATNET_REC", file: !90, line: 4, baseType: !91)
!90 = !DIFile(filename: "../../../../src/irc/core/irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_CHATNET_REC", file: !92, line: 17, size: 1152, align: 64, elements: !93)
!92 = !DIFile(filename: "../../../../src/irc/core/irc-chatnets.h", directory: "/home/lichi/Desktop/irssi/task1")
!93 = !{!94, !97, !98, !101, !102, !103, !104, !105, !106, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !91, file: !95, line: 1, baseType: !96, size: 32, align: 32)
!95 = !DIFile(filename: "../../../../src/core/chatnet-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!96 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !91, file: !95, line: 2, baseType: !96, size: 32, align: 32, offset: 32)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !91, file: !95, line: 4, baseType: !99, size: 64, align: 64, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64, align: 64)
!100 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !91, file: !95, line: 6, baseType: !99, size: 64, align: 64, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !91, file: !95, line: 7, baseType: !99, size: 64, align: 64, offset: 192)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !91, file: !95, line: 8, baseType: !99, size: 64, align: 64, offset: 256)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "own_host", scope: !91, file: !95, line: 10, baseType: !99, size: 64, align: 64, offset: 320)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "autosendcmd", scope: !91, file: !95, line: 11, baseType: !99, size: 64, align: 64, offset: 384)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !91, file: !95, line: 12, baseType: !107, size: 64, align: 64, offset: 448)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, align: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !109, line: 99, baseType: !110)
!109 = !DIFile(filename: "../../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!110 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !109, line: 99, flags: DIFlagFwdDecl)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !91, file: !95, line: 12, baseType: !107, size: 64, align: 64, offset: 512)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !91, file: !92, line: 20, baseType: !99, size: 64, align: 64, offset: 576)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_nick", scope: !91, file: !92, line: 21, baseType: !99, size: 64, align: 64, offset: 640)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !91, file: !92, line: 23, baseType: !99, size: 64, align: 64, offset: 704)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_username", scope: !91, file: !92, line: 24, baseType: !99, size: 64, align: 64, offset: 768)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !91, file: !92, line: 25, baseType: !99, size: 64, align: 64, offset: 832)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !91, file: !92, line: 27, baseType: !96, size: 32, align: 32, offset: 896)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !91, file: !92, line: 28, baseType: !96, size: 32, align: 32, offset: 928)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !91, file: !92, line: 29, baseType: !96, size: 32, align: 32, offset: 960)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks", scope: !91, file: !92, line: 32, baseType: !96, size: 32, align: 32, offset: 992)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !91, file: !92, line: 32, baseType: !96, size: 32, align: 32, offset: 1024)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes", scope: !91, file: !92, line: 32, baseType: !96, size: 32, align: 32, offset: 1056)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois", scope: !91, file: !92, line: 32, baseType: !96, size: 32, align: 32, offset: 1088)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHATNET_REC", file: !109, line: 106, baseType: !126)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHATNET_REC", file: !127, line: 13, size: 576, align: 64, elements: !128)
!127 = !DIFile(filename: "../../../../src/core/chatnets.h", directory: "/home/lichi/Desktop/irssi/task1")
!128 = !{!129, !130, !131, !132, !133, !134, !135, !136, !137, !138}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !126, file: !95, line: 1, baseType: !96, size: 32, align: 32)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !126, file: !95, line: 2, baseType: !96, size: 32, align: 32, offset: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !126, file: !95, line: 4, baseType: !99, size: 64, align: 64, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !126, file: !95, line: 6, baseType: !99, size: 64, align: 64, offset: 128)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !126, file: !95, line: 7, baseType: !99, size: 64, align: 64, offset: 192)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !126, file: !95, line: 8, baseType: !99, size: 64, align: 64, offset: 256)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "own_host", scope: !126, file: !95, line: 10, baseType: !99, size: 64, align: 64, offset: 320)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "autosendcmd", scope: !126, file: !95, line: 11, baseType: !99, size: 64, align: 64, offset: 384)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !126, file: !95, line: 12, baseType: !107, size: 64, align: 64, offset: 448)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !126, file: !95, line: 12, baseType: !107, size: 64, align: 64, offset: 512)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_REC", file: !90, line: 6, baseType: !141)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_REC", file: !142, line: 42, size: 39168, align: 64, elements: !143)
!142 = !DIFile(filename: "../../../../src/irc/core/irc-servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!143 = !{!144, !146, !147, !148, !389, !394, !395, !396, !397, !398, !399, !400, !401, !402, !406, !407, !411, !412, !413, !417, !422, !423, !424, !425, !426, !427, !428, !429, !436, !437, !438, !439, !440, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !764, !766}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !141, file: !145, line: 3, baseType: !96, size: 32, align: 32)
!145 = !DIFile(filename: "../../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!146 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !141, file: !145, line: 4, baseType: !96, size: 32, align: 32, offset: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !141, file: !145, line: 6, baseType: !96, size: 32, align: 32, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !141, file: !145, line: 8, baseType: !149, size: 64, align: 64, offset: 128)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_CONNECT_REC", file: !90, line: 5, baseType: !151)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_CONNECT_REC", file: !142, line: 24, size: 2496, align: 64, elements: !152)
!152 = !{!153, !155, !156, !157, !158, !159, !160, !161, !162, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !151, file: !154, line: 3, baseType: !96, size: 32, align: 32)
!154 = !DIFile(filename: "../../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!155 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !151, file: !154, line: 4, baseType: !96, size: 32, align: 32, offset: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !151, file: !154, line: 6, baseType: !96, size: 32, align: 32, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !151, file: !154, line: 9, baseType: !99, size: 64, align: 64, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !151, file: !154, line: 10, baseType: !96, size: 32, align: 32, offset: 192)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !151, file: !154, line: 11, baseType: !99, size: 64, align: 64, offset: 256)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !151, file: !154, line: 11, baseType: !99, size: 64, align: 64, offset: 320)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !151, file: !154, line: 11, baseType: !99, size: 64, align: 64, offset: 384)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !151, file: !154, line: 13, baseType: !163, size: 16, align: 16, offset: 448)
!163 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !151, file: !154, line: 14, baseType: !99, size: 64, align: 64, offset: 512)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !151, file: !154, line: 15, baseType: !99, size: 64, align: 64, offset: 576)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !151, file: !154, line: 16, baseType: !96, size: 32, align: 32, offset: 640)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !151, file: !154, line: 17, baseType: !99, size: 64, align: 64, offset: 704)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !151, file: !154, line: 19, baseType: !107, size: 64, align: 64, offset: 768)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !151, file: !154, line: 19, baseType: !107, size: 64, align: 64, offset: 832)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !151, file: !154, line: 21, baseType: !99, size: 64, align: 64, offset: 896)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !151, file: !154, line: 22, baseType: !99, size: 64, align: 64, offset: 960)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !151, file: !154, line: 23, baseType: !99, size: 64, align: 64, offset: 1024)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !151, file: !154, line: 24, baseType: !99, size: 64, align: 64, offset: 1088)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !151, file: !154, line: 26, baseType: !99, size: 64, align: 64, offset: 1152)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !151, file: !154, line: 27, baseType: !99, size: 64, align: 64, offset: 1216)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !151, file: !154, line: 28, baseType: !99, size: 64, align: 64, offset: 1280)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !151, file: !154, line: 29, baseType: !99, size: 64, align: 64, offset: 1344)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !151, file: !154, line: 30, baseType: !99, size: 64, align: 64, offset: 1408)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !151, file: !154, line: 31, baseType: !99, size: 64, align: 64, offset: 1472)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !151, file: !154, line: 32, baseType: !99, size: 64, align: 64, offset: 1536)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !151, file: !154, line: 33, baseType: !99, size: 64, align: 64, offset: 1600)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !151, file: !154, line: 35, baseType: !183, size: 64, align: 64, offset: 1664)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !185)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !186)
!186 = !{!187, !190, !334, !335, !340, !341, !342, !343, !344, !353, !354, !355, !359, !360, !361, !362, !363, !364, !365, !366}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !185, file: !4, line: 100, baseType: !188, size: 32, align: 32)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !189, line: 49, baseType: !96)
!189 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!190 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !185, file: !4, line: 101, baseType: !191, size: 64, align: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64, align: 64)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !193)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !194)
!194 = !{!195, !219, !225, !232, !236, !321, !325, !330}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !193, file: !4, line: 133, baseType: !196, size: 64, align: 64)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!199, !183, !200, !202, !205, !206}
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64, align: 64)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !189, line: 46, baseType: !100)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !203, line: 66, baseType: !204)
!203 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!204 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64, align: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64, align: 64)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64, align: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !209, line: 42, baseType: !210)
!209 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !209, line: 44, size: 128, align: 64, elements: !211)
!211 = !{!212, !217, !218}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !210, file: !209, line: 46, baseType: !213, size: 32, align: 32)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !214, line: 36, baseType: !215)
!214 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !203, line: 45, baseType: !216)
!216 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !210, file: !209, line: 47, baseType: !188, size: 32, align: 32, offset: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !210, file: !209, line: 48, baseType: !200, size: 64, align: 64, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !193, file: !4, line: 138, baseType: !220, size: 64, align: 64, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, align: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{!199, !183, !223, !202, !205, !206}
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64, align: 64)
!224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !201)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !193, file: !4, line: 143, baseType: !226, size: 64, align: 64, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{!199, !183, !229, !231, !206}
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !203, line: 51, baseType: !230)
!230 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !193, file: !4, line: 147, baseType: !233, size: 64, align: 64, offset: 192)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64, align: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!199, !183, !206}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !193, file: !4, line: 149, baseType: !237, size: 64, align: 64, offset: 256)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64, align: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{!240, !183, !320}
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, align: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !242)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !243)
!243 = !{!244, !246, !267, !296, !298, !302, !303, !304, !305, !313, !314, !315, !316}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !242, file: !16, line: 174, baseType: !245, size: 64, align: 64)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !189, line: 77, baseType: !87)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !242, file: !16, line: 175, baseType: !247, size: 64, align: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !249)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !250)
!250 = !{!251, !255, !256}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !249, file: !16, line: 198, baseType: !252, size: 64, align: 64)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64, align: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{null, !245}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !249, file: !16, line: 199, baseType: !252, size: 64, align: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !249, file: !16, line: 200, baseType: !257, size: 64, align: 64, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64, align: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{null, !245, !240, !260, !266}
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64, align: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{!265, !245}
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !189, line: 50, baseType: !188)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64, align: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !242, file: !16, line: 177, baseType: !268, size: 64, align: 64, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64, align: 64)
!269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !271)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !272)
!272 = !{!273, !278, !282, !286, !290, !291}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !271, file: !16, line: 216, baseType: !274, size: 64, align: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64, align: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!265, !240, !277}
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64, align: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !271, file: !16, line: 218, baseType: !279, size: 64, align: 64, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!265, !240}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !271, file: !16, line: 219, baseType: !283, size: 64, align: 64, offset: 128)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64, align: 64)
!284 = !DISubroutineType(types: !285)
!285 = !{!265, !240, !261, !245}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !271, file: !16, line: 222, baseType: !287, size: 64, align: 64, offset: 192)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64, align: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{null, !240}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !271, file: !16, line: 226, baseType: !261, size: 64, align: 64, offset: 256)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !271, file: !16, line: 227, baseType: !292, size: 64, align: 64, offset: 320)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !293)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64, align: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{null}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !242, file: !16, line: 178, baseType: !297, size: 32, align: 32, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !189, line: 55, baseType: !216)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !242, file: !16, line: 180, baseType: !299, size: 64, align: 64, offset: 256)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !301)
!301 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !242, file: !16, line: 182, baseType: !188, size: 32, align: 32, offset: 320)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !242, file: !16, line: 183, baseType: !297, size: 32, align: 32, offset: 352)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !242, file: !16, line: 184, baseType: !297, size: 32, align: 32, offset: 384)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !242, file: !16, line: 186, baseType: !306, size: 64, align: 64, offset: 448)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !308, line: 37, baseType: !309)
!308 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !308, line: 39, size: 128, align: 64, elements: !310)
!310 = !{!311, !312}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !309, file: !308, line: 41, baseType: !245, size: 64, align: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !309, file: !308, line: 42, baseType: !306, size: 64, align: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !242, file: !16, line: 188, baseType: !240, size: 64, align: 64, offset: 512)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !242, file: !16, line: 189, baseType: !240, size: 64, align: 64, offset: 576)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !242, file: !16, line: 191, baseType: !99, size: 64, align: 64, offset: 640)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !242, file: !16, line: 193, baseType: !317, size: 64, align: 64, offset: 704)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64, align: 64)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !319)
!319 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !193, file: !4, line: 151, baseType: !322, size: 64, align: 64, offset: 320)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64, align: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{null, !183}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !193, file: !4, line: 152, baseType: !326, size: 64, align: 64, offset: 384)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64, align: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{!199, !183, !329, !206}
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !193, file: !4, line: 155, baseType: !331, size: 64, align: 64, offset: 448)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64, align: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{!329, !183}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !185, file: !4, line: 103, baseType: !200, size: 64, align: 64, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !185, file: !4, line: 104, baseType: !336, size: 64, align: 64, offset: 192)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !337, line: 77, baseType: !338)
!337 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64, align: 64)
!339 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !337, line: 77, flags: DIFlagFwdDecl)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !185, file: !4, line: 105, baseType: !336, size: 64, align: 64, offset: 256)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !185, file: !4, line: 106, baseType: !200, size: 64, align: 64, offset: 320)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !185, file: !4, line: 107, baseType: !297, size: 32, align: 32, offset: 384)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !185, file: !4, line: 109, baseType: !202, size: 64, align: 64, offset: 448)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !185, file: !4, line: 110, baseType: !345, size: 64, align: 64, offset: 512)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64, align: 64)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !347, line: 39, baseType: !348)
!347 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !347, line: 41, size: 192, align: 64, elements: !349)
!349 = !{!350, !351, !352}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !348, file: !347, line: 43, baseType: !200, size: 64, align: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !348, file: !347, line: 44, baseType: !202, size: 64, align: 64, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !348, file: !347, line: 45, baseType: !202, size: 64, align: 64, offset: 128)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !185, file: !4, line: 111, baseType: !345, size: 64, align: 64, offset: 576)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !185, file: !4, line: 112, baseType: !345, size: 64, align: 64, offset: 640)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !185, file: !4, line: 113, baseType: !356, size: 48, align: 8, offset: 704)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 48, align: 8, elements: !357)
!357 = !{!358}
!358 = !DISubrange(count: 6)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !185, file: !4, line: 117, baseType: !297, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !185, file: !4, line: 118, baseType: !297, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !185, file: !4, line: 119, baseType: !297, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !185, file: !4, line: 120, baseType: !297, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !185, file: !4, line: 121, baseType: !297, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !185, file: !4, line: 122, baseType: !297, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !185, file: !4, line: 124, baseType: !245, size: 64, align: 64, offset: 768)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !185, file: !4, line: 125, baseType: !245, size: 64, align: 64, offset: 832)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !151, file: !154, line: 38, baseType: !216, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !151, file: !154, line: 39, baseType: !216, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !151, file: !154, line: 40, baseType: !216, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !151, file: !154, line: 41, baseType: !216, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !151, file: !154, line: 42, baseType: !216, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !151, file: !154, line: 43, baseType: !216, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !151, file: !154, line: 44, baseType: !216, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !151, file: !154, line: 45, baseType: !216, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !151, file: !154, line: 46, baseType: !99, size: 64, align: 64, offset: 1792)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !151, file: !154, line: 47, baseType: !99, size: 64, align: 64, offset: 1856)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !151, file: !142, line: 27, baseType: !99, size: 64, align: 64, offset: 1920)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_nick", scope: !151, file: !142, line: 28, baseType: !99, size: 64, align: 64, offset: 1984)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !151, file: !142, line: 30, baseType: !96, size: 32, align: 32, offset: 2048)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_username", scope: !151, file: !142, line: 31, baseType: !99, size: 64, align: 64, offset: 2112)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !151, file: !142, line: 32, baseType: !99, size: 64, align: 64, offset: 2176)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !151, file: !142, line: 34, baseType: !96, size: 32, align: 32, offset: 2240)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !151, file: !142, line: 35, baseType: !96, size: 32, align: 32, offset: 2272)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !151, file: !142, line: 36, baseType: !96, size: 32, align: 32, offset: 2304)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks", scope: !151, file: !142, line: 38, baseType: !96, size: 32, align: 32, offset: 2336)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !151, file: !142, line: 38, baseType: !96, size: 32, align: 32, offset: 2368)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes", scope: !151, file: !142, line: 38, baseType: !96, size: 32, align: 32, offset: 2400)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois", scope: !151, file: !142, line: 38, baseType: !96, size: 32, align: 32, offset: 2432)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !141, file: !145, line: 9, baseType: !390, size: 64, align: 64, offset: 192)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !391, line: 75, baseType: !392)
!391 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !393, line: 139, baseType: !230)
!393 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!394 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !141, file: !145, line: 10, baseType: !390, size: 64, align: 64, offset: 256)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !141, file: !145, line: 12, baseType: !99, size: 64, align: 64, offset: 320)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !141, file: !145, line: 13, baseType: !99, size: 64, align: 64, offset: 384)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !141, file: !145, line: 15, baseType: !216, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !141, file: !145, line: 16, baseType: !216, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !141, file: !145, line: 17, baseType: !216, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !141, file: !145, line: 18, baseType: !216, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !141, file: !145, line: 19, baseType: !216, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !141, file: !145, line: 21, baseType: !403, size: 64, align: 64, offset: 512)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64, align: 64)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !109, line: 102, baseType: !405)
!405 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !109, line: 102, flags: DIFlagFwdDecl)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !141, file: !145, line: 22, baseType: !96, size: 32, align: 32, offset: 576)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !141, file: !145, line: 25, baseType: !408, size: 128, align: 64, offset: 640)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 128, align: 64, elements: !409)
!409 = !{!410}
!410 = !DISubrange(count: 2)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !141, file: !145, line: 26, baseType: !96, size: 32, align: 32, offset: 768)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !141, file: !145, line: 27, baseType: !96, size: 32, align: 32, offset: 800)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !141, file: !145, line: 29, baseType: !414, size: 64, align: 64, offset: 832)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64, align: 64)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !109, line: 103, baseType: !416)
!416 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !109, line: 103, flags: DIFlagFwdDecl)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !141, file: !145, line: 30, baseType: !418, size: 64, align: 64, offset: 896)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64, align: 64)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !420, line: 37, baseType: !421)
!420 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!421 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !420, line: 37, flags: DIFlagFwdDecl)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !141, file: !145, line: 32, baseType: !99, size: 64, align: 64, offset: 960)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !141, file: !145, line: 33, baseType: !99, size: 64, align: 64, offset: 1024)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !141, file: !145, line: 34, baseType: !99, size: 64, align: 64, offset: 1088)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !141, file: !145, line: 35, baseType: !216, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !141, file: !145, line: 36, baseType: !216, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !141, file: !145, line: 37, baseType: !216, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !141, file: !145, line: 38, baseType: !216, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !141, file: !145, line: 40, baseType: !430, size: 128, align: 64, offset: 1216)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !189, line: 504, baseType: !431)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !189, line: 506, size: 128, align: 64, elements: !432)
!432 = !{!433, !435}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !431, file: !189, line: 508, baseType: !434, size: 64, align: 64)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !189, line: 48, baseType: !230)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !431, file: !189, line: 509, baseType: !434, size: 64, align: 64, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !141, file: !145, line: 41, baseType: !390, size: 64, align: 64, offset: 1344)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !141, file: !145, line: 42, baseType: !96, size: 32, align: 32, offset: 1408)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !141, file: !145, line: 44, baseType: !306, size: 64, align: 64, offset: 1472)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !141, file: !145, line: 45, baseType: !306, size: 64, align: 64, offset: 1536)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !141, file: !145, line: 53, baseType: !441, size: 64, align: 64, offset: 1600)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64, align: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{null, !444, !532, !96}
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64, align: 64)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !109, line: 107, baseType: !446)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !447, line: 30, size: 2240, align: 64, elements: !448)
!447 = !DIFile(filename: "../../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!448 = !{!449, !450, !451, !452, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !528, !534, !538, !542, !547, !640, !647, !651}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !446, file: !145, line: 3, baseType: !96, size: 32, align: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !446, file: !145, line: 4, baseType: !96, size: 32, align: 32, offset: 32)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !446, file: !145, line: 6, baseType: !96, size: 32, align: 32, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !446, file: !145, line: 8, baseType: !453, size: 64, align: 64, offset: 128)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64, align: 64)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !109, line: 113, baseType: !455)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !447, line: 25, size: 1920, align: 64, elements: !456)
!456 = !{!457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !455, file: !154, line: 3, baseType: !96, size: 32, align: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !455, file: !154, line: 4, baseType: !96, size: 32, align: 32, offset: 32)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !455, file: !154, line: 6, baseType: !96, size: 32, align: 32, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !455, file: !154, line: 9, baseType: !99, size: 64, align: 64, offset: 128)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !455, file: !154, line: 10, baseType: !96, size: 32, align: 32, offset: 192)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !455, file: !154, line: 11, baseType: !99, size: 64, align: 64, offset: 256)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !455, file: !154, line: 11, baseType: !99, size: 64, align: 64, offset: 320)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !455, file: !154, line: 11, baseType: !99, size: 64, align: 64, offset: 384)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !455, file: !154, line: 13, baseType: !163, size: 16, align: 16, offset: 448)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !455, file: !154, line: 14, baseType: !99, size: 64, align: 64, offset: 512)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !455, file: !154, line: 15, baseType: !99, size: 64, align: 64, offset: 576)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !455, file: !154, line: 16, baseType: !96, size: 32, align: 32, offset: 640)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !455, file: !154, line: 17, baseType: !99, size: 64, align: 64, offset: 704)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !455, file: !154, line: 19, baseType: !107, size: 64, align: 64, offset: 768)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !455, file: !154, line: 19, baseType: !107, size: 64, align: 64, offset: 832)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !455, file: !154, line: 21, baseType: !99, size: 64, align: 64, offset: 896)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !455, file: !154, line: 22, baseType: !99, size: 64, align: 64, offset: 960)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !455, file: !154, line: 23, baseType: !99, size: 64, align: 64, offset: 1024)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !455, file: !154, line: 24, baseType: !99, size: 64, align: 64, offset: 1088)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !455, file: !154, line: 26, baseType: !99, size: 64, align: 64, offset: 1152)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !455, file: !154, line: 27, baseType: !99, size: 64, align: 64, offset: 1216)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !455, file: !154, line: 28, baseType: !99, size: 64, align: 64, offset: 1280)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !455, file: !154, line: 29, baseType: !99, size: 64, align: 64, offset: 1344)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !455, file: !154, line: 30, baseType: !99, size: 64, align: 64, offset: 1408)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !455, file: !154, line: 31, baseType: !99, size: 64, align: 64, offset: 1472)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !455, file: !154, line: 32, baseType: !99, size: 64, align: 64, offset: 1536)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !455, file: !154, line: 33, baseType: !99, size: 64, align: 64, offset: 1600)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !455, file: !154, line: 35, baseType: !183, size: 64, align: 64, offset: 1664)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !455, file: !154, line: 38, baseType: !216, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !455, file: !154, line: 39, baseType: !216, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !455, file: !154, line: 40, baseType: !216, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !455, file: !154, line: 41, baseType: !216, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !455, file: !154, line: 42, baseType: !216, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !455, file: !154, line: 43, baseType: !216, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !455, file: !154, line: 44, baseType: !216, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !455, file: !154, line: 45, baseType: !216, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !455, file: !154, line: 46, baseType: !99, size: 64, align: 64, offset: 1792)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !455, file: !154, line: 47, baseType: !99, size: 64, align: 64, offset: 1856)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !446, file: !145, line: 9, baseType: !390, size: 64, align: 64, offset: 192)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !446, file: !145, line: 10, baseType: !390, size: 64, align: 64, offset: 256)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !446, file: !145, line: 12, baseType: !99, size: 64, align: 64, offset: 320)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !446, file: !145, line: 13, baseType: !99, size: 64, align: 64, offset: 384)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !446, file: !145, line: 15, baseType: !216, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !446, file: !145, line: 16, baseType: !216, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !446, file: !145, line: 17, baseType: !216, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !446, file: !145, line: 18, baseType: !216, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !446, file: !145, line: 19, baseType: !216, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !446, file: !145, line: 21, baseType: !403, size: 64, align: 64, offset: 512)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !446, file: !145, line: 22, baseType: !96, size: 32, align: 32, offset: 576)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !446, file: !145, line: 25, baseType: !408, size: 128, align: 64, offset: 640)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !446, file: !145, line: 26, baseType: !96, size: 32, align: 32, offset: 768)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !446, file: !145, line: 27, baseType: !96, size: 32, align: 32, offset: 800)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !446, file: !145, line: 29, baseType: !414, size: 64, align: 64, offset: 832)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !446, file: !145, line: 30, baseType: !418, size: 64, align: 64, offset: 896)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !446, file: !145, line: 32, baseType: !99, size: 64, align: 64, offset: 960)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !446, file: !145, line: 33, baseType: !99, size: 64, align: 64, offset: 1024)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !446, file: !145, line: 34, baseType: !99, size: 64, align: 64, offset: 1088)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !446, file: !145, line: 35, baseType: !216, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !446, file: !145, line: 36, baseType: !216, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !446, file: !145, line: 37, baseType: !216, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !446, file: !145, line: 38, baseType: !216, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !446, file: !145, line: 40, baseType: !430, size: 128, align: 64, offset: 1216)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !446, file: !145, line: 41, baseType: !390, size: 64, align: 64, offset: 1344)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !446, file: !145, line: 42, baseType: !96, size: 32, align: 32, offset: 1408)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !446, file: !145, line: 44, baseType: !306, size: 64, align: 64, offset: 1472)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !446, file: !145, line: 45, baseType: !306, size: 64, align: 64, offset: 1536)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !446, file: !145, line: 53, baseType: !441, size: 64, align: 64, offset: 1600)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !446, file: !145, line: 55, baseType: !525, size: 64, align: 64, offset: 1664)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64, align: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!96, !444, !100}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !446, file: !145, line: 57, baseType: !529, size: 64, align: 64, offset: 1728)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64, align: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{!96, !444, !532}
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64, align: 64)
!533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !446, file: !145, line: 60, baseType: !535, size: 64, align: 64, offset: 1792)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64, align: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{!532, !444}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !446, file: !145, line: 62, baseType: !539, size: 64, align: 64, offset: 1856)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64, align: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{null, !444, !532, !532, !96}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !446, file: !145, line: 65, baseType: !543, size: 64, align: 64, offset: 1920)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64, align: 64)
!544 = !DISubroutineType(types: !545)
!545 = !{!546, !444, !532, !532}
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64, align: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !446, file: !145, line: 69, baseType: !548, size: 64, align: 64, offset: 1984)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64, align: 64)
!549 = !DISubroutineType(types: !550)
!550 = !{!551, !444, !532}
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64, align: 64)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !109, line: 109, baseType: !553)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !554, line: 15, size: 1408, align: 64, elements: !555)
!554 = !DIFile(filename: "../../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!555 = !{!556, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !591, !592, !594, !595, !596, !597, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !553, file: !557, line: 3, baseType: !96, size: 32, align: 32)
!557 = !DIFile(filename: "../../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!558 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !553, file: !557, line: 4, baseType: !96, size: 32, align: 32, offset: 32)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !553, file: !557, line: 5, baseType: !418, size: 64, align: 64, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !553, file: !557, line: 7, baseType: !87, size: 64, align: 64, offset: 128)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !553, file: !557, line: 8, baseType: !444, size: 64, align: 64, offset: 192)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !553, file: !557, line: 9, baseType: !99, size: 64, align: 64, offset: 256)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !553, file: !557, line: 10, baseType: !99, size: 64, align: 64, offset: 320)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !553, file: !557, line: 11, baseType: !390, size: 64, align: 64, offset: 384)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !553, file: !557, line: 12, baseType: !96, size: 32, align: 32, offset: 448)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !553, file: !557, line: 13, baseType: !99, size: 64, align: 64, offset: 512)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !553, file: !557, line: 15, baseType: !568, size: 64, align: 64, offset: 576)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64, align: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{null, !571}
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64, align: 64)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !109, line: 108, baseType: !573)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !574, line: 5, size: 704, align: 64, elements: !575)
!574 = !DIFile(filename: "../../../../src/core/window-item-def.h", directory: "/home/lichi/Desktop/irssi/task1")
!575 = !{!576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !573, file: !557, line: 3, baseType: !96, size: 32, align: 32)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !573, file: !557, line: 4, baseType: !96, size: 32, align: 32, offset: 32)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !573, file: !557, line: 5, baseType: !418, size: 64, align: 64, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !573, file: !557, line: 7, baseType: !87, size: 64, align: 64, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !573, file: !557, line: 8, baseType: !444, size: 64, align: 64, offset: 192)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !573, file: !557, line: 9, baseType: !99, size: 64, align: 64, offset: 256)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !573, file: !557, line: 10, baseType: !99, size: 64, align: 64, offset: 320)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !573, file: !557, line: 11, baseType: !390, size: 64, align: 64, offset: 384)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !573, file: !557, line: 12, baseType: !96, size: 32, align: 32, offset: 448)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !573, file: !557, line: 13, baseType: !99, size: 64, align: 64, offset: 512)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !573, file: !557, line: 15, baseType: !568, size: 64, align: 64, offset: 576)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !573, file: !557, line: 17, baseType: !588, size: 64, align: 64, offset: 640)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64, align: 64)
!589 = !DISubroutineType(types: !590)
!590 = !{!532, !571}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !553, file: !557, line: 17, baseType: !588, size: 64, align: 64, offset: 640)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !553, file: !593, line: 5, baseType: !99, size: 64, align: 64, offset: 704)
!593 = !DIFile(filename: "../../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!594 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !553, file: !593, line: 6, baseType: !99, size: 64, align: 64, offset: 768)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !553, file: !593, line: 7, baseType: !390, size: 64, align: 64, offset: 832)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !553, file: !593, line: 9, baseType: !418, size: 64, align: 64, offset: 896)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !553, file: !593, line: 10, baseType: !598, size: 64, align: 64, offset: 960)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64, align: 64)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !109, line: 111, baseType: !600)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !601, line: 13, size: 576, align: 64, elements: !602)
!601 = !DIFile(filename: "../../../../src/core/nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!602 = !{!603, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !621, !622}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !600, file: !604, line: 3, baseType: !96, size: 32, align: 32)
!604 = !DIFile(filename: "../../../../src/core/nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!605 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !600, file: !604, line: 4, baseType: !96, size: 32, align: 32, offset: 32)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !600, file: !604, line: 6, baseType: !390, size: 64, align: 64, offset: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !600, file: !604, line: 8, baseType: !99, size: 64, align: 64, offset: 128)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !600, file: !604, line: 9, baseType: !99, size: 64, align: 64, offset: 192)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !600, file: !604, line: 10, baseType: !99, size: 64, align: 64, offset: 256)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !600, file: !604, line: 11, baseType: !96, size: 32, align: 32, offset: 320)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !600, file: !604, line: 14, baseType: !216, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !600, file: !604, line: 15, baseType: !216, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !600, file: !604, line: 18, baseType: !216, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !600, file: !604, line: 19, baseType: !216, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !600, file: !604, line: 20, baseType: !216, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !600, file: !604, line: 21, baseType: !216, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !600, file: !604, line: 22, baseType: !618, size: 64, align: 8, offset: 360)
!618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 64, align: 8, elements: !619)
!619 = !{!620}
!620 = !DISubrange(count: 8)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !600, file: !604, line: 26, baseType: !87, size: 64, align: 64, offset: 448)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !600, file: !604, line: 28, baseType: !598, size: 64, align: 64, offset: 512)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !553, file: !593, line: 12, baseType: !216, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !553, file: !593, line: 13, baseType: !99, size: 64, align: 64, offset: 1088)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !553, file: !593, line: 14, baseType: !96, size: 32, align: 32, offset: 1152)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !553, file: !593, line: 15, baseType: !99, size: 64, align: 64, offset: 1216)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !553, file: !593, line: 17, baseType: !216, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !553, file: !593, line: 18, baseType: !216, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !553, file: !593, line: 19, baseType: !216, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !553, file: !593, line: 20, baseType: !216, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !553, file: !593, line: 22, baseType: !216, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !553, file: !593, line: 23, baseType: !216, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !553, file: !593, line: 24, baseType: !216, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !553, file: !593, line: 25, baseType: !216, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !553, file: !593, line: 26, baseType: !216, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !553, file: !593, line: 31, baseType: !637, size: 64, align: 64, offset: 1344)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64, align: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!99, !551}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !446, file: !145, line: 70, baseType: !641, size: 64, align: 64, offset: 2048)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64, align: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{!644, !444, !532}
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64, align: 64)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !109, line: 110, baseType: !646)
!646 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !109, line: 110, flags: DIFlagFwdDecl)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !446, file: !145, line: 71, baseType: !648, size: 64, align: 64, offset: 2112)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64, align: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!96, !532, !532}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !446, file: !145, line: 73, baseType: !648, size: 64, align: 64, offset: 2176)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !141, file: !145, line: 55, baseType: !525, size: 64, align: 64, offset: 1664)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !141, file: !145, line: 57, baseType: !529, size: 64, align: 64, offset: 1728)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !141, file: !145, line: 60, baseType: !535, size: 64, align: 64, offset: 1792)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !141, file: !145, line: 62, baseType: !539, size: 64, align: 64, offset: 1856)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !141, file: !145, line: 65, baseType: !543, size: 64, align: 64, offset: 1920)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !141, file: !145, line: 69, baseType: !548, size: 64, align: 64, offset: 1984)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !141, file: !145, line: 70, baseType: !641, size: 64, align: 64, offset: 2048)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !141, file: !145, line: 71, baseType: !648, size: 64, align: 64, offset: 2112)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !141, file: !145, line: 73, baseType: !648, size: 64, align: 64, offset: 2176)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "redirects", scope: !141, file: !142, line: 46, baseType: !306, size: 64, align: 64, offset: 2240)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_queue", scope: !141, file: !142, line: 47, baseType: !306, size: 64, align: 64, offset: 2304)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_next", scope: !141, file: !142, line: 48, baseType: !664, size: 64, align: 64, offset: 2368)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64, align: 64)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "REDIRECT_REC", file: !90, line: 8, baseType: !666)
!666 = !DICompositeType(tag: DW_TAG_structure_type, name: "_REDIRECT_REC", file: !90, line: 8, flags: DIFlagFwdDecl)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_active", scope: !141, file: !142, line: 49, baseType: !306, size: 64, align: 64, offset: 2432)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "last_nick", scope: !141, file: !142, line: 51, baseType: !99, size: 64, align: 64, offset: 2496)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !141, file: !142, line: 53, baseType: !99, size: 64, align: 64, offset: 2560)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !141, file: !142, line: 54, baseType: !99, size: 64, align: 64, offset: 2624)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "wanted_usermode", scope: !141, file: !142, line: 55, baseType: !99, size: 64, align: 64, offset: 2688)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "userhost", scope: !141, file: !142, line: 56, baseType: !99, size: 64, align: 64, offset: 2752)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "channels_formed", scope: !141, file: !142, line: 57, baseType: !96, size: 32, align: 32, offset: 2816)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "whois_found", scope: !141, file: !142, line: 59, baseType: !216, size: 1, align: 32, offset: 2848, flags: DIFlagBitField, extraData: i64 2848)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "whowas_found", scope: !141, file: !142, line: 60, baseType: !216, size: 1, align: 32, offset: 2849, flags: DIFlagBitField, extraData: i64 2848)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "emode_known", scope: !141, file: !142, line: 62, baseType: !216, size: 1, align: 32, offset: 2850, flags: DIFlagBitField, extraData: i64 2848)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_mode", scope: !141, file: !142, line: 63, baseType: !216, size: 1, align: 32, offset: 2851, flags: DIFlagBitField, extraData: i64 2848)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_who", scope: !141, file: !142, line: 64, baseType: !216, size: 1, align: 32, offset: 2852, flags: DIFlagBitField, extraData: i64 2848)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "one_endofwho", scope: !141, file: !142, line: 65, baseType: !216, size: 1, align: 32, offset: 2853, flags: DIFlagBitField, extraData: i64 2848)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "disable_lag", scope: !141, file: !142, line: 66, baseType: !216, size: 1, align: 32, offset: 2854, flags: DIFlagBitField, extraData: i64 2848)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "nick_collision", scope: !141, file: !142, line: 67, baseType: !216, size: 1, align: 32, offset: 2855, flags: DIFlagBitField, extraData: i64 2848)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "motd_got", scope: !141, file: !142, line: 68, baseType: !216, size: 1, align: 32, offset: 2856, flags: DIFlagBitField, extraData: i64 2848)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "isupport_sent", scope: !141, file: !142, line: 69, baseType: !216, size: 1, align: 32, offset: 2857, flags: DIFlagBitField, extraData: i64 2848)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "cap_complete", scope: !141, file: !142, line: 70, baseType: !216, size: 1, align: 32, offset: 2858, flags: DIFlagBitField, extraData: i64 2848)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "cap_in_multiline", scope: !141, file: !142, line: 71, baseType: !216, size: 1, align: 32, offset: 2859, flags: DIFlagBitField, extraData: i64 2848)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_success", scope: !141, file: !142, line: 72, baseType: !216, size: 1, align: 32, offset: 2860, flags: DIFlagBitField, extraData: i64 2848)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks_in_cmd", scope: !141, file: !142, line: 74, baseType: !96, size: 32, align: 32, offset: 2880)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes_in_cmd", scope: !141, file: !142, line: 75, baseType: !96, size: 32, align: 32, offset: 2912)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois_in_cmd", scope: !141, file: !142, line: 76, baseType: !96, size: 32, align: 32, offset: 2944)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs_in_cmd", scope: !141, file: !142, line: 77, baseType: !96, size: 32, align: 32, offset: 2976)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "cap_supported", scope: !141, file: !142, line: 79, baseType: !418, size: 64, align: 64, offset: 3008)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "cap_active", scope: !141, file: !142, line: 80, baseType: !306, size: 64, align: 64, offset: 3072)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "cap_queue", scope: !141, file: !142, line: 81, baseType: !306, size: 64, align: 64, offset: 3136)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_buffer", scope: !141, file: !142, line: 83, baseType: !345, size: 64, align: 64, offset: 3200)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_timeout", scope: !141, file: !142, line: 84, baseType: !297, size: 32, align: 32, offset: 3264)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcount", scope: !141, file: !142, line: 87, baseType: !96, size: 32, align: 32, offset: 3296)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "cmdqueue", scope: !141, file: !142, line: 91, baseType: !306, size: 64, align: 64, offset: 3328)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "wait_cmd", scope: !141, file: !142, line: 92, baseType: !430, size: 128, align: 64, offset: 3392)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd", scope: !141, file: !142, line: 93, baseType: !430, size: 128, align: 64, offset: 3520)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !141, file: !142, line: 95, baseType: !96, size: 32, align: 32, offset: 3648)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !141, file: !142, line: 96, baseType: !96, size: 32, align: 32, offset: 3680)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !141, file: !142, line: 97, baseType: !96, size: 32, align: 32, offset: 3712)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "idles", scope: !141, file: !142, line: 100, baseType: !306, size: 64, align: 64, offset: 3776)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "ctcpqueue", scope: !141, file: !142, line: 103, baseType: !306, size: 64, align: 64, offset: 3840)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "knockoutlist", scope: !141, file: !142, line: 106, baseType: !306, size: 64, align: 64, offset: 3904)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "splits", scope: !141, file: !142, line: 108, baseType: !418, size: 64, align: 64, offset: 3968)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "split_servers", scope: !141, file: !142, line: 109, baseType: !306, size: 64, align: 64, offset: 4032)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "rejoin_channels", scope: !141, file: !142, line: 111, baseType: !306, size: 64, align: 64, offset: 4096)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "chanqueries", scope: !141, file: !142, line: 114, baseType: !87, size: 64, align: 64, offset: 4160)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "isupport", scope: !141, file: !142, line: 116, baseType: !418, size: 64, align: 64, offset: 4224)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !141, file: !142, line: 117, baseType: !712, size: 32768, align: 64, offset: 4288)
!712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !713, size: 32768, align: 64, elements: !762)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "modes_type", file: !714, line: 10, size: 128, align: 64, elements: !715)
!714 = !DIFile(filename: "../../../../src/irc/core/modes.h", directory: "/home/lichi/Desktop/irssi/task1")
!715 = !{!716, !761}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !713, file: !714, line: 11, baseType: !717, size: 64, align: 64)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64, align: 64)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_func_t", file: !714, line: 7, baseType: !719)
!719 = !DISubroutineType(types: !720)
!720 = !{null, !721, !532, !100, !100, !99, !345}
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64, align: 64)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_CHANNEL_REC", file: !90, line: 7, baseType: !723)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_CHANNEL_REC", file: !724, line: 15, size: 1600, align: 64, elements: !725)
!724 = !DIFile(filename: "../../../../src/irc/core/irc-channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!725 = !{!726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !723, file: !557, line: 3, baseType: !96, size: 32, align: 32)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !723, file: !557, line: 4, baseType: !96, size: 32, align: 32, offset: 32)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !723, file: !557, line: 5, baseType: !418, size: 64, align: 64, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !723, file: !557, line: 7, baseType: !87, size: 64, align: 64, offset: 128)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !723, file: !557, line: 8, baseType: !139, size: 64, align: 64, offset: 192)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !723, file: !557, line: 9, baseType: !99, size: 64, align: 64, offset: 256)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !723, file: !557, line: 10, baseType: !99, size: 64, align: 64, offset: 320)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !723, file: !557, line: 11, baseType: !390, size: 64, align: 64, offset: 384)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !723, file: !557, line: 12, baseType: !96, size: 32, align: 32, offset: 448)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !723, file: !557, line: 13, baseType: !99, size: 64, align: 64, offset: 512)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !723, file: !557, line: 15, baseType: !568, size: 64, align: 64, offset: 576)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !723, file: !557, line: 17, baseType: !588, size: 64, align: 64, offset: 640)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !723, file: !593, line: 5, baseType: !99, size: 64, align: 64, offset: 704)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !723, file: !593, line: 6, baseType: !99, size: 64, align: 64, offset: 768)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !723, file: !593, line: 7, baseType: !390, size: 64, align: 64, offset: 832)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !723, file: !593, line: 9, baseType: !418, size: 64, align: 64, offset: 896)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !723, file: !593, line: 10, baseType: !598, size: 64, align: 64, offset: 960)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !723, file: !593, line: 12, baseType: !216, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !723, file: !593, line: 13, baseType: !99, size: 64, align: 64, offset: 1088)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !723, file: !593, line: 14, baseType: !96, size: 32, align: 32, offset: 1152)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !723, file: !593, line: 15, baseType: !99, size: 64, align: 64, offset: 1216)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !723, file: !593, line: 17, baseType: !216, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !723, file: !593, line: 18, baseType: !216, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !723, file: !593, line: 19, baseType: !216, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !723, file: !593, line: 20, baseType: !216, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !723, file: !593, line: 22, baseType: !216, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !723, file: !593, line: 23, baseType: !216, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !723, file: !593, line: 24, baseType: !216, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !723, file: !593, line: 25, baseType: !216, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !723, file: !593, line: 26, baseType: !216, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !723, file: !593, line: 31, baseType: !637, size: 64, align: 64, offset: 1344)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "banlist", scope: !723, file: !724, line: 18, baseType: !306, size: 64, align: 64, offset: 1408)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "massjoin_start", scope: !723, file: !724, line: 20, baseType: !390, size: 64, align: 64, offset: 1472)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "massjoins", scope: !723, file: !724, line: 21, baseType: !96, size: 32, align: 32, offset: 1536)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "last_massjoins", scope: !723, file: !724, line: 22, baseType: !96, size: 32, align: 32, offset: 1568)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !713, file: !714, line: 12, baseType: !100, size: 8, align: 8, offset: 64)
!762 = !{!763}
!763 = !DISubrange(count: 256)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !141, file: !142, line: 118, baseType: !765, size: 2048, align: 8, offset: 37056)
!765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 2048, align: 8, elements: !762)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "nick_comp_func", scope: !141, file: !142, line: 120, baseType: !648, size: 64, align: 64, offset: 39104)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "GFunc", file: !189, line: 88, baseType: !768)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64, align: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{null, !245, !245}
!771 = !{i32 2, !"Dwarf Version", i32 4}
!772 = !{i32 2, !"Debug Info Version", i32 3}
!773 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!774 = distinct !DISubprogram(name: "fe_irc_notifylist_init", scope: !775, file: !775, line: 225, type: !294, isLocal: false, isDefinition: true, scopeLine: 226, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !776)
!775 = !DIFile(filename: "fe-notifylist.c", directory: "/home/lichi/Desktop/irssi/task1")
!776 = !{}
!777 = !DILocation(line: 227, column: 2, scope: !774)
!778 = !DILocation(line: 229, column: 2, scope: !774)
!779 = !DILocation(line: 230, column: 2, scope: !774)
!780 = !DILocation(line: 231, column: 2, scope: !774)
!781 = !DILocation(line: 232, column: 2, scope: !774)
!782 = !DILocation(line: 234, column: 2, scope: !774)
!783 = !DILocation(line: 236, column: 2, scope: !774)
!784 = !DILocation(line: 237, column: 2, scope: !774)
!785 = !DILocation(line: 238, column: 1, scope: !774)
!786 = distinct !DISubprogram(name: "cmd_notify", scope: !775, file: !775, line: 173, type: !787, isLocal: true, isDefinition: true, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !776)
!787 = !DISubroutineType(types: !788)
!788 = !{null, !532}
!789 = !DILocalVariable(name: "data", arg: 1, scope: !786, file: !775, line: 173, type: !532)
!790 = !DIExpression()
!791 = !DILocation(line: 173, column: 36, scope: !786)
!792 = !DILocation(line: 175, column: 7, scope: !793)
!793 = distinct !DILexicalBlock(scope: !786, file: !775, line: 175, column: 6)
!794 = !DILocation(line: 175, column: 6, scope: !793)
!795 = !DILocation(line: 175, column: 12, scope: !793)
!796 = !DILocation(line: 175, column: 6, scope: !786)
!797 = !DILocation(line: 176, column: 3, scope: !798)
!798 = distinct !DILexicalBlock(scope: !793, file: !775, line: 175, column: 21)
!799 = !DILocation(line: 177, column: 3, scope: !798)
!800 = !DILocation(line: 178, column: 2, scope: !798)
!801 = !DILocation(line: 180, column: 26, scope: !802)
!802 = distinct !DILexicalBlock(scope: !786, file: !775, line: 180, column: 6)
!803 = !DILocation(line: 180, column: 6, scope: !802)
!804 = !DILocation(line: 180, column: 44, scope: !802)
!805 = !DILocation(line: 180, column: 6, scope: !786)
!806 = !DILocation(line: 181, column: 3, scope: !807)
!807 = distinct !DILexicalBlock(scope: !802, file: !775, line: 180, column: 50)
!808 = !DILocation(line: 182, column: 3, scope: !807)
!809 = !DILocation(line: 183, column: 2, scope: !807)
!810 = !DILocation(line: 184, column: 1, scope: !786)
!811 = distinct !DISubprogram(name: "notifylist_joined", scope: !775, file: !775, line: 186, type: !812, isLocal: true, isDefinition: true, scopeLine: 189, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !776)
!812 = !DISubroutineType(types: !813)
!813 = !{null, !139, !532, !532, !532, !532, !532}
!814 = !DILocalVariable(name: "server", arg: 1, scope: !811, file: !775, line: 186, type: !139)
!815 = !DILocation(line: 186, column: 47, scope: !811)
!816 = !DILocalVariable(name: "nick", arg: 2, scope: !811, file: !775, line: 186, type: !532)
!817 = !DILocation(line: 186, column: 67, scope: !811)
!818 = !DILocalVariable(name: "username", arg: 3, scope: !811, file: !775, line: 187, type: !532)
!819 = !DILocation(line: 187, column: 22, scope: !811)
!820 = !DILocalVariable(name: "host", arg: 4, scope: !811, file: !775, line: 187, type: !532)
!821 = !DILocation(line: 187, column: 44, scope: !811)
!822 = !DILocalVariable(name: "realname", arg: 5, scope: !811, file: !775, line: 188, type: !532)
!823 = !DILocation(line: 188, column: 22, scope: !811)
!824 = !DILocalVariable(name: "awaymsg", arg: 6, scope: !811, file: !775, line: 188, type: !532)
!825 = !DILocation(line: 188, column: 44, scope: !811)
!826 = !DILocation(line: 190, column: 2, scope: !811)
!827 = distinct !{!827, !826}
!828 = !DILocation(line: 190, column: 10, scope: !829)
!829 = !DILexicalBlockFile(scope: !830, file: !775, discriminator: 1)
!830 = distinct !DILexicalBlock(scope: !831, file: !775, line: 190, column: 10)
!831 = distinct !DILexicalBlock(scope: !811, file: !775, line: 190, column: 4)
!832 = !DILocation(line: 190, column: 15, scope: !829)
!833 = !DILocation(line: 190, column: 5, scope: !834)
!834 = !DILexicalBlockFile(scope: !835, file: !775, discriminator: 2)
!835 = distinct !DILexicalBlock(scope: !830, file: !775, line: 190, column: 3)
!836 = !DILocation(line: 190, column: 14, scope: !837)
!837 = !DILexicalBlockFile(scope: !838, file: !775, discriminator: 3)
!838 = distinct !DILexicalBlock(scope: !830, file: !775, line: 190, column: 12)
!839 = !DILocation(line: 190, column: 99, scope: !837)
!840 = !DILocation(line: 190, column: 110, scope: !841)
!841 = !DILexicalBlockFile(scope: !831, file: !775, discriminator: 4)
!842 = !DILocation(line: 192, column: 49, scope: !811)
!843 = !DILocation(line: 192, column: 57, scope: !811)
!844 = !DILocation(line: 192, column: 106, scope: !811)
!845 = !DILocation(line: 192, column: 112, scope: !811)
!846 = !DILocation(line: 192, column: 122, scope: !811)
!847 = !DILocation(line: 192, column: 128, scope: !811)
!848 = !DILocation(line: 192, column: 138, scope: !811)
!849 = !DILocation(line: 192, column: 146, scope: !811)
!850 = !DILocation(line: 192, column: 155, scope: !811)
!851 = !DILocation(line: 192, column: 163, scope: !811)
!852 = !DILocation(line: 192, column: 138, scope: !853)
!853 = !DILexicalBlockFile(scope: !811, file: !775, discriminator: 1)
!854 = !DILocation(line: 192, column: 11, scope: !855)
!855 = !DILexicalBlockFile(scope: !811, file: !775, discriminator: 2)
!856 = !DILocation(line: 192, column: 19, scope: !855)
!857 = !DILocation(line: 192, column: 28, scope: !855)
!858 = !DILocation(line: 192, column: 138, scope: !855)
!859 = !DILocation(line: 192, column: 138, scope: !860)
!860 = !DILexicalBlockFile(scope: !811, file: !775, discriminator: 3)
!861 = !DILocation(line: 192, column: 2, scope: !860)
!862 = !DILocation(line: 195, column: 1, scope: !811)
!863 = !DILocation(line: 195, column: 1, scope: !853)
!864 = distinct !DISubprogram(name: "notifylist_left", scope: !775, file: !775, line: 197, type: !812, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !776)
!865 = !DILocalVariable(name: "server", arg: 1, scope: !864, file: !775, line: 197, type: !139)
!866 = !DILocation(line: 197, column: 45, scope: !864)
!867 = !DILocalVariable(name: "nick", arg: 2, scope: !864, file: !775, line: 197, type: !532)
!868 = !DILocation(line: 197, column: 65, scope: !864)
!869 = !DILocalVariable(name: "username", arg: 3, scope: !864, file: !775, line: 198, type: !532)
!870 = !DILocation(line: 198, column: 20, scope: !864)
!871 = !DILocalVariable(name: "host", arg: 4, scope: !864, file: !775, line: 198, type: !532)
!872 = !DILocation(line: 198, column: 42, scope: !864)
!873 = !DILocalVariable(name: "realname", arg: 5, scope: !864, file: !775, line: 199, type: !532)
!874 = !DILocation(line: 199, column: 20, scope: !864)
!875 = !DILocalVariable(name: "awaymsg", arg: 6, scope: !864, file: !775, line: 199, type: !532)
!876 = !DILocation(line: 199, column: 42, scope: !864)
!877 = !DILocation(line: 201, column: 2, scope: !864)
!878 = distinct !{!878, !877}
!879 = !DILocation(line: 201, column: 10, scope: !880)
!880 = !DILexicalBlockFile(scope: !881, file: !775, discriminator: 1)
!881 = distinct !DILexicalBlock(scope: !882, file: !775, line: 201, column: 10)
!882 = distinct !DILexicalBlock(scope: !864, file: !775, line: 201, column: 4)
!883 = !DILocation(line: 201, column: 15, scope: !880)
!884 = !DILocation(line: 201, column: 5, scope: !885)
!885 = !DILexicalBlockFile(scope: !886, file: !775, discriminator: 2)
!886 = distinct !DILexicalBlock(scope: !881, file: !775, line: 201, column: 3)
!887 = !DILocation(line: 201, column: 14, scope: !888)
!888 = !DILexicalBlockFile(scope: !889, file: !775, discriminator: 3)
!889 = distinct !DILexicalBlock(scope: !881, file: !775, line: 201, column: 12)
!890 = !DILocation(line: 201, column: 99, scope: !888)
!891 = !DILocation(line: 201, column: 110, scope: !892)
!892 = !DILexicalBlockFile(scope: !882, file: !775, discriminator: 4)
!893 = !DILocation(line: 203, column: 49, scope: !864)
!894 = !DILocation(line: 203, column: 57, scope: !864)
!895 = !DILocation(line: 203, column: 106, scope: !864)
!896 = !DILocation(line: 203, column: 112, scope: !864)
!897 = !DILocation(line: 203, column: 122, scope: !864)
!898 = !DILocation(line: 203, column: 128, scope: !864)
!899 = !DILocation(line: 203, column: 138, scope: !864)
!900 = !DILocation(line: 203, column: 146, scope: !864)
!901 = !DILocation(line: 203, column: 155, scope: !864)
!902 = !DILocation(line: 203, column: 163, scope: !864)
!903 = !DILocation(line: 203, column: 138, scope: !904)
!904 = !DILexicalBlockFile(scope: !864, file: !775, discriminator: 1)
!905 = !DILocation(line: 203, column: 11, scope: !906)
!906 = !DILexicalBlockFile(scope: !864, file: !775, discriminator: 2)
!907 = !DILocation(line: 203, column: 19, scope: !906)
!908 = !DILocation(line: 203, column: 28, scope: !906)
!909 = !DILocation(line: 203, column: 138, scope: !906)
!910 = !DILocation(line: 203, column: 138, scope: !911)
!911 = !DILexicalBlockFile(scope: !864, file: !775, discriminator: 3)
!912 = !DILocation(line: 203, column: 2, scope: !911)
!913 = !DILocation(line: 206, column: 1, scope: !864)
!914 = !DILocation(line: 206, column: 1, scope: !904)
!915 = distinct !DISubprogram(name: "notifylist_away", scope: !775, file: !775, line: 208, type: !812, isLocal: true, isDefinition: true, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !776)
!916 = !DILocalVariable(name: "server", arg: 1, scope: !915, file: !775, line: 208, type: !139)
!917 = !DILocation(line: 208, column: 45, scope: !915)
!918 = !DILocalVariable(name: "nick", arg: 2, scope: !915, file: !775, line: 208, type: !532)
!919 = !DILocation(line: 208, column: 65, scope: !915)
!920 = !DILocalVariable(name: "username", arg: 3, scope: !915, file: !775, line: 209, type: !532)
!921 = !DILocation(line: 209, column: 20, scope: !915)
!922 = !DILocalVariable(name: "host", arg: 4, scope: !915, file: !775, line: 209, type: !532)
!923 = !DILocation(line: 209, column: 42, scope: !915)
!924 = !DILocalVariable(name: "realname", arg: 5, scope: !915, file: !775, line: 210, type: !532)
!925 = !DILocation(line: 210, column: 20, scope: !915)
!926 = !DILocalVariable(name: "awaymsg", arg: 6, scope: !915, file: !775, line: 210, type: !532)
!927 = !DILocation(line: 210, column: 42, scope: !915)
!928 = !DILocation(line: 212, column: 2, scope: !915)
!929 = distinct !{!929, !928}
!930 = !DILocation(line: 212, column: 10, scope: !931)
!931 = !DILexicalBlockFile(scope: !932, file: !775, discriminator: 1)
!932 = distinct !DILexicalBlock(scope: !933, file: !775, line: 212, column: 10)
!933 = distinct !DILexicalBlock(scope: !915, file: !775, line: 212, column: 4)
!934 = !DILocation(line: 212, column: 15, scope: !931)
!935 = !DILocation(line: 212, column: 5, scope: !936)
!936 = !DILexicalBlockFile(scope: !937, file: !775, discriminator: 2)
!937 = distinct !DILexicalBlock(scope: !932, file: !775, line: 212, column: 3)
!938 = !DILocation(line: 212, column: 14, scope: !939)
!939 = !DILexicalBlockFile(scope: !940, file: !775, discriminator: 3)
!940 = distinct !DILexicalBlock(scope: !932, file: !775, line: 212, column: 12)
!941 = !DILocation(line: 212, column: 99, scope: !939)
!942 = !DILocation(line: 212, column: 110, scope: !943)
!943 = !DILexicalBlockFile(scope: !933, file: !775, discriminator: 4)
!944 = !DILocation(line: 214, column: 6, scope: !945)
!945 = distinct !DILexicalBlock(scope: !915, file: !775, line: 214, column: 6)
!946 = !DILocation(line: 214, column: 14, scope: !945)
!947 = !DILocation(line: 214, column: 6, scope: !915)
!948 = !DILocation(line: 215, column: 50, scope: !949)
!949 = distinct !DILexicalBlock(scope: !945, file: !775, line: 214, column: 22)
!950 = !DILocation(line: 215, column: 58, scope: !949)
!951 = !DILocation(line: 215, column: 107, scope: !949)
!952 = !DILocation(line: 215, column: 113, scope: !949)
!953 = !DILocation(line: 215, column: 123, scope: !949)
!954 = !DILocation(line: 215, column: 129, scope: !949)
!955 = !DILocation(line: 215, column: 139, scope: !949)
!956 = !DILocation(line: 215, column: 148, scope: !949)
!957 = !DILocation(line: 215, column: 156, scope: !949)
!958 = !DILocation(line: 215, column: 165, scope: !949)
!959 = !DILocation(line: 215, column: 173, scope: !949)
!960 = !DILocation(line: 215, column: 148, scope: !961)
!961 = !DILexicalBlockFile(scope: !949, file: !775, discriminator: 1)
!962 = !DILocation(line: 215, column: 12, scope: !963)
!963 = !DILexicalBlockFile(scope: !949, file: !775, discriminator: 2)
!964 = !DILocation(line: 215, column: 20, scope: !963)
!965 = !DILocation(line: 215, column: 29, scope: !963)
!966 = !DILocation(line: 215, column: 148, scope: !963)
!967 = !DILocation(line: 215, column: 148, scope: !968)
!968 = !DILexicalBlockFile(scope: !949, file: !775, discriminator: 3)
!969 = !DILocation(line: 215, column: 3, scope: !968)
!970 = !DILocation(line: 218, column: 2, scope: !949)
!971 = !DILocation(line: 219, column: 50, scope: !972)
!972 = distinct !DILexicalBlock(scope: !945, file: !775, line: 218, column: 9)
!973 = !DILocation(line: 219, column: 58, scope: !972)
!974 = !DILocation(line: 219, column: 109, scope: !972)
!975 = !DILocation(line: 219, column: 115, scope: !972)
!976 = !DILocation(line: 219, column: 125, scope: !972)
!977 = !DILocation(line: 219, column: 131, scope: !972)
!978 = !DILocation(line: 219, column: 141, scope: !972)
!979 = !DILocation(line: 219, column: 149, scope: !972)
!980 = !DILocation(line: 219, column: 158, scope: !972)
!981 = !DILocation(line: 219, column: 166, scope: !972)
!982 = !DILocation(line: 219, column: 141, scope: !983)
!983 = !DILexicalBlockFile(scope: !972, file: !775, discriminator: 1)
!984 = !DILocation(line: 219, column: 12, scope: !985)
!985 = !DILexicalBlockFile(scope: !972, file: !775, discriminator: 2)
!986 = !DILocation(line: 219, column: 20, scope: !985)
!987 = !DILocation(line: 219, column: 29, scope: !985)
!988 = !DILocation(line: 219, column: 141, scope: !985)
!989 = !DILocation(line: 219, column: 141, scope: !990)
!990 = !DILexicalBlockFile(scope: !972, file: !775, discriminator: 3)
!991 = !DILocation(line: 219, column: 3, scope: !990)
!992 = !DILocation(line: 223, column: 1, scope: !915)
!993 = distinct !DISubprogram(name: "fe_irc_notifylist_deinit", scope: !775, file: !775, line: 240, type: !294, isLocal: false, isDefinition: true, scopeLine: 241, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !776)
!994 = !DILocation(line: 242, column: 2, scope: !993)
!995 = !DILocation(line: 244, column: 2, scope: !993)
!996 = !DILocation(line: 245, column: 2, scope: !993)
!997 = !DILocation(line: 246, column: 2, scope: !993)
!998 = !DILocation(line: 247, column: 2, scope: !993)
!999 = !DILocation(line: 248, column: 1, scope: !993)
!1000 = distinct !DISubprogram(name: "cmd_notify_show", scope: !775, file: !775, line: 87, type: !294, isLocal: true, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !776)
!1001 = !DILocalVariable(name: "nicks", scope: !1000, file: !775, line: 89, type: !306)
!1002 = !DILocation(line: 89, column: 10, scope: !1000)
!1003 = !DILocalVariable(name: "offline", scope: !1000, file: !775, line: 89, type: !306)
!1004 = !DILocation(line: 89, column: 18, scope: !1000)
!1005 = !DILocalVariable(name: "tmp", scope: !1000, file: !775, line: 89, type: !306)
!1006 = !DILocation(line: 89, column: 28, scope: !1000)
!1007 = !DILocalVariable(name: "server", scope: !1000, file: !775, line: 90, type: !139)
!1008 = !DILocation(line: 90, column: 18, scope: !1000)
!1009 = !DILocation(line: 92, column: 6, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1000, file: !775, line: 92, column: 6)
!1011 = !DILocation(line: 92, column: 15, scope: !1010)
!1012 = !DILocation(line: 92, column: 6, scope: !1000)
!1013 = !DILocation(line: 93, column: 3, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1010, file: !775, line: 92, column: 23)
!1015 = !DILocation(line: 95, column: 3, scope: !1014)
!1016 = !DILocation(line: 99, column: 8, scope: !1000)
!1017 = !DILocation(line: 100, column: 13, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1000, file: !775, line: 100, column: 2)
!1019 = !DILocation(line: 100, column: 11, scope: !1018)
!1020 = !DILocation(line: 100, column: 7, scope: !1018)
!1021 = !DILocation(line: 100, column: 23, scope: !1022)
!1022 = !DILexicalBlockFile(scope: !1023, file: !775, discriminator: 1)
!1023 = distinct !DILexicalBlock(scope: !1018, file: !775, line: 100, column: 2)
!1024 = !DILocation(line: 100, column: 27, scope: !1022)
!1025 = !DILocation(line: 100, column: 2, scope: !1022)
!1026 = !DILocalVariable(name: "rec", scope: !1027, file: !775, line: 101, type: !1028)
!1027 = distinct !DILexicalBlock(scope: !1023, file: !775, line: 100, column: 52)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64, align: 64)
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "NOTIFYLIST_REC", file: !1030, line: 10, baseType: !1031)
!1030 = !DIFile(filename: "../../../../src/irc/notifylist/notifylist.h", directory: "/home/lichi/Desktop/irssi/task1")
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1030, line: 4, size: 192, align: 64, elements: !1032)
!1032 = !{!1033, !1034, !1035}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !1031, file: !1030, line: 5, baseType: !99, size: 64, align: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "ircnets", scope: !1031, file: !1030, line: 6, baseType: !546, size: 64, align: 64, offset: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "away_check", scope: !1031, file: !1030, line: 9, baseType: !216, size: 1, align: 32, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1036 = !DILocation(line: 101, column: 19, scope: !1027)
!1037 = !DILocation(line: 101, column: 25, scope: !1027)
!1038 = !DILocation(line: 101, column: 30, scope: !1027)
!1039 = !DILocation(line: 103, column: 25, scope: !1027)
!1040 = !DILocation(line: 103, column: 32, scope: !1027)
!1041 = !DILocation(line: 103, column: 37, scope: !1027)
!1042 = !DILocation(line: 103, column: 11, scope: !1027)
!1043 = !DILocation(line: 103, column: 9, scope: !1027)
!1044 = !DILocation(line: 104, column: 2, scope: !1027)
!1045 = !DILocation(line: 100, column: 41, scope: !1046)
!1046 = !DILexicalBlockFile(scope: !1023, file: !775, discriminator: 2)
!1047 = !DILocation(line: 100, column: 46, scope: !1046)
!1048 = !DILocation(line: 100, column: 39, scope: !1046)
!1049 = !DILocation(line: 100, column: 2, scope: !1046)
!1050 = distinct !{!1050, !1051}
!1051 = !DILocation(line: 100, column: 2, scope: !1000)
!1052 = !DILocation(line: 105, column: 25, scope: !1000)
!1053 = !DILocation(line: 105, column: 12, scope: !1000)
!1054 = !DILocation(line: 105, column: 10, scope: !1000)
!1055 = !DILocation(line: 108, column: 13, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1000, file: !775, line: 108, column: 2)
!1057 = !DILocation(line: 108, column: 11, scope: !1056)
!1058 = !DILocation(line: 108, column: 7, scope: !1056)
!1059 = !DILocation(line: 108, column: 23, scope: !1060)
!1060 = !DILexicalBlockFile(scope: !1061, file: !775, discriminator: 1)
!1061 = distinct !DILexicalBlock(scope: !1056, file: !775, line: 108, column: 2)
!1062 = !DILocation(line: 108, column: 27, scope: !1060)
!1063 = !DILocation(line: 108, column: 2, scope: !1060)
!1064 = !DILocalVariable(name: "rec", scope: !1065, file: !775, line: 109, type: !88)
!1065 = distinct !DILexicalBlock(scope: !1061, file: !775, line: 108, column: 52)
!1066 = !DILocation(line: 109, column: 20, scope: !1065)
!1067 = !DILocation(line: 109, column: 26, scope: !1065)
!1068 = !DILocation(line: 109, column: 31, scope: !1065)
!1069 = !DILocation(line: 111, column: 90, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1065, file: !775, line: 111, column: 7)
!1071 = !DILocation(line: 111, column: 72, scope: !1070)
!1072 = !DILocation(line: 111, column: 56, scope: !1070)
!1073 = !DILocation(line: 111, column: 55, scope: !1070)
!1074 = !DILocation(line: 111, column: 30, scope: !1075)
!1075 = !DILexicalBlockFile(scope: !1070, file: !775, discriminator: 3)
!1076 = !DILocation(line: 111, column: 10, scope: !1070)
!1077 = !DILocation(line: 111, column: 7, scope: !1065)
!1078 = !DILocation(line: 111, column: 9, scope: !1079)
!1079 = !DILexicalBlockFile(scope: !1070, file: !775, discriminator: 1)
!1080 = !DILocation(line: 111, column: 7, scope: !1081)
!1081 = !DILexicalBlockFile(scope: !1065, file: !775, discriminator: 2)
!1082 = !DILocation(line: 112, column: 4, scope: !1070)
!1083 = !DILocation(line: 114, column: 51, scope: !1065)
!1084 = !DILocation(line: 114, column: 56, scope: !1065)
!1085 = !DILocation(line: 114, column: 31, scope: !1065)
!1086 = !DILocation(line: 114, column: 12, scope: !1065)
!1087 = !DILocation(line: 114, column: 10, scope: !1065)
!1088 = !DILocation(line: 115, column: 88, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1065, file: !775, line: 115, column: 7)
!1090 = !DILocation(line: 115, column: 70, scope: !1089)
!1091 = !DILocation(line: 115, column: 55, scope: !1089)
!1092 = !DILocation(line: 115, column: 54, scope: !1089)
!1093 = !DILocation(line: 115, column: 29, scope: !1094)
!1094 = !DILexicalBlockFile(scope: !1089, file: !775, discriminator: 3)
!1095 = !DILocation(line: 115, column: 10, scope: !1089)
!1096 = !DILocation(line: 115, column: 7, scope: !1065)
!1097 = !DILocation(line: 115, column: 9, scope: !1098)
!1098 = !DILexicalBlockFile(scope: !1089, file: !775, discriminator: 1)
!1099 = !DILocation(line: 115, column: 7, scope: !1081)
!1100 = !DILocation(line: 116, column: 4, scope: !1089)
!1101 = !DILocation(line: 118, column: 25, scope: !1065)
!1102 = !DILocation(line: 118, column: 33, scope: !1065)
!1103 = !DILocation(line: 118, column: 50, scope: !1065)
!1104 = !DILocation(line: 118, column: 55, scope: !1065)
!1105 = !DILocation(line: 118, column: 3, scope: !1065)
!1106 = !DILocation(line: 119, column: 2, scope: !1065)
!1107 = !DILocation(line: 108, column: 41, scope: !1108)
!1108 = !DILexicalBlockFile(scope: !1061, file: !775, discriminator: 2)
!1109 = !DILocation(line: 108, column: 46, scope: !1108)
!1110 = !DILocation(line: 108, column: 39, scope: !1108)
!1111 = !DILocation(line: 108, column: 2, scope: !1108)
!1112 = distinct !{!1112, !1113}
!1113 = !DILocation(line: 108, column: 2, scope: !1000)
!1114 = !DILocation(line: 122, column: 13, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1000, file: !775, line: 122, column: 2)
!1116 = !DILocation(line: 122, column: 11, scope: !1115)
!1117 = !DILocation(line: 122, column: 7, scope: !1115)
!1118 = !DILocation(line: 122, column: 22, scope: !1119)
!1119 = !DILexicalBlockFile(scope: !1120, file: !775, discriminator: 1)
!1120 = distinct !DILexicalBlock(scope: !1115, file: !775, line: 122, column: 2)
!1121 = !DILocation(line: 122, column: 26, scope: !1119)
!1122 = !DILocation(line: 122, column: 2, scope: !1119)
!1123 = !DILocation(line: 123, column: 12, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1120, file: !775, line: 122, column: 51)
!1125 = !DILocation(line: 123, column: 17, scope: !1124)
!1126 = !DILocation(line: 123, column: 10, scope: !1124)
!1127 = !DILocation(line: 125, column: 88, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1124, file: !775, line: 125, column: 7)
!1129 = !DILocation(line: 125, column: 70, scope: !1128)
!1130 = !DILocation(line: 125, column: 55, scope: !1128)
!1131 = !DILocation(line: 125, column: 54, scope: !1128)
!1132 = !DILocation(line: 125, column: 29, scope: !1133)
!1133 = !DILexicalBlockFile(scope: !1128, file: !775, discriminator: 4)
!1134 = !DILocation(line: 125, column: 10, scope: !1128)
!1135 = !DILocation(line: 125, column: 33, scope: !1128)
!1136 = !DILocation(line: 125, column: 9, scope: !1137)
!1137 = !DILexicalBlockFile(scope: !1128, file: !775, discriminator: 1)
!1138 = !DILocation(line: 125, column: 33, scope: !1139)
!1139 = !DILexicalBlockFile(scope: !1128, file: !775, discriminator: 2)
!1140 = !DILocation(line: 125, column: 36, scope: !1141)
!1141 = !DILexicalBlockFile(scope: !1128, file: !775, discriminator: 3)
!1142 = !DILocation(line: 125, column: 44, scope: !1141)
!1143 = !DILocation(line: 125, column: 53, scope: !1141)
!1144 = !DILocation(line: 125, column: 61, scope: !1141)
!1145 = !DILocation(line: 125, column: 7, scope: !1141)
!1146 = !DILocation(line: 126, column: 4, scope: !1128)
!1147 = !DILocation(line: 127, column: 25, scope: !1124)
!1148 = !DILocation(line: 127, column: 33, scope: !1124)
!1149 = !DILocation(line: 127, column: 50, scope: !1124)
!1150 = !DILocation(line: 127, column: 58, scope: !1124)
!1151 = !DILocation(line: 127, column: 3, scope: !1124)
!1152 = !DILocation(line: 128, column: 2, scope: !1124)
!1153 = !DILocation(line: 122, column: 40, scope: !1154)
!1154 = !DILexicalBlockFile(scope: !1120, file: !775, discriminator: 2)
!1155 = !DILocation(line: 122, column: 45, scope: !1154)
!1156 = !DILocation(line: 122, column: 38, scope: !1154)
!1157 = !DILocation(line: 122, column: 2, scope: !1154)
!1158 = distinct !{!1158, !1159}
!1159 = !DILocation(line: 122, column: 2, scope: !1000)
!1160 = !DILocation(line: 131, column: 6, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1000, file: !775, line: 131, column: 6)
!1162 = !DILocation(line: 131, column: 14, scope: !1161)
!1163 = !DILocation(line: 131, column: 6, scope: !1000)
!1164 = !DILocalVariable(name: "str", scope: !1165, file: !775, line: 132, type: !345)
!1165 = distinct !DILexicalBlock(scope: !1161, file: !775, line: 131, column: 22)
!1166 = !DILocation(line: 132, column: 12, scope: !1165)
!1167 = !DILocation(line: 134, column: 9, scope: !1165)
!1168 = !DILocation(line: 134, column: 7, scope: !1165)
!1169 = !DILocation(line: 135, column: 14, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1165, file: !775, line: 135, column: 3)
!1171 = !DILocation(line: 135, column: 12, scope: !1170)
!1172 = !DILocation(line: 135, column: 8, scope: !1170)
!1173 = !DILocation(line: 135, column: 23, scope: !1174)
!1174 = !DILexicalBlockFile(scope: !1175, file: !775, discriminator: 1)
!1175 = distinct !DILexicalBlock(scope: !1170, file: !775, line: 135, column: 3)
!1176 = !DILocation(line: 135, column: 27, scope: !1174)
!1177 = !DILocation(line: 135, column: 3, scope: !1174)
!1178 = !DILocation(line: 136, column: 27, scope: !1175)
!1179 = !DILocation(line: 136, column: 49, scope: !1175)
!1180 = !DILocation(line: 136, column: 54, scope: !1175)
!1181 = !DILocation(line: 136, column: 4, scope: !1175)
!1182 = !DILocation(line: 135, column: 41, scope: !1183)
!1183 = !DILexicalBlockFile(scope: !1175, file: !775, discriminator: 2)
!1184 = !DILocation(line: 135, column: 46, scope: !1183)
!1185 = !DILocation(line: 135, column: 39, scope: !1183)
!1186 = !DILocation(line: 135, column: 3, scope: !1183)
!1187 = distinct !{!1187, !1188}
!1188 = !DILocation(line: 135, column: 3, scope: !1165)
!1189 = !DILocation(line: 138, column: 21, scope: !1165)
!1190 = !DILocation(line: 138, column: 26, scope: !1165)
!1191 = !DILocation(line: 138, column: 31, scope: !1165)
!1192 = !DILocation(line: 138, column: 34, scope: !1165)
!1193 = !DILocation(line: 138, column: 3, scope: !1165)
!1194 = !DILocation(line: 139, column: 50, scope: !1165)
!1195 = !DILocation(line: 139, column: 55, scope: !1165)
!1196 = !DILocation(line: 139, column: 3, scope: !1165)
!1197 = !DILocation(line: 140, column: 17, scope: !1165)
!1198 = !DILocation(line: 140, column: 3, scope: !1165)
!1199 = !DILocation(line: 142, column: 16, scope: !1165)
!1200 = !DILocation(line: 142, column: 3, scope: !1165)
!1201 = !DILocation(line: 143, column: 2, scope: !1165)
!1202 = !DILocation(line: 145, column: 18, scope: !1000)
!1203 = !DILocation(line: 145, column: 2, scope: !1000)
!1204 = !DILocation(line: 146, column: 15, scope: !1000)
!1205 = !DILocation(line: 146, column: 2, scope: !1000)
!1206 = !DILocation(line: 147, column: 1, scope: !1000)
!1207 = !DILocation(line: 147, column: 1, scope: !1208)
!1208 = !DILexicalBlockFile(scope: !1000, file: !775, discriminator: 1)
!1209 = distinct !DISubprogram(name: "cmd_notifylist_show", scope: !775, file: !775, line: 163, type: !294, isLocal: true, isDefinition: true, scopeLine: 164, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !776)
!1210 = !DILocation(line: 165, column: 6, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1209, file: !775, line: 165, column: 6)
!1212 = !DILocation(line: 165, column: 15, scope: !1211)
!1213 = !DILocation(line: 165, column: 6, scope: !1209)
!1214 = !DILocation(line: 166, column: 3, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1211, file: !775, line: 165, column: 23)
!1216 = !DILocation(line: 168, column: 2, scope: !1215)
!1217 = !DILocation(line: 169, column: 19, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1211, file: !775, line: 168, column: 9)
!1219 = !DILocation(line: 169, column: 3, scope: !1218)
!1220 = !DILocation(line: 171, column: 1, scope: !1209)
!1221 = distinct !DISubprogram(name: "mask_add_once", scope: !775, file: !775, line: 39, type: !1222, isLocal: true, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !776)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!306, !306, !532}
!1224 = !DILocalVariable(name: "list", arg: 1, scope: !1221, file: !775, line: 39, type: !306)
!1225 = !DILocation(line: 39, column: 38, scope: !1221)
!1226 = !DILocalVariable(name: "mask", arg: 2, scope: !1221, file: !775, line: 39, type: !532)
!1227 = !DILocation(line: 39, column: 56, scope: !1221)
!1228 = !DILocalVariable(name: "str", scope: !1221, file: !775, line: 41, type: !99)
!1229 = !DILocation(line: 41, column: 8, scope: !1221)
!1230 = !DILocalVariable(name: "ptr", scope: !1221, file: !775, line: 41, type: !99)
!1231 = !DILocation(line: 41, column: 14, scope: !1221)
!1232 = !DILocation(line: 43, column: 2, scope: !1221)
!1233 = distinct !{!1233, !1232}
!1234 = !DILocation(line: 43, column: 10, scope: !1235)
!1235 = !DILexicalBlockFile(scope: !1236, file: !775, discriminator: 1)
!1236 = distinct !DILexicalBlock(scope: !1237, file: !775, line: 43, column: 10)
!1237 = distinct !DILexicalBlock(scope: !1221, file: !775, line: 43, column: 4)
!1238 = !DILocation(line: 43, column: 15, scope: !1235)
!1239 = !DILocation(line: 43, column: 5, scope: !1240)
!1240 = !DILexicalBlockFile(scope: !1241, file: !775, discriminator: 2)
!1241 = distinct !DILexicalBlock(scope: !1236, file: !775, line: 43, column: 3)
!1242 = !DILocation(line: 43, column: 14, scope: !1243)
!1243 = !DILexicalBlockFile(scope: !1244, file: !775, discriminator: 3)
!1244 = distinct !DILexicalBlock(scope: !1236, file: !775, line: 43, column: 12)
!1245 = !DILocation(line: 43, column: 99, scope: !1243)
!1246 = !DILocation(line: 43, column: 7, scope: !1247)
!1247 = !DILexicalBlockFile(scope: !1237, file: !775, discriminator: 4)
!1248 = !DILocation(line: 45, column: 15, scope: !1221)
!1249 = !DILocation(line: 45, column: 8, scope: !1221)
!1250 = !DILocation(line: 45, column: 6, scope: !1221)
!1251 = !DILocation(line: 46, column: 8, scope: !1221)
!1252 = !DILocation(line: 46, column: 12, scope: !1221)
!1253 = !DILocation(line: 46, column: 30, scope: !1254)
!1254 = !DILexicalBlockFile(scope: !1221, file: !775, discriminator: 1)
!1255 = !DILocation(line: 46, column: 21, scope: !1254)
!1256 = !DILocation(line: 46, column: 8, scope: !1254)
!1257 = !DILocation(line: 47, column: 13, scope: !1221)
!1258 = !DILocation(line: 47, column: 26, scope: !1221)
!1259 = !DILocation(line: 47, column: 30, scope: !1221)
!1260 = !DILocation(line: 47, column: 29, scope: !1221)
!1261 = !DILocation(line: 47, column: 19, scope: !1221)
!1262 = !DILocation(line: 47, column: 3, scope: !1221)
!1263 = !DILocation(line: 46, column: 8, scope: !1264)
!1264 = !DILexicalBlockFile(scope: !1221, file: !775, discriminator: 2)
!1265 = !DILocation(line: 46, column: 8, scope: !1266)
!1266 = !DILexicalBlockFile(scope: !1221, file: !775, discriminator: 3)
!1267 = !DILocation(line: 46, column: 6, scope: !1266)
!1268 = !DILocation(line: 49, column: 31, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1221, file: !775, line: 49, column: 6)
!1270 = !DILocation(line: 49, column: 37, scope: !1269)
!1271 = !DILocation(line: 49, column: 6, scope: !1269)
!1272 = !DILocation(line: 49, column: 42, scope: !1269)
!1273 = !DILocation(line: 49, column: 6, scope: !1221)
!1274 = !DILocation(line: 50, column: 25, scope: !1269)
!1275 = !DILocation(line: 50, column: 31, scope: !1269)
!1276 = !DILocation(line: 50, column: 10, scope: !1269)
!1277 = !DILocation(line: 50, column: 3, scope: !1269)
!1278 = !DILocation(line: 52, column: 9, scope: !1221)
!1279 = !DILocation(line: 52, column: 2, scope: !1221)
!1280 = !DILocation(line: 53, column: 9, scope: !1221)
!1281 = !DILocation(line: 53, column: 2, scope: !1221)
!1282 = !DILocation(line: 54, column: 1, scope: !1221)
!1283 = distinct !DISubprogram(name: "print_notify_onserver", scope: !775, file: !775, line: 57, type: !1284, isLocal: true, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !776)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{null, !139, !306, !1286, !532}
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64, align: 64)
!1287 = !DILocalVariable(name: "server", arg: 1, scope: !1283, file: !775, line: 57, type: !139)
!1288 = !DILocation(line: 57, column: 51, scope: !1283)
!1289 = !DILocalVariable(name: "nicks", arg: 2, scope: !1283, file: !775, line: 57, type: !306)
!1290 = !DILocation(line: 57, column: 67, scope: !1283)
!1291 = !DILocalVariable(name: "offline", arg: 3, scope: !1283, file: !775, line: 58, type: !1286)
!1292 = !DILocation(line: 58, column: 16, scope: !1283)
!1293 = !DILocalVariable(name: "desc", arg: 4, scope: !1283, file: !775, line: 58, type: !532)
!1294 = !DILocation(line: 58, column: 37, scope: !1283)
!1295 = !DILocalVariable(name: "tmp", scope: !1283, file: !775, line: 60, type: !306)
!1296 = !DILocation(line: 60, column: 10, scope: !1283)
!1297 = !DILocalVariable(name: "str", scope: !1283, file: !775, line: 61, type: !345)
!1298 = !DILocation(line: 61, column: 11, scope: !1283)
!1299 = !DILocation(line: 63, column: 2, scope: !1283)
!1300 = distinct !{!1300, !1299}
!1301 = !DILocation(line: 63, column: 90, scope: !1302)
!1302 = !DILexicalBlockFile(scope: !1303, file: !775, discriminator: 1)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !775, line: 63, column: 10)
!1304 = distinct !DILexicalBlock(scope: !1283, file: !775, line: 63, column: 4)
!1305 = !DILocation(line: 63, column: 72, scope: !1302)
!1306 = !DILocation(line: 63, column: 57, scope: !1302)
!1307 = !DILocation(line: 63, column: 56, scope: !1302)
!1308 = !DILocation(line: 63, column: 31, scope: !1309)
!1309 = !DILexicalBlockFile(scope: !1302, file: !775, discriminator: 7)
!1310 = !DILocation(line: 63, column: 12, scope: !1302)
!1311 = !DILocation(line: 63, column: 10, scope: !1302)
!1312 = !DILocation(line: 63, column: 11, scope: !1313)
!1313 = !DILexicalBlockFile(scope: !1303, file: !775, discriminator: 2)
!1314 = !DILocation(line: 63, column: 10, scope: !1315)
!1315 = !DILexicalBlockFile(scope: !1304, file: !775, discriminator: 3)
!1316 = !DILocation(line: 63, column: 30, scope: !1317)
!1317 = !DILexicalBlockFile(scope: !1318, file: !775, discriminator: 4)
!1318 = distinct !DILexicalBlock(scope: !1303, file: !775, line: 63, column: 28)
!1319 = !DILocation(line: 63, column: 39, scope: !1320)
!1320 = !DILexicalBlockFile(scope: !1321, file: !775, discriminator: 5)
!1321 = distinct !DILexicalBlock(scope: !1303, file: !775, line: 63, column: 37)
!1322 = !DILocation(line: 63, column: 133, scope: !1320)
!1323 = !DILocation(line: 63, column: 144, scope: !1324)
!1324 = !DILexicalBlockFile(scope: !1304, file: !775, discriminator: 6)
!1325 = !DILocation(line: 64, column: 2, scope: !1283)
!1326 = distinct !{!1326, !1325}
!1327 = !DILocation(line: 64, column: 10, scope: !1328)
!1328 = !DILexicalBlockFile(scope: !1329, file: !775, discriminator: 1)
!1329 = distinct !DILexicalBlock(scope: !1330, file: !775, line: 64, column: 10)
!1330 = distinct !DILexicalBlock(scope: !1283, file: !775, line: 64, column: 4)
!1331 = !DILocation(line: 64, column: 18, scope: !1328)
!1332 = !DILocation(line: 64, column: 5, scope: !1333)
!1333 = !DILexicalBlockFile(scope: !1334, file: !775, discriminator: 2)
!1334 = distinct !DILexicalBlock(scope: !1329, file: !775, line: 64, column: 3)
!1335 = !DILocation(line: 64, column: 14, scope: !1336)
!1336 = !DILexicalBlockFile(scope: !1337, file: !775, discriminator: 3)
!1337 = distinct !DILexicalBlock(scope: !1329, file: !775, line: 64, column: 12)
!1338 = !DILocation(line: 64, column: 102, scope: !1336)
!1339 = !DILocation(line: 64, column: 113, scope: !1340)
!1340 = !DILexicalBlockFile(scope: !1330, file: !775, discriminator: 4)
!1341 = !DILocation(line: 65, column: 2, scope: !1283)
!1342 = distinct !{!1342, !1341}
!1343 = !DILocation(line: 65, column: 10, scope: !1344)
!1344 = !DILexicalBlockFile(scope: !1345, file: !775, discriminator: 1)
!1345 = distinct !DILexicalBlock(scope: !1346, file: !775, line: 65, column: 10)
!1346 = distinct !DILexicalBlock(scope: !1283, file: !775, line: 65, column: 4)
!1347 = !DILocation(line: 65, column: 15, scope: !1344)
!1348 = !DILocation(line: 65, column: 5, scope: !1349)
!1349 = !DILexicalBlockFile(scope: !1350, file: !775, discriminator: 2)
!1350 = distinct !DILexicalBlock(scope: !1345, file: !775, line: 65, column: 3)
!1351 = !DILocation(line: 65, column: 14, scope: !1352)
!1352 = !DILexicalBlockFile(scope: !1353, file: !775, discriminator: 3)
!1353 = distinct !DILexicalBlock(scope: !1345, file: !775, line: 65, column: 12)
!1354 = !DILocation(line: 65, column: 99, scope: !1352)
!1355 = !DILocation(line: 65, column: 110, scope: !1356)
!1356 = !DILexicalBlockFile(scope: !1346, file: !775, discriminator: 4)
!1357 = !DILocation(line: 67, column: 8, scope: !1283)
!1358 = !DILocation(line: 67, column: 6, scope: !1283)
!1359 = !DILocation(line: 68, column: 13, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1283, file: !775, line: 68, column: 2)
!1361 = !DILocation(line: 68, column: 11, scope: !1360)
!1362 = !DILocation(line: 68, column: 7, scope: !1360)
!1363 = !DILocation(line: 68, column: 20, scope: !1364)
!1364 = !DILexicalBlockFile(scope: !1365, file: !775, discriminator: 1)
!1365 = distinct !DILexicalBlock(scope: !1360, file: !775, line: 68, column: 2)
!1366 = !DILocation(line: 68, column: 24, scope: !1364)
!1367 = !DILocation(line: 68, column: 2, scope: !1364)
!1368 = !DILocalVariable(name: "nick", scope: !1369, file: !775, line: 69, type: !99)
!1369 = distinct !DILexicalBlock(scope: !1365, file: !775, line: 68, column: 49)
!1370 = !DILocation(line: 69, column: 9, scope: !1369)
!1371 = !DILocation(line: 69, column: 16, scope: !1369)
!1372 = !DILocation(line: 69, column: 21, scope: !1369)
!1373 = !DILocation(line: 71, column: 31, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1369, file: !775, line: 71, column: 7)
!1375 = !DILocation(line: 71, column: 39, scope: !1374)
!1376 = !DILocation(line: 71, column: 8, scope: !1374)
!1377 = !DILocation(line: 71, column: 7, scope: !1369)
!1378 = !DILocation(line: 72, column: 4, scope: !1374)
!1379 = !DILocation(line: 74, column: 26, scope: !1369)
!1380 = !DILocation(line: 74, column: 39, scope: !1369)
!1381 = !DILocation(line: 74, column: 3, scope: !1369)
!1382 = !DILocation(line: 75, column: 30, scope: !1369)
!1383 = !DILocation(line: 75, column: 29, scope: !1369)
!1384 = !DILocation(line: 75, column: 39, scope: !1369)
!1385 = !DILocation(line: 75, column: 14, scope: !1369)
!1386 = !DILocation(line: 75, column: 4, scope: !1369)
!1387 = !DILocation(line: 75, column: 12, scope: !1369)
!1388 = !DILocation(line: 76, column: 2, scope: !1369)
!1389 = !DILocation(line: 68, column: 38, scope: !1390)
!1390 = !DILexicalBlockFile(scope: !1365, file: !775, discriminator: 2)
!1391 = !DILocation(line: 68, column: 43, scope: !1390)
!1392 = !DILocation(line: 68, column: 36, scope: !1390)
!1393 = !DILocation(line: 68, column: 2, scope: !1390)
!1394 = distinct !{!1394, !1395}
!1395 = !DILocation(line: 68, column: 2, scope: !1283)
!1396 = !DILocation(line: 78, column: 6, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1283, file: !775, line: 78, column: 6)
!1398 = !DILocation(line: 78, column: 11, scope: !1397)
!1399 = !DILocation(line: 78, column: 15, scope: !1397)
!1400 = !DILocation(line: 78, column: 6, scope: !1283)
!1401 = !DILocation(line: 79, column: 21, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1397, file: !775, line: 78, column: 20)
!1403 = !DILocation(line: 79, column: 26, scope: !1402)
!1404 = !DILocation(line: 79, column: 31, scope: !1402)
!1405 = !DILocation(line: 79, column: 34, scope: !1402)
!1406 = !DILocation(line: 79, column: 3, scope: !1402)
!1407 = !DILocation(line: 80, column: 49, scope: !1402)
!1408 = !DILocation(line: 80, column: 55, scope: !1402)
!1409 = !DILocation(line: 80, column: 60, scope: !1402)
!1410 = !DILocation(line: 80, column: 3, scope: !1402)
!1411 = !DILocation(line: 81, column: 2, scope: !1402)
!1412 = !DILocation(line: 83, column: 16, scope: !1283)
!1413 = !DILocation(line: 83, column: 2, scope: !1283)
!1414 = !DILocation(line: 84, column: 1, scope: !1283)
!1415 = !DILocation(line: 84, column: 1, scope: !1416)
!1416 = !DILexicalBlockFile(scope: !1283, file: !775, discriminator: 1)
!1417 = distinct !DISubprogram(name: "notifylist_print", scope: !775, file: !775, line: 149, type: !1418, isLocal: true, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !776)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{null, !1028}
!1420 = !DILocalVariable(name: "rec", arg: 1, scope: !1417, file: !775, line: 149, type: !1028)
!1421 = !DILocation(line: 149, column: 46, scope: !1417)
!1422 = !DILocalVariable(name: "ircnets", scope: !1417, file: !775, line: 151, type: !99)
!1423 = !DILocation(line: 151, column: 8, scope: !1417)
!1424 = !DILocation(line: 153, column: 12, scope: !1417)
!1425 = !DILocation(line: 153, column: 17, scope: !1417)
!1426 = !DILocation(line: 153, column: 25, scope: !1417)
!1427 = !DILocation(line: 153, column: 12, scope: !1428)
!1428 = !DILexicalBlockFile(scope: !1417, file: !775, discriminator: 1)
!1429 = !DILocation(line: 154, column: 19, scope: !1417)
!1430 = !DILocation(line: 154, column: 24, scope: !1417)
!1431 = !DILocation(line: 154, column: 3, scope: !1417)
!1432 = !DILocation(line: 153, column: 12, scope: !1433)
!1433 = !DILexicalBlockFile(scope: !1417, file: !775, discriminator: 2)
!1434 = !DILocation(line: 153, column: 12, scope: !1435)
!1435 = !DILexicalBlockFile(scope: !1417, file: !775, discriminator: 3)
!1436 = !DILocation(line: 153, column: 10, scope: !1435)
!1437 = !DILocation(line: 156, column: 44, scope: !1417)
!1438 = !DILocation(line: 156, column: 49, scope: !1417)
!1439 = !DILocation(line: 156, column: 55, scope: !1417)
!1440 = !DILocation(line: 156, column: 63, scope: !1417)
!1441 = !DILocation(line: 156, column: 3, scope: !1428)
!1442 = !DILocation(line: 156, column: 55, scope: !1428)
!1443 = !DILocation(line: 156, column: 55, scope: !1433)
!1444 = !DILocation(line: 156, column: 55, scope: !1435)
!1445 = !DILocation(line: 156, column: 17, scope: !1435)
!1446 = !DILocation(line: 156, column: 22, scope: !1435)
!1447 = !DILocation(line: 156, column: 2, scope: !1435)
!1448 = !DILocation(line: 160, column: 9, scope: !1417)
!1449 = !DILocation(line: 160, column: 2, scope: !1417)
!1450 = !DILocation(line: 161, column: 1, scope: !1417)
