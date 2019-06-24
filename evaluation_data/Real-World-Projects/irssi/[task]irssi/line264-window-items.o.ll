; ModuleID = './line264-window-items.o.i'
source_filename = "./line264-window-items.o.i"
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
%struct._CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)* }
%struct._NICK_REC = type opaque
%struct._QUERY_REC = type opaque
%struct.HISTORY_REC = type { i8*, %struct._GList*, i32, i32, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.WINDOW_BIND_REC = type { i8*, i8*, i8 }

@__func__.window_item_change_server = private unnamed_addr constant [26 x i8] c"window_item_change_server\00", align 1
@.str = private unnamed_addr constant [13 x i8] c"item != NULL\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"window item server changed\00", align 1
@__func__.window_item_set_active = private unnamed_addr constant [23 x i8] c"window_item_set_active\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"window != NULL\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"window item moved\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"window item changed\00", align 1
@__func__.window_item_prev = private unnamed_addr constant [17 x i8] c"window_item_prev\00", align 1
@__func__.window_item_next = private unnamed_addr constant [17 x i8] c"window_item_next\00", align 1
@__func__.window_item_find = private unnamed_addr constant [17 x i8] c"window_item_find\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"name != NULL\00", align 1
@windows = external global %struct._GSList*, align 8
@__func__.window_item_create = private unnamed_addr constant [19 x i8] c"window_item_create\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"reuse_unused_windows\00", align 1
@active_win = external global %struct._WINDOW_REC*, align 8
@.str.7 = private unnamed_addr constant [19 x i8] c"autocreate_windows\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"autocreate_split_windows\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"gui window create override\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"fe-common/core\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"lookandfeel\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"autofocus_new_items\00", align 1
@__func__.window_item_add_signal = private unnamed_addr constant [23 x i8] c"window_item_add_signal\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"item->window == NULL\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"window_auto_change\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"window changed automatic\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"window item new\00", align 1
@__func__.window_item_remove_signal = private unnamed_addr constant [26 x i8] c"window_item_remove_signal\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"window item remove\00", align 1
@__func__.signal_window_item_changed = private unnamed_addr constant [27 x i8] c"signal_window_item_changed\00", align 1

; Function Attrs: nounwind uwtable
define void @window_item_add(%struct._WINDOW_REC*, %struct._WI_ITEM_REC*, i32) #0 !dbg !779 {
  %4 = alloca %struct._WINDOW_REC*, align 8
  %5 = alloca %struct._WI_ITEM_REC*, align 8
  %6 = alloca i32, align 4
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %4, metadata !784, metadata !785), !dbg !786
  store %struct._WI_ITEM_REC* %1, %struct._WI_ITEM_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %5, metadata !787, metadata !785), !dbg !788
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !789, metadata !785), !dbg !790
  %7 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !791
  %8 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %5, align 8, !dbg !792
  %9 = load i32, i32* %6, align 4, !dbg !793
  call void @window_item_add_signal(%struct._WINDOW_REC* %7, %struct._WI_ITEM_REC* %8, i32 %9, i32 1), !dbg !794
  ret void, !dbg !795
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal void @window_item_add_signal(%struct._WINDOW_REC*, %struct._WI_ITEM_REC*, i32, i32) #0 !dbg !796 {
  %5 = alloca %struct._WINDOW_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %5, metadata !799, metadata !785), !dbg !800
  store %struct._WI_ITEM_REC* %1, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !801, metadata !785), !dbg !802
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !803, metadata !785), !dbg !804
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !805, metadata !785), !dbg !806
  br label %9, !dbg !807, !llvm.loop !808

; <label>:9:                                      ; preds = %4
  %10 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !809
  %11 = icmp ne %struct._WINDOW_REC* %10, null, !dbg !813
  br i1 %11, label %12, label %13, !dbg !809

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !814

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.window_item_add_signal, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)), !dbg !817
  br label %95, !dbg !820

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !821

; <label>:15:                                     ; preds = %14
  br label %16, !dbg !823, !llvm.loop !824

; <label>:16:                                     ; preds = %15
  %17 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !825
  %18 = icmp ne %struct._WI_ITEM_REC* %17, null, !dbg !829
  br i1 %18, label %19, label %20, !dbg !825

; <label>:19:                                     ; preds = %16
  br label %21, !dbg !830

; <label>:20:                                     ; preds = %16
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.window_item_add_signal, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)), !dbg !833
  br label %95, !dbg !836

; <label>:21:                                     ; preds = %19
  br label %22, !dbg !837

; <label>:22:                                     ; preds = %21
  br label %23, !dbg !839, !llvm.loop !840

; <label>:23:                                     ; preds = %22
  %24 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !841
  %25 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %24, i32 0, i32 3, !dbg !845
  %26 = load i8*, i8** %25, align 8, !dbg !845
  %27 = icmp eq i8* %26, null, !dbg !846
  br i1 %27, label %28, label %29, !dbg !841

; <label>:28:                                     ; preds = %23
  br label %30, !dbg !847

; <label>:29:                                     ; preds = %23
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.window_item_add_signal, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i32 0, i32 0)), !dbg !850
  br label %95, !dbg !853

; <label>:30:                                     ; preds = %28
  br label %31, !dbg !854

; <label>:31:                                     ; preds = %30
  %32 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !856
  %33 = bitcast %struct._WINDOW_REC* %32 to i8*, !dbg !856
  %34 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !857
  %35 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %34, i32 0, i32 3, !dbg !858
  store i8* %33, i8** %35, align 8, !dbg !859
  %36 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !860
  %37 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %36, i32 0, i32 4, !dbg !862
  %38 = load %struct._GSList*, %struct._GSList** %37, align 8, !dbg !862
  %39 = icmp eq %struct._GSList* %38, null, !dbg !863
  br i1 %39, label %40, label %49, !dbg !864

; <label>:40:                                     ; preds = %31
  %41 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !865
  %42 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !867
  %43 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %42, i32 0, i32 5, !dbg !868
  store %struct._WI_ITEM_REC* %41, %struct._WI_ITEM_REC** %43, align 8, !dbg !869
  %44 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !870
  %45 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %44, i32 0, i32 4, !dbg !871
  %46 = load %struct._SERVER_REC*, %struct._SERVER_REC** %45, align 8, !dbg !871
  %47 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !872
  %48 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %47, i32 0, i32 6, !dbg !873
  store %struct._SERVER_REC* %46, %struct._SERVER_REC** %48, align 8, !dbg !874
  br label %49, !dbg !875

; <label>:49:                                     ; preds = %40, %31
  %50 = load i32, i32* %7, align 4, !dbg !876
  %51 = icmp ne i32 %50, 0, !dbg !876
  br i1 %51, label %52, label %55, !dbg !878

; <label>:52:                                     ; preds = %49
  %53 = call i32 @settings_get_bool(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0)), !dbg !879
  %54 = icmp ne i32 %53, 0, !dbg !879
  br i1 %54, label %55, label %63, !dbg !881

; <label>:55:                                     ; preds = %52, %49
  %56 = load i32, i32* %7, align 4, !dbg !882
  %57 = icmp ne i32 %56, 0, !dbg !882
  br i1 %57, label %58, label %61, !dbg !885

; <label>:58:                                     ; preds = %55
  %59 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !886
  %60 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct._WINDOW_REC* %59), !dbg !887
  br label %61, !dbg !887

; <label>:61:                                     ; preds = %58, %55
  %62 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !888
  call void @window_set_active(%struct._WINDOW_REC* %62), !dbg !889
  br label %63, !dbg !890

; <label>:63:                                     ; preds = %61, %52
  %64 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !891
  %65 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %64, i32 0, i32 4, !dbg !892
  %66 = load %struct._GSList*, %struct._GSList** %65, align 8, !dbg !892
  %67 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !893
  %68 = bitcast %struct._WI_ITEM_REC* %67 to i8*, !dbg !893
  %69 = call %struct._GSList* @g_slist_append(%struct._GSList* %66, i8* %68), !dbg !894
  %70 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !895
  %71 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %70, i32 0, i32 4, !dbg !896
  store %struct._GSList* %69, %struct._GSList** %71, align 8, !dbg !897
  %72 = load i32, i32* %8, align 4, !dbg !898
  %73 = icmp ne i32 %72, 0, !dbg !898
  br i1 %73, label %74, label %78, !dbg !900

; <label>:74:                                     ; preds = %63
  %75 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !901
  %76 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !902
  %77 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0), i32 2, %struct._WINDOW_REC* %75, %struct._WI_ITEM_REC* %76), !dbg !903
  br label %78, !dbg !903

; <label>:78:                                     ; preds = %74, %63
  %79 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !904
  %80 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %79, i32 0, i32 4, !dbg !906
  %81 = load %struct._GSList*, %struct._GSList** %80, align 8, !dbg !906
  %82 = call i32 @g_slist_length(%struct._GSList* %81), !dbg !907
  %83 = icmp eq i32 %82, 1, !dbg !908
  br i1 %83, label %90, label %84, !dbg !909

; <label>:84:                                     ; preds = %78
  %85 = load i32, i32* %7, align 4, !dbg !910
  %86 = icmp ne i32 %85, 0, !dbg !910
  br i1 %86, label %95, label %87, !dbg !911

; <label>:87:                                     ; preds = %84
  %88 = call i32 @settings_get_bool(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0)), !dbg !912
  %89 = icmp ne i32 %88, 0, !dbg !912
  br i1 %89, label %90, label %95, !dbg !914

; <label>:90:                                     ; preds = %87, %78
  %91 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !916
  %92 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %91, i32 0, i32 5, !dbg !918
  store %struct._WI_ITEM_REC* null, %struct._WI_ITEM_REC** %92, align 8, !dbg !919
  %93 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !920
  %94 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !921
  call void @window_item_set_active(%struct._WINDOW_REC* %93, %struct._WI_ITEM_REC* %94), !dbg !922
  br label %95, !dbg !923

; <label>:95:                                     ; preds = %13, %20, %29, %90, %87, %84
  ret void, !dbg !924
}

; Function Attrs: nounwind uwtable
define void @window_item_remove(%struct._WI_ITEM_REC*) #0 !dbg !925 {
  %2 = alloca %struct._WI_ITEM_REC*, align 8
  store %struct._WI_ITEM_REC* %0, %struct._WI_ITEM_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %2, metadata !926, metadata !785), !dbg !927
  %3 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %2, align 8, !dbg !928
  call void @window_item_remove_signal(%struct._WI_ITEM_REC* %3, i32 1), !dbg !929
  ret void, !dbg !930
}

; Function Attrs: nounwind uwtable
define internal void @window_item_remove_signal(%struct._WI_ITEM_REC*, i32) #0 !dbg !931 {
  %3 = alloca %struct._WI_ITEM_REC*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._WINDOW_REC*, align 8
  store %struct._WI_ITEM_REC* %0, %struct._WI_ITEM_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %3, metadata !934, metadata !785), !dbg !935
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !936, metadata !785), !dbg !937
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %5, metadata !938, metadata !785), !dbg !939
  br label %6, !dbg !940, !llvm.loop !941

; <label>:6:                                      ; preds = %2
  %7 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %3, align 8, !dbg !942
  %8 = icmp ne %struct._WI_ITEM_REC* %7, null, !dbg !946
  br i1 %8, label %9, label %10, !dbg !942

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !947

; <label>:10:                                     ; preds = %6
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.window_item_remove_signal, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)), !dbg !950
  br label %59, !dbg !953

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !954

; <label>:12:                                     ; preds = %11
  %13 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %3, align 8, !dbg !956
  %14 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %13, i32 0, i32 3, !dbg !957
  %15 = load i8*, i8** %14, align 8, !dbg !957
  %16 = bitcast i8* %15 to %struct._WINDOW_REC*, !dbg !958
  store %struct._WINDOW_REC* %16, %struct._WINDOW_REC** %5, align 8, !dbg !959
  %17 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !960
  %18 = icmp eq %struct._WINDOW_REC* %17, null, !dbg !962
  br i1 %18, label %19, label %20, !dbg !963

; <label>:19:                                     ; preds = %12
  br label %59, !dbg !964

; <label>:20:                                     ; preds = %12
  %21 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %3, align 8, !dbg !965
  %22 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %21, i32 0, i32 3, !dbg !966
  store i8* null, i8** %22, align 8, !dbg !967
  %23 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !968
  %24 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %23, i32 0, i32 4, !dbg !969
  %25 = load %struct._GSList*, %struct._GSList** %24, align 8, !dbg !969
  %26 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %3, align 8, !dbg !970
  %27 = bitcast %struct._WI_ITEM_REC* %26 to i8*, !dbg !970
  %28 = call %struct._GSList* @g_slist_remove(%struct._GSList* %25, i8* %27), !dbg !971
  %29 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !972
  %30 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %29, i32 0, i32 4, !dbg !973
  store %struct._GSList* %28, %struct._GSList** %30, align 8, !dbg !974
  %31 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !975
  %32 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %31, i32 0, i32 5, !dbg !977
  %33 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %32, align 8, !dbg !977
  %34 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %3, align 8, !dbg !978
  %35 = icmp eq %struct._WI_ITEM_REC* %33, %34, !dbg !979
  br i1 %35, label %36, label %52, !dbg !980

; <label>:36:                                     ; preds = %20
  %37 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !981
  %38 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !983
  %39 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %38, i32 0, i32 4, !dbg !984
  %40 = load %struct._GSList*, %struct._GSList** %39, align 8, !dbg !984
  %41 = icmp eq %struct._GSList* %40, null, !dbg !985
  br i1 %41, label %42, label %43, !dbg !983

; <label>:42:                                     ; preds = %36
  br label %49, !dbg !986

; <label>:43:                                     ; preds = %36
  %44 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !988
  %45 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %44, i32 0, i32 4, !dbg !989
  %46 = load %struct._GSList*, %struct._GSList** %45, align 8, !dbg !989
  %47 = getelementptr inbounds %struct._GSList, %struct._GSList* %46, i32 0, i32 0, !dbg !990
  %48 = load i8*, i8** %47, align 8, !dbg !990
  br label %49, !dbg !991

; <label>:49:                                     ; preds = %43, %42
  %50 = phi i8* [ null, %42 ], [ %48, %43 ], !dbg !993
  %51 = bitcast i8* %50 to %struct._WI_ITEM_REC*, !dbg !993
  call void @window_item_set_active(%struct._WINDOW_REC* %37, %struct._WI_ITEM_REC* %51), !dbg !995
  br label %52, !dbg !996

; <label>:52:                                     ; preds = %49, %20
  %53 = load i32, i32* %4, align 4, !dbg !997
  %54 = icmp ne i32 %53, 0, !dbg !997
  br i1 %54, label %55, label %59, !dbg !999

; <label>:55:                                     ; preds = %52
  %56 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !1000
  %57 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %3, align 8, !dbg !1001
  %58 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0), i32 2, %struct._WINDOW_REC* %56, %struct._WI_ITEM_REC* %57), !dbg !1002
  br label %59, !dbg !1002

; <label>:59:                                     ; preds = %10, %19, %55, %52
  ret void, !dbg !1003
}

; Function Attrs: nounwind uwtable
define void @window_item_destroy(%struct._WI_ITEM_REC*) #0 !dbg !1004 {
  %2 = alloca %struct._WI_ITEM_REC*, align 8
  store %struct._WI_ITEM_REC* %0, %struct._WI_ITEM_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %2, metadata !1005, metadata !785), !dbg !1006
  %3 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %2, align 8, !dbg !1007
  call void @window_item_remove(%struct._WI_ITEM_REC* %3), !dbg !1008
  %4 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %2, align 8, !dbg !1009
  %5 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %4, i32 0, i32 10, !dbg !1010
  %6 = load void (%struct._WI_ITEM_REC*)*, void (%struct._WI_ITEM_REC*)** %5, align 8, !dbg !1010
  %7 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %2, align 8, !dbg !1011
  call void %6(%struct._WI_ITEM_REC* %7), !dbg !1009
  ret void, !dbg !1012
}

; Function Attrs: nounwind uwtable
define void @window_item_change_server(%struct._WI_ITEM_REC*, i8*) #0 !dbg !1013 {
  %3 = alloca %struct._WI_ITEM_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._WINDOW_REC*, align 8
  store %struct._WI_ITEM_REC* %0, %struct._WI_ITEM_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %3, metadata !1016, metadata !785), !dbg !1017
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1018, metadata !785), !dbg !1019
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %5, metadata !1020, metadata !785), !dbg !1021
  br label %6, !dbg !1022, !llvm.loop !1023

; <label>:6:                                      ; preds = %2
  %7 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %3, align 8, !dbg !1024
  %8 = icmp ne %struct._WI_ITEM_REC* %7, null, !dbg !1028
  br i1 %8, label %9, label %10, !dbg !1024

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !1029

; <label>:10:                                     ; preds = %6
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.window_item_change_server, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)), !dbg !1032
  br label %35, !dbg !1035

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !1036

; <label>:12:                                     ; preds = %11
  %13 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %3, align 8, !dbg !1038
  %14 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %13, i32 0, i32 3, !dbg !1039
  %15 = load i8*, i8** %14, align 8, !dbg !1039
  %16 = bitcast i8* %15 to %struct._WINDOW_REC*, !dbg !1040
  store %struct._WINDOW_REC* %16, %struct._WINDOW_REC** %5, align 8, !dbg !1041
  %17 = load i8*, i8** %4, align 8, !dbg !1042
  %18 = bitcast i8* %17 to %struct._SERVER_REC*, !dbg !1042
  %19 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %3, align 8, !dbg !1043
  %20 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %19, i32 0, i32 4, !dbg !1044
  store %struct._SERVER_REC* %18, %struct._SERVER_REC** %20, align 8, !dbg !1045
  %21 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !1046
  %22 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %3, align 8, !dbg !1047
  %23 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0), i32 2, %struct._WINDOW_REC* %21, %struct._WI_ITEM_REC* %22), !dbg !1048
  %24 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !1049
  %25 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %24, i32 0, i32 5, !dbg !1051
  %26 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %25, align 8, !dbg !1051
  %27 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %3, align 8, !dbg !1052
  %28 = icmp eq %struct._WI_ITEM_REC* %26, %27, !dbg !1053
  br i1 %28, label %29, label %35, !dbg !1054

; <label>:29:                                     ; preds = %12
  %30 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !1055
  %31 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %3, align 8, !dbg !1057
  %32 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %31, i32 0, i32 4, !dbg !1058
  %33 = load %struct._SERVER_REC*, %struct._SERVER_REC** %32, align 8, !dbg !1058
  %34 = bitcast %struct._SERVER_REC* %33 to i8*, !dbg !1057
  call void @window_change_server(%struct._WINDOW_REC* %30, i8* %34), !dbg !1059
  br label %35, !dbg !1059

; <label>:35:                                     ; preds = %10, %29, %12
  ret void, !dbg !1060
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare i32 @signal_emit(i8*, i32, ...) #2

declare void @window_change_server(%struct._WINDOW_REC*, i8*) #2

; Function Attrs: nounwind uwtable
define void @window_item_set_active(%struct._WINDOW_REC*, %struct._WI_ITEM_REC*) #0 !dbg !1061 {
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca %struct._WI_ITEM_REC*, align 8
  %5 = alloca %struct._WINDOW_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !1064, metadata !785), !dbg !1065
  store %struct._WI_ITEM_REC* %1, %struct._WI_ITEM_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %4, metadata !1066, metadata !785), !dbg !1067
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %5, metadata !1068, metadata !785), !dbg !1069
  br label %6, !dbg !1070, !llvm.loop !1071

; <label>:6:                                      ; preds = %2
  %7 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1072
  %8 = icmp ne %struct._WINDOW_REC* %7, null, !dbg !1076
  br i1 %8, label %9, label %10, !dbg !1072

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !1077

; <label>:10:                                     ; preds = %6
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.window_item_set_active, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)), !dbg !1080
  br label %62, !dbg !1083

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !1084

; <label>:12:                                     ; preds = %11
  %13 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %4, align 8, !dbg !1086
  %14 = icmp ne %struct._WI_ITEM_REC* %13, null, !dbg !1088
  br i1 %14, label %15, label %32, !dbg !1089

; <label>:15:                                     ; preds = %12
  %16 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %4, align 8, !dbg !1090
  %17 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %16, i32 0, i32 3, !dbg !1092
  %18 = load i8*, i8** %17, align 8, !dbg !1092
  %19 = bitcast i8* %18 to %struct._WINDOW_REC*, !dbg !1093
  store %struct._WINDOW_REC* %19, %struct._WINDOW_REC** %5, align 8, !dbg !1094
  %20 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !1095
  %21 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1097
  %22 = icmp ne %struct._WINDOW_REC* %20, %21, !dbg !1098
  br i1 %22, label %23, label %31, !dbg !1099

; <label>:23:                                     ; preds = %15
  %24 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %4, align 8, !dbg !1100
  call void @window_item_remove_signal(%struct._WI_ITEM_REC* %24, i32 0), !dbg !1102
  %25 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1103
  %26 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %4, align 8, !dbg !1104
  call void @window_item_add_signal(%struct._WINDOW_REC* %25, %struct._WI_ITEM_REC* %26, i32 0, i32 0), !dbg !1105
  %27 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1106
  %28 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %4, align 8, !dbg !1107
  %29 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !1108
  %30 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i32 3, %struct._WINDOW_REC* %27, %struct._WI_ITEM_REC* %28, %struct._WINDOW_REC* %29), !dbg !1109
  br label %31, !dbg !1110

; <label>:31:                                     ; preds = %23, %15
  br label %32, !dbg !1111

; <label>:32:                                     ; preds = %31, %12
  %33 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1112
  %34 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %33, i32 0, i32 5, !dbg !1114
  %35 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %34, align 8, !dbg !1114
  %36 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %4, align 8, !dbg !1115
  %37 = icmp ne %struct._WI_ITEM_REC* %35, %36, !dbg !1116
  br i1 %37, label %38, label %62, !dbg !1117

; <label>:38:                                     ; preds = %32
  %39 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %4, align 8, !dbg !1118
  %40 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1120
  %41 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %40, i32 0, i32 5, !dbg !1121
  store %struct._WI_ITEM_REC* %39, %struct._WI_ITEM_REC** %41, align 8, !dbg !1122
  %42 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %4, align 8, !dbg !1123
  %43 = icmp ne %struct._WI_ITEM_REC* %42, null, !dbg !1125
  br i1 %43, label %44, label %58, !dbg !1126

; <label>:44:                                     ; preds = %38
  %45 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1127
  %46 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %45, i32 0, i32 6, !dbg !1129
  %47 = load %struct._SERVER_REC*, %struct._SERVER_REC** %46, align 8, !dbg !1129
  %48 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %4, align 8, !dbg !1130
  %49 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %48, i32 0, i32 4, !dbg !1131
  %50 = load %struct._SERVER_REC*, %struct._SERVER_REC** %49, align 8, !dbg !1131
  %51 = icmp ne %struct._SERVER_REC* %47, %50, !dbg !1132
  br i1 %51, label %52, label %58, !dbg !1133

