; ModuleID = './line190-notifylist.o.i'
source_filename = "./line190-notifylist.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GSList = type { i8*, %struct._GSList* }
%struct.NOTIFYLIST_REC = type { i8*, i8**, i8 }
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
%struct.NOTIFY_NICK_REC = type { i8*, i8*, i8*, i8*, i8*, i8, i64 }
%struct.MODULE_SERVER_REC = type { i32, %struct._GSList*, %struct._GSList* }
%struct.MODULE_FILE_REC = type { %struct._MODULE_REC*, i8*, i8*, void ()*, %struct._GModule*, i8 }
%struct._MODULE_REC = type { i8*, %struct._GSList* }
%struct._GModule = type opaque

@__func__.notifylist_add = private unnamed_addr constant [15 x i8] c"notifylist_add\00", align 1
@.str = private unnamed_addr constant [13 x i8] c"mask != NULL\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@notifies = common global %struct._GSList* null, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"notifylist new\00", align 1
@__func__.notifylist_remove = private unnamed_addr constant [18 x i8] c"notifylist_remove\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"notifylist remove\00", align 1
@__func__.notifylist_ison_server = private unnamed_addr constant [23 x i8] c"notifylist_ison_server\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"nick != NULL\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"IRC\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"IS_IRC_SERVER(server)\00", align 1
@__func__.notifylist_ison = private unnamed_addr constant [16 x i8] c"notifylist_ison\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"serverlist != NULL\00", align 1
@servers = external global %struct._GSList*, align 8
@.str.10 = private unnamed_addr constant [15 x i8] c"irc/notifylist\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"notifylist left\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"server connected\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"server destroyed\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"event quit\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"event privmsg\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"event join\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"channel wholist\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"setup reread\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"notifylist\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"irc\00", align 1
@__func__.notifylist_ison_serverlist = private unnamed_addr constant [27 x i8] c"notifylist_ison_serverlist\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"taglist != NULL\00", align 1
@__func__.notifylist_init_server = private unnamed_addr constant [23 x i8] c"notifylist_init_server\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"server != NULL\00", align 1
@__func__.notifylist_deinit_server = private unnamed_addr constant [25 x i8] c"notifylist_deinit_server\00", align 1
@.str.23 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"notifylist joined\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"WINDOW ITEM TYPE\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"CHANNEL\00", align 1

; Function Attrs: nounwind uwtable
define %struct.NOTIFYLIST_REC* @notifylist_add(i8*, i8*, i32) #0 !dbg !692 {
  %4 = alloca %struct.NOTIFYLIST_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.NOTIFYLIST_REC*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !696, metadata !697), !dbg !698
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !699, metadata !697), !dbg !700
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !701, metadata !697), !dbg !702
  call void @llvm.dbg.declare(metadata %struct.NOTIFYLIST_REC** %8, metadata !703, metadata !697), !dbg !704
  br label %9, !dbg !705, !llvm.loop !706

; <label>:9:                                      ; preds = %3
  %10 = load i8*, i8** %5, align 8, !dbg !707
  %11 = icmp ne i8* %10, null, !dbg !711
  br i1 %11, label %12, label %13, !dbg !707

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !712

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.notifylist_add, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)), !dbg !715
  store %struct.NOTIFYLIST_REC* null, %struct.NOTIFYLIST_REC** %4, align 8, !dbg !718
  br label %54, !dbg !718

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !719

; <label>:15:                                     ; preds = %14
  %16 = call noalias i8* @g_malloc0_n(i64 1, i64 24), !dbg !721
  %17 = bitcast i8* %16 to %struct.NOTIFYLIST_REC*, !dbg !722
  store %struct.NOTIFYLIST_REC* %17, %struct.NOTIFYLIST_REC** %8, align 8, !dbg !723
  %18 = load i8*, i8** %5, align 8, !dbg !724
  %19 = call noalias i8* @g_strdup(i8* %18), !dbg !725
  %20 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %8, align 8, !dbg !726
  %21 = getelementptr inbounds %struct.NOTIFYLIST_REC, %struct.NOTIFYLIST_REC* %20, i32 0, i32 0, !dbg !727
  store i8* %19, i8** %21, align 8, !dbg !728
  %22 = load i8*, i8** %6, align 8, !dbg !729
  %23 = icmp eq i8* %22, null, !dbg !730
  br i1 %23, label %29, label %24, !dbg !731

; <label>:24:                                     ; preds = %15
  %25 = load i8*, i8** %6, align 8, !dbg !732
  %26 = load i8, i8* %25, align 1, !dbg !734
  %27 = sext i8 %26 to i32, !dbg !734
  %28 = icmp eq i32 %27, 0, !dbg !735
  br i1 %28, label %29, label %30, !dbg !736

; <label>:29:                                     ; preds = %24, %15
  br label %33, !dbg !737

; <label>:30:                                     ; preds = %24
  %31 = load i8*, i8** %6, align 8, !dbg !739
  %32 = call noalias i8** @g_strsplit(i8* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i32 -1), !dbg !740
  br label %33, !dbg !741

; <label>:33:                                     ; preds = %30, %29
  %34 = phi i8** [ null, %29 ], [ %32, %30 ], !dbg !743
  %35 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %8, align 8, !dbg !745
  %36 = getelementptr inbounds %struct.NOTIFYLIST_REC, %struct.NOTIFYLIST_REC* %35, i32 0, i32 1, !dbg !746
  store i8** %34, i8*** %36, align 8, !dbg !747
  %37 = load i32, i32* %7, align 4, !dbg !748
  %38 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %8, align 8, !dbg !749
  %39 = getelementptr inbounds %struct.NOTIFYLIST_REC, %struct.NOTIFYLIST_REC* %38, i32 0, i32 2, !dbg !750
  %40 = trunc i32 %37 to i8, !dbg !751
  %41 = load i8, i8* %39, align 8, !dbg !751
  %42 = and i8 %40, 1, !dbg !751
  %43 = and i8 %41, -2, !dbg !751
  %44 = or i8 %43, %42, !dbg !751
  store i8 %44, i8* %39, align 8, !dbg !751
  %45 = zext i8 %42 to i32, !dbg !751
  %46 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %8, align 8, !dbg !752
  call void @notifylist_add_config(%struct.NOTIFYLIST_REC* %46), !dbg !753
  %47 = load %struct._GSList*, %struct._GSList** @notifies, align 8, !dbg !754
  %48 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %8, align 8, !dbg !755
  %49 = bitcast %struct.NOTIFYLIST_REC* %48 to i8*, !dbg !755
  %50 = call %struct._GSList* @g_slist_append(%struct._GSList* %47, i8* %49), !dbg !756
  store %struct._GSList* %50, %struct._GSList** @notifies, align 8, !dbg !757
  %51 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %8, align 8, !dbg !758
  %52 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 1, %struct.NOTIFYLIST_REC* %51), !dbg !759
  %53 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %8, align 8, !dbg !760
  store %struct.NOTIFYLIST_REC* %53, %struct.NOTIFYLIST_REC** %4, align 8, !dbg !761
  br label %54, !dbg !761

; <label>:54:                                     ; preds = %33, %13
  %55 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %4, align 8, !dbg !762
  ret %struct.NOTIFYLIST_REC* %55, !dbg !762
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare noalias i8* @g_malloc0_n(i64, i64) #2

declare noalias i8* @g_strdup(i8*) #2

declare noalias i8** @g_strsplit(i8*, i8*, i32) #2

declare void @notifylist_add_config(%struct.NOTIFYLIST_REC*) #2

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #2

declare i32 @signal_emit(i8*, i32, ...) #2

; Function Attrs: nounwind uwtable
define void @notifylist_destroy_all() #0 !dbg !763 {
  %1 = load %struct._GSList*, %struct._GSList** @notifies, align 8, !dbg !764
  call void @g_slist_foreach(%struct._GSList* %1, void (i8*, i8*)* bitcast (void (%struct.NOTIFYLIST_REC*)* @notify_destroy to void (i8*, i8*)*), i8* null), !dbg !765
  %2 = load %struct._GSList*, %struct._GSList** @notifies, align 8, !dbg !766
  call void @g_slist_free(%struct._GSList* %2), !dbg !767
  store %struct._GSList* null, %struct._GSList** @notifies, align 8, !dbg !768
  ret void, !dbg !769
}

declare void @g_slist_foreach(%struct._GSList*, void (i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @notify_destroy(%struct.NOTIFYLIST_REC*) #0 !dbg !770 {
  %2 = alloca %struct.NOTIFYLIST_REC*, align 8
  store %struct.NOTIFYLIST_REC* %0, %struct.NOTIFYLIST_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.NOTIFYLIST_REC** %2, metadata !773, metadata !697), !dbg !774
  %3 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %2, align 8, !dbg !775
  %4 = getelementptr inbounds %struct.NOTIFYLIST_REC, %struct.NOTIFYLIST_REC* %3, i32 0, i32 1, !dbg !777
  %5 = load i8**, i8*** %4, align 8, !dbg !777
  %6 = icmp ne i8** %5, null, !dbg !778
  br i1 %6, label %7, label %11, !dbg !779

; <label>:7:                                      ; preds = %1
  %8 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %2, align 8, !dbg !780
  %9 = getelementptr inbounds %struct.NOTIFYLIST_REC, %struct.NOTIFYLIST_REC* %8, i32 0, i32 1, !dbg !782
  %10 = load i8**, i8*** %9, align 8, !dbg !782
  call void @g_strfreev(i8** %10), !dbg !783
  br label %11, !dbg !783

; <label>:11:                                     ; preds = %7, %1
  %12 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %2, align 8, !dbg !784
  %13 = getelementptr inbounds %struct.NOTIFYLIST_REC, %struct.NOTIFYLIST_REC* %12, i32 0, i32 0, !dbg !785
  %14 = load i8*, i8** %13, align 8, !dbg !785
  call void @g_free(i8* %14), !dbg !786
  %15 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %2, align 8, !dbg !787
  %16 = bitcast %struct.NOTIFYLIST_REC* %15 to i8*, !dbg !787
  call void @g_free(i8* %16), !dbg !788
  ret void, !dbg !789
}

declare void @g_slist_free(%struct._GSList*) #2

; Function Attrs: nounwind uwtable
define void @notifylist_remove(i8*) #0 !dbg !790 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.NOTIFYLIST_REC*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !793, metadata !697), !dbg !794
  call void @llvm.dbg.declare(metadata %struct.NOTIFYLIST_REC** %3, metadata !795, metadata !697), !dbg !796
  br label %4, !dbg !797, !llvm.loop !798

; <label>:4:                                      ; preds = %1
  %5 = load i8*, i8** %2, align 8, !dbg !799
  %6 = icmp ne i8* %5, null, !dbg !803
  br i1 %6, label %7, label %8, !dbg !799

; <label>:7:                                      ; preds = %4
  br label %9, !dbg !804

; <label>:8:                                      ; preds = %4
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.notifylist_remove, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)), !dbg !807
  br label %25, !dbg !810

; <label>:9:                                      ; preds = %7
  br label %10, !dbg !811

; <label>:10:                                     ; preds = %9
  %11 = load i8*, i8** %2, align 8, !dbg !813
  %12 = call %struct.NOTIFYLIST_REC* @notifylist_find(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)), !dbg !814
  store %struct.NOTIFYLIST_REC* %12, %struct.NOTIFYLIST_REC** %3, align 8, !dbg !815
  %13 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %3, align 8, !dbg !816
  %14 = icmp eq %struct.NOTIFYLIST_REC* %13, null, !dbg !818
  br i1 %14, label %15, label %16, !dbg !819

; <label>:15:                                     ; preds = %10
  br label %25, !dbg !820

; <label>:16:                                     ; preds = %10
  %17 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %3, align 8, !dbg !822
  call void @notifylist_remove_config(%struct.NOTIFYLIST_REC* %17), !dbg !823
  %18 = load %struct._GSList*, %struct._GSList** @notifies, align 8, !dbg !824
  %19 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %3, align 8, !dbg !825
  %20 = bitcast %struct.NOTIFYLIST_REC* %19 to i8*, !dbg !825
  %21 = call %struct._GSList* @g_slist_remove(%struct._GSList* %18, i8* %20), !dbg !826
  store %struct._GSList* %21, %struct._GSList** @notifies, align 8, !dbg !827
  %22 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %3, align 8, !dbg !828
  %23 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i32 1, %struct.NOTIFYLIST_REC* %22), !dbg !829
  %24 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %3, align 8, !dbg !830
  call void @notify_destroy(%struct.NOTIFYLIST_REC* %24), !dbg !831
  br label %25, !dbg !832

; <label>:25:                                     ; preds = %16, %15, %8
  ret void, !dbg !833
}

; Function Attrs: nounwind uwtable
define %struct.NOTIFYLIST_REC* @notifylist_find(i8*, i8*) #0 !dbg !835 {
  %3 = alloca %struct.NOTIFYLIST_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.NOTIFYLIST_REC*, align 8
  %7 = alloca %struct._GSList*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.NOTIFYLIST_REC*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !838, metadata !697), !dbg !839
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !840, metadata !697), !dbg !841
  call void @llvm.dbg.declare(metadata %struct.NOTIFYLIST_REC** %6, metadata !842, metadata !697), !dbg !843
  call void @llvm.dbg.declare(metadata %struct._GSList** %7, metadata !844, metadata !697), !dbg !845
  call void @llvm.dbg.declare(metadata i32* %8, metadata !846, metadata !697), !dbg !847
  store %struct.NOTIFYLIST_REC* null, %struct.NOTIFYLIST_REC** %6, align 8, !dbg !848
  %10 = load i8*, i8** %4, align 8, !dbg !849
  %11 = call i64 @strlen(i8* %10) #4, !dbg !850
  %12 = trunc i64 %11 to i32, !dbg !850
  store i32 %12, i32* %8, align 4, !dbg !851
  %13 = load %struct._GSList*, %struct._GSList** @notifies, align 8, !dbg !852
  store %struct._GSList* %13, %struct._GSList** %7, align 8, !dbg !854
  br label %14, !dbg !855

; <label>:14:                                     ; preds = %66, %2
  %15 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !856
  %16 = icmp ne %struct._GSList* %15, null, !dbg !859
  br i1 %16, label %17, label %70, !dbg !860

; <label>:17:                                     ; preds = %14
  call void @llvm.dbg.declare(metadata %struct.NOTIFYLIST_REC** %9, metadata !861, metadata !697), !dbg !863
  %18 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !864
  %19 = getelementptr inbounds %struct._GSList, %struct._GSList* %18, i32 0, i32 0, !dbg !865
  %20 = load i8*, i8** %19, align 8, !dbg !865
  %21 = bitcast i8* %20 to %struct.NOTIFYLIST_REC*, !dbg !864
  store %struct.NOTIFYLIST_REC* %21, %struct.NOTIFYLIST_REC** %9, align 8, !dbg !863
  %22 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %9, align 8, !dbg !866
  %23 = getelementptr inbounds %struct.NOTIFYLIST_REC, %struct.NOTIFYLIST_REC* %22, i32 0, i32 0, !dbg !868
  %24 = load i8*, i8** %23, align 8, !dbg !868
  %25 = load i8*, i8** %4, align 8, !dbg !869
  %26 = load i32, i32* %8, align 4, !dbg !870
  %27 = sext i32 %26 to i64, !dbg !870
  %28 = call i32 @g_ascii_strncasecmp(i8* %24, i8* %25, i64 %27), !dbg !871
  %29 = icmp ne i32 %28, 0, !dbg !872
  br i1 %29, label %50, label %30, !dbg !873

; <label>:30:                                     ; preds = %17
  %31 = load i32, i32* %8, align 4, !dbg !874
  %32 = sext i32 %31 to i64, !dbg !875
  %33 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %9, align 8, !dbg !875
  %34 = getelementptr inbounds %struct.NOTIFYLIST_REC, %struct.NOTIFYLIST_REC* %33, i32 0, i32 0, !dbg !876
  %35 = load i8*, i8** %34, align 8, !dbg !876
  %36 = getelementptr inbounds i8, i8* %35, i64 %32, !dbg !875
  %37 = load i8, i8* %36, align 1, !dbg !875
  %38 = sext i8 %37 to i32, !dbg !875
  %39 = icmp ne i32 %38, 0, !dbg !877
  br i1 %39, label %40, label %51, !dbg !878

; <label>:40:                                     ; preds = %30
  %41 = load i32, i32* %8, align 4, !dbg !879
  %42 = sext i32 %41 to i64, !dbg !881
  %43 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %9, align 8, !dbg !881
  %44 = getelementptr inbounds %struct.NOTIFYLIST_REC, %struct.NOTIFYLIST_REC* %43, i32 0, i32 0, !dbg !882
  %45 = load i8*, i8** %44, align 8, !dbg !882
  %46 = getelementptr inbounds i8, i8* %45, i64 %42, !dbg !881
  %47 = load i8, i8* %46, align 1, !dbg !881
  %48 = sext i8 %47 to i32, !dbg !881
  %49 = icmp ne i32 %48, 33, !dbg !883
  br i1 %49, label %50, label %51, !dbg !884

; <label>:50:                                     ; preds = %40, %17
  br label %66, !dbg !886

; <label>:51:                                     ; preds = %40, %30
  %52 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %9, align 8, !dbg !888
  %53 = getelementptr inbounds %struct.NOTIFYLIST_REC, %struct.NOTIFYLIST_REC* %52, i32 0, i32 1, !dbg !890
  %54 = load i8**, i8*** %53, align 8, !dbg !890
  %55 = icmp eq i8** %54, null, !dbg !891
  br i1 %55, label %56, label %58, !dbg !892

; <label>:56:                                     ; preds = %51
  %57 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %9, align 8, !dbg !893
  store %struct.NOTIFYLIST_REC* %57, %struct.NOTIFYLIST_REC** %6, align 8, !dbg !895
  br label %66, !dbg !896

; <label>:58:                                     ; preds = %51
  %59 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %9, align 8, !dbg !897
  %60 = load i8*, i8** %5, align 8, !dbg !899
  %61 = call i32 @notifylist_ircnets_match(%struct.NOTIFYLIST_REC* %59, i8* %60), !dbg !900
  %62 = icmp ne i32 %61, 0, !dbg !900
  br i1 %62, label %63, label %65, !dbg !901

; <label>:63:                                     ; preds = %58
  %64 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %9, align 8, !dbg !902
  store %struct.NOTIFYLIST_REC* %64, %struct.NOTIFYLIST_REC** %3, align 8, !dbg !903
  br label %72, !dbg !903

; <label>:65:                                     ; preds = %58
  br label %66, !dbg !904

; <label>:66:                                     ; preds = %65, %56, %50
  %67 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !905
  %68 = getelementptr inbounds %struct._GSList, %struct._GSList* %67, i32 0, i32 1, !dbg !907
  %69 = load %struct._GSList*, %struct._GSList** %68, align 8, !dbg !907
  store %struct._GSList* %69, %struct._GSList** %7, align 8, !dbg !908
  br label %14, !dbg !909, !llvm.loop !910

; <label>:70:                                     ; preds = %14
  %71 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %6, align 8, !dbg !912
  store %struct.NOTIFYLIST_REC* %71, %struct.NOTIFYLIST_REC** %3, align 8, !dbg !913
  br label %72, !dbg !913

; <label>:72:                                     ; preds = %70, %63
  %73 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %3, align 8, !dbg !914
  ret %struct.NOTIFYLIST_REC* %73, !dbg !914
}

declare void @notifylist_remove_config(%struct.NOTIFYLIST_REC*) #2

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @notifylist_ircnets_match(%struct.NOTIFYLIST_REC*, i8*) #0 !dbg !915 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.NOTIFYLIST_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  store %struct.NOTIFYLIST_REC* %0, %struct.NOTIFYLIST_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.NOTIFYLIST_REC** %4, metadata !918, metadata !697), !dbg !919
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !920, metadata !697), !dbg !921
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !922, metadata !697), !dbg !923
  %7 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %4, align 8, !dbg !924
  %8 = getelementptr inbounds %struct.NOTIFYLIST_REC, %struct.NOTIFYLIST_REC* %7, i32 0, i32 1, !dbg !926
  %9 = load i8**, i8*** %8, align 8, !dbg !926
  %10 = icmp eq i8** %9, null, !dbg !927
  br i1 %10, label %11, label %12, !dbg !928

; <label>:11:                                     ; preds = %2
  store i32 1, i32* %3, align 4, !dbg !929
  br label %41, !dbg !929

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %5, align 8, !dbg !931
  %14 = icmp eq i8* %13, null, !dbg !933
  br i1 %14, label %15, label %16, !dbg !934

; <label>:15:                                     ; preds = %12
  store i32 0, i32* %3, align 4, !dbg !935
  br label %41, !dbg !935

; <label>:16:                                     ; preds = %12
  %17 = load i8*, i8** %5, align 8, !dbg !937
  %18 = call i32 @g_strcmp0(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)), !dbg !939
  %19 = icmp eq i32 %18, 0, !dbg !940
  br i1 %19, label %20, label %21, !dbg !941

; <label>:20:                                     ; preds = %16
  store i32 1, i32* %3, align 4, !dbg !942
  br label %41, !dbg !942

; <label>:21:                                     ; preds = %16
  %22 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %4, align 8, !dbg !944
  %23 = getelementptr inbounds %struct.NOTIFYLIST_REC, %struct.NOTIFYLIST_REC* %22, i32 0, i32 1, !dbg !946
  %24 = load i8**, i8*** %23, align 8, !dbg !946
  store i8** %24, i8*** %6, align 8, !dbg !947
  br label %25, !dbg !948

; <label>:25:                                     ; preds = %37, %21
  %26 = load i8**, i8*** %6, align 8, !dbg !949
  %27 = load i8*, i8** %26, align 8, !dbg !952
  %28 = icmp ne i8* %27, null, !dbg !953
  br i1 %28, label %29, label %40, !dbg !954

; <label>:29:                                     ; preds = %25
  %30 = load i8**, i8*** %6, align 8, !dbg !955
  %31 = load i8*, i8** %30, align 8, !dbg !958
  %32 = load i8*, i8** %5, align 8, !dbg !959
  %33 = call i32 @g_ascii_strcasecmp(i8* %31, i8* %32), !dbg !960
  %34 = icmp eq i32 %33, 0, !dbg !961
  br i1 %34, label %35, label %36, !dbg !962

; <label>:35:                                     ; preds = %29
  store i32 1, i32* %3, align 4, !dbg !963
  br label %41, !dbg !963

; <label>:36:                                     ; preds = %29
  br label %37, !dbg !964

; <label>:37:                                     ; preds = %36
  %38 = load i8**, i8*** %6, align 8, !dbg !965
  %39 = getelementptr inbounds i8*, i8** %38, i32 1, !dbg !965
  store i8** %39, i8*** %6, align 8, !dbg !965
  br label %25, !dbg !967, !llvm.loop !968

; <label>:40:                                     ; preds = %25
  store i32 0, i32* %3, align 4, !dbg !970
  br label %41, !dbg !970

; <label>:41:                                     ; preds = %40, %35, %20, %15, %11
  %42 = load i32, i32* %3, align 4, !dbg !971
  ret i32 %42, !dbg !971
}

declare i32 @g_strcmp0(i8*, i8*) #2

declare i32 @g_ascii_strcasecmp(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i32 @g_ascii_strncasecmp(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define i32 @notifylist_ison_server(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !972 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.NOTIFY_NICK_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !975, metadata !697), !dbg !976
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !977, metadata !697), !dbg !978
  call void @llvm.dbg.declare(metadata %struct.NOTIFY_NICK_REC** %6, metadata !979, metadata !697), !dbg !994
  br label %7, !dbg !995, !llvm.loop !996

; <label>:7:                                      ; preds = %2
  %8 = load i8*, i8** %5, align 8, !dbg !997
  %9 = icmp ne i8* %8, null, !dbg !1001
  br i1 %9, label %10, label %11, !dbg !997

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !1002

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.notifylist_ison_server, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0)), !dbg !1005
  store i32 0, i32* %3, align 4, !dbg !1008
  br label %52, !dbg !1008

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !1009

; <label>:13:                                     ; preds = %12
  br label %14, !dbg !1011, !llvm.loop !1012

; <label>:14:                                     ; preds = %13
  %15 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1013
  %16 = bitcast %struct._IRC_SERVER_REC* %15 to i8*, !dbg !1013
  %17 = call i8* @module_check_cast(i8* %16, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0)), !dbg !1017
  %18 = bitcast i8* %17 to %struct._SERVER_REC*, !dbg !1018
  %19 = bitcast %struct._SERVER_REC* %18 to i8*, !dbg !1019
  %20 = call i8* @chat_protocol_check_cast(i8* %19, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0)), !dbg !1020
  %21 = bitcast i8* %20 to %struct._IRC_SERVER_REC*, !dbg !1022
  %22 = icmp ne %struct._IRC_SERVER_REC* %21, null, !dbg !1022
  br i1 %22, label %23, label %24, !dbg !1023

