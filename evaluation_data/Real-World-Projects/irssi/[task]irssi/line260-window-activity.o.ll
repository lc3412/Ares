; ModuleID = './line260-window-activity.o.i'
source_filename = "./line260-window-activity.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._WINDOW_REC = type { i32, i8*, i32, i32, %struct._GSList*, %struct._WI_ITEM_REC*, %struct._SERVER_REC*, %struct._SERVER_REC*, i8*, i32, %struct._GSList*, i8, %struct.HISTORY_REC*, i8*, i32, i8*, i64, i64, i8*, i8*, i8* }
%struct._WI_ITEM_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)* }
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
%struct._CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)* }
%struct._NICK_REC = type { i32, i32, i64, i8*, i8*, i8*, i32, i8, [8 x i8], i8*, %struct._NICK_REC* }
%struct._QUERY_REC = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct.HISTORY_REC = type { i8*, %struct._GList*, i32, i32, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._TEXT_DEST_REC = type { %struct._WINDOW_REC*, %struct._SERVER_REC*, i8*, i8*, i8*, i8*, i32, i32, i8*, i32 }

@.str = private unnamed_addr constant [15 x i8] c"window hilight\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"window activity\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"window item hilight\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"window item activity\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"fe-common/core\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"lookandfeel\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"activity_hide_targets\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"activity_hide_level\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"activity_msg_level\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"PUBLIC\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"activity_hilight_level\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"MSGS DCCMSGS\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"print text\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"window changed\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"window dehilight\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"setup changed\00", align 1
@hide_targets = internal global i8** null, align 8
@.str.17 = private unnamed_addr constant [2 x i8] c" \00", align 1
@hide_level = internal global i32 0, align 4
@msg_level = internal global i32 0, align 4
@hilight_level = internal global i32 0, align 4
@active_win = external global %struct._WINDOW_REC*, align 8
@__func__.sig_dehilight_window = private unnamed_addr constant [21 x i8] c"sig_dehilight_window\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"window != NULL\00", align 1

; Function Attrs: nounwind uwtable
define void @window_activity(%struct._WINDOW_REC*, i32, i8*) #0 !dbg !103 {
  %4 = alloca %struct._WINDOW_REC*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %4, metadata !568, metadata !569), !dbg !570
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !571, metadata !569), !dbg !572
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !573, metadata !569), !dbg !574
  call void @llvm.dbg.declare(metadata i32* %7, metadata !575, metadata !569), !dbg !576
  %8 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !577
  %9 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %8, i32 0, i32 14, !dbg !578
  %10 = load i32, i32* %9, align 8, !dbg !578
  store i32 %10, i32* %7, align 4, !dbg !579
  %11 = load i32, i32* %5, align 4, !dbg !580
  %12 = icmp eq i32 %11, 0, !dbg !582
  br i1 %12, label %19, label %13, !dbg !583

; <label>:13:                                     ; preds = %3
  %14 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !584
  %15 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %14, i32 0, i32 14, !dbg !586
  %16 = load i32, i32* %15, align 8, !dbg !586
  %17 = load i32, i32* %5, align 4, !dbg !587
  %18 = icmp slt i32 %16, %17, !dbg !588
  br i1 %18, label %19, label %32, !dbg !589

; <label>:19:                                     ; preds = %13, %3
  %20 = load i32, i32* %5, align 4, !dbg !590
  %21 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !592
  %22 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %21, i32 0, i32 14, !dbg !593
  store i32 %20, i32* %22, align 8, !dbg !594
  %23 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !595
  %24 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %23, i32 0, i32 15, !dbg !596
  %25 = load i8*, i8** %24, align 8, !dbg !596
  call void @g_free(i8* %25), !dbg !597
  %26 = load i8*, i8** %6, align 8, !dbg !598
  %27 = call noalias i8* @g_strdup(i8* %26), !dbg !599
  %28 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !600
  %29 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %28, i32 0, i32 15, !dbg !601
  store i8* %27, i8** %29, align 8, !dbg !602
  %30 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !603
  %31 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 1, %struct._WINDOW_REC* %30), !dbg !604
  br label %32, !dbg !605

; <label>:32:                                     ; preds = %19, %13
  %33 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !606
  %34 = load i32, i32* %7, align 4, !dbg !607
  %35 = sext i32 %34 to i64, !dbg !608
  %36 = inttoptr i64 %35 to i8*, !dbg !609
  %37 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 2, %struct._WINDOW_REC* %33, i8* %36), !dbg !610
  ret void, !dbg !611
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @g_free(i8*) #2

declare noalias i8* @g_strdup(i8*) #2

declare i32 @signal_emit(i8*, i32, ...) #2

; Function Attrs: nounwind uwtable
define void @window_item_activity(%struct._WI_ITEM_REC*, i32, i8*) #0 !dbg !612 {
  %4 = alloca %struct._WI_ITEM_REC*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct._WI_ITEM_REC* %0, %struct._WI_ITEM_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %4, metadata !615, metadata !569), !dbg !616
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !617, metadata !569), !dbg !618
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !619, metadata !569), !dbg !620
  call void @llvm.dbg.declare(metadata i32* %7, metadata !621, metadata !569), !dbg !622
  %8 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %4, align 8, !dbg !623
  %9 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %8, i32 0, i32 8, !dbg !624
  %10 = load i32, i32* %9, align 8, !dbg !624
  store i32 %10, i32* %7, align 4, !dbg !625
  %11 = load i32, i32* %5, align 4, !dbg !626
  %12 = icmp eq i32 %11, 0, !dbg !628
  br i1 %12, label %19, label %13, !dbg !629

; <label>:13:                                     ; preds = %3
  %14 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %4, align 8, !dbg !630
  %15 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %14, i32 0, i32 8, !dbg !632
  %16 = load i32, i32* %15, align 8, !dbg !632
  %17 = load i32, i32* %5, align 4, !dbg !633
  %18 = icmp slt i32 %16, %17, !dbg !634
  br i1 %18, label %19, label %32, !dbg !635

; <label>:19:                                     ; preds = %13, %3
  %20 = load i32, i32* %5, align 4, !dbg !636
  %21 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %4, align 8, !dbg !638
  %22 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %21, i32 0, i32 8, !dbg !639
  store i32 %20, i32* %22, align 8, !dbg !640
  %23 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %4, align 8, !dbg !641
  %24 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %23, i32 0, i32 9, !dbg !642
  %25 = load i8*, i8** %24, align 8, !dbg !642
  call void @g_free(i8* %25), !dbg !643
  %26 = load i8*, i8** %6, align 8, !dbg !644
  %27 = call noalias i8* @g_strdup(i8* %26), !dbg !645
  %28 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %4, align 8, !dbg !646
  %29 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %28, i32 0, i32 9, !dbg !647
  store i8* %27, i8** %29, align 8, !dbg !648
  %30 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %4, align 8, !dbg !649
  %31 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i32 1, %struct._WI_ITEM_REC* %30), !dbg !650
  br label %32, !dbg !651

; <label>:32:                                     ; preds = %19, %13
  %33 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %4, align 8, !dbg !652
  %34 = load i32, i32* %7, align 4, !dbg !653
  %35 = sext i32 %34 to i64, !dbg !654
  %36 = inttoptr i64 %35 to i8*, !dbg !655
  %37 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), i32 2, %struct._WI_ITEM_REC* %33, i8* %36), !dbg !656
  ret void, !dbg !657
}

; Function Attrs: nounwind uwtable
define void @window_activity_init() #0 !dbg !658 {
  call void @settings_add_str_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i32 0, i32 0)), !dbg !659
  call void @settings_add_level_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i32 0, i32 0)), !dbg !660
  call void @settings_add_level_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !661
  call void @settings_add_level_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0)), !dbg !662
  call void @read_settings(), !dbg !663
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._TEXT_DEST_REC*, i8*)* @sig_hilight_text to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !664
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*)* @sig_dehilight_window to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !665
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*)* @sig_dehilight_window to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !666
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !667
  ret void, !dbg !668
}

declare void @settings_add_str_module(i8*, i8*, i8*, i8*) #2

declare void @settings_add_level_module(i8*, i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @read_settings() #0 !dbg !669 {
  %1 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !670, metadata !569), !dbg !671
  %2 = load i8**, i8*** @hide_targets, align 8, !dbg !672
  %3 = icmp ne i8** %2, null, !dbg !674
  br i1 %3, label %4, label %6, !dbg !675

; <label>:4:                                      ; preds = %0
  %5 = load i8**, i8*** @hide_targets, align 8, !dbg !676
  call void @g_strfreev(i8** %5), !dbg !677
  br label %6, !dbg !677

; <label>:6:                                      ; preds = %4, %0
  %7 = call i8* @settings_get_str(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0)), !dbg !678
  store i8* %7, i8** %1, align 8, !dbg !679
  %8 = load i8*, i8** %1, align 8, !dbg !680
  %9 = load i8, i8* %8, align 1, !dbg !681
  %10 = sext i8 %9 to i32, !dbg !681
  %11 = icmp eq i32 %10, 0, !dbg !682
  br i1 %11, label %12, label %13, !dbg !681

