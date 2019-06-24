; ModuleID = './line133-irc-queries.o.i'
source_filename = "./line133-irc-queries.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._QUERY_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, i8 }
%struct._GHashTable = type opaque
%struct._SERVER_REC = type { i32, i32, i32, %struct._SERVER_CONNECT_REC*, i64, i64, i8*, i8*, i8, %struct._NET_SENDBUF_REC*, i32, [2 x %struct._GIOChannel*], i32, i32, %struct._RAWLOG_REC*, %struct._GHashTable*, i8*, i8*, i8*, i8, %struct._GTimeVal, i64, i32, %struct._GSList*, %struct._GSList*, void (%struct._SERVER_REC*, i8*, i32)*, i32 (%struct._SERVER_REC*, i8)*, i32 (%struct._SERVER_REC*, i8*)*, i8* (%struct._SERVER_REC*)*, void (%struct._SERVER_REC*, i8*, i8*, i32)*, i8** (%struct._SERVER_REC*, i8*, i8*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)*, %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)* }
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
%struct._GSList = type { i8*, %struct._GSList* }
%struct._CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)* }
%struct._NICK_REC = type { i32, i32, i64, i8*, i8*, i8*, i32, i8, [8 x i8], i8*, %struct._NICK_REC* }
%struct._WI_ITEM_REC = type opaque
%struct._IRC_SERVER_REC = type { i32, i32, i32, %struct._IRC_SERVER_CONNECT_REC*, i64, i64, i8*, i8*, i8, %struct._NET_SENDBUF_REC*, i32, [2 x %struct._GIOChannel*], i32, i32, %struct._RAWLOG_REC*, %struct._GHashTable*, i8*, i8*, i8*, i8, %struct._GTimeVal, i64, i32, %struct._GSList*, %struct._GSList*, void (%struct._SERVER_REC*, i8*, i32)*, i32 (%struct._SERVER_REC*, i8)*, i32 (%struct._SERVER_REC*, i8*)*, i8* (%struct._SERVER_REC*)*, void (%struct._SERVER_REC*, i8*, i8*, i32)*, i8** (%struct._SERVER_REC*, i8*, i8*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)*, %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)*, %struct._GSList*, %struct._GSList*, %struct._REDIRECT_REC*, %struct._GSList*, i8*, i8*, i8*, i8*, i8*, i32, i16, i32, i32, i32, i32, %struct._GHashTable*, %struct._GSList*, %struct._GSList*, %struct._GString*, i32, i32, %struct._GSList*, %struct._GTimeVal, %struct._GTimeVal, i32, i32, i32, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GHashTable*, %struct._GSList*, %struct._GSList*, i8*, %struct._GHashTable*, [256 x %struct.modes_type], [256 x i8], i32 (i8*, i8*)* }
%struct._IRC_SERVER_CONNECT_REC = type { i32, i32, i32, i8*, i32, i8*, i8*, i8*, i16, i8*, i8*, i32, i8*, %struct._IPADDR*, %struct._IPADDR*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._GIOChannel*, i8, i8*, i8*, i8*, i8*, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct._REDIRECT_REC = type opaque
%struct.modes_type = type { void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, i8 }
%struct._IRC_CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._IRC_SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)*, %struct._GSList*, i64, i32, i32 }

@__func__.irc_query_create = private unnamed_addr constant [17 x i8] c"irc_query_create\00", align 1
@.str = private unnamed_addr constant [13 x i8] c"nick != NULL\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"IRC\00", align 1
@__func__.irc_query_find = private unnamed_addr constant [15 x i8] c"irc_query_find\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"irc/core\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"ctcp action\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"event nick\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1

; Function Attrs: nounwind uwtable
define %struct._QUERY_REC* @irc_query_create(i8*, i8*, i32) #0 !dbg !481 {
  %4 = alloca %struct._QUERY_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._QUERY_REC*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !486, metadata !487), !dbg !488
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !489, metadata !487), !dbg !490
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !491, metadata !487), !dbg !492
  call void @llvm.dbg.declare(metadata %struct._QUERY_REC** %8, metadata !493, metadata !487), !dbg !494
  br label %9, !dbg !495, !llvm.loop !496

; <label>:9:                                      ; preds = %3
  %10 = load i8*, i8** %6, align 8, !dbg !497
  %11 = icmp ne i8* %10, null, !dbg !501
  br i1 %11, label %12, label %13, !dbg !497

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !502

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.irc_query_create, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)), !dbg !505
  store %struct._QUERY_REC* null, %struct._QUERY_REC** %4, align 8, !dbg !508
  br label %32, !dbg !508

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !509

; <label>:15:                                     ; preds = %14
  %16 = call noalias i8* @g_malloc0_n(i64 1, i64 120), !dbg !511
  %17 = bitcast i8* %16 to %struct._QUERY_REC*, !dbg !512
  store %struct._QUERY_REC* %17, %struct._QUERY_REC** %8, align 8, !dbg !513
  %18 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)), !dbg !514
  %19 = load %struct._QUERY_REC*, %struct._QUERY_REC** %8, align 8, !dbg !515
  %20 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %19, i32 0, i32 1, !dbg !516
  store i32 %18, i32* %20, align 4, !dbg !517
  %21 = load i8*, i8** %6, align 8, !dbg !518
  %22 = call noalias i8* @g_strdup(i8* %21), !dbg !519
  %23 = load %struct._QUERY_REC*, %struct._QUERY_REC** %8, align 8, !dbg !520
  %24 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %23, i32 0, i32 6, !dbg !521
  store i8* %22, i8** %24, align 8, !dbg !522
  %25 = load i8*, i8** %5, align 8, !dbg !523
  %26 = call noalias i8* @g_strdup(i8* %25), !dbg !524
  %27 = load %struct._QUERY_REC*, %struct._QUERY_REC** %8, align 8, !dbg !525
  %28 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %27, i32 0, i32 13, !dbg !526
  store i8* %26, i8** %28, align 8, !dbg !527
  %29 = load %struct._QUERY_REC*, %struct._QUERY_REC** %8, align 8, !dbg !528
  %30 = load i32, i32* %7, align 4, !dbg !529
  call void @query_init(%struct._QUERY_REC* %29, i32 %30), !dbg !530
  %31 = load %struct._QUERY_REC*, %struct._QUERY_REC** %8, align 8, !dbg !531
  store %struct._QUERY_REC* %31, %struct._QUERY_REC** %4, align 8, !dbg !532
  br label %32, !dbg !532

; <label>:32:                                     ; preds = %15, %13
  %33 = load %struct._QUERY_REC*, %struct._QUERY_REC** %4, align 8, !dbg !533
  ret %struct._QUERY_REC* %33, !dbg !533
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare noalias i8* @g_malloc0_n(i64, i64) #2

declare i32 @chat_protocol_lookup(i8*) #2

declare noalias i8* @g_strdup(i8*) #2

declare void @query_init(%struct._QUERY_REC*, i32) #2

; Function Attrs: nounwind uwtable
define %struct._QUERY_REC* @irc_query_find(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !534 {
  %3 = alloca %struct._QUERY_REC*, align 8
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca %struct._QUERY_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !745, metadata !487), !dbg !746
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !747, metadata !487), !dbg !748
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !749, metadata !487), !dbg !750
  br label %8, !dbg !751, !llvm.loop !752

; <label>:8:                                      ; preds = %2
  %9 = load i8*, i8** %5, align 8, !dbg !753
  %10 = icmp ne i8* %9, null, !dbg !757
  br i1 %10, label %11, label %12, !dbg !753

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !758

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.irc_query_find, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)), !dbg !761
  store %struct._QUERY_REC* null, %struct._QUERY_REC** %3, align 8, !dbg !764
  br label %43, !dbg !764

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !765

; <label>:14:                                     ; preds = %13
  %15 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !767
  %16 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %15, i32 0, i32 24, !dbg !769
  %17 = load %struct._GSList*, %struct._GSList** %16, align 8, !dbg !769
  store %struct._GSList* %17, %struct._GSList** %6, align 8, !dbg !770
  br label %18, !dbg !771

; <label>:18:                                     ; preds = %38, %14
  %19 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !772
  %20 = icmp ne %struct._GSList* %19, null, !dbg !775
  br i1 %20, label %21, label %42, !dbg !776

; <label>:21:                                     ; preds = %18
  call void @llvm.dbg.declare(metadata %struct._QUERY_REC** %7, metadata !777, metadata !487), !dbg !779
  %22 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !780
  %23 = getelementptr inbounds %struct._GSList, %struct._GSList* %22, i32 0, i32 0, !dbg !781
  %24 = load i8*, i8** %23, align 8, !dbg !781
  %25 = bitcast i8* %24 to %struct._QUERY_REC*, !dbg !780
  store %struct._QUERY_REC* %25, %struct._QUERY_REC** %7, align 8, !dbg !779
  %26 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !782
  %27 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %26, i32 0, i32 72, !dbg !784
  %28 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %27, align 8, !dbg !784
  %29 = load %struct._QUERY_REC*, %struct._QUERY_REC** %7, align 8, !dbg !785
  %30 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %29, i32 0, i32 6, !dbg !786
  %31 = load i8*, i8** %30, align 8, !dbg !786
  %32 = load i8*, i8** %5, align 8, !dbg !787
  %33 = call i32 %28(i8* %31, i8* %32), !dbg !782
  %34 = icmp eq i32 %33, 0, !dbg !788
  br i1 %34, label %35, label %37, !dbg !789