; <label>:23:                                     ; preds = %14
  br i1 false, label %26, label %25, !dbg !1024

; <label>:24:                                     ; preds = %14
  br i1 false, label %25, label %26, !dbg !1026

; <label>:25:                                     ; preds = %24, %23
  br label %27, !dbg !1028

; <label>:26:                                     ; preds = %24, %23
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.notifylist_ison_server, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0)), !dbg !1031
  store i32 0, i32* %3, align 4, !dbg !1034
  br label %52, !dbg !1034

; <label>:27:                                     ; preds = %25
  br label %28, !dbg !1035

; <label>:28:                                     ; preds = %27
  %29 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1037
  %30 = load i8*, i8** %5, align 8, !dbg !1038
  %31 = call %struct.NOTIFY_NICK_REC* @notify_nick_find(%struct._IRC_SERVER_REC* %29, i8* %30), !dbg !1039
  store %struct.NOTIFY_NICK_REC* %31, %struct.NOTIFY_NICK_REC** %6, align 8, !dbg !1040
  %32 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %6, align 8, !dbg !1041
  %33 = icmp ne %struct.NOTIFY_NICK_REC* %32, null, !dbg !1042
  br i1 %33, label %34, label %49, !dbg !1043

; <label>:34:                                     ; preds = %28
  %35 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %6, align 8, !dbg !1044
  %36 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %35, i32 0, i32 5, !dbg !1046
  %37 = load i8, i8* %36, align 8, !dbg !1046
  %38 = and i8 %37, 1, !dbg !1046
  %39 = zext i8 %38 to i32, !dbg !1046
  %40 = icmp ne i32 %39, 0, !dbg !1044
  br i1 %40, label %41, label %49, !dbg !1047

; <label>:41:                                     ; preds = %34
  %42 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %6, align 8, !dbg !1048
  %43 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %42, i32 0, i32 5, !dbg !1050
  %44 = load i8, i8* %43, align 8, !dbg !1050
  %45 = lshr i8 %44, 1, !dbg !1050
  %46 = and i8 %45, 1, !dbg !1050
  %47 = zext i8 %46 to i32, !dbg !1050
  %48 = icmp ne i32 %47, 0, !dbg !1051
  br label %49

; <label>:49:                                     ; preds = %41, %34, %28
  %50 = phi i1 [ false, %34 ], [ false, %28 ], [ %48, %41 ]
  %51 = zext i1 %50 to i32, !dbg !1052
  store i32 %51, i32* %3, align 4, !dbg !1054
  br label %52, !dbg !1054

; <label>:52:                                     ; preds = %49, %26, %11
  %53 = load i32, i32* %3, align 4, !dbg !1055
  ret i32 %53, !dbg !1055
}

declare i8* @chat_protocol_check_cast(i8*, i32, i8*) #2

declare i8* @module_check_cast(i8*, i32, i8*) #2

declare %struct.NOTIFY_NICK_REC* @notify_nick_find(%struct._IRC_SERVER_REC*, i8*) #2

; Function Attrs: nounwind uwtable
define %struct._IRC_SERVER_REC* @notifylist_ison(i8*, i8*) #0 !dbg !1056 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca %struct._IRC_SERVER_REC*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1059, metadata !697), !dbg !1060
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1061, metadata !697), !dbg !1062
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !1063, metadata !697), !dbg !1064
  br label %8, !dbg !1065, !llvm.loop !1066

; <label>:8:                                      ; preds = %2
  %9 = load i8*, i8** %4, align 8, !dbg !1067
  %10 = icmp ne i8* %9, null, !dbg !1071
  br i1 %10, label %11, label %12, !dbg !1067

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !1072

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.notifylist_ison, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0)), !dbg !1075
  store %struct._IRC_SERVER_REC* null, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1078
  br label %66, !dbg !1078

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !1079

; <label>:14:                                     ; preds = %13
  br label %15, !dbg !1081, !llvm.loop !1082

; <label>:15:                                     ; preds = %14
  %16 = load i8*, i8** %5, align 8, !dbg !1083
  %17 = icmp ne i8* %16, null, !dbg !1087
  br i1 %17, label %18, label %19, !dbg !1083

; <label>:18:                                     ; preds = %15
  br label %20, !dbg !1088

; <label>:19:                                     ; preds = %15
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.notifylist_ison, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0)), !dbg !1091
  store %struct._IRC_SERVER_REC* null, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1094
  br label %66, !dbg !1094

; <label>:20:                                     ; preds = %18
  br label %21, !dbg !1095

; <label>:21:                                     ; preds = %20
  %22 = load i8*, i8** %5, align 8, !dbg !1097
  %23 = load i8, i8* %22, align 1, !dbg !1099
  %24 = sext i8 %23 to i32, !dbg !1099
  %25 = icmp ne i32 %24, 0, !dbg !1100
  br i1 %25, label %26, label %30, !dbg !1101

; <label>:26:                                     ; preds = %21
  %27 = load i8*, i8** %4, align 8, !dbg !1102
  %28 = load i8*, i8** %5, align 8, !dbg !1103
  %29 = call %struct._IRC_SERVER_REC* @notifylist_ison_serverlist(i8* %27, i8* %28), !dbg !1104
  store %struct._IRC_SERVER_REC* %29, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1105
  br label %66, !dbg !1105

; <label>:30:                                     ; preds = %21
  %31 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !1106
  store %struct._GSList* %31, %struct._GSList** %6, align 8, !dbg !1108
  br label %32, !dbg !1109

; <label>:32:                                     ; preds = %61, %30
  %33 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1110
  %34 = icmp ne %struct._GSList* %33, null, !dbg !1113
  br i1 %34, label %35, label %65, !dbg !1114

; <label>:35:                                     ; preds = %32
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %7, metadata !1115, metadata !697), !dbg !1117
  %36 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1118
  %37 = getelementptr inbounds %struct._GSList, %struct._GSList* %36, i32 0, i32 0, !dbg !1119
  %38 = load i8*, i8** %37, align 8, !dbg !1119
  %39 = bitcast i8* %38 to %struct._IRC_SERVER_REC*, !dbg !1118
  store %struct._IRC_SERVER_REC* %39, %struct._IRC_SERVER_REC** %7, align 8, !dbg !1117
  %40 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %7, align 8, !dbg !1120
  %41 = bitcast %struct._IRC_SERVER_REC* %40 to i8*, !dbg !1120
  %42 = call i8* @module_check_cast(i8* %41, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0)), !dbg !1122
  %43 = bitcast i8* %42 to %struct._SERVER_REC*, !dbg !1123
  %44 = bitcast %struct._SERVER_REC* %43 to i8*, !dbg !1124
  %45 = call i8* @chat_protocol_check_cast(i8* %44, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0)), !dbg !1125
  %46 = bitcast i8* %45 to %struct._IRC_SERVER_REC*, !dbg !1127
  %47 = icmp ne %struct._IRC_SERVER_REC* %46, null, !dbg !1127
  br i1 %47, label %48, label %49, !dbg !1128

; <label>:48:                                     ; preds = %35
  br i1 false, label %60, label %50, !dbg !1129

; <label>:49:                                     ; preds = %35
  br i1 false, label %50, label %60, !dbg !1131

; <label>:50:                                     ; preds = %49, %48
  %51 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %7, align 8, !dbg !1133
  %52 = load i8*, i8** %4, align 8, !dbg !1134
  %53 = call i32 @notifylist_ison_server(%struct._IRC_SERVER_REC* %51, i8* %52), !dbg !1135
  %54 = icmp ne i32 %53, 0, !dbg !1135
  br i1 %54, label %55, label %60, !dbg !1136

; <label>:55:                                     ; preds = %50
  %56 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1138
  %57 = getelementptr inbounds %struct._GSList, %struct._GSList* %56, i32 0, i32 0, !dbg !1139
  %58 = load i8*, i8** %57, align 8, !dbg !1139
  %59 = bitcast i8* %58 to %struct._IRC_SERVER_REC*, !dbg !1138
  store %struct._IRC_SERVER_REC* %59, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1140
  br label %66, !dbg !1140

; <label>:60:                                     ; preds = %50, %49, %48
  br label %61, !dbg !1141

; <label>:61:                                     ; preds = %60
  %62 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1142
  %63 = getelementptr inbounds %struct._GSList, %struct._GSList* %62, i32 0, i32 1, !dbg !1144
  %64 = load %struct._GSList*, %struct._GSList** %63, align 8, !dbg !1144
  store %struct._GSList* %64, %struct._GSList** %6, align 8, !dbg !1145
  br label %32, !dbg !1146, !llvm.loop !1147

; <label>:65:                                     ; preds = %32
  store %struct._IRC_SERVER_REC* null, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1149
  br label %66, !dbg !1149

; <label>:66:                                     ; preds = %65, %55, %26, %19, %12
  %67 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1150
  ret %struct._IRC_SERVER_REC* %67, !dbg !1150
}

; Function Attrs: nounwind uwtable
define internal %struct._IRC_SERVER_REC* @notifylist_ison_serverlist(i8*, i8*) #0 !dbg !1151 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._IRC_SERVER_REC*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1152, metadata !697), !dbg !1153
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1154, metadata !697), !dbg !1155
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %6, metadata !1156, metadata !697), !dbg !1157
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !1158, metadata !697), !dbg !1159
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !1160, metadata !697), !dbg !1161
  br label %9, !dbg !1162, !llvm.loop !1163

; <label>:9:                                      ; preds = %2
  %10 = load i8*, i8** %4, align 8, !dbg !1164
  %11 = icmp ne i8* %10, null, !dbg !1168
  br i1 %11, label %12, label %13, !dbg !1164

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !1169

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.notifylist_ison_serverlist, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0)), !dbg !1172
  store %struct._IRC_SERVER_REC* null, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1175
  br label %64, !dbg !1175

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !1176

; <label>:15:                                     ; preds = %14
  br label %16, !dbg !1178, !llvm.loop !1179

; <label>:16:                                     ; preds = %15
  %17 = load i8*, i8** %5, align 8, !dbg !1180
  %18 = icmp ne i8* %17, null, !dbg !1184
  br i1 %18, label %19, label %20, !dbg !1180

; <label>:19:                                     ; preds = %16
  br label %21, !dbg !1185

; <label>:20:                                     ; preds = %16
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.notifylist_ison_serverlist, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0)), !dbg !1188
  store %struct._IRC_SERVER_REC* null, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1191
  br label %64, !dbg !1191

; <label>:21:                                     ; preds = %19
  br label %22, !dbg !1192

; <label>:22:                                     ; preds = %21
  %23 = load i8*, i8** %5, align 8, !dbg !1194
  %24 = call noalias i8** @g_strsplit(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i32 -1), !dbg !1195
  store i8** %24, i8*** %7, align 8, !dbg !1196
  store %struct._IRC_SERVER_REC* null, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1197
  %25 = load i8**, i8*** %7, align 8, !dbg !1198
  store i8** %25, i8*** %8, align 8, !dbg !1200
  br label %26, !dbg !1201

; <label>:26:                                     ; preds = %52, %22
  %27 = load i8**, i8*** %8, align 8, !dbg !1202
  %28 = load i8*, i8** %27, align 8, !dbg !1205
  %29 = icmp ne i8* %28, null, !dbg !1206
  br i1 %29, label %30, label %55, !dbg !1207

; <label>:30:                                     ; preds = %26
  %31 = load i8**, i8*** %8, align 8, !dbg !1208
  %32 = load i8*, i8** %31, align 8, !dbg !1210
  %33 = call %struct._SERVER_REC* @server_find_chatnet(i8* %32), !dbg !1211
  %34 = bitcast %struct._SERVER_REC* %33 to %struct._IRC_SERVER_REC*, !dbg !1212
  store %struct._IRC_SERVER_REC* %34, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1213
  %35 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1214
  %36 = bitcast %struct._IRC_SERVER_REC* %35 to i8*, !dbg !1214
  %37 = call i8* @module_check_cast(i8* %36, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0)), !dbg !1216
  %38 = bitcast i8* %37 to %struct._SERVER_REC*, !dbg !1217
  %39 = bitcast %struct._SERVER_REC* %38 to i8*, !dbg !1218
  %40 = call i8* @chat_protocol_check_cast(i8* %39, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0)), !dbg !1219
  %41 = bitcast i8* %40 to %struct._IRC_SERVER_REC*, !dbg !1221
  %42 = icmp ne %struct._IRC_SERVER_REC* %41, null, !dbg !1221
  br i1 %42, label %43, label %44, !dbg !1222

; <label>:43:                                     ; preds = %30
  br i1 false, label %51, label %45, !dbg !1223

; <label>:44:                                     ; preds = %30
  br i1 false, label %45, label %51, !dbg !1225

; <label>:45:                                     ; preds = %44, %43
  %46 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1227
  %47 = load i8*, i8** %4, align 8, !dbg !1228
  %48 = call i32 @notifylist_ison_server(%struct._IRC_SERVER_REC* %46, i8* %47), !dbg !1229
  %49 = icmp ne i32 %48, 0, !dbg !1229
  br i1 %49, label %50, label %51, !dbg !1230

; <label>:50:                                     ; preds = %45
  br label %55, !dbg !1232

; <label>:51:                                     ; preds = %45, %44, %43
  br label %52, !dbg !1233

; <label>:52:                                     ; preds = %51
  %53 = load i8**, i8*** %8, align 8, !dbg !1234
  %54 = getelementptr inbounds i8*, i8** %53, i32 1, !dbg !1234
  store i8** %54, i8*** %8, align 8, !dbg !1234
  br label %26, !dbg !1236, !llvm.loop !1237

; <label>:55:                                     ; preds = %50, %26
  %56 = load i8**, i8*** %7, align 8, !dbg !1239
  call void @g_strfreev(i8** %56), !dbg !1240
  %57 = load i8**, i8*** %8, align 8, !dbg !1241
  %58 = icmp eq i8** %57, null, !dbg !1242
  br i1 %58, label %59, label %60, !dbg !1241

; <label>:59:                                     ; preds = %55
  br label %62, !dbg !1243

; <label>:60:                                     ; preds = %55
  %61 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1245
  br label %62, !dbg !1247

; <label>:62:                                     ; preds = %60, %59
  %63 = phi %struct._IRC_SERVER_REC* [ null, %59 ], [ %61, %60 ], !dbg !1248
  store %struct._IRC_SERVER_REC* %63, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1250
  br label %64, !dbg !1250

; <label>:64:                                     ; preds = %62, %20, %13
  %65 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1251
  ret %struct._IRC_SERVER_REC* %65, !dbg !1251
}

; Function Attrs: nounwind uwtable
define void @notifylist_left(%struct._IRC_SERVER_REC*, %struct.NOTIFY_NICK_REC*) #0 !dbg !1252 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca %struct.NOTIFY_NICK_REC*, align 8
  %5 = alloca %struct.MODULE_SERVER_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1255, metadata !697), !dbg !1256
  store %struct.NOTIFY_NICK_REC* %1, %struct.NOTIFY_NICK_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.NOTIFY_NICK_REC** %4, metadata !1257, metadata !697), !dbg !1258
  call void @llvm.dbg.declare(metadata %struct.MODULE_SERVER_REC** %5, metadata !1259, metadata !697), !dbg !1260
  %6 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1261
  %7 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %6, i32 0, i32 15, !dbg !1262
  %8 = load %struct._GHashTable*, %struct._GHashTable** %7, align 8, !dbg !1262
  %9 = call i8* @g_hash_table_lookup(%struct._GHashTable* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0)), !dbg !1263
  %10 = bitcast i8* %9 to %struct.MODULE_SERVER_REC*, !dbg !1263
  store %struct.MODULE_SERVER_REC* %10, %struct.MODULE_SERVER_REC** %5, align 8, !dbg !1264
  %11 = load %struct.MODULE_SERVER_REC*, %struct.MODULE_SERVER_REC** %5, align 8, !dbg !1265
  %12 = getelementptr inbounds %struct.MODULE_SERVER_REC, %struct.MODULE_SERVER_REC* %11, i32 0, i32 1, !dbg !1266
  %13 = load %struct._GSList*, %struct._GSList** %12, align 8, !dbg !1266
  %14 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %4, align 8, !dbg !1267
  %15 = bitcast %struct.NOTIFY_NICK_REC* %14 to i8*, !dbg !1267
  %16 = call %struct._GSList* @g_slist_remove(%struct._GSList* %13, i8* %15), !dbg !1268
  %17 = load %struct.MODULE_SERVER_REC*, %struct.MODULE_SERVER_REC** %5, align 8, !dbg !1269
  %18 = getelementptr inbounds %struct.MODULE_SERVER_REC, %struct.MODULE_SERVER_REC* %17, i32 0, i32 1, !dbg !1270
  store %struct._GSList* %16, %struct._GSList** %18, align 8, !dbg !1271
  %19 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %4, align 8, !dbg !1272
  %20 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %19, i32 0, i32 5, !dbg !1274
  %21 = load i8, i8* %20, align 8, !dbg !1274
  %22 = and i8 %21, 1, !dbg !1274
  %23 = zext i8 %22 to i32, !dbg !1274
  %24 = icmp ne i32 %23, 0, !dbg !1272
  br i1 %24, label %25, label %51, !dbg !1275

; <label>:25:                                     ; preds = %2
  %26 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %4, align 8, !dbg !1276
  %27 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %26, i32 0, i32 5, !dbg !1278
  %28 = load i8, i8* %27, align 8, !dbg !1278
  %29 = lshr i8 %28, 1, !dbg !1278
  %30 = and i8 %29, 1, !dbg !1278
  %31 = zext i8 %30 to i32, !dbg !1278
  %32 = icmp ne i32 %31, 0, !dbg !1276
  br i1 %32, label %33, label %51, !dbg !1279

; <label>:33:                                     ; preds = %25
  %34 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1280
  %35 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %4, align 8, !dbg !1282
  %36 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %35, i32 0, i32 0, !dbg !1283
  %37 = load i8*, i8** %36, align 8, !dbg !1283
  %38 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %4, align 8, !dbg !1284
  %39 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %38, i32 0, i32 1, !dbg !1285
  %40 = load i8*, i8** %39, align 8, !dbg !1285
  %41 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %4, align 8, !dbg !1286
  %42 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %41, i32 0, i32 2, !dbg !1287
  %43 = load i8*, i8** %42, align 8, !dbg !1287
  %44 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %4, align 8, !dbg !1288
  %45 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %44, i32 0, i32 3, !dbg !1289
  %46 = load i8*, i8** %45, align 8, !dbg !1289
  %47 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %4, align 8, !dbg !1290
  %48 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %47, i32 0, i32 4, !dbg !1291
  %49 = load i8*, i8** %48, align 8, !dbg !1291
  %50 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i32 6, %struct._IRC_SERVER_REC* %34, i8* %37, i8* %40, i8* %43, i8* %46, i8* %49), !dbg !1292
  br label %51, !dbg !1293

; <label>:51:                                     ; preds = %33, %25, %2
  %52 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %4, align 8, !dbg !1294
  call void @notify_nick_destroy(%struct.NOTIFY_NICK_REC* %52), !dbg !1295
  ret void, !dbg !1296
}

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #2

declare void @notify_nick_destroy(%struct.NOTIFY_NICK_REC*) #2

; Function Attrs: nounwind uwtable
define void @irc_notifylist_init() #0 !dbg !1297 {
  call void @notifylist_read_config(), !dbg !1298
  call void @notifylist_commands_init(), !dbg !1299
  call void @notifylist_ison_init(), !dbg !1300
  call void @notifylist_whois_init(), !dbg !1301
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @notifylist_init_server to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1302
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @notifylist_deinit_server to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1303
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_quit to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1304
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_privmsg to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1305
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_join to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1306
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_CHANNEL_REC*)* @sig_channel_wholist to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1307
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @notifylist_read_config to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1308
  call void @settings_check_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0)), !dbg !1309
  %1 = call %struct.MODULE_FILE_REC* @module_register_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0)), !dbg !1310
  ret void, !dbg !1311
}

declare void @notifylist_read_config() #2

declare void @notifylist_commands_init() #2

declare void @notifylist_ison_init() #2

declare void @notifylist_whois_init() #2

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @notifylist_init_server(%struct._IRC_SERVER_REC*) #0 !dbg !1312 {
  %2 = alloca %struct._IRC_SERVER_REC*, align 8
  %3 = alloca %struct.MODULE_SERVER_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %2, metadata !1315, metadata !697), !dbg !1316
  call void @llvm.dbg.declare(metadata %struct.MODULE_SERVER_REC** %3, metadata !1317, metadata !697), !dbg !1318
  br label %4, !dbg !1319, !llvm.loop !1320

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1321
  %6 = icmp ne %struct._IRC_SERVER_REC* %5, null, !dbg !1325
  br i1 %6, label %7, label %8, !dbg !1321

; <label>:7:                                      ; preds = %4
  br label %9, !dbg !1326

; <label>:8:                                      ; preds = %4
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.notifylist_init_server, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0)), !dbg !1329
  br label %31, !dbg !1332

; <label>:9:                                      ; preds = %7
  br label %10, !dbg !1333

; <label>:10:                                     ; preds = %9
  %11 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1335
  %12 = bitcast %struct._IRC_SERVER_REC* %11 to i8*, !dbg !1335
  %13 = call i8* @module_check_cast(i8* %12, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0)), !dbg !1337
  %14 = bitcast i8* %13 to %struct._SERVER_REC*, !dbg !1338
  %15 = bitcast %struct._SERVER_REC* %14 to i8*, !dbg !1339
  %16 = call i8* @chat_protocol_check_cast(i8* %15, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0)), !dbg !1340
  %17 = bitcast i8* %16 to %struct._IRC_SERVER_REC*, !dbg !1342
  %18 = icmp ne %struct._IRC_SERVER_REC* %17, null, !dbg !1342
  br i1 %18, label %19, label %20, !dbg !1343

; <label>:19:                                     ; preds = %10
  br i1 false, label %21, label %22, !dbg !1344

; <label>:20:                                     ; preds = %10
  br i1 false, label %22, label %21, !dbg !1346

; <label>:21:                                     ; preds = %20, %19
  br label %31, !dbg !1348

; <label>:22:                                     ; preds = %20, %19
  %23 = call noalias i8* @g_malloc0_n(i64 1, i64 24), !dbg !1349
  %24 = bitcast i8* %23 to %struct.MODULE_SERVER_REC*, !dbg !1350
  store %struct.MODULE_SERVER_REC* %24, %struct.MODULE_SERVER_REC** %3, align 8, !dbg !1351
  %25 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1352
  %26 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %25, i32 0, i32 15, !dbg !1353
  %27 = load %struct._GHashTable*, %struct._GHashTable** %26, align 8, !dbg !1353
  %28 = load %struct.MODULE_SERVER_REC*, %struct.MODULE_SERVER_REC** %3, align 8, !dbg !1354
  %29 = bitcast %struct.MODULE_SERVER_REC* %28 to i8*, !dbg !1354
  %30 = call i32 @g_hash_table_insert(%struct._GHashTable* %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* %29), !dbg !1355
  br label %31, !dbg !1356

; <label>:31:                                     ; preds = %22, %21, %8
  ret void, !dbg !1357
}

; Function Attrs: nounwind uwtable
define internal void @notifylist_deinit_server(%struct._IRC_SERVER_REC*) #0 !dbg !1359 {
  %2 = alloca %struct._IRC_SERVER_REC*, align 8
  %3 = alloca %struct.MODULE_SERVER_REC*, align 8
  %4 = alloca %struct.NOTIFY_NICK_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %2, metadata !1360, metadata !697), !dbg !1361
  call void @llvm.dbg.declare(metadata %struct.MODULE_SERVER_REC** %3, metadata !1362, metadata !697), !dbg !1363
  call void @llvm.dbg.declare(metadata %struct.NOTIFY_NICK_REC** %4, metadata !1364, metadata !697), !dbg !1365
  br label %5, !dbg !1366, !llvm.loop !1367

; <label>:5:                                      ; preds = %1
  %6 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1368
  %7 = icmp ne %struct._IRC_SERVER_REC* %6, null, !dbg !1372
  br i1 %7, label %8, label %9, !dbg !1368

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !1373

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.notifylist_deinit_server, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0)), !dbg !1376
  br label %57, !dbg !1379

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !1380

; <label>:11:                                     ; preds = %10
  %12 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1382
  %13 = bitcast %struct._IRC_SERVER_REC* %12 to i8*, !dbg !1382
  %14 = call i8* @module_check_cast(i8* %13, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0)), !dbg !1384
  %15 = bitcast i8* %14 to %struct._SERVER_REC*, !dbg !1385
  %16 = bitcast %struct._SERVER_REC* %15 to i8*, !dbg !1386
  %17 = call i8* @chat_protocol_check_cast(i8* %16, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0)), !dbg !1387
  %18 = bitcast i8* %17 to %struct._IRC_SERVER_REC*, !dbg !1389
  %19 = icmp ne %struct._IRC_SERVER_REC* %18, null, !dbg !1389
  br i1 %19, label %20, label %21, !dbg !1390