; <label>:12:                                     ; preds = %6
  br label %16, !dbg !683

; <label>:13:                                     ; preds = %6
  %14 = load i8*, i8** %1, align 8, !dbg !685
  %15 = call noalias i8** @g_strsplit(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i32 -1), !dbg !686
  br label %16, !dbg !687

; <label>:16:                                     ; preds = %13, %12
  %17 = phi i8** [ null, %12 ], [ %15, %13 ], !dbg !689
  store i8** %17, i8*** @hide_targets, align 8, !dbg !691
  %18 = call i32 @settings_get_level(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0)), !dbg !692
  %19 = or i32 369098752, %18, !dbg !693
  store i32 %19, i32* @hide_level, align 4, !dbg !694
  %20 = call i32 @settings_get_level(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0)), !dbg !695
  store i32 %20, i32* @msg_level, align 4, !dbg !696
  %21 = call i32 @settings_get_level(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0)), !dbg !697
  %22 = or i32 2097152, %21, !dbg !698
  store i32 %22, i32* @hilight_level, align 4, !dbg !699
  ret void, !dbg !700
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @sig_hilight_text(%struct._TEXT_DEST_REC*, i8*) #0 !dbg !701 {
  %3 = alloca %struct._TEXT_DEST_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._WI_ITEM_REC*, align 8
  %6 = alloca i32, align 4
  store %struct._TEXT_DEST_REC* %0, %struct._TEXT_DEST_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC** %3, metadata !719, metadata !569), !dbg !720
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !721, metadata !569), !dbg !722
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %5, metadata !723, metadata !569), !dbg !724
  call void @llvm.dbg.declare(metadata i32* %6, metadata !725, metadata !569), !dbg !726
  %7 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !727
  %8 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %7, i32 0, i32 0, !dbg !729
  %9 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %8, align 8, !dbg !729
  %10 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !730
  %11 = icmp eq %struct._WINDOW_REC* %9, %10, !dbg !731
  br i1 %11, label %19, label %12, !dbg !732

; <label>:12:                                     ; preds = %2
  %13 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !733
  %14 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %13, i32 0, i32 6, !dbg !735
  %15 = load i32, i32* %14, align 8, !dbg !735
  %16 = load i32, i32* @hide_level, align 4, !dbg !736
  %17 = and i32 %15, %16, !dbg !737
  %18 = icmp ne i32 %17, 0, !dbg !737
  br i1 %18, label %19, label %20, !dbg !738

; <label>:19:                                     ; preds = %12, %2
  br label %92, !dbg !739

; <label>:20:                                     ; preds = %12
  %21 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !740
  %22 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %21, i32 0, i32 6, !dbg !742
  %23 = load i32, i32* %22, align 8, !dbg !742
  %24 = load i32, i32* @hilight_level, align 4, !dbg !743
  %25 = and i32 %23, %24, !dbg !744
  %26 = icmp ne i32 %25, 0, !dbg !744
  br i1 %26, label %27, label %32, !dbg !745

; <label>:27:                                     ; preds = %20
  %28 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !746
  %29 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %28, i32 0, i32 7, !dbg !748
  %30 = load i32, i32* %29, align 4, !dbg !748
  %31 = add nsw i32 3, %30, !dbg !749
  store i32 %31, i32* %6, align 4, !dbg !750
  br label %40, !dbg !751

; <label>:32:                                     ; preds = %20
  %33 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !752
  %34 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %33, i32 0, i32 6, !dbg !754
  %35 = load i32, i32* %34, align 8, !dbg !754
  %36 = load i32, i32* @msg_level, align 4, !dbg !755
  %37 = and i32 %35, %36, !dbg !756
  %38 = icmp ne i32 %37, 0, !dbg !757
  %39 = select i1 %38, i32 2, i32 1, !dbg !757
  store i32 %39, i32* %6, align 4, !dbg !758
  br label %40

; <label>:40:                                     ; preds = %32, %27
  %41 = load i8**, i8*** @hide_targets, align 8, !dbg !759
  %42 = icmp ne i8** %41, null, !dbg !761
  br i1 %42, label %43, label %61, !dbg !762

; <label>:43:                                     ; preds = %40
  %44 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !763
  %45 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %44, i32 0, i32 6, !dbg !765
  %46 = load i32, i32* %45, align 8, !dbg !765
  %47 = and i32 %46, 2097152, !dbg !766
  %48 = icmp eq i32 %47, 0, !dbg !767
  br i1 %48, label %49, label %61, !dbg !768

; <label>:49:                                     ; preds = %43
  %50 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !769
  %51 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %50, i32 0, i32 3, !dbg !771
  %52 = load i8*, i8** %51, align 8, !dbg !771
  %53 = icmp ne i8* %52, null, !dbg !772
  br i1 %53, label %54, label %61, !dbg !773

; <label>:54:                                     ; preds = %49
  %55 = load i8**, i8*** @hide_targets, align 8, !dbg !774
  %56 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !777
  %57 = call i32 @strarray_find_dest(i8** %55, %struct._TEXT_DEST_REC* %56), !dbg !778
  %58 = icmp ne i32 %57, 0, !dbg !778
  br i1 %58, label %59, label %60, !dbg !779

; <label>:59:                                     ; preds = %54
  br label %92, !dbg !780

; <label>:60:                                     ; preds = %54
  br label %61, !dbg !781

; <label>:61:                                     ; preds = %60, %49, %43, %40
  %62 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !782
  %63 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %62, i32 0, i32 3, !dbg !784
  %64 = load i8*, i8** %63, align 8, !dbg !784
  %65 = icmp ne i8* %64, null, !dbg !785
  br i1 %65, label %66, label %84, !dbg !786

; <label>:66:                                     ; preds = %61
  %67 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !787
  %68 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %67, i32 0, i32 1, !dbg !789
  %69 = load %struct._SERVER_REC*, %struct._SERVER_REC** %68, align 8, !dbg !789
  %70 = bitcast %struct._SERVER_REC* %69 to i8*, !dbg !787
  %71 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !790
  %72 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %71, i32 0, i32 3, !dbg !791
  %73 = load i8*, i8** %72, align 8, !dbg !791
  %74 = call %struct._WI_ITEM_REC* @window_item_find(i8* %70, i8* %73), !dbg !792
  store %struct._WI_ITEM_REC* %74, %struct._WI_ITEM_REC** %5, align 8, !dbg !793
  %75 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %5, align 8, !dbg !794
  %76 = icmp ne %struct._WI_ITEM_REC* %75, null, !dbg !796
  br i1 %76, label %77, label %83, !dbg !797

; <label>:77:                                     ; preds = %66
  %78 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %5, align 8, !dbg !798
  %79 = load i32, i32* %6, align 4, !dbg !800
  %80 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !801
  %81 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %80, i32 0, i32 8, !dbg !802
  %82 = load i8*, i8** %81, align 8, !dbg !802
  call void @window_item_activity(%struct._WI_ITEM_REC* %78, i32 %79, i8* %82), !dbg !803
  br label %83, !dbg !804

; <label>:83:                                     ; preds = %77, %66
  br label %84, !dbg !805

; <label>:84:                                     ; preds = %83, %61
  %85 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !806
  %86 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %85, i32 0, i32 0, !dbg !807
  %87 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %86, align 8, !dbg !807
  %88 = load i32, i32* %6, align 4, !dbg !808
  %89 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !809
  %90 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %89, i32 0, i32 8, !dbg !810
  %91 = load i8*, i8** %90, align 8, !dbg !810
  call void @window_activity(%struct._WINDOW_REC* %87, i32 %88, i8* %91), !dbg !811
  br label %92, !dbg !812

; <label>:92:                                     ; preds = %84, %59, %19
  ret void, !dbg !813
}

; Function Attrs: nounwind uwtable
define internal void @sig_dehilight_window(%struct._WINDOW_REC*) #0 !dbg !815 {
  %2 = alloca %struct._WINDOW_REC*, align 8
  %3 = alloca %struct._GSList*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %2, metadata !818, metadata !569), !dbg !819
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !820, metadata !569), !dbg !821
  br label %4, !dbg !822, !llvm.loop !823

; <label>:4:                                      ; preds = %1
  %5 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !824
  %6 = icmp ne %struct._WINDOW_REC* %5, null, !dbg !828
  br i1 %6, label %7, label %8, !dbg !824

; <label>:7:                                      ; preds = %4
  br label %9, !dbg !829

; <label>:8:                                      ; preds = %4
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.sig_dehilight_window, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0)), !dbg !832
  br label %33, !dbg !835

; <label>:9:                                      ; preds = %7
  br label %10, !dbg !836

; <label>:10:                                     ; preds = %9
  %11 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !838
  %12 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %11, i32 0, i32 14, !dbg !840
  %13 = load i32, i32* %12, align 8, !dbg !840
  %14 = icmp ne i32 %13, 0, !dbg !841
  br i1 %14, label %15, label %33, !dbg !842