; <label>:52:                                     ; preds = %44
  %53 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1134
  %54 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %4, align 8, !dbg !1135
  %55 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %54, i32 0, i32 4, !dbg !1136
  %56 = load %struct._SERVER_REC*, %struct._SERVER_REC** %55, align 8, !dbg !1136
  %57 = bitcast %struct._SERVER_REC* %56 to i8*, !dbg !1135
  call void @window_change_server(%struct._WINDOW_REC* %53, i8* %57), !dbg !1137
  br label %58, !dbg !1137

; <label>:58:                                     ; preds = %52, %44, %38
  %59 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1138
  %60 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %4, align 8, !dbg !1139
  %61 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 2, %struct._WINDOW_REC* %59, %struct._WI_ITEM_REC* %60), !dbg !1140
  br label %62, !dbg !1141

; <label>:62:                                     ; preds = %10, %58, %32
  ret void, !dbg !1142
}

; Function Attrs: nounwind uwtable
define i32 @window_item_is_active(%struct._WI_ITEM_REC*) #0 !dbg !1143 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._WI_ITEM_REC*, align 8
  %4 = alloca %struct._WINDOW_REC*, align 8
  store %struct._WI_ITEM_REC* %0, %struct._WI_ITEM_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %3, metadata !1146, metadata !785), !dbg !1147
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %4, metadata !1148, metadata !785), !dbg !1149
  %5 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %3, align 8, !dbg !1150
  %6 = icmp eq %struct._WI_ITEM_REC* %5, null, !dbg !1152
  br i1 %6, label %7, label %8, !dbg !1153

; <label>:7:                                      ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !1154
  br label %23, !dbg !1154

; <label>:8:                                      ; preds = %1
  %9 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %3, align 8, !dbg !1155
  %10 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %9, i32 0, i32 3, !dbg !1156
  %11 = load i8*, i8** %10, align 8, !dbg !1156
  %12 = bitcast i8* %11 to %struct._WINDOW_REC*, !dbg !1157
  store %struct._WINDOW_REC* %12, %struct._WINDOW_REC** %4, align 8, !dbg !1158
  %13 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !1159
  %14 = icmp eq %struct._WINDOW_REC* %13, null, !dbg !1161
  br i1 %14, label %15, label %16, !dbg !1162

; <label>:15:                                     ; preds = %8
  store i32 0, i32* %2, align 4, !dbg !1163
  br label %23, !dbg !1163

; <label>:16:                                     ; preds = %8
  %17 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !1164
  %18 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %17, i32 0, i32 5, !dbg !1165
  %19 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %18, align 8, !dbg !1165
  %20 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %3, align 8, !dbg !1166
  %21 = icmp eq %struct._WI_ITEM_REC* %19, %20, !dbg !1167
  %22 = zext i1 %21 to i32, !dbg !1167
  store i32 %22, i32* %2, align 4, !dbg !1168
  br label %23, !dbg !1168

; <label>:23:                                     ; preds = %16, %15, %7
  %24 = load i32, i32* %2, align 4, !dbg !1169
  ret i32 %24, !dbg !1169
}

; Function Attrs: nounwind uwtable
define void @window_item_prev(%struct._WINDOW_REC*) #0 !dbg !1170 {
  %2 = alloca %struct._WINDOW_REC*, align 8
  %3 = alloca %struct._WI_ITEM_REC*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct._WI_ITEM_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %2, metadata !1173, metadata !785), !dbg !1174
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %3, metadata !1175, metadata !785), !dbg !1176
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !1177, metadata !785), !dbg !1178
  br label %6, !dbg !1179, !llvm.loop !1180

; <label>:6:                                      ; preds = %1
  %7 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !1181
  %8 = icmp ne %struct._WINDOW_REC* %7, null, !dbg !1185
  br i1 %8, label %9, label %10, !dbg !1181

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !1186

; <label>:10:                                     ; preds = %6
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.window_item_prev, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)), !dbg !1189
  br label %47, !dbg !1192

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !1193

; <label>:12:                                     ; preds = %11
  store %struct._WI_ITEM_REC* null, %struct._WI_ITEM_REC** %3, align 8, !dbg !1195
  %13 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !1196
  %14 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %13, i32 0, i32 4, !dbg !1198
  %15 = load %struct._GSList*, %struct._GSList** %14, align 8, !dbg !1198
  store %struct._GSList* %15, %struct._GSList** %4, align 8, !dbg !1199
  br label %16, !dbg !1200

; <label>:16:                                     ; preds = %37, %12
  %17 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1201
  %18 = icmp ne %struct._GSList* %17, null, !dbg !1204
  br i1 %18, label %19, label %41, !dbg !1205

; <label>:19:                                     ; preds = %16
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %5, metadata !1206, metadata !785), !dbg !1208
  %20 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1209
  %21 = getelementptr inbounds %struct._GSList, %struct._GSList* %20, i32 0, i32 0, !dbg !1210
  %22 = load i8*, i8** %21, align 8, !dbg !1210
  %23 = bitcast i8* %22 to %struct._WI_ITEM_REC*, !dbg !1209
  store %struct._WI_ITEM_REC* %23, %struct._WI_ITEM_REC** %5, align 8, !dbg !1208
  %24 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %5, align 8, !dbg !1211
  %25 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !1213
  %26 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %25, i32 0, i32 5, !dbg !1214
  %27 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %26, align 8, !dbg !1214
  %28 = icmp ne %struct._WI_ITEM_REC* %24, %27, !dbg !1215
  br i1 %28, label %29, label %31, !dbg !1216

; <label>:29:                                     ; preds = %19
  %30 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %5, align 8, !dbg !1217
  store %struct._WI_ITEM_REC* %30, %struct._WI_ITEM_REC** %3, align 8, !dbg !1218
  br label %36, !dbg !1219

; <label>:31:                                     ; preds = %19
  %32 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %3, align 8, !dbg !1220
  %33 = icmp ne %struct._WI_ITEM_REC* %32, null, !dbg !1223
  br i1 %33, label %34, label %35, !dbg !1224

; <label>:34:                                     ; preds = %31
  br label %41, !dbg !1225

; <label>:35:                                     ; preds = %31
  br label %36

; <label>:36:                                     ; preds = %35, %29
  br label %37, !dbg !1227

; <label>:37:                                     ; preds = %36
  %38 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1228
  %39 = getelementptr inbounds %struct._GSList, %struct._GSList* %38, i32 0, i32 1, !dbg !1230
  %40 = load %struct._GSList*, %struct._GSList** %39, align 8, !dbg !1230
  store %struct._GSList* %40, %struct._GSList** %4, align 8, !dbg !1231
  br label %16, !dbg !1232, !llvm.loop !1233

; <label>:41:                                     ; preds = %34, %16
  %42 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %3, align 8, !dbg !1235
  %43 = icmp ne %struct._WI_ITEM_REC* %42, null, !dbg !1237
  br i1 %43, label %44, label %47, !dbg !1238

; <label>:44:                                     ; preds = %41
  %45 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !1239
  %46 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %3, align 8, !dbg !1240
  call void @window_item_set_active(%struct._WINDOW_REC* %45, %struct._WI_ITEM_REC* %46), !dbg !1241
  br label %47, !dbg !1241

; <label>:47:                                     ; preds = %10, %44, %41
  ret void, !dbg !1242
}

; Function Attrs: nounwind uwtable
define void @window_item_next(%struct._WINDOW_REC*) #0 !dbg !1243 {
  %2 = alloca %struct._WINDOW_REC*, align 8
  %3 = alloca %struct._WI_ITEM_REC*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %2, metadata !1244, metadata !785), !dbg !1245
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %3, metadata !1246, metadata !785), !dbg !1247
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !1248, metadata !785), !dbg !1249
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1250, metadata !785), !dbg !1251
  br label %7, !dbg !1252, !llvm.loop !1253

; <label>:7:                                      ; preds = %1
  %8 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !1254
  %9 = icmp ne %struct._WINDOW_REC* %8, null, !dbg !1258
  br i1 %9, label %10, label %11, !dbg !1254

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !1259

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.window_item_next, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)), !dbg !1262
  br label %53, !dbg !1265

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !1266

; <label>:13:                                     ; preds = %12
  store %struct._WI_ITEM_REC* null, %struct._WI_ITEM_REC** %3, align 8, !dbg !1268
  store i32 0, i32* %5, align 4, !dbg !1269
  %14 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !1270
  %15 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %14, i32 0, i32 4, !dbg !1272
  %16 = load %struct._GSList*, %struct._GSList** %15, align 8, !dbg !1272
  store %struct._GSList* %16, %struct._GSList** %4, align 8, !dbg !1273
  br label %17, !dbg !1274

; <label>:17:                                     ; preds = %43, %13
  %18 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1275
  %19 = icmp ne %struct._GSList* %18, null, !dbg !1278
  br i1 %19, label %20, label %47, !dbg !1279

; <label>:20:                                     ; preds = %17
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !1280, metadata !785), !dbg !1282
  %21 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1283
  %22 = getelementptr inbounds %struct._GSList, %struct._GSList* %21, i32 0, i32 0, !dbg !1284
  %23 = load i8*, i8** %22, align 8, !dbg !1284
  %24 = bitcast i8* %23 to %struct._WI_ITEM_REC*, !dbg !1283
  store %struct._WI_ITEM_REC* %24, %struct._WI_ITEM_REC** %6, align 8, !dbg !1282
  %25 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1285
  %26 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !1287
  %27 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %26, i32 0, i32 5, !dbg !1288
  %28 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %27, align 8, !dbg !1288
  %29 = icmp eq %struct._WI_ITEM_REC* %25, %28, !dbg !1289
  br i1 %29, label %30, label %31, !dbg !1290

; <label>:30:                                     ; preds = %20
  store i32 1, i32* %5, align 4, !dbg !1291
  br label %42, !dbg !1292

; <label>:31:                                     ; preds = %20
  %32 = load i32, i32* %5, align 4, !dbg !1293
  %33 = icmp ne i32 %32, 0, !dbg !1293
  br i1 %33, label %34, label %36, !dbg !1296

; <label>:34:                                     ; preds = %31
  %35 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1297
  store %struct._WI_ITEM_REC* %35, %struct._WI_ITEM_REC** %3, align 8, !dbg !1299
  br label %47, !dbg !1300

; <label>:36:                                     ; preds = %31
  %37 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %3, align 8, !dbg !1301
  %38 = icmp eq %struct._WI_ITEM_REC* %37, null, !dbg !1303
  br i1 %38, label %39, label %41, !dbg !1304

; <label>:39:                                     ; preds = %36
  %40 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1305
  store %struct._WI_ITEM_REC* %40, %struct._WI_ITEM_REC** %3, align 8, !dbg !1306
  br label %41, !dbg !1307

; <label>:41:                                     ; preds = %39, %36
  br label %42

; <label>:42:                                     ; preds = %41, %30
  br label %43, !dbg !1308

; <label>:43:                                     ; preds = %42
  %44 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1309
  %45 = getelementptr inbounds %struct._GSList, %struct._GSList* %44, i32 0, i32 1, !dbg !1311
  %46 = load %struct._GSList*, %struct._GSList** %45, align 8, !dbg !1311
  store %struct._GSList* %46, %struct._GSList** %4, align 8, !dbg !1312
  br label %17, !dbg !1313, !llvm.loop !1314

; <label>:47:                                     ; preds = %34, %17
  %48 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %3, align 8, !dbg !1316
  %49 = icmp ne %struct._WI_ITEM_REC* %48, null, !dbg !1318
  br i1 %49, label %50, label %53, !dbg !1319

; <label>:50:                                     ; preds = %47
  %51 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !1320
  %52 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %3, align 8, !dbg !1321
  call void @window_item_set_active(%struct._WINDOW_REC* %51, %struct._WI_ITEM_REC* %52), !dbg !1322
  br label %53, !dbg !1322

; <label>:53:                                     ; preds = %11, %50, %47
  ret void, !dbg !1323
}

; Function Attrs: nounwind uwtable
define %struct._WI_ITEM_REC* @window_item_find_window(%struct._WINDOW_REC*, i8*, i8*) #0 !dbg !1324 {
  %4 = alloca %struct._WI_ITEM_REC*, align 8
  %5 = alloca %struct._WINDOW_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct._GSList*, align 8
  %9 = alloca %struct._WI_ITEM_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %5, metadata !1327, metadata !785), !dbg !1328
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1329, metadata !785), !dbg !1330
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1331, metadata !785), !dbg !1332
  call void @llvm.dbg.declare(metadata %struct._GSList** %8, metadata !1333, metadata !785), !dbg !1334
  %10 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !1335
  %11 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %10, i32 0, i32 4, !dbg !1337
  %12 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !1337
  store %struct._GSList* %12, %struct._GSList** %8, align 8, !dbg !1338
  br label %13, !dbg !1339

; <label>:13:                                     ; preds = %52, %3
  %14 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1340
  %15 = icmp ne %struct._GSList* %14, null, !dbg !1343
  br i1 %15, label %16, label %56, !dbg !1344

; <label>:16:                                     ; preds = %13
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %9, metadata !1345, metadata !785), !dbg !1347
  %17 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1348
  %18 = getelementptr inbounds %struct._GSList, %struct._GSList* %17, i32 0, i32 0, !dbg !1349
  %19 = load i8*, i8** %18, align 8, !dbg !1349
  %20 = bitcast i8* %19 to %struct._WI_ITEM_REC*, !dbg !1348
  store %struct._WI_ITEM_REC* %20, %struct._WI_ITEM_REC** %9, align 8, !dbg !1347
  %21 = load i8*, i8** %6, align 8, !dbg !1350
  %22 = icmp eq i8* %21, null, !dbg !1352
  br i1 %22, label %30, label %23, !dbg !1353

; <label>:23:                                     ; preds = %16
  %24 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %9, align 8, !dbg !1354
  %25 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %24, i32 0, i32 4, !dbg !1356
  %26 = load %struct._SERVER_REC*, %struct._SERVER_REC** %25, align 8, !dbg !1356
  %27 = load i8*, i8** %6, align 8, !dbg !1357
  %28 = bitcast i8* %27 to %struct._SERVER_REC*, !dbg !1357
  %29 = icmp eq %struct._SERVER_REC* %26, %28, !dbg !1358
  br i1 %29, label %30, label %51, !dbg !1359

; <label>:30:                                     ; preds = %23, %16
  %31 = load i8*, i8** %7, align 8, !dbg !1360
  %32 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %9, align 8, !dbg !1361
  %33 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %32, i32 0, i32 5, !dbg !1362
  %34 = load i8*, i8** %33, align 8, !dbg !1362
  %35 = call i32 @g_ascii_strcasecmp(i8* %31, i8* %34), !dbg !1363
  %36 = icmp eq i32 %35, 0, !dbg !1364
  br i1 %36, label %49, label %37, !dbg !1365

; <label>:37:                                     ; preds = %30
  %38 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %9, align 8, !dbg !1366
  %39 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %38, i32 0, i32 6, !dbg !1367
  %40 = load i8*, i8** %39, align 8, !dbg !1367
  %41 = icmp ne i8* %40, null, !dbg !1366
  br i1 %41, label %42, label %51, !dbg !1368

; <label>:42:                                     ; preds = %37
  %43 = load i8*, i8** %7, align 8, !dbg !1369
  %44 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %9, align 8, !dbg !1371
  %45 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %44, i32 0, i32 6, !dbg !1372
  %46 = load i8*, i8** %45, align 8, !dbg !1372
  %47 = call i32 @g_ascii_strcasecmp(i8* %43, i8* %46), !dbg !1373
  %48 = icmp eq i32 %47, 0, !dbg !1374
  br i1 %48, label %49, label %51, !dbg !1375

; <label>:49:                                     ; preds = %42, %30
  %50 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %9, align 8, !dbg !1377
  store %struct._WI_ITEM_REC* %50, %struct._WI_ITEM_REC** %4, align 8, !dbg !1378
  br label %57, !dbg !1378

; <label>:51:                                     ; preds = %42, %37, %23
  br label %52, !dbg !1379

; <label>:52:                                     ; preds = %51
  %53 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1380
  %54 = getelementptr inbounds %struct._GSList, %struct._GSList* %53, i32 0, i32 1, !dbg !1382
  %55 = load %struct._GSList*, %struct._GSList** %54, align 8, !dbg !1382
  store %struct._GSList* %55, %struct._GSList** %8, align 8, !dbg !1383
  br label %13, !dbg !1384, !llvm.loop !1385

; <label>:56:                                     ; preds = %13
  store %struct._WI_ITEM_REC* null, %struct._WI_ITEM_REC** %4, align 8, !dbg !1387
  br label %57, !dbg !1387

; <label>:57:                                     ; preds = %56, %49
  %58 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %4, align 8, !dbg !1388
  ret %struct._WI_ITEM_REC* %58, !dbg !1388
}

declare i32 @g_ascii_strcasecmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define %struct._WI_ITEM_REC* @window_item_find(i8*, i8*) #0 !dbg !1389 {
  %3 = alloca %struct._WI_ITEM_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  %7 = alloca %struct._GSList*, align 8
  %8 = alloca %struct._WINDOW_REC*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1392, metadata !785), !dbg !1393
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1394, metadata !785), !dbg !1395
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !1396, metadata !785), !dbg !1397
  call void @llvm.dbg.declare(metadata %struct._GSList** %7, metadata !1398, metadata !785), !dbg !1399
  br label %9, !dbg !1400, !llvm.loop !1401

; <label>:9:                                      ; preds = %2
  %10 = load i8*, i8** %5, align 8, !dbg !1402
  %11 = icmp ne i8* %10, null, !dbg !1406
  br i1 %11, label %12, label %13, !dbg !1402

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !1407

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.window_item_find, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0)), !dbg !1410
  store %struct._WI_ITEM_REC* null, %struct._WI_ITEM_REC** %3, align 8, !dbg !1413
  br label %39, !dbg !1413

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !1414

; <label>:15:                                     ; preds = %14
  %16 = load %struct._GSList*, %struct._GSList** @windows, align 8, !dbg !1416
  store %struct._GSList* %16, %struct._GSList** %7, align 8, !dbg !1418
  br label %17, !dbg !1419

; <label>:17:                                     ; preds = %34, %15
  %18 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1420
  %19 = icmp ne %struct._GSList* %18, null, !dbg !1423
  br i1 %19, label %20, label %38, !dbg !1424

; <label>:20:                                     ; preds = %17
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %8, metadata !1425, metadata !785), !dbg !1427
  %21 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1428
  %22 = getelementptr inbounds %struct._GSList, %struct._GSList* %21, i32 0, i32 0, !dbg !1429
  %23 = load i8*, i8** %22, align 8, !dbg !1429
  %24 = bitcast i8* %23 to %struct._WINDOW_REC*, !dbg !1428
  store %struct._WINDOW_REC* %24, %struct._WINDOW_REC** %8, align 8, !dbg !1427
  %25 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %8, align 8, !dbg !1430
  %26 = load i8*, i8** %4, align 8, !dbg !1431
  %27 = load i8*, i8** %5, align 8, !dbg !1432
  %28 = call %struct._WI_ITEM_REC* @window_item_find_window(%struct._WINDOW_REC* %25, i8* %26, i8* %27), !dbg !1433
  store %struct._WI_ITEM_REC* %28, %struct._WI_ITEM_REC** %6, align 8, !dbg !1434
  %29 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1435
  %30 = icmp ne %struct._WI_ITEM_REC* %29, null, !dbg !1437
  br i1 %30, label %31, label %33, !dbg !1438

; <label>:31:                                     ; preds = %20
  %32 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1439
  store %struct._WI_ITEM_REC* %32, %struct._WI_ITEM_REC** %3, align 8, !dbg !1441
  br label %39, !dbg !1441

; <label>:33:                                     ; preds = %20
  br label %34, !dbg !1442

; <label>:34:                                     ; preds = %33
  %35 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1443
  %36 = getelementptr inbounds %struct._GSList, %struct._GSList* %35, i32 0, i32 1, !dbg !1445
  %37 = load %struct._GSList*, %struct._GSList** %36, align 8, !dbg !1445
  store %struct._GSList* %37, %struct._GSList** %7, align 8, !dbg !1446
  br label %17, !dbg !1447, !llvm.loop !1448

; <label>:38:                                     ; preds = %17
  store %struct._WI_ITEM_REC* null, %struct._WI_ITEM_REC** %3, align 8, !dbg !1450
  br label %39, !dbg !1450

; <label>:39:                                     ; preds = %38, %31, %13
  %40 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %3, align 8, !dbg !1451
  ret %struct._WI_ITEM_REC* %40, !dbg !1451
}

; Function Attrs: nounwind uwtable
define void @window_item_create(%struct._WI_ITEM_REC*, i32) #0 !dbg !1452 {
  %3 = alloca %struct._WI_ITEM_REC*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._WINDOW_REC*, align 8
  %6 = alloca %struct.WINDOW_BIND_REC*, align 8
  %7 = alloca %struct._GSList*, align 8
  %8 = alloca %struct._GSList*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct._WINDOW_REC*, align 8
  store %struct._WI_ITEM_REC* %0, %struct._WI_ITEM_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %3, metadata !1453, metadata !785), !dbg !1454
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1455, metadata !785), !dbg !1456
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %5, metadata !1457, metadata !785), !dbg !1458
  call void @llvm.dbg.declare(metadata %struct.WINDOW_BIND_REC** %6, metadata !1459, metadata !785), !dbg !1467
  call void @llvm.dbg.declare(metadata %struct._GSList** %7, metadata !1468, metadata !785), !dbg !1469
  call void @llvm.dbg.declare(metadata %struct._GSList** %8, metadata !1470, metadata !785), !dbg !1471
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1472, metadata !785), !dbg !1473
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1474, metadata !785), !dbg !1475
  br label %12, !dbg !1476, !llvm.loop !1477

; <label>:12:                                     ; preds = %2
  %13 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %3, align 8, !dbg !1478
  %14 = icmp ne %struct._WI_ITEM_REC* %13, null, !dbg !1482
  br i1 %14, label %15, label %16, !dbg !1478

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !1483

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.window_item_create, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)), !dbg !1486
  br label %126, !dbg !1489

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !1490