; <label>:20:                                     ; preds = %11
  br i1 false, label %22, label %23, !dbg !1391

; <label>:21:                                     ; preds = %11
  br i1 false, label %23, label %22, !dbg !1393

; <label>:22:                                     ; preds = %21, %20
  br label %57, !dbg !1395

; <label>:23:                                     ; preds = %21, %20
  %24 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1396
  %25 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %24, i32 0, i32 15, !dbg !1397
  %26 = load %struct._GHashTable*, %struct._GHashTable** %25, align 8, !dbg !1397
  %27 = call i8* @g_hash_table_lookup(%struct._GHashTable* %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0)), !dbg !1398
  %28 = bitcast i8* %27 to %struct.MODULE_SERVER_REC*, !dbg !1398
  store %struct.MODULE_SERVER_REC* %28, %struct.MODULE_SERVER_REC** %3, align 8, !dbg !1399
  br label %29, !dbg !1400

; <label>:29:                                     ; preds = %34, %23
  %30 = load %struct.MODULE_SERVER_REC*, %struct.MODULE_SERVER_REC** %3, align 8, !dbg !1401
  %31 = getelementptr inbounds %struct.MODULE_SERVER_REC, %struct.MODULE_SERVER_REC* %30, i32 0, i32 1, !dbg !1403
  %32 = load %struct._GSList*, %struct._GSList** %31, align 8, !dbg !1403
  %33 = icmp ne %struct._GSList* %32, null, !dbg !1404
  br i1 %33, label %34, label %50, !dbg !1405

; <label>:34:                                     ; preds = %29
  %35 = load %struct.MODULE_SERVER_REC*, %struct.MODULE_SERVER_REC** %3, align 8, !dbg !1406
  %36 = getelementptr inbounds %struct.MODULE_SERVER_REC, %struct.MODULE_SERVER_REC* %35, i32 0, i32 1, !dbg !1408
  %37 = load %struct._GSList*, %struct._GSList** %36, align 8, !dbg !1408
  %38 = getelementptr inbounds %struct._GSList, %struct._GSList* %37, i32 0, i32 0, !dbg !1409
  %39 = load i8*, i8** %38, align 8, !dbg !1409
  %40 = bitcast i8* %39 to %struct.NOTIFY_NICK_REC*, !dbg !1406
  store %struct.NOTIFY_NICK_REC* %40, %struct.NOTIFY_NICK_REC** %4, align 8, !dbg !1410
  %41 = load %struct.MODULE_SERVER_REC*, %struct.MODULE_SERVER_REC** %3, align 8, !dbg !1411
  %42 = getelementptr inbounds %struct.MODULE_SERVER_REC, %struct.MODULE_SERVER_REC* %41, i32 0, i32 1, !dbg !1412
  %43 = load %struct._GSList*, %struct._GSList** %42, align 8, !dbg !1412
  %44 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %4, align 8, !dbg !1413
  %45 = bitcast %struct.NOTIFY_NICK_REC* %44 to i8*, !dbg !1413
  %46 = call %struct._GSList* @g_slist_remove(%struct._GSList* %43, i8* %45), !dbg !1414
  %47 = load %struct.MODULE_SERVER_REC*, %struct.MODULE_SERVER_REC** %3, align 8, !dbg !1415
  %48 = getelementptr inbounds %struct.MODULE_SERVER_REC, %struct.MODULE_SERVER_REC* %47, i32 0, i32 1, !dbg !1416
  store %struct._GSList* %46, %struct._GSList** %48, align 8, !dbg !1417
  %49 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %4, align 8, !dbg !1418
  call void @notify_nick_destroy(%struct.NOTIFY_NICK_REC* %49), !dbg !1419
  br label %29, !dbg !1420, !llvm.loop !1421

; <label>:50:                                     ; preds = %29
  %51 = load %struct.MODULE_SERVER_REC*, %struct.MODULE_SERVER_REC** %3, align 8, !dbg !1422
  %52 = bitcast %struct.MODULE_SERVER_REC* %51 to i8*, !dbg !1422
  call void @g_free(i8* %52), !dbg !1423
  %53 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1424
  %54 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %53, i32 0, i32 15, !dbg !1425
  %55 = load %struct._GHashTable*, %struct._GHashTable** %54, align 8, !dbg !1425
  %56 = call i32 @g_hash_table_remove(%struct._GHashTable* %55, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0)), !dbg !1426
  br label %57, !dbg !1427

; <label>:57:                                     ; preds = %50, %22, %9
  ret void, !dbg !1428
}

; Function Attrs: nounwind uwtable
define internal void @event_quit(%struct._IRC_SERVER_REC*, i8*, i8*) #0 !dbg !1429 {
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.NOTIFY_NICK_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !1432, metadata !697), !dbg !1433
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1434, metadata !697), !dbg !1435
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1436, metadata !697), !dbg !1437
  call void @llvm.dbg.declare(metadata %struct.NOTIFY_NICK_REC** %7, metadata !1438, metadata !697), !dbg !1439
  %8 = load i8*, i8** %5, align 8, !dbg !1440
  %9 = load i8, i8* %8, align 1, !dbg !1442
  %10 = sext i8 %9 to i32, !dbg !1442
  %11 = icmp eq i32 %10, 58, !dbg !1443
  br i1 %11, label %12, label %15, !dbg !1444

; <label>:12:                                     ; preds = %3
  %13 = load i8*, i8** %5, align 8, !dbg !1445
  %14 = getelementptr inbounds i8, i8* %13, i32 1, !dbg !1445
  store i8* %14, i8** %5, align 8, !dbg !1445
  br label %15, !dbg !1447

; <label>:15:                                     ; preds = %12, %3
  %16 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1448
  %17 = load i8*, i8** %6, align 8, !dbg !1449
  %18 = call %struct.NOTIFY_NICK_REC* @notify_nick_find(%struct._IRC_SERVER_REC* %16, i8* %17), !dbg !1450
  store %struct.NOTIFY_NICK_REC* %18, %struct.NOTIFY_NICK_REC** %7, align 8, !dbg !1451
  %19 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %7, align 8, !dbg !1452
  %20 = icmp ne %struct.NOTIFY_NICK_REC* %19, null, !dbg !1454
  br i1 %20, label %21, label %24, !dbg !1455

; <label>:21:                                     ; preds = %15
  %22 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1456
  %23 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %7, align 8, !dbg !1458
  call void @notifylist_left(%struct._IRC_SERVER_REC* %22, %struct.NOTIFY_NICK_REC* %23), !dbg !1459
  br label %24, !dbg !1459

; <label>:24:                                     ; preds = %21, %15
  ret void, !dbg !1460
}

; Function Attrs: nounwind uwtable
define internal void @event_privmsg(%struct._IRC_SERVER_REC*, i8*, i8*, i8*) #0 !dbg !1461 {
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !1464, metadata !697), !dbg !1465
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1466, metadata !697), !dbg !1467
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1468, metadata !697), !dbg !1469
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1470, metadata !697), !dbg !1471
  %9 = load i8*, i8** %7, align 8, !dbg !1472
  %10 = icmp ne i8* %9, null, !dbg !1474
  br i1 %10, label %11, label %15, !dbg !1475

; <label>:11:                                     ; preds = %4
  %12 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1476
  %13 = load i8*, i8** %7, align 8, !dbg !1478
  %14 = load i8*, i8** %8, align 8, !dbg !1479
  call void @notifylist_check_join(%struct._IRC_SERVER_REC* %12, i8* %13, i8* %14, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i32 0, i32 0), i32 -1), !dbg !1480
  br label %15, !dbg !1481

; <label>:15:                                     ; preds = %11, %4
  ret void, !dbg !1482
}

; Function Attrs: nounwind uwtable
define internal void @event_join(%struct._IRC_SERVER_REC*, i8*, i8*, i8*) #0 !dbg !1483 {
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !1484, metadata !697), !dbg !1485
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1486, metadata !697), !dbg !1487
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1488, metadata !697), !dbg !1489
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1490, metadata !697), !dbg !1491
  %9 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1492
  %10 = load i8*, i8** %7, align 8, !dbg !1493
  %11 = load i8*, i8** %8, align 8, !dbg !1494
  call void @notifylist_check_join(%struct._IRC_SERVER_REC* %9, i8* %10, i8* %11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i32 0, i32 0), i32 -1), !dbg !1495
  ret void, !dbg !1496
}

; Function Attrs: nounwind uwtable
define internal void @sig_channel_wholist(%struct._IRC_CHANNEL_REC*) #0 !dbg !1497 {
  %2 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct._NICK_REC*, align 8
  store %struct._IRC_CHANNEL_REC* %0, %struct._IRC_CHANNEL_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %2, metadata !1500, metadata !697), !dbg !1501
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !1502, metadata !697), !dbg !1503
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !1504, metadata !697), !dbg !1505
  %6 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %2, align 8, !dbg !1506
  %7 = bitcast %struct._IRC_CHANNEL_REC* %6 to i8*, !dbg !1506
  %8 = call i8* @module_check_cast_module(i8* %7, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0)), !dbg !1507
  %9 = bitcast i8* %8 to %struct._CHANNEL_REC*, !dbg !1508
  %10 = call %struct._GSList* @nicklist_getnicks(%struct._CHANNEL_REC* %9), !dbg !1509
  store %struct._GSList* %10, %struct._GSList** %3, align 8, !dbg !1511
  %11 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1512
  store %struct._GSList* %11, %struct._GSList** %4, align 8, !dbg !1514
  br label %12, !dbg !1515

; <label>:12:                                     ; preds = %37, %1
  %13 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1516
  %14 = icmp ne %struct._GSList* %13, null, !dbg !1519
  br i1 %14, label %15, label %41, !dbg !1520

; <label>:15:                                     ; preds = %12
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %5, metadata !1521, metadata !697), !dbg !1523
  %16 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1524
  %17 = getelementptr inbounds %struct._GSList, %struct._GSList* %16, i32 0, i32 0, !dbg !1525
  %18 = load i8*, i8** %17, align 8, !dbg !1525
  %19 = bitcast i8* %18 to %struct._NICK_REC*, !dbg !1524
  store %struct._NICK_REC* %19, %struct._NICK_REC** %5, align 8, !dbg !1523
  %20 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %2, align 8, !dbg !1526
  %21 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %20, i32 0, i32 4, !dbg !1527
  %22 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %21, align 8, !dbg !1527
  %23 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !1528
  %24 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %23, i32 0, i32 3, !dbg !1529
  %25 = load i8*, i8** %24, align 8, !dbg !1529
  %26 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !1530
  %27 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %26, i32 0, i32 4, !dbg !1531
  %28 = load i8*, i8** %27, align 8, !dbg !1531
  %29 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !1532
  %30 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %29, i32 0, i32 5, !dbg !1533
  %31 = load i8*, i8** %30, align 8, !dbg !1533
  %32 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !1534
  %33 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %32, i32 0, i32 7, !dbg !1535
  %34 = load i8, i8* %33, align 4, !dbg !1535
  %35 = and i8 %34, 1, !dbg !1535
  %36 = zext i8 %35 to i32, !dbg !1535
  call void @notifylist_check_join(%struct._IRC_SERVER_REC* %22, i8* %25, i8* %28, i8* %31, i32 %36), !dbg !1536
  br label %37, !dbg !1537

; <label>:37:                                     ; preds = %15
  %38 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1538
  %39 = getelementptr inbounds %struct._GSList, %struct._GSList* %38, i32 0, i32 1, !dbg !1540
  %40 = load %struct._GSList*, %struct._GSList** %39, align 8, !dbg !1540
  store %struct._GSList* %40, %struct._GSList** %4, align 8, !dbg !1541
  br label %12, !dbg !1542, !llvm.loop !1543

; <label>:41:                                     ; preds = %12
  %42 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1545
  call void @g_slist_free(%struct._GSList* %42), !dbg !1546
  ret void, !dbg !1547
}

declare void @settings_check_module(i8*) #2

declare %struct.MODULE_FILE_REC* @module_register_full(i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @irc_notifylist_deinit() #0 !dbg !1548 {
  call void @notifylist_commands_deinit(), !dbg !1549
  call void @notifylist_ison_deinit(), !dbg !1550
  call void @notifylist_whois_deinit(), !dbg !1551
  call void @signal_remove_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @notifylist_init_server to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1552
  call void @signal_remove_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @notifylist_deinit_server to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1553
  call void @signal_remove_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_quit to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1554
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_privmsg to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1555
  call void @signal_remove_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_join to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1556
  call void @signal_remove_full(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_CHANNEL_REC*)* @sig_channel_wholist to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1557
  call void @signal_remove_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @notifylist_read_config to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1558
  call void @notifylist_destroy_all(), !dbg !1559
  ret void, !dbg !1560
}

declare void @notifylist_commands_deinit() #2

declare void @notifylist_ison_deinit() #2

declare void @notifylist_whois_deinit() #2

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare void @g_strfreev(i8**) #2

declare void @g_free(i8*) #2

declare %struct._SERVER_REC* @server_find_chatnet(i8*) #2

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #2

declare i32 @g_hash_table_remove(%struct._GHashTable*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @notifylist_check_join(%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i32) #0 !dbg !1561 {
  %6 = alloca %struct._IRC_SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.NOTIFYLIST_REC*, align 8
  %12 = alloca %struct.NOTIFY_NICK_REC*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %6, metadata !1564, metadata !697), !dbg !1565
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1566, metadata !697), !dbg !1567
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1568, metadata !697), !dbg !1569
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1570, metadata !697), !dbg !1571
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1572, metadata !697), !dbg !1573
  call void @llvm.dbg.declare(metadata %struct.NOTIFYLIST_REC** %11, metadata !1574, metadata !697), !dbg !1575
  call void @llvm.dbg.declare(metadata %struct.NOTIFY_NICK_REC** %12, metadata !1576, metadata !697), !dbg !1577
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1578, metadata !697), !dbg !1579
  call void @llvm.dbg.declare(metadata i8** %14, metadata !1580, metadata !697), !dbg !1581
  %15 = load i8*, i8** %7, align 8, !dbg !1582
  %16 = icmp eq i8* %15, null, !dbg !1584
  br i1 %16, label %17, label %18, !dbg !1585

; <label>:17:                                     ; preds = %5
  br label %192, !dbg !1586

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %7, align 8, !dbg !1587
  %20 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1588
  %21 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %20, i32 0, i32 3, !dbg !1589
  %22 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %21, align 8, !dbg !1589
  %23 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %22, i32 0, i32 12, !dbg !1590
  %24 = load i8*, i8** %23, align 8, !dbg !1590
  %25 = call %struct.NOTIFYLIST_REC* @notifylist_find(i8* %19, i8* %24), !dbg !1591
  store %struct.NOTIFYLIST_REC* %25, %struct.NOTIFYLIST_REC** %11, align 8, !dbg !1592
  %26 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %11, align 8, !dbg !1593
  %27 = icmp eq %struct.NOTIFYLIST_REC* %26, null, !dbg !1595
  br i1 %27, label %28, label %29, !dbg !1596

; <label>:28:                                     ; preds = %18
  br label %192, !dbg !1597

; <label>:29:                                     ; preds = %18
  %30 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1599
  %31 = load i8*, i8** %7, align 8, !dbg !1600
  %32 = call %struct.NOTIFY_NICK_REC* @notify_nick_find(%struct._IRC_SERVER_REC* %30, i8* %31), !dbg !1601
  store %struct.NOTIFY_NICK_REC* %32, %struct.NOTIFY_NICK_REC** %12, align 8, !dbg !1602
  %33 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %12, align 8, !dbg !1603
  %34 = icmp ne %struct.NOTIFY_NICK_REC* %33, null, !dbg !1605
  br i1 %34, label %35, label %44, !dbg !1606

; <label>:35:                                     ; preds = %29
  %36 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %12, align 8, !dbg !1607
  %37 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %36, i32 0, i32 5, !dbg !1609
  %38 = load i8, i8* %37, align 8, !dbg !1609
  %39 = lshr i8 %38, 3, !dbg !1609
  %40 = and i8 %39, 1, !dbg !1609
  %41 = zext i8 %40 to i32, !dbg !1609
  %42 = icmp ne i32 %41, 0, !dbg !1607
  br i1 %42, label %43, label %44, !dbg !1610

; <label>:43:                                     ; preds = %35
  br label %192, !dbg !1611

; <label>:44:                                     ; preds = %35, %29
  %45 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %12, align 8, !dbg !1613
  %46 = icmp eq %struct.NOTIFY_NICK_REC* %45, null, !dbg !1615
  br i1 %46, label %47, label %51, !dbg !1616

; <label>:47:                                     ; preds = %44
  %48 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1617
  %49 = load i8*, i8** %7, align 8, !dbg !1619
  %50 = call %struct.NOTIFY_NICK_REC* @notify_nick_create(%struct._IRC_SERVER_REC* %48, i8* %49), !dbg !1620
  store %struct.NOTIFY_NICK_REC* %50, %struct.NOTIFY_NICK_REC** %12, align 8, !dbg !1621
  br label %51, !dbg !1622

; <label>:51:                                     ; preds = %47, %44
  %52 = load i8*, i8** %8, align 8, !dbg !1623
  %53 = icmp eq i8* %52, null, !dbg !1624
  br i1 %53, label %54, label %55, !dbg !1623

; <label>:54:                                     ; preds = %51
  br label %57, !dbg !1625

; <label>:55:                                     ; preds = %51
  %56 = load i8*, i8** %8, align 8, !dbg !1627
  br label %57, !dbg !1629

; <label>:57:                                     ; preds = %55, %54
  %58 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i32 0, i32 0), %54 ], [ %56, %55 ], !dbg !1630
  %59 = call noalias i8* @g_strdup(i8* %58), !dbg !1632
  store i8* %59, i8** %13, align 8, !dbg !1633
  %60 = load i8*, i8** %13, align 8, !dbg !1634
  %61 = call i8* @strchr(i8* %60, i32 64) #4, !dbg !1635
  store i8* %61, i8** %14, align 8, !dbg !1636
  %62 = load i8*, i8** %14, align 8, !dbg !1637
  %63 = icmp ne i8* %62, null, !dbg !1639
  br i1 %63, label %64, label %67, !dbg !1640

; <label>:64:                                     ; preds = %57
  %65 = load i8*, i8** %14, align 8, !dbg !1641
  %66 = getelementptr inbounds i8, i8* %65, i32 1, !dbg !1641
  store i8* %66, i8** %14, align 8, !dbg !1641
  store i8 0, i8* %65, align 1, !dbg !1643
  br label %68, !dbg !1644

; <label>:67:                                     ; preds = %57
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i32 0, i32 0), i8** %14, align 8, !dbg !1645
  br label %68

; <label>:68:                                     ; preds = %67, %64
  %69 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1647
  %70 = bitcast %struct._IRC_SERVER_REC* %69 to i8*, !dbg !1647
  %71 = call i8* @module_check_cast(i8* %70, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0)), !dbg !1649
  %72 = bitcast i8* %71 to %struct._SERVER_REC*, !dbg !1650
  %73 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %11, align 8, !dbg !1651
  %74 = getelementptr inbounds %struct.NOTIFYLIST_REC, %struct.NOTIFYLIST_REC* %73, i32 0, i32 0, !dbg !1652
  %75 = load i8*, i8** %74, align 8, !dbg !1652
  %76 = load i8*, i8** %7, align 8, !dbg !1653
  %77 = load i8*, i8** %13, align 8, !dbg !1654
  %78 = load i8*, i8** %14, align 8, !dbg !1655
  %79 = call i32 @mask_match(%struct._SERVER_REC* %72, i8* %75, i8* %76, i8* %77, i8* %78), !dbg !1656
  %80 = icmp ne i32 %79, 0, !dbg !1658
  br i1 %80, label %83, label %81, !dbg !1659

; <label>:81:                                     ; preds = %68
  %82 = load i8*, i8** %13, align 8, !dbg !1660
  call void @g_free(i8* %82), !dbg !1662
  br label %192, !dbg !1663

; <label>:83:                                     ; preds = %68
  %84 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %11, align 8, !dbg !1664
  %85 = getelementptr inbounds %struct.NOTIFYLIST_REC, %struct.NOTIFYLIST_REC* %84, i32 0, i32 2, !dbg !1666
  %86 = load i8, i8* %85, align 8, !dbg !1666
  %87 = and i8 %86, 1, !dbg !1666
  %88 = zext i8 %87 to i32, !dbg !1666
  %89 = icmp ne i32 %88, 0, !dbg !1664
  br i1 %89, label %90, label %95, !dbg !1667

; <label>:90:                                     ; preds = %83
  %91 = load i32, i32* %10, align 4, !dbg !1668
  %92 = icmp eq i32 %91, -1, !dbg !1670
  br i1 %92, label %93, label %95, !dbg !1671

; <label>:93:                                     ; preds = %90
  %94 = load i8*, i8** %13, align 8, !dbg !1672
  call void @g_free(i8* %94), !dbg !1674
  br label %192, !dbg !1675

; <label>:95:                                     ; preds = %90, %83
  %96 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %12, align 8, !dbg !1676
  %97 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %96, i32 0, i32 1, !dbg !1677
  %98 = load i8*, i8** %97, align 8, !dbg !1677
  call void @g_free(i8* %98), !dbg !1678
  %99 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %12, align 8, !dbg !1679
  %100 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %99, i32 0, i32 2, !dbg !1680
  %101 = load i8*, i8** %100, align 8, !dbg !1680
  call void @g_free(i8* %101), !dbg !1681
  %102 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %12, align 8, !dbg !1682
  %103 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %102, i32 0, i32 3, !dbg !1683
  %104 = load i8*, i8** %103, align 8, !dbg !1683
  call void @g_free(i8* %104), !dbg !1684
  %105 = load i8*, i8** %13, align 8, !dbg !1685
  %106 = call noalias i8* @g_strdup(i8* %105), !dbg !1686
  %107 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %12, align 8, !dbg !1687
  %108 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %107, i32 0, i32 1, !dbg !1688
  store i8* %106, i8** %108, align 8, !dbg !1689
  %109 = load i8*, i8** %14, align 8, !dbg !1690
  %110 = call noalias i8* @g_strdup(i8* %109), !dbg !1691
  %111 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %12, align 8, !dbg !1692
  %112 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %111, i32 0, i32 2, !dbg !1693
  store i8* %110, i8** %112, align 8, !dbg !1694
  %113 = load i8*, i8** %9, align 8, !dbg !1695
  %114 = icmp eq i8* %113, null, !dbg !1696
  br i1 %114, label %120, label %115, !dbg !1697

; <label>:115:                                    ; preds = %95
  %116 = load i8*, i8** %9, align 8, !dbg !1698
  %117 = load i8, i8* %116, align 1, !dbg !1699
  %118 = sext i8 %117 to i32, !dbg !1699
  %119 = icmp eq i32 %118, 0, !dbg !1700
  br i1 %119, label %120, label %121, !dbg !1701

; <label>:120:                                    ; preds = %115, %95
  br label %124, !dbg !1702

; <label>:121:                                    ; preds = %115
  %122 = load i8*, i8** %9, align 8, !dbg !1703
  %123 = call noalias i8* @g_strdup(i8* %122), !dbg !1704
  br label %124, !dbg !1705

; <label>:124:                                    ; preds = %121, %120
  %125 = phi i8* [ null, %120 ], [ %123, %121 ], !dbg !1706
  %126 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %12, align 8, !dbg !1708
  %127 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %126, i32 0, i32 3, !dbg !1709
  store i8* %125, i8** %127, align 8, !dbg !1710
  %128 = load i32, i32* %10, align 4, !dbg !1711
  %129 = icmp ne i32 %128, -1, !dbg !1713
  br i1 %129, label %130, label %141, !dbg !1714

; <label>:130:                                    ; preds = %124
  %131 = load i32, i32* %10, align 4, !dbg !1715
  %132 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %12, align 8, !dbg !1717
  %133 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %132, i32 0, i32 5, !dbg !1718
  %134 = trunc i32 %131 to i8, !dbg !1719
  %135 = load i8, i8* %133, align 8, !dbg !1719
  %136 = and i8 %134, 1, !dbg !1719
  %137 = shl i8 %136, 2, !dbg !1719
  %138 = and i8 %135, -5, !dbg !1719
  %139 = or i8 %138, %137, !dbg !1719
  store i8 %139, i8* %133, align 8, !dbg !1719
  %140 = zext i8 %136 to i32, !dbg !1719
  br label %141, !dbg !1717