; <label>:15:                                     ; preds = %10
  %16 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !843
  call void @window_activity(%struct._WINDOW_REC* %16, i32 0, i8* null), !dbg !845
  %17 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !846
  %18 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %17, i32 0, i32 4, !dbg !848
  %19 = load %struct._GSList*, %struct._GSList** %18, align 8, !dbg !848
  store %struct._GSList* %19, %struct._GSList** %3, align 8, !dbg !849
  br label %20, !dbg !850

; <label>:20:                                     ; preds = %28, %15
  %21 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !851
  %22 = icmp ne %struct._GSList* %21, null, !dbg !854
  br i1 %22, label %23, label %32, !dbg !855

; <label>:23:                                     ; preds = %20
  %24 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !856
  %25 = getelementptr inbounds %struct._GSList, %struct._GSList* %24, i32 0, i32 0, !dbg !857
  %26 = load i8*, i8** %25, align 8, !dbg !857
  %27 = bitcast i8* %26 to %struct._WI_ITEM_REC*, !dbg !856
  call void @window_item_activity(%struct._WI_ITEM_REC* %27, i32 0, i8* null), !dbg !858
  br label %28, !dbg !858

; <label>:28:                                     ; preds = %23
  %29 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !859
  %30 = getelementptr inbounds %struct._GSList, %struct._GSList* %29, i32 0, i32 1, !dbg !861
  %31 = load %struct._GSList*, %struct._GSList** %30, align 8, !dbg !861
  store %struct._GSList* %31, %struct._GSList** %3, align 8, !dbg !862
  br label %20, !dbg !863, !llvm.loop !864

; <label>:32:                                     ; preds = %20
  br label %33, !dbg !866

; <label>:33:                                     ; preds = %8, %32, %10
  ret void, !dbg !867
}

; Function Attrs: nounwind uwtable
define void @window_activity_deinit() #0 !dbg !868 {
  %1 = load i8**, i8*** @hide_targets, align 8, !dbg !869
  %2 = icmp ne i8** %1, null, !dbg !871
  br i1 %2, label %3, label %5, !dbg !872

; <label>:3:                                      ; preds = %0
  %4 = load i8**, i8*** @hide_targets, align 8, !dbg !873
  call void @g_strfreev(i8** %4), !dbg !874
  br label %5, !dbg !874

; <label>:5:                                      ; preds = %3, %0
  call void @signal_remove_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._TEXT_DEST_REC*, i8*)* @sig_hilight_text to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !875
  call void @signal_remove_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*)* @sig_dehilight_window to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !876
  call void @signal_remove_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*)* @sig_dehilight_window to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !877
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !878
  ret void, !dbg !879
}

declare void @g_strfreev(i8**) #2

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare i8* @settings_get_str(i8*) #2

declare noalias i8** @g_strsplit(i8*, i8*, i32) #2

declare i32 @settings_get_level(i8*) #2

declare i32 @strarray_find_dest(i8**, %struct._TEXT_DEST_REC*) #2

