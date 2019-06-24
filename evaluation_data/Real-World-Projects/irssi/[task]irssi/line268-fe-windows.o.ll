; ModuleID = './line268-fe-windows.o.i'
source_filename = "./line268-fe-windows.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GSList = type { i8*, %struct._GSList* }
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
%struct._CHANNEL_REC = type opaque
%struct._QUERY_REC = type opaque
%struct.HISTORY_REC = type { i8*, %struct._GList*, i32, i32, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GSequence = type opaque
%struct.THEME_REC = type { i32, i8*, i8*, i64, i32, i8, %struct._GHashTable*, [256 x i32], %struct._GSList*, %struct._GHashTable*, i8* }
%struct._GSequenceNode = type opaque
%struct.WINDOW_BIND_REC = type { i8*, i8*, i8 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct._TEXT_DEST_REC = type { %struct._WINDOW_REC*, %struct._SERVER_REC*, i8*, i8*, i8*, i8*, i32, i32, i8*, i32 }

@.str = private unnamed_addr constant [21 x i8] c"window_default_level\00", align 1
@windows = common global %struct._GSList* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"window created\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"window_auto_change\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"window changed automatic\00", align 1
@__func__.window_destroy = private unnamed_addr constant [15 x i8] c"window_destroy\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"window != NULL\00", align 1
@active_win = common global %struct._WINDOW_REC* null, align 8
@.str.5 = private unnamed_addr constant [22 x i8] c"windows_auto_renumber\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"window destroyed\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"autoclose_windows\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"window changed\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@servers = external global %struct._GSList*, align 8
@.str.10 = private unnamed_addr constant [23 x i8] c"window connect changed\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"window server changed\00", align 1
@__func__.window_set_refnum = private unnamed_addr constant [18 x i8] c"window_set_refnum\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"refnum >= 1\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"window refnum changed\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"window name changed\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"window history changed\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"window history cleared\00", align 1
@__func__.window_set_level = private unnamed_addr constant [17 x i8] c"window_set_level\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"window level changed\00", align 1
@__func__.window_set_immortal = private unnamed_addr constant [20 x i8] c"window_set_immortal\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"window immortal changed\00", align 1
@__func__.window_get_active_name = private unnamed_addr constant [23 x i8] c"window_get_active_name\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"window_check_level_first\00", align 1
@__func__.window_find_name = private unnamed_addr constant [17 x i8] c"window_find_name\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"name != NULL\00", align 1
@__func__.window_find_item = private unnamed_addr constant [17 x i8] c"window_find_item\00", align 1
@__func__.window_bind_add = private unnamed_addr constant [16 x i8] c"window_bind_add\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"servertag != NULL\00", align 1
@__func__.window_bind_destroy = private unnamed_addr constant [20 x i8] c"window_bind_destroy\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"rec != NULL\00", align 1
@__func__.window_bind_find = private unnamed_addr constant [17 x i8] c"window_bind_find\00", align 1
@color_24bit_256.cstep_size = internal constant i32 40, align 4
@color_24bit_256.cstep_start = internal constant i32 95, align 4
@color_24bit_256.gstep_size = internal constant i32 10, align 4
@color_24bit_256.gstep_start = internal constant i32 8, align 4
@windows_seq = common global %struct._GSequence* null, align 8
@daycheck = internal global i32 0, align 4
@daytag = internal global i32 0, align 4
@.str.23 = private unnamed_addr constant [15 x i8] c"fe-common/core\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"lookandfeel\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"server looking\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"server connected\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"server disconnected\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"server connect failed\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"setup changed\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"print text\00", align 1
@__func__.window_set_refnum0 = private unnamed_addr constant [19 x i8] c"window_set_refnum0\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"timestamps\00", align 1
@__func__.sig_server_connected = private unnamed_addr constant [21 x i8] c"sig_server_connected\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"server != NULL\00", align 1
@__func__.sig_server_disconnected = private unnamed_addr constant [24 x i8] c"sig_server_disconnected\00", align 1
@current_theme = external global %struct.THEME_REC*, align 8

; Function Attrs: nounwind uwtable
define %struct._WINDOW_REC* @window_create(%struct._WI_ITEM_REC*, i32) #0 !dbg !768 {
  %3 = alloca %struct._WI_ITEM_REC*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._WINDOW_REC*, align 8
  store %struct._WI_ITEM_REC* %0, %struct._WI_ITEM_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %3, metadata !771, metadata !772), !dbg !773
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !774, metadata !772), !dbg !775
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %5, metadata !776, metadata !772), !dbg !777
  %6 = call noalias i8* @g_malloc0_n(i64 1, i64 160), !dbg !778
  %7 = bitcast i8* %6 to %struct._WINDOW_REC*, !dbg !779
  store %struct._WINDOW_REC* %7, %struct._WINDOW_REC** %5, align 8, !dbg !780
  %8 = call i32 @window_get_new_refnum(), !dbg !781
  %9 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !782
  %10 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %9, i32 0, i32 0, !dbg !783
  store i32 %8, i32* %10, align 8, !dbg !784
  %11 = call i32 @settings_get_level(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0)), !dbg !785
  %12 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !786
  %13 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %12, i32 0, i32 9, !dbg !787
  store i32 %11, i32* %13, align 8, !dbg !788
  %14 = load %struct._GSList*, %struct._GSList** @windows, align 8, !dbg !789
  %15 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !790
  %16 = bitcast %struct._WINDOW_REC* %15 to i8*, !dbg !790
  %17 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %14, i8* %16), !dbg !791
  store %struct._GSList* %17, %struct._GSList** @windows, align 8, !dbg !792
  %18 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !793
  %19 = call %struct._GSequenceNode* @windows_seq_insert(%struct._WINDOW_REC* %18), !dbg !794
  %20 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !795
  %21 = load i32, i32* %4, align 4, !dbg !796
  %22 = sext i32 %21 to i64, !dbg !797
  %23 = inttoptr i64 %22 to i8*, !dbg !798
  %24 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 2, %struct._WINDOW_REC* %20, i8* %23), !dbg !799
  %25 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %3, align 8, !dbg !800
  %26 = icmp ne %struct._WI_ITEM_REC* %25, null, !dbg !802
  br i1 %26, label %27, label %31, !dbg !803

; <label>:27:                                     ; preds = %2
  %28 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !804
  %29 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %3, align 8, !dbg !806
  %30 = load i32, i32* %4, align 4, !dbg !807
  call void @window_item_add(%struct._WINDOW_REC* %28, %struct._WI_ITEM_REC* %29, i32 %30), !dbg !808
  br label %31, !dbg !808

; <label>:31:                                     ; preds = %27, %2
  %32 = load %struct._GSList*, %struct._GSList** @windows, align 8, !dbg !809
  %33 = getelementptr inbounds %struct._GSList, %struct._GSList* %32, i32 0, i32 1, !dbg !811
  %34 = load %struct._GSList*, %struct._GSList** %33, align 8, !dbg !811
  %35 = icmp eq %struct._GSList* %34, null, !dbg !812
  br i1 %35, label %42, label %36, !dbg !813

; <label>:36:                                     ; preds = %31
  %37 = load i32, i32* %4, align 4, !dbg !814
  %38 = icmp ne i32 %37, 0, !dbg !814
  br i1 %38, label %39, label %42, !dbg !816

; <label>:39:                                     ; preds = %36
  %40 = call i32 @settings_get_bool(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0)), !dbg !817
  %41 = icmp ne i32 %40, 0, !dbg !817
  br i1 %41, label %42, label %55, !dbg !819

; <label>:42:                                     ; preds = %39, %36, %31
  %43 = load i32, i32* %4, align 4, !dbg !820
  %44 = icmp ne i32 %43, 0, !dbg !820
  br i1 %44, label %45, label %53, !dbg !823

; <label>:45:                                     ; preds = %42
  %46 = load %struct._GSList*, %struct._GSList** @windows, align 8, !dbg !824
  %47 = getelementptr inbounds %struct._GSList, %struct._GSList* %46, i32 0, i32 1, !dbg !826
  %48 = load %struct._GSList*, %struct._GSList** %47, align 8, !dbg !826
  %49 = icmp ne %struct._GSList* %48, null, !dbg !827
  br i1 %49, label %50, label %53, !dbg !828

; <label>:50:                                     ; preds = %45
  %51 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !829
  %52 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct._WINDOW_REC* %51), !dbg !830
  br label %53, !dbg !830

; <label>:53:                                     ; preds = %50, %45, %42
  %54 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !831
  call void @window_set_active(%struct._WINDOW_REC* %54), !dbg !832
  br label %55, !dbg !833

; <label>:55:                                     ; preds = %53, %39
  %56 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !834
  ret %struct._WINDOW_REC* %56, !dbg !835
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare noalias i8* @g_malloc0_n(i64, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @window_get_new_refnum() #0 !dbg !836 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._WINDOW_REC*, align 8
  %3 = alloca %struct._GSequenceNode*, align 8
  %4 = alloca %struct._GSequenceNode*, align 8
  %5 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %2, metadata !839, metadata !772), !dbg !840
  call void @llvm.dbg.declare(metadata %struct._GSequenceNode** %3, metadata !841, metadata !772), !dbg !845
  call void @llvm.dbg.declare(metadata %struct._GSequenceNode** %4, metadata !846, metadata !772), !dbg !847
  call void @llvm.dbg.declare(metadata i32* %5, metadata !848, metadata !772), !dbg !849
  store i32 1, i32* %5, align 4, !dbg !850
  %6 = call %struct._GSequenceNode* @windows_seq_begin(), !dbg !851
  store %struct._GSequenceNode* %6, %struct._GSequenceNode** %3, align 8, !dbg !852
  %7 = call %struct._GSequenceNode* @windows_seq_end(), !dbg !853
  store %struct._GSequenceNode* %7, %struct._GSequenceNode** %4, align 8, !dbg !854
  br label %8, !dbg !855

; <label>:8:                                      ; preds = %23, %0
  %9 = load %struct._GSequenceNode*, %struct._GSequenceNode** %3, align 8, !dbg !856
  %10 = load %struct._GSequenceNode*, %struct._GSequenceNode** %4, align 8, !dbg !858
  %11 = icmp ne %struct._GSequenceNode* %9, %10, !dbg !859
  br i1 %11, label %12, label %28, !dbg !860

; <label>:12:                                     ; preds = %8
  %13 = load %struct._GSequenceNode*, %struct._GSequenceNode** %3, align 8, !dbg !861
  %14 = call i8* @g_sequence_get(%struct._GSequenceNode* %13), !dbg !863
  %15 = bitcast i8* %14 to %struct._WINDOW_REC*, !dbg !863
  store %struct._WINDOW_REC* %15, %struct._WINDOW_REC** %2, align 8, !dbg !864
  %16 = load i32, i32* %5, align 4, !dbg !865
  %17 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !867
  %18 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %17, i32 0, i32 0, !dbg !868
  %19 = load i32, i32* %18, align 8, !dbg !868
  %20 = icmp ne i32 %16, %19, !dbg !869
  br i1 %20, label %21, label %23, !dbg !870

; <label>:21:                                     ; preds = %12
  %22 = load i32, i32* %5, align 4, !dbg !871
  store i32 %22, i32* %1, align 4, !dbg !872
  br label %30, !dbg !872

; <label>:23:                                     ; preds = %12
  %24 = load i32, i32* %5, align 4, !dbg !873
  %25 = add nsw i32 %24, 1, !dbg !873
  store i32 %25, i32* %5, align 4, !dbg !873
  %26 = load %struct._GSequenceNode*, %struct._GSequenceNode** %3, align 8, !dbg !874
  %27 = call %struct._GSequenceNode* @g_sequence_iter_next(%struct._GSequenceNode* %26), !dbg !875
  store %struct._GSequenceNode* %27, %struct._GSequenceNode** %3, align 8, !dbg !876
  br label %8, !dbg !877, !llvm.loop !879

; <label>:28:                                     ; preds = %8
  %29 = load i32, i32* %5, align 4, !dbg !880
  store i32 %29, i32* %1, align 4, !dbg !881
  br label %30, !dbg !881

; <label>:30:                                     ; preds = %28, %21
  %31 = load i32, i32* %1, align 4, !dbg !882
  ret i32 %31, !dbg !882
}

declare i32 @settings_get_level(i8*) #2

declare %struct._GSList* @g_slist_prepend(%struct._GSList*, i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct._GSequenceNode* @windows_seq_insert(%struct._WINDOW_REC*) #0 !dbg !883 {
  %2 = alloca %struct._WINDOW_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %2, metadata !886, metadata !772), !dbg !887
  %3 = load %struct._GSequence*, %struct._GSequence** @windows_seq, align 8, !dbg !888
  %4 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !889
  %5 = bitcast %struct._WINDOW_REC* %4 to i8*, !dbg !889
  %6 = call %struct._GSequenceNode* @g_sequence_insert_sorted(%struct._GSequence* %3, i8* %5, i32 (i8*, i8*, i8*)* bitcast (i32 (%struct._WINDOW_REC*, %struct._WINDOW_REC*)* @window_refnum_cmp to i32 (i8*, i8*, i8*)*), i8* null), !dbg !890
  ret %struct._GSequenceNode* %6, !dbg !891
}

declare i32 @signal_emit(i8*, i32, ...) #2

declare void @window_item_add(%struct._WINDOW_REC*, %struct._WI_ITEM_REC*, i32) #2

declare i32 @settings_get_bool(i8*) #2

; Function Attrs: nounwind uwtable
define void @window_set_active(%struct._WINDOW_REC*) #0 !dbg !892 {
  %2 = alloca %struct._WINDOW_REC*, align 8
  %3 = alloca %struct._WINDOW_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %2, metadata !895, metadata !772), !dbg !896
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !897, metadata !772), !dbg !898
  %4 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !899
  %5 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !901
  %6 = icmp eq %struct._WINDOW_REC* %4, %5, !dbg !902
  br i1 %6, label %7, label %8, !dbg !903

; <label>:7:                                      ; preds = %1
  br label %29, !dbg !904

; <label>:8:                                      ; preds = %1
  %9 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !905
  store %struct._WINDOW_REC* %9, %struct._WINDOW_REC** %3, align 8, !dbg !906
  %10 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !907
  store %struct._WINDOW_REC* %10, %struct._WINDOW_REC** @active_win, align 8, !dbg !908
  %11 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !909
  %12 = icmp ne %struct._WINDOW_REC* %11, null, !dbg !911
  br i1 %12, label %13, label %22, !dbg !912

; <label>:13:                                     ; preds = %8
  %14 = load %struct._GSList*, %struct._GSList** @windows, align 8, !dbg !913
  %15 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !915
  %16 = bitcast %struct._WINDOW_REC* %15 to i8*, !dbg !915
  %17 = call %struct._GSList* @g_slist_remove(%struct._GSList* %14, i8* %16), !dbg !916
  store %struct._GSList* %17, %struct._GSList** @windows, align 8, !dbg !917
  %18 = load %struct._GSList*, %struct._GSList** @windows, align 8, !dbg !918
  %19 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !919
  %20 = bitcast %struct._WINDOW_REC* %19 to i8*, !dbg !919
  %21 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %18, i8* %20), !dbg !920
  store %struct._GSList* %21, %struct._GSList** @windows, align 8, !dbg !921
  br label %22, !dbg !922

; <label>:22:                                     ; preds = %13, %8
  %23 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !923
  %24 = icmp ne %struct._WINDOW_REC* %23, null, !dbg !925
  br i1 %24, label %25, label %29, !dbg !926

; <label>:25:                                     ; preds = %22
  %26 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !927
  %27 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !928
  %28 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 2, %struct._WINDOW_REC* %26, %struct._WINDOW_REC* %27), !dbg !929
  br label %29, !dbg !929

; <label>:29:                                     ; preds = %7, %25, %22
  ret void, !dbg !930
}

; Function Attrs: nounwind uwtable
define void @window_destroy(%struct._WINDOW_REC*) #0 !dbg !931 {
  %2 = alloca %struct._WINDOW_REC*, align 8
  %3 = alloca %struct._GSequenceNode*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %2, metadata !932, metadata !772), !dbg !933
  call void @llvm.dbg.declare(metadata %struct._GSequenceNode** %3, metadata !934, metadata !772), !dbg !935
  br label %4, !dbg !936, !llvm.loop !937

; <label>:4:                                      ; preds = %1
  %5 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !938
  %6 = icmp ne %struct._WINDOW_REC* %5, null, !dbg !942
  br i1 %6, label %7, label %8, !dbg !938

; <label>:7:                                      ; preds = %4
  br label %9, !dbg !943

; <label>:8:                                      ; preds = %4
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.window_destroy, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0)), !dbg !946
  br label %99, !dbg !949

; <label>:9:                                      ; preds = %7
  br label %10, !dbg !950

; <label>:10:                                     ; preds = %9
  %11 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !952
  %12 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %11, i32 0, i32 11, !dbg !954
  %13 = load i8, i8* %12, align 8, !dbg !954
  %14 = lshr i8 %13, 2, !dbg !954
  %15 = and i8 %14, 1, !dbg !954
  %16 = zext i8 %15 to i32, !dbg !954
  %17 = icmp ne i32 %16, 0, !dbg !952
  br i1 %17, label %18, label %19, !dbg !955

; <label>:18:                                     ; preds = %10
  br label %99, !dbg !956

; <label>:19:                                     ; preds = %10
  %20 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !958
  %21 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %20, i32 0, i32 11, !dbg !959
  %22 = load i8, i8* %21, align 8, !dbg !960
  %23 = and i8 %22, -5, !dbg !960
  %24 = or i8 %23, 4, !dbg !960
  store i8 %24, i8* %21, align 8, !dbg !960
  %25 = load %struct._GSList*, %struct._GSList** @windows, align 8, !dbg !961
  %26 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !962
  %27 = bitcast %struct._WINDOW_REC* %26 to i8*, !dbg !962
  %28 = call %struct._GSList* @g_slist_remove(%struct._GSList* %25, i8* %27), !dbg !963
  store %struct._GSList* %28, %struct._GSList** @windows, align 8, !dbg !964
  %29 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !965
  %30 = call %struct._GSequenceNode* @windows_seq_window_lookup(%struct._WINDOW_REC* %29), !dbg !966
  store %struct._GSequenceNode* %30, %struct._GSequenceNode** %3, align 8, !dbg !967
  %31 = load %struct._GSequenceNode*, %struct._GSequenceNode** %3, align 8, !dbg !968
  %32 = icmp ne %struct._GSequenceNode* %31, null, !dbg !970
  br i1 %32, label %33, label %35, !dbg !971

; <label>:33:                                     ; preds = %19
  %34 = load %struct._GSequenceNode*, %struct._GSequenceNode** %3, align 8, !dbg !972
  call void @g_sequence_remove(%struct._GSequenceNode* %34), !dbg !974
  br label %35, !dbg !974

; <label>:35:                                     ; preds = %33, %19
  %36 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !975
  %37 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !977
  %38 = icmp eq %struct._WINDOW_REC* %36, %37, !dbg !978
  br i1 %38, label %39, label %48, !dbg !979

; <label>:39:                                     ; preds = %35
  store %struct._WINDOW_REC* null, %struct._WINDOW_REC** @active_win, align 8, !dbg !980
  %40 = load %struct._GSList*, %struct._GSList** @windows, align 8, !dbg !982
  %41 = icmp ne %struct._GSList* %40, null, !dbg !984
  br i1 %41, label %42, label %47, !dbg !985

; <label>:42:                                     ; preds = %39
  %43 = load %struct._GSList*, %struct._GSList** @windows, align 8, !dbg !986
  %44 = getelementptr inbounds %struct._GSList, %struct._GSList* %43, i32 0, i32 0, !dbg !987
  %45 = load i8*, i8** %44, align 8, !dbg !987
  %46 = bitcast i8* %45 to %struct._WINDOW_REC*, !dbg !986
  call void @window_set_active(%struct._WINDOW_REC* %46), !dbg !988
  br label %47, !dbg !988

; <label>:47:                                     ; preds = %42, %39
  br label %48, !dbg !989

; <label>:48:                                     ; preds = %47, %35
  br label %49, !dbg !990

; <label>:49:                                     ; preds = %54, %48
  %50 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !991
  %51 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %50, i32 0, i32 4, !dbg !993
  %52 = load %struct._GSList*, %struct._GSList** %51, align 8, !dbg !993
  %53 = icmp ne %struct._GSList* %52, null, !dbg !994
  br i1 %53, label %54, label %61, !dbg !995

; <label>:54:                                     ; preds = %49
  %55 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !996
  %56 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %55, i32 0, i32 4, !dbg !997
  %57 = load %struct._GSList*, %struct._GSList** %56, align 8, !dbg !997
  %58 = getelementptr inbounds %struct._GSList, %struct._GSList* %57, i32 0, i32 0, !dbg !998
  %59 = load i8*, i8** %58, align 8, !dbg !998
  %60 = bitcast i8* %59 to %struct._WI_ITEM_REC*, !dbg !996
  call void @window_item_destroy(%struct._WI_ITEM_REC* %60), !dbg !999
  br label %49, !dbg !1000, !llvm.loop !1002

; <label>:61:                                     ; preds = %49
  %62 = call i32 @settings_get_bool(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0)), !dbg !1003
  %63 = icmp ne i32 %62, 0, !dbg !1003
  br i1 %63, label %64, label %68, !dbg !1005

; <label>:64:                                     ; preds = %61
  %65 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !1006
  %66 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %65, i32 0, i32 0, !dbg !1007
  %67 = load i32, i32* %66, align 8, !dbg !1007
  call void @windows_pack(i32 %67), !dbg !1008
  br label %68, !dbg !1008

; <label>:68:                                     ; preds = %64, %61
  %69 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !1009
  %70 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i32 1, %struct._WINDOW_REC* %69), !dbg !1010
  br label %71, !dbg !1011

; <label>:71:                                     ; preds = %76, %68
  %72 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !1012
  %73 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %72, i32 0, i32 10, !dbg !1013
  %74 = load %struct._GSList*, %struct._GSList** %73, align 8, !dbg !1013
  %75 = icmp ne %struct._GSList* %74, null, !dbg !1014
  br i1 %75, label %76, label %84, !dbg !1015

; <label>:76:                                     ; preds = %71
  %77 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !1016
  %78 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !1017
  %79 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %78, i32 0, i32 10, !dbg !1018
  %80 = load %struct._GSList*, %struct._GSList** %79, align 8, !dbg !1018
  %81 = getelementptr inbounds %struct._GSList, %struct._GSList* %80, i32 0, i32 0, !dbg !1019
  %82 = load i8*, i8** %81, align 8, !dbg !1019
  %83 = bitcast i8* %82 to %struct.WINDOW_BIND_REC*, !dbg !1017
  call void @window_bind_destroy(%struct._WINDOW_REC* %77, %struct.WINDOW_BIND_REC* %83), !dbg !1020
  br label %71, !dbg !1021, !llvm.loop !1022

; <label>:84:                                     ; preds = %71
  %85 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !1023
  %86 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %85, i32 0, i32 15, !dbg !1024
  %87 = load i8*, i8** %86, align 8, !dbg !1024
  call void @g_free(i8* %87), !dbg !1025
  %88 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !1026
  %89 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %88, i32 0, i32 8, !dbg !1027
  %90 = load i8*, i8** %89, align 8, !dbg !1027
  call void @g_free(i8* %90), !dbg !1028
  %91 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !1029
  %92 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %91, i32 0, i32 18, !dbg !1030
  %93 = load i8*, i8** %92, align 8, !dbg !1030
  call void @g_free(i8* %93), !dbg !1031
  %94 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !1032
  %95 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %94, i32 0, i32 1, !dbg !1033
  %96 = load i8*, i8** %95, align 8, !dbg !1033
  call void @g_free(i8* %96), !dbg !1034
  %97 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !1035
  %98 = bitcast %struct._WINDOW_REC* %97 to i8*, !dbg !1035
  call void @g_free(i8* %98), !dbg !1036
  br label %99, !dbg !1037

; <label>:99:                                     ; preds = %84, %18, %8
  ret void, !dbg !1038
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct._GSequenceNode* @windows_seq_window_lookup(%struct._WINDOW_REC*) #0 !dbg !1039 {
  %2 = alloca %struct._WINDOW_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %2, metadata !1040, metadata !772), !dbg !1041
  %3 = load %struct._GSequence*, %struct._GSequence** @windows_seq, align 8, !dbg !1042
  %4 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !1043
  %5 = bitcast %struct._WINDOW_REC* %4 to i8*, !dbg !1043
  %6 = call %struct._GSequenceNode* @g_sequence_lookup(%struct._GSequence* %3, i8* %5, i32 (i8*, i8*, i8*)* bitcast (i32 (%struct._WINDOW_REC*, %struct._WINDOW_REC*)* @window_refnum_cmp to i32 (i8*, i8*, i8*)*), i8* null), !dbg !1044
  ret %struct._GSequenceNode* %6, !dbg !1045
}

declare void @g_sequence_remove(%struct._GSequenceNode*) #2

declare void @window_item_destroy(%struct._WI_ITEM_REC*) #2

; Function Attrs: nounwind uwtable
define internal void @windows_pack(i32) #0 !dbg !1046 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._GSequenceNode*, align 8
  %6 = alloca %struct._GSequenceNode*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1049, metadata !772), !dbg !1050
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !1051, metadata !772), !dbg !1052
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1053, metadata !772), !dbg !1054
  call void @llvm.dbg.declare(metadata %struct._GSequenceNode** %5, metadata !1055, metadata !772), !dbg !1056
  call void @llvm.dbg.declare(metadata %struct._GSequenceNode** %6, metadata !1057, metadata !772), !dbg !1058
  %7 = load i32, i32* %2, align 4, !dbg !1059
  %8 = add nsw i32 %7, 1, !dbg !1060
  store i32 %8, i32* %4, align 4, !dbg !1061
  %9 = call %struct._GSequenceNode* @windows_seq_end(), !dbg !1062
  store %struct._GSequenceNode* %9, %struct._GSequenceNode** %6, align 8, !dbg !1063
  %10 = load i32, i32* %4, align 4, !dbg !1064
  %11 = call %struct._GSequenceNode* @windows_seq_refnum_lookup(i32 %10), !dbg !1065
  store %struct._GSequenceNode* %11, %struct._GSequenceNode** %5, align 8, !dbg !1066
  %12 = load %struct._GSequenceNode*, %struct._GSequenceNode** %5, align 8, !dbg !1067
  %13 = icmp eq %struct._GSequenceNode* %12, null, !dbg !1069
  br i1 %13, label %14, label %15, !dbg !1070

; <label>:14:                                     ; preds = %1
  br label %50, !dbg !1071

; <label>:15:                                     ; preds = %1
  br label %16, !dbg !1073

; <label>:16:                                     ; preds = %41, %15
  %17 = load %struct._GSequenceNode*, %struct._GSequenceNode** %5, align 8, !dbg !1074
  %18 = load %struct._GSequenceNode*, %struct._GSequenceNode** %6, align 8, !dbg !1076
  %19 = icmp ne %struct._GSequenceNode* %17, %18, !dbg !1077
  br i1 %19, label %20, label %50, !dbg !1078

; <label>:20:                                     ; preds = %16
  %21 = load %struct._GSequenceNode*, %struct._GSequenceNode** %5, align 8, !dbg !1079
  %22 = call i8* @g_sequence_get(%struct._GSequenceNode* %21), !dbg !1081
  %23 = bitcast i8* %22 to %struct._WINDOW_REC*, !dbg !1081
  store %struct._WINDOW_REC* %23, %struct._WINDOW_REC** %3, align 8, !dbg !1082
  %24 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1083
  %25 = icmp eq %struct._WINDOW_REC* %24, null, !dbg !1085
  br i1 %25, label %40, label %26, !dbg !1086

; <label>:26:                                     ; preds = %20
  %27 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1087
  %28 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %27, i32 0, i32 11, !dbg !1089
  %29 = load i8, i8* %28, align 8, !dbg !1089
  %30 = lshr i8 %29, 1, !dbg !1089
  %31 = and i8 %30, 1, !dbg !1089
  %32 = zext i8 %31 to i32, !dbg !1089
  %33 = icmp ne i32 %32, 0, !dbg !1087
  br i1 %33, label %40, label %34, !dbg !1090

; <label>:34:                                     ; preds = %26
  %35 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1091
  %36 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %35, i32 0, i32 0, !dbg !1093
  %37 = load i32, i32* %36, align 8, !dbg !1093
  %38 = load i32, i32* %4, align 4, !dbg !1094
  %39 = icmp ne i32 %37, %38, !dbg !1095
  br i1 %39, label %40, label %41, !dbg !1096

; <label>:40:                                     ; preds = %34, %26, %20
  br label %50, !dbg !1097

; <label>:41:                                     ; preds = %34
  %42 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1098
  %43 = load i32, i32* %4, align 4, !dbg !1099
  %44 = sub nsw i32 %43, 1, !dbg !1100
  call void @window_set_refnum0(%struct._WINDOW_REC* %42, i32 %44), !dbg !1101
  %45 = load %struct._GSequenceNode*, %struct._GSequenceNode** %5, align 8, !dbg !1102
  call void @windows_seq_changed(%struct._GSequenceNode* %45), !dbg !1103
  %46 = load i32, i32* %4, align 4, !dbg !1104
  %47 = add nsw i32 %46, 1, !dbg !1104
  store i32 %47, i32* %4, align 4, !dbg !1104
  %48 = load %struct._GSequenceNode*, %struct._GSequenceNode** %5, align 8, !dbg !1105
  %49 = call %struct._GSequenceNode* @g_sequence_iter_next(%struct._GSequenceNode* %48), !dbg !1106
  store %struct._GSequenceNode* %49, %struct._GSequenceNode** %5, align 8, !dbg !1107
  br label %16, !dbg !1108, !llvm.loop !1110

; <label>:50:                                     ; preds = %14, %40, %16
  ret void, !dbg !1111
}

; Function Attrs: nounwind uwtable
define void @window_bind_destroy(%struct._WINDOW_REC*, %struct.WINDOW_BIND_REC*) #0 !dbg !1112 {
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca %struct.WINDOW_BIND_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !1115, metadata !772), !dbg !1116
  store %struct.WINDOW_BIND_REC* %1, %struct.WINDOW_BIND_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.WINDOW_BIND_REC** %4, metadata !1117, metadata !772), !dbg !1118
  br label %5, !dbg !1119, !llvm.loop !1120

; <label>:5:                                      ; preds = %2
  %6 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1121
  %7 = icmp ne %struct._WINDOW_REC* %6, null, !dbg !1125
  br i1 %7, label %8, label %9, !dbg !1121

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !1126

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.window_bind_destroy, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0)), !dbg !1129
  br label %35, !dbg !1132

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !1133

; <label>:11:                                     ; preds = %10
  br label %12, !dbg !1135, !llvm.loop !1136

; <label>:12:                                     ; preds = %11
  %13 = load %struct.WINDOW_BIND_REC*, %struct.WINDOW_BIND_REC** %4, align 8, !dbg !1137
  %14 = icmp ne %struct.WINDOW_BIND_REC* %13, null, !dbg !1141
  br i1 %14, label %15, label %16, !dbg !1137

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !1142

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.window_bind_destroy, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0)), !dbg !1145
  br label %35, !dbg !1148

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !1149

; <label>:18:                                     ; preds = %17
  %19 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1151
  %20 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %19, i32 0, i32 10, !dbg !1152
  %21 = load %struct._GSList*, %struct._GSList** %20, align 8, !dbg !1152
  %22 = load %struct.WINDOW_BIND_REC*, %struct.WINDOW_BIND_REC** %4, align 8, !dbg !1153
  %23 = bitcast %struct.WINDOW_BIND_REC* %22 to i8*, !dbg !1153
  %24 = call %struct._GSList* @g_slist_remove(%struct._GSList* %21, i8* %23), !dbg !1154
  %25 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1155
  %26 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %25, i32 0, i32 10, !dbg !1156
  store %struct._GSList* %24, %struct._GSList** %26, align 8, !dbg !1157
  %27 = load %struct.WINDOW_BIND_REC*, %struct.WINDOW_BIND_REC** %4, align 8, !dbg !1158
  %28 = getelementptr inbounds %struct.WINDOW_BIND_REC, %struct.WINDOW_BIND_REC* %27, i32 0, i32 0, !dbg !1159
  %29 = load i8*, i8** %28, align 8, !dbg !1159
  call void @g_free(i8* %29), !dbg !1160
  %30 = load %struct.WINDOW_BIND_REC*, %struct.WINDOW_BIND_REC** %4, align 8, !dbg !1161
  %31 = getelementptr inbounds %struct.WINDOW_BIND_REC, %struct.WINDOW_BIND_REC* %30, i32 0, i32 1, !dbg !1162
  %32 = load i8*, i8** %31, align 8, !dbg !1162
  call void @g_free(i8* %32), !dbg !1163
  %33 = load %struct.WINDOW_BIND_REC*, %struct.WINDOW_BIND_REC** %4, align 8, !dbg !1164
  %34 = bitcast %struct.WINDOW_BIND_REC* %33 to i8*, !dbg !1164
  call void @g_free(i8* %34), !dbg !1165
  br label %35, !dbg !1166

; <label>:35:                                     ; preds = %18, %16, %9
  ret void, !dbg !1167
}

declare void @g_free(i8*) #2

; Function Attrs: nounwind uwtable
define void @window_auto_destroy(%struct._WINDOW_REC*) #0 !dbg !1169 {
  %2 = alloca %struct._WINDOW_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %2, metadata !1170, metadata !772), !dbg !1171
  %3 = call i32 @settings_get_bool(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0)), !dbg !1172
  %4 = icmp ne i32 %3, 0, !dbg !1172
  br i1 %4, label %5, label %34, !dbg !1174

; <label>:5:                                      ; preds = %1
  %6 = load %struct._GSList*, %struct._GSList** @windows, align 8, !dbg !1175
  %7 = getelementptr inbounds %struct._GSList, %struct._GSList* %6, i32 0, i32 1, !dbg !1177
  %8 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1177
  %9 = icmp ne %struct._GSList* %8, null, !dbg !1178
  br i1 %9, label %10, label %34, !dbg !1179

; <label>:10:                                     ; preds = %5
  %11 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !1180
  %12 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %11, i32 0, i32 4, !dbg !1181
  %13 = load %struct._GSList*, %struct._GSList** %12, align 8, !dbg !1181
  %14 = icmp eq %struct._GSList* %13, null, !dbg !1182
  br i1 %14, label %15, label %34, !dbg !1183

; <label>:15:                                     ; preds = %10
  %16 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !1184
  %17 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %16, i32 0, i32 10, !dbg !1185
  %18 = load %struct._GSList*, %struct._GSList** %17, align 8, !dbg !1185
  %19 = icmp eq %struct._GSList* %18, null, !dbg !1186
  br i1 %19, label %20, label %34, !dbg !1187

; <label>:20:                                     ; preds = %15
  %21 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !1188
  %22 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %21, i32 0, i32 9, !dbg !1189
  %23 = load i32, i32* %22, align 8, !dbg !1189
  %24 = icmp eq i32 %23, 0, !dbg !1190
  br i1 %24, label %25, label %34, !dbg !1191

; <label>:25:                                     ; preds = %20
  %26 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !1192
  %27 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %26, i32 0, i32 11, !dbg !1193
  %28 = load i8, i8* %27, align 8, !dbg !1193
  %29 = and i8 %28, 1, !dbg !1193
  %30 = zext i8 %29 to i32, !dbg !1193
  %31 = icmp ne i32 %30, 0, !dbg !1192
  br i1 %31, label %34, label %32, !dbg !1194

; <label>:32:                                     ; preds = %25
  %33 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !1196
  call void @window_destroy(%struct._WINDOW_REC* %33), !dbg !1197
  br label %34, !dbg !1197

; <label>:34:                                     ; preds = %32, %25, %20, %15, %10, %5, %1
  ret void, !dbg !1198
}

; Function Attrs: nounwind uwtable
define void @window_change_server(%struct._WINDOW_REC*, i8*) #0 !dbg !1199 {
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca %struct._SERVER_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !1202, metadata !772), !dbg !1203
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1204, metadata !772), !dbg !1205
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !1206, metadata !772), !dbg !1207
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %6, metadata !1208, metadata !772), !dbg !1209
  %7 = load i8*, i8** %4, align 8, !dbg !1210
  %8 = icmp ne i8* %7, null, !dbg !1212
  br i1 %8, label %9, label %20, !dbg !1213

; <label>:9:                                      ; preds = %2
  %10 = load i8*, i8** %4, align 8, !dbg !1214
  %11 = call i8* @module_check_cast(i8* %10, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0)), !dbg !1216
  %12 = bitcast i8* %11 to %struct._SERVER_REC*, !dbg !1217
  %13 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %12, i32 0, i32 8, !dbg !1218
  %14 = load i8, i8* %13, align 8, !dbg !1218
  %15 = lshr i8 %14, 1, !dbg !1218
  %16 = and i8 %15, 1, !dbg !1218
  %17 = zext i8 %16 to i32, !dbg !1218
  %18 = icmp ne i32 %17, 0, !dbg !1219
  br i1 %18, label %19, label %20, !dbg !1220

; <label>:19:                                     ; preds = %9
  br label %62, !dbg !1221

; <label>:20:                                     ; preds = %9, %2
  %21 = load i8*, i8** %4, align 8, !dbg !1222
  %22 = icmp eq i8* %21, null, !dbg !1224
  br i1 %22, label %23, label %24, !dbg !1225

; <label>:23:                                     ; preds = %20
  store %struct._SERVER_REC* null, %struct._SERVER_REC** %6, align 8, !dbg !1226
  store %struct._SERVER_REC* null, %struct._SERVER_REC** %5, align 8, !dbg !1228
  br label %36, !dbg !1229

; <label>:24:                                     ; preds = %20
  %25 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !1230
  %26 = load i8*, i8** %4, align 8, !dbg !1233
  %27 = call %struct._GSList* @g_slist_find(%struct._GSList* %25, i8* %26), !dbg !1234
  %28 = icmp ne %struct._GSList* %27, null, !dbg !1235
  br i1 %28, label %29, label %32, !dbg !1234

; <label>:29:                                     ; preds = %24
  %30 = load i8*, i8** %4, align 8, !dbg !1236
  %31 = bitcast i8* %30 to %struct._SERVER_REC*, !dbg !1236
  store %struct._SERVER_REC* %31, %struct._SERVER_REC** %5, align 8, !dbg !1238
  store %struct._SERVER_REC* null, %struct._SERVER_REC** %6, align 8, !dbg !1239
  br label %35, !dbg !1240

; <label>:32:                                     ; preds = %24
  store %struct._SERVER_REC* null, %struct._SERVER_REC** %5, align 8, !dbg !1241
  %33 = load i8*, i8** %4, align 8, !dbg !1243
  %34 = bitcast i8* %33 to %struct._SERVER_REC*, !dbg !1243
  store %struct._SERVER_REC* %34, %struct._SERVER_REC** %6, align 8, !dbg !1244
  br label %35

; <label>:35:                                     ; preds = %32, %29
  br label %36

; <label>:36:                                     ; preds = %35, %23
  %37 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1245
  %38 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %37, i32 0, i32 7, !dbg !1247
  %39 = load %struct._SERVER_REC*, %struct._SERVER_REC** %38, align 8, !dbg !1247
  %40 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !1248
  %41 = icmp ne %struct._SERVER_REC* %39, %40, !dbg !1249
  br i1 %41, label %42, label %49, !dbg !1250

; <label>:42:                                     ; preds = %36
  %43 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !1251
  %44 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1253
  %45 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %44, i32 0, i32 7, !dbg !1254
  store %struct._SERVER_REC* %43, %struct._SERVER_REC** %45, align 8, !dbg !1255
  %46 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1256
  %47 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !1257
  %48 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0), i32 2, %struct._WINDOW_REC* %46, %struct._SERVER_REC* %47), !dbg !1258
  br label %49, !dbg !1259

; <label>:49:                                     ; preds = %42, %36
  %50 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1260
  %51 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %50, i32 0, i32 6, !dbg !1262
  %52 = load %struct._SERVER_REC*, %struct._SERVER_REC** %51, align 8, !dbg !1262
  %53 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1263
  %54 = icmp ne %struct._SERVER_REC* %52, %53, !dbg !1264
  br i1 %54, label %55, label %62, !dbg !1265

; <label>:55:                                     ; preds = %49
  %56 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1266
  %57 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1268
  %58 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %57, i32 0, i32 6, !dbg !1269
  store %struct._SERVER_REC* %56, %struct._SERVER_REC** %58, align 8, !dbg !1270
  %59 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1271
  %60 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1272
  %61 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0), i32 2, %struct._WINDOW_REC* %59, %struct._SERVER_REC* %60), !dbg !1273
  br label %62, !dbg !1274

; <label>:62:                                     ; preds = %19, %55, %49
  ret void, !dbg !1275
}

declare i8* @module_check_cast(i8*, i32, i8*) #2

declare %struct._GSList* @g_slist_find(%struct._GSList*, i8*) #2

; Function Attrs: nounwind uwtable
define void @window_set_refnum(%struct._WINDOW_REC*, i32) #0 !dbg !1276 {
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._GSequenceNode*, align 8
  %6 = alloca %struct._GSequenceNode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._WINDOW_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !1279, metadata !772), !dbg !1280
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1281, metadata !772), !dbg !1282
  call void @llvm.dbg.declare(metadata %struct._GSequenceNode** %5, metadata !1283, metadata !772), !dbg !1284
  call void @llvm.dbg.declare(metadata %struct._GSequenceNode** %6, metadata !1285, metadata !772), !dbg !1286
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1287, metadata !772), !dbg !1288
  br label %9, !dbg !1289, !llvm.loop !1290

; <label>:9:                                      ; preds = %2
  %10 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1291
  %11 = icmp ne %struct._WINDOW_REC* %10, null, !dbg !1295
  br i1 %11, label %12, label %13, !dbg !1291

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !1296

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.window_set_refnum, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0)), !dbg !1299
  br label %74, !dbg !1302

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !1303

; <label>:15:                                     ; preds = %14
  br label %16, !dbg !1305, !llvm.loop !1306

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %4, align 4, !dbg !1307
  %18 = icmp sge i32 %17, 1, !dbg !1311
  br i1 %18, label %19, label %20, !dbg !1307

; <label>:19:                                     ; preds = %16
  br label %21, !dbg !1312

; <label>:20:                                     ; preds = %16
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.window_set_refnum, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0)), !dbg !1315
  br label %74, !dbg !1318

; <label>:21:                                     ; preds = %19
  br label %22, !dbg !1319

; <label>:22:                                     ; preds = %21
  %23 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1321
  %24 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %23, i32 0, i32 0, !dbg !1323
  %25 = load i32, i32* %24, align 8, !dbg !1323
  %26 = load i32, i32* %4, align 4, !dbg !1324
  %27 = icmp eq i32 %25, %26, !dbg !1325
  br i1 %27, label %28, label %29, !dbg !1326

; <label>:28:                                     ; preds = %22
  br label %74, !dbg !1327

; <label>:29:                                     ; preds = %22
  %30 = load i32, i32* %4, align 4, !dbg !1329
  %31 = call %struct._GSequenceNode* @windows_seq_refnum_lookup(i32 %30), !dbg !1330
  store %struct._GSequenceNode* %31, %struct._GSequenceNode** %5, align 8, !dbg !1331
  %32 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1332
  %33 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %32, i32 0, i32 0, !dbg !1333
  %34 = load i32, i32* %33, align 8, !dbg !1333
  %35 = call %struct._GSequenceNode* @windows_seq_refnum_lookup(i32 %34), !dbg !1334
  store %struct._GSequenceNode* %35, %struct._GSequenceNode** %6, align 8, !dbg !1335
  %36 = load %struct._GSequenceNode*, %struct._GSequenceNode** %5, align 8, !dbg !1336
  %37 = icmp ne %struct._GSequenceNode* %36, null, !dbg !1338
  br i1 %37, label %38, label %52, !dbg !1339

; <label>:38:                                     ; preds = %29
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %8, metadata !1340, metadata !772), !dbg !1342
  %39 = load %struct._GSequenceNode*, %struct._GSequenceNode** %5, align 8, !dbg !1343
  %40 = call i8* @g_sequence_get(%struct._GSequenceNode* %39), !dbg !1344
  %41 = bitcast i8* %40 to %struct._WINDOW_REC*, !dbg !1344
  store %struct._WINDOW_REC* %41, %struct._WINDOW_REC** %8, align 8, !dbg !1342
  %42 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1345
  %43 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %42, i32 0, i32 0, !dbg !1346
  %44 = load i32, i32* %43, align 8, !dbg !1346
  %45 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %8, align 8, !dbg !1347
  %46 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %45, i32 0, i32 0, !dbg !1348
  store i32 %44, i32* %46, align 8, !dbg !1349
  %47 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %8, align 8, !dbg !1350
  %48 = load i32, i32* %4, align 4, !dbg !1351
  %49 = sext i32 %48 to i64, !dbg !1352
  %50 = inttoptr i64 %49 to i8*, !dbg !1353
  %51 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0), i32 2, %struct._WINDOW_REC* %47, i8* %50), !dbg !1354
  br label %52, !dbg !1355

; <label>:52:                                     ; preds = %38, %29
  %53 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1356
  %54 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %53, i32 0, i32 0, !dbg !1357
  %55 = load i32, i32* %54, align 8, !dbg !1357
  store i32 %55, i32* %7, align 4, !dbg !1358
  %56 = load i32, i32* %4, align 4, !dbg !1359
  %57 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1360
  %58 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %57, i32 0, i32 0, !dbg !1361
  store i32 %56, i32* %58, align 8, !dbg !1362
  %59 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1363
  %60 = load i32, i32* %7, align 4, !dbg !1364
  %61 = sext i32 %60 to i64, !dbg !1365
  %62 = inttoptr i64 %61 to i8*, !dbg !1366
  %63 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0), i32 2, %struct._WINDOW_REC* %59, i8* %62), !dbg !1367
  %64 = load %struct._GSequenceNode*, %struct._GSequenceNode** %6, align 8, !dbg !1368
  %65 = icmp ne %struct._GSequenceNode* %64, null, !dbg !1370
  br i1 %65, label %66, label %72, !dbg !1371

; <label>:66:                                     ; preds = %52
  %67 = load %struct._GSequenceNode*, %struct._GSequenceNode** %5, align 8, !dbg !1372
  %68 = icmp ne %struct._GSequenceNode* %67, null, !dbg !1374
  br i1 %68, label %69, label %72, !dbg !1375

; <label>:69:                                     ; preds = %66
  %70 = load %struct._GSequenceNode*, %struct._GSequenceNode** %5, align 8, !dbg !1376
  %71 = load %struct._GSequenceNode*, %struct._GSequenceNode** %6, align 8, !dbg !1378
  call void @g_sequence_swap(%struct._GSequenceNode* %70, %struct._GSequenceNode* %71), !dbg !1379
  br label %74, !dbg !1380

; <label>:72:                                     ; preds = %66, %52
  %73 = load %struct._GSequenceNode*, %struct._GSequenceNode** %6, align 8, !dbg !1381
  call void @windows_seq_changed(%struct._GSequenceNode* %73), !dbg !1383
  br label %74

; <label>:74:                                     ; preds = %13, %20, %28, %72, %69
  ret void, !dbg !1384
}

; Function Attrs: nounwind uwtable
define internal %struct._GSequenceNode* @windows_seq_refnum_lookup(i32) #0 !dbg !1385 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1388, metadata !772), !dbg !1389
  %3 = load %struct._GSequence*, %struct._GSequence** @windows_seq, align 8, !dbg !1390
  %4 = load i32, i32* %2, align 4, !dbg !1391
  %5 = sext i32 %4 to i64, !dbg !1392
  %6 = inttoptr i64 %5 to i8*, !dbg !1393
  %7 = call %struct._GSequenceNode* @g_sequence_lookup(%struct._GSequence* %3, i8* %6, i32 (i8*, i8*, i8*)* bitcast (i32 (%struct._WINDOW_REC*, i8*)* @window_refnum_lookup to i32 (i8*, i8*, i8*)*), i8* null), !dbg !1394
  ret %struct._GSequenceNode* %7, !dbg !1395
}

declare i8* @g_sequence_get(%struct._GSequenceNode*) #2

declare void @g_sequence_swap(%struct._GSequenceNode*, %struct._GSequenceNode*) #2

; Function Attrs: nounwind uwtable
define internal void @windows_seq_changed(%struct._GSequenceNode*) #0 !dbg !1396 {
  %2 = alloca %struct._GSequenceNode*, align 8
  store %struct._GSequenceNode* %0, %struct._GSequenceNode** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._GSequenceNode** %2, metadata !1399, metadata !772), !dbg !1400
  %3 = load %struct._GSequenceNode*, %struct._GSequenceNode** %2, align 8, !dbg !1401
  call void @g_sequence_sort_changed(%struct._GSequenceNode* %3, i32 (i8*, i8*, i8*)* bitcast (i32 (%struct._WINDOW_REC*, %struct._WINDOW_REC*)* @window_refnum_cmp to i32 (i8*, i8*, i8*)*), i8* null), !dbg !1402
  ret void, !dbg !1403
}

; Function Attrs: nounwind uwtable
define void @window_set_name(%struct._WINDOW_REC*, i8*) #0 !dbg !1404 {
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !1407, metadata !772), !dbg !1408
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1409, metadata !772), !dbg !1410
  %5 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1411
  %6 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %5, i32 0, i32 1, !dbg !1412
  %7 = load i8*, i8** %6, align 8, !dbg !1412
  call void @g_free(i8* %7), !dbg !1413
  %8 = load i8*, i8** %4, align 8, !dbg !1414
  %9 = icmp eq i8* %8, null, !dbg !1415
  br i1 %9, label %15, label %10, !dbg !1416

; <label>:10:                                     ; preds = %2
  %11 = load i8*, i8** %4, align 8, !dbg !1417
  %12 = load i8, i8* %11, align 1, !dbg !1419
  %13 = sext i8 %12 to i32, !dbg !1419
  %14 = icmp eq i32 %13, 0, !dbg !1420
  br i1 %14, label %15, label %16, !dbg !1421

; <label>:15:                                     ; preds = %10, %2
  br label %19, !dbg !1422

; <label>:16:                                     ; preds = %10
  %17 = load i8*, i8** %4, align 8, !dbg !1424
  %18 = call noalias i8* @g_strdup(i8* %17), !dbg !1426
  br label %19, !dbg !1427

; <label>:19:                                     ; preds = %16, %15
  %20 = phi i8* [ null, %15 ], [ %18, %16 ], !dbg !1428
  %21 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1430
  %22 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %21, i32 0, i32 1, !dbg !1431
  store i8* %20, i8** %22, align 8, !dbg !1432
  %23 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1433
  %24 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct._WINDOW_REC* %23), !dbg !1434
  ret void, !dbg !1435
}

declare noalias i8* @g_strdup(i8*) #2

; Function Attrs: nounwind uwtable
define void @window_set_history(%struct._WINDOW_REC*, i8*) #0 !dbg !1436 {
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !1437, metadata !772), !dbg !1438
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1439, metadata !772), !dbg !1440
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1441, metadata !772), !dbg !1442
  %6 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1443
  %7 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %6, i32 0, i32 13, !dbg !1444
  %8 = load i8*, i8** %7, align 8, !dbg !1444
  store i8* %8, i8** %5, align 8, !dbg !1445
  %9 = load i8*, i8** %4, align 8, !dbg !1446
  %10 = icmp eq i8* %9, null, !dbg !1448
  br i1 %10, label %16, label %11, !dbg !1449

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %4, align 8, !dbg !1450
  %13 = load i8, i8* %12, align 1, !dbg !1452
  %14 = sext i8 %13 to i32, !dbg !1452
  %15 = icmp eq i32 %14, 0, !dbg !1453
  br i1 %15, label %16, label %19, !dbg !1454

; <label>:16:                                     ; preds = %11, %2
  %17 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1455
  %18 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %17, i32 0, i32 13, !dbg !1456
  store i8* null, i8** %18, align 8, !dbg !1457
  br label %24, !dbg !1455

; <label>:19:                                     ; preds = %11
  %20 = load i8*, i8** %4, align 8, !dbg !1458
  %21 = call noalias i8* @g_strdup(i8* %20), !dbg !1459
  %22 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1460
  %23 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %22, i32 0, i32 13, !dbg !1461
  store i8* %21, i8** %23, align 8, !dbg !1462
  br label %24

; <label>:24:                                     ; preds = %19, %16
  %25 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1463
  %26 = load i8*, i8** %5, align 8, !dbg !1464
  %27 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0), i32 2, %struct._WINDOW_REC* %25, i8* %26), !dbg !1465
  %28 = load i8*, i8** %5, align 8, !dbg !1466
  call void @g_free(i8* %28), !dbg !1467
  ret void, !dbg !1468
}

; Function Attrs: nounwind uwtable
define void @window_clear_history(%struct._WINDOW_REC*, i8*) #0 !dbg !1469 {
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !1470, metadata !772), !dbg !1471
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1472, metadata !772), !dbg !1473
  %5 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1474
  %6 = load i8*, i8** %4, align 8, !dbg !1475
  %7 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0), i32 2, %struct._WINDOW_REC* %5, i8* %6), !dbg !1476
  ret void, !dbg !1477
}

; Function Attrs: nounwind uwtable
define void @window_set_level(%struct._WINDOW_REC*, i32) #0 !dbg !1478 {
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca i32, align 4
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !1479, metadata !772), !dbg !1480
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1481, metadata !772), !dbg !1482
  br label %5, !dbg !1483, !llvm.loop !1484

; <label>:5:                                      ; preds = %2
  %6 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1485
  %7 = icmp ne %struct._WINDOW_REC* %6, null, !dbg !1489
  br i1 %7, label %8, label %9, !dbg !1485

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !1490

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.window_set_level, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0)), !dbg !1493
  br label %17, !dbg !1496

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !1497

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %4, align 4, !dbg !1499
  %13 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1500
  %14 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %13, i32 0, i32 9, !dbg !1501
  store i32 %12, i32* %14, align 8, !dbg !1502
  %15 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1503
  %16 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i32 0, i32 0), i32 1, %struct._WINDOW_REC* %15), !dbg !1504
  br label %17, !dbg !1505

; <label>:17:                                     ; preds = %11, %9
  ret void, !dbg !1506
}

; Function Attrs: nounwind uwtable
define void @window_set_immortal(%struct._WINDOW_REC*, i32) #0 !dbg !1508 {
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca i32, align 4
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !1509, metadata !772), !dbg !1510
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1511, metadata !772), !dbg !1512
  br label %5, !dbg !1513, !llvm.loop !1514

; <label>:5:                                      ; preds = %2
  %6 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1515
  %7 = icmp ne %struct._WINDOW_REC* %6, null, !dbg !1519
  br i1 %7, label %8, label %9, !dbg !1515

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !1520

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.window_set_immortal, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0)), !dbg !1523
  br label %23, !dbg !1526

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !1527

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %4, align 4, !dbg !1529
  %13 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1530
  %14 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %13, i32 0, i32 11, !dbg !1531
  %15 = trunc i32 %12 to i8, !dbg !1532
  %16 = load i8, i8* %14, align 8, !dbg !1532
  %17 = and i8 %15, 1, !dbg !1532
  %18 = and i8 %16, -2, !dbg !1532
  %19 = or i8 %18, %17, !dbg !1532
  store i8 %19, i8* %14, align 8, !dbg !1532
  %20 = zext i8 %17 to i32, !dbg !1532
  %21 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1533
  %22 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i32 0, i32 0), i32 1, %struct._WINDOW_REC* %21), !dbg !1534
  br label %23, !dbg !1535

; <label>:23:                                     ; preds = %11, %9
  ret void, !dbg !1536
}

; Function Attrs: nounwind uwtable
define i8* @window_get_active_name(%struct._WINDOW_REC*) #0 !dbg !1538 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._WINDOW_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !1541, metadata !772), !dbg !1542
  br label %4, !dbg !1543, !llvm.loop !1544

; <label>:4:                                      ; preds = %1
  %5 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1545
  %6 = icmp ne %struct._WINDOW_REC* %5, null, !dbg !1549
  br i1 %6, label %7, label %8, !dbg !1545

; <label>:7:                                      ; preds = %4
  br label %9, !dbg !1550

; <label>:8:                                      ; preds = %4
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.window_get_active_name, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0)), !dbg !1553
  store i8* null, i8** %2, align 8, !dbg !1556
  br label %25, !dbg !1556

; <label>:9:                                      ; preds = %7
  br label %10, !dbg !1557

; <label>:10:                                     ; preds = %9
  %11 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1559
  %12 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %11, i32 0, i32 5, !dbg !1561
  %13 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %12, align 8, !dbg !1561
  %14 = icmp ne %struct._WI_ITEM_REC* %13, null, !dbg !1562
  br i1 %14, label %15, label %21, !dbg !1563

; <label>:15:                                     ; preds = %10
  %16 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1564
  %17 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %16, i32 0, i32 5, !dbg !1565
  %18 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %17, align 8, !dbg !1565
  %19 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %18, i32 0, i32 5, !dbg !1566
  %20 = load i8*, i8** %19, align 8, !dbg !1566
  store i8* %20, i8** %2, align 8, !dbg !1567
  br label %25, !dbg !1567

; <label>:21:                                     ; preds = %10
  %22 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1568
  %23 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %22, i32 0, i32 1, !dbg !1569
  %24 = load i8*, i8** %23, align 8, !dbg !1569
  store i8* %24, i8** %2, align 8, !dbg !1570
  br label %25, !dbg !1570

; <label>:25:                                     ; preds = %21, %15, %8
  %26 = load i8*, i8** %2, align 8, !dbg !1571
  ret i8* %26, !dbg !1571
}

; Function Attrs: nounwind uwtable
define %struct._WINDOW_REC* @window_find_level(i8*, i32) #0 !dbg !1572 {
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca %struct._WINDOW_REC*, align 8
  %8 = alloca %struct._WINDOW_REC*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1575, metadata !772), !dbg !1576
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1577, metadata !772), !dbg !1578
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !1579, metadata !772), !dbg !1580
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %7, metadata !1581, metadata !772), !dbg !1582
  store %struct._WINDOW_REC* null, %struct._WINDOW_REC** %7, align 8, !dbg !1583
  %9 = load %struct._GSList*, %struct._GSList** @windows, align 8, !dbg !1584
  store %struct._GSList* %9, %struct._GSList** %6, align 8, !dbg !1586
  br label %10, !dbg !1587

; <label>:10:                                     ; preds = %55, %2
  %11 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1588
  %12 = icmp ne %struct._GSList* %11, null, !dbg !1591
  br i1 %12, label %13, label %59, !dbg !1592

; <label>:13:                                     ; preds = %10
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %8, metadata !1593, metadata !772), !dbg !1595
  %14 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1596
  %15 = getelementptr inbounds %struct._GSList, %struct._GSList* %14, i32 0, i32 0, !dbg !1597
  %16 = load i8*, i8** %15, align 8, !dbg !1597
  %17 = bitcast i8* %16 to %struct._WINDOW_REC*, !dbg !1596
  store %struct._WINDOW_REC* %17, %struct._WINDOW_REC** %8, align 8, !dbg !1595
  %18 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %8, align 8, !dbg !1598
  %19 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %18, i32 0, i32 9, !dbg !1600
  %20 = load i32, i32* %19, align 8, !dbg !1600
  %21 = load i32, i32* %5, align 4, !dbg !1601
  %22 = and i32 %20, %21, !dbg !1602
  %23 = icmp ne i32 %22, 0, !dbg !1602
  br i1 %23, label %24, label %54, !dbg !1603

; <label>:24:                                     ; preds = %13
  %25 = load i8*, i8** %4, align 8, !dbg !1604
  %26 = icmp eq i8* %25, null, !dbg !1606
  br i1 %26, label %34, label %27, !dbg !1607

; <label>:27:                                     ; preds = %24
  %28 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %8, align 8, !dbg !1608
  %29 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %28, i32 0, i32 6, !dbg !1610
  %30 = load %struct._SERVER_REC*, %struct._SERVER_REC** %29, align 8, !dbg !1610
  %31 = load i8*, i8** %4, align 8, !dbg !1611
  %32 = bitcast i8* %31 to %struct._SERVER_REC*, !dbg !1611
  %33 = icmp eq %struct._SERVER_REC* %30, %32, !dbg !1612
  br i1 %33, label %34, label %54, !dbg !1613

; <label>:34:                                     ; preds = %27, %24
  %35 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %8, align 8, !dbg !1614
  %36 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %35, i32 0, i32 4, !dbg !1617
  %37 = load %struct._GSList*, %struct._GSList** %36, align 8, !dbg !1617
  %38 = icmp eq %struct._GSList* %37, null, !dbg !1618
  br i1 %38, label %39, label %41, !dbg !1619

; <label>:39:                                     ; preds = %34
  %40 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %8, align 8, !dbg !1620
  store %struct._WINDOW_REC* %40, %struct._WINDOW_REC** %3, align 8, !dbg !1621
  br label %61, !dbg !1621

; <label>:41:                                     ; preds = %34
  %42 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %7, align 8, !dbg !1622
  %43 = icmp eq %struct._WINDOW_REC* %42, null, !dbg !1624
  br i1 %43, label %44, label %46, !dbg !1625

; <label>:44:                                     ; preds = %41
  %45 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %8, align 8, !dbg !1626
  store %struct._WINDOW_REC* %45, %struct._WINDOW_REC** %7, align 8, !dbg !1627
  br label %53, !dbg !1628

; <label>:46:                                     ; preds = %41
  %47 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1629
  %48 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %8, align 8, !dbg !1631
  %49 = icmp eq %struct._WINDOW_REC* %47, %48, !dbg !1632
  br i1 %49, label %50, label %52, !dbg !1633

; <label>:50:                                     ; preds = %46
  %51 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %8, align 8, !dbg !1634
  store %struct._WINDOW_REC* %51, %struct._WINDOW_REC** %7, align 8, !dbg !1636
  br label %52, !dbg !1637

; <label>:52:                                     ; preds = %50, %46
  br label %53

; <label>:53:                                     ; preds = %52, %44
  br label %54, !dbg !1638

; <label>:54:                                     ; preds = %53, %27, %13
  br label %55, !dbg !1639

; <label>:55:                                     ; preds = %54
  %56 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1640
  %57 = getelementptr inbounds %struct._GSList, %struct._GSList* %56, i32 0, i32 1, !dbg !1642
  %58 = load %struct._GSList*, %struct._GSList** %57, align 8, !dbg !1642
  store %struct._GSList* %58, %struct._GSList** %6, align 8, !dbg !1643
  br label %10, !dbg !1644, !llvm.loop !1645

; <label>:59:                                     ; preds = %10
  %60 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %7, align 8, !dbg !1647
  store %struct._WINDOW_REC* %60, %struct._WINDOW_REC** %3, align 8, !dbg !1648
  br label %61, !dbg !1648

; <label>:61:                                     ; preds = %59, %39
  %62 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1649
  ret %struct._WINDOW_REC* %62, !dbg !1649
}

; Function Attrs: nounwind uwtable
define %struct._WINDOW_REC* @window_find_closest(i8*, i8*, i32) #0 !dbg !1650 {
  %4 = alloca %struct._WINDOW_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._WINDOW_REC*, align 8
  %9 = alloca %struct._WINDOW_REC*, align 8
  %10 = alloca %struct._WI_ITEM_REC*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1653, metadata !772), !dbg !1654
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1655, metadata !772), !dbg !1656
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1657, metadata !772), !dbg !1658
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %8, metadata !1659, metadata !772), !dbg !1660
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %9, metadata !1661, metadata !772), !dbg !1662
  store %struct._WINDOW_REC* null, %struct._WINDOW_REC** %9, align 8, !dbg !1662
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %10, metadata !1663, metadata !772), !dbg !1664
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1665, metadata !772), !dbg !1666
  %12 = load i8*, i8** %6, align 8, !dbg !1667
  %13 = icmp eq i8* %12, null, !dbg !1668
  br i1 %13, label %14, label %15, !dbg !1667

; <label>:14:                                     ; preds = %3
  br label %19, !dbg !1669

; <label>:15:                                     ; preds = %3
  %16 = load i8*, i8** %5, align 8, !dbg !1671
  %17 = load i8*, i8** %6, align 8, !dbg !1672
  %18 = call %struct._WI_ITEM_REC* @window_item_find(i8* %16, i8* %17), !dbg !1673
  br label %19, !dbg !1674

; <label>:19:                                     ; preds = %15, %14
  %20 = phi %struct._WI_ITEM_REC* [ null, %14 ], [ %18, %15 ], !dbg !1676
  store %struct._WI_ITEM_REC* %20, %struct._WI_ITEM_REC** %10, align 8, !dbg !1678
  %21 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %10, align 8, !dbg !1679
  %22 = icmp ne %struct._WI_ITEM_REC* %21, null, !dbg !1681
  br i1 %22, label %23, label %60, !dbg !1682

; <label>:23:                                     ; preds = %19
  %24 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %10, align 8, !dbg !1683
  %25 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %24, i32 0, i32 3, !dbg !1685
  %26 = load i8*, i8** %25, align 8, !dbg !1685
  %27 = bitcast i8* %26 to %struct._WINDOW_REC*, !dbg !1686
  store %struct._WINDOW_REC* %27, %struct._WINDOW_REC** %9, align 8, !dbg !1687
  %28 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %9, align 8, !dbg !1688
  %29 = icmp ne %struct._WINDOW_REC* %28, null, !dbg !1690
  br i1 %29, label %30, label %59, !dbg !1691

; <label>:30:                                     ; preds = %23
  %31 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %9, align 8, !dbg !1692
  %32 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %31, i32 0, i32 9, !dbg !1693
  %33 = load i32, i32* %32, align 8, !dbg !1693
  %34 = load i32, i32* %7, align 4, !dbg !1694
  %35 = and i32 %33, %34, !dbg !1695
  %36 = icmp ne i32 %35, 0, !dbg !1696
  br i1 %36, label %40, label %37, !dbg !1697

; <label>:37:                                     ; preds = %30
  %38 = call i32 @settings_get_bool(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i32 0, i32 0)), !dbg !1698
  %39 = icmp ne i32 %38, 0, !dbg !1698
  br i1 %39, label %59, label %40, !dbg !1699

; <label>:40:                                     ; preds = %37, %30
  %41 = load i8*, i8** %6, align 8, !dbg !1701
  %42 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %10, align 8, !dbg !1704
  %43 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %42, i32 0, i32 5, !dbg !1705
  %44 = load i8*, i8** %43, align 8, !dbg !1705
  %45 = call i32 @g_ascii_strcasecmp(i8* %41, i8* %44), !dbg !1706
  %46 = icmp eq i32 %45, 0, !dbg !1707
  br i1 %46, label %56, label %47, !dbg !1708

; <label>:47:                                     ; preds = %40
  %48 = load i8*, i8** %6, align 8, !dbg !1709
  %49 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %10, align 8, !dbg !1710
  %50 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %49, i32 0, i32 11, !dbg !1711
  %51 = load i8* (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)** %50, align 8, !dbg !1711
  %52 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %10, align 8, !dbg !1712
  %53 = call i8* %51(%struct._WI_ITEM_REC* %52), !dbg !1713
  %54 = call i32 @g_ascii_strcasecmp(i8* %48, i8* %53), !dbg !1714
  %55 = icmp eq i32 %54, 0, !dbg !1716
  br i1 %55, label %56, label %58, !dbg !1717

; <label>:56:                                     ; preds = %47, %40
  %57 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %9, align 8, !dbg !1719
  store %struct._WINDOW_REC* %57, %struct._WINDOW_REC** %4, align 8, !dbg !1720
  br label %112, !dbg !1720

; <label>:58:                                     ; preds = %47
  br label %59, !dbg !1721

; <label>:59:                                     ; preds = %58, %37, %23
  br label %60, !dbg !1722

; <label>:60:                                     ; preds = %59, %19
  store i32 0, i32* %11, align 4, !dbg !1723
  br label %61, !dbg !1725

; <label>:61:                                     ; preds = %102, %60
  %62 = load i32, i32* %11, align 4, !dbg !1726
  %63 = icmp slt i32 %62, 2, !dbg !1729
  br i1 %63, label %64, label %105, !dbg !1730

; <label>:64:                                     ; preds = %61
  %65 = load i32, i32* %7, align 4, !dbg !1731
  %66 = icmp ne i32 %65, 2097152, !dbg !1734
  br i1 %66, label %67, label %70, !dbg !1735

; <label>:67:                                     ; preds = %64
  %68 = load i32, i32* %7, align 4, !dbg !1736
  %69 = and i32 %68, -18874369, !dbg !1736
  store i32 %69, i32* %7, align 4, !dbg !1736
  br label %70, !dbg !1737

; <label>:70:                                     ; preds = %67, %64
  %71 = load i8*, i8** %5, align 8, !dbg !1738
  %72 = load i32, i32* %7, align 4, !dbg !1739
  %73 = call %struct._WINDOW_REC* @window_find_level(i8* %71, i32 %72), !dbg !1740
  store %struct._WINDOW_REC* %73, %struct._WINDOW_REC** %8, align 8, !dbg !1741
  %74 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %8, align 8, !dbg !1742
  %75 = icmp ne %struct._WINDOW_REC* %74, null, !dbg !1744
  br i1 %75, label %76, label %86, !dbg !1745

; <label>:76:                                     ; preds = %70
  %77 = load i32, i32* %11, align 4, !dbg !1746
  %78 = icmp eq i32 %77, 1, !dbg !1748
  br i1 %78, label %84, label %79, !dbg !1749

; <label>:79:                                     ; preds = %76
  %80 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %8, align 8, !dbg !1750
  %81 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %80, i32 0, i32 4, !dbg !1752
  %82 = load %struct._GSList*, %struct._GSList** %81, align 8, !dbg !1752
  %83 = icmp eq %struct._GSList* %82, null, !dbg !1753
  br i1 %83, label %84, label %86, !dbg !1754

; <label>:84:                                     ; preds = %79, %76
  %85 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %8, align 8, !dbg !1755
  store %struct._WINDOW_REC* %85, %struct._WINDOW_REC** %4, align 8, !dbg !1756
  br label %112, !dbg !1756

; <label>:86:                                     ; preds = %79, %70
  %87 = load i32, i32* %7, align 4, !dbg !1757
  %88 = call %struct._WINDOW_REC* @window_find_level(i8* null, i32 %87), !dbg !1758
  store %struct._WINDOW_REC* %88, %struct._WINDOW_REC** %8, align 8, !dbg !1759
  %89 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %8, align 8, !dbg !1760
  %90 = icmp ne %struct._WINDOW_REC* %89, null, !dbg !1762
  br i1 %90, label %91, label %101, !dbg !1763

; <label>:91:                                     ; preds = %86
  %92 = load i32, i32* %11, align 4, !dbg !1764
  %93 = icmp eq i32 %92, 1, !dbg !1766
  br i1 %93, label %99, label %94, !dbg !1767

; <label>:94:                                     ; preds = %91
  %95 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %8, align 8, !dbg !1768
  %96 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %95, i32 0, i32 4, !dbg !1770
  %97 = load %struct._GSList*, %struct._GSList** %96, align 8, !dbg !1770
  %98 = icmp eq %struct._GSList* %97, null, !dbg !1771
  br i1 %98, label %99, label %101, !dbg !1772

; <label>:99:                                     ; preds = %94, %91
  %100 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %8, align 8, !dbg !1773
  store %struct._WINDOW_REC* %100, %struct._WINDOW_REC** %4, align 8, !dbg !1774
  br label %112, !dbg !1774

; <label>:101:                                    ; preds = %94, %86
  br label %102, !dbg !1775

; <label>:102:                                    ; preds = %101
  %103 = load i32, i32* %11, align 4, !dbg !1776
  %104 = add nsw i32 %103, 1, !dbg !1776
  store i32 %104, i32* %11, align 4, !dbg !1776
  br label %61, !dbg !1778, !llvm.loop !1779

; <label>:105:                                    ; preds = %61
  %106 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %9, align 8, !dbg !1781
  %107 = icmp ne %struct._WINDOW_REC* %106, null, !dbg !1783
  br i1 %107, label %108, label %110, !dbg !1784

; <label>:108:                                    ; preds = %105
  %109 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %9, align 8, !dbg !1785
  store %struct._WINDOW_REC* %109, %struct._WINDOW_REC** %4, align 8, !dbg !1787
  br label %112, !dbg !1787

; <label>:110:                                    ; preds = %105
  %111 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1788
  store %struct._WINDOW_REC* %111, %struct._WINDOW_REC** %4, align 8, !dbg !1789
  br label %112, !dbg !1789

; <label>:112:                                    ; preds = %110, %108, %99, %84, %56
  %113 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !1790
  ret %struct._WINDOW_REC* %113, !dbg !1790
}

declare %struct._WI_ITEM_REC* @window_item_find(i8*, i8*) #2

declare i32 @g_ascii_strcasecmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define %struct._WINDOW_REC* @window_find_refnum(i32) #0 !dbg !1791 {
  %2 = alloca %struct._WINDOW_REC*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._GSequenceNode*, align 8
  %5 = alloca %struct._WINDOW_REC*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1794, metadata !772), !dbg !1795
  call void @llvm.dbg.declare(metadata %struct._GSequenceNode** %4, metadata !1796, metadata !772), !dbg !1797
  %6 = load i32, i32* %3, align 4, !dbg !1798
  %7 = call %struct._GSequenceNode* @windows_seq_refnum_lookup(i32 %6), !dbg !1799
  store %struct._GSequenceNode* %7, %struct._GSequenceNode** %4, align 8, !dbg !1800
  %8 = load %struct._GSequenceNode*, %struct._GSequenceNode** %4, align 8, !dbg !1801
  %9 = icmp ne %struct._GSequenceNode* %8, null, !dbg !1803
  br i1 %9, label %10, label %15, !dbg !1804

; <label>:10:                                     ; preds = %1
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %5, metadata !1805, metadata !772), !dbg !1807
  %11 = load %struct._GSequenceNode*, %struct._GSequenceNode** %4, align 8, !dbg !1808
  %12 = call i8* @g_sequence_get(%struct._GSequenceNode* %11), !dbg !1809
  %13 = bitcast i8* %12 to %struct._WINDOW_REC*, !dbg !1809
  store %struct._WINDOW_REC* %13, %struct._WINDOW_REC** %5, align 8, !dbg !1807
  %14 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !1810
  store %struct._WINDOW_REC* %14, %struct._WINDOW_REC** %2, align 8, !dbg !1811
  br label %16, !dbg !1811

; <label>:15:                                     ; preds = %1
  store %struct._WINDOW_REC* null, %struct._WINDOW_REC** %2, align 8, !dbg !1812
  br label %16, !dbg !1812

; <label>:16:                                     ; preds = %15, %10
  %17 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !1813
  ret %struct._WINDOW_REC* %17, !dbg !1813
}

; Function Attrs: nounwind uwtable
define %struct._WINDOW_REC* @window_find_name(i8*) #0 !dbg !1814 {
  %2 = alloca %struct._WINDOW_REC*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct._WINDOW_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1817, metadata !772), !dbg !1818
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !1819, metadata !772), !dbg !1820
  br label %6, !dbg !1821, !llvm.loop !1822

; <label>:6:                                      ; preds = %1
  %7 = load i8*, i8** %3, align 8, !dbg !1823
  %8 = icmp ne i8* %7, null, !dbg !1827
  br i1 %8, label %9, label %10, !dbg !1823

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !1828

; <label>:10:                                     ; preds = %6
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.window_find_name, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0)), !dbg !1831
  store %struct._WINDOW_REC* null, %struct._WINDOW_REC** %2, align 8, !dbg !1834
  br label %41, !dbg !1834

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !1835

; <label>:12:                                     ; preds = %11
  %13 = load %struct._GSList*, %struct._GSList** @windows, align 8, !dbg !1837
  store %struct._GSList* %13, %struct._GSList** %4, align 8, !dbg !1839
  br label %14, !dbg !1840

; <label>:14:                                     ; preds = %36, %12
  %15 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1841
  %16 = icmp ne %struct._GSList* %15, null, !dbg !1844
  br i1 %16, label %17, label %40, !dbg !1845

; <label>:17:                                     ; preds = %14
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %5, metadata !1846, metadata !772), !dbg !1848
  %18 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1849
  %19 = getelementptr inbounds %struct._GSList, %struct._GSList* %18, i32 0, i32 0, !dbg !1850
  %20 = load i8*, i8** %19, align 8, !dbg !1850
  %21 = bitcast i8* %20 to %struct._WINDOW_REC*, !dbg !1849
  store %struct._WINDOW_REC* %21, %struct._WINDOW_REC** %5, align 8, !dbg !1848
  %22 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !1851
  %23 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %22, i32 0, i32 1, !dbg !1853
  %24 = load i8*, i8** %23, align 8, !dbg !1853
  %25 = icmp ne i8* %24, null, !dbg !1854
  br i1 %25, label %26, label %35, !dbg !1855

; <label>:26:                                     ; preds = %17
  %27 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !1856
  %28 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %27, i32 0, i32 1, !dbg !1857
  %29 = load i8*, i8** %28, align 8, !dbg !1857
  %30 = load i8*, i8** %3, align 8, !dbg !1858
  %31 = call i32 @g_ascii_strcasecmp(i8* %29, i8* %30), !dbg !1859
  %32 = icmp eq i32 %31, 0, !dbg !1860
  br i1 %32, label %33, label %35, !dbg !1861

; <label>:33:                                     ; preds = %26
  %34 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !1863
  store %struct._WINDOW_REC* %34, %struct._WINDOW_REC** %2, align 8, !dbg !1864
  br label %41, !dbg !1864

; <label>:35:                                     ; preds = %26, %17
  br label %36, !dbg !1865

; <label>:36:                                     ; preds = %35
  %37 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1866
  %38 = getelementptr inbounds %struct._GSList, %struct._GSList* %37, i32 0, i32 1, !dbg !1868
  %39 = load %struct._GSList*, %struct._GSList** %38, align 8, !dbg !1868
  store %struct._GSList* %39, %struct._GSList** %4, align 8, !dbg !1869
  br label %14, !dbg !1870, !llvm.loop !1871

; <label>:40:                                     ; preds = %14
  store %struct._WINDOW_REC* null, %struct._WINDOW_REC** %2, align 8, !dbg !1873
  br label %41, !dbg !1873

; <label>:41:                                     ; preds = %40, %33, %10
  %42 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !1874
  ret %struct._WINDOW_REC* %42, !dbg !1874
}

; Function Attrs: nounwind uwtable
define %struct._WINDOW_REC* @window_find_item(%struct._SERVER_REC*, i8*) #0 !dbg !1875 {
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._WINDOW_REC*, align 8
  %7 = alloca %struct._WI_ITEM_REC*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !1878, metadata !772), !dbg !1879
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1880, metadata !772), !dbg !1881
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %6, metadata !1882, metadata !772), !dbg !1883
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %7, metadata !1884, metadata !772), !dbg !1885
  br label %8, !dbg !1886, !llvm.loop !1887

; <label>:8:                                      ; preds = %2
  %9 = load i8*, i8** %5, align 8, !dbg !1888
  %10 = icmp ne i8* %9, null, !dbg !1892
  br i1 %10, label %11, label %12, !dbg !1888

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !1893

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.window_find_item, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0)), !dbg !1896
  store %struct._WINDOW_REC* null, %struct._WINDOW_REC** %3, align 8, !dbg !1899
  br label %46, !dbg !1899

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !1900

; <label>:14:                                     ; preds = %13
  %15 = load i8*, i8** %5, align 8, !dbg !1902
  %16 = call %struct._WINDOW_REC* @window_find_name(i8* %15), !dbg !1903
  store %struct._WINDOW_REC* %16, %struct._WINDOW_REC** %6, align 8, !dbg !1904
  %17 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %6, align 8, !dbg !1905
  %18 = icmp ne %struct._WINDOW_REC* %17, null, !dbg !1907
  br i1 %18, label %19, label %21, !dbg !1908

; <label>:19:                                     ; preds = %14
  %20 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %6, align 8, !dbg !1909
  store %struct._WINDOW_REC* %20, %struct._WINDOW_REC** %3, align 8, !dbg !1911
  br label %46, !dbg !1911

; <label>:21:                                     ; preds = %14
  %22 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1912
  %23 = icmp eq %struct._SERVER_REC* %22, null, !dbg !1913
  br i1 %23, label %24, label %25, !dbg !1912

; <label>:24:                                     ; preds = %21
  br label %30, !dbg !1914

; <label>:25:                                     ; preds = %21
  %26 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1916
  %27 = bitcast %struct._SERVER_REC* %26 to i8*, !dbg !1916
  %28 = load i8*, i8** %5, align 8, !dbg !1917
  %29 = call %struct._WI_ITEM_REC* @window_item_find(i8* %27, i8* %28), !dbg !1918
  br label %30, !dbg !1919

; <label>:30:                                     ; preds = %25, %24
  %31 = phi %struct._WI_ITEM_REC* [ null, %24 ], [ %29, %25 ], !dbg !1921
  store %struct._WI_ITEM_REC* %31, %struct._WI_ITEM_REC** %7, align 8, !dbg !1923
  %32 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %7, align 8, !dbg !1924
  %33 = icmp eq %struct._WI_ITEM_REC* %32, null, !dbg !1926
  br i1 %33, label %34, label %37, !dbg !1927

; <label>:34:                                     ; preds = %30
  %35 = load i8*, i8** %5, align 8, !dbg !1928
  %36 = call %struct._WI_ITEM_REC* @window_item_find(i8* null, i8* %35), !dbg !1930
  store %struct._WI_ITEM_REC* %36, %struct._WI_ITEM_REC** %7, align 8, !dbg !1931
  br label %37, !dbg !1932

; <label>:37:                                     ; preds = %34, %30
  %38 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %7, align 8, !dbg !1933
  %39 = icmp eq %struct._WI_ITEM_REC* %38, null, !dbg !1935
  br i1 %39, label %40, label %41, !dbg !1936

; <label>:40:                                     ; preds = %37
  store %struct._WINDOW_REC* null, %struct._WINDOW_REC** %3, align 8, !dbg !1937
  br label %46, !dbg !1937

; <label>:41:                                     ; preds = %37
  %42 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %7, align 8, !dbg !1938
  %43 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %42, i32 0, i32 3, !dbg !1939
  %44 = load i8*, i8** %43, align 8, !dbg !1939
  %45 = bitcast i8* %44 to %struct._WINDOW_REC*, !dbg !1940
  store %struct._WINDOW_REC* %45, %struct._WINDOW_REC** %3, align 8, !dbg !1941
  br label %46, !dbg !1941

; <label>:46:                                     ; preds = %41, %40, %19, %12
  %47 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1942
  ret %struct._WINDOW_REC* %47, !dbg !1942
}

; Function Attrs: nounwind uwtable
define i32 @window_refnum_prev(i32, i32) #0 !dbg !1943 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct._WINDOW_REC*, align 8
  %7 = alloca %struct._GSequenceNode*, align 8
  %8 = alloca %struct._GSequenceNode*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1946, metadata !772), !dbg !1947
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1948, metadata !772), !dbg !1949
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %6, metadata !1950, metadata !772), !dbg !1951
  call void @llvm.dbg.declare(metadata %struct._GSequenceNode** %7, metadata !1952, metadata !772), !dbg !1953
  call void @llvm.dbg.declare(metadata %struct._GSequenceNode** %8, metadata !1954, metadata !772), !dbg !1955
  %9 = load i32, i32* %4, align 4, !dbg !1956
  %10 = call %struct._GSequenceNode* @windows_seq_refnum_search_left(i32 %9), !dbg !1957
  store %struct._GSequenceNode* %10, %struct._GSequenceNode** %7, align 8, !dbg !1958
  %11 = call %struct._GSequenceNode* @windows_seq_end(), !dbg !1959
  store %struct._GSequenceNode* %11, %struct._GSequenceNode** %8, align 8, !dbg !1960
  %12 = load %struct._GSequenceNode*, %struct._GSequenceNode** %7, align 8, !dbg !1961
  %13 = icmp ne %struct._GSequenceNode* %12, null, !dbg !1963
  br i1 %13, label %14, label %21, !dbg !1964

; <label>:14:                                     ; preds = %2
  %15 = load %struct._GSequenceNode*, %struct._GSequenceNode** %7, align 8, !dbg !1965
  %16 = call i8* @g_sequence_get(%struct._GSequenceNode* %15), !dbg !1967
  %17 = bitcast i8* %16 to %struct._WINDOW_REC*, !dbg !1967
  store %struct._WINDOW_REC* %17, %struct._WINDOW_REC** %6, align 8, !dbg !1968
  %18 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %6, align 8, !dbg !1969
  %19 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %18, i32 0, i32 0, !dbg !1970
  %20 = load i32, i32* %19, align 8, !dbg !1970
  store i32 %20, i32* %3, align 4, !dbg !1971
  br label %39, !dbg !1971

; <label>:21:                                     ; preds = %2
  %22 = load i32, i32* %5, align 4, !dbg !1972
  %23 = icmp ne i32 %22, 0, !dbg !1972
  br i1 %23, label %24, label %38, !dbg !1974

; <label>:24:                                     ; preds = %21
  %25 = load %struct._GSequenceNode*, %struct._GSequenceNode** %8, align 8, !dbg !1975
  %26 = call %struct._GSequenceNode* @g_sequence_iter_prev(%struct._GSequenceNode* %25), !dbg !1977
  store %struct._GSequenceNode* %26, %struct._GSequenceNode** %7, align 8, !dbg !1978
  %27 = load %struct._GSequenceNode*, %struct._GSequenceNode** %7, align 8, !dbg !1979
  %28 = load %struct._GSequenceNode*, %struct._GSequenceNode** %8, align 8, !dbg !1981
  %29 = icmp ne %struct._GSequenceNode* %27, %28, !dbg !1982
  br i1 %29, label %30, label %37, !dbg !1983

; <label>:30:                                     ; preds = %24
  %31 = load %struct._GSequenceNode*, %struct._GSequenceNode** %7, align 8, !dbg !1984
  %32 = call i8* @g_sequence_get(%struct._GSequenceNode* %31), !dbg !1986
  %33 = bitcast i8* %32 to %struct._WINDOW_REC*, !dbg !1986
  store %struct._WINDOW_REC* %33, %struct._WINDOW_REC** %6, align 8, !dbg !1987
  %34 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %6, align 8, !dbg !1988
  %35 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %34, i32 0, i32 0, !dbg !1989
  %36 = load i32, i32* %35, align 8, !dbg !1989
  store i32 %36, i32* %3, align 4, !dbg !1990
  br label %39, !dbg !1990

; <label>:37:                                     ; preds = %24
  br label %38, !dbg !1991

; <label>:38:                                     ; preds = %37, %21
  store i32 -1, i32* %3, align 4, !dbg !1992
  br label %39, !dbg !1992

; <label>:39:                                     ; preds = %38, %30, %14
  %40 = load i32, i32* %3, align 4, !dbg !1993
  ret i32 %40, !dbg !1993
}

; Function Attrs: nounwind uwtable
define internal %struct._GSequenceNode* @windows_seq_refnum_search_left(i32) #0 !dbg !1994 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._GSequenceNode*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1995, metadata !772), !dbg !1996
  call void @llvm.dbg.declare(metadata %struct._GSequenceNode** %3, metadata !1997, metadata !772), !dbg !1998
  %4 = load i32, i32* %2, align 4, !dbg !1999
  %5 = sub nsw i32 %4, 1, !dbg !2000
  %6 = call %struct._GSequenceNode* @windows_seq_refnum_search_right(i32 %5), !dbg !2001
  store %struct._GSequenceNode* %6, %struct._GSequenceNode** %3, align 8, !dbg !1998
  %7 = load %struct._GSequenceNode*, %struct._GSequenceNode** %3, align 8, !dbg !2002
  %8 = call %struct._GSequenceNode* @windows_seq_begin(), !dbg !2003
  %9 = icmp eq %struct._GSequenceNode* %7, %8, !dbg !2004
  br i1 %9, label %10, label %11, !dbg !2002

; <label>:10:                                     ; preds = %1
  br label %14, !dbg !2005

; <label>:11:                                     ; preds = %1
  %12 = load %struct._GSequenceNode*, %struct._GSequenceNode** %3, align 8, !dbg !2007
  %13 = call %struct._GSequenceNode* @g_sequence_iter_prev(%struct._GSequenceNode* %12), !dbg !2009
  br label %14, !dbg !2010

; <label>:14:                                     ; preds = %11, %10
  %15 = phi %struct._GSequenceNode* [ null, %10 ], [ %13, %11 ], !dbg !2011
  ret %struct._GSequenceNode* %15, !dbg !2013
}

; Function Attrs: nounwind uwtable
define internal %struct._GSequenceNode* @windows_seq_end() #0 !dbg !2014 {
  %1 = load %struct._GSequence*, %struct._GSequence** @windows_seq, align 8, !dbg !2017
  %2 = call %struct._GSequenceNode* @g_sequence_get_end_iter(%struct._GSequence* %1), !dbg !2018
  ret %struct._GSequenceNode* %2, !dbg !2019
}

declare %struct._GSequenceNode* @g_sequence_iter_prev(%struct._GSequenceNode*) #2

; Function Attrs: nounwind uwtable
define i32 @window_refnum_next(i32, i32) #0 !dbg !2020 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct._WINDOW_REC*, align 8
  %7 = alloca %struct._GSequenceNode*, align 8
  %8 = alloca %struct._GSequenceNode*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2021, metadata !772), !dbg !2022
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2023, metadata !772), !dbg !2024
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %6, metadata !2025, metadata !772), !dbg !2026
  call void @llvm.dbg.declare(metadata %struct._GSequenceNode** %7, metadata !2027, metadata !772), !dbg !2028
  call void @llvm.dbg.declare(metadata %struct._GSequenceNode** %8, metadata !2029, metadata !772), !dbg !2030
  %9 = load i32, i32* %4, align 4, !dbg !2031
  %10 = call %struct._GSequenceNode* @windows_seq_refnum_search_right(i32 %9), !dbg !2032
  store %struct._GSequenceNode* %10, %struct._GSequenceNode** %7, align 8, !dbg !2033
  %11 = call %struct._GSequenceNode* @windows_seq_end(), !dbg !2034
  store %struct._GSequenceNode* %11, %struct._GSequenceNode** %8, align 8, !dbg !2035
  %12 = load %struct._GSequenceNode*, %struct._GSequenceNode** %7, align 8, !dbg !2036
  %13 = load %struct._GSequenceNode*, %struct._GSequenceNode** %8, align 8, !dbg !2038
  %14 = icmp ne %struct._GSequenceNode* %12, %13, !dbg !2039
  br i1 %14, label %15, label %22, !dbg !2040

; <label>:15:                                     ; preds = %2
  %16 = load %struct._GSequenceNode*, %struct._GSequenceNode** %7, align 8, !dbg !2041
  %17 = call i8* @g_sequence_get(%struct._GSequenceNode* %16), !dbg !2043
  %18 = bitcast i8* %17 to %struct._WINDOW_REC*, !dbg !2043
  store %struct._WINDOW_REC* %18, %struct._WINDOW_REC** %6, align 8, !dbg !2044
  %19 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %6, align 8, !dbg !2045
  %20 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %19, i32 0, i32 0, !dbg !2046
  %21 = load i32, i32* %20, align 8, !dbg !2046
  store i32 %21, i32* %3, align 4, !dbg !2047
  br label %39, !dbg !2047

; <label>:22:                                     ; preds = %2
  %23 = load i32, i32* %5, align 4, !dbg !2048
  %24 = icmp ne i32 %23, 0, !dbg !2048
  br i1 %24, label %25, label %38, !dbg !2050

; <label>:25:                                     ; preds = %22
  %26 = call %struct._GSequenceNode* @windows_seq_begin(), !dbg !2051
  store %struct._GSequenceNode* %26, %struct._GSequenceNode** %7, align 8, !dbg !2053
  %27 = load %struct._GSequenceNode*, %struct._GSequenceNode** %7, align 8, !dbg !2054
  %28 = load %struct._GSequenceNode*, %struct._GSequenceNode** %8, align 8, !dbg !2056
  %29 = icmp ne %struct._GSequenceNode* %27, %28, !dbg !2057
  br i1 %29, label %30, label %37, !dbg !2058

; <label>:30:                                     ; preds = %25
  %31 = load %struct._GSequenceNode*, %struct._GSequenceNode** %7, align 8, !dbg !2059
  %32 = call i8* @g_sequence_get(%struct._GSequenceNode* %31), !dbg !2061
  %33 = bitcast i8* %32 to %struct._WINDOW_REC*, !dbg !2061
  store %struct._WINDOW_REC* %33, %struct._WINDOW_REC** %6, align 8, !dbg !2062
  %34 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %6, align 8, !dbg !2063
  %35 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %34, i32 0, i32 0, !dbg !2064
  %36 = load i32, i32* %35, align 8, !dbg !2064
  store i32 %36, i32* %3, align 4, !dbg !2065
  br label %39, !dbg !2065

; <label>:37:                                     ; preds = %25
  br label %38, !dbg !2066

; <label>:38:                                     ; preds = %37, %22
  store i32 -1, i32* %3, align 4, !dbg !2067
  br label %39, !dbg !2067

; <label>:39:                                     ; preds = %38, %30, %15
  %40 = load i32, i32* %3, align 4, !dbg !2068
  ret i32 %40, !dbg !2068
}

; Function Attrs: nounwind uwtable
define internal %struct._GSequenceNode* @windows_seq_refnum_search_right(i32) #0 !dbg !2069 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2070, metadata !772), !dbg !2071
  %3 = load %struct._GSequence*, %struct._GSequence** @windows_seq, align 8, !dbg !2072
  %4 = load i32, i32* %2, align 4, !dbg !2073
  %5 = sext i32 %4 to i64, !dbg !2074
  %6 = inttoptr i64 %5 to i8*, !dbg !2075
  %7 = call %struct._GSequenceNode* @g_sequence_search(%struct._GSequence* %3, i8* %6, i32 (i8*, i8*, i8*)* bitcast (i32 (%struct._WINDOW_REC*, i8*)* @window_refnum_lookup to i32 (i8*, i8*, i8*)*), i8* null), !dbg !2076
  ret %struct._GSequenceNode* %7, !dbg !2077
}

; Function Attrs: nounwind uwtable
define internal %struct._GSequenceNode* @windows_seq_begin() #0 !dbg !2078 {
  %1 = load %struct._GSequence*, %struct._GSequence** @windows_seq, align 8, !dbg !2079
  %2 = call %struct._GSequenceNode* @g_sequence_get_begin_iter(%struct._GSequence* %1), !dbg !2080
  ret %struct._GSequenceNode* %2, !dbg !2081
}

; Function Attrs: nounwind uwtable
define i32 @windows_refnum_last() #0 !dbg !2082 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._WINDOW_REC*, align 8
  %3 = alloca %struct._GSequenceNode*, align 8
  %4 = alloca %struct._GSequenceNode*, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %2, metadata !2083, metadata !772), !dbg !2084
  call void @llvm.dbg.declare(metadata %struct._GSequenceNode** %3, metadata !2085, metadata !772), !dbg !2086
  call void @llvm.dbg.declare(metadata %struct._GSequenceNode** %4, metadata !2087, metadata !772), !dbg !2088
  %5 = call %struct._GSequenceNode* @windows_seq_end(), !dbg !2089
  store %struct._GSequenceNode* %5, %struct._GSequenceNode** %3, align 8, !dbg !2090
  %6 = load %struct._GSequenceNode*, %struct._GSequenceNode** %3, align 8, !dbg !2091
  %7 = call %struct._GSequenceNode* @g_sequence_iter_prev(%struct._GSequenceNode* %6), !dbg !2092
  store %struct._GSequenceNode* %7, %struct._GSequenceNode** %4, align 8, !dbg !2093
  %8 = load %struct._GSequenceNode*, %struct._GSequenceNode** %4, align 8, !dbg !2094
  %9 = load %struct._GSequenceNode*, %struct._GSequenceNode** %3, align 8, !dbg !2096
  %10 = icmp ne %struct._GSequenceNode* %8, %9, !dbg !2097
  br i1 %10, label %11, label %18, !dbg !2098

; <label>:11:                                     ; preds = %0
  %12 = load %struct._GSequenceNode*, %struct._GSequenceNode** %4, align 8, !dbg !2099
  %13 = call i8* @g_sequence_get(%struct._GSequenceNode* %12), !dbg !2101
  %14 = bitcast i8* %13 to %struct._WINDOW_REC*, !dbg !2101
  store %struct._WINDOW_REC* %14, %struct._WINDOW_REC** %2, align 8, !dbg !2102
  %15 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2103
  %16 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %15, i32 0, i32 0, !dbg !2104
  %17 = load i32, i32* %16, align 8, !dbg !2104
  store i32 %17, i32* %1, align 4, !dbg !2105
  br label %19, !dbg !2105

; <label>:18:                                     ; preds = %0
  store i32 -1, i32* %1, align 4, !dbg !2106
  br label %19, !dbg !2106

; <label>:19:                                     ; preds = %18, %11
  %20 = load i32, i32* %1, align 4, !dbg !2107
  ret i32 %20, !dbg !2107
}

; Function Attrs: nounwind uwtable
define i32 @window_refnum_cmp(%struct._WINDOW_REC*, %struct._WINDOW_REC*) #0 !dbg !2108 {
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca %struct._WINDOW_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !2111, metadata !772), !dbg !2112
  store %struct._WINDOW_REC* %1, %struct._WINDOW_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %4, metadata !2113, metadata !772), !dbg !2114
  %5 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !2115
  %6 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !2116
  %7 = icmp eq %struct._WINDOW_REC* %5, %6, !dbg !2117
  br i1 %7, label %8, label %9, !dbg !2115

; <label>:8:                                      ; preds = %2
  br label %18, !dbg !2118

; <label>:9:                                      ; preds = %2
  %10 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !2120
  %11 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %10, i32 0, i32 0, !dbg !2122
  %12 = load i32, i32* %11, align 8, !dbg !2122
  %13 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !2123
  %14 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %13, i32 0, i32 0, !dbg !2124
  %15 = load i32, i32* %14, align 8, !dbg !2124
  %16 = icmp slt i32 %12, %15, !dbg !2125
  %17 = select i1 %16, i32 -1, i32 1, !dbg !2120
  br label %18, !dbg !2126

; <label>:18:                                     ; preds = %9, %8
  %19 = phi i32 [ 0, %8 ], [ %17, %9 ], !dbg !2127
  ret i32 %19, !dbg !2129
}

; Function Attrs: nounwind uwtable
define %struct._GSList* @windows_get_sorted() #0 !dbg !2130 {
  %1 = alloca %struct._GSequenceNode*, align 8
  %2 = alloca %struct._GSequenceNode*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct._WINDOW_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._GSequenceNode** %1, metadata !2133, metadata !772), !dbg !2134
  call void @llvm.dbg.declare(metadata %struct._GSequenceNode** %2, metadata !2135, metadata !772), !dbg !2136
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !2137, metadata !772), !dbg !2138
  store %struct._GSList* null, %struct._GSList** %3, align 8, !dbg !2139
  %5 = call %struct._GSequenceNode* @windows_seq_end(), !dbg !2140
  store %struct._GSequenceNode* %5, %struct._GSequenceNode** %1, align 8, !dbg !2141
  %6 = call %struct._GSequenceNode* @windows_seq_begin(), !dbg !2142
  store %struct._GSequenceNode* %6, %struct._GSequenceNode** %2, align 8, !dbg !2143
  br label %7, !dbg !2144

; <label>:7:                                      ; preds = %11, %0
  %8 = load %struct._GSequenceNode*, %struct._GSequenceNode** %1, align 8, !dbg !2145
  %9 = load %struct._GSequenceNode*, %struct._GSequenceNode** %2, align 8, !dbg !2147
  %10 = icmp ne %struct._GSequenceNode* %8, %9, !dbg !2148
  br i1 %10, label %11, label %21, !dbg !2149

; <label>:11:                                     ; preds = %7
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %4, metadata !2150, metadata !772), !dbg !2152
  %12 = load %struct._GSequenceNode*, %struct._GSequenceNode** %1, align 8, !dbg !2153
  %13 = call %struct._GSequenceNode* @g_sequence_iter_prev(%struct._GSequenceNode* %12), !dbg !2154
  store %struct._GSequenceNode* %13, %struct._GSequenceNode** %1, align 8, !dbg !2155
  %14 = load %struct._GSequenceNode*, %struct._GSequenceNode** %1, align 8, !dbg !2156
  %15 = call i8* @g_sequence_get(%struct._GSequenceNode* %14), !dbg !2157
  %16 = bitcast i8* %15 to %struct._WINDOW_REC*, !dbg !2157
  store %struct._WINDOW_REC* %16, %struct._WINDOW_REC** %4, align 8, !dbg !2158
  %17 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !2159
  %18 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !2160
  %19 = bitcast %struct._WINDOW_REC* %18 to i8*, !dbg !2160
  %20 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %17, i8* %19), !dbg !2161
  store %struct._GSList* %20, %struct._GSList** %3, align 8, !dbg !2162
  br label %7, !dbg !2163, !llvm.loop !2165

; <label>:21:                                     ; preds = %7
  %22 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !2166
  ret %struct._GSList* %22, !dbg !2167
}

; Function Attrs: nounwind uwtable
define %struct.WINDOW_BIND_REC* @window_bind_add(%struct._WINDOW_REC*, i8*, i8*) #0 !dbg !2168 {
  %4 = alloca %struct.WINDOW_BIND_REC*, align 8
  %5 = alloca %struct._WINDOW_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.WINDOW_BIND_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %5, metadata !2171, metadata !772), !dbg !2172
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2173, metadata !772), !dbg !2174
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2175, metadata !772), !dbg !2176
  call void @llvm.dbg.declare(metadata %struct.WINDOW_BIND_REC** %8, metadata !2177, metadata !772), !dbg !2178
  br label %9, !dbg !2179, !llvm.loop !2180

; <label>:9:                                      ; preds = %3
  %10 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !2181
  %11 = icmp ne %struct._WINDOW_REC* %10, null, !dbg !2185
  br i1 %11, label %12, label %13, !dbg !2181

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !2186

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.window_bind_add, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0)), !dbg !2189
  store %struct.WINDOW_BIND_REC* null, %struct.WINDOW_BIND_REC** %4, align 8, !dbg !2192
  br label %58, !dbg !2192

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !2193

; <label>:15:                                     ; preds = %14
  br label %16, !dbg !2195, !llvm.loop !2196

; <label>:16:                                     ; preds = %15
  %17 = load i8*, i8** %6, align 8, !dbg !2197
  %18 = icmp ne i8* %17, null, !dbg !2201
  br i1 %18, label %19, label %20, !dbg !2197

; <label>:19:                                     ; preds = %16
  br label %21, !dbg !2202

; <label>:20:                                     ; preds = %16
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.window_bind_add, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0)), !dbg !2205
  store %struct.WINDOW_BIND_REC* null, %struct.WINDOW_BIND_REC** %4, align 8, !dbg !2208
  br label %58, !dbg !2208

; <label>:21:                                     ; preds = %19
  br label %22, !dbg !2209

; <label>:22:                                     ; preds = %21
  br label %23, !dbg !2211, !llvm.loop !2212

; <label>:23:                                     ; preds = %22
  %24 = load i8*, i8** %7, align 8, !dbg !2213
  %25 = icmp ne i8* %24, null, !dbg !2217
  br i1 %25, label %26, label %27, !dbg !2213

; <label>:26:                                     ; preds = %23
  br label %28, !dbg !2218

; <label>:27:                                     ; preds = %23
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.window_bind_add, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0)), !dbg !2221
  store %struct.WINDOW_BIND_REC* null, %struct.WINDOW_BIND_REC** %4, align 8, !dbg !2224
  br label %58, !dbg !2224

; <label>:28:                                     ; preds = %26
  br label %29, !dbg !2225

; <label>:29:                                     ; preds = %28
  %30 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !2227
  %31 = load i8*, i8** %6, align 8, !dbg !2228
  %32 = load i8*, i8** %7, align 8, !dbg !2229
  %33 = call %struct.WINDOW_BIND_REC* @window_bind_find(%struct._WINDOW_REC* %30, i8* %31, i8* %32), !dbg !2230
  store %struct.WINDOW_BIND_REC* %33, %struct.WINDOW_BIND_REC** %8, align 8, !dbg !2231
  %34 = load %struct.WINDOW_BIND_REC*, %struct.WINDOW_BIND_REC** %8, align 8, !dbg !2232
  %35 = icmp ne %struct.WINDOW_BIND_REC* %34, null, !dbg !2234
  br i1 %35, label %36, label %38, !dbg !2235

; <label>:36:                                     ; preds = %29
  %37 = load %struct.WINDOW_BIND_REC*, %struct.WINDOW_BIND_REC** %8, align 8, !dbg !2236
  store %struct.WINDOW_BIND_REC* %37, %struct.WINDOW_BIND_REC** %4, align 8, !dbg !2237
  br label %58, !dbg !2237

; <label>:38:                                     ; preds = %29
  %39 = call noalias i8* @g_malloc0_n(i64 1, i64 24), !dbg !2238
  %40 = bitcast i8* %39 to %struct.WINDOW_BIND_REC*, !dbg !2239
  store %struct.WINDOW_BIND_REC* %40, %struct.WINDOW_BIND_REC** %8, align 8, !dbg !2240
  %41 = load i8*, i8** %7, align 8, !dbg !2241
  %42 = call noalias i8* @g_strdup(i8* %41), !dbg !2242
  %43 = load %struct.WINDOW_BIND_REC*, %struct.WINDOW_BIND_REC** %8, align 8, !dbg !2243
  %44 = getelementptr inbounds %struct.WINDOW_BIND_REC, %struct.WINDOW_BIND_REC* %43, i32 0, i32 1, !dbg !2244
  store i8* %42, i8** %44, align 8, !dbg !2245
  %45 = load i8*, i8** %6, align 8, !dbg !2246
  %46 = call noalias i8* @g_strdup(i8* %45), !dbg !2247
  %47 = load %struct.WINDOW_BIND_REC*, %struct.WINDOW_BIND_REC** %8, align 8, !dbg !2248
  %48 = getelementptr inbounds %struct.WINDOW_BIND_REC, %struct.WINDOW_BIND_REC* %47, i32 0, i32 0, !dbg !2249
  store i8* %46, i8** %48, align 8, !dbg !2250
  %49 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !2251
  %50 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %49, i32 0, i32 10, !dbg !2252
  %51 = load %struct._GSList*, %struct._GSList** %50, align 8, !dbg !2252
  %52 = load %struct.WINDOW_BIND_REC*, %struct.WINDOW_BIND_REC** %8, align 8, !dbg !2253
  %53 = bitcast %struct.WINDOW_BIND_REC* %52 to i8*, !dbg !2253
  %54 = call %struct._GSList* @g_slist_append(%struct._GSList* %51, i8* %53), !dbg !2254
  %55 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !2255
  %56 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %55, i32 0, i32 10, !dbg !2256
  store %struct._GSList* %54, %struct._GSList** %56, align 8, !dbg !2257
  %57 = load %struct.WINDOW_BIND_REC*, %struct.WINDOW_BIND_REC** %8, align 8, !dbg !2258
  store %struct.WINDOW_BIND_REC* %57, %struct.WINDOW_BIND_REC** %4, align 8, !dbg !2259
  br label %58, !dbg !2259

; <label>:58:                                     ; preds = %38, %36, %27, %20, %13
  %59 = load %struct.WINDOW_BIND_REC*, %struct.WINDOW_BIND_REC** %4, align 8, !dbg !2260
  ret %struct.WINDOW_BIND_REC* %59, !dbg !2260
}

; Function Attrs: nounwind uwtable
define %struct.WINDOW_BIND_REC* @window_bind_find(%struct._WINDOW_REC*, i8*, i8*) #0 !dbg !2261 {
  %4 = alloca %struct.WINDOW_BIND_REC*, align 8
  %5 = alloca %struct._WINDOW_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct._GSList*, align 8
  %9 = alloca %struct.WINDOW_BIND_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %5, metadata !2262, metadata !772), !dbg !2263
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2264, metadata !772), !dbg !2265
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2266, metadata !772), !dbg !2267
  call void @llvm.dbg.declare(metadata %struct._GSList** %8, metadata !2268, metadata !772), !dbg !2269
  br label %10, !dbg !2270, !llvm.loop !2271

; <label>:10:                                     ; preds = %3
  %11 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !2272
  %12 = icmp ne %struct._WINDOW_REC* %11, null, !dbg !2276
  br i1 %12, label %13, label %14, !dbg !2272

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !2277

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.window_bind_find, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0)), !dbg !2280
  store %struct.WINDOW_BIND_REC* null, %struct.WINDOW_BIND_REC** %4, align 8, !dbg !2283
  br label %63, !dbg !2283

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !2284

; <label>:16:                                     ; preds = %15
  br label %17, !dbg !2286, !llvm.loop !2287

; <label>:17:                                     ; preds = %16
  %18 = load i8*, i8** %6, align 8, !dbg !2288
  %19 = icmp ne i8* %18, null, !dbg !2292
  br i1 %19, label %20, label %21, !dbg !2288

; <label>:20:                                     ; preds = %17
  br label %22, !dbg !2293

; <label>:21:                                     ; preds = %17
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.window_bind_find, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0)), !dbg !2296
  store %struct.WINDOW_BIND_REC* null, %struct.WINDOW_BIND_REC** %4, align 8, !dbg !2299
  br label %63, !dbg !2299

; <label>:22:                                     ; preds = %20
  br label %23, !dbg !2300

; <label>:23:                                     ; preds = %22
  br label %24, !dbg !2302, !llvm.loop !2303

; <label>:24:                                     ; preds = %23
  %25 = load i8*, i8** %7, align 8, !dbg !2304
  %26 = icmp ne i8* %25, null, !dbg !2308
  br i1 %26, label %27, label %28, !dbg !2304

; <label>:27:                                     ; preds = %24
  br label %29, !dbg !2309

; <label>:28:                                     ; preds = %24
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.window_bind_find, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0)), !dbg !2312
  store %struct.WINDOW_BIND_REC* null, %struct.WINDOW_BIND_REC** %4, align 8, !dbg !2315
  br label %63, !dbg !2315

; <label>:29:                                     ; preds = %27
  br label %30, !dbg !2316

; <label>:30:                                     ; preds = %29
  %31 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !2318
  %32 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %31, i32 0, i32 10, !dbg !2320
  %33 = load %struct._GSList*, %struct._GSList** %32, align 8, !dbg !2320
  store %struct._GSList* %33, %struct._GSList** %8, align 8, !dbg !2321
  br label %34, !dbg !2322

; <label>:34:                                     ; preds = %58, %30
  %35 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !2323
  %36 = icmp ne %struct._GSList* %35, null, !dbg !2326
  br i1 %36, label %37, label %62, !dbg !2327

; <label>:37:                                     ; preds = %34
  call void @llvm.dbg.declare(metadata %struct.WINDOW_BIND_REC** %9, metadata !2328, metadata !772), !dbg !2330
  %38 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !2331
  %39 = getelementptr inbounds %struct._GSList, %struct._GSList* %38, i32 0, i32 0, !dbg !2332
  %40 = load i8*, i8** %39, align 8, !dbg !2332
  %41 = bitcast i8* %40 to %struct.WINDOW_BIND_REC*, !dbg !2331
  store %struct.WINDOW_BIND_REC* %41, %struct.WINDOW_BIND_REC** %9, align 8, !dbg !2330
  %42 = load %struct.WINDOW_BIND_REC*, %struct.WINDOW_BIND_REC** %9, align 8, !dbg !2333
  %43 = getelementptr inbounds %struct.WINDOW_BIND_REC, %struct.WINDOW_BIND_REC* %42, i32 0, i32 1, !dbg !2335
  %44 = load i8*, i8** %43, align 8, !dbg !2335
  %45 = load i8*, i8** %7, align 8, !dbg !2336
  %46 = call i32 @g_ascii_strcasecmp(i8* %44, i8* %45), !dbg !2337
  %47 = icmp eq i32 %46, 0, !dbg !2338
  br i1 %47, label %48, label %57, !dbg !2339

; <label>:48:                                     ; preds = %37
  %49 = load %struct.WINDOW_BIND_REC*, %struct.WINDOW_BIND_REC** %9, align 8, !dbg !2340
  %50 = getelementptr inbounds %struct.WINDOW_BIND_REC, %struct.WINDOW_BIND_REC* %49, i32 0, i32 0, !dbg !2341
  %51 = load i8*, i8** %50, align 8, !dbg !2341
  %52 = load i8*, i8** %6, align 8, !dbg !2342
  %53 = call i32 @g_ascii_strcasecmp(i8* %51, i8* %52), !dbg !2343
  %54 = icmp eq i32 %53, 0, !dbg !2344
  br i1 %54, label %55, label %57, !dbg !2345

; <label>:55:                                     ; preds = %48
  %56 = load %struct.WINDOW_BIND_REC*, %struct.WINDOW_BIND_REC** %9, align 8, !dbg !2347
  store %struct.WINDOW_BIND_REC* %56, %struct.WINDOW_BIND_REC** %4, align 8, !dbg !2348
  br label %63, !dbg !2348

; <label>:57:                                     ; preds = %48, %37
  br label %58, !dbg !2349

; <label>:58:                                     ; preds = %57
  %59 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !2350
  %60 = getelementptr inbounds %struct._GSList, %struct._GSList* %59, i32 0, i32 1, !dbg !2352
  %61 = load %struct._GSList*, %struct._GSList** %60, align 8, !dbg !2352
  store %struct._GSList* %61, %struct._GSList** %8, align 8, !dbg !2353
  br label %34, !dbg !2354, !llvm.loop !2355

; <label>:62:                                     ; preds = %34
  store %struct.WINDOW_BIND_REC* null, %struct.WINDOW_BIND_REC** %4, align 8, !dbg !2357
  br label %63, !dbg !2357

; <label>:63:                                     ; preds = %62, %55, %28, %21, %14
  %64 = load %struct.WINDOW_BIND_REC*, %struct.WINDOW_BIND_REC** %4, align 8, !dbg !2358
  ret %struct.WINDOW_BIND_REC* %64, !dbg !2358
}

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #2

; Function Attrs: nounwind uwtable
define void @window_bind_remove_unsticky(%struct._WINDOW_REC*) #0 !dbg !2359 {
  %2 = alloca %struct._WINDOW_REC*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct.WINDOW_BIND_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %2, metadata !2360, metadata !772), !dbg !2361
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !2362, metadata !772), !dbg !2363
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !2364, metadata !772), !dbg !2365
  %6 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2366
  %7 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %6, i32 0, i32 10, !dbg !2368
  %8 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !2368
  store %struct._GSList* %8, %struct._GSList** %3, align 8, !dbg !2369
  br label %9, !dbg !2370

; <label>:9:                                      ; preds = %30, %1
  %10 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !2371
  %11 = icmp ne %struct._GSList* %10, null, !dbg !2374
  br i1 %11, label %12, label %32, !dbg !2375

; <label>:12:                                     ; preds = %9
  call void @llvm.dbg.declare(metadata %struct.WINDOW_BIND_REC** %5, metadata !2376, metadata !772), !dbg !2378
  %13 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !2379
  %14 = getelementptr inbounds %struct._GSList, %struct._GSList* %13, i32 0, i32 0, !dbg !2380
  %15 = load i8*, i8** %14, align 8, !dbg !2380
  %16 = bitcast i8* %15 to %struct.WINDOW_BIND_REC*, !dbg !2379
  store %struct.WINDOW_BIND_REC* %16, %struct.WINDOW_BIND_REC** %5, align 8, !dbg !2378
  %17 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !2381
  %18 = getelementptr inbounds %struct._GSList, %struct._GSList* %17, i32 0, i32 1, !dbg !2382
  %19 = load %struct._GSList*, %struct._GSList** %18, align 8, !dbg !2382
  store %struct._GSList* %19, %struct._GSList** %4, align 8, !dbg !2383
  %20 = load %struct.WINDOW_BIND_REC*, %struct.WINDOW_BIND_REC** %5, align 8, !dbg !2384
  %21 = getelementptr inbounds %struct.WINDOW_BIND_REC, %struct.WINDOW_BIND_REC* %20, i32 0, i32 2, !dbg !2386
  %22 = load i8, i8* %21, align 8, !dbg !2386
  %23 = and i8 %22, 1, !dbg !2386
  %24 = zext i8 %23 to i32, !dbg !2386
  %25 = icmp ne i32 %24, 0, !dbg !2384
  br i1 %25, label %29, label %26, !dbg !2387

; <label>:26:                                     ; preds = %12
  %27 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2388
  %28 = load %struct.WINDOW_BIND_REC*, %struct.WINDOW_BIND_REC** %5, align 8, !dbg !2389
  call void @window_bind_destroy(%struct._WINDOW_REC* %27, %struct.WINDOW_BIND_REC* %28), !dbg !2390
  br label %29, !dbg !2390

; <label>:29:                                     ; preds = %26, %12
  br label %30, !dbg !2391

; <label>:30:                                     ; preds = %29
  %31 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2392
  store %struct._GSList* %31, %struct._GSList** %3, align 8, !dbg !2394
  br label %9, !dbg !2395, !llvm.loop !2396

; <label>:32:                                     ; preds = %9
  ret void, !dbg !2398
}

; Function Attrs: nounwind uwtable
define signext i16 @color_24bit_256(i8*) #0 !dbg !743 {
  %2 = alloca i8*, align 8
  %3 = alloca [3 x i32], align 4
  %4 = alloca [3 x i32], align 4
  %5 = alloca [3 x i32], align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2399, metadata !772), !dbg !2400
  call void @llvm.dbg.declare(metadata [3 x i32]* %3, metadata !2401, metadata !772), !dbg !2405
  %10 = bitcast [3 x i32]* %3 to i8*, !dbg !2405
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 12, i32 4, i1 false), !dbg !2405
  call void @llvm.dbg.declare(metadata [3 x i32]* %4, metadata !2406, metadata !772), !dbg !2407
  call void @llvm.dbg.declare(metadata [3 x i32]* %5, metadata !2408, metadata !772), !dbg !2409
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2410, metadata !772), !dbg !2413
  store i64 0, i64* %6, align 8, !dbg !2414
  br label %11, !dbg !2416

; <label>:11:                                     ; preds = %58, %1
  %12 = load i64, i64* %6, align 8, !dbg !2417
  %13 = icmp ult i64 %12, 3, !dbg !2420
  br i1 %13, label %14, label %61, !dbg !2421

; <label>:14:                                     ; preds = %11
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2422, metadata !772), !dbg !2424
  %15 = load i64, i64* %6, align 8, !dbg !2425
  %16 = load i8*, i8** %2, align 8, !dbg !2426
  %17 = getelementptr inbounds i8, i8* %16, i64 %15, !dbg !2426
  %18 = load i8, i8* %17, align 1, !dbg !2426
  %19 = zext i8 %18 to i32, !dbg !2426
  store i32 %19, i32* %7, align 4, !dbg !2424
  %20 = load i64, i64* %6, align 8, !dbg !2427
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 %20, !dbg !2428
  store i32 -1, i32* %21, align 4, !dbg !2429
  %22 = load i32, i32* %7, align 4, !dbg !2430
  %23 = icmp slt i32 %22, 47, !dbg !2432
  br i1 %23, label %24, label %29, !dbg !2433

; <label>:24:                                     ; preds = %14
  %25 = load i64, i64* %6, align 8, !dbg !2434
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 %25, !dbg !2436
  store i32 0, i32* %26, align 4, !dbg !2437
  %27 = load i64, i64* %6, align 8, !dbg !2438
  %28 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 %27, !dbg !2439
  store i32 -20, i32* %28, align 4, !dbg !2440
  br label %44, !dbg !2441

; <label>:29:                                     ; preds = %14
  %30 = load i32, i32* %7, align 4, !dbg !2442
  %31 = sub nsw i32 %30, 95, !dbg !2444
  %32 = add nsw i32 %31, 20, !dbg !2445
  %33 = sdiv i32 %32, 40, !dbg !2446
  %34 = add nsw i32 1, %33, !dbg !2447
  %35 = load i64, i64* %6, align 8, !dbg !2448
  %36 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 %35, !dbg !2449
  store i32 %34, i32* %36, align 4, !dbg !2450
  %37 = load i32, i32* %7, align 4, !dbg !2451
  %38 = sub nsw i32 %37, 95, !dbg !2452
  %39 = add nsw i32 %38, 20, !dbg !2453
  %40 = srem i32 %39, 40, !dbg !2454
  %41 = sub nsw i32 %40, 20, !dbg !2455
  %42 = load i64, i64* %6, align 8, !dbg !2456
  %43 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 %42, !dbg !2457
  store i32 %41, i32* %43, align 4, !dbg !2458
  br label %44

; <label>:44:                                     ; preds = %29, %24
  %45 = load i32, i32* %7, align 4, !dbg !2459
  %46 = icmp slt i32 %45, 4, !dbg !2461
  br i1 %46, label %47, label %50, !dbg !2462

; <label>:47:                                     ; preds = %44
  %48 = load i64, i64* %6, align 8, !dbg !2463
  %49 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 %48, !dbg !2465
  store i32 -1, i32* %49, align 4, !dbg !2466
  br label %57, !dbg !2467

; <label>:50:                                     ; preds = %44
  %51 = load i32, i32* %7, align 4, !dbg !2468
  %52 = sub nsw i32 %51, 8, !dbg !2470
  %53 = add nsw i32 %52, 5, !dbg !2471
  %54 = sdiv i32 %53, 10, !dbg !2472
  %55 = load i64, i64* %6, align 8, !dbg !2473
  %56 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 %55, !dbg !2474
  store i32 %54, i32* %56, align 4, !dbg !2475
  br label %57

; <label>:57:                                     ; preds = %50, %47
  br label %58, !dbg !2476

; <label>:58:                                     ; preds = %57
  %59 = load i64, i64* %6, align 8, !dbg !2477
  %60 = add i64 %59, 1, !dbg !2477
  store i64 %60, i64* %6, align 8, !dbg !2477
  br label %11, !dbg !2479, !llvm.loop !2480

; <label>:61:                                     ; preds = %11
  %62 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0, !dbg !2482
  %63 = load i32, i32* %62, align 4, !dbg !2482
  %64 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1, !dbg !2484
  %65 = load i32, i32* %64, align 4, !dbg !2484
  %66 = icmp eq i32 %63, %65, !dbg !2485
  br i1 %66, label %67, label %92, !dbg !2486

; <label>:67:                                     ; preds = %61
  %68 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1, !dbg !2487
  %69 = load i32, i32* %68, align 4, !dbg !2487
  %70 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2, !dbg !2489
  %71 = load i32, i32* %70, align 4, !dbg !2489
  %72 = icmp eq i32 %69, %71, !dbg !2490
  br i1 %72, label %73, label %92, !dbg !2491

; <label>:73:                                     ; preds = %67
  %74 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0, !dbg !2492
  %75 = load i32, i32* %74, align 4, !dbg !2492
  %76 = call i32 @abs(i32 %75) #1, !dbg !2493
  %77 = mul nsw i32 4, %76, !dbg !2494
  %78 = icmp slt i32 %77, 10, !dbg !2495
  br i1 %78, label %79, label %92, !dbg !2496

; <label>:79:                                     ; preds = %73
  %80 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 1, !dbg !2497
  %81 = load i32, i32* %80, align 4, !dbg !2497
  %82 = call i32 @abs(i32 %81) #1, !dbg !2498
  %83 = mul nsw i32 4, %82, !dbg !2499
  %84 = icmp slt i32 %83, 10, !dbg !2500
  br i1 %84, label %85, label %92, !dbg !2501

; <label>:85:                                     ; preds = %79
  %86 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 2, !dbg !2502
  %87 = load i32, i32* %86, align 4, !dbg !2502
  %88 = call i32 @abs(i32 %87) #1, !dbg !2504
  %89 = mul nsw i32 4, %88, !dbg !2505
  %90 = icmp slt i32 %89, 10, !dbg !2506
  br i1 %90, label %91, label %92, !dbg !2507

; <label>:91:                                     ; preds = %85
  br label %198, !dbg !2509

; <label>:92:                                     ; preds = %85, %79, %73, %67, %61
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2511, metadata !772), !dbg !2513
  %93 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1, !dbg !2514
  %94 = load i32, i32* %93, align 4, !dbg !2514
  %95 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2, !dbg !2515
  %96 = load i32, i32* %95, align 4, !dbg !2515
  %97 = icmp eq i32 %94, %96, !dbg !2516
  %98 = select i1 %97, i32 0, i32 1, !dbg !2514
  store i32 %98, i32* %8, align 4, !dbg !2513
  %99 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0, !dbg !2517
  %100 = load i32, i32* %99, align 4, !dbg !2517
  %101 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1, !dbg !2519
  %102 = load i32, i32* %101, align 4, !dbg !2519
  %103 = icmp eq i32 %100, %102, !dbg !2520
  br i1 %103, label %112, label %104, !dbg !2521

; <label>:104:                                    ; preds = %92
  %105 = load i32, i32* %8, align 4, !dbg !2522
  %106 = sext i32 %105 to i64, !dbg !2524
  %107 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 %106, !dbg !2524
  %108 = load i32, i32* %107, align 4, !dbg !2524
  %109 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2, !dbg !2525
  %110 = load i32, i32* %109, align 4, !dbg !2525
  %111 = icmp eq i32 %108, %110, !dbg !2526
  br i1 %111, label %112, label %197, !dbg !2527

; <label>:112:                                    ; preds = %104, %92
  %113 = load i32, i32* %8, align 4, !dbg !2528
  %114 = sext i32 %113 to i64, !dbg !2530
  %115 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 %114, !dbg !2530
  %116 = load i32, i32* %115, align 4, !dbg !2530
  %117 = load i32, i32* %8, align 4, !dbg !2531
  %118 = add nsw i32 %117, 1, !dbg !2532
  %119 = srem i32 %118, 3, !dbg !2533
  %120 = sext i32 %119 to i64, !dbg !2534
  %121 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 %120, !dbg !2534
  %122 = load i32, i32* %121, align 4, !dbg !2534
  %123 = sub nsw i32 %116, %122, !dbg !2535
  %124 = call i32 @abs(i32 %123) #1, !dbg !2536
  %125 = icmp sle i32 %124, 1, !dbg !2537
  br i1 %125, label %126, label %197, !dbg !2538

; <label>:126:                                    ; preds = %112
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2539, metadata !772), !dbg !2541
  %127 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1, !dbg !2542
  %128 = load i32, i32* %127, align 4, !dbg !2542
  %129 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2, !dbg !2543
  %130 = load i32, i32* %129, align 4, !dbg !2543
  %131 = icmp eq i32 %128, %130, !dbg !2544
  %132 = select i1 %131, i32 0, i32 1, !dbg !2542
  store i32 %132, i32* %9, align 4, !dbg !2541
  %133 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0, !dbg !2545
  %134 = load i32, i32* %133, align 4, !dbg !2545
  %135 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1, !dbg !2547
  %136 = load i32, i32* %135, align 4, !dbg !2547
  %137 = icmp eq i32 %134, %136, !dbg !2548
  br i1 %137, label %146, label %138, !dbg !2549

; <label>:138:                                    ; preds = %126
  %139 = load i32, i32* %9, align 4, !dbg !2550
  %140 = sext i32 %139 to i64, !dbg !2552
  %141 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 %140, !dbg !2552
  %142 = load i32, i32* %141, align 4, !dbg !2552
  %143 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2, !dbg !2553
  %144 = load i32, i32* %143, align 4, !dbg !2553
  %145 = icmp eq i32 %142, %144, !dbg !2554
  br i1 %145, label %146, label %196, !dbg !2555

; <label>:146:                                    ; preds = %138, %126
  %147 = load i32, i32* %9, align 4, !dbg !2556
  %148 = sext i32 %147 to i64, !dbg !2558
  %149 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 %148, !dbg !2558
  %150 = load i32, i32* %149, align 4, !dbg !2558
  %151 = load i32, i32* %9, align 4, !dbg !2559
  %152 = add nsw i32 %151, 1, !dbg !2560
  %153 = srem i32 %152, 3, !dbg !2561
  %154 = sext i32 %153 to i64, !dbg !2562
  %155 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 %154, !dbg !2562
  %156 = load i32, i32* %155, align 4, !dbg !2562
  %157 = sub nsw i32 %150, %156, !dbg !2563
  %158 = call i32 @abs(i32 %157) #1, !dbg !2564
  %159 = icmp sle i32 %158, 2, !dbg !2565
  br i1 %159, label %160, label %196, !dbg !2566

; <label>:160:                                    ; preds = %146
  %161 = load i32, i32* %9, align 4, !dbg !2567
  %162 = sext i32 %161 to i64, !dbg !2570
  %163 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 %162, !dbg !2570
  %164 = load i32, i32* %163, align 4, !dbg !2570
  %165 = icmp slt i32 %164, 0, !dbg !2571
  br i1 %165, label %166, label %170, !dbg !2572

; <label>:166:                                    ; preds = %160
  %167 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2, !dbg !2573
  store i32 0, i32* %167, align 4, !dbg !2575
  %168 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1, !dbg !2576
  store i32 0, i32* %168, align 4, !dbg !2577
  %169 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0, !dbg !2578
  store i32 0, i32* %169, align 4, !dbg !2579
  br label %195, !dbg !2580

; <label>:170:                                    ; preds = %160
  %171 = load i32, i32* %9, align 4, !dbg !2581
  %172 = sext i32 %171 to i64, !dbg !2583
  %173 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 %172, !dbg !2583
  %174 = load i32, i32* %173, align 4, !dbg !2583
  %175 = icmp sgt i32 %174, 23, !dbg !2584
  br i1 %175, label %176, label %180, !dbg !2585

; <label>:176:                                    ; preds = %170
  %177 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2, !dbg !2586
  store i32 5, i32* %177, align 4, !dbg !2588
  %178 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1, !dbg !2589
  store i32 5, i32* %178, align 4, !dbg !2590
  %179 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0, !dbg !2591
  store i32 5, i32* %179, align 4, !dbg !2592
  br label %194, !dbg !2593

; <label>:180:                                    ; preds = %170
  %181 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0, !dbg !2594
  store i32 6, i32* %181, align 4, !dbg !2596
  %182 = load i32, i32* %9, align 4, !dbg !2597
  %183 = sext i32 %182 to i64, !dbg !2598
  %184 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 %183, !dbg !2598
  %185 = load i32, i32* %184, align 4, !dbg !2598
  %186 = sdiv i32 %185, 6, !dbg !2599
  %187 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1, !dbg !2600
  store i32 %186, i32* %187, align 4, !dbg !2601
  %188 = load i32, i32* %9, align 4, !dbg !2602
  %189 = sext i32 %188 to i64, !dbg !2603
  %190 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 %189, !dbg !2603
  %191 = load i32, i32* %190, align 4, !dbg !2603
  %192 = srem i32 %191, 6, !dbg !2604
  %193 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2, !dbg !2605
  store i32 %192, i32* %193, align 4, !dbg !2606
  br label %194

; <label>:194:                                    ; preds = %180, %176
  br label %195

; <label>:195:                                    ; preds = %194, %166
  br label %196, !dbg !2607

; <label>:196:                                    ; preds = %195, %146, %138
  br label %197, !dbg !2608

; <label>:197:                                    ; preds = %196, %112, %104
  br label %198

; <label>:198:                                    ; preds = %197, %91
  %199 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0, !dbg !2609
  %200 = load i32, i32* %199, align 4, !dbg !2609
  %201 = mul nsw i32 %200, 36, !dbg !2610
  %202 = add nsw i32 16, %201, !dbg !2611
  %203 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1, !dbg !2612
  %204 = load i32, i32* %203, align 4, !dbg !2612
  %205 = mul nsw i32 %204, 6, !dbg !2613
  %206 = add nsw i32 %202, %205, !dbg !2614
  %207 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2, !dbg !2615
  %208 = load i32, i32* %207, align 4, !dbg !2615
  %209 = add nsw i32 %206, %208, !dbg !2616
  %210 = trunc i32 %209 to i16, !dbg !2617
  ret i16 %210, !dbg !2618
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #4

; Function Attrs: nounwind uwtable
define void @windows_init() #0 !dbg !2619 {
  store %struct._WINDOW_REC* null, %struct._WINDOW_REC** @active_win, align 8, !dbg !2620
  %1 = call %struct._GSequence* @g_sequence_new(void (i8*)* null), !dbg !2621
  store %struct._GSequence* %1, %struct._GSequence** @windows_seq, align 8, !dbg !2622
  store i32 0, i32* @daycheck, align 4, !dbg !2623
  store i32 -1, i32* @daytag, align 4, !dbg !2624
  call void @settings_add_bool_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i32 0), !dbg !2625
  call void @settings_add_bool_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i32 1), !dbg !2626
  call void @settings_add_bool_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i32 0, i32 0), i32 0), !dbg !2627
  call void @settings_add_level_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0)), !dbg !2628
  call void @read_settings(), !dbg !2629
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*)* @sig_server_connected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2630
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*)* @sig_server_connected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2631
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*)* @sig_server_disconnected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2632
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.29, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*)* @sig_server_disconnected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2633
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2634
  ret void, !dbg !2635
}

declare %struct._GSequence* @g_sequence_new(void (i8*)*) #2

declare void @settings_add_bool_module(i8*, i8*, i8*, i32) #2

declare void @settings_add_level_module(i8*, i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @read_settings() #0 !dbg !2636 {
  %1 = load i32, i32* @daytag, align 4, !dbg !2637
  %2 = icmp ne i32 %1, -1, !dbg !2639
  br i1 %2, label %3, label %6, !dbg !2640

; <label>:3:                                      ; preds = %0
  %4 = load i32, i32* @daytag, align 4, !dbg !2641
  %5 = call i32 @g_source_remove(i32 %4), !dbg !2643
  store i32 -1, i32* @daytag, align 4, !dbg !2644
  br label %6, !dbg !2645

; <label>:6:                                      ; preds = %3, %0
  %7 = call i32 @settings_get_bool(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0)), !dbg !2646
  %8 = icmp ne i32 %7, 0, !dbg !2646
  br i1 %8, label %9, label %11, !dbg !2648

; <label>:9:                                      ; preds = %6
  %10 = call i32 @g_timeout_add(i32 30000, i32 (i8*)* bitcast (i32 ()* @sig_check_daychange to i32 (i8*)*), i8* null), !dbg !2649
  store i32 %10, i32* @daytag, align 4, !dbg !2650
  br label %11, !dbg !2651

; <label>:11:                                     ; preds = %9, %6
  ret void, !dbg !2652
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @sig_server_connected(%struct._SERVER_REC*) #0 !dbg !2653 {
  %2 = alloca %struct._SERVER_REC*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct._WINDOW_REC*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %2, metadata !2656, metadata !772), !dbg !2657
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !2658, metadata !772), !dbg !2659
  br label %5, !dbg !2660, !llvm.loop !2661

; <label>:5:                                      ; preds = %1
  %6 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !2662
  %7 = icmp ne %struct._SERVER_REC* %6, null, !dbg !2666
  br i1 %7, label %8, label %9, !dbg !2662

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !2667

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.sig_server_connected, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i32 0, i32 0)), !dbg !2670
  br label %57, !dbg !2673

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !2674

; <label>:11:                                     ; preds = %10
  %12 = load %struct._GSList*, %struct._GSList** @windows, align 8, !dbg !2676
  store %struct._GSList* %12, %struct._GSList** %3, align 8, !dbg !2678
  br label %13, !dbg !2679

; <label>:13:                                     ; preds = %53, %11
  %14 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !2680
  %15 = icmp ne %struct._GSList* %14, null, !dbg !2683
  br i1 %15, label %16, label %57, !dbg !2684

; <label>:16:                                     ; preds = %13
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %4, metadata !2685, metadata !772), !dbg !2687
  %17 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !2688
  %18 = getelementptr inbounds %struct._GSList, %struct._GSList* %17, i32 0, i32 0, !dbg !2689
  %19 = load i8*, i8** %18, align 8, !dbg !2689
  %20 = bitcast i8* %19 to %struct._WINDOW_REC*, !dbg !2688
  store %struct._WINDOW_REC* %20, %struct._WINDOW_REC** %4, align 8, !dbg !2687
  %21 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !2690
  %22 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %21, i32 0, i32 8, !dbg !2692
  %23 = load i8*, i8** %22, align 8, !dbg !2692
  %24 = icmp eq i8* %23, null, !dbg !2693
  br i1 %24, label %34, label %25, !dbg !2694

; <label>:25:                                     ; preds = %16
  %26 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !2695
  %27 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %26, i32 0, i32 8, !dbg !2696
  %28 = load i8*, i8** %27, align 8, !dbg !2696
  %29 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !2697
  %30 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %29, i32 0, i32 6, !dbg !2698
  %31 = load i8*, i8** %30, align 8, !dbg !2698
  %32 = call i32 @g_ascii_strcasecmp(i8* %28, i8* %31), !dbg !2699
  %33 = icmp eq i32 %32, 0, !dbg !2700
  br i1 %33, label %34, label %52, !dbg !2701

; <label>:34:                                     ; preds = %25, %16
  %35 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !2702
  %36 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %35, i32 0, i32 6, !dbg !2703
  %37 = load %struct._SERVER_REC*, %struct._SERVER_REC** %36, align 8, !dbg !2703
  %38 = icmp eq %struct._SERVER_REC* %37, null, !dbg !2704
  br i1 %38, label %48, label %39, !dbg !2705

; <label>:39:                                     ; preds = %34
  %40 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !2706
  %41 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !2707
  %42 = icmp eq %struct._WINDOW_REC* %40, %41, !dbg !2708
  br i1 %42, label %43, label %52, !dbg !2709

; <label>:43:                                     ; preds = %39
  %44 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !2710
  %45 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %44, i32 0, i32 4, !dbg !2712
  %46 = load %struct._GSList*, %struct._GSList** %45, align 8, !dbg !2712
  %47 = icmp eq %struct._GSList* %46, null, !dbg !2713
  br i1 %47, label %48, label %52, !dbg !2714

; <label>:48:                                     ; preds = %43, %34
  %49 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !2716
  %50 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !2717
  %51 = bitcast %struct._SERVER_REC* %50 to i8*, !dbg !2717
  call void @window_change_server(%struct._WINDOW_REC* %49, i8* %51), !dbg !2718
  br label %52, !dbg !2718

; <label>:52:                                     ; preds = %48, %43, %39, %25
  br label %53, !dbg !2719

; <label>:53:                                     ; preds = %52
  %54 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !2720
  %55 = getelementptr inbounds %struct._GSList, %struct._GSList* %54, i32 0, i32 1, !dbg !2722
  %56 = load %struct._GSList*, %struct._GSList** %55, align 8, !dbg !2722
  store %struct._GSList* %56, %struct._GSList** %3, align 8, !dbg !2723
  br label %13, !dbg !2724, !llvm.loop !2725

; <label>:57:                                     ; preds = %9, %13
  ret void, !dbg !2727
}

; Function Attrs: nounwind uwtable
define internal void @sig_server_disconnected(%struct._SERVER_REC*) #0 !dbg !2728 {
  %2 = alloca %struct._SERVER_REC*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca %struct._WINDOW_REC*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %2, metadata !2729, metadata !772), !dbg !2730
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !2731, metadata !772), !dbg !2732
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !2733, metadata !772), !dbg !2734
  br label %6, !dbg !2735, !llvm.loop !2736

; <label>:6:                                      ; preds = %1
  %7 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !2737
  %8 = icmp ne %struct._SERVER_REC* %7, null, !dbg !2741
  br i1 %8, label %9, label %10, !dbg !2737

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !2742

; <label>:10:                                     ; preds = %6
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.sig_server_disconnected, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i32 0, i32 0)), !dbg !2745
  br label %60, !dbg !2748

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !2749

; <label>:12:                                     ; preds = %11
  %13 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !2751
  %14 = icmp eq %struct._GSList* %13, null, !dbg !2752
  br i1 %14, label %15, label %16, !dbg !2751

; <label>:15:                                     ; preds = %12
  br label %20, !dbg !2753

; <label>:16:                                     ; preds = %12
  %17 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !2755
  %18 = getelementptr inbounds %struct._GSList, %struct._GSList* %17, i32 0, i32 0, !dbg !2757
  %19 = load i8*, i8** %18, align 8, !dbg !2757
  br label %20, !dbg !2758

; <label>:20:                                     ; preds = %16, %15
  %21 = phi i8* [ null, %15 ], [ %19, %16 ], !dbg !2759
  %22 = bitcast i8* %21 to %struct._SERVER_REC*, !dbg !2759
  store %struct._SERVER_REC* %22, %struct._SERVER_REC** %4, align 8, !dbg !2761
  %23 = load %struct._GSList*, %struct._GSList** @windows, align 8, !dbg !2762
  store %struct._GSList* %23, %struct._GSList** %3, align 8, !dbg !2764
  br label %24, !dbg !2765

; <label>:24:                                     ; preds = %56, %20
  %25 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !2766
  %26 = icmp ne %struct._GSList* %25, null, !dbg !2769
  br i1 %26, label %27, label %60, !dbg !2770

; <label>:27:                                     ; preds = %24
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %5, metadata !2771, metadata !772), !dbg !2773
  %28 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !2774
  %29 = getelementptr inbounds %struct._GSList, %struct._GSList* %28, i32 0, i32 0, !dbg !2775
  %30 = load i8*, i8** %29, align 8, !dbg !2775
  %31 = bitcast i8* %30 to %struct._WINDOW_REC*, !dbg !2774
  store %struct._WINDOW_REC* %31, %struct._WINDOW_REC** %5, align 8, !dbg !2773
  %32 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !2776
  %33 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %32, i32 0, i32 6, !dbg !2778
  %34 = load %struct._SERVER_REC*, %struct._SERVER_REC** %33, align 8, !dbg !2778
  %35 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !2779
  %36 = icmp eq %struct._SERVER_REC* %34, %35, !dbg !2780
  br i1 %36, label %43, label %37, !dbg !2781

; <label>:37:                                     ; preds = %27
  %38 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !2782
  %39 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %38, i32 0, i32 7, !dbg !2783
  %40 = load %struct._SERVER_REC*, %struct._SERVER_REC** %39, align 8, !dbg !2783
  %41 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !2784
  %42 = icmp eq %struct._SERVER_REC* %40, %41, !dbg !2785
  br i1 %42, label %43, label %55, !dbg !2786

; <label>:43:                                     ; preds = %37, %27
  %44 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !2788
  %45 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !2790
  %46 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %45, i32 0, i32 8, !dbg !2791
  %47 = load i8*, i8** %46, align 8, !dbg !2791
  %48 = icmp ne i8* %47, null, !dbg !2792
  br i1 %48, label %49, label %50, !dbg !2790

; <label>:49:                                     ; preds = %43
  br label %52, !dbg !2793

; <label>:50:                                     ; preds = %43
  %51 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !2795
  br label %52, !dbg !2796

; <label>:52:                                     ; preds = %50, %49
  %53 = phi %struct._SERVER_REC* [ null, %49 ], [ %51, %50 ], !dbg !2798
  %54 = bitcast %struct._SERVER_REC* %53 to i8*, !dbg !2798
  call void @window_change_server(%struct._WINDOW_REC* %44, i8* %54), !dbg !2800
  br label %55, !dbg !2801

; <label>:55:                                     ; preds = %52, %37
  br label %56, !dbg !2802

; <label>:56:                                     ; preds = %55
  %57 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !2803
  %58 = getelementptr inbounds %struct._GSList, %struct._GSList* %57, i32 0, i32 1, !dbg !2805
  %59 = load %struct._GSList*, %struct._GSList** %58, align 8, !dbg !2805
  store %struct._GSList* %59, %struct._GSList** %3, align 8, !dbg !2806
  br label %24, !dbg !2807, !llvm.loop !2808

; <label>:60:                                     ; preds = %10, %24
  ret void, !dbg !2810
}

; Function Attrs: nounwind uwtable
define void @windows_deinit() #0 !dbg !2811 {
  %1 = load i32, i32* @daytag, align 4, !dbg !2812
  %2 = icmp ne i32 %1, -1, !dbg !2814
  br i1 %2, label %3, label %6, !dbg !2815

; <label>:3:                                      ; preds = %0
  %4 = load i32, i32* @daytag, align 4, !dbg !2816
  %5 = call i32 @g_source_remove(i32 %4), !dbg !2818
  br label %6, !dbg !2818

; <label>:6:                                      ; preds = %3, %0
  %7 = load i32, i32* @daycheck, align 4, !dbg !2819
  %8 = icmp eq i32 %7, 1, !dbg !2821
  br i1 %8, label %9, label %10, !dbg !2822

; <label>:9:                                      ; preds = %6
  call void @signal_remove_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_print_text to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2823
  br label %10, !dbg !2823

; <label>:10:                                     ; preds = %9, %6
  call void @signal_remove_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*)* @sig_server_connected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2825
  call void @signal_remove_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*)* @sig_server_connected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2826
  call void @signal_remove_full(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*)* @sig_server_disconnected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2827
  call void @signal_remove_full(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.29, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*)* @sig_server_disconnected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2828
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2829
  %11 = load %struct._GSequence*, %struct._GSequence** @windows_seq, align 8, !dbg !2830
  call void @g_sequence_free(%struct._GSequence* %11), !dbg !2831
  store %struct._GSequence* null, %struct._GSequence** @windows_seq, align 8, !dbg !2832
  ret void, !dbg !2833
}

declare i32 @g_source_remove(i32) #2

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @sig_print_text() #0 !dbg !2834 {
  %1 = alloca %struct._GSList*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.tm*, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %1, metadata !2835, metadata !772), !dbg !2836
  call void @llvm.dbg.declare(metadata i64* %2, metadata !2837, metadata !772), !dbg !2838
  call void @llvm.dbg.declare(metadata %struct.tm** %3, metadata !2839, metadata !772), !dbg !2854
  %4 = call i64 @time(i64* null) #6, !dbg !2855
  store i64 %4, i64* %2, align 8, !dbg !2856
  %5 = call %struct.tm* @localtime(i64* %2) #6, !dbg !2857
  store %struct.tm* %5, %struct.tm** %3, align 8, !dbg !2858
  %6 = load %struct.tm*, %struct.tm** %3, align 8, !dbg !2859
  %7 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 2, !dbg !2861
  %8 = load i32, i32* %7, align 8, !dbg !2861
  %9 = icmp ne i32 %8, 0, !dbg !2862
  br i1 %9, label %15, label %10, !dbg !2863

; <label>:10:                                     ; preds = %0
  %11 = load %struct.tm*, %struct.tm** %3, align 8, !dbg !2864
  %12 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 1, !dbg !2866
  %13 = load i32, i32* %12, align 4, !dbg !2866
  %14 = icmp ne i32 %13, 0, !dbg !2867
  br i1 %14, label %15, label %16, !dbg !2868

; <label>:15:                                     ; preds = %10, %0
  br label %31, !dbg !2869

; <label>:16:                                     ; preds = %10
  store i32 2, i32* @daycheck, align 4, !dbg !2870
  call void @signal_remove_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_print_text to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2871
  %17 = load %struct._GSList*, %struct._GSList** @windows, align 8, !dbg !2872
  store %struct._GSList* %17, %struct._GSList** %1, align 8, !dbg !2874
  br label %18, !dbg !2875

; <label>:18:                                     ; preds = %27, %16
  %19 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !2876
  %20 = icmp ne %struct._GSList* %19, null, !dbg !2879
  br i1 %20, label %21, label %31, !dbg !2880

; <label>:21:                                     ; preds = %18
  %22 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !2881
  %23 = getelementptr inbounds %struct._GSList, %struct._GSList* %22, i32 0, i32 0, !dbg !2882
  %24 = load i8*, i8** %23, align 8, !dbg !2882
  %25 = bitcast i8* %24 to %struct._WINDOW_REC*, !dbg !2881
  %26 = load %struct.tm*, %struct.tm** %3, align 8, !dbg !2883
  call void @window_print_daychange(%struct._WINDOW_REC* %25, %struct.tm* %26), !dbg !2884
  br label %27, !dbg !2884

; <label>:27:                                     ; preds = %21
  %28 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !2885
  %29 = getelementptr inbounds %struct._GSList, %struct._GSList* %28, i32 0, i32 1, !dbg !2887
  %30 = load %struct._GSList*, %struct._GSList** %29, align 8, !dbg !2887
  store %struct._GSList* %30, %struct._GSList** %1, align 8, !dbg !2888
  br label %18, !dbg !2889, !llvm.loop !2890

; <label>:31:                                     ; preds = %15, %18
  ret void, !dbg !2892
}

declare void @g_sequence_free(%struct._GSequence*) #2

declare %struct._GSequenceNode* @g_sequence_iter_next(%struct._GSequenceNode*) #2

declare %struct._GSequenceNode* @g_sequence_insert_sorted(%struct._GSequence*, i8*, i32 (i8*, i8*, i8*)*, i8*) #2

declare %struct._GSequenceNode* @g_sequence_lookup(%struct._GSequence*, i8*, i32 (i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @window_set_refnum0(%struct._WINDOW_REC*, i32) #0 !dbg !2893 {
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !2894, metadata !772), !dbg !2895
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2896, metadata !772), !dbg !2897
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2898, metadata !772), !dbg !2899
  br label %6, !dbg !2900, !llvm.loop !2901

; <label>:6:                                      ; preds = %2
  %7 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !2902
  %8 = icmp ne %struct._WINDOW_REC* %7, null, !dbg !2906
  br i1 %8, label %9, label %10, !dbg !2902

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !2907

; <label>:10:                                     ; preds = %6
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.window_set_refnum0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0)), !dbg !2910
  br label %38, !dbg !2913

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !2914

; <label>:12:                                     ; preds = %11
  br label %13, !dbg !2916, !llvm.loop !2917

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %4, align 4, !dbg !2918
  %15 = icmp sge i32 %14, 1, !dbg !2922
  br i1 %15, label %16, label %17, !dbg !2918

; <label>:16:                                     ; preds = %13
  br label %18, !dbg !2923

; <label>:17:                                     ; preds = %13
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.window_set_refnum0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0)), !dbg !2926
  br label %38, !dbg !2929

; <label>:18:                                     ; preds = %16
  br label %19, !dbg !2930

; <label>:19:                                     ; preds = %18
  %20 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !2932
  %21 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %20, i32 0, i32 0, !dbg !2934
  %22 = load i32, i32* %21, align 8, !dbg !2934
  %23 = load i32, i32* %4, align 4, !dbg !2935
  %24 = icmp eq i32 %22, %23, !dbg !2936
  br i1 %24, label %25, label %26, !dbg !2937

; <label>:25:                                     ; preds = %19
  br label %38, !dbg !2938

; <label>:26:                                     ; preds = %19
  %27 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !2940
  %28 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %27, i32 0, i32 0, !dbg !2941
  %29 = load i32, i32* %28, align 8, !dbg !2941
  store i32 %29, i32* %5, align 4, !dbg !2942
  %30 = load i32, i32* %4, align 4, !dbg !2943
  %31 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !2944
  %32 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %31, i32 0, i32 0, !dbg !2945
  store i32 %30, i32* %32, align 8, !dbg !2946
  %33 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !2947
  %34 = load i32, i32* %5, align 4, !dbg !2948
  %35 = sext i32 %34 to i64, !dbg !2949
  %36 = inttoptr i64 %35 to i8*, !dbg !2950
  %37 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0), i32 2, %struct._WINDOW_REC* %33, i8* %36), !dbg !2951
  br label %38, !dbg !2952

; <label>:38:                                     ; preds = %26, %25, %17, %10
  ret void, !dbg !2953
}

; Function Attrs: nounwind uwtable
define internal i32 @window_refnum_lookup(%struct._WINDOW_REC*, i8*) #0 !dbg !2955 {
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !2958, metadata !772), !dbg !2959
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2960, metadata !772), !dbg !2961
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2962, metadata !772), !dbg !2963
  %6 = load i8*, i8** %4, align 8, !dbg !2964
  %7 = ptrtoint i8* %6 to i64, !dbg !2965
  %8 = trunc i64 %7 to i32, !dbg !2966
  store i32 %8, i32* %5, align 4, !dbg !2963
  %9 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !2967
  %10 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %9, i32 0, i32 0, !dbg !2968
  %11 = load i32, i32* %10, align 8, !dbg !2968
  %12 = load i32, i32* %5, align 4, !dbg !2969
  %13 = icmp eq i32 %11, %12, !dbg !2970
  br i1 %13, label %14, label %15, !dbg !2967

; <label>:14:                                     ; preds = %2
  br label %22, !dbg !2971

; <label>:15:                                     ; preds = %2
  %16 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !2973
  %17 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %16, i32 0, i32 0, !dbg !2975
  %18 = load i32, i32* %17, align 8, !dbg !2975
  %19 = load i32, i32* %5, align 4, !dbg !2976
  %20 = icmp slt i32 %18, %19, !dbg !2977
  %21 = select i1 %20, i32 -1, i32 1, !dbg !2973
  br label %22, !dbg !2978

; <label>:22:                                     ; preds = %15, %14
  %23 = phi i32 [ 0, %14 ], [ %21, %15 ], !dbg !2979
  ret i32 %23, !dbg !2981
}

declare void @g_sequence_sort_changed(%struct._GSequenceNode*, i32 (i8*, i8*, i8*)*, i8*) #2

declare %struct._GSequenceNode* @g_sequence_get_end_iter(%struct._GSequence*) #2

declare %struct._GSequenceNode* @g_sequence_search(%struct._GSequence*, i8*, i32 (i8*, i8*, i8*)*, i8*) #2

declare %struct._GSequenceNode* @g_sequence_get_begin_iter(%struct._GSequence*) #2

declare i32 @g_timeout_add(i32, i32 (i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @sig_check_daychange() #0 !dbg !2982 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca %struct.tm*, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !2983, metadata !772), !dbg !2984
  call void @llvm.dbg.declare(metadata %struct.tm** %3, metadata !2985, metadata !772), !dbg !2986
  %4 = call i64 @time(i64* null) #6, !dbg !2987
  store i64 %4, i64* %2, align 8, !dbg !2988
  %5 = call %struct.tm* @localtime(i64* %2) #6, !dbg !2989
  store %struct.tm* %5, %struct.tm** %3, align 8, !dbg !2990
  %6 = load i32, i32* @daycheck, align 4, !dbg !2991
  %7 = icmp eq i32 %6, 1, !dbg !2993
  br i1 %7, label %8, label %19, !dbg !2994

; <label>:8:                                      ; preds = %0
  %9 = load %struct.tm*, %struct.tm** %3, align 8, !dbg !2995
  %10 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 2, !dbg !2997
  %11 = load i32, i32* %10, align 8, !dbg !2997
  %12 = icmp eq i32 %11, 0, !dbg !2998
  br i1 %12, label %13, label %19, !dbg !2999

; <label>:13:                                     ; preds = %8
  %14 = load %struct.tm*, %struct.tm** %3, align 8, !dbg !3000
  %15 = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 1, !dbg !3002
  %16 = load i32, i32* %15, align 4, !dbg !3002
  %17 = icmp eq i32 %16, 0, !dbg !3003
  br i1 %17, label %18, label %19, !dbg !3004

; <label>:18:                                     ; preds = %13
  call void @sig_print_text(), !dbg !3005
  store i32 1, i32* %1, align 4, !dbg !3007
  br label %35, !dbg !3007

; <label>:19:                                     ; preds = %13, %8, %0
  %20 = load %struct.tm*, %struct.tm** %3, align 8, !dbg !3008
  %21 = getelementptr inbounds %struct.tm, %struct.tm* %20, i32 0, i32 2, !dbg !3010
  %22 = load i32, i32* %21, align 8, !dbg !3010
  %23 = icmp ne i32 %22, 23, !dbg !3011
  br i1 %23, label %29, label %24, !dbg !3012

; <label>:24:                                     ; preds = %19
  %25 = load %struct.tm*, %struct.tm** %3, align 8, !dbg !3013
  %26 = getelementptr inbounds %struct.tm, %struct.tm* %25, i32 0, i32 1, !dbg !3015
  %27 = load i32, i32* %26, align 4, !dbg !3015
  %28 = icmp ne i32 %27, 59, !dbg !3016
  br i1 %28, label %29, label %30, !dbg !3017

; <label>:29:                                     ; preds = %24, %19
  store i32 0, i32* @daycheck, align 4, !dbg !3018
  store i32 1, i32* %1, align 4, !dbg !3020
  br label %35, !dbg !3020

; <label>:30:                                     ; preds = %24
  %31 = load i32, i32* @daycheck, align 4, !dbg !3021
  %32 = icmp eq i32 %31, 0, !dbg !3023
  br i1 %32, label %33, label %34, !dbg !3024

; <label>:33:                                     ; preds = %30
  store i32 1, i32* @daycheck, align 4, !dbg !3025
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_print_text to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3027
  br label %34, !dbg !3028

; <label>:34:                                     ; preds = %33, %30
  store i32 1, i32* %1, align 4, !dbg !3029
  br label %35, !dbg !3029

; <label>:35:                                     ; preds = %34, %29, %18
  %36 = load i32, i32* %1, align 4, !dbg !3030
  ret i32 %36, !dbg !3030
}

; Function Attrs: nounwind
declare i64 @time(i64*) #5

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #5

; Function Attrs: nounwind uwtable
define internal void @window_print_daychange(%struct._WINDOW_REC*, %struct.tm*) #0 !dbg !3031 {
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca %struct.tm*, align 8
  %5 = alloca %struct.THEME_REC*, align 8
  %6 = alloca %struct._TEXT_DEST_REC, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [256 x i8], align 16
  %9 = alloca i32, align 4
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !3034, metadata !772), !dbg !3035
  store %struct.tm* %1, %struct.tm** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.tm** %4, metadata !3036, metadata !772), !dbg !3037
  call void @llvm.dbg.declare(metadata %struct.THEME_REC** %5, metadata !3038, metadata !772), !dbg !3058
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC* %6, metadata !3059, metadata !772), !dbg !3074
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3075, metadata !772), !dbg !3076
  call void @llvm.dbg.declare(metadata [256 x i8]* %8, metadata !3077, metadata !772), !dbg !3079
  call void @llvm.dbg.declare(metadata i32* %9, metadata !3080, metadata !772), !dbg !3081
  %10 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !3082
  %11 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %10, i32 0, i32 19, !dbg !3083
  %12 = load i8*, i8** %11, align 8, !dbg !3083
  %13 = icmp ne i8* %12, null, !dbg !3084
  br i1 %13, label %14, label %18, !dbg !3082

; <label>:14:                                     ; preds = %2
  %15 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !3085
  %16 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %15, i32 0, i32 19, !dbg !3087
  %17 = load i8*, i8** %16, align 8, !dbg !3087
  br label %21, !dbg !3088

; <label>:18:                                     ; preds = %2
  %19 = load %struct.THEME_REC*, %struct.THEME_REC** @current_theme, align 8, !dbg !3089
  %20 = bitcast %struct.THEME_REC* %19 to i8*, !dbg !3089
  br label %21, !dbg !3091

; <label>:21:                                     ; preds = %18, %14
  %22 = phi i8* [ %17, %14 ], [ %20, %18 ], !dbg !3092
  %23 = bitcast i8* %22 to %struct.THEME_REC*, !dbg !3092
  store %struct.THEME_REC* %23, %struct.THEME_REC** %5, align 8, !dbg !3094
  %24 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !3095
  call void @format_create_dest(%struct._TEXT_DEST_REC* %6, i8* null, i8* null, i32 67108864, %struct._WINDOW_REC* %24), !dbg !3096
  %25 = load %struct.THEME_REC*, %struct.THEME_REC** %5, align 8, !dbg !3097
  %26 = call i8* (%struct.THEME_REC*, i8*, %struct._TEXT_DEST_REC*, i32, ...) @format_get_text_theme(%struct.THEME_REC* %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0), %struct._TEXT_DEST_REC* %6, i32 6), !dbg !3098
  store i8* %26, i8** %7, align 8, !dbg !3099
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i32 0, i32 0, !dbg !3100
  %28 = load i8*, i8** %7, align 8, !dbg !3101
  %29 = load %struct.tm*, %struct.tm** %4, align 8, !dbg !3102
  %30 = call i64 @strftime(i8* %27, i64 256, i8* %28, %struct.tm* %29) #6, !dbg !3103
  %31 = trunc i64 %30 to i32, !dbg !3103
  store i32 %31, i32* %9, align 4, !dbg !3104
  %32 = load i8*, i8** %7, align 8, !dbg !3105
  call void @g_free(i8* %32), !dbg !3106
  %33 = load i32, i32* %9, align 4, !dbg !3107
  %34 = icmp sle i32 %33, 0, !dbg !3109
  br i1 %34, label %35, label %36, !dbg !3110

; <label>:35:                                     ; preds = %21
  br label %39, !dbg !3111

; <label>:36:                                     ; preds = %21
  %37 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !3113
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i32 0, i32 0, !dbg !3114
  call void @printtext_string_window(%struct._WINDOW_REC* %37, i32 67108864, i8* %38), !dbg !3115
  br label %39, !dbg !3116

; <label>:39:                                     ; preds = %36, %35
  ret void, !dbg !3117
}

declare void @format_create_dest(%struct._TEXT_DEST_REC*, i8*, i8*, i32, %struct._WINDOW_REC*) #2

declare i8* @format_get_text_theme(%struct.THEME_REC*, i8*, %struct._TEXT_DEST_REC*, i32, ...) #2

; Function Attrs: nounwind
declare i64 @strftime(i8*, i64, i8*, %struct.tm*) #5

declare void @printtext_string_window(%struct._WINDOW_REC*, i32, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!765, !766}
!llvm.ident = !{!767}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !308, globals: !741)
!1 = !DIFile(filename: "line268-fe-windows.o.i", directory: "/home/lichi/Desktop/irssi/task1")
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
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !67, line: 3, size: 32, align: 32, elements: !68)
!67 = !DIFile(filename: "module-formats.h", directory: "/home/lichi/Desktop/irssi/task1")
!68 = !{!69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307}
!69 = !DIEnumerator(name: "TXT_MODULE_NAME", value: 0)
!70 = !DIEnumerator(name: "TXT_FILL_1", value: 1)
!71 = !DIEnumerator(name: "TXT_LINE_START", value: 2)
!72 = !DIEnumerator(name: "TXT_LINE_START_IRSSI", value: 3)
!73 = !DIEnumerator(name: "TXT_TIMESTAMP", value: 4)
!74 = !DIEnumerator(name: "TXT_SERVERTAG", value: 5)
!75 = !DIEnumerator(name: "TXT_DAYCHANGE", value: 6)
!76 = !DIEnumerator(name: "TXT_TALKING_WITH", value: 7)
!77 = !DIEnumerator(name: "TXT_REFNUM_TOO_LOW", value: 8)
!78 = !DIEnumerator(name: "TXT_ERROR_SERVER_STICKY", value: 9)
!79 = !DIEnumerator(name: "TXT_SET_SERVER_STICKY", value: 10)
!80 = !DIEnumerator(name: "TXT_UNSET_SERVER_STICKY", value: 11)
!81 = !DIEnumerator(name: "TXT_WINDOW_NAME_NOT_UNIQUE", value: 12)
!82 = !DIEnumerator(name: "TXT_WINDOW_LEVEL", value: 13)
!83 = !DIEnumerator(name: "TXT_WINDOW_SET_IMMORTAL", value: 14)
!84 = !DIEnumerator(name: "TXT_WINDOW_UNSET_IMMORTAL", value: 15)
!85 = !DIEnumerator(name: "TXT_WINDOW_IMMORTAL_ERROR", value: 16)
!86 = !DIEnumerator(name: "TXT_WINDOWLIST_HEADER", value: 17)
!87 = !DIEnumerator(name: "TXT_WINDOWLIST_LINE", value: 18)
!88 = !DIEnumerator(name: "TXT_WINDOWLIST_FOOTER", value: 19)
!89 = !DIEnumerator(name: "TXT_WINDOWS_LAYOUT_SAVED", value: 20)
!90 = !DIEnumerator(name: "TXT_WINDOWS_LAYOUT_RESET", value: 21)
!91 = !DIEnumerator(name: "TXT_WINDOW_INFO_HEADER", value: 22)
!92 = !DIEnumerator(name: "TXT_WINDOW_INFO_FOOTER", value: 23)
!93 = !DIEnumerator(name: "TXT_WINDOW_INFO_REFNUM", value: 24)
!94 = !DIEnumerator(name: "TXT_WINDOW_INFO_REFNUM_STICKY", value: 25)
!95 = !DIEnumerator(name: "TXT_WINDOW_INFO_NAME", value: 26)
!96 = !DIEnumerator(name: "TXT_WINDOW_INFO_HISTORY", value: 27)
!97 = !DIEnumerator(name: "TXT_WINDOW_INFO_IMMORTAL", value: 28)
!98 = !DIEnumerator(name: "TXT_WINDOW_INFO_SIZE", value: 29)
!99 = !DIEnumerator(name: "TXT_WINDOW_INFO_LEVEL", value: 30)
!100 = !DIEnumerator(name: "TXT_WINDOW_INFO_SERVER", value: 31)
!101 = !DIEnumerator(name: "TXT_WINDOW_INFO_SERVER_STICKY", value: 32)
!102 = !DIEnumerator(name: "TXT_WINDOW_INFO_THEME", value: 33)
!103 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEMS_HEADER", value: 34)
!104 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEM", value: 35)
!105 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEMS_FOOTER", value: 36)
!106 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEMS_HEADER", value: 37)
!107 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEM", value: 38)
!108 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEMS_FOOTER", value: 39)
!109 = !DIEnumerator(name: "TXT_FILL_2", value: 40)
!110 = !DIEnumerator(name: "TXT_LOOKING_UP", value: 41)
!111 = !DIEnumerator(name: "TXT_CONNECTING", value: 42)
!112 = !DIEnumerator(name: "TXT_RECONNECTING", value: 43)
!113 = !DIEnumerator(name: "TXT_CONNECTION_ESTABLISHED", value: 44)
!114 = !DIEnumerator(name: "TXT_CANT_CONNECT", value: 45)
!115 = !DIEnumerator(name: "TXT_CONNECTION_LOST", value: 46)
!116 = !DIEnumerator(name: "TXT_LAG_DISCONNECTED", value: 47)
!117 = !DIEnumerator(name: "TXT_DISCONNECTED", value: 48)
!118 = !DIEnumerator(name: "TXT_SERVER_QUIT", value: 49)
!119 = !DIEnumerator(name: "TXT_SERVER_CHANGED", value: 50)
!120 = !DIEnumerator(name: "TXT_UNKNOWN_SERVER_TAG", value: 51)
!121 = !DIEnumerator(name: "TXT_NO_CONNECTED_SERVERS", value: 52)
!122 = !DIEnumerator(name: "TXT_SERVER_LIST", value: 53)
!123 = !DIEnumerator(name: "TXT_SERVER_LOOKUP_LIST", value: 54)
!124 = !DIEnumerator(name: "TXT_SERVER_RECONNECT_LIST", value: 55)
!125 = !DIEnumerator(name: "TXT_RECONNECT_REMOVED", value: 56)
!126 = !DIEnumerator(name: "TXT_RECONNECT_NOT_FOUND", value: 57)
!127 = !DIEnumerator(name: "TXT_SETUPSERVER_ADDED", value: 58)
!128 = !DIEnumerator(name: "TXT_SETUPSERVER_REMOVED", value: 59)
!129 = !DIEnumerator(name: "TXT_SETUPSERVER_NOT_FOUND", value: 60)
!130 = !DIEnumerator(name: "TXT_YOUR_NICK", value: 61)
!131 = !DIEnumerator(name: "TXT_FILL_3", value: 62)
!132 = !DIEnumerator(name: "TXT_JOIN", value: 63)
!133 = !DIEnumerator(name: "TXT_PART", value: 64)
!134 = !DIEnumerator(name: "TXT_KICK", value: 65)
!135 = !DIEnumerator(name: "TXT_QUIT", value: 66)
!136 = !DIEnumerator(name: "TXT_QUIT_ONCE", value: 67)
!137 = !DIEnumerator(name: "TXT_INVITE", value: 68)
!138 = !DIEnumerator(name: "TXT_NOT_INVITED", value: 69)
!139 = !DIEnumerator(name: "TXT_NEW_TOPIC", value: 70)
!140 = !DIEnumerator(name: "TXT_TOPIC_UNSET", value: 71)
!141 = !DIEnumerator(name: "TXT_YOUR_NICK_CHANGED", value: 72)
!142 = !DIEnumerator(name: "TXT_NICK_CHANGED", value: 73)
!143 = !DIEnumerator(name: "TXT_TALKING_IN", value: 74)
!144 = !DIEnumerator(name: "TXT_NOT_IN_CHANNELS", value: 75)
!145 = !DIEnumerator(name: "TXT_CURRENT_CHANNEL", value: 76)
!146 = !DIEnumerator(name: "TXT_NAMES", value: 77)
!147 = !DIEnumerator(name: "TXT_NAMES_PREFIX", value: 78)
!148 = !DIEnumerator(name: "TXT_NAMES_NICK_OP", value: 79)
!149 = !DIEnumerator(name: "TXT_NAMES_NICK_HALFOP", value: 80)
!150 = !DIEnumerator(name: "TXT_NAMES_NICK_VOICE", value: 81)
!151 = !DIEnumerator(name: "TXT_NAMES_NICK", value: 82)
!152 = !DIEnumerator(name: "TXT_ENDOFNAMES", value: 83)
!153 = !DIEnumerator(name: "TXT_CHANLIST_HEADER", value: 84)
!154 = !DIEnumerator(name: "TXT_CHANLIST_LINE", value: 85)
!155 = !DIEnumerator(name: "TXT_CHANSETUP_NOT_FOUND", value: 86)
!156 = !DIEnumerator(name: "TXT_CHANSETUP_ADDED", value: 87)
!157 = !DIEnumerator(name: "TXT_CHANSETUP_REMOVED", value: 88)
!158 = !DIEnumerator(name: "TXT_CHANSETUP_HEADER", value: 89)
!159 = !DIEnumerator(name: "TXT_CHANSETUP_LINE", value: 90)
!160 = !DIEnumerator(name: "TXT_CHANSETUP_FOOTER", value: 91)
!161 = !DIEnumerator(name: "TXT_FILL_4", value: 92)
!162 = !DIEnumerator(name: "TXT_OWN_MSG", value: 93)
!163 = !DIEnumerator(name: "TXT_OWN_MSG_CHANNEL", value: 94)
!164 = !DIEnumerator(name: "TXT_OWN_MSG_PRIVATE", value: 95)
!165 = !DIEnumerator(name: "TXT_OWN_MSG_PRIVATE_QUERY", value: 96)
!166 = !DIEnumerator(name: "TXT_PUBMSG_ME", value: 97)
!167 = !DIEnumerator(name: "TXT_PUBMSG_ME_CHANNEL", value: 98)
!168 = !DIEnumerator(name: "TXT_PUBMSG_HILIGHT", value: 99)
!169 = !DIEnumerator(name: "TXT_PUBMSG_HILIGHT_CHANNEL", value: 100)
!170 = !DIEnumerator(name: "TXT_PUBMSG", value: 101)
!171 = !DIEnumerator(name: "TXT_PUBMSG_CHANNEL", value: 102)
!172 = !DIEnumerator(name: "TXT_MSG_PRIVATE", value: 103)
!173 = !DIEnumerator(name: "TXT_MSG_PRIVATE_QUERY", value: 104)
!174 = !DIEnumerator(name: "TXT_NO_MSGS_GOT", value: 105)
!175 = !DIEnumerator(name: "TXT_NO_MSGS_SENT", value: 106)
!176 = !DIEnumerator(name: "TXT_FILL_5", value: 107)
!177 = !DIEnumerator(name: "TXT_QUERY_START", value: 108)
!178 = !DIEnumerator(name: "TXT_QUERY_STOP", value: 109)
!179 = !DIEnumerator(name: "TXT_NO_QUERY", value: 110)
!180 = !DIEnumerator(name: "TXT_QUERY_SERVER_CHANGED", value: 111)
!181 = !DIEnumerator(name: "TXT_FILL_6", value: 112)
!182 = !DIEnumerator(name: "TXT_HILIGHT_HEADER", value: 113)
!183 = !DIEnumerator(name: "TXT_HILIGHT_LINE", value: 114)
!184 = !DIEnumerator(name: "TXT_HILIGHT_FOOTER", value: 115)
!185 = !DIEnumerator(name: "TXT_HILIGHT_NOT_FOUND", value: 116)
!186 = !DIEnumerator(name: "TXT_HILIGHT_REMOVED", value: 117)
!187 = !DIEnumerator(name: "TXT_FILL_7", value: 118)
!188 = !DIEnumerator(name: "TXT_ALIAS_ADDED", value: 119)
!189 = !DIEnumerator(name: "TXT_ALIAS_REMOVED", value: 120)
!190 = !DIEnumerator(name: "TXT_ALIAS_NOT_FOUND", value: 121)
!191 = !DIEnumerator(name: "TXT_ALIASLIST_HEADER", value: 122)
!192 = !DIEnumerator(name: "TXT_ALIASLIST_LINE", value: 123)
!193 = !DIEnumerator(name: "TXT_ALIASLIST_FOOTER", value: 124)
!194 = !DIEnumerator(name: "TXT_FILL_8", value: 125)
!195 = !DIEnumerator(name: "TXT_LOG_OPENED", value: 126)
!196 = !DIEnumerator(name: "TXT_LOG_CLOSED", value: 127)
!197 = !DIEnumerator(name: "TXT_LOG_CREATE_FAILED", value: 128)
!198 = !DIEnumerator(name: "TXT_LOG_LOCKED", value: 129)
!199 = !DIEnumerator(name: "TXT_LOG_NOT_OPEN", value: 130)
!200 = !DIEnumerator(name: "TXT_LOG_STARTED", value: 131)
!201 = !DIEnumerator(name: "TXT_LOG_STOPPED", value: 132)
!202 = !DIEnumerator(name: "TXT_LOG_LIST_HEADER", value: 133)
!203 = !DIEnumerator(name: "TXT_LOG_LIST", value: 134)
!204 = !DIEnumerator(name: "TXT_LOG_LIST_FOOTER", value: 135)
!205 = !DIEnumerator(name: "TXT_WINDOWLOG_FILE", value: 136)
!206 = !DIEnumerator(name: "TXT_WINDOWLOG_FILE_LOGGING", value: 137)
!207 = !DIEnumerator(name: "TXT_LOG_NO_AWAY_MSGS", value: 138)
!208 = !DIEnumerator(name: "TXT_LOG_AWAY_MSGS", value: 139)
!209 = !DIEnumerator(name: "TXT_FILL_9", value: 140)
!210 = !DIEnumerator(name: "TXT_MODULE_HEADER", value: 141)
!211 = !DIEnumerator(name: "TXT_MODULE_LINE", value: 142)
!212 = !DIEnumerator(name: "TXT_MODULE_FOOTER", value: 143)
!213 = !DIEnumerator(name: "TXT_MODULE_ALREADY_LOADED", value: 144)
!214 = !DIEnumerator(name: "TXT_MODULE_NOT_LOADED", value: 145)
!215 = !DIEnumerator(name: "TXT_MODULE_LOAD_ERROR", value: 146)
!216 = !DIEnumerator(name: "TXT_MODULE_VERSION_MISMATCH", value: 147)
!217 = !DIEnumerator(name: "TXT_MODULE_INVALID", value: 148)
!218 = !DIEnumerator(name: "TXT_MODULE_LOADED", value: 149)
!219 = !DIEnumerator(name: "TXT_MODULE_UNLOADED", value: 150)
!220 = !DIEnumerator(name: "TXT_FILL_10", value: 151)
!221 = !DIEnumerator(name: "TXT_COMMAND_UNKNOWN", value: 152)
!222 = !DIEnumerator(name: "TXT_COMMAND_AMBIGUOUS", value: 153)
!223 = !DIEnumerator(name: "TXT_OPTION_UNKNOWN", value: 154)
!224 = !DIEnumerator(name: "TXT_OPTION_AMBIGUOUS", value: 155)
!225 = !DIEnumerator(name: "TXT_OPTION_MISSING_ARG", value: 156)
!226 = !DIEnumerator(name: "TXT_NOT_ENOUGH_PARAMS", value: 157)
!227 = !DIEnumerator(name: "TXT_NOT_CONNECTED", value: 158)
!228 = !DIEnumerator(name: "TXT_NOT_JOINED", value: 159)
!229 = !DIEnumerator(name: "TXT_CHAN_NOT_FOUND", value: 160)
!230 = !DIEnumerator(name: "TXT_CHAN_NOT_SYNCED", value: 161)
!231 = !DIEnumerator(name: "TXT_ILLEGAL_PROTO", value: 162)
!232 = !DIEnumerator(name: "TXT_NOT_GOOD_IDEA", value: 163)
!233 = !DIEnumerator(name: "TXT_INVALID_NUMBER", value: 164)
!234 = !DIEnumerator(name: "TXT_INVALID_TIME", value: 165)
!235 = !DIEnumerator(name: "TXT_INVALID_LEVEL", value: 166)
!236 = !DIEnumerator(name: "TXT_INVALID_SIZE", value: 167)
!237 = !DIEnumerator(name: "TXT_INVALID_CHARSET", value: 168)
!238 = !DIEnumerator(name: "TXT_INVALID_CHOICE", value: 169)
!239 = !DIEnumerator(name: "TXT_EVAL_MAX_RECURSE", value: 170)
!240 = !DIEnumerator(name: "TXT_PROGRAM_NOT_FOUND", value: 171)
!241 = !DIEnumerator(name: "TXT_NO_SERVER_DEFINED", value: 172)
!242 = !DIEnumerator(name: "TXT_FILL_11", value: 173)
!243 = !DIEnumerator(name: "TXT_THEME_SAVED", value: 174)
!244 = !DIEnumerator(name: "TXT_THEME_SAVE_FAILED", value: 175)
!245 = !DIEnumerator(name: "TXT_THEME_NOT_FOUND", value: 176)
!246 = !DIEnumerator(name: "TXT_THEME_CHANGED", value: 177)
!247 = !DIEnumerator(name: "TXT_WINDOW_THEME", value: 178)
!248 = !DIEnumerator(name: "TXT_WINDOW_THEME_DEFAULT", value: 179)
!249 = !DIEnumerator(name: "TXT_WINDOW_THEME_CHANGED", value: 180)
!250 = !DIEnumerator(name: "TXT_WINDOW_THEME_REMOVED", value: 181)
!251 = !DIEnumerator(name: "TXT_FORMAT_TITLE", value: 182)
!252 = !DIEnumerator(name: "TXT_FORMAT_SUBTITLE", value: 183)
!253 = !DIEnumerator(name: "TXT_FORMAT_ITEM", value: 184)
!254 = !DIEnumerator(name: "TXT_FILL_12", value: 185)
!255 = !DIEnumerator(name: "TXT_IGNORED", value: 186)
!256 = !DIEnumerator(name: "TXT_IGNORED_OPTIONS", value: 187)
!257 = !DIEnumerator(name: "TXT_UNIGNORED", value: 188)
!258 = !DIEnumerator(name: "TXT_IGNORE_NOT_FOUND", value: 189)
!259 = !DIEnumerator(name: "TXT_IGNORE_NO_IGNORES", value: 190)
!260 = !DIEnumerator(name: "TXT_IGNORE_HEADER", value: 191)
!261 = !DIEnumerator(name: "TXT_IGNORE_LINE", value: 192)
!262 = !DIEnumerator(name: "TXT_IGNORE_FOOTER", value: 193)
!263 = !DIEnumerator(name: "TXT_FILL_13", value: 194)
!264 = !DIEnumerator(name: "TXT_NOT_CHANNEL_OR_QUERY", value: 195)
!265 = !DIEnumerator(name: "TXT_CONVERSION_ADDED", value: 196)
!266 = !DIEnumerator(name: "TXT_CONVERSION_REMOVED", value: 197)
!267 = !DIEnumerator(name: "TXT_CONVERSION_NOT_FOUND", value: 198)
!268 = !DIEnumerator(name: "TXT_CONVERSION_NO_TRANSLITS", value: 199)
!269 = !DIEnumerator(name: "TXT_RECODE_HEADER", value: 200)
!270 = !DIEnumerator(name: "TXT_RECODE_LINE", value: 201)
!271 = !DIEnumerator(name: "TXT_FILL_14", value: 202)
!272 = !DIEnumerator(name: "TXT_UNKNOWN_CHAT_PROTOCOL", value: 203)
!273 = !DIEnumerator(name: "TXT_UNKNOWN_CHATNET", value: 204)
!274 = !DIEnumerator(name: "TXT_NOT_TOGGLE", value: 205)
!275 = !DIEnumerator(name: "TXT_PERL_ERROR", value: 206)
!276 = !DIEnumerator(name: "TXT_BIND_HEADER", value: 207)
!277 = !DIEnumerator(name: "TXT_BIND_LIST", value: 208)
!278 = !DIEnumerator(name: "TXT_BIND_COMMAND_LIST", value: 209)
!279 = !DIEnumerator(name: "TXT_BIND_FOOTER", value: 210)
!280 = !DIEnumerator(name: "TXT_BIND_UNKNOWN_ID", value: 211)
!281 = !DIEnumerator(name: "TXT_CONFIG_SAVED", value: 212)
!282 = !DIEnumerator(name: "TXT_CONFIG_RELOADED", value: 213)
!283 = !DIEnumerator(name: "TXT_CONFIG_MODIFIED", value: 214)
!284 = !DIEnumerator(name: "TXT_GLIB_ERROR", value: 215)
!285 = !DIEnumerator(name: "TXT_OVERWRITE_CONFIG", value: 216)
!286 = !DIEnumerator(name: "TXT_SET_TITLE", value: 217)
!287 = !DIEnumerator(name: "TXT_SET_ITEM", value: 218)
!288 = !DIEnumerator(name: "TXT_SET_UNKNOWN", value: 219)
!289 = !DIEnumerator(name: "TXT_SET_NOT_BOOLEAN", value: 220)
!290 = !DIEnumerator(name: "TXT_NO_COMPLETIONS", value: 221)
!291 = !DIEnumerator(name: "TXT_COMPLETION_REMOVED", value: 222)
!292 = !DIEnumerator(name: "TXT_COMPLETION_HEADER", value: 223)
!293 = !DIEnumerator(name: "TXT_COMPLETION_LINE", value: 224)
!294 = !DIEnumerator(name: "TXT_COMPLETION_FOOTER", value: 225)
!295 = !DIEnumerator(name: "TXT_CAPSICUM_ENABLED", value: 226)
!296 = !DIEnumerator(name: "TXT_CAPSICUM_DISABLED", value: 227)
!297 = !DIEnumerator(name: "TXT_CAPSICUM_FAILED", value: 228)
!298 = !DIEnumerator(name: "TLS_FILL_15", value: 229)
!299 = !DIEnumerator(name: "TXT_TLS_EPHEMERAL_KEY", value: 230)
!300 = !DIEnumerator(name: "TXT_TLS_EPHEMERAL_KEY_UNAVAILBLE", value: 231)
!301 = !DIEnumerator(name: "TXT_TLS_PUBKEY", value: 232)
!302 = !DIEnumerator(name: "TXT_TLS_CERT_HEADER", value: 233)
!303 = !DIEnumerator(name: "TXT_TLS_CERT_SUBJECT", value: 234)
!304 = !DIEnumerator(name: "TXT_TLS_CERT_ISSUER", value: 235)
!305 = !DIEnumerator(name: "TXT_TLS_PUBKEY_FINGERPRINT", value: 236)
!306 = !DIEnumerator(name: "TXT_TLS_CERT_FINGERPRINT", value: 237)
!307 = !DIEnumerator(name: "TXT_TLS_PROTOCOL_VERSION", value: 238)
!308 = !{!309, !329, !622, !331, !412, !632, !349, !334, !318, !722, !729, !736, !401, !472}
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64, align: 64)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "WINDOW_REC", file: !311, line: 117, baseType: !312)
!311 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WINDOW_REC", file: !313, line: 28, size: 1280, align: 64, elements: !314)
!313 = !DIFile(filename: "fe-windows.h", directory: "/home/lichi/Desktop/irssi/task1")
!314 = !{!315, !317, !320, !321, !322, !333, !687, !688, !689, !690, !691, !692, !693, !694, !695, !714, !715, !716, !717, !718, !719, !720, !721}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "refnum", scope: !312, file: !313, line: 29, baseType: !316, size: 32, align: 32)
!316 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !312, file: !313, line: 30, baseType: !318, size: 64, align: 64, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64, align: 64)
!319 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !312, file: !313, line: 32, baseType: !316, size: 32, align: 32, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !312, file: !313, line: 32, baseType: !316, size: 32, align: 32, offset: 160)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !312, file: !313, line: 34, baseType: !323, size: 64, align: 64, offset: 192)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64, align: 64)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !325, line: 37, baseType: !326)
!325 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !325, line: 39, size: 128, align: 64, elements: !327)
!327 = !{!328, !332}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !326, file: !325, line: 41, baseType: !329, size: 64, align: 64)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !330, line: 77, baseType: !331)
!330 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !326, file: !325, line: 42, baseType: !323, size: 64, align: 64, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !312, file: !313, line: 35, baseType: !334, size: 64, align: 64, offset: 256)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64, align: 64)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !311, line: 108, baseType: !336)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !337, line: 5, size: 704, align: 64, elements: !338)
!337 = !DIFile(filename: "../../../src/core/window-item-def.h", directory: "/home/lichi/Desktop/irssi/task1")
!338 = !{!339, !341, !342, !347, !348, !674, !675, !676, !677, !678, !679, !683}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !336, file: !340, line: 3, baseType: !316, size: 32, align: 32)
!340 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!341 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !336, file: !340, line: 4, baseType: !316, size: 32, align: 32, offset: 32)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !336, file: !340, line: 5, baseType: !343, size: 64, align: 64, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64, align: 64)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !345, line: 37, baseType: !346)
!345 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!346 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !345, line: 37, flags: DIFlagFwdDecl)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !336, file: !340, line: 7, baseType: !331, size: 64, align: 64, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !336, file: !340, line: 8, baseType: !349, size: 64, align: 64, offset: 192)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64, align: 64)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !311, line: 107, baseType: !351)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !352, line: 30, size: 2240, align: 64, elements: !353)
!352 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!353 = !{!354, !356, !357, !358, !581, !586, !587, !588, !589, !590, !591, !592, !593, !594, !598, !599, !603, !604, !605, !609, !610, !611, !612, !613, !614, !615, !616, !617, !624, !625, !626, !627, !628, !634, !638, !642, !646, !650, !655, !662, !669, !673}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !351, file: !355, line: 3, baseType: !316, size: 32, align: 32)
!355 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!356 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !351, file: !355, line: 4, baseType: !316, size: 32, align: 32, offset: 32)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !351, file: !355, line: 6, baseType: !316, size: 32, align: 32, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !351, file: !355, line: 8, baseType: !359, size: 64, align: 64, offset: 128)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64, align: 64)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !311, line: 113, baseType: !361)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !352, line: 25, size: 1920, align: 64, elements: !362)
!362 = !{!363, !365, !366, !367, !368, !369, !370, !371, !372, !374, !375, !376, !377, !378, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !361, file: !364, line: 3, baseType: !316, size: 32, align: 32)
!364 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!365 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !361, file: !364, line: 4, baseType: !316, size: 32, align: 32, offset: 32)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !361, file: !364, line: 6, baseType: !316, size: 32, align: 32, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !361, file: !364, line: 9, baseType: !318, size: 64, align: 64, offset: 128)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !361, file: !364, line: 10, baseType: !316, size: 32, align: 32, offset: 192)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !361, file: !364, line: 11, baseType: !318, size: 64, align: 64, offset: 256)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !361, file: !364, line: 11, baseType: !318, size: 64, align: 64, offset: 320)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !361, file: !364, line: 11, baseType: !318, size: 64, align: 64, offset: 384)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !361, file: !364, line: 13, baseType: !373, size: 16, align: 16, offset: 448)
!373 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !361, file: !364, line: 14, baseType: !318, size: 64, align: 64, offset: 512)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !361, file: !364, line: 15, baseType: !318, size: 64, align: 64, offset: 576)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !361, file: !364, line: 16, baseType: !316, size: 32, align: 32, offset: 640)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !361, file: !364, line: 17, baseType: !318, size: 64, align: 64, offset: 704)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !361, file: !364, line: 19, baseType: !379, size: 64, align: 64, offset: 768)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64, align: 64)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !311, line: 99, baseType: !381)
!381 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !311, line: 99, flags: DIFlagFwdDecl)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !361, file: !364, line: 19, baseType: !379, size: 64, align: 64, offset: 832)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !361, file: !364, line: 21, baseType: !318, size: 64, align: 64, offset: 896)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !361, file: !364, line: 22, baseType: !318, size: 64, align: 64, offset: 960)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !361, file: !364, line: 23, baseType: !318, size: 64, align: 64, offset: 1024)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !361, file: !364, line: 24, baseType: !318, size: 64, align: 64, offset: 1088)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !361, file: !364, line: 26, baseType: !318, size: 64, align: 64, offset: 1152)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !361, file: !364, line: 27, baseType: !318, size: 64, align: 64, offset: 1216)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !361, file: !364, line: 28, baseType: !318, size: 64, align: 64, offset: 1280)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !361, file: !364, line: 29, baseType: !318, size: 64, align: 64, offset: 1344)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !361, file: !364, line: 30, baseType: !318, size: 64, align: 64, offset: 1408)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !361, file: !364, line: 31, baseType: !318, size: 64, align: 64, offset: 1472)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !361, file: !364, line: 32, baseType: !318, size: 64, align: 64, offset: 1536)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !361, file: !364, line: 33, baseType: !318, size: 64, align: 64, offset: 1600)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !361, file: !364, line: 35, baseType: !396, size: 64, align: 64, offset: 1664)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64, align: 64)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !398)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !399)
!399 = !{!400, !402, !538, !539, !544, !545, !546, !547, !548, !557, !558, !559, !563, !564, !565, !566, !567, !568, !569, !570}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !398, file: !4, line: 100, baseType: !401, size: 32, align: 32)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !330, line: 49, baseType: !316)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !398, file: !4, line: 101, baseType: !403, size: 64, align: 64, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64, align: 64)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !405)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !406)
!406 = !{!407, !431, !437, !444, !448, !525, !529, !534}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !405, file: !4, line: 133, baseType: !408, size: 64, align: 64)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64, align: 64)
!409 = !DISubroutineType(types: !410)
!410 = !{!411, !396, !412, !414, !417, !418}
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64, align: 64)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !330, line: 46, baseType: !319)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !415, line: 66, baseType: !416)
!415 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!416 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64, align: 64)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64, align: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64, align: 64)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !421, line: 42, baseType: !422)
!421 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !421, line: 44, size: 128, align: 64, elements: !423)
!423 = !{!424, !429, !430}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !422, file: !421, line: 46, baseType: !425, size: 32, align: 32)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !426, line: 36, baseType: !427)
!426 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !415, line: 45, baseType: !428)
!428 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !422, file: !421, line: 47, baseType: !401, size: 32, align: 32, offset: 32)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !422, file: !421, line: 48, baseType: !412, size: 64, align: 64, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !405, file: !4, line: 138, baseType: !432, size: 64, align: 64, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64, align: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{!411, !396, !435, !414, !417, !418}
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64, align: 64)
!436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !413)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !405, file: !4, line: 143, baseType: !438, size: 64, align: 64, offset: 128)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64, align: 64)
!439 = !DISubroutineType(types: !440)
!440 = !{!411, !396, !441, !443, !418}
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !415, line: 51, baseType: !442)
!442 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !405, file: !4, line: 147, baseType: !445, size: 64, align: 64, offset: 192)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64, align: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{!411, !396, !418}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !405, file: !4, line: 149, baseType: !449, size: 64, align: 64, offset: 256)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64, align: 64)
!450 = !DISubroutineType(types: !451)
!451 = !{!452, !396, !524}
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64, align: 64)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !454)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !455)
!455 = !{!456, !457, !478, !507, !509, !513, !514, !515, !516, !517, !518, !519, !520}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !454, file: !16, line: 174, baseType: !329, size: 64, align: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !454, file: !16, line: 175, baseType: !458, size: 64, align: 64, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64, align: 64)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !460)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !461)
!461 = !{!462, !466, !467}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !460, file: !16, line: 198, baseType: !463, size: 64, align: 64)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64, align: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{null, !329}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !460, file: !16, line: 199, baseType: !463, size: 64, align: 64, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !460, file: !16, line: 200, baseType: !468, size: 64, align: 64, offset: 128)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64, align: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{null, !329, !452, !471, !477}
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64, align: 64)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !473)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64, align: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{!476, !329}
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !330, line: 50, baseType: !401)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64, align: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !454, file: !16, line: 177, baseType: !479, size: 64, align: 64, offset: 128)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64, align: 64)
!480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !481)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !482)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !483)
!483 = !{!484, !489, !493, !497, !501, !502}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !482, file: !16, line: 216, baseType: !485, size: 64, align: 64)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64, align: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!476, !452, !488}
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64, align: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !482, file: !16, line: 218, baseType: !490, size: 64, align: 64, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64, align: 64)
!491 = !DISubroutineType(types: !492)
!492 = !{!476, !452}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !482, file: !16, line: 219, baseType: !494, size: 64, align: 64, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64, align: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{!476, !452, !472, !329}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !482, file: !16, line: 222, baseType: !498, size: 64, align: 64, offset: 192)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64, align: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{null, !452}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !482, file: !16, line: 226, baseType: !472, size: 64, align: 64, offset: 256)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !482, file: !16, line: 227, baseType: !503, size: 64, align: 64, offset: 320)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !504)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64, align: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{null}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !454, file: !16, line: 178, baseType: !508, size: 32, align: 32, offset: 192)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !330, line: 55, baseType: !428)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !454, file: !16, line: 180, baseType: !510, size: 64, align: 64, offset: 256)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64, align: 64)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !512)
!512 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !454, file: !16, line: 182, baseType: !401, size: 32, align: 32, offset: 320)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !454, file: !16, line: 183, baseType: !508, size: 32, align: 32, offset: 352)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !454, file: !16, line: 184, baseType: !508, size: 32, align: 32, offset: 384)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !454, file: !16, line: 186, baseType: !323, size: 64, align: 64, offset: 448)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !454, file: !16, line: 188, baseType: !452, size: 64, align: 64, offset: 512)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !454, file: !16, line: 189, baseType: !452, size: 64, align: 64, offset: 576)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !454, file: !16, line: 191, baseType: !318, size: 64, align: 64, offset: 640)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !454, file: !16, line: 193, baseType: !521, size: 64, align: 64, offset: 704)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64, align: 64)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !523)
!523 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !405, file: !4, line: 151, baseType: !526, size: 64, align: 64, offset: 320)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64, align: 64)
!527 = !DISubroutineType(types: !528)
!528 = !{null, !396}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !405, file: !4, line: 152, baseType: !530, size: 64, align: 64, offset: 384)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64, align: 64)
!531 = !DISubroutineType(types: !532)
!532 = !{!411, !396, !533, !418}
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !405, file: !4, line: 155, baseType: !535, size: 64, align: 64, offset: 448)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64, align: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{!533, !396}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !398, file: !4, line: 103, baseType: !412, size: 64, align: 64, offset: 128)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !398, file: !4, line: 104, baseType: !540, size: 64, align: 64, offset: 192)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !541, line: 77, baseType: !542)
!541 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64, align: 64)
!543 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !541, line: 77, flags: DIFlagFwdDecl)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !398, file: !4, line: 105, baseType: !540, size: 64, align: 64, offset: 256)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !398, file: !4, line: 106, baseType: !412, size: 64, align: 64, offset: 320)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !398, file: !4, line: 107, baseType: !508, size: 32, align: 32, offset: 384)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !398, file: !4, line: 109, baseType: !414, size: 64, align: 64, offset: 448)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !398, file: !4, line: 110, baseType: !549, size: 64, align: 64, offset: 512)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64, align: 64)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !551, line: 39, baseType: !552)
!551 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !551, line: 41, size: 192, align: 64, elements: !553)
!553 = !{!554, !555, !556}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !552, file: !551, line: 43, baseType: !412, size: 64, align: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !552, file: !551, line: 44, baseType: !414, size: 64, align: 64, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !552, file: !551, line: 45, baseType: !414, size: 64, align: 64, offset: 128)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !398, file: !4, line: 111, baseType: !549, size: 64, align: 64, offset: 576)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !398, file: !4, line: 112, baseType: !549, size: 64, align: 64, offset: 640)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !398, file: !4, line: 113, baseType: !560, size: 48, align: 8, offset: 704)
!560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !413, size: 48, align: 8, elements: !561)
!561 = !{!562}
!562 = !DISubrange(count: 6)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !398, file: !4, line: 117, baseType: !508, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !398, file: !4, line: 118, baseType: !508, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !398, file: !4, line: 119, baseType: !508, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !398, file: !4, line: 120, baseType: !508, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !398, file: !4, line: 121, baseType: !508, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !398, file: !4, line: 122, baseType: !508, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !398, file: !4, line: 124, baseType: !329, size: 64, align: 64, offset: 768)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !398, file: !4, line: 125, baseType: !329, size: 64, align: 64, offset: 832)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !361, file: !364, line: 38, baseType: !428, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !361, file: !364, line: 39, baseType: !428, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !361, file: !364, line: 40, baseType: !428, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !361, file: !364, line: 41, baseType: !428, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !361, file: !364, line: 42, baseType: !428, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !361, file: !364, line: 43, baseType: !428, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !361, file: !364, line: 44, baseType: !428, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !361, file: !364, line: 45, baseType: !428, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !361, file: !364, line: 46, baseType: !318, size: 64, align: 64, offset: 1792)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !361, file: !364, line: 47, baseType: !318, size: 64, align: 64, offset: 1856)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !351, file: !355, line: 9, baseType: !582, size: 64, align: 64, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !583, line: 75, baseType: !584)
!583 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !585, line: 139, baseType: !442)
!585 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!586 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !351, file: !355, line: 10, baseType: !582, size: 64, align: 64, offset: 256)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !351, file: !355, line: 12, baseType: !318, size: 64, align: 64, offset: 320)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !351, file: !355, line: 13, baseType: !318, size: 64, align: 64, offset: 384)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !351, file: !355, line: 15, baseType: !428, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !351, file: !355, line: 16, baseType: !428, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !351, file: !355, line: 17, baseType: !428, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !351, file: !355, line: 18, baseType: !428, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !351, file: !355, line: 19, baseType: !428, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !351, file: !355, line: 21, baseType: !595, size: 64, align: 64, offset: 512)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64, align: 64)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !311, line: 102, baseType: !597)
!597 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !311, line: 102, flags: DIFlagFwdDecl)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !351, file: !355, line: 22, baseType: !316, size: 32, align: 32, offset: 576)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !351, file: !355, line: 25, baseType: !600, size: 128, align: 64, offset: 640)
!600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !396, size: 128, align: 64, elements: !601)
!601 = !{!602}
!602 = !DISubrange(count: 2)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !351, file: !355, line: 26, baseType: !316, size: 32, align: 32, offset: 768)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !351, file: !355, line: 27, baseType: !316, size: 32, align: 32, offset: 800)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !351, file: !355, line: 29, baseType: !606, size: 64, align: 64, offset: 832)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64, align: 64)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !311, line: 103, baseType: !608)
!608 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !311, line: 103, flags: DIFlagFwdDecl)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !351, file: !355, line: 30, baseType: !343, size: 64, align: 64, offset: 896)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !351, file: !355, line: 32, baseType: !318, size: 64, align: 64, offset: 960)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !351, file: !355, line: 33, baseType: !318, size: 64, align: 64, offset: 1024)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !351, file: !355, line: 34, baseType: !318, size: 64, align: 64, offset: 1088)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !351, file: !355, line: 35, baseType: !428, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !351, file: !355, line: 36, baseType: !428, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !351, file: !355, line: 37, baseType: !428, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !351, file: !355, line: 38, baseType: !428, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !351, file: !355, line: 40, baseType: !618, size: 128, align: 64, offset: 1216)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !330, line: 504, baseType: !619)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !330, line: 506, size: 128, align: 64, elements: !620)
!620 = !{!621, !623}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !619, file: !330, line: 508, baseType: !622, size: 64, align: 64)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !330, line: 48, baseType: !442)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !619, file: !330, line: 509, baseType: !622, size: 64, align: 64, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !351, file: !355, line: 41, baseType: !582, size: 64, align: 64, offset: 1344)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !351, file: !355, line: 42, baseType: !316, size: 32, align: 32, offset: 1408)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !351, file: !355, line: 44, baseType: !323, size: 64, align: 64, offset: 1472)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !351, file: !355, line: 45, baseType: !323, size: 64, align: 64, offset: 1536)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !351, file: !355, line: 53, baseType: !629, size: 64, align: 64, offset: 1600)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64, align: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{null, !349, !632, !316}
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64, align: 64)
!633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !319)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !351, file: !355, line: 55, baseType: !635, size: 64, align: 64, offset: 1664)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64, align: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{!316, !349, !319}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !351, file: !355, line: 57, baseType: !639, size: 64, align: 64, offset: 1728)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64, align: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!316, !349, !632}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !351, file: !355, line: 60, baseType: !643, size: 64, align: 64, offset: 1792)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64, align: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{!632, !349}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !351, file: !355, line: 62, baseType: !647, size: 64, align: 64, offset: 1856)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64, align: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{null, !349, !632, !632, !316}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !351, file: !355, line: 65, baseType: !651, size: 64, align: 64, offset: 1920)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64, align: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{!654, !349, !632, !632}
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64, align: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !351, file: !355, line: 69, baseType: !656, size: 64, align: 64, offset: 1984)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64, align: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{!659, !349, !632}
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64, align: 64)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !311, line: 109, baseType: !661)
!661 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !311, line: 109, flags: DIFlagFwdDecl)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !351, file: !355, line: 70, baseType: !663, size: 64, align: 64, offset: 2048)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64, align: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{!666, !349, !632}
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64, align: 64)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !311, line: 110, baseType: !668)
!668 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !311, line: 110, flags: DIFlagFwdDecl)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !351, file: !355, line: 71, baseType: !670, size: 64, align: 64, offset: 2112)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64, align: 64)
!671 = !DISubroutineType(types: !672)
!672 = !{!316, !632, !632}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !351, file: !355, line: 73, baseType: !670, size: 64, align: 64, offset: 2176)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !336, file: !340, line: 9, baseType: !318, size: 64, align: 64, offset: 256)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !336, file: !340, line: 10, baseType: !318, size: 64, align: 64, offset: 320)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !336, file: !340, line: 11, baseType: !582, size: 64, align: 64, offset: 384)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !336, file: !340, line: 12, baseType: !316, size: 32, align: 32, offset: 448)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !336, file: !340, line: 13, baseType: !318, size: 64, align: 64, offset: 512)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !336, file: !340, line: 15, baseType: !680, size: 64, align: 64, offset: 576)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64, align: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{null, !334}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !336, file: !340, line: 17, baseType: !684, size: 64, align: 64, offset: 640)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64, align: 64)
!685 = !DISubroutineType(types: !686)
!686 = !{!632, !334}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "active_server", scope: !312, file: !313, line: 36, baseType: !349, size: 64, align: 64, offset: 320)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "connect_server", scope: !312, file: !313, line: 37, baseType: !349, size: 64, align: 64, offset: 384)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !312, file: !313, line: 38, baseType: !318, size: 64, align: 64, offset: 448)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !312, file: !313, line: 40, baseType: !316, size: 32, align: 32, offset: 512)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "bound_items", scope: !312, file: !313, line: 41, baseType: !323, size: 64, align: 64, offset: 576)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "immortal", scope: !312, file: !313, line: 43, baseType: !428, size: 1, align: 32, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "sticky_refnum", scope: !312, file: !313, line: 44, baseType: !428, size: 1, align: 32, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !312, file: !313, line: 45, baseType: !428, size: 1, align: 32, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !312, file: !313, line: 48, baseType: !696, size: 64, align: 64, offset: 704)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64, align: 64)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "HISTORY_REC", file: !698, line: 14, baseType: !699)
!698 = !DIFile(filename: "command-history.h", directory: "/home/lichi/Desktop/irssi/task1")
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !698, line: 6, size: 256, align: 64, elements: !700)
!700 = !{!701, !702, !711, !712, !713}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !699, file: !698, line: 7, baseType: !318, size: 64, align: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !699, file: !698, line: 9, baseType: !703, size: 64, align: 64, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64, align: 64)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "GList", file: !705, line: 37, baseType: !706)
!705 = !DIFile(filename: "/usr/include/glib-2.0/glib/glist.h", directory: "/home/lichi/Desktop/irssi/task1")
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GList", file: !705, line: 39, size: 192, align: 64, elements: !707)
!707 = !{!708, !709, !710}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !706, file: !705, line: 41, baseType: !329, size: 64, align: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !706, file: !705, line: 42, baseType: !703, size: 64, align: 64, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !706, file: !705, line: 43, baseType: !703, size: 64, align: 64, offset: 128)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "lines", scope: !699, file: !698, line: 10, baseType: !316, size: 32, align: 32, offset: 128)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !699, file: !698, line: 12, baseType: !316, size: 32, align: 32, offset: 160)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "redo", scope: !699, file: !698, line: 13, baseType: !316, size: 1, align: 32, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "history_name", scope: !312, file: !313, line: 49, baseType: !318, size: 64, align: 64, offset: 768)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !312, file: !313, line: 51, baseType: !316, size: 32, align: 32, offset: 832)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !312, file: !313, line: 52, baseType: !318, size: 64, align: 64, offset: 896)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "last_timestamp", scope: !312, file: !313, line: 54, baseType: !582, size: 64, align: 64, offset: 960)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "last_line", scope: !312, file: !313, line: 55, baseType: !582, size: 64, align: 64, offset: 1024)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "theme_name", scope: !312, file: !313, line: 57, baseType: !318, size: 64, align: 64, offset: 1088)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "theme", scope: !312, file: !313, line: 58, baseType: !331, size: 64, align: 64, offset: 1152)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "gui_data", scope: !312, file: !313, line: 60, baseType: !331, size: 64, align: 64, offset: 1216)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64, align: 64)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "WINDOW_BIND_REC", file: !313, line: 26, baseType: !724)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !313, line: 22, size: 192, align: 64, elements: !725)
!725 = !{!726, !727, !728}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !724, file: !313, line: 23, baseType: !318, size: 64, align: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !724, file: !313, line: 24, baseType: !318, size: 64, align: 64, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "sticky", scope: !724, file: !313, line: 25, baseType: !428, size: 1, align: 32, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !730, line: 9, baseType: !731)
!730 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64, align: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{null, !734, !734, !734, !734, !734, !734}
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64, align: 64)
!735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCompareDataFunc", file: !330, line: 82, baseType: !737)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64, align: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{!401, !740, !740, !329}
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "gconstpointer", file: !330, line: 78, baseType: !734)
!741 = !{!742, !753, !754, !755, !756, !757, !762, !763, !764}
!742 = distinct !DIGlobalVariable(name: "cstep_size", scope: !743, file: !744, line: 702, type: !752, isLocal: true, isDefinition: true, variable: i32* @color_24bit_256.cstep_size)
!743 = distinct !DISubprogram(name: "color_24bit_256", scope: !744, file: !744, line: 700, type: !745, isLocal: false, isDefinition: true, scopeLine: 701, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !751)
!744 = !DIFile(filename: "fe-windows.c", directory: "/home/lichi/Desktop/irssi/task1")
!745 = !DISubroutineType(types: !746)
!746 = !{!747, !748}
!747 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64, align: 64)
!749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !750)
!750 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!751 = !{}
!752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !316)
!753 = distinct !DIGlobalVariable(name: "cstep_start", scope: !743, file: !744, line: 703, type: !752, isLocal: true, isDefinition: true, variable: i32* @color_24bit_256.cstep_start)
!754 = distinct !DIGlobalVariable(name: "gstep_size", scope: !743, file: !744, line: 705, type: !752, isLocal: true, isDefinition: true, variable: i32* @color_24bit_256.gstep_size)
!755 = distinct !DIGlobalVariable(name: "gstep_start", scope: !743, file: !744, line: 706, type: !752, isLocal: true, isDefinition: true, variable: i32* @color_24bit_256.gstep_start)
!756 = distinct !DIGlobalVariable(name: "windows", scope: !0, file: !744, line: 36, type: !323, isLocal: false, isDefinition: true, variable: %struct._GSList** @windows)
!757 = distinct !DIGlobalVariable(name: "windows_seq", scope: !0, file: !744, line: 38, type: !758, isLocal: false, isDefinition: true, variable: %struct._GSequence** @windows_seq)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64, align: 64)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSequence", file: !760, line: 30, baseType: !761)
!760 = !DIFile(filename: "/usr/include/glib-2.0/glib/gsequence.h", directory: "/home/lichi/Desktop/irssi/task1")
!761 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSequence", file: !760, line: 30, flags: DIFlagFwdDecl)
!762 = distinct !DIGlobalVariable(name: "active_win", scope: !0, file: !744, line: 39, type: !309, isLocal: false, isDefinition: true, variable: %struct._WINDOW_REC** @active_win)
!763 = distinct !DIGlobalVariable(name: "daytag", scope: !0, file: !744, line: 41, type: !316, isLocal: true, isDefinition: true, variable: i32* @daytag)
!764 = distinct !DIGlobalVariable(name: "daycheck", scope: !0, file: !744, line: 42, type: !316, isLocal: true, isDefinition: true, variable: i32* @daycheck)
!765 = !{i32 2, !"Dwarf Version", i32 4}
!766 = !{i32 2, !"Debug Info Version", i32 3}
!767 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!768 = distinct !DISubprogram(name: "window_create", scope: !744, file: !744, line: 120, type: !769, isLocal: false, isDefinition: true, scopeLine: 121, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !751)
!769 = !DISubroutineType(types: !770)
!770 = !{!309, !334, !316}
!771 = !DILocalVariable(name: "item", arg: 1, scope: !768, file: !744, line: 120, type: !334)
!772 = !DIExpression()
!773 = !DILocation(line: 120, column: 40, scope: !768)
!774 = !DILocalVariable(name: "automatic", arg: 2, scope: !768, file: !744, line: 120, type: !316)
!775 = !DILocation(line: 120, column: 50, scope: !768)
!776 = !DILocalVariable(name: "rec", scope: !768, file: !744, line: 122, type: !309)
!777 = !DILocation(line: 122, column: 14, scope: !768)
!778 = !DILocation(line: 124, column: 24, scope: !768)
!779 = !DILocation(line: 124, column: 9, scope: !768)
!780 = !DILocation(line: 124, column: 6, scope: !768)
!781 = !DILocation(line: 125, column: 16, scope: !768)
!782 = !DILocation(line: 125, column: 2, scope: !768)
!783 = !DILocation(line: 125, column: 7, scope: !768)
!784 = !DILocation(line: 125, column: 14, scope: !768)
!785 = !DILocation(line: 126, column: 15, scope: !768)
!786 = !DILocation(line: 126, column: 2, scope: !768)
!787 = !DILocation(line: 126, column: 7, scope: !768)
!788 = !DILocation(line: 126, column: 13, scope: !768)
!789 = !DILocation(line: 128, column: 28, scope: !768)
!790 = !DILocation(line: 128, column: 37, scope: !768)
!791 = !DILocation(line: 128, column: 12, scope: !768)
!792 = !DILocation(line: 128, column: 10, scope: !768)
!793 = !DILocation(line: 129, column: 21, scope: !768)
!794 = !DILocation(line: 129, column: 2, scope: !768)
!795 = !DILocation(line: 130, column: 35, scope: !768)
!796 = !DILocation(line: 130, column: 61, scope: !768)
!797 = !DILocation(line: 130, column: 52, scope: !768)
!798 = !DILocation(line: 130, column: 41, scope: !768)
!799 = !DILocation(line: 130, column: 2, scope: !768)
!800 = !DILocation(line: 132, column: 6, scope: !801)
!801 = distinct !DILexicalBlock(scope: !768, file: !744, line: 132, column: 6)
!802 = !DILocation(line: 132, column: 11, scope: !801)
!803 = !DILocation(line: 132, column: 6, scope: !768)
!804 = !DILocation(line: 132, column: 35, scope: !805)
!805 = !DILexicalBlockFile(scope: !801, file: !744, discriminator: 1)
!806 = !DILocation(line: 132, column: 40, scope: !805)
!807 = !DILocation(line: 132, column: 46, scope: !805)
!808 = !DILocation(line: 132, column: 19, scope: !805)
!809 = !DILocation(line: 133, column: 6, scope: !810)
!810 = distinct !DILexicalBlock(scope: !768, file: !744, line: 133, column: 6)
!811 = !DILocation(line: 133, column: 15, scope: !810)
!812 = !DILocation(line: 133, column: 20, scope: !810)
!813 = !DILocation(line: 133, column: 27, scope: !810)
!814 = !DILocation(line: 133, column: 31, scope: !815)
!815 = !DILexicalBlockFile(scope: !810, file: !744, discriminator: 1)
!816 = !DILocation(line: 133, column: 41, scope: !815)
!817 = !DILocation(line: 133, column: 44, scope: !818)
!818 = !DILexicalBlockFile(scope: !810, file: !744, discriminator: 2)
!819 = !DILocation(line: 133, column: 6, scope: !818)
!820 = !DILocation(line: 134, column: 7, scope: !821)
!821 = distinct !DILexicalBlock(scope: !822, file: !744, line: 134, column: 7)
!822 = distinct !DILexicalBlock(scope: !810, file: !744, line: 133, column: 85)
!823 = !DILocation(line: 134, column: 17, scope: !821)
!824 = !DILocation(line: 134, column: 20, scope: !825)
!825 = !DILexicalBlockFile(scope: !821, file: !744, discriminator: 1)
!826 = !DILocation(line: 134, column: 29, scope: !825)
!827 = !DILocation(line: 134, column: 34, scope: !825)
!828 = !DILocation(line: 134, column: 7, scope: !825)
!829 = !DILocation(line: 135, column: 47, scope: !821)
!830 = !DILocation(line: 135, column: 4, scope: !821)
!831 = !DILocation(line: 136, column: 21, scope: !822)
!832 = !DILocation(line: 136, column: 3, scope: !822)
!833 = !DILocation(line: 137, column: 2, scope: !822)
!834 = !DILocation(line: 138, column: 9, scope: !768)
!835 = !DILocation(line: 138, column: 2, scope: !768)
!836 = distinct !DISubprogram(name: "window_get_new_refnum", scope: !744, file: !744, line: 97, type: !837, isLocal: true, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !751)
!837 = !DISubroutineType(types: !838)
!838 = !{!316}
!839 = !DILocalVariable(name: "win", scope: !836, file: !744, line: 99, type: !309)
!840 = !DILocation(line: 99, column: 14, scope: !836)
!841 = !DILocalVariable(name: "iter", scope: !836, file: !744, line: 100, type: !842)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64, align: 64)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSequenceIter", file: !760, line: 31, baseType: !844)
!844 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSequenceNode", file: !760, line: 31, flags: DIFlagFwdDecl)
!845 = !DILocation(line: 100, column: 17, scope: !836)
!846 = !DILocalVariable(name: "end", scope: !836, file: !744, line: 100, type: !842)
!847 = !DILocation(line: 100, column: 24, scope: !836)
!848 = !DILocalVariable(name: "refnum", scope: !836, file: !744, line: 101, type: !316)
!849 = !DILocation(line: 101, column: 6, scope: !836)
!850 = !DILocation(line: 103, column: 9, scope: !836)
!851 = !DILocation(line: 104, column: 9, scope: !836)
!852 = !DILocation(line: 104, column: 7, scope: !836)
!853 = !DILocation(line: 105, column: 8, scope: !836)
!854 = !DILocation(line: 105, column: 6, scope: !836)
!855 = !DILocation(line: 107, column: 2, scope: !836)
!856 = !DILocation(line: 107, column: 9, scope: !857)
!857 = !DILexicalBlockFile(scope: !836, file: !744, discriminator: 1)
!858 = !DILocation(line: 107, column: 17, scope: !857)
!859 = !DILocation(line: 107, column: 14, scope: !857)
!860 = !DILocation(line: 107, column: 2, scope: !857)
!861 = !DILocation(line: 108, column: 24, scope: !862)
!862 = distinct !DILexicalBlock(scope: !836, file: !744, line: 107, column: 22)
!863 = !DILocation(line: 108, column: 9, scope: !862)
!864 = !DILocation(line: 108, column: 7, scope: !862)
!865 = !DILocation(line: 110, column: 7, scope: !866)
!866 = distinct !DILexicalBlock(scope: !862, file: !744, line: 110, column: 7)
!867 = !DILocation(line: 110, column: 17, scope: !866)
!868 = !DILocation(line: 110, column: 22, scope: !866)
!869 = !DILocation(line: 110, column: 14, scope: !866)
!870 = !DILocation(line: 110, column: 7, scope: !862)
!871 = !DILocation(line: 111, column: 11, scope: !866)
!872 = !DILocation(line: 111, column: 4, scope: !866)
!873 = !DILocation(line: 113, column: 9, scope: !862)
!874 = !DILocation(line: 114, column: 31, scope: !862)
!875 = !DILocation(line: 114, column: 10, scope: !862)
!876 = !DILocation(line: 114, column: 8, scope: !862)
!877 = !DILocation(line: 107, column: 2, scope: !878)
!878 = !DILexicalBlockFile(scope: !836, file: !744, discriminator: 2)
!879 = distinct !{!879, !855}
!880 = !DILocation(line: 117, column: 9, scope: !836)
!881 = !DILocation(line: 117, column: 2, scope: !836)
!882 = !DILocation(line: 118, column: 1, scope: !836)
!883 = distinct !DISubprogram(name: "windows_seq_insert", scope: !744, file: !744, line: 61, type: !884, isLocal: true, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !751)
!884 = !DISubroutineType(types: !885)
!885 = !{!842, !309}
!886 = !DILocalVariable(name: "rec", arg: 1, scope: !883, file: !744, line: 61, type: !309)
!887 = !DILocation(line: 61, column: 54, scope: !883)
!888 = !DILocation(line: 63, column: 34, scope: !883)
!889 = !DILocation(line: 63, column: 47, scope: !883)
!890 = !DILocation(line: 63, column: 9, scope: !883)
!891 = !DILocation(line: 63, column: 2, scope: !883)
!892 = distinct !DISubprogram(name: "window_set_active", scope: !744, file: !744, line: 225, type: !893, isLocal: false, isDefinition: true, scopeLine: 226, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !751)
!893 = !DISubroutineType(types: !894)
!894 = !{null, !309}
!895 = !DILocalVariable(name: "window", arg: 1, scope: !892, file: !744, line: 225, type: !309)
!896 = !DILocation(line: 225, column: 36, scope: !892)
!897 = !DILocalVariable(name: "old_window", scope: !892, file: !744, line: 227, type: !309)
!898 = !DILocation(line: 227, column: 14, scope: !892)
!899 = !DILocation(line: 229, column: 6, scope: !900)
!900 = distinct !DILexicalBlock(scope: !892, file: !744, line: 229, column: 6)
!901 = !DILocation(line: 229, column: 16, scope: !900)
!902 = !DILocation(line: 229, column: 13, scope: !900)
!903 = !DILocation(line: 229, column: 6, scope: !892)
!904 = !DILocation(line: 230, column: 3, scope: !900)
!905 = !DILocation(line: 232, column: 15, scope: !892)
!906 = !DILocation(line: 232, column: 13, scope: !892)
!907 = !DILocation(line: 233, column: 15, scope: !892)
!908 = !DILocation(line: 233, column: 13, scope: !892)
!909 = !DILocation(line: 234, column: 6, scope: !910)
!910 = distinct !DILexicalBlock(scope: !892, file: !744, line: 234, column: 6)
!911 = !DILocation(line: 234, column: 17, scope: !910)
!912 = !DILocation(line: 234, column: 6, scope: !892)
!913 = !DILocation(line: 235, column: 28, scope: !914)
!914 = distinct !DILexicalBlock(scope: !910, file: !744, line: 234, column: 25)
!915 = !DILocation(line: 235, column: 37, scope: !914)
!916 = !DILocation(line: 235, column: 13, scope: !914)
!917 = !DILocation(line: 235, column: 11, scope: !914)
!918 = !DILocation(line: 236, column: 29, scope: !914)
!919 = !DILocation(line: 236, column: 38, scope: !914)
!920 = !DILocation(line: 236, column: 13, scope: !914)
!921 = !DILocation(line: 236, column: 11, scope: !914)
!922 = !DILocation(line: 237, column: 2, scope: !914)
!923 = !DILocation(line: 239, column: 13, scope: !924)
!924 = distinct !DILexicalBlock(scope: !892, file: !744, line: 239, column: 13)
!925 = !DILocation(line: 239, column: 24, scope: !924)
!926 = !DILocation(line: 239, column: 13, scope: !892)
!927 = !DILocation(line: 240, column: 36, scope: !924)
!928 = !DILocation(line: 240, column: 48, scope: !924)
!929 = !DILocation(line: 240, column: 3, scope: !924)
!930 = !DILocation(line: 241, column: 1, scope: !892)
!931 = distinct !DISubprogram(name: "window_destroy", scope: !744, file: !744, line: 182, type: !893, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !751)
!932 = !DILocalVariable(name: "window", arg: 1, scope: !931, file: !744, line: 182, type: !309)
!933 = !DILocation(line: 182, column: 33, scope: !931)
!934 = !DILocalVariable(name: "iter", scope: !931, file: !744, line: 184, type: !842)
!935 = !DILocation(line: 184, column: 17, scope: !931)
!936 = !DILocation(line: 185, column: 2, scope: !931)
!937 = distinct !{!937, !936}
!938 = !DILocation(line: 185, column: 10, scope: !939)
!939 = !DILexicalBlockFile(scope: !940, file: !744, discriminator: 1)
!940 = distinct !DILexicalBlock(scope: !941, file: !744, line: 185, column: 10)
!941 = distinct !DILexicalBlock(scope: !931, file: !744, line: 185, column: 4)
!942 = !DILocation(line: 185, column: 17, scope: !939)
!943 = !DILocation(line: 185, column: 5, scope: !944)
!944 = !DILexicalBlockFile(scope: !945, file: !744, discriminator: 2)
!945 = distinct !DILexicalBlock(scope: !940, file: !744, line: 185, column: 3)
!946 = !DILocation(line: 185, column: 14, scope: !947)
!947 = !DILexicalBlockFile(scope: !948, file: !744, discriminator: 3)
!948 = distinct !DILexicalBlock(scope: !940, file: !744, line: 185, column: 12)
!949 = !DILocation(line: 185, column: 101, scope: !947)
!950 = !DILocation(line: 185, column: 112, scope: !951)
!951 = !DILexicalBlockFile(scope: !941, file: !744, discriminator: 4)
!952 = !DILocation(line: 187, column: 6, scope: !953)
!953 = distinct !DILexicalBlock(scope: !931, file: !744, line: 187, column: 6)
!954 = !DILocation(line: 187, column: 14, scope: !953)
!955 = !DILocation(line: 187, column: 6, scope: !931)
!956 = !DILocation(line: 187, column: 26, scope: !957)
!957 = !DILexicalBlockFile(scope: !953, file: !744, discriminator: 1)
!958 = !DILocation(line: 188, column: 2, scope: !931)
!959 = !DILocation(line: 188, column: 10, scope: !931)
!960 = !DILocation(line: 188, column: 21, scope: !931)
!961 = !DILocation(line: 189, column: 27, scope: !931)
!962 = !DILocation(line: 189, column: 36, scope: !931)
!963 = !DILocation(line: 189, column: 12, scope: !931)
!964 = !DILocation(line: 189, column: 10, scope: !931)
!965 = !DILocation(line: 190, column: 35, scope: !931)
!966 = !DILocation(line: 190, column: 9, scope: !931)
!967 = !DILocation(line: 190, column: 7, scope: !931)
!968 = !DILocation(line: 191, column: 6, scope: !969)
!969 = distinct !DILexicalBlock(scope: !931, file: !744, line: 191, column: 6)
!970 = !DILocation(line: 191, column: 11, scope: !969)
!971 = !DILocation(line: 191, column: 6, scope: !931)
!972 = !DILocation(line: 191, column: 37, scope: !973)
!973 = !DILexicalBlockFile(scope: !969, file: !744, discriminator: 1)
!974 = !DILocation(line: 191, column: 19, scope: !973)
!975 = !DILocation(line: 193, column: 6, scope: !976)
!976 = distinct !DILexicalBlock(scope: !931, file: !744, line: 193, column: 6)
!977 = !DILocation(line: 193, column: 20, scope: !976)
!978 = !DILocation(line: 193, column: 17, scope: !976)
!979 = !DILocation(line: 193, column: 6, scope: !931)
!980 = !DILocation(line: 194, column: 14, scope: !981)
!981 = distinct !DILexicalBlock(scope: !976, file: !744, line: 193, column: 28)
!982 = !DILocation(line: 195, column: 7, scope: !983)
!983 = distinct !DILexicalBlock(scope: !981, file: !744, line: 195, column: 7)
!984 = !DILocation(line: 195, column: 15, scope: !983)
!985 = !DILocation(line: 195, column: 7, scope: !981)
!986 = !DILocation(line: 196, column: 22, scope: !983)
!987 = !DILocation(line: 196, column: 31, scope: !983)
!988 = !DILocation(line: 196, column: 4, scope: !983)
!989 = !DILocation(line: 197, column: 2, scope: !981)
!990 = !DILocation(line: 199, column: 2, scope: !931)
!991 = !DILocation(line: 199, column: 9, scope: !992)
!992 = !DILexicalBlockFile(scope: !931, file: !744, discriminator: 1)
!993 = !DILocation(line: 199, column: 17, scope: !992)
!994 = !DILocation(line: 199, column: 23, scope: !992)
!995 = !DILocation(line: 199, column: 2, scope: !992)
!996 = !DILocation(line: 200, column: 23, scope: !931)
!997 = !DILocation(line: 200, column: 31, scope: !931)
!998 = !DILocation(line: 200, column: 38, scope: !931)
!999 = !DILocation(line: 200, column: 3, scope: !931)
!1000 = !DILocation(line: 199, column: 2, scope: !1001)
!1001 = !DILexicalBlockFile(scope: !931, file: !744, discriminator: 2)
!1002 = distinct !{!1002, !990}
!1003 = !DILocation(line: 202, column: 13, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !931, file: !744, line: 202, column: 13)
!1005 = !DILocation(line: 202, column: 13, scope: !931)
!1006 = !DILocation(line: 203, column: 16, scope: !1004)
!1007 = !DILocation(line: 203, column: 24, scope: !1004)
!1008 = !DILocation(line: 203, column: 3, scope: !1004)
!1009 = !DILocation(line: 205, column: 37, scope: !931)
!1010 = !DILocation(line: 205, column: 2, scope: !931)
!1011 = !DILocation(line: 207, column: 2, scope: !931)
!1012 = !DILocation(line: 207, column: 9, scope: !992)
!1013 = !DILocation(line: 207, column: 17, scope: !992)
!1014 = !DILocation(line: 207, column: 29, scope: !992)
!1015 = !DILocation(line: 207, column: 2, scope: !992)
!1016 = !DILocation(line: 208, column: 37, scope: !931)
!1017 = !DILocation(line: 208, column: 45, scope: !931)
!1018 = !DILocation(line: 208, column: 53, scope: !931)
!1019 = !DILocation(line: 208, column: 66, scope: !931)
!1020 = !DILocation(line: 208, column: 17, scope: !931)
!1021 = !DILocation(line: 207, column: 2, scope: !1001)
!1022 = distinct !{!1022, !1011}
!1023 = !DILocation(line: 210, column: 9, scope: !931)
!1024 = !DILocation(line: 210, column: 17, scope: !931)
!1025 = !DILocation(line: 210, column: 2, scope: !931)
!1026 = !DILocation(line: 211, column: 9, scope: !931)
!1027 = !DILocation(line: 211, column: 17, scope: !931)
!1028 = !DILocation(line: 211, column: 2, scope: !931)
!1029 = !DILocation(line: 212, column: 9, scope: !931)
!1030 = !DILocation(line: 212, column: 17, scope: !931)
!1031 = !DILocation(line: 212, column: 2, scope: !931)
!1032 = !DILocation(line: 213, column: 9, scope: !931)
!1033 = !DILocation(line: 213, column: 17, scope: !931)
!1034 = !DILocation(line: 213, column: 2, scope: !931)
!1035 = !DILocation(line: 214, column: 9, scope: !931)
!1036 = !DILocation(line: 214, column: 2, scope: !931)
!1037 = !DILocation(line: 215, column: 1, scope: !931)
!1038 = !DILocation(line: 215, column: 1, scope: !992)
!1039 = distinct !DISubprogram(name: "windows_seq_window_lookup", scope: !744, file: !744, line: 76, type: !884, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !751)
!1040 = !DILocalVariable(name: "rec", arg: 1, scope: !1039, file: !744, line: 76, type: !309)
!1041 = !DILocation(line: 76, column: 61, scope: !1039)
!1042 = !DILocation(line: 78, column: 27, scope: !1039)
!1043 = !DILocation(line: 78, column: 40, scope: !1039)
!1044 = !DILocation(line: 78, column: 9, scope: !1039)
!1045 = !DILocation(line: 78, column: 2, scope: !1039)
!1046 = distinct !DISubprogram(name: "windows_pack", scope: !744, file: !744, line: 157, type: !1047, isLocal: true, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !751)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{null, !316}
!1049 = !DILocalVariable(name: "removed_refnum", arg: 1, scope: !1046, file: !744, line: 157, type: !316)
!1050 = !DILocation(line: 157, column: 30, scope: !1046)
!1051 = !DILocalVariable(name: "window", scope: !1046, file: !744, line: 159, type: !309)
!1052 = !DILocation(line: 159, column: 14, scope: !1046)
!1053 = !DILocalVariable(name: "refnum", scope: !1046, file: !744, line: 160, type: !316)
!1054 = !DILocation(line: 160, column: 6, scope: !1046)
!1055 = !DILocalVariable(name: "iter", scope: !1046, file: !744, line: 161, type: !842)
!1056 = !DILocation(line: 161, column: 17, scope: !1046)
!1057 = !DILocalVariable(name: "end", scope: !1046, file: !744, line: 161, type: !842)
!1058 = !DILocation(line: 161, column: 24, scope: !1046)
!1059 = !DILocation(line: 163, column: 11, scope: !1046)
!1060 = !DILocation(line: 163, column: 26, scope: !1046)
!1061 = !DILocation(line: 163, column: 9, scope: !1046)
!1062 = !DILocation(line: 164, column: 8, scope: !1046)
!1063 = !DILocation(line: 164, column: 6, scope: !1046)
!1064 = !DILocation(line: 165, column: 35, scope: !1046)
!1065 = !DILocation(line: 165, column: 9, scope: !1046)
!1066 = !DILocation(line: 165, column: 7, scope: !1046)
!1067 = !DILocation(line: 166, column: 6, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1046, file: !744, line: 166, column: 6)
!1069 = !DILocation(line: 166, column: 11, scope: !1068)
!1070 = !DILocation(line: 166, column: 6, scope: !1046)
!1071 = !DILocation(line: 166, column: 19, scope: !1072)
!1072 = !DILexicalBlockFile(scope: !1068, file: !744, discriminator: 1)
!1073 = !DILocation(line: 168, column: 2, scope: !1046)
!1074 = !DILocation(line: 168, column: 9, scope: !1075)
!1075 = !DILexicalBlockFile(scope: !1046, file: !744, discriminator: 1)
!1076 = !DILocation(line: 168, column: 17, scope: !1075)
!1077 = !DILocation(line: 168, column: 14, scope: !1075)
!1078 = !DILocation(line: 168, column: 2, scope: !1075)
!1079 = !DILocation(line: 169, column: 27, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1046, file: !744, line: 168, column: 22)
!1081 = !DILocation(line: 169, column: 12, scope: !1080)
!1082 = !DILocation(line: 169, column: 10, scope: !1080)
!1083 = !DILocation(line: 171, column: 7, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1080, file: !744, line: 171, column: 7)
!1085 = !DILocation(line: 171, column: 14, scope: !1084)
!1086 = !DILocation(line: 171, column: 21, scope: !1084)
!1087 = !DILocation(line: 171, column: 24, scope: !1088)
!1088 = !DILexicalBlockFile(scope: !1084, file: !744, discriminator: 1)
!1089 = !DILocation(line: 171, column: 32, scope: !1088)
!1090 = !DILocation(line: 171, column: 46, scope: !1088)
!1091 = !DILocation(line: 171, column: 49, scope: !1092)
!1092 = !DILexicalBlockFile(scope: !1084, file: !744, discriminator: 2)
!1093 = !DILocation(line: 171, column: 57, scope: !1092)
!1094 = !DILocation(line: 171, column: 67, scope: !1092)
!1095 = !DILocation(line: 171, column: 64, scope: !1092)
!1096 = !DILocation(line: 171, column: 7, scope: !1092)
!1097 = !DILocation(line: 172, column: 4, scope: !1084)
!1098 = !DILocation(line: 174, column: 22, scope: !1080)
!1099 = !DILocation(line: 174, column: 30, scope: !1080)
!1100 = !DILocation(line: 174, column: 37, scope: !1080)
!1101 = !DILocation(line: 174, column: 3, scope: !1080)
!1102 = !DILocation(line: 175, column: 23, scope: !1080)
!1103 = !DILocation(line: 175, column: 3, scope: !1080)
!1104 = !DILocation(line: 177, column: 9, scope: !1080)
!1105 = !DILocation(line: 178, column: 31, scope: !1080)
!1106 = !DILocation(line: 178, column: 10, scope: !1080)
!1107 = !DILocation(line: 178, column: 8, scope: !1080)
!1108 = !DILocation(line: 168, column: 2, scope: !1109)
!1109 = !DILexicalBlockFile(scope: !1046, file: !744, discriminator: 2)
!1110 = distinct !{!1110, !1073}
!1111 = !DILocation(line: 180, column: 1, scope: !1046)
!1112 = distinct !DISubprogram(name: "window_bind_destroy", scope: !744, file: !744, line: 599, type: !1113, isLocal: false, isDefinition: true, scopeLine: 600, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !751)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{null, !309, !722}
!1115 = !DILocalVariable(name: "window", arg: 1, scope: !1112, file: !744, line: 599, type: !309)
!1116 = !DILocation(line: 599, column: 38, scope: !1112)
!1117 = !DILocalVariable(name: "rec", arg: 2, scope: !1112, file: !744, line: 599, type: !722)
!1118 = !DILocation(line: 599, column: 63, scope: !1112)
!1119 = !DILocation(line: 601, column: 2, scope: !1112)
!1120 = distinct !{!1120, !1119}
!1121 = !DILocation(line: 601, column: 10, scope: !1122)
!1122 = !DILexicalBlockFile(scope: !1123, file: !744, discriminator: 1)
!1123 = distinct !DILexicalBlock(scope: !1124, file: !744, line: 601, column: 10)
!1124 = distinct !DILexicalBlock(scope: !1112, file: !744, line: 601, column: 4)
!1125 = !DILocation(line: 601, column: 17, scope: !1122)
!1126 = !DILocation(line: 601, column: 5, scope: !1127)
!1127 = !DILexicalBlockFile(scope: !1128, file: !744, discriminator: 2)
!1128 = distinct !DILexicalBlock(scope: !1123, file: !744, line: 601, column: 3)
!1129 = !DILocation(line: 601, column: 14, scope: !1130)
!1130 = !DILexicalBlockFile(scope: !1131, file: !744, discriminator: 3)
!1131 = distinct !DILexicalBlock(scope: !1123, file: !744, line: 601, column: 12)
!1132 = !DILocation(line: 601, column: 101, scope: !1130)
!1133 = !DILocation(line: 601, column: 112, scope: !1134)
!1134 = !DILexicalBlockFile(scope: !1124, file: !744, discriminator: 4)
!1135 = !DILocation(line: 602, column: 9, scope: !1112)
!1136 = distinct !{!1136, !1135}
!1137 = !DILocation(line: 602, column: 17, scope: !1138)
!1138 = !DILexicalBlockFile(scope: !1139, file: !744, discriminator: 1)
!1139 = distinct !DILexicalBlock(scope: !1140, file: !744, line: 602, column: 17)
!1140 = distinct !DILexicalBlock(scope: !1112, file: !744, line: 602, column: 11)
!1141 = !DILocation(line: 602, column: 21, scope: !1138)
!1142 = !DILocation(line: 602, column: 12, scope: !1143)
!1143 = !DILexicalBlockFile(scope: !1144, file: !744, discriminator: 2)
!1144 = distinct !DILexicalBlock(scope: !1139, file: !744, line: 602, column: 10)
!1145 = !DILocation(line: 602, column: 21, scope: !1146)
!1146 = !DILexicalBlockFile(scope: !1147, file: !744, discriminator: 3)
!1147 = distinct !DILexicalBlock(scope: !1139, file: !744, line: 602, column: 19)
!1148 = !DILocation(line: 602, column: 105, scope: !1146)
!1149 = !DILocation(line: 602, column: 116, scope: !1150)
!1150 = !DILexicalBlockFile(scope: !1140, file: !744, discriminator: 4)
!1151 = !DILocation(line: 604, column: 39, scope: !1112)
!1152 = !DILocation(line: 604, column: 47, scope: !1112)
!1153 = !DILocation(line: 604, column: 60, scope: !1112)
!1154 = !DILocation(line: 604, column: 24, scope: !1112)
!1155 = !DILocation(line: 604, column: 2, scope: !1112)
!1156 = !DILocation(line: 604, column: 10, scope: !1112)
!1157 = !DILocation(line: 604, column: 22, scope: !1112)
!1158 = !DILocation(line: 606, column: 16, scope: !1112)
!1159 = !DILocation(line: 606, column: 21, scope: !1112)
!1160 = !DILocation(line: 606, column: 9, scope: !1112)
!1161 = !DILocation(line: 607, column: 16, scope: !1112)
!1162 = !DILocation(line: 607, column: 21, scope: !1112)
!1163 = !DILocation(line: 607, column: 9, scope: !1112)
!1164 = !DILocation(line: 608, column: 16, scope: !1112)
!1165 = !DILocation(line: 608, column: 9, scope: !1112)
!1166 = !DILocation(line: 609, column: 1, scope: !1112)
!1167 = !DILocation(line: 609, column: 1, scope: !1168)
!1168 = !DILexicalBlockFile(scope: !1112, file: !744, discriminator: 1)
!1169 = distinct !DISubprogram(name: "window_auto_destroy", scope: !744, file: !744, line: 217, type: !893, isLocal: false, isDefinition: true, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !751)
!1170 = !DILocalVariable(name: "window", arg: 1, scope: !1169, file: !744, line: 217, type: !309)
!1171 = !DILocation(line: 217, column: 38, scope: !1169)
!1172 = !DILocation(line: 219, column: 6, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1169, file: !744, line: 219, column: 6)
!1174 = !DILocation(line: 219, column: 45, scope: !1173)
!1175 = !DILocation(line: 219, column: 48, scope: !1176)
!1176 = !DILexicalBlockFile(scope: !1173, file: !744, discriminator: 1)
!1177 = !DILocation(line: 219, column: 57, scope: !1176)
!1178 = !DILocation(line: 219, column: 62, scope: !1176)
!1179 = !DILocation(line: 219, column: 69, scope: !1176)
!1180 = !DILocation(line: 220, column: 6, scope: !1173)
!1181 = !DILocation(line: 220, column: 14, scope: !1173)
!1182 = !DILocation(line: 220, column: 20, scope: !1173)
!1183 = !DILocation(line: 220, column: 27, scope: !1173)
!1184 = !DILocation(line: 220, column: 30, scope: !1176)
!1185 = !DILocation(line: 220, column: 38, scope: !1176)
!1186 = !DILocation(line: 220, column: 50, scope: !1176)
!1187 = !DILocation(line: 220, column: 58, scope: !1176)
!1188 = !DILocation(line: 221, column: 6, scope: !1173)
!1189 = !DILocation(line: 221, column: 14, scope: !1173)
!1190 = !DILocation(line: 221, column: 20, scope: !1173)
!1191 = !DILocation(line: 221, column: 25, scope: !1173)
!1192 = !DILocation(line: 221, column: 29, scope: !1176)
!1193 = !DILocation(line: 221, column: 37, scope: !1176)
!1194 = !DILocation(line: 219, column: 6, scope: !1195)
!1195 = !DILexicalBlockFile(scope: !1169, file: !744, discriminator: 2)
!1196 = !DILocation(line: 222, column: 32, scope: !1173)
!1197 = !DILocation(line: 222, column: 17, scope: !1173)
!1198 = !DILocation(line: 223, column: 1, scope: !1169)
!1199 = distinct !DISubprogram(name: "window_change_server", scope: !744, file: !744, line: 243, type: !1200, isLocal: false, isDefinition: true, scopeLine: 244, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !751)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{null, !309, !331}
!1202 = !DILocalVariable(name: "window", arg: 1, scope: !1199, file: !744, line: 243, type: !309)
!1203 = !DILocation(line: 243, column: 39, scope: !1199)
!1204 = !DILocalVariable(name: "server", arg: 2, scope: !1199, file: !744, line: 243, type: !331)
!1205 = !DILocation(line: 243, column: 53, scope: !1199)
!1206 = !DILocalVariable(name: "active", scope: !1199, file: !744, line: 245, type: !349)
!1207 = !DILocation(line: 245, column: 14, scope: !1199)
!1208 = !DILocalVariable(name: "connect", scope: !1199, file: !744, line: 245, type: !349)
!1209 = !DILocation(line: 245, column: 23, scope: !1199)
!1210 = !DILocation(line: 247, column: 6, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1199, file: !744, line: 247, column: 6)
!1212 = !DILocation(line: 247, column: 13, scope: !1211)
!1213 = !DILocation(line: 247, column: 20, scope: !1211)
!1214 = !DILocation(line: 247, column: 57, scope: !1215)
!1215 = !DILexicalBlockFile(scope: !1211, file: !744, discriminator: 1)
!1216 = !DILocation(line: 247, column: 39, scope: !1215)
!1217 = !DILocation(line: 247, column: 24, scope: !1215)
!1218 = !DILocation(line: 247, column: 37, scope: !1215)
!1219 = !DILocation(line: 247, column: 23, scope: !1215)
!1220 = !DILocation(line: 247, column: 6, scope: !1215)
!1221 = !DILocation(line: 248, column: 3, scope: !1211)
!1222 = !DILocation(line: 250, column: 6, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1199, file: !744, line: 250, column: 6)
!1224 = !DILocation(line: 250, column: 13, scope: !1223)
!1225 = !DILocation(line: 250, column: 6, scope: !1199)
!1226 = !DILocation(line: 251, column: 20, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1223, file: !744, line: 250, column: 21)
!1228 = !DILocation(line: 251, column: 10, scope: !1227)
!1229 = !DILocation(line: 252, column: 2, scope: !1227)
!1230 = !DILocation(line: 252, column: 26, scope: !1231)
!1231 = !DILexicalBlockFile(scope: !1232, file: !744, discriminator: 1)
!1232 = distinct !DILexicalBlock(scope: !1223, file: !744, line: 252, column: 13)
!1233 = !DILocation(line: 252, column: 35, scope: !1231)
!1234 = !DILocation(line: 252, column: 13, scope: !1231)
!1235 = !DILocation(line: 252, column: 43, scope: !1231)
!1236 = !DILocation(line: 253, column: 12, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1232, file: !744, line: 252, column: 51)
!1238 = !DILocation(line: 253, column: 10, scope: !1237)
!1239 = !DILocation(line: 254, column: 11, scope: !1237)
!1240 = !DILocation(line: 255, column: 2, scope: !1237)
!1241 = !DILocation(line: 256, column: 10, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1232, file: !744, line: 255, column: 9)
!1243 = !DILocation(line: 257, column: 13, scope: !1242)
!1244 = !DILocation(line: 257, column: 11, scope: !1242)
!1245 = !DILocation(line: 260, column: 6, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1199, file: !744, line: 260, column: 6)
!1247 = !DILocation(line: 260, column: 14, scope: !1246)
!1248 = !DILocation(line: 260, column: 32, scope: !1246)
!1249 = !DILocation(line: 260, column: 29, scope: !1246)
!1250 = !DILocation(line: 260, column: 6, scope: !1199)
!1251 = !DILocation(line: 261, column: 28, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1246, file: !744, line: 260, column: 41)
!1253 = !DILocation(line: 261, column: 3, scope: !1252)
!1254 = !DILocation(line: 261, column: 11, scope: !1252)
!1255 = !DILocation(line: 261, column: 26, scope: !1252)
!1256 = !DILocation(line: 262, column: 44, scope: !1252)
!1257 = !DILocation(line: 262, column: 52, scope: !1252)
!1258 = !DILocation(line: 262, column: 3, scope: !1252)
!1259 = !DILocation(line: 263, column: 2, scope: !1252)
!1260 = !DILocation(line: 265, column: 6, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1199, file: !744, line: 265, column: 6)
!1262 = !DILocation(line: 265, column: 14, scope: !1261)
!1263 = !DILocation(line: 265, column: 31, scope: !1261)
!1264 = !DILocation(line: 265, column: 28, scope: !1261)
!1265 = !DILocation(line: 265, column: 6, scope: !1199)
!1266 = !DILocation(line: 266, column: 27, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1261, file: !744, line: 265, column: 39)
!1268 = !DILocation(line: 266, column: 3, scope: !1267)
!1269 = !DILocation(line: 266, column: 11, scope: !1267)
!1270 = !DILocation(line: 266, column: 25, scope: !1267)
!1271 = !DILocation(line: 267, column: 43, scope: !1267)
!1272 = !DILocation(line: 267, column: 51, scope: !1267)
!1273 = !DILocation(line: 267, column: 3, scope: !1267)
!1274 = !DILocation(line: 268, column: 2, scope: !1267)
!1275 = !DILocation(line: 269, column: 1, scope: !1199)
!1276 = distinct !DISubprogram(name: "window_set_refnum", scope: !744, file: !744, line: 271, type: !1277, isLocal: false, isDefinition: true, scopeLine: 272, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !751)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{null, !309, !316}
!1279 = !DILocalVariable(name: "window", arg: 1, scope: !1276, file: !744, line: 271, type: !309)
!1280 = !DILocation(line: 271, column: 36, scope: !1276)
!1281 = !DILocalVariable(name: "refnum", arg: 2, scope: !1276, file: !744, line: 271, type: !316)
!1282 = !DILocation(line: 271, column: 48, scope: !1276)
!1283 = !DILocalVariable(name: "other_iter", scope: !1276, file: !744, line: 273, type: !842)
!1284 = !DILocation(line: 273, column: 17, scope: !1276)
!1285 = !DILocalVariable(name: "window_iter", scope: !1276, file: !744, line: 273, type: !842)
!1286 = !DILocation(line: 273, column: 30, scope: !1276)
!1287 = !DILocalVariable(name: "old_refnum", scope: !1276, file: !744, line: 274, type: !316)
!1288 = !DILocation(line: 274, column: 6, scope: !1276)
!1289 = !DILocation(line: 276, column: 2, scope: !1276)
!1290 = distinct !{!1290, !1289}
!1291 = !DILocation(line: 276, column: 10, scope: !1292)
!1292 = !DILexicalBlockFile(scope: !1293, file: !744, discriminator: 1)
!1293 = distinct !DILexicalBlock(scope: !1294, file: !744, line: 276, column: 10)
!1294 = distinct !DILexicalBlock(scope: !1276, file: !744, line: 276, column: 4)
!1295 = !DILocation(line: 276, column: 17, scope: !1292)
!1296 = !DILocation(line: 276, column: 5, scope: !1297)
!1297 = !DILexicalBlockFile(scope: !1298, file: !744, discriminator: 2)
!1298 = distinct !DILexicalBlock(scope: !1293, file: !744, line: 276, column: 3)
!1299 = !DILocation(line: 276, column: 14, scope: !1300)
!1300 = !DILexicalBlockFile(scope: !1301, file: !744, discriminator: 3)
!1301 = distinct !DILexicalBlock(scope: !1293, file: !744, line: 276, column: 12)
!1302 = !DILocation(line: 276, column: 101, scope: !1300)
!1303 = !DILocation(line: 276, column: 112, scope: !1304)
!1304 = !DILexicalBlockFile(scope: !1294, file: !744, discriminator: 4)
!1305 = !DILocation(line: 277, column: 2, scope: !1276)
!1306 = distinct !{!1306, !1305}
!1307 = !DILocation(line: 277, column: 10, scope: !1308)
!1308 = !DILexicalBlockFile(scope: !1309, file: !744, discriminator: 1)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !744, line: 277, column: 10)
!1310 = distinct !DILexicalBlock(scope: !1276, file: !744, line: 277, column: 4)
!1311 = !DILocation(line: 277, column: 17, scope: !1308)
!1312 = !DILocation(line: 277, column: 25, scope: !1313)
!1313 = !DILexicalBlockFile(scope: !1314, file: !744, discriminator: 2)
!1314 = distinct !DILexicalBlock(scope: !1309, file: !744, line: 277, column: 23)
!1315 = !DILocation(line: 277, column: 34, scope: !1316)
!1316 = !DILexicalBlockFile(scope: !1317, file: !744, discriminator: 3)
!1317 = distinct !DILexicalBlock(scope: !1309, file: !744, line: 277, column: 32)
!1318 = !DILocation(line: 277, column: 118, scope: !1316)
!1319 = !DILocation(line: 277, column: 129, scope: !1320)
!1320 = !DILexicalBlockFile(scope: !1310, file: !744, discriminator: 4)
!1321 = !DILocation(line: 278, column: 6, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1276, file: !744, line: 278, column: 6)
!1323 = !DILocation(line: 278, column: 14, scope: !1322)
!1324 = !DILocation(line: 278, column: 24, scope: !1322)
!1325 = !DILocation(line: 278, column: 21, scope: !1322)
!1326 = !DILocation(line: 278, column: 6, scope: !1276)
!1327 = !DILocation(line: 278, column: 32, scope: !1328)
!1328 = !DILexicalBlockFile(scope: !1322, file: !744, discriminator: 1)
!1329 = !DILocation(line: 280, column: 41, scope: !1276)
!1330 = !DILocation(line: 280, column: 15, scope: !1276)
!1331 = !DILocation(line: 280, column: 13, scope: !1276)
!1332 = !DILocation(line: 281, column: 42, scope: !1276)
!1333 = !DILocation(line: 281, column: 50, scope: !1276)
!1334 = !DILocation(line: 281, column: 16, scope: !1276)
!1335 = !DILocation(line: 281, column: 14, scope: !1276)
!1336 = !DILocation(line: 283, column: 6, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1276, file: !744, line: 283, column: 6)
!1338 = !DILocation(line: 283, column: 17, scope: !1337)
!1339 = !DILocation(line: 283, column: 6, scope: !1276)
!1340 = !DILocalVariable(name: "rec", scope: !1341, file: !744, line: 284, type: !309)
!1341 = distinct !DILexicalBlock(scope: !1337, file: !744, line: 283, column: 25)
!1342 = !DILocation(line: 284, column: 15, scope: !1341)
!1343 = !DILocation(line: 284, column: 36, scope: !1341)
!1344 = !DILocation(line: 284, column: 21, scope: !1341)
!1345 = !DILocation(line: 286, column: 17, scope: !1341)
!1346 = !DILocation(line: 286, column: 25, scope: !1341)
!1347 = !DILocation(line: 286, column: 3, scope: !1341)
!1348 = !DILocation(line: 286, column: 8, scope: !1341)
!1349 = !DILocation(line: 286, column: 15, scope: !1341)
!1350 = !DILocation(line: 287, column: 43, scope: !1341)
!1351 = !DILocation(line: 287, column: 69, scope: !1341)
!1352 = !DILocation(line: 287, column: 60, scope: !1341)
!1353 = !DILocation(line: 287, column: 49, scope: !1341)
!1354 = !DILocation(line: 287, column: 3, scope: !1341)
!1355 = !DILocation(line: 288, column: 2, scope: !1341)
!1356 = !DILocation(line: 290, column: 15, scope: !1276)
!1357 = !DILocation(line: 290, column: 23, scope: !1276)
!1358 = !DILocation(line: 290, column: 13, scope: !1276)
!1359 = !DILocation(line: 291, column: 19, scope: !1276)
!1360 = !DILocation(line: 291, column: 2, scope: !1276)
!1361 = !DILocation(line: 291, column: 10, scope: !1276)
!1362 = !DILocation(line: 291, column: 17, scope: !1276)
!1363 = !DILocation(line: 292, column: 42, scope: !1276)
!1364 = !DILocation(line: 292, column: 71, scope: !1276)
!1365 = !DILocation(line: 292, column: 62, scope: !1276)
!1366 = !DILocation(line: 292, column: 51, scope: !1276)
!1367 = !DILocation(line: 292, column: 2, scope: !1276)
!1368 = !DILocation(line: 294, column: 6, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1276, file: !744, line: 294, column: 6)
!1370 = !DILocation(line: 294, column: 18, scope: !1369)
!1371 = !DILocation(line: 294, column: 25, scope: !1369)
!1372 = !DILocation(line: 294, column: 28, scope: !1373)
!1373 = !DILexicalBlockFile(scope: !1369, file: !744, discriminator: 1)
!1374 = !DILocation(line: 294, column: 39, scope: !1373)
!1375 = !DILocation(line: 294, column: 6, scope: !1373)
!1376 = !DILocation(line: 295, column: 19, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1369, file: !744, line: 294, column: 48)
!1378 = !DILocation(line: 295, column: 31, scope: !1377)
!1379 = !DILocation(line: 295, column: 3, scope: !1377)
!1380 = !DILocation(line: 296, column: 2, scope: !1377)
!1381 = !DILocation(line: 297, column: 23, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1369, file: !744, line: 296, column: 9)
!1383 = !DILocation(line: 297, column: 3, scope: !1382)
!1384 = !DILocation(line: 299, column: 1, scope: !1276)
!1385 = distinct !DISubprogram(name: "windows_seq_refnum_lookup", scope: !744, file: !744, line: 66, type: !1386, isLocal: true, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !751)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{!842, !316}
!1388 = !DILocalVariable(name: "refnum", arg: 1, scope: !1385, file: !744, line: 66, type: !316)
!1389 = !DILocation(line: 66, column: 53, scope: !1385)
!1390 = !DILocation(line: 68, column: 27, scope: !1385)
!1391 = !DILocation(line: 68, column: 61, scope: !1385)
!1392 = !DILocation(line: 68, column: 52, scope: !1385)
!1393 = !DILocation(line: 68, column: 41, scope: !1385)
!1394 = !DILocation(line: 68, column: 9, scope: !1385)
!1395 = !DILocation(line: 68, column: 2, scope: !1385)
!1396 = distinct !DISubprogram(name: "windows_seq_changed", scope: !744, file: !744, line: 71, type: !1397, isLocal: true, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !751)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{null, !842}
!1399 = !DILocalVariable(name: "iter", arg: 1, scope: !1396, file: !744, line: 71, type: !842)
!1400 = !DILocation(line: 71, column: 48, scope: !1396)
!1401 = !DILocation(line: 73, column: 26, scope: !1396)
!1402 = !DILocation(line: 73, column: 2, scope: !1396)
!1403 = !DILocation(line: 74, column: 1, scope: !1396)
!1404 = distinct !DISubprogram(name: "window_set_name", scope: !744, file: !744, line: 301, type: !1405, isLocal: false, isDefinition: true, scopeLine: 302, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !751)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{null, !309, !632}
!1407 = !DILocalVariable(name: "window", arg: 1, scope: !1404, file: !744, line: 301, type: !309)
!1408 = !DILocation(line: 301, column: 34, scope: !1404)
!1409 = !DILocalVariable(name: "name", arg: 2, scope: !1404, file: !744, line: 301, type: !632)
!1410 = !DILocation(line: 301, column: 54, scope: !1404)
!1411 = !DILocation(line: 303, column: 9, scope: !1404)
!1412 = !DILocation(line: 303, column: 17, scope: !1404)
!1413 = !DILocation(line: 303, column: 2, scope: !1404)
!1414 = !DILocation(line: 304, column: 17, scope: !1404)
!1415 = !DILocation(line: 304, column: 22, scope: !1404)
!1416 = !DILocation(line: 304, column: 29, scope: !1404)
!1417 = !DILocation(line: 304, column: 33, scope: !1418)
!1418 = !DILexicalBlockFile(scope: !1404, file: !744, discriminator: 1)
!1419 = !DILocation(line: 304, column: 32, scope: !1418)
!1420 = !DILocation(line: 304, column: 38, scope: !1418)
!1421 = !DILocation(line: 304, column: 17, scope: !1418)
!1422 = !DILocation(line: 304, column: 17, scope: !1423)
!1423 = !DILexicalBlockFile(scope: !1404, file: !744, discriminator: 2)
!1424 = !DILocation(line: 304, column: 64, scope: !1425)
!1425 = !DILexicalBlockFile(scope: !1404, file: !744, discriminator: 3)
!1426 = !DILocation(line: 304, column: 55, scope: !1425)
!1427 = !DILocation(line: 304, column: 17, scope: !1425)
!1428 = !DILocation(line: 304, column: 17, scope: !1429)
!1429 = !DILexicalBlockFile(scope: !1404, file: !744, discriminator: 4)
!1430 = !DILocation(line: 304, column: 2, scope: !1429)
!1431 = !DILocation(line: 304, column: 10, scope: !1429)
!1432 = !DILocation(line: 304, column: 15, scope: !1429)
!1433 = !DILocation(line: 306, column: 40, scope: !1404)
!1434 = !DILocation(line: 306, column: 2, scope: !1404)
!1435 = !DILocation(line: 307, column: 1, scope: !1404)
!1436 = distinct !DISubprogram(name: "window_set_history", scope: !744, file: !744, line: 309, type: !1405, isLocal: false, isDefinition: true, scopeLine: 310, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !751)
!1437 = !DILocalVariable(name: "window", arg: 1, scope: !1436, file: !744, line: 309, type: !309)
!1438 = !DILocation(line: 309, column: 37, scope: !1436)
!1439 = !DILocalVariable(name: "name", arg: 2, scope: !1436, file: !744, line: 309, type: !632)
!1440 = !DILocation(line: 309, column: 57, scope: !1436)
!1441 = !DILocalVariable(name: "oldname", scope: !1436, file: !744, line: 311, type: !318)
!1442 = !DILocation(line: 311, column: 8, scope: !1436)
!1443 = !DILocation(line: 312, column: 12, scope: !1436)
!1444 = !DILocation(line: 312, column: 20, scope: !1436)
!1445 = !DILocation(line: 312, column: 10, scope: !1436)
!1446 = !DILocation(line: 314, column: 6, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1436, file: !744, line: 314, column: 6)
!1448 = !DILocation(line: 314, column: 11, scope: !1447)
!1449 = !DILocation(line: 314, column: 18, scope: !1447)
!1450 = !DILocation(line: 314, column: 22, scope: !1451)
!1451 = !DILexicalBlockFile(scope: !1447, file: !744, discriminator: 1)
!1452 = !DILocation(line: 314, column: 21, scope: !1451)
!1453 = !DILocation(line: 314, column: 27, scope: !1451)
!1454 = !DILocation(line: 314, column: 6, scope: !1451)
!1455 = !DILocation(line: 315, column: 3, scope: !1447)
!1456 = !DILocation(line: 315, column: 11, scope: !1447)
!1457 = !DILocation(line: 315, column: 24, scope: !1447)
!1458 = !DILocation(line: 317, column: 35, scope: !1447)
!1459 = !DILocation(line: 317, column: 26, scope: !1447)
!1460 = !DILocation(line: 317, column: 3, scope: !1447)
!1461 = !DILocation(line: 317, column: 11, scope: !1447)
!1462 = !DILocation(line: 317, column: 24, scope: !1447)
!1463 = !DILocation(line: 319, column: 43, scope: !1436)
!1464 = !DILocation(line: 319, column: 51, scope: !1436)
!1465 = !DILocation(line: 319, column: 2, scope: !1436)
!1466 = !DILocation(line: 321, column: 9, scope: !1436)
!1467 = !DILocation(line: 321, column: 2, scope: !1436)
!1468 = !DILocation(line: 322, column: 1, scope: !1436)
!1469 = distinct !DISubprogram(name: "window_clear_history", scope: !744, file: !744, line: 324, type: !1405, isLocal: false, isDefinition: true, scopeLine: 325, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !751)
!1470 = !DILocalVariable(name: "window", arg: 1, scope: !1469, file: !744, line: 324, type: !309)
!1471 = !DILocation(line: 324, column: 39, scope: !1469)
!1472 = !DILocalVariable(name: "name", arg: 2, scope: !1469, file: !744, line: 324, type: !632)
!1473 = !DILocation(line: 324, column: 59, scope: !1469)
!1474 = !DILocation(line: 326, column: 43, scope: !1469)
!1475 = !DILocation(line: 326, column: 51, scope: !1469)
!1476 = !DILocation(line: 326, column: 2, scope: !1469)
!1477 = !DILocation(line: 327, column: 1, scope: !1469)
!1478 = distinct !DISubprogram(name: "window_set_level", scope: !744, file: !744, line: 329, type: !1277, isLocal: false, isDefinition: true, scopeLine: 330, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !751)
!1479 = !DILocalVariable(name: "window", arg: 1, scope: !1478, file: !744, line: 329, type: !309)
!1480 = !DILocation(line: 329, column: 35, scope: !1478)
!1481 = !DILocalVariable(name: "level", arg: 2, scope: !1478, file: !744, line: 329, type: !316)
!1482 = !DILocation(line: 329, column: 47, scope: !1478)
!1483 = !DILocation(line: 331, column: 2, scope: !1478)
!1484 = distinct !{!1484, !1483}
!1485 = !DILocation(line: 331, column: 10, scope: !1486)
!1486 = !DILexicalBlockFile(scope: !1487, file: !744, discriminator: 1)
!1487 = distinct !DILexicalBlock(scope: !1488, file: !744, line: 331, column: 10)
!1488 = distinct !DILexicalBlock(scope: !1478, file: !744, line: 331, column: 4)
!1489 = !DILocation(line: 331, column: 17, scope: !1486)
!1490 = !DILocation(line: 331, column: 5, scope: !1491)
!1491 = !DILexicalBlockFile(scope: !1492, file: !744, discriminator: 2)
!1492 = distinct !DILexicalBlock(scope: !1487, file: !744, line: 331, column: 3)
!1493 = !DILocation(line: 331, column: 14, scope: !1494)
!1494 = !DILexicalBlockFile(scope: !1495, file: !744, discriminator: 3)
!1495 = distinct !DILexicalBlock(scope: !1487, file: !744, line: 331, column: 12)
!1496 = !DILocation(line: 331, column: 101, scope: !1494)
!1497 = !DILocation(line: 331, column: 112, scope: !1498)
!1498 = !DILexicalBlockFile(scope: !1488, file: !744, discriminator: 4)
!1499 = !DILocation(line: 333, column: 18, scope: !1478)
!1500 = !DILocation(line: 333, column: 2, scope: !1478)
!1501 = !DILocation(line: 333, column: 10, scope: !1478)
!1502 = !DILocation(line: 333, column: 16, scope: !1478)
!1503 = !DILocation(line: 334, column: 48, scope: !1478)
!1504 = !DILocation(line: 334, column: 9, scope: !1478)
!1505 = !DILocation(line: 335, column: 1, scope: !1478)
!1506 = !DILocation(line: 335, column: 1, scope: !1507)
!1507 = !DILexicalBlockFile(scope: !1478, file: !744, discriminator: 1)
!1508 = distinct !DISubprogram(name: "window_set_immortal", scope: !744, file: !744, line: 337, type: !1277, isLocal: false, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !751)
!1509 = !DILocalVariable(name: "window", arg: 1, scope: !1508, file: !744, line: 337, type: !309)
!1510 = !DILocation(line: 337, column: 38, scope: !1508)
!1511 = !DILocalVariable(name: "immortal", arg: 2, scope: !1508, file: !744, line: 337, type: !316)
!1512 = !DILocation(line: 337, column: 50, scope: !1508)
!1513 = !DILocation(line: 339, column: 2, scope: !1508)
!1514 = distinct !{!1514, !1513}
!1515 = !DILocation(line: 339, column: 10, scope: !1516)
!1516 = !DILexicalBlockFile(scope: !1517, file: !744, discriminator: 1)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !744, line: 339, column: 10)
!1518 = distinct !DILexicalBlock(scope: !1508, file: !744, line: 339, column: 4)
!1519 = !DILocation(line: 339, column: 17, scope: !1516)
!1520 = !DILocation(line: 339, column: 5, scope: !1521)
!1521 = !DILexicalBlockFile(scope: !1522, file: !744, discriminator: 2)
!1522 = distinct !DILexicalBlock(scope: !1517, file: !744, line: 339, column: 3)
!1523 = !DILocation(line: 339, column: 14, scope: !1524)
!1524 = !DILexicalBlockFile(scope: !1525, file: !744, discriminator: 3)
!1525 = distinct !DILexicalBlock(scope: !1517, file: !744, line: 339, column: 12)
!1526 = !DILocation(line: 339, column: 101, scope: !1524)
!1527 = !DILocation(line: 339, column: 112, scope: !1528)
!1528 = !DILexicalBlockFile(scope: !1518, file: !744, discriminator: 4)
!1529 = !DILocation(line: 341, column: 21, scope: !1508)
!1530 = !DILocation(line: 341, column: 2, scope: !1508)
!1531 = !DILocation(line: 341, column: 10, scope: !1508)
!1532 = !DILocation(line: 341, column: 19, scope: !1508)
!1533 = !DILocation(line: 342, column: 51, scope: !1508)
!1534 = !DILocation(line: 342, column: 9, scope: !1508)
!1535 = !DILocation(line: 343, column: 1, scope: !1508)
!1536 = !DILocation(line: 343, column: 1, scope: !1537)
!1537 = !DILexicalBlockFile(scope: !1508, file: !744, discriminator: 1)
!1538 = distinct !DISubprogram(name: "window_get_active_name", scope: !744, file: !744, line: 346, type: !1539, isLocal: false, isDefinition: true, scopeLine: 347, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !751)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{!632, !309}
!1541 = !DILocalVariable(name: "window", arg: 1, scope: !1538, file: !744, line: 346, type: !309)
!1542 = !DILocation(line: 346, column: 48, scope: !1538)
!1543 = !DILocation(line: 348, column: 2, scope: !1538)
!1544 = distinct !{!1544, !1543}
!1545 = !DILocation(line: 348, column: 10, scope: !1546)
!1546 = !DILexicalBlockFile(scope: !1547, file: !744, discriminator: 1)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !744, line: 348, column: 10)
!1548 = distinct !DILexicalBlock(scope: !1538, file: !744, line: 348, column: 4)
!1549 = !DILocation(line: 348, column: 17, scope: !1546)
!1550 = !DILocation(line: 348, column: 5, scope: !1551)
!1551 = !DILexicalBlockFile(scope: !1552, file: !744, discriminator: 2)
!1552 = distinct !DILexicalBlock(scope: !1547, file: !744, line: 348, column: 3)
!1553 = !DILocation(line: 348, column: 14, scope: !1554)
!1554 = !DILexicalBlockFile(scope: !1555, file: !744, discriminator: 3)
!1555 = distinct !DILexicalBlock(scope: !1547, file: !744, line: 348, column: 12)
!1556 = !DILocation(line: 348, column: 101, scope: !1554)
!1557 = !DILocation(line: 348, column: 7, scope: !1558)
!1558 = !DILexicalBlockFile(scope: !1548, file: !744, discriminator: 4)
!1559 = !DILocation(line: 350, column: 6, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1538, file: !744, line: 350, column: 6)
!1561 = !DILocation(line: 350, column: 14, scope: !1560)
!1562 = !DILocation(line: 350, column: 21, scope: !1560)
!1563 = !DILocation(line: 350, column: 6, scope: !1538)
!1564 = !DILocation(line: 351, column: 10, scope: !1560)
!1565 = !DILocation(line: 351, column: 18, scope: !1560)
!1566 = !DILocation(line: 351, column: 26, scope: !1560)
!1567 = !DILocation(line: 351, column: 3, scope: !1560)
!1568 = !DILocation(line: 353, column: 9, scope: !1538)
!1569 = !DILocation(line: 353, column: 17, scope: !1538)
!1570 = !DILocation(line: 353, column: 2, scope: !1538)
!1571 = !DILocation(line: 354, column: 1, scope: !1538)
!1572 = distinct !DISubprogram(name: "window_find_level", scope: !744, file: !744, line: 360, type: !1573, isLocal: false, isDefinition: true, scopeLine: 361, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !751)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!309, !331, !316}
!1575 = !DILocalVariable(name: "server", arg: 1, scope: !1572, file: !744, line: 360, type: !331)
!1576 = !DILocation(line: 360, column: 37, scope: !1572)
!1577 = !DILocalVariable(name: "level", arg: 2, scope: !1572, file: !744, line: 360, type: !316)
!1578 = !DILocation(line: 360, column: 49, scope: !1572)
!1579 = !DILocalVariable(name: "tmp", scope: !1572, file: !744, line: 362, type: !323)
!1580 = !DILocation(line: 362, column: 10, scope: !1572)
!1581 = !DILocalVariable(name: "match", scope: !1572, file: !744, line: 363, type: !309)
!1582 = !DILocation(line: 363, column: 14, scope: !1572)
!1583 = !DILocation(line: 365, column: 8, scope: !1572)
!1584 = !DILocation(line: 366, column: 13, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1572, file: !744, line: 366, column: 2)
!1586 = !DILocation(line: 366, column: 11, scope: !1585)
!1587 = !DILocation(line: 366, column: 7, scope: !1585)
!1588 = !DILocation(line: 366, column: 22, scope: !1589)
!1589 = !DILexicalBlockFile(scope: !1590, file: !744, discriminator: 1)
!1590 = distinct !DILexicalBlock(scope: !1585, file: !744, line: 366, column: 2)
!1591 = !DILocation(line: 366, column: 26, scope: !1589)
!1592 = !DILocation(line: 366, column: 2, scope: !1589)
!1593 = !DILocalVariable(name: "rec", scope: !1594, file: !744, line: 367, type: !309)
!1594 = distinct !DILexicalBlock(scope: !1590, file: !744, line: 366, column: 51)
!1595 = !DILocation(line: 367, column: 15, scope: !1594)
!1596 = !DILocation(line: 367, column: 21, scope: !1594)
!1597 = !DILocation(line: 367, column: 26, scope: !1594)
!1598 = !DILocation(line: 369, column: 10, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1594, file: !744, line: 369, column: 7)
!1600 = !DILocation(line: 369, column: 16, scope: !1599)
!1601 = !DILocation(line: 369, column: 24, scope: !1599)
!1602 = !DILocation(line: 369, column: 22, scope: !1599)
!1603 = !DILocation(line: 369, column: 31, scope: !1599)
!1604 = !DILocation(line: 369, column: 35, scope: !1605)
!1605 = !DILexicalBlockFile(scope: !1599, file: !744, discriminator: 1)
!1606 = !DILocation(line: 369, column: 42, scope: !1605)
!1607 = !DILocation(line: 369, column: 6, scope: !1605)
!1608 = !DILocation(line: 369, column: 10, scope: !1609)
!1609 = !DILexicalBlockFile(scope: !1599, file: !744, discriminator: 2)
!1610 = !DILocation(line: 369, column: 16, scope: !1609)
!1611 = !DILocation(line: 369, column: 33, scope: !1609)
!1612 = !DILocation(line: 369, column: 30, scope: !1609)
!1613 = !DILocation(line: 369, column: 7, scope: !1609)
!1614 = !DILocation(line: 371, column: 8, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !744, line: 371, column: 8)
!1616 = distinct !DILexicalBlock(scope: !1599, file: !744, line: 369, column: 43)
!1617 = !DILocation(line: 371, column: 13, scope: !1615)
!1618 = !DILocation(line: 371, column: 19, scope: !1615)
!1619 = !DILocation(line: 371, column: 8, scope: !1616)
!1620 = !DILocation(line: 372, column: 12, scope: !1615)
!1621 = !DILocation(line: 372, column: 5, scope: !1615)
!1622 = !DILocation(line: 374, column: 8, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1616, file: !744, line: 374, column: 8)
!1624 = !DILocation(line: 374, column: 14, scope: !1623)
!1625 = !DILocation(line: 374, column: 8, scope: !1616)
!1626 = !DILocation(line: 375, column: 13, scope: !1623)
!1627 = !DILocation(line: 375, column: 11, scope: !1623)
!1628 = !DILocation(line: 375, column: 5, scope: !1623)
!1629 = !DILocation(line: 376, column: 13, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1623, file: !744, line: 376, column: 13)
!1631 = !DILocation(line: 376, column: 27, scope: !1630)
!1632 = !DILocation(line: 376, column: 24, scope: !1630)
!1633 = !DILocation(line: 376, column: 13, scope: !1623)
!1634 = !DILocation(line: 378, column: 13, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1630, file: !744, line: 376, column: 32)
!1636 = !DILocation(line: 378, column: 11, scope: !1635)
!1637 = !DILocation(line: 379, column: 4, scope: !1635)
!1638 = !DILocation(line: 380, column: 3, scope: !1616)
!1639 = !DILocation(line: 381, column: 2, scope: !1594)
!1640 = !DILocation(line: 366, column: 40, scope: !1641)
!1641 = !DILexicalBlockFile(scope: !1590, file: !744, discriminator: 2)
!1642 = !DILocation(line: 366, column: 45, scope: !1641)
!1643 = !DILocation(line: 366, column: 38, scope: !1641)
!1644 = !DILocation(line: 366, column: 2, scope: !1641)
!1645 = distinct !{!1645, !1646}
!1646 = !DILocation(line: 366, column: 2, scope: !1572)
!1647 = !DILocation(line: 383, column: 9, scope: !1572)
!1648 = !DILocation(line: 383, column: 2, scope: !1572)
!1649 = !DILocation(line: 384, column: 1, scope: !1572)
!1650 = distinct !DISubprogram(name: "window_find_closest", scope: !744, file: !744, line: 386, type: !1651, isLocal: false, isDefinition: true, scopeLine: 387, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !751)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!309, !331, !632, !316}
!1653 = !DILocalVariable(name: "server", arg: 1, scope: !1650, file: !744, line: 386, type: !331)
!1654 = !DILocation(line: 386, column: 39, scope: !1650)
!1655 = !DILocalVariable(name: "name", arg: 2, scope: !1650, file: !744, line: 386, type: !632)
!1656 = !DILocation(line: 386, column: 59, scope: !1650)
!1657 = !DILocalVariable(name: "level", arg: 3, scope: !1650, file: !744, line: 386, type: !316)
!1658 = !DILocation(line: 386, column: 69, scope: !1650)
!1659 = !DILocalVariable(name: "window", scope: !1650, file: !744, line: 388, type: !309)
!1660 = !DILocation(line: 388, column: 14, scope: !1650)
!1661 = !DILocalVariable(name: "namewindow", scope: !1650, file: !744, line: 388, type: !309)
!1662 = !DILocation(line: 388, column: 22, scope: !1650)
!1663 = !DILocalVariable(name: "item", scope: !1650, file: !744, line: 389, type: !334)
!1664 = !DILocation(line: 389, column: 15, scope: !1650)
!1665 = !DILocalVariable(name: "i", scope: !1650, file: !744, line: 390, type: !316)
!1666 = !DILocation(line: 390, column: 6, scope: !1650)
!1667 = !DILocation(line: 393, column: 9, scope: !1650)
!1668 = !DILocation(line: 393, column: 14, scope: !1650)
!1669 = !DILocation(line: 393, column: 9, scope: !1670)
!1670 = !DILexicalBlockFile(scope: !1650, file: !744, discriminator: 1)
!1671 = !DILocation(line: 394, column: 20, scope: !1650)
!1672 = !DILocation(line: 394, column: 28, scope: !1650)
!1673 = !DILocation(line: 394, column: 3, scope: !1650)
!1674 = !DILocation(line: 393, column: 9, scope: !1675)
!1675 = !DILexicalBlockFile(scope: !1650, file: !744, discriminator: 2)
!1676 = !DILocation(line: 393, column: 9, scope: !1677)
!1677 = !DILexicalBlockFile(scope: !1650, file: !744, discriminator: 3)
!1678 = !DILocation(line: 393, column: 7, scope: !1677)
!1679 = !DILocation(line: 395, column: 6, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1650, file: !744, line: 395, column: 6)
!1681 = !DILocation(line: 395, column: 11, scope: !1680)
!1682 = !DILocation(line: 395, column: 6, scope: !1650)
!1683 = !DILocation(line: 396, column: 50, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1680, file: !744, line: 395, column: 19)
!1685 = !DILocation(line: 396, column: 58, scope: !1684)
!1686 = !DILocation(line: 396, column: 17, scope: !1684)
!1687 = !DILocation(line: 396, column: 14, scope: !1684)
!1688 = !DILocation(line: 397, column: 7, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1684, file: !744, line: 397, column: 7)
!1690 = !DILocation(line: 397, column: 18, scope: !1689)
!1691 = !DILocation(line: 397, column: 25, scope: !1689)
!1692 = !DILocation(line: 398, column: 9, scope: !1689)
!1693 = !DILocation(line: 398, column: 21, scope: !1689)
!1694 = !DILocation(line: 398, column: 29, scope: !1689)
!1695 = !DILocation(line: 398, column: 27, scope: !1689)
!1696 = !DILocation(line: 398, column: 36, scope: !1689)
!1697 = !DILocation(line: 398, column: 41, scope: !1689)
!1698 = !DILocation(line: 399, column: 9, scope: !1689)
!1699 = !DILocation(line: 397, column: 7, scope: !1700)
!1700 = !DILexicalBlockFile(scope: !1684, file: !744, discriminator: 1)
!1701 = !DILocation(line: 406, column: 27, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1703, file: !744, line: 406, column: 8)
!1703 = distinct !DILexicalBlock(scope: !1689, file: !744, line: 399, column: 57)
!1704 = !DILocation(line: 406, column: 33, scope: !1702)
!1705 = !DILocation(line: 406, column: 39, scope: !1702)
!1706 = !DILocation(line: 406, column: 8, scope: !1702)
!1707 = !DILocation(line: 406, column: 53, scope: !1702)
!1708 = !DILocation(line: 406, column: 58, scope: !1702)
!1709 = !DILocation(line: 407, column: 27, scope: !1702)
!1710 = !DILocation(line: 407, column: 60, scope: !1702)
!1711 = !DILocation(line: 407, column: 67, scope: !1702)
!1712 = !DILocation(line: 407, column: 94, scope: !1702)
!1713 = !DILocation(line: 407, column: 43, scope: !1702)
!1714 = !DILocation(line: 407, column: 8, scope: !1715)
!1715 = !DILexicalBlockFile(scope: !1702, file: !744, discriminator: 1)
!1716 = !DILocation(line: 407, column: 102, scope: !1702)
!1717 = !DILocation(line: 406, column: 8, scope: !1718)
!1718 = !DILexicalBlockFile(scope: !1703, file: !744, discriminator: 1)
!1719 = !DILocation(line: 408, column: 12, scope: !1702)
!1720 = !DILocation(line: 408, column: 5, scope: !1702)
!1721 = !DILocation(line: 409, column: 3, scope: !1703)
!1722 = !DILocation(line: 410, column: 2, scope: !1684)
!1723 = !DILocation(line: 413, column: 9, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1650, file: !744, line: 413, column: 2)
!1725 = !DILocation(line: 413, column: 7, scope: !1724)
!1726 = !DILocation(line: 413, column: 14, scope: !1727)
!1727 = !DILexicalBlockFile(scope: !1728, file: !744, discriminator: 1)
!1728 = distinct !DILexicalBlock(scope: !1724, file: !744, line: 413, column: 2)
!1729 = !DILocation(line: 413, column: 16, scope: !1727)
!1730 = !DILocation(line: 413, column: 2, scope: !1727)
!1731 = !DILocation(line: 415, column: 7, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1733, file: !744, line: 415, column: 7)
!1733 = distinct !DILexicalBlock(scope: !1728, file: !744, line: 413, column: 26)
!1734 = !DILocation(line: 415, column: 13, scope: !1732)
!1735 = !DILocation(line: 415, column: 7, scope: !1733)
!1736 = !DILocation(line: 416, column: 10, scope: !1732)
!1737 = !DILocation(line: 416, column: 4, scope: !1732)
!1738 = !DILocation(line: 417, column: 30, scope: !1733)
!1739 = !DILocation(line: 417, column: 38, scope: !1733)
!1740 = !DILocation(line: 417, column: 12, scope: !1733)
!1741 = !DILocation(line: 417, column: 10, scope: !1733)
!1742 = !DILocation(line: 418, column: 7, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1733, file: !744, line: 418, column: 7)
!1744 = !DILocation(line: 418, column: 14, scope: !1743)
!1745 = !DILocation(line: 418, column: 21, scope: !1743)
!1746 = !DILocation(line: 418, column: 25, scope: !1747)
!1747 = !DILexicalBlockFile(scope: !1743, file: !744, discriminator: 1)
!1748 = !DILocation(line: 418, column: 27, scope: !1747)
!1749 = !DILocation(line: 418, column: 32, scope: !1747)
!1750 = !DILocation(line: 418, column: 35, scope: !1751)
!1751 = !DILexicalBlockFile(scope: !1743, file: !744, discriminator: 2)
!1752 = !DILocation(line: 418, column: 43, scope: !1751)
!1753 = !DILocation(line: 418, column: 49, scope: !1751)
!1754 = !DILocation(line: 418, column: 7, scope: !1751)
!1755 = !DILocation(line: 419, column: 11, scope: !1743)
!1756 = !DILocation(line: 419, column: 4, scope: !1743)
!1757 = !DILocation(line: 422, column: 35, scope: !1733)
!1758 = !DILocation(line: 422, column: 12, scope: !1733)
!1759 = !DILocation(line: 422, column: 10, scope: !1733)
!1760 = !DILocation(line: 423, column: 7, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1733, file: !744, line: 423, column: 7)
!1762 = !DILocation(line: 423, column: 14, scope: !1761)
!1763 = !DILocation(line: 423, column: 21, scope: !1761)
!1764 = !DILocation(line: 423, column: 25, scope: !1765)
!1765 = !DILexicalBlockFile(scope: !1761, file: !744, discriminator: 1)
!1766 = !DILocation(line: 423, column: 27, scope: !1765)
!1767 = !DILocation(line: 423, column: 32, scope: !1765)
!1768 = !DILocation(line: 423, column: 35, scope: !1769)
!1769 = !DILexicalBlockFile(scope: !1761, file: !744, discriminator: 2)
!1770 = !DILocation(line: 423, column: 43, scope: !1769)
!1771 = !DILocation(line: 423, column: 49, scope: !1769)
!1772 = !DILocation(line: 423, column: 7, scope: !1769)
!1773 = !DILocation(line: 424, column: 11, scope: !1761)
!1774 = !DILocation(line: 424, column: 4, scope: !1761)
!1775 = !DILocation(line: 425, column: 2, scope: !1733)
!1776 = !DILocation(line: 413, column: 22, scope: !1777)
!1777 = !DILexicalBlockFile(scope: !1728, file: !744, discriminator: 2)
!1778 = !DILocation(line: 413, column: 2, scope: !1777)
!1779 = distinct !{!1779, !1780}
!1780 = !DILocation(line: 413, column: 2, scope: !1650)
!1781 = !DILocation(line: 428, column: 6, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1650, file: !744, line: 428, column: 6)
!1783 = !DILocation(line: 428, column: 17, scope: !1782)
!1784 = !DILocation(line: 428, column: 6, scope: !1650)
!1785 = !DILocation(line: 428, column: 32, scope: !1786)
!1786 = !DILexicalBlockFile(scope: !1782, file: !744, discriminator: 1)
!1787 = !DILocation(line: 428, column: 25, scope: !1786)
!1788 = !DILocation(line: 431, column: 9, scope: !1650)
!1789 = !DILocation(line: 431, column: 2, scope: !1650)
!1790 = !DILocation(line: 432, column: 1, scope: !1650)
!1791 = distinct !DISubprogram(name: "window_find_refnum", scope: !744, file: !744, line: 434, type: !1792, isLocal: false, isDefinition: true, scopeLine: 435, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !751)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{!309, !316}
!1794 = !DILocalVariable(name: "refnum", arg: 1, scope: !1791, file: !744, line: 434, type: !316)
!1795 = !DILocation(line: 434, column: 36, scope: !1791)
!1796 = !DILocalVariable(name: "iter", scope: !1791, file: !744, line: 436, type: !842)
!1797 = !DILocation(line: 436, column: 17, scope: !1791)
!1798 = !DILocation(line: 438, column: 35, scope: !1791)
!1799 = !DILocation(line: 438, column: 9, scope: !1791)
!1800 = !DILocation(line: 438, column: 7, scope: !1791)
!1801 = !DILocation(line: 439, column: 6, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1791, file: !744, line: 439, column: 6)
!1803 = !DILocation(line: 439, column: 11, scope: !1802)
!1804 = !DILocation(line: 439, column: 6, scope: !1791)
!1805 = !DILocalVariable(name: "rec", scope: !1806, file: !744, line: 440, type: !309)
!1806 = distinct !DILexicalBlock(scope: !1802, file: !744, line: 439, column: 19)
!1807 = !DILocation(line: 440, column: 15, scope: !1806)
!1808 = !DILocation(line: 440, column: 36, scope: !1806)
!1809 = !DILocation(line: 440, column: 21, scope: !1806)
!1810 = !DILocation(line: 442, column: 10, scope: !1806)
!1811 = !DILocation(line: 442, column: 3, scope: !1806)
!1812 = !DILocation(line: 445, column: 2, scope: !1791)
!1813 = !DILocation(line: 446, column: 1, scope: !1791)
!1814 = distinct !DISubprogram(name: "window_find_name", scope: !744, file: !744, line: 448, type: !1815, isLocal: false, isDefinition: true, scopeLine: 449, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !751)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{!309, !632}
!1817 = !DILocalVariable(name: "name", arg: 1, scope: !1814, file: !744, line: 448, type: !632)
!1818 = !DILocation(line: 448, column: 42, scope: !1814)
!1819 = !DILocalVariable(name: "tmp", scope: !1814, file: !744, line: 450, type: !323)
!1820 = !DILocation(line: 450, column: 10, scope: !1814)
!1821 = !DILocation(line: 452, column: 2, scope: !1814)
!1822 = distinct !{!1822, !1821}
!1823 = !DILocation(line: 452, column: 10, scope: !1824)
!1824 = !DILexicalBlockFile(scope: !1825, file: !744, discriminator: 1)
!1825 = distinct !DILexicalBlock(scope: !1826, file: !744, line: 452, column: 10)
!1826 = distinct !DILexicalBlock(scope: !1814, file: !744, line: 452, column: 4)
!1827 = !DILocation(line: 452, column: 15, scope: !1824)
!1828 = !DILocation(line: 452, column: 5, scope: !1829)
!1829 = !DILexicalBlockFile(scope: !1830, file: !744, discriminator: 2)
!1830 = distinct !DILexicalBlock(scope: !1825, file: !744, line: 452, column: 3)
!1831 = !DILocation(line: 452, column: 14, scope: !1832)
!1832 = !DILexicalBlockFile(scope: !1833, file: !744, discriminator: 3)
!1833 = distinct !DILexicalBlock(scope: !1825, file: !744, line: 452, column: 12)
!1834 = !DILocation(line: 452, column: 99, scope: !1832)
!1835 = !DILocation(line: 452, column: 7, scope: !1836)
!1836 = !DILexicalBlockFile(scope: !1826, file: !744, discriminator: 4)
!1837 = !DILocation(line: 454, column: 13, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1814, file: !744, line: 454, column: 2)
!1839 = !DILocation(line: 454, column: 11, scope: !1838)
!1840 = !DILocation(line: 454, column: 7, scope: !1838)
!1841 = !DILocation(line: 454, column: 22, scope: !1842)
!1842 = !DILexicalBlockFile(scope: !1843, file: !744, discriminator: 1)
!1843 = distinct !DILexicalBlock(scope: !1838, file: !744, line: 454, column: 2)
!1844 = !DILocation(line: 454, column: 26, scope: !1842)
!1845 = !DILocation(line: 454, column: 2, scope: !1842)
!1846 = !DILocalVariable(name: "rec", scope: !1847, file: !744, line: 455, type: !309)
!1847 = distinct !DILexicalBlock(scope: !1843, file: !744, line: 454, column: 51)
!1848 = !DILocation(line: 455, column: 15, scope: !1847)
!1849 = !DILocation(line: 455, column: 21, scope: !1847)
!1850 = !DILocation(line: 455, column: 26, scope: !1847)
!1851 = !DILocation(line: 457, column: 7, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1847, file: !744, line: 457, column: 7)
!1853 = !DILocation(line: 457, column: 12, scope: !1852)
!1854 = !DILocation(line: 457, column: 17, scope: !1852)
!1855 = !DILocation(line: 457, column: 24, scope: !1852)
!1856 = !DILocation(line: 458, column: 26, scope: !1852)
!1857 = !DILocation(line: 458, column: 31, scope: !1852)
!1858 = !DILocation(line: 458, column: 37, scope: !1852)
!1859 = !DILocation(line: 458, column: 7, scope: !1852)
!1860 = !DILocation(line: 458, column: 43, scope: !1852)
!1861 = !DILocation(line: 457, column: 7, scope: !1862)
!1862 = !DILexicalBlockFile(scope: !1847, file: !744, discriminator: 1)
!1863 = !DILocation(line: 459, column: 11, scope: !1852)
!1864 = !DILocation(line: 459, column: 4, scope: !1852)
!1865 = !DILocation(line: 460, column: 2, scope: !1847)
!1866 = !DILocation(line: 454, column: 40, scope: !1867)
!1867 = !DILexicalBlockFile(scope: !1843, file: !744, discriminator: 2)
!1868 = !DILocation(line: 454, column: 45, scope: !1867)
!1869 = !DILocation(line: 454, column: 38, scope: !1867)
!1870 = !DILocation(line: 454, column: 2, scope: !1867)
!1871 = distinct !{!1871, !1872}
!1872 = !DILocation(line: 454, column: 2, scope: !1814)
!1873 = !DILocation(line: 462, column: 2, scope: !1814)
!1874 = !DILocation(line: 463, column: 1, scope: !1814)
!1875 = distinct !DISubprogram(name: "window_find_item", scope: !744, file: !744, line: 465, type: !1876, isLocal: false, isDefinition: true, scopeLine: 466, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !751)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{!309, !349, !632}
!1878 = !DILocalVariable(name: "server", arg: 1, scope: !1875, file: !744, line: 465, type: !349)
!1879 = !DILocation(line: 465, column: 42, scope: !1875)
!1880 = !DILocalVariable(name: "name", arg: 2, scope: !1875, file: !744, line: 465, type: !632)
!1881 = !DILocation(line: 465, column: 62, scope: !1875)
!1882 = !DILocalVariable(name: "rec", scope: !1875, file: !744, line: 467, type: !309)
!1883 = !DILocation(line: 467, column: 14, scope: !1875)
!1884 = !DILocalVariable(name: "item", scope: !1875, file: !744, line: 468, type: !334)
!1885 = !DILocation(line: 468, column: 15, scope: !1875)
!1886 = !DILocation(line: 470, column: 2, scope: !1875)
!1887 = distinct !{!1887, !1886}
!1888 = !DILocation(line: 470, column: 10, scope: !1889)
!1889 = !DILexicalBlockFile(scope: !1890, file: !744, discriminator: 1)
!1890 = distinct !DILexicalBlock(scope: !1891, file: !744, line: 470, column: 10)
!1891 = distinct !DILexicalBlock(scope: !1875, file: !744, line: 470, column: 4)
!1892 = !DILocation(line: 470, column: 15, scope: !1889)
!1893 = !DILocation(line: 470, column: 5, scope: !1894)
!1894 = !DILexicalBlockFile(scope: !1895, file: !744, discriminator: 2)
!1895 = distinct !DILexicalBlock(scope: !1890, file: !744, line: 470, column: 3)
!1896 = !DILocation(line: 470, column: 14, scope: !1897)
!1897 = !DILexicalBlockFile(scope: !1898, file: !744, discriminator: 3)
!1898 = distinct !DILexicalBlock(scope: !1890, file: !744, line: 470, column: 12)
!1899 = !DILocation(line: 470, column: 99, scope: !1897)
!1900 = !DILocation(line: 470, column: 7, scope: !1901)
!1901 = !DILexicalBlockFile(scope: !1891, file: !744, discriminator: 4)
!1902 = !DILocation(line: 472, column: 25, scope: !1875)
!1903 = !DILocation(line: 472, column: 8, scope: !1875)
!1904 = !DILocation(line: 472, column: 6, scope: !1875)
!1905 = !DILocation(line: 473, column: 6, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1875, file: !744, line: 473, column: 6)
!1907 = !DILocation(line: 473, column: 10, scope: !1906)
!1908 = !DILocation(line: 473, column: 6, scope: !1875)
!1909 = !DILocation(line: 473, column: 25, scope: !1910)
!1910 = !DILexicalBlockFile(scope: !1906, file: !744, discriminator: 1)
!1911 = !DILocation(line: 473, column: 18, scope: !1910)
!1912 = !DILocation(line: 475, column: 9, scope: !1875)
!1913 = !DILocation(line: 475, column: 16, scope: !1875)
!1914 = !DILocation(line: 475, column: 9, scope: !1915)
!1915 = !DILexicalBlockFile(scope: !1875, file: !744, discriminator: 1)
!1916 = !DILocation(line: 476, column: 20, scope: !1875)
!1917 = !DILocation(line: 476, column: 28, scope: !1875)
!1918 = !DILocation(line: 476, column: 3, scope: !1875)
!1919 = !DILocation(line: 475, column: 9, scope: !1920)
!1920 = !DILexicalBlockFile(scope: !1875, file: !744, discriminator: 2)
!1921 = !DILocation(line: 475, column: 9, scope: !1922)
!1922 = !DILexicalBlockFile(scope: !1875, file: !744, discriminator: 3)
!1923 = !DILocation(line: 475, column: 7, scope: !1922)
!1924 = !DILocation(line: 477, column: 6, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1875, file: !744, line: 477, column: 6)
!1926 = !DILocation(line: 477, column: 11, scope: !1925)
!1927 = !DILocation(line: 477, column: 6, scope: !1875)
!1928 = !DILocation(line: 479, column: 32, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1925, file: !744, line: 477, column: 19)
!1930 = !DILocation(line: 479, column: 10, scope: !1929)
!1931 = !DILocation(line: 479, column: 8, scope: !1929)
!1932 = !DILocation(line: 480, column: 2, scope: !1929)
!1933 = !DILocation(line: 482, column: 6, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1875, file: !744, line: 482, column: 6)
!1935 = !DILocation(line: 482, column: 11, scope: !1934)
!1936 = !DILocation(line: 482, column: 6, scope: !1875)
!1937 = !DILocation(line: 483, column: 3, scope: !1934)
!1938 = !DILocation(line: 485, column: 43, scope: !1875)
!1939 = !DILocation(line: 485, column: 51, scope: !1875)
!1940 = !DILocation(line: 485, column: 10, scope: !1875)
!1941 = !DILocation(line: 485, column: 2, scope: !1875)
!1942 = !DILocation(line: 486, column: 1, scope: !1875)
!1943 = distinct !DISubprogram(name: "window_refnum_prev", scope: !744, file: !744, line: 488, type: !1944, isLocal: false, isDefinition: true, scopeLine: 489, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !751)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!316, !316, !316}
!1946 = !DILocalVariable(name: "refnum", arg: 1, scope: !1943, file: !744, line: 488, type: !316)
!1947 = !DILocation(line: 488, column: 28, scope: !1943)
!1948 = !DILocalVariable(name: "wrap", arg: 2, scope: !1943, file: !744, line: 488, type: !316)
!1949 = !DILocation(line: 488, column: 40, scope: !1943)
!1950 = !DILocalVariable(name: "rec", scope: !1943, file: !744, line: 490, type: !309)
!1951 = !DILocation(line: 490, column: 14, scope: !1943)
!1952 = !DILocalVariable(name: "iter", scope: !1943, file: !744, line: 491, type: !842)
!1953 = !DILocation(line: 491, column: 17, scope: !1943)
!1954 = !DILocalVariable(name: "end", scope: !1943, file: !744, line: 491, type: !842)
!1955 = !DILocation(line: 491, column: 24, scope: !1943)
!1956 = !DILocation(line: 493, column: 40, scope: !1943)
!1957 = !DILocation(line: 493, column: 9, scope: !1943)
!1958 = !DILocation(line: 493, column: 7, scope: !1943)
!1959 = !DILocation(line: 494, column: 8, scope: !1943)
!1960 = !DILocation(line: 494, column: 6, scope: !1943)
!1961 = !DILocation(line: 496, column: 6, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1943, file: !744, line: 496, column: 6)
!1963 = !DILocation(line: 496, column: 11, scope: !1962)
!1964 = !DILocation(line: 496, column: 6, scope: !1943)
!1965 = !DILocation(line: 497, column: 24, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1962, file: !744, line: 496, column: 19)
!1967 = !DILocation(line: 497, column: 9, scope: !1966)
!1968 = !DILocation(line: 497, column: 7, scope: !1966)
!1969 = !DILocation(line: 498, column: 10, scope: !1966)
!1970 = !DILocation(line: 498, column: 15, scope: !1966)
!1971 = !DILocation(line: 498, column: 3, scope: !1966)
!1972 = !DILocation(line: 501, column: 6, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1943, file: !744, line: 501, column: 6)
!1974 = !DILocation(line: 501, column: 6, scope: !1943)
!1975 = !DILocation(line: 502, column: 31, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1973, file: !744, line: 501, column: 12)
!1977 = !DILocation(line: 502, column: 10, scope: !1976)
!1978 = !DILocation(line: 502, column: 8, scope: !1976)
!1979 = !DILocation(line: 503, column: 7, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1976, file: !744, line: 503, column: 7)
!1981 = !DILocation(line: 503, column: 15, scope: !1980)
!1982 = !DILocation(line: 503, column: 12, scope: !1980)
!1983 = !DILocation(line: 503, column: 7, scope: !1976)
!1984 = !DILocation(line: 504, column: 25, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1980, file: !744, line: 503, column: 20)
!1986 = !DILocation(line: 504, column: 10, scope: !1985)
!1987 = !DILocation(line: 504, column: 8, scope: !1985)
!1988 = !DILocation(line: 505, column: 11, scope: !1985)
!1989 = !DILocation(line: 505, column: 16, scope: !1985)
!1990 = !DILocation(line: 505, column: 4, scope: !1985)
!1991 = !DILocation(line: 507, column: 2, scope: !1976)
!1992 = !DILocation(line: 509, column: 2, scope: !1943)
!1993 = !DILocation(line: 510, column: 1, scope: !1943)
!1994 = distinct !DISubprogram(name: "windows_seq_refnum_search_left", scope: !744, file: !744, line: 91, type: !1386, isLocal: true, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !751)
!1995 = !DILocalVariable(name: "refnum", arg: 1, scope: !1994, file: !744, line: 91, type: !316)
!1996 = !DILocation(line: 91, column: 58, scope: !1994)
!1997 = !DILocalVariable(name: "iter", scope: !1994, file: !744, line: 93, type: !842)
!1998 = !DILocation(line: 93, column: 17, scope: !1994)
!1999 = !DILocation(line: 93, column: 56, scope: !1994)
!2000 = !DILocation(line: 93, column: 63, scope: !1994)
!2001 = !DILocation(line: 93, column: 24, scope: !1994)
!2002 = !DILocation(line: 94, column: 9, scope: !1994)
!2003 = !DILocation(line: 94, column: 17, scope: !1994)
!2004 = !DILocation(line: 94, column: 14, scope: !1994)
!2005 = !DILocation(line: 94, column: 9, scope: !2006)
!2006 = !DILexicalBlockFile(scope: !1994, file: !744, discriminator: 1)
!2007 = !DILocation(line: 94, column: 66, scope: !2008)
!2008 = !DILexicalBlockFile(scope: !1994, file: !744, discriminator: 2)
!2009 = !DILocation(line: 94, column: 45, scope: !2008)
!2010 = !DILocation(line: 94, column: 9, scope: !2008)
!2011 = !DILocation(line: 94, column: 9, scope: !2012)
!2012 = !DILexicalBlockFile(scope: !1994, file: !744, discriminator: 3)
!2013 = !DILocation(line: 94, column: 2, scope: !2012)
!2014 = distinct !DISubprogram(name: "windows_seq_end", scope: !744, file: !744, line: 56, type: !2015, isLocal: true, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !751)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!842}
!2017 = !DILocation(line: 58, column: 33, scope: !2014)
!2018 = !DILocation(line: 58, column: 9, scope: !2014)
!2019 = !DILocation(line: 58, column: 2, scope: !2014)
!2020 = distinct !DISubprogram(name: "window_refnum_next", scope: !744, file: !744, line: 512, type: !1944, isLocal: false, isDefinition: true, scopeLine: 513, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !751)
!2021 = !DILocalVariable(name: "refnum", arg: 1, scope: !2020, file: !744, line: 512, type: !316)
!2022 = !DILocation(line: 512, column: 28, scope: !2020)
!2023 = !DILocalVariable(name: "wrap", arg: 2, scope: !2020, file: !744, line: 512, type: !316)
!2024 = !DILocation(line: 512, column: 40, scope: !2020)
!2025 = !DILocalVariable(name: "rec", scope: !2020, file: !744, line: 514, type: !309)
!2026 = !DILocation(line: 514, column: 14, scope: !2020)
!2027 = !DILocalVariable(name: "iter", scope: !2020, file: !744, line: 515, type: !842)
!2028 = !DILocation(line: 515, column: 17, scope: !2020)
!2029 = !DILocalVariable(name: "end", scope: !2020, file: !744, line: 515, type: !842)
!2030 = !DILocation(line: 515, column: 24, scope: !2020)
!2031 = !DILocation(line: 517, column: 41, scope: !2020)
!2032 = !DILocation(line: 517, column: 9, scope: !2020)
!2033 = !DILocation(line: 517, column: 7, scope: !2020)
!2034 = !DILocation(line: 518, column: 8, scope: !2020)
!2035 = !DILocation(line: 518, column: 6, scope: !2020)
!2036 = !DILocation(line: 520, column: 6, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2020, file: !744, line: 520, column: 6)
!2038 = !DILocation(line: 520, column: 14, scope: !2037)
!2039 = !DILocation(line: 520, column: 11, scope: !2037)
!2040 = !DILocation(line: 520, column: 6, scope: !2020)
!2041 = !DILocation(line: 521, column: 24, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2037, file: !744, line: 520, column: 19)
!2043 = !DILocation(line: 521, column: 9, scope: !2042)
!2044 = !DILocation(line: 521, column: 7, scope: !2042)
!2045 = !DILocation(line: 522, column: 10, scope: !2042)
!2046 = !DILocation(line: 522, column: 15, scope: !2042)
!2047 = !DILocation(line: 522, column: 3, scope: !2042)
!2048 = !DILocation(line: 525, column: 6, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2020, file: !744, line: 525, column: 6)
!2050 = !DILocation(line: 525, column: 6, scope: !2020)
!2051 = !DILocation(line: 526, column: 10, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2049, file: !744, line: 525, column: 12)
!2053 = !DILocation(line: 526, column: 8, scope: !2052)
!2054 = !DILocation(line: 527, column: 7, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2052, file: !744, line: 527, column: 7)
!2056 = !DILocation(line: 527, column: 15, scope: !2055)
!2057 = !DILocation(line: 527, column: 12, scope: !2055)
!2058 = !DILocation(line: 527, column: 7, scope: !2052)
!2059 = !DILocation(line: 528, column: 25, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2055, file: !744, line: 527, column: 20)
!2061 = !DILocation(line: 528, column: 10, scope: !2060)
!2062 = !DILocation(line: 528, column: 8, scope: !2060)
!2063 = !DILocation(line: 529, column: 11, scope: !2060)
!2064 = !DILocation(line: 529, column: 16, scope: !2060)
!2065 = !DILocation(line: 529, column: 4, scope: !2060)
!2066 = !DILocation(line: 531, column: 2, scope: !2052)
!2067 = !DILocation(line: 533, column: 2, scope: !2020)
!2068 = !DILocation(line: 534, column: 1, scope: !2020)
!2069 = distinct !DISubprogram(name: "windows_seq_refnum_search_right", scope: !744, file: !744, line: 82, type: !1386, isLocal: true, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !751)
!2070 = !DILocalVariable(name: "refnum", arg: 1, scope: !2069, file: !744, line: 82, type: !316)
!2071 = !DILocation(line: 82, column: 59, scope: !2069)
!2072 = !DILocation(line: 84, column: 27, scope: !2069)
!2073 = !DILocation(line: 84, column: 61, scope: !2069)
!2074 = !DILocation(line: 84, column: 52, scope: !2069)
!2075 = !DILocation(line: 84, column: 41, scope: !2069)
!2076 = !DILocation(line: 84, column: 9, scope: !2069)
!2077 = !DILocation(line: 84, column: 2, scope: !2069)
!2078 = distinct !DISubprogram(name: "windows_seq_begin", scope: !744, file: !744, line: 51, type: !2015, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !751)
!2079 = !DILocation(line: 53, column: 35, scope: !2078)
!2080 = !DILocation(line: 53, column: 9, scope: !2078)
!2081 = !DILocation(line: 53, column: 2, scope: !2078)
!2082 = distinct !DISubprogram(name: "windows_refnum_last", scope: !744, file: !744, line: 536, type: !837, isLocal: false, isDefinition: true, scopeLine: 537, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !751)
!2083 = !DILocalVariable(name: "rec", scope: !2082, file: !744, line: 538, type: !309)
!2084 = !DILocation(line: 538, column: 14, scope: !2082)
!2085 = !DILocalVariable(name: "end", scope: !2082, file: !744, line: 539, type: !842)
!2086 = !DILocation(line: 539, column: 17, scope: !2082)
!2087 = !DILocalVariable(name: "iter", scope: !2082, file: !744, line: 539, type: !842)
!2088 = !DILocation(line: 539, column: 23, scope: !2082)
!2089 = !DILocation(line: 541, column: 8, scope: !2082)
!2090 = !DILocation(line: 541, column: 6, scope: !2082)
!2091 = !DILocation(line: 542, column: 30, scope: !2082)
!2092 = !DILocation(line: 542, column: 9, scope: !2082)
!2093 = !DILocation(line: 542, column: 7, scope: !2082)
!2094 = !DILocation(line: 543, column: 6, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2082, file: !744, line: 543, column: 6)
!2096 = !DILocation(line: 543, column: 14, scope: !2095)
!2097 = !DILocation(line: 543, column: 11, scope: !2095)
!2098 = !DILocation(line: 543, column: 6, scope: !2082)
!2099 = !DILocation(line: 544, column: 24, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2095, file: !744, line: 543, column: 19)
!2101 = !DILocation(line: 544, column: 9, scope: !2100)
!2102 = !DILocation(line: 544, column: 7, scope: !2100)
!2103 = !DILocation(line: 545, column: 10, scope: !2100)
!2104 = !DILocation(line: 545, column: 15, scope: !2100)
!2105 = !DILocation(line: 545, column: 3, scope: !2100)
!2106 = !DILocation(line: 548, column: 2, scope: !2082)
!2107 = !DILocation(line: 549, column: 1, scope: !2082)
!2108 = distinct !DISubprogram(name: "window_refnum_cmp", scope: !744, file: !744, line: 551, type: !2109, isLocal: false, isDefinition: true, scopeLine: 552, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !751)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!316, !309, !309}
!2111 = !DILocalVariable(name: "w1", arg: 1, scope: !2108, file: !744, line: 551, type: !309)
!2112 = !DILocation(line: 551, column: 35, scope: !2108)
!2113 = !DILocalVariable(name: "w2", arg: 2, scope: !2108, file: !744, line: 551, type: !309)
!2114 = !DILocation(line: 551, column: 51, scope: !2108)
!2115 = !DILocation(line: 553, column: 9, scope: !2108)
!2116 = !DILocation(line: 553, column: 15, scope: !2108)
!2117 = !DILocation(line: 553, column: 12, scope: !2108)
!2118 = !DILocation(line: 553, column: 9, scope: !2119)
!2119 = !DILexicalBlockFile(scope: !2108, file: !744, discriminator: 1)
!2120 = !DILocation(line: 553, column: 24, scope: !2121)
!2121 = !DILexicalBlockFile(scope: !2108, file: !744, discriminator: 2)
!2122 = !DILocation(line: 553, column: 28, scope: !2121)
!2123 = !DILocation(line: 553, column: 37, scope: !2121)
!2124 = !DILocation(line: 553, column: 41, scope: !2121)
!2125 = !DILocation(line: 553, column: 35, scope: !2121)
!2126 = !DILocation(line: 553, column: 9, scope: !2121)
!2127 = !DILocation(line: 553, column: 9, scope: !2128)
!2128 = !DILexicalBlockFile(scope: !2108, file: !744, discriminator: 3)
!2129 = !DILocation(line: 553, column: 2, scope: !2128)
!2130 = distinct !DISubprogram(name: "windows_get_sorted", scope: !744, file: !744, line: 556, type: !2131, isLocal: false, isDefinition: true, scopeLine: 557, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !751)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!323}
!2133 = !DILocalVariable(name: "iter", scope: !2130, file: !744, line: 558, type: !842)
!2134 = !DILocation(line: 558, column: 17, scope: !2130)
!2135 = !DILocalVariable(name: "begin", scope: !2130, file: !744, line: 558, type: !842)
!2136 = !DILocation(line: 558, column: 24, scope: !2130)
!2137 = !DILocalVariable(name: "sorted", scope: !2130, file: !744, line: 559, type: !323)
!2138 = !DILocation(line: 559, column: 10, scope: !2130)
!2139 = !DILocation(line: 561, column: 16, scope: !2130)
!2140 = !DILocation(line: 562, column: 9, scope: !2130)
!2141 = !DILocation(line: 562, column: 7, scope: !2130)
!2142 = !DILocation(line: 563, column: 10, scope: !2130)
!2143 = !DILocation(line: 563, column: 8, scope: !2130)
!2144 = !DILocation(line: 565, column: 2, scope: !2130)
!2145 = !DILocation(line: 565, column: 9, scope: !2146)
!2146 = !DILexicalBlockFile(scope: !2130, file: !744, discriminator: 1)
!2147 = !DILocation(line: 565, column: 17, scope: !2146)
!2148 = !DILocation(line: 565, column: 14, scope: !2146)
!2149 = !DILocation(line: 565, column: 2, scope: !2146)
!2150 = !DILocalVariable(name: "rec", scope: !2151, file: !744, line: 566, type: !309)
!2151 = distinct !DILexicalBlock(scope: !2130, file: !744, line: 565, column: 24)
!2152 = !DILocation(line: 566, column: 15, scope: !2151)
!2153 = !DILocation(line: 568, column: 31, scope: !2151)
!2154 = !DILocation(line: 568, column: 10, scope: !2151)
!2155 = !DILocation(line: 568, column: 8, scope: !2151)
!2156 = !DILocation(line: 569, column: 24, scope: !2151)
!2157 = !DILocation(line: 569, column: 9, scope: !2151)
!2158 = !DILocation(line: 569, column: 7, scope: !2151)
!2159 = !DILocation(line: 571, column: 28, scope: !2151)
!2160 = !DILocation(line: 571, column: 36, scope: !2151)
!2161 = !DILocation(line: 571, column: 12, scope: !2151)
!2162 = !DILocation(line: 571, column: 10, scope: !2151)
!2163 = !DILocation(line: 565, column: 2, scope: !2164)
!2164 = !DILexicalBlockFile(scope: !2130, file: !744, discriminator: 2)
!2165 = distinct !{!2165, !2144}
!2166 = !DILocation(line: 574, column: 16, scope: !2130)
!2167 = !DILocation(line: 574, column: 9, scope: !2130)
!2168 = distinct !DISubprogram(name: "window_bind_add", scope: !744, file: !744, line: 578, type: !2169, isLocal: false, isDefinition: true, scopeLine: 580, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !751)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!722, !309, !632, !632}
!2171 = !DILocalVariable(name: "window", arg: 1, scope: !2168, file: !744, line: 578, type: !309)
!2172 = !DILocation(line: 578, column: 46, scope: !2168)
!2173 = !DILocalVariable(name: "servertag", arg: 2, scope: !2168, file: !744, line: 578, type: !632)
!2174 = !DILocation(line: 578, column: 66, scope: !2168)
!2175 = !DILocalVariable(name: "name", arg: 3, scope: !2168, file: !744, line: 579, type: !632)
!2176 = !DILocation(line: 579, column: 18, scope: !2168)
!2177 = !DILocalVariable(name: "rec", scope: !2168, file: !744, line: 581, type: !722)
!2178 = !DILocation(line: 581, column: 19, scope: !2168)
!2179 = !DILocation(line: 583, column: 9, scope: !2168)
!2180 = distinct !{!2180, !2179}
!2181 = !DILocation(line: 583, column: 17, scope: !2182)
!2182 = !DILexicalBlockFile(scope: !2183, file: !744, discriminator: 1)
!2183 = distinct !DILexicalBlock(scope: !2184, file: !744, line: 583, column: 17)
!2184 = distinct !DILexicalBlock(scope: !2168, file: !744, line: 583, column: 11)
!2185 = !DILocation(line: 583, column: 24, scope: !2182)
!2186 = !DILocation(line: 583, column: 12, scope: !2187)
!2187 = !DILexicalBlockFile(scope: !2188, file: !744, discriminator: 2)
!2188 = distinct !DILexicalBlock(scope: !2183, file: !744, line: 583, column: 10)
!2189 = !DILocation(line: 583, column: 21, scope: !2190)
!2190 = !DILexicalBlockFile(scope: !2191, file: !744, discriminator: 3)
!2191 = distinct !DILexicalBlock(scope: !2183, file: !744, line: 583, column: 19)
!2192 = !DILocation(line: 583, column: 108, scope: !2190)
!2193 = !DILocation(line: 583, column: 14, scope: !2194)
!2194 = !DILexicalBlockFile(scope: !2184, file: !744, discriminator: 4)
!2195 = !DILocation(line: 584, column: 9, scope: !2168)
!2196 = distinct !{!2196, !2195}
!2197 = !DILocation(line: 584, column: 17, scope: !2198)
!2198 = !DILexicalBlockFile(scope: !2199, file: !744, discriminator: 1)
!2199 = distinct !DILexicalBlock(scope: !2200, file: !744, line: 584, column: 17)
!2200 = distinct !DILexicalBlock(scope: !2168, file: !744, line: 584, column: 11)
!2201 = !DILocation(line: 584, column: 27, scope: !2198)
!2202 = !DILocation(line: 584, column: 12, scope: !2203)
!2203 = !DILexicalBlockFile(scope: !2204, file: !744, discriminator: 2)
!2204 = distinct !DILexicalBlock(scope: !2199, file: !744, line: 584, column: 10)
!2205 = !DILocation(line: 584, column: 21, scope: !2206)
!2206 = !DILexicalBlockFile(scope: !2207, file: !744, discriminator: 3)
!2207 = distinct !DILexicalBlock(scope: !2199, file: !744, line: 584, column: 19)
!2208 = !DILocation(line: 584, column: 111, scope: !2206)
!2209 = !DILocation(line: 584, column: 14, scope: !2210)
!2210 = !DILexicalBlockFile(scope: !2200, file: !744, discriminator: 4)
!2211 = !DILocation(line: 585, column: 2, scope: !2168)
!2212 = distinct !{!2212, !2211}
!2213 = !DILocation(line: 585, column: 10, scope: !2214)
!2214 = !DILexicalBlockFile(scope: !2215, file: !744, discriminator: 1)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !744, line: 585, column: 10)
!2216 = distinct !DILexicalBlock(scope: !2168, file: !744, line: 585, column: 4)
!2217 = !DILocation(line: 585, column: 15, scope: !2214)
!2218 = !DILocation(line: 585, column: 5, scope: !2219)
!2219 = !DILexicalBlockFile(scope: !2220, file: !744, discriminator: 2)
!2220 = distinct !DILexicalBlock(scope: !2215, file: !744, line: 585, column: 3)
!2221 = !DILocation(line: 585, column: 14, scope: !2222)
!2222 = !DILexicalBlockFile(scope: !2223, file: !744, discriminator: 3)
!2223 = distinct !DILexicalBlock(scope: !2215, file: !744, line: 585, column: 12)
!2224 = !DILocation(line: 585, column: 99, scope: !2222)
!2225 = !DILocation(line: 585, column: 7, scope: !2226)
!2226 = !DILexicalBlockFile(scope: !2216, file: !744, discriminator: 4)
!2227 = !DILocation(line: 587, column: 25, scope: !2168)
!2228 = !DILocation(line: 587, column: 33, scope: !2168)
!2229 = !DILocation(line: 587, column: 44, scope: !2168)
!2230 = !DILocation(line: 587, column: 8, scope: !2168)
!2231 = !DILocation(line: 587, column: 6, scope: !2168)
!2232 = !DILocation(line: 588, column: 6, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2168, file: !744, line: 588, column: 6)
!2234 = !DILocation(line: 588, column: 10, scope: !2233)
!2235 = !DILocation(line: 588, column: 6, scope: !2168)
!2236 = !DILocation(line: 589, column: 10, scope: !2233)
!2237 = !DILocation(line: 589, column: 3, scope: !2233)
!2238 = !DILocation(line: 591, column: 29, scope: !2168)
!2239 = !DILocation(line: 591, column: 9, scope: !2168)
!2240 = !DILocation(line: 591, column: 6, scope: !2168)
!2241 = !DILocation(line: 592, column: 30, scope: !2168)
!2242 = !DILocation(line: 592, column: 21, scope: !2168)
!2243 = !DILocation(line: 592, column: 9, scope: !2168)
!2244 = !DILocation(line: 592, column: 14, scope: !2168)
!2245 = !DILocation(line: 592, column: 19, scope: !2168)
!2246 = !DILocation(line: 593, column: 35, scope: !2168)
!2247 = !DILocation(line: 593, column: 26, scope: !2168)
!2248 = !DILocation(line: 593, column: 9, scope: !2168)
!2249 = !DILocation(line: 593, column: 14, scope: !2168)
!2250 = !DILocation(line: 593, column: 24, scope: !2168)
!2251 = !DILocation(line: 595, column: 39, scope: !2168)
!2252 = !DILocation(line: 595, column: 47, scope: !2168)
!2253 = !DILocation(line: 595, column: 60, scope: !2168)
!2254 = !DILocation(line: 595, column: 24, scope: !2168)
!2255 = !DILocation(line: 595, column: 2, scope: !2168)
!2256 = !DILocation(line: 595, column: 10, scope: !2168)
!2257 = !DILocation(line: 595, column: 22, scope: !2168)
!2258 = !DILocation(line: 596, column: 16, scope: !2168)
!2259 = !DILocation(line: 596, column: 9, scope: !2168)
!2260 = !DILocation(line: 597, column: 1, scope: !2168)
!2261 = distinct !DISubprogram(name: "window_bind_find", scope: !744, file: !744, line: 611, type: !2169, isLocal: false, isDefinition: true, scopeLine: 613, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !751)
!2262 = !DILocalVariable(name: "window", arg: 1, scope: !2261, file: !744, line: 611, type: !309)
!2263 = !DILocation(line: 611, column: 47, scope: !2261)
!2264 = !DILocalVariable(name: "servertag", arg: 2, scope: !2261, file: !744, line: 611, type: !632)
!2265 = !DILocation(line: 611, column: 67, scope: !2261)
!2266 = !DILocalVariable(name: "name", arg: 3, scope: !2261, file: !744, line: 612, type: !632)
!2267 = !DILocation(line: 612, column: 19, scope: !2261)
!2268 = !DILocalVariable(name: "tmp", scope: !2261, file: !744, line: 614, type: !323)
!2269 = !DILocation(line: 614, column: 10, scope: !2261)
!2270 = !DILocation(line: 616, column: 9, scope: !2261)
!2271 = distinct !{!2271, !2270}
!2272 = !DILocation(line: 616, column: 17, scope: !2273)
!2273 = !DILexicalBlockFile(scope: !2274, file: !744, discriminator: 1)
!2274 = distinct !DILexicalBlock(scope: !2275, file: !744, line: 616, column: 17)
!2275 = distinct !DILexicalBlock(scope: !2261, file: !744, line: 616, column: 11)
!2276 = !DILocation(line: 616, column: 24, scope: !2273)
!2277 = !DILocation(line: 616, column: 12, scope: !2278)
!2278 = !DILexicalBlockFile(scope: !2279, file: !744, discriminator: 2)
!2279 = distinct !DILexicalBlock(scope: !2274, file: !744, line: 616, column: 10)
!2280 = !DILocation(line: 616, column: 21, scope: !2281)
!2281 = !DILexicalBlockFile(scope: !2282, file: !744, discriminator: 3)
!2282 = distinct !DILexicalBlock(scope: !2274, file: !744, line: 616, column: 19)
!2283 = !DILocation(line: 616, column: 108, scope: !2281)
!2284 = !DILocation(line: 616, column: 14, scope: !2285)
!2285 = !DILexicalBlockFile(scope: !2275, file: !744, discriminator: 4)
!2286 = !DILocation(line: 617, column: 9, scope: !2261)
!2287 = distinct !{!2287, !2286}
!2288 = !DILocation(line: 617, column: 17, scope: !2289)
!2289 = !DILexicalBlockFile(scope: !2290, file: !744, discriminator: 1)
!2290 = distinct !DILexicalBlock(scope: !2291, file: !744, line: 617, column: 17)
!2291 = distinct !DILexicalBlock(scope: !2261, file: !744, line: 617, column: 11)
!2292 = !DILocation(line: 617, column: 27, scope: !2289)
!2293 = !DILocation(line: 617, column: 12, scope: !2294)
!2294 = !DILexicalBlockFile(scope: !2295, file: !744, discriminator: 2)
!2295 = distinct !DILexicalBlock(scope: !2290, file: !744, line: 617, column: 10)
!2296 = !DILocation(line: 617, column: 21, scope: !2297)
!2297 = !DILexicalBlockFile(scope: !2298, file: !744, discriminator: 3)
!2298 = distinct !DILexicalBlock(scope: !2290, file: !744, line: 617, column: 19)
!2299 = !DILocation(line: 617, column: 111, scope: !2297)
!2300 = !DILocation(line: 617, column: 14, scope: !2301)
!2301 = !DILexicalBlockFile(scope: !2291, file: !744, discriminator: 4)
!2302 = !DILocation(line: 618, column: 9, scope: !2261)
!2303 = distinct !{!2303, !2302}
!2304 = !DILocation(line: 618, column: 17, scope: !2305)
!2305 = !DILexicalBlockFile(scope: !2306, file: !744, discriminator: 1)
!2306 = distinct !DILexicalBlock(scope: !2307, file: !744, line: 618, column: 17)
!2307 = distinct !DILexicalBlock(scope: !2261, file: !744, line: 618, column: 11)
!2308 = !DILocation(line: 618, column: 22, scope: !2305)
!2309 = !DILocation(line: 618, column: 12, scope: !2310)
!2310 = !DILexicalBlockFile(scope: !2311, file: !744, discriminator: 2)
!2311 = distinct !DILexicalBlock(scope: !2306, file: !744, line: 618, column: 10)
!2312 = !DILocation(line: 618, column: 21, scope: !2313)
!2313 = !DILexicalBlockFile(scope: !2314, file: !744, discriminator: 3)
!2314 = distinct !DILexicalBlock(scope: !2306, file: !744, line: 618, column: 19)
!2315 = !DILocation(line: 618, column: 106, scope: !2313)
!2316 = !DILocation(line: 618, column: 14, scope: !2317)
!2317 = !DILexicalBlockFile(scope: !2307, file: !744, discriminator: 4)
!2318 = !DILocation(line: 620, column: 13, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2261, file: !744, line: 620, column: 2)
!2320 = !DILocation(line: 620, column: 21, scope: !2319)
!2321 = !DILocation(line: 620, column: 11, scope: !2319)
!2322 = !DILocation(line: 620, column: 7, scope: !2319)
!2323 = !DILocation(line: 620, column: 34, scope: !2324)
!2324 = !DILexicalBlockFile(scope: !2325, file: !744, discriminator: 1)
!2325 = distinct !DILexicalBlock(scope: !2319, file: !744, line: 620, column: 2)
!2326 = !DILocation(line: 620, column: 38, scope: !2324)
!2327 = !DILocation(line: 620, column: 2, scope: !2324)
!2328 = !DILocalVariable(name: "rec", scope: !2329, file: !744, line: 621, type: !722)
!2329 = distinct !DILexicalBlock(scope: !2325, file: !744, line: 620, column: 63)
!2330 = !DILocation(line: 621, column: 20, scope: !2329)
!2331 = !DILocation(line: 621, column: 26, scope: !2329)
!2332 = !DILocation(line: 621, column: 31, scope: !2329)
!2333 = !DILocation(line: 623, column: 26, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2329, file: !744, line: 623, column: 7)
!2335 = !DILocation(line: 623, column: 31, scope: !2334)
!2336 = !DILocation(line: 623, column: 37, scope: !2334)
!2337 = !DILocation(line: 623, column: 7, scope: !2334)
!2338 = !DILocation(line: 623, column: 43, scope: !2334)
!2339 = !DILocation(line: 623, column: 48, scope: !2334)
!2340 = !DILocation(line: 624, column: 26, scope: !2334)
!2341 = !DILocation(line: 624, column: 31, scope: !2334)
!2342 = !DILocation(line: 624, column: 42, scope: !2334)
!2343 = !DILocation(line: 624, column: 7, scope: !2334)
!2344 = !DILocation(line: 624, column: 53, scope: !2334)
!2345 = !DILocation(line: 623, column: 7, scope: !2346)
!2346 = !DILexicalBlockFile(scope: !2329, file: !744, discriminator: 1)
!2347 = !DILocation(line: 625, column: 32, scope: !2334)
!2348 = !DILocation(line: 625, column: 25, scope: !2334)
!2349 = !DILocation(line: 626, column: 2, scope: !2329)
!2350 = !DILocation(line: 620, column: 52, scope: !2351)
!2351 = !DILexicalBlockFile(scope: !2325, file: !744, discriminator: 2)
!2352 = !DILocation(line: 620, column: 57, scope: !2351)
!2353 = !DILocation(line: 620, column: 50, scope: !2351)
!2354 = !DILocation(line: 620, column: 2, scope: !2351)
!2355 = distinct !{!2355, !2356}
!2356 = !DILocation(line: 620, column: 2, scope: !2261)
!2357 = !DILocation(line: 628, column: 9, scope: !2261)
!2358 = !DILocation(line: 629, column: 1, scope: !2261)
!2359 = distinct !DISubprogram(name: "window_bind_remove_unsticky", scope: !744, file: !744, line: 631, type: !893, isLocal: false, isDefinition: true, scopeLine: 632, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !751)
!2360 = !DILocalVariable(name: "window", arg: 1, scope: !2359, file: !744, line: 631, type: !309)
!2361 = !DILocation(line: 631, column: 46, scope: !2359)
!2362 = !DILocalVariable(name: "tmp", scope: !2359, file: !744, line: 633, type: !323)
!2363 = !DILocation(line: 633, column: 10, scope: !2359)
!2364 = !DILocalVariable(name: "next", scope: !2359, file: !744, line: 633, type: !323)
!2365 = !DILocation(line: 633, column: 16, scope: !2359)
!2366 = !DILocation(line: 635, column: 13, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2359, file: !744, line: 635, column: 2)
!2368 = !DILocation(line: 635, column: 21, scope: !2367)
!2369 = !DILocation(line: 635, column: 11, scope: !2367)
!2370 = !DILocation(line: 635, column: 7, scope: !2367)
!2371 = !DILocation(line: 635, column: 34, scope: !2372)
!2372 = !DILexicalBlockFile(scope: !2373, file: !744, discriminator: 1)
!2373 = distinct !DILexicalBlock(scope: !2367, file: !744, line: 635, column: 2)
!2374 = !DILocation(line: 635, column: 38, scope: !2372)
!2375 = !DILocation(line: 635, column: 2, scope: !2372)
!2376 = !DILocalVariable(name: "rec", scope: !2377, file: !744, line: 636, type: !722)
!2377 = distinct !DILexicalBlock(scope: !2373, file: !744, line: 635, column: 58)
!2378 = !DILocation(line: 636, column: 20, scope: !2377)
!2379 = !DILocation(line: 636, column: 26, scope: !2377)
!2380 = !DILocation(line: 636, column: 31, scope: !2377)
!2381 = !DILocation(line: 638, column: 10, scope: !2377)
!2382 = !DILocation(line: 638, column: 15, scope: !2377)
!2383 = !DILocation(line: 638, column: 8, scope: !2377)
!2384 = !DILocation(line: 639, column: 8, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2377, file: !744, line: 639, column: 7)
!2386 = !DILocation(line: 639, column: 13, scope: !2385)
!2387 = !DILocation(line: 639, column: 7, scope: !2377)
!2388 = !DILocation(line: 640, column: 45, scope: !2385)
!2389 = !DILocation(line: 640, column: 53, scope: !2385)
!2390 = !DILocation(line: 640, column: 25, scope: !2385)
!2391 = !DILocation(line: 641, column: 2, scope: !2377)
!2392 = !DILocation(line: 635, column: 52, scope: !2393)
!2393 = !DILexicalBlockFile(scope: !2373, file: !744, discriminator: 2)
!2394 = !DILocation(line: 635, column: 50, scope: !2393)
!2395 = !DILocation(line: 635, column: 2, scope: !2393)
!2396 = distinct !{!2396, !2397}
!2397 = !DILocation(line: 635, column: 2, scope: !2359)
!2398 = !DILocation(line: 642, column: 1, scope: !2359)
!2399 = !DILocalVariable(name: "rgb", arg: 1, scope: !743, file: !744, line: 700, type: !748)
!2400 = !DILocation(line: 700, column: 44, scope: !743)
!2401 = !DILocalVariable(name: "dist", scope: !743, file: !744, line: 708, type: !2402)
!2402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 96, align: 32, elements: !2403)
!2403 = !{!2404}
!2404 = !DISubrange(count: 3)
!2405 = !DILocation(line: 708, column: 6, scope: !743)
!2406 = !DILocalVariable(name: "r", scope: !743, file: !744, line: 709, type: !2402)
!2407 = !DILocation(line: 709, column: 6, scope: !743)
!2408 = !DILocalVariable(name: "gr", scope: !743, file: !744, line: 709, type: !2402)
!2409 = !DILocation(line: 709, column: 12, scope: !743)
!2410 = !DILocalVariable(name: "i", scope: !743, file: !744, line: 711, type: !2411)
!2411 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !2412, line: 216, baseType: !416)
!2412 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/irssi/task1")
!2413 = !DILocation(line: 711, column: 9, scope: !743)
!2414 = !DILocation(line: 713, column: 9, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !743, file: !744, line: 713, column: 2)
!2416 = !DILocation(line: 713, column: 7, scope: !2415)
!2417 = !DILocation(line: 713, column: 14, scope: !2418)
!2418 = !DILexicalBlockFile(scope: !2419, file: !744, discriminator: 1)
!2419 = distinct !DILexicalBlock(scope: !2415, file: !744, line: 713, column: 2)
!2420 = !DILocation(line: 713, column: 16, scope: !2418)
!2421 = !DILocation(line: 713, column: 2, scope: !2418)
!2422 = !DILocalVariable(name: "n", scope: !2423, file: !744, line: 714, type: !752)
!2423 = distinct !DILexicalBlock(scope: !2419, file: !744, line: 713, column: 26)
!2424 = !DILocation(line: 714, column: 13, scope: !2423)
!2425 = !DILocation(line: 714, column: 21, scope: !2423)
!2426 = !DILocation(line: 714, column: 17, scope: !2423)
!2427 = !DILocation(line: 715, column: 6, scope: !2423)
!2428 = !DILocation(line: 715, column: 3, scope: !2423)
!2429 = !DILocation(line: 715, column: 9, scope: !2423)
!2430 = !DILocation(line: 716, column: 7, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2423, file: !744, line: 716, column: 7)
!2432 = !DILocation(line: 716, column: 9, scope: !2431)
!2433 = !DILocation(line: 716, column: 7, scope: !2423)
!2434 = !DILocation(line: 717, column: 6, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2431, file: !744, line: 716, column: 27)
!2436 = !DILocation(line: 717, column: 4, scope: !2435)
!2437 = !DILocation(line: 717, column: 9, scope: !2435)
!2438 = !DILocation(line: 718, column: 9, scope: !2435)
!2439 = !DILocation(line: 718, column: 4, scope: !2435)
!2440 = !DILocation(line: 718, column: 12, scope: !2435)
!2441 = !DILocation(line: 719, column: 3, scope: !2435)
!2442 = !DILocation(line: 721, column: 15, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2431, file: !744, line: 720, column: 8)
!2444 = !DILocation(line: 721, column: 16, scope: !2443)
!2445 = !DILocation(line: 721, column: 29, scope: !2443)
!2446 = !DILocation(line: 721, column: 45, scope: !2443)
!2447 = !DILocation(line: 721, column: 12, scope: !2443)
!2448 = !DILocation(line: 721, column: 6, scope: !2443)
!2449 = !DILocation(line: 721, column: 4, scope: !2443)
!2450 = !DILocation(line: 721, column: 9, scope: !2443)
!2451 = !DILocation(line: 722, column: 16, scope: !2443)
!2452 = !DILocation(line: 722, column: 17, scope: !2443)
!2453 = !DILocation(line: 722, column: 30, scope: !2443)
!2454 = !DILocation(line: 722, column: 46, scope: !2443)
!2455 = !DILocation(line: 722, column: 58, scope: !2443)
!2456 = !DILocation(line: 722, column: 9, scope: !2443)
!2457 = !DILocation(line: 722, column: 4, scope: !2443)
!2458 = !DILocation(line: 722, column: 12, scope: !2443)
!2459 = !DILocation(line: 724, column: 7, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2423, file: !744, line: 724, column: 7)
!2461 = !DILocation(line: 724, column: 9, scope: !2460)
!2462 = !DILocation(line: 724, column: 7, scope: !2423)
!2463 = !DILocation(line: 725, column: 7, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2460, file: !744, line: 724, column: 27)
!2465 = !DILocation(line: 725, column: 4, scope: !2464)
!2466 = !DILocation(line: 725, column: 10, scope: !2464)
!2467 = !DILocation(line: 726, column: 3, scope: !2464)
!2468 = !DILocation(line: 728, column: 14, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2460, file: !744, line: 727, column: 8)
!2470 = !DILocation(line: 728, column: 15, scope: !2469)
!2471 = !DILocation(line: 728, column: 28, scope: !2469)
!2472 = !DILocation(line: 728, column: 44, scope: !2469)
!2473 = !DILocation(line: 728, column: 7, scope: !2469)
!2474 = !DILocation(line: 728, column: 4, scope: !2469)
!2475 = !DILocation(line: 728, column: 10, scope: !2469)
!2476 = !DILocation(line: 730, column: 2, scope: !2423)
!2477 = !DILocation(line: 713, column: 21, scope: !2478)
!2478 = !DILexicalBlockFile(scope: !2419, file: !744, discriminator: 2)
!2479 = !DILocation(line: 713, column: 2, scope: !2478)
!2480 = distinct !{!2480, !2481}
!2481 = !DILocation(line: 713, column: 2, scope: !743)
!2482 = !DILocation(line: 731, column: 6, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !743, file: !744, line: 731, column: 6)
!2484 = !DILocation(line: 731, column: 14, scope: !2483)
!2485 = !DILocation(line: 731, column: 11, scope: !2483)
!2486 = !DILocation(line: 731, column: 19, scope: !2483)
!2487 = !DILocation(line: 731, column: 22, scope: !2488)
!2488 = !DILexicalBlockFile(scope: !2483, file: !744, discriminator: 1)
!2489 = !DILocation(line: 731, column: 30, scope: !2488)
!2490 = !DILocation(line: 731, column: 27, scope: !2488)
!2491 = !DILocation(line: 731, column: 35, scope: !2488)
!2492 = !DILocation(line: 732, column: 12, scope: !2483)
!2493 = !DILocation(line: 732, column: 8, scope: !2483)
!2494 = !DILocation(line: 732, column: 7, scope: !2483)
!2495 = !DILocation(line: 732, column: 21, scope: !2483)
!2496 = !DILocation(line: 732, column: 34, scope: !2483)
!2497 = !DILocation(line: 732, column: 43, scope: !2488)
!2498 = !DILocation(line: 732, column: 39, scope: !2488)
!2499 = !DILocation(line: 732, column: 38, scope: !2488)
!2500 = !DILocation(line: 732, column: 52, scope: !2488)
!2501 = !DILocation(line: 732, column: 65, scope: !2488)
!2502 = !DILocation(line: 732, column: 74, scope: !2503)
!2503 = !DILexicalBlockFile(scope: !2483, file: !744, discriminator: 2)
!2504 = !DILocation(line: 732, column: 70, scope: !2503)
!2505 = !DILocation(line: 732, column: 69, scope: !2503)
!2506 = !DILocation(line: 732, column: 83, scope: !2503)
!2507 = !DILocation(line: 731, column: 6, scope: !2508)
!2508 = !DILexicalBlockFile(scope: !743, file: !744, discriminator: 2)
!2509 = !DILocation(line: 734, column: 2, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2483, file: !744, line: 732, column: 97)
!2511 = !DILocalVariable(name: "j", scope: !2512, file: !744, line: 736, type: !752)
!2512 = distinct !DILexicalBlock(scope: !2483, file: !744, line: 735, column: 7)
!2513 = !DILocation(line: 736, column: 13, scope: !2512)
!2514 = !DILocation(line: 736, column: 17, scope: !2512)
!2515 = !DILocation(line: 736, column: 25, scope: !2512)
!2516 = !DILocation(line: 736, column: 22, scope: !2512)
!2517 = !DILocation(line: 737, column: 8, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2512, file: !744, line: 737, column: 7)
!2519 = !DILocation(line: 737, column: 16, scope: !2518)
!2520 = !DILocation(line: 737, column: 13, scope: !2518)
!2521 = !DILocation(line: 737, column: 21, scope: !2518)
!2522 = !DILocation(line: 737, column: 26, scope: !2523)
!2523 = !DILexicalBlockFile(scope: !2518, file: !744, discriminator: 1)
!2524 = !DILocation(line: 737, column: 24, scope: !2523)
!2525 = !DILocation(line: 737, column: 32, scope: !2523)
!2526 = !DILocation(line: 737, column: 29, scope: !2523)
!2527 = !DILocation(line: 737, column: 38, scope: !2523)
!2528 = !DILocation(line: 737, column: 47, scope: !2529)
!2529 = !DILexicalBlockFile(scope: !2518, file: !744, discriminator: 2)
!2530 = !DILocation(line: 737, column: 45, scope: !2529)
!2531 = !DILocation(line: 737, column: 53, scope: !2529)
!2532 = !DILocation(line: 737, column: 54, scope: !2529)
!2533 = !DILocation(line: 737, column: 57, scope: !2529)
!2534 = !DILocation(line: 737, column: 50, scope: !2529)
!2535 = !DILocation(line: 737, column: 49, scope: !2529)
!2536 = !DILocation(line: 737, column: 41, scope: !2529)
!2537 = !DILocation(line: 737, column: 62, scope: !2529)
!2538 = !DILocation(line: 737, column: 7, scope: !2529)
!2539 = !DILocalVariable(name: "k", scope: !2540, file: !744, line: 738, type: !752)
!2540 = distinct !DILexicalBlock(scope: !2518, file: !744, line: 737, column: 68)
!2541 = !DILocation(line: 738, column: 14, scope: !2540)
!2542 = !DILocation(line: 738, column: 18, scope: !2540)
!2543 = !DILocation(line: 738, column: 27, scope: !2540)
!2544 = !DILocation(line: 738, column: 24, scope: !2540)
!2545 = !DILocation(line: 739, column: 9, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2540, file: !744, line: 739, column: 8)
!2547 = !DILocation(line: 739, column: 18, scope: !2546)
!2548 = !DILocation(line: 739, column: 15, scope: !2546)
!2549 = !DILocation(line: 739, column: 24, scope: !2546)
!2550 = !DILocation(line: 739, column: 30, scope: !2551)
!2551 = !DILexicalBlockFile(scope: !2546, file: !744, discriminator: 1)
!2552 = !DILocation(line: 739, column: 27, scope: !2551)
!2553 = !DILocation(line: 739, column: 36, scope: !2551)
!2554 = !DILocation(line: 739, column: 33, scope: !2551)
!2555 = !DILocation(line: 739, column: 43, scope: !2551)
!2556 = !DILocation(line: 739, column: 53, scope: !2557)
!2557 = !DILexicalBlockFile(scope: !2546, file: !744, discriminator: 2)
!2558 = !DILocation(line: 739, column: 50, scope: !2557)
!2559 = !DILocation(line: 739, column: 60, scope: !2557)
!2560 = !DILocation(line: 739, column: 61, scope: !2557)
!2561 = !DILocation(line: 739, column: 64, scope: !2557)
!2562 = !DILocation(line: 739, column: 56, scope: !2557)
!2563 = !DILocation(line: 739, column: 55, scope: !2557)
!2564 = !DILocation(line: 739, column: 46, scope: !2557)
!2565 = !DILocation(line: 739, column: 69, scope: !2557)
!2566 = !DILocation(line: 739, column: 8, scope: !2557)
!2567 = !DILocation(line: 740, column: 12, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2569, file: !744, line: 740, column: 9)
!2569 = distinct !DILexicalBlock(scope: !2546, file: !744, line: 739, column: 75)
!2570 = !DILocation(line: 740, column: 9, scope: !2568)
!2571 = !DILocation(line: 740, column: 15, scope: !2568)
!2572 = !DILocation(line: 740, column: 9, scope: !2569)
!2573 = !DILocation(line: 741, column: 20, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2568, file: !744, line: 740, column: 20)
!2575 = !DILocation(line: 741, column: 25, scope: !2574)
!2576 = !DILocation(line: 741, column: 13, scope: !2574)
!2577 = !DILocation(line: 741, column: 18, scope: !2574)
!2578 = !DILocation(line: 741, column: 6, scope: !2574)
!2579 = !DILocation(line: 741, column: 11, scope: !2574)
!2580 = !DILocation(line: 742, column: 5, scope: !2574)
!2581 = !DILocation(line: 743, column: 17, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2568, file: !744, line: 743, column: 14)
!2583 = !DILocation(line: 743, column: 14, scope: !2582)
!2584 = !DILocation(line: 743, column: 20, scope: !2582)
!2585 = !DILocation(line: 743, column: 14, scope: !2568)
!2586 = !DILocation(line: 744, column: 20, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2582, file: !744, line: 743, column: 26)
!2588 = !DILocation(line: 744, column: 25, scope: !2587)
!2589 = !DILocation(line: 744, column: 13, scope: !2587)
!2590 = !DILocation(line: 744, column: 18, scope: !2587)
!2591 = !DILocation(line: 744, column: 6, scope: !2587)
!2592 = !DILocation(line: 744, column: 11, scope: !2587)
!2593 = !DILocation(line: 745, column: 5, scope: !2587)
!2594 = !DILocation(line: 747, column: 6, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2582, file: !744, line: 746, column: 10)
!2596 = !DILocation(line: 747, column: 11, scope: !2595)
!2597 = !DILocation(line: 748, column: 17, scope: !2595)
!2598 = !DILocation(line: 748, column: 14, scope: !2595)
!2599 = !DILocation(line: 748, column: 20, scope: !2595)
!2600 = !DILocation(line: 748, column: 6, scope: !2595)
!2601 = !DILocation(line: 748, column: 11, scope: !2595)
!2602 = !DILocation(line: 749, column: 16, scope: !2595)
!2603 = !DILocation(line: 749, column: 13, scope: !2595)
!2604 = !DILocation(line: 749, column: 18, scope: !2595)
!2605 = !DILocation(line: 749, column: 6, scope: !2595)
!2606 = !DILocation(line: 749, column: 11, scope: !2595)
!2607 = !DILocation(line: 751, column: 4, scope: !2569)
!2608 = !DILocation(line: 752, column: 3, scope: !2540)
!2609 = !DILocation(line: 754, column: 14, scope: !743)
!2610 = !DILocation(line: 754, column: 18, scope: !743)
!2611 = !DILocation(line: 754, column: 12, scope: !743)
!2612 = !DILocation(line: 754, column: 24, scope: !743)
!2613 = !DILocation(line: 754, column: 29, scope: !743)
!2614 = !DILocation(line: 754, column: 22, scope: !743)
!2615 = !DILocation(line: 754, column: 35, scope: !743)
!2616 = !DILocation(line: 754, column: 33, scope: !743)
!2617 = !DILocation(line: 754, column: 9, scope: !743)
!2618 = !DILocation(line: 754, column: 2, scope: !743)
!2619 = distinct !DISubprogram(name: "windows_init", scope: !744, file: !744, line: 813, type: !505, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !751)
!2620 = !DILocation(line: 815, column: 13, scope: !2619)
!2621 = !DILocation(line: 816, column: 16, scope: !2619)
!2622 = !DILocation(line: 816, column: 14, scope: !2619)
!2623 = !DILocation(line: 817, column: 11, scope: !2619)
!2624 = !DILocation(line: 817, column: 23, scope: !2619)
!2625 = !DILocation(line: 818, column: 2, scope: !2619)
!2626 = !DILocation(line: 819, column: 2, scope: !2619)
!2627 = !DILocation(line: 820, column: 2, scope: !2619)
!2628 = !DILocation(line: 821, column: 2, scope: !2619)
!2629 = !DILocation(line: 823, column: 2, scope: !2619)
!2630 = !DILocation(line: 824, column: 2, scope: !2619)
!2631 = !DILocation(line: 825, column: 2, scope: !2619)
!2632 = !DILocation(line: 826, column: 2, scope: !2619)
!2633 = !DILocation(line: 827, column: 2, scope: !2619)
!2634 = !DILocation(line: 828, column: 2, scope: !2619)
!2635 = !DILocation(line: 829, column: 1, scope: !2619)
!2636 = distinct !DISubprogram(name: "read_settings", scope: !744, file: !744, line: 802, type: !505, isLocal: true, isDefinition: true, scopeLine: 803, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !751)
!2637 = !DILocation(line: 804, column: 6, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2636, file: !744, line: 804, column: 6)
!2639 = !DILocation(line: 804, column: 13, scope: !2638)
!2640 = !DILocation(line: 804, column: 6, scope: !2636)
!2641 = !DILocation(line: 805, column: 19, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2638, file: !744, line: 804, column: 20)
!2643 = !DILocation(line: 805, column: 3, scope: !2642)
!2644 = !DILocation(line: 806, column: 10, scope: !2642)
!2645 = !DILocation(line: 807, column: 2, scope: !2642)
!2646 = !DILocation(line: 809, column: 6, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2636, file: !744, line: 809, column: 6)
!2648 = !DILocation(line: 809, column: 6, scope: !2636)
!2649 = !DILocation(line: 810, column: 12, scope: !2647)
!2650 = !DILocation(line: 810, column: 10, scope: !2647)
!2651 = !DILocation(line: 810, column: 3, scope: !2647)
!2652 = !DILocation(line: 811, column: 1, scope: !2636)
!2653 = distinct !DISubprogram(name: "sig_server_connected", scope: !744, file: !744, line: 644, type: !2654, isLocal: true, isDefinition: true, scopeLine: 645, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !751)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{null, !349}
!2656 = !DILocalVariable(name: "server", arg: 1, scope: !2653, file: !744, line: 644, type: !349)
!2657 = !DILocation(line: 644, column: 46, scope: !2653)
!2658 = !DILocalVariable(name: "tmp", scope: !2653, file: !744, line: 646, type: !323)
!2659 = !DILocation(line: 646, column: 10, scope: !2653)
!2660 = !DILocation(line: 648, column: 2, scope: !2653)
!2661 = distinct !{!2661, !2660}
!2662 = !DILocation(line: 648, column: 10, scope: !2663)
!2663 = !DILexicalBlockFile(scope: !2664, file: !744, discriminator: 1)
!2664 = distinct !DILexicalBlock(scope: !2665, file: !744, line: 648, column: 10)
!2665 = distinct !DILexicalBlock(scope: !2653, file: !744, line: 648, column: 4)
!2666 = !DILocation(line: 648, column: 17, scope: !2663)
!2667 = !DILocation(line: 648, column: 5, scope: !2668)
!2668 = !DILexicalBlockFile(scope: !2669, file: !744, discriminator: 2)
!2669 = distinct !DILexicalBlock(scope: !2664, file: !744, line: 648, column: 3)
!2670 = !DILocation(line: 648, column: 14, scope: !2671)
!2671 = !DILexicalBlockFile(scope: !2672, file: !744, discriminator: 3)
!2672 = distinct !DILexicalBlock(scope: !2664, file: !744, line: 648, column: 12)
!2673 = !DILocation(line: 648, column: 101, scope: !2671)
!2674 = !DILocation(line: 648, column: 112, scope: !2675)
!2675 = !DILexicalBlockFile(scope: !2665, file: !744, discriminator: 4)
!2676 = !DILocation(line: 652, column: 13, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2653, file: !744, line: 652, column: 2)
!2678 = !DILocation(line: 652, column: 11, scope: !2677)
!2679 = !DILocation(line: 652, column: 7, scope: !2677)
!2680 = !DILocation(line: 652, column: 22, scope: !2681)
!2681 = !DILexicalBlockFile(scope: !2682, file: !744, discriminator: 1)
!2682 = distinct !DILexicalBlock(scope: !2677, file: !744, line: 652, column: 2)
!2683 = !DILocation(line: 652, column: 26, scope: !2681)
!2684 = !DILocation(line: 652, column: 2, scope: !2681)
!2685 = !DILocalVariable(name: "rec", scope: !2686, file: !744, line: 653, type: !309)
!2686 = distinct !DILexicalBlock(scope: !2682, file: !744, line: 652, column: 51)
!2687 = !DILocation(line: 653, column: 15, scope: !2686)
!2688 = !DILocation(line: 653, column: 21, scope: !2686)
!2689 = !DILocation(line: 653, column: 26, scope: !2686)
!2690 = !DILocation(line: 655, column: 8, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2686, file: !744, line: 655, column: 7)
!2692 = !DILocation(line: 655, column: 13, scope: !2691)
!2693 = !DILocation(line: 655, column: 23, scope: !2691)
!2694 = !DILocation(line: 655, column: 30, scope: !2691)
!2695 = !DILocation(line: 656, column: 27, scope: !2691)
!2696 = !DILocation(line: 656, column: 32, scope: !2691)
!2697 = !DILocation(line: 656, column: 43, scope: !2691)
!2698 = !DILocation(line: 656, column: 51, scope: !2691)
!2699 = !DILocation(line: 656, column: 8, scope: !2691)
!2700 = !DILocation(line: 656, column: 56, scope: !2691)
!2701 = !DILocation(line: 656, column: 62, scope: !2691)
!2702 = !DILocation(line: 657, column: 8, scope: !2691)
!2703 = !DILocation(line: 657, column: 13, scope: !2691)
!2704 = !DILocation(line: 657, column: 27, scope: !2691)
!2705 = !DILocation(line: 657, column: 34, scope: !2691)
!2706 = !DILocation(line: 658, column: 9, scope: !2691)
!2707 = !DILocation(line: 658, column: 16, scope: !2691)
!2708 = !DILocation(line: 658, column: 13, scope: !2691)
!2709 = !DILocation(line: 658, column: 27, scope: !2691)
!2710 = !DILocation(line: 658, column: 30, scope: !2711)
!2711 = !DILexicalBlockFile(scope: !2691, file: !744, discriminator: 1)
!2712 = !DILocation(line: 658, column: 35, scope: !2711)
!2713 = !DILocation(line: 658, column: 41, scope: !2711)
!2714 = !DILocation(line: 655, column: 7, scope: !2715)
!2715 = !DILexicalBlockFile(scope: !2686, file: !744, discriminator: 1)
!2716 = !DILocation(line: 659, column: 25, scope: !2691)
!2717 = !DILocation(line: 659, column: 30, scope: !2691)
!2718 = !DILocation(line: 659, column: 4, scope: !2691)
!2719 = !DILocation(line: 660, column: 2, scope: !2686)
!2720 = !DILocation(line: 652, column: 40, scope: !2721)
!2721 = !DILexicalBlockFile(scope: !2682, file: !744, discriminator: 2)
!2722 = !DILocation(line: 652, column: 45, scope: !2721)
!2723 = !DILocation(line: 652, column: 38, scope: !2721)
!2724 = !DILocation(line: 652, column: 2, scope: !2721)
!2725 = distinct !{!2725, !2726}
!2726 = !DILocation(line: 652, column: 2, scope: !2653)
!2727 = !DILocation(line: 661, column: 1, scope: !2653)
!2728 = distinct !DISubprogram(name: "sig_server_disconnected", scope: !744, file: !744, line: 663, type: !2654, isLocal: true, isDefinition: true, scopeLine: 664, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !751)
!2729 = !DILocalVariable(name: "server", arg: 1, scope: !2728, file: !744, line: 663, type: !349)
!2730 = !DILocation(line: 663, column: 49, scope: !2728)
!2731 = !DILocalVariable(name: "tmp", scope: !2728, file: !744, line: 665, type: !323)
!2732 = !DILocation(line: 665, column: 10, scope: !2728)
!2733 = !DILocalVariable(name: "new_server", scope: !2728, file: !744, line: 666, type: !349)
!2734 = !DILocation(line: 666, column: 21, scope: !2728)
!2735 = !DILocation(line: 668, column: 2, scope: !2728)
!2736 = distinct !{!2736, !2735}
!2737 = !DILocation(line: 668, column: 10, scope: !2738)
!2738 = !DILexicalBlockFile(scope: !2739, file: !744, discriminator: 1)
!2739 = distinct !DILexicalBlock(scope: !2740, file: !744, line: 668, column: 10)
!2740 = distinct !DILexicalBlock(scope: !2728, file: !744, line: 668, column: 4)
!2741 = !DILocation(line: 668, column: 17, scope: !2738)
!2742 = !DILocation(line: 668, column: 5, scope: !2743)
!2743 = !DILexicalBlockFile(scope: !2744, file: !744, discriminator: 2)
!2744 = distinct !DILexicalBlock(scope: !2739, file: !744, line: 668, column: 3)
!2745 = !DILocation(line: 668, column: 14, scope: !2746)
!2746 = !DILexicalBlockFile(scope: !2747, file: !744, discriminator: 3)
!2747 = distinct !DILexicalBlock(scope: !2739, file: !744, line: 668, column: 12)
!2748 = !DILocation(line: 668, column: 101, scope: !2746)
!2749 = !DILocation(line: 668, column: 112, scope: !2750)
!2750 = !DILexicalBlockFile(scope: !2740, file: !744, discriminator: 4)
!2751 = !DILocation(line: 670, column: 15, scope: !2728)
!2752 = !DILocation(line: 670, column: 23, scope: !2728)
!2753 = !DILocation(line: 670, column: 15, scope: !2754)
!2754 = !DILexicalBlockFile(scope: !2728, file: !744, discriminator: 1)
!2755 = !DILocation(line: 670, column: 39, scope: !2756)
!2756 = !DILexicalBlockFile(scope: !2728, file: !744, discriminator: 2)
!2757 = !DILocation(line: 670, column: 48, scope: !2756)
!2758 = !DILocation(line: 670, column: 15, scope: !2756)
!2759 = !DILocation(line: 670, column: 15, scope: !2760)
!2760 = !DILexicalBlockFile(scope: !2728, file: !744, discriminator: 3)
!2761 = !DILocation(line: 670, column: 13, scope: !2760)
!2762 = !DILocation(line: 671, column: 13, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2728, file: !744, line: 671, column: 2)
!2764 = !DILocation(line: 671, column: 11, scope: !2763)
!2765 = !DILocation(line: 671, column: 7, scope: !2763)
!2766 = !DILocation(line: 671, column: 22, scope: !2767)
!2767 = !DILexicalBlockFile(scope: !2768, file: !744, discriminator: 1)
!2768 = distinct !DILexicalBlock(scope: !2763, file: !744, line: 671, column: 2)
!2769 = !DILocation(line: 671, column: 26, scope: !2767)
!2770 = !DILocation(line: 671, column: 2, scope: !2767)
!2771 = !DILocalVariable(name: "rec", scope: !2772, file: !744, line: 672, type: !309)
!2772 = distinct !DILexicalBlock(scope: !2768, file: !744, line: 671, column: 51)
!2773 = !DILocation(line: 672, column: 15, scope: !2772)
!2774 = !DILocation(line: 672, column: 21, scope: !2772)
!2775 = !DILocation(line: 672, column: 26, scope: !2772)
!2776 = !DILocation(line: 674, column: 7, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2772, file: !744, line: 674, column: 7)
!2778 = !DILocation(line: 674, column: 12, scope: !2777)
!2779 = !DILocation(line: 674, column: 29, scope: !2777)
!2780 = !DILocation(line: 674, column: 26, scope: !2777)
!2781 = !DILocation(line: 674, column: 36, scope: !2777)
!2782 = !DILocation(line: 675, column: 7, scope: !2777)
!2783 = !DILocation(line: 675, column: 12, scope: !2777)
!2784 = !DILocation(line: 675, column: 30, scope: !2777)
!2785 = !DILocation(line: 675, column: 27, scope: !2777)
!2786 = !DILocation(line: 674, column: 7, scope: !2787)
!2787 = !DILexicalBlockFile(scope: !2772, file: !744, discriminator: 1)
!2788 = !DILocation(line: 676, column: 25, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2777, file: !744, line: 675, column: 38)
!2790 = !DILocation(line: 676, column: 30, scope: !2789)
!2791 = !DILocation(line: 676, column: 35, scope: !2789)
!2792 = !DILocation(line: 676, column: 45, scope: !2789)
!2793 = !DILocation(line: 676, column: 30, scope: !2794)
!2794 = !DILexicalBlockFile(scope: !2789, file: !744, discriminator: 1)
!2795 = !DILocation(line: 677, column: 17, scope: !2789)
!2796 = !DILocation(line: 676, column: 30, scope: !2797)
!2797 = !DILexicalBlockFile(scope: !2789, file: !744, discriminator: 2)
!2798 = !DILocation(line: 676, column: 30, scope: !2799)
!2799 = !DILexicalBlockFile(scope: !2789, file: !744, discriminator: 3)
!2800 = !DILocation(line: 676, column: 4, scope: !2799)
!2801 = !DILocation(line: 678, column: 3, scope: !2789)
!2802 = !DILocation(line: 679, column: 2, scope: !2772)
!2803 = !DILocation(line: 671, column: 40, scope: !2804)
!2804 = !DILexicalBlockFile(scope: !2768, file: !744, discriminator: 2)
!2805 = !DILocation(line: 671, column: 45, scope: !2804)
!2806 = !DILocation(line: 671, column: 38, scope: !2804)
!2807 = !DILocation(line: 671, column: 2, scope: !2804)
!2808 = distinct !{!2808, !2809}
!2809 = !DILocation(line: 671, column: 2, scope: !2728)
!2810 = !DILocation(line: 680, column: 1, scope: !2728)
!2811 = distinct !DISubprogram(name: "windows_deinit", scope: !744, file: !744, line: 831, type: !505, isLocal: false, isDefinition: true, scopeLine: 832, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !751)
!2812 = !DILocation(line: 833, column: 6, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2811, file: !744, line: 833, column: 6)
!2814 = !DILocation(line: 833, column: 13, scope: !2813)
!2815 = !DILocation(line: 833, column: 6, scope: !2811)
!2816 = !DILocation(line: 833, column: 36, scope: !2817)
!2817 = !DILexicalBlockFile(scope: !2813, file: !744, discriminator: 1)
!2818 = !DILocation(line: 833, column: 20, scope: !2817)
!2819 = !DILocation(line: 834, column: 6, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2811, file: !744, line: 834, column: 6)
!2821 = !DILocation(line: 834, column: 15, scope: !2820)
!2822 = !DILocation(line: 834, column: 6, scope: !2811)
!2823 = !DILocation(line: 834, column: 21, scope: !2824)
!2824 = !DILexicalBlockFile(scope: !2820, file: !744, discriminator: 1)
!2825 = !DILocation(line: 836, column: 2, scope: !2811)
!2826 = !DILocation(line: 837, column: 2, scope: !2811)
!2827 = !DILocation(line: 838, column: 2, scope: !2811)
!2828 = !DILocation(line: 839, column: 2, scope: !2811)
!2829 = !DILocation(line: 840, column: 2, scope: !2811)
!2830 = !DILocation(line: 841, column: 18, scope: !2811)
!2831 = !DILocation(line: 841, column: 2, scope: !2811)
!2832 = !DILocation(line: 842, column: 14, scope: !2811)
!2833 = !DILocation(line: 843, column: 1, scope: !2811)
!2834 = distinct !DISubprogram(name: "sig_print_text", scope: !744, file: !744, line: 757, type: !505, isLocal: true, isDefinition: true, scopeLine: 758, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !751)
!2835 = !DILocalVariable(name: "tmp", scope: !2834, file: !744, line: 759, type: !323)
!2836 = !DILocation(line: 759, column: 10, scope: !2834)
!2837 = !DILocalVariable(name: "t", scope: !2834, file: !744, line: 760, type: !582)
!2838 = !DILocation(line: 760, column: 9, scope: !2834)
!2839 = !DILocalVariable(name: "tm", scope: !2834, file: !744, line: 761, type: !2840)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64, align: 64)
!2841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !583, line: 133, size: 448, align: 64, elements: !2842)
!2842 = !{!2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !2841, file: !583, line: 135, baseType: !316, size: 32, align: 32)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !2841, file: !583, line: 136, baseType: !316, size: 32, align: 32, offset: 32)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !2841, file: !583, line: 137, baseType: !316, size: 32, align: 32, offset: 64)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !2841, file: !583, line: 138, baseType: !316, size: 32, align: 32, offset: 96)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !2841, file: !583, line: 139, baseType: !316, size: 32, align: 32, offset: 128)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !2841, file: !583, line: 140, baseType: !316, size: 32, align: 32, offset: 160)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !2841, file: !583, line: 141, baseType: !316, size: 32, align: 32, offset: 192)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !2841, file: !583, line: 142, baseType: !316, size: 32, align: 32, offset: 224)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !2841, file: !583, line: 143, baseType: !316, size: 32, align: 32, offset: 256)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !2841, file: !583, line: 146, baseType: !442, size: 64, align: 64, offset: 320)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !2841, file: !583, line: 147, baseType: !632, size: 64, align: 64, offset: 384)
!2854 = !DILocation(line: 761, column: 13, scope: !2834)
!2855 = !DILocation(line: 763, column: 6, scope: !2834)
!2856 = !DILocation(line: 763, column: 4, scope: !2834)
!2857 = !DILocation(line: 764, column: 7, scope: !2834)
!2858 = !DILocation(line: 764, column: 5, scope: !2834)
!2859 = !DILocation(line: 765, column: 6, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2834, file: !744, line: 765, column: 6)
!2861 = !DILocation(line: 765, column: 10, scope: !2860)
!2862 = !DILocation(line: 765, column: 18, scope: !2860)
!2863 = !DILocation(line: 765, column: 23, scope: !2860)
!2864 = !DILocation(line: 765, column: 26, scope: !2865)
!2865 = !DILexicalBlockFile(scope: !2860, file: !744, discriminator: 1)
!2866 = !DILocation(line: 765, column: 30, scope: !2865)
!2867 = !DILocation(line: 765, column: 37, scope: !2865)
!2868 = !DILocation(line: 765, column: 6, scope: !2865)
!2869 = !DILocation(line: 766, column: 3, scope: !2860)
!2870 = !DILocation(line: 768, column: 11, scope: !2834)
!2871 = !DILocation(line: 769, column: 2, scope: !2834)
!2872 = !DILocation(line: 772, column: 13, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2834, file: !744, line: 772, column: 2)
!2874 = !DILocation(line: 772, column: 11, scope: !2873)
!2875 = !DILocation(line: 772, column: 7, scope: !2873)
!2876 = !DILocation(line: 772, column: 22, scope: !2877)
!2877 = !DILexicalBlockFile(scope: !2878, file: !744, discriminator: 1)
!2878 = distinct !DILexicalBlock(scope: !2873, file: !744, line: 772, column: 2)
!2879 = !DILocation(line: 772, column: 26, scope: !2877)
!2880 = !DILocation(line: 772, column: 2, scope: !2877)
!2881 = !DILocation(line: 773, column: 26, scope: !2878)
!2882 = !DILocation(line: 773, column: 31, scope: !2878)
!2883 = !DILocation(line: 773, column: 37, scope: !2878)
!2884 = !DILocation(line: 773, column: 3, scope: !2878)
!2885 = !DILocation(line: 772, column: 40, scope: !2886)
!2886 = !DILexicalBlockFile(scope: !2878, file: !744, discriminator: 2)
!2887 = !DILocation(line: 772, column: 45, scope: !2886)
!2888 = !DILocation(line: 772, column: 38, scope: !2886)
!2889 = !DILocation(line: 772, column: 2, scope: !2886)
!2890 = distinct !{!2890, !2891}
!2891 = !DILocation(line: 772, column: 2, scope: !2834)
!2892 = !DILocation(line: 774, column: 1, scope: !2834)
!2893 = distinct !DISubprogram(name: "window_set_refnum0", scope: !744, file: !744, line: 141, type: !1277, isLocal: true, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !751)
!2894 = !DILocalVariable(name: "window", arg: 1, scope: !2893, file: !744, line: 141, type: !309)
!2895 = !DILocation(line: 141, column: 44, scope: !2893)
!2896 = !DILocalVariable(name: "refnum", arg: 2, scope: !2893, file: !744, line: 141, type: !316)
!2897 = !DILocation(line: 141, column: 56, scope: !2893)
!2898 = !DILocalVariable(name: "old_refnum", scope: !2893, file: !744, line: 143, type: !316)
!2899 = !DILocation(line: 143, column: 6, scope: !2893)
!2900 = !DILocation(line: 145, column: 2, scope: !2893)
!2901 = distinct !{!2901, !2900}
!2902 = !DILocation(line: 145, column: 10, scope: !2903)
!2903 = !DILexicalBlockFile(scope: !2904, file: !744, discriminator: 1)
!2904 = distinct !DILexicalBlock(scope: !2905, file: !744, line: 145, column: 10)
!2905 = distinct !DILexicalBlock(scope: !2893, file: !744, line: 145, column: 4)
!2906 = !DILocation(line: 145, column: 17, scope: !2903)
!2907 = !DILocation(line: 145, column: 5, scope: !2908)
!2908 = !DILexicalBlockFile(scope: !2909, file: !744, discriminator: 2)
!2909 = distinct !DILexicalBlock(scope: !2904, file: !744, line: 145, column: 3)
!2910 = !DILocation(line: 145, column: 14, scope: !2911)
!2911 = !DILexicalBlockFile(scope: !2912, file: !744, discriminator: 3)
!2912 = distinct !DILexicalBlock(scope: !2904, file: !744, line: 145, column: 12)
!2913 = !DILocation(line: 145, column: 101, scope: !2911)
!2914 = !DILocation(line: 145, column: 112, scope: !2915)
!2915 = !DILexicalBlockFile(scope: !2905, file: !744, discriminator: 4)
!2916 = !DILocation(line: 146, column: 2, scope: !2893)
!2917 = distinct !{!2917, !2916}
!2918 = !DILocation(line: 146, column: 10, scope: !2919)
!2919 = !DILexicalBlockFile(scope: !2920, file: !744, discriminator: 1)
!2920 = distinct !DILexicalBlock(scope: !2921, file: !744, line: 146, column: 10)
!2921 = distinct !DILexicalBlock(scope: !2893, file: !744, line: 146, column: 4)
!2922 = !DILocation(line: 146, column: 17, scope: !2919)
!2923 = !DILocation(line: 146, column: 25, scope: !2924)
!2924 = !DILexicalBlockFile(scope: !2925, file: !744, discriminator: 2)
!2925 = distinct !DILexicalBlock(scope: !2920, file: !744, line: 146, column: 23)
!2926 = !DILocation(line: 146, column: 34, scope: !2927)
!2927 = !DILexicalBlockFile(scope: !2928, file: !744, discriminator: 3)
!2928 = distinct !DILexicalBlock(scope: !2920, file: !744, line: 146, column: 32)
!2929 = !DILocation(line: 146, column: 118, scope: !2927)
!2930 = !DILocation(line: 146, column: 129, scope: !2931)
!2931 = !DILexicalBlockFile(scope: !2921, file: !744, discriminator: 4)
!2932 = !DILocation(line: 147, column: 6, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2893, file: !744, line: 147, column: 6)
!2934 = !DILocation(line: 147, column: 14, scope: !2933)
!2935 = !DILocation(line: 147, column: 24, scope: !2933)
!2936 = !DILocation(line: 147, column: 21, scope: !2933)
!2937 = !DILocation(line: 147, column: 6, scope: !2893)
!2938 = !DILocation(line: 147, column: 32, scope: !2939)
!2939 = !DILexicalBlockFile(scope: !2933, file: !744, discriminator: 1)
!2940 = !DILocation(line: 149, column: 15, scope: !2893)
!2941 = !DILocation(line: 149, column: 23, scope: !2893)
!2942 = !DILocation(line: 149, column: 13, scope: !2893)
!2943 = !DILocation(line: 150, column: 19, scope: !2893)
!2944 = !DILocation(line: 150, column: 2, scope: !2893)
!2945 = !DILocation(line: 150, column: 10, scope: !2893)
!2946 = !DILocation(line: 150, column: 17, scope: !2893)
!2947 = !DILocation(line: 151, column: 42, scope: !2893)
!2948 = !DILocation(line: 151, column: 71, scope: !2893)
!2949 = !DILocation(line: 151, column: 62, scope: !2893)
!2950 = !DILocation(line: 151, column: 51, scope: !2893)
!2951 = !DILocation(line: 151, column: 2, scope: !2893)
!2952 = !DILocation(line: 152, column: 1, scope: !2893)
!2953 = !DILocation(line: 152, column: 1, scope: !2954)
!2954 = !DILexicalBlockFile(scope: !2893, file: !744, discriminator: 1)
!2955 = distinct !DISubprogram(name: "window_refnum_lookup", scope: !744, file: !744, line: 45, type: !2956, isLocal: true, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !751)
!2956 = !DISubroutineType(types: !2957)
!2957 = !{!316, !309, !331}
!2958 = !DILocalVariable(name: "window", arg: 1, scope: !2955, file: !744, line: 45, type: !309)
!2959 = !DILocation(line: 45, column: 45, scope: !2955)
!2960 = !DILocalVariable(name: "refnum_p", arg: 2, scope: !2955, file: !744, line: 45, type: !331)
!2961 = !DILocation(line: 45, column: 59, scope: !2955)
!2962 = !DILocalVariable(name: "refnum", scope: !2955, file: !744, line: 47, type: !316)
!2963 = !DILocation(line: 47, column: 6, scope: !2955)
!2964 = !DILocation(line: 47, column: 32, scope: !2955)
!2965 = !DILocation(line: 47, column: 23, scope: !2955)
!2966 = !DILocation(line: 47, column: 16, scope: !2955)
!2967 = !DILocation(line: 48, column: 9, scope: !2955)
!2968 = !DILocation(line: 48, column: 17, scope: !2955)
!2969 = !DILocation(line: 48, column: 27, scope: !2955)
!2970 = !DILocation(line: 48, column: 24, scope: !2955)
!2971 = !DILocation(line: 48, column: 9, scope: !2972)
!2972 = !DILexicalBlockFile(scope: !2955, file: !744, discriminator: 1)
!2973 = !DILocation(line: 48, column: 40, scope: !2974)
!2974 = !DILexicalBlockFile(scope: !2955, file: !744, discriminator: 2)
!2975 = !DILocation(line: 48, column: 48, scope: !2974)
!2976 = !DILocation(line: 48, column: 57, scope: !2974)
!2977 = !DILocation(line: 48, column: 55, scope: !2974)
!2978 = !DILocation(line: 48, column: 9, scope: !2974)
!2979 = !DILocation(line: 48, column: 9, scope: !2980)
!2980 = !DILexicalBlockFile(scope: !2955, file: !744, discriminator: 3)
!2981 = !DILocation(line: 48, column: 2, scope: !2980)
!2982 = distinct !DISubprogram(name: "sig_check_daychange", scope: !744, file: !744, line: 776, type: !837, isLocal: true, isDefinition: true, scopeLine: 777, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !751)
!2983 = !DILocalVariable(name: "t", scope: !2982, file: !744, line: 778, type: !582)
!2984 = !DILocation(line: 778, column: 9, scope: !2982)
!2985 = !DILocalVariable(name: "tm", scope: !2982, file: !744, line: 779, type: !2840)
!2986 = !DILocation(line: 779, column: 13, scope: !2982)
!2987 = !DILocation(line: 781, column: 6, scope: !2982)
!2988 = !DILocation(line: 781, column: 4, scope: !2982)
!2989 = !DILocation(line: 782, column: 7, scope: !2982)
!2990 = !DILocation(line: 782, column: 5, scope: !2982)
!2991 = !DILocation(line: 784, column: 6, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2982, file: !744, line: 784, column: 6)
!2993 = !DILocation(line: 784, column: 15, scope: !2992)
!2994 = !DILocation(line: 784, column: 20, scope: !2992)
!2995 = !DILocation(line: 784, column: 23, scope: !2996)
!2996 = !DILexicalBlockFile(scope: !2992, file: !744, discriminator: 1)
!2997 = !DILocation(line: 784, column: 27, scope: !2996)
!2998 = !DILocation(line: 784, column: 35, scope: !2996)
!2999 = !DILocation(line: 784, column: 40, scope: !2996)
!3000 = !DILocation(line: 784, column: 43, scope: !3001)
!3001 = !DILexicalBlockFile(scope: !2992, file: !744, discriminator: 2)
!3002 = !DILocation(line: 784, column: 47, scope: !3001)
!3003 = !DILocation(line: 784, column: 54, scope: !3001)
!3004 = !DILocation(line: 784, column: 6, scope: !3001)
!3005 = !DILocation(line: 785, column: 3, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !2992, file: !744, line: 784, column: 60)
!3007 = !DILocation(line: 786, column: 3, scope: !3006)
!3008 = !DILocation(line: 789, column: 6, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !2982, file: !744, line: 789, column: 6)
!3010 = !DILocation(line: 789, column: 10, scope: !3009)
!3011 = !DILocation(line: 789, column: 18, scope: !3009)
!3012 = !DILocation(line: 789, column: 24, scope: !3009)
!3013 = !DILocation(line: 789, column: 27, scope: !3014)
!3014 = !DILexicalBlockFile(scope: !3009, file: !744, discriminator: 1)
!3015 = !DILocation(line: 789, column: 31, scope: !3014)
!3016 = !DILocation(line: 789, column: 38, scope: !3014)
!3017 = !DILocation(line: 789, column: 6, scope: !3014)
!3018 = !DILocation(line: 790, column: 12, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !3009, file: !744, line: 789, column: 45)
!3020 = !DILocation(line: 791, column: 3, scope: !3019)
!3021 = !DILocation(line: 795, column: 6, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !2982, file: !744, line: 795, column: 6)
!3023 = !DILocation(line: 795, column: 15, scope: !3022)
!3024 = !DILocation(line: 795, column: 6, scope: !2982)
!3025 = !DILocation(line: 796, column: 12, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !3022, file: !744, line: 795, column: 21)
!3027 = !DILocation(line: 797, column: 3, scope: !3026)
!3028 = !DILocation(line: 798, column: 2, scope: !3026)
!3029 = !DILocation(line: 799, column: 2, scope: !2982)
!3030 = !DILocation(line: 800, column: 1, scope: !2982)
!3031 = distinct !DISubprogram(name: "window_print_daychange", scope: !744, file: !744, line: 682, type: !3032, isLocal: true, isDefinition: true, scopeLine: 683, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !751)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{null, !309, !2840}
!3034 = !DILocalVariable(name: "window", arg: 1, scope: !3031, file: !744, line: 682, type: !309)
!3035 = !DILocation(line: 682, column: 48, scope: !3031)
!3036 = !DILocalVariable(name: "tm", arg: 2, scope: !3031, file: !744, line: 682, type: !2840)
!3037 = !DILocation(line: 682, column: 67, scope: !3031)
!3038 = !DILocalVariable(name: "theme", scope: !3031, file: !744, line: 684, type: !3039)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64, align: 64)
!3040 = !DIDerivedType(tag: DW_TAG_typedef, name: "THEME_REC", file: !3041, line: 33, baseType: !3042)
!3041 = !DIFile(filename: "themes.h", directory: "/home/lichi/Desktop/irssi/task1")
!3042 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3041, line: 13, size: 8768, align: 64, elements: !3043)
!3043 = !{!3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3055, !3056, !3057}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3042, file: !3041, line: 14, baseType: !316, size: 32, align: 32)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !3042, file: !3041, line: 16, baseType: !318, size: 64, align: 64, offset: 64)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3042, file: !3041, line: 17, baseType: !318, size: 64, align: 64, offset: 128)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "last_modify", scope: !3042, file: !3041, line: 18, baseType: !582, size: 64, align: 64, offset: 192)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "default_color", scope: !3042, file: !3041, line: 20, baseType: !316, size: 32, align: 32, offset: 256)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "info_eol", scope: !3042, file: !3041, line: 23, baseType: !428, size: 1, align: 32, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !3042, file: !3041, line: 26, baseType: !343, size: 64, align: 64, offset: 320)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "replace_keys", scope: !3042, file: !3041, line: 28, baseType: !3052, size: 8192, align: 32, offset: 384)
!3052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 8192, align: 32, elements: !3053)
!3053 = !{!3054}
!3054 = !DISubrange(count: 256)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "replace_values", scope: !3042, file: !3041, line: 29, baseType: !323, size: 64, align: 64, offset: 8576)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "abstracts", scope: !3042, file: !3041, line: 30, baseType: !343, size: 64, align: 64, offset: 8640)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "gui_data", scope: !3042, file: !3041, line: 32, baseType: !331, size: 64, align: 64, offset: 8704)
!3058 = !DILocation(line: 684, column: 20, scope: !3031)
!3059 = !DILocalVariable(name: "dest", scope: !3031, file: !744, line: 685, type: !3060)
!3060 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_DEST_REC", file: !3061, line: 62, baseType: !3062)
!3061 = !DIFile(filename: "formats.h", directory: "/home/lichi/Desktop/irssi/task1")
!3062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TEXT_DEST_REC", file: !3061, line: 50, size: 576, align: 64, elements: !3063)
!3063 = !{!3064, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !3062, file: !3061, line: 51, baseType: !309, size: 64, align: 64)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !3062, file: !3061, line: 52, baseType: !349, size: 64, align: 64, offset: 64)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "server_tag", scope: !3062, file: !3061, line: 53, baseType: !632, size: 64, align: 64, offset: 128)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3062, file: !3061, line: 54, baseType: !632, size: 64, align: 64, offset: 192)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !3062, file: !3061, line: 55, baseType: !632, size: 64, align: 64, offset: 256)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !3062, file: !3061, line: 56, baseType: !632, size: 64, align: 64, offset: 320)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3062, file: !3061, line: 57, baseType: !316, size: 32, align: 32, offset: 384)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_priority", scope: !3062, file: !3061, line: 59, baseType: !316, size: 32, align: 32, offset: 416)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !3062, file: !3061, line: 60, baseType: !318, size: 64, align: 64, offset: 448)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3062, file: !3061, line: 61, baseType: !316, size: 32, align: 32, offset: 512)
!3074 = !DILocation(line: 685, column: 23, scope: !3031)
!3075 = !DILocalVariable(name: "format", scope: !3031, file: !744, line: 686, type: !318)
!3076 = !DILocation(line: 686, column: 8, scope: !3031)
!3077 = !DILocalVariable(name: "str", scope: !3031, file: !744, line: 686, type: !3078)
!3078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 2048, align: 8, elements: !3053)
!3079 = !DILocation(line: 686, column: 16, scope: !3031)
!3080 = !DILocalVariable(name: "ret", scope: !3031, file: !744, line: 687, type: !316)
!3081 = !DILocation(line: 687, column: 6, scope: !3031)
!3082 = !DILocation(line: 689, column: 10, scope: !3031)
!3083 = !DILocation(line: 689, column: 22, scope: !3031)
!3084 = !DILocation(line: 689, column: 28, scope: !3031)
!3085 = !DILocation(line: 689, column: 37, scope: !3086)
!3086 = !DILexicalBlockFile(scope: !3031, file: !744, discriminator: 1)
!3087 = !DILocation(line: 689, column: 49, scope: !3086)
!3088 = !DILocation(line: 689, column: 10, scope: !3086)
!3089 = !DILocation(line: 689, column: 57, scope: !3090)
!3090 = !DILexicalBlockFile(scope: !3031, file: !744, discriminator: 2)
!3091 = !DILocation(line: 689, column: 10, scope: !3090)
!3092 = !DILocation(line: 689, column: 10, scope: !3093)
!3093 = !DILexicalBlockFile(scope: !3031, file: !744, discriminator: 3)
!3094 = !DILocation(line: 689, column: 8, scope: !3093)
!3095 = !DILocation(line: 690, column: 55, scope: !3031)
!3096 = !DILocation(line: 690, column: 2, scope: !3031)
!3097 = !DILocation(line: 691, column: 33, scope: !3031)
!3098 = !DILocation(line: 691, column: 11, scope: !3031)
!3099 = !DILocation(line: 691, column: 9, scope: !3031)
!3100 = !DILocation(line: 693, column: 17, scope: !3031)
!3101 = !DILocation(line: 693, column: 35, scope: !3031)
!3102 = !DILocation(line: 693, column: 43, scope: !3031)
!3103 = !DILocation(line: 693, column: 8, scope: !3031)
!3104 = !DILocation(line: 693, column: 6, scope: !3031)
!3105 = !DILocation(line: 694, column: 9, scope: !3031)
!3106 = !DILocation(line: 694, column: 2, scope: !3031)
!3107 = !DILocation(line: 695, column: 6, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !3031, file: !744, line: 695, column: 6)
!3109 = !DILocation(line: 695, column: 10, scope: !3108)
!3110 = !DILocation(line: 695, column: 6, scope: !3031)
!3111 = !DILocation(line: 695, column: 16, scope: !3112)
!3112 = !DILexicalBlockFile(scope: !3108, file: !744, discriminator: 1)
!3113 = !DILocation(line: 697, column: 26, scope: !3031)
!3114 = !DILocation(line: 697, column: 50, scope: !3031)
!3115 = !DILocation(line: 697, column: 2, scope: !3031)
!3116 = !DILocation(line: 698, column: 1, scope: !3031)
!3117 = !DILocation(line: 698, column: 1, scope: !3086)