; <label>:141:                                    ; preds = %130, %124
  %142 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %12, align 8, !dbg !1720
  %143 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %142, i32 0, i32 5, !dbg !1721
  %144 = load i8, i8* %143, align 8, !dbg !1722
  %145 = and i8 %144, -2, !dbg !1722
  %146 = or i8 %145, 1, !dbg !1722
  store i8 %146, i8* %143, align 8, !dbg !1722
  %147 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %12, align 8, !dbg !1723
  %148 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %147, i32 0, i32 5, !dbg !1724
  %149 = load i8, i8* %148, align 8, !dbg !1725
  %150 = and i8 %149, -9, !dbg !1725
  %151 = or i8 %150, 8, !dbg !1725
  store i8 %151, i8* %148, align 8, !dbg !1725
  %152 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %11, align 8, !dbg !1726
  %153 = getelementptr inbounds %struct.NOTIFYLIST_REC, %struct.NOTIFYLIST_REC* %152, i32 0, i32 2, !dbg !1727
  %154 = load i8, i8* %153, align 8, !dbg !1727
  %155 = and i8 %154, 1, !dbg !1727
  %156 = zext i8 %155 to i32, !dbg !1727
  %157 = icmp ne i32 %156, 0, !dbg !1726
  br i1 %157, label %158, label %167, !dbg !1728

; <label>:158:                                    ; preds = %141
  %159 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %12, align 8, !dbg !1729
  %160 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %159, i32 0, i32 5, !dbg !1730
  %161 = load i8, i8* %160, align 8, !dbg !1730
  %162 = lshr i8 %161, 2, !dbg !1730
  %163 = and i8 %162, 1, !dbg !1730
  %164 = zext i8 %163 to i32, !dbg !1730
  %165 = icmp ne i32 %164, 0, !dbg !1731
  %166 = xor i1 %165, true, !dbg !1731
  br label %167, !dbg !1732

; <label>:167:                                    ; preds = %158, %141
  %168 = phi i1 [ true, %141 ], [ %166, %158 ]
  %169 = zext i1 %168 to i32, !dbg !1733
  %170 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %12, align 8, !dbg !1734
  %171 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %170, i32 0, i32 5, !dbg !1735
  %172 = trunc i32 %169 to i8, !dbg !1736
  %173 = load i8, i8* %171, align 8, !dbg !1736
  %174 = and i8 %172, 1, !dbg !1736
  %175 = shl i8 %174, 1, !dbg !1736
  %176 = and i8 %173, -3, !dbg !1736
  %177 = or i8 %176, %175, !dbg !1736
  store i8 %177, i8* %171, align 8, !dbg !1736
  %178 = zext i8 %174 to i32, !dbg !1736
  %179 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1737
  %180 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %12, align 8, !dbg !1738
  %181 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %180, i32 0, i32 0, !dbg !1739
  %182 = load i8*, i8** %181, align 8, !dbg !1739
  %183 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %12, align 8, !dbg !1740
  %184 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %183, i32 0, i32 1, !dbg !1741
  %185 = load i8*, i8** %184, align 8, !dbg !1741
  %186 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %12, align 8, !dbg !1742
  %187 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %186, i32 0, i32 2, !dbg !1743
  %188 = load i8*, i8** %187, align 8, !dbg !1743
  %189 = load i8*, i8** %9, align 8, !dbg !1744
  %190 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0), i32 6, %struct._IRC_SERVER_REC* %179, i8* %182, i8* %185, i8* %188, i8* %189, i8* null), !dbg !1745
  %191 = load i8*, i8** %13, align 8, !dbg !1746
  call void @g_free(i8* %191), !dbg !1747
  br label %192, !dbg !1748

; <label>:192:                                    ; preds = %167, %93, %81, %43, %28, %17
  ret void, !dbg !1749
}

declare %struct.NOTIFY_NICK_REC* @notify_nick_create(%struct._IRC_SERVER_REC*, i8*) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

declare i32 @mask_match(%struct._SERVER_REC*, i8*, i8*, i8*, i8*) #2

declare %struct._GSList* @nicklist_getnicks(%struct._CHANNEL_REC*) #2