declare %struct._WI_ITEM_REC* @window_item_find(i8*, i8*) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!100, !101}
!llvm.ident = !{!102}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !73, globals: !91)
!1 = !DIFile(filename: "line260-window-activity.o.i", directory: "/home/lichi/Desktop/irssi/task1")
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
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !67, line: 7, size: 32, align: 32, elements: !68)
!67 = !DIFile(filename: "fe-windows.h", directory: "/home/lichi/Desktop/irssi/task1")
!68 = !{!69, !70, !71, !72}
!69 = !DIEnumerator(name: "DATA_LEVEL_NONE", value: 0)
!70 = !DIEnumerator(name: "DATA_LEVEL_TEXT", value: 1)
!71 = !DIEnumerator(name: "DATA_LEVEL_MSG", value: 2)
!72 = !DIEnumerator(name: "DATA_LEVEL_HILIGHT", value: 3)
!73 = !{!74, !77, !79, !76, !86, !89}
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !75, line: 77, baseType: !76)
!75 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !75, line: 48, baseType: !78)
!78 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !80, line: 9, baseType: !81)
!80 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64, align: 64)
!82 = !DISubroutineType(types: !83)
!83 = !{null, !84, !84, !84, !84, !84, !84}
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !75, line: 46, baseType: !88)
!88 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!91 = !{!92, !96, !98, !99}
!92 = distinct !DIGlobalVariable(name: "hide_targets", scope: !0, file: !93, line: 36, type: !94, isLocal: true, isDefinition: true, variable: i8*** @hide_targets)
!93 = !DIFile(filename: "window-activity.c", directory: "/home/lichi/Desktop/irssi/task1")
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64, align: 64)
!96 = distinct !DIGlobalVariable(name: "hide_level", scope: !0, file: !93, line: 37, type: !97, isLocal: true, isDefinition: true, variable: i32* @hide_level)
!97 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!98 = distinct !DIGlobalVariable(name: "msg_level", scope: !0, file: !93, line: 37, type: !97, isLocal: true, isDefinition: true, variable: i32* @msg_level)
!99 = distinct !DIGlobalVariable(name: "hilight_level", scope: !0, file: !93, line: 37, type: !97, isLocal: true, isDefinition: true, variable: i32* @hilight_level)
!100 = !{i32 2, !"Dwarf Version", i32 4}
!101 = !{i32 2, !"Debug Info Version", i32 3}
!102 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!103 = distinct !DISubprogram(name: "window_activity", scope: !93, file: !93, line: 39, type: !104, isLocal: false, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !567)
!104 = !DISubroutineType(types: !105)
!105 = !{null, !106, !97, !89}
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64, align: 64)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "WINDOW_REC", file: !108, line: 117, baseType: !109)
!108 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WINDOW_REC", file: !67, line: 28, size: 1280, align: 64, elements: !110)
!110 = !{!111, !112, !113, !114, !115, !123, !532, !533, !534, !535, !536, !537, !538, !539, !540, !559, !560, !561, !562, !563, !564, !565, !566}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "refnum", scope: !109, file: !67, line: 29, baseType: !97, size: 32, align: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !109, file: !67, line: 30, baseType: !95, size: 64, align: 64, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !109, file: !67, line: 32, baseType: !97, size: 32, align: 32, offset: 128)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !109, file: !67, line: 32, baseType: !97, size: 32, align: 32, offset: 160)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !109, file: !67, line: 34, baseType: !116, size: 64, align: 64, offset: 192)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64, align: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !118, line: 37, baseType: !119)
!118 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !118, line: 39, size: 128, align: 64, elements: !120)
!120 = !{!121, !122}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !119, file: !118, line: 41, baseType: !74, size: 64, align: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !119, file: !118, line: 42, baseType: !116, size: 64, align: 64, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !109, file: !67, line: 35, baseType: !124, size: 64, align: 64, offset: 256)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !108, line: 108, baseType: !126)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !127, line: 5, size: 704, align: 64, elements: !128)
!127 = !DIFile(filename: "../../../src/core/window-item-def.h", directory: "/home/lichi/Desktop/irssi/task1")
!128 = !{!129, !131, !132, !137, !138, !525, !526, !527, !528, !529, !530, !531}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !126, file: !130, line: 3, baseType: !97, size: 32, align: 32)
!130 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!131 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !126, file: !130, line: 4, baseType: !97, size: 32, align: 32, offset: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !126, file: !130, line: 5, baseType: !133, size: 64, align: 64, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, align: 64)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !135, line: 37, baseType: !136)
!135 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!136 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !135, line: 37, flags: DIFlagFwdDecl)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !126, file: !130, line: 7, baseType: !76, size: 64, align: 64, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !126, file: !130, line: 8, baseType: !139, size: 64, align: 64, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !108, line: 107, baseType: !141)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !142, line: 30, size: 2240, align: 64, elements: !143)
!142 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!143 = !{!144, !146, !147, !148, !368, !373, !374, !375, !376, !377, !378, !379, !380, !381, !385, !386, !390, !391, !392, !396, !397, !398, !399, !400, !401, !402, !403, !404, !410, !411, !412, !413, !414, !418, !422, !426, !430, !434, !438, !513, !520, !524}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !141, file: !145, line: 3, baseType: !97, size: 32, align: 32)
!145 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!146 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !141, file: !145, line: 4, baseType: !97, size: 32, align: 32, offset: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !141, file: !145, line: 6, baseType: !97, size: 32, align: 32, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !141, file: !145, line: 8, baseType: !149, size: 64, align: 64, offset: 128)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !108, line: 113, baseType: !151)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !142, line: 25, size: 1920, align: 64, elements: !152)
!152 = !{!153, !155, !156, !157, !158, !159, !160, !161, !162, !164, !165, !166, !167, !168, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !151, file: !154, line: 3, baseType: !97, size: 32, align: 32)
!154 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!155 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !151, file: !154, line: 4, baseType: !97, size: 32, align: 32, offset: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !151, file: !154, line: 6, baseType: !97, size: 32, align: 32, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !151, file: !154, line: 9, baseType: !95, size: 64, align: 64, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !151, file: !154, line: 10, baseType: !97, size: 32, align: 32, offset: 192)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !151, file: !154, line: 11, baseType: !95, size: 64, align: 64, offset: 256)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !151, file: !154, line: 11, baseType: !95, size: 64, align: 64, offset: 320)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !151, file: !154, line: 11, baseType: !95, size: 64, align: 64, offset: 384)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !151, file: !154, line: 13, baseType: !163, size: 16, align: 16, offset: 448)
!163 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !151, file: !154, line: 14, baseType: !95, size: 64, align: 64, offset: 512)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !151, file: !154, line: 15, baseType: !95, size: 64, align: 64, offset: 576)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !151, file: !154, line: 16, baseType: !97, size: 32, align: 32, offset: 640)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !151, file: !154, line: 17, baseType: !95, size: 64, align: 64, offset: 704)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !151, file: !154, line: 19, baseType: !169, size: 64, align: 64, offset: 768)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64, align: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !108, line: 99, baseType: !171)
!171 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !108, line: 99, flags: DIFlagFwdDecl)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !151, file: !154, line: 19, baseType: !169, size: 64, align: 64, offset: 832)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !151, file: !154, line: 21, baseType: !95, size: 64, align: 64, offset: 896)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !151, file: !154, line: 22, baseType: !95, size: 64, align: 64, offset: 960)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !151, file: !154, line: 23, baseType: !95, size: 64, align: 64, offset: 1024)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !151, file: !154, line: 24, baseType: !95, size: 64, align: 64, offset: 1088)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !151, file: !154, line: 26, baseType: !95, size: 64, align: 64, offset: 1152)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !151, file: !154, line: 27, baseType: !95, size: 64, align: 64, offset: 1216)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !151, file: !154, line: 28, baseType: !95, size: 64, align: 64, offset: 1280)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !151, file: !154, line: 29, baseType: !95, size: 64, align: 64, offset: 1344)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !151, file: !154, line: 30, baseType: !95, size: 64, align: 64, offset: 1408)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !151, file: !154, line: 31, baseType: !95, size: 64, align: 64, offset: 1472)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !151, file: !154, line: 32, baseType: !95, size: 64, align: 64, offset: 1536)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !151, file: !154, line: 33, baseType: !95, size: 64, align: 64, offset: 1600)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !151, file: !154, line: 35, baseType: !186, size: 64, align: 64, offset: 1664)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64, align: 64)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !188)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !189)
!189 = !{!190, !192, !325, !326, !331, !332, !333, !334, !335, !344, !345, !346, !350, !351, !352, !353, !354, !355, !356, !357}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !188, file: !4, line: 100, baseType: !191, size: 32, align: 32)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !75, line: 49, baseType: !97)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !188, file: !4, line: 101, baseType: !193, size: 64, align: 64, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64, align: 64)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !195)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !196)
!196 = !{!197, !219, !225, !231, !235, !312, !316, !321}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !195, file: !4, line: 133, baseType: !198, size: 64, align: 64)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64, align: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{!201, !186, !86, !202, !205, !206}
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
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
!217 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !210, file: !209, line: 47, baseType: !191, size: 32, align: 32, offset: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !210, file: !209, line: 48, baseType: !86, size: 64, align: 64, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !195, file: !4, line: 138, baseType: !220, size: 64, align: 64, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, align: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{!201, !186, !223, !202, !205, !206}
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64, align: 64)
!224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !195, file: !4, line: 143, baseType: !226, size: 64, align: 64, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{!201, !186, !229, !230, !206}
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !203, line: 51, baseType: !78)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !195, file: !4, line: 147, baseType: !232, size: 64, align: 64, offset: 192)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!201, !186, !206}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !195, file: !4, line: 149, baseType: !236, size: 64, align: 64, offset: 256)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64, align: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{!239, !186, !311}
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64, align: 64)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !241)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !242)
!242 = !{!243, !244, !265, !294, !296, !300, !301, !302, !303, !304, !305, !306, !307}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !241, file: !16, line: 174, baseType: !74, size: 64, align: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !241, file: !16, line: 175, baseType: !245, size: 64, align: 64, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64, align: 64)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !247)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !248)
!248 = !{!249, !253, !254}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !247, file: !16, line: 198, baseType: !250, size: 64, align: 64)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64, align: 64)
!251 = !DISubroutineType(types: !252)
!252 = !{null, !74}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !247, file: !16, line: 199, baseType: !250, size: 64, align: 64, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !247, file: !16, line: 200, baseType: !255, size: 64, align: 64, offset: 128)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64, align: 64)
!256 = !DISubroutineType(types: !257)
!257 = !{null, !74, !239, !258, !264}
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64, align: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!263, !74}
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !75, line: 50, baseType: !191)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !241, file: !16, line: 177, baseType: !266, size: 64, align: 64, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64, align: 64)
!267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !269)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !270)
!270 = !{!271, !276, !280, !284, !288, !289}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !269, file: !16, line: 216, baseType: !272, size: 64, align: 64)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64, align: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!263, !239, !275}
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !269, file: !16, line: 218, baseType: !277, size: 64, align: 64, offset: 64)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64, align: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{!263, !239}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !269, file: !16, line: 219, baseType: !281, size: 64, align: 64, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64, align: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!263, !239, !259, !74}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !269, file: !16, line: 222, baseType: !285, size: 64, align: 64, offset: 192)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64, align: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{null, !239}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !269, file: !16, line: 226, baseType: !259, size: 64, align: 64, offset: 256)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !269, file: !16, line: 227, baseType: !290, size: 64, align: 64, offset: 320)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64, align: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{null}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !241, file: !16, line: 178, baseType: !295, size: 32, align: 32, offset: 192)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !75, line: 55, baseType: !216)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !241, file: !16, line: 180, baseType: !297, size: 64, align: 64, offset: 256)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64, align: 64)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !299)
!299 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !241, file: !16, line: 182, baseType: !191, size: 32, align: 32, offset: 320)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !241, file: !16, line: 183, baseType: !295, size: 32, align: 32, offset: 352)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !241, file: !16, line: 184, baseType: !295, size: 32, align: 32, offset: 384)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !241, file: !16, line: 186, baseType: !116, size: 64, align: 64, offset: 448)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !241, file: !16, line: 188, baseType: !239, size: 64, align: 64, offset: 512)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !241, file: !16, line: 189, baseType: !239, size: 64, align: 64, offset: 576)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !241, file: !16, line: 191, baseType: !95, size: 64, align: 64, offset: 640)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !241, file: !16, line: 193, baseType: !308, size: 64, align: 64, offset: 704)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64, align: 64)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !310)
!310 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !195, file: !4, line: 151, baseType: !313, size: 64, align: 64, offset: 320)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64, align: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{null, !186}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !195, file: !4, line: 152, baseType: !317, size: 64, align: 64, offset: 384)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64, align: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!201, !186, !320, !206}
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !195, file: !4, line: 155, baseType: !322, size: 64, align: 64, offset: 448)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64, align: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!320, !186}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !188, file: !4, line: 103, baseType: !86, size: 64, align: 64, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !188, file: !4, line: 104, baseType: !327, size: 64, align: 64, offset: 192)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !328, line: 77, baseType: !329)
!328 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64, align: 64)
!330 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !328, line: 77, flags: DIFlagFwdDecl)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !188, file: !4, line: 105, baseType: !327, size: 64, align: 64, offset: 256)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !188, file: !4, line: 106, baseType: !86, size: 64, align: 64, offset: 320)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !188, file: !4, line: 107, baseType: !295, size: 32, align: 32, offset: 384)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !188, file: !4, line: 109, baseType: !202, size: 64, align: 64, offset: 448)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !188, file: !4, line: 110, baseType: !336, size: 64, align: 64, offset: 512)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64, align: 64)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !338, line: 39, baseType: !339)
!338 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !338, line: 41, size: 192, align: 64, elements: !340)
!340 = !{!341, !342, !343}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !339, file: !338, line: 43, baseType: !86, size: 64, align: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !339, file: !338, line: 44, baseType: !202, size: 64, align: 64, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !339, file: !338, line: 45, baseType: !202, size: 64, align: 64, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !188, file: !4, line: 111, baseType: !336, size: 64, align: 64, offset: 576)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !188, file: !4, line: 112, baseType: !336, size: 64, align: 64, offset: 640)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !188, file: !4, line: 113, baseType: !347, size: 48, align: 8, offset: 704)
!347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 48, align: 8, elements: !348)
!348 = !{!349}
!349 = !DISubrange(count: 6)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !188, file: !4, line: 117, baseType: !295, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !188, file: !4, line: 118, baseType: !295, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !188, file: !4, line: 119, baseType: !295, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !188, file: !4, line: 120, baseType: !295, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !188, file: !4, line: 121, baseType: !295, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !188, file: !4, line: 122, baseType: !295, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !188, file: !4, line: 124, baseType: !74, size: 64, align: 64, offset: 768)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !188, file: !4, line: 125, baseType: !74, size: 64, align: 64, offset: 832)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !151, file: !154, line: 38, baseType: !216, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !151, file: !154, line: 39, baseType: !216, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !151, file: !154, line: 40, baseType: !216, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !151, file: !154, line: 41, baseType: !216, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !151, file: !154, line: 42, baseType: !216, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !151, file: !154, line: 43, baseType: !216, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !151, file: !154, line: 44, baseType: !216, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !151, file: !154, line: 45, baseType: !216, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !151, file: !154, line: 46, baseType: !95, size: 64, align: 64, offset: 1792)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !151, file: !154, line: 47, baseType: !95, size: 64, align: 64, offset: 1856)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !141, file: !145, line: 9, baseType: !369, size: 64, align: 64, offset: 192)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !370, line: 75, baseType: !371)
!370 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !372, line: 139, baseType: !78)
!372 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!373 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !141, file: !145, line: 10, baseType: !369, size: 64, align: 64, offset: 256)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !141, file: !145, line: 12, baseType: !95, size: 64, align: 64, offset: 320)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !141, file: !145, line: 13, baseType: !95, size: 64, align: 64, offset: 384)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !141, file: !145, line: 15, baseType: !216, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !141, file: !145, line: 16, baseType: !216, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !141, file: !145, line: 17, baseType: !216, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !141, file: !145, line: 18, baseType: !216, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !141, file: !145, line: 19, baseType: !216, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !141, file: !145, line: 21, baseType: !382, size: 64, align: 64, offset: 512)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64, align: 64)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !108, line: 102, baseType: !384)
!384 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !108, line: 102, flags: DIFlagFwdDecl)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !141, file: !145, line: 22, baseType: !97, size: 32, align: 32, offset: 576)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !141, file: !145, line: 25, baseType: !387, size: 128, align: 64, offset: 640)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 128, align: 64, elements: !388)
!388 = !{!389}
!389 = !DISubrange(count: 2)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !141, file: !145, line: 26, baseType: !97, size: 32, align: 32, offset: 768)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !141, file: !145, line: 27, baseType: !97, size: 32, align: 32, offset: 800)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !141, file: !145, line: 29, baseType: !393, size: 64, align: 64, offset: 832)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64, align: 64)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !108, line: 103, baseType: !395)
!395 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !108, line: 103, flags: DIFlagFwdDecl)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !141, file: !145, line: 30, baseType: !133, size: 64, align: 64, offset: 896)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !141, file: !145, line: 32, baseType: !95, size: 64, align: 64, offset: 960)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !141, file: !145, line: 33, baseType: !95, size: 64, align: 64, offset: 1024)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !141, file: !145, line: 34, baseType: !95, size: 64, align: 64, offset: 1088)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !141, file: !145, line: 35, baseType: !216, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !141, file: !145, line: 36, baseType: !216, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !141, file: !145, line: 37, baseType: !216, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !141, file: !145, line: 38, baseType: !216, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !141, file: !145, line: 40, baseType: !405, size: 128, align: 64, offset: 1216)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !75, line: 504, baseType: !406)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !75, line: 506, size: 128, align: 64, elements: !407)
!407 = !{!408, !409}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !406, file: !75, line: 508, baseType: !77, size: 64, align: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !406, file: !75, line: 509, baseType: !77, size: 64, align: 64, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !141, file: !145, line: 41, baseType: !369, size: 64, align: 64, offset: 1344)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !141, file: !145, line: 42, baseType: !97, size: 32, align: 32, offset: 1408)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !141, file: !145, line: 44, baseType: !116, size: 64, align: 64, offset: 1472)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !141, file: !145, line: 45, baseType: !116, size: 64, align: 64, offset: 1536)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !141, file: !145, line: 53, baseType: !415, size: 64, align: 64, offset: 1600)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64, align: 64)
!416 = !DISubroutineType(types: !417)
!417 = !{null, !139, !89, !97}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !141, file: !145, line: 55, baseType: !419, size: 64, align: 64, offset: 1664)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64, align: 64)
!420 = !DISubroutineType(types: !421)
!421 = !{!97, !139, !88}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !141, file: !145, line: 57, baseType: !423, size: 64, align: 64, offset: 1728)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64, align: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{!97, !139, !89}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !141, file: !145, line: 60, baseType: !427, size: 64, align: 64, offset: 1792)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64, align: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{!89, !139}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !141, file: !145, line: 62, baseType: !431, size: 64, align: 64, offset: 1856)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64, align: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{null, !139, !89, !89, !97}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !141, file: !145, line: 65, baseType: !435, size: 64, align: 64, offset: 1920)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64, align: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{!94, !139, !89, !89}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !141, file: !145, line: 69, baseType: !439, size: 64, align: 64, offset: 1984)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64, align: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{!442, !139, !89}
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64, align: 64)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !108, line: 109, baseType: !444)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !445, line: 15, size: 1408, align: 64, elements: !446)
!445 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!446 = !{!447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !461, !465, !467, !468, !469, !470, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !444, file: !130, line: 3, baseType: !97, size: 32, align: 32)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !444, file: !130, line: 4, baseType: !97, size: 32, align: 32, offset: 32)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !444, file: !130, line: 5, baseType: !133, size: 64, align: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !444, file: !130, line: 7, baseType: !76, size: 64, align: 64, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !444, file: !130, line: 8, baseType: !139, size: 64, align: 64, offset: 192)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !444, file: !130, line: 9, baseType: !95, size: 64, align: 64, offset: 256)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !444, file: !130, line: 10, baseType: !95, size: 64, align: 64, offset: 320)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !444, file: !130, line: 11, baseType: !369, size: 64, align: 64, offset: 384)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !444, file: !130, line: 12, baseType: !97, size: 32, align: 32, offset: 448)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !444, file: !130, line: 13, baseType: !95, size: 64, align: 64, offset: 512)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !444, file: !130, line: 15, baseType: !458, size: 64, align: 64, offset: 576)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64, align: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{null, !124}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !444, file: !130, line: 17, baseType: !462, size: 64, align: 64, offset: 640)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64, align: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{!89, !124}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !444, file: !466, line: 5, baseType: !95, size: 64, align: 64, offset: 704)
!466 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!467 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !444, file: !466, line: 6, baseType: !95, size: 64, align: 64, offset: 768)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !444, file: !466, line: 7, baseType: !369, size: 64, align: 64, offset: 832)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !444, file: !466, line: 9, baseType: !133, size: 64, align: 64, offset: 896)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !444, file: !466, line: 10, baseType: !471, size: 64, align: 64, offset: 960)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64, align: 64)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !108, line: 111, baseType: !473)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !474, line: 13, size: 576, align: 64, elements: !475)
!474 = !DIFile(filename: "../../../src/core/nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!475 = !{!476, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !494, !495}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !473, file: !477, line: 3, baseType: !97, size: 32, align: 32)
!477 = !DIFile(filename: "../../../src/core/nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!478 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !473, file: !477, line: 4, baseType: !97, size: 32, align: 32, offset: 32)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !473, file: !477, line: 6, baseType: !369, size: 64, align: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !473, file: !477, line: 8, baseType: !95, size: 64, align: 64, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !473, file: !477, line: 9, baseType: !95, size: 64, align: 64, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !473, file: !477, line: 10, baseType: !95, size: 64, align: 64, offset: 256)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !473, file: !477, line: 11, baseType: !97, size: 32, align: 32, offset: 320)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !473, file: !477, line: 14, baseType: !216, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !473, file: !477, line: 15, baseType: !216, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !473, file: !477, line: 18, baseType: !216, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !473, file: !477, line: 19, baseType: !216, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !473, file: !477, line: 20, baseType: !216, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !473, file: !477, line: 21, baseType: !216, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !473, file: !477, line: 22, baseType: !491, size: 64, align: 8, offset: 360)
!491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 64, align: 8, elements: !492)
!492 = !{!493}
!493 = !DISubrange(count: 8)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !473, file: !477, line: 26, baseType: !76, size: 64, align: 64, offset: 448)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !473, file: !477, line: 28, baseType: !471, size: 64, align: 64, offset: 512)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !444, file: !466, line: 12, baseType: !216, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !444, file: !466, line: 13, baseType: !95, size: 64, align: 64, offset: 1088)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !444, file: !466, line: 14, baseType: !97, size: 32, align: 32, offset: 1152)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !444, file: !466, line: 15, baseType: !95, size: 64, align: 64, offset: 1216)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !444, file: !466, line: 17, baseType: !216, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !444, file: !466, line: 18, baseType: !216, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !444, file: !466, line: 19, baseType: !216, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !444, file: !466, line: 20, baseType: !216, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !444, file: !466, line: 22, baseType: !216, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !444, file: !466, line: 23, baseType: !216, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !444, file: !466, line: 24, baseType: !216, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !444, file: !466, line: 25, baseType: !216, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !444, file: !466, line: 26, baseType: !216, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !444, file: !466, line: 31, baseType: !510, size: 64, align: 64, offset: 1344)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64, align: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!95, !442}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !141, file: !145, line: 70, baseType: !514, size: 64, align: 64, offset: 2048)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64, align: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!517, !139, !89}
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64, align: 64)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !108, line: 110, baseType: !519)
!519 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !108, line: 110, flags: DIFlagFwdDecl)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !141, file: !145, line: 71, baseType: !521, size: 64, align: 64, offset: 2112)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64, align: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{!97, !89, !89}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !141, file: !145, line: 73, baseType: !521, size: 64, align: 64, offset: 2176)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !126, file: !130, line: 9, baseType: !95, size: 64, align: 64, offset: 256)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !126, file: !130, line: 10, baseType: !95, size: 64, align: 64, offset: 320)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !126, file: !130, line: 11, baseType: !369, size: 64, align: 64, offset: 384)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !126, file: !130, line: 12, baseType: !97, size: 32, align: 32, offset: 448)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !126, file: !130, line: 13, baseType: !95, size: 64, align: 64, offset: 512)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !126, file: !130, line: 15, baseType: !458, size: 64, align: 64, offset: 576)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !126, file: !130, line: 17, baseType: !462, size: 64, align: 64, offset: 640)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "active_server", scope: !109, file: !67, line: 36, baseType: !139, size: 64, align: 64, offset: 320)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "connect_server", scope: !109, file: !67, line: 37, baseType: !139, size: 64, align: 64, offset: 384)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !109, file: !67, line: 38, baseType: !95, size: 64, align: 64, offset: 448)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !109, file: !67, line: 40, baseType: !97, size: 32, align: 32, offset: 512)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "bound_items", scope: !109, file: !67, line: 41, baseType: !116, size: 64, align: 64, offset: 576)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "immortal", scope: !109, file: !67, line: 43, baseType: !216, size: 1, align: 32, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "sticky_refnum", scope: !109, file: !67, line: 44, baseType: !216, size: 1, align: 32, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !109, file: !67, line: 45, baseType: !216, size: 1, align: 32, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !109, file: !67, line: 48, baseType: !541, size: 64, align: 64, offset: 704)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64, align: 64)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "HISTORY_REC", file: !543, line: 14, baseType: !544)
!543 = !DIFile(filename: "command-history.h", directory: "/home/lichi/Desktop/irssi/task1")
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !543, line: 6, size: 256, align: 64, elements: !545)
!545 = !{!546, !547, !556, !557, !558}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !544, file: !543, line: 7, baseType: !95, size: 64, align: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !544, file: !543, line: 9, baseType: !548, size: 64, align: 64, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64, align: 64)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "GList", file: !550, line: 37, baseType: !551)
!550 = !DIFile(filename: "/usr/include/glib-2.0/glib/glist.h", directory: "/home/lichi/Desktop/irssi/task1")
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GList", file: !550, line: 39, size: 192, align: 64, elements: !552)
!552 = !{!553, !554, !555}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !551, file: !550, line: 41, baseType: !74, size: 64, align: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !551, file: !550, line: 42, baseType: !548, size: 64, align: 64, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !551, file: !550, line: 43, baseType: !548, size: 64, align: 64, offset: 128)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "lines", scope: !544, file: !543, line: 10, baseType: !97, size: 32, align: 32, offset: 128)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !544, file: !543, line: 12, baseType: !97, size: 32, align: 32, offset: 160)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "redo", scope: !544, file: !543, line: 13, baseType: !97, size: 1, align: 32, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "history_name", scope: !109, file: !67, line: 49, baseType: !95, size: 64, align: 64, offset: 768)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !109, file: !67, line: 51, baseType: !97, size: 32, align: 32, offset: 832)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !109, file: !67, line: 52, baseType: !95, size: 64, align: 64, offset: 896)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "last_timestamp", scope: !109, file: !67, line: 54, baseType: !369, size: 64, align: 64, offset: 960)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "last_line", scope: !109, file: !67, line: 55, baseType: !369, size: 64, align: 64, offset: 1024)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "theme_name", scope: !109, file: !67, line: 57, baseType: !95, size: 64, align: 64, offset: 1088)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "theme", scope: !109, file: !67, line: 58, baseType: !76, size: 64, align: 64, offset: 1152)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "gui_data", scope: !109, file: !67, line: 60, baseType: !76, size: 64, align: 64, offset: 1216)
!567 = !{}
!568 = !DILocalVariable(name: "window", arg: 1, scope: !103, file: !93, line: 39, type: !106)
!569 = !DIExpression()
!570 = !DILocation(line: 39, column: 34, scope: !103)
!571 = !DILocalVariable(name: "data_level", arg: 2, scope: !103, file: !93, line: 39, type: !97)
!572 = !DILocation(line: 39, column: 46, scope: !103)
!573 = !DILocalVariable(name: "hilight_color", arg: 3, scope: !103, file: !93, line: 40, type: !89)
!574 = !DILocation(line: 40, column: 20, scope: !103)
!575 = !DILocalVariable(name: "old_data_level", scope: !103, file: !93, line: 42, type: !97)
!576 = !DILocation(line: 42, column: 6, scope: !103)
!577 = !DILocation(line: 44, column: 19, scope: !103)
!578 = !DILocation(line: 44, column: 27, scope: !103)
!579 = !DILocation(line: 44, column: 17, scope: !103)
!580 = !DILocation(line: 45, column: 6, scope: !581)
!581 = distinct !DILexicalBlock(scope: !103, file: !93, line: 45, column: 6)
!582 = !DILocation(line: 45, column: 17, scope: !581)
!583 = !DILocation(line: 45, column: 22, scope: !581)
!584 = !DILocation(line: 45, column: 25, scope: !585)
!585 = !DILexicalBlockFile(scope: !581, file: !93, discriminator: 1)
!586 = !DILocation(line: 45, column: 33, scope: !585)
!587 = !DILocation(line: 45, column: 46, scope: !585)
!588 = !DILocation(line: 45, column: 44, scope: !585)
!589 = !DILocation(line: 45, column: 6, scope: !585)
!590 = !DILocation(line: 46, column: 24, scope: !591)
!591 = distinct !DILexicalBlock(scope: !581, file: !93, line: 45, column: 58)
!592 = !DILocation(line: 46, column: 3, scope: !591)
!593 = !DILocation(line: 46, column: 11, scope: !591)
!594 = !DILocation(line: 46, column: 22, scope: !591)
!595 = !DILocation(line: 47, column: 24, scope: !591)
!596 = !DILocation(line: 47, column: 32, scope: !591)
!597 = !DILocation(line: 47, column: 17, scope: !591)
!598 = !DILocation(line: 48, column: 36, scope: !591)
!599 = !DILocation(line: 48, column: 27, scope: !591)
!600 = !DILocation(line: 48, column: 3, scope: !591)
!601 = !DILocation(line: 48, column: 11, scope: !591)
!602 = !DILocation(line: 48, column: 25, scope: !591)
!603 = !DILocation(line: 49, column: 36, scope: !591)
!604 = !DILocation(line: 49, column: 3, scope: !591)
!605 = !DILocation(line: 50, column: 2, scope: !591)
!606 = !DILocation(line: 52, column: 36, scope: !103)
!607 = !DILocation(line: 53, column: 28, scope: !103)
!608 = !DILocation(line: 53, column: 19, scope: !103)
!609 = !DILocation(line: 53, column: 8, scope: !103)
!610 = !DILocation(line: 52, column: 2, scope: !103)
!611 = !DILocation(line: 54, column: 1, scope: !103)
!612 = distinct !DISubprogram(name: "window_item_activity", scope: !93, file: !93, line: 56, type: !613, isLocal: false, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !567)
!613 = !DISubroutineType(types: !614)
!614 = !{null, !124, !97, !89}
!615 = !DILocalVariable(name: "item", arg: 1, scope: !612, file: !93, line: 56, type: !124)
!616 = !DILocation(line: 56, column: 40, scope: !612)
!617 = !DILocalVariable(name: "data_level", arg: 2, scope: !612, file: !93, line: 56, type: !97)
!618 = !DILocation(line: 56, column: 50, scope: !612)
!619 = !DILocalVariable(name: "hilight_color", arg: 3, scope: !612, file: !93, line: 57, type: !89)
!620 = !DILocation(line: 57, column: 18, scope: !612)
!621 = !DILocalVariable(name: "old_data_level", scope: !612, file: !93, line: 59, type: !97)
!622 = !DILocation(line: 59, column: 6, scope: !612)
!623 = !DILocation(line: 61, column: 19, scope: !612)
!624 = !DILocation(line: 61, column: 25, scope: !612)
!625 = !DILocation(line: 61, column: 17, scope: !612)
!626 = !DILocation(line: 62, column: 6, scope: !627)
!627 = distinct !DILexicalBlock(scope: !612, file: !93, line: 62, column: 6)
!628 = !DILocation(line: 62, column: 17, scope: !627)
!629 = !DILocation(line: 62, column: 22, scope: !627)
!630 = !DILocation(line: 62, column: 25, scope: !631)
!631 = !DILexicalBlockFile(scope: !627, file: !93, discriminator: 1)
!632 = !DILocation(line: 62, column: 31, scope: !631)
!633 = !DILocation(line: 62, column: 44, scope: !631)
!634 = !DILocation(line: 62, column: 42, scope: !631)
!635 = !DILocation(line: 62, column: 6, scope: !631)
!636 = !DILocation(line: 63, column: 22, scope: !637)
!637 = distinct !DILexicalBlock(scope: !627, file: !93, line: 62, column: 56)
!638 = !DILocation(line: 63, column: 3, scope: !637)
!639 = !DILocation(line: 63, column: 9, scope: !637)
!640 = !DILocation(line: 63, column: 20, scope: !637)
!641 = !DILocation(line: 64, column: 24, scope: !637)
!642 = !DILocation(line: 64, column: 30, scope: !637)
!643 = !DILocation(line: 64, column: 17, scope: !637)
!644 = !DILocation(line: 65, column: 34, scope: !637)
!645 = !DILocation(line: 65, column: 25, scope: !637)
!646 = !DILocation(line: 65, column: 3, scope: !637)
!647 = !DILocation(line: 65, column: 9, scope: !637)
!648 = !DILocation(line: 65, column: 23, scope: !637)
!649 = !DILocation(line: 66, column: 41, scope: !637)
!650 = !DILocation(line: 66, column: 3, scope: !637)
!651 = !DILocation(line: 67, column: 2, scope: !637)
!652 = !DILocation(line: 69, column: 41, scope: !612)
!653 = !DILocation(line: 70, column: 28, scope: !612)
!654 = !DILocation(line: 70, column: 19, scope: !612)
!655 = !DILocation(line: 70, column: 8, scope: !612)
!656 = !DILocation(line: 69, column: 2, scope: !612)
!657 = !DILocation(line: 71, column: 1, scope: !612)
!658 = distinct !DISubprogram(name: "window_activity_init", scope: !93, file: !93, line: 135, type: !292, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !567)
!659 = !DILocation(line: 137, column: 2, scope: !658)
!660 = !DILocation(line: 138, column: 2, scope: !658)
!661 = !DILocation(line: 139, column: 2, scope: !658)
!662 = !DILocation(line: 140, column: 2, scope: !658)
!663 = !DILocation(line: 142, column: 2, scope: !658)
!664 = !DILocation(line: 143, column: 2, scope: !658)
!665 = !DILocation(line: 144, column: 2, scope: !658)
!666 = !DILocation(line: 145, column: 2, scope: !658)
!667 = !DILocation(line: 146, column: 2, scope: !658)
!668 = !DILocation(line: 147, column: 1, scope: !658)
!669 = distinct !DISubprogram(name: "read_settings", scope: !93, file: !93, line: 117, type: !292, isLocal: true, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !567)
!670 = !DILocalVariable(name: "targets", scope: !669, file: !93, line: 119, type: !89)
!671 = !DILocation(line: 119, column: 14, scope: !669)
!672 = !DILocation(line: 121, column: 6, scope: !673)
!673 = distinct !DILexicalBlock(scope: !669, file: !93, line: 121, column: 6)
!674 = !DILocation(line: 121, column: 19, scope: !673)
!675 = !DILocation(line: 121, column: 6, scope: !669)
!676 = !DILocation(line: 122, column: 14, scope: !673)
!677 = !DILocation(line: 122, column: 3, scope: !673)
!678 = !DILocation(line: 124, column: 19, scope: !669)
!679 = !DILocation(line: 124, column: 17, scope: !669)
!680 = !DILocation(line: 125, column: 18, scope: !669)
!681 = !DILocation(line: 125, column: 17, scope: !669)
!682 = !DILocation(line: 125, column: 26, scope: !669)
!683 = !DILocation(line: 125, column: 17, scope: !684)
!684 = !DILexicalBlockFile(scope: !669, file: !93, discriminator: 1)
!685 = !DILocation(line: 126, column: 14, scope: !669)
!686 = !DILocation(line: 126, column: 3, scope: !669)
!687 = !DILocation(line: 125, column: 17, scope: !688)
!688 = !DILexicalBlockFile(scope: !669, file: !93, discriminator: 2)
!689 = !DILocation(line: 125, column: 17, scope: !690)
!690 = !DILexicalBlockFile(scope: !669, file: !93, discriminator: 3)
!691 = !DILocation(line: 125, column: 15, scope: !690)
!692 = !DILocation(line: 129, column: 3, scope: !669)
!693 = !DILocation(line: 128, column: 66, scope: !669)
!694 = !DILocation(line: 128, column: 13, scope: !669)
!695 = !DILocation(line: 130, column: 14, scope: !669)
!696 = !DILocation(line: 130, column: 12, scope: !669)
!697 = !DILocation(line: 132, column: 3, scope: !669)
!698 = !DILocation(line: 131, column: 35, scope: !669)
!699 = !DILocation(line: 131, column: 16, scope: !669)
!700 = !DILocation(line: 133, column: 1, scope: !669)
!701 = distinct !DISubprogram(name: "sig_hilight_text", scope: !93, file: !93, line: 73, type: !702, isLocal: true, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !567)
!702 = !DISubroutineType(types: !703)
!703 = !{null, !704, !89}
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64, align: 64)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_DEST_REC", file: !706, line: 62, baseType: !707)
!706 = !DIFile(filename: "formats.h", directory: "/home/lichi/Desktop/irssi/task1")
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TEXT_DEST_REC", file: !706, line: 50, size: 576, align: 64, elements: !708)
!708 = !{!709, !710, !711, !712, !713, !714, !715, !716, !717, !718}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !707, file: !706, line: 51, baseType: !106, size: 64, align: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !707, file: !706, line: 52, baseType: !139, size: 64, align: 64, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "server_tag", scope: !707, file: !706, line: 53, baseType: !89, size: 64, align: 64, offset: 128)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !707, file: !706, line: 54, baseType: !89, size: 64, align: 64, offset: 192)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !707, file: !706, line: 55, baseType: !89, size: 64, align: 64, offset: 256)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !707, file: !706, line: 56, baseType: !89, size: 64, align: 64, offset: 320)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !707, file: !706, line: 57, baseType: !97, size: 32, align: 32, offset: 384)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_priority", scope: !707, file: !706, line: 59, baseType: !97, size: 32, align: 32, offset: 416)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !707, file: !706, line: 60, baseType: !95, size: 64, align: 64, offset: 448)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !707, file: !706, line: 61, baseType: !97, size: 32, align: 32, offset: 512)
!719 = !DILocalVariable(name: "dest", arg: 1, scope: !701, file: !93, line: 73, type: !704)
!720 = !DILocation(line: 73, column: 45, scope: !701)
!721 = !DILocalVariable(name: "msg", arg: 2, scope: !701, file: !93, line: 73, type: !89)
!722 = !DILocation(line: 73, column: 63, scope: !701)
!723 = !DILocalVariable(name: "item", scope: !701, file: !93, line: 75, type: !124)
!724 = !DILocation(line: 75, column: 15, scope: !701)
!725 = !DILocalVariable(name: "data_level", scope: !701, file: !93, line: 76, type: !97)
!726 = !DILocation(line: 76, column: 6, scope: !701)
!727 = !DILocation(line: 78, column: 6, scope: !728)
!728 = distinct !DILexicalBlock(scope: !701, file: !93, line: 78, column: 6)
!729 = !DILocation(line: 78, column: 12, scope: !728)
!730 = !DILocation(line: 78, column: 22, scope: !728)
!731 = !DILocation(line: 78, column: 19, scope: !728)
!732 = !DILocation(line: 78, column: 33, scope: !728)
!733 = !DILocation(line: 78, column: 37, scope: !734)
!734 = !DILexicalBlockFile(scope: !728, file: !93, discriminator: 1)
!735 = !DILocation(line: 78, column: 43, scope: !734)
!736 = !DILocation(line: 78, column: 51, scope: !734)
!737 = !DILocation(line: 78, column: 49, scope: !734)
!738 = !DILocation(line: 78, column: 6, scope: !734)
!739 = !DILocation(line: 79, column: 3, scope: !728)
!740 = !DILocation(line: 81, column: 6, scope: !741)
!741 = distinct !DILexicalBlock(scope: !701, file: !93, line: 81, column: 6)
!742 = !DILocation(line: 81, column: 12, scope: !741)
!743 = !DILocation(line: 81, column: 20, scope: !741)
!744 = !DILocation(line: 81, column: 18, scope: !741)
!745 = !DILocation(line: 81, column: 6, scope: !701)
!746 = !DILocation(line: 82, column: 35, scope: !747)
!747 = distinct !DILexicalBlock(scope: !741, file: !93, line: 81, column: 35)
!748 = !DILocation(line: 82, column: 41, scope: !747)
!749 = !DILocation(line: 82, column: 34, scope: !747)
!750 = !DILocation(line: 82, column: 14, scope: !747)
!751 = !DILocation(line: 83, column: 2, scope: !747)
!752 = !DILocation(line: 84, column: 17, scope: !753)
!753 = distinct !DILexicalBlock(scope: !741, file: !93, line: 83, column: 9)
!754 = !DILocation(line: 84, column: 23, scope: !753)
!755 = !DILocation(line: 84, column: 31, scope: !753)
!756 = !DILocation(line: 84, column: 29, scope: !753)
!757 = !DILocation(line: 84, column: 16, scope: !753)
!758 = !DILocation(line: 84, column: 14, scope: !753)
!759 = !DILocation(line: 88, column: 6, scope: !760)
!760 = distinct !DILexicalBlock(scope: !701, file: !93, line: 88, column: 6)
!761 = !DILocation(line: 88, column: 19, scope: !760)
!762 = !DILocation(line: 88, column: 26, scope: !760)
!763 = !DILocation(line: 88, column: 30, scope: !764)
!764 = !DILexicalBlockFile(scope: !760, file: !93, discriminator: 1)
!765 = !DILocation(line: 88, column: 36, scope: !764)
!766 = !DILocation(line: 88, column: 42, scope: !764)
!767 = !DILocation(line: 88, column: 62, scope: !764)
!768 = !DILocation(line: 88, column: 67, scope: !764)
!769 = !DILocation(line: 88, column: 70, scope: !770)
!770 = !DILexicalBlockFile(scope: !760, file: !93, discriminator: 2)
!771 = !DILocation(line: 88, column: 76, scope: !770)
!772 = !DILocation(line: 88, column: 83, scope: !770)
!773 = !DILocation(line: 88, column: 6, scope: !770)
!774 = !DILocation(line: 90, column: 26, scope: !775)
!775 = distinct !DILexicalBlock(scope: !776, file: !93, line: 90, column: 7)
!776 = distinct !DILexicalBlock(scope: !760, file: !93, line: 88, column: 92)
!777 = !DILocation(line: 90, column: 40, scope: !775)
!778 = !DILocation(line: 90, column: 7, scope: !775)
!779 = !DILocation(line: 90, column: 7, scope: !776)
!780 = !DILocation(line: 91, column: 4, scope: !775)
!781 = !DILocation(line: 92, column: 2, scope: !776)
!782 = !DILocation(line: 94, column: 6, scope: !783)
!783 = distinct !DILexicalBlock(scope: !701, file: !93, line: 94, column: 6)
!784 = !DILocation(line: 94, column: 12, scope: !783)
!785 = !DILocation(line: 94, column: 19, scope: !783)
!786 = !DILocation(line: 94, column: 6, scope: !701)
!787 = !DILocation(line: 95, column: 27, scope: !788)
!788 = distinct !DILexicalBlock(scope: !783, file: !93, line: 94, column: 27)
!789 = !DILocation(line: 95, column: 33, scope: !788)
!790 = !DILocation(line: 95, column: 41, scope: !788)
!791 = !DILocation(line: 95, column: 47, scope: !788)
!792 = !DILocation(line: 95, column: 10, scope: !788)
!793 = !DILocation(line: 95, column: 8, scope: !788)
!794 = !DILocation(line: 96, column: 7, scope: !795)
!795 = distinct !DILexicalBlock(scope: !788, file: !93, line: 96, column: 7)
!796 = !DILocation(line: 96, column: 12, scope: !795)
!797 = !DILocation(line: 96, column: 7, scope: !788)
!798 = !DILocation(line: 97, column: 25, scope: !799)
!799 = distinct !DILexicalBlock(scope: !795, file: !93, line: 96, column: 20)
!800 = !DILocation(line: 97, column: 31, scope: !799)
!801 = !DILocation(line: 98, column: 11, scope: !799)
!802 = !DILocation(line: 98, column: 17, scope: !799)
!803 = !DILocation(line: 97, column: 4, scope: !799)
!804 = !DILocation(line: 99, column: 3, scope: !799)
!805 = !DILocation(line: 100, column: 2, scope: !788)
!806 = !DILocation(line: 101, column: 18, scope: !701)
!807 = !DILocation(line: 101, column: 24, scope: !701)
!808 = !DILocation(line: 101, column: 32, scope: !701)
!809 = !DILocation(line: 101, column: 44, scope: !701)
!810 = !DILocation(line: 101, column: 50, scope: !701)
!811 = !DILocation(line: 101, column: 2, scope: !701)
!812 = !DILocation(line: 102, column: 1, scope: !701)
!813 = !DILocation(line: 102, column: 1, scope: !814)
!814 = !DILexicalBlockFile(scope: !701, file: !93, discriminator: 1)
!815 = distinct !DISubprogram(name: "sig_dehilight_window", scope: !93, file: !93, line: 104, type: !816, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !567)
!816 = !DISubroutineType(types: !817)
!817 = !{null, !106}
!818 = !DILocalVariable(name: "window", arg: 1, scope: !815, file: !93, line: 104, type: !106)
!819 = !DILocation(line: 104, column: 46, scope: !815)
!820 = !DILocalVariable(name: "tmp", scope: !815, file: !93, line: 106, type: !116)
!821 = !DILocation(line: 106, column: 17, scope: !815)
!822 = !DILocation(line: 108, column: 2, scope: !815)
!823 = distinct !{!823, !822}
!824 = !DILocation(line: 108, column: 10, scope: !825)
!825 = !DILexicalBlockFile(scope: !826, file: !93, discriminator: 1)
!826 = distinct !DILexicalBlock(scope: !827, file: !93, line: 108, column: 10)
!827 = distinct !DILexicalBlock(scope: !815, file: !93, line: 108, column: 4)
!828 = !DILocation(line: 108, column: 17, scope: !825)
!829 = !DILocation(line: 108, column: 5, scope: !830)
!830 = !DILexicalBlockFile(scope: !831, file: !93, discriminator: 2)
!831 = distinct !DILexicalBlock(scope: !826, file: !93, line: 108, column: 3)
!832 = !DILocation(line: 108, column: 14, scope: !833)
!833 = !DILexicalBlockFile(scope: !834, file: !93, discriminator: 3)
!834 = distinct !DILexicalBlock(scope: !826, file: !93, line: 108, column: 12)
!835 = !DILocation(line: 108, column: 101, scope: !833)
!836 = !DILocation(line: 108, column: 112, scope: !837)
!837 = !DILexicalBlockFile(scope: !827, file: !93, discriminator: 4)
!838 = !DILocation(line: 110, column: 6, scope: !839)
!839 = distinct !DILexicalBlock(scope: !815, file: !93, line: 110, column: 6)
!840 = !DILocation(line: 110, column: 14, scope: !839)
!841 = !DILocation(line: 110, column: 25, scope: !839)
!842 = !DILocation(line: 110, column: 6, scope: !815)
!843 = !DILocation(line: 111, column: 19, scope: !844)
!844 = distinct !DILexicalBlock(scope: !839, file: !93, line: 110, column: 31)
!845 = !DILocation(line: 111, column: 3, scope: !844)
!846 = !DILocation(line: 112, column: 14, scope: !847)
!847 = distinct !DILexicalBlock(scope: !844, file: !93, line: 112, column: 3)
!848 = !DILocation(line: 112, column: 22, scope: !847)
!849 = !DILocation(line: 112, column: 12, scope: !847)
!850 = !DILocation(line: 112, column: 8, scope: !847)
!851 = !DILocation(line: 112, column: 29, scope: !852)
!852 = !DILexicalBlockFile(scope: !853, file: !93, discriminator: 1)
!853 = distinct !DILexicalBlock(scope: !847, file: !93, line: 112, column: 3)
!854 = !DILocation(line: 112, column: 33, scope: !852)
!855 = !DILocation(line: 112, column: 3, scope: !852)
!856 = !DILocation(line: 113, column: 25, scope: !853)
!857 = !DILocation(line: 113, column: 30, scope: !853)
!858 = !DILocation(line: 113, column: 4, scope: !853)
!859 = !DILocation(line: 112, column: 47, scope: !860)
!860 = !DILexicalBlockFile(scope: !853, file: !93, discriminator: 2)
!861 = !DILocation(line: 112, column: 52, scope: !860)
!862 = !DILocation(line: 112, column: 45, scope: !860)
!863 = !DILocation(line: 112, column: 3, scope: !860)
!864 = distinct !{!864, !865}
!865 = !DILocation(line: 112, column: 3, scope: !844)
!866 = !DILocation(line: 114, column: 2, scope: !844)
!867 = !DILocation(line: 115, column: 1, scope: !815)
!868 = distinct !DISubprogram(name: "window_activity_deinit", scope: !93, file: !93, line: 149, type: !292, isLocal: false, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !567)
!869 = !DILocation(line: 151, column: 6, scope: !870)
!870 = distinct !DILexicalBlock(scope: !868, file: !93, line: 151, column: 6)
!871 = !DILocation(line: 151, column: 19, scope: !870)
!872 = !DILocation(line: 151, column: 6, scope: !868)
!873 = !DILocation(line: 152, column: 14, scope: !870)
!874 = !DILocation(line: 152, column: 3, scope: !870)
!875 = !DILocation(line: 154, column: 2, scope: !868)
!876 = !DILocation(line: 155, column: 2, scope: !868)
!877 = !DILocation(line: 156, column: 2, scope: !868)
!878 = !DILocation(line: 157, column: 2, scope: !868)
!879 = !DILocation(line: 158, column: 1, scope: !868)
