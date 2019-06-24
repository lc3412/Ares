; ModuleID = './line153-mode-lists.o.i'
source_filename = "./line153-mode-lists.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GSList = type { i8*, %struct._GSList* }
%struct.BAN_REC = type { i8*, i8*, i64 }
%struct._IRC_CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._IRC_SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)*, %struct._GSList*, i64, i32, i32 }
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
%struct._QUERY_REC = type opaque
%struct._REDIRECT_REC = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._GTimeVal = type { i64, i64 }
%struct.modes_type = type { void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, i8 }
%struct._WI_ITEM_REC = type opaque
%struct._GHashTable = type opaque
%struct._NICK_REC = type { i32, i32, i64, i8*, i8*, i8*, i32, i8, [8 x i8], i8*, %struct._NICK_REC* }

@__func__.banlist_find = private unnamed_addr constant [13 x i8] c"banlist_find\00", align 1
@.str = private unnamed_addr constant [12 x i8] c"ban != NULL\00", align 1
@__func__.banlist_add = private unnamed_addr constant [12 x i8] c"banlist_add\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"channel != NULL\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"ban new\00", align 1
@__func__.banlist_remove = private unnamed_addr constant [15 x i8] c"banlist_remove\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"ban remove\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"irc/core\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"channel destroyed\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"chanquery ban\00", align 1
@__func__.ban_free = private unnamed_addr constant [9 x i8] c"ban_free\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"list != NULL\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"rec != NULL\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"WINDOW ITEM TYPE\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"CHANNEL\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"IRC\00", align 1
@__func__.event_banlist = private unnamed_addr constant [14 x i8] c"event_banlist\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1

; Function Attrs: nounwind uwtable
define void @banlist_free(%struct._GSList*) #0 !dbg !677 {
  %2 = alloca %struct._GSList*, align 8
  store %struct._GSList* %0, %struct._GSList** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %2, metadata !682, metadata !683), !dbg !684
  br label %3, !dbg !685

; <label>:3:                                      ; preds = %6, %1
  %4 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !686
  %5 = icmp ne %struct._GSList* %4, null, !dbg !688
  br i1 %5, label %6, label %11, !dbg !689

; <label>:6:                                      ; preds = %3
  %7 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !690
  %8 = getelementptr inbounds %struct._GSList, %struct._GSList* %7, i32 0, i32 0, !dbg !691
  %9 = load i8*, i8** %8, align 8, !dbg !691
  %10 = bitcast i8* %9 to %struct.BAN_REC*, !dbg !690
  call void @ban_free(%struct._GSList** %2, %struct.BAN_REC* %10), !dbg !692
  br label %3, !dbg !693, !llvm.loop !695

; <label>:11:                                     ; preds = %3
  ret void, !dbg !696
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal void @ban_free(%struct._GSList**, %struct.BAN_REC*) #0 !dbg !697 {
  %3 = alloca %struct._GSList**, align 8
  %4 = alloca %struct.BAN_REC*, align 8
  store %struct._GSList** %0, %struct._GSList*** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList*** %3, metadata !701, metadata !683), !dbg !702
  store %struct.BAN_REC* %1, %struct.BAN_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.BAN_REC** %4, metadata !703, metadata !683), !dbg !704
  br label %5, !dbg !705, !llvm.loop !706

; <label>:5:                                      ; preds = %2
  %6 = load %struct._GSList**, %struct._GSList*** %3, align 8, !dbg !707
  %7 = icmp ne %struct._GSList** %6, null, !dbg !711
  br i1 %7, label %8, label %9, !dbg !707

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !712

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.ban_free, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0)), !dbg !715
  br label %33, !dbg !718

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !719

; <label>:11:                                     ; preds = %10
  br label %12, !dbg !721, !llvm.loop !722

; <label>:12:                                     ; preds = %11
  %13 = load %struct.BAN_REC*, %struct.BAN_REC** %4, align 8, !dbg !723
  %14 = icmp ne %struct.BAN_REC* %13, null, !dbg !727
  br i1 %14, label %15, label %16, !dbg !723

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !728

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.ban_free, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0)), !dbg !731
  br label %33, !dbg !734

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !735

; <label>:18:                                     ; preds = %17
  %19 = load %struct._GSList**, %struct._GSList*** %3, align 8, !dbg !737
  %20 = load %struct._GSList*, %struct._GSList** %19, align 8, !dbg !738
  %21 = load %struct.BAN_REC*, %struct.BAN_REC** %4, align 8, !dbg !739
  %22 = bitcast %struct.BAN_REC* %21 to i8*, !dbg !739
  %23 = call %struct._GSList* @g_slist_remove(%struct._GSList* %20, i8* %22), !dbg !740
  %24 = load %struct._GSList**, %struct._GSList*** %3, align 8, !dbg !741
  store %struct._GSList* %23, %struct._GSList** %24, align 8, !dbg !742
  %25 = load %struct.BAN_REC*, %struct.BAN_REC** %4, align 8, !dbg !743
  %26 = getelementptr inbounds %struct.BAN_REC, %struct.BAN_REC* %25, i32 0, i32 0, !dbg !744
  %27 = load i8*, i8** %26, align 8, !dbg !744
  call void @g_free(i8* %27), !dbg !745
  %28 = load %struct.BAN_REC*, %struct.BAN_REC** %4, align 8, !dbg !746
  %29 = getelementptr inbounds %struct.BAN_REC, %struct.BAN_REC* %28, i32 0, i32 1, !dbg !747
  %30 = load i8*, i8** %29, align 8, !dbg !747
  call void @g_free(i8* %30), !dbg !748
  %31 = load %struct.BAN_REC*, %struct.BAN_REC** %4, align 8, !dbg !749
  %32 = bitcast %struct.BAN_REC* %31 to i8*, !dbg !749
  call void @g_free(i8* %32), !dbg !750
  br label %33, !dbg !751

; <label>:33:                                     ; preds = %18, %16, %9
  ret void, !dbg !752
}

; Function Attrs: nounwind uwtable
define %struct.BAN_REC* @banlist_find(%struct._GSList*, i8*) #0 !dbg !754 {
  %3 = alloca %struct.BAN_REC*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca %struct.BAN_REC*, align 8
  store %struct._GSList* %0, %struct._GSList** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !757, metadata !683), !dbg !758
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !759, metadata !683), !dbg !760
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !761, metadata !683), !dbg !762
  br label %8, !dbg !763, !llvm.loop !764

; <label>:8:                                      ; preds = %2
  %9 = load i8*, i8** %5, align 8, !dbg !765
  %10 = icmp ne i8* %9, null, !dbg !769
  br i1 %10, label %11, label %12, !dbg !765

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !770

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.banlist_find, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0)), !dbg !773
  store %struct.BAN_REC* null, %struct.BAN_REC** %3, align 8, !dbg !776
  br label %38, !dbg !776

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !777

; <label>:14:                                     ; preds = %13
  %15 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !779
  store %struct._GSList* %15, %struct._GSList** %6, align 8, !dbg !781
  br label %16, !dbg !782

; <label>:16:                                     ; preds = %33, %14
  %17 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !783
  %18 = icmp ne %struct._GSList* %17, null, !dbg !786
  br i1 %18, label %19, label %37, !dbg !787

; <label>:19:                                     ; preds = %16
  call void @llvm.dbg.declare(metadata %struct.BAN_REC** %7, metadata !788, metadata !683), !dbg !790
  %20 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !791
  %21 = getelementptr inbounds %struct._GSList, %struct._GSList* %20, i32 0, i32 0, !dbg !792
  %22 = load i8*, i8** %21, align 8, !dbg !792
  %23 = bitcast i8* %22 to %struct.BAN_REC*, !dbg !791
  store %struct.BAN_REC* %23, %struct.BAN_REC** %7, align 8, !dbg !790
  %24 = load %struct.BAN_REC*, %struct.BAN_REC** %7, align 8, !dbg !793
  %25 = getelementptr inbounds %struct.BAN_REC, %struct.BAN_REC* %24, i32 0, i32 0, !dbg !795
  %26 = load i8*, i8** %25, align 8, !dbg !795
  %27 = load i8*, i8** %5, align 8, !dbg !796
  %28 = call i32 @g_ascii_strcasecmp(i8* %26, i8* %27), !dbg !797
  %29 = icmp eq i32 %28, 0, !dbg !798
  br i1 %29, label %30, label %32, !dbg !799

; <label>:30:                                     ; preds = %19
  %31 = load %struct.BAN_REC*, %struct.BAN_REC** %7, align 8, !dbg !800
  store %struct.BAN_REC* %31, %struct.BAN_REC** %3, align 8, !dbg !801
  br label %38, !dbg !801

; <label>:32:                                     ; preds = %19
  br label %33, !dbg !802

; <label>:33:                                     ; preds = %32
  %34 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !803
  %35 = getelementptr inbounds %struct._GSList, %struct._GSList* %34, i32 0, i32 1, !dbg !805
  %36 = load %struct._GSList*, %struct._GSList** %35, align 8, !dbg !805
  store %struct._GSList* %36, %struct._GSList** %6, align 8, !dbg !806
  br label %16, !dbg !807, !llvm.loop !808

; <label>:37:                                     ; preds = %16
  store %struct.BAN_REC* null, %struct.BAN_REC** %3, align 8, !dbg !810
  br label %38, !dbg !810

; <label>:38:                                     ; preds = %37, %30, %12
  %39 = load %struct.BAN_REC*, %struct.BAN_REC** %3, align 8, !dbg !811
  ret %struct.BAN_REC* %39, !dbg !811
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare i32 @g_ascii_strcasecmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define %struct.BAN_REC* @banlist_add(%struct._IRC_CHANNEL_REC*, i8*, i8*, i64) #0 !dbg !812 {
  %5 = alloca %struct.BAN_REC*, align 8
  %6 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.BAN_REC*, align 8
  store %struct._IRC_CHANNEL_REC* %0, %struct._IRC_CHANNEL_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %6, metadata !815, metadata !683), !dbg !816
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !817, metadata !683), !dbg !818
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !819, metadata !683), !dbg !820
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !821, metadata !683), !dbg !822
  call void @llvm.dbg.declare(metadata %struct.BAN_REC** %10, metadata !823, metadata !683), !dbg !824
  br label %11, !dbg !825, !llvm.loop !826

; <label>:11:                                     ; preds = %4
  %12 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !827
  %13 = icmp ne %struct._IRC_CHANNEL_REC* %12, null, !dbg !831
  br i1 %13, label %14, label %15, !dbg !827

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !832

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.banlist_add, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0)), !dbg !835
  store %struct.BAN_REC* null, %struct.BAN_REC** %5, align 8, !dbg !838
  br label %70, !dbg !838

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !839

; <label>:17:                                     ; preds = %16
  br label %18, !dbg !841, !llvm.loop !842

; <label>:18:                                     ; preds = %17
  %19 = load i8*, i8** %7, align 8, !dbg !843
  %20 = icmp ne i8* %19, null, !dbg !847
  br i1 %20, label %21, label %22, !dbg !843

; <label>:21:                                     ; preds = %18
  br label %23, !dbg !848

; <label>:22:                                     ; preds = %18
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.banlist_add, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0)), !dbg !851
  store %struct.BAN_REC* null, %struct.BAN_REC** %5, align 8, !dbg !854
  br label %70, !dbg !854

; <label>:23:                                     ; preds = %21
  br label %24, !dbg !855

; <label>:24:                                     ; preds = %23
  %25 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !857
  %26 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %25, i32 0, i32 23, !dbg !858
  %27 = load %struct._GSList*, %struct._GSList** %26, align 8, !dbg !858
  %28 = load i8*, i8** %7, align 8, !dbg !859
  %29 = call %struct.BAN_REC* @banlist_find(%struct._GSList* %27, i8* %28), !dbg !860
  store %struct.BAN_REC* %29, %struct.BAN_REC** %10, align 8, !dbg !861
  %30 = load %struct.BAN_REC*, %struct.BAN_REC** %10, align 8, !dbg !862
  %31 = icmp ne %struct.BAN_REC* %30, null, !dbg !864
  br i1 %31, label %32, label %33, !dbg !865

