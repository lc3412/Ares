; ModuleID = './line194-notify-ison.o.i'
source_filename = "./line194-notify-ison.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GSList = type { i8*, %struct._GSList* }
%struct.NOTIFY_NICK_REC = type { i8*, i8*, i8*, i8*, i8*, i8, i64 }
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
%struct.MODULE_SERVER_REC = type { i32, %struct._GSList*, %struct._GSList* }
%struct.NOTIFYLIST_REC = type { i8*, i8**, i8 }

@.str = private unnamed_addr constant [15 x i8] c"irc/notifylist\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"misc\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"notify_check_time\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"1min\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"notify_whois_time\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"5min\00", align 1
@notify_tag = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"notifylist event\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"setup changed\00", align 1
@notify_whois_time = internal global i32 0, align 4
@servers = external global %struct._GSList*, align 8
@__func__.notifylist_timeout_server = private unnamed_addr constant [26 x i8] c"notifylist_timeout_server\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"server != NULL\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"IRC\00", align 1
@notifies = external global %struct._GSList*, align 8
@.str.11 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"ISON :\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"ison\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"event 303\00", align 1
@__func__.event_ison = private unnamed_addr constant [11 x i8] c"event_ison\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"whois\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"notifylist event whois end\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"event 318\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"event 311\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"notifylist event whois\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"event 301\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"notifylist event whois away\00", align 1
@.str.25 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"event empty\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"WHOIS %s\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"%s,\00", align 1

; Function Attrs: nounwind uwtable
define %struct.NOTIFY_NICK_REC* @notify_nick_create(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !692 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.MODULE_SERVER_REC*, align 8
  %6 = alloca %struct.NOTIFY_NICK_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !696, metadata !697), !dbg !698
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !699, metadata !697), !dbg !700
  call void @llvm.dbg.declare(metadata %struct.MODULE_SERVER_REC** %5, metadata !701, metadata !697), !dbg !709
  call void @llvm.dbg.declare(metadata %struct.NOTIFY_NICK_REC** %6, metadata !710, metadata !697), !dbg !711
  %7 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !712
  %8 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %7, i32 0, i32 15, !dbg !713
  %9 = load %struct._GHashTable*, %struct._GHashTable** %8, align 8, !dbg !713
  %10 = call i8* @g_hash_table_lookup(%struct._GHashTable* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)), !dbg !714
  %11 = bitcast i8* %10 to %struct.MODULE_SERVER_REC*, !dbg !714
  store %struct.MODULE_SERVER_REC* %11, %struct.MODULE_SERVER_REC** %5, align 8, !dbg !715
  %12 = call noalias i8* @g_malloc0_n(i64 1, i64 56), !dbg !716
  %13 = bitcast i8* %12 to %struct.NOTIFY_NICK_REC*, !dbg !717
  store %struct.NOTIFY_NICK_REC* %13, %struct.NOTIFY_NICK_REC** %6, align 8, !dbg !718
  %14 = load i8*, i8** %4, align 8, !dbg !719
  %15 = call noalias i8* @g_strdup(i8* %14), !dbg !720
  %16 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %6, align 8, !dbg !721
  %17 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %16, i32 0, i32 0, !dbg !722
  store i8* %15, i8** %17, align 8, !dbg !723
  %18 = load %struct.MODULE_SERVER_REC*, %struct.MODULE_SERVER_REC** %5, align 8, !dbg !724
  %19 = getelementptr inbounds %struct.MODULE_SERVER_REC, %struct.MODULE_SERVER_REC* %18, i32 0, i32 1, !dbg !725
  %20 = load %struct._GSList*, %struct._GSList** %19, align 8, !dbg !725
  %21 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %6, align 8, !dbg !726
  %22 = bitcast %struct.NOTIFY_NICK_REC* %21 to i8*, !dbg !726
  %23 = call %struct._GSList* @g_slist_append(%struct._GSList* %20, i8* %22), !dbg !727
  %24 = load %struct.MODULE_SERVER_REC*, %struct.MODULE_SERVER_REC** %5, align 8, !dbg !728
  %25 = getelementptr inbounds %struct.MODULE_SERVER_REC, %struct.MODULE_SERVER_REC* %24, i32 0, i32 1, !dbg !729
  store %struct._GSList* %23, %struct._GSList** %25, align 8, !dbg !730
  %26 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %6, align 8, !dbg !731
  ret %struct.NOTIFY_NICK_REC* %26, !dbg !732
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #2

declare noalias i8* @g_malloc0_n(i64, i64) #2

declare noalias i8* @g_strdup(i8*) #2

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #2

; Function Attrs: nounwind uwtable
define void @notify_nick_destroy(%struct.NOTIFY_NICK_REC*) #0 !dbg !733 {
  %2 = alloca %struct.NOTIFY_NICK_REC*, align 8
  store %struct.NOTIFY_NICK_REC* %0, %struct.NOTIFY_NICK_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.NOTIFY_NICK_REC** %2, metadata !736, metadata !697), !dbg !737
  %3 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %2, align 8, !dbg !738
  %4 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %3, i32 0, i32 0, !dbg !739
  %5 = load i8*, i8** %4, align 8, !dbg !739
  call void @g_free(i8* %5), !dbg !740
  %6 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %2, align 8, !dbg !741
  %7 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %6, i32 0, i32 1, !dbg !742
  %8 = load i8*, i8** %7, align 8, !dbg !742
  call void @g_free(i8* %8), !dbg !743
  %9 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %2, align 8, !dbg !744
  %10 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %9, i32 0, i32 2, !dbg !745
  %11 = load i8*, i8** %10, align 8, !dbg !745
  call void @g_free(i8* %11), !dbg !746
  %12 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %2, align 8, !dbg !747
  %13 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %12, i32 0, i32 3, !dbg !748
  %14 = load i8*, i8** %13, align 8, !dbg !748
  call void @g_free(i8* %14), !dbg !749
  %15 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %2, align 8, !dbg !750
  %16 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %15, i32 0, i32 4, !dbg !751
  %17 = load i8*, i8** %16, align 8, !dbg !751
  call void @g_free(i8* %17), !dbg !752
  %18 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %2, align 8, !dbg !753
  %19 = bitcast %struct.NOTIFY_NICK_REC* %18 to i8*, !dbg !753
  call void @g_free(i8* %19), !dbg !754
  ret void, !dbg !755
}

declare void @g_free(i8*) #2

; Function Attrs: nounwind uwtable
define %struct.NOTIFY_NICK_REC* @notify_nick_find(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !756 {
  %3 = alloca %struct.NOTIFY_NICK_REC*, align 8
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.MODULE_SERVER_REC*, align 8
  %7 = alloca %struct.NOTIFY_NICK_REC*, align 8
  %8 = alloca %struct._GSList*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !757, metadata !697), !dbg !758
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !759, metadata !697), !dbg !760
  call void @llvm.dbg.declare(metadata %struct.MODULE_SERVER_REC** %6, metadata !761, metadata !697), !dbg !762
  call void @llvm.dbg.declare(metadata %struct.NOTIFY_NICK_REC** %7, metadata !763, metadata !697), !dbg !764
  call void @llvm.dbg.declare(metadata %struct._GSList** %8, metadata !765, metadata !697), !dbg !766
  %9 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !767
  %10 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %9, i32 0, i32 15, !dbg !768
  %11 = load %struct._GHashTable*, %struct._GHashTable** %10, align 8, !dbg !768
  %12 = call i8* @g_hash_table_lookup(%struct._GHashTable* %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)), !dbg !769
  %13 = bitcast i8* %12 to %struct.MODULE_SERVER_REC*, !dbg !769
  store %struct.MODULE_SERVER_REC* %13, %struct.MODULE_SERVER_REC** %6, align 8, !dbg !770
  %14 = load %struct.MODULE_SERVER_REC*, %struct.MODULE_SERVER_REC** %6, align 8, !dbg !771
  %15 = getelementptr inbounds %struct.MODULE_SERVER_REC, %struct.MODULE_SERVER_REC* %14, i32 0, i32 1, !dbg !773
  %16 = load %struct._GSList*, %struct._GSList** %15, align 8, !dbg !773
  store %struct._GSList* %16, %struct._GSList** %8, align 8, !dbg !774
  br label %17, !dbg !775

; <label>:17:                                     ; preds = %34, %2
  %18 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !776
  %19 = icmp ne %struct._GSList* %18, null, !dbg !779
  br i1 %19, label %20, label %38, !dbg !780

; <label>:20:                                     ; preds = %17
  %21 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !781
  %22 = getelementptr inbounds %struct._GSList, %struct._GSList* %21, i32 0, i32 0, !dbg !783
  %23 = load i8*, i8** %22, align 8, !dbg !783
  %24 = bitcast i8* %23 to %struct.NOTIFY_NICK_REC*, !dbg !781
  store %struct.NOTIFY_NICK_REC* %24, %struct.NOTIFY_NICK_REC** %7, align 8, !dbg !784
  %25 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %7, align 8, !dbg !785
  %26 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %25, i32 0, i32 0, !dbg !787
  %27 = load i8*, i8** %26, align 8, !dbg !787
  %28 = load i8*, i8** %5, align 8, !dbg !788
  %29 = call i32 @g_ascii_strcasecmp(i8* %27, i8* %28), !dbg !789
  %30 = icmp eq i32 %29, 0, !dbg !790
  br i1 %30, label %31, label %33, !dbg !791

; <label>:31:                                     ; preds = %20
  %32 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %7, align 8, !dbg !792
  store %struct.NOTIFY_NICK_REC* %32, %struct.NOTIFY_NICK_REC** %3, align 8, !dbg !793
  br label %39, !dbg !793

; <label>:33:                                     ; preds = %20
  br label %34, !dbg !794

; <label>:34:                                     ; preds = %33
  %35 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !795
  %36 = getelementptr inbounds %struct._GSList, %struct._GSList* %35, i32 0, i32 1, !dbg !797
  %37 = load %struct._GSList*, %struct._GSList** %36, align 8, !dbg !797
  store %struct._GSList* %37, %struct._GSList** %8, align 8, !dbg !798
  br label %17, !dbg !799, !llvm.loop !800

; <label>:38:                                     ; preds = %17
  store %struct.NOTIFY_NICK_REC* null, %struct.NOTIFY_NICK_REC** %3, align 8, !dbg !802
  br label %39, !dbg !802

; <label>:39:                                     ; preds = %38, %31
  %40 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %3, align 8, !dbg !803
  ret %struct.NOTIFY_NICK_REC* %40, !dbg !803
}

declare i32 @g_ascii_strcasecmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @notifylist_ison_init() #0 !dbg !804 {
  call void @settings_add_time_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0)), !dbg !805
  call void @settings_add_time_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0)), !dbg !806
  store i32 -1, i32* @notify_tag, align 4, !dbg !807
  call void @read_settings(), !dbg !808
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_ison to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !809
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !810
  ret void, !dbg !811
}

declare void @settings_add_time_module(i8*, i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @read_settings() #0 !dbg !812 {
  %1 = load i32, i32* @notify_tag, align 4, !dbg !813
  %2 = icmp ne i32 %1, -1, !dbg !815
  br i1 %2, label %3, label %6, !dbg !816

; <label>:3:                                      ; preds = %0
  %4 = load i32, i32* @notify_tag, align 4, !dbg !817
  %5 = call i32 @g_source_remove(i32 %4), !dbg !819
  br label %6, !dbg !819

; <label>:6:                                      ; preds = %3, %0
  %7 = call i32 @settings_get_time(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0)), !dbg !820
  %8 = call i32 @g_timeout_add(i32 %7, i32 (i8*)* bitcast (i32 ()* @notifylist_timeout_func to i32 (i8*)*), i8* null), !dbg !821
  store i32 %8, i32* @notify_tag, align 4, !dbg !823
  %9 = call i32 @settings_get_time(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0)), !dbg !824
  %10 = sdiv i32 %9, 1000, !dbg !825
  store i32 %10, i32* @notify_whois_time, align 4, !dbg !826
  ret void, !dbg !827
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @event_ison(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !828 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.MODULE_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !831, metadata !697), !dbg !832
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !833, metadata !697), !dbg !834
  call void @llvm.dbg.declare(metadata %struct.MODULE_SERVER_REC** %5, metadata !835, metadata !697), !dbg !836
  call void @llvm.dbg.declare(metadata i8** %6, metadata !837, metadata !697), !dbg !838
  call void @llvm.dbg.declare(metadata i8** %7, metadata !839, metadata !697), !dbg !840
  br label %8, !dbg !841, !llvm.loop !842

; <label>:8:                                      ; preds = %2
  %9 = load i8*, i8** %4, align 8, !dbg !843
  %10 = icmp ne i8* %9, null, !dbg !847
  br i1 %10, label %11, label %12, !dbg !843

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !848

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.event_ison, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0)), !dbg !851
  br label %50, !dbg !854

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !855

; <label>:14:                                     ; preds = %13
  br label %15, !dbg !857, !llvm.loop !858

; <label>:15:                                     ; preds = %14
  %16 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !859
  %17 = icmp ne %struct._IRC_SERVER_REC* %16, null, !dbg !863
  br i1 %17, label %18, label %19, !dbg !859

; <label>:18:                                     ; preds = %15
  br label %20, !dbg !864

; <label>:19:                                     ; preds = %15
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.event_ison, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0)), !dbg !867
  br label %50, !dbg !870

; <label>:20:                                     ; preds = %18
  br label %21, !dbg !871

; <label>:21:                                     ; preds = %20
  %22 = load i8*, i8** %4, align 8, !dbg !873
  %23 = call i8* (i8*, i32, ...) @event_get_params(i8* %22, i32 2, i8* null, i8** %7), !dbg !874
  store i8* %23, i8** %6, align 8, !dbg !875
  %24 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !876
  %25 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %24, i32 0, i32 15, !dbg !877
  %26 = load %struct._GHashTable*, %struct._GHashTable** %25, align 8, !dbg !877
  %27 = call i8* @g_hash_table_lookup(%struct._GHashTable* %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)), !dbg !878
  %28 = bitcast i8* %27 to %struct.MODULE_SERVER_REC*, !dbg !878
  store %struct.MODULE_SERVER_REC* %28, %struct.MODULE_SERVER_REC** %5, align 8, !dbg !879
  %29 = load %struct.MODULE_SERVER_REC*, %struct.MODULE_SERVER_REC** %5, align 8, !dbg !880
  %30 = load i8*, i8** %7, align 8, !dbg !881
  call void @ison_save_users(%struct.MODULE_SERVER_REC* %29, i8* %30), !dbg !882
  %31 = load %struct.MODULE_SERVER_REC*, %struct.MODULE_SERVER_REC** %5, align 8, !dbg !883
  %32 = getelementptr inbounds %struct.MODULE_SERVER_REC, %struct.MODULE_SERVER_REC* %31, i32 0, i32 0, !dbg !885
  %33 = load i32, i32* %32, align 8, !dbg !886
  %34 = add nsw i32 %33, -1, !dbg !886
  store i32 %34, i32* %32, align 8, !dbg !886
  %35 = icmp sgt i32 %34, 0, !dbg !887
  br i1 %35, label %36, label %38, !dbg !888

; <label>:36:                                     ; preds = %21
  %37 = load i8*, i8** %6, align 8, !dbg !889
  call void @g_free(i8* %37), !dbg !891
  br label %50, !dbg !892

; <label>:38:                                     ; preds = %21
  %39 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !893
  call void @ison_check_joins(%struct._IRC_SERVER_REC* %39), !dbg !894
  %40 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !895
  call void @ison_check_parts(%struct._IRC_SERVER_REC* %40), !dbg !896
  %41 = load %struct.MODULE_SERVER_REC*, %struct.MODULE_SERVER_REC** %5, align 8, !dbg !897
  %42 = getelementptr inbounds %struct.MODULE_SERVER_REC, %struct.MODULE_SERVER_REC* %41, i32 0, i32 2, !dbg !898
  %43 = load %struct._GSList*, %struct._GSList** %42, align 8, !dbg !898
  call void @g_slist_foreach(%struct._GSList* %43, void (i8*, i8*)* bitcast (void (i8*)* @g_free to void (i8*, i8*)*), i8* null), !dbg !899
  %44 = load %struct.MODULE_SERVER_REC*, %struct.MODULE_SERVER_REC** %5, align 8, !dbg !900
  %45 = getelementptr inbounds %struct.MODULE_SERVER_REC, %struct.MODULE_SERVER_REC* %44, i32 0, i32 2, !dbg !901
  %46 = load %struct._GSList*, %struct._GSList** %45, align 8, !dbg !901
  call void @g_slist_free(%struct._GSList* %46), !dbg !902
  %47 = load %struct.MODULE_SERVER_REC*, %struct.MODULE_SERVER_REC** %5, align 8, !dbg !903
  %48 = getelementptr inbounds %struct.MODULE_SERVER_REC, %struct.MODULE_SERVER_REC* %47, i32 0, i32 2, !dbg !904
  store %struct._GSList* null, %struct._GSList** %48, align 8, !dbg !905
  %49 = load i8*, i8** %6, align 8, !dbg !906
  call void @g_free(i8* %49), !dbg !907
  br label %50, !dbg !908

; <label>:50:                                     ; preds = %38, %36, %19, %12
  ret void, !dbg !909
}

; Function Attrs: nounwind uwtable
define void @notifylist_ison_deinit() #0 !dbg !911 {
  %1 = load i32, i32* @notify_tag, align 4, !dbg !912
  %2 = call i32 @g_source_remove(i32 %1), !dbg !913
  call void @signal_remove_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_ison to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !914
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !915
  ret void, !dbg !916
}

declare i32 @g_source_remove(i32) #2

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare i32 @g_timeout_add(i32, i32 (i8*)*, i8*) #2

declare i32 @settings_get_time(i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @notifylist_timeout_func() #0 !dbg !917 {
  %1 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !920
  call void @g_slist_foreach(%struct._GSList* %1, void (i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @notifylist_timeout_server to void (i8*, i8*)*), i8* null), !dbg !921
  ret i32 1, !dbg !922
}

declare void @g_slist_foreach(%struct._GSList*, void (i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @notifylist_timeout_server(%struct._IRC_SERVER_REC*) #0 !dbg !923 {
  %2 = alloca %struct._IRC_SERVER_REC*, align 8
  %3 = alloca %struct.MODULE_SERVER_REC*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct._GString*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.NOTIFYLIST_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %2, metadata !926, metadata !697), !dbg !927
  call void @llvm.dbg.declare(metadata %struct.MODULE_SERVER_REC** %3, metadata !928, metadata !697), !dbg !929
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !930, metadata !697), !dbg !931
  call void @llvm.dbg.declare(metadata %struct._GString** %5, metadata !932, metadata !697), !dbg !933
  call void @llvm.dbg.declare(metadata i8** %6, metadata !934, metadata !697), !dbg !935
  call void @llvm.dbg.declare(metadata i8** %7, metadata !936, metadata !697), !dbg !937
  call void @llvm.dbg.declare(metadata i32* %8, metadata !938, metadata !697), !dbg !939
  br label %10, !dbg !940, !llvm.loop !941

; <label>:10:                                     ; preds = %1
  %11 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !942
  %12 = icmp ne %struct._IRC_SERVER_REC* %11, null, !dbg !946
  br i1 %12, label %13, label %14, !dbg !942

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !947

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.notifylist_timeout_server, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0)), !dbg !950
  br label %104, !dbg !953

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !954

; <label>:16:                                     ; preds = %15
  %17 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !956
  %18 = bitcast %struct._IRC_SERVER_REC* %17 to i8*, !dbg !956
  %19 = call i8* @module_check_cast(i8* %18, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0)), !dbg !958
  %20 = bitcast i8* %19 to %struct._SERVER_REC*, !dbg !959
  %21 = bitcast %struct._SERVER_REC* %20 to i8*, !dbg !960
  %22 = call i8* @chat_protocol_check_cast(i8* %21, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0)), !dbg !961
  %23 = bitcast i8* %22 to %struct._IRC_SERVER_REC*, !dbg !963
  %24 = icmp ne %struct._IRC_SERVER_REC* %23, null, !dbg !963
  br i1 %24, label %25, label %26, !dbg !964