declare i8* @module_check_cast_module(i8*, i32, i8*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!689, !690}
!llvm.ident = !{!691}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !35, globals: !686)
!1 = !DIFile(filename: "line190-notifylist.o.i", directory: "/home/lichi/Desktop/irssi/task1")
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
!35 = !{!36, !37, !41, !43, !54, !59, !365, !671, !678, !469}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !39, line: 46, baseType: !40)
!39 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!40 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "NOTIFYLIST_REC", file: !45, line: 10, baseType: !46)
!45 = !DIFile(filename: "notifylist.h", directory: "/home/lichi/Desktop/irssi/task1")
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 4, size: 192, align: 64, elements: !47)
!47 = !{!48, !50, !52}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !46, file: !45, line: 5, baseType: !49, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "ircnets", scope: !46, file: !45, line: 6, baseType: !51, size: 64, align: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "away_check", scope: !46, file: !45, line: 9, baseType: !53, size: 1, align: 32, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!53 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "GFunc", file: !39, line: 88, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{null, !58, !58}
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !39, line: 77, baseType: !36)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_REC", file: !61, line: 6, baseType: !62)
!61 = !DIFile(filename: "../../../src/irc/core/irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_REC", file: !63, line: 42, size: 39168, align: 64, elements: !64)
!63 = !DIFile(filename: "../../../src/irc/core/irc-servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!64 = !{!65, !68, !69, !70, !310, !315, !316, !317, !318, !319, !320, !321, !322, !323, !327, !328, !332, !333, !334, !338, !343, !344, !345, !346, !347, !348, !349, !350, !357, !358, !359, !360, !361, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !668, !670}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !62, file: !66, line: 3, baseType: !67, size: 32, align: 32)
!66 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!67 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !62, file: !66, line: 4, baseType: !67, size: 32, align: 32, offset: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !62, file: !66, line: 6, baseType: !67, size: 32, align: 32, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !62, file: !66, line: 8, baseType: !71, size: 64, align: 64, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_CONNECT_REC", file: !61, line: 5, baseType: !73)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_CONNECT_REC", file: !63, line: 24, size: 2496, align: 64, elements: !74)
!74 = !{!75, !77, !78, !79, !80, !81, !82, !83, !84, !86, !87, !88, !89, !90, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !73, file: !76, line: 3, baseType: !67, size: 32, align: 32)
!76 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!77 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !73, file: !76, line: 4, baseType: !67, size: 32, align: 32, offset: 32)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !73, file: !76, line: 6, baseType: !67, size: 32, align: 32, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !73, file: !76, line: 9, baseType: !49, size: 64, align: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !73, file: !76, line: 10, baseType: !67, size: 32, align: 32, offset: 192)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !73, file: !76, line: 11, baseType: !49, size: 64, align: 64, offset: 256)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !73, file: !76, line: 11, baseType: !49, size: 64, align: 64, offset: 320)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !73, file: !76, line: 11, baseType: !49, size: 64, align: 64, offset: 384)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !73, file: !76, line: 13, baseType: !85, size: 16, align: 16, offset: 448)
!85 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !73, file: !76, line: 14, baseType: !49, size: 64, align: 64, offset: 512)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !73, file: !76, line: 15, baseType: !49, size: 64, align: 64, offset: 576)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !73, file: !76, line: 16, baseType: !67, size: 32, align: 32, offset: 640)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !73, file: !76, line: 17, baseType: !49, size: 64, align: 64, offset: 704)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !73, file: !76, line: 19, baseType: !91, size: 64, align: 64, offset: 768)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !93, line: 99, baseType: !94)
!93 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!94 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !93, line: 99, flags: DIFlagFwdDecl)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !73, file: !76, line: 19, baseType: !91, size: 64, align: 64, offset: 832)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !73, file: !76, line: 21, baseType: !49, size: 64, align: 64, offset: 896)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !73, file: !76, line: 22, baseType: !49, size: 64, align: 64, offset: 960)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !73, file: !76, line: 23, baseType: !49, size: 64, align: 64, offset: 1024)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !73, file: !76, line: 24, baseType: !49, size: 64, align: 64, offset: 1088)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !73, file: !76, line: 26, baseType: !49, size: 64, align: 64, offset: 1152)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !73, file: !76, line: 27, baseType: !49, size: 64, align: 64, offset: 1216)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !73, file: !76, line: 28, baseType: !49, size: 64, align: 64, offset: 1280)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !73, file: !76, line: 29, baseType: !49, size: 64, align: 64, offset: 1344)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !73, file: !76, line: 30, baseType: !49, size: 64, align: 64, offset: 1408)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !73, file: !76, line: 31, baseType: !49, size: 64, align: 64, offset: 1472)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !73, file: !76, line: 32, baseType: !49, size: 64, align: 64, offset: 1536)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !73, file: !76, line: 33, baseType: !49, size: 64, align: 64, offset: 1600)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !73, file: !76, line: 35, baseType: !109, size: 64, align: 64, offset: 1664)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !111)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !112)
!112 = !{!113, !115, !255, !256, !261, !262, !263, !264, !265, !274, !275, !276, !280, !281, !282, !283, !284, !285, !286, !287}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !111, file: !4, line: 100, baseType: !114, size: 32, align: 32)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !39, line: 49, baseType: !67)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !111, file: !4, line: 101, baseType: !116, size: 64, align: 64, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64, align: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !118)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !119)
!119 = !{!120, !141, !147, !154, !158, !242, !246, !251}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !118, file: !4, line: 133, baseType: !121, size: 64, align: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{!124, !109, !37, !125, !128, !129}
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !126, line: 66, baseType: !127)
!126 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!127 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, align: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !132, line: 42, baseType: !133)
!132 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !132, line: 44, size: 128, align: 64, elements: !134)
!134 = !{!135, !139, !140}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !133, file: !132, line: 46, baseType: !136, size: 32, align: 32)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !137, line: 36, baseType: !138)
!137 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !126, line: 45, baseType: !53)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !133, file: !132, line: 47, baseType: !114, size: 32, align: 32, offset: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !133, file: !132, line: 48, baseType: !37, size: 64, align: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !118, file: !4, line: 138, baseType: !142, size: 64, align: 64, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64, align: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{!124, !109, !145, !125, !128, !129}
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64, align: 64)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !118, file: !4, line: 143, baseType: !148, size: 64, align: 64, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64, align: 64)
!149 = !DISubroutineType(types: !150)
!150 = !{!124, !109, !151, !153, !129}
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !126, line: 51, baseType: !152)
!152 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !118, file: !4, line: 147, baseType: !155, size: 64, align: 64, offset: 192)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64, align: 64)
!156 = !DISubroutineType(types: !157)
!157 = !{!124, !109, !129}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !118, file: !4, line: 149, baseType: !159, size: 64, align: 64, offset: 256)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64, align: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{!162, !109, !241}
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64, align: 64)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !164)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !165)
!165 = !{!166, !167, !188, !217, !219, !223, !224, !225, !226, !234, !235, !236, !237}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !164, file: !16, line: 174, baseType: !58, size: 64, align: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !164, file: !16, line: 175, baseType: !168, size: 64, align: 64, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64, align: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !170)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !171)
!171 = !{!172, !176, !177}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !170, file: !16, line: 198, baseType: !173, size: 64, align: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64, align: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{null, !58}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !170, file: !16, line: 199, baseType: !173, size: 64, align: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !170, file: !16, line: 200, baseType: !178, size: 64, align: 64, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64, align: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{null, !58, !162, !181, !187}
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64, align: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!186, !58}
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !39, line: 50, baseType: !114)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !164, file: !16, line: 177, baseType: !189, size: 64, align: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64, align: 64)
!190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !192)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !193)
!193 = !{!194, !199, !203, !207, !211, !212}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !192, file: !16, line: 216, baseType: !195, size: 64, align: 64)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64, align: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{!186, !162, !198}
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64, align: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !192, file: !16, line: 218, baseType: !200, size: 64, align: 64, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64, align: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{!186, !162}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !192, file: !16, line: 219, baseType: !204, size: 64, align: 64, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, align: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!186, !162, !182, !58}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !192, file: !16, line: 222, baseType: !208, size: 64, align: 64, offset: 192)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64, align: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{null, !162}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !192, file: !16, line: 226, baseType: !182, size: 64, align: 64, offset: 256)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !192, file: !16, line: 227, baseType: !213, size: 64, align: 64, offset: 320)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64, align: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{null}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !164, file: !16, line: 178, baseType: !218, size: 32, align: 32, offset: 192)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !39, line: 55, baseType: !53)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !164, file: !16, line: 180, baseType: !220, size: 64, align: 64, offset: 256)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, align: 64)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !222)
!222 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !164, file: !16, line: 182, baseType: !114, size: 32, align: 32, offset: 320)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !164, file: !16, line: 183, baseType: !218, size: 32, align: 32, offset: 352)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !164, file: !16, line: 184, baseType: !218, size: 32, align: 32, offset: 384)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !164, file: !16, line: 186, baseType: !227, size: 64, align: 64, offset: 448)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64, align: 64)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !229, line: 37, baseType: !230)
!229 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !229, line: 39, size: 128, align: 64, elements: !231)
!231 = !{!232, !233}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !230, file: !229, line: 41, baseType: !58, size: 64, align: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !230, file: !229, line: 42, baseType: !227, size: 64, align: 64, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !164, file: !16, line: 188, baseType: !162, size: 64, align: 64, offset: 512)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !164, file: !16, line: 189, baseType: !162, size: 64, align: 64, offset: 576)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !164, file: !16, line: 191, baseType: !49, size: 64, align: 64, offset: 640)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !164, file: !16, line: 193, baseType: !238, size: 64, align: 64, offset: 704)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, align: 64)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !240)
!240 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !118, file: !4, line: 151, baseType: !243, size: 64, align: 64, offset: 320)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64, align: 64)
!244 = !DISubroutineType(types: !245)
!245 = !{null, !109}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !118, file: !4, line: 152, baseType: !247, size: 64, align: 64, offset: 384)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64, align: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{!124, !109, !250, !129}
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !118, file: !4, line: 155, baseType: !252, size: 64, align: 64, offset: 448)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64, align: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{!250, !109}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !111, file: !4, line: 103, baseType: !37, size: 64, align: 64, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !111, file: !4, line: 104, baseType: !257, size: 64, align: 64, offset: 192)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !258, line: 77, baseType: !259)
!258 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64, align: 64)
!260 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !258, line: 77, flags: DIFlagFwdDecl)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !111, file: !4, line: 105, baseType: !257, size: 64, align: 64, offset: 256)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !111, file: !4, line: 106, baseType: !37, size: 64, align: 64, offset: 320)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !111, file: !4, line: 107, baseType: !218, size: 32, align: 32, offset: 384)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !111, file: !4, line: 109, baseType: !125, size: 64, align: 64, offset: 448)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !111, file: !4, line: 110, baseType: !266, size: 64, align: 64, offset: 512)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64, align: 64)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !268, line: 39, baseType: !269)
!268 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !268, line: 41, size: 192, align: 64, elements: !270)
!270 = !{!271, !272, !273}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !269, file: !268, line: 43, baseType: !37, size: 64, align: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !269, file: !268, line: 44, baseType: !125, size: 64, align: 64, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !269, file: !268, line: 45, baseType: !125, size: 64, align: 64, offset: 128)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !111, file: !4, line: 111, baseType: !266, size: 64, align: 64, offset: 576)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !111, file: !4, line: 112, baseType: !266, size: 64, align: 64, offset: 640)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !111, file: !4, line: 113, baseType: !277, size: 48, align: 8, offset: 704)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 48, align: 8, elements: !278)
!278 = !{!279}
!279 = !DISubrange(count: 6)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !111, file: !4, line: 117, baseType: !218, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !111, file: !4, line: 118, baseType: !218, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !111, file: !4, line: 119, baseType: !218, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !111, file: !4, line: 120, baseType: !218, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !111, file: !4, line: 121, baseType: !218, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !111, file: !4, line: 122, baseType: !218, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !111, file: !4, line: 124, baseType: !58, size: 64, align: 64, offset: 768)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !111, file: !4, line: 125, baseType: !58, size: 64, align: 64, offset: 832)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !73, file: !76, line: 38, baseType: !53, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !73, file: !76, line: 39, baseType: !53, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !73, file: !76, line: 40, baseType: !53, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !73, file: !76, line: 41, baseType: !53, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !73, file: !76, line: 42, baseType: !53, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !73, file: !76, line: 43, baseType: !53, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !73, file: !76, line: 44, baseType: !53, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !73, file: !76, line: 45, baseType: !53, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !73, file: !76, line: 46, baseType: !49, size: 64, align: 64, offset: 1792)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !73, file: !76, line: 47, baseType: !49, size: 64, align: 64, offset: 1856)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !73, file: !63, line: 27, baseType: !49, size: 64, align: 64, offset: 1920)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_nick", scope: !73, file: !63, line: 28, baseType: !49, size: 64, align: 64, offset: 1984)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !73, file: !63, line: 30, baseType: !67, size: 32, align: 32, offset: 2048)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_username", scope: !73, file: !63, line: 31, baseType: !49, size: 64, align: 64, offset: 2112)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !73, file: !63, line: 32, baseType: !49, size: 64, align: 64, offset: 2176)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !73, file: !63, line: 34, baseType: !67, size: 32, align: 32, offset: 2240)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !73, file: !63, line: 35, baseType: !67, size: 32, align: 32, offset: 2272)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !73, file: !63, line: 36, baseType: !67, size: 32, align: 32, offset: 2304)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks", scope: !73, file: !63, line: 38, baseType: !67, size: 32, align: 32, offset: 2336)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !73, file: !63, line: 38, baseType: !67, size: 32, align: 32, offset: 2368)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes", scope: !73, file: !63, line: 38, baseType: !67, size: 32, align: 32, offset: 2400)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois", scope: !73, file: !63, line: 38, baseType: !67, size: 32, align: 32, offset: 2432)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !62, file: !66, line: 9, baseType: !311, size: 64, align: 64, offset: 192)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !312, line: 75, baseType: !313)
!312 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !314, line: 139, baseType: !152)
!314 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!315 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !62, file: !66, line: 10, baseType: !311, size: 64, align: 64, offset: 256)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !62, file: !66, line: 12, baseType: !49, size: 64, align: 64, offset: 320)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !62, file: !66, line: 13, baseType: !49, size: 64, align: 64, offset: 384)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !62, file: !66, line: 15, baseType: !53, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !62, file: !66, line: 16, baseType: !53, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !62, file: !66, line: 17, baseType: !53, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !62, file: !66, line: 18, baseType: !53, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !62, file: !66, line: 19, baseType: !53, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !62, file: !66, line: 21, baseType: !324, size: 64, align: 64, offset: 512)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64, align: 64)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !93, line: 102, baseType: !326)
!326 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !93, line: 102, flags: DIFlagFwdDecl)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !62, file: !66, line: 22, baseType: !67, size: 32, align: 32, offset: 576)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !62, file: !66, line: 25, baseType: !329, size: 128, align: 64, offset: 640)
!329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 128, align: 64, elements: !330)
!330 = !{!331}
!331 = !DISubrange(count: 2)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !62, file: !66, line: 26, baseType: !67, size: 32, align: 32, offset: 768)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !62, file: !66, line: 27, baseType: !67, size: 32, align: 32, offset: 800)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !62, file: !66, line: 29, baseType: !335, size: 64, align: 64, offset: 832)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64, align: 64)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !93, line: 103, baseType: !337)
!337 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !93, line: 103, flags: DIFlagFwdDecl)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !62, file: !66, line: 30, baseType: !339, size: 64, align: 64, offset: 896)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64, align: 64)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !341, line: 37, baseType: !342)
!341 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!342 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !341, line: 37, flags: DIFlagFwdDecl)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !62, file: !66, line: 32, baseType: !49, size: 64, align: 64, offset: 960)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !62, file: !66, line: 33, baseType: !49, size: 64, align: 64, offset: 1024)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !62, file: !66, line: 34, baseType: !49, size: 64, align: 64, offset: 1088)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !62, file: !66, line: 35, baseType: !53, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !62, file: !66, line: 36, baseType: !53, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !62, file: !66, line: 37, baseType: !53, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !62, file: !66, line: 38, baseType: !53, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !62, file: !66, line: 40, baseType: !351, size: 128, align: 64, offset: 1216)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !39, line: 504, baseType: !352)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !39, line: 506, size: 128, align: 64, elements: !353)
!353 = !{!354, !356}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !352, file: !39, line: 508, baseType: !355, size: 64, align: 64)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !39, line: 48, baseType: !152)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !352, file: !39, line: 509, baseType: !355, size: 64, align: 64, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !62, file: !66, line: 41, baseType: !311, size: 64, align: 64, offset: 1344)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !62, file: !66, line: 42, baseType: !67, size: 32, align: 32, offset: 1408)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !62, file: !66, line: 44, baseType: !227, size: 64, align: 64, offset: 1472)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !62, file: !66, line: 45, baseType: !227, size: 64, align: 64, offset: 1536)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !62, file: !66, line: 53, baseType: !362, size: 64, align: 64, offset: 1600)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64, align: 64)
!363 = !DISubroutineType(types: !364)
!364 = !{null, !365, !41, !67}
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64, align: 64)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !93, line: 107, baseType: !367)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !368, line: 30, size: 2240, align: 64, elements: !369)
!368 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!369 = !{!370, !371, !372, !373, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !449, !453, !457, !461, !465, !544, !551, !555}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !367, file: !66, line: 3, baseType: !67, size: 32, align: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !367, file: !66, line: 4, baseType: !67, size: 32, align: 32, offset: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !367, file: !66, line: 6, baseType: !67, size: 32, align: 32, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !367, file: !66, line: 8, baseType: !374, size: 64, align: 64, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64, align: 64)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !93, line: 113, baseType: !376)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !368, line: 25, size: 1920, align: 64, elements: !377)
!377 = !{!378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !376, file: !76, line: 3, baseType: !67, size: 32, align: 32)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !376, file: !76, line: 4, baseType: !67, size: 32, align: 32, offset: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !376, file: !76, line: 6, baseType: !67, size: 32, align: 32, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !376, file: !76, line: 9, baseType: !49, size: 64, align: 64, offset: 128)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !376, file: !76, line: 10, baseType: !67, size: 32, align: 32, offset: 192)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !376, file: !76, line: 11, baseType: !49, size: 64, align: 64, offset: 256)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !376, file: !76, line: 11, baseType: !49, size: 64, align: 64, offset: 320)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !376, file: !76, line: 11, baseType: !49, size: 64, align: 64, offset: 384)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !376, file: !76, line: 13, baseType: !85, size: 16, align: 16, offset: 448)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !376, file: !76, line: 14, baseType: !49, size: 64, align: 64, offset: 512)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !376, file: !76, line: 15, baseType: !49, size: 64, align: 64, offset: 576)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !376, file: !76, line: 16, baseType: !67, size: 32, align: 32, offset: 640)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !376, file: !76, line: 17, baseType: !49, size: 64, align: 64, offset: 704)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !376, file: !76, line: 19, baseType: !91, size: 64, align: 64, offset: 768)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !376, file: !76, line: 19, baseType: !91, size: 64, align: 64, offset: 832)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !376, file: !76, line: 21, baseType: !49, size: 64, align: 64, offset: 896)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !376, file: !76, line: 22, baseType: !49, size: 64, align: 64, offset: 960)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !376, file: !76, line: 23, baseType: !49, size: 64, align: 64, offset: 1024)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !376, file: !76, line: 24, baseType: !49, size: 64, align: 64, offset: 1088)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !376, file: !76, line: 26, baseType: !49, size: 64, align: 64, offset: 1152)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !376, file: !76, line: 27, baseType: !49, size: 64, align: 64, offset: 1216)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !376, file: !76, line: 28, baseType: !49, size: 64, align: 64, offset: 1280)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !376, file: !76, line: 29, baseType: !49, size: 64, align: 64, offset: 1344)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !376, file: !76, line: 30, baseType: !49, size: 64, align: 64, offset: 1408)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !376, file: !76, line: 31, baseType: !49, size: 64, align: 64, offset: 1472)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !376, file: !76, line: 32, baseType: !49, size: 64, align: 64, offset: 1536)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !376, file: !76, line: 33, baseType: !49, size: 64, align: 64, offset: 1600)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !376, file: !76, line: 35, baseType: !109, size: 64, align: 64, offset: 1664)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !376, file: !76, line: 38, baseType: !53, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !376, file: !76, line: 39, baseType: !53, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !376, file: !76, line: 40, baseType: !53, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !376, file: !76, line: 41, baseType: !53, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !376, file: !76, line: 42, baseType: !53, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !376, file: !76, line: 43, baseType: !53, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !376, file: !76, line: 44, baseType: !53, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !376, file: !76, line: 45, baseType: !53, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !376, file: !76, line: 46, baseType: !49, size: 64, align: 64, offset: 1792)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !376, file: !76, line: 47, baseType: !49, size: 64, align: 64, offset: 1856)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !367, file: !66, line: 9, baseType: !311, size: 64, align: 64, offset: 192)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !367, file: !66, line: 10, baseType: !311, size: 64, align: 64, offset: 256)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !367, file: !66, line: 12, baseType: !49, size: 64, align: 64, offset: 320)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !367, file: !66, line: 13, baseType: !49, size: 64, align: 64, offset: 384)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !367, file: !66, line: 15, baseType: !53, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !367, file: !66, line: 16, baseType: !53, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !367, file: !66, line: 17, baseType: !53, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !367, file: !66, line: 18, baseType: !53, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !367, file: !66, line: 19, baseType: !53, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !367, file: !66, line: 21, baseType: !324, size: 64, align: 64, offset: 512)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !367, file: !66, line: 22, baseType: !67, size: 32, align: 32, offset: 576)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !367, file: !66, line: 25, baseType: !329, size: 128, align: 64, offset: 640)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !367, file: !66, line: 26, baseType: !67, size: 32, align: 32, offset: 768)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !367, file: !66, line: 27, baseType: !67, size: 32, align: 32, offset: 800)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !367, file: !66, line: 29, baseType: !335, size: 64, align: 64, offset: 832)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !367, file: !66, line: 30, baseType: !339, size: 64, align: 64, offset: 896)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !367, file: !66, line: 32, baseType: !49, size: 64, align: 64, offset: 960)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !367, file: !66, line: 33, baseType: !49, size: 64, align: 64, offset: 1024)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !367, file: !66, line: 34, baseType: !49, size: 64, align: 64, offset: 1088)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !367, file: !66, line: 35, baseType: !53, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !367, file: !66, line: 36, baseType: !53, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !367, file: !66, line: 37, baseType: !53, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !367, file: !66, line: 38, baseType: !53, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !367, file: !66, line: 40, baseType: !351, size: 128, align: 64, offset: 1216)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !367, file: !66, line: 41, baseType: !311, size: 64, align: 64, offset: 1344)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !367, file: !66, line: 42, baseType: !67, size: 32, align: 32, offset: 1408)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !367, file: !66, line: 44, baseType: !227, size: 64, align: 64, offset: 1472)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !367, file: !66, line: 45, baseType: !227, size: 64, align: 64, offset: 1536)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !367, file: !66, line: 53, baseType: !362, size: 64, align: 64, offset: 1600)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !367, file: !66, line: 55, baseType: !446, size: 64, align: 64, offset: 1664)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64, align: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{!67, !365, !40}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !367, file: !66, line: 57, baseType: !450, size: 64, align: 64, offset: 1728)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64, align: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!67, !365, !41}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !367, file: !66, line: 60, baseType: !454, size: 64, align: 64, offset: 1792)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64, align: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{!41, !365}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !367, file: !66, line: 62, baseType: !458, size: 64, align: 64, offset: 1856)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64, align: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{null, !365, !41, !41, !67}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !367, file: !66, line: 65, baseType: !462, size: 64, align: 64, offset: 1920)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64, align: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{!51, !365, !41, !41}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !367, file: !66, line: 69, baseType: !466, size: 64, align: 64, offset: 1984)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64, align: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!469, !365, !41}
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64, align: 64)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !93, line: 109, baseType: !471)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !472, line: 15, size: 1408, align: 64, elements: !473)
!472 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!473 = !{!474, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !492, !496, !498, !499, !500, !501, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !471, file: !475, line: 3, baseType: !67, size: 32, align: 32)
!475 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!476 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !471, file: !475, line: 4, baseType: !67, size: 32, align: 32, offset: 32)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !471, file: !475, line: 5, baseType: !339, size: 64, align: 64, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !471, file: !475, line: 7, baseType: !36, size: 64, align: 64, offset: 128)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !471, file: !475, line: 8, baseType: !365, size: 64, align: 64, offset: 192)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !471, file: !475, line: 9, baseType: !49, size: 64, align: 64, offset: 256)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !471, file: !475, line: 10, baseType: !49, size: 64, align: 64, offset: 320)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !471, file: !475, line: 11, baseType: !311, size: 64, align: 64, offset: 384)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !471, file: !475, line: 12, baseType: !67, size: 32, align: 32, offset: 448)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !471, file: !475, line: 13, baseType: !49, size: 64, align: 64, offset: 512)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !471, file: !475, line: 15, baseType: !486, size: 64, align: 64, offset: 576)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64, align: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{null, !489}
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64, align: 64)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !93, line: 108, baseType: !491)
!491 = !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !93, line: 108, flags: DIFlagFwdDecl)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !471, file: !475, line: 17, baseType: !493, size: 64, align: 64, offset: 640)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64, align: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!41, !489}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !471, file: !497, line: 5, baseType: !49, size: 64, align: 64, offset: 704)
!497 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!498 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !471, file: !497, line: 6, baseType: !49, size: 64, align: 64, offset: 768)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !471, file: !497, line: 7, baseType: !311, size: 64, align: 64, offset: 832)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !471, file: !497, line: 9, baseType: !339, size: 64, align: 64, offset: 896)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !471, file: !497, line: 10, baseType: !502, size: 64, align: 64, offset: 960)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64, align: 64)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !93, line: 111, baseType: !504)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !505, line: 13, size: 576, align: 64, elements: !506)
!505 = !DIFile(filename: "../../../src/core/nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!506 = !{!507, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !525, !526}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !504, file: !508, line: 3, baseType: !67, size: 32, align: 32)
!508 = !DIFile(filename: "../../../src/core/nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!509 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !504, file: !508, line: 4, baseType: !67, size: 32, align: 32, offset: 32)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !504, file: !508, line: 6, baseType: !311, size: 64, align: 64, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !504, file: !508, line: 8, baseType: !49, size: 64, align: 64, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !504, file: !508, line: 9, baseType: !49, size: 64, align: 64, offset: 192)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !504, file: !508, line: 10, baseType: !49, size: 64, align: 64, offset: 256)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !504, file: !508, line: 11, baseType: !67, size: 32, align: 32, offset: 320)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !504, file: !508, line: 14, baseType: !53, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !504, file: !508, line: 15, baseType: !53, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !504, file: !508, line: 18, baseType: !53, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !504, file: !508, line: 19, baseType: !53, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !504, file: !508, line: 20, baseType: !53, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !504, file: !508, line: 21, baseType: !53, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !504, file: !508, line: 22, baseType: !522, size: 64, align: 8, offset: 360)
!522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 64, align: 8, elements: !523)
!523 = !{!524}
!524 = !DISubrange(count: 8)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !504, file: !508, line: 26, baseType: !36, size: 64, align: 64, offset: 448)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !504, file: !508, line: 28, baseType: !502, size: 64, align: 64, offset: 512)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !471, file: !497, line: 12, baseType: !53, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !471, file: !497, line: 13, baseType: !49, size: 64, align: 64, offset: 1088)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !471, file: !497, line: 14, baseType: !67, size: 32, align: 32, offset: 1152)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !471, file: !497, line: 15, baseType: !49, size: 64, align: 64, offset: 1216)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !471, file: !497, line: 17, baseType: !53, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !471, file: !497, line: 18, baseType: !53, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !471, file: !497, line: 19, baseType: !53, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !471, file: !497, line: 20, baseType: !53, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !471, file: !497, line: 22, baseType: !53, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !471, file: !497, line: 23, baseType: !53, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !471, file: !497, line: 24, baseType: !53, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !471, file: !497, line: 25, baseType: !53, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !471, file: !497, line: 26, baseType: !53, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !471, file: !497, line: 31, baseType: !541, size: 64, align: 64, offset: 1344)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64, align: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{!49, !469}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !367, file: !66, line: 70, baseType: !545, size: 64, align: 64, offset: 2048)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64, align: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!548, !365, !41}
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64, align: 64)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !93, line: 110, baseType: !550)
!550 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !93, line: 110, flags: DIFlagFwdDecl)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !367, file: !66, line: 71, baseType: !552, size: 64, align: 64, offset: 2112)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64, align: 64)
!553 = !DISubroutineType(types: !554)
!554 = !{!67, !41, !41}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !367, file: !66, line: 73, baseType: !552, size: 64, align: 64, offset: 2176)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !62, file: !66, line: 55, baseType: !446, size: 64, align: 64, offset: 1664)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !62, file: !66, line: 57, baseType: !450, size: 64, align: 64, offset: 1728)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !62, file: !66, line: 60, baseType: !454, size: 64, align: 64, offset: 1792)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !62, file: !66, line: 62, baseType: !458, size: 64, align: 64, offset: 1856)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !62, file: !66, line: 65, baseType: !462, size: 64, align: 64, offset: 1920)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !62, file: !66, line: 69, baseType: !466, size: 64, align: 64, offset: 1984)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !62, file: !66, line: 70, baseType: !545, size: 64, align: 64, offset: 2048)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !62, file: !66, line: 71, baseType: !552, size: 64, align: 64, offset: 2112)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !62, file: !66, line: 73, baseType: !552, size: 64, align: 64, offset: 2176)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "redirects", scope: !62, file: !63, line: 46, baseType: !227, size: 64, align: 64, offset: 2240)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_queue", scope: !62, file: !63, line: 47, baseType: !227, size: 64, align: 64, offset: 2304)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_next", scope: !62, file: !63, line: 48, baseType: !568, size: 64, align: 64, offset: 2368)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64, align: 64)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "REDIRECT_REC", file: !61, line: 8, baseType: !570)
!570 = !DICompositeType(tag: DW_TAG_structure_type, name: "_REDIRECT_REC", file: !61, line: 8, flags: DIFlagFwdDecl)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_active", scope: !62, file: !63, line: 49, baseType: !227, size: 64, align: 64, offset: 2432)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "last_nick", scope: !62, file: !63, line: 51, baseType: !49, size: 64, align: 64, offset: 2496)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !62, file: !63, line: 53, baseType: !49, size: 64, align: 64, offset: 2560)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !62, file: !63, line: 54, baseType: !49, size: 64, align: 64, offset: 2624)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "wanted_usermode", scope: !62, file: !63, line: 55, baseType: !49, size: 64, align: 64, offset: 2688)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "userhost", scope: !62, file: !63, line: 56, baseType: !49, size: 64, align: 64, offset: 2752)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "channels_formed", scope: !62, file: !63, line: 57, baseType: !67, size: 32, align: 32, offset: 2816)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "whois_found", scope: !62, file: !63, line: 59, baseType: !53, size: 1, align: 32, offset: 2848, flags: DIFlagBitField, extraData: i64 2848)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "whowas_found", scope: !62, file: !63, line: 60, baseType: !53, size: 1, align: 32, offset: 2849, flags: DIFlagBitField, extraData: i64 2848)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "emode_known", scope: !62, file: !63, line: 62, baseType: !53, size: 1, align: 32, offset: 2850, flags: DIFlagBitField, extraData: i64 2848)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_mode", scope: !62, file: !63, line: 63, baseType: !53, size: 1, align: 32, offset: 2851, flags: DIFlagBitField, extraData: i64 2848)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_who", scope: !62, file: !63, line: 64, baseType: !53, size: 1, align: 32, offset: 2852, flags: DIFlagBitField, extraData: i64 2848)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "one_endofwho", scope: !62, file: !63, line: 65, baseType: !53, size: 1, align: 32, offset: 2853, flags: DIFlagBitField, extraData: i64 2848)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "disable_lag", scope: !62, file: !63, line: 66, baseType: !53, size: 1, align: 32, offset: 2854, flags: DIFlagBitField, extraData: i64 2848)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "nick_collision", scope: !62, file: !63, line: 67, baseType: !53, size: 1, align: 32, offset: 2855, flags: DIFlagBitField, extraData: i64 2848)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "motd_got", scope: !62, file: !63, line: 68, baseType: !53, size: 1, align: 32, offset: 2856, flags: DIFlagBitField, extraData: i64 2848)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "isupport_sent", scope: !62, file: !63, line: 69, baseType: !53, size: 1, align: 32, offset: 2857, flags: DIFlagBitField, extraData: i64 2848)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "cap_complete", scope: !62, file: !63, line: 70, baseType: !53, size: 1, align: 32, offset: 2858, flags: DIFlagBitField, extraData: i64 2848)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "cap_in_multiline", scope: !62, file: !63, line: 71, baseType: !53, size: 1, align: 32, offset: 2859, flags: DIFlagBitField, extraData: i64 2848)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_success", scope: !62, file: !63, line: 72, baseType: !53, size: 1, align: 32, offset: 2860, flags: DIFlagBitField, extraData: i64 2848)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks_in_cmd", scope: !62, file: !63, line: 74, baseType: !67, size: 32, align: 32, offset: 2880)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes_in_cmd", scope: !62, file: !63, line: 75, baseType: !67, size: 32, align: 32, offset: 2912)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois_in_cmd", scope: !62, file: !63, line: 76, baseType: !67, size: 32, align: 32, offset: 2944)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs_in_cmd", scope: !62, file: !63, line: 77, baseType: !67, size: 32, align: 32, offset: 2976)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "cap_supported", scope: !62, file: !63, line: 79, baseType: !339, size: 64, align: 64, offset: 3008)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "cap_active", scope: !62, file: !63, line: 80, baseType: !227, size: 64, align: 64, offset: 3072)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "cap_queue", scope: !62, file: !63, line: 81, baseType: !227, size: 64, align: 64, offset: 3136)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_buffer", scope: !62, file: !63, line: 83, baseType: !266, size: 64, align: 64, offset: 3200)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_timeout", scope: !62, file: !63, line: 84, baseType: !218, size: 32, align: 32, offset: 3264)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcount", scope: !62, file: !63, line: 87, baseType: !67, size: 32, align: 32, offset: 3296)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "cmdqueue", scope: !62, file: !63, line: 91, baseType: !227, size: 64, align: 64, offset: 3328)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "wait_cmd", scope: !62, file: !63, line: 92, baseType: !351, size: 128, align: 64, offset: 3392)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd", scope: !62, file: !63, line: 93, baseType: !351, size: 128, align: 64, offset: 3520)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !62, file: !63, line: 95, baseType: !67, size: 32, align: 32, offset: 3648)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !62, file: !63, line: 96, baseType: !67, size: 32, align: 32, offset: 3680)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !62, file: !63, line: 97, baseType: !67, size: 32, align: 32, offset: 3712)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "idles", scope: !62, file: !63, line: 100, baseType: !227, size: 64, align: 64, offset: 3776)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "ctcpqueue", scope: !62, file: !63, line: 103, baseType: !227, size: 64, align: 64, offset: 3840)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "knockoutlist", scope: !62, file: !63, line: 106, baseType: !227, size: 64, align: 64, offset: 3904)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "splits", scope: !62, file: !63, line: 108, baseType: !339, size: 64, align: 64, offset: 3968)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "split_servers", scope: !62, file: !63, line: 109, baseType: !227, size: 64, align: 64, offset: 4032)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "rejoin_channels", scope: !62, file: !63, line: 111, baseType: !227, size: 64, align: 64, offset: 4096)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "chanqueries", scope: !62, file: !63, line: 114, baseType: !36, size: 64, align: 64, offset: 4160)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "isupport", scope: !62, file: !63, line: 116, baseType: !339, size: 64, align: 64, offset: 4224)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !62, file: !63, line: 117, baseType: !616, size: 32768, align: 64, offset: 4288)
!616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !617, size: 32768, align: 64, elements: !666)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "modes_type", file: !618, line: 10, size: 128, align: 64, elements: !619)
!618 = !DIFile(filename: "../../../src/irc/core/modes.h", directory: "/home/lichi/Desktop/irssi/task1")
!619 = !{!620, !665}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !617, file: !618, line: 11, baseType: !621, size: 64, align: 64)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64, align: 64)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_func_t", file: !618, line: 7, baseType: !623)
!623 = !DISubroutineType(types: !624)
!624 = !{null, !625, !41, !40, !40, !49, !266}
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64, align: 64)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_CHANNEL_REC", file: !61, line: 7, baseType: !627)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_CHANNEL_REC", file: !628, line: 15, size: 1600, align: 64, elements: !629)
!628 = !DIFile(filename: "../../../src/irc/core/irc-channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!629 = !{!630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !627, file: !475, line: 3, baseType: !67, size: 32, align: 32)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !627, file: !475, line: 4, baseType: !67, size: 32, align: 32, offset: 32)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !627, file: !475, line: 5, baseType: !339, size: 64, align: 64, offset: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !627, file: !475, line: 7, baseType: !36, size: 64, align: 64, offset: 128)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !627, file: !475, line: 8, baseType: !59, size: 64, align: 64, offset: 192)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !627, file: !475, line: 9, baseType: !49, size: 64, align: 64, offset: 256)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !627, file: !475, line: 10, baseType: !49, size: 64, align: 64, offset: 320)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !627, file: !475, line: 11, baseType: !311, size: 64, align: 64, offset: 384)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !627, file: !475, line: 12, baseType: !67, size: 32, align: 32, offset: 448)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !627, file: !475, line: 13, baseType: !49, size: 64, align: 64, offset: 512)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !627, file: !475, line: 15, baseType: !486, size: 64, align: 64, offset: 576)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !627, file: !475, line: 17, baseType: !493, size: 64, align: 64, offset: 640)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !627, file: !497, line: 5, baseType: !49, size: 64, align: 64, offset: 704)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !627, file: !497, line: 6, baseType: !49, size: 64, align: 64, offset: 768)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !627, file: !497, line: 7, baseType: !311, size: 64, align: 64, offset: 832)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !627, file: !497, line: 9, baseType: !339, size: 64, align: 64, offset: 896)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !627, file: !497, line: 10, baseType: !502, size: 64, align: 64, offset: 960)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !627, file: !497, line: 12, baseType: !53, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !627, file: !497, line: 13, baseType: !49, size: 64, align: 64, offset: 1088)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !627, file: !497, line: 14, baseType: !67, size: 32, align: 32, offset: 1152)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !627, file: !497, line: 15, baseType: !49, size: 64, align: 64, offset: 1216)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !627, file: !497, line: 17, baseType: !53, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !627, file: !497, line: 18, baseType: !53, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !627, file: !497, line: 19, baseType: !53, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !627, file: !497, line: 20, baseType: !53, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !627, file: !497, line: 22, baseType: !53, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !627, file: !497, line: 23, baseType: !53, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !627, file: !497, line: 24, baseType: !53, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !627, file: !497, line: 25, baseType: !53, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !627, file: !497, line: 26, baseType: !53, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !627, file: !497, line: 31, baseType: !541, size: 64, align: 64, offset: 1344)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "banlist", scope: !627, file: !628, line: 18, baseType: !227, size: 64, align: 64, offset: 1408)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "massjoin_start", scope: !627, file: !628, line: 20, baseType: !311, size: 64, align: 64, offset: 1472)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "massjoins", scope: !627, file: !628, line: 21, baseType: !67, size: 32, align: 32, offset: 1536)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "last_massjoins", scope: !627, file: !628, line: 22, baseType: !67, size: 32, align: 32, offset: 1568)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !617, file: !618, line: 12, baseType: !40, size: 8, align: 8, offset: 64)
!666 = !{!667}
!667 = !DISubrange(count: 256)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !62, file: !63, line: 118, baseType: !669, size: 2048, align: 8, offset: 37056)
!669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 2048, align: 8, elements: !666)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "nick_comp_func", scope: !62, file: !63, line: 120, baseType: !552, size: 64, align: 64, offset: 39104)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !672, line: 9, baseType: !673)
!672 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64, align: 64)
!674 = !DISubroutineType(types: !675)
!675 = !{null, !676, !676, !676, !676, !676, !676}
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64, align: 64)
!677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64, align: 64)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "MODULE_SERVER_REC", file: !680, line: 24, baseType: !681)
!680 = !DIFile(filename: "module.h", directory: "/home/lichi/Desktop/irssi/task1")
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !680, line: 19, size: 192, align: 64, elements: !682)
!682 = !{!683, !684, !685}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "ison_count", scope: !681, file: !680, line: 20, baseType: !67, size: 32, align: 32)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "notify_users", scope: !681, file: !680, line: 22, baseType: !227, size: 64, align: 64, offset: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "ison_tempusers", scope: !681, file: !680, line: 23, baseType: !227, size: 64, align: 64, offset: 128)
!686 = !{!687}
!687 = distinct !DIGlobalVariable(name: "notifies", scope: !0, file: !688, line: 35, type: !227, isLocal: false, isDefinition: true, variable: %struct._GSList** @notifies)
!688 = !DIFile(filename: "notifylist.c", directory: "/home/lichi/Desktop/irssi/task1")
!689 = !{i32 2, !"Dwarf Version", i32 4}
!690 = !{i32 2, !"Debug Info Version", i32 3}
!691 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!692 = distinct !DISubprogram(name: "notifylist_add", scope: !688, file: !688, line: 37, type: !693, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!693 = !DISubroutineType(types: !694)
!694 = !{!43, !41, !41, !67}
!695 = !{}
!696 = !DILocalVariable(name: "mask", arg: 1, scope: !692, file: !688, line: 37, type: !41)
!697 = !DIExpression()
!698 = !DILocation(line: 37, column: 44, scope: !692)
!699 = !DILocalVariable(name: "ircnets", arg: 2, scope: !692, file: !688, line: 37, type: !41)
!700 = !DILocation(line: 37, column: 62, scope: !692)
!701 = !DILocalVariable(name: "away_check", arg: 3, scope: !692, file: !688, line: 38, type: !67)
!702 = !DILocation(line: 38, column: 15, scope: !692)
!703 = !DILocalVariable(name: "rec", scope: !692, file: !688, line: 40, type: !43)
!704 = !DILocation(line: 40, column: 18, scope: !692)
!705 = !DILocation(line: 42, column: 2, scope: !692)
!706 = distinct !{!706, !705}
!707 = !DILocation(line: 42, column: 10, scope: !708)
!708 = !DILexicalBlockFile(scope: !709, file: !688, discriminator: 1)
!709 = distinct !DILexicalBlock(scope: !710, file: !688, line: 42, column: 10)
!710 = distinct !DILexicalBlock(scope: !692, file: !688, line: 42, column: 4)
!711 = !DILocation(line: 42, column: 15, scope: !708)
!712 = !DILocation(line: 42, column: 5, scope: !713)
!713 = !DILexicalBlockFile(scope: !714, file: !688, discriminator: 2)
!714 = distinct !DILexicalBlock(scope: !709, file: !688, line: 42, column: 3)
!715 = !DILocation(line: 42, column: 14, scope: !716)
!716 = !DILexicalBlockFile(scope: !717, file: !688, discriminator: 3)
!717 = distinct !DILexicalBlock(scope: !709, file: !688, line: 42, column: 12)
!718 = !DILocation(line: 42, column: 99, scope: !716)
!719 = !DILocation(line: 42, column: 7, scope: !720)
!720 = !DILexicalBlockFile(scope: !710, file: !688, discriminator: 4)
!721 = !DILocation(line: 44, column: 28, scope: !692)
!722 = !DILocation(line: 44, column: 9, scope: !692)
!723 = !DILocation(line: 44, column: 6, scope: !692)
!724 = !DILocation(line: 45, column: 30, scope: !692)
!725 = !DILocation(line: 45, column: 21, scope: !692)
!726 = !DILocation(line: 45, column: 9, scope: !692)
!727 = !DILocation(line: 45, column: 14, scope: !692)
!728 = !DILocation(line: 45, column: 19, scope: !692)
!729 = !DILocation(line: 46, column: 17, scope: !692)
!730 = !DILocation(line: 46, column: 25, scope: !692)
!731 = !DILocation(line: 46, column: 32, scope: !692)
!732 = !DILocation(line: 46, column: 36, scope: !733)
!733 = !DILexicalBlockFile(scope: !692, file: !688, discriminator: 1)
!734 = !DILocation(line: 46, column: 35, scope: !733)
!735 = !DILocation(line: 46, column: 44, scope: !733)
!736 = !DILocation(line: 46, column: 17, scope: !733)
!737 = !DILocation(line: 46, column: 17, scope: !738)
!738 = !DILexicalBlockFile(scope: !692, file: !688, discriminator: 2)
!739 = !DILocation(line: 47, column: 14, scope: !692)
!740 = !DILocation(line: 47, column: 3, scope: !692)
!741 = !DILocation(line: 46, column: 17, scope: !742)
!742 = !DILexicalBlockFile(scope: !692, file: !688, discriminator: 3)
!743 = !DILocation(line: 46, column: 17, scope: !744)
!744 = !DILexicalBlockFile(scope: !692, file: !688, discriminator: 4)
!745 = !DILocation(line: 46, column: 2, scope: !744)
!746 = !DILocation(line: 46, column: 7, scope: !744)
!747 = !DILocation(line: 46, column: 15, scope: !744)
!748 = !DILocation(line: 48, column: 20, scope: !692)
!749 = !DILocation(line: 48, column: 2, scope: !692)
!750 = !DILocation(line: 48, column: 7, scope: !692)
!751 = !DILocation(line: 48, column: 18, scope: !692)
!752 = !DILocation(line: 50, column: 31, scope: !692)
!753 = !DILocation(line: 50, column: 9, scope: !692)
!754 = !DILocation(line: 52, column: 35, scope: !692)
!755 = !DILocation(line: 52, column: 45, scope: !692)
!756 = !DILocation(line: 52, column: 20, scope: !692)
!757 = !DILocation(line: 52, column: 18, scope: !692)
!758 = !DILocation(line: 53, column: 35, scope: !692)
!759 = !DILocation(line: 53, column: 2, scope: !692)
!760 = !DILocation(line: 54, column: 9, scope: !692)
!761 = !DILocation(line: 54, column: 2, scope: !692)
!762 = !DILocation(line: 55, column: 1, scope: !692)
!763 = distinct !DISubprogram(name: "notifylist_destroy_all", scope: !688, file: !688, line: 64, type: !215, isLocal: false, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!764 = !DILocation(line: 66, column: 18, scope: !763)
!765 = !DILocation(line: 66, column: 2, scope: !763)
!766 = !DILocation(line: 67, column: 15, scope: !763)
!767 = !DILocation(line: 67, column: 2, scope: !763)
!768 = !DILocation(line: 69, column: 11, scope: !763)
!769 = !DILocation(line: 70, column: 1, scope: !763)
!770 = distinct !DISubprogram(name: "notify_destroy", scope: !688, file: !688, line: 57, type: !771, isLocal: true, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!771 = !DISubroutineType(types: !772)
!772 = !{null, !43}
!773 = !DILocalVariable(name: "rec", arg: 1, scope: !770, file: !688, line: 57, type: !43)
!774 = !DILocation(line: 57, column: 44, scope: !770)
!775 = !DILocation(line: 59, column: 6, scope: !776)
!776 = distinct !DILexicalBlock(scope: !770, file: !688, line: 59, column: 6)
!777 = !DILocation(line: 59, column: 11, scope: !776)
!778 = !DILocation(line: 59, column: 19, scope: !776)
!779 = !DILocation(line: 59, column: 6, scope: !770)
!780 = !DILocation(line: 59, column: 38, scope: !781)
!781 = !DILexicalBlockFile(scope: !776, file: !688, discriminator: 1)
!782 = !DILocation(line: 59, column: 43, scope: !781)
!783 = !DILocation(line: 59, column: 27, scope: !781)
!784 = !DILocation(line: 60, column: 9, scope: !770)
!785 = !DILocation(line: 60, column: 14, scope: !770)
!786 = !DILocation(line: 60, column: 2, scope: !770)
!787 = !DILocation(line: 61, column: 16, scope: !770)
!788 = !DILocation(line: 61, column: 9, scope: !770)
!789 = !DILocation(line: 62, column: 1, scope: !770)
!790 = distinct !DISubprogram(name: "notifylist_remove", scope: !688, file: !688, line: 72, type: !791, isLocal: false, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!791 = !DISubroutineType(types: !792)
!792 = !{null, !41}
!793 = !DILocalVariable(name: "mask", arg: 1, scope: !790, file: !688, line: 72, type: !41)
!794 = !DILocation(line: 72, column: 36, scope: !790)
!795 = !DILocalVariable(name: "rec", scope: !790, file: !688, line: 74, type: !43)
!796 = !DILocation(line: 74, column: 18, scope: !790)
!797 = !DILocation(line: 76, column: 2, scope: !790)
!798 = distinct !{!798, !797}
!799 = !DILocation(line: 76, column: 10, scope: !800)
!800 = !DILexicalBlockFile(scope: !801, file: !688, discriminator: 1)
!801 = distinct !DILexicalBlock(scope: !802, file: !688, line: 76, column: 10)
!802 = distinct !DILexicalBlock(scope: !790, file: !688, line: 76, column: 4)
!803 = !DILocation(line: 76, column: 15, scope: !800)
!804 = !DILocation(line: 76, column: 5, scope: !805)
!805 = !DILexicalBlockFile(scope: !806, file: !688, discriminator: 2)
!806 = distinct !DILexicalBlock(scope: !801, file: !688, line: 76, column: 3)
!807 = !DILocation(line: 76, column: 14, scope: !808)
!808 = !DILexicalBlockFile(scope: !809, file: !688, discriminator: 3)
!809 = distinct !DILexicalBlock(scope: !801, file: !688, line: 76, column: 12)
!810 = !DILocation(line: 76, column: 99, scope: !808)
!811 = !DILocation(line: 76, column: 110, scope: !812)
!812 = !DILexicalBlockFile(scope: !802, file: !688, discriminator: 4)
!813 = !DILocation(line: 78, column: 24, scope: !790)
!814 = !DILocation(line: 78, column: 8, scope: !790)
!815 = !DILocation(line: 78, column: 6, scope: !790)
!816 = !DILocation(line: 79, column: 6, scope: !817)
!817 = distinct !DILexicalBlock(scope: !790, file: !688, line: 79, column: 6)
!818 = !DILocation(line: 79, column: 10, scope: !817)
!819 = !DILocation(line: 79, column: 6, scope: !790)
!820 = !DILocation(line: 79, column: 18, scope: !821)
!821 = !DILexicalBlockFile(scope: !817, file: !688, discriminator: 1)
!822 = !DILocation(line: 81, column: 27, scope: !790)
!823 = !DILocation(line: 81, column: 2, scope: !790)
!824 = !DILocation(line: 82, column: 28, scope: !790)
!825 = !DILocation(line: 82, column: 38, scope: !790)
!826 = !DILocation(line: 82, column: 13, scope: !790)
!827 = !DILocation(line: 82, column: 11, scope: !790)
!828 = !DILocation(line: 83, column: 38, scope: !790)
!829 = !DILocation(line: 83, column: 2, scope: !790)
!830 = !DILocation(line: 85, column: 24, scope: !790)
!831 = !DILocation(line: 85, column: 9, scope: !790)
!832 = !DILocation(line: 86, column: 1, scope: !790)
!833 = !DILocation(line: 86, column: 1, scope: !834)
!834 = !DILexicalBlockFile(scope: !790, file: !688, discriminator: 1)
!835 = distinct !DISubprogram(name: "notifylist_find", scope: !688, file: !688, line: 104, type: !836, isLocal: false, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!836 = !DISubroutineType(types: !837)
!837 = !{!43, !41, !41}
!838 = !DILocalVariable(name: "mask", arg: 1, scope: !835, file: !688, line: 104, type: !41)
!839 = !DILocation(line: 104, column: 45, scope: !835)
!840 = !DILocalVariable(name: "ircnet", arg: 2, scope: !835, file: !688, line: 104, type: !41)
!841 = !DILocation(line: 104, column: 63, scope: !835)
!842 = !DILocalVariable(name: "best", scope: !835, file: !688, line: 106, type: !43)
!843 = !DILocation(line: 106, column: 18, scope: !835)
!844 = !DILocalVariable(name: "tmp", scope: !835, file: !688, line: 107, type: !227)
!845 = !DILocation(line: 107, column: 10, scope: !835)
!846 = !DILocalVariable(name: "len", scope: !835, file: !688, line: 108, type: !67)
!847 = !DILocation(line: 108, column: 6, scope: !835)
!848 = !DILocation(line: 110, column: 7, scope: !835)
!849 = !DILocation(line: 111, column: 15, scope: !835)
!850 = !DILocation(line: 111, column: 8, scope: !835)
!851 = !DILocation(line: 111, column: 6, scope: !835)
!852 = !DILocation(line: 112, column: 13, scope: !853)
!853 = distinct !DILexicalBlock(scope: !835, file: !688, line: 112, column: 2)
!854 = !DILocation(line: 112, column: 11, scope: !853)
!855 = !DILocation(line: 112, column: 7, scope: !853)
!856 = !DILocation(line: 112, column: 23, scope: !857)
!857 = !DILexicalBlockFile(scope: !858, file: !688, discriminator: 1)
!858 = distinct !DILexicalBlock(scope: !853, file: !688, line: 112, column: 2)
!859 = !DILocation(line: 112, column: 27, scope: !857)
!860 = !DILocation(line: 112, column: 2, scope: !857)
!861 = !DILocalVariable(name: "rec", scope: !862, file: !688, line: 113, type: !43)
!862 = distinct !DILexicalBlock(scope: !858, file: !688, line: 112, column: 52)
!863 = !DILocation(line: 113, column: 19, scope: !862)
!864 = !DILocation(line: 113, column: 25, scope: !862)
!865 = !DILocation(line: 113, column: 30, scope: !862)
!866 = !DILocation(line: 116, column: 27, scope: !867)
!867 = distinct !DILexicalBlock(scope: !862, file: !688, line: 116, column: 7)
!868 = !DILocation(line: 116, column: 32, scope: !867)
!869 = !DILocation(line: 116, column: 38, scope: !867)
!870 = !DILocation(line: 116, column: 44, scope: !867)
!871 = !DILocation(line: 116, column: 7, scope: !867)
!872 = !DILocation(line: 116, column: 49, scope: !867)
!873 = !DILocation(line: 116, column: 54, scope: !867)
!874 = !DILocation(line: 117, column: 18, scope: !867)
!875 = !DILocation(line: 117, column: 8, scope: !867)
!876 = !DILocation(line: 117, column: 13, scope: !867)
!877 = !DILocation(line: 117, column: 23, scope: !867)
!878 = !DILocation(line: 117, column: 31, scope: !867)
!879 = !DILocation(line: 117, column: 44, scope: !880)
!880 = !DILexicalBlockFile(scope: !867, file: !688, discriminator: 1)
!881 = !DILocation(line: 117, column: 34, scope: !880)
!882 = !DILocation(line: 117, column: 39, scope: !880)
!883 = !DILocation(line: 117, column: 49, scope: !880)
!884 = !DILocation(line: 116, column: 7, scope: !885)
!885 = !DILexicalBlockFile(scope: !862, file: !688, discriminator: 1)
!886 = !DILocation(line: 117, column: 58, scope: !887)
!887 = !DILexicalBlockFile(scope: !867, file: !688, discriminator: 2)
!888 = !DILocation(line: 120, column: 7, scope: !889)
!889 = distinct !DILexicalBlock(scope: !862, file: !688, line: 120, column: 7)
!890 = !DILocation(line: 120, column: 12, scope: !889)
!891 = !DILocation(line: 120, column: 20, scope: !889)
!892 = !DILocation(line: 120, column: 7, scope: !862)
!893 = !DILocation(line: 121, column: 11, scope: !894)
!894 = distinct !DILexicalBlock(scope: !889, file: !688, line: 120, column: 28)
!895 = !DILocation(line: 121, column: 9, scope: !894)
!896 = !DILocation(line: 122, column: 4, scope: !894)
!897 = !DILocation(line: 125, column: 32, scope: !898)
!898 = distinct !DILexicalBlock(scope: !862, file: !688, line: 125, column: 7)
!899 = !DILocation(line: 125, column: 37, scope: !898)
!900 = !DILocation(line: 125, column: 7, scope: !898)
!901 = !DILocation(line: 125, column: 7, scope: !862)
!902 = !DILocation(line: 126, column: 11, scope: !898)
!903 = !DILocation(line: 126, column: 4, scope: !898)
!904 = !DILocation(line: 127, column: 2, scope: !862)
!905 = !DILocation(line: 112, column: 41, scope: !906)
!906 = !DILexicalBlockFile(scope: !858, file: !688, discriminator: 2)
!907 = !DILocation(line: 112, column: 46, scope: !906)
!908 = !DILocation(line: 112, column: 39, scope: !906)
!909 = !DILocation(line: 112, column: 2, scope: !906)
!910 = distinct !{!910, !911}
!911 = !DILocation(line: 112, column: 2, scope: !835)
!912 = !DILocation(line: 129, column: 9, scope: !835)
!913 = !DILocation(line: 129, column: 2, scope: !835)
!914 = !DILocation(line: 130, column: 1, scope: !835)
!915 = distinct !DISubprogram(name: "notifylist_ircnets_match", scope: !688, file: !688, line: 88, type: !916, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!916 = !DISubroutineType(types: !917)
!917 = !{!67, !43, !41}
!918 = !DILocalVariable(name: "rec", arg: 1, scope: !915, file: !688, line: 88, type: !43)
!919 = !DILocation(line: 88, column: 46, scope: !915)
!920 = !DILocalVariable(name: "ircnet", arg: 2, scope: !915, file: !688, line: 88, type: !41)
!921 = !DILocation(line: 88, column: 63, scope: !915)
!922 = !DILocalVariable(name: "tmp", scope: !915, file: !688, line: 90, type: !51)
!923 = !DILocation(line: 90, column: 9, scope: !915)
!924 = !DILocation(line: 92, column: 6, scope: !925)
!925 = distinct !DILexicalBlock(scope: !915, file: !688, line: 92, column: 6)
!926 = !DILocation(line: 92, column: 11, scope: !925)
!927 = !DILocation(line: 92, column: 19, scope: !925)
!928 = !DILocation(line: 92, column: 6, scope: !915)
!929 = !DILocation(line: 92, column: 27, scope: !930)
!930 = !DILexicalBlockFile(scope: !925, file: !688, discriminator: 1)
!931 = !DILocation(line: 93, column: 6, scope: !932)
!932 = distinct !DILexicalBlock(scope: !915, file: !688, line: 93, column: 6)
!933 = !DILocation(line: 93, column: 13, scope: !932)
!934 = !DILocation(line: 93, column: 6, scope: !915)
!935 = !DILocation(line: 93, column: 21, scope: !936)
!936 = !DILexicalBlockFile(scope: !932, file: !688, discriminator: 1)
!937 = !DILocation(line: 94, column: 16, scope: !938)
!938 = distinct !DILexicalBlock(scope: !915, file: !688, line: 94, column: 6)
!939 = !DILocation(line: 94, column: 6, scope: !938)
!940 = !DILocation(line: 94, column: 29, scope: !938)
!941 = !DILocation(line: 94, column: 6, scope: !915)
!942 = !DILocation(line: 94, column: 35, scope: !943)
!943 = !DILexicalBlockFile(scope: !938, file: !688, discriminator: 1)
!944 = !DILocation(line: 96, column: 13, scope: !945)
!945 = distinct !DILexicalBlock(scope: !915, file: !688, line: 96, column: 2)
!946 = !DILocation(line: 96, column: 18, scope: !945)
!947 = !DILocation(line: 96, column: 11, scope: !945)
!948 = !DILocation(line: 96, column: 7, scope: !945)
!949 = !DILocation(line: 96, column: 28, scope: !950)
!950 = !DILexicalBlockFile(scope: !951, file: !688, discriminator: 1)
!951 = distinct !DILexicalBlock(scope: !945, file: !688, line: 96, column: 2)
!952 = !DILocation(line: 96, column: 27, scope: !950)
!953 = !DILocation(line: 96, column: 32, scope: !950)
!954 = !DILocation(line: 96, column: 2, scope: !950)
!955 = !DILocation(line: 97, column: 27, scope: !956)
!956 = distinct !DILexicalBlock(scope: !957, file: !688, line: 97, column: 7)
!957 = distinct !DILexicalBlock(scope: !951, file: !688, line: 96, column: 47)
!958 = !DILocation(line: 97, column: 26, scope: !956)
!959 = !DILocation(line: 97, column: 32, scope: !956)
!960 = !DILocation(line: 97, column: 7, scope: !956)
!961 = !DILocation(line: 97, column: 40, scope: !956)
!962 = !DILocation(line: 97, column: 7, scope: !957)
!963 = !DILocation(line: 98, column: 4, scope: !956)
!964 = !DILocation(line: 99, column: 2, scope: !957)
!965 = !DILocation(line: 96, column: 43, scope: !966)
!966 = !DILexicalBlockFile(scope: !951, file: !688, discriminator: 2)
!967 = !DILocation(line: 96, column: 2, scope: !966)
!968 = distinct !{!968, !969}
!969 = !DILocation(line: 96, column: 2, scope: !915)
!970 = !DILocation(line: 101, column: 2, scope: !915)
!971 = !DILocation(line: 102, column: 1, scope: !915)
!972 = distinct !DISubprogram(name: "notifylist_ison_server", scope: !688, file: !688, line: 132, type: !973, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!973 = !DISubroutineType(types: !974)
!974 = !{!67, !59, !41}
!975 = !DILocalVariable(name: "server", arg: 1, scope: !972, file: !688, line: 132, type: !59)
!976 = !DILocation(line: 132, column: 44, scope: !972)
!977 = !DILocalVariable(name: "nick", arg: 2, scope: !972, file: !688, line: 132, type: !41)
!978 = !DILocation(line: 132, column: 64, scope: !972)
!979 = !DILocalVariable(name: "rec", scope: !972, file: !688, line: 134, type: !980)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64, align: 64)
!981 = !DIDerivedType(tag: DW_TAG_typedef, name: "NOTIFY_NICK_REC", file: !680, line: 17, baseType: !982)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !680, line: 6, size: 448, align: 64, elements: !983)
!983 = !{!984, !985, !986, !987, !988, !989, !990, !991, !992, !993}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !982, file: !680, line: 7, baseType: !49, size: 64, align: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !982, file: !680, line: 8, baseType: !49, size: 64, align: 64, offset: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !982, file: !680, line: 8, baseType: !49, size: 64, align: 64, offset: 128)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !982, file: !680, line: 8, baseType: !49, size: 64, align: 64, offset: 192)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "awaymsg", scope: !982, file: !680, line: 8, baseType: !49, size: 64, align: 64, offset: 256)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "host_ok", scope: !982, file: !680, line: 10, baseType: !53, size: 1, align: 32, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "away_ok", scope: !982, file: !680, line: 11, baseType: !53, size: 1, align: 32, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "away", scope: !982, file: !680, line: 13, baseType: !53, size: 1, align: 32, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "join_announced", scope: !982, file: !680, line: 14, baseType: !53, size: 1, align: 32, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "last_whois", scope: !982, file: !680, line: 16, baseType: !311, size: 64, align: 64, offset: 384)
!994 = !DILocation(line: 134, column: 19, scope: !972)
!995 = !DILocation(line: 136, column: 2, scope: !972)
!996 = distinct !{!996, !995}
!997 = !DILocation(line: 136, column: 10, scope: !998)
!998 = !DILexicalBlockFile(scope: !999, file: !688, discriminator: 1)
!999 = distinct !DILexicalBlock(scope: !1000, file: !688, line: 136, column: 10)
!1000 = distinct !DILexicalBlock(scope: !972, file: !688, line: 136, column: 4)
!1001 = !DILocation(line: 136, column: 15, scope: !998)
!1002 = !DILocation(line: 136, column: 5, scope: !1003)
!1003 = !DILexicalBlockFile(scope: !1004, file: !688, discriminator: 2)
!1004 = distinct !DILexicalBlock(scope: !999, file: !688, line: 136, column: 3)
!1005 = !DILocation(line: 136, column: 14, scope: !1006)
!1006 = !DILexicalBlockFile(scope: !1007, file: !688, discriminator: 3)
!1007 = distinct !DILexicalBlock(scope: !999, file: !688, line: 136, column: 12)
!1008 = !DILocation(line: 136, column: 99, scope: !1006)
!1009 = !DILocation(line: 136, column: 116, scope: !1010)
!1010 = !DILexicalBlockFile(scope: !1000, file: !688, discriminator: 4)
!1011 = !DILocation(line: 137, column: 2, scope: !972)
!1012 = distinct !{!1012, !1011}
!1013 = !DILocation(line: 137, column: 90, scope: !1014)
!1014 = !DILexicalBlockFile(scope: !1015, file: !688, discriminator: 1)
!1015 = distinct !DILexicalBlock(scope: !1016, file: !688, line: 137, column: 10)
!1016 = distinct !DILexicalBlock(scope: !972, file: !688, line: 137, column: 4)
!1017 = !DILocation(line: 137, column: 72, scope: !1014)
!1018 = !DILocation(line: 137, column: 57, scope: !1014)
!1019 = !DILocation(line: 137, column: 56, scope: !1014)
!1020 = !DILocation(line: 137, column: 31, scope: !1021)
!1021 = !DILexicalBlockFile(scope: !1014, file: !688, discriminator: 7)
!1022 = !DILocation(line: 137, column: 12, scope: !1014)
!1023 = !DILocation(line: 137, column: 10, scope: !1014)
!1024 = !DILocation(line: 137, column: 11, scope: !1025)
!1025 = !DILexicalBlockFile(scope: !1015, file: !688, discriminator: 2)
!1026 = !DILocation(line: 137, column: 10, scope: !1027)
!1027 = !DILexicalBlockFile(scope: !1016, file: !688, discriminator: 3)
!1028 = !DILocation(line: 137, column: 30, scope: !1029)
!1029 = !DILexicalBlockFile(scope: !1030, file: !688, discriminator: 4)
!1030 = distinct !DILexicalBlock(scope: !1015, file: !688, line: 137, column: 28)
!1031 = !DILocation(line: 137, column: 39, scope: !1032)
!1032 = !DILexicalBlockFile(scope: !1033, file: !688, discriminator: 5)
!1033 = distinct !DILexicalBlock(scope: !1015, file: !688, line: 137, column: 37)
!1034 = !DILocation(line: 137, column: 133, scope: !1032)
!1035 = !DILocation(line: 137, column: 150, scope: !1036)
!1036 = !DILexicalBlockFile(scope: !1016, file: !688, discriminator: 6)
!1037 = !DILocation(line: 139, column: 25, scope: !972)
!1038 = !DILocation(line: 139, column: 33, scope: !972)
!1039 = !DILocation(line: 139, column: 8, scope: !972)
!1040 = !DILocation(line: 139, column: 6, scope: !972)
!1041 = !DILocation(line: 140, column: 9, scope: !972)
!1042 = !DILocation(line: 140, column: 13, scope: !972)
!1043 = !DILocation(line: 140, column: 20, scope: !972)
!1044 = !DILocation(line: 140, column: 23, scope: !1045)
!1045 = !DILexicalBlockFile(scope: !972, file: !688, discriminator: 1)
!1046 = !DILocation(line: 140, column: 28, scope: !1045)
!1047 = !DILocation(line: 140, column: 36, scope: !1045)
!1048 = !DILocation(line: 140, column: 39, scope: !1049)
!1049 = !DILexicalBlockFile(scope: !972, file: !688, discriminator: 2)
!1050 = !DILocation(line: 140, column: 44, scope: !1049)
!1051 = !DILocation(line: 140, column: 36, scope: !1049)
!1052 = !DILocation(line: 140, column: 36, scope: !1053)
!1053 = !DILexicalBlockFile(scope: !972, file: !688, discriminator: 3)
!1054 = !DILocation(line: 140, column: 2, scope: !1053)
!1055 = !DILocation(line: 141, column: 1, scope: !972)
!1056 = distinct !DISubprogram(name: "notifylist_ison", scope: !688, file: !688, line: 166, type: !1057, isLocal: false, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!59, !41, !41}
!1059 = !DILocalVariable(name: "nick", arg: 1, scope: !1056, file: !688, line: 166, type: !41)
!1060 = !DILocation(line: 166, column: 45, scope: !1056)
!1061 = !DILocalVariable(name: "serverlist", arg: 2, scope: !1056, file: !688, line: 166, type: !41)
!1062 = !DILocation(line: 166, column: 63, scope: !1056)
!1063 = !DILocalVariable(name: "tmp", scope: !1056, file: !688, line: 168, type: !227)
!1064 = !DILocation(line: 168, column: 10, scope: !1056)
!1065 = !DILocation(line: 170, column: 2, scope: !1056)
!1066 = distinct !{!1066, !1065}
!1067 = !DILocation(line: 170, column: 10, scope: !1068)
!1068 = !DILexicalBlockFile(scope: !1069, file: !688, discriminator: 1)
!1069 = distinct !DILexicalBlock(scope: !1070, file: !688, line: 170, column: 10)
!1070 = distinct !DILexicalBlock(scope: !1056, file: !688, line: 170, column: 4)
!1071 = !DILocation(line: 170, column: 15, scope: !1068)
!1072 = !DILocation(line: 170, column: 5, scope: !1073)
!1073 = !DILexicalBlockFile(scope: !1074, file: !688, discriminator: 2)
!1074 = distinct !DILexicalBlock(scope: !1069, file: !688, line: 170, column: 3)
!1075 = !DILocation(line: 170, column: 14, scope: !1076)
!1076 = !DILexicalBlockFile(scope: !1077, file: !688, discriminator: 3)
!1077 = distinct !DILexicalBlock(scope: !1069, file: !688, line: 170, column: 12)
!1078 = !DILocation(line: 170, column: 99, scope: !1076)
!1079 = !DILocation(line: 170, column: 116, scope: !1080)
!1080 = !DILexicalBlockFile(scope: !1070, file: !688, discriminator: 4)
!1081 = !DILocation(line: 171, column: 2, scope: !1056)
!1082 = distinct !{!1082, !1081}
!1083 = !DILocation(line: 171, column: 10, scope: !1084)
!1084 = !DILexicalBlockFile(scope: !1085, file: !688, discriminator: 1)
!1085 = distinct !DILexicalBlock(scope: !1086, file: !688, line: 171, column: 10)
!1086 = distinct !DILexicalBlock(scope: !1056, file: !688, line: 171, column: 4)
!1087 = !DILocation(line: 171, column: 21, scope: !1084)
!1088 = !DILocation(line: 171, column: 5, scope: !1089)
!1089 = !DILexicalBlockFile(scope: !1090, file: !688, discriminator: 2)
!1090 = distinct !DILexicalBlock(scope: !1085, file: !688, line: 171, column: 3)
!1091 = !DILocation(line: 171, column: 14, scope: !1092)
!1092 = !DILexicalBlockFile(scope: !1093, file: !688, discriminator: 3)
!1093 = distinct !DILexicalBlock(scope: !1085, file: !688, line: 171, column: 12)
!1094 = !DILocation(line: 171, column: 105, scope: !1092)
!1095 = !DILocation(line: 171, column: 122, scope: !1096)
!1096 = !DILexicalBlockFile(scope: !1086, file: !688, discriminator: 4)
!1097 = !DILocation(line: 173, column: 7, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1056, file: !688, line: 173, column: 6)
!1099 = !DILocation(line: 173, column: 6, scope: !1098)
!1100 = !DILocation(line: 173, column: 18, scope: !1098)
!1101 = !DILocation(line: 173, column: 6, scope: !1056)
!1102 = !DILocation(line: 174, column: 37, scope: !1098)
!1103 = !DILocation(line: 174, column: 43, scope: !1098)
!1104 = !DILocation(line: 174, column: 10, scope: !1098)
!1105 = !DILocation(line: 174, column: 3, scope: !1098)
!1106 = !DILocation(line: 177, column: 13, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1056, file: !688, line: 177, column: 2)
!1108 = !DILocation(line: 177, column: 11, scope: !1107)
!1109 = !DILocation(line: 177, column: 7, scope: !1107)
!1110 = !DILocation(line: 177, column: 22, scope: !1111)
!1111 = !DILexicalBlockFile(scope: !1112, file: !688, discriminator: 1)
!1112 = distinct !DILexicalBlock(scope: !1107, file: !688, line: 177, column: 2)
!1113 = !DILocation(line: 177, column: 26, scope: !1111)
!1114 = !DILocation(line: 177, column: 2, scope: !1111)
!1115 = !DILocalVariable(name: "server", scope: !1116, file: !688, line: 178, type: !59)
!1116 = distinct !DILexicalBlock(scope: !1112, file: !688, line: 177, column: 51)
!1117 = !DILocation(line: 178, column: 19, scope: !1116)
!1118 = !DILocation(line: 178, column: 28, scope: !1116)
!1119 = !DILocation(line: 178, column: 33, scope: !1116)
!1120 = !DILocation(line: 180, column: 87, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1116, file: !688, line: 180, column: 7)
!1122 = !DILocation(line: 180, column: 69, scope: !1121)
!1123 = !DILocation(line: 180, column: 54, scope: !1121)
!1124 = !DILocation(line: 180, column: 53, scope: !1121)
!1125 = !DILocation(line: 180, column: 28, scope: !1126)
!1126 = !DILexicalBlockFile(scope: !1121, file: !688, discriminator: 4)
!1127 = !DILocation(line: 180, column: 9, scope: !1121)
!1128 = !DILocation(line: 180, column: 32, scope: !1121)
!1129 = !DILocation(line: 180, column: 8, scope: !1130)
!1130 = !DILexicalBlockFile(scope: !1121, file: !688, discriminator: 1)
!1131 = !DILocation(line: 180, column: 32, scope: !1132)
!1132 = !DILexicalBlockFile(scope: !1121, file: !688, discriminator: 2)
!1133 = !DILocation(line: 181, column: 30, scope: !1121)
!1134 = !DILocation(line: 181, column: 38, scope: !1121)
!1135 = !DILocation(line: 181, column: 7, scope: !1121)
!1136 = !DILocation(line: 180, column: 7, scope: !1137)
!1137 = !DILexicalBlockFile(scope: !1116, file: !688, discriminator: 3)
!1138 = !DILocation(line: 182, column: 11, scope: !1121)
!1139 = !DILocation(line: 182, column: 16, scope: !1121)
!1140 = !DILocation(line: 182, column: 4, scope: !1121)
!1141 = !DILocation(line: 183, column: 2, scope: !1116)
!1142 = !DILocation(line: 177, column: 40, scope: !1143)
!1143 = !DILexicalBlockFile(scope: !1112, file: !688, discriminator: 2)
!1144 = !DILocation(line: 177, column: 45, scope: !1143)
!1145 = !DILocation(line: 177, column: 38, scope: !1143)
!1146 = !DILocation(line: 177, column: 2, scope: !1143)
!1147 = distinct !{!1147, !1148}
!1148 = !DILocation(line: 177, column: 2, scope: !1056)
!1149 = !DILocation(line: 185, column: 2, scope: !1056)
!1150 = !DILocation(line: 186, column: 1, scope: !1056)
!1151 = distinct !DISubprogram(name: "notifylist_ison_serverlist", scope: !688, file: !688, line: 143, type: !1057, isLocal: true, isDefinition: true, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!1152 = !DILocalVariable(name: "nick", arg: 1, scope: !1151, file: !688, line: 143, type: !41)
!1153 = !DILocation(line: 143, column: 63, scope: !1151)
!1154 = !DILocalVariable(name: "taglist", arg: 2, scope: !1151, file: !688, line: 143, type: !41)
!1155 = !DILocation(line: 143, column: 81, scope: !1151)
!1156 = !DILocalVariable(name: "server", scope: !1151, file: !688, line: 145, type: !59)
!1157 = !DILocation(line: 145, column: 18, scope: !1151)
!1158 = !DILocalVariable(name: "list", scope: !1151, file: !688, line: 146, type: !51)
!1159 = !DILocation(line: 146, column: 9, scope: !1151)
!1160 = !DILocalVariable(name: "tmp", scope: !1151, file: !688, line: 146, type: !51)
!1161 = !DILocation(line: 146, column: 17, scope: !1151)
!1162 = !DILocation(line: 148, column: 2, scope: !1151)
!1163 = distinct !{!1163, !1162}
!1164 = !DILocation(line: 148, column: 10, scope: !1165)
!1165 = !DILexicalBlockFile(scope: !1166, file: !688, discriminator: 1)
!1166 = distinct !DILexicalBlock(scope: !1167, file: !688, line: 148, column: 10)
!1167 = distinct !DILexicalBlock(scope: !1151, file: !688, line: 148, column: 4)
!1168 = !DILocation(line: 148, column: 15, scope: !1165)
!1169 = !DILocation(line: 148, column: 5, scope: !1170)
!1170 = !DILexicalBlockFile(scope: !1171, file: !688, discriminator: 2)
!1171 = distinct !DILexicalBlock(scope: !1166, file: !688, line: 148, column: 3)
!1172 = !DILocation(line: 148, column: 14, scope: !1173)
!1173 = !DILexicalBlockFile(scope: !1174, file: !688, discriminator: 3)
!1174 = distinct !DILexicalBlock(scope: !1166, file: !688, line: 148, column: 12)
!1175 = !DILocation(line: 148, column: 99, scope: !1173)
!1176 = !DILocation(line: 148, column: 7, scope: !1177)
!1177 = !DILexicalBlockFile(scope: !1167, file: !688, discriminator: 4)
!1178 = !DILocation(line: 149, column: 2, scope: !1151)
!1179 = distinct !{!1179, !1178}
!1180 = !DILocation(line: 149, column: 10, scope: !1181)
!1181 = !DILexicalBlockFile(scope: !1182, file: !688, discriminator: 1)
!1182 = distinct !DILexicalBlock(scope: !1183, file: !688, line: 149, column: 10)
!1183 = distinct !DILexicalBlock(scope: !1151, file: !688, line: 149, column: 4)
!1184 = !DILocation(line: 149, column: 18, scope: !1181)
!1185 = !DILocation(line: 149, column: 5, scope: !1186)
!1186 = !DILexicalBlockFile(scope: !1187, file: !688, discriminator: 2)
!1187 = distinct !DILexicalBlock(scope: !1182, file: !688, line: 149, column: 3)
!1188 = !DILocation(line: 149, column: 14, scope: !1189)
!1189 = !DILexicalBlockFile(scope: !1190, file: !688, discriminator: 3)
!1190 = distinct !DILexicalBlock(scope: !1182, file: !688, line: 149, column: 12)
!1191 = !DILocation(line: 149, column: 102, scope: !1189)
!1192 = !DILocation(line: 149, column: 7, scope: !1193)
!1193 = !DILexicalBlockFile(scope: !1183, file: !688, discriminator: 4)
!1194 = !DILocation(line: 151, column: 20, scope: !1151)
!1195 = !DILocation(line: 151, column: 9, scope: !1151)
!1196 = !DILocation(line: 151, column: 7, scope: !1151)
!1197 = !DILocation(line: 153, column: 9, scope: !1151)
!1198 = !DILocation(line: 154, column: 13, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1151, file: !688, line: 154, column: 2)
!1200 = !DILocation(line: 154, column: 11, scope: !1199)
!1201 = !DILocation(line: 154, column: 7, scope: !1199)
!1202 = !DILocation(line: 154, column: 20, scope: !1203)
!1203 = !DILexicalBlockFile(scope: !1204, file: !688, discriminator: 1)
!1204 = distinct !DILexicalBlock(scope: !1199, file: !688, line: 154, column: 2)
!1205 = !DILocation(line: 154, column: 19, scope: !1203)
!1206 = !DILocation(line: 154, column: 24, scope: !1203)
!1207 = !DILocation(line: 154, column: 2, scope: !1203)
!1208 = !DILocation(line: 155, column: 52, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1204, file: !688, line: 154, column: 39)
!1210 = !DILocation(line: 155, column: 51, scope: !1209)
!1211 = !DILocation(line: 155, column: 31, scope: !1209)
!1212 = !DILocation(line: 155, column: 12, scope: !1209)
!1213 = !DILocation(line: 155, column: 10, scope: !1209)
!1214 = !DILocation(line: 157, column: 87, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1209, file: !688, line: 157, column: 7)
!1216 = !DILocation(line: 157, column: 69, scope: !1215)
!1217 = !DILocation(line: 157, column: 54, scope: !1215)
!1218 = !DILocation(line: 157, column: 53, scope: !1215)
!1219 = !DILocation(line: 157, column: 28, scope: !1220)
!1220 = !DILexicalBlockFile(scope: !1215, file: !688, discriminator: 4)
!1221 = !DILocation(line: 157, column: 9, scope: !1215)
!1222 = !DILocation(line: 157, column: 32, scope: !1215)
!1223 = !DILocation(line: 157, column: 8, scope: !1224)
!1224 = !DILexicalBlockFile(scope: !1215, file: !688, discriminator: 1)
!1225 = !DILocation(line: 157, column: 32, scope: !1226)
!1226 = !DILexicalBlockFile(scope: !1215, file: !688, discriminator: 2)
!1227 = !DILocation(line: 158, column: 30, scope: !1215)
!1228 = !DILocation(line: 158, column: 38, scope: !1215)
!1229 = !DILocation(line: 158, column: 7, scope: !1215)
!1230 = !DILocation(line: 157, column: 7, scope: !1231)
!1231 = !DILexicalBlockFile(scope: !1209, file: !688, discriminator: 3)
!1232 = !DILocation(line: 159, column: 4, scope: !1215)
!1233 = !DILocation(line: 160, column: 2, scope: !1209)
!1234 = !DILocation(line: 154, column: 35, scope: !1235)
!1235 = !DILexicalBlockFile(scope: !1204, file: !688, discriminator: 2)
!1236 = !DILocation(line: 154, column: 2, scope: !1235)
!1237 = distinct !{!1237, !1238}
!1238 = !DILocation(line: 154, column: 2, scope: !1151)
!1239 = !DILocation(line: 161, column: 13, scope: !1151)
!1240 = !DILocation(line: 161, column: 2, scope: !1151)
!1241 = !DILocation(line: 163, column: 9, scope: !1151)
!1242 = !DILocation(line: 163, column: 13, scope: !1151)
!1243 = !DILocation(line: 163, column: 9, scope: !1244)
!1244 = !DILexicalBlockFile(scope: !1151, file: !688, discriminator: 1)
!1245 = !DILocation(line: 163, column: 29, scope: !1246)
!1246 = !DILexicalBlockFile(scope: !1151, file: !688, discriminator: 2)
!1247 = !DILocation(line: 163, column: 9, scope: !1246)
!1248 = !DILocation(line: 163, column: 9, scope: !1249)
!1249 = !DILexicalBlockFile(scope: !1151, file: !688, discriminator: 3)
!1250 = !DILocation(line: 163, column: 2, scope: !1249)
!1251 = !DILocation(line: 164, column: 1, scope: !1151)
!1252 = distinct !DISubprogram(name: "notifylist_left", scope: !688, file: !688, line: 222, type: !1253, isLocal: false, isDefinition: true, scopeLine: 223, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{null, !59, !980}
!1255 = !DILocalVariable(name: "server", arg: 1, scope: !1252, file: !688, line: 222, type: !59)
!1256 = !DILocation(line: 222, column: 38, scope: !1252)
!1257 = !DILocalVariable(name: "rec", arg: 2, scope: !1252, file: !688, line: 222, type: !980)
!1258 = !DILocation(line: 222, column: 63, scope: !1252)
!1259 = !DILocalVariable(name: "mserver", scope: !1252, file: !688, line: 224, type: !678)
!1260 = !DILocation(line: 224, column: 21, scope: !1252)
!1261 = !DILocation(line: 226, column: 33, scope: !1252)
!1262 = !DILocation(line: 226, column: 42, scope: !1252)
!1263 = !DILocation(line: 226, column: 12, scope: !1252)
!1264 = !DILocation(line: 226, column: 10, scope: !1252)
!1265 = !DILocation(line: 227, column: 41, scope: !1252)
!1266 = !DILocation(line: 227, column: 50, scope: !1252)
!1267 = !DILocation(line: 227, column: 64, scope: !1252)
!1268 = !DILocation(line: 227, column: 26, scope: !1252)
!1269 = !DILocation(line: 227, column: 2, scope: !1252)
!1270 = !DILocation(line: 227, column: 11, scope: !1252)
!1271 = !DILocation(line: 227, column: 24, scope: !1252)
!1272 = !DILocation(line: 229, column: 6, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1252, file: !688, line: 229, column: 6)
!1274 = !DILocation(line: 229, column: 11, scope: !1273)
!1275 = !DILocation(line: 229, column: 19, scope: !1273)
!1276 = !DILocation(line: 229, column: 22, scope: !1277)
!1277 = !DILexicalBlockFile(scope: !1273, file: !688, discriminator: 1)
!1278 = !DILocation(line: 229, column: 27, scope: !1277)
!1279 = !DILocation(line: 229, column: 6, scope: !1277)
!1280 = !DILocation(line: 231, column: 8, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1273, file: !688, line: 229, column: 36)
!1282 = !DILocation(line: 231, column: 16, scope: !1281)
!1283 = !DILocation(line: 231, column: 21, scope: !1281)
!1284 = !DILocation(line: 232, column: 8, scope: !1281)
!1285 = !DILocation(line: 232, column: 13, scope: !1281)
!1286 = !DILocation(line: 232, column: 19, scope: !1281)
!1287 = !DILocation(line: 232, column: 24, scope: !1281)
!1288 = !DILocation(line: 233, column: 8, scope: !1281)
!1289 = !DILocation(line: 233, column: 13, scope: !1281)
!1290 = !DILocation(line: 233, column: 23, scope: !1281)
!1291 = !DILocation(line: 233, column: 28, scope: !1281)
!1292 = !DILocation(line: 230, column: 3, scope: !1281)
!1293 = !DILocation(line: 234, column: 2, scope: !1281)
!1294 = !DILocation(line: 236, column: 22, scope: !1252)
!1295 = !DILocation(line: 236, column: 2, scope: !1252)
!1296 = !DILocation(line: 237, column: 1, scope: !1252)
!1297 = distinct !DISubprogram(name: "irc_notifylist_init", scope: !688, file: !688, line: 326, type: !215, isLocal: false, isDefinition: true, scopeLine: 327, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!1298 = !DILocation(line: 328, column: 2, scope: !1297)
!1299 = !DILocation(line: 330, column: 2, scope: !1297)
!1300 = !DILocation(line: 331, column: 2, scope: !1297)
!1301 = !DILocation(line: 332, column: 2, scope: !1297)
!1302 = !DILocation(line: 333, column: 2, scope: !1297)
!1303 = !DILocation(line: 334, column: 2, scope: !1297)
!1304 = !DILocation(line: 335, column: 2, scope: !1297)
!1305 = !DILocation(line: 336, column: 2, scope: !1297)
!1306 = !DILocation(line: 337, column: 2, scope: !1297)
!1307 = !DILocation(line: 338, column: 2, scope: !1297)
!1308 = !DILocation(line: 339, column: 2, scope: !1297)
!1309 = !DILocation(line: 341, column: 2, scope: !1297)
!1310 = !DILocation(line: 342, column: 2, scope: !1297)
!1311 = !DILocation(line: 343, column: 1, scope: !1297)
!1312 = distinct !DISubprogram(name: "notifylist_init_server", scope: !688, file: !688, line: 188, type: !1313, isLocal: true, isDefinition: true, scopeLine: 189, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{null, !59}
!1315 = !DILocalVariable(name: "server", arg: 1, scope: !1312, file: !688, line: 188, type: !59)
!1316 = !DILocation(line: 188, column: 52, scope: !1312)
!1317 = !DILocalVariable(name: "rec", scope: !1312, file: !688, line: 190, type: !678)
!1318 = !DILocation(line: 190, column: 21, scope: !1312)
!1319 = !DILocation(line: 192, column: 2, scope: !1312)
!1320 = distinct !{!1320, !1319}
!1321 = !DILocation(line: 192, column: 10, scope: !1322)
!1322 = !DILexicalBlockFile(scope: !1323, file: !688, discriminator: 1)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !688, line: 192, column: 10)
!1324 = distinct !DILexicalBlock(scope: !1312, file: !688, line: 192, column: 4)
!1325 = !DILocation(line: 192, column: 17, scope: !1322)
!1326 = !DILocation(line: 192, column: 5, scope: !1327)
!1327 = !DILexicalBlockFile(scope: !1328, file: !688, discriminator: 2)
!1328 = distinct !DILexicalBlock(scope: !1323, file: !688, line: 192, column: 3)
!1329 = !DILocation(line: 192, column: 14, scope: !1330)
!1330 = !DILexicalBlockFile(scope: !1331, file: !688, discriminator: 3)
!1331 = distinct !DILexicalBlock(scope: !1323, file: !688, line: 192, column: 12)
!1332 = !DILocation(line: 192, column: 101, scope: !1330)
!1333 = !DILocation(line: 192, column: 112, scope: !1334)
!1334 = !DILexicalBlockFile(scope: !1324, file: !688, discriminator: 4)
!1335 = !DILocation(line: 194, column: 87, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1312, file: !688, line: 194, column: 6)
!1337 = !DILocation(line: 194, column: 69, scope: !1336)
!1338 = !DILocation(line: 194, column: 54, scope: !1336)
!1339 = !DILocation(line: 194, column: 53, scope: !1336)
!1340 = !DILocation(line: 194, column: 28, scope: !1341)
!1341 = !DILexicalBlockFile(scope: !1336, file: !688, discriminator: 3)
!1342 = !DILocation(line: 194, column: 9, scope: !1336)
!1343 = !DILocation(line: 194, column: 6, scope: !1312)
!1344 = !DILocation(line: 194, column: 8, scope: !1345)
!1345 = !DILexicalBlockFile(scope: !1336, file: !688, discriminator: 1)
!1346 = !DILocation(line: 194, column: 6, scope: !1347)
!1347 = !DILexicalBlockFile(scope: !1312, file: !688, discriminator: 2)
!1348 = !DILocation(line: 195, column: 3, scope: !1336)
!1349 = !DILocation(line: 197, column: 31, scope: !1312)
!1350 = !DILocation(line: 197, column: 9, scope: !1312)
!1351 = !DILocation(line: 197, column: 6, scope: !1312)
!1352 = !DILocation(line: 198, column: 23, scope: !1312)
!1353 = !DILocation(line: 198, column: 32, scope: !1312)
!1354 = !DILocation(line: 198, column: 63, scope: !1312)
!1355 = !DILocation(line: 198, column: 2, scope: !1312)
!1356 = !DILocation(line: 199, column: 1, scope: !1312)
!1357 = !DILocation(line: 199, column: 1, scope: !1358)
!1358 = !DILexicalBlockFile(scope: !1312, file: !688, discriminator: 1)
!1359 = distinct !DISubprogram(name: "notifylist_deinit_server", scope: !688, file: !688, line: 201, type: !1313, isLocal: true, isDefinition: true, scopeLine: 202, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!1360 = !DILocalVariable(name: "server", arg: 1, scope: !1359, file: !688, line: 201, type: !59)
!1361 = !DILocation(line: 201, column: 54, scope: !1359)
!1362 = !DILocalVariable(name: "mserver", scope: !1359, file: !688, line: 203, type: !678)
!1363 = !DILocation(line: 203, column: 21, scope: !1359)
!1364 = !DILocalVariable(name: "rec", scope: !1359, file: !688, line: 204, type: !980)
!1365 = !DILocation(line: 204, column: 19, scope: !1359)
!1366 = !DILocation(line: 206, column: 2, scope: !1359)
!1367 = distinct !{!1367, !1366}
!1368 = !DILocation(line: 206, column: 10, scope: !1369)
!1369 = !DILexicalBlockFile(scope: !1370, file: !688, discriminator: 1)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !688, line: 206, column: 10)
!1371 = distinct !DILexicalBlock(scope: !1359, file: !688, line: 206, column: 4)
!1372 = !DILocation(line: 206, column: 17, scope: !1369)
!1373 = !DILocation(line: 206, column: 5, scope: !1374)
!1374 = !DILexicalBlockFile(scope: !1375, file: !688, discriminator: 2)
!1375 = distinct !DILexicalBlock(scope: !1370, file: !688, line: 206, column: 3)
!1376 = !DILocation(line: 206, column: 14, scope: !1377)
!1377 = !DILexicalBlockFile(scope: !1378, file: !688, discriminator: 3)
!1378 = distinct !DILexicalBlock(scope: !1370, file: !688, line: 206, column: 12)
!1379 = !DILocation(line: 206, column: 101, scope: !1377)
!1380 = !DILocation(line: 206, column: 112, scope: !1381)
!1381 = !DILexicalBlockFile(scope: !1371, file: !688, discriminator: 4)
!1382 = !DILocation(line: 208, column: 87, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1359, file: !688, line: 208, column: 6)
!1384 = !DILocation(line: 208, column: 69, scope: !1383)
!1385 = !DILocation(line: 208, column: 54, scope: !1383)
!1386 = !DILocation(line: 208, column: 53, scope: !1383)
!1387 = !DILocation(line: 208, column: 28, scope: !1388)
!1388 = !DILexicalBlockFile(scope: !1383, file: !688, discriminator: 3)
!1389 = !DILocation(line: 208, column: 9, scope: !1383)
!1390 = !DILocation(line: 208, column: 6, scope: !1359)
!1391 = !DILocation(line: 208, column: 8, scope: !1392)
!1392 = !DILexicalBlockFile(scope: !1383, file: !688, discriminator: 1)
!1393 = !DILocation(line: 208, column: 6, scope: !1394)
!1394 = !DILexicalBlockFile(scope: !1359, file: !688, discriminator: 2)
!1395 = !DILocation(line: 209, column: 3, scope: !1383)
!1396 = !DILocation(line: 211, column: 33, scope: !1359)
!1397 = !DILocation(line: 211, column: 42, scope: !1359)
!1398 = !DILocation(line: 211, column: 12, scope: !1359)
!1399 = !DILocation(line: 211, column: 10, scope: !1359)
!1400 = !DILocation(line: 212, column: 2, scope: !1359)
!1401 = !DILocation(line: 212, column: 9, scope: !1402)
!1402 = !DILexicalBlockFile(scope: !1359, file: !688, discriminator: 1)
!1403 = !DILocation(line: 212, column: 18, scope: !1402)
!1404 = !DILocation(line: 212, column: 31, scope: !1402)
!1405 = !DILocation(line: 212, column: 2, scope: !1402)
!1406 = !DILocation(line: 213, column: 9, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1359, file: !688, line: 212, column: 39)
!1408 = !DILocation(line: 213, column: 18, scope: !1407)
!1409 = !DILocation(line: 213, column: 32, scope: !1407)
!1410 = !DILocation(line: 213, column: 7, scope: !1407)
!1411 = !DILocation(line: 215, column: 42, scope: !1407)
!1412 = !DILocation(line: 215, column: 51, scope: !1407)
!1413 = !DILocation(line: 215, column: 65, scope: !1407)
!1414 = !DILocation(line: 215, column: 27, scope: !1407)
!1415 = !DILocation(line: 215, column: 3, scope: !1407)
!1416 = !DILocation(line: 215, column: 12, scope: !1407)
!1417 = !DILocation(line: 215, column: 25, scope: !1407)
!1418 = !DILocation(line: 216, column: 23, scope: !1407)
!1419 = !DILocation(line: 216, column: 3, scope: !1407)
!1420 = !DILocation(line: 212, column: 2, scope: !1394)
!1421 = distinct !{!1421, !1400}
!1422 = !DILocation(line: 218, column: 9, scope: !1359)
!1423 = !DILocation(line: 218, column: 2, scope: !1359)
!1424 = !DILocation(line: 219, column: 23, scope: !1359)
!1425 = !DILocation(line: 219, column: 32, scope: !1359)
!1426 = !DILocation(line: 219, column: 2, scope: !1359)
!1427 = !DILocation(line: 220, column: 1, scope: !1359)
!1428 = !DILocation(line: 220, column: 1, scope: !1402)
!1429 = distinct !DISubprogram(name: "event_quit", scope: !688, file: !688, line: 239, type: !1430, isLocal: true, isDefinition: true, scopeLine: 241, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{null, !59, !41, !41}
!1432 = !DILocalVariable(name: "server", arg: 1, scope: !1429, file: !688, line: 239, type: !59)
!1433 = !DILocation(line: 239, column: 40, scope: !1429)
!1434 = !DILocalVariable(name: "data", arg: 2, scope: !1429, file: !688, line: 239, type: !41)
!1435 = !DILocation(line: 239, column: 60, scope: !1429)
!1436 = !DILocalVariable(name: "nick", arg: 3, scope: !1429, file: !688, line: 240, type: !41)
!1437 = !DILocation(line: 240, column: 22, scope: !1429)
!1438 = !DILocalVariable(name: "rec", scope: !1429, file: !688, line: 242, type: !980)
!1439 = !DILocation(line: 242, column: 19, scope: !1429)
!1440 = !DILocation(line: 244, column: 7, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1429, file: !688, line: 244, column: 6)
!1442 = !DILocation(line: 244, column: 6, scope: !1441)
!1443 = !DILocation(line: 244, column: 12, scope: !1441)
!1444 = !DILocation(line: 244, column: 6, scope: !1429)
!1445 = !DILocation(line: 244, column: 24, scope: !1446)
!1446 = !DILexicalBlockFile(scope: !1441, file: !688, discriminator: 1)
!1447 = !DILocation(line: 244, column: 20, scope: !1446)
!1448 = !DILocation(line: 246, column: 25, scope: !1429)
!1449 = !DILocation(line: 246, column: 33, scope: !1429)
!1450 = !DILocation(line: 246, column: 8, scope: !1429)
!1451 = !DILocation(line: 246, column: 6, scope: !1429)
!1452 = !DILocation(line: 247, column: 6, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1429, file: !688, line: 247, column: 6)
!1454 = !DILocation(line: 247, column: 10, scope: !1453)
!1455 = !DILocation(line: 247, column: 6, scope: !1429)
!1456 = !DILocation(line: 247, column: 34, scope: !1457)
!1457 = !DILexicalBlockFile(scope: !1453, file: !688, discriminator: 1)
!1458 = !DILocation(line: 247, column: 42, scope: !1457)
!1459 = !DILocation(line: 247, column: 18, scope: !1457)
!1460 = !DILocation(line: 248, column: 1, scope: !1429)
!1461 = distinct !DISubprogram(name: "event_privmsg", scope: !688, file: !688, line: 299, type: !1462, isLocal: true, isDefinition: true, scopeLine: 301, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{null, !59, !41, !41, !41}
!1464 = !DILocalVariable(name: "server", arg: 1, scope: !1461, file: !688, line: 299, type: !59)
!1465 = !DILocation(line: 299, column: 43, scope: !1461)
!1466 = !DILocalVariable(name: "data", arg: 2, scope: !1461, file: !688, line: 299, type: !41)
!1467 = !DILocation(line: 299, column: 63, scope: !1461)
!1468 = !DILocalVariable(name: "nick", arg: 3, scope: !1461, file: !688, line: 300, type: !41)
!1469 = !DILocation(line: 300, column: 18, scope: !1461)
!1470 = !DILocalVariable(name: "address", arg: 4, scope: !1461, file: !688, line: 300, type: !41)
!1471 = !DILocation(line: 300, column: 36, scope: !1461)
!1472 = !DILocation(line: 302, column: 6, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1461, file: !688, line: 302, column: 6)
!1474 = !DILocation(line: 302, column: 11, scope: !1473)
!1475 = !DILocation(line: 302, column: 6, scope: !1461)
!1476 = !DILocation(line: 303, column: 25, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1473, file: !688, line: 302, column: 19)
!1478 = !DILocation(line: 303, column: 33, scope: !1477)
!1479 = !DILocation(line: 303, column: 39, scope: !1477)
!1480 = !DILocation(line: 303, column: 3, scope: !1477)
!1481 = !DILocation(line: 304, column: 2, scope: !1477)
!1482 = !DILocation(line: 305, column: 1, scope: !1461)
!1483 = distinct !DISubprogram(name: "event_join", scope: !688, file: !688, line: 307, type: !1462, isLocal: true, isDefinition: true, scopeLine: 309, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!1484 = !DILocalVariable(name: "server", arg: 1, scope: !1483, file: !688, line: 307, type: !59)
!1485 = !DILocation(line: 307, column: 40, scope: !1483)
!1486 = !DILocalVariable(name: "data", arg: 2, scope: !1483, file: !688, line: 307, type: !41)
!1487 = !DILocation(line: 307, column: 60, scope: !1483)
!1488 = !DILocalVariable(name: "nick", arg: 3, scope: !1483, file: !688, line: 308, type: !41)
!1489 = !DILocation(line: 308, column: 22, scope: !1483)
!1490 = !DILocalVariable(name: "address", arg: 4, scope: !1483, file: !688, line: 308, type: !41)
!1491 = !DILocation(line: 308, column: 40, scope: !1483)
!1492 = !DILocation(line: 310, column: 24, scope: !1483)
!1493 = !DILocation(line: 310, column: 32, scope: !1483)
!1494 = !DILocation(line: 310, column: 38, scope: !1483)
!1495 = !DILocation(line: 310, column: 2, scope: !1483)
!1496 = !DILocation(line: 311, column: 1, scope: !1483)
!1497 = distinct !DISubprogram(name: "sig_channel_wholist", scope: !688, file: !688, line: 313, type: !1498, isLocal: true, isDefinition: true, scopeLine: 314, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{null, !625}
!1500 = !DILocalVariable(name: "channel", arg: 1, scope: !1497, file: !688, line: 313, type: !625)
!1501 = !DILocation(line: 313, column: 50, scope: !1497)
!1502 = !DILocalVariable(name: "nicks", scope: !1497, file: !688, line: 315, type: !227)
!1503 = !DILocation(line: 315, column: 10, scope: !1497)
!1504 = !DILocalVariable(name: "tmp", scope: !1497, file: !688, line: 315, type: !227)
!1505 = !DILocation(line: 315, column: 18, scope: !1497)
!1506 = !DILocation(line: 317, column: 70, scope: !1497)
!1507 = !DILocation(line: 317, column: 45, scope: !1497)
!1508 = !DILocation(line: 317, column: 29, scope: !1497)
!1509 = !DILocation(line: 317, column: 10, scope: !1510)
!1510 = !DILexicalBlockFile(scope: !1497, file: !688, discriminator: 1)
!1511 = !DILocation(line: 317, column: 8, scope: !1497)
!1512 = !DILocation(line: 318, column: 13, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1497, file: !688, line: 318, column: 2)
!1514 = !DILocation(line: 318, column: 11, scope: !1513)
!1515 = !DILocation(line: 318, column: 7, scope: !1513)
!1516 = !DILocation(line: 318, column: 20, scope: !1517)
!1517 = !DILexicalBlockFile(scope: !1518, file: !688, discriminator: 1)
!1518 = distinct !DILexicalBlock(scope: !1513, file: !688, line: 318, column: 2)
!1519 = !DILocation(line: 318, column: 24, scope: !1517)
!1520 = !DILocation(line: 318, column: 2, scope: !1517)
!1521 = !DILocalVariable(name: "rec", scope: !1522, file: !688, line: 319, type: !502)
!1522 = distinct !DILexicalBlock(scope: !1518, file: !688, line: 318, column: 49)
!1523 = !DILocation(line: 319, column: 13, scope: !1522)
!1524 = !DILocation(line: 319, column: 19, scope: !1522)
!1525 = !DILocation(line: 319, column: 24, scope: !1522)
!1526 = !DILocation(line: 321, column: 25, scope: !1522)
!1527 = !DILocation(line: 321, column: 34, scope: !1522)
!1528 = !DILocation(line: 321, column: 42, scope: !1522)
!1529 = !DILocation(line: 321, column: 47, scope: !1522)
!1530 = !DILocation(line: 321, column: 53, scope: !1522)
!1531 = !DILocation(line: 321, column: 58, scope: !1522)
!1532 = !DILocation(line: 321, column: 64, scope: !1522)
!1533 = !DILocation(line: 321, column: 69, scope: !1522)
!1534 = !DILocation(line: 321, column: 79, scope: !1522)
!1535 = !DILocation(line: 321, column: 84, scope: !1522)
!1536 = !DILocation(line: 321, column: 3, scope: !1522)
!1537 = !DILocation(line: 322, column: 2, scope: !1522)
!1538 = !DILocation(line: 318, column: 38, scope: !1539)
!1539 = !DILexicalBlockFile(scope: !1518, file: !688, discriminator: 2)
!1540 = !DILocation(line: 318, column: 43, scope: !1539)
!1541 = !DILocation(line: 318, column: 36, scope: !1539)
!1542 = !DILocation(line: 318, column: 2, scope: !1539)
!1543 = distinct !{!1543, !1544}
!1544 = !DILocation(line: 318, column: 2, scope: !1497)
!1545 = !DILocation(line: 323, column: 22, scope: !1497)
!1546 = !DILocation(line: 323, column: 9, scope: !1497)
!1547 = !DILocation(line: 324, column: 1, scope: !1497)
!1548 = distinct !DISubprogram(name: "irc_notifylist_deinit", scope: !688, file: !688, line: 345, type: !215, isLocal: false, isDefinition: true, scopeLine: 346, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!1549 = !DILocation(line: 347, column: 2, scope: !1548)
!1550 = !DILocation(line: 348, column: 2, scope: !1548)
!1551 = !DILocation(line: 349, column: 2, scope: !1548)
!1552 = !DILocation(line: 351, column: 2, scope: !1548)
!1553 = !DILocation(line: 352, column: 2, scope: !1548)
!1554 = !DILocation(line: 353, column: 2, scope: !1548)
!1555 = !DILocation(line: 354, column: 2, scope: !1548)
!1556 = !DILocation(line: 355, column: 2, scope: !1548)
!1557 = !DILocation(line: 356, column: 2, scope: !1548)
!1558 = !DILocation(line: 357, column: 2, scope: !1548)
!1559 = !DILocation(line: 359, column: 2, scope: !1548)
!1560 = !DILocation(line: 360, column: 1, scope: !1548)
!1561 = distinct !DISubprogram(name: "notifylist_check_join", scope: !688, file: !688, line: 250, type: !1562, isLocal: true, isDefinition: true, scopeLine: 252, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{null, !59, !41, !41, !41, !67}
!1564 = !DILocalVariable(name: "server", arg: 1, scope: !1561, file: !688, line: 250, type: !59)
!1565 = !DILocation(line: 250, column: 51, scope: !1561)
!1566 = !DILocalVariable(name: "nick", arg: 2, scope: !1561, file: !688, line: 250, type: !41)
!1567 = !DILocation(line: 250, column: 71, scope: !1561)
!1568 = !DILocalVariable(name: "userhost", arg: 3, scope: !1561, file: !688, line: 251, type: !41)
!1569 = !DILocation(line: 251, column: 19, scope: !1561)
!1570 = !DILocalVariable(name: "realname", arg: 4, scope: !1561, file: !688, line: 251, type: !41)
!1571 = !DILocation(line: 251, column: 41, scope: !1561)
!1572 = !DILocalVariable(name: "away", arg: 5, scope: !1561, file: !688, line: 251, type: !67)
!1573 = !DILocation(line: 251, column: 55, scope: !1561)
!1574 = !DILocalVariable(name: "notify", scope: !1561, file: !688, line: 253, type: !43)
!1575 = !DILocation(line: 253, column: 18, scope: !1561)
!1576 = !DILocalVariable(name: "rec", scope: !1561, file: !688, line: 254, type: !980)
!1577 = !DILocation(line: 254, column: 19, scope: !1561)
!1578 = !DILocalVariable(name: "user", scope: !1561, file: !688, line: 255, type: !49)
!1579 = !DILocation(line: 255, column: 8, scope: !1561)
!1580 = !DILocalVariable(name: "host", scope: !1561, file: !688, line: 255, type: !49)
!1581 = !DILocation(line: 255, column: 15, scope: !1561)
!1582 = !DILocation(line: 257, column: 6, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1561, file: !688, line: 257, column: 6)
!1584 = !DILocation(line: 257, column: 11, scope: !1583)
!1585 = !DILocation(line: 257, column: 6, scope: !1561)
!1586 = !DILocation(line: 258, column: 3, scope: !1583)
!1587 = !DILocation(line: 260, column: 27, scope: !1561)
!1588 = !DILocation(line: 260, column: 33, scope: !1561)
!1589 = !DILocation(line: 260, column: 41, scope: !1561)
!1590 = !DILocation(line: 260, column: 50, scope: !1561)
!1591 = !DILocation(line: 260, column: 11, scope: !1561)
!1592 = !DILocation(line: 260, column: 9, scope: !1561)
!1593 = !DILocation(line: 261, column: 6, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1561, file: !688, line: 261, column: 6)
!1595 = !DILocation(line: 261, column: 13, scope: !1594)
!1596 = !DILocation(line: 261, column: 6, scope: !1561)
!1597 = !DILocation(line: 261, column: 21, scope: !1598)
!1598 = !DILexicalBlockFile(scope: !1594, file: !688, discriminator: 1)
!1599 = !DILocation(line: 263, column: 25, scope: !1561)
!1600 = !DILocation(line: 263, column: 33, scope: !1561)
!1601 = !DILocation(line: 263, column: 8, scope: !1561)
!1602 = !DILocation(line: 263, column: 6, scope: !1561)
!1603 = !DILocation(line: 264, column: 6, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1561, file: !688, line: 264, column: 6)
!1605 = !DILocation(line: 264, column: 10, scope: !1604)
!1606 = !DILocation(line: 264, column: 17, scope: !1604)
!1607 = !DILocation(line: 264, column: 20, scope: !1608)
!1608 = !DILexicalBlockFile(scope: !1604, file: !688, discriminator: 1)
!1609 = !DILocation(line: 264, column: 25, scope: !1608)
!1610 = !DILocation(line: 264, column: 6, scope: !1608)
!1611 = !DILocation(line: 264, column: 41, scope: !1612)
!1612 = !DILexicalBlockFile(scope: !1604, file: !688, discriminator: 2)
!1613 = !DILocation(line: 265, column: 6, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1561, file: !688, line: 265, column: 6)
!1615 = !DILocation(line: 265, column: 10, scope: !1614)
!1616 = !DILocation(line: 265, column: 6, scope: !1561)
!1617 = !DILocation(line: 265, column: 43, scope: !1618)
!1618 = !DILexicalBlockFile(scope: !1614, file: !688, discriminator: 1)
!1619 = !DILocation(line: 265, column: 51, scope: !1618)
!1620 = !DILocation(line: 265, column: 24, scope: !1618)
!1621 = !DILocation(line: 265, column: 22, scope: !1618)
!1622 = !DILocation(line: 265, column: 18, scope: !1618)
!1623 = !DILocation(line: 267, column: 18, scope: !1561)
!1624 = !DILocation(line: 267, column: 27, scope: !1561)
!1625 = !DILocation(line: 267, column: 18, scope: !1626)
!1626 = !DILexicalBlockFile(scope: !1561, file: !688, discriminator: 1)
!1627 = !DILocation(line: 267, column: 41, scope: !1628)
!1628 = !DILexicalBlockFile(scope: !1561, file: !688, discriminator: 2)
!1629 = !DILocation(line: 267, column: 18, scope: !1628)
!1630 = !DILocation(line: 267, column: 18, scope: !1631)
!1631 = !DILexicalBlockFile(scope: !1561, file: !688, discriminator: 3)
!1632 = !DILocation(line: 267, column: 9, scope: !1631)
!1633 = !DILocation(line: 267, column: 7, scope: !1631)
!1634 = !DILocation(line: 268, column: 16, scope: !1561)
!1635 = !DILocation(line: 268, column: 9, scope: !1561)
!1636 = !DILocation(line: 268, column: 7, scope: !1561)
!1637 = !DILocation(line: 269, column: 6, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1561, file: !688, line: 269, column: 6)
!1639 = !DILocation(line: 269, column: 11, scope: !1638)
!1640 = !DILocation(line: 269, column: 6, scope: !1561)
!1641 = !DILocation(line: 269, column: 24, scope: !1642)
!1642 = !DILexicalBlockFile(scope: !1638, file: !688, discriminator: 1)
!1643 = !DILocation(line: 269, column: 27, scope: !1642)
!1644 = !DILocation(line: 269, column: 19, scope: !1642)
!1645 = !DILocation(line: 269, column: 45, scope: !1646)
!1646 = !DILexicalBlockFile(scope: !1638, file: !688, discriminator: 2)
!1647 = !DILocation(line: 271, column: 52, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1561, file: !688, line: 271, column: 6)
!1649 = !DILocation(line: 271, column: 34, scope: !1648)
!1650 = !DILocation(line: 271, column: 19, scope: !1648)
!1651 = !DILocation(line: 271, column: 31, scope: !1648)
!1652 = !DILocation(line: 271, column: 39, scope: !1648)
!1653 = !DILocation(line: 271, column: 45, scope: !1648)
!1654 = !DILocation(line: 271, column: 51, scope: !1648)
!1655 = !DILocation(line: 271, column: 57, scope: !1648)
!1656 = !DILocation(line: 271, column: 7, scope: !1657)
!1657 = !DILexicalBlockFile(scope: !1648, file: !688, discriminator: 1)
!1658 = !DILocation(line: 271, column: 7, scope: !1648)
!1659 = !DILocation(line: 271, column: 6, scope: !1561)
!1660 = !DILocation(line: 272, column: 10, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1648, file: !688, line: 271, column: 64)
!1662 = !DILocation(line: 272, column: 3, scope: !1661)
!1663 = !DILocation(line: 273, column: 3, scope: !1661)
!1664 = !DILocation(line: 276, column: 6, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1561, file: !688, line: 276, column: 6)
!1666 = !DILocation(line: 276, column: 14, scope: !1665)
!1667 = !DILocation(line: 276, column: 25, scope: !1665)
!1668 = !DILocation(line: 276, column: 28, scope: !1669)
!1669 = !DILexicalBlockFile(scope: !1665, file: !688, discriminator: 1)
!1670 = !DILocation(line: 276, column: 33, scope: !1669)
!1671 = !DILocation(line: 276, column: 6, scope: !1669)
!1672 = !DILocation(line: 278, column: 10, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1665, file: !688, line: 276, column: 40)
!1674 = !DILocation(line: 278, column: 3, scope: !1673)
!1675 = !DILocation(line: 279, column: 3, scope: !1673)
!1676 = !DILocation(line: 282, column: 9, scope: !1561)
!1677 = !DILocation(line: 282, column: 14, scope: !1561)
!1678 = !DILocation(line: 282, column: 2, scope: !1561)
!1679 = !DILocation(line: 283, column: 9, scope: !1561)
!1680 = !DILocation(line: 283, column: 14, scope: !1561)
!1681 = !DILocation(line: 283, column: 2, scope: !1561)
!1682 = !DILocation(line: 284, column: 9, scope: !1561)
!1683 = !DILocation(line: 284, column: 14, scope: !1561)
!1684 = !DILocation(line: 284, column: 2, scope: !1561)
!1685 = !DILocation(line: 285, column: 23, scope: !1561)
!1686 = !DILocation(line: 285, column: 14, scope: !1561)
!1687 = !DILocation(line: 285, column: 2, scope: !1561)
!1688 = !DILocation(line: 285, column: 7, scope: !1561)
!1689 = !DILocation(line: 285, column: 12, scope: !1561)
!1690 = !DILocation(line: 286, column: 23, scope: !1561)
!1691 = !DILocation(line: 286, column: 14, scope: !1561)
!1692 = !DILocation(line: 286, column: 2, scope: !1561)
!1693 = !DILocation(line: 286, column: 7, scope: !1561)
!1694 = !DILocation(line: 286, column: 12, scope: !1561)
!1695 = !DILocation(line: 287, column: 18, scope: !1561)
!1696 = !DILocation(line: 287, column: 27, scope: !1561)
!1697 = !DILocation(line: 287, column: 34, scope: !1561)
!1698 = !DILocation(line: 287, column: 38, scope: !1626)
!1699 = !DILocation(line: 287, column: 37, scope: !1626)
!1700 = !DILocation(line: 287, column: 47, scope: !1626)
!1701 = !DILocation(line: 287, column: 18, scope: !1626)
!1702 = !DILocation(line: 287, column: 18, scope: !1628)
!1703 = !DILocation(line: 287, column: 73, scope: !1631)
!1704 = !DILocation(line: 287, column: 64, scope: !1631)
!1705 = !DILocation(line: 287, column: 18, scope: !1631)
!1706 = !DILocation(line: 287, column: 18, scope: !1707)
!1707 = !DILexicalBlockFile(scope: !1561, file: !688, discriminator: 4)
!1708 = !DILocation(line: 287, column: 2, scope: !1707)
!1709 = !DILocation(line: 287, column: 7, scope: !1707)
!1710 = !DILocation(line: 287, column: 16, scope: !1707)
!1711 = !DILocation(line: 289, column: 6, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1561, file: !688, line: 289, column: 6)
!1713 = !DILocation(line: 289, column: 11, scope: !1712)
!1714 = !DILocation(line: 289, column: 6, scope: !1561)
!1715 = !DILocation(line: 289, column: 30, scope: !1716)
!1716 = !DILexicalBlockFile(scope: !1712, file: !688, discriminator: 1)
!1717 = !DILocation(line: 289, column: 18, scope: !1716)
!1718 = !DILocation(line: 289, column: 23, scope: !1716)
!1719 = !DILocation(line: 289, column: 28, scope: !1716)
!1720 = !DILocation(line: 290, column: 2, scope: !1561)
!1721 = !DILocation(line: 290, column: 7, scope: !1561)
!1722 = !DILocation(line: 290, column: 15, scope: !1561)
!1723 = !DILocation(line: 291, column: 2, scope: !1561)
!1724 = !DILocation(line: 291, column: 7, scope: !1561)
!1725 = !DILocation(line: 291, column: 22, scope: !1561)
!1726 = !DILocation(line: 292, column: 18, scope: !1561)
!1727 = !DILocation(line: 292, column: 26, scope: !1561)
!1728 = !DILocation(line: 292, column: 37, scope: !1561)
!1729 = !DILocation(line: 292, column: 41, scope: !1626)
!1730 = !DILocation(line: 292, column: 46, scope: !1626)
!1731 = !DILocation(line: 292, column: 40, scope: !1626)
!1732 = !DILocation(line: 292, column: 37, scope: !1626)
!1733 = !DILocation(line: 292, column: 37, scope: !1628)
!1734 = !DILocation(line: 292, column: 2, scope: !1628)
!1735 = !DILocation(line: 292, column: 7, scope: !1628)
!1736 = !DILocation(line: 292, column: 15, scope: !1628)
!1737 = !DILocation(line: 295, column: 7, scope: !1561)
!1738 = !DILocation(line: 295, column: 15, scope: !1561)
!1739 = !DILocation(line: 295, column: 20, scope: !1561)
!1740 = !DILocation(line: 295, column: 26, scope: !1561)
!1741 = !DILocation(line: 295, column: 31, scope: !1561)
!1742 = !DILocation(line: 295, column: 37, scope: !1561)
!1743 = !DILocation(line: 295, column: 42, scope: !1561)
!1744 = !DILocation(line: 295, column: 48, scope: !1561)
!1745 = !DILocation(line: 294, column: 2, scope: !1561)
!1746 = !DILocation(line: 296, column: 9, scope: !1561)
!1747 = !DILocation(line: 296, column: 2, scope: !1561)
!1748 = !DILocation(line: 297, column: 1, scope: !1561)
!1749 = !DILocation(line: 297, column: 1, scope: !1626)