; <label>:32:                                     ; preds = %24
  store %struct.BAN_REC* null, %struct.BAN_REC** %5, align 8, !dbg !866
  br label %70, !dbg !866

; <label>:33:                                     ; preds = %24
  %34 = call noalias i8* @g_malloc_n(i64 1, i64 24), !dbg !868
  %35 = bitcast i8* %34 to %struct.BAN_REC*, !dbg !869
  store %struct.BAN_REC* %35, %struct.BAN_REC** %10, align 8, !dbg !870
  %36 = load i8*, i8** %7, align 8, !dbg !871
  %37 = call noalias i8* @g_strdup(i8* %36), !dbg !872
  %38 = load %struct.BAN_REC*, %struct.BAN_REC** %10, align 8, !dbg !873
  %39 = getelementptr inbounds %struct.BAN_REC, %struct.BAN_REC* %38, i32 0, i32 0, !dbg !874
  store i8* %37, i8** %39, align 8, !dbg !875
  %40 = load i8*, i8** %8, align 8, !dbg !876
  %41 = icmp eq i8* %40, null, !dbg !877
  br i1 %41, label %47, label %42, !dbg !878

; <label>:42:                                     ; preds = %33
  %43 = load i8*, i8** %8, align 8, !dbg !879
  %44 = load i8, i8* %43, align 1, !dbg !881
  %45 = sext i8 %44 to i32, !dbg !881
  %46 = icmp eq i32 %45, 0, !dbg !882
  br i1 %46, label %47, label %48, !dbg !883

; <label>:47:                                     ; preds = %42, %33
  br label %51, !dbg !884

; <label>:48:                                     ; preds = %42
  %49 = load i8*, i8** %8, align 8, !dbg !886
  %50 = call noalias i8* @g_strdup(i8* %49), !dbg !887
  br label %51, !dbg !888

; <label>:51:                                     ; preds = %48, %47
  %52 = phi i8* [ null, %47 ], [ %50, %48 ], !dbg !890
  %53 = load %struct.BAN_REC*, %struct.BAN_REC** %10, align 8, !dbg !892
  %54 = getelementptr inbounds %struct.BAN_REC, %struct.BAN_REC* %53, i32 0, i32 1, !dbg !893
  store i8* %52, i8** %54, align 8, !dbg !894
  %55 = load i64, i64* %9, align 8, !dbg !895
  %56 = load %struct.BAN_REC*, %struct.BAN_REC** %10, align 8, !dbg !896
  %57 = getelementptr inbounds %struct.BAN_REC, %struct.BAN_REC* %56, i32 0, i32 2, !dbg !897
  store i64 %55, i64* %57, align 8, !dbg !898
  %58 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !899
  %59 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %58, i32 0, i32 23, !dbg !900
  %60 = load %struct._GSList*, %struct._GSList** %59, align 8, !dbg !900
  %61 = load %struct.BAN_REC*, %struct.BAN_REC** %10, align 8, !dbg !901
  %62 = bitcast %struct.BAN_REC* %61 to i8*, !dbg !901
  %63 = call %struct._GSList* @g_slist_append(%struct._GSList* %60, i8* %62), !dbg !902
  %64 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !903
  %65 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %64, i32 0, i32 23, !dbg !904
  store %struct._GSList* %63, %struct._GSList** %65, align 8, !dbg !905
  %66 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !906
  %67 = load %struct.BAN_REC*, %struct.BAN_REC** %10, align 8, !dbg !907
  %68 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 2, %struct._IRC_CHANNEL_REC* %66, %struct.BAN_REC* %67), !dbg !908
  %69 = load %struct.BAN_REC*, %struct.BAN_REC** %10, align 8, !dbg !909
  store %struct.BAN_REC* %69, %struct.BAN_REC** %5, align 8, !dbg !910
  br label %70, !dbg !910

; <label>:70:                                     ; preds = %51, %32, %22, %15
  %71 = load %struct.BAN_REC*, %struct.BAN_REC** %5, align 8, !dbg !911
  ret %struct.BAN_REC* %71, !dbg !911
}

declare noalias i8* @g_malloc_n(i64, i64) #2

declare noalias i8* @g_strdup(i8*) #2

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #2

declare i32 @signal_emit(i8*, i32, ...) #2

; Function Attrs: nounwind uwtable
define void @banlist_remove(%struct._IRC_CHANNEL_REC*, i8*, i8*) #0 !dbg !912 {
  %4 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.BAN_REC*, align 8
  store %struct._IRC_CHANNEL_REC* %0, %struct._IRC_CHANNEL_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %4, metadata !915, metadata !683), !dbg !916
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !917, metadata !683), !dbg !918
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !919, metadata !683), !dbg !920
  call void @llvm.dbg.declare(metadata %struct.BAN_REC** %7, metadata !921, metadata !683), !dbg !922
  br label %8, !dbg !923, !llvm.loop !924

; <label>:8:                                      ; preds = %3
  %9 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %4, align 8, !dbg !925
  %10 = icmp ne %struct._IRC_CHANNEL_REC* %9, null, !dbg !929
  br i1 %10, label %11, label %12, !dbg !925

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !930

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.banlist_remove, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0)), !dbg !933
  br label %37, !dbg !936

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !937

; <label>:14:                                     ; preds = %13
  br label %15, !dbg !939, !llvm.loop !940

; <label>:15:                                     ; preds = %14
  %16 = load i8*, i8** %5, align 8, !dbg !941
  %17 = icmp ne i8* %16, null, !dbg !945
  br i1 %17, label %18, label %19, !dbg !941

; <label>:18:                                     ; preds = %15
  br label %20, !dbg !946

; <label>:19:                                     ; preds = %15
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.banlist_remove, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0)), !dbg !949
  br label %37, !dbg !952

; <label>:20:                                     ; preds = %18
  br label %21, !dbg !953

; <label>:21:                                     ; preds = %20
  %22 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %4, align 8, !dbg !955
  %23 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %22, i32 0, i32 23, !dbg !956
  %24 = load %struct._GSList*, %struct._GSList** %23, align 8, !dbg !956
  %25 = load i8*, i8** %5, align 8, !dbg !957
  %26 = call %struct.BAN_REC* @banlist_find(%struct._GSList* %24, i8* %25), !dbg !958
  store %struct.BAN_REC* %26, %struct.BAN_REC** %7, align 8, !dbg !959
  %27 = load %struct.BAN_REC*, %struct.BAN_REC** %7, align 8, !dbg !960
  %28 = icmp ne %struct.BAN_REC* %27, null, !dbg !962
  br i1 %28, label %29, label %37, !dbg !963

; <label>:29:                                     ; preds = %21
  %30 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %4, align 8, !dbg !964
  %31 = load %struct.BAN_REC*, %struct.BAN_REC** %7, align 8, !dbg !966
  %32 = load i8*, i8** %6, align 8, !dbg !967
  %33 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 3, %struct._IRC_CHANNEL_REC* %30, %struct.BAN_REC* %31, i8* %32), !dbg !968
  %34 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %4, align 8, !dbg !969
  %35 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %34, i32 0, i32 23, !dbg !970
  %36 = load %struct.BAN_REC*, %struct.BAN_REC** %7, align 8, !dbg !971
  call void @ban_free(%struct._GSList** %35, %struct.BAN_REC* %36), !dbg !972
  br label %37, !dbg !973

; <label>:37:                                     ; preds = %12, %19, %29, %21
  ret void, !dbg !974
}

; Function Attrs: nounwind uwtable
define void @mode_lists_init() #0 !dbg !975 {
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_CHANNEL_REC*)* @channel_destroyed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !976
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_banlist to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !977
  ret void, !dbg !978
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @channel_destroyed(%struct._IRC_CHANNEL_REC*) #0 !dbg !979 {
  %2 = alloca %struct._IRC_CHANNEL_REC*, align 8
  store %struct._IRC_CHANNEL_REC* %0, %struct._IRC_CHANNEL_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %2, metadata !982, metadata !683), !dbg !983
  %3 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %2, align 8, !dbg !984
  %4 = bitcast %struct._IRC_CHANNEL_REC* %3 to i8*, !dbg !984
  %5 = call i8* @module_check_cast_module(i8* %4, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0)), !dbg !986
  %6 = bitcast i8* %5 to %struct._CHANNEL_REC*, !dbg !987
  %7 = bitcast %struct._CHANNEL_REC* %6 to i8*, !dbg !988
  %8 = call i8* @chat_protocol_check_cast(i8* %7, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !989
  %9 = bitcast i8* %8 to %struct._IRC_CHANNEL_REC*, !dbg !991
  %10 = icmp ne %struct._IRC_CHANNEL_REC* %9, null, !dbg !991
  br i1 %10, label %11, label %12, !dbg !992

; <label>:11:                                     ; preds = %1
  br i1 false, label %13, label %14, !dbg !993

; <label>:12:                                     ; preds = %1
  br i1 false, label %14, label %13, !dbg !995

; <label>:13:                                     ; preds = %12, %11
  br label %18, !dbg !997

; <label>:14:                                     ; preds = %12, %11
  %15 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %2, align 8, !dbg !998
  %16 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %15, i32 0, i32 23, !dbg !999
  %17 = load %struct._GSList*, %struct._GSList** %16, align 8, !dbg !999
  call void @banlist_free(%struct._GSList* %17), !dbg !1000
  br label %18, !dbg !1001

; <label>:18:                                     ; preds = %14, %13
  ret void, !dbg !1002
}

; Function Attrs: nounwind uwtable
define internal void @event_banlist(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !1004 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1007, metadata !683), !dbg !1008
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1009, metadata !683), !dbg !1010
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %5, metadata !1011, metadata !683), !dbg !1012
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1013, metadata !683), !dbg !1014
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1015, metadata !683), !dbg !1016
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1017, metadata !683), !dbg !1018
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1019, metadata !683), !dbg !1020
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1021, metadata !683), !dbg !1022
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1023, metadata !683), !dbg !1024
  br label %12, !dbg !1025, !llvm.loop !1026

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %4, align 8, !dbg !1027
  %14 = icmp ne i8* %13, null, !dbg !1031
  br i1 %14, label %15, label %16, !dbg !1027

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !1032

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.event_banlist, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0)), !dbg !1035
  br label %45, !dbg !1038

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !1039

; <label>:18:                                     ; preds = %17
  %19 = load i8*, i8** %4, align 8, !dbg !1041
  %20 = call i8* (i8*, i32, ...) @event_get_params(i8* %19, i32 5, i8* null, i8** %7, i8** %8, i8** %9, i8** %10), !dbg !1042
  store i8* %20, i8** %6, align 8, !dbg !1043
  %21 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1044
  %22 = bitcast %struct._IRC_SERVER_REC* %21 to i8*, !dbg !1044
  %23 = call i8* @module_check_cast(i8* %22, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0)), !dbg !1045
  %24 = bitcast i8* %23 to %struct._SERVER_REC*, !dbg !1046
  %25 = load i8*, i8** %7, align 8, !dbg !1047
  %26 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %24, i8* %25), !dbg !1048
  %27 = bitcast %struct._CHANNEL_REC* %26 to i8*, !dbg !1050
  %28 = call i8* @module_check_cast_module(i8* %27, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0)), !dbg !1051
  %29 = bitcast i8* %28 to %struct._CHANNEL_REC*, !dbg !1053
  %30 = bitcast %struct._CHANNEL_REC* %29 to i8*, !dbg !1054
  %31 = call i8* @chat_protocol_check_cast(i8* %30, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !1055
  %32 = bitcast i8* %31 to %struct._IRC_CHANNEL_REC*, !dbg !1057
  store %struct._IRC_CHANNEL_REC* %32, %struct._IRC_CHANNEL_REC** %5, align 8, !dbg !1058
  %33 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %5, align 8, !dbg !1059
  %34 = icmp ne %struct._IRC_CHANNEL_REC* %33, null, !dbg !1061
  br i1 %34, label %35, label %43, !dbg !1062

; <label>:35:                                     ; preds = %18
  %36 = load i8*, i8** %10, align 8, !dbg !1063
  %37 = call i64 @atol(i8* %36) #4, !dbg !1065
  store i64 %37, i64* %11, align 8, !dbg !1066
  %38 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %5, align 8, !dbg !1067
  %39 = load i8*, i8** %8, align 8, !dbg !1068
  %40 = load i8*, i8** %9, align 8, !dbg !1069
  %41 = load i64, i64* %11, align 8, !dbg !1070
  %42 = call %struct.BAN_REC* @banlist_add(%struct._IRC_CHANNEL_REC* %38, i8* %39, i8* %40, i64 %41), !dbg !1071
  br label %43, !dbg !1072

; <label>:43:                                     ; preds = %35, %18
  %44 = load i8*, i8** %6, align 8, !dbg !1073
  call void @g_free(i8* %44), !dbg !1074
  br label %45, !dbg !1075

; <label>:45:                                     ; preds = %43, %16
  ret void, !dbg !1076
}