; <label>:18:                                     ; preds = %17
  %19 = call i32 @settings_get_bool(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0)), !dbg !1492
  store i32 %19, i32* %10, align 4, !dbg !1493
  store i32 1, i32* %9, align 4, !dbg !1494
  store %struct._WINDOW_REC* null, %struct._WINDOW_REC** %5, align 8, !dbg !1495
  %20 = call %struct._GSList* @windows_get_sorted(), !dbg !1496
  store %struct._GSList* %20, %struct._GSList** %8, align 8, !dbg !1497
  %21 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1498
  store %struct._GSList* %21, %struct._GSList** %7, align 8, !dbg !1500
  br label %22, !dbg !1501

; <label>:22:                                     ; preds = %92, %18
  %23 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1502
  %24 = icmp ne %struct._GSList* %23, null, !dbg !1505
  br i1 %24, label %25, label %96, !dbg !1506

; <label>:25:                                     ; preds = %22
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %11, metadata !1507, metadata !785), !dbg !1509
  %26 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1510
  %27 = getelementptr inbounds %struct._GSList, %struct._GSList* %26, i32 0, i32 0, !dbg !1511
  %28 = load i8*, i8** %27, align 8, !dbg !1511
  %29 = bitcast i8* %28 to %struct._WINDOW_REC*, !dbg !1510
  store %struct._WINDOW_REC* %29, %struct._WINDOW_REC** %11, align 8, !dbg !1509
  %30 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %3, align 8, !dbg !1512
  %31 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %30, i32 0, i32 4, !dbg !1514
  %32 = load %struct._SERVER_REC*, %struct._SERVER_REC** %31, align 8, !dbg !1514
  %33 = icmp ne %struct._SERVER_REC* %32, null, !dbg !1515
  br i1 %33, label %34, label %60, !dbg !1516

; <label>:34:                                     ; preds = %25
  %35 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %11, align 8, !dbg !1517
  %36 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %3, align 8, !dbg !1519
  %37 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %36, i32 0, i32 4, !dbg !1520
  %38 = load %struct._SERVER_REC*, %struct._SERVER_REC** %37, align 8, !dbg !1520
  %39 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %38, i32 0, i32 6, !dbg !1521
  %40 = load i8*, i8** %39, align 8, !dbg !1521
  %41 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %3, align 8, !dbg !1522
  %42 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %41, i32 0, i32 5, !dbg !1523
  %43 = load i8*, i8** %42, align 8, !dbg !1523
  %44 = call %struct.WINDOW_BIND_REC* @window_bind_find(%struct._WINDOW_REC* %35, i8* %40, i8* %43), !dbg !1524
  store %struct.WINDOW_BIND_REC* %44, %struct.WINDOW_BIND_REC** %6, align 8, !dbg !1525
  %45 = load %struct.WINDOW_BIND_REC*, %struct.WINDOW_BIND_REC** %6, align 8, !dbg !1526
  %46 = icmp ne %struct.WINDOW_BIND_REC* %45, null, !dbg !1528
  br i1 %46, label %47, label %59, !dbg !1529

; <label>:47:                                     ; preds = %34
  %48 = load %struct.WINDOW_BIND_REC*, %struct.WINDOW_BIND_REC** %6, align 8, !dbg !1530
  %49 = getelementptr inbounds %struct.WINDOW_BIND_REC, %struct.WINDOW_BIND_REC* %48, i32 0, i32 2, !dbg !1533
  %50 = load i8, i8* %49, align 8, !dbg !1533
  %51 = and i8 %50, 1, !dbg !1533
  %52 = zext i8 %51 to i32, !dbg !1533
  %53 = icmp ne i32 %52, 0, !dbg !1530
  br i1 %53, label %57, label %54, !dbg !1534

; <label>:54:                                     ; preds = %47
  %55 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %11, align 8, !dbg !1535
  %56 = load %struct.WINDOW_BIND_REC*, %struct.WINDOW_BIND_REC** %6, align 8, !dbg !1536
  call void @window_bind_destroy(%struct._WINDOW_REC* %55, %struct.WINDOW_BIND_REC* %56), !dbg !1537
  br label %57, !dbg !1537

; <label>:57:                                     ; preds = %54, %47
  %58 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %11, align 8, !dbg !1538
  store %struct._WINDOW_REC* %58, %struct._WINDOW_REC** %5, align 8, !dbg !1539
  store i32 0, i32* %9, align 4, !dbg !1540
  br label %96, !dbg !1541

; <label>:59:                                     ; preds = %34
  br label %60, !dbg !1542

; <label>:60:                                     ; preds = %59, %25
  %61 = load i32, i32* %10, align 4, !dbg !1543
  %62 = icmp ne i32 %61, 0, !dbg !1543
  br i1 %62, label %63, label %91, !dbg !1545

; <label>:63:                                     ; preds = %60
  %64 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %11, align 8, !dbg !1546
  %65 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %64, i32 0, i32 4, !dbg !1548
  %66 = load %struct._GSList*, %struct._GSList** %65, align 8, !dbg !1548
  %67 = icmp eq %struct._GSList* %66, null, !dbg !1549
  br i1 %67, label %68, label %91, !dbg !1550

; <label>:68:                                     ; preds = %63
  %69 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %11, align 8, !dbg !1551
  %70 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %69, i32 0, i32 1, !dbg !1552
  %71 = load i8*, i8** %70, align 8, !dbg !1552
  %72 = icmp eq i8* %71, null, !dbg !1553
  br i1 %72, label %73, label %91, !dbg !1554

; <label>:73:                                     ; preds = %68
  %74 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %11, align 8, !dbg !1555
  %75 = call i32 @window_bind_has_sticky(%struct._WINDOW_REC* %74), !dbg !1556
  %76 = icmp ne i32 %75, 0, !dbg !1556
  br i1 %76, label %91, label %77, !dbg !1557

; <label>:77:                                     ; preds = %73
  %78 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !1558
  %79 = icmp eq %struct._WINDOW_REC* %78, null, !dbg !1559
  br i1 %79, label %89, label %80, !dbg !1560

; <label>:80:                                     ; preds = %77
  %81 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %11, align 8, !dbg !1561
  %82 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1562
  %83 = icmp eq %struct._WINDOW_REC* %81, %82, !dbg !1563
  br i1 %83, label %89, label %84, !dbg !1564

; <label>:84:                                     ; preds = %80
  %85 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !1565
  %86 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %85, i32 0, i32 10, !dbg !1566
  %87 = load %struct._GSList*, %struct._GSList** %86, align 8, !dbg !1566
  %88 = icmp ne %struct._GSList* %87, null, !dbg !1567
  br i1 %88, label %89, label %91, !dbg !1568

; <label>:89:                                     ; preds = %84, %80, %77
  %90 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %11, align 8, !dbg !1570
  store %struct._WINDOW_REC* %90, %struct._WINDOW_REC** %5, align 8, !dbg !1571
  br label %91, !dbg !1572

; <label>:91:                                     ; preds = %89, %84, %73, %68, %63, %60
  br label %92, !dbg !1573

; <label>:92:                                     ; preds = %91
  %93 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1574
  %94 = getelementptr inbounds %struct._GSList, %struct._GSList* %93, i32 0, i32 1, !dbg !1576
  %95 = load %struct._GSList*, %struct._GSList** %94, align 8, !dbg !1576
  store %struct._GSList* %95, %struct._GSList** %7, align 8, !dbg !1577
  br label %22, !dbg !1578, !llvm.loop !1579

; <label>:96:                                     ; preds = %57, %22
  %97 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1581
  call void @g_slist_free(%struct._GSList* %97), !dbg !1582
  %98 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !1583
  %99 = icmp eq %struct._WINDOW_REC* %98, null, !dbg !1585
  br i1 %99, label %100, label %105, !dbg !1586

; <label>:100:                                    ; preds = %96
  %101 = call i32 @settings_get_bool(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0)), !dbg !1587
  %102 = icmp ne i32 %101, 0, !dbg !1587
  br i1 %102, label %105, label %103, !dbg !1589

; <label>:103:                                    ; preds = %100
  %104 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1590
  store %struct._WINDOW_REC* %104, %struct._WINDOW_REC** %5, align 8, !dbg !1592
  br label %105, !dbg !1593

; <label>:105:                                    ; preds = %103, %100, %96
  %106 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !1594
  %107 = icmp eq %struct._WINDOW_REC* %106, null, !dbg !1596
  br i1 %107, label %108, label %117, !dbg !1597

; <label>:108:                                    ; preds = %105
  %109 = call i32 @settings_get_bool(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0)), !dbg !1598
  %110 = icmp ne i32 %109, 0, !dbg !1598
  br i1 %110, label %111, label %113, !dbg !1601

; <label>:111:                                    ; preds = %108
  %112 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0), i32 1, i8* inttoptr (i64 2 to i8*)), !dbg !1602
  br label %113, !dbg !1604

; <label>:113:                                    ; preds = %111, %108
  %114 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %3, align 8, !dbg !1605
  %115 = load i32, i32* %4, align 4, !dbg !1606
  %116 = call %struct._WINDOW_REC* @window_create(%struct._WI_ITEM_REC* %114, i32 %115), !dbg !1607
  store %struct._WINDOW_REC* %116, %struct._WINDOW_REC** %5, align 8, !dbg !1608
  br label %121, !dbg !1609

; <label>:117:                                    ; preds = %105
  %118 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !1610
  %119 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %3, align 8, !dbg !1612
  %120 = load i32, i32* %4, align 4, !dbg !1613
  call void @window_item_add(%struct._WINDOW_REC* %118, %struct._WI_ITEM_REC* %119, i32 %120), !dbg !1614
  br label %121

; <label>:121:                                    ; preds = %117, %113
  %122 = load i32, i32* %9, align 4, !dbg !1615
  %123 = icmp ne i32 %122, 0, !dbg !1615
  br i1 %123, label %124, label %126, !dbg !1617

; <label>:124:                                    ; preds = %121
  %125 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !1618
  call void @window_bind_remove_unsticky(%struct._WINDOW_REC* %125), !dbg !1619
  br label %126, !dbg !1619

; <label>:126:                                    ; preds = %16, %124, %121
  ret void, !dbg !1620
}

declare i32 @settings_get_bool(i8*) #2

declare %struct._GSList* @windows_get_sorted() #2

declare %struct.WINDOW_BIND_REC* @window_bind_find(%struct._WINDOW_REC*, i8*, i8*) #2

declare void @window_bind_destroy(%struct._WINDOW_REC*, %struct.WINDOW_BIND_REC*) #2

; Function Attrs: nounwind uwtable
define internal i32 @window_bind_has_sticky(%struct._WINDOW_REC*) #0 !dbg !1621 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct.WINDOW_BIND_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !1624, metadata !785), !dbg !1625
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !1626, metadata !785), !dbg !1627
  %6 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1628
  %7 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %6, i32 0, i32 10, !dbg !1630
  %8 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1630
  store %struct._GSList* %8, %struct._GSList** %4, align 8, !dbg !1631
  br label %9, !dbg !1632

; <label>:9:                                      ; preds = %25, %1
  %10 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1633
  %11 = icmp ne %struct._GSList* %10, null, !dbg !1636
  br i1 %11, label %12, label %29, !dbg !1637

; <label>:12:                                     ; preds = %9
  call void @llvm.dbg.declare(metadata %struct.WINDOW_BIND_REC** %5, metadata !1638, metadata !785), !dbg !1640
  %13 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1641
  %14 = getelementptr inbounds %struct._GSList, %struct._GSList* %13, i32 0, i32 0, !dbg !1642
  %15 = load i8*, i8** %14, align 8, !dbg !1642
  %16 = bitcast i8* %15 to %struct.WINDOW_BIND_REC*, !dbg !1641
  store %struct.WINDOW_BIND_REC* %16, %struct.WINDOW_BIND_REC** %5, align 8, !dbg !1640
  %17 = load %struct.WINDOW_BIND_REC*, %struct.WINDOW_BIND_REC** %5, align 8, !dbg !1643
  %18 = getelementptr inbounds %struct.WINDOW_BIND_REC, %struct.WINDOW_BIND_REC* %17, i32 0, i32 2, !dbg !1645
  %19 = load i8, i8* %18, align 8, !dbg !1645
  %20 = and i8 %19, 1, !dbg !1645
  %21 = zext i8 %20 to i32, !dbg !1645
  %22 = icmp ne i32 %21, 0, !dbg !1643
  br i1 %22, label %23, label %24, !dbg !1646

; <label>:23:                                     ; preds = %12
  store i32 1, i32* %2, align 4, !dbg !1647
  br label %30, !dbg !1647

; <label>:24:                                     ; preds = %12
  br label %25, !dbg !1648

; <label>:25:                                     ; preds = %24
  %26 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1649
  %27 = getelementptr inbounds %struct._GSList, %struct._GSList* %26, i32 0, i32 1, !dbg !1651
  %28 = load %struct._GSList*, %struct._GSList** %27, align 8, !dbg !1651
  store %struct._GSList* %28, %struct._GSList** %4, align 8, !dbg !1652
  br label %9, !dbg !1653, !llvm.loop !1654

; <label>:29:                                     ; preds = %9
  store i32 0, i32* %2, align 4, !dbg !1656
  br label %30, !dbg !1656

; <label>:30:                                     ; preds = %29, %23
  %31 = load i32, i32* %2, align 4, !dbg !1657
  ret i32 %31, !dbg !1657
}

declare void @g_slist_free(%struct._GSList*) #2

declare %struct._WINDOW_REC* @window_create(%struct._WI_ITEM_REC*, i32) #2

declare void @window_bind_remove_unsticky(%struct._WINDOW_REC*) #2

; Function Attrs: nounwind uwtable
define void @window_items_init() #0 !dbg !1658 {
  call void @settings_add_bool_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i32 0), !dbg !1659
  call void @settings_add_bool_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), i32 1), !dbg !1660
  call void @settings_add_bool_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0), i32 0), !dbg !1661
  call void @settings_add_bool_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i32 1), !dbg !1662
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i32 100, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*, %struct._WI_ITEM_REC*)* @signal_window_item_changed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1663
  ret void, !dbg !1664
}

declare void @settings_add_bool_module(i8*, i8*, i8*, i32) #2

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @signal_window_item_changed(%struct._WINDOW_REC*, %struct._WI_ITEM_REC*) #0 !dbg !1665 {
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca %struct._WI_ITEM_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !1666, metadata !785), !dbg !1667
  store %struct._WI_ITEM_REC* %1, %struct._WI_ITEM_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %4, metadata !1668, metadata !785), !dbg !1669
  br label %5, !dbg !1670, !llvm.loop !1671

; <label>:5:                                      ; preds = %2
  %6 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1672
  %7 = icmp ne %struct._WINDOW_REC* %6, null, !dbg !1676
  br i1 %7, label %8, label %9, !dbg !1672

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !1677

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.signal_window_item_changed, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)), !dbg !1680
  br label %28, !dbg !1683

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !1684

; <label>:11:                                     ; preds = %10
  %12 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1686
  %13 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %12, i32 0, i32 4, !dbg !1688
  %14 = load %struct._GSList*, %struct._GSList** %13, align 8, !dbg !1688
  %15 = call i32 @g_slist_length(%struct._GSList* %14), !dbg !1689
  %16 = icmp ugt i32 %15, 1, !dbg !1690
  br i1 %16, label %17, label %28, !dbg !1691

; <label>:17:                                     ; preds = %11
  %18 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %4, align 8, !dbg !1692
  %19 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %18, i32 0, i32 4, !dbg !1694
  %20 = load %struct._SERVER_REC*, %struct._SERVER_REC** %19, align 8, !dbg !1694
  %21 = bitcast %struct._SERVER_REC* %20 to i8*, !dbg !1692
  %22 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %4, align 8, !dbg !1695
  %23 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %22, i32 0, i32 5, !dbg !1696
  %24 = load i8*, i8** %23, align 8, !dbg !1696
  %25 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %4, align 8, !dbg !1697
  %26 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %25, i32 0, i32 5, !dbg !1698
  %27 = load i8*, i8** %26, align 8, !dbg !1698
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* %21, i8* %24, i32 262144, i32 7, i8* %27), !dbg !1699
  br label %28, !dbg !1700

; <label>:28:                                     ; preds = %9, %17, %11
  ret void, !dbg !1701
}

; Function Attrs: nounwind uwtable
define void @window_items_deinit() #0 !dbg !1702 {
  call void @signal_remove_full(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*, %struct._WI_ITEM_REC*)* @signal_window_item_changed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1703
  ret void, !dbg !1704
}

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare void @window_set_active(%struct._WINDOW_REC*) #2

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #2

declare i32 @g_slist_length(%struct._GSList*) #2

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #2