; <label>:35:                                     ; preds = %21
  %36 = load %struct._QUERY_REC*, %struct._QUERY_REC** %7, align 8, !dbg !790
  store %struct._QUERY_REC* %36, %struct._QUERY_REC** %3, align 8, !dbg !791
  br label %43, !dbg !791

; <label>:37:                                     ; preds = %21
  br label %38, !dbg !792

; <label>:38:                                     ; preds = %37
  %39 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !793
  %40 = getelementptr inbounds %struct._GSList, %struct._GSList* %39, i32 0, i32 1, !dbg !795
  %41 = load %struct._GSList*, %struct._GSList** %40, align 8, !dbg !795
  store %struct._GSList* %41, %struct._GSList** %6, align 8, !dbg !796
  br label %18, !dbg !797, !llvm.loop !798

; <label>:42:                                     ; preds = %18
  store %struct._QUERY_REC* null, %struct._QUERY_REC** %3, align 8, !dbg !800
  br label %43, !dbg !800

; <label>:43:                                     ; preds = %42, %35, %12
  %44 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !801
  ret %struct._QUERY_REC* %44, !dbg !801
}

; Function Attrs: nounwind uwtable
define void @irc_queries_init() #0 !dbg !802 {
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 100, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*)* @ctcp_action to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !803
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*)* @event_nick to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !804
  ret void, !dbg !805
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @ctcp_action(%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*) #0 !dbg !806 {
  %6 = alloca %struct._IRC_SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %6, metadata !809, metadata !487), !dbg !810
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !811, metadata !487), !dbg !812
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !813, metadata !487), !dbg !814
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !815, metadata !487), !dbg !816
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !817, metadata !487), !dbg !818
  %11 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !819
  %12 = load i8*, i8** %8, align 8, !dbg !820
  %13 = load i8*, i8** %9, align 8, !dbg !821
  %14 = load i8*, i8** %10, align 8, !dbg !822
  call void @check_query_changes(%struct._IRC_SERVER_REC* %11, i8* %12, i8* %13, i8* %14), !dbg !823
  ret void, !dbg !824
}

; Function Attrs: nounwind uwtable
define internal void @event_nick(%struct._SERVER_REC*, i8*, i8*) #0 !dbg !825 {
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._QUERY_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !828, metadata !487), !dbg !829
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !830, metadata !487), !dbg !831
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !832, metadata !487), !dbg !833
  call void @llvm.dbg.declare(metadata %struct._QUERY_REC** %7, metadata !834, metadata !487), !dbg !835
  call void @llvm.dbg.declare(metadata i8** %8, metadata !836, metadata !487), !dbg !837
  call void @llvm.dbg.declare(metadata i8** %9, metadata !838, metadata !487), !dbg !839
  %10 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !840
  %11 = load i8*, i8** %6, align 8, !dbg !841
  %12 = call %struct._QUERY_REC* @query_find(%struct._SERVER_REC* %10, i8* %11), !dbg !842
  store %struct._QUERY_REC* %12, %struct._QUERY_REC** %7, align 8, !dbg !843
  %13 = load %struct._QUERY_REC*, %struct._QUERY_REC** %7, align 8, !dbg !844
  %14 = icmp ne %struct._QUERY_REC* %13, null, !dbg !846
  br i1 %14, label %15, label %29, !dbg !847

; <label>:15:                                     ; preds = %3
  %16 = load i8*, i8** %5, align 8, !dbg !848
  %17 = call i8* (i8*, i32, ...) @event_get_params(i8* %16, i32 1, i8** %9), !dbg !850
  store i8* %17, i8** %8, align 8, !dbg !851
  %18 = load %struct._QUERY_REC*, %struct._QUERY_REC** %7, align 8, !dbg !852
  %19 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %18, i32 0, i32 6, !dbg !854
  %20 = load i8*, i8** %19, align 8, !dbg !854
  %21 = load i8*, i8** %9, align 8, !dbg !855
  %22 = call i32 @g_strcmp0(i8* %20, i8* %21), !dbg !856
  %23 = icmp ne i32 %22, 0, !dbg !857
  br i1 %23, label %24, label %27, !dbg !858

; <label>:24:                                     ; preds = %15
  %25 = load %struct._QUERY_REC*, %struct._QUERY_REC** %7, align 8, !dbg !859
  %26 = load i8*, i8** %9, align 8, !dbg !860
  call void @query_change_nick(%struct._QUERY_REC* %25, i8* %26), !dbg !861
  br label %27, !dbg !861

; <label>:27:                                     ; preds = %24, %15
  %28 = load i8*, i8** %8, align 8, !dbg !862
  call void @g_free(i8* %28), !dbg !863
  br label %29, !dbg !864

; <label>:29:                                     ; preds = %27, %3
  ret void, !dbg !865
}

; Function Attrs: nounwind uwtable
define void @irc_queries_deinit() #0 !dbg !866 {
  call void @signal_remove_full(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*)* @ctcp_action to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !867
  call void @signal_remove_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*)* @event_nick to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !868
  ret void, !dbg !869
}

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @check_query_changes(%struct._IRC_SERVER_REC*, i8*, i8*, i8*) #0 !dbg !870 {
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._QUERY_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !873, metadata !487), !dbg !874
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !875, metadata !487), !dbg !876
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !877, metadata !487), !dbg !878
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !879, metadata !487), !dbg !880
  call void @llvm.dbg.declare(metadata %struct._QUERY_REC** %9, metadata !881, metadata !487), !dbg !882
  %10 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !883
  %11 = bitcast %struct._IRC_SERVER_REC* %10 to i8*, !dbg !883
  %12 = call i8* @module_check_cast(i8* %11, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0)), !dbg !885
  %13 = bitcast i8* %12 to %struct._SERVER_REC*, !dbg !886
  %14 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %13, i32 0, i32 27, !dbg !887
  %15 = load i32 (%struct._SERVER_REC*, i8*)*, i32 (%struct._SERVER_REC*, i8*)** %14, align 8, !dbg !887
  %16 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !888
  %17 = bitcast %struct._IRC_SERVER_REC* %16 to i8*, !dbg !888
  %18 = call i8* @module_check_cast(i8* %17, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0)), !dbg !889
  %19 = bitcast i8* %18 to %struct._SERVER_REC*, !dbg !891
  %20 = load i8*, i8** %8, align 8, !dbg !892
  %21 = call i32 %15(%struct._SERVER_REC* %19, i8* %20), !dbg !893
  %22 = icmp ne i32 %21, 0, !dbg !895
  br i1 %22, label %23, label %24, !dbg !896

; <label>:23:                                     ; preds = %4
  br label %59, !dbg !897

; <label>:24:                                     ; preds = %4
  %25 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !898
  %26 = load i8*, i8** %6, align 8, !dbg !899
  %27 = call %struct._QUERY_REC* @irc_query_find(%struct._IRC_SERVER_REC* %25, i8* %26), !dbg !900
  store %struct._QUERY_REC* %27, %struct._QUERY_REC** %9, align 8, !dbg !901
  %28 = load %struct._QUERY_REC*, %struct._QUERY_REC** %9, align 8, !dbg !902
  %29 = icmp eq %struct._QUERY_REC* %28, null, !dbg !904
  br i1 %29, label %30, label %31, !dbg !905

; <label>:30:                                     ; preds = %24
  br label %59, !dbg !906

; <label>:31:                                     ; preds = %24
  %32 = load %struct._QUERY_REC*, %struct._QUERY_REC** %9, align 8, !dbg !907
  %33 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %32, i32 0, i32 6, !dbg !909
  %34 = load i8*, i8** %33, align 8, !dbg !909
  %35 = load i8*, i8** %6, align 8, !dbg !910
  %36 = call i32 @g_strcmp0(i8* %34, i8* %35), !dbg !911
  %37 = icmp ne i32 %36, 0, !dbg !912
  br i1 %37, label %38, label %41, !dbg !913

; <label>:38:                                     ; preds = %31
  %39 = load %struct._QUERY_REC*, %struct._QUERY_REC** %9, align 8, !dbg !914
  %40 = load i8*, i8** %6, align 8, !dbg !916
  call void @query_change_nick(%struct._QUERY_REC* %39, i8* %40), !dbg !917
  br label %41, !dbg !918

; <label>:41:                                     ; preds = %38, %31
  %42 = load i8*, i8** %7, align 8, !dbg !919
  %43 = icmp ne i8* %42, null, !dbg !921
  br i1 %43, label %44, label %59, !dbg !922

; <label>:44:                                     ; preds = %41
  %45 = load %struct._QUERY_REC*, %struct._QUERY_REC** %9, align 8, !dbg !923
  %46 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %45, i32 0, i32 12, !dbg !925
  %47 = load i8*, i8** %46, align 8, !dbg !925
  %48 = icmp eq i8* %47, null, !dbg !926
  br i1 %48, label %56, label %49, !dbg !927

; <label>:49:                                     ; preds = %44
  %50 = load %struct._QUERY_REC*, %struct._QUERY_REC** %9, align 8, !dbg !928
  %51 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %50, i32 0, i32 12, !dbg !929
  %52 = load i8*, i8** %51, align 8, !dbg !929
  %53 = load i8*, i8** %7, align 8, !dbg !930
  %54 = call i32 @g_strcmp0(i8* %52, i8* %53), !dbg !931
  %55 = icmp ne i32 %54, 0, !dbg !932
  br i1 %55, label %56, label %59, !dbg !933

; <label>:56:                                     ; preds = %49, %44
  %57 = load %struct._QUERY_REC*, %struct._QUERY_REC** %9, align 8, !dbg !935
  %58 = load i8*, i8** %7, align 8, !dbg !937
  call void @query_change_address(%struct._QUERY_REC* %57, i8* %58), !dbg !938
  br label %59, !dbg !939