; <label>:25:                                     ; preds = %16
  br i1 false, label %27, label %28, !dbg !965

; <label>:26:                                     ; preds = %16
  br i1 false, label %28, label %27, !dbg !967

; <label>:27:                                     ; preds = %26, %25
  br label %104, !dbg !969

; <label>:28:                                     ; preds = %26, %25
  %29 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !970
  %30 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %29, i32 0, i32 15, !dbg !971
  %31 = load %struct._GHashTable*, %struct._GHashTable** %30, align 8, !dbg !971
  %32 = call i8* @g_hash_table_lookup(%struct._GHashTable* %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)), !dbg !972
  %33 = bitcast i8* %32 to %struct.MODULE_SERVER_REC*, !dbg !972
  store %struct.MODULE_SERVER_REC* %33, %struct.MODULE_SERVER_REC** %3, align 8, !dbg !973
  %34 = load %struct.MODULE_SERVER_REC*, %struct.MODULE_SERVER_REC** %3, align 8, !dbg !974
  %35 = getelementptr inbounds %struct.MODULE_SERVER_REC, %struct.MODULE_SERVER_REC* %34, i32 0, i32 0, !dbg !976
  %36 = load i32, i32* %35, align 8, !dbg !976
  %37 = icmp sgt i32 %36, 0, !dbg !977
  br i1 %37, label %38, label %39, !dbg !978

; <label>:38:                                     ; preds = %28
  br label %104, !dbg !979

; <label>:39:                                     ; preds = %28
  %40 = call %struct._GString* @g_string_new(i8* null), !dbg !981
  store %struct._GString* %40, %struct._GString** %5, align 8, !dbg !982
  %41 = load %struct._GSList*, %struct._GSList** @notifies, align 8, !dbg !983
  store %struct._GSList* %41, %struct._GSList** %4, align 8, !dbg !985
  br label %42, !dbg !986

; <label>:42:                                     ; preds = %89, %39
  %43 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !987
  %44 = icmp ne %struct._GSList* %43, null, !dbg !990
  br i1 %44, label %45, label %93, !dbg !991

; <label>:45:                                     ; preds = %42
  call void @llvm.dbg.declare(metadata %struct.NOTIFYLIST_REC** %9, metadata !992, metadata !697), !dbg !1002
  %46 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1003
  %47 = getelementptr inbounds %struct._GSList, %struct._GSList* %46, i32 0, i32 0, !dbg !1004
  %48 = load i8*, i8** %47, align 8, !dbg !1004
  %49 = bitcast i8* %48 to %struct.NOTIFYLIST_REC*, !dbg !1003
  store %struct.NOTIFYLIST_REC* %49, %struct.NOTIFYLIST_REC** %9, align 8, !dbg !1002
  %50 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %9, align 8, !dbg !1005
  %51 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1007
  %52 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %51, i32 0, i32 3, !dbg !1008
  %53 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %52, align 8, !dbg !1008
  %54 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %53, i32 0, i32 12, !dbg !1009
  %55 = load i8*, i8** %54, align 8, !dbg !1009
  %56 = call i32 @notifylist_ircnets_match(%struct.NOTIFYLIST_REC* %50, i8* %55), !dbg !1010
  %57 = icmp ne i32 %56, 0, !dbg !1010
  br i1 %57, label %59, label %58, !dbg !1011

; <label>:58:                                     ; preds = %45
  br label %89, !dbg !1012

; <label>:59:                                     ; preds = %45
  %60 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %9, align 8, !dbg !1013
  %61 = getelementptr inbounds %struct.NOTIFYLIST_REC, %struct.NOTIFYLIST_REC* %60, i32 0, i32 0, !dbg !1014
  %62 = load i8*, i8** %61, align 8, !dbg !1014
  %63 = call noalias i8* @g_strdup(i8* %62), !dbg !1015
  store i8* %63, i8** %6, align 8, !dbg !1016
  %64 = load i8*, i8** %6, align 8, !dbg !1017
  %65 = call i8* @strchr(i8* %64, i32 33) #5, !dbg !1018
  store i8* %65, i8** %7, align 8, !dbg !1019
  %66 = load i8*, i8** %7, align 8, !dbg !1020
  %67 = icmp ne i8* %66, null, !dbg !1022
  br i1 %67, label %68, label %70, !dbg !1023

; <label>:68:                                     ; preds = %59
  %69 = load i8*, i8** %7, align 8, !dbg !1024
  store i8 0, i8* %69, align 1, !dbg !1026
  br label %70, !dbg !1027

; <label>:70:                                     ; preds = %68, %59
  %71 = load i8*, i8** %6, align 8, !dbg !1028
  %72 = call i64 @strlen(i8* %71) #5, !dbg !1029
  %73 = trunc i64 %72 to i32, !dbg !1029
  store i32 %73, i32* %8, align 4, !dbg !1030
  %74 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1031
  %75 = getelementptr inbounds %struct._GString, %struct._GString* %74, i32 0, i32 1, !dbg !1033
  %76 = load i64, i64* %75, align 8, !dbg !1033
  %77 = load i32, i32* %8, align 4, !dbg !1034
  %78 = sext i32 %77 to i64, !dbg !1034
  %79 = add i64 %76, %78, !dbg !1035
  %80 = add i64 %79, 1, !dbg !1036
  %81 = icmp ugt i64 %80, 510, !dbg !1037
  br i1 %81, label %82, label %85, !dbg !1038

; <label>:82:                                     ; preds = %70
  %83 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1039
  %84 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1040
  call void @ison_send(%struct._IRC_SERVER_REC* %83, %struct._GString* %84), !dbg !1041
  br label %85, !dbg !1041

; <label>:85:                                     ; preds = %82, %70
  %86 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1042
  %87 = load i8*, i8** %6, align 8, !dbg !1043
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i8* %87), !dbg !1044
  %88 = load i8*, i8** %6, align 8, !dbg !1045
  call void @g_free(i8* %88), !dbg !1046
  br label %89, !dbg !1047

; <label>:89:                                     ; preds = %85, %58
  %90 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1048
  %91 = getelementptr inbounds %struct._GSList, %struct._GSList* %90, i32 0, i32 1, !dbg !1050
  %92 = load %struct._GSList*, %struct._GSList** %91, align 8, !dbg !1050
  store %struct._GSList* %92, %struct._GSList** %4, align 8, !dbg !1051
  br label %42, !dbg !1052, !llvm.loop !1053

; <label>:93:                                     ; preds = %42
  %94 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1055
  %95 = getelementptr inbounds %struct._GString, %struct._GString* %94, i32 0, i32 1, !dbg !1057
  %96 = load i64, i64* %95, align 8, !dbg !1057
  %97 = icmp ugt i64 %96, 0, !dbg !1058
  br i1 %97, label %98, label %101, !dbg !1059

; <label>:98:                                     ; preds = %93
  %99 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1060
  %100 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1061
  call void @ison_send(%struct._IRC_SERVER_REC* %99, %struct._GString* %100), !dbg !1062
  br label %101, !dbg !1062

; <label>:101:                                    ; preds = %98, %93
  %102 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1063
  %103 = call i8* @g_string_free(%struct._GString* %102, i32 1), !dbg !1064
  br label %104, !dbg !1065

; <label>:104:                                    ; preds = %101, %38, %27, %14
  ret void, !dbg !1066
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare i8* @chat_protocol_check_cast(i8*, i32, i8*) #2

declare i8* @module_check_cast(i8*, i32, i8*) #2

declare %struct._GString* @g_string_new(i8*) #2

declare i32 @notifylist_ircnets_match(%struct.NOTIFYLIST_REC*, i8*) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @ison_send(%struct._IRC_SERVER_REC*, %struct._GString*) #0 !dbg !1068 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca %struct._GString*, align 8
  %5 = alloca %struct.MODULE_SERVER_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1071, metadata !697), !dbg !1072
  store %struct._GString* %1, %struct._GString** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GString** %4, metadata !1073, metadata !697), !dbg !1074
  call void @llvm.dbg.declare(metadata %struct.MODULE_SERVER_REC** %5, metadata !1075, metadata !697), !dbg !1076
  %6 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1077
  %7 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %6, i32 0, i32 8, !dbg !1079
  %8 = load i8, i8* %7, align 8, !dbg !1079
  %9 = and i8 %8, 1, !dbg !1079
  %10 = zext i8 %9 to i32, !dbg !1079
  %11 = icmp ne i32 %10, 0, !dbg !1077
  br i1 %11, label %13, label %12, !dbg !1080

; <label>:12:                                     ; preds = %2
  br label %38, !dbg !1081

; <label>:13:                                     ; preds = %2
  %14 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1083
  %15 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %14, i32 0, i32 15, !dbg !1084
  %16 = load %struct._GHashTable*, %struct._GHashTable** %15, align 8, !dbg !1084
  %17 = call i8* @g_hash_table_lookup(%struct._GHashTable* %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)), !dbg !1085
  %18 = bitcast i8* %17 to %struct.MODULE_SERVER_REC*, !dbg !1085
  store %struct.MODULE_SERVER_REC* %18, %struct.MODULE_SERVER_REC** %5, align 8, !dbg !1086
  %19 = load %struct.MODULE_SERVER_REC*, %struct.MODULE_SERVER_REC** %5, align 8, !dbg !1087
  %20 = getelementptr inbounds %struct.MODULE_SERVER_REC, %struct.MODULE_SERVER_REC* %19, i32 0, i32 0, !dbg !1088
  %21 = load i32, i32* %20, align 8, !dbg !1089
  %22 = add nsw i32 %21, 1, !dbg !1089
  store i32 %22, i32* %20, align 8, !dbg !1089
  %23 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !1090
  %24 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !1091
  %25 = getelementptr inbounds %struct._GString, %struct._GString* %24, i32 0, i32 1, !dbg !1092
  %26 = load i64, i64* %25, align 8, !dbg !1092
  %27 = sub i64 %26, 1, !dbg !1093
  %28 = call %struct._GString* @g_string_truncate(%struct._GString* %23, i64 %27), !dbg !1094
  %29 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !1095
  %30 = call %struct._GString* @g_string_prepend(%struct._GString* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0)), !dbg !1096
  %31 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1097
  call void (%struct._IRC_SERVER_REC*, i8*, i32, i8*, i32, i8*, ...) @server_redirect_event(%struct._IRC_SERVER_REC* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 1, i8* null, i32 -1, i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i8* null), !dbg !1098
  %32 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1099
  %33 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !1100
  %34 = getelementptr inbounds %struct._GString, %struct._GString* %33, i32 0, i32 0, !dbg !1101
  %35 = load i8*, i8** %34, align 8, !dbg !1101
  call void @irc_send_cmd(%struct._IRC_SERVER_REC* %32, i8* %35), !dbg !1102
  %36 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !1103
  %37 = call %struct._GString* @g_string_truncate(%struct._GString* %36, i64 0), !dbg !1104
  br label %38, !dbg !1105

; <label>:38:                                     ; preds = %13, %12
  ret void, !dbg !1106
}

declare void @g_string_append_printf(%struct._GString*, i8*, ...) #2

declare i8* @g_string_free(%struct._GString*, i32) #2

declare %struct._GString* @g_string_truncate(%struct._GString*, i64) #2

declare %struct._GString* @g_string_prepend(%struct._GString*, i8*) #2

declare void @server_redirect_event(%struct._IRC_SERVER_REC*, i8*, i32, i8*, i32, i8*, ...) #2

declare void @irc_send_cmd(%struct._IRC_SERVER_REC*, i8*) #2

declare i8* @event_get_params(i8*, i32, ...) #2

; Function Attrs: nounwind uwtable
define internal void @ison_save_users(%struct.MODULE_SERVER_REC*, i8*) #0 !dbg !1108 {
  %3 = alloca %struct.MODULE_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.MODULE_SERVER_REC* %0, %struct.MODULE_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MODULE_SERVER_REC** %3, metadata !1111, metadata !697), !dbg !1112
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1113, metadata !697), !dbg !1114
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1115, metadata !697), !dbg !1116
  br label %6, !dbg !1117

; <label>:6:                                      ; preds = %24, %2
  %7 = load i8*, i8** %4, align 8, !dbg !1118
  %8 = icmp ne i8* %7, null, !dbg !1120
  br i1 %8, label %9, label %14, !dbg !1121

; <label>:9:                                      ; preds = %6
  %10 = load i8*, i8** %4, align 8, !dbg !1122
  %11 = load i8, i8* %10, align 1, !dbg !1124
  %12 = sext i8 %11 to i32, !dbg !1124
  %13 = icmp ne i32 %12, 0, !dbg !1125
  br label %14

; <label>:14:                                     ; preds = %9, %6
  %15 = phi i1 [ false, %6 ], [ %13, %9 ]
  br i1 %15, label %16, label %34, !dbg !1126

; <label>:16:                                     ; preds = %14
  %17 = load i8*, i8** %4, align 8, !dbg !1128
  %18 = call i8* @strchr(i8* %17, i32 32) #5, !dbg !1130
  store i8* %18, i8** %5, align 8, !dbg !1131
  %19 = load i8*, i8** %5, align 8, !dbg !1132
  %20 = icmp ne i8* %19, null, !dbg !1134
  br i1 %20, label %21, label %24, !dbg !1135

; <label>:21:                                     ; preds = %16
  %22 = load i8*, i8** %5, align 8, !dbg !1136
  %23 = getelementptr inbounds i8, i8* %22, i32 1, !dbg !1136
  store i8* %23, i8** %5, align 8, !dbg !1136
  store i8 0, i8* %22, align 1, !dbg !1138
  br label %24, !dbg !1139

; <label>:24:                                     ; preds = %21, %16
  %25 = load %struct.MODULE_SERVER_REC*, %struct.MODULE_SERVER_REC** %3, align 8, !dbg !1140
  %26 = getelementptr inbounds %struct.MODULE_SERVER_REC, %struct.MODULE_SERVER_REC* %25, i32 0, i32 2, !dbg !1141
  %27 = load %struct._GSList*, %struct._GSList** %26, align 8, !dbg !1141
  %28 = load i8*, i8** %4, align 8, !dbg !1142
  %29 = call noalias i8* @g_strdup(i8* %28), !dbg !1143
  %30 = call %struct._GSList* @g_slist_append(%struct._GSList* %27, i8* %29), !dbg !1144
  %31 = load %struct.MODULE_SERVER_REC*, %struct.MODULE_SERVER_REC** %3, align 8, !dbg !1146
  %32 = getelementptr inbounds %struct.MODULE_SERVER_REC, %struct.MODULE_SERVER_REC* %31, i32 0, i32 2, !dbg !1147
  store %struct._GSList* %30, %struct._GSList** %32, align 8, !dbg !1148
  %33 = load i8*, i8** %5, align 8, !dbg !1149
  store i8* %33, i8** %4, align 8, !dbg !1150
  br label %6, !dbg !1151, !llvm.loop !1153

; <label>:34:                                     ; preds = %14
  ret void, !dbg !1154
}

; Function Attrs: nounwind uwtable
define internal void @ison_check_joins(%struct._IRC_SERVER_REC*) #0 !dbg !1155 {
  %2 = alloca %struct._IRC_SERVER_REC*, align 8
  %3 = alloca %struct.MODULE_SERVER_REC*, align 8
  %4 = alloca %struct.NOTIFYLIST_REC*, align 8
  %5 = alloca %struct.NOTIFY_NICK_REC*, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca %struct._GSList*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %2, metadata !1156, metadata !697), !dbg !1157
  call void @llvm.dbg.declare(metadata %struct.MODULE_SERVER_REC** %3, metadata !1158, metadata !697), !dbg !1159
  call void @llvm.dbg.declare(metadata %struct.NOTIFYLIST_REC** %4, metadata !1160, metadata !697), !dbg !1161
  call void @llvm.dbg.declare(metadata %struct.NOTIFY_NICK_REC** %5, metadata !1162, metadata !697), !dbg !1163
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !1164, metadata !697), !dbg !1165
  call void @llvm.dbg.declare(metadata %struct._GSList** %7, metadata !1166, metadata !697), !dbg !1167
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1168, metadata !697), !dbg !1169
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1170, metadata !697), !dbg !1171
  %11 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1172
  %12 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %11, i32 0, i32 15, !dbg !1173
  %13 = load %struct._GHashTable*, %struct._GHashTable** %12, align 8, !dbg !1173
  %14 = call i8* @g_hash_table_lookup(%struct._GHashTable* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)), !dbg !1174
  %15 = bitcast i8* %14 to %struct.MODULE_SERVER_REC*, !dbg !1174
  store %struct.MODULE_SERVER_REC* %15, %struct.MODULE_SERVER_REC** %3, align 8, !dbg !1175
  %16 = call i64 @time(i64* null) #6, !dbg !1176
  store i64 %16, i64* %9, align 8, !dbg !1177
  store %struct._GSList* null, %struct._GSList** %7, align 8, !dbg !1178
  %17 = load %struct.MODULE_SERVER_REC*, %struct.MODULE_SERVER_REC** %3, align 8, !dbg !1179
  %18 = getelementptr inbounds %struct.MODULE_SERVER_REC, %struct.MODULE_SERVER_REC* %17, i32 0, i32 2, !dbg !1181
  %19 = load %struct._GSList*, %struct._GSList** %18, align 8, !dbg !1181
  store %struct._GSList* %19, %struct._GSList** %6, align 8, !dbg !1182
  br label %20, !dbg !1183

; <label>:20:                                     ; preds = %83, %1
  %21 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1184
  %22 = icmp ne %struct._GSList* %21, null, !dbg !1187
  br i1 %22, label %23, label %87, !dbg !1188

; <label>:23:                                     ; preds = %20
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1189, metadata !697), !dbg !1191
  %24 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1192
  %25 = getelementptr inbounds %struct._GSList, %struct._GSList* %24, i32 0, i32 0, !dbg !1193
  %26 = load i8*, i8** %25, align 8, !dbg !1193
  store i8* %26, i8** %10, align 8, !dbg !1191
  %27 = load i8*, i8** %10, align 8, !dbg !1194
  %28 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1195
  %29 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %28, i32 0, i32 3, !dbg !1196
  %30 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %29, align 8, !dbg !1196
  %31 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %30, i32 0, i32 12, !dbg !1197
  %32 = load i8*, i8** %31, align 8, !dbg !1197
  %33 = call %struct.NOTIFYLIST_REC* @notifylist_find(i8* %27, i8* %32), !dbg !1198
  store %struct.NOTIFYLIST_REC* %33, %struct.NOTIFYLIST_REC** %4, align 8, !dbg !1199
  %34 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %4, align 8, !dbg !1200
  %35 = icmp ne %struct.NOTIFYLIST_REC* %34, null, !dbg !1201
  br i1 %35, label %36, label %43, !dbg !1202

; <label>:36:                                     ; preds = %23
  %37 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %4, align 8, !dbg !1203
  %38 = getelementptr inbounds %struct.NOTIFYLIST_REC, %struct.NOTIFYLIST_REC* %37, i32 0, i32 2, !dbg !1205
  %39 = load i8, i8* %38, align 8, !dbg !1205
  %40 = and i8 %39, 1, !dbg !1205
  %41 = zext i8 %40 to i32, !dbg !1205
  %42 = icmp ne i32 %41, 0, !dbg !1206
  br label %43