declare void @printformat_module(i8*, i8*, i8*, i32, i32, ...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!776, !777}
!llvm.ident = !{!778}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !316)
!1 = !DIFile(filename: "line264-window-items.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !10, !15, !24, !35, !43, !74}
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
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 14, size: 32, align: 32, elements: !37)
!36 = !DIFile(filename: "fe-windows.h", directory: "/home/lichi/Desktop/irssi/task1")
!37 = !{!38, !39, !40, !41, !42}
!38 = !DIEnumerator(name: "MAIN_WINDOW_TYPE_NONE", value: -1)
!39 = !DIEnumerator(name: "MAIN_WINDOW_TYPE_DEFAULT", value: 0)
!40 = !DIEnumerator(name: "MAIN_WINDOW_TYPE_HIDDEN", value: 1)
!41 = !DIEnumerator(name: "MAIN_WINDOW_TYPE_SPLIT", value: 2)
!42 = !DIEnumerator(name: "MAIN_WINDOW_TYPE_RSPLIT", value: 3)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !44, line: 10, size: 32, align: 32, elements: !45)
!44 = !DIFile(filename: "../../../src/core/levels.h", directory: "/home/lichi/Desktop/irssi/task1")
!45 = !{!46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73}
!46 = !DIEnumerator(name: "MSGLEVEL_CRAP", value: 1)
!47 = !DIEnumerator(name: "MSGLEVEL_MSGS", value: 2)
!48 = !DIEnumerator(name: "MSGLEVEL_PUBLIC", value: 4)
!49 = !DIEnumerator(name: "MSGLEVEL_NOTICES", value: 8)
!50 = !DIEnumerator(name: "MSGLEVEL_SNOTES", value: 16)
!51 = !DIEnumerator(name: "MSGLEVEL_CTCPS", value: 32)
!52 = !DIEnumerator(name: "MSGLEVEL_ACTIONS", value: 64)
!53 = !DIEnumerator(name: "MSGLEVEL_JOINS", value: 128)
!54 = !DIEnumerator(name: "MSGLEVEL_PARTS", value: 256)
!55 = !DIEnumerator(name: "MSGLEVEL_QUITS", value: 512)
!56 = !DIEnumerator(name: "MSGLEVEL_KICKS", value: 1024)
!57 = !DIEnumerator(name: "MSGLEVEL_MODES", value: 2048)
!58 = !DIEnumerator(name: "MSGLEVEL_TOPICS", value: 4096)
!59 = !DIEnumerator(name: "MSGLEVEL_WALLOPS", value: 8192)
!60 = !DIEnumerator(name: "MSGLEVEL_INVITES", value: 16384)
!61 = !DIEnumerator(name: "MSGLEVEL_NICKS", value: 32768)
!62 = !DIEnumerator(name: "MSGLEVEL_DCC", value: 65536)
!63 = !DIEnumerator(name: "MSGLEVEL_DCCMSGS", value: 131072)
!64 = !DIEnumerator(name: "MSGLEVEL_CLIENTNOTICE", value: 262144)
!65 = !DIEnumerator(name: "MSGLEVEL_CLIENTCRAP", value: 524288)
!66 = !DIEnumerator(name: "MSGLEVEL_CLIENTERROR", value: 1048576)
!67 = !DIEnumerator(name: "MSGLEVEL_HILIGHT", value: 2097152)
!68 = !DIEnumerator(name: "MSGLEVEL_ALL", value: 4194303)
!69 = !DIEnumerator(name: "MSGLEVEL_NOHILIGHT", value: 16777216)
!70 = !DIEnumerator(name: "MSGLEVEL_NO_ACT", value: 33554432)
!71 = !DIEnumerator(name: "MSGLEVEL_NEVER", value: 67108864)
!72 = !DIEnumerator(name: "MSGLEVEL_LASTLOG", value: 134217728)
!73 = !DIEnumerator(name: "MSGLEVEL_HIDDEN", value: 268435456)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !75, line: 3, size: 32, align: 32, elements: !76)
!75 = !DIFile(filename: "module-formats.h", directory: "/home/lichi/Desktop/irssi/task1")
!76 = !{!77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315}
!77 = !DIEnumerator(name: "TXT_MODULE_NAME", value: 0)
!78 = !DIEnumerator(name: "TXT_FILL_1", value: 1)
!79 = !DIEnumerator(name: "TXT_LINE_START", value: 2)
!80 = !DIEnumerator(name: "TXT_LINE_START_IRSSI", value: 3)
!81 = !DIEnumerator(name: "TXT_TIMESTAMP", value: 4)
!82 = !DIEnumerator(name: "TXT_SERVERTAG", value: 5)
!83 = !DIEnumerator(name: "TXT_DAYCHANGE", value: 6)
!84 = !DIEnumerator(name: "TXT_TALKING_WITH", value: 7)
!85 = !DIEnumerator(name: "TXT_REFNUM_TOO_LOW", value: 8)
!86 = !DIEnumerator(name: "TXT_ERROR_SERVER_STICKY", value: 9)
!87 = !DIEnumerator(name: "TXT_SET_SERVER_STICKY", value: 10)
!88 = !DIEnumerator(name: "TXT_UNSET_SERVER_STICKY", value: 11)
!89 = !DIEnumerator(name: "TXT_WINDOW_NAME_NOT_UNIQUE", value: 12)
!90 = !DIEnumerator(name: "TXT_WINDOW_LEVEL", value: 13)
!91 = !DIEnumerator(name: "TXT_WINDOW_SET_IMMORTAL", value: 14)
!92 = !DIEnumerator(name: "TXT_WINDOW_UNSET_IMMORTAL", value: 15)
!93 = !DIEnumerator(name: "TXT_WINDOW_IMMORTAL_ERROR", value: 16)
!94 = !DIEnumerator(name: "TXT_WINDOWLIST_HEADER", value: 17)
!95 = !DIEnumerator(name: "TXT_WINDOWLIST_LINE", value: 18)
!96 = !DIEnumerator(name: "TXT_WINDOWLIST_FOOTER", value: 19)
!97 = !DIEnumerator(name: "TXT_WINDOWS_LAYOUT_SAVED", value: 20)
!98 = !DIEnumerator(name: "TXT_WINDOWS_LAYOUT_RESET", value: 21)
!99 = !DIEnumerator(name: "TXT_WINDOW_INFO_HEADER", value: 22)
!100 = !DIEnumerator(name: "TXT_WINDOW_INFO_FOOTER", value: 23)
!101 = !DIEnumerator(name: "TXT_WINDOW_INFO_REFNUM", value: 24)
!102 = !DIEnumerator(name: "TXT_WINDOW_INFO_REFNUM_STICKY", value: 25)
!103 = !DIEnumerator(name: "TXT_WINDOW_INFO_NAME", value: 26)
!104 = !DIEnumerator(name: "TXT_WINDOW_INFO_HISTORY", value: 27)
!105 = !DIEnumerator(name: "TXT_WINDOW_INFO_IMMORTAL", value: 28)
!106 = !DIEnumerator(name: "TXT_WINDOW_INFO_SIZE", value: 29)
!107 = !DIEnumerator(name: "TXT_WINDOW_INFO_LEVEL", value: 30)
!108 = !DIEnumerator(name: "TXT_WINDOW_INFO_SERVER", value: 31)
!109 = !DIEnumerator(name: "TXT_WINDOW_INFO_SERVER_STICKY", value: 32)
!110 = !DIEnumerator(name: "TXT_WINDOW_INFO_THEME", value: 33)
!111 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEMS_HEADER", value: 34)
!112 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEM", value: 35)
!113 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEMS_FOOTER", value: 36)
!114 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEMS_HEADER", value: 37)
!115 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEM", value: 38)
!116 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEMS_FOOTER", value: 39)
!117 = !DIEnumerator(name: "TXT_FILL_2", value: 40)
!118 = !DIEnumerator(name: "TXT_LOOKING_UP", value: 41)
!119 = !DIEnumerator(name: "TXT_CONNECTING", value: 42)
!120 = !DIEnumerator(name: "TXT_RECONNECTING", value: 43)
!121 = !DIEnumerator(name: "TXT_CONNECTION_ESTABLISHED", value: 44)
!122 = !DIEnumerator(name: "TXT_CANT_CONNECT", value: 45)
!123 = !DIEnumerator(name: "TXT_CONNECTION_LOST", value: 46)
!124 = !DIEnumerator(name: "TXT_LAG_DISCONNECTED", value: 47)
!125 = !DIEnumerator(name: "TXT_DISCONNECTED", value: 48)
!126 = !DIEnumerator(name: "TXT_SERVER_QUIT", value: 49)
!127 = !DIEnumerator(name: "TXT_SERVER_CHANGED", value: 50)
!128 = !DIEnumerator(name: "TXT_UNKNOWN_SERVER_TAG", value: 51)
!129 = !DIEnumerator(name: "TXT_NO_CONNECTED_SERVERS", value: 52)
!130 = !DIEnumerator(name: "TXT_SERVER_LIST", value: 53)
!131 = !DIEnumerator(name: "TXT_SERVER_LOOKUP_LIST", value: 54)
!132 = !DIEnumerator(name: "TXT_SERVER_RECONNECT_LIST", value: 55)
!133 = !DIEnumerator(name: "TXT_RECONNECT_REMOVED", value: 56)
!134 = !DIEnumerator(name: "TXT_RECONNECT_NOT_FOUND", value: 57)
!135 = !DIEnumerator(name: "TXT_SETUPSERVER_ADDED", value: 58)
!136 = !DIEnumerator(name: "TXT_SETUPSERVER_REMOVED", value: 59)
!137 = !DIEnumerator(name: "TXT_SETUPSERVER_NOT_FOUND", value: 60)
!138 = !DIEnumerator(name: "TXT_YOUR_NICK", value: 61)
!139 = !DIEnumerator(name: "TXT_FILL_3", value: 62)
!140 = !DIEnumerator(name: "TXT_JOIN", value: 63)
!141 = !DIEnumerator(name: "TXT_PART", value: 64)
!142 = !DIEnumerator(name: "TXT_KICK", value: 65)
!143 = !DIEnumerator(name: "TXT_QUIT", value: 66)
!144 = !DIEnumerator(name: "TXT_QUIT_ONCE", value: 67)
!145 = !DIEnumerator(name: "TXT_INVITE", value: 68)
!146 = !DIEnumerator(name: "TXT_NOT_INVITED", value: 69)
!147 = !DIEnumerator(name: "TXT_NEW_TOPIC", value: 70)
!148 = !DIEnumerator(name: "TXT_TOPIC_UNSET", value: 71)
!149 = !DIEnumerator(name: "TXT_YOUR_NICK_CHANGED", value: 72)
!150 = !DIEnumerator(name: "TXT_NICK_CHANGED", value: 73)
!151 = !DIEnumerator(name: "TXT_TALKING_IN", value: 74)
!152 = !DIEnumerator(name: "TXT_NOT_IN_CHANNELS", value: 75)
!153 = !DIEnumerator(name: "TXT_CURRENT_CHANNEL", value: 76)
!154 = !DIEnumerator(name: "TXT_NAMES", value: 77)
!155 = !DIEnumerator(name: "TXT_NAMES_PREFIX", value: 78)
!156 = !DIEnumerator(name: "TXT_NAMES_NICK_OP", value: 79)
!157 = !DIEnumerator(name: "TXT_NAMES_NICK_HALFOP", value: 80)
!158 = !DIEnumerator(name: "TXT_NAMES_NICK_VOICE", value: 81)
!159 = !DIEnumerator(name: "TXT_NAMES_NICK", value: 82)
!160 = !DIEnumerator(name: "TXT_ENDOFNAMES", value: 83)
!161 = !DIEnumerator(name: "TXT_CHANLIST_HEADER", value: 84)
!162 = !DIEnumerator(name: "TXT_CHANLIST_LINE", value: 85)
!163 = !DIEnumerator(name: "TXT_CHANSETUP_NOT_FOUND", value: 86)
!164 = !DIEnumerator(name: "TXT_CHANSETUP_ADDED", value: 87)
!165 = !DIEnumerator(name: "TXT_CHANSETUP_REMOVED", value: 88)
!166 = !DIEnumerator(name: "TXT_CHANSETUP_HEADER", value: 89)
!167 = !DIEnumerator(name: "TXT_CHANSETUP_LINE", value: 90)
!168 = !DIEnumerator(name: "TXT_CHANSETUP_FOOTER", value: 91)
!169 = !DIEnumerator(name: "TXT_FILL_4", value: 92)
!170 = !DIEnumerator(name: "TXT_OWN_MSG", value: 93)
!171 = !DIEnumerator(name: "TXT_OWN_MSG_CHANNEL", value: 94)
!172 = !DIEnumerator(name: "TXT_OWN_MSG_PRIVATE", value: 95)
!173 = !DIEnumerator(name: "TXT_OWN_MSG_PRIVATE_QUERY", value: 96)
!174 = !DIEnumerator(name: "TXT_PUBMSG_ME", value: 97)
!175 = !DIEnumerator(name: "TXT_PUBMSG_ME_CHANNEL", value: 98)
!176 = !DIEnumerator(name: "TXT_PUBMSG_HILIGHT", value: 99)
!177 = !DIEnumerator(name: "TXT_PUBMSG_HILIGHT_CHANNEL", value: 100)
!178 = !DIEnumerator(name: "TXT_PUBMSG", value: 101)
!179 = !DIEnumerator(name: "TXT_PUBMSG_CHANNEL", value: 102)
!180 = !DIEnumerator(name: "TXT_MSG_PRIVATE", value: 103)
!181 = !DIEnumerator(name: "TXT_MSG_PRIVATE_QUERY", value: 104)
!182 = !DIEnumerator(name: "TXT_NO_MSGS_GOT", value: 105)
!183 = !DIEnumerator(name: "TXT_NO_MSGS_SENT", value: 106)
!184 = !DIEnumerator(name: "TXT_FILL_5", value: 107)
!185 = !DIEnumerator(name: "TXT_QUERY_START", value: 108)
!186 = !DIEnumerator(name: "TXT_QUERY_STOP", value: 109)
!187 = !DIEnumerator(name: "TXT_NO_QUERY", value: 110)
!188 = !DIEnumerator(name: "TXT_QUERY_SERVER_CHANGED", value: 111)
!189 = !DIEnumerator(name: "TXT_FILL_6", value: 112)
!190 = !DIEnumerator(name: "TXT_HILIGHT_HEADER", value: 113)
!191 = !DIEnumerator(name: "TXT_HILIGHT_LINE", value: 114)
!192 = !DIEnumerator(name: "TXT_HILIGHT_FOOTER", value: 115)
!193 = !DIEnumerator(name: "TXT_HILIGHT_NOT_FOUND", value: 116)
!194 = !DIEnumerator(name: "TXT_HILIGHT_REMOVED", value: 117)
!195 = !DIEnumerator(name: "TXT_FILL_7", value: 118)
!196 = !DIEnumerator(name: "TXT_ALIAS_ADDED", value: 119)
!197 = !DIEnumerator(name: "TXT_ALIAS_REMOVED", value: 120)
!198 = !DIEnumerator(name: "TXT_ALIAS_NOT_FOUND", value: 121)
!199 = !DIEnumerator(name: "TXT_ALIASLIST_HEADER", value: 122)
!200 = !DIEnumerator(name: "TXT_ALIASLIST_LINE", value: 123)
!201 = !DIEnumerator(name: "TXT_ALIASLIST_FOOTER", value: 124)
!202 = !DIEnumerator(name: "TXT_FILL_8", value: 125)
!203 = !DIEnumerator(name: "TXT_LOG_OPENED", value: 126)
!204 = !DIEnumerator(name: "TXT_LOG_CLOSED", value: 127)
!205 = !DIEnumerator(name: "TXT_LOG_CREATE_FAILED", value: 128)
!206 = !DIEnumerator(name: "TXT_LOG_LOCKED", value: 129)
!207 = !DIEnumerator(name: "TXT_LOG_NOT_OPEN", value: 130)
!208 = !DIEnumerator(name: "TXT_LOG_STARTED", value: 131)
!209 = !DIEnumerator(name: "TXT_LOG_STOPPED", value: 132)
!210 = !DIEnumerator(name: "TXT_LOG_LIST_HEADER", value: 133)
!211 = !DIEnumerator(name: "TXT_LOG_LIST", value: 134)
!212 = !DIEnumerator(name: "TXT_LOG_LIST_FOOTER", value: 135)
!213 = !DIEnumerator(name: "TXT_WINDOWLOG_FILE", value: 136)
!214 = !DIEnumerator(name: "TXT_WINDOWLOG_FILE_LOGGING", value: 137)
!215 = !DIEnumerator(name: "TXT_LOG_NO_AWAY_MSGS", value: 138)
!216 = !DIEnumerator(name: "TXT_LOG_AWAY_MSGS", value: 139)
!217 = !DIEnumerator(name: "TXT_FILL_9", value: 140)
!218 = !DIEnumerator(name: "TXT_MODULE_HEADER", value: 141)
!219 = !DIEnumerator(name: "TXT_MODULE_LINE", value: 142)
!220 = !DIEnumerator(name: "TXT_MODULE_FOOTER", value: 143)
!221 = !DIEnumerator(name: "TXT_MODULE_ALREADY_LOADED", value: 144)
!222 = !DIEnumerator(name: "TXT_MODULE_NOT_LOADED", value: 145)
!223 = !DIEnumerator(name: "TXT_MODULE_LOAD_ERROR", value: 146)
!224 = !DIEnumerator(name: "TXT_MODULE_VERSION_MISMATCH", value: 147)
!225 = !DIEnumerator(name: "TXT_MODULE_INVALID", value: 148)
!226 = !DIEnumerator(name: "TXT_MODULE_LOADED", value: 149)
!227 = !DIEnumerator(name: "TXT_MODULE_UNLOADED", value: 150)
!228 = !DIEnumerator(name: "TXT_FILL_10", value: 151)
!229 = !DIEnumerator(name: "TXT_COMMAND_UNKNOWN", value: 152)
!230 = !DIEnumerator(name: "TXT_COMMAND_AMBIGUOUS", value: 153)
!231 = !DIEnumerator(name: "TXT_OPTION_UNKNOWN", value: 154)
!232 = !DIEnumerator(name: "TXT_OPTION_AMBIGUOUS", value: 155)
!233 = !DIEnumerator(name: "TXT_OPTION_MISSING_ARG", value: 156)
!234 = !DIEnumerator(name: "TXT_NOT_ENOUGH_PARAMS", value: 157)
!235 = !DIEnumerator(name: "TXT_NOT_CONNECTED", value: 158)
!236 = !DIEnumerator(name: "TXT_NOT_JOINED", value: 159)
!237 = !DIEnumerator(name: "TXT_CHAN_NOT_FOUND", value: 160)
!238 = !DIEnumerator(name: "TXT_CHAN_NOT_SYNCED", value: 161)
!239 = !DIEnumerator(name: "TXT_ILLEGAL_PROTO", value: 162)
!240 = !DIEnumerator(name: "TXT_NOT_GOOD_IDEA", value: 163)
!241 = !DIEnumerator(name: "TXT_INVALID_NUMBER", value: 164)
!242 = !DIEnumerator(name: "TXT_INVALID_TIME", value: 165)
!243 = !DIEnumerator(name: "TXT_INVALID_LEVEL", value: 166)
!244 = !DIEnumerator(name: "TXT_INVALID_SIZE", value: 167)
!245 = !DIEnumerator(name: "TXT_INVALID_CHARSET", value: 168)
!246 = !DIEnumerator(name: "TXT_INVALID_CHOICE", value: 169)
!247 = !DIEnumerator(name: "TXT_EVAL_MAX_RECURSE", value: 170)
!248 = !DIEnumerator(name: "TXT_PROGRAM_NOT_FOUND", value: 171)
!249 = !DIEnumerator(name: "TXT_NO_SERVER_DEFINED", value: 172)
!250 = !DIEnumerator(name: "TXT_FILL_11", value: 173)
!251 = !DIEnumerator(name: "TXT_THEME_SAVED", value: 174)
!252 = !DIEnumerator(name: "TXT_THEME_SAVE_FAILED", value: 175)
!253 = !DIEnumerator(name: "TXT_THEME_NOT_FOUND", value: 176)
!254 = !DIEnumerator(name: "TXT_THEME_CHANGED", value: 177)
!255 = !DIEnumerator(name: "TXT_WINDOW_THEME", value: 178)
!256 = !DIEnumerator(name: "TXT_WINDOW_THEME_DEFAULT", value: 179)
!257 = !DIEnumerator(name: "TXT_WINDOW_THEME_CHANGED", value: 180)
!258 = !DIEnumerator(name: "TXT_WINDOW_THEME_REMOVED", value: 181)
!259 = !DIEnumerator(name: "TXT_FORMAT_TITLE", value: 182)
!260 = !DIEnumerator(name: "TXT_FORMAT_SUBTITLE", value: 183)
!261 = !DIEnumerator(name: "TXT_FORMAT_ITEM", value: 184)
!262 = !DIEnumerator(name: "TXT_FILL_12", value: 185)
!263 = !DIEnumerator(name: "TXT_IGNORED", value: 186)
!264 = !DIEnumerator(name: "TXT_IGNORED_OPTIONS", value: 187)
!265 = !DIEnumerator(name: "TXT_UNIGNORED", value: 188)
!266 = !DIEnumerator(name: "TXT_IGNORE_NOT_FOUND", value: 189)
!267 = !DIEnumerator(name: "TXT_IGNORE_NO_IGNORES", value: 190)
!268 = !DIEnumerator(name: "TXT_IGNORE_HEADER", value: 191)
!269 = !DIEnumerator(name: "TXT_IGNORE_LINE", value: 192)
!270 = !DIEnumerator(name: "TXT_IGNORE_FOOTER", value: 193)
!271 = !DIEnumerator(name: "TXT_FILL_13", value: 194)
!272 = !DIEnumerator(name: "TXT_NOT_CHANNEL_OR_QUERY", value: 195)
!273 = !DIEnumerator(name: "TXT_CONVERSION_ADDED", value: 196)
!274 = !DIEnumerator(name: "TXT_CONVERSION_REMOVED", value: 197)
!275 = !DIEnumerator(name: "TXT_CONVERSION_NOT_FOUND", value: 198)
!276 = !DIEnumerator(name: "TXT_CONVERSION_NO_TRANSLITS", value: 199)
!277 = !DIEnumerator(name: "TXT_RECODE_HEADER", value: 200)
!278 = !DIEnumerator(name: "TXT_RECODE_LINE", value: 201)
!279 = !DIEnumerator(name: "TXT_FILL_14", value: 202)
!280 = !DIEnumerator(name: "TXT_UNKNOWN_CHAT_PROTOCOL", value: 203)
!281 = !DIEnumerator(name: "TXT_UNKNOWN_CHATNET", value: 204)
!282 = !DIEnumerator(name: "TXT_NOT_TOGGLE", value: 205)
!283 = !DIEnumerator(name: "TXT_PERL_ERROR", value: 206)
!284 = !DIEnumerator(name: "TXT_BIND_HEADER", value: 207)
!285 = !DIEnumerator(name: "TXT_BIND_LIST", value: 208)
!286 = !DIEnumerator(name: "TXT_BIND_COMMAND_LIST", value: 209)
!287 = !DIEnumerator(name: "TXT_BIND_FOOTER", value: 210)
!288 = !DIEnumerator(name: "TXT_BIND_UNKNOWN_ID", value: 211)
!289 = !DIEnumerator(name: "TXT_CONFIG_SAVED", value: 212)
!290 = !DIEnumerator(name: "TXT_CONFIG_RELOADED", value: 213)
!291 = !DIEnumerator(name: "TXT_CONFIG_MODIFIED", value: 214)
!292 = !DIEnumerator(name: "TXT_GLIB_ERROR", value: 215)
!293 = !DIEnumerator(name: "TXT_OVERWRITE_CONFIG", value: 216)
!294 = !DIEnumerator(name: "TXT_SET_TITLE", value: 217)
!295 = !DIEnumerator(name: "TXT_SET_ITEM", value: 218)
!296 = !DIEnumerator(name: "TXT_SET_UNKNOWN", value: 219)
!297 = !DIEnumerator(name: "TXT_SET_NOT_BOOLEAN", value: 220)
!298 = !DIEnumerator(name: "TXT_NO_COMPLETIONS", value: 221)
!299 = !DIEnumerator(name: "TXT_COMPLETION_REMOVED", value: 222)
!300 = !DIEnumerator(name: "TXT_COMPLETION_HEADER", value: 223)
!301 = !DIEnumerator(name: "TXT_COMPLETION_LINE", value: 224)
!302 = !DIEnumerator(name: "TXT_COMPLETION_FOOTER", value: 225)
!303 = !DIEnumerator(name: "TXT_CAPSICUM_ENABLED", value: 226)
!304 = !DIEnumerator(name: "TXT_CAPSICUM_DISABLED", value: 227)
!305 = !DIEnumerator(name: "TXT_CAPSICUM_FAILED", value: 228)
!306 = !DIEnumerator(name: "TLS_FILL_15", value: 229)
!307 = !DIEnumerator(name: "TXT_TLS_EPHEMERAL_KEY", value: 230)
!308 = !DIEnumerator(name: "TXT_TLS_EPHEMERAL_KEY_UNAVAILBLE", value: 231)
!309 = !DIEnumerator(name: "TXT_TLS_PUBKEY", value: 232)
!310 = !DIEnumerator(name: "TXT_TLS_CERT_HEADER", value: 233)
!311 = !DIEnumerator(name: "TXT_TLS_CERT_SUBJECT", value: 234)
!312 = !DIEnumerator(name: "TXT_TLS_CERT_ISSUER", value: 235)
!313 = !DIEnumerator(name: "TXT_TLS_PUBKEY_FINGERPRINT", value: 236)
!314 = !DIEnumerator(name: "TXT_TLS_CERT_FINGERPRINT", value: 237)
!315 = !DIEnumerator(name: "TXT_TLS_PROTOCOL_VERSION", value: 238)
!316 = !{!317, !318, !322, !324, !345, !342, !631, !769}
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64, align: 64)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !320, line: 46, baseType: !321)
!320 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!321 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64, align: 64)
!323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !321)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64, align: 64)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "WINDOW_REC", file: !326, line: 117, baseType: !327)
!326 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WINDOW_REC", file: !36, line: 28, size: 1280, align: 64, elements: !328)
!328 = !{!329, !331, !333, !334, !335, !344, !734, !735, !736, !737, !738, !739, !740, !741, !742, !761, !762, !763, !764, !765, !766, !767, !768}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "refnum", scope: !327, file: !36, line: 29, baseType: !330, size: 32, align: 32)
!330 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !327, file: !36, line: 30, baseType: !332, size: 64, align: 64, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64, align: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !327, file: !36, line: 32, baseType: !330, size: 32, align: 32, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !327, file: !36, line: 32, baseType: !330, size: 32, align: 32, offset: 160)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !327, file: !36, line: 34, baseType: !336, size: 64, align: 64, offset: 192)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64, align: 64)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !338, line: 37, baseType: !339)
!338 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !338, line: 39, size: 128, align: 64, elements: !340)
!340 = !{!341, !343}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !339, file: !338, line: 41, baseType: !342, size: 64, align: 64)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !320, line: 77, baseType: !317)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !339, file: !338, line: 42, baseType: !336, size: 64, align: 64, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !327, file: !36, line: 35, baseType: !345, size: 64, align: 64, offset: 256)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64, align: 64)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !326, line: 108, baseType: !347)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !348, line: 5, size: 704, align: 64, elements: !349)
!348 = !DIFile(filename: "../../../src/core/window-item-def.h", directory: "/home/lichi/Desktop/irssi/task1")
!349 = !{!350, !352, !353, !358, !359, !727, !728, !729, !730, !731, !732, !733}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !347, file: !351, line: 3, baseType: !330, size: 32, align: 32)
!351 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!352 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !347, file: !351, line: 4, baseType: !330, size: 32, align: 32, offset: 32)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !347, file: !351, line: 5, baseType: !354, size: 64, align: 64, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64, align: 64)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !356, line: 37, baseType: !357)
!356 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!357 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !356, line: 37, flags: DIFlagFwdDecl)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !347, file: !351, line: 7, baseType: !317, size: 64, align: 64, offset: 128)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !347, file: !351, line: 8, baseType: !360, size: 64, align: 64, offset: 192)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64, align: 64)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !326, line: 107, baseType: !362)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !363, line: 30, size: 2240, align: 64, elements: !364)
!363 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!364 = !{!365, !367, !368, !369, !590, !595, !596, !597, !598, !599, !600, !601, !602, !603, !607, !608, !612, !613, !614, !618, !619, !620, !621, !622, !623, !624, !625, !626, !633, !634, !635, !636, !637, !641, !645, !649, !653, !657, !662, !715, !722, !726}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !362, file: !366, line: 3, baseType: !330, size: 32, align: 32)
!366 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!367 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !362, file: !366, line: 4, baseType: !330, size: 32, align: 32, offset: 32)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !362, file: !366, line: 6, baseType: !330, size: 32, align: 32, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !362, file: !366, line: 8, baseType: !370, size: 64, align: 64, offset: 128)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64, align: 64)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !326, line: 113, baseType: !372)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !363, line: 25, size: 1920, align: 64, elements: !373)
!373 = !{!374, !376, !377, !378, !379, !380, !381, !382, !383, !385, !386, !387, !388, !389, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !372, file: !375, line: 3, baseType: !330, size: 32, align: 32)
!375 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!376 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !372, file: !375, line: 4, baseType: !330, size: 32, align: 32, offset: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !372, file: !375, line: 6, baseType: !330, size: 32, align: 32, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !372, file: !375, line: 9, baseType: !332, size: 64, align: 64, offset: 128)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !372, file: !375, line: 10, baseType: !330, size: 32, align: 32, offset: 192)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !372, file: !375, line: 11, baseType: !332, size: 64, align: 64, offset: 256)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !372, file: !375, line: 11, baseType: !332, size: 64, align: 64, offset: 320)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !372, file: !375, line: 11, baseType: !332, size: 64, align: 64, offset: 384)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !372, file: !375, line: 13, baseType: !384, size: 16, align: 16, offset: 448)
!384 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !372, file: !375, line: 14, baseType: !332, size: 64, align: 64, offset: 512)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !372, file: !375, line: 15, baseType: !332, size: 64, align: 64, offset: 576)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !372, file: !375, line: 16, baseType: !330, size: 32, align: 32, offset: 640)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !372, file: !375, line: 17, baseType: !332, size: 64, align: 64, offset: 704)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !372, file: !375, line: 19, baseType: !390, size: 64, align: 64, offset: 768)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64, align: 64)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !326, line: 99, baseType: !392)
!392 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !326, line: 99, flags: DIFlagFwdDecl)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !372, file: !375, line: 19, baseType: !390, size: 64, align: 64, offset: 832)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !372, file: !375, line: 21, baseType: !332, size: 64, align: 64, offset: 896)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !372, file: !375, line: 22, baseType: !332, size: 64, align: 64, offset: 960)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !372, file: !375, line: 23, baseType: !332, size: 64, align: 64, offset: 1024)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !372, file: !375, line: 24, baseType: !332, size: 64, align: 64, offset: 1088)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !372, file: !375, line: 26, baseType: !332, size: 64, align: 64, offset: 1152)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !372, file: !375, line: 27, baseType: !332, size: 64, align: 64, offset: 1216)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !372, file: !375, line: 28, baseType: !332, size: 64, align: 64, offset: 1280)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !372, file: !375, line: 29, baseType: !332, size: 64, align: 64, offset: 1344)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !372, file: !375, line: 30, baseType: !332, size: 64, align: 64, offset: 1408)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !372, file: !375, line: 31, baseType: !332, size: 64, align: 64, offset: 1472)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !372, file: !375, line: 32, baseType: !332, size: 64, align: 64, offset: 1536)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !372, file: !375, line: 33, baseType: !332, size: 64, align: 64, offset: 1600)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !372, file: !375, line: 35, baseType: !407, size: 64, align: 64, offset: 1664)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64, align: 64)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !409)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !410)
!410 = !{!411, !413, !547, !548, !553, !554, !555, !556, !557, !566, !567, !568, !572, !573, !574, !575, !576, !577, !578, !579}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !409, file: !4, line: 100, baseType: !412, size: 32, align: 32)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !320, line: 49, baseType: !330)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !409, file: !4, line: 101, baseType: !414, size: 64, align: 64, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64, align: 64)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !416)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !417)
!417 = !{!418, !440, !446, !453, !457, !534, !538, !543}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !416, file: !4, line: 133, baseType: !419, size: 64, align: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64, align: 64)
!420 = !DISubroutineType(types: !421)
!421 = !{!422, !407, !318, !423, !426, !427}
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !424, line: 66, baseType: !425)
!424 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!425 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64, align: 64)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64, align: 64)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64, align: 64)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !430, line: 42, baseType: !431)
!430 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !430, line: 44, size: 128, align: 64, elements: !432)
!432 = !{!433, !438, !439}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !431, file: !430, line: 46, baseType: !434, size: 32, align: 32)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !435, line: 36, baseType: !436)
!435 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !424, line: 45, baseType: !437)
!437 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !431, file: !430, line: 47, baseType: !412, size: 32, align: 32, offset: 32)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !431, file: !430, line: 48, baseType: !318, size: 64, align: 64, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !416, file: !4, line: 138, baseType: !441, size: 64, align: 64, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64, align: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{!422, !407, !444, !423, !426, !427}
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64, align: 64)
!445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !319)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !416, file: !4, line: 143, baseType: !447, size: 64, align: 64, offset: 128)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64, align: 64)
!448 = !DISubroutineType(types: !449)
!449 = !{!422, !407, !450, !452, !427}
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !424, line: 51, baseType: !451)
!451 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !416, file: !4, line: 147, baseType: !454, size: 64, align: 64, offset: 192)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64, align: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{!422, !407, !427}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !416, file: !4, line: 149, baseType: !458, size: 64, align: 64, offset: 256)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64, align: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!461, !407, !533}
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64, align: 64)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !463)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !464)
!464 = !{!465, !466, !487, !516, !518, !522, !523, !524, !525, !526, !527, !528, !529}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !463, file: !16, line: 174, baseType: !342, size: 64, align: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !463, file: !16, line: 175, baseType: !467, size: 64, align: 64, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64, align: 64)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !469)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !470)
!470 = !{!471, !475, !476}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !469, file: !16, line: 198, baseType: !472, size: 64, align: 64)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64, align: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{null, !342}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !469, file: !16, line: 199, baseType: !472, size: 64, align: 64, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !469, file: !16, line: 200, baseType: !477, size: 64, align: 64, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64, align: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{null, !342, !461, !480, !486}
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64, align: 64)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !482)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64, align: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!485, !342}
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !320, line: 50, baseType: !412)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64, align: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !463, file: !16, line: 177, baseType: !488, size: 64, align: 64, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64, align: 64)
!489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !490)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !491)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !492)
!492 = !{!493, !498, !502, !506, !510, !511}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !491, file: !16, line: 216, baseType: !494, size: 64, align: 64)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64, align: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{!485, !461, !497}
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64, align: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !491, file: !16, line: 218, baseType: !499, size: 64, align: 64, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64, align: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!485, !461}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !491, file: !16, line: 219, baseType: !503, size: 64, align: 64, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64, align: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!485, !461, !481, !342}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !491, file: !16, line: 222, baseType: !507, size: 64, align: 64, offset: 192)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64, align: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{null, !461}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !491, file: !16, line: 226, baseType: !481, size: 64, align: 64, offset: 256)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !491, file: !16, line: 227, baseType: !512, size: 64, align: 64, offset: 320)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !513)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64, align: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{null}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !463, file: !16, line: 178, baseType: !517, size: 32, align: 32, offset: 192)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !320, line: 55, baseType: !437)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !463, file: !16, line: 180, baseType: !519, size: 64, align: 64, offset: 256)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64, align: 64)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !521)
!521 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !463, file: !16, line: 182, baseType: !412, size: 32, align: 32, offset: 320)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !463, file: !16, line: 183, baseType: !517, size: 32, align: 32, offset: 352)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !463, file: !16, line: 184, baseType: !517, size: 32, align: 32, offset: 384)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !463, file: !16, line: 186, baseType: !336, size: 64, align: 64, offset: 448)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !463, file: !16, line: 188, baseType: !461, size: 64, align: 64, offset: 512)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !463, file: !16, line: 189, baseType: !461, size: 64, align: 64, offset: 576)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !463, file: !16, line: 191, baseType: !332, size: 64, align: 64, offset: 640)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !463, file: !16, line: 193, baseType: !530, size: 64, align: 64, offset: 704)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64, align: 64)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !532)
!532 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !416, file: !4, line: 151, baseType: !535, size: 64, align: 64, offset: 320)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64, align: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{null, !407}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !416, file: !4, line: 152, baseType: !539, size: 64, align: 64, offset: 384)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64, align: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{!422, !407, !542, !427}
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !416, file: !4, line: 155, baseType: !544, size: 64, align: 64, offset: 448)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64, align: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!542, !407}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !409, file: !4, line: 103, baseType: !318, size: 64, align: 64, offset: 128)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !409, file: !4, line: 104, baseType: !549, size: 64, align: 64, offset: 192)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !550, line: 77, baseType: !551)
!550 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64, align: 64)
!552 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !550, line: 77, flags: DIFlagFwdDecl)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !409, file: !4, line: 105, baseType: !549, size: 64, align: 64, offset: 256)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !409, file: !4, line: 106, baseType: !318, size: 64, align: 64, offset: 320)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !409, file: !4, line: 107, baseType: !517, size: 32, align: 32, offset: 384)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !409, file: !4, line: 109, baseType: !423, size: 64, align: 64, offset: 448)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !409, file: !4, line: 110, baseType: !558, size: 64, align: 64, offset: 512)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64, align: 64)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !560, line: 39, baseType: !561)
!560 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !560, line: 41, size: 192, align: 64, elements: !562)
!562 = !{!563, !564, !565}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !561, file: !560, line: 43, baseType: !318, size: 64, align: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !561, file: !560, line: 44, baseType: !423, size: 64, align: 64, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !561, file: !560, line: 45, baseType: !423, size: 64, align: 64, offset: 128)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !409, file: !4, line: 111, baseType: !558, size: 64, align: 64, offset: 576)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !409, file: !4, line: 112, baseType: !558, size: 64, align: 64, offset: 640)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !409, file: !4, line: 113, baseType: !569, size: 48, align: 8, offset: 704)
!569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 48, align: 8, elements: !570)
!570 = !{!571}
!571 = !DISubrange(count: 6)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !409, file: !4, line: 117, baseType: !517, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !409, file: !4, line: 118, baseType: !517, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !409, file: !4, line: 119, baseType: !517, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !409, file: !4, line: 120, baseType: !517, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !409, file: !4, line: 121, baseType: !517, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !409, file: !4, line: 122, baseType: !517, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !409, file: !4, line: 124, baseType: !342, size: 64, align: 64, offset: 768)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !409, file: !4, line: 125, baseType: !342, size: 64, align: 64, offset: 832)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !372, file: !375, line: 38, baseType: !437, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !372, file: !375, line: 39, baseType: !437, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !372, file: !375, line: 40, baseType: !437, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !372, file: !375, line: 41, baseType: !437, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !372, file: !375, line: 42, baseType: !437, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !372, file: !375, line: 43, baseType: !437, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !372, file: !375, line: 44, baseType: !437, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !372, file: !375, line: 45, baseType: !437, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !372, file: !375, line: 46, baseType: !332, size: 64, align: 64, offset: 1792)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !372, file: !375, line: 47, baseType: !332, size: 64, align: 64, offset: 1856)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !362, file: !366, line: 9, baseType: !591, size: 64, align: 64, offset: 192)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !592, line: 75, baseType: !593)
!592 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !594, line: 139, baseType: !451)
!594 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!595 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !362, file: !366, line: 10, baseType: !591, size: 64, align: 64, offset: 256)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !362, file: !366, line: 12, baseType: !332, size: 64, align: 64, offset: 320)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !362, file: !366, line: 13, baseType: !332, size: 64, align: 64, offset: 384)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !362, file: !366, line: 15, baseType: !437, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !362, file: !366, line: 16, baseType: !437, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !362, file: !366, line: 17, baseType: !437, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !362, file: !366, line: 18, baseType: !437, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !362, file: !366, line: 19, baseType: !437, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !362, file: !366, line: 21, baseType: !604, size: 64, align: 64, offset: 512)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64, align: 64)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !326, line: 102, baseType: !606)
!606 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !326, line: 102, flags: DIFlagFwdDecl)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !362, file: !366, line: 22, baseType: !330, size: 32, align: 32, offset: 576)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !362, file: !366, line: 25, baseType: !609, size: 128, align: 64, offset: 640)
!609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, size: 128, align: 64, elements: !610)
!610 = !{!611}
!611 = !DISubrange(count: 2)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !362, file: !366, line: 26, baseType: !330, size: 32, align: 32, offset: 768)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !362, file: !366, line: 27, baseType: !330, size: 32, align: 32, offset: 800)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !362, file: !366, line: 29, baseType: !615, size: 64, align: 64, offset: 832)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64, align: 64)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !326, line: 103, baseType: !617)
!617 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !326, line: 103, flags: DIFlagFwdDecl)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !362, file: !366, line: 30, baseType: !354, size: 64, align: 64, offset: 896)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !362, file: !366, line: 32, baseType: !332, size: 64, align: 64, offset: 960)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !362, file: !366, line: 33, baseType: !332, size: 64, align: 64, offset: 1024)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !362, file: !366, line: 34, baseType: !332, size: 64, align: 64, offset: 1088)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !362, file: !366, line: 35, baseType: !437, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !362, file: !366, line: 36, baseType: !437, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !362, file: !366, line: 37, baseType: !437, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !362, file: !366, line: 38, baseType: !437, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !362, file: !366, line: 40, baseType: !627, size: 128, align: 64, offset: 1216)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !320, line: 504, baseType: !628)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !320, line: 506, size: 128, align: 64, elements: !629)
!629 = !{!630, !632}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !628, file: !320, line: 508, baseType: !631, size: 64, align: 64)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !320, line: 48, baseType: !451)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !628, file: !320, line: 509, baseType: !631, size: 64, align: 64, offset: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !362, file: !366, line: 41, baseType: !591, size: 64, align: 64, offset: 1344)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !362, file: !366, line: 42, baseType: !330, size: 32, align: 32, offset: 1408)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !362, file: !366, line: 44, baseType: !336, size: 64, align: 64, offset: 1472)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !362, file: !366, line: 45, baseType: !336, size: 64, align: 64, offset: 1536)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !362, file: !366, line: 53, baseType: !638, size: 64, align: 64, offset: 1600)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64, align: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{null, !360, !322, !330}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !362, file: !366, line: 55, baseType: !642, size: 64, align: 64, offset: 1664)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64, align: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{!330, !360, !321}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !362, file: !366, line: 57, baseType: !646, size: 64, align: 64, offset: 1728)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64, align: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{!330, !360, !322}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !362, file: !366, line: 60, baseType: !650, size: 64, align: 64, offset: 1792)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64, align: 64)
!651 = !DISubroutineType(types: !652)
!652 = !{!322, !360}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !362, file: !366, line: 62, baseType: !654, size: 64, align: 64, offset: 1856)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64, align: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{null, !360, !322, !322, !330}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !362, file: !366, line: 65, baseType: !658, size: 64, align: 64, offset: 1920)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64, align: 64)
!659 = !DISubroutineType(types: !660)
!660 = !{!661, !360, !322, !322}
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64, align: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !362, file: !366, line: 69, baseType: !663, size: 64, align: 64, offset: 1984)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64, align: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{!666, !360, !322}
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64, align: 64)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !326, line: 109, baseType: !668)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !669, line: 15, size: 1408, align: 64, elements: !670)
!669 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!670 = !{!671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !685, !689, !691, !692, !693, !694, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !668, file: !351, line: 3, baseType: !330, size: 32, align: 32)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !668, file: !351, line: 4, baseType: !330, size: 32, align: 32, offset: 32)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !668, file: !351, line: 5, baseType: !354, size: 64, align: 64, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !668, file: !351, line: 7, baseType: !317, size: 64, align: 64, offset: 128)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !668, file: !351, line: 8, baseType: !360, size: 64, align: 64, offset: 192)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !668, file: !351, line: 9, baseType: !332, size: 64, align: 64, offset: 256)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !668, file: !351, line: 10, baseType: !332, size: 64, align: 64, offset: 320)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !668, file: !351, line: 11, baseType: !591, size: 64, align: 64, offset: 384)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !668, file: !351, line: 12, baseType: !330, size: 32, align: 32, offset: 448)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !668, file: !351, line: 13, baseType: !332, size: 64, align: 64, offset: 512)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !668, file: !351, line: 15, baseType: !682, size: 64, align: 64, offset: 576)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64, align: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{null, !345}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !668, file: !351, line: 17, baseType: !686, size: 64, align: 64, offset: 640)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64, align: 64)
!687 = !DISubroutineType(types: !688)
!688 = !{!322, !345}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !668, file: !690, line: 5, baseType: !332, size: 64, align: 64, offset: 704)
!690 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!691 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !668, file: !690, line: 6, baseType: !332, size: 64, align: 64, offset: 768)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !668, file: !690, line: 7, baseType: !591, size: 64, align: 64, offset: 832)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !668, file: !690, line: 9, baseType: !354, size: 64, align: 64, offset: 896)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !668, file: !690, line: 10, baseType: !695, size: 64, align: 64, offset: 960)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64, align: 64)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !326, line: 111, baseType: !697)
!697 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !326, line: 111, flags: DIFlagFwdDecl)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !668, file: !690, line: 12, baseType: !437, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !668, file: !690, line: 13, baseType: !332, size: 64, align: 64, offset: 1088)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !668, file: !690, line: 14, baseType: !330, size: 32, align: 32, offset: 1152)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !668, file: !690, line: 15, baseType: !332, size: 64, align: 64, offset: 1216)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !668, file: !690, line: 17, baseType: !437, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !668, file: !690, line: 18, baseType: !437, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !668, file: !690, line: 19, baseType: !437, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !668, file: !690, line: 20, baseType: !437, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !668, file: !690, line: 22, baseType: !437, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !668, file: !690, line: 23, baseType: !437, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !668, file: !690, line: 24, baseType: !437, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !668, file: !690, line: 25, baseType: !437, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !668, file: !690, line: 26, baseType: !437, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !668, file: !690, line: 31, baseType: !712, size: 64, align: 64, offset: 1344)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64, align: 64)
!713 = !DISubroutineType(types: !714)
!714 = !{!332, !666}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !362, file: !366, line: 70, baseType: !716, size: 64, align: 64, offset: 2048)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64, align: 64)
!717 = !DISubroutineType(types: !718)
!718 = !{!719, !360, !322}
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64, align: 64)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !326, line: 110, baseType: !721)
!721 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !326, line: 110, flags: DIFlagFwdDecl)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !362, file: !366, line: 71, baseType: !723, size: 64, align: 64, offset: 2112)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64, align: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{!330, !322, !322}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !362, file: !366, line: 73, baseType: !723, size: 64, align: 64, offset: 2176)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !347, file: !351, line: 9, baseType: !332, size: 64, align: 64, offset: 256)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !347, file: !351, line: 10, baseType: !332, size: 64, align: 64, offset: 320)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !347, file: !351, line: 11, baseType: !591, size: 64, align: 64, offset: 384)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !347, file: !351, line: 12, baseType: !330, size: 32, align: 32, offset: 448)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !347, file: !351, line: 13, baseType: !332, size: 64, align: 64, offset: 512)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !347, file: !351, line: 15, baseType: !682, size: 64, align: 64, offset: 576)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !347, file: !351, line: 17, baseType: !686, size: 64, align: 64, offset: 640)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "active_server", scope: !327, file: !36, line: 36, baseType: !360, size: 64, align: 64, offset: 320)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "connect_server", scope: !327, file: !36, line: 37, baseType: !360, size: 64, align: 64, offset: 384)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !327, file: !36, line: 38, baseType: !332, size: 64, align: 64, offset: 448)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !327, file: !36, line: 40, baseType: !330, size: 32, align: 32, offset: 512)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "bound_items", scope: !327, file: !36, line: 41, baseType: !336, size: 64, align: 64, offset: 576)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "immortal", scope: !327, file: !36, line: 43, baseType: !437, size: 1, align: 32, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "sticky_refnum", scope: !327, file: !36, line: 44, baseType: !437, size: 1, align: 32, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !327, file: !36, line: 45, baseType: !437, size: 1, align: 32, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !327, file: !36, line: 48, baseType: !743, size: 64, align: 64, offset: 704)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64, align: 64)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "HISTORY_REC", file: !745, line: 14, baseType: !746)
!745 = !DIFile(filename: "command-history.h", directory: "/home/lichi/Desktop/irssi/task1")
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !745, line: 6, size: 256, align: 64, elements: !747)
!747 = !{!748, !749, !758, !759, !760}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !746, file: !745, line: 7, baseType: !332, size: 64, align: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !746, file: !745, line: 9, baseType: !750, size: 64, align: 64, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64, align: 64)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "GList", file: !752, line: 37, baseType: !753)
!752 = !DIFile(filename: "/usr/include/glib-2.0/glib/glist.h", directory: "/home/lichi/Desktop/irssi/task1")
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GList", file: !752, line: 39, size: 192, align: 64, elements: !754)
!754 = !{!755, !756, !757}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !753, file: !752, line: 41, baseType: !342, size: 64, align: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !753, file: !752, line: 42, baseType: !750, size: 64, align: 64, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !753, file: !752, line: 43, baseType: !750, size: 64, align: 64, offset: 128)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "lines", scope: !746, file: !745, line: 10, baseType: !330, size: 32, align: 32, offset: 128)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !746, file: !745, line: 12, baseType: !330, size: 32, align: 32, offset: 160)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "redo", scope: !746, file: !745, line: 13, baseType: !330, size: 1, align: 32, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "history_name", scope: !327, file: !36, line: 49, baseType: !332, size: 64, align: 64, offset: 768)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !327, file: !36, line: 51, baseType: !330, size: 32, align: 32, offset: 832)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !327, file: !36, line: 52, baseType: !332, size: 64, align: 64, offset: 896)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "last_timestamp", scope: !327, file: !36, line: 54, baseType: !591, size: 64, align: 64, offset: 960)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "last_line", scope: !327, file: !36, line: 55, baseType: !591, size: 64, align: 64, offset: 1024)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "theme_name", scope: !327, file: !36, line: 57, baseType: !332, size: 64, align: 64, offset: 1088)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "theme", scope: !327, file: !36, line: 58, baseType: !317, size: 64, align: 64, offset: 1152)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "gui_data", scope: !327, file: !36, line: 60, baseType: !317, size: 64, align: 64, offset: 1216)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !770, line: 9, baseType: !771)
!770 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64, align: 64)
!772 = !DISubroutineType(types: !773)
!773 = !{null, !774, !774, !774, !774, !774, !774}
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64, align: 64)
!775 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!776 = !{i32 2, !"Dwarf Version", i32 4}
!777 = !{i32 2, !"Debug Info Version", i32 3}
!778 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!779 = distinct !DISubprogram(name: "window_item_add", scope: !780, file: !780, line: 65, type: !781, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !783)
!780 = !DIFile(filename: "window-items.c", directory: "/home/lichi/Desktop/irssi/task1")
!781 = !DISubroutineType(types: !782)
!782 = !{null, !324, !345, !330}
!783 = !{}
!784 = !DILocalVariable(name: "window", arg: 1, scope: !779, file: !780, line: 65, type: !324)
!785 = !DIExpression()
!786 = !DILocation(line: 65, column: 34, scope: !779)
!787 = !DILocalVariable(name: "item", arg: 2, scope: !779, file: !780, line: 65, type: !345)
!788 = !DILocation(line: 65, column: 55, scope: !779)
!789 = !DILocalVariable(name: "automatic", arg: 3, scope: !779, file: !780, line: 65, type: !330)
!790 = !DILocation(line: 65, column: 65, scope: !779)
!791 = !DILocation(line: 67, column: 25, scope: !779)
!792 = !DILocation(line: 67, column: 33, scope: !779)
!793 = !DILocation(line: 67, column: 39, scope: !779)
!794 = !DILocation(line: 67, column: 2, scope: !779)
!795 = !DILocation(line: 68, column: 1, scope: !779)
!796 = distinct !DISubprogram(name: "window_item_add_signal", scope: !780, file: !780, line: 35, type: !797, isLocal: true, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !783)
!797 = !DISubroutineType(types: !798)
!798 = !{null, !324, !345, !330, !330}
!799 = !DILocalVariable(name: "window", arg: 1, scope: !796, file: !780, line: 35, type: !324)
!800 = !DILocation(line: 35, column: 48, scope: !796)
!801 = !DILocalVariable(name: "item", arg: 2, scope: !796, file: !780, line: 35, type: !345)
!802 = !DILocation(line: 35, column: 69, scope: !796)
!803 = !DILocalVariable(name: "automatic", arg: 3, scope: !796, file: !780, line: 35, type: !330)
!804 = !DILocation(line: 35, column: 79, scope: !796)
!805 = !DILocalVariable(name: "send_signal", arg: 4, scope: !796, file: !780, line: 35, type: !330)
!806 = !DILocation(line: 35, column: 94, scope: !796)
!807 = !DILocation(line: 37, column: 2, scope: !796)
!808 = distinct !{!808, !807}
!809 = !DILocation(line: 37, column: 10, scope: !810)
!810 = !DILexicalBlockFile(scope: !811, file: !780, discriminator: 1)
!811 = distinct !DILexicalBlock(scope: !812, file: !780, line: 37, column: 10)
!812 = distinct !DILexicalBlock(scope: !796, file: !780, line: 37, column: 4)
!813 = !DILocation(line: 37, column: 17, scope: !810)
!814 = !DILocation(line: 37, column: 5, scope: !815)
!815 = !DILexicalBlockFile(scope: !816, file: !780, discriminator: 2)
!816 = distinct !DILexicalBlock(scope: !811, file: !780, line: 37, column: 3)
!817 = !DILocation(line: 37, column: 14, scope: !818)
!818 = !DILexicalBlockFile(scope: !819, file: !780, discriminator: 3)
!819 = distinct !DILexicalBlock(scope: !811, file: !780, line: 37, column: 12)
!820 = !DILocation(line: 37, column: 101, scope: !818)
!821 = !DILocation(line: 37, column: 112, scope: !822)
!822 = !DILexicalBlockFile(scope: !812, file: !780, discriminator: 4)
!823 = !DILocation(line: 38, column: 2, scope: !796)
!824 = distinct !{!824, !823}
!825 = !DILocation(line: 38, column: 10, scope: !826)
!826 = !DILexicalBlockFile(scope: !827, file: !780, discriminator: 1)
!827 = distinct !DILexicalBlock(scope: !828, file: !780, line: 38, column: 10)
!828 = distinct !DILexicalBlock(scope: !796, file: !780, line: 38, column: 4)
!829 = !DILocation(line: 38, column: 15, scope: !826)
!830 = !DILocation(line: 38, column: 5, scope: !831)
!831 = !DILexicalBlockFile(scope: !832, file: !780, discriminator: 2)
!832 = distinct !DILexicalBlock(scope: !827, file: !780, line: 38, column: 3)
!833 = !DILocation(line: 38, column: 14, scope: !834)
!834 = !DILexicalBlockFile(scope: !835, file: !780, discriminator: 3)
!835 = distinct !DILexicalBlock(scope: !827, file: !780, line: 38, column: 12)
!836 = !DILocation(line: 38, column: 99, scope: !834)
!837 = !DILocation(line: 38, column: 110, scope: !838)
!838 = !DILexicalBlockFile(scope: !828, file: !780, discriminator: 4)
!839 = !DILocation(line: 39, column: 2, scope: !796)
!840 = distinct !{!840, !839}
!841 = !DILocation(line: 39, column: 10, scope: !842)
!842 = !DILexicalBlockFile(scope: !843, file: !780, discriminator: 1)
!843 = distinct !DILexicalBlock(scope: !844, file: !780, line: 39, column: 10)
!844 = distinct !DILexicalBlock(scope: !796, file: !780, line: 39, column: 4)
!845 = !DILocation(line: 39, column: 16, scope: !842)
!846 = !DILocation(line: 39, column: 23, scope: !842)
!847 = !DILocation(line: 39, column: 5, scope: !848)
!848 = !DILexicalBlockFile(scope: !849, file: !780, discriminator: 2)
!849 = distinct !DILexicalBlock(scope: !843, file: !780, line: 39, column: 3)
!850 = !DILocation(line: 39, column: 14, scope: !851)
!851 = !DILexicalBlockFile(scope: !852, file: !780, discriminator: 3)
!852 = distinct !DILexicalBlock(scope: !843, file: !780, line: 39, column: 12)
!853 = !DILocation(line: 39, column: 107, scope: !851)
!854 = !DILocation(line: 39, column: 118, scope: !855)
!855 = !DILexicalBlockFile(scope: !844, file: !780, discriminator: 4)
!856 = !DILocation(line: 41, column: 24, scope: !796)
!857 = !DILocation(line: 41, column: 9, scope: !796)
!858 = !DILocation(line: 41, column: 15, scope: !796)
!859 = !DILocation(line: 41, column: 22, scope: !796)
!860 = !DILocation(line: 43, column: 6, scope: !861)
!861 = distinct !DILexicalBlock(scope: !796, file: !780, line: 43, column: 6)
!862 = !DILocation(line: 43, column: 14, scope: !861)
!863 = !DILocation(line: 43, column: 20, scope: !861)
!864 = !DILocation(line: 43, column: 6, scope: !796)
!865 = !DILocation(line: 44, column: 20, scope: !866)
!866 = distinct !DILexicalBlock(scope: !861, file: !780, line: 43, column: 28)
!867 = !DILocation(line: 44, column: 3, scope: !866)
!868 = !DILocation(line: 44, column: 11, scope: !866)
!869 = !DILocation(line: 44, column: 18, scope: !866)
!870 = !DILocation(line: 45, column: 27, scope: !866)
!871 = !DILocation(line: 45, column: 33, scope: !866)
!872 = !DILocation(line: 45, column: 3, scope: !866)
!873 = !DILocation(line: 45, column: 11, scope: !866)
!874 = !DILocation(line: 45, column: 25, scope: !866)
!875 = !DILocation(line: 46, column: 2, scope: !866)
!876 = !DILocation(line: 48, column: 7, scope: !877)
!877 = distinct !DILexicalBlock(scope: !796, file: !780, line: 48, column: 6)
!878 = !DILocation(line: 48, column: 17, scope: !877)
!879 = !DILocation(line: 48, column: 20, scope: !880)
!880 = !DILexicalBlockFile(scope: !877, file: !780, discriminator: 1)
!881 = !DILocation(line: 48, column: 6, scope: !880)
!882 = !DILocation(line: 49, column: 7, scope: !883)
!883 = distinct !DILexicalBlock(scope: !884, file: !780, line: 49, column: 7)
!884 = distinct !DILexicalBlock(scope: !877, file: !780, line: 48, column: 61)
!885 = !DILocation(line: 49, column: 7, scope: !884)
!886 = !DILocation(line: 50, column: 47, scope: !883)
!887 = !DILocation(line: 50, column: 4, scope: !883)
!888 = !DILocation(line: 51, column: 21, scope: !884)
!889 = !DILocation(line: 51, column: 3, scope: !884)
!890 = !DILocation(line: 52, column: 2, scope: !884)
!891 = !DILocation(line: 54, column: 33, scope: !796)
!892 = !DILocation(line: 54, column: 41, scope: !796)
!893 = !DILocation(line: 54, column: 48, scope: !796)
!894 = !DILocation(line: 54, column: 18, scope: !796)
!895 = !DILocation(line: 54, column: 2, scope: !796)
!896 = !DILocation(line: 54, column: 10, scope: !796)
!897 = !DILocation(line: 54, column: 16, scope: !796)
!898 = !DILocation(line: 55, column: 6, scope: !899)
!899 = distinct !DILexicalBlock(scope: !796, file: !780, line: 55, column: 6)
!900 = !DILocation(line: 55, column: 6, scope: !796)
!901 = !DILocation(line: 56, column: 37, scope: !899)
!902 = !DILocation(line: 56, column: 45, scope: !899)
!903 = !DILocation(line: 56, column: 3, scope: !899)
!904 = !DILocation(line: 58, column: 21, scope: !905)
!905 = distinct !DILexicalBlock(scope: !796, file: !780, line: 58, column: 6)
!906 = !DILocation(line: 58, column: 29, scope: !905)
!907 = !DILocation(line: 58, column: 6, scope: !905)
!908 = !DILocation(line: 58, column: 36, scope: !905)
!909 = !DILocation(line: 58, column: 41, scope: !905)
!910 = !DILocation(line: 59, column: 8, scope: !905)
!911 = !DILocation(line: 59, column: 18, scope: !905)
!912 = !DILocation(line: 59, column: 21, scope: !913)
!913 = !DILexicalBlockFile(scope: !905, file: !780, discriminator: 1)
!914 = !DILocation(line: 58, column: 6, scope: !915)
!915 = !DILexicalBlockFile(scope: !796, file: !780, discriminator: 1)
!916 = !DILocation(line: 60, column: 17, scope: !917)
!917 = distinct !DILexicalBlock(scope: !905, file: !780, line: 59, column: 64)
!918 = !DILocation(line: 60, column: 25, scope: !917)
!919 = !DILocation(line: 60, column: 32, scope: !917)
!920 = !DILocation(line: 61, column: 26, scope: !917)
!921 = !DILocation(line: 61, column: 34, scope: !917)
!922 = !DILocation(line: 61, column: 3, scope: !917)
!923 = !DILocation(line: 62, column: 2, scope: !917)
!924 = !DILocation(line: 63, column: 1, scope: !796)
!925 = distinct !DISubprogram(name: "window_item_remove", scope: !780, file: !780, line: 93, type: !683, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !783)
!926 = !DILocalVariable(name: "item", arg: 1, scope: !925, file: !780, line: 93, type: !345)
!927 = !DILocation(line: 93, column: 38, scope: !925)
!928 = !DILocation(line: 95, column: 28, scope: !925)
!929 = !DILocation(line: 95, column: 2, scope: !925)
!930 = !DILocation(line: 96, column: 1, scope: !925)
!931 = distinct !DISubprogram(name: "window_item_remove_signal", scope: !780, file: !780, line: 70, type: !932, isLocal: true, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !783)
!932 = !DISubroutineType(types: !933)
!933 = !{null, !345, !330}
!934 = !DILocalVariable(name: "item", arg: 1, scope: !931, file: !780, line: 70, type: !345)
!935 = !DILocation(line: 70, column: 52, scope: !931)
!936 = !DILocalVariable(name: "emit_signal", arg: 2, scope: !931, file: !780, line: 70, type: !330)
!937 = !DILocation(line: 70, column: 62, scope: !931)
!938 = !DILocalVariable(name: "window", scope: !931, file: !780, line: 72, type: !324)
!939 = !DILocation(line: 72, column: 14, scope: !931)
!940 = !DILocation(line: 74, column: 2, scope: !931)
!941 = distinct !{!941, !940}
!942 = !DILocation(line: 74, column: 10, scope: !943)
!943 = !DILexicalBlockFile(scope: !944, file: !780, discriminator: 1)
!944 = distinct !DILexicalBlock(scope: !945, file: !780, line: 74, column: 10)
!945 = distinct !DILexicalBlock(scope: !931, file: !780, line: 74, column: 4)
!946 = !DILocation(line: 74, column: 15, scope: !943)
!947 = !DILocation(line: 74, column: 5, scope: !948)
!948 = !DILexicalBlockFile(scope: !949, file: !780, discriminator: 2)
!949 = distinct !DILexicalBlock(scope: !944, file: !780, line: 74, column: 3)
!950 = !DILocation(line: 74, column: 14, scope: !951)
!951 = !DILexicalBlockFile(scope: !952, file: !780, discriminator: 3)
!952 = distinct !DILexicalBlock(scope: !944, file: !780, line: 74, column: 12)
!953 = !DILocation(line: 74, column: 99, scope: !951)
!954 = !DILocation(line: 74, column: 110, scope: !955)
!955 = !DILexicalBlockFile(scope: !945, file: !780, discriminator: 4)
!956 = !DILocation(line: 76, column: 45, scope: !931)
!957 = !DILocation(line: 76, column: 53, scope: !931)
!958 = !DILocation(line: 76, column: 12, scope: !931)
!959 = !DILocation(line: 76, column: 9, scope: !931)
!960 = !DILocation(line: 78, column: 6, scope: !961)
!961 = distinct !DILexicalBlock(scope: !931, file: !780, line: 78, column: 6)
!962 = !DILocation(line: 78, column: 13, scope: !961)
!963 = !DILocation(line: 78, column: 6, scope: !931)
!964 = !DILocation(line: 79, column: 3, scope: !961)
!965 = !DILocation(line: 81, column: 9, scope: !931)
!966 = !DILocation(line: 81, column: 15, scope: !931)
!967 = !DILocation(line: 81, column: 22, scope: !931)
!968 = !DILocation(line: 82, column: 33, scope: !931)
!969 = !DILocation(line: 82, column: 41, scope: !931)
!970 = !DILocation(line: 82, column: 48, scope: !931)
!971 = !DILocation(line: 82, column: 18, scope: !931)
!972 = !DILocation(line: 82, column: 2, scope: !931)
!973 = !DILocation(line: 82, column: 10, scope: !931)
!974 = !DILocation(line: 82, column: 16, scope: !931)
!975 = !DILocation(line: 84, column: 6, scope: !976)
!976 = distinct !DILexicalBlock(scope: !931, file: !780, line: 84, column: 6)
!977 = !DILocation(line: 84, column: 14, scope: !976)
!978 = !DILocation(line: 84, column: 24, scope: !976)
!979 = !DILocation(line: 84, column: 21, scope: !976)
!980 = !DILocation(line: 84, column: 6, scope: !931)
!981 = !DILocation(line: 85, column: 26, scope: !982)
!982 = distinct !DILexicalBlock(scope: !976, file: !780, line: 84, column: 30)
!983 = !DILocation(line: 85, column: 34, scope: !982)
!984 = !DILocation(line: 85, column: 42, scope: !982)
!985 = !DILocation(line: 85, column: 48, scope: !982)
!986 = !DILocation(line: 85, column: 34, scope: !987)
!987 = !DILexicalBlockFile(scope: !982, file: !780, discriminator: 1)
!988 = !DILocation(line: 86, column: 12, scope: !982)
!989 = !DILocation(line: 86, column: 20, scope: !982)
!990 = !DILocation(line: 86, column: 27, scope: !982)
!991 = !DILocation(line: 85, column: 34, scope: !992)
!992 = !DILexicalBlockFile(scope: !982, file: !780, discriminator: 2)
!993 = !DILocation(line: 85, column: 34, scope: !994)
!994 = !DILexicalBlockFile(scope: !982, file: !780, discriminator: 3)
!995 = !DILocation(line: 85, column: 3, scope: !994)
!996 = !DILocation(line: 87, column: 2, scope: !982)
!997 = !DILocation(line: 89, column: 6, scope: !998)
!998 = distinct !DILexicalBlock(scope: !931, file: !780, line: 89, column: 6)
!999 = !DILocation(line: 89, column: 6, scope: !931)
!1000 = !DILocation(line: 90, column: 40, scope: !998)
!1001 = !DILocation(line: 90, column: 48, scope: !998)
!1002 = !DILocation(line: 90, column: 3, scope: !998)
!1003 = !DILocation(line: 91, column: 1, scope: !931)
!1004 = distinct !DISubprogram(name: "window_item_destroy", scope: !780, file: !780, line: 98, type: !683, isLocal: false, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !783)
!1005 = !DILocalVariable(name: "item", arg: 1, scope: !1004, file: !780, line: 98, type: !345)
!1006 = !DILocation(line: 98, column: 39, scope: !1004)
!1007 = !DILocation(line: 100, column: 28, scope: !1004)
!1008 = !DILocation(line: 100, column: 9, scope: !1004)
!1009 = !DILocation(line: 101, column: 9, scope: !1004)
!1010 = !DILocation(line: 101, column: 15, scope: !1004)
!1011 = !DILocation(line: 101, column: 23, scope: !1004)
!1012 = !DILocation(line: 102, column: 1, scope: !1004)
!1013 = distinct !DISubprogram(name: "window_item_change_server", scope: !780, file: !780, line: 104, type: !1014, isLocal: false, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !783)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{null, !345, !317}
!1016 = !DILocalVariable(name: "item", arg: 1, scope: !1013, file: !780, line: 104, type: !345)
!1017 = !DILocation(line: 104, column: 45, scope: !1013)
!1018 = !DILocalVariable(name: "server", arg: 2, scope: !1013, file: !780, line: 104, type: !317)
!1019 = !DILocation(line: 104, column: 57, scope: !1013)
!1020 = !DILocalVariable(name: "window", scope: !1013, file: !780, line: 106, type: !324)
!1021 = !DILocation(line: 106, column: 14, scope: !1013)
!1022 = !DILocation(line: 108, column: 2, scope: !1013)
!1023 = distinct !{!1023, !1022}
!1024 = !DILocation(line: 108, column: 10, scope: !1025)
!1025 = !DILexicalBlockFile(scope: !1026, file: !780, discriminator: 1)
!1026 = distinct !DILexicalBlock(scope: !1027, file: !780, line: 108, column: 10)
!1027 = distinct !DILexicalBlock(scope: !1013, file: !780, line: 108, column: 4)
!1028 = !DILocation(line: 108, column: 15, scope: !1025)
!1029 = !DILocation(line: 108, column: 5, scope: !1030)
!1030 = !DILexicalBlockFile(scope: !1031, file: !780, discriminator: 2)
!1031 = distinct !DILexicalBlock(scope: !1026, file: !780, line: 108, column: 3)
!1032 = !DILocation(line: 108, column: 14, scope: !1033)
!1033 = !DILexicalBlockFile(scope: !1034, file: !780, discriminator: 3)
!1034 = distinct !DILexicalBlock(scope: !1026, file: !780, line: 108, column: 12)
!1035 = !DILocation(line: 108, column: 99, scope: !1033)
!1036 = !DILocation(line: 108, column: 110, scope: !1037)
!1037 = !DILexicalBlockFile(scope: !1027, file: !780, discriminator: 4)
!1038 = !DILocation(line: 110, column: 45, scope: !1013)
!1039 = !DILocation(line: 110, column: 53, scope: !1013)
!1040 = !DILocation(line: 110, column: 12, scope: !1013)
!1041 = !DILocation(line: 110, column: 9, scope: !1013)
!1042 = !DILocation(line: 111, column: 17, scope: !1013)
!1043 = !DILocation(line: 111, column: 2, scope: !1013)
!1044 = !DILocation(line: 111, column: 8, scope: !1013)
!1045 = !DILocation(line: 111, column: 15, scope: !1013)
!1046 = !DILocation(line: 113, column: 54, scope: !1013)
!1047 = !DILocation(line: 113, column: 62, scope: !1013)
!1048 = !DILocation(line: 113, column: 9, scope: !1013)
!1049 = !DILocation(line: 114, column: 6, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1013, file: !780, line: 114, column: 6)
!1051 = !DILocation(line: 114, column: 14, scope: !1050)
!1052 = !DILocation(line: 114, column: 24, scope: !1050)
!1053 = !DILocation(line: 114, column: 21, scope: !1050)
!1054 = !DILocation(line: 114, column: 6, scope: !1013)
!1055 = !DILocation(line: 114, column: 51, scope: !1056)
!1056 = !DILexicalBlockFile(scope: !1050, file: !780, discriminator: 1)
!1057 = !DILocation(line: 114, column: 59, scope: !1056)
!1058 = !DILocation(line: 114, column: 65, scope: !1056)
!1059 = !DILocation(line: 114, column: 30, scope: !1056)
!1060 = !DILocation(line: 115, column: 1, scope: !1013)
!1061 = distinct !DISubprogram(name: "window_item_set_active", scope: !780, file: !780, line: 117, type: !1062, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !783)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{null, !324, !345}
!1064 = !DILocalVariable(name: "window", arg: 1, scope: !1061, file: !780, line: 117, type: !324)
!1065 = !DILocation(line: 117, column: 41, scope: !1061)
!1066 = !DILocalVariable(name: "item", arg: 2, scope: !1061, file: !780, line: 117, type: !345)
!1067 = !DILocation(line: 117, column: 62, scope: !1061)
!1068 = !DILocalVariable(name: "old_window", scope: !1061, file: !780, line: 119, type: !324)
!1069 = !DILocation(line: 119, column: 15, scope: !1061)
!1070 = !DILocation(line: 121, column: 9, scope: !1061)
!1071 = distinct !{!1071, !1070}
!1072 = !DILocation(line: 121, column: 17, scope: !1073)
!1073 = !DILexicalBlockFile(scope: !1074, file: !780, discriminator: 1)
!1074 = distinct !DILexicalBlock(scope: !1075, file: !780, line: 121, column: 17)
!1075 = distinct !DILexicalBlock(scope: !1061, file: !780, line: 121, column: 11)
!1076 = !DILocation(line: 121, column: 24, scope: !1073)
!1077 = !DILocation(line: 121, column: 12, scope: !1078)
!1078 = !DILexicalBlockFile(scope: !1079, file: !780, discriminator: 2)
!1079 = distinct !DILexicalBlock(scope: !1074, file: !780, line: 121, column: 10)
!1080 = !DILocation(line: 121, column: 21, scope: !1081)
!1081 = !DILexicalBlockFile(scope: !1082, file: !780, discriminator: 3)
!1082 = distinct !DILexicalBlock(scope: !1074, file: !780, line: 121, column: 19)
!1083 = !DILocation(line: 121, column: 108, scope: !1081)
!1084 = !DILocation(line: 121, column: 119, scope: !1085)
!1085 = !DILexicalBlockFile(scope: !1075, file: !780, discriminator: 4)
!1086 = !DILocation(line: 123, column: 13, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1061, file: !780, line: 123, column: 13)
!1088 = !DILocation(line: 123, column: 18, scope: !1087)
!1089 = !DILocation(line: 123, column: 13, scope: !1061)
!1090 = !DILocation(line: 124, column: 60, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1087, file: !780, line: 123, column: 26)
!1092 = !DILocation(line: 124, column: 68, scope: !1091)
!1093 = !DILocation(line: 124, column: 27, scope: !1091)
!1094 = !DILocation(line: 124, column: 24, scope: !1091)
!1095 = !DILocation(line: 125, column: 14, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1091, file: !780, line: 125, column: 14)
!1097 = !DILocation(line: 125, column: 28, scope: !1096)
!1098 = !DILocation(line: 125, column: 25, scope: !1096)
!1099 = !DILocation(line: 125, column: 14, scope: !1091)
!1100 = !DILocation(line: 127, column: 43, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1096, file: !780, line: 125, column: 36)
!1102 = !DILocation(line: 127, column: 17, scope: !1101)
!1103 = !DILocation(line: 128, column: 40, scope: !1101)
!1104 = !DILocation(line: 128, column: 48, scope: !1101)
!1105 = !DILocation(line: 128, column: 17, scope: !1101)
!1106 = !DILocation(line: 129, column: 53, scope: !1101)
!1107 = !DILocation(line: 129, column: 61, scope: !1101)
!1108 = !DILocation(line: 129, column: 67, scope: !1101)
!1109 = !DILocation(line: 129, column: 17, scope: !1101)
!1110 = !DILocation(line: 130, column: 10, scope: !1101)
!1111 = !DILocation(line: 131, column: 9, scope: !1091)
!1112 = !DILocation(line: 133, column: 6, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1061, file: !780, line: 133, column: 6)
!1114 = !DILocation(line: 133, column: 14, scope: !1113)
!1115 = !DILocation(line: 133, column: 24, scope: !1113)
!1116 = !DILocation(line: 133, column: 21, scope: !1113)
!1117 = !DILocation(line: 133, column: 6, scope: !1061)
!1118 = !DILocation(line: 134, column: 20, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1113, file: !780, line: 133, column: 30)
!1120 = !DILocation(line: 134, column: 3, scope: !1119)
!1121 = !DILocation(line: 134, column: 11, scope: !1119)
!1122 = !DILocation(line: 134, column: 18, scope: !1119)
!1123 = !DILocation(line: 135, column: 7, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1119, file: !780, line: 135, column: 7)
!1125 = !DILocation(line: 135, column: 12, scope: !1124)
!1126 = !DILocation(line: 135, column: 19, scope: !1124)
!1127 = !DILocation(line: 135, column: 22, scope: !1128)
!1128 = !DILexicalBlockFile(scope: !1124, file: !780, discriminator: 1)
!1129 = !DILocation(line: 135, column: 30, scope: !1128)
!1130 = !DILocation(line: 135, column: 47, scope: !1128)
!1131 = !DILocation(line: 135, column: 53, scope: !1128)
!1132 = !DILocation(line: 135, column: 44, scope: !1128)
!1133 = !DILocation(line: 135, column: 7, scope: !1128)
!1134 = !DILocation(line: 136, column: 25, scope: !1124)
!1135 = !DILocation(line: 136, column: 33, scope: !1124)
!1136 = !DILocation(line: 136, column: 39, scope: !1124)
!1137 = !DILocation(line: 136, column: 4, scope: !1124)
!1138 = !DILocation(line: 137, column: 41, scope: !1119)
!1139 = !DILocation(line: 137, column: 49, scope: !1119)
!1140 = !DILocation(line: 137, column: 3, scope: !1119)
!1141 = !DILocation(line: 138, column: 2, scope: !1119)
!1142 = !DILocation(line: 139, column: 1, scope: !1061)
!1143 = distinct !DISubprogram(name: "window_item_is_active", scope: !780, file: !780, line: 143, type: !1144, isLocal: false, isDefinition: true, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !783)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!330, !345}
!1146 = !DILocalVariable(name: "item", arg: 1, scope: !1143, file: !780, line: 143, type: !345)
!1147 = !DILocation(line: 143, column: 40, scope: !1143)
!1148 = !DILocalVariable(name: "window", scope: !1143, file: !780, line: 145, type: !324)
!1149 = !DILocation(line: 145, column: 14, scope: !1143)
!1150 = !DILocation(line: 147, column: 6, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1143, file: !780, line: 147, column: 6)
!1152 = !DILocation(line: 147, column: 11, scope: !1151)
!1153 = !DILocation(line: 147, column: 6, scope: !1143)
!1154 = !DILocation(line: 148, column: 3, scope: !1151)
!1155 = !DILocation(line: 150, column: 45, scope: !1143)
!1156 = !DILocation(line: 150, column: 53, scope: !1143)
!1157 = !DILocation(line: 150, column: 12, scope: !1143)
!1158 = !DILocation(line: 150, column: 9, scope: !1143)
!1159 = !DILocation(line: 151, column: 6, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1143, file: !780, line: 151, column: 6)
!1161 = !DILocation(line: 151, column: 13, scope: !1160)
!1162 = !DILocation(line: 151, column: 6, scope: !1143)
!1163 = !DILocation(line: 152, column: 3, scope: !1160)
!1164 = !DILocation(line: 154, column: 9, scope: !1143)
!1165 = !DILocation(line: 154, column: 17, scope: !1143)
!1166 = !DILocation(line: 154, column: 27, scope: !1143)
!1167 = !DILocation(line: 154, column: 24, scope: !1143)
!1168 = !DILocation(line: 154, column: 2, scope: !1143)
!1169 = !DILocation(line: 155, column: 1, scope: !1143)
!1170 = distinct !DISubprogram(name: "window_item_prev", scope: !780, file: !780, line: 157, type: !1171, isLocal: false, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !783)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{null, !324}
!1173 = !DILocalVariable(name: "window", arg: 1, scope: !1170, file: !780, line: 157, type: !324)
!1174 = !DILocation(line: 157, column: 35, scope: !1170)
!1175 = !DILocalVariable(name: "last", scope: !1170, file: !780, line: 159, type: !345)
!1176 = !DILocation(line: 159, column: 15, scope: !1170)
!1177 = !DILocalVariable(name: "tmp", scope: !1170, file: !780, line: 160, type: !336)
!1178 = !DILocation(line: 160, column: 10, scope: !1170)
!1179 = !DILocation(line: 162, column: 2, scope: !1170)
!1180 = distinct !{!1180, !1179}
!1181 = !DILocation(line: 162, column: 10, scope: !1182)
!1182 = !DILexicalBlockFile(scope: !1183, file: !780, discriminator: 1)
!1183 = distinct !DILexicalBlock(scope: !1184, file: !780, line: 162, column: 10)
!1184 = distinct !DILexicalBlock(scope: !1170, file: !780, line: 162, column: 4)
!1185 = !DILocation(line: 162, column: 17, scope: !1182)
!1186 = !DILocation(line: 162, column: 5, scope: !1187)
!1187 = !DILexicalBlockFile(scope: !1188, file: !780, discriminator: 2)
!1188 = distinct !DILexicalBlock(scope: !1183, file: !780, line: 162, column: 3)
!1189 = !DILocation(line: 162, column: 14, scope: !1190)
!1190 = !DILexicalBlockFile(scope: !1191, file: !780, discriminator: 3)
!1191 = distinct !DILexicalBlock(scope: !1183, file: !780, line: 162, column: 12)
!1192 = !DILocation(line: 162, column: 101, scope: !1190)
!1193 = !DILocation(line: 162, column: 112, scope: !1194)
!1194 = !DILexicalBlockFile(scope: !1184, file: !780, discriminator: 4)
!1195 = !DILocation(line: 164, column: 7, scope: !1170)
!1196 = !DILocation(line: 165, column: 13, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1170, file: !780, line: 165, column: 2)
!1198 = !DILocation(line: 165, column: 21, scope: !1197)
!1199 = !DILocation(line: 165, column: 11, scope: !1197)
!1200 = !DILocation(line: 165, column: 7, scope: !1197)
!1201 = !DILocation(line: 165, column: 28, scope: !1202)
!1202 = !DILexicalBlockFile(scope: !1203, file: !780, discriminator: 1)
!1203 = distinct !DILexicalBlock(scope: !1197, file: !780, line: 165, column: 2)
!1204 = !DILocation(line: 165, column: 32, scope: !1202)
!1205 = !DILocation(line: 165, column: 2, scope: !1202)
!1206 = !DILocalVariable(name: "rec", scope: !1207, file: !780, line: 166, type: !345)
!1207 = distinct !DILexicalBlock(scope: !1203, file: !780, line: 165, column: 57)
!1208 = !DILocation(line: 166, column: 16, scope: !1207)
!1209 = !DILocation(line: 166, column: 22, scope: !1207)
!1210 = !DILocation(line: 166, column: 27, scope: !1207)
!1211 = !DILocation(line: 168, column: 7, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1207, file: !780, line: 168, column: 7)
!1213 = !DILocation(line: 168, column: 14, scope: !1212)
!1214 = !DILocation(line: 168, column: 22, scope: !1212)
!1215 = !DILocation(line: 168, column: 11, scope: !1212)
!1216 = !DILocation(line: 168, column: 7, scope: !1207)
!1217 = !DILocation(line: 169, column: 11, scope: !1212)
!1218 = !DILocation(line: 169, column: 9, scope: !1212)
!1219 = !DILocation(line: 169, column: 4, scope: !1212)
!1220 = !DILocation(line: 173, column: 8, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !780, line: 173, column: 8)
!1222 = distinct !DILexicalBlock(scope: !1212, file: !780, line: 170, column: 8)
!1223 = !DILocation(line: 173, column: 13, scope: !1221)
!1224 = !DILocation(line: 173, column: 8, scope: !1222)
!1225 = !DILocation(line: 173, column: 21, scope: !1226)
!1226 = !DILexicalBlockFile(scope: !1221, file: !780, discriminator: 1)
!1227 = !DILocation(line: 175, column: 2, scope: !1207)
!1228 = !DILocation(line: 165, column: 46, scope: !1229)
!1229 = !DILexicalBlockFile(scope: !1203, file: !780, discriminator: 2)
!1230 = !DILocation(line: 165, column: 51, scope: !1229)
!1231 = !DILocation(line: 165, column: 44, scope: !1229)
!1232 = !DILocation(line: 165, column: 2, scope: !1229)
!1233 = distinct !{!1233, !1234}
!1234 = !DILocation(line: 165, column: 2, scope: !1170)
!1235 = !DILocation(line: 177, column: 6, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1170, file: !780, line: 177, column: 6)
!1237 = !DILocation(line: 177, column: 11, scope: !1236)
!1238 = !DILocation(line: 177, column: 6, scope: !1170)
!1239 = !DILocation(line: 178, column: 40, scope: !1236)
!1240 = !DILocation(line: 178, column: 48, scope: !1236)
!1241 = !DILocation(line: 178, column: 17, scope: !1236)
!1242 = !DILocation(line: 179, column: 1, scope: !1170)
!1243 = distinct !DISubprogram(name: "window_item_next", scope: !780, file: !780, line: 181, type: !1171, isLocal: false, isDefinition: true, scopeLine: 182, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !783)
!1244 = !DILocalVariable(name: "window", arg: 1, scope: !1243, file: !780, line: 181, type: !324)
!1245 = !DILocation(line: 181, column: 35, scope: !1243)
!1246 = !DILocalVariable(name: "next", scope: !1243, file: !780, line: 183, type: !345)
!1247 = !DILocation(line: 183, column: 15, scope: !1243)
!1248 = !DILocalVariable(name: "tmp", scope: !1243, file: !780, line: 184, type: !336)
!1249 = !DILocation(line: 184, column: 10, scope: !1243)
!1250 = !DILocalVariable(name: "gone", scope: !1243, file: !780, line: 185, type: !330)
!1251 = !DILocation(line: 185, column: 6, scope: !1243)
!1252 = !DILocation(line: 187, column: 2, scope: !1243)
!1253 = distinct !{!1253, !1252}
!1254 = !DILocation(line: 187, column: 10, scope: !1255)
!1255 = !DILexicalBlockFile(scope: !1256, file: !780, discriminator: 1)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !780, line: 187, column: 10)
!1257 = distinct !DILexicalBlock(scope: !1243, file: !780, line: 187, column: 4)
!1258 = !DILocation(line: 187, column: 17, scope: !1255)
!1259 = !DILocation(line: 187, column: 5, scope: !1260)
!1260 = !DILexicalBlockFile(scope: !1261, file: !780, discriminator: 2)
!1261 = distinct !DILexicalBlock(scope: !1256, file: !780, line: 187, column: 3)
!1262 = !DILocation(line: 187, column: 14, scope: !1263)
!1263 = !DILexicalBlockFile(scope: !1264, file: !780, discriminator: 3)
!1264 = distinct !DILexicalBlock(scope: !1256, file: !780, line: 187, column: 12)
!1265 = !DILocation(line: 187, column: 101, scope: !1263)
!1266 = !DILocation(line: 187, column: 112, scope: !1267)
!1267 = !DILexicalBlockFile(scope: !1257, file: !780, discriminator: 4)
!1268 = !DILocation(line: 189, column: 7, scope: !1243)
!1269 = !DILocation(line: 189, column: 19, scope: !1243)
!1270 = !DILocation(line: 190, column: 13, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1243, file: !780, line: 190, column: 2)
!1272 = !DILocation(line: 190, column: 21, scope: !1271)
!1273 = !DILocation(line: 190, column: 11, scope: !1271)
!1274 = !DILocation(line: 190, column: 7, scope: !1271)
!1275 = !DILocation(line: 190, column: 28, scope: !1276)
!1276 = !DILexicalBlockFile(scope: !1277, file: !780, discriminator: 1)
!1277 = distinct !DILexicalBlock(scope: !1271, file: !780, line: 190, column: 2)
!1278 = !DILocation(line: 190, column: 32, scope: !1276)
!1279 = !DILocation(line: 190, column: 2, scope: !1276)
!1280 = !DILocalVariable(name: "rec", scope: !1281, file: !780, line: 191, type: !345)
!1281 = distinct !DILexicalBlock(scope: !1277, file: !780, line: 190, column: 57)
!1282 = !DILocation(line: 191, column: 16, scope: !1281)
!1283 = !DILocation(line: 191, column: 22, scope: !1281)
!1284 = !DILocation(line: 191, column: 27, scope: !1281)
!1285 = !DILocation(line: 193, column: 7, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1281, file: !780, line: 193, column: 7)
!1287 = !DILocation(line: 193, column: 14, scope: !1286)
!1288 = !DILocation(line: 193, column: 22, scope: !1286)
!1289 = !DILocation(line: 193, column: 11, scope: !1286)
!1290 = !DILocation(line: 193, column: 7, scope: !1281)
!1291 = !DILocation(line: 194, column: 9, scope: !1286)
!1292 = !DILocation(line: 194, column: 4, scope: !1286)
!1293 = !DILocation(line: 196, column: 8, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !780, line: 196, column: 8)
!1295 = distinct !DILexicalBlock(scope: !1286, file: !780, line: 195, column: 8)
!1296 = !DILocation(line: 196, column: 8, scope: !1295)
!1297 = !DILocation(line: 198, column: 12, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1294, file: !780, line: 196, column: 14)
!1299 = !DILocation(line: 198, column: 10, scope: !1298)
!1300 = !DILocation(line: 199, column: 5, scope: !1298)
!1301 = !DILocation(line: 202, column: 8, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1295, file: !780, line: 202, column: 8)
!1303 = !DILocation(line: 202, column: 13, scope: !1302)
!1304 = !DILocation(line: 202, column: 8, scope: !1295)
!1305 = !DILocation(line: 203, column: 12, scope: !1302)
!1306 = !DILocation(line: 203, column: 10, scope: !1302)
!1307 = !DILocation(line: 203, column: 5, scope: !1302)
!1308 = !DILocation(line: 205, column: 2, scope: !1281)
!1309 = !DILocation(line: 190, column: 46, scope: !1310)
!1310 = !DILexicalBlockFile(scope: !1277, file: !780, discriminator: 2)
!1311 = !DILocation(line: 190, column: 51, scope: !1310)
!1312 = !DILocation(line: 190, column: 44, scope: !1310)
!1313 = !DILocation(line: 190, column: 2, scope: !1310)
!1314 = distinct !{!1314, !1315}
!1315 = !DILocation(line: 190, column: 2, scope: !1243)
!1316 = !DILocation(line: 207, column: 6, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1243, file: !780, line: 207, column: 6)
!1318 = !DILocation(line: 207, column: 11, scope: !1317)
!1319 = !DILocation(line: 207, column: 6, scope: !1243)
!1320 = !DILocation(line: 208, column: 40, scope: !1317)
!1321 = !DILocation(line: 208, column: 48, scope: !1317)
!1322 = !DILocation(line: 208, column: 17, scope: !1317)
!1323 = !DILocation(line: 209, column: 1, scope: !1243)
!1324 = distinct !DISubprogram(name: "window_item_find_window", scope: !780, file: !780, line: 211, type: !1325, isLocal: false, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !783)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!345, !324, !317, !322}
!1327 = !DILocalVariable(name: "window", arg: 1, scope: !1324, file: !780, line: 211, type: !324)
!1328 = !DILocation(line: 211, column: 50, scope: !1324)
!1329 = !DILocalVariable(name: "server", arg: 2, scope: !1324, file: !780, line: 212, type: !317)
!1330 = !DILocation(line: 212, column: 44, scope: !1324)
!1331 = !DILocalVariable(name: "name", arg: 3, scope: !1324, file: !780, line: 212, type: !322)
!1332 = !DILocation(line: 212, column: 64, scope: !1324)
!1333 = !DILocalVariable(name: "tmp", scope: !1324, file: !780, line: 214, type: !336)
!1334 = !DILocation(line: 214, column: 10, scope: !1324)
!1335 = !DILocation(line: 216, column: 13, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1324, file: !780, line: 216, column: 2)
!1337 = !DILocation(line: 216, column: 21, scope: !1336)
!1338 = !DILocation(line: 216, column: 11, scope: !1336)
!1339 = !DILocation(line: 216, column: 7, scope: !1336)
!1340 = !DILocation(line: 216, column: 28, scope: !1341)
!1341 = !DILexicalBlockFile(scope: !1342, file: !780, discriminator: 1)
!1342 = distinct !DILexicalBlock(scope: !1336, file: !780, line: 216, column: 2)
!1343 = !DILocation(line: 216, column: 32, scope: !1341)
!1344 = !DILocation(line: 216, column: 2, scope: !1341)
!1345 = !DILocalVariable(name: "rec", scope: !1346, file: !780, line: 217, type: !345)
!1346 = distinct !DILexicalBlock(scope: !1342, file: !780, line: 216, column: 57)
!1347 = !DILocation(line: 217, column: 16, scope: !1346)
!1348 = !DILocation(line: 217, column: 22, scope: !1346)
!1349 = !DILocation(line: 217, column: 27, scope: !1346)
!1350 = !DILocation(line: 219, column: 8, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1346, file: !780, line: 219, column: 7)
!1352 = !DILocation(line: 219, column: 15, scope: !1351)
!1353 = !DILocation(line: 219, column: 22, scope: !1351)
!1354 = !DILocation(line: 219, column: 25, scope: !1355)
!1355 = !DILexicalBlockFile(scope: !1351, file: !780, discriminator: 1)
!1356 = !DILocation(line: 219, column: 30, scope: !1355)
!1357 = !DILocation(line: 219, column: 40, scope: !1355)
!1358 = !DILocation(line: 219, column: 37, scope: !1355)
!1359 = !DILocation(line: 219, column: 48, scope: !1355)
!1360 = !DILocation(line: 220, column: 27, scope: !1351)
!1361 = !DILocation(line: 220, column: 33, scope: !1351)
!1362 = !DILocation(line: 220, column: 38, scope: !1351)
!1363 = !DILocation(line: 220, column: 8, scope: !1351)
!1364 = !DILocation(line: 220, column: 52, scope: !1351)
!1365 = !DILocation(line: 221, column: 8, scope: !1351)
!1366 = !DILocation(line: 221, column: 12, scope: !1355)
!1367 = !DILocation(line: 221, column: 17, scope: !1355)
!1368 = !DILocation(line: 221, column: 22, scope: !1355)
!1369 = !DILocation(line: 221, column: 44, scope: !1370)
!1370 = !DILexicalBlockFile(scope: !1351, file: !780, discriminator: 2)
!1371 = !DILocation(line: 221, column: 50, scope: !1370)
!1372 = !DILocation(line: 221, column: 55, scope: !1370)
!1373 = !DILocation(line: 221, column: 25, scope: !1370)
!1374 = !DILocation(line: 221, column: 61, scope: !1370)
!1375 = !DILocation(line: 219, column: 7, scope: !1376)
!1376 = !DILexicalBlockFile(scope: !1346, file: !780, discriminator: 2)
!1377 = !DILocation(line: 222, column: 11, scope: !1351)
!1378 = !DILocation(line: 222, column: 4, scope: !1351)
!1379 = !DILocation(line: 223, column: 2, scope: !1346)
!1380 = !DILocation(line: 216, column: 46, scope: !1381)
!1381 = !DILexicalBlockFile(scope: !1342, file: !780, discriminator: 2)
!1382 = !DILocation(line: 216, column: 51, scope: !1381)
!1383 = !DILocation(line: 216, column: 44, scope: !1381)
!1384 = !DILocation(line: 216, column: 2, scope: !1381)
!1385 = distinct !{!1385, !1386}
!1386 = !DILocation(line: 216, column: 2, scope: !1324)
!1387 = !DILocation(line: 224, column: 2, scope: !1324)
!1388 = !DILocation(line: 225, column: 1, scope: !1324)
!1389 = distinct !DISubprogram(name: "window_item_find", scope: !780, file: !780, line: 228, type: !1390, isLocal: false, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !783)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{!345, !317, !322}
!1392 = !DILocalVariable(name: "server", arg: 1, scope: !1389, file: !780, line: 228, type: !317)
!1393 = !DILocation(line: 228, column: 37, scope: !1389)
!1394 = !DILocalVariable(name: "name", arg: 2, scope: !1389, file: !780, line: 228, type: !322)
!1395 = !DILocation(line: 228, column: 57, scope: !1389)
!1396 = !DILocalVariable(name: "item", scope: !1389, file: !780, line: 230, type: !345)
!1397 = !DILocation(line: 230, column: 15, scope: !1389)
!1398 = !DILocalVariable(name: "tmp", scope: !1389, file: !780, line: 231, type: !336)
!1399 = !DILocation(line: 231, column: 10, scope: !1389)
!1400 = !DILocation(line: 233, column: 2, scope: !1389)
!1401 = distinct !{!1401, !1400}
!1402 = !DILocation(line: 233, column: 10, scope: !1403)
!1403 = !DILexicalBlockFile(scope: !1404, file: !780, discriminator: 1)
!1404 = distinct !DILexicalBlock(scope: !1405, file: !780, line: 233, column: 10)
!1405 = distinct !DILexicalBlock(scope: !1389, file: !780, line: 233, column: 4)
!1406 = !DILocation(line: 233, column: 15, scope: !1403)
!1407 = !DILocation(line: 233, column: 5, scope: !1408)
!1408 = !DILexicalBlockFile(scope: !1409, file: !780, discriminator: 2)
!1409 = distinct !DILexicalBlock(scope: !1404, file: !780, line: 233, column: 3)
!1410 = !DILocation(line: 233, column: 14, scope: !1411)
!1411 = !DILexicalBlockFile(scope: !1412, file: !780, discriminator: 3)
!1412 = distinct !DILexicalBlock(scope: !1404, file: !780, line: 233, column: 12)
!1413 = !DILocation(line: 233, column: 99, scope: !1411)
!1414 = !DILocation(line: 233, column: 7, scope: !1415)
!1415 = !DILexicalBlockFile(scope: !1405, file: !780, discriminator: 4)
!1416 = !DILocation(line: 235, column: 13, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1389, file: !780, line: 235, column: 2)
!1418 = !DILocation(line: 235, column: 11, scope: !1417)
!1419 = !DILocation(line: 235, column: 7, scope: !1417)
!1420 = !DILocation(line: 235, column: 22, scope: !1421)
!1421 = !DILexicalBlockFile(scope: !1422, file: !780, discriminator: 1)
!1422 = distinct !DILexicalBlock(scope: !1417, file: !780, line: 235, column: 2)
!1423 = !DILocation(line: 235, column: 26, scope: !1421)
!1424 = !DILocation(line: 235, column: 2, scope: !1421)
!1425 = !DILocalVariable(name: "rec", scope: !1426, file: !780, line: 236, type: !324)
!1426 = distinct !DILexicalBlock(scope: !1422, file: !780, line: 235, column: 51)
!1427 = !DILocation(line: 236, column: 15, scope: !1426)
!1428 = !DILocation(line: 236, column: 21, scope: !1426)
!1429 = !DILocation(line: 236, column: 26, scope: !1426)
!1430 = !DILocation(line: 238, column: 34, scope: !1426)
!1431 = !DILocation(line: 238, column: 39, scope: !1426)
!1432 = !DILocation(line: 238, column: 47, scope: !1426)
!1433 = !DILocation(line: 238, column: 10, scope: !1426)
!1434 = !DILocation(line: 238, column: 8, scope: !1426)
!1435 = !DILocation(line: 239, column: 7, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1426, file: !780, line: 239, column: 7)
!1437 = !DILocation(line: 239, column: 12, scope: !1436)
!1438 = !DILocation(line: 239, column: 7, scope: !1426)
!1439 = !DILocation(line: 239, column: 27, scope: !1440)
!1440 = !DILexicalBlockFile(scope: !1436, file: !780, discriminator: 1)
!1441 = !DILocation(line: 239, column: 20, scope: !1440)
!1442 = !DILocation(line: 240, column: 2, scope: !1426)
!1443 = !DILocation(line: 235, column: 40, scope: !1444)
!1444 = !DILexicalBlockFile(scope: !1422, file: !780, discriminator: 2)
!1445 = !DILocation(line: 235, column: 45, scope: !1444)
!1446 = !DILocation(line: 235, column: 38, scope: !1444)
!1447 = !DILocation(line: 235, column: 2, scope: !1444)
!1448 = distinct !{!1448, !1449}
!1449 = !DILocation(line: 235, column: 2, scope: !1389)
!1450 = !DILocation(line: 242, column: 2, scope: !1389)
!1451 = !DILocation(line: 243, column: 1, scope: !1389)
!1452 = distinct !DISubprogram(name: "window_item_create", scope: !780, file: !780, line: 259, type: !932, isLocal: false, isDefinition: true, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !783)
!1453 = !DILocalVariable(name: "item", arg: 1, scope: !1452, file: !780, line: 259, type: !345)
!1454 = !DILocation(line: 259, column: 38, scope: !1452)
!1455 = !DILocalVariable(name: "automatic", arg: 2, scope: !1452, file: !780, line: 259, type: !330)
!1456 = !DILocation(line: 259, column: 48, scope: !1452)
!1457 = !DILocalVariable(name: "window", scope: !1452, file: !780, line: 261, type: !324)
!1458 = !DILocation(line: 261, column: 14, scope: !1452)
!1459 = !DILocalVariable(name: "bind", scope: !1452, file: !780, line: 262, type: !1460)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64, align: 64)
!1461 = !DIDerivedType(tag: DW_TAG_typedef, name: "WINDOW_BIND_REC", file: !36, line: 26, baseType: !1462)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 22, size: 192, align: 64, elements: !1463)
!1463 = !{!1464, !1465, !1466}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !1462, file: !36, line: 23, baseType: !332, size: 64, align: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1462, file: !36, line: 24, baseType: !332, size: 64, align: 64, offset: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "sticky", scope: !1462, file: !36, line: 25, baseType: !437, size: 1, align: 32, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1467 = !DILocation(line: 262, column: 26, scope: !1452)
!1468 = !DILocalVariable(name: "tmp", scope: !1452, file: !780, line: 263, type: !336)
!1469 = !DILocation(line: 263, column: 10, scope: !1452)
!1470 = !DILocalVariable(name: "sorted", scope: !1452, file: !780, line: 263, type: !336)
!1471 = !DILocation(line: 263, column: 16, scope: !1452)
!1472 = !DILocalVariable(name: "clear_waiting", scope: !1452, file: !780, line: 264, type: !330)
!1473 = !DILocation(line: 264, column: 6, scope: !1452)
!1474 = !DILocalVariable(name: "reuse_unused_windows", scope: !1452, file: !780, line: 264, type: !330)
!1475 = !DILocation(line: 264, column: 21, scope: !1452)
!1476 = !DILocation(line: 266, column: 2, scope: !1452)
!1477 = distinct !{!1477, !1476}
!1478 = !DILocation(line: 266, column: 10, scope: !1479)
!1479 = !DILexicalBlockFile(scope: !1480, file: !780, discriminator: 1)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !780, line: 266, column: 10)
!1481 = distinct !DILexicalBlock(scope: !1452, file: !780, line: 266, column: 4)
!1482 = !DILocation(line: 266, column: 15, scope: !1479)
!1483 = !DILocation(line: 266, column: 5, scope: !1484)
!1484 = !DILexicalBlockFile(scope: !1485, file: !780, discriminator: 2)
!1485 = distinct !DILexicalBlock(scope: !1480, file: !780, line: 266, column: 3)
!1486 = !DILocation(line: 266, column: 14, scope: !1487)
!1487 = !DILexicalBlockFile(scope: !1488, file: !780, discriminator: 3)
!1488 = distinct !DILexicalBlock(scope: !1480, file: !780, line: 266, column: 12)
!1489 = !DILocation(line: 266, column: 99, scope: !1487)
!1490 = !DILocation(line: 266, column: 110, scope: !1491)
!1491 = !DILexicalBlockFile(scope: !1481, file: !780, discriminator: 4)
!1492 = !DILocation(line: 268, column: 25, scope: !1452)
!1493 = !DILocation(line: 268, column: 23, scope: !1452)
!1494 = !DILocation(line: 270, column: 16, scope: !1452)
!1495 = !DILocation(line: 271, column: 9, scope: !1452)
!1496 = !DILocation(line: 272, column: 18, scope: !1452)
!1497 = !DILocation(line: 272, column: 16, scope: !1452)
!1498 = !DILocation(line: 273, column: 13, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1452, file: !780, line: 273, column: 2)
!1500 = !DILocation(line: 273, column: 11, scope: !1499)
!1501 = !DILocation(line: 273, column: 7, scope: !1499)
!1502 = !DILocation(line: 273, column: 21, scope: !1503)
!1503 = !DILexicalBlockFile(scope: !1504, file: !780, discriminator: 1)
!1504 = distinct !DILexicalBlock(scope: !1499, file: !780, line: 273, column: 2)
!1505 = !DILocation(line: 273, column: 25, scope: !1503)
!1506 = !DILocation(line: 273, column: 2, scope: !1503)
!1507 = !DILocalVariable(name: "rec", scope: !1508, file: !780, line: 274, type: !324)
!1508 = distinct !DILexicalBlock(scope: !1504, file: !780, line: 273, column: 50)
!1509 = !DILocation(line: 274, column: 15, scope: !1508)
!1510 = !DILocation(line: 274, column: 21, scope: !1508)
!1511 = !DILocation(line: 274, column: 26, scope: !1508)
!1512 = !DILocation(line: 277, column: 7, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1508, file: !780, line: 277, column: 7)
!1514 = !DILocation(line: 277, column: 13, scope: !1513)
!1515 = !DILocation(line: 277, column: 20, scope: !1513)
!1516 = !DILocation(line: 277, column: 7, scope: !1508)
!1517 = !DILocation(line: 278, column: 28, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1513, file: !780, line: 277, column: 28)
!1519 = !DILocation(line: 278, column: 33, scope: !1518)
!1520 = !DILocation(line: 278, column: 39, scope: !1518)
!1521 = !DILocation(line: 278, column: 47, scope: !1518)
!1522 = !DILocation(line: 279, column: 7, scope: !1518)
!1523 = !DILocation(line: 279, column: 13, scope: !1518)
!1524 = !DILocation(line: 278, column: 11, scope: !1518)
!1525 = !DILocation(line: 278, column: 9, scope: !1518)
!1526 = !DILocation(line: 280, column: 8, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1518, file: !780, line: 280, column: 8)
!1528 = !DILocation(line: 280, column: 13, scope: !1527)
!1529 = !DILocation(line: 280, column: 8, scope: !1518)
!1530 = !DILocation(line: 281, column: 38, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !780, line: 281, column: 37)
!1532 = distinct !DILexicalBlock(scope: !1527, file: !780, line: 280, column: 21)
!1533 = !DILocation(line: 281, column: 44, scope: !1531)
!1534 = !DILocation(line: 281, column: 37, scope: !1532)
!1535 = !DILocation(line: 282, column: 26, scope: !1531)
!1536 = !DILocation(line: 282, column: 31, scope: !1531)
!1537 = !DILocation(line: 282, column: 6, scope: !1531)
!1538 = !DILocation(line: 283, column: 14, scope: !1532)
!1539 = !DILocation(line: 283, column: 12, scope: !1532)
!1540 = !DILocation(line: 284, column: 19, scope: !1532)
!1541 = !DILocation(line: 285, column: 5, scope: !1532)
!1542 = !DILocation(line: 287, column: 3, scope: !1518)
!1543 = !DILocation(line: 300, column: 7, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1508, file: !780, line: 300, column: 7)
!1545 = !DILocation(line: 300, column: 28, scope: !1544)
!1546 = !DILocation(line: 300, column: 31, scope: !1547)
!1547 = !DILexicalBlockFile(scope: !1544, file: !780, discriminator: 1)
!1548 = !DILocation(line: 300, column: 36, scope: !1547)
!1549 = !DILocation(line: 300, column: 42, scope: !1547)
!1550 = !DILocation(line: 300, column: 49, scope: !1547)
!1551 = !DILocation(line: 301, column: 7, scope: !1544)
!1552 = !DILocation(line: 301, column: 12, scope: !1544)
!1553 = !DILocation(line: 301, column: 17, scope: !1544)
!1554 = !DILocation(line: 301, column: 24, scope: !1544)
!1555 = !DILocation(line: 301, column: 51, scope: !1547)
!1556 = !DILocation(line: 301, column: 28, scope: !1547)
!1557 = !DILocation(line: 301, column: 56, scope: !1547)
!1558 = !DILocation(line: 302, column: 8, scope: !1544)
!1559 = !DILocation(line: 302, column: 15, scope: !1544)
!1560 = !DILocation(line: 302, column: 22, scope: !1544)
!1561 = !DILocation(line: 302, column: 25, scope: !1547)
!1562 = !DILocation(line: 302, column: 32, scope: !1547)
!1563 = !DILocation(line: 302, column: 29, scope: !1547)
!1564 = !DILocation(line: 302, column: 43, scope: !1547)
!1565 = !DILocation(line: 303, column: 8, scope: !1544)
!1566 = !DILocation(line: 303, column: 16, scope: !1544)
!1567 = !DILocation(line: 303, column: 28, scope: !1544)
!1568 = !DILocation(line: 300, column: 7, scope: !1569)
!1569 = !DILexicalBlockFile(scope: !1508, file: !780, discriminator: 2)
!1570 = !DILocation(line: 304, column: 13, scope: !1544)
!1571 = !DILocation(line: 304, column: 11, scope: !1544)
!1572 = !DILocation(line: 304, column: 4, scope: !1544)
!1573 = !DILocation(line: 305, column: 2, scope: !1508)
!1574 = !DILocation(line: 273, column: 39, scope: !1575)
!1575 = !DILexicalBlockFile(scope: !1504, file: !780, discriminator: 2)
!1576 = !DILocation(line: 273, column: 44, scope: !1575)
!1577 = !DILocation(line: 273, column: 37, scope: !1575)
!1578 = !DILocation(line: 273, column: 2, scope: !1575)
!1579 = distinct !{!1579, !1580}
!1580 = !DILocation(line: 273, column: 2, scope: !1452)
!1581 = !DILocation(line: 306, column: 22, scope: !1452)
!1582 = !DILocation(line: 306, column: 9, scope: !1452)
!1583 = !DILocation(line: 308, column: 13, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1452, file: !780, line: 308, column: 13)
!1585 = !DILocation(line: 308, column: 20, scope: !1584)
!1586 = !DILocation(line: 308, column: 27, scope: !1584)
!1587 = !DILocation(line: 308, column: 31, scope: !1588)
!1588 = !DILexicalBlockFile(scope: !1584, file: !780, discriminator: 1)
!1589 = !DILocation(line: 308, column: 13, scope: !1588)
!1590 = !DILocation(line: 310, column: 26, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1584, file: !780, line: 308, column: 72)
!1592 = !DILocation(line: 310, column: 24, scope: !1591)
!1593 = !DILocation(line: 311, column: 9, scope: !1591)
!1594 = !DILocation(line: 313, column: 6, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1452, file: !780, line: 313, column: 6)
!1596 = !DILocation(line: 313, column: 13, scope: !1595)
!1597 = !DILocation(line: 313, column: 6, scope: !1452)
!1598 = !DILocation(line: 315, column: 7, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !780, line: 315, column: 7)
!1600 = distinct !DILexicalBlock(scope: !1595, file: !780, line: 313, column: 21)
!1601 = !DILocation(line: 315, column: 7, scope: !1600)
!1602 = !DILocation(line: 316, column: 4, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1599, file: !780, line: 315, column: 54)
!1604 = !DILocation(line: 318, column: 3, scope: !1603)
!1605 = !DILocation(line: 319, column: 26, scope: !1600)
!1606 = !DILocation(line: 319, column: 32, scope: !1600)
!1607 = !DILocation(line: 319, column: 12, scope: !1600)
!1608 = !DILocation(line: 319, column: 10, scope: !1600)
!1609 = !DILocation(line: 320, column: 2, scope: !1600)
!1610 = !DILocation(line: 322, column: 19, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1595, file: !780, line: 320, column: 9)
!1612 = !DILocation(line: 322, column: 27, scope: !1611)
!1613 = !DILocation(line: 322, column: 33, scope: !1611)
!1614 = !DILocation(line: 322, column: 3, scope: !1611)
!1615 = !DILocation(line: 325, column: 6, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1452, file: !780, line: 325, column: 6)
!1617 = !DILocation(line: 325, column: 6, scope: !1452)
!1618 = !DILocation(line: 326, column: 45, scope: !1616)
!1619 = !DILocation(line: 326, column: 17, scope: !1616)
!1620 = !DILocation(line: 327, column: 1, scope: !1452)
!1621 = distinct !DISubprogram(name: "window_bind_has_sticky", scope: !780, file: !780, line: 245, type: !1622, isLocal: true, isDefinition: true, scopeLine: 246, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !783)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!330, !324}
!1624 = !DILocalVariable(name: "window", arg: 1, scope: !1621, file: !780, line: 245, type: !324)
!1625 = !DILocation(line: 245, column: 47, scope: !1621)
!1626 = !DILocalVariable(name: "tmp", scope: !1621, file: !780, line: 247, type: !336)
!1627 = !DILocation(line: 247, column: 10, scope: !1621)
!1628 = !DILocation(line: 249, column: 13, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1621, file: !780, line: 249, column: 2)
!1630 = !DILocation(line: 249, column: 21, scope: !1629)
!1631 = !DILocation(line: 249, column: 11, scope: !1629)
!1632 = !DILocation(line: 249, column: 7, scope: !1629)
!1633 = !DILocation(line: 249, column: 34, scope: !1634)
!1634 = !DILexicalBlockFile(scope: !1635, file: !780, discriminator: 1)
!1635 = distinct !DILexicalBlock(scope: !1629, file: !780, line: 249, column: 2)
!1636 = !DILocation(line: 249, column: 38, scope: !1634)
!1637 = !DILocation(line: 249, column: 2, scope: !1634)
!1638 = !DILocalVariable(name: "rec", scope: !1639, file: !780, line: 250, type: !1460)
!1639 = distinct !DILexicalBlock(scope: !1635, file: !780, line: 249, column: 63)
!1640 = !DILocation(line: 250, column: 20, scope: !1639)
!1641 = !DILocation(line: 250, column: 26, scope: !1639)
!1642 = !DILocation(line: 250, column: 31, scope: !1639)
!1643 = !DILocation(line: 252, column: 7, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1639, file: !780, line: 252, column: 7)
!1645 = !DILocation(line: 252, column: 12, scope: !1644)
!1646 = !DILocation(line: 252, column: 7, scope: !1639)
!1647 = !DILocation(line: 253, column: 25, scope: !1644)
!1648 = !DILocation(line: 254, column: 2, scope: !1639)
!1649 = !DILocation(line: 249, column: 52, scope: !1650)
!1650 = !DILexicalBlockFile(scope: !1635, file: !780, discriminator: 2)
!1651 = !DILocation(line: 249, column: 57, scope: !1650)
!1652 = !DILocation(line: 249, column: 50, scope: !1650)
!1653 = !DILocation(line: 249, column: 2, scope: !1650)
!1654 = distinct !{!1654, !1655}
!1655 = !DILocation(line: 249, column: 2, scope: !1621)
!1656 = !DILocation(line: 256, column: 9, scope: !1621)
!1657 = !DILocation(line: 257, column: 1, scope: !1621)
!1658 = distinct !DISubprogram(name: "window_items_init", scope: !780, file: !780, line: 342, type: !514, isLocal: false, isDefinition: true, scopeLine: 343, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !783)
!1659 = !DILocation(line: 344, column: 2, scope: !1658)
!1660 = !DILocation(line: 345, column: 2, scope: !1658)
!1661 = !DILocation(line: 346, column: 2, scope: !1658)
!1662 = !DILocation(line: 347, column: 2, scope: !1658)
!1663 = !DILocation(line: 349, column: 2, scope: !1658)
!1664 = !DILocation(line: 350, column: 1, scope: !1658)
!1665 = distinct !DISubprogram(name: "signal_window_item_changed", scope: !780, file: !780, line: 329, type: !1062, isLocal: true, isDefinition: true, scopeLine: 330, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !783)
!1666 = !DILocalVariable(name: "window", arg: 1, scope: !1665, file: !780, line: 329, type: !324)
!1667 = !DILocation(line: 329, column: 52, scope: !1665)
!1668 = !DILocalVariable(name: "item", arg: 2, scope: !1665, file: !780, line: 329, type: !345)
!1669 = !DILocation(line: 329, column: 73, scope: !1665)
!1670 = !DILocation(line: 331, column: 2, scope: !1665)
!1671 = distinct !{!1671, !1670}
!1672 = !DILocation(line: 331, column: 10, scope: !1673)
!1673 = !DILexicalBlockFile(scope: !1674, file: !780, discriminator: 1)
!1674 = distinct !DILexicalBlock(scope: !1675, file: !780, line: 331, column: 10)
!1675 = distinct !DILexicalBlock(scope: !1665, file: !780, line: 331, column: 4)
!1676 = !DILocation(line: 331, column: 17, scope: !1673)
!1677 = !DILocation(line: 331, column: 5, scope: !1678)
!1678 = !DILexicalBlockFile(scope: !1679, file: !780, discriminator: 2)
!1679 = distinct !DILexicalBlock(scope: !1674, file: !780, line: 331, column: 3)
!1680 = !DILocation(line: 331, column: 14, scope: !1681)
!1681 = !DILexicalBlockFile(scope: !1682, file: !780, discriminator: 3)
!1682 = distinct !DILexicalBlock(scope: !1674, file: !780, line: 331, column: 12)
!1683 = !DILocation(line: 331, column: 101, scope: !1681)
!1684 = !DILocation(line: 331, column: 112, scope: !1685)
!1685 = !DILexicalBlockFile(scope: !1675, file: !780, discriminator: 4)
!1686 = !DILocation(line: 333, column: 21, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1665, file: !780, line: 333, column: 6)
!1688 = !DILocation(line: 333, column: 29, scope: !1687)
!1689 = !DILocation(line: 333, column: 6, scope: !1687)
!1690 = !DILocation(line: 333, column: 36, scope: !1687)
!1691 = !DILocation(line: 333, column: 6, scope: !1665)
!1692 = !DILocation(line: 336, column: 40, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1687, file: !780, line: 333, column: 41)
!1694 = !DILocation(line: 336, column: 46, scope: !1693)
!1695 = !DILocation(line: 336, column: 54, scope: !1693)
!1696 = !DILocation(line: 336, column: 60, scope: !1693)
!1697 = !DILocation(line: 336, column: 115, scope: !1693)
!1698 = !DILocation(line: 336, column: 121, scope: !1693)
!1699 = !DILocation(line: 336, column: 3, scope: !1693)
!1700 = !DILocation(line: 339, column: 2, scope: !1693)
!1701 = !DILocation(line: 340, column: 1, scope: !1665)
!1702 = distinct !DISubprogram(name: "window_items_deinit", scope: !780, file: !780, line: 352, type: !514, isLocal: false, isDefinition: true, scopeLine: 353, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !783)
!1703 = !DILocation(line: 354, column: 2, scope: !1702)
!1704 = !DILocation(line: 355, column: 1, scope: !1702)