; <label>:59:                                     ; preds = %23, %30, %56, %49, %41
  ret void, !dbg !940
}

declare i8* @module_check_cast(i8*, i32, i8*) #2

declare i32 @g_strcmp0(i8*, i8*) #2

declare void @query_change_nick(%struct._QUERY_REC*, i8*) #2

declare void @query_change_address(%struct._QUERY_REC*, i8*) #2

declare %struct._QUERY_REC* @query_find(%struct._SERVER_REC*, i8*) #2

declare i8* @event_get_params(i8*, i32, ...) #2

declare void @g_free(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!478, !479}
!llvm.ident = !{!480}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !35)
!1 = !DIFile(filename: "line133-irc-queries.o.i", directory: "/home/lichi/Desktop/irssi/task1")
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
!35 = !{!36, !37, !41, !43, !471, !60}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !39, line: 46, baseType: !40)
!39 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!40 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !45, line: 110, baseType: !46)
!45 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !47, line: 15, size: 960, align: 64, elements: !48)
!47 = !DIFile(filename: "../../../src/core/queries.h", directory: "/home/lichi/Desktop/irssi/task1")
!48 = !{!49, !52, !53, !58, !59, !458, !459, !460, !461, !462, !463, !464, !465, !467, !468, !469, !470}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !46, file: !50, line: 3, baseType: !51, size: 32, align: 32)
!50 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!51 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !46, file: !50, line: 4, baseType: !51, size: 32, align: 32, offset: 32)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !46, file: !50, line: 5, baseType: !54, size: 64, align: 64, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !56, line: 37, baseType: !57)
!56 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!57 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !56, line: 37, flags: DIFlagFwdDecl)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !46, file: !50, line: 7, baseType: !36, size: 64, align: 64, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !46, file: !50, line: 8, baseType: !60, size: 64, align: 64, offset: 192)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !45, line: 107, baseType: !62)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !63, line: 30, size: 2240, align: 64, elements: !64)
!63 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!64 = !{!65, !67, !68, !69, !299, !304, !305, !306, !307, !308, !309, !310, !311, !312, !316, !317, !321, !322, !323, !327, !328, !329, !330, !331, !332, !333, !334, !335, !342, !343, !344, !345, !346, !350, !354, !358, !362, !366, !371, !449, !453, !457}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !62, file: !66, line: 3, baseType: !51, size: 32, align: 32)
!66 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!67 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !62, file: !66, line: 4, baseType: !51, size: 32, align: 32, offset: 32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !62, file: !66, line: 6, baseType: !51, size: 32, align: 32, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !62, file: !66, line: 8, baseType: !70, size: 64, align: 64, offset: 128)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !45, line: 113, baseType: !72)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !63, line: 25, size: 1920, align: 64, elements: !73)
!73 = !{!74, !76, !77, !78, !80, !81, !82, !83, !84, !86, !87, !88, !89, !90, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !72, file: !75, line: 3, baseType: !51, size: 32, align: 32)
!75 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!76 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !72, file: !75, line: 4, baseType: !51, size: 32, align: 32, offset: 32)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !72, file: !75, line: 6, baseType: !51, size: 32, align: 32, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !72, file: !75, line: 9, baseType: !79, size: 64, align: 64, offset: 128)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !72, file: !75, line: 10, baseType: !51, size: 32, align: 32, offset: 192)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !72, file: !75, line: 11, baseType: !79, size: 64, align: 64, offset: 256)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !72, file: !75, line: 11, baseType: !79, size: 64, align: 64, offset: 320)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !72, file: !75, line: 11, baseType: !79, size: 64, align: 64, offset: 384)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !72, file: !75, line: 13, baseType: !85, size: 16, align: 16, offset: 448)
!85 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !72, file: !75, line: 14, baseType: !79, size: 64, align: 64, offset: 512)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !72, file: !75, line: 15, baseType: !79, size: 64, align: 64, offset: 576)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !72, file: !75, line: 16, baseType: !51, size: 32, align: 32, offset: 640)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !72, file: !75, line: 17, baseType: !79, size: 64, align: 64, offset: 704)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !72, file: !75, line: 19, baseType: !91, size: 64, align: 64, offset: 768)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !45, line: 99, baseType: !93)
!93 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !45, line: 99, flags: DIFlagFwdDecl)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !72, file: !75, line: 19, baseType: !91, size: 64, align: 64, offset: 832)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !72, file: !75, line: 21, baseType: !79, size: 64, align: 64, offset: 896)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !72, file: !75, line: 22, baseType: !79, size: 64, align: 64, offset: 960)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !72, file: !75, line: 23, baseType: !79, size: 64, align: 64, offset: 1024)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !72, file: !75, line: 24, baseType: !79, size: 64, align: 64, offset: 1088)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !72, file: !75, line: 26, baseType: !79, size: 64, align: 64, offset: 1152)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !72, file: !75, line: 27, baseType: !79, size: 64, align: 64, offset: 1216)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !72, file: !75, line: 28, baseType: !79, size: 64, align: 64, offset: 1280)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !72, file: !75, line: 29, baseType: !79, size: 64, align: 64, offset: 1344)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !72, file: !75, line: 30, baseType: !79, size: 64, align: 64, offset: 1408)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !72, file: !75, line: 31, baseType: !79, size: 64, align: 64, offset: 1472)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !72, file: !75, line: 32, baseType: !79, size: 64, align: 64, offset: 1536)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !72, file: !75, line: 33, baseType: !79, size: 64, align: 64, offset: 1600)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !72, file: !75, line: 35, baseType: !108, size: 64, align: 64, offset: 1664)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64, align: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !110)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !111)
!111 = !{!112, !114, !256, !257, !262, !263, !264, !265, !266, !275, !276, !277, !281, !282, !283, !284, !285, !286, !287, !288}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !110, file: !4, line: 100, baseType: !113, size: 32, align: 32)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !39, line: 49, baseType: !51)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !110, file: !4, line: 101, baseType: !115, size: 64, align: 64, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !117)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !118)
!118 = !{!119, !141, !147, !154, !158, !243, !247, !252}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !117, file: !4, line: 133, baseType: !120, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, align: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{!123, !108, !37, !124, !127, !128}
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
!140 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !132, file: !131, line: 48, baseType: !37, size: 64, align: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !117, file: !4, line: 138, baseType: !142, size: 64, align: 64, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64, align: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{!123, !108, !145, !124, !127, !128}
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64, align: 64)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
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
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !39, line: 77, baseType: !36)
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
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !39, line: 50, baseType: !113)
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
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !39, line: 55, baseType: !138)
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
!237 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !164, file: !16, line: 191, baseType: !79, size: 64, align: 64, offset: 640)
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
!256 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !110, file: !4, line: 103, baseType: !37, size: 64, align: 64, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !110, file: !4, line: 104, baseType: !258, size: 64, align: 64, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !259, line: 77, baseType: !260)
!259 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !259, line: 77, flags: DIFlagFwdDecl)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !110, file: !4, line: 105, baseType: !258, size: 64, align: 64, offset: 256)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !110, file: !4, line: 106, baseType: !37, size: 64, align: 64, offset: 320)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !110, file: !4, line: 107, baseType: !219, size: 32, align: 32, offset: 384)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !110, file: !4, line: 109, baseType: !124, size: 64, align: 64, offset: 448)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !110, file: !4, line: 110, baseType: !267, size: 64, align: 64, offset: 512)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64, align: 64)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !269, line: 39, baseType: !270)
!269 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !269, line: 41, size: 192, align: 64, elements: !271)
!271 = !{!272, !273, !274}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !270, file: !269, line: 43, baseType: !37, size: 64, align: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !270, file: !269, line: 44, baseType: !124, size: 64, align: 64, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !270, file: !269, line: 45, baseType: !124, size: 64, align: 64, offset: 128)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !110, file: !4, line: 111, baseType: !267, size: 64, align: 64, offset: 576)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !110, file: !4, line: 112, baseType: !267, size: 64, align: 64, offset: 640)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !110, file: !4, line: 113, baseType: !278, size: 48, align: 8, offset: 704)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 48, align: 8, elements: !279)
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
!289 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !72, file: !75, line: 38, baseType: !138, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !72, file: !75, line: 39, baseType: !138, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !72, file: !75, line: 40, baseType: !138, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !72, file: !75, line: 41, baseType: !138, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !72, file: !75, line: 42, baseType: !138, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !72, file: !75, line: 43, baseType: !138, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !72, file: !75, line: 44, baseType: !138, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !72, file: !75, line: 45, baseType: !138, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !72, file: !75, line: 46, baseType: !79, size: 64, align: 64, offset: 1792)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !72, file: !75, line: 47, baseType: !79, size: 64, align: 64, offset: 1856)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !62, file: !66, line: 9, baseType: !300, size: 64, align: 64, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !301, line: 75, baseType: !302)
!301 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !303, line: 139, baseType: !152)
!303 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!304 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !62, file: !66, line: 10, baseType: !300, size: 64, align: 64, offset: 256)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !62, file: !66, line: 12, baseType: !79, size: 64, align: 64, offset: 320)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !62, file: !66, line: 13, baseType: !79, size: 64, align: 64, offset: 384)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !62, file: !66, line: 15, baseType: !138, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !62, file: !66, line: 16, baseType: !138, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !62, file: !66, line: 17, baseType: !138, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !62, file: !66, line: 18, baseType: !138, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !62, file: !66, line: 19, baseType: !138, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !62, file: !66, line: 21, baseType: !313, size: 64, align: 64, offset: 512)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64, align: 64)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !45, line: 102, baseType: !315)
!315 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !45, line: 102, flags: DIFlagFwdDecl)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !62, file: !66, line: 22, baseType: !51, size: 32, align: 32, offset: 576)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !62, file: !66, line: 25, baseType: !318, size: 128, align: 64, offset: 640)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 128, align: 64, elements: !319)
!319 = !{!320}
!320 = !DISubrange(count: 2)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !62, file: !66, line: 26, baseType: !51, size: 32, align: 32, offset: 768)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !62, file: !66, line: 27, baseType: !51, size: 32, align: 32, offset: 800)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !62, file: !66, line: 29, baseType: !324, size: 64, align: 64, offset: 832)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64, align: 64)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !45, line: 103, baseType: !326)
!326 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !45, line: 103, flags: DIFlagFwdDecl)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !62, file: !66, line: 30, baseType: !54, size: 64, align: 64, offset: 896)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !62, file: !66, line: 32, baseType: !79, size: 64, align: 64, offset: 960)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !62, file: !66, line: 33, baseType: !79, size: 64, align: 64, offset: 1024)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !62, file: !66, line: 34, baseType: !79, size: 64, align: 64, offset: 1088)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !62, file: !66, line: 35, baseType: !138, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !62, file: !66, line: 36, baseType: !138, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !62, file: !66, line: 37, baseType: !138, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !62, file: !66, line: 38, baseType: !138, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !62, file: !66, line: 40, baseType: !336, size: 128, align: 64, offset: 1216)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !39, line: 504, baseType: !337)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !39, line: 506, size: 128, align: 64, elements: !338)
!338 = !{!339, !341}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !337, file: !39, line: 508, baseType: !340, size: 64, align: 64)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !39, line: 48, baseType: !152)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !337, file: !39, line: 509, baseType: !340, size: 64, align: 64, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !62, file: !66, line: 41, baseType: !300, size: 64, align: 64, offset: 1344)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !62, file: !66, line: 42, baseType: !51, size: 32, align: 32, offset: 1408)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !62, file: !66, line: 44, baseType: !228, size: 64, align: 64, offset: 1472)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !62, file: !66, line: 45, baseType: !228, size: 64, align: 64, offset: 1536)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !62, file: !66, line: 53, baseType: !347, size: 64, align: 64, offset: 1600)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64, align: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{null, !60, !41, !51}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !62, file: !66, line: 55, baseType: !351, size: 64, align: 64, offset: 1664)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64, align: 64)
!352 = !DISubroutineType(types: !353)
!353 = !{!51, !60, !40}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !62, file: !66, line: 57, baseType: !355, size: 64, align: 64, offset: 1728)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64, align: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!51, !60, !41}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !62, file: !66, line: 60, baseType: !359, size: 64, align: 64, offset: 1792)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64, align: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{!41, !60}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !62, file: !66, line: 62, baseType: !363, size: 64, align: 64, offset: 1856)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64, align: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{null, !60, !41, !41, !51}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !62, file: !66, line: 65, baseType: !367, size: 64, align: 64, offset: 1920)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64, align: 64)
!368 = !DISubroutineType(types: !369)
!369 = !{!370, !60, !41, !41}
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !62, file: !66, line: 69, baseType: !372, size: 64, align: 64, offset: 1984)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64, align: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{!375, !60, !41}
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64, align: 64)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !45, line: 109, baseType: !377)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !378, line: 15, size: 1408, align: 64, elements: !379)
!378 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!379 = !{!380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !397, !401, !403, !404, !405, !406, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !377, file: !50, line: 3, baseType: !51, size: 32, align: 32)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !377, file: !50, line: 4, baseType: !51, size: 32, align: 32, offset: 32)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !377, file: !50, line: 5, baseType: !54, size: 64, align: 64, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !377, file: !50, line: 7, baseType: !36, size: 64, align: 64, offset: 128)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !377, file: !50, line: 8, baseType: !60, size: 64, align: 64, offset: 192)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !377, file: !50, line: 9, baseType: !79, size: 64, align: 64, offset: 256)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !377, file: !50, line: 10, baseType: !79, size: 64, align: 64, offset: 320)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !377, file: !50, line: 11, baseType: !300, size: 64, align: 64, offset: 384)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !377, file: !50, line: 12, baseType: !51, size: 32, align: 32, offset: 448)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !377, file: !50, line: 13, baseType: !79, size: 64, align: 64, offset: 512)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !377, file: !50, line: 15, baseType: !391, size: 64, align: 64, offset: 576)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64, align: 64)
!392 = !DISubroutineType(types: !393)
!393 = !{null, !394}
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64, align: 64)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !45, line: 108, baseType: !396)
!396 = !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !45, line: 108, flags: DIFlagFwdDecl)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !377, file: !50, line: 17, baseType: !398, size: 64, align: 64, offset: 640)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64, align: 64)
!399 = !DISubroutineType(types: !400)
!400 = !{!41, !394}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !377, file: !402, line: 5, baseType: !79, size: 64, align: 64, offset: 704)
!402 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!403 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !377, file: !402, line: 6, baseType: !79, size: 64, align: 64, offset: 768)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !377, file: !402, line: 7, baseType: !300, size: 64, align: 64, offset: 832)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !377, file: !402, line: 9, baseType: !54, size: 64, align: 64, offset: 896)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !377, file: !402, line: 10, baseType: !407, size: 64, align: 64, offset: 960)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64, align: 64)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !45, line: 111, baseType: !409)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !410, line: 13, size: 576, align: 64, elements: !411)
!410 = !DIFile(filename: "../../../src/core/nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!411 = !{!412, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !430, !431}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !409, file: !413, line: 3, baseType: !51, size: 32, align: 32)
!413 = !DIFile(filename: "../../../src/core/nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!414 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !409, file: !413, line: 4, baseType: !51, size: 32, align: 32, offset: 32)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !409, file: !413, line: 6, baseType: !300, size: 64, align: 64, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !409, file: !413, line: 8, baseType: !79, size: 64, align: 64, offset: 128)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !409, file: !413, line: 9, baseType: !79, size: 64, align: 64, offset: 192)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !409, file: !413, line: 10, baseType: !79, size: 64, align: 64, offset: 256)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !409, file: !413, line: 11, baseType: !51, size: 32, align: 32, offset: 320)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !409, file: !413, line: 14, baseType: !138, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !409, file: !413, line: 15, baseType: !138, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !409, file: !413, line: 18, baseType: !138, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !409, file: !413, line: 19, baseType: !138, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !409, file: !413, line: 20, baseType: !138, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !409, file: !413, line: 21, baseType: !138, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !409, file: !413, line: 22, baseType: !427, size: 64, align: 8, offset: 360)
!427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 64, align: 8, elements: !428)
!428 = !{!429}
!429 = !DISubrange(count: 8)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !409, file: !413, line: 26, baseType: !36, size: 64, align: 64, offset: 448)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !409, file: !413, line: 28, baseType: !407, size: 64, align: 64, offset: 512)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !377, file: !402, line: 12, baseType: !138, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !377, file: !402, line: 13, baseType: !79, size: 64, align: 64, offset: 1088)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !377, file: !402, line: 14, baseType: !51, size: 32, align: 32, offset: 1152)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !377, file: !402, line: 15, baseType: !79, size: 64, align: 64, offset: 1216)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !377, file: !402, line: 17, baseType: !138, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !377, file: !402, line: 18, baseType: !138, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !377, file: !402, line: 19, baseType: !138, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !377, file: !402, line: 20, baseType: !138, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !377, file: !402, line: 22, baseType: !138, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !377, file: !402, line: 23, baseType: !138, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !377, file: !402, line: 24, baseType: !138, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !377, file: !402, line: 25, baseType: !138, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !377, file: !402, line: 26, baseType: !138, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !377, file: !402, line: 31, baseType: !446, size: 64, align: 64, offset: 1344)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64, align: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{!79, !375}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !62, file: !66, line: 70, baseType: !450, size: 64, align: 64, offset: 2048)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64, align: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!43, !60, !41}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !62, file: !66, line: 71, baseType: !454, size: 64, align: 64, offset: 2112)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64, align: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{!51, !41, !41}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !62, file: !66, line: 73, baseType: !454, size: 64, align: 64, offset: 2176)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !46, file: !50, line: 9, baseType: !79, size: 64, align: 64, offset: 256)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !46, file: !50, line: 10, baseType: !79, size: 64, align: 64, offset: 320)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !46, file: !50, line: 11, baseType: !300, size: 64, align: 64, offset: 384)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !46, file: !50, line: 12, baseType: !51, size: 32, align: 32, offset: 448)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !46, file: !50, line: 13, baseType: !79, size: 64, align: 64, offset: 512)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !46, file: !50, line: 15, baseType: !391, size: 64, align: 64, offset: 576)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !46, file: !50, line: 17, baseType: !398, size: 64, align: 64, offset: 640)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !46, file: !466, line: 5, baseType: !79, size: 64, align: 64, offset: 704)
!466 = !DIFile(filename: "../../../src/core/query-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!467 = !DIDerivedType(tag: DW_TAG_member, name: "server_tag", scope: !46, file: !466, line: 6, baseType: !79, size: 64, align: 64, offset: 768)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "last_unread_msg", scope: !46, file: !466, line: 7, baseType: !300, size: 64, align: 64, offset: 832)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "unwanted", scope: !46, file: !466, line: 9, baseType: !138, size: 1, align: 32, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !46, file: !466, line: 11, baseType: !138, size: 1, align: 32, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !472, line: 9, baseType: !473)
!472 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64, align: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{null, !476, !476, !476, !476, !476, !476}
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64, align: 64)
!477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!478 = !{i32 2, !"Dwarf Version", i32 4}
!479 = !{i32 2, !"Debug Info Version", i32 3}
!480 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!481 = distinct !DISubprogram(name: "irc_query_create", scope: !482, file: !482, line: 29, type: !483, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !485)
!482 = !DIFile(filename: "irc-queries.c", directory: "/home/lichi/Desktop/irssi/task1")
!483 = !DISubroutineType(types: !484)
!484 = !{!43, !41, !41, !51}
!485 = !{}
!486 = !DILocalVariable(name: "server_tag", arg: 1, scope: !481, file: !482, line: 29, type: !41)
!487 = !DIExpression()
!488 = !DILocation(line: 29, column: 41, scope: !481)
!489 = !DILocalVariable(name: "nick", arg: 2, scope: !481, file: !482, line: 30, type: !41)
!490 = !DILocation(line: 30, column: 20, scope: !481)
!491 = !DILocalVariable(name: "automatic", arg: 3, scope: !481, file: !482, line: 30, type: !51)
!492 = !DILocation(line: 30, column: 30, scope: !481)
!493 = !DILocalVariable(name: "rec", scope: !481, file: !482, line: 32, type: !43)
!494 = !DILocation(line: 32, column: 13, scope: !481)
!495 = !DILocation(line: 34, column: 2, scope: !481)
!496 = distinct !{!496, !495}
!497 = !DILocation(line: 34, column: 10, scope: !498)
!498 = !DILexicalBlockFile(scope: !499, file: !482, discriminator: 1)
!499 = distinct !DILexicalBlock(scope: !500, file: !482, line: 34, column: 10)
!500 = distinct !DILexicalBlock(scope: !481, file: !482, line: 34, column: 4)
!501 = !DILocation(line: 34, column: 15, scope: !498)
!502 = !DILocation(line: 34, column: 5, scope: !503)
!503 = !DILexicalBlockFile(scope: !504, file: !482, discriminator: 2)
!504 = distinct !DILexicalBlock(scope: !499, file: !482, line: 34, column: 3)
!505 = !DILocation(line: 34, column: 14, scope: !506)
!506 = !DILexicalBlockFile(scope: !507, file: !482, discriminator: 3)
!507 = distinct !DILexicalBlock(scope: !499, file: !482, line: 34, column: 12)
!508 = !DILocation(line: 34, column: 99, scope: !506)
!509 = !DILocation(line: 34, column: 7, scope: !510)
!510 = !DILexicalBlockFile(scope: !500, file: !482, discriminator: 4)
!511 = !DILocation(line: 36, column: 23, scope: !481)
!512 = !DILocation(line: 36, column: 9, scope: !481)
!513 = !DILocation(line: 36, column: 6, scope: !481)
!514 = !DILocation(line: 37, column: 20, scope: !481)
!515 = !DILocation(line: 37, column: 2, scope: !481)
!516 = !DILocation(line: 37, column: 7, scope: !481)
!517 = !DILocation(line: 37, column: 17, scope: !481)
!518 = !DILocation(line: 38, column: 23, scope: !481)
!519 = !DILocation(line: 38, column: 14, scope: !481)
!520 = !DILocation(line: 38, column: 2, scope: !481)
!521 = !DILocation(line: 38, column: 7, scope: !481)
!522 = !DILocation(line: 38, column: 12, scope: !481)
!523 = !DILocation(line: 39, column: 36, scope: !481)
!524 = !DILocation(line: 39, column: 27, scope: !481)
!525 = !DILocation(line: 39, column: 9, scope: !481)
!526 = !DILocation(line: 39, column: 14, scope: !481)
!527 = !DILocation(line: 39, column: 25, scope: !481)
!528 = !DILocation(line: 40, column: 13, scope: !481)
!529 = !DILocation(line: 40, column: 18, scope: !481)
!530 = !DILocation(line: 40, column: 2, scope: !481)
!531 = !DILocation(line: 41, column: 9, scope: !481)
!532 = !DILocation(line: 41, column: 2, scope: !481)
!533 = !DILocation(line: 42, column: 1, scope: !481)
!534 = distinct !DISubprogram(name: "irc_query_find", scope: !482, file: !482, line: 44, type: !535, isLocal: false, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !485)
!535 = !DISubroutineType(types: !536)
!536 = !{!43, !537, !41}
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64, align: 64)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_REC", file: !539, line: 6, baseType: !540)
!539 = !DIFile(filename: "irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_REC", file: !541, line: 42, size: 39168, align: 64, elements: !542)
!541 = !DIFile(filename: "irc-servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!542 = !{!543, !544, !545, !546, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !742, !744}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !540, file: !66, line: 3, baseType: !51, size: 32, align: 32)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !540, file: !66, line: 4, baseType: !51, size: 32, align: 32, offset: 32)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !540, file: !66, line: 6, baseType: !51, size: 32, align: 32, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !540, file: !66, line: 8, baseType: !547, size: 64, align: 64, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64, align: 64)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_CONNECT_REC", file: !539, line: 5, baseType: !549)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_CONNECT_REC", file: !541, line: 24, size: 2496, align: 64, elements: !550)
!550 = !{!551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !549, file: !75, line: 3, baseType: !51, size: 32, align: 32)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !549, file: !75, line: 4, baseType: !51, size: 32, align: 32, offset: 32)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !549, file: !75, line: 6, baseType: !51, size: 32, align: 32, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !549, file: !75, line: 9, baseType: !79, size: 64, align: 64, offset: 128)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !549, file: !75, line: 10, baseType: !51, size: 32, align: 32, offset: 192)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !549, file: !75, line: 11, baseType: !79, size: 64, align: 64, offset: 256)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !549, file: !75, line: 11, baseType: !79, size: 64, align: 64, offset: 320)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !549, file: !75, line: 11, baseType: !79, size: 64, align: 64, offset: 384)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !549, file: !75, line: 13, baseType: !85, size: 16, align: 16, offset: 448)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !549, file: !75, line: 14, baseType: !79, size: 64, align: 64, offset: 512)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !549, file: !75, line: 15, baseType: !79, size: 64, align: 64, offset: 576)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !549, file: !75, line: 16, baseType: !51, size: 32, align: 32, offset: 640)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !549, file: !75, line: 17, baseType: !79, size: 64, align: 64, offset: 704)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !549, file: !75, line: 19, baseType: !91, size: 64, align: 64, offset: 768)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !549, file: !75, line: 19, baseType: !91, size: 64, align: 64, offset: 832)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !549, file: !75, line: 21, baseType: !79, size: 64, align: 64, offset: 896)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !549, file: !75, line: 22, baseType: !79, size: 64, align: 64, offset: 960)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !549, file: !75, line: 23, baseType: !79, size: 64, align: 64, offset: 1024)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !549, file: !75, line: 24, baseType: !79, size: 64, align: 64, offset: 1088)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !549, file: !75, line: 26, baseType: !79, size: 64, align: 64, offset: 1152)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !549, file: !75, line: 27, baseType: !79, size: 64, align: 64, offset: 1216)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !549, file: !75, line: 28, baseType: !79, size: 64, align: 64, offset: 1280)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !549, file: !75, line: 29, baseType: !79, size: 64, align: 64, offset: 1344)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !549, file: !75, line: 30, baseType: !79, size: 64, align: 64, offset: 1408)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !549, file: !75, line: 31, baseType: !79, size: 64, align: 64, offset: 1472)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !549, file: !75, line: 32, baseType: !79, size: 64, align: 64, offset: 1536)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !549, file: !75, line: 33, baseType: !79, size: 64, align: 64, offset: 1600)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !549, file: !75, line: 35, baseType: !108, size: 64, align: 64, offset: 1664)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !549, file: !75, line: 38, baseType: !138, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !549, file: !75, line: 39, baseType: !138, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !549, file: !75, line: 40, baseType: !138, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !549, file: !75, line: 41, baseType: !138, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !549, file: !75, line: 42, baseType: !138, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !549, file: !75, line: 43, baseType: !138, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !549, file: !75, line: 44, baseType: !138, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !549, file: !75, line: 45, baseType: !138, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !549, file: !75, line: 46, baseType: !79, size: 64, align: 64, offset: 1792)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !549, file: !75, line: 47, baseType: !79, size: 64, align: 64, offset: 1856)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !549, file: !541, line: 27, baseType: !79, size: 64, align: 64, offset: 1920)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_nick", scope: !549, file: !541, line: 28, baseType: !79, size: 64, align: 64, offset: 1984)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !549, file: !541, line: 30, baseType: !51, size: 32, align: 32, offset: 2048)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_username", scope: !549, file: !541, line: 31, baseType: !79, size: 64, align: 64, offset: 2112)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !549, file: !541, line: 32, baseType: !79, size: 64, align: 64, offset: 2176)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !549, file: !541, line: 34, baseType: !51, size: 32, align: 32, offset: 2240)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !549, file: !541, line: 35, baseType: !51, size: 32, align: 32, offset: 2272)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !549, file: !541, line: 36, baseType: !51, size: 32, align: 32, offset: 2304)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks", scope: !549, file: !541, line: 38, baseType: !51, size: 32, align: 32, offset: 2336)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !549, file: !541, line: 38, baseType: !51, size: 32, align: 32, offset: 2368)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes", scope: !549, file: !541, line: 38, baseType: !51, size: 32, align: 32, offset: 2400)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois", scope: !549, file: !541, line: 38, baseType: !51, size: 32, align: 32, offset: 2432)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !540, file: !66, line: 9, baseType: !300, size: 64, align: 64, offset: 192)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !540, file: !66, line: 10, baseType: !300, size: 64, align: 64, offset: 256)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !540, file: !66, line: 12, baseType: !79, size: 64, align: 64, offset: 320)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !540, file: !66, line: 13, baseType: !79, size: 64, align: 64, offset: 384)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !540, file: !66, line: 15, baseType: !138, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !540, file: !66, line: 16, baseType: !138, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !540, file: !66, line: 17, baseType: !138, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !540, file: !66, line: 18, baseType: !138, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !540, file: !66, line: 19, baseType: !138, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !540, file: !66, line: 21, baseType: !313, size: 64, align: 64, offset: 512)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !540, file: !66, line: 22, baseType: !51, size: 32, align: 32, offset: 576)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !540, file: !66, line: 25, baseType: !318, size: 128, align: 64, offset: 640)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !540, file: !66, line: 26, baseType: !51, size: 32, align: 32, offset: 768)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !540, file: !66, line: 27, baseType: !51, size: 32, align: 32, offset: 800)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !540, file: !66, line: 29, baseType: !324, size: 64, align: 64, offset: 832)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !540, file: !66, line: 30, baseType: !54, size: 64, align: 64, offset: 896)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !540, file: !66, line: 32, baseType: !79, size: 64, align: 64, offset: 960)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !540, file: !66, line: 33, baseType: !79, size: 64, align: 64, offset: 1024)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !540, file: !66, line: 34, baseType: !79, size: 64, align: 64, offset: 1088)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !540, file: !66, line: 35, baseType: !138, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !540, file: !66, line: 36, baseType: !138, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !540, file: !66, line: 37, baseType: !138, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !540, file: !66, line: 38, baseType: !138, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !540, file: !66, line: 40, baseType: !336, size: 128, align: 64, offset: 1216)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !540, file: !66, line: 41, baseType: !300, size: 64, align: 64, offset: 1344)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !540, file: !66, line: 42, baseType: !51, size: 32, align: 32, offset: 1408)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !540, file: !66, line: 44, baseType: !228, size: 64, align: 64, offset: 1472)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !540, file: !66, line: 45, baseType: !228, size: 64, align: 64, offset: 1536)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !540, file: !66, line: 53, baseType: !347, size: 64, align: 64, offset: 1600)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !540, file: !66, line: 55, baseType: !351, size: 64, align: 64, offset: 1664)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !540, file: !66, line: 57, baseType: !355, size: 64, align: 64, offset: 1728)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !540, file: !66, line: 60, baseType: !359, size: 64, align: 64, offset: 1792)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !540, file: !66, line: 62, baseType: !363, size: 64, align: 64, offset: 1856)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !540, file: !66, line: 65, baseType: !367, size: 64, align: 64, offset: 1920)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !540, file: !66, line: 69, baseType: !372, size: 64, align: 64, offset: 1984)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !540, file: !66, line: 70, baseType: !450, size: 64, align: 64, offset: 2048)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !540, file: !66, line: 71, baseType: !454, size: 64, align: 64, offset: 2112)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !540, file: !66, line: 73, baseType: !454, size: 64, align: 64, offset: 2176)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "redirects", scope: !540, file: !541, line: 46, baseType: !228, size: 64, align: 64, offset: 2240)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_queue", scope: !540, file: !541, line: 47, baseType: !228, size: 64, align: 64, offset: 2304)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_next", scope: !540, file: !541, line: 48, baseType: !642, size: 64, align: 64, offset: 2368)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64, align: 64)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "REDIRECT_REC", file: !539, line: 8, baseType: !644)
!644 = !DICompositeType(tag: DW_TAG_structure_type, name: "_REDIRECT_REC", file: !539, line: 8, flags: DIFlagFwdDecl)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_active", scope: !540, file: !541, line: 49, baseType: !228, size: 64, align: 64, offset: 2432)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "last_nick", scope: !540, file: !541, line: 51, baseType: !79, size: 64, align: 64, offset: 2496)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !540, file: !541, line: 53, baseType: !79, size: 64, align: 64, offset: 2560)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !540, file: !541, line: 54, baseType: !79, size: 64, align: 64, offset: 2624)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "wanted_usermode", scope: !540, file: !541, line: 55, baseType: !79, size: 64, align: 64, offset: 2688)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "userhost", scope: !540, file: !541, line: 56, baseType: !79, size: 64, align: 64, offset: 2752)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "channels_formed", scope: !540, file: !541, line: 57, baseType: !51, size: 32, align: 32, offset: 2816)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "whois_found", scope: !540, file: !541, line: 59, baseType: !138, size: 1, align: 32, offset: 2848, flags: DIFlagBitField, extraData: i64 2848)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "whowas_found", scope: !540, file: !541, line: 60, baseType: !138, size: 1, align: 32, offset: 2849, flags: DIFlagBitField, extraData: i64 2848)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "emode_known", scope: !540, file: !541, line: 62, baseType: !138, size: 1, align: 32, offset: 2850, flags: DIFlagBitField, extraData: i64 2848)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_mode", scope: !540, file: !541, line: 63, baseType: !138, size: 1, align: 32, offset: 2851, flags: DIFlagBitField, extraData: i64 2848)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_who", scope: !540, file: !541, line: 64, baseType: !138, size: 1, align: 32, offset: 2852, flags: DIFlagBitField, extraData: i64 2848)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "one_endofwho", scope: !540, file: !541, line: 65, baseType: !138, size: 1, align: 32, offset: 2853, flags: DIFlagBitField, extraData: i64 2848)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "disable_lag", scope: !540, file: !541, line: 66, baseType: !138, size: 1, align: 32, offset: 2854, flags: DIFlagBitField, extraData: i64 2848)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "nick_collision", scope: !540, file: !541, line: 67, baseType: !138, size: 1, align: 32, offset: 2855, flags: DIFlagBitField, extraData: i64 2848)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "motd_got", scope: !540, file: !541, line: 68, baseType: !138, size: 1, align: 32, offset: 2856, flags: DIFlagBitField, extraData: i64 2848)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "isupport_sent", scope: !540, file: !541, line: 69, baseType: !138, size: 1, align: 32, offset: 2857, flags: DIFlagBitField, extraData: i64 2848)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "cap_complete", scope: !540, file: !541, line: 70, baseType: !138, size: 1, align: 32, offset: 2858, flags: DIFlagBitField, extraData: i64 2848)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "cap_in_multiline", scope: !540, file: !541, line: 71, baseType: !138, size: 1, align: 32, offset: 2859, flags: DIFlagBitField, extraData: i64 2848)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_success", scope: !540, file: !541, line: 72, baseType: !138, size: 1, align: 32, offset: 2860, flags: DIFlagBitField, extraData: i64 2848)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks_in_cmd", scope: !540, file: !541, line: 74, baseType: !51, size: 32, align: 32, offset: 2880)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes_in_cmd", scope: !540, file: !541, line: 75, baseType: !51, size: 32, align: 32, offset: 2912)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois_in_cmd", scope: !540, file: !541, line: 76, baseType: !51, size: 32, align: 32, offset: 2944)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs_in_cmd", scope: !540, file: !541, line: 77, baseType: !51, size: 32, align: 32, offset: 2976)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "cap_supported", scope: !540, file: !541, line: 79, baseType: !54, size: 64, align: 64, offset: 3008)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "cap_active", scope: !540, file: !541, line: 80, baseType: !228, size: 64, align: 64, offset: 3072)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "cap_queue", scope: !540, file: !541, line: 81, baseType: !228, size: 64, align: 64, offset: 3136)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_buffer", scope: !540, file: !541, line: 83, baseType: !267, size: 64, align: 64, offset: 3200)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_timeout", scope: !540, file: !541, line: 84, baseType: !219, size: 32, align: 32, offset: 3264)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcount", scope: !540, file: !541, line: 87, baseType: !51, size: 32, align: 32, offset: 3296)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "cmdqueue", scope: !540, file: !541, line: 91, baseType: !228, size: 64, align: 64, offset: 3328)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "wait_cmd", scope: !540, file: !541, line: 92, baseType: !336, size: 128, align: 64, offset: 3392)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd", scope: !540, file: !541, line: 93, baseType: !336, size: 128, align: 64, offset: 3520)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !540, file: !541, line: 95, baseType: !51, size: 32, align: 32, offset: 3648)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !540, file: !541, line: 96, baseType: !51, size: 32, align: 32, offset: 3680)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !540, file: !541, line: 97, baseType: !51, size: 32, align: 32, offset: 3712)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "idles", scope: !540, file: !541, line: 100, baseType: !228, size: 64, align: 64, offset: 3776)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "ctcpqueue", scope: !540, file: !541, line: 103, baseType: !228, size: 64, align: 64, offset: 3840)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "knockoutlist", scope: !540, file: !541, line: 106, baseType: !228, size: 64, align: 64, offset: 3904)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "splits", scope: !540, file: !541, line: 108, baseType: !54, size: 64, align: 64, offset: 3968)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "split_servers", scope: !540, file: !541, line: 109, baseType: !228, size: 64, align: 64, offset: 4032)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "rejoin_channels", scope: !540, file: !541, line: 111, baseType: !228, size: 64, align: 64, offset: 4096)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "chanqueries", scope: !540, file: !541, line: 114, baseType: !36, size: 64, align: 64, offset: 4160)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "isupport", scope: !540, file: !541, line: 116, baseType: !54, size: 64, align: 64, offset: 4224)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !540, file: !541, line: 117, baseType: !690, size: 32768, align: 64, offset: 4288)
!690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !691, size: 32768, align: 64, elements: !740)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "modes_type", file: !692, line: 10, size: 128, align: 64, elements: !693)
!692 = !DIFile(filename: "modes.h", directory: "/home/lichi/Desktop/irssi/task1")
!693 = !{!694, !739}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !691, file: !692, line: 11, baseType: !695, size: 64, align: 64)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64, align: 64)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_func_t", file: !692, line: 7, baseType: !697)
!697 = !DISubroutineType(types: !698)
!698 = !{null, !699, !41, !40, !40, !79, !267}
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64, align: 64)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_CHANNEL_REC", file: !539, line: 7, baseType: !701)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_CHANNEL_REC", file: !702, line: 15, size: 1600, align: 64, elements: !703)
!702 = !DIFile(filename: "irc-channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!703 = !{!704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !701, file: !50, line: 3, baseType: !51, size: 32, align: 32)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !701, file: !50, line: 4, baseType: !51, size: 32, align: 32, offset: 32)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !701, file: !50, line: 5, baseType: !54, size: 64, align: 64, offset: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !701, file: !50, line: 7, baseType: !36, size: 64, align: 64, offset: 128)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !701, file: !50, line: 8, baseType: !537, size: 64, align: 64, offset: 192)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !701, file: !50, line: 9, baseType: !79, size: 64, align: 64, offset: 256)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !701, file: !50, line: 10, baseType: !79, size: 64, align: 64, offset: 320)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !701, file: !50, line: 11, baseType: !300, size: 64, align: 64, offset: 384)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !701, file: !50, line: 12, baseType: !51, size: 32, align: 32, offset: 448)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !701, file: !50, line: 13, baseType: !79, size: 64, align: 64, offset: 512)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !701, file: !50, line: 15, baseType: !391, size: 64, align: 64, offset: 576)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !701, file: !50, line: 17, baseType: !398, size: 64, align: 64, offset: 640)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !701, file: !402, line: 5, baseType: !79, size: 64, align: 64, offset: 704)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !701, file: !402, line: 6, baseType: !79, size: 64, align: 64, offset: 768)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !701, file: !402, line: 7, baseType: !300, size: 64, align: 64, offset: 832)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !701, file: !402, line: 9, baseType: !54, size: 64, align: 64, offset: 896)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !701, file: !402, line: 10, baseType: !407, size: 64, align: 64, offset: 960)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !701, file: !402, line: 12, baseType: !138, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !701, file: !402, line: 13, baseType: !79, size: 64, align: 64, offset: 1088)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !701, file: !402, line: 14, baseType: !51, size: 32, align: 32, offset: 1152)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !701, file: !402, line: 15, baseType: !79, size: 64, align: 64, offset: 1216)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !701, file: !402, line: 17, baseType: !138, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !701, file: !402, line: 18, baseType: !138, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !701, file: !402, line: 19, baseType: !138, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !701, file: !402, line: 20, baseType: !138, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !701, file: !402, line: 22, baseType: !138, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !701, file: !402, line: 23, baseType: !138, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !701, file: !402, line: 24, baseType: !138, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !701, file: !402, line: 25, baseType: !138, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !701, file: !402, line: 26, baseType: !138, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !701, file: !402, line: 31, baseType: !446, size: 64, align: 64, offset: 1344)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "banlist", scope: !701, file: !702, line: 18, baseType: !228, size: 64, align: 64, offset: 1408)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "massjoin_start", scope: !701, file: !702, line: 20, baseType: !300, size: 64, align: 64, offset: 1472)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "massjoins", scope: !701, file: !702, line: 21, baseType: !51, size: 32, align: 32, offset: 1536)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "last_massjoins", scope: !701, file: !702, line: 22, baseType: !51, size: 32, align: 32, offset: 1568)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !691, file: !692, line: 12, baseType: !40, size: 8, align: 8, offset: 64)
!740 = !{!741}
!741 = !DISubrange(count: 256)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !540, file: !541, line: 118, baseType: !743, size: 2048, align: 8, offset: 37056)
!743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 2048, align: 8, elements: !740)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "nick_comp_func", scope: !540, file: !541, line: 120, baseType: !454, size: 64, align: 64, offset: 39104)
!745 = !DILocalVariable(name: "server", arg: 1, scope: !534, file: !482, line: 44, type: !537)
!746 = !DILocation(line: 44, column: 43, scope: !534)
!747 = !DILocalVariable(name: "nick", arg: 2, scope: !534, file: !482, line: 44, type: !41)
!748 = !DILocation(line: 44, column: 63, scope: !534)
!749 = !DILocalVariable(name: "tmp", scope: !534, file: !482, line: 46, type: !228)
!750 = !DILocation(line: 46, column: 10, scope: !534)
!751 = !DILocation(line: 48, column: 2, scope: !534)
!752 = distinct !{!752, !751}
!753 = !DILocation(line: 48, column: 10, scope: !754)
!754 = !DILexicalBlockFile(scope: !755, file: !482, discriminator: 1)
!755 = distinct !DILexicalBlock(scope: !756, file: !482, line: 48, column: 10)
!756 = distinct !DILexicalBlock(scope: !534, file: !482, line: 48, column: 4)
!757 = !DILocation(line: 48, column: 15, scope: !754)
!758 = !DILocation(line: 48, column: 5, scope: !759)
!759 = !DILexicalBlockFile(scope: !760, file: !482, discriminator: 2)
!760 = distinct !DILexicalBlock(scope: !755, file: !482, line: 48, column: 3)
!761 = !DILocation(line: 48, column: 14, scope: !762)
!762 = !DILexicalBlockFile(scope: !763, file: !482, discriminator: 3)
!763 = distinct !DILexicalBlock(scope: !755, file: !482, line: 48, column: 12)
!764 = !DILocation(line: 48, column: 99, scope: !762)
!765 = !DILocation(line: 48, column: 7, scope: !766)
!766 = !DILexicalBlockFile(scope: !756, file: !482, discriminator: 4)
!767 = !DILocation(line: 50, column: 13, scope: !768)
!768 = distinct !DILexicalBlock(scope: !534, file: !482, line: 50, column: 2)
!769 = !DILocation(line: 50, column: 21, scope: !768)
!770 = !DILocation(line: 50, column: 11, scope: !768)
!771 = !DILocation(line: 50, column: 7, scope: !768)
!772 = !DILocation(line: 50, column: 30, scope: !773)
!773 = !DILexicalBlockFile(scope: !774, file: !482, discriminator: 1)
!774 = distinct !DILexicalBlock(scope: !768, file: !482, line: 50, column: 2)
!775 = !DILocation(line: 50, column: 34, scope: !773)
!776 = !DILocation(line: 50, column: 2, scope: !773)
!777 = !DILocalVariable(name: "rec", scope: !778, file: !482, line: 51, type: !43)
!778 = distinct !DILexicalBlock(scope: !774, file: !482, line: 50, column: 59)
!779 = !DILocation(line: 51, column: 14, scope: !778)
!780 = !DILocation(line: 51, column: 20, scope: !778)
!781 = !DILocation(line: 51, column: 25, scope: !778)
!782 = !DILocation(line: 53, column: 7, scope: !783)
!783 = distinct !DILexicalBlock(scope: !778, file: !482, line: 53, column: 7)
!784 = !DILocation(line: 53, column: 15, scope: !783)
!785 = !DILocation(line: 53, column: 30, scope: !783)
!786 = !DILocation(line: 53, column: 35, scope: !783)
!787 = !DILocation(line: 53, column: 41, scope: !783)
!788 = !DILocation(line: 53, column: 47, scope: !783)
!789 = !DILocation(line: 53, column: 7, scope: !778)
!790 = !DILocation(line: 54, column: 11, scope: !783)
!791 = !DILocation(line: 54, column: 4, scope: !783)
!792 = !DILocation(line: 55, column: 2, scope: !778)
!793 = !DILocation(line: 50, column: 48, scope: !794)
!794 = !DILexicalBlockFile(scope: !774, file: !482, discriminator: 2)
!795 = !DILocation(line: 50, column: 53, scope: !794)
!796 = !DILocation(line: 50, column: 46, scope: !794)
!797 = !DILocation(line: 50, column: 2, scope: !794)
!798 = distinct !{!798, !799}
!799 = !DILocation(line: 50, column: 2, scope: !534)
!800 = !DILocation(line: 57, column: 2, scope: !534)
!801 = !DILocation(line: 58, column: 1, scope: !534)
!802 = distinct !DISubprogram(name: "irc_queries_init", scope: !482, file: !482, line: 106, type: !216, isLocal: false, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !485)
!803 = !DILocation(line: 108, column: 2, scope: !802)
!804 = !DILocation(line: 109, column: 2, scope: !802)
!805 = !DILocation(line: 110, column: 1, scope: !802)
!806 = distinct !DISubprogram(name: "ctcp_action", scope: !482, file: !482, line: 84, type: !807, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !485)
!807 = !DISubroutineType(types: !808)
!808 = !{null, !537, !41, !41, !41, !41}
!809 = !DILocalVariable(name: "server", arg: 1, scope: !806, file: !482, line: 84, type: !537)
!810 = !DILocation(line: 84, column: 41, scope: !806)
!811 = !DILocalVariable(name: "msg", arg: 2, scope: !806, file: !482, line: 84, type: !41)
!812 = !DILocation(line: 84, column: 61, scope: !806)
!813 = !DILocalVariable(name: "nick", arg: 3, scope: !806, file: !482, line: 85, type: !41)
!814 = !DILocation(line: 85, column: 16, scope: !806)
!815 = !DILocalVariable(name: "address", arg: 4, scope: !806, file: !482, line: 85, type: !41)
!816 = !DILocation(line: 85, column: 34, scope: !806)
!817 = !DILocalVariable(name: "target", arg: 5, scope: !806, file: !482, line: 86, type: !41)
!818 = !DILocation(line: 86, column: 16, scope: !806)
!819 = !DILocation(line: 88, column: 29, scope: !806)
!820 = !DILocation(line: 88, column: 37, scope: !806)
!821 = !DILocation(line: 88, column: 43, scope: !806)
!822 = !DILocation(line: 88, column: 52, scope: !806)
!823 = !DILocation(line: 88, column: 9, scope: !806)
!824 = !DILocation(line: 89, column: 1, scope: !806)
!825 = distinct !DISubprogram(name: "event_nick", scope: !482, file: !482, line: 91, type: !826, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !485)
!826 = !DISubroutineType(types: !827)
!827 = !{null, !60, !41, !41}
!828 = !DILocalVariable(name: "server", arg: 1, scope: !825, file: !482, line: 91, type: !60)
!829 = !DILocation(line: 91, column: 36, scope: !825)
!830 = !DILocalVariable(name: "data", arg: 2, scope: !825, file: !482, line: 91, type: !41)
!831 = !DILocation(line: 91, column: 56, scope: !825)
!832 = !DILocalVariable(name: "orignick", arg: 3, scope: !825, file: !482, line: 92, type: !41)
!833 = !DILocation(line: 92, column: 22, scope: !825)
!834 = !DILocalVariable(name: "query", scope: !825, file: !482, line: 94, type: !43)
!835 = !DILocation(line: 94, column: 20, scope: !825)
!836 = !DILocalVariable(name: "params", scope: !825, file: !482, line: 95, type: !79)
!837 = !DILocation(line: 95, column: 8, scope: !825)
!838 = !DILocalVariable(name: "nick", scope: !825, file: !482, line: 95, type: !79)
!839 = !DILocation(line: 95, column: 17, scope: !825)
!840 = !DILocation(line: 97, column: 21, scope: !825)
!841 = !DILocation(line: 97, column: 29, scope: !825)
!842 = !DILocation(line: 97, column: 10, scope: !825)
!843 = !DILocation(line: 97, column: 8, scope: !825)
!844 = !DILocation(line: 98, column: 6, scope: !845)
!845 = distinct !DILexicalBlock(scope: !825, file: !482, line: 98, column: 6)
!846 = !DILocation(line: 98, column: 12, scope: !845)
!847 = !DILocation(line: 98, column: 6, scope: !825)
!848 = !DILocation(line: 99, column: 29, scope: !849)
!849 = distinct !DILexicalBlock(scope: !845, file: !482, line: 98, column: 20)
!850 = !DILocation(line: 99, column: 12, scope: !849)
!851 = !DILocation(line: 99, column: 10, scope: !849)
!852 = !DILocation(line: 100, column: 17, scope: !853)
!853 = distinct !DILexicalBlock(scope: !849, file: !482, line: 100, column: 7)
!854 = !DILocation(line: 100, column: 24, scope: !853)
!855 = !DILocation(line: 100, column: 30, scope: !853)
!856 = !DILocation(line: 100, column: 7, scope: !853)
!857 = !DILocation(line: 100, column: 36, scope: !853)
!858 = !DILocation(line: 100, column: 7, scope: !849)
!859 = !DILocation(line: 101, column: 22, scope: !853)
!860 = !DILocation(line: 101, column: 29, scope: !853)
!861 = !DILocation(line: 101, column: 4, scope: !853)
!862 = !DILocation(line: 102, column: 10, scope: !849)
!863 = !DILocation(line: 102, column: 3, scope: !849)
!864 = !DILocation(line: 103, column: 2, scope: !849)
!865 = !DILocation(line: 104, column: 1, scope: !825)
!866 = distinct !DISubprogram(name: "irc_queries_deinit", scope: !482, file: !482, line: 112, type: !216, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !485)
!867 = !DILocation(line: 114, column: 2, scope: !866)
!868 = !DILocation(line: 115, column: 2, scope: !866)
!869 = !DILocation(line: 116, column: 1, scope: !866)
!870 = distinct !DISubprogram(name: "check_query_changes", scope: !482, file: !482, line: 60, type: !871, isLocal: true, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !485)
!871 = !DISubroutineType(types: !872)
!872 = !{null, !537, !41, !41, !41}
!873 = !DILocalVariable(name: "server", arg: 1, scope: !870, file: !482, line: 60, type: !537)
!874 = !DILocation(line: 60, column: 49, scope: !870)
!875 = !DILocalVariable(name: "nick", arg: 2, scope: !870, file: !482, line: 60, type: !41)
!876 = !DILocation(line: 60, column: 69, scope: !870)
!877 = !DILocalVariable(name: "address", arg: 3, scope: !870, file: !482, line: 61, type: !41)
!878 = !DILocation(line: 61, column: 17, scope: !870)
!879 = !DILocalVariable(name: "target", arg: 4, scope: !870, file: !482, line: 61, type: !41)
!880 = !DILocation(line: 61, column: 38, scope: !870)
!881 = !DILocalVariable(name: "query", scope: !870, file: !482, line: 63, type: !43)
!882 = !DILocation(line: 63, column: 13, scope: !870)
!883 = !DILocation(line: 65, column: 42, scope: !884)
!884 = distinct !DILexicalBlock(scope: !870, file: !482, line: 65, column: 6)
!885 = !DILocation(line: 65, column: 24, scope: !884)
!886 = !DILocation(line: 65, column: 9, scope: !884)
!887 = !DILocation(line: 65, column: 20, scope: !884)
!888 = !DILocation(line: 65, column: 64, scope: !884)
!889 = !DILocation(line: 65, column: 46, scope: !890)
!890 = !DILexicalBlockFile(scope: !884, file: !482, discriminator: 1)
!891 = !DILocation(line: 65, column: 31, scope: !884)
!892 = !DILocation(line: 65, column: 19, scope: !884)
!893 = !DILocation(line: 65, column: 7, scope: !894)
!894 = !DILexicalBlockFile(scope: !884, file: !482, discriminator: 2)
!895 = !DILocation(line: 65, column: 7, scope: !884)
!896 = !DILocation(line: 65, column: 6, scope: !870)
!897 = !DILocation(line: 66, column: 3, scope: !884)
!898 = !DILocation(line: 68, column: 25, scope: !870)
!899 = !DILocation(line: 68, column: 33, scope: !870)
!900 = !DILocation(line: 68, column: 10, scope: !870)
!901 = !DILocation(line: 68, column: 8, scope: !870)
!902 = !DILocation(line: 69, column: 6, scope: !903)
!903 = distinct !DILexicalBlock(scope: !870, file: !482, line: 69, column: 6)
!904 = !DILocation(line: 69, column: 12, scope: !903)
!905 = !DILocation(line: 69, column: 6, scope: !870)
!906 = !DILocation(line: 70, column: 3, scope: !903)
!907 = !DILocation(line: 72, column: 16, scope: !908)
!908 = distinct !DILexicalBlock(scope: !870, file: !482, line: 72, column: 6)
!909 = !DILocation(line: 72, column: 23, scope: !908)
!910 = !DILocation(line: 72, column: 29, scope: !908)
!911 = !DILocation(line: 72, column: 6, scope: !908)
!912 = !DILocation(line: 72, column: 35, scope: !908)
!913 = !DILocation(line: 72, column: 6, scope: !870)
!914 = !DILocation(line: 74, column: 21, scope: !915)
!915 = distinct !DILexicalBlock(scope: !908, file: !482, line: 72, column: 41)
!916 = !DILocation(line: 74, column: 28, scope: !915)
!917 = !DILocation(line: 74, column: 3, scope: !915)
!918 = !DILocation(line: 75, column: 2, scope: !915)
!919 = !DILocation(line: 77, column: 6, scope: !920)
!920 = distinct !DILexicalBlock(scope: !870, file: !482, line: 77, column: 6)
!921 = !DILocation(line: 77, column: 14, scope: !920)
!922 = !DILocation(line: 77, column: 21, scope: !920)
!923 = !DILocation(line: 77, column: 25, scope: !924)
!924 = !DILexicalBlockFile(scope: !920, file: !482, discriminator: 1)
!925 = !DILocation(line: 77, column: 32, scope: !924)
!926 = !DILocation(line: 77, column: 40, scope: !924)
!927 = !DILocation(line: 77, column: 48, scope: !924)
!928 = !DILocation(line: 78, column: 15, scope: !920)
!929 = !DILocation(line: 78, column: 22, scope: !920)
!930 = !DILocation(line: 78, column: 31, scope: !920)
!931 = !DILocation(line: 78, column: 5, scope: !920)
!932 = !DILocation(line: 78, column: 40, scope: !920)
!933 = !DILocation(line: 77, column: 6, scope: !934)
!934 = !DILexicalBlockFile(scope: !870, file: !482, discriminator: 2)
!935 = !DILocation(line: 80, column: 24, scope: !936)
!936 = distinct !DILexicalBlock(scope: !920, file: !482, line: 78, column: 47)
!937 = !DILocation(line: 80, column: 31, scope: !936)
!938 = !DILocation(line: 80, column: 3, scope: !936)
!939 = !DILocation(line: 81, column: 2, scope: !936)
!940 = !DILocation(line: 82, column: 1, scope: !870)