; <label>:43:                                     ; preds = %36, %23
  %44 = phi i1 [ false, %23 ], [ %42, %36 ]
  %45 = zext i1 %44 to i32, !dbg !1207
  store i32 %45, i32* %8, align 4, !dbg !1209
  %46 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1210
  %47 = load i8*, i8** %10, align 8, !dbg !1211
  %48 = call %struct.NOTIFY_NICK_REC* @notify_nick_find(%struct._IRC_SERVER_REC* %46, i8* %47), !dbg !1212
  store %struct.NOTIFY_NICK_REC* %48, %struct.NOTIFY_NICK_REC** %5, align 8, !dbg !1213
  %49 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %5, align 8, !dbg !1214
  %50 = icmp ne %struct.NOTIFY_NICK_REC* %49, null, !dbg !1216
  br i1 %50, label %51, label %62, !dbg !1217

; <label>:51:                                     ; preds = %43
  %52 = load i64, i64* %9, align 8, !dbg !1218
  %53 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %5, align 8, !dbg !1221
  %54 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %53, i32 0, i32 6, !dbg !1222
  %55 = load i64, i64* %54, align 8, !dbg !1222
  %56 = sub nsw i64 %52, %55, !dbg !1223
  %57 = load i32, i32* @notify_whois_time, align 4, !dbg !1224
  %58 = sext i32 %57 to i64, !dbg !1224
  %59 = icmp slt i64 %56, %58, !dbg !1225
  br i1 %59, label %60, label %61, !dbg !1226

; <label>:60:                                     ; preds = %51
  br label %83, !dbg !1227

; <label>:61:                                     ; preds = %51
  br label %73, !dbg !1228

; <label>:62:                                     ; preds = %43
  %63 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1229
  %64 = load i8*, i8** %10, align 8, !dbg !1231
  %65 = call %struct.NOTIFY_NICK_REC* @notify_nick_create(%struct._IRC_SERVER_REC* %63, i8* %64), !dbg !1232
  store %struct.NOTIFY_NICK_REC* %65, %struct.NOTIFY_NICK_REC** %5, align 8, !dbg !1233
  %66 = load i32, i32* %8, align 4, !dbg !1234
  %67 = icmp ne i32 %66, 0, !dbg !1234
  br i1 %67, label %72, label %68, !dbg !1236

; <label>:68:                                     ; preds = %62
  %69 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1237
  %70 = load i8*, i8** %10, align 8, !dbg !1239
  %71 = call %struct._GSList* @g_slist_append(%struct._GSList* %69, i8* %70), !dbg !1240
  store %struct._GSList* %71, %struct._GSList** %7, align 8, !dbg !1241
  br label %72, !dbg !1242

; <label>:72:                                     ; preds = %68, %62
  br label %73

; <label>:73:                                     ; preds = %72, %61
  %74 = load i32, i32* %8, align 4, !dbg !1243
  %75 = icmp ne i32 %74, 0, !dbg !1243
  br i1 %75, label %76, label %82, !dbg !1245

; <label>:76:                                     ; preds = %73
  %77 = load i64, i64* %9, align 8, !dbg !1246
  %78 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %5, align 8, !dbg !1248
  %79 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %78, i32 0, i32 6, !dbg !1249
  store i64 %77, i64* %79, align 8, !dbg !1250
  %80 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1251
  %81 = load i8*, i8** %10, align 8, !dbg !1252
  call void @whois_send_server(%struct._IRC_SERVER_REC* %80, i8* %81), !dbg !1253
  br label %82, !dbg !1254

; <label>:82:                                     ; preds = %76, %73
  br label %83, !dbg !1255

; <label>:83:                                     ; preds = %82, %60
  %84 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1256
  %85 = getelementptr inbounds %struct._GSList, %struct._GSList* %84, i32 0, i32 1, !dbg !1258
  %86 = load %struct._GSList*, %struct._GSList** %85, align 8, !dbg !1258
  store %struct._GSList* %86, %struct._GSList** %6, align 8, !dbg !1259
  br label %20, !dbg !1260, !llvm.loop !1261

; <label>:87:                                     ; preds = %20
  %88 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1263
  %89 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1264
  call void @whois_list_send(%struct._IRC_SERVER_REC* %88, %struct._GSList* %89), !dbg !1265
  %90 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1266
  call void @g_slist_free(%struct._GSList* %90), !dbg !1267
  ret void, !dbg !1268
}

; Function Attrs: nounwind uwtable
define internal void @ison_check_parts(%struct._IRC_SERVER_REC*) #0 !dbg !1269 {
  %2 = alloca %struct._IRC_SERVER_REC*, align 8
  %3 = alloca %struct.MODULE_SERVER_REC*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca %struct.NOTIFY_NICK_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %2, metadata !1270, metadata !697), !dbg !1271
  call void @llvm.dbg.declare(metadata %struct.MODULE_SERVER_REC** %3, metadata !1272, metadata !697), !dbg !1273
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !1274, metadata !697), !dbg !1275
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !1276, metadata !697), !dbg !1277
  %7 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1278
  %8 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %7, i32 0, i32 15, !dbg !1279
  %9 = load %struct._GHashTable*, %struct._GHashTable** %8, align 8, !dbg !1279
  %10 = call i8* @g_hash_table_lookup(%struct._GHashTable* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)), !dbg !1280
  %11 = bitcast i8* %10 to %struct.MODULE_SERVER_REC*, !dbg !1280
  store %struct.MODULE_SERVER_REC* %11, %struct.MODULE_SERVER_REC** %3, align 8, !dbg !1281
  %12 = load %struct.MODULE_SERVER_REC*, %struct.MODULE_SERVER_REC** %3, align 8, !dbg !1282
  %13 = getelementptr inbounds %struct.MODULE_SERVER_REC, %struct.MODULE_SERVER_REC* %12, i32 0, i32 1, !dbg !1284
  %14 = load %struct._GSList*, %struct._GSList** %13, align 8, !dbg !1284
  store %struct._GSList* %14, %struct._GSList** %4, align 8, !dbg !1285
  br label %15, !dbg !1286

; <label>:15:                                     ; preds = %38, %1
  %16 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1287
  %17 = icmp ne %struct._GSList* %16, null, !dbg !1290
  br i1 %17, label %18, label %40, !dbg !1291

; <label>:18:                                     ; preds = %15
  call void @llvm.dbg.declare(metadata %struct.NOTIFY_NICK_REC** %6, metadata !1292, metadata !697), !dbg !1294
  %19 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1295
  %20 = getelementptr inbounds %struct._GSList, %struct._GSList* %19, i32 0, i32 0, !dbg !1296
  %21 = load i8*, i8** %20, align 8, !dbg !1296
  %22 = bitcast i8* %21 to %struct.NOTIFY_NICK_REC*, !dbg !1295
  store %struct.NOTIFY_NICK_REC* %22, %struct.NOTIFY_NICK_REC** %6, align 8, !dbg !1294
  %23 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1297
  %24 = getelementptr inbounds %struct._GSList, %struct._GSList* %23, i32 0, i32 1, !dbg !1298
  %25 = load %struct._GSList*, %struct._GSList** %24, align 8, !dbg !1298
  store %struct._GSList* %25, %struct._GSList** %5, align 8, !dbg !1299
  %26 = load %struct.MODULE_SERVER_REC*, %struct.MODULE_SERVER_REC** %3, align 8, !dbg !1300
  %27 = getelementptr inbounds %struct.MODULE_SERVER_REC, %struct.MODULE_SERVER_REC* %26, i32 0, i32 2, !dbg !1302
  %28 = load %struct._GSList*, %struct._GSList** %27, align 8, !dbg !1302
  %29 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %6, align 8, !dbg !1303
  %30 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %29, i32 0, i32 0, !dbg !1304
  %31 = load i8*, i8** %30, align 8, !dbg !1304
  %32 = call %struct._GSList* @gslist_find_icase_string(%struct._GSList* %28, i8* %31), !dbg !1305
  %33 = icmp ne %struct._GSList* %32, null, !dbg !1306
  br i1 %33, label %34, label %35, !dbg !1307

; <label>:34:                                     ; preds = %18
  br label %38, !dbg !1308

; <label>:35:                                     ; preds = %18
  %36 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1309
  %37 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %6, align 8, !dbg !1310
  call void @notifylist_left(%struct._IRC_SERVER_REC* %36, %struct.NOTIFY_NICK_REC* %37), !dbg !1311
  br label %38, !dbg !1312

; <label>:38:                                     ; preds = %35, %34
  %39 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1313
  store %struct._GSList* %39, %struct._GSList** %4, align 8, !dbg !1315
  br label %15, !dbg !1316, !llvm.loop !1317

; <label>:40:                                     ; preds = %15
  ret void, !dbg !1319
}

declare void @g_slist_free(%struct._GSList*) #2

; Function Attrs: nounwind
declare i64 @time(i64*) #4

declare %struct.NOTIFYLIST_REC* @notifylist_find(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @whois_send_server(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !1320 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1323, metadata !697), !dbg !1324
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1325, metadata !697), !dbg !1326
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1327, metadata !697), !dbg !1328
  %6 = load i8*, i8** %4, align 8, !dbg !1329
  %7 = load i8*, i8** %4, align 8, !dbg !1330
  %8 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* %6, i8* %7), !dbg !1331
  store i8* %8, i8** %5, align 8, !dbg !1332
  %9 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1333
  %10 = load i8*, i8** %4, align 8, !dbg !1334
  %11 = load i8*, i8** %5, align 8, !dbg !1335
  call void @whois_send(%struct._IRC_SERVER_REC* %9, i8* %10, i8* %11), !dbg !1336
  %12 = load i8*, i8** %5, align 8, !dbg !1337
  call void @g_free(i8* %12), !dbg !1338
  ret void, !dbg !1339
}

; Function Attrs: nounwind uwtable
define internal void @whois_list_send(%struct._IRC_SERVER_REC*, %struct._GSList*) #0 !dbg !1340 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca %struct._GString*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1343, metadata !697), !dbg !1344
  store %struct._GSList* %1, %struct._GSList** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !1345, metadata !697), !dbg !1346
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !1347, metadata !697), !dbg !1348
  call void @llvm.dbg.declare(metadata %struct._GString** %6, metadata !1349, metadata !697), !dbg !1350
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1351, metadata !697), !dbg !1352
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1353, metadata !697), !dbg !1354
  %9 = call %struct._GString* @g_string_new(i8* null), !dbg !1355
  store %struct._GString* %9, %struct._GString** %6, align 8, !dbg !1356
  store i32 0, i32* %8, align 4, !dbg !1357
  %10 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1358
  store %struct._GSList* %10, %struct._GSList** %5, align 8, !dbg !1360
  br label %11, !dbg !1361

; <label>:11:                                     ; preds = %44, %2
  %12 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1362
  %13 = icmp ne %struct._GSList* %12, null, !dbg !1365
  br i1 %13, label %14, label %48, !dbg !1366

; <label>:14:                                     ; preds = %11
  %15 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1367
  %16 = getelementptr inbounds %struct._GSList, %struct._GSList* %15, i32 0, i32 0, !dbg !1369
  %17 = load i8*, i8** %16, align 8, !dbg !1369
  store i8* %17, i8** %7, align 8, !dbg !1370
  %18 = load i32, i32* %8, align 4, !dbg !1371
  %19 = add nsw i32 %18, 1, !dbg !1371
  store i32 %19, i32* %8, align 4, !dbg !1371
  %20 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1372
  %21 = load i8*, i8** %7, align 8, !dbg !1373
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i8* %21), !dbg !1374
  %22 = load i32, i32* %8, align 4, !dbg !1375
  %23 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1377
  %24 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %23, i32 0, i32 48, !dbg !1378
  %25 = load i32, i32* %24, align 8, !dbg !1378
  %26 = icmp sge i32 %22, %25, !dbg !1379
  br i1 %26, label %27, label %43, !dbg !1380

; <label>:27:                                     ; preds = %14
  %28 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1381
  %29 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1383
  %30 = getelementptr inbounds %struct._GString, %struct._GString* %29, i32 0, i32 1, !dbg !1384
  %31 = load i64, i64* %30, align 8, !dbg !1384
  %32 = sub i64 %31, 1, !dbg !1385
  %33 = call %struct._GString* @g_string_truncate(%struct._GString* %28, i64 %32), !dbg !1386
  %34 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1387
  %35 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1388
  %36 = getelementptr inbounds %struct._GString, %struct._GString* %35, i32 0, i32 0, !dbg !1389
  %37 = load i8*, i8** %36, align 8, !dbg !1389
  %38 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1390
  %39 = getelementptr inbounds %struct._GString, %struct._GString* %38, i32 0, i32 0, !dbg !1391
  %40 = load i8*, i8** %39, align 8, !dbg !1391
  call void @whois_send(%struct._IRC_SERVER_REC* %34, i8* %37, i8* %40), !dbg !1392
  %41 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1393
  %42 = call %struct._GString* @g_string_truncate(%struct._GString* %41, i64 0), !dbg !1394
  store i32 0, i32* %8, align 4, !dbg !1395
  br label %43, !dbg !1396

; <label>:43:                                     ; preds = %27, %14
  br label %44, !dbg !1397

; <label>:44:                                     ; preds = %43
  %45 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1398
  %46 = getelementptr inbounds %struct._GSList, %struct._GSList* %45, i32 0, i32 1, !dbg !1400
  %47 = load %struct._GSList*, %struct._GSList** %46, align 8, !dbg !1400
  store %struct._GSList* %47, %struct._GSList** %5, align 8, !dbg !1401
  br label %11, !dbg !1402, !llvm.loop !1403

; <label>:48:                                     ; preds = %11
  %49 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1405
  %50 = getelementptr inbounds %struct._GString, %struct._GString* %49, i32 0, i32 1, !dbg !1407
  %51 = load i64, i64* %50, align 8, !dbg !1407
  %52 = icmp ugt i64 %51, 0, !dbg !1408
  br i1 %52, label %53, label %67, !dbg !1409

; <label>:53:                                     ; preds = %48
  %54 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1410
  %55 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1412
  %56 = getelementptr inbounds %struct._GString, %struct._GString* %55, i32 0, i32 1, !dbg !1413
  %57 = load i64, i64* %56, align 8, !dbg !1413
  %58 = sub i64 %57, 1, !dbg !1414
  %59 = call %struct._GString* @g_string_truncate(%struct._GString* %54, i64 %58), !dbg !1415
  %60 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1416
  %61 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1417
  %62 = getelementptr inbounds %struct._GString, %struct._GString* %61, i32 0, i32 0, !dbg !1418
  %63 = load i8*, i8** %62, align 8, !dbg !1418
  %64 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1419
  %65 = getelementptr inbounds %struct._GString, %struct._GString* %64, i32 0, i32 0, !dbg !1420
  %66 = load i8*, i8** %65, align 8, !dbg !1420
  call void @whois_send(%struct._IRC_SERVER_REC* %60, i8* %63, i8* %66), !dbg !1421
  br label %67, !dbg !1422

; <label>:67:                                     ; preds = %53, %48
  %68 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1423
  %69 = call i8* @g_string_free(%struct._GString* %68, i32 1), !dbg !1424
  ret void, !dbg !1425
}

declare noalias i8* @g_strdup_printf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal void @whois_send(%struct._IRC_SERVER_REC*, i8*, i8*) #0 !dbg !1426 {
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !1429, metadata !697), !dbg !1430
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1431, metadata !697), !dbg !1432
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1433, metadata !697), !dbg !1434
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1435, metadata !697), !dbg !1436
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1437, metadata !697), !dbg !1438
  %9 = load i8*, i8** %5, align 8, !dbg !1439
  %10 = load i8*, i8** %5, align 8, !dbg !1440
  %11 = call noalias i8* (i8*, ...) @g_strconcat(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i8* %10, i8* null), !dbg !1441
  store i8* %11, i8** %8, align 8, !dbg !1442
  %12 = load i8*, i8** %8, align 8, !dbg !1443
  %13 = load i8*, i8** %5, align 8, !dbg !1445
  %14 = call i64 @strlen(i8* %13) #5, !dbg !1446
  %15 = getelementptr inbounds i8, i8* %12, i64 %14, !dbg !1447
  %16 = getelementptr inbounds i8, i8* %15, i64 1, !dbg !1448
  store i8* %16, i8** %7, align 8, !dbg !1449
  br label %17, !dbg !1450

; <label>:17:                                     ; preds = %30, %3
  %18 = load i8*, i8** %7, align 8, !dbg !1451
  %19 = load i8, i8* %18, align 1, !dbg !1454
  %20 = sext i8 %19 to i32, !dbg !1454
  %21 = icmp ne i32 %20, 0, !dbg !1455
  br i1 %21, label %22, label %33, !dbg !1456

; <label>:22:                                     ; preds = %17
  %23 = load i8*, i8** %7, align 8, !dbg !1457
  %24 = load i8, i8* %23, align 1, !dbg !1459
  %25 = sext i8 %24 to i32, !dbg !1459
  %26 = icmp eq i32 %25, 44, !dbg !1460
  br i1 %26, label %27, label %29, !dbg !1461

; <label>:27:                                     ; preds = %22
  %28 = load i8*, i8** %7, align 8, !dbg !1462
  store i8 32, i8* %28, align 1, !dbg !1464
  br label %29, !dbg !1465

; <label>:29:                                     ; preds = %27, %22
  br label %30, !dbg !1466

; <label>:30:                                     ; preds = %29
  %31 = load i8*, i8** %7, align 8, !dbg !1468
  %32 = getelementptr inbounds i8, i8* %31, i32 1, !dbg !1468
  store i8* %32, i8** %7, align 8, !dbg !1468
  br label %17, !dbg !1470, !llvm.loop !1471

; <label>:33:                                     ; preds = %17
  %34 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1473
  %35 = load i8*, i8** %8, align 8, !dbg !1474
  call void (%struct._IRC_SERVER_REC*, i8*, i32, i8*, i32, i8*, ...) @server_redirect_event(%struct._IRC_SERVER_REC* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 1, i8* %35, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0), i8* null), !dbg !1475
  %36 = load i8*, i8** %8, align 8, !dbg !1476
  call void @g_free(i8* %36), !dbg !1477
  %37 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1478
  %38 = load i8*, i8** %6, align 8, !dbg !1479
  call void (%struct._IRC_SERVER_REC*, i8*, ...) @irc_send_cmdv(%struct._IRC_SERVER_REC* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i8* %38), !dbg !1480
  ret void, !dbg !1481
}

declare noalias i8* @g_strconcat(i8*, ...) #2

declare void @irc_send_cmdv(%struct._IRC_SERVER_REC*, i8*, ...) #2

declare %struct._GSList* @gslist_find_icase_string(%struct._GSList*, i8*) #2