; Function Attrs: nounwind uwtable
define void @mode_lists_deinit() #0 !dbg !1077 {
  call void @signal_remove_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_CHANNEL_REC*)* @channel_destroyed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1078
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_banlist to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1079
  ret void, !dbg !1080
}

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #2

declare void @g_free(i8*) #2

declare i8* @chat_protocol_check_cast(i8*, i32, i8*) #2

declare i8* @module_check_cast_module(i8*, i32, i8*, i8*) #2

declare i8* @event_get_params(i8*, i32, ...) #2

declare %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC*, i8*) #2

declare i8* @module_check_cast(i8*, i32, i8*) #2

; Function Attrs: nounwind readonly
declare i64 @atol(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!674, !675}
!llvm.ident = !{!676}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !35)
!1 = !DIFile(filename: "line153-mode-lists.o.i", directory: "/home/lichi/Desktop/irssi/task1")
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
!35 = !{!36, !37, !41, !43, !57, !64, !483, !378, !52}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !39, line: 46, baseType: !40)
!39 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!40 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "BAN_REC", file: !45, line: 8, baseType: !46)
!45 = !DIFile(filename: "mode-lists.h", directory: "/home/lichi/Desktop/irssi/task1")
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 4, size: 192, align: 64, elements: !47)
!47 = !{!48, !50, !51}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "ban", scope: !46, file: !45, line: 5, baseType: !49, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "setby", scope: !46, file: !45, line: 6, baseType: !49, size: 64, align: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !46, file: !45, line: 7, baseType: !52, size: 64, align: 64, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !53, line: 75, baseType: !54)
!53 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !55, line: 139, baseType: !56)
!55 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!56 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !58, line: 9, baseType: !59)
!58 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !62, !62, !62, !62, !62, !62}
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_CHANNEL_REC", file: !66, line: 7, baseType: !67)
!66 = !DIFile(filename: "irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_CHANNEL_REC", file: !68, line: 15, size: 1600, align: 64, elements: !69)
!68 = !DIFile(filename: "irc-channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!69 = !{!70, !73, !74, !79, !80, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !67, file: !71, line: 3, baseType: !72, size: 32, align: 32)
!71 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!72 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !67, file: !71, line: 4, baseType: !72, size: 32, align: 32, offset: 32)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !67, file: !71, line: 5, baseType: !75, size: 64, align: 64, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !77, line: 37, baseType: !78)
!77 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!78 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !77, line: 37, flags: DIFlagFwdDecl)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !67, file: !71, line: 7, baseType: !36, size: 64, align: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !67, file: !71, line: 8, baseType: !81, size: 64, align: 64, offset: 192)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64, align: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_REC", file: !66, line: 6, baseType: !83)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_REC", file: !84, line: 42, size: 39168, align: 64, elements: !85)
!84 = !DIFile(filename: "irc-servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!85 = !{!86, !88, !89, !90, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !344, !345, !349, !350, !351, !355, !356, !357, !358, !359, !360, !361, !362, !363, !370, !371, !372, !373, !374, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !641, !643}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !83, file: !87, line: 3, baseType: !72, size: 32, align: 32)
!87 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!88 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !83, file: !87, line: 4, baseType: !72, size: 32, align: 32, offset: 32)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !83, file: !87, line: 6, baseType: !72, size: 32, align: 32, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !83, file: !87, line: 8, baseType: !91, size: 64, align: 64, offset: 128)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_CONNECT_REC", file: !66, line: 5, baseType: !93)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_CONNECT_REC", file: !84, line: 24, size: 2496, align: 64, elements: !94)
!94 = !{!95, !97, !98, !99, !100, !101, !102, !103, !104, !106, !107, !108, !109, !110, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !93, file: !96, line: 3, baseType: !72, size: 32, align: 32)
!96 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!97 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !93, file: !96, line: 4, baseType: !72, size: 32, align: 32, offset: 32)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !93, file: !96, line: 6, baseType: !72, size: 32, align: 32, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !93, file: !96, line: 9, baseType: !49, size: 64, align: 64, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !93, file: !96, line: 10, baseType: !72, size: 32, align: 32, offset: 192)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !93, file: !96, line: 11, baseType: !49, size: 64, align: 64, offset: 256)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !93, file: !96, line: 11, baseType: !49, size: 64, align: 64, offset: 320)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !93, file: !96, line: 11, baseType: !49, size: 64, align: 64, offset: 384)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !93, file: !96, line: 13, baseType: !105, size: 16, align: 16, offset: 448)
!105 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !93, file: !96, line: 14, baseType: !49, size: 64, align: 64, offset: 512)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !93, file: !96, line: 15, baseType: !49, size: 64, align: 64, offset: 576)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !93, file: !96, line: 16, baseType: !72, size: 32, align: 32, offset: 640)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !93, file: !96, line: 17, baseType: !49, size: 64, align: 64, offset: 704)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !93, file: !96, line: 19, baseType: !111, size: 64, align: 64, offset: 768)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !113, line: 99, baseType: !114)
!113 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!114 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !113, line: 99, flags: DIFlagFwdDecl)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !93, file: !96, line: 19, baseType: !111, size: 64, align: 64, offset: 832)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !93, file: !96, line: 21, baseType: !49, size: 64, align: 64, offset: 896)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !93, file: !96, line: 22, baseType: !49, size: 64, align: 64, offset: 960)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !93, file: !96, line: 23, baseType: !49, size: 64, align: 64, offset: 1024)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !93, file: !96, line: 24, baseType: !49, size: 64, align: 64, offset: 1088)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !93, file: !96, line: 26, baseType: !49, size: 64, align: 64, offset: 1152)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !93, file: !96, line: 27, baseType: !49, size: 64, align: 64, offset: 1216)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !93, file: !96, line: 28, baseType: !49, size: 64, align: 64, offset: 1280)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !93, file: !96, line: 29, baseType: !49, size: 64, align: 64, offset: 1344)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !93, file: !96, line: 30, baseType: !49, size: 64, align: 64, offset: 1408)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !93, file: !96, line: 31, baseType: !49, size: 64, align: 64, offset: 1472)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !93, file: !96, line: 32, baseType: !49, size: 64, align: 64, offset: 1536)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !93, file: !96, line: 33, baseType: !49, size: 64, align: 64, offset: 1600)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !93, file: !96, line: 35, baseType: !129, size: 64, align: 64, offset: 1664)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !131)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !132)
!132 = !{!133, !135, !276, !277, !282, !283, !284, !285, !286, !295, !296, !297, !301, !302, !303, !304, !305, !306, !307, !308}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !131, file: !4, line: 100, baseType: !134, size: 32, align: 32)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !39, line: 49, baseType: !72)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !131, file: !4, line: 101, baseType: !136, size: 64, align: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64, align: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !138)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !139)
!139 = !{!140, !162, !168, !174, !178, !263, !267, !272}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !138, file: !4, line: 133, baseType: !141, size: 64, align: 64)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64, align: 64)
!142 = !DISubroutineType(types: !143)
!143 = !{!144, !129, !37, !145, !148, !149}
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !146, line: 66, baseType: !147)
!146 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!147 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64, align: 64)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, align: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !152, line: 42, baseType: !153)
!152 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !152, line: 44, size: 128, align: 64, elements: !154)
!154 = !{!155, !160, !161}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !153, file: !152, line: 46, baseType: !156, size: 32, align: 32)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !157, line: 36, baseType: !158)
!157 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !146, line: 45, baseType: !159)
!159 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !153, file: !152, line: 47, baseType: !134, size: 32, align: 32, offset: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !153, file: !152, line: 48, baseType: !37, size: 64, align: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !138, file: !4, line: 138, baseType: !163, size: 64, align: 64, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64, align: 64)
!164 = !DISubroutineType(types: !165)
!165 = !{!144, !129, !166, !145, !148, !149}
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64, align: 64)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !138, file: !4, line: 143, baseType: !169, size: 64, align: 64, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64, align: 64)
!170 = !DISubroutineType(types: !171)
!171 = !{!144, !129, !172, !173, !149}
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !146, line: 51, baseType: !56)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !138, file: !4, line: 147, baseType: !175, size: 64, align: 64, offset: 192)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64, align: 64)
!176 = !DISubroutineType(types: !177)
!177 = !{!144, !129, !149}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !138, file: !4, line: 149, baseType: !179, size: 64, align: 64, offset: 256)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64, align: 64)
!180 = !DISubroutineType(types: !181)
!181 = !{!182, !129, !262}
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64, align: 64)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !184)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !185)
!185 = !{!186, !188, !209, !238, !240, !244, !245, !246, !247, !255, !256, !257, !258}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !184, file: !16, line: 174, baseType: !187, size: 64, align: 64)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !39, line: 77, baseType: !36)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !184, file: !16, line: 175, baseType: !189, size: 64, align: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64, align: 64)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !191)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !192)
!192 = !{!193, !197, !198}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !191, file: !16, line: 198, baseType: !194, size: 64, align: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64, align: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{null, !187}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !191, file: !16, line: 199, baseType: !194, size: 64, align: 64, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !191, file: !16, line: 200, baseType: !199, size: 64, align: 64, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64, align: 64)
!200 = !DISubroutineType(types: !201)
!201 = !{null, !187, !182, !202, !208}
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, align: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!207, !187}
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !39, line: 50, baseType: !134)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64, align: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !184, file: !16, line: 177, baseType: !210, size: 64, align: 64, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !212)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !213)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !214)
!214 = !{!215, !220, !224, !228, !232, !233}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !213, file: !16, line: 216, baseType: !216, size: 64, align: 64)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{!207, !182, !219}
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, align: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !213, file: !16, line: 218, baseType: !221, size: 64, align: 64, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!207, !182}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !213, file: !16, line: 219, baseType: !225, size: 64, align: 64, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64, align: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{!207, !182, !203, !187}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !213, file: !16, line: 222, baseType: !229, size: 64, align: 64, offset: 192)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64, align: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{null, !182}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !213, file: !16, line: 226, baseType: !203, size: 64, align: 64, offset: 256)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !213, file: !16, line: 227, baseType: !234, size: 64, align: 64, offset: 320)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !235)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64, align: 64)
!236 = !DISubroutineType(types: !237)
!237 = !{null}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !184, file: !16, line: 178, baseType: !239, size: 32, align: 32, offset: 192)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !39, line: 55, baseType: !159)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !184, file: !16, line: 180, baseType: !241, size: 64, align: 64, offset: 256)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64, align: 64)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !243)
!243 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !184, file: !16, line: 182, baseType: !134, size: 32, align: 32, offset: 320)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !184, file: !16, line: 183, baseType: !239, size: 32, align: 32, offset: 352)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !184, file: !16, line: 184, baseType: !239, size: 32, align: 32, offset: 384)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !184, file: !16, line: 186, baseType: !248, size: 64, align: 64, offset: 448)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64, align: 64)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !250, line: 37, baseType: !251)
!250 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !250, line: 39, size: 128, align: 64, elements: !252)
!252 = !{!253, !254}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !251, file: !250, line: 41, baseType: !187, size: 64, align: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !251, file: !250, line: 42, baseType: !248, size: 64, align: 64, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !184, file: !16, line: 188, baseType: !182, size: 64, align: 64, offset: 512)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !184, file: !16, line: 189, baseType: !182, size: 64, align: 64, offset: 576)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !184, file: !16, line: 191, baseType: !49, size: 64, align: 64, offset: 640)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !184, file: !16, line: 193, baseType: !259, size: 64, align: 64, offset: 704)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64, align: 64)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !261)
!261 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !138, file: !4, line: 151, baseType: !264, size: 64, align: 64, offset: 320)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64, align: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{null, !129}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !138, file: !4, line: 152, baseType: !268, size: 64, align: 64, offset: 384)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64, align: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{!144, !129, !271, !149}
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !138, file: !4, line: 155, baseType: !273, size: 64, align: 64, offset: 448)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64, align: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{!271, !129}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !131, file: !4, line: 103, baseType: !37, size: 64, align: 64, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !131, file: !4, line: 104, baseType: !278, size: 64, align: 64, offset: 192)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !279, line: 77, baseType: !280)
!279 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64, align: 64)
!281 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !279, line: 77, flags: DIFlagFwdDecl)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !131, file: !4, line: 105, baseType: !278, size: 64, align: 64, offset: 256)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !131, file: !4, line: 106, baseType: !37, size: 64, align: 64, offset: 320)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !131, file: !4, line: 107, baseType: !239, size: 32, align: 32, offset: 384)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !131, file: !4, line: 109, baseType: !145, size: 64, align: 64, offset: 448)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !131, file: !4, line: 110, baseType: !287, size: 64, align: 64, offset: 512)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64, align: 64)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !289, line: 39, baseType: !290)
!289 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !289, line: 41, size: 192, align: 64, elements: !291)
!291 = !{!292, !293, !294}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !290, file: !289, line: 43, baseType: !37, size: 64, align: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !290, file: !289, line: 44, baseType: !145, size: 64, align: 64, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !290, file: !289, line: 45, baseType: !145, size: 64, align: 64, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !131, file: !4, line: 111, baseType: !287, size: 64, align: 64, offset: 576)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !131, file: !4, line: 112, baseType: !287, size: 64, align: 64, offset: 640)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !131, file: !4, line: 113, baseType: !298, size: 48, align: 8, offset: 704)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 48, align: 8, elements: !299)
!299 = !{!300}
!300 = !DISubrange(count: 6)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !131, file: !4, line: 117, baseType: !239, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !131, file: !4, line: 118, baseType: !239, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !131, file: !4, line: 119, baseType: !239, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !131, file: !4, line: 120, baseType: !239, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !131, file: !4, line: 121, baseType: !239, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !131, file: !4, line: 122, baseType: !239, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !131, file: !4, line: 124, baseType: !187, size: 64, align: 64, offset: 768)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !131, file: !4, line: 125, baseType: !187, size: 64, align: 64, offset: 832)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !93, file: !96, line: 38, baseType: !159, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !93, file: !96, line: 39, baseType: !159, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !93, file: !96, line: 40, baseType: !159, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !93, file: !96, line: 41, baseType: !159, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !93, file: !96, line: 42, baseType: !159, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !93, file: !96, line: 43, baseType: !159, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !93, file: !96, line: 44, baseType: !159, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !93, file: !96, line: 45, baseType: !159, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !93, file: !96, line: 46, baseType: !49, size: 64, align: 64, offset: 1792)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !93, file: !96, line: 47, baseType: !49, size: 64, align: 64, offset: 1856)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !93, file: !84, line: 27, baseType: !49, size: 64, align: 64, offset: 1920)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_nick", scope: !93, file: !84, line: 28, baseType: !49, size: 64, align: 64, offset: 1984)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !93, file: !84, line: 30, baseType: !72, size: 32, align: 32, offset: 2048)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_username", scope: !93, file: !84, line: 31, baseType: !49, size: 64, align: 64, offset: 2112)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !93, file: !84, line: 32, baseType: !49, size: 64, align: 64, offset: 2176)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !93, file: !84, line: 34, baseType: !72, size: 32, align: 32, offset: 2240)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !93, file: !84, line: 35, baseType: !72, size: 32, align: 32, offset: 2272)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !93, file: !84, line: 36, baseType: !72, size: 32, align: 32, offset: 2304)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks", scope: !93, file: !84, line: 38, baseType: !72, size: 32, align: 32, offset: 2336)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !93, file: !84, line: 38, baseType: !72, size: 32, align: 32, offset: 2368)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes", scope: !93, file: !84, line: 38, baseType: !72, size: 32, align: 32, offset: 2400)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois", scope: !93, file: !84, line: 38, baseType: !72, size: 32, align: 32, offset: 2432)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !83, file: !87, line: 9, baseType: !52, size: 64, align: 64, offset: 192)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !83, file: !87, line: 10, baseType: !52, size: 64, align: 64, offset: 256)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !83, file: !87, line: 12, baseType: !49, size: 64, align: 64, offset: 320)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !83, file: !87, line: 13, baseType: !49, size: 64, align: 64, offset: 384)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !83, file: !87, line: 15, baseType: !159, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !83, file: !87, line: 16, baseType: !159, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !83, file: !87, line: 17, baseType: !159, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !83, file: !87, line: 18, baseType: !159, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !83, file: !87, line: 19, baseType: !159, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !83, file: !87, line: 21, baseType: !341, size: 64, align: 64, offset: 512)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64, align: 64)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !113, line: 102, baseType: !343)
!343 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !113, line: 102, flags: DIFlagFwdDecl)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !83, file: !87, line: 22, baseType: !72, size: 32, align: 32, offset: 576)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !83, file: !87, line: 25, baseType: !346, size: 128, align: 64, offset: 640)
!346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 128, align: 64, elements: !347)
!347 = !{!348}
!348 = !DISubrange(count: 2)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !83, file: !87, line: 26, baseType: !72, size: 32, align: 32, offset: 768)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !83, file: !87, line: 27, baseType: !72, size: 32, align: 32, offset: 800)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !83, file: !87, line: 29, baseType: !352, size: 64, align: 64, offset: 832)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64, align: 64)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !113, line: 103, baseType: !354)
!354 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !113, line: 103, flags: DIFlagFwdDecl)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !83, file: !87, line: 30, baseType: !75, size: 64, align: 64, offset: 896)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !83, file: !87, line: 32, baseType: !49, size: 64, align: 64, offset: 960)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !83, file: !87, line: 33, baseType: !49, size: 64, align: 64, offset: 1024)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !83, file: !87, line: 34, baseType: !49, size: 64, align: 64, offset: 1088)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !83, file: !87, line: 35, baseType: !159, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !83, file: !87, line: 36, baseType: !159, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !83, file: !87, line: 37, baseType: !159, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !83, file: !87, line: 38, baseType: !159, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !83, file: !87, line: 40, baseType: !364, size: 128, align: 64, offset: 1216)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !39, line: 504, baseType: !365)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !39, line: 506, size: 128, align: 64, elements: !366)
!366 = !{!367, !369}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !365, file: !39, line: 508, baseType: !368, size: 64, align: 64)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !39, line: 48, baseType: !56)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !365, file: !39, line: 509, baseType: !368, size: 64, align: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !83, file: !87, line: 41, baseType: !52, size: 64, align: 64, offset: 1344)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !83, file: !87, line: 42, baseType: !72, size: 32, align: 32, offset: 1408)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !83, file: !87, line: 44, baseType: !248, size: 64, align: 64, offset: 1472)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !83, file: !87, line: 45, baseType: !248, size: 64, align: 64, offset: 1536)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !83, file: !87, line: 53, baseType: !375, size: 64, align: 64, offset: 1600)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64, align: 64)
!376 = !DISubroutineType(types: !377)
!377 = !{null, !378, !41, !72}
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64, align: 64)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !113, line: 107, baseType: !380)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !381, line: 30, size: 2240, align: 64, elements: !382)
!381 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!382 = !{!383, !384, !385, !386, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !462, !466, !470, !474, !479, !557, !564, !568}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !380, file: !87, line: 3, baseType: !72, size: 32, align: 32)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !380, file: !87, line: 4, baseType: !72, size: 32, align: 32, offset: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !380, file: !87, line: 6, baseType: !72, size: 32, align: 32, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !380, file: !87, line: 8, baseType: !387, size: 64, align: 64, offset: 128)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64, align: 64)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !113, line: 113, baseType: !389)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !381, line: 25, size: 1920, align: 64, elements: !390)
!390 = !{!391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !389, file: !96, line: 3, baseType: !72, size: 32, align: 32)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !389, file: !96, line: 4, baseType: !72, size: 32, align: 32, offset: 32)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !389, file: !96, line: 6, baseType: !72, size: 32, align: 32, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !389, file: !96, line: 9, baseType: !49, size: 64, align: 64, offset: 128)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !389, file: !96, line: 10, baseType: !72, size: 32, align: 32, offset: 192)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !389, file: !96, line: 11, baseType: !49, size: 64, align: 64, offset: 256)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !389, file: !96, line: 11, baseType: !49, size: 64, align: 64, offset: 320)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !389, file: !96, line: 11, baseType: !49, size: 64, align: 64, offset: 384)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !389, file: !96, line: 13, baseType: !105, size: 16, align: 16, offset: 448)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !389, file: !96, line: 14, baseType: !49, size: 64, align: 64, offset: 512)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !389, file: !96, line: 15, baseType: !49, size: 64, align: 64, offset: 576)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !389, file: !96, line: 16, baseType: !72, size: 32, align: 32, offset: 640)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !389, file: !96, line: 17, baseType: !49, size: 64, align: 64, offset: 704)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !389, file: !96, line: 19, baseType: !111, size: 64, align: 64, offset: 768)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !389, file: !96, line: 19, baseType: !111, size: 64, align: 64, offset: 832)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !389, file: !96, line: 21, baseType: !49, size: 64, align: 64, offset: 896)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !389, file: !96, line: 22, baseType: !49, size: 64, align: 64, offset: 960)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !389, file: !96, line: 23, baseType: !49, size: 64, align: 64, offset: 1024)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !389, file: !96, line: 24, baseType: !49, size: 64, align: 64, offset: 1088)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !389, file: !96, line: 26, baseType: !49, size: 64, align: 64, offset: 1152)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !389, file: !96, line: 27, baseType: !49, size: 64, align: 64, offset: 1216)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !389, file: !96, line: 28, baseType: !49, size: 64, align: 64, offset: 1280)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !389, file: !96, line: 29, baseType: !49, size: 64, align: 64, offset: 1344)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !389, file: !96, line: 30, baseType: !49, size: 64, align: 64, offset: 1408)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !389, file: !96, line: 31, baseType: !49, size: 64, align: 64, offset: 1472)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !389, file: !96, line: 32, baseType: !49, size: 64, align: 64, offset: 1536)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !389, file: !96, line: 33, baseType: !49, size: 64, align: 64, offset: 1600)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !389, file: !96, line: 35, baseType: !129, size: 64, align: 64, offset: 1664)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !389, file: !96, line: 38, baseType: !159, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !389, file: !96, line: 39, baseType: !159, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !389, file: !96, line: 40, baseType: !159, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !389, file: !96, line: 41, baseType: !159, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !389, file: !96, line: 42, baseType: !159, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !389, file: !96, line: 43, baseType: !159, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !389, file: !96, line: 44, baseType: !159, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !389, file: !96, line: 45, baseType: !159, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !389, file: !96, line: 46, baseType: !49, size: 64, align: 64, offset: 1792)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !389, file: !96, line: 47, baseType: !49, size: 64, align: 64, offset: 1856)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !380, file: !87, line: 9, baseType: !52, size: 64, align: 64, offset: 192)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !380, file: !87, line: 10, baseType: !52, size: 64, align: 64, offset: 256)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !380, file: !87, line: 12, baseType: !49, size: 64, align: 64, offset: 320)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !380, file: !87, line: 13, baseType: !49, size: 64, align: 64, offset: 384)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !380, file: !87, line: 15, baseType: !159, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !380, file: !87, line: 16, baseType: !159, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !380, file: !87, line: 17, baseType: !159, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !380, file: !87, line: 18, baseType: !159, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !380, file: !87, line: 19, baseType: !159, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !380, file: !87, line: 21, baseType: !341, size: 64, align: 64, offset: 512)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !380, file: !87, line: 22, baseType: !72, size: 32, align: 32, offset: 576)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !380, file: !87, line: 25, baseType: !346, size: 128, align: 64, offset: 640)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !380, file: !87, line: 26, baseType: !72, size: 32, align: 32, offset: 768)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !380, file: !87, line: 27, baseType: !72, size: 32, align: 32, offset: 800)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !380, file: !87, line: 29, baseType: !352, size: 64, align: 64, offset: 832)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !380, file: !87, line: 30, baseType: !75, size: 64, align: 64, offset: 896)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !380, file: !87, line: 32, baseType: !49, size: 64, align: 64, offset: 960)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !380, file: !87, line: 33, baseType: !49, size: 64, align: 64, offset: 1024)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !380, file: !87, line: 34, baseType: !49, size: 64, align: 64, offset: 1088)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !380, file: !87, line: 35, baseType: !159, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !380, file: !87, line: 36, baseType: !159, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !380, file: !87, line: 37, baseType: !159, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !380, file: !87, line: 38, baseType: !159, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !380, file: !87, line: 40, baseType: !364, size: 128, align: 64, offset: 1216)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !380, file: !87, line: 41, baseType: !52, size: 64, align: 64, offset: 1344)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !380, file: !87, line: 42, baseType: !72, size: 32, align: 32, offset: 1408)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !380, file: !87, line: 44, baseType: !248, size: 64, align: 64, offset: 1472)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !380, file: !87, line: 45, baseType: !248, size: 64, align: 64, offset: 1536)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !380, file: !87, line: 53, baseType: !375, size: 64, align: 64, offset: 1600)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !380, file: !87, line: 55, baseType: !459, size: 64, align: 64, offset: 1664)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64, align: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{!72, !378, !40}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !380, file: !87, line: 57, baseType: !463, size: 64, align: 64, offset: 1728)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64, align: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!72, !378, !41}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !380, file: !87, line: 60, baseType: !467, size: 64, align: 64, offset: 1792)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64, align: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{!41, !378}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !380, file: !87, line: 62, baseType: !471, size: 64, align: 64, offset: 1856)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64, align: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{null, !378, !41, !41, !72}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !380, file: !87, line: 65, baseType: !475, size: 64, align: 64, offset: 1920)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64, align: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!478, !378, !41, !41}
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !380, file: !87, line: 69, baseType: !480, size: 64, align: 64, offset: 1984)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64, align: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!483, !378, !41}
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64, align: 64)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !113, line: 109, baseType: !485)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !486, line: 15, size: 1408, align: 64, elements: !487)
!486 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!487 = !{!488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !505, !509, !511, !512, !513, !514, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !485, file: !71, line: 3, baseType: !72, size: 32, align: 32)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !485, file: !71, line: 4, baseType: !72, size: 32, align: 32, offset: 32)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !485, file: !71, line: 5, baseType: !75, size: 64, align: 64, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !485, file: !71, line: 7, baseType: !36, size: 64, align: 64, offset: 128)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !485, file: !71, line: 8, baseType: !378, size: 64, align: 64, offset: 192)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !485, file: !71, line: 9, baseType: !49, size: 64, align: 64, offset: 256)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !485, file: !71, line: 10, baseType: !49, size: 64, align: 64, offset: 320)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !485, file: !71, line: 11, baseType: !52, size: 64, align: 64, offset: 384)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !485, file: !71, line: 12, baseType: !72, size: 32, align: 32, offset: 448)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !485, file: !71, line: 13, baseType: !49, size: 64, align: 64, offset: 512)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !485, file: !71, line: 15, baseType: !499, size: 64, align: 64, offset: 576)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64, align: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{null, !502}
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64, align: 64)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !113, line: 108, baseType: !504)
!504 = !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !113, line: 108, flags: DIFlagFwdDecl)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !485, file: !71, line: 17, baseType: !506, size: 64, align: 64, offset: 640)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64, align: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{!41, !502}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !485, file: !510, line: 5, baseType: !49, size: 64, align: 64, offset: 704)
!510 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!511 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !485, file: !510, line: 6, baseType: !49, size: 64, align: 64, offset: 768)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !485, file: !510, line: 7, baseType: !52, size: 64, align: 64, offset: 832)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !485, file: !510, line: 9, baseType: !75, size: 64, align: 64, offset: 896)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !485, file: !510, line: 10, baseType: !515, size: 64, align: 64, offset: 960)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64, align: 64)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !113, line: 111, baseType: !517)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !518, line: 13, size: 576, align: 64, elements: !519)
!518 = !DIFile(filename: "../../../src/core/nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!519 = !{!520, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !538, !539}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !517, file: !521, line: 3, baseType: !72, size: 32, align: 32)
!521 = !DIFile(filename: "../../../src/core/nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!522 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !517, file: !521, line: 4, baseType: !72, size: 32, align: 32, offset: 32)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !517, file: !521, line: 6, baseType: !52, size: 64, align: 64, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !517, file: !521, line: 8, baseType: !49, size: 64, align: 64, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !517, file: !521, line: 9, baseType: !49, size: 64, align: 64, offset: 192)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !517, file: !521, line: 10, baseType: !49, size: 64, align: 64, offset: 256)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !517, file: !521, line: 11, baseType: !72, size: 32, align: 32, offset: 320)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !517, file: !521, line: 14, baseType: !159, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !517, file: !521, line: 15, baseType: !159, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !517, file: !521, line: 18, baseType: !159, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !517, file: !521, line: 19, baseType: !159, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !517, file: !521, line: 20, baseType: !159, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !517, file: !521, line: 21, baseType: !159, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !517, file: !521, line: 22, baseType: !535, size: 64, align: 8, offset: 360)
!535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 64, align: 8, elements: !536)
!536 = !{!537}
!537 = !DISubrange(count: 8)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !517, file: !521, line: 26, baseType: !36, size: 64, align: 64, offset: 448)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !517, file: !521, line: 28, baseType: !515, size: 64, align: 64, offset: 512)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !485, file: !510, line: 12, baseType: !159, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !485, file: !510, line: 13, baseType: !49, size: 64, align: 64, offset: 1088)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !485, file: !510, line: 14, baseType: !72, size: 32, align: 32, offset: 1152)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !485, file: !510, line: 15, baseType: !49, size: 64, align: 64, offset: 1216)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !485, file: !510, line: 17, baseType: !159, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !485, file: !510, line: 18, baseType: !159, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !485, file: !510, line: 19, baseType: !159, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !485, file: !510, line: 20, baseType: !159, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !485, file: !510, line: 22, baseType: !159, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !485, file: !510, line: 23, baseType: !159, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !485, file: !510, line: 24, baseType: !159, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !485, file: !510, line: 25, baseType: !159, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !485, file: !510, line: 26, baseType: !159, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !485, file: !510, line: 31, baseType: !554, size: 64, align: 64, offset: 1344)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64, align: 64)
!555 = !DISubroutineType(types: !556)
!556 = !{!49, !483}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !380, file: !87, line: 70, baseType: !558, size: 64, align: 64, offset: 2048)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64, align: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{!561, !378, !41}
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64, align: 64)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !113, line: 110, baseType: !563)
!563 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !113, line: 110, flags: DIFlagFwdDecl)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !380, file: !87, line: 71, baseType: !565, size: 64, align: 64, offset: 2112)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64, align: 64)
!566 = !DISubroutineType(types: !567)
!567 = !{!72, !41, !41}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !380, file: !87, line: 73, baseType: !565, size: 64, align: 64, offset: 2176)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !83, file: !87, line: 55, baseType: !459, size: 64, align: 64, offset: 1664)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !83, file: !87, line: 57, baseType: !463, size: 64, align: 64, offset: 1728)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !83, file: !87, line: 60, baseType: !467, size: 64, align: 64, offset: 1792)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !83, file: !87, line: 62, baseType: !471, size: 64, align: 64, offset: 1856)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !83, file: !87, line: 65, baseType: !475, size: 64, align: 64, offset: 1920)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !83, file: !87, line: 69, baseType: !480, size: 64, align: 64, offset: 1984)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !83, file: !87, line: 70, baseType: !558, size: 64, align: 64, offset: 2048)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !83, file: !87, line: 71, baseType: !565, size: 64, align: 64, offset: 2112)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !83, file: !87, line: 73, baseType: !565, size: 64, align: 64, offset: 2176)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "redirects", scope: !83, file: !84, line: 46, baseType: !248, size: 64, align: 64, offset: 2240)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_queue", scope: !83, file: !84, line: 47, baseType: !248, size: 64, align: 64, offset: 2304)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_next", scope: !83, file: !84, line: 48, baseType: !581, size: 64, align: 64, offset: 2368)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64, align: 64)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "REDIRECT_REC", file: !66, line: 8, baseType: !583)
!583 = !DICompositeType(tag: DW_TAG_structure_type, name: "_REDIRECT_REC", file: !66, line: 8, flags: DIFlagFwdDecl)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_active", scope: !83, file: !84, line: 49, baseType: !248, size: 64, align: 64, offset: 2432)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "last_nick", scope: !83, file: !84, line: 51, baseType: !49, size: 64, align: 64, offset: 2496)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !83, file: !84, line: 53, baseType: !49, size: 64, align: 64, offset: 2560)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !83, file: !84, line: 54, baseType: !49, size: 64, align: 64, offset: 2624)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "wanted_usermode", scope: !83, file: !84, line: 55, baseType: !49, size: 64, align: 64, offset: 2688)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "userhost", scope: !83, file: !84, line: 56, baseType: !49, size: 64, align: 64, offset: 2752)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "channels_formed", scope: !83, file: !84, line: 57, baseType: !72, size: 32, align: 32, offset: 2816)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "whois_found", scope: !83, file: !84, line: 59, baseType: !159, size: 1, align: 32, offset: 2848, flags: DIFlagBitField, extraData: i64 2848)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "whowas_found", scope: !83, file: !84, line: 60, baseType: !159, size: 1, align: 32, offset: 2849, flags: DIFlagBitField, extraData: i64 2848)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "emode_known", scope: !83, file: !84, line: 62, baseType: !159, size: 1, align: 32, offset: 2850, flags: DIFlagBitField, extraData: i64 2848)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_mode", scope: !83, file: !84, line: 63, baseType: !159, size: 1, align: 32, offset: 2851, flags: DIFlagBitField, extraData: i64 2848)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_who", scope: !83, file: !84, line: 64, baseType: !159, size: 1, align: 32, offset: 2852, flags: DIFlagBitField, extraData: i64 2848)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "one_endofwho", scope: !83, file: !84, line: 65, baseType: !159, size: 1, align: 32, offset: 2853, flags: DIFlagBitField, extraData: i64 2848)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "disable_lag", scope: !83, file: !84, line: 66, baseType: !159, size: 1, align: 32, offset: 2854, flags: DIFlagBitField, extraData: i64 2848)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "nick_collision", scope: !83, file: !84, line: 67, baseType: !159, size: 1, align: 32, offset: 2855, flags: DIFlagBitField, extraData: i64 2848)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "motd_got", scope: !83, file: !84, line: 68, baseType: !159, size: 1, align: 32, offset: 2856, flags: DIFlagBitField, extraData: i64 2848)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "isupport_sent", scope: !83, file: !84, line: 69, baseType: !159, size: 1, align: 32, offset: 2857, flags: DIFlagBitField, extraData: i64 2848)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "cap_complete", scope: !83, file: !84, line: 70, baseType: !159, size: 1, align: 32, offset: 2858, flags: DIFlagBitField, extraData: i64 2848)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "cap_in_multiline", scope: !83, file: !84, line: 71, baseType: !159, size: 1, align: 32, offset: 2859, flags: DIFlagBitField, extraData: i64 2848)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_success", scope: !83, file: !84, line: 72, baseType: !159, size: 1, align: 32, offset: 2860, flags: DIFlagBitField, extraData: i64 2848)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks_in_cmd", scope: !83, file: !84, line: 74, baseType: !72, size: 32, align: 32, offset: 2880)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes_in_cmd", scope: !83, file: !84, line: 75, baseType: !72, size: 32, align: 32, offset: 2912)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois_in_cmd", scope: !83, file: !84, line: 76, baseType: !72, size: 32, align: 32, offset: 2944)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs_in_cmd", scope: !83, file: !84, line: 77, baseType: !72, size: 32, align: 32, offset: 2976)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "cap_supported", scope: !83, file: !84, line: 79, baseType: !75, size: 64, align: 64, offset: 3008)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "cap_active", scope: !83, file: !84, line: 80, baseType: !248, size: 64, align: 64, offset: 3072)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "cap_queue", scope: !83, file: !84, line: 81, baseType: !248, size: 64, align: 64, offset: 3136)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_buffer", scope: !83, file: !84, line: 83, baseType: !287, size: 64, align: 64, offset: 3200)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_timeout", scope: !83, file: !84, line: 84, baseType: !239, size: 32, align: 32, offset: 3264)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcount", scope: !83, file: !84, line: 87, baseType: !72, size: 32, align: 32, offset: 3296)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "cmdqueue", scope: !83, file: !84, line: 91, baseType: !248, size: 64, align: 64, offset: 3328)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "wait_cmd", scope: !83, file: !84, line: 92, baseType: !364, size: 128, align: 64, offset: 3392)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd", scope: !83, file: !84, line: 93, baseType: !364, size: 128, align: 64, offset: 3520)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !83, file: !84, line: 95, baseType: !72, size: 32, align: 32, offset: 3648)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !83, file: !84, line: 96, baseType: !72, size: 32, align: 32, offset: 3680)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !83, file: !84, line: 97, baseType: !72, size: 32, align: 32, offset: 3712)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "idles", scope: !83, file: !84, line: 100, baseType: !248, size: 64, align: 64, offset: 3776)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "ctcpqueue", scope: !83, file: !84, line: 103, baseType: !248, size: 64, align: 64, offset: 3840)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "knockoutlist", scope: !83, file: !84, line: 106, baseType: !248, size: 64, align: 64, offset: 3904)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "splits", scope: !83, file: !84, line: 108, baseType: !75, size: 64, align: 64, offset: 3968)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "split_servers", scope: !83, file: !84, line: 109, baseType: !248, size: 64, align: 64, offset: 4032)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "rejoin_channels", scope: !83, file: !84, line: 111, baseType: !248, size: 64, align: 64, offset: 4096)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "chanqueries", scope: !83, file: !84, line: 114, baseType: !36, size: 64, align: 64, offset: 4160)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "isupport", scope: !83, file: !84, line: 116, baseType: !75, size: 64, align: 64, offset: 4224)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !83, file: !84, line: 117, baseType: !629, size: 32768, align: 64, offset: 4288)
!629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !630, size: 32768, align: 64, elements: !639)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "modes_type", file: !631, line: 10, size: 128, align: 64, elements: !632)
!631 = !DIFile(filename: "modes.h", directory: "/home/lichi/Desktop/irssi/task1")
!632 = !{!633, !638}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !630, file: !631, line: 11, baseType: !634, size: 64, align: 64)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64, align: 64)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_func_t", file: !631, line: 7, baseType: !636)
!636 = !DISubroutineType(types: !637)
!637 = !{null, !64, !41, !40, !40, !49, !287}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !630, file: !631, line: 12, baseType: !40, size: 8, align: 8, offset: 64)
!639 = !{!640}
!640 = !DISubrange(count: 256)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !83, file: !84, line: 118, baseType: !642, size: 2048, align: 8, offset: 37056)
!642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 2048, align: 8, elements: !639)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "nick_comp_func", scope: !83, file: !84, line: 120, baseType: !565, size: 64, align: 64, offset: 39104)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !67, file: !71, line: 9, baseType: !49, size: 64, align: 64, offset: 256)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !67, file: !71, line: 10, baseType: !49, size: 64, align: 64, offset: 320)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !67, file: !71, line: 11, baseType: !52, size: 64, align: 64, offset: 384)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !67, file: !71, line: 12, baseType: !72, size: 32, align: 32, offset: 448)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !67, file: !71, line: 13, baseType: !49, size: 64, align: 64, offset: 512)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !67, file: !71, line: 15, baseType: !499, size: 64, align: 64, offset: 576)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !67, file: !71, line: 17, baseType: !506, size: 64, align: 64, offset: 640)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !67, file: !510, line: 5, baseType: !49, size: 64, align: 64, offset: 704)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !67, file: !510, line: 6, baseType: !49, size: 64, align: 64, offset: 768)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !67, file: !510, line: 7, baseType: !52, size: 64, align: 64, offset: 832)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !67, file: !510, line: 9, baseType: !75, size: 64, align: 64, offset: 896)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !67, file: !510, line: 10, baseType: !515, size: 64, align: 64, offset: 960)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !67, file: !510, line: 12, baseType: !159, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !67, file: !510, line: 13, baseType: !49, size: 64, align: 64, offset: 1088)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !67, file: !510, line: 14, baseType: !72, size: 32, align: 32, offset: 1152)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !67, file: !510, line: 15, baseType: !49, size: 64, align: 64, offset: 1216)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !67, file: !510, line: 17, baseType: !159, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !67, file: !510, line: 18, baseType: !159, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !67, file: !510, line: 19, baseType: !159, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !67, file: !510, line: 20, baseType: !159, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !67, file: !510, line: 22, baseType: !159, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !67, file: !510, line: 23, baseType: !159, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !67, file: !510, line: 24, baseType: !159, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !67, file: !510, line: 25, baseType: !159, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !67, file: !510, line: 26, baseType: !159, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !67, file: !510, line: 31, baseType: !554, size: 64, align: 64, offset: 1344)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "banlist", scope: !67, file: !68, line: 18, baseType: !248, size: 64, align: 64, offset: 1408)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "massjoin_start", scope: !67, file: !68, line: 20, baseType: !52, size: 64, align: 64, offset: 1472)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "massjoins", scope: !67, file: !68, line: 21, baseType: !72, size: 32, align: 32, offset: 1536)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "last_massjoins", scope: !67, file: !68, line: 22, baseType: !72, size: 32, align: 32, offset: 1568)
!674 = !{i32 2, !"Dwarf Version", i32 4}
!675 = !{i32 2, !"Debug Info Version", i32 3}
!676 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!677 = distinct !DISubprogram(name: "banlist_free", scope: !678, file: !678, line: 41, type: !679, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !681)
!678 = !DIFile(filename: "mode-lists.c", directory: "/home/lichi/Desktop/irssi/task1")
!679 = !DISubroutineType(types: !680)
!680 = !{null, !248}
!681 = !{}
!682 = !DILocalVariable(name: "banlist", arg: 1, scope: !677, file: !678, line: 41, type: !248)
!683 = !DIExpression()
!684 = !DILocation(line: 41, column: 27, scope: !677)
!685 = !DILocation(line: 43, column: 2, scope: !677)
!686 = !DILocation(line: 43, column: 9, scope: !687)
!687 = !DILexicalBlockFile(scope: !677, file: !678, discriminator: 1)
!688 = !DILocation(line: 43, column: 17, scope: !687)
!689 = !DILocation(line: 43, column: 2, scope: !687)
!690 = !DILocation(line: 44, column: 22, scope: !677)
!691 = !DILocation(line: 44, column: 31, scope: !677)
!692 = !DILocation(line: 44, column: 3, scope: !677)
!693 = !DILocation(line: 43, column: 2, scope: !694)
!694 = !DILexicalBlockFile(scope: !677, file: !678, discriminator: 2)
!695 = distinct !{!695, !685}
!696 = !DILocation(line: 45, column: 1, scope: !677)
!697 = distinct !DISubprogram(name: "ban_free", scope: !678, file: !678, line: 29, type: !698, isLocal: true, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !681)
!698 = !DISubroutineType(types: !699)
!699 = !{null, !700, !43}
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64, align: 64)
!701 = !DILocalVariable(name: "list", arg: 1, scope: !697, file: !678, line: 29, type: !700)
!702 = !DILocation(line: 29, column: 31, scope: !697)
!703 = !DILocalVariable(name: "rec", arg: 2, scope: !697, file: !678, line: 29, type: !43)
!704 = !DILocation(line: 29, column: 46, scope: !697)
!705 = !DILocation(line: 31, column: 2, scope: !697)
!706 = distinct !{!706, !705}
!707 = !DILocation(line: 31, column: 10, scope: !708)
!708 = !DILexicalBlockFile(scope: !709, file: !678, discriminator: 1)
!709 = distinct !DILexicalBlock(scope: !710, file: !678, line: 31, column: 10)
!710 = distinct !DILexicalBlock(scope: !697, file: !678, line: 31, column: 4)
!711 = !DILocation(line: 31, column: 15, scope: !708)
!712 = !DILocation(line: 31, column: 5, scope: !713)
!713 = !DILexicalBlockFile(scope: !714, file: !678, discriminator: 2)
!714 = distinct !DILexicalBlock(scope: !709, file: !678, line: 31, column: 3)
!715 = !DILocation(line: 31, column: 14, scope: !716)
!716 = !DILexicalBlockFile(scope: !717, file: !678, discriminator: 3)
!717 = distinct !DILexicalBlock(scope: !709, file: !678, line: 31, column: 12)
!718 = !DILocation(line: 31, column: 99, scope: !716)
!719 = !DILocation(line: 31, column: 110, scope: !720)
!720 = !DILexicalBlockFile(scope: !710, file: !678, discriminator: 4)
!721 = !DILocation(line: 32, column: 2, scope: !697)
!722 = distinct !{!722, !721}
!723 = !DILocation(line: 32, column: 10, scope: !724)
!724 = !DILexicalBlockFile(scope: !725, file: !678, discriminator: 1)
!725 = distinct !DILexicalBlock(scope: !726, file: !678, line: 32, column: 10)
!726 = distinct !DILexicalBlock(scope: !697, file: !678, line: 32, column: 4)
!727 = !DILocation(line: 32, column: 14, scope: !724)
!728 = !DILocation(line: 32, column: 5, scope: !729)
!729 = !DILexicalBlockFile(scope: !730, file: !678, discriminator: 2)
!730 = distinct !DILexicalBlock(scope: !725, file: !678, line: 32, column: 3)
!731 = !DILocation(line: 32, column: 14, scope: !732)
!732 = !DILexicalBlockFile(scope: !733, file: !678, discriminator: 3)
!733 = distinct !DILexicalBlock(scope: !725, file: !678, line: 32, column: 12)
!734 = !DILocation(line: 32, column: 98, scope: !732)
!735 = !DILocation(line: 32, column: 109, scope: !736)
!736 = !DILexicalBlockFile(scope: !726, file: !678, discriminator: 4)
!737 = !DILocation(line: 34, column: 26, scope: !697)
!738 = !DILocation(line: 34, column: 25, scope: !697)
!739 = !DILocation(line: 34, column: 32, scope: !697)
!740 = !DILocation(line: 34, column: 10, scope: !697)
!741 = !DILocation(line: 34, column: 3, scope: !697)
!742 = !DILocation(line: 34, column: 8, scope: !697)
!743 = !DILocation(line: 36, column: 9, scope: !697)
!744 = !DILocation(line: 36, column: 14, scope: !697)
!745 = !DILocation(line: 36, column: 2, scope: !697)
!746 = !DILocation(line: 37, column: 9, scope: !697)
!747 = !DILocation(line: 37, column: 14, scope: !697)
!748 = !DILocation(line: 37, column: 2, scope: !697)
!749 = !DILocation(line: 38, column: 9, scope: !697)
!750 = !DILocation(line: 38, column: 2, scope: !697)
!751 = !DILocation(line: 39, column: 1, scope: !697)
!752 = !DILocation(line: 39, column: 1, scope: !753)
!753 = !DILexicalBlockFile(scope: !697, file: !678, discriminator: 1)
!754 = distinct !DISubprogram(name: "banlist_find", scope: !678, file: !678, line: 47, type: !755, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !681)
!755 = !DISubroutineType(types: !756)
!756 = !{!43, !248, !41}
!757 = !DILocalVariable(name: "list", arg: 1, scope: !754, file: !678, line: 47, type: !248)
!758 = !DILocation(line: 47, column: 31, scope: !754)
!759 = !DILocalVariable(name: "ban", arg: 2, scope: !754, file: !678, line: 47, type: !41)
!760 = !DILocation(line: 47, column: 49, scope: !754)
!761 = !DILocalVariable(name: "tmp", scope: !754, file: !678, line: 49, type: !248)
!762 = !DILocation(line: 49, column: 10, scope: !754)
!763 = !DILocation(line: 51, column: 2, scope: !754)
!764 = distinct !{!764, !763}
!765 = !DILocation(line: 51, column: 10, scope: !766)
!766 = !DILexicalBlockFile(scope: !767, file: !678, discriminator: 1)
!767 = distinct !DILexicalBlock(scope: !768, file: !678, line: 51, column: 10)
!768 = distinct !DILexicalBlock(scope: !754, file: !678, line: 51, column: 4)
!769 = !DILocation(line: 51, column: 14, scope: !766)
!770 = !DILocation(line: 51, column: 5, scope: !771)
!771 = !DILexicalBlockFile(scope: !772, file: !678, discriminator: 2)
!772 = distinct !DILexicalBlock(scope: !767, file: !678, line: 51, column: 3)
!773 = !DILocation(line: 51, column: 14, scope: !774)
!774 = !DILexicalBlockFile(scope: !775, file: !678, discriminator: 3)
!775 = distinct !DILexicalBlock(scope: !767, file: !678, line: 51, column: 12)
!776 = !DILocation(line: 51, column: 98, scope: !774)
!777 = !DILocation(line: 51, column: 7, scope: !778)
!778 = !DILexicalBlockFile(scope: !768, file: !678, discriminator: 4)
!779 = !DILocation(line: 53, column: 13, scope: !780)
!780 = distinct !DILexicalBlock(scope: !754, file: !678, line: 53, column: 2)
!781 = !DILocation(line: 53, column: 11, scope: !780)
!782 = !DILocation(line: 53, column: 7, scope: !780)
!783 = !DILocation(line: 53, column: 19, scope: !784)
!784 = !DILexicalBlockFile(scope: !785, file: !678, discriminator: 1)
!785 = distinct !DILexicalBlock(scope: !780, file: !678, line: 53, column: 2)
!786 = !DILocation(line: 53, column: 23, scope: !784)
!787 = !DILocation(line: 53, column: 2, scope: !784)
!788 = !DILocalVariable(name: "rec", scope: !789, file: !678, line: 54, type: !43)
!789 = distinct !DILexicalBlock(scope: !785, file: !678, line: 53, column: 48)
!790 = !DILocation(line: 54, column: 12, scope: !789)
!791 = !DILocation(line: 54, column: 18, scope: !789)
!792 = !DILocation(line: 54, column: 23, scope: !789)
!793 = !DILocation(line: 56, column: 26, scope: !794)
!794 = distinct !DILexicalBlock(scope: !789, file: !678, line: 56, column: 7)
!795 = !DILocation(line: 56, column: 31, scope: !794)
!796 = !DILocation(line: 56, column: 36, scope: !794)
!797 = !DILocation(line: 56, column: 7, scope: !794)
!798 = !DILocation(line: 56, column: 41, scope: !794)
!799 = !DILocation(line: 56, column: 7, scope: !789)
!800 = !DILocation(line: 57, column: 11, scope: !794)
!801 = !DILocation(line: 57, column: 4, scope: !794)
!802 = !DILocation(line: 58, column: 2, scope: !789)
!803 = !DILocation(line: 53, column: 37, scope: !804)
!804 = !DILexicalBlockFile(scope: !785, file: !678, discriminator: 2)
!805 = !DILocation(line: 53, column: 42, scope: !804)
!806 = !DILocation(line: 53, column: 35, scope: !804)
!807 = !DILocation(line: 53, column: 2, scope: !804)
!808 = distinct !{!808, !809}
!809 = !DILocation(line: 53, column: 2, scope: !754)
!810 = !DILocation(line: 60, column: 2, scope: !754)
!811 = !DILocation(line: 61, column: 1, scope: !754)
!812 = distinct !DISubprogram(name: "banlist_add", scope: !678, file: !678, line: 63, type: !813, isLocal: false, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !681)
!813 = !DISubroutineType(types: !814)
!814 = !{!43, !64, !41, !41, !52}
!815 = !DILocalVariable(name: "channel", arg: 1, scope: !812, file: !678, line: 63, type: !64)
!816 = !DILocation(line: 63, column: 39, scope: !812)
!817 = !DILocalVariable(name: "ban", arg: 2, scope: !812, file: !678, line: 63, type: !41)
!818 = !DILocation(line: 63, column: 60, scope: !812)
!819 = !DILocalVariable(name: "nick", arg: 3, scope: !812, file: !678, line: 64, type: !41)
!820 = !DILocation(line: 64, column: 20, scope: !812)
!821 = !DILocalVariable(name: "time", arg: 4, scope: !812, file: !678, line: 64, type: !52)
!822 = !DILocation(line: 64, column: 33, scope: !812)
!823 = !DILocalVariable(name: "rec", scope: !812, file: !678, line: 66, type: !43)
!824 = !DILocation(line: 66, column: 11, scope: !812)
!825 = !DILocation(line: 68, column: 2, scope: !812)
!826 = distinct !{!826, !825}
!827 = !DILocation(line: 68, column: 10, scope: !828)
!828 = !DILexicalBlockFile(scope: !829, file: !678, discriminator: 1)
!829 = distinct !DILexicalBlock(scope: !830, file: !678, line: 68, column: 10)
!830 = distinct !DILexicalBlock(scope: !812, file: !678, line: 68, column: 4)
!831 = !DILocation(line: 68, column: 18, scope: !828)
!832 = !DILocation(line: 68, column: 5, scope: !833)
!833 = !DILexicalBlockFile(scope: !834, file: !678, discriminator: 2)
!834 = distinct !DILexicalBlock(scope: !829, file: !678, line: 68, column: 3)
!835 = !DILocation(line: 68, column: 14, scope: !836)
!836 = !DILexicalBlockFile(scope: !837, file: !678, discriminator: 3)
!837 = distinct !DILexicalBlock(scope: !829, file: !678, line: 68, column: 12)
!838 = !DILocation(line: 68, column: 102, scope: !836)
!839 = !DILocation(line: 68, column: 7, scope: !840)
!840 = !DILexicalBlockFile(scope: !830, file: !678, discriminator: 4)
!841 = !DILocation(line: 69, column: 2, scope: !812)
!842 = distinct !{!842, !841}
!843 = !DILocation(line: 69, column: 10, scope: !844)
!844 = !DILexicalBlockFile(scope: !845, file: !678, discriminator: 1)
!845 = distinct !DILexicalBlock(scope: !846, file: !678, line: 69, column: 10)
!846 = distinct !DILexicalBlock(scope: !812, file: !678, line: 69, column: 4)
!847 = !DILocation(line: 69, column: 14, scope: !844)
!848 = !DILocation(line: 69, column: 5, scope: !849)
!849 = !DILexicalBlockFile(scope: !850, file: !678, discriminator: 2)
!850 = distinct !DILexicalBlock(scope: !845, file: !678, line: 69, column: 3)
!851 = !DILocation(line: 69, column: 14, scope: !852)
!852 = !DILexicalBlockFile(scope: !853, file: !678, discriminator: 3)
!853 = distinct !DILexicalBlock(scope: !845, file: !678, line: 69, column: 12)
!854 = !DILocation(line: 69, column: 98, scope: !852)
!855 = !DILocation(line: 69, column: 7, scope: !856)
!856 = !DILexicalBlockFile(scope: !846, file: !678, discriminator: 4)
!857 = !DILocation(line: 71, column: 21, scope: !812)
!858 = !DILocation(line: 71, column: 30, scope: !812)
!859 = !DILocation(line: 71, column: 39, scope: !812)
!860 = !DILocation(line: 71, column: 8, scope: !812)
!861 = !DILocation(line: 71, column: 6, scope: !812)
!862 = !DILocation(line: 72, column: 6, scope: !863)
!863 = distinct !DILexicalBlock(scope: !812, file: !678, line: 72, column: 6)
!864 = !DILocation(line: 72, column: 10, scope: !863)
!865 = !DILocation(line: 72, column: 6, scope: !812)
!866 = !DILocation(line: 76, column: 3, scope: !867)
!867 = distinct !DILexicalBlock(scope: !863, file: !678, line: 72, column: 18)
!868 = !DILocation(line: 79, column: 21, scope: !812)
!869 = !DILocation(line: 79, column: 9, scope: !812)
!870 = !DILocation(line: 79, column: 6, scope: !812)
!871 = !DILocation(line: 80, column: 22, scope: !812)
!872 = !DILocation(line: 80, column: 13, scope: !812)
!873 = !DILocation(line: 80, column: 2, scope: !812)
!874 = !DILocation(line: 80, column: 7, scope: !812)
!875 = !DILocation(line: 80, column: 11, scope: !812)
!876 = !DILocation(line: 81, column: 15, scope: !812)
!877 = !DILocation(line: 81, column: 20, scope: !812)
!878 = !DILocation(line: 81, column: 27, scope: !812)
!879 = !DILocation(line: 81, column: 31, scope: !880)
!880 = !DILexicalBlockFile(scope: !812, file: !678, discriminator: 1)
!881 = !DILocation(line: 81, column: 30, scope: !880)
!882 = !DILocation(line: 81, column: 36, scope: !880)
!883 = !DILocation(line: 81, column: 15, scope: !880)
!884 = !DILocation(line: 81, column: 15, scope: !885)
!885 = !DILexicalBlockFile(scope: !812, file: !678, discriminator: 2)
!886 = !DILocation(line: 82, column: 12, scope: !812)
!887 = !DILocation(line: 82, column: 3, scope: !812)
!888 = !DILocation(line: 81, column: 15, scope: !889)
!889 = !DILexicalBlockFile(scope: !812, file: !678, discriminator: 3)
!890 = !DILocation(line: 81, column: 15, scope: !891)
!891 = !DILexicalBlockFile(scope: !812, file: !678, discriminator: 4)
!892 = !DILocation(line: 81, column: 2, scope: !891)
!893 = !DILocation(line: 81, column: 7, scope: !891)
!894 = !DILocation(line: 81, column: 13, scope: !891)
!895 = !DILocation(line: 83, column: 14, scope: !812)
!896 = !DILocation(line: 83, column: 2, scope: !812)
!897 = !DILocation(line: 83, column: 7, scope: !812)
!898 = !DILocation(line: 83, column: 12, scope: !812)
!899 = !DILocation(line: 85, column: 36, scope: !812)
!900 = !DILocation(line: 85, column: 45, scope: !812)
!901 = !DILocation(line: 85, column: 54, scope: !812)
!902 = !DILocation(line: 85, column: 21, scope: !812)
!903 = !DILocation(line: 85, column: 2, scope: !812)
!904 = !DILocation(line: 85, column: 11, scope: !812)
!905 = !DILocation(line: 85, column: 19, scope: !812)
!906 = !DILocation(line: 87, column: 28, scope: !812)
!907 = !DILocation(line: 87, column: 37, scope: !812)
!908 = !DILocation(line: 87, column: 2, scope: !812)
!909 = !DILocation(line: 88, column: 9, scope: !812)
!910 = !DILocation(line: 88, column: 2, scope: !812)
!911 = !DILocation(line: 89, column: 1, scope: !812)
!912 = distinct !DISubprogram(name: "banlist_remove", scope: !678, file: !678, line: 91, type: !913, isLocal: false, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !681)
!913 = !DISubroutineType(types: !914)
!914 = !{null, !64, !41, !41}
!915 = !DILocalVariable(name: "channel", arg: 1, scope: !912, file: !678, line: 91, type: !64)
!916 = !DILocation(line: 91, column: 38, scope: !912)
!917 = !DILocalVariable(name: "ban", arg: 2, scope: !912, file: !678, line: 91, type: !41)
!918 = !DILocation(line: 91, column: 59, scope: !912)
!919 = !DILocalVariable(name: "nick", arg: 3, scope: !912, file: !678, line: 91, type: !41)
!920 = !DILocation(line: 91, column: 76, scope: !912)
!921 = !DILocalVariable(name: "rec", scope: !912, file: !678, line: 93, type: !43)
!922 = !DILocation(line: 93, column: 11, scope: !912)
!923 = !DILocation(line: 95, column: 2, scope: !912)
!924 = distinct !{!924, !923}
!925 = !DILocation(line: 95, column: 10, scope: !926)
!926 = !DILexicalBlockFile(scope: !927, file: !678, discriminator: 1)
!927 = distinct !DILexicalBlock(scope: !928, file: !678, line: 95, column: 10)
!928 = distinct !DILexicalBlock(scope: !912, file: !678, line: 95, column: 4)
!929 = !DILocation(line: 95, column: 18, scope: !926)
!930 = !DILocation(line: 95, column: 5, scope: !931)
!931 = !DILexicalBlockFile(scope: !932, file: !678, discriminator: 2)
!932 = distinct !DILexicalBlock(scope: !927, file: !678, line: 95, column: 3)
!933 = !DILocation(line: 95, column: 14, scope: !934)
!934 = !DILexicalBlockFile(scope: !935, file: !678, discriminator: 3)
!935 = distinct !DILexicalBlock(scope: !927, file: !678, line: 95, column: 12)
!936 = !DILocation(line: 95, column: 102, scope: !934)
!937 = !DILocation(line: 95, column: 113, scope: !938)
!938 = !DILexicalBlockFile(scope: !928, file: !678, discriminator: 4)
!939 = !DILocation(line: 96, column: 2, scope: !912)
!940 = distinct !{!940, !939}
!941 = !DILocation(line: 96, column: 10, scope: !942)
!942 = !DILexicalBlockFile(scope: !943, file: !678, discriminator: 1)
!943 = distinct !DILexicalBlock(scope: !944, file: !678, line: 96, column: 10)
!944 = distinct !DILexicalBlock(scope: !912, file: !678, line: 96, column: 4)
!945 = !DILocation(line: 96, column: 14, scope: !942)
!946 = !DILocation(line: 96, column: 5, scope: !947)
!947 = !DILexicalBlockFile(scope: !948, file: !678, discriminator: 2)
!948 = distinct !DILexicalBlock(scope: !943, file: !678, line: 96, column: 3)
!949 = !DILocation(line: 96, column: 14, scope: !950)
!950 = !DILexicalBlockFile(scope: !951, file: !678, discriminator: 3)
!951 = distinct !DILexicalBlock(scope: !943, file: !678, line: 96, column: 12)
!952 = !DILocation(line: 96, column: 98, scope: !950)
!953 = !DILocation(line: 96, column: 109, scope: !954)
!954 = !DILexicalBlockFile(scope: !944, file: !678, discriminator: 4)
!955 = !DILocation(line: 98, column: 21, scope: !912)
!956 = !DILocation(line: 98, column: 30, scope: !912)
!957 = !DILocation(line: 98, column: 39, scope: !912)
!958 = !DILocation(line: 98, column: 8, scope: !912)
!959 = !DILocation(line: 98, column: 6, scope: !912)
!960 = !DILocation(line: 99, column: 6, scope: !961)
!961 = distinct !DILexicalBlock(scope: !912, file: !678, line: 99, column: 6)
!962 = !DILocation(line: 99, column: 10, scope: !961)
!963 = !DILocation(line: 99, column: 6, scope: !912)
!964 = !DILocation(line: 100, column: 32, scope: !965)
!965 = distinct !DILexicalBlock(scope: !961, file: !678, line: 99, column: 18)
!966 = !DILocation(line: 100, column: 41, scope: !965)
!967 = !DILocation(line: 100, column: 46, scope: !965)
!968 = !DILocation(line: 100, column: 3, scope: !965)
!969 = !DILocation(line: 101, column: 13, scope: !965)
!970 = !DILocation(line: 101, column: 22, scope: !965)
!971 = !DILocation(line: 101, column: 31, scope: !965)
!972 = !DILocation(line: 101, column: 3, scope: !965)
!973 = !DILocation(line: 102, column: 2, scope: !965)
!974 = !DILocation(line: 103, column: 1, scope: !912)
!975 = distinct !DISubprogram(name: "mode_lists_init", scope: !678, file: !678, line: 130, type: !236, isLocal: false, isDefinition: true, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !681)
!976 = !DILocation(line: 132, column: 2, scope: !975)
!977 = !DILocation(line: 134, column: 2, scope: !975)
!978 = !DILocation(line: 135, column: 1, scope: !975)
!979 = distinct !DISubprogram(name: "channel_destroyed", scope: !678, file: !678, line: 105, type: !980, isLocal: true, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !681)
!980 = !DISubroutineType(types: !981)
!981 = !{null, !64}
!982 = !DILocalVariable(name: "channel", arg: 1, scope: !979, file: !678, line: 105, type: !64)
!983 = !DILocation(line: 105, column: 48, scope: !979)
!984 = !DILocation(line: 107, column: 96, scope: !985)
!985 = distinct !DILexicalBlock(scope: !979, file: !678, line: 107, column: 6)
!986 = !DILocation(line: 107, column: 71, scope: !985)
!987 = !DILocation(line: 107, column: 55, scope: !985)
!988 = !DILocation(line: 107, column: 54, scope: !985)
!989 = !DILocation(line: 107, column: 29, scope: !990)
!990 = !DILexicalBlockFile(scope: !985, file: !678, discriminator: 3)
!991 = !DILocation(line: 107, column: 9, scope: !985)
!992 = !DILocation(line: 107, column: 6, scope: !979)
!993 = !DILocation(line: 107, column: 8, scope: !994)
!994 = !DILexicalBlockFile(scope: !985, file: !678, discriminator: 1)
!995 = !DILocation(line: 107, column: 6, scope: !996)
!996 = !DILexicalBlockFile(scope: !979, file: !678, discriminator: 2)
!997 = !DILocation(line: 108, column: 17, scope: !985)
!998 = !DILocation(line: 110, column: 15, scope: !979)
!999 = !DILocation(line: 110, column: 24, scope: !979)
!1000 = !DILocation(line: 110, column: 2, scope: !979)
!1001 = !DILocation(line: 111, column: 1, scope: !979)
!1002 = !DILocation(line: 111, column: 1, scope: !1003)
!1003 = !DILexicalBlockFile(scope: !979, file: !678, discriminator: 1)
!1004 = distinct !DISubprogram(name: "event_banlist", scope: !678, file: !678, line: 113, type: !1005, isLocal: true, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !681)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{null, !81, !41}
!1007 = !DILocalVariable(name: "server", arg: 1, scope: !1004, file: !678, line: 113, type: !81)
!1008 = !DILocation(line: 113, column: 43, scope: !1004)
!1009 = !DILocalVariable(name: "data", arg: 2, scope: !1004, file: !678, line: 113, type: !41)
!1010 = !DILocation(line: 113, column: 63, scope: !1004)
!1011 = !DILocalVariable(name: "chanrec", scope: !1004, file: !678, line: 115, type: !64)
!1012 = !DILocation(line: 115, column: 19, scope: !1004)
!1013 = !DILocalVariable(name: "params", scope: !1004, file: !678, line: 116, type: !49)
!1014 = !DILocation(line: 116, column: 8, scope: !1004)
!1015 = !DILocalVariable(name: "channel", scope: !1004, file: !678, line: 116, type: !49)
!1016 = !DILocation(line: 116, column: 17, scope: !1004)
!1017 = !DILocalVariable(name: "ban", scope: !1004, file: !678, line: 116, type: !49)
!1018 = !DILocation(line: 116, column: 27, scope: !1004)
!1019 = !DILocalVariable(name: "setby", scope: !1004, file: !678, line: 116, type: !49)
!1020 = !DILocation(line: 116, column: 33, scope: !1004)
!1021 = !DILocalVariable(name: "tims", scope: !1004, file: !678, line: 116, type: !49)
!1022 = !DILocation(line: 116, column: 41, scope: !1004)
!1023 = !DILocalVariable(name: "tim", scope: !1004, file: !678, line: 117, type: !52)
!1024 = !DILocation(line: 117, column: 9, scope: !1004)
!1025 = !DILocation(line: 119, column: 2, scope: !1004)
!1026 = distinct !{!1026, !1025}
!1027 = !DILocation(line: 119, column: 10, scope: !1028)
!1028 = !DILexicalBlockFile(scope: !1029, file: !678, discriminator: 1)
!1029 = distinct !DILexicalBlock(scope: !1030, file: !678, line: 119, column: 10)
!1030 = distinct !DILexicalBlock(scope: !1004, file: !678, line: 119, column: 4)
!1031 = !DILocation(line: 119, column: 15, scope: !1028)
!1032 = !DILocation(line: 119, column: 5, scope: !1033)
!1033 = !DILexicalBlockFile(scope: !1034, file: !678, discriminator: 2)
!1034 = distinct !DILexicalBlock(scope: !1029, file: !678, line: 119, column: 3)
!1035 = !DILocation(line: 119, column: 14, scope: !1036)
!1036 = !DILexicalBlockFile(scope: !1037, file: !678, discriminator: 3)
!1037 = distinct !DILexicalBlock(scope: !1029, file: !678, line: 119, column: 12)
!1038 = !DILocation(line: 119, column: 99, scope: !1036)
!1039 = !DILocation(line: 119, column: 110, scope: !1040)
!1040 = !DILexicalBlockFile(scope: !1030, file: !678, discriminator: 4)
!1041 = !DILocation(line: 121, column: 28, scope: !1004)
!1042 = !DILocation(line: 121, column: 11, scope: !1004)
!1043 = !DILocation(line: 121, column: 9, scope: !1004)
!1044 = !DILocation(line: 122, column: 147, scope: !1004)
!1045 = !DILocation(line: 122, column: 129, scope: !1004)
!1046 = !DILocation(line: 122, column: 114, scope: !1004)
!1047 = !DILocation(line: 122, column: 25, scope: !1004)
!1048 = !DILocation(line: 122, column: 100, scope: !1049)
!1049 = !DILexicalBlockFile(scope: !1004, file: !678, discriminator: 1)
!1050 = !DILocation(line: 122, column: 100, scope: !1004)
!1051 = !DILocation(line: 122, column: 75, scope: !1052)
!1052 = !DILexicalBlockFile(scope: !1004, file: !678, discriminator: 2)
!1053 = !DILocation(line: 122, column: 59, scope: !1004)
!1054 = !DILocation(line: 122, column: 58, scope: !1004)
!1055 = !DILocation(line: 122, column: 33, scope: !1056)
!1056 = !DILexicalBlockFile(scope: !1004, file: !678, discriminator: 3)
!1057 = !DILocation(line: 122, column: 13, scope: !1004)
!1058 = !DILocation(line: 122, column: 10, scope: !1004)
!1059 = !DILocation(line: 123, column: 6, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1004, file: !678, line: 123, column: 6)
!1061 = !DILocation(line: 123, column: 14, scope: !1060)
!1062 = !DILocation(line: 123, column: 6, scope: !1004)
!1063 = !DILocation(line: 124, column: 23, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1060, file: !678, line: 123, column: 22)
!1065 = !DILocation(line: 124, column: 18, scope: !1064)
!1066 = !DILocation(line: 124, column: 7, scope: !1064)
!1067 = !DILocation(line: 125, column: 15, scope: !1064)
!1068 = !DILocation(line: 125, column: 24, scope: !1064)
!1069 = !DILocation(line: 125, column: 29, scope: !1064)
!1070 = !DILocation(line: 125, column: 36, scope: !1064)
!1071 = !DILocation(line: 125, column: 3, scope: !1064)
!1072 = !DILocation(line: 126, column: 2, scope: !1064)
!1073 = !DILocation(line: 127, column: 9, scope: !1004)
!1074 = !DILocation(line: 127, column: 2, scope: !1004)
!1075 = !DILocation(line: 128, column: 1, scope: !1004)
!1076 = !DILocation(line: 128, column: 1, scope: !1049)
!1077 = distinct !DISubprogram(name: "mode_lists_deinit", scope: !678, file: !678, line: 137, type: !236, isLocal: false, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !681)
!1078 = !DILocation(line: 139, column: 2, scope: !1077)
!1079 = !DILocation(line: 141, column: 2, scope: !1077)
!1080 = !DILocation(line: 142, column: 1, scope: !1077)