declare void @notifylist_left(%struct._IRC_SERVER_REC*, %struct.NOTIFY_NICK_REC*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!689, !690}
!llvm.ident = !{!691}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !35, globals: !685)
!1 = !DIFile(filename: "line194-notify-ison.o.i", directory: "/home/lichi/Desktop/irssi/task1")
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
!35 = !{!36, !59, !60, !67, !76, !80, !82, !84, !378}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "NOTIFY_NICK_REC", file: !38, line: 17, baseType: !39)
!38 = !DIFile(filename: "module.h", directory: "/home/lichi/Desktop/irssi/task1")
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 6, size: 448, align: 64, elements: !40)
!40 = !{!41, !44, !45, !46, !47, !48, !50, !51, !52, !53}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !39, file: !38, line: 7, baseType: !42, size: 64, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!43 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !39, file: !38, line: 8, baseType: !42, size: 64, align: 64, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !39, file: !38, line: 8, baseType: !42, size: 64, align: 64, offset: 128)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !39, file: !38, line: 8, baseType: !42, size: 64, align: 64, offset: 192)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "awaymsg", scope: !39, file: !38, line: 8, baseType: !42, size: 64, align: 64, offset: 256)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "host_ok", scope: !39, file: !38, line: 10, baseType: !49, size: 1, align: 32, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!49 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "away_ok", scope: !39, file: !38, line: 11, baseType: !49, size: 1, align: 32, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "away", scope: !39, file: !38, line: 13, baseType: !49, size: 1, align: 32, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "join_announced", scope: !39, file: !38, line: 14, baseType: !49, size: 1, align: 32, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "last_whois", scope: !39, file: !38, line: 16, baseType: !54, size: 64, align: 64, offset: 384)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !55, line: 75, baseType: !56)
!55 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !57, line: 139, baseType: !58)
!57 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!58 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !61, line: 9, baseType: !62)
!61 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!63 = !DISubroutineType(types: !64)
!64 = !{null, !65, !65, !65, !65, !65, !65}
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{!71, !75}
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !72, line: 50, baseType: !73)
!72 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !72, line: 49, baseType: !74)
!74 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !72, line: 77, baseType: !59)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "GFunc", file: !72, line: 88, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64, align: 64)
!78 = !DISubroutineType(types: !79)
!79 = !{null, !75, !75}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64, align: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !72, line: 46, baseType: !43)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!83 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_REC", file: !86, line: 6, baseType: !87)
!86 = !DIFile(filename: "../../../src/irc/core/irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_REC", file: !88, line: 42, size: 39168, align: 64, elements: !89)
!88 = !DIFile(filename: "../../../src/irc/core/irc-servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!89 = !{!90, !92, !93, !94, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !340, !341, !345, !346, !347, !351, !356, !357, !358, !359, !360, !361, !362, !363, !370, !371, !372, !373, !374, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !682, !684}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !87, file: !91, line: 3, baseType: !74, size: 32, align: 32)
!91 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!92 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !87, file: !91, line: 4, baseType: !74, size: 32, align: 32, offset: 32)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !87, file: !91, line: 6, baseType: !74, size: 32, align: 32, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !87, file: !91, line: 8, baseType: !95, size: 64, align: 64, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64, align: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_CONNECT_REC", file: !86, line: 5, baseType: !97)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_CONNECT_REC", file: !88, line: 24, size: 2496, align: 64, elements: !98)
!98 = !{!99, !101, !102, !103, !104, !105, !106, !107, !108, !110, !111, !112, !113, !114, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !97, file: !100, line: 3, baseType: !74, size: 32, align: 32)
!100 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!101 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !97, file: !100, line: 4, baseType: !74, size: 32, align: 32, offset: 32)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !97, file: !100, line: 6, baseType: !74, size: 32, align: 32, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !97, file: !100, line: 9, baseType: !42, size: 64, align: 64, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !97, file: !100, line: 10, baseType: !74, size: 32, align: 32, offset: 192)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !97, file: !100, line: 11, baseType: !42, size: 64, align: 64, offset: 256)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !97, file: !100, line: 11, baseType: !42, size: 64, align: 64, offset: 320)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !97, file: !100, line: 11, baseType: !42, size: 64, align: 64, offset: 384)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !97, file: !100, line: 13, baseType: !109, size: 16, align: 16, offset: 448)
!109 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !97, file: !100, line: 14, baseType: !42, size: 64, align: 64, offset: 512)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !97, file: !100, line: 15, baseType: !42, size: 64, align: 64, offset: 576)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !97, file: !100, line: 16, baseType: !74, size: 32, align: 32, offset: 640)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !97, file: !100, line: 17, baseType: !42, size: 64, align: 64, offset: 704)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !97, file: !100, line: 19, baseType: !115, size: 64, align: 64, offset: 768)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !117, line: 99, baseType: !118)
!117 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!118 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !117, line: 99, flags: DIFlagFwdDecl)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !97, file: !100, line: 19, baseType: !115, size: 64, align: 64, offset: 832)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !97, file: !100, line: 21, baseType: !42, size: 64, align: 64, offset: 896)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !97, file: !100, line: 22, baseType: !42, size: 64, align: 64, offset: 960)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !97, file: !100, line: 23, baseType: !42, size: 64, align: 64, offset: 1024)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !97, file: !100, line: 24, baseType: !42, size: 64, align: 64, offset: 1088)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !97, file: !100, line: 26, baseType: !42, size: 64, align: 64, offset: 1152)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !97, file: !100, line: 27, baseType: !42, size: 64, align: 64, offset: 1216)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !97, file: !100, line: 28, baseType: !42, size: 64, align: 64, offset: 1280)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !97, file: !100, line: 29, baseType: !42, size: 64, align: 64, offset: 1344)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !97, file: !100, line: 30, baseType: !42, size: 64, align: 64, offset: 1408)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !97, file: !100, line: 31, baseType: !42, size: 64, align: 64, offset: 1472)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !97, file: !100, line: 32, baseType: !42, size: 64, align: 64, offset: 1536)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !97, file: !100, line: 33, baseType: !42, size: 64, align: 64, offset: 1600)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !97, file: !100, line: 35, baseType: !133, size: 64, align: 64, offset: 1664)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, align: 64)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !135)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !136)
!136 = !{!137, !138, !272, !273, !278, !279, !280, !281, !282, !291, !292, !293, !297, !298, !299, !300, !301, !302, !303, !304}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !135, file: !4, line: 100, baseType: !73, size: 32, align: 32)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !135, file: !4, line: 101, baseType: !139, size: 64, align: 64, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !141)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !142)
!142 = !{!143, !164, !170, !176, !180, !259, !263, !268}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !141, file: !4, line: 133, baseType: !144, size: 64, align: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64, align: 64)
!145 = !DISubroutineType(types: !146)
!146 = !{!147, !133, !80, !148, !151, !152}
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !149, line: 66, baseType: !150)
!149 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!150 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64, align: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64, align: 64)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64, align: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !155, line: 42, baseType: !156)
!155 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !155, line: 44, size: 128, align: 64, elements: !157)
!157 = !{!158, !162, !163}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !156, file: !155, line: 46, baseType: !159, size: 32, align: 32)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !160, line: 36, baseType: !161)
!160 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !149, line: 45, baseType: !49)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !156, file: !155, line: 47, baseType: !73, size: 32, align: 32, offset: 32)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !156, file: !155, line: 48, baseType: !80, size: 64, align: 64, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !141, file: !4, line: 138, baseType: !165, size: 64, align: 64, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64, align: 64)
!166 = !DISubroutineType(types: !167)
!167 = !{!147, !133, !168, !148, !151, !152}
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64, align: 64)
!169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !141, file: !4, line: 143, baseType: !171, size: 64, align: 64, offset: 128)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64, align: 64)
!172 = !DISubroutineType(types: !173)
!173 = !{!147, !133, !174, !175, !152}
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !149, line: 51, baseType: !58)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !141, file: !4, line: 147, baseType: !177, size: 64, align: 64, offset: 192)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{!147, !133, !152}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !141, file: !4, line: 149, baseType: !181, size: 64, align: 64, offset: 256)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64, align: 64)
!182 = !DISubroutineType(types: !183)
!183 = !{!184, !133, !258}
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64, align: 64)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !186)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !187)
!187 = !{!188, !189, !205, !234, !236, !240, !241, !242, !243, !251, !252, !253, !254}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !186, file: !16, line: 174, baseType: !75, size: 64, align: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !186, file: !16, line: 175, baseType: !190, size: 64, align: 64, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !192)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !193)
!193 = !{!194, !198, !199}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !192, file: !16, line: 198, baseType: !195, size: 64, align: 64)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64, align: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{null, !75}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !192, file: !16, line: 199, baseType: !195, size: 64, align: 64, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !192, file: !16, line: 200, baseType: !200, size: 64, align: 64, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64, align: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{null, !75, !184, !203, !204}
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !186, file: !16, line: 177, baseType: !206, size: 64, align: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64, align: 64)
!207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !209)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !210)
!210 = !{!211, !216, !220, !224, !228, !229}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !209, file: !16, line: 216, baseType: !212, size: 64, align: 64)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64, align: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{!71, !184, !215}
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !209, file: !16, line: 218, baseType: !217, size: 64, align: 64, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64, align: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!71, !184}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !209, file: !16, line: 219, baseType: !221, size: 64, align: 64, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!71, !184, !67, !75}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !209, file: !16, line: 222, baseType: !225, size: 64, align: 64, offset: 192)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64, align: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{null, !184}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !209, file: !16, line: 226, baseType: !67, size: 64, align: 64, offset: 256)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !209, file: !16, line: 227, baseType: !230, size: 64, align: 64, offset: 320)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64, align: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{null}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !186, file: !16, line: 178, baseType: !235, size: 32, align: 32, offset: 192)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !72, line: 55, baseType: !49)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !186, file: !16, line: 180, baseType: !237, size: 64, align: 64, offset: 256)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64, align: 64)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !239)
!239 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !186, file: !16, line: 182, baseType: !73, size: 32, align: 32, offset: 320)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !186, file: !16, line: 183, baseType: !235, size: 32, align: 32, offset: 352)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !186, file: !16, line: 184, baseType: !235, size: 32, align: 32, offset: 384)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !186, file: !16, line: 186, baseType: !244, size: 64, align: 64, offset: 448)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64, align: 64)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !246, line: 37, baseType: !247)
!246 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !246, line: 39, size: 128, align: 64, elements: !248)
!248 = !{!249, !250}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !247, file: !246, line: 41, baseType: !75, size: 64, align: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !247, file: !246, line: 42, baseType: !244, size: 64, align: 64, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !186, file: !16, line: 188, baseType: !184, size: 64, align: 64, offset: 512)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !186, file: !16, line: 189, baseType: !184, size: 64, align: 64, offset: 576)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !186, file: !16, line: 191, baseType: !42, size: 64, align: 64, offset: 640)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !186, file: !16, line: 193, baseType: !255, size: 64, align: 64, offset: 704)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64, align: 64)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !257)
!257 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !141, file: !4, line: 151, baseType: !260, size: 64, align: 64, offset: 320)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{null, !133}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !141, file: !4, line: 152, baseType: !264, size: 64, align: 64, offset: 384)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64, align: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!147, !133, !267, !152}
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !141, file: !4, line: 155, baseType: !269, size: 64, align: 64, offset: 448)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64, align: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!267, !133}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !135, file: !4, line: 103, baseType: !80, size: 64, align: 64, offset: 128)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !135, file: !4, line: 104, baseType: !274, size: 64, align: 64, offset: 192)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !275, line: 77, baseType: !276)
!275 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64, align: 64)
!277 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !275, line: 77, flags: DIFlagFwdDecl)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !135, file: !4, line: 105, baseType: !274, size: 64, align: 64, offset: 256)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !135, file: !4, line: 106, baseType: !80, size: 64, align: 64, offset: 320)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !135, file: !4, line: 107, baseType: !235, size: 32, align: 32, offset: 384)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !135, file: !4, line: 109, baseType: !148, size: 64, align: 64, offset: 448)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !135, file: !4, line: 110, baseType: !283, size: 64, align: 64, offset: 512)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64, align: 64)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !285, line: 39, baseType: !286)
!285 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !285, line: 41, size: 192, align: 64, elements: !287)
!287 = !{!288, !289, !290}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !286, file: !285, line: 43, baseType: !80, size: 64, align: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !286, file: !285, line: 44, baseType: !148, size: 64, align: 64, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !286, file: !285, line: 45, baseType: !148, size: 64, align: 64, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !135, file: !4, line: 111, baseType: !283, size: 64, align: 64, offset: 576)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !135, file: !4, line: 112, baseType: !283, size: 64, align: 64, offset: 640)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !135, file: !4, line: 113, baseType: !294, size: 48, align: 8, offset: 704)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 48, align: 8, elements: !295)
!295 = !{!296}
!296 = !DISubrange(count: 6)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !135, file: !4, line: 117, baseType: !235, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !135, file: !4, line: 118, baseType: !235, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !135, file: !4, line: 119, baseType: !235, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !135, file: !4, line: 120, baseType: !235, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !135, file: !4, line: 121, baseType: !235, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !135, file: !4, line: 122, baseType: !235, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !135, file: !4, line: 124, baseType: !75, size: 64, align: 64, offset: 768)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !135, file: !4, line: 125, baseType: !75, size: 64, align: 64, offset: 832)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !97, file: !100, line: 38, baseType: !49, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !97, file: !100, line: 39, baseType: !49, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !97, file: !100, line: 40, baseType: !49, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !97, file: !100, line: 41, baseType: !49, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !97, file: !100, line: 42, baseType: !49, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !97, file: !100, line: 43, baseType: !49, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !97, file: !100, line: 44, baseType: !49, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !97, file: !100, line: 45, baseType: !49, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !97, file: !100, line: 46, baseType: !42, size: 64, align: 64, offset: 1792)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !97, file: !100, line: 47, baseType: !42, size: 64, align: 64, offset: 1856)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !97, file: !88, line: 27, baseType: !42, size: 64, align: 64, offset: 1920)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_nick", scope: !97, file: !88, line: 28, baseType: !42, size: 64, align: 64, offset: 1984)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !97, file: !88, line: 30, baseType: !74, size: 32, align: 32, offset: 2048)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_username", scope: !97, file: !88, line: 31, baseType: !42, size: 64, align: 64, offset: 2112)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !97, file: !88, line: 32, baseType: !42, size: 64, align: 64, offset: 2176)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !97, file: !88, line: 34, baseType: !74, size: 32, align: 32, offset: 2240)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !97, file: !88, line: 35, baseType: !74, size: 32, align: 32, offset: 2272)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !97, file: !88, line: 36, baseType: !74, size: 32, align: 32, offset: 2304)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks", scope: !97, file: !88, line: 38, baseType: !74, size: 32, align: 32, offset: 2336)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !97, file: !88, line: 38, baseType: !74, size: 32, align: 32, offset: 2368)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes", scope: !97, file: !88, line: 38, baseType: !74, size: 32, align: 32, offset: 2400)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois", scope: !97, file: !88, line: 38, baseType: !74, size: 32, align: 32, offset: 2432)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !87, file: !91, line: 9, baseType: !54, size: 64, align: 64, offset: 192)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !87, file: !91, line: 10, baseType: !54, size: 64, align: 64, offset: 256)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !87, file: !91, line: 12, baseType: !42, size: 64, align: 64, offset: 320)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !87, file: !91, line: 13, baseType: !42, size: 64, align: 64, offset: 384)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !87, file: !91, line: 15, baseType: !49, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !87, file: !91, line: 16, baseType: !49, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !87, file: !91, line: 17, baseType: !49, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !87, file: !91, line: 18, baseType: !49, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !87, file: !91, line: 19, baseType: !49, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !87, file: !91, line: 21, baseType: !337, size: 64, align: 64, offset: 512)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64, align: 64)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !117, line: 102, baseType: !339)
!339 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !117, line: 102, flags: DIFlagFwdDecl)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !87, file: !91, line: 22, baseType: !74, size: 32, align: 32, offset: 576)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !87, file: !91, line: 25, baseType: !342, size: 128, align: 64, offset: 640)
!342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 128, align: 64, elements: !343)
!343 = !{!344}
!344 = !DISubrange(count: 2)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !87, file: !91, line: 26, baseType: !74, size: 32, align: 32, offset: 768)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !87, file: !91, line: 27, baseType: !74, size: 32, align: 32, offset: 800)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !87, file: !91, line: 29, baseType: !348, size: 64, align: 64, offset: 832)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64, align: 64)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !117, line: 103, baseType: !350)
!350 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !117, line: 103, flags: DIFlagFwdDecl)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !87, file: !91, line: 30, baseType: !352, size: 64, align: 64, offset: 896)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64, align: 64)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !354, line: 37, baseType: !355)
!354 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!355 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !354, line: 37, flags: DIFlagFwdDecl)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !87, file: !91, line: 32, baseType: !42, size: 64, align: 64, offset: 960)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !87, file: !91, line: 33, baseType: !42, size: 64, align: 64, offset: 1024)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !87, file: !91, line: 34, baseType: !42, size: 64, align: 64, offset: 1088)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !87, file: !91, line: 35, baseType: !49, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !87, file: !91, line: 36, baseType: !49, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !87, file: !91, line: 37, baseType: !49, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !87, file: !91, line: 38, baseType: !49, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !87, file: !91, line: 40, baseType: !364, size: 128, align: 64, offset: 1216)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !72, line: 504, baseType: !365)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !72, line: 506, size: 128, align: 64, elements: !366)
!366 = !{!367, !369}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !365, file: !72, line: 508, baseType: !368, size: 64, align: 64)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !72, line: 48, baseType: !58)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !365, file: !72, line: 509, baseType: !368, size: 64, align: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !87, file: !91, line: 41, baseType: !54, size: 64, align: 64, offset: 1344)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !87, file: !91, line: 42, baseType: !74, size: 32, align: 32, offset: 1408)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !87, file: !91, line: 44, baseType: !244, size: 64, align: 64, offset: 1472)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !87, file: !91, line: 45, baseType: !244, size: 64, align: 64, offset: 1536)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !87, file: !91, line: 53, baseType: !375, size: 64, align: 64, offset: 1600)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64, align: 64)
!376 = !DISubroutineType(types: !377)
!377 = !{null, !378, !82, !74}
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64, align: 64)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !117, line: 107, baseType: !380)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !381, line: 30, size: 2240, align: 64, elements: !382)
!381 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!382 = !{!383, !384, !385, !386, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !462, !466, !470, !474, !479, !558, !565, !569}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !380, file: !91, line: 3, baseType: !74, size: 32, align: 32)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !380, file: !91, line: 4, baseType: !74, size: 32, align: 32, offset: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !380, file: !91, line: 6, baseType: !74, size: 32, align: 32, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !380, file: !91, line: 8, baseType: !387, size: 64, align: 64, offset: 128)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64, align: 64)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !117, line: 113, baseType: !389)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !381, line: 25, size: 1920, align: 64, elements: !390)
!390 = !{!391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !389, file: !100, line: 3, baseType: !74, size: 32, align: 32)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !389, file: !100, line: 4, baseType: !74, size: 32, align: 32, offset: 32)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !389, file: !100, line: 6, baseType: !74, size: 32, align: 32, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !389, file: !100, line: 9, baseType: !42, size: 64, align: 64, offset: 128)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !389, file: !100, line: 10, baseType: !74, size: 32, align: 32, offset: 192)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !389, file: !100, line: 11, baseType: !42, size: 64, align: 64, offset: 256)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !389, file: !100, line: 11, baseType: !42, size: 64, align: 64, offset: 320)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !389, file: !100, line: 11, baseType: !42, size: 64, align: 64, offset: 384)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !389, file: !100, line: 13, baseType: !109, size: 16, align: 16, offset: 448)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !389, file: !100, line: 14, baseType: !42, size: 64, align: 64, offset: 512)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !389, file: !100, line: 15, baseType: !42, size: 64, align: 64, offset: 576)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !389, file: !100, line: 16, baseType: !74, size: 32, align: 32, offset: 640)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !389, file: !100, line: 17, baseType: !42, size: 64, align: 64, offset: 704)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !389, file: !100, line: 19, baseType: !115, size: 64, align: 64, offset: 768)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !389, file: !100, line: 19, baseType: !115, size: 64, align: 64, offset: 832)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !389, file: !100, line: 21, baseType: !42, size: 64, align: 64, offset: 896)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !389, file: !100, line: 22, baseType: !42, size: 64, align: 64, offset: 960)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !389, file: !100, line: 23, baseType: !42, size: 64, align: 64, offset: 1024)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !389, file: !100, line: 24, baseType: !42, size: 64, align: 64, offset: 1088)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !389, file: !100, line: 26, baseType: !42, size: 64, align: 64, offset: 1152)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !389, file: !100, line: 27, baseType: !42, size: 64, align: 64, offset: 1216)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !389, file: !100, line: 28, baseType: !42, size: 64, align: 64, offset: 1280)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !389, file: !100, line: 29, baseType: !42, size: 64, align: 64, offset: 1344)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !389, file: !100, line: 30, baseType: !42, size: 64, align: 64, offset: 1408)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !389, file: !100, line: 31, baseType: !42, size: 64, align: 64, offset: 1472)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !389, file: !100, line: 32, baseType: !42, size: 64, align: 64, offset: 1536)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !389, file: !100, line: 33, baseType: !42, size: 64, align: 64, offset: 1600)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !389, file: !100, line: 35, baseType: !133, size: 64, align: 64, offset: 1664)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !389, file: !100, line: 38, baseType: !49, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !389, file: !100, line: 39, baseType: !49, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !389, file: !100, line: 40, baseType: !49, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !389, file: !100, line: 41, baseType: !49, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !389, file: !100, line: 42, baseType: !49, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !389, file: !100, line: 43, baseType: !49, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !389, file: !100, line: 44, baseType: !49, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !389, file: !100, line: 45, baseType: !49, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !389, file: !100, line: 46, baseType: !42, size: 64, align: 64, offset: 1792)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !389, file: !100, line: 47, baseType: !42, size: 64, align: 64, offset: 1856)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !380, file: !91, line: 9, baseType: !54, size: 64, align: 64, offset: 192)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !380, file: !91, line: 10, baseType: !54, size: 64, align: 64, offset: 256)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !380, file: !91, line: 12, baseType: !42, size: 64, align: 64, offset: 320)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !380, file: !91, line: 13, baseType: !42, size: 64, align: 64, offset: 384)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !380, file: !91, line: 15, baseType: !49, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !380, file: !91, line: 16, baseType: !49, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !380, file: !91, line: 17, baseType: !49, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !380, file: !91, line: 18, baseType: !49, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !380, file: !91, line: 19, baseType: !49, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !380, file: !91, line: 21, baseType: !337, size: 64, align: 64, offset: 512)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !380, file: !91, line: 22, baseType: !74, size: 32, align: 32, offset: 576)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !380, file: !91, line: 25, baseType: !342, size: 128, align: 64, offset: 640)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !380, file: !91, line: 26, baseType: !74, size: 32, align: 32, offset: 768)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !380, file: !91, line: 27, baseType: !74, size: 32, align: 32, offset: 800)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !380, file: !91, line: 29, baseType: !348, size: 64, align: 64, offset: 832)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !380, file: !91, line: 30, baseType: !352, size: 64, align: 64, offset: 896)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !380, file: !91, line: 32, baseType: !42, size: 64, align: 64, offset: 960)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !380, file: !91, line: 33, baseType: !42, size: 64, align: 64, offset: 1024)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !380, file: !91, line: 34, baseType: !42, size: 64, align: 64, offset: 1088)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !380, file: !91, line: 35, baseType: !49, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !380, file: !91, line: 36, baseType: !49, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !380, file: !91, line: 37, baseType: !49, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !380, file: !91, line: 38, baseType: !49, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !380, file: !91, line: 40, baseType: !364, size: 128, align: 64, offset: 1216)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !380, file: !91, line: 41, baseType: !54, size: 64, align: 64, offset: 1344)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !380, file: !91, line: 42, baseType: !74, size: 32, align: 32, offset: 1408)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !380, file: !91, line: 44, baseType: !244, size: 64, align: 64, offset: 1472)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !380, file: !91, line: 45, baseType: !244, size: 64, align: 64, offset: 1536)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !380, file: !91, line: 53, baseType: !375, size: 64, align: 64, offset: 1600)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !380, file: !91, line: 55, baseType: !459, size: 64, align: 64, offset: 1664)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64, align: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{!74, !378, !43}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !380, file: !91, line: 57, baseType: !463, size: 64, align: 64, offset: 1728)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64, align: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!74, !378, !82}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !380, file: !91, line: 60, baseType: !467, size: 64, align: 64, offset: 1792)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64, align: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{!82, !378}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !380, file: !91, line: 62, baseType: !471, size: 64, align: 64, offset: 1856)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64, align: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{null, !378, !82, !82, !74}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !380, file: !91, line: 65, baseType: !475, size: 64, align: 64, offset: 1920)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64, align: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!478, !378, !82, !82}
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !380, file: !91, line: 69, baseType: !480, size: 64, align: 64, offset: 1984)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64, align: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!483, !378, !82}
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64, align: 64)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !117, line: 109, baseType: !485)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !486, line: 15, size: 1408, align: 64, elements: !487)
!486 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!487 = !{!488, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !506, !510, !512, !513, !514, !515, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !485, file: !489, line: 3, baseType: !74, size: 32, align: 32)
!489 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!490 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !485, file: !489, line: 4, baseType: !74, size: 32, align: 32, offset: 32)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !485, file: !489, line: 5, baseType: !352, size: 64, align: 64, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !485, file: !489, line: 7, baseType: !59, size: 64, align: 64, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !485, file: !489, line: 8, baseType: !378, size: 64, align: 64, offset: 192)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !485, file: !489, line: 9, baseType: !42, size: 64, align: 64, offset: 256)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !485, file: !489, line: 10, baseType: !42, size: 64, align: 64, offset: 320)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !485, file: !489, line: 11, baseType: !54, size: 64, align: 64, offset: 384)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !485, file: !489, line: 12, baseType: !74, size: 32, align: 32, offset: 448)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !485, file: !489, line: 13, baseType: !42, size: 64, align: 64, offset: 512)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !485, file: !489, line: 15, baseType: !500, size: 64, align: 64, offset: 576)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64, align: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{null, !503}
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64, align: 64)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !117, line: 108, baseType: !505)
!505 = !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !117, line: 108, flags: DIFlagFwdDecl)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !485, file: !489, line: 17, baseType: !507, size: 64, align: 64, offset: 640)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64, align: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{!82, !503}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !485, file: !511, line: 5, baseType: !42, size: 64, align: 64, offset: 704)
!511 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!512 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !485, file: !511, line: 6, baseType: !42, size: 64, align: 64, offset: 768)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !485, file: !511, line: 7, baseType: !54, size: 64, align: 64, offset: 832)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !485, file: !511, line: 9, baseType: !352, size: 64, align: 64, offset: 896)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !485, file: !511, line: 10, baseType: !516, size: 64, align: 64, offset: 960)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64, align: 64)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !117, line: 111, baseType: !518)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !519, line: 13, size: 576, align: 64, elements: !520)
!519 = !DIFile(filename: "../../../src/core/nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!520 = !{!521, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !539, !540}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !518, file: !522, line: 3, baseType: !74, size: 32, align: 32)
!522 = !DIFile(filename: "../../../src/core/nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!523 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !518, file: !522, line: 4, baseType: !74, size: 32, align: 32, offset: 32)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !518, file: !522, line: 6, baseType: !54, size: 64, align: 64, offset: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !518, file: !522, line: 8, baseType: !42, size: 64, align: 64, offset: 128)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !518, file: !522, line: 9, baseType: !42, size: 64, align: 64, offset: 192)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !518, file: !522, line: 10, baseType: !42, size: 64, align: 64, offset: 256)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !518, file: !522, line: 11, baseType: !74, size: 32, align: 32, offset: 320)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !518, file: !522, line: 14, baseType: !49, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !518, file: !522, line: 15, baseType: !49, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !518, file: !522, line: 18, baseType: !49, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !518, file: !522, line: 19, baseType: !49, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !518, file: !522, line: 20, baseType: !49, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !518, file: !522, line: 21, baseType: !49, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !518, file: !522, line: 22, baseType: !536, size: 64, align: 8, offset: 360)
!536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 64, align: 8, elements: !537)
!537 = !{!538}
!538 = !DISubrange(count: 8)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !518, file: !522, line: 26, baseType: !59, size: 64, align: 64, offset: 448)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !518, file: !522, line: 28, baseType: !516, size: 64, align: 64, offset: 512)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !485, file: !511, line: 12, baseType: !49, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !485, file: !511, line: 13, baseType: !42, size: 64, align: 64, offset: 1088)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !485, file: !511, line: 14, baseType: !74, size: 32, align: 32, offset: 1152)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !485, file: !511, line: 15, baseType: !42, size: 64, align: 64, offset: 1216)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !485, file: !511, line: 17, baseType: !49, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !485, file: !511, line: 18, baseType: !49, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !485, file: !511, line: 19, baseType: !49, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !485, file: !511, line: 20, baseType: !49, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !485, file: !511, line: 22, baseType: !49, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !485, file: !511, line: 23, baseType: !49, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !485, file: !511, line: 24, baseType: !49, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !485, file: !511, line: 25, baseType: !49, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !485, file: !511, line: 26, baseType: !49, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !485, file: !511, line: 31, baseType: !555, size: 64, align: 64, offset: 1344)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64, align: 64)
!556 = !DISubroutineType(types: !557)
!557 = !{!42, !483}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !380, file: !91, line: 70, baseType: !559, size: 64, align: 64, offset: 2048)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64, align: 64)
!560 = !DISubroutineType(types: !561)
!561 = !{!562, !378, !82}
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64, align: 64)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !117, line: 110, baseType: !564)
!564 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !117, line: 110, flags: DIFlagFwdDecl)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !380, file: !91, line: 71, baseType: !566, size: 64, align: 64, offset: 2112)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64, align: 64)
!567 = !DISubroutineType(types: !568)
!568 = !{!74, !82, !82}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !380, file: !91, line: 73, baseType: !566, size: 64, align: 64, offset: 2176)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !87, file: !91, line: 55, baseType: !459, size: 64, align: 64, offset: 1664)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !87, file: !91, line: 57, baseType: !463, size: 64, align: 64, offset: 1728)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !87, file: !91, line: 60, baseType: !467, size: 64, align: 64, offset: 1792)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !87, file: !91, line: 62, baseType: !471, size: 64, align: 64, offset: 1856)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !87, file: !91, line: 65, baseType: !475, size: 64, align: 64, offset: 1920)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !87, file: !91, line: 69, baseType: !480, size: 64, align: 64, offset: 1984)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !87, file: !91, line: 70, baseType: !559, size: 64, align: 64, offset: 2048)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !87, file: !91, line: 71, baseType: !566, size: 64, align: 64, offset: 2112)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !87, file: !91, line: 73, baseType: !566, size: 64, align: 64, offset: 2176)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "redirects", scope: !87, file: !88, line: 46, baseType: !244, size: 64, align: 64, offset: 2240)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_queue", scope: !87, file: !88, line: 47, baseType: !244, size: 64, align: 64, offset: 2304)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_next", scope: !87, file: !88, line: 48, baseType: !582, size: 64, align: 64, offset: 2368)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64, align: 64)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "REDIRECT_REC", file: !86, line: 8, baseType: !584)
!584 = !DICompositeType(tag: DW_TAG_structure_type, name: "_REDIRECT_REC", file: !86, line: 8, flags: DIFlagFwdDecl)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_active", scope: !87, file: !88, line: 49, baseType: !244, size: 64, align: 64, offset: 2432)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "last_nick", scope: !87, file: !88, line: 51, baseType: !42, size: 64, align: 64, offset: 2496)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !87, file: !88, line: 53, baseType: !42, size: 64, align: 64, offset: 2560)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !87, file: !88, line: 54, baseType: !42, size: 64, align: 64, offset: 2624)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "wanted_usermode", scope: !87, file: !88, line: 55, baseType: !42, size: 64, align: 64, offset: 2688)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "userhost", scope: !87, file: !88, line: 56, baseType: !42, size: 64, align: 64, offset: 2752)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "channels_formed", scope: !87, file: !88, line: 57, baseType: !74, size: 32, align: 32, offset: 2816)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "whois_found", scope: !87, file: !88, line: 59, baseType: !49, size: 1, align: 32, offset: 2848, flags: DIFlagBitField, extraData: i64 2848)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "whowas_found", scope: !87, file: !88, line: 60, baseType: !49, size: 1, align: 32, offset: 2849, flags: DIFlagBitField, extraData: i64 2848)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "emode_known", scope: !87, file: !88, line: 62, baseType: !49, size: 1, align: 32, offset: 2850, flags: DIFlagBitField, extraData: i64 2848)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_mode", scope: !87, file: !88, line: 63, baseType: !49, size: 1, align: 32, offset: 2851, flags: DIFlagBitField, extraData: i64 2848)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_who", scope: !87, file: !88, line: 64, baseType: !49, size: 1, align: 32, offset: 2852, flags: DIFlagBitField, extraData: i64 2848)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "one_endofwho", scope: !87, file: !88, line: 65, baseType: !49, size: 1, align: 32, offset: 2853, flags: DIFlagBitField, extraData: i64 2848)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "disable_lag", scope: !87, file: !88, line: 66, baseType: !49, size: 1, align: 32, offset: 2854, flags: DIFlagBitField, extraData: i64 2848)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "nick_collision", scope: !87, file: !88, line: 67, baseType: !49, size: 1, align: 32, offset: 2855, flags: DIFlagBitField, extraData: i64 2848)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "motd_got", scope: !87, file: !88, line: 68, baseType: !49, size: 1, align: 32, offset: 2856, flags: DIFlagBitField, extraData: i64 2848)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "isupport_sent", scope: !87, file: !88, line: 69, baseType: !49, size: 1, align: 32, offset: 2857, flags: DIFlagBitField, extraData: i64 2848)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "cap_complete", scope: !87, file: !88, line: 70, baseType: !49, size: 1, align: 32, offset: 2858, flags: DIFlagBitField, extraData: i64 2848)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "cap_in_multiline", scope: !87, file: !88, line: 71, baseType: !49, size: 1, align: 32, offset: 2859, flags: DIFlagBitField, extraData: i64 2848)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_success", scope: !87, file: !88, line: 72, baseType: !49, size: 1, align: 32, offset: 2860, flags: DIFlagBitField, extraData: i64 2848)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks_in_cmd", scope: !87, file: !88, line: 74, baseType: !74, size: 32, align: 32, offset: 2880)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes_in_cmd", scope: !87, file: !88, line: 75, baseType: !74, size: 32, align: 32, offset: 2912)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois_in_cmd", scope: !87, file: !88, line: 76, baseType: !74, size: 32, align: 32, offset: 2944)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs_in_cmd", scope: !87, file: !88, line: 77, baseType: !74, size: 32, align: 32, offset: 2976)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "cap_supported", scope: !87, file: !88, line: 79, baseType: !352, size: 64, align: 64, offset: 3008)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "cap_active", scope: !87, file: !88, line: 80, baseType: !244, size: 64, align: 64, offset: 3072)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "cap_queue", scope: !87, file: !88, line: 81, baseType: !244, size: 64, align: 64, offset: 3136)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_buffer", scope: !87, file: !88, line: 83, baseType: !283, size: 64, align: 64, offset: 3200)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_timeout", scope: !87, file: !88, line: 84, baseType: !235, size: 32, align: 32, offset: 3264)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcount", scope: !87, file: !88, line: 87, baseType: !74, size: 32, align: 32, offset: 3296)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "cmdqueue", scope: !87, file: !88, line: 91, baseType: !244, size: 64, align: 64, offset: 3328)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "wait_cmd", scope: !87, file: !88, line: 92, baseType: !364, size: 128, align: 64, offset: 3392)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd", scope: !87, file: !88, line: 93, baseType: !364, size: 128, align: 64, offset: 3520)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !87, file: !88, line: 95, baseType: !74, size: 32, align: 32, offset: 3648)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !87, file: !88, line: 96, baseType: !74, size: 32, align: 32, offset: 3680)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !87, file: !88, line: 97, baseType: !74, size: 32, align: 32, offset: 3712)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "idles", scope: !87, file: !88, line: 100, baseType: !244, size: 64, align: 64, offset: 3776)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "ctcpqueue", scope: !87, file: !88, line: 103, baseType: !244, size: 64, align: 64, offset: 3840)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "knockoutlist", scope: !87, file: !88, line: 106, baseType: !244, size: 64, align: 64, offset: 3904)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "splits", scope: !87, file: !88, line: 108, baseType: !352, size: 64, align: 64, offset: 3968)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "split_servers", scope: !87, file: !88, line: 109, baseType: !244, size: 64, align: 64, offset: 4032)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "rejoin_channels", scope: !87, file: !88, line: 111, baseType: !244, size: 64, align: 64, offset: 4096)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "chanqueries", scope: !87, file: !88, line: 114, baseType: !59, size: 64, align: 64, offset: 4160)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "isupport", scope: !87, file: !88, line: 116, baseType: !352, size: 64, align: 64, offset: 4224)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !87, file: !88, line: 117, baseType: !630, size: 32768, align: 64, offset: 4288)
!630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !631, size: 32768, align: 64, elements: !680)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "modes_type", file: !632, line: 10, size: 128, align: 64, elements: !633)
!632 = !DIFile(filename: "../../../src/irc/core/modes.h", directory: "/home/lichi/Desktop/irssi/task1")
!633 = !{!634, !679}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !631, file: !632, line: 11, baseType: !635, size: 64, align: 64)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64, align: 64)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_func_t", file: !632, line: 7, baseType: !637)
!637 = !DISubroutineType(types: !638)
!638 = !{null, !639, !82, !43, !43, !42, !283}
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64, align: 64)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_CHANNEL_REC", file: !86, line: 7, baseType: !641)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_CHANNEL_REC", file: !642, line: 15, size: 1600, align: 64, elements: !643)
!642 = !DIFile(filename: "../../../src/irc/core/irc-channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!643 = !{!644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !641, file: !489, line: 3, baseType: !74, size: 32, align: 32)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !641, file: !489, line: 4, baseType: !74, size: 32, align: 32, offset: 32)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !641, file: !489, line: 5, baseType: !352, size: 64, align: 64, offset: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !641, file: !489, line: 7, baseType: !59, size: 64, align: 64, offset: 128)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !641, file: !489, line: 8, baseType: !84, size: 64, align: 64, offset: 192)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !641, file: !489, line: 9, baseType: !42, size: 64, align: 64, offset: 256)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !641, file: !489, line: 10, baseType: !42, size: 64, align: 64, offset: 320)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !641, file: !489, line: 11, baseType: !54, size: 64, align: 64, offset: 384)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !641, file: !489, line: 12, baseType: !74, size: 32, align: 32, offset: 448)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !641, file: !489, line: 13, baseType: !42, size: 64, align: 64, offset: 512)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !641, file: !489, line: 15, baseType: !500, size: 64, align: 64, offset: 576)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !641, file: !489, line: 17, baseType: !507, size: 64, align: 64, offset: 640)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !641, file: !511, line: 5, baseType: !42, size: 64, align: 64, offset: 704)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !641, file: !511, line: 6, baseType: !42, size: 64, align: 64, offset: 768)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !641, file: !511, line: 7, baseType: !54, size: 64, align: 64, offset: 832)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !641, file: !511, line: 9, baseType: !352, size: 64, align: 64, offset: 896)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !641, file: !511, line: 10, baseType: !516, size: 64, align: 64, offset: 960)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !641, file: !511, line: 12, baseType: !49, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !641, file: !511, line: 13, baseType: !42, size: 64, align: 64, offset: 1088)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !641, file: !511, line: 14, baseType: !74, size: 32, align: 32, offset: 1152)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !641, file: !511, line: 15, baseType: !42, size: 64, align: 64, offset: 1216)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !641, file: !511, line: 17, baseType: !49, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !641, file: !511, line: 18, baseType: !49, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !641, file: !511, line: 19, baseType: !49, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !641, file: !511, line: 20, baseType: !49, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !641, file: !511, line: 22, baseType: !49, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !641, file: !511, line: 23, baseType: !49, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !641, file: !511, line: 24, baseType: !49, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !641, file: !511, line: 25, baseType: !49, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !641, file: !511, line: 26, baseType: !49, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !641, file: !511, line: 31, baseType: !555, size: 64, align: 64, offset: 1344)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "banlist", scope: !641, file: !642, line: 18, baseType: !244, size: 64, align: 64, offset: 1408)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "massjoin_start", scope: !641, file: !642, line: 20, baseType: !54, size: 64, align: 64, offset: 1472)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "massjoins", scope: !641, file: !642, line: 21, baseType: !74, size: 32, align: 32, offset: 1536)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "last_massjoins", scope: !641, file: !642, line: 22, baseType: !74, size: 32, align: 32, offset: 1568)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !631, file: !632, line: 12, baseType: !43, size: 8, align: 8, offset: 64)
!680 = !{!681}
!681 = !DISubrange(count: 256)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !87, file: !88, line: 118, baseType: !683, size: 2048, align: 8, offset: 37056)
!683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 2048, align: 8, elements: !680)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "nick_comp_func", scope: !87, file: !88, line: 120, baseType: !566, size: 64, align: 64, offset: 39104)
!685 = !{!686, !688}
!686 = distinct !DIGlobalVariable(name: "notify_tag", scope: !0, file: !687, line: 35, type: !74, isLocal: true, isDefinition: true, variable: i32* @notify_tag)
!687 = !DIFile(filename: "notify-ison.c", directory: "/home/lichi/Desktop/irssi/task1")
!688 = distinct !DIGlobalVariable(name: "notify_whois_time", scope: !0, file: !687, line: 36, type: !74, isLocal: true, isDefinition: true, variable: i32* @notify_whois_time)
!689 = !{i32 2, !"Dwarf Version", i32 4}
!690 = !{i32 2, !"Debug Info Version", i32 3}
!691 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!692 = distinct !DISubprogram(name: "notify_nick_create", scope: !687, file: !687, line: 38, type: !693, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!693 = !DISubroutineType(types: !694)
!694 = !{!36, !84, !82}
!695 = !{}
!696 = !DILocalVariable(name: "server", arg: 1, scope: !692, file: !687, line: 38, type: !84)
!697 = !DIExpression()
!698 = !DILocation(line: 38, column: 53, scope: !692)
!699 = !DILocalVariable(name: "nick", arg: 2, scope: !692, file: !687, line: 38, type: !82)
!700 = !DILocation(line: 38, column: 73, scope: !692)
!701 = !DILocalVariable(name: "mserver", scope: !692, file: !687, line: 40, type: !702)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64, align: 64)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "MODULE_SERVER_REC", file: !38, line: 24, baseType: !704)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 19, size: 192, align: 64, elements: !705)
!705 = !{!706, !707, !708}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "ison_count", scope: !704, file: !38, line: 20, baseType: !74, size: 32, align: 32)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "notify_users", scope: !704, file: !38, line: 22, baseType: !244, size: 64, align: 64, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "ison_tempusers", scope: !704, file: !38, line: 23, baseType: !244, size: 64, align: 64, offset: 128)
!709 = !DILocation(line: 40, column: 21, scope: !692)
!710 = !DILocalVariable(name: "rec", scope: !692, file: !687, line: 41, type: !36)
!711 = !DILocation(line: 41, column: 19, scope: !692)
!712 = !DILocation(line: 43, column: 33, scope: !692)
!713 = !DILocation(line: 43, column: 42, scope: !692)
!714 = !DILocation(line: 43, column: 12, scope: !692)
!715 = !DILocation(line: 43, column: 10, scope: !692)
!716 = !DILocation(line: 45, column: 29, scope: !692)
!717 = !DILocation(line: 45, column: 9, scope: !692)
!718 = !DILocation(line: 45, column: 6, scope: !692)
!719 = !DILocation(line: 46, column: 23, scope: !692)
!720 = !DILocation(line: 46, column: 14, scope: !692)
!721 = !DILocation(line: 46, column: 2, scope: !692)
!722 = !DILocation(line: 46, column: 7, scope: !692)
!723 = !DILocation(line: 46, column: 12, scope: !692)
!724 = !DILocation(line: 48, column: 41, scope: !692)
!725 = !DILocation(line: 48, column: 50, scope: !692)
!726 = !DILocation(line: 48, column: 64, scope: !692)
!727 = !DILocation(line: 48, column: 26, scope: !692)
!728 = !DILocation(line: 48, column: 2, scope: !692)
!729 = !DILocation(line: 48, column: 11, scope: !692)
!730 = !DILocation(line: 48, column: 24, scope: !692)
!731 = !DILocation(line: 49, column: 9, scope: !692)
!732 = !DILocation(line: 49, column: 2, scope: !692)
!733 = distinct !DISubprogram(name: "notify_nick_destroy", scope: !687, file: !687, line: 52, type: !734, isLocal: false, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!734 = !DISubroutineType(types: !735)
!735 = !{null, !36}
!736 = !DILocalVariable(name: "rec", arg: 1, scope: !733, file: !687, line: 52, type: !36)
!737 = !DILocation(line: 52, column: 43, scope: !733)
!738 = !DILocation(line: 54, column: 9, scope: !733)
!739 = !DILocation(line: 54, column: 14, scope: !733)
!740 = !DILocation(line: 54, column: 2, scope: !733)
!741 = !DILocation(line: 55, column: 9, scope: !733)
!742 = !DILocation(line: 55, column: 14, scope: !733)
!743 = !DILocation(line: 55, column: 2, scope: !733)
!744 = !DILocation(line: 56, column: 9, scope: !733)
!745 = !DILocation(line: 56, column: 14, scope: !733)
!746 = !DILocation(line: 56, column: 2, scope: !733)
!747 = !DILocation(line: 57, column: 9, scope: !733)
!748 = !DILocation(line: 57, column: 14, scope: !733)
!749 = !DILocation(line: 57, column: 2, scope: !733)
!750 = !DILocation(line: 58, column: 9, scope: !733)
!751 = !DILocation(line: 58, column: 14, scope: !733)
!752 = !DILocation(line: 58, column: 2, scope: !733)
!753 = !DILocation(line: 59, column: 9, scope: !733)
!754 = !DILocation(line: 59, column: 2, scope: !733)
!755 = !DILocation(line: 60, column: 1, scope: !733)
!756 = distinct !DISubprogram(name: "notify_nick_find", scope: !687, file: !687, line: 62, type: !693, isLocal: false, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!757 = !DILocalVariable(name: "server", arg: 1, scope: !756, file: !687, line: 62, type: !84)
!758 = !DILocation(line: 62, column: 51, scope: !756)
!759 = !DILocalVariable(name: "nick", arg: 2, scope: !756, file: !687, line: 62, type: !82)
!760 = !DILocation(line: 62, column: 71, scope: !756)
!761 = !DILocalVariable(name: "mserver", scope: !756, file: !687, line: 64, type: !702)
!762 = !DILocation(line: 64, column: 21, scope: !756)
!763 = !DILocalVariable(name: "rec", scope: !756, file: !687, line: 65, type: !36)
!764 = !DILocation(line: 65, column: 19, scope: !756)
!765 = !DILocalVariable(name: "tmp", scope: !756, file: !687, line: 66, type: !244)
!766 = !DILocation(line: 66, column: 10, scope: !756)
!767 = !DILocation(line: 68, column: 33, scope: !756)
!768 = !DILocation(line: 68, column: 42, scope: !756)
!769 = !DILocation(line: 68, column: 12, scope: !756)
!770 = !DILocation(line: 68, column: 10, scope: !756)
!771 = !DILocation(line: 69, column: 13, scope: !772)
!772 = distinct !DILexicalBlock(scope: !756, file: !687, line: 69, column: 2)
!773 = !DILocation(line: 69, column: 22, scope: !772)
!774 = !DILocation(line: 69, column: 11, scope: !772)
!775 = !DILocation(line: 69, column: 7, scope: !772)
!776 = !DILocation(line: 69, column: 36, scope: !777)
!777 = !DILexicalBlockFile(scope: !778, file: !687, discriminator: 1)
!778 = distinct !DILexicalBlock(scope: !772, file: !687, line: 69, column: 2)
!779 = !DILocation(line: 69, column: 40, scope: !777)
!780 = !DILocation(line: 69, column: 2, scope: !777)
!781 = !DILocation(line: 70, column: 9, scope: !782)
!782 = distinct !DILexicalBlock(scope: !778, file: !687, line: 69, column: 65)
!783 = !DILocation(line: 70, column: 14, scope: !782)
!784 = !DILocation(line: 70, column: 7, scope: !782)
!785 = !DILocation(line: 72, column: 26, scope: !786)
!786 = distinct !DILexicalBlock(scope: !782, file: !687, line: 72, column: 7)
!787 = !DILocation(line: 72, column: 31, scope: !786)
!788 = !DILocation(line: 72, column: 37, scope: !786)
!789 = !DILocation(line: 72, column: 7, scope: !786)
!790 = !DILocation(line: 72, column: 43, scope: !786)
!791 = !DILocation(line: 72, column: 7, scope: !782)
!792 = !DILocation(line: 73, column: 11, scope: !786)
!793 = !DILocation(line: 73, column: 4, scope: !786)
!794 = !DILocation(line: 74, column: 2, scope: !782)
!795 = !DILocation(line: 69, column: 54, scope: !796)
!796 = !DILexicalBlockFile(scope: !778, file: !687, discriminator: 2)
!797 = !DILocation(line: 69, column: 59, scope: !796)
!798 = !DILocation(line: 69, column: 52, scope: !796)
!799 = !DILocation(line: 69, column: 2, scope: !796)
!800 = distinct !{!800, !801}
!801 = !DILocation(line: 69, column: 2, scope: !756)
!802 = !DILocation(line: 76, column: 2, scope: !756)
!803 = !DILocation(line: 77, column: 1, scope: !756)
!804 = distinct !DISubprogram(name: "notifylist_ison_init", scope: !687, file: !687, line: 328, type: !232, isLocal: false, isDefinition: true, scopeLine: 329, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!805 = !DILocation(line: 330, column: 2, scope: !804)
!806 = !DILocation(line: 331, column: 2, scope: !804)
!807 = !DILocation(line: 333, column: 13, scope: !804)
!808 = !DILocation(line: 334, column: 2, scope: !804)
!809 = !DILocation(line: 336, column: 2, scope: !804)
!810 = !DILocation(line: 337, column: 2, scope: !804)
!811 = !DILocation(line: 338, column: 1, scope: !804)
!812 = distinct !DISubprogram(name: "read_settings", scope: !687, file: !687, line: 319, type: !232, isLocal: true, isDefinition: true, scopeLine: 320, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!813 = !DILocation(line: 321, column: 6, scope: !814)
!814 = distinct !DILexicalBlock(scope: !812, file: !687, line: 321, column: 6)
!815 = !DILocation(line: 321, column: 17, scope: !814)
!816 = !DILocation(line: 321, column: 6, scope: !812)
!817 = !DILocation(line: 321, column: 40, scope: !818)
!818 = !DILexicalBlockFile(scope: !814, file: !687, discriminator: 1)
!819 = !DILocation(line: 321, column: 24, scope: !818)
!820 = !DILocation(line: 322, column: 29, scope: !812)
!821 = !DILocation(line: 322, column: 15, scope: !822)
!822 = !DILexicalBlockFile(scope: !812, file: !687, discriminator: 1)
!823 = !DILocation(line: 322, column: 13, scope: !812)
!824 = !DILocation(line: 325, column: 22, scope: !812)
!825 = !DILocation(line: 325, column: 60, scope: !812)
!826 = !DILocation(line: 325, column: 20, scope: !812)
!827 = !DILocation(line: 326, column: 1, scope: !812)
!828 = distinct !DISubprogram(name: "event_ison", scope: !687, file: !687, line: 289, type: !829, isLocal: true, isDefinition: true, scopeLine: 290, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!829 = !DISubroutineType(types: !830)
!830 = !{null, !84, !82}
!831 = !DILocalVariable(name: "server", arg: 1, scope: !828, file: !687, line: 289, type: !84)
!832 = !DILocation(line: 289, column: 40, scope: !828)
!833 = !DILocalVariable(name: "data", arg: 2, scope: !828, file: !687, line: 289, type: !82)
!834 = !DILocation(line: 289, column: 60, scope: !828)
!835 = !DILocalVariable(name: "mserver", scope: !828, file: !687, line: 291, type: !702)
!836 = !DILocation(line: 291, column: 21, scope: !828)
!837 = !DILocalVariable(name: "params", scope: !828, file: !687, line: 292, type: !42)
!838 = !DILocation(line: 292, column: 8, scope: !828)
!839 = !DILocalVariable(name: "online", scope: !828, file: !687, line: 292, type: !42)
!840 = !DILocation(line: 292, column: 17, scope: !828)
!841 = !DILocation(line: 294, column: 2, scope: !828)
!842 = distinct !{!842, !841}
!843 = !DILocation(line: 294, column: 10, scope: !844)
!844 = !DILexicalBlockFile(scope: !845, file: !687, discriminator: 1)
!845 = distinct !DILexicalBlock(scope: !846, file: !687, line: 294, column: 10)
!846 = distinct !DILexicalBlock(scope: !828, file: !687, line: 294, column: 4)
!847 = !DILocation(line: 294, column: 15, scope: !844)
!848 = !DILocation(line: 294, column: 5, scope: !849)
!849 = !DILexicalBlockFile(scope: !850, file: !687, discriminator: 2)
!850 = distinct !DILexicalBlock(scope: !845, file: !687, line: 294, column: 3)
!851 = !DILocation(line: 294, column: 14, scope: !852)
!852 = !DILexicalBlockFile(scope: !853, file: !687, discriminator: 3)
!853 = distinct !DILexicalBlock(scope: !845, file: !687, line: 294, column: 12)
!854 = !DILocation(line: 294, column: 99, scope: !852)
!855 = !DILocation(line: 294, column: 110, scope: !856)
!856 = !DILexicalBlockFile(scope: !846, file: !687, discriminator: 4)
!857 = !DILocation(line: 295, column: 2, scope: !828)
!858 = distinct !{!858, !857}
!859 = !DILocation(line: 295, column: 10, scope: !860)
!860 = !DILexicalBlockFile(scope: !861, file: !687, discriminator: 1)
!861 = distinct !DILexicalBlock(scope: !862, file: !687, line: 295, column: 10)
!862 = distinct !DILexicalBlock(scope: !828, file: !687, line: 295, column: 4)
!863 = !DILocation(line: 295, column: 17, scope: !860)
!864 = !DILocation(line: 295, column: 5, scope: !865)
!865 = !DILexicalBlockFile(scope: !866, file: !687, discriminator: 2)
!866 = distinct !DILexicalBlock(scope: !861, file: !687, line: 295, column: 3)
!867 = !DILocation(line: 295, column: 14, scope: !868)
!868 = !DILexicalBlockFile(scope: !869, file: !687, discriminator: 3)
!869 = distinct !DILexicalBlock(scope: !861, file: !687, line: 295, column: 12)
!870 = !DILocation(line: 295, column: 101, scope: !868)
!871 = !DILocation(line: 295, column: 112, scope: !872)
!872 = !DILexicalBlockFile(scope: !862, file: !687, discriminator: 4)
!873 = !DILocation(line: 297, column: 28, scope: !828)
!874 = !DILocation(line: 297, column: 11, scope: !828)
!875 = !DILocation(line: 297, column: 9, scope: !828)
!876 = !DILocation(line: 299, column: 33, scope: !828)
!877 = !DILocation(line: 299, column: 42, scope: !828)
!878 = !DILocation(line: 299, column: 12, scope: !828)
!879 = !DILocation(line: 299, column: 10, scope: !828)
!880 = !DILocation(line: 300, column: 18, scope: !828)
!881 = !DILocation(line: 300, column: 27, scope: !828)
!882 = !DILocation(line: 300, column: 2, scope: !828)
!883 = !DILocation(line: 302, column: 8, scope: !884)
!884 = distinct !DILexicalBlock(scope: !828, file: !687, line: 302, column: 6)
!885 = !DILocation(line: 302, column: 17, scope: !884)
!886 = !DILocation(line: 302, column: 6, scope: !884)
!887 = !DILocation(line: 302, column: 28, scope: !884)
!888 = !DILocation(line: 302, column: 6, scope: !828)
!889 = !DILocation(line: 304, column: 10, scope: !890)
!890 = distinct !DILexicalBlock(scope: !884, file: !687, line: 302, column: 33)
!891 = !DILocation(line: 304, column: 3, scope: !890)
!892 = !DILocation(line: 305, column: 17, scope: !890)
!893 = !DILocation(line: 308, column: 26, scope: !828)
!894 = !DILocation(line: 308, column: 9, scope: !828)
!895 = !DILocation(line: 309, column: 26, scope: !828)
!896 = !DILocation(line: 309, column: 9, scope: !828)
!897 = !DILocation(line: 312, column: 18, scope: !828)
!898 = !DILocation(line: 312, column: 27, scope: !828)
!899 = !DILocation(line: 312, column: 2, scope: !828)
!900 = !DILocation(line: 313, column: 15, scope: !828)
!901 = !DILocation(line: 313, column: 24, scope: !828)
!902 = !DILocation(line: 313, column: 2, scope: !828)
!903 = !DILocation(line: 314, column: 2, scope: !828)
!904 = !DILocation(line: 314, column: 11, scope: !828)
!905 = !DILocation(line: 314, column: 26, scope: !828)
!906 = !DILocation(line: 316, column: 9, scope: !828)
!907 = !DILocation(line: 316, column: 2, scope: !828)
!908 = !DILocation(line: 317, column: 1, scope: !828)
!909 = !DILocation(line: 317, column: 1, scope: !910)
!910 = !DILexicalBlockFile(scope: !828, file: !687, discriminator: 1)
!911 = distinct !DISubprogram(name: "notifylist_ison_deinit", scope: !687, file: !687, line: 340, type: !232, isLocal: false, isDefinition: true, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!912 = !DILocation(line: 342, column: 18, scope: !911)
!913 = !DILocation(line: 342, column: 2, scope: !911)
!914 = !DILocation(line: 344, column: 2, scope: !911)
!915 = !DILocation(line: 345, column: 2, scope: !911)
!916 = !DILocation(line: 346, column: 1, scope: !911)
!917 = distinct !DISubprogram(name: "notifylist_timeout_func", scope: !687, file: !687, line: 146, type: !918, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!918 = !DISubroutineType(types: !919)
!919 = !{!74}
!920 = !DILocation(line: 148, column: 18, scope: !917)
!921 = !DILocation(line: 148, column: 2, scope: !917)
!922 = !DILocation(line: 149, column: 2, scope: !917)
!923 = distinct !DISubprogram(name: "notifylist_timeout_server", scope: !687, file: !687, line: 102, type: !924, isLocal: true, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!924 = !DISubroutineType(types: !925)
!925 = !{null, !84}
!926 = !DILocalVariable(name: "server", arg: 1, scope: !923, file: !687, line: 102, type: !84)
!927 = !DILocation(line: 102, column: 55, scope: !923)
!928 = !DILocalVariable(name: "mserver", scope: !923, file: !687, line: 104, type: !702)
!929 = !DILocation(line: 104, column: 21, scope: !923)
!930 = !DILocalVariable(name: "tmp", scope: !923, file: !687, line: 105, type: !244)
!931 = !DILocation(line: 105, column: 10, scope: !923)
!932 = !DILocalVariable(name: "cmd", scope: !923, file: !687, line: 106, type: !283)
!933 = !DILocation(line: 106, column: 11, scope: !923)
!934 = !DILocalVariable(name: "nick", scope: !923, file: !687, line: 107, type: !42)
!935 = !DILocation(line: 107, column: 8, scope: !923)
!936 = !DILocalVariable(name: "ptr", scope: !923, file: !687, line: 107, type: !42)
!937 = !DILocation(line: 107, column: 15, scope: !923)
!938 = !DILocalVariable(name: "len", scope: !923, file: !687, line: 108, type: !74)
!939 = !DILocation(line: 108, column: 6, scope: !923)
!940 = !DILocation(line: 110, column: 2, scope: !923)
!941 = distinct !{!941, !940}
!942 = !DILocation(line: 110, column: 10, scope: !943)
!943 = !DILexicalBlockFile(scope: !944, file: !687, discriminator: 1)
!944 = distinct !DILexicalBlock(scope: !945, file: !687, line: 110, column: 10)
!945 = distinct !DILexicalBlock(scope: !923, file: !687, line: 110, column: 4)
!946 = !DILocation(line: 110, column: 17, scope: !943)
!947 = !DILocation(line: 110, column: 5, scope: !948)
!948 = !DILexicalBlockFile(scope: !949, file: !687, discriminator: 2)
!949 = distinct !DILexicalBlock(scope: !944, file: !687, line: 110, column: 3)
!950 = !DILocation(line: 110, column: 14, scope: !951)
!951 = !DILexicalBlockFile(scope: !952, file: !687, discriminator: 3)
!952 = distinct !DILexicalBlock(scope: !944, file: !687, line: 110, column: 12)
!953 = !DILocation(line: 110, column: 101, scope: !951)
!954 = !DILocation(line: 110, column: 112, scope: !955)
!955 = !DILexicalBlockFile(scope: !945, file: !687, discriminator: 4)
!956 = !DILocation(line: 112, column: 87, scope: !957)
!957 = distinct !DILexicalBlock(scope: !923, file: !687, line: 112, column: 6)
!958 = !DILocation(line: 112, column: 69, scope: !957)
!959 = !DILocation(line: 112, column: 54, scope: !957)
!960 = !DILocation(line: 112, column: 53, scope: !957)
!961 = !DILocation(line: 112, column: 28, scope: !962)
!962 = !DILexicalBlockFile(scope: !957, file: !687, discriminator: 3)
!963 = !DILocation(line: 112, column: 9, scope: !957)
!964 = !DILocation(line: 112, column: 6, scope: !923)
!965 = !DILocation(line: 112, column: 8, scope: !966)
!966 = !DILexicalBlockFile(scope: !957, file: !687, discriminator: 1)
!967 = !DILocation(line: 112, column: 6, scope: !968)
!968 = !DILexicalBlockFile(scope: !923, file: !687, discriminator: 2)
!969 = !DILocation(line: 113, column: 3, scope: !957)
!970 = !DILocation(line: 115, column: 33, scope: !923)
!971 = !DILocation(line: 115, column: 42, scope: !923)
!972 = !DILocation(line: 115, column: 12, scope: !923)
!973 = !DILocation(line: 115, column: 10, scope: !923)
!974 = !DILocation(line: 116, column: 6, scope: !975)
!975 = distinct !DILexicalBlock(scope: !923, file: !687, line: 116, column: 6)
!976 = !DILocation(line: 116, column: 15, scope: !975)
!977 = !DILocation(line: 116, column: 26, scope: !975)
!978 = !DILocation(line: 116, column: 6, scope: !923)
!979 = !DILocation(line: 118, column: 3, scope: !980)
!980 = distinct !DILexicalBlock(scope: !975, file: !687, line: 116, column: 31)
!981 = !DILocation(line: 121, column: 8, scope: !923)
!982 = !DILocation(line: 121, column: 6, scope: !923)
!983 = !DILocation(line: 122, column: 13, scope: !984)
!984 = distinct !DILexicalBlock(scope: !923, file: !687, line: 122, column: 2)
!985 = !DILocation(line: 122, column: 11, scope: !984)
!986 = !DILocation(line: 122, column: 7, scope: !984)
!987 = !DILocation(line: 122, column: 23, scope: !988)
!988 = !DILexicalBlockFile(scope: !989, file: !687, discriminator: 1)
!989 = distinct !DILexicalBlock(scope: !984, file: !687, line: 122, column: 2)
!990 = !DILocation(line: 122, column: 27, scope: !988)
!991 = !DILocation(line: 122, column: 2, scope: !988)
!992 = !DILocalVariable(name: "rec", scope: !993, file: !687, line: 123, type: !994)
!993 = distinct !DILexicalBlock(scope: !989, file: !687, line: 122, column: 52)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64, align: 64)
!995 = !DIDerivedType(tag: DW_TAG_typedef, name: "NOTIFYLIST_REC", file: !996, line: 10, baseType: !997)
!996 = !DIFile(filename: "notifylist.h", directory: "/home/lichi/Desktop/irssi/task1")
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !996, line: 4, size: 192, align: 64, elements: !998)
!998 = !{!999, !1000, !1001}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !997, file: !996, line: 5, baseType: !42, size: 64, align: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "ircnets", scope: !997, file: !996, line: 6, baseType: !478, size: 64, align: 64, offset: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "away_check", scope: !997, file: !996, line: 9, baseType: !49, size: 1, align: 32, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1002 = !DILocation(line: 123, column: 19, scope: !993)
!1003 = !DILocation(line: 123, column: 25, scope: !993)
!1004 = !DILocation(line: 123, column: 30, scope: !993)
!1005 = !DILocation(line: 125, column: 33, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !993, file: !687, line: 125, column: 7)
!1007 = !DILocation(line: 125, column: 38, scope: !1006)
!1008 = !DILocation(line: 125, column: 46, scope: !1006)
!1009 = !DILocation(line: 125, column: 55, scope: !1006)
!1010 = !DILocation(line: 125, column: 8, scope: !1006)
!1011 = !DILocation(line: 125, column: 7, scope: !993)
!1012 = !DILocation(line: 126, column: 25, scope: !1006)
!1013 = !DILocation(line: 128, column: 19, scope: !993)
!1014 = !DILocation(line: 128, column: 24, scope: !993)
!1015 = !DILocation(line: 128, column: 10, scope: !993)
!1016 = !DILocation(line: 128, column: 8, scope: !993)
!1017 = !DILocation(line: 129, column: 16, scope: !993)
!1018 = !DILocation(line: 129, column: 9, scope: !993)
!1019 = !DILocation(line: 129, column: 7, scope: !993)
!1020 = !DILocation(line: 130, column: 7, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !993, file: !687, line: 130, column: 7)
!1022 = !DILocation(line: 130, column: 11, scope: !1021)
!1023 = !DILocation(line: 130, column: 7, scope: !993)
!1024 = !DILocation(line: 130, column: 20, scope: !1025)
!1025 = !DILexicalBlockFile(scope: !1021, file: !687, discriminator: 1)
!1026 = !DILocation(line: 130, column: 24, scope: !1025)
!1027 = !DILocation(line: 130, column: 19, scope: !1025)
!1028 = !DILocation(line: 132, column: 16, scope: !993)
!1029 = !DILocation(line: 132, column: 9, scope: !993)
!1030 = !DILocation(line: 132, column: 7, scope: !993)
!1031 = !DILocation(line: 134, column: 7, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !993, file: !687, line: 134, column: 7)
!1033 = !DILocation(line: 134, column: 12, scope: !1032)
!1034 = !DILocation(line: 134, column: 16, scope: !1032)
!1035 = !DILocation(line: 134, column: 15, scope: !1032)
!1036 = !DILocation(line: 134, column: 19, scope: !1032)
!1037 = !DILocation(line: 134, column: 22, scope: !1032)
!1038 = !DILocation(line: 134, column: 7, scope: !993)
!1039 = !DILocation(line: 135, column: 35, scope: !1032)
!1040 = !DILocation(line: 135, column: 43, scope: !1032)
!1041 = !DILocation(line: 135, column: 25, scope: !1032)
!1042 = !DILocation(line: 137, column: 26, scope: !993)
!1043 = !DILocation(line: 137, column: 38, scope: !993)
!1044 = !DILocation(line: 137, column: 3, scope: !993)
!1045 = !DILocation(line: 138, column: 10, scope: !993)
!1046 = !DILocation(line: 138, column: 3, scope: !993)
!1047 = !DILocation(line: 139, column: 2, scope: !993)
!1048 = !DILocation(line: 122, column: 41, scope: !1049)
!1049 = !DILexicalBlockFile(scope: !989, file: !687, discriminator: 2)
!1050 = !DILocation(line: 122, column: 46, scope: !1049)
!1051 = !DILocation(line: 122, column: 39, scope: !1049)
!1052 = !DILocation(line: 122, column: 2, scope: !1049)
!1053 = distinct !{!1053, !1054}
!1054 = !DILocation(line: 122, column: 2, scope: !923)
!1055 = !DILocation(line: 141, column: 6, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !923, file: !687, line: 141, column: 6)
!1057 = !DILocation(line: 141, column: 11, scope: !1056)
!1058 = !DILocation(line: 141, column: 15, scope: !1056)
!1059 = !DILocation(line: 141, column: 6, scope: !923)
!1060 = !DILocation(line: 142, column: 13, scope: !1056)
!1061 = !DILocation(line: 142, column: 21, scope: !1056)
!1062 = !DILocation(line: 142, column: 3, scope: !1056)
!1063 = !DILocation(line: 143, column: 16, scope: !923)
!1064 = !DILocation(line: 143, column: 2, scope: !923)
!1065 = !DILocation(line: 144, column: 1, scope: !923)
!1066 = !DILocation(line: 144, column: 1, scope: !1067)
!1067 = !DILexicalBlockFile(scope: !923, file: !687, discriminator: 1)
!1068 = distinct !DISubprogram(name: "ison_send", scope: !687, file: !687, line: 79, type: !1069, isLocal: true, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{null, !84, !283}
!1071 = !DILocalVariable(name: "server", arg: 1, scope: !1068, file: !687, line: 79, type: !84)
!1072 = !DILocation(line: 79, column: 39, scope: !1068)
!1073 = !DILocalVariable(name: "cmd", arg: 2, scope: !1068, file: !687, line: 79, type: !283)
!1074 = !DILocation(line: 79, column: 56, scope: !1068)
!1075 = !DILocalVariable(name: "mserver", scope: !1068, file: !687, line: 81, type: !702)
!1076 = !DILocation(line: 81, column: 21, scope: !1068)
!1077 = !DILocation(line: 83, column: 7, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1068, file: !687, line: 83, column: 6)
!1079 = !DILocation(line: 83, column: 15, scope: !1078)
!1080 = !DILocation(line: 83, column: 6, scope: !1068)
!1081 = !DILocation(line: 84, column: 3, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1078, file: !687, line: 83, column: 26)
!1083 = !DILocation(line: 87, column: 33, scope: !1068)
!1084 = !DILocation(line: 87, column: 42, scope: !1068)
!1085 = !DILocation(line: 87, column: 12, scope: !1068)
!1086 = !DILocation(line: 87, column: 10, scope: !1068)
!1087 = !DILocation(line: 88, column: 2, scope: !1068)
!1088 = !DILocation(line: 88, column: 11, scope: !1068)
!1089 = !DILocation(line: 88, column: 21, scope: !1068)
!1090 = !DILocation(line: 90, column: 20, scope: !1068)
!1091 = !DILocation(line: 90, column: 25, scope: !1068)
!1092 = !DILocation(line: 90, column: 30, scope: !1068)
!1093 = !DILocation(line: 90, column: 33, scope: !1068)
!1094 = !DILocation(line: 90, column: 2, scope: !1068)
!1095 = !DILocation(line: 91, column: 19, scope: !1068)
!1096 = !DILocation(line: 91, column: 2, scope: !1068)
!1097 = !DILocation(line: 93, column: 24, scope: !1068)
!1098 = !DILocation(line: 93, column: 2, scope: !1068)
!1099 = !DILocation(line: 95, column: 15, scope: !1068)
!1100 = !DILocation(line: 95, column: 23, scope: !1068)
!1101 = !DILocation(line: 95, column: 28, scope: !1068)
!1102 = !DILocation(line: 95, column: 2, scope: !1068)
!1103 = !DILocation(line: 97, column: 20, scope: !1068)
!1104 = !DILocation(line: 97, column: 2, scope: !1068)
!1105 = !DILocation(line: 98, column: 1, scope: !1068)
!1106 = !DILocation(line: 98, column: 1, scope: !1107)
!1107 = !DILexicalBlockFile(scope: !1068, file: !687, discriminator: 1)
!1108 = distinct !DISubprogram(name: "ison_save_users", scope: !687, file: !687, line: 152, type: !1109, isLocal: true, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{null, !702, !42}
!1111 = !DILocalVariable(name: "mserver", arg: 1, scope: !1108, file: !687, line: 152, type: !702)
!1112 = !DILocation(line: 152, column: 48, scope: !1108)
!1113 = !DILocalVariable(name: "online", arg: 2, scope: !1108, file: !687, line: 152, type: !42)
!1114 = !DILocation(line: 152, column: 63, scope: !1108)
!1115 = !DILocalVariable(name: "ptr", scope: !1108, file: !687, line: 154, type: !42)
!1116 = !DILocation(line: 154, column: 8, scope: !1108)
!1117 = !DILocation(line: 156, column: 2, scope: !1108)
!1118 = !DILocation(line: 156, column: 9, scope: !1119)
!1119 = !DILexicalBlockFile(scope: !1108, file: !687, discriminator: 1)
!1120 = !DILocation(line: 156, column: 16, scope: !1119)
!1121 = !DILocation(line: 156, column: 23, scope: !1119)
!1122 = !DILocation(line: 156, column: 27, scope: !1123)
!1123 = !DILexicalBlockFile(scope: !1108, file: !687, discriminator: 2)
!1124 = !DILocation(line: 156, column: 26, scope: !1123)
!1125 = !DILocation(line: 156, column: 34, scope: !1123)
!1126 = !DILocation(line: 156, column: 2, scope: !1127)
!1127 = !DILexicalBlockFile(scope: !1108, file: !687, discriminator: 3)
!1128 = !DILocation(line: 157, column: 16, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1108, file: !687, line: 156, column: 43)
!1130 = !DILocation(line: 157, column: 9, scope: !1129)
!1131 = !DILocation(line: 157, column: 7, scope: !1129)
!1132 = !DILocation(line: 158, column: 7, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1129, file: !687, line: 158, column: 7)
!1134 = !DILocation(line: 158, column: 11, scope: !1133)
!1135 = !DILocation(line: 158, column: 7, scope: !1129)
!1136 = !DILocation(line: 158, column: 23, scope: !1137)
!1137 = !DILexicalBlockFile(scope: !1133, file: !687, discriminator: 1)
!1138 = !DILocation(line: 158, column: 26, scope: !1137)
!1139 = !DILocation(line: 158, column: 19, scope: !1137)
!1140 = !DILocation(line: 161, column: 19, scope: !1129)
!1141 = !DILocation(line: 161, column: 28, scope: !1129)
!1142 = !DILocation(line: 161, column: 53, scope: !1129)
!1143 = !DILocation(line: 161, column: 44, scope: !1129)
!1144 = !DILocation(line: 161, column: 4, scope: !1145)
!1145 = !DILexicalBlockFile(scope: !1129, file: !687, discriminator: 1)
!1146 = !DILocation(line: 160, column: 3, scope: !1129)
!1147 = !DILocation(line: 160, column: 12, scope: !1129)
!1148 = !DILocation(line: 160, column: 27, scope: !1129)
!1149 = !DILocation(line: 162, column: 12, scope: !1129)
!1150 = !DILocation(line: 162, column: 10, scope: !1129)
!1151 = !DILocation(line: 156, column: 2, scope: !1152)
!1152 = !DILexicalBlockFile(scope: !1108, file: !687, discriminator: 4)
!1153 = distinct !{!1153, !1117}
!1154 = !DILocation(line: 164, column: 1, scope: !1108)
!1155 = distinct !DISubprogram(name: "ison_check_joins", scope: !687, file: !687, line: 231, type: !924, isLocal: true, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!1156 = !DILocalVariable(name: "server", arg: 1, scope: !1155, file: !687, line: 231, type: !84)
!1157 = !DILocation(line: 231, column: 46, scope: !1155)
!1158 = !DILocalVariable(name: "mserver", scope: !1155, file: !687, line: 233, type: !702)
!1159 = !DILocation(line: 233, column: 21, scope: !1155)
!1160 = !DILocalVariable(name: "notify", scope: !1155, file: !687, line: 234, type: !994)
!1161 = !DILocation(line: 234, column: 18, scope: !1155)
!1162 = !DILocalVariable(name: "rec", scope: !1155, file: !687, line: 235, type: !36)
!1163 = !DILocation(line: 235, column: 19, scope: !1155)
!1164 = !DILocalVariable(name: "tmp", scope: !1155, file: !687, line: 236, type: !244)
!1165 = !DILocation(line: 236, column: 10, scope: !1155)
!1166 = !DILocalVariable(name: "newnicks", scope: !1155, file: !687, line: 236, type: !244)
!1167 = !DILocation(line: 236, column: 16, scope: !1155)
!1168 = !DILocalVariable(name: "send_whois", scope: !1155, file: !687, line: 237, type: !74)
!1169 = !DILocation(line: 237, column: 6, scope: !1155)
!1170 = !DILocalVariable(name: "now", scope: !1155, file: !687, line: 238, type: !54)
!1171 = !DILocation(line: 238, column: 9, scope: !1155)
!1172 = !DILocation(line: 240, column: 33, scope: !1155)
!1173 = !DILocation(line: 240, column: 42, scope: !1155)
!1174 = !DILocation(line: 240, column: 12, scope: !1155)
!1175 = !DILocation(line: 240, column: 10, scope: !1155)
!1176 = !DILocation(line: 242, column: 8, scope: !1155)
!1177 = !DILocation(line: 242, column: 6, scope: !1155)
!1178 = !DILocation(line: 243, column: 11, scope: !1155)
!1179 = !DILocation(line: 244, column: 13, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1155, file: !687, line: 244, column: 2)
!1181 = !DILocation(line: 244, column: 22, scope: !1180)
!1182 = !DILocation(line: 244, column: 11, scope: !1180)
!1183 = !DILocation(line: 244, column: 7, scope: !1180)
!1184 = !DILocation(line: 244, column: 38, scope: !1185)
!1185 = !DILexicalBlockFile(scope: !1186, file: !687, discriminator: 1)
!1186 = distinct !DILexicalBlock(scope: !1180, file: !687, line: 244, column: 2)
!1187 = !DILocation(line: 244, column: 42, scope: !1185)
!1188 = !DILocation(line: 244, column: 2, scope: !1185)
!1189 = !DILocalVariable(name: "nick", scope: !1190, file: !687, line: 245, type: !42)
!1190 = distinct !DILexicalBlock(scope: !1186, file: !687, line: 244, column: 67)
!1191 = !DILocation(line: 245, column: 9, scope: !1190)
!1192 = !DILocation(line: 245, column: 16, scope: !1190)
!1193 = !DILocation(line: 245, column: 21, scope: !1190)
!1194 = !DILocation(line: 247, column: 28, scope: !1190)
!1195 = !DILocation(line: 247, column: 34, scope: !1190)
!1196 = !DILocation(line: 247, column: 42, scope: !1190)
!1197 = !DILocation(line: 247, column: 51, scope: !1190)
!1198 = !DILocation(line: 247, column: 12, scope: !1190)
!1199 = !DILocation(line: 247, column: 10, scope: !1190)
!1200 = !DILocation(line: 248, column: 16, scope: !1190)
!1201 = !DILocation(line: 248, column: 23, scope: !1190)
!1202 = !DILocation(line: 248, column: 30, scope: !1190)
!1203 = !DILocation(line: 248, column: 33, scope: !1204)
!1204 = !DILexicalBlockFile(scope: !1190, file: !687, discriminator: 1)
!1205 = !DILocation(line: 248, column: 41, scope: !1204)
!1206 = !DILocation(line: 248, column: 30, scope: !1204)
!1207 = !DILocation(line: 248, column: 30, scope: !1208)
!1208 = !DILexicalBlockFile(scope: !1190, file: !687, discriminator: 2)
!1209 = !DILocation(line: 248, column: 14, scope: !1208)
!1210 = !DILocation(line: 250, column: 26, scope: !1190)
!1211 = !DILocation(line: 250, column: 34, scope: !1190)
!1212 = !DILocation(line: 250, column: 9, scope: !1190)
!1213 = !DILocation(line: 250, column: 7, scope: !1190)
!1214 = !DILocation(line: 251, column: 7, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1190, file: !687, line: 251, column: 7)
!1216 = !DILocation(line: 251, column: 11, scope: !1215)
!1217 = !DILocation(line: 251, column: 7, scope: !1190)
!1218 = !DILocation(line: 253, column: 8, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1220, file: !687, line: 253, column: 8)
!1220 = distinct !DILexicalBlock(scope: !1215, file: !687, line: 251, column: 19)
!1221 = !DILocation(line: 253, column: 12, scope: !1219)
!1222 = !DILocation(line: 253, column: 17, scope: !1219)
!1223 = !DILocation(line: 253, column: 11, scope: !1219)
!1224 = !DILocation(line: 253, column: 30, scope: !1219)
!1225 = !DILocation(line: 253, column: 28, scope: !1219)
!1226 = !DILocation(line: 253, column: 8, scope: !1220)
!1227 = !DILocation(line: 254, column: 5, scope: !1219)
!1228 = !DILocation(line: 255, column: 3, scope: !1220)
!1229 = !DILocation(line: 256, column: 29, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1215, file: !687, line: 255, column: 10)
!1231 = !DILocation(line: 256, column: 37, scope: !1230)
!1232 = !DILocation(line: 256, column: 10, scope: !1230)
!1233 = !DILocation(line: 256, column: 8, scope: !1230)
!1234 = !DILocation(line: 257, column: 9, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1230, file: !687, line: 257, column: 8)
!1236 = !DILocation(line: 257, column: 8, scope: !1230)
!1237 = !DILocation(line: 257, column: 47, scope: !1238)
!1238 = !DILexicalBlockFile(scope: !1235, file: !687, discriminator: 1)
!1239 = !DILocation(line: 257, column: 57, scope: !1238)
!1240 = !DILocation(line: 257, column: 32, scope: !1238)
!1241 = !DILocation(line: 257, column: 30, scope: !1238)
!1242 = !DILocation(line: 257, column: 21, scope: !1238)
!1243 = !DILocation(line: 260, column: 7, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1190, file: !687, line: 260, column: 7)
!1245 = !DILocation(line: 260, column: 7, scope: !1190)
!1246 = !DILocation(line: 263, column: 43, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1244, file: !687, line: 260, column: 19)
!1248 = !DILocation(line: 263, column: 25, scope: !1247)
!1249 = !DILocation(line: 263, column: 30, scope: !1247)
!1250 = !DILocation(line: 263, column: 41, scope: !1247)
!1251 = !DILocation(line: 264, column: 22, scope: !1247)
!1252 = !DILocation(line: 264, column: 30, scope: !1247)
!1253 = !DILocation(line: 264, column: 4, scope: !1247)
!1254 = !DILocation(line: 265, column: 3, scope: !1247)
!1255 = !DILocation(line: 266, column: 2, scope: !1190)
!1256 = !DILocation(line: 244, column: 56, scope: !1257)
!1257 = !DILexicalBlockFile(scope: !1186, file: !687, discriminator: 2)
!1258 = !DILocation(line: 244, column: 61, scope: !1257)
!1259 = !DILocation(line: 244, column: 54, scope: !1257)
!1260 = !DILocation(line: 244, column: 2, scope: !1257)
!1261 = distinct !{!1261, !1262}
!1262 = !DILocation(line: 244, column: 2, scope: !1155)
!1263 = !DILocation(line: 268, column: 18, scope: !1155)
!1264 = !DILocation(line: 268, column: 26, scope: !1155)
!1265 = !DILocation(line: 268, column: 2, scope: !1155)
!1266 = !DILocation(line: 269, column: 15, scope: !1155)
!1267 = !DILocation(line: 269, column: 2, scope: !1155)
!1268 = !DILocation(line: 270, column: 1, scope: !1155)
!1269 = distinct !DISubprogram(name: "ison_check_parts", scope: !687, file: !687, line: 272, type: !924, isLocal: true, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!1270 = !DILocalVariable(name: "server", arg: 1, scope: !1269, file: !687, line: 272, type: !84)
!1271 = !DILocation(line: 272, column: 46, scope: !1269)
!1272 = !DILocalVariable(name: "mserver", scope: !1269, file: !687, line: 274, type: !702)
!1273 = !DILocation(line: 274, column: 21, scope: !1269)
!1274 = !DILocalVariable(name: "tmp", scope: !1269, file: !687, line: 275, type: !244)
!1275 = !DILocation(line: 275, column: 10, scope: !1269)
!1276 = !DILocalVariable(name: "next", scope: !1269, file: !687, line: 275, type: !244)
!1277 = !DILocation(line: 275, column: 16, scope: !1269)
!1278 = !DILocation(line: 277, column: 33, scope: !1269)
!1279 = !DILocation(line: 277, column: 42, scope: !1269)
!1280 = !DILocation(line: 277, column: 12, scope: !1269)
!1281 = !DILocation(line: 277, column: 10, scope: !1269)
!1282 = !DILocation(line: 278, column: 13, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1269, file: !687, line: 278, column: 2)
!1284 = !DILocation(line: 278, column: 22, scope: !1283)
!1285 = !DILocation(line: 278, column: 11, scope: !1283)
!1286 = !DILocation(line: 278, column: 7, scope: !1283)
!1287 = !DILocation(line: 278, column: 36, scope: !1288)
!1288 = !DILexicalBlockFile(scope: !1289, file: !687, discriminator: 1)
!1289 = distinct !DILexicalBlock(scope: !1283, file: !687, line: 278, column: 2)
!1290 = !DILocation(line: 278, column: 40, scope: !1288)
!1291 = !DILocation(line: 278, column: 2, scope: !1288)
!1292 = !DILocalVariable(name: "rec", scope: !1293, file: !687, line: 279, type: !36)
!1293 = distinct !DILexicalBlock(scope: !1289, file: !687, line: 278, column: 60)
!1294 = !DILocation(line: 279, column: 20, scope: !1293)
!1295 = !DILocation(line: 279, column: 26, scope: !1293)
!1296 = !DILocation(line: 279, column: 31, scope: !1293)
!1297 = !DILocation(line: 280, column: 10, scope: !1293)
!1298 = !DILocation(line: 280, column: 15, scope: !1293)
!1299 = !DILocation(line: 280, column: 8, scope: !1293)
!1300 = !DILocation(line: 282, column: 32, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1293, file: !687, line: 282, column: 7)
!1302 = !DILocation(line: 282, column: 41, scope: !1301)
!1303 = !DILocation(line: 282, column: 57, scope: !1301)
!1304 = !DILocation(line: 282, column: 62, scope: !1301)
!1305 = !DILocation(line: 282, column: 7, scope: !1301)
!1306 = !DILocation(line: 282, column: 68, scope: !1301)
!1307 = !DILocation(line: 282, column: 7, scope: !1293)
!1308 = !DILocation(line: 283, column: 4, scope: !1301)
!1309 = !DILocation(line: 285, column: 33, scope: !1293)
!1310 = !DILocation(line: 285, column: 41, scope: !1293)
!1311 = !DILocation(line: 285, column: 17, scope: !1293)
!1312 = !DILocation(line: 286, column: 2, scope: !1293)
!1313 = !DILocation(line: 278, column: 54, scope: !1314)
!1314 = !DILexicalBlockFile(scope: !1289, file: !687, discriminator: 2)
!1315 = !DILocation(line: 278, column: 52, scope: !1314)
!1316 = !DILocation(line: 278, column: 2, scope: !1314)
!1317 = distinct !{!1317, !1318}
!1318 = !DILocation(line: 278, column: 2, scope: !1269)
!1319 = !DILocation(line: 287, column: 1, scope: !1269)
!1320 = distinct !DISubprogram(name: "whois_send_server", scope: !687, file: !687, line: 189, type: !1321, isLocal: true, isDefinition: true, scopeLine: 190, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{null, !84, !42}
!1323 = !DILocalVariable(name: "server", arg: 1, scope: !1320, file: !687, line: 189, type: !84)
!1324 = !DILocation(line: 189, column: 47, scope: !1320)
!1325 = !DILocalVariable(name: "nick", arg: 2, scope: !1320, file: !687, line: 189, type: !42)
!1326 = !DILocation(line: 189, column: 61, scope: !1320)
!1327 = !DILocalVariable(name: "str", scope: !1320, file: !687, line: 191, type: !42)
!1328 = !DILocation(line: 191, column: 8, scope: !1320)
!1329 = !DILocation(line: 193, column: 33, scope: !1320)
!1330 = !DILocation(line: 193, column: 39, scope: !1320)
!1331 = !DILocation(line: 193, column: 8, scope: !1320)
!1332 = !DILocation(line: 193, column: 6, scope: !1320)
!1333 = !DILocation(line: 194, column: 13, scope: !1320)
!1334 = !DILocation(line: 194, column: 21, scope: !1320)
!1335 = !DILocation(line: 194, column: 27, scope: !1320)
!1336 = !DILocation(line: 194, column: 2, scope: !1320)
!1337 = !DILocation(line: 195, column: 9, scope: !1320)
!1338 = !DILocation(line: 195, column: 2, scope: !1320)
!1339 = !DILocation(line: 196, column: 1, scope: !1320)
!1340 = distinct !DISubprogram(name: "whois_list_send", scope: !687, file: !687, line: 199, type: !1341, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!1341 = !DISubroutineType(types: !1342)
!1342 = !{null, !84, !244}
!1343 = !DILocalVariable(name: "server", arg: 1, scope: !1340, file: !687, line: 199, type: !84)
!1344 = !DILocation(line: 199, column: 45, scope: !1340)
!1345 = !DILocalVariable(name: "nicks", arg: 2, scope: !1340, file: !687, line: 199, type: !244)
!1346 = !DILocation(line: 199, column: 61, scope: !1340)
!1347 = !DILocalVariable(name: "tmp", scope: !1340, file: !687, line: 201, type: !244)
!1348 = !DILocation(line: 201, column: 10, scope: !1340)
!1349 = !DILocalVariable(name: "str", scope: !1340, file: !687, line: 202, type: !283)
!1350 = !DILocation(line: 202, column: 11, scope: !1340)
!1351 = !DILocalVariable(name: "nick", scope: !1340, file: !687, line: 203, type: !42)
!1352 = !DILocation(line: 203, column: 8, scope: !1340)
!1353 = !DILocalVariable(name: "count", scope: !1340, file: !687, line: 204, type: !74)
!1354 = !DILocation(line: 204, column: 13, scope: !1340)
!1355 = !DILocation(line: 206, column: 8, scope: !1340)
!1356 = !DILocation(line: 206, column: 6, scope: !1340)
!1357 = !DILocation(line: 207, column: 8, scope: !1340)
!1358 = !DILocation(line: 209, column: 13, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1340, file: !687, line: 209, column: 2)
!1360 = !DILocation(line: 209, column: 11, scope: !1359)
!1361 = !DILocation(line: 209, column: 7, scope: !1359)
!1362 = !DILocation(line: 209, column: 20, scope: !1363)
!1363 = !DILexicalBlockFile(scope: !1364, file: !687, discriminator: 1)
!1364 = distinct !DILexicalBlock(scope: !1359, file: !687, line: 209, column: 2)
!1365 = !DILocation(line: 209, column: 24, scope: !1363)
!1366 = !DILocation(line: 209, column: 2, scope: !1363)
!1367 = !DILocation(line: 210, column: 10, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1364, file: !687, line: 209, column: 49)
!1369 = !DILocation(line: 210, column: 15, scope: !1368)
!1370 = !DILocation(line: 210, column: 8, scope: !1368)
!1371 = !DILocation(line: 212, column: 8, scope: !1368)
!1372 = !DILocation(line: 213, column: 26, scope: !1368)
!1373 = !DILocation(line: 213, column: 38, scope: !1368)
!1374 = !DILocation(line: 213, column: 3, scope: !1368)
!1375 = !DILocation(line: 215, column: 7, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1368, file: !687, line: 215, column: 7)
!1377 = !DILocation(line: 215, column: 16, scope: !1376)
!1378 = !DILocation(line: 215, column: 24, scope: !1376)
!1379 = !DILocation(line: 215, column: 13, scope: !1376)
!1380 = !DILocation(line: 215, column: 7, scope: !1368)
!1381 = !DILocation(line: 216, column: 22, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1376, file: !687, line: 215, column: 42)
!1383 = !DILocation(line: 216, column: 27, scope: !1382)
!1384 = !DILocation(line: 216, column: 32, scope: !1382)
!1385 = !DILocation(line: 216, column: 35, scope: !1382)
!1386 = !DILocation(line: 216, column: 4, scope: !1382)
!1387 = !DILocation(line: 217, column: 15, scope: !1382)
!1388 = !DILocation(line: 217, column: 23, scope: !1382)
!1389 = !DILocation(line: 217, column: 28, scope: !1382)
!1390 = !DILocation(line: 217, column: 33, scope: !1382)
!1391 = !DILocation(line: 217, column: 38, scope: !1382)
!1392 = !DILocation(line: 217, column: 4, scope: !1382)
!1393 = !DILocation(line: 218, column: 22, scope: !1382)
!1394 = !DILocation(line: 218, column: 4, scope: !1382)
!1395 = !DILocation(line: 219, column: 31, scope: !1382)
!1396 = !DILocation(line: 220, column: 3, scope: !1382)
!1397 = !DILocation(line: 221, column: 2, scope: !1368)
!1398 = !DILocation(line: 209, column: 38, scope: !1399)
!1399 = !DILexicalBlockFile(scope: !1364, file: !687, discriminator: 2)
!1400 = !DILocation(line: 209, column: 43, scope: !1399)
!1401 = !DILocation(line: 209, column: 36, scope: !1399)
!1402 = !DILocation(line: 209, column: 2, scope: !1399)
!1403 = distinct !{!1403, !1404}
!1404 = !DILocation(line: 209, column: 2, scope: !1340)
!1405 = !DILocation(line: 223, column: 6, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1340, file: !687, line: 223, column: 6)
!1407 = !DILocation(line: 223, column: 11, scope: !1406)
!1408 = !DILocation(line: 223, column: 15, scope: !1406)
!1409 = !DILocation(line: 223, column: 6, scope: !1340)
!1410 = !DILocation(line: 224, column: 21, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1406, file: !687, line: 223, column: 20)
!1412 = !DILocation(line: 224, column: 26, scope: !1411)
!1413 = !DILocation(line: 224, column: 31, scope: !1411)
!1414 = !DILocation(line: 224, column: 34, scope: !1411)
!1415 = !DILocation(line: 224, column: 3, scope: !1411)
!1416 = !DILocation(line: 225, column: 14, scope: !1411)
!1417 = !DILocation(line: 225, column: 22, scope: !1411)
!1418 = !DILocation(line: 225, column: 27, scope: !1411)
!1419 = !DILocation(line: 225, column: 32, scope: !1411)
!1420 = !DILocation(line: 225, column: 37, scope: !1411)
!1421 = !DILocation(line: 225, column: 3, scope: !1411)
!1422 = !DILocation(line: 226, column: 2, scope: !1411)
!1423 = !DILocation(line: 228, column: 16, scope: !1340)
!1424 = !DILocation(line: 228, column: 2, scope: !1340)
!1425 = !DILocation(line: 229, column: 1, scope: !1340)
!1426 = distinct !DISubprogram(name: "whois_send", scope: !687, file: !687, line: 166, type: !1427, isLocal: true, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!1427 = !DISubroutineType(types: !1428)
!1428 = !{null, !84, !82, !82}
!1429 = !DILocalVariable(name: "server", arg: 1, scope: !1426, file: !687, line: 166, type: !84)
!1430 = !DILocation(line: 166, column: 40, scope: !1426)
!1431 = !DILocalVariable(name: "nicks", arg: 2, scope: !1426, file: !687, line: 166, type: !82)
!1432 = !DILocation(line: 166, column: 60, scope: !1426)
!1433 = !DILocalVariable(name: "whois_request", arg: 3, scope: !1426, file: !687, line: 167, type: !82)
!1434 = !DILocation(line: 167, column: 22, scope: !1426)
!1435 = !DILocalVariable(name: "p", scope: !1426, file: !687, line: 169, type: !42)
!1436 = !DILocation(line: 169, column: 8, scope: !1426)
!1437 = !DILocalVariable(name: "str", scope: !1426, file: !687, line: 169, type: !42)
!1438 = !DILocation(line: 169, column: 12, scope: !1426)
!1439 = !DILocation(line: 174, column: 27, scope: !1426)
!1440 = !DILocation(line: 174, column: 39, scope: !1426)
!1441 = !DILocation(line: 174, column: 15, scope: !1426)
!1442 = !DILocation(line: 174, column: 13, scope: !1426)
!1443 = !DILocation(line: 175, column: 11, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1426, file: !687, line: 175, column: 2)
!1445 = !DILocation(line: 175, column: 22, scope: !1444)
!1446 = !DILocation(line: 175, column: 15, scope: !1444)
!1447 = !DILocation(line: 175, column: 14, scope: !1444)
!1448 = !DILocation(line: 175, column: 28, scope: !1444)
!1449 = !DILocation(line: 175, column: 9, scope: !1444)
!1450 = !DILocation(line: 175, column: 7, scope: !1444)
!1451 = !DILocation(line: 175, column: 33, scope: !1452)
!1452 = !DILexicalBlockFile(scope: !1453, file: !687, discriminator: 1)
!1453 = distinct !DILexicalBlock(scope: !1444, file: !687, line: 175, column: 2)
!1454 = !DILocation(line: 175, column: 32, scope: !1452)
!1455 = !DILocation(line: 175, column: 35, scope: !1452)
!1456 = !DILocation(line: 175, column: 2, scope: !1452)
!1457 = !DILocation(line: 176, column: 8, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1453, file: !687, line: 176, column: 7)
!1459 = !DILocation(line: 176, column: 7, scope: !1458)
!1460 = !DILocation(line: 176, column: 10, scope: !1458)
!1461 = !DILocation(line: 176, column: 7, scope: !1453)
!1462 = !DILocation(line: 176, column: 19, scope: !1463)
!1463 = !DILexicalBlockFile(scope: !1458, file: !687, discriminator: 1)
!1464 = !DILocation(line: 176, column: 21, scope: !1463)
!1465 = !DILocation(line: 176, column: 18, scope: !1463)
!1466 = !DILocation(line: 176, column: 13, scope: !1467)
!1467 = !DILexicalBlockFile(scope: !1458, file: !687, discriminator: 2)
!1468 = !DILocation(line: 175, column: 45, scope: !1469)
!1469 = !DILexicalBlockFile(scope: !1453, file: !687, discriminator: 2)
!1470 = !DILocation(line: 175, column: 2, scope: !1469)
!1471 = distinct !{!1471, !1472}
!1472 = !DILocation(line: 175, column: 2, scope: !1426)
!1473 = !DILocation(line: 178, column: 24, scope: !1426)
!1474 = !DILocation(line: 178, column: 44, scope: !1426)
!1475 = !DILocation(line: 178, column: 2, scope: !1426)
!1476 = !DILocation(line: 184, column: 9, scope: !1426)
!1477 = !DILocation(line: 184, column: 2, scope: !1426)
!1478 = !DILocation(line: 186, column: 16, scope: !1426)
!1479 = !DILocation(line: 186, column: 36, scope: !1426)
!1480 = !DILocation(line: 186, column: 2, scope: !1426)
!1481 = !DILocation(line: 187, column: 1, scope: !1426)
