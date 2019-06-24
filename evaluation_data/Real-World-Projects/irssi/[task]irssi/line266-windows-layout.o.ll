; ModuleID = './line266-windows-layout.o.i'
source_filename = "./line266-windows-layout.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._CONFIG_REC = type { i8*, i32, i32, i8*, %struct._CONFIG_NODE*, %struct._GHashTable*, %struct._GHashTable*, %struct._GScanner*, %struct._GIOChannel*, i32, i32 }
%struct._CONFIG_NODE = type { i32, i8*, i8* }
%struct._GHashTable = type opaque
%struct._GScanner = type { i8*, i32, i32, i8*, %struct._GData*, %struct._GScannerConfig*, i32, %union._GTokenValue, i32, i32, i32, %union._GTokenValue, i32, i32, %struct._GHashTable*, i32, i8*, i8*, i8*, i32, void (%struct._GScanner*, i8*, i32)* }
%struct._GData = type opaque
%struct._GScannerConfig = type { i8*, i8*, i8*, i8*, i24, i32 }
%union._GTokenValue = type { i8* }
%struct._GIOChannel = type { i32, %struct._GIOFuncs*, i8*, %struct._GIConv*, %struct._GIConv*, i8*, i32, i64, %struct._GString*, %struct._GString*, %struct._GString*, [6 x i8], i8, i8*, i8* }
%struct._GIOFuncs = type { i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i64, i32, %struct._GError**)*, i32 (%struct._GIOChannel*, %struct._GError**)*, %struct._GSource* (%struct._GIOChannel*, i32)*, void (%struct._GIOChannel*)*, i32 (%struct._GIOChannel*, i32, %struct._GError**)*, i32 (%struct._GIOChannel*)* }
%struct._GError = type { i32, i32, i8* }
%struct._GSource = type { i8*, %struct._GSourceCallbackFuncs*, %struct._GSourceFuncs*, i32, %struct._GMainContext*, i32, i32, i32, %struct._GSList*, %struct._GSource*, %struct._GSource*, i8*, %struct._GSourcePrivate* }
%struct._GSourceCallbackFuncs = type { void (i8*)*, void (i8*)*, void (i8*, %struct._GSource*, i32 (i8*)**, i8**)* }
%struct._GSourceFuncs = type { i32 (%struct._GSource*, i32*)*, i32 (%struct._GSource*)*, i32 (%struct._GSource*, i32 (i8*)*, i8*)*, void (%struct._GSource*)*, i32 (i8*)*, void ()* }
%struct._GMainContext = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GSourcePrivate = type opaque
%struct._GIConv = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._WINDOW_REC = type { i32, i8*, i32, i32, %struct._GSList*, %struct._WI_ITEM_REC*, %struct._SERVER_REC*, %struct._SERVER_REC*, i8*, i32, %struct._GSList*, i8, %struct.HISTORY_REC*, i8*, i32, i8*, i64, i64, i8*, i8*, i8* }
%struct._WI_ITEM_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)* }
%struct._SERVER_REC = type { i32, i32, i32, %struct._SERVER_CONNECT_REC*, i64, i64, i8*, i8*, i8, %struct._NET_SENDBUF_REC*, i32, [2 x %struct._GIOChannel*], i32, i32, %struct._RAWLOG_REC*, %struct._GHashTable*, i8*, i8*, i8*, i8, %struct._GTimeVal, i64, i32, %struct._GSList*, %struct._GSList*, void (%struct._SERVER_REC*, i8*, i32)*, i32 (%struct._SERVER_REC*, i8)*, i32 (%struct._SERVER_REC*, i8*)*, i8* (%struct._SERVER_REC*)*, void (%struct._SERVER_REC*, i8*, i8*, i32)*, i8** (%struct._SERVER_REC*, i8*, i8*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)*, %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)* }
%struct._SERVER_CONNECT_REC = type { i32, i32, i32, i8*, i32, i8*, i8*, i8*, i16, i8*, i8*, i32, i8*, %struct._IPADDR*, %struct._IPADDR*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._GIOChannel*, i8, i8*, i8* }
%struct._IPADDR = type opaque
%struct._NET_SENDBUF_REC = type opaque
%struct._RAWLOG_REC = type opaque
%struct._GTimeVal = type { i64, i64 }
%struct._CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)* }
%struct._NICK_REC = type opaque
%struct._QUERY_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, i8 }
%struct.HISTORY_REC = type { i8*, %struct._GList*, i32, i32, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.WINDOW_BIND_REC = type { i8*, i8*, i8 }
%struct._CHAT_PROTOCOL_REC = type { i32, i8, i8*, i8*, i8*, %struct._CHATNET_REC* ()*, %struct._SERVER_SETUP_REC* ()*, %struct._CHANNEL_SETUP_REC* ()*, %struct._SERVER_CONNECT_REC* ()*, void (%struct._SERVER_CONNECT_REC*)*, %struct._SERVER_REC* (%struct._SERVER_CONNECT_REC*)*, void (%struct._SERVER_REC*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*, i8*, i32)*, %struct._QUERY_REC* (i8*, i8*, i32)* }
%struct._CHATNET_REC = type opaque
%struct._SERVER_SETUP_REC = type opaque
%struct._CHANNEL_SETUP_REC = type opaque
%struct.THEME_REC = type { i32, i8*, i8*, i64, i32, i8, %struct._GHashTable*, [256 x i32], %struct._GSList*, %struct._GHashTable*, i8* }

@.str = private unnamed_addr constant [15 x i8] c"layout restore\00", align 1
@mainconfig = external global %struct._CONFIG_REC*, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"windows\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"layout save\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"fe-common/core\00", align 1
@windows = external global %struct._GSList*, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"layout reset\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"layout restore item\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"layout save item\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"sticky_refnum\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"immortal\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"history_name\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"servertag\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"theme\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"layout save window\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"items\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"chat_type\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"tag\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"CHANNEL\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"QUERY\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"query created\00", align 1
@restore_win = internal global %struct._WINDOW_REC* null, align 8
@.str.22 = private unnamed_addr constant [17 x i8] c"WINDOW ITEM TYPE\00", align 1
@__func__.signal_query_created_curwin = private unnamed_addr constant [28 x i8] c"signal_query_created_curwin\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"IS_QUERY(query)\00", align 1
@.str.24 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"layout restore window\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"type\00", align 1

; Function Attrs: nounwind uwtable
define void @windows_layout_restore() #0 !dbg !807 {
  %1 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0), !dbg !809
  ret void, !dbg !810
}

declare i32 @signal_emit(i8*, i32, ...) #1

; Function Attrs: nounwind uwtable
define void @windows_layout_save() #0 !dbg !811 {
  %1 = alloca %struct._CONFIG_NODE*, align 8
  %2 = alloca %struct._GSList*, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %1, metadata !812, metadata !820), !dbg !821
  call void @llvm.dbg.declare(metadata %struct._GSList** %2, metadata !822, metadata !820), !dbg !823
  %3 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !824
  %4 = call i32 @config_set_str(%struct._CONFIG_REC* %3, i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* null), !dbg !825
  %5 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !826
  %6 = call %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 1), !dbg !827
  store %struct._CONFIG_NODE* %6, %struct._CONFIG_NODE** %1, align 8, !dbg !828
  %7 = call %struct._GSList* @windows_get_sorted(), !dbg !829
  store %struct._GSList* %7, %struct._GSList** %2, align 8, !dbg !830
  %8 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !831
  %9 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %1, align 8, !dbg !832
  %10 = bitcast %struct._CONFIG_NODE* %9 to i8*, !dbg !832
  call void @g_slist_foreach(%struct._GSList* %8, void (i8*, i8*)* bitcast (void (%struct._WINDOW_REC*, %struct._CONFIG_NODE*)* @window_save to void (i8*, i8*)*), i8* %10), !dbg !833
  %11 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !834
  call void @g_slist_free(%struct._GSList* %11), !dbg !835
  %12 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 0), !dbg !836
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 20), !dbg !837
  ret void, !dbg !838
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare i32 @config_set_str(%struct._CONFIG_REC*, i8*, i8*, i8*) #1

declare %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC*, i8*, i32) #1

declare %struct._GSList* @windows_get_sorted() #1

declare void @g_slist_foreach(%struct._GSList*, void (i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @window_save(%struct._WINDOW_REC*, %struct._CONFIG_NODE*) #0 !dbg !839 {
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca %struct._CONFIG_NODE*, align 8
  %5 = alloca [12 x i8], align 1
  %6 = alloca i8*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !842, metadata !820), !dbg !843
  store %struct._CONFIG_NODE* %1, %struct._CONFIG_NODE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %4, metadata !844, metadata !820), !dbg !845
  call void @llvm.dbg.declare(metadata [12 x i8]* %5, metadata !846, metadata !820), !dbg !850
  %7 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i32 0, i32 0, !dbg !851
  %8 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !852
  %9 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %8, i32 0, i32 0, !dbg !853
  %10 = load i32, i32* %9, align 8, !dbg !853
  %11 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %7, i64 12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i32 %10), !dbg !854
  %12 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !855
  %13 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !856
  %14 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i32 0, i32 0, !dbg !857
  %15 = call %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC* %12, %struct._CONFIG_NODE* %13, i8* %14, i32 2), !dbg !858
  store %struct._CONFIG_NODE* %15, %struct._CONFIG_NODE** %4, align 8, !dbg !859
  %16 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !860
  %17 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %16, i32 0, i32 11, !dbg !862
  %18 = load i8, i8* %17, align 8, !dbg !862
  %19 = lshr i8 %18, 1, !dbg !862
  %20 = and i8 %19, 1, !dbg !862
  %21 = zext i8 %20 to i32, !dbg !862
  %22 = icmp ne i32 %21, 0, !dbg !860
  br i1 %22, label %23, label %26, !dbg !863

; <label>:23:                                     ; preds = %2
  %24 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !864
  %25 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !865
  call void @config_node_set_bool(%struct._CONFIG_REC* %24, %struct._CONFIG_NODE* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i32 1), !dbg !866
  br label %26, !dbg !866

; <label>:26:                                     ; preds = %23, %2
  %27 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !867
  %28 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %27, i32 0, i32 11, !dbg !869
  %29 = load i8, i8* %28, align 8, !dbg !869
  %30 = and i8 %29, 1, !dbg !869
  %31 = zext i8 %30 to i32, !dbg !869
  %32 = icmp ne i32 %31, 0, !dbg !867
  br i1 %32, label %33, label %36, !dbg !870

; <label>:33:                                     ; preds = %26
  %34 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !871
  %35 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !872
  call void @config_node_set_bool(%struct._CONFIG_REC* %34, %struct._CONFIG_NODE* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 1), !dbg !873
  br label %36, !dbg !873

; <label>:36:                                     ; preds = %33, %26
  %37 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !874
  %38 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %37, i32 0, i32 1, !dbg !876
  %39 = load i8*, i8** %38, align 8, !dbg !876
  %40 = icmp ne i8* %39, null, !dbg !877
  br i1 %40, label %41, label %47, !dbg !878

; <label>:41:                                     ; preds = %36
  %42 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !879
  %43 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !880
  %44 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !881
  %45 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %44, i32 0, i32 1, !dbg !882
  %46 = load i8*, i8** %45, align 8, !dbg !882
  call void @config_node_set_str(%struct._CONFIG_REC* %42, %struct._CONFIG_NODE* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* %46), !dbg !883
  br label %47, !dbg !883

; <label>:47:                                     ; preds = %41, %36
  %48 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !884
  %49 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %48, i32 0, i32 13, !dbg !886
  %50 = load i8*, i8** %49, align 8, !dbg !886
  %51 = icmp ne i8* %50, null, !dbg !887
  br i1 %51, label %52, label %58, !dbg !888

; <label>:52:                                     ; preds = %47
  %53 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !889
  %54 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !890
  %55 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !891
  %56 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %55, i32 0, i32 13, !dbg !892
  %57 = load i8*, i8** %56, align 8, !dbg !892
  call void @config_node_set_str(%struct._CONFIG_REC* %53, %struct._CONFIG_NODE* %54, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i8* %57), !dbg !893
  br label %58, !dbg !893

; <label>:58:                                     ; preds = %52, %47
  %59 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !894
  %60 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %59, i32 0, i32 8, !dbg !896
  %61 = load i8*, i8** %60, align 8, !dbg !896
  %62 = icmp ne i8* %61, null, !dbg !897
  br i1 %62, label %63, label %69, !dbg !898

; <label>:63:                                     ; preds = %58
  %64 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !899
  %65 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !900
  %66 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !901
  %67 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %66, i32 0, i32 8, !dbg !902
  %68 = load i8*, i8** %67, align 8, !dbg !902
  call void @config_node_set_str(%struct._CONFIG_REC* %64, %struct._CONFIG_NODE* %65, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* %68), !dbg !903
  br label %69, !dbg !903

; <label>:69:                                     ; preds = %63, %58
  %70 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !904
  %71 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %70, i32 0, i32 9, !dbg !906
  %72 = load i32, i32* %71, align 8, !dbg !906
  %73 = icmp ne i32 %72, 0, !dbg !907
  br i1 %73, label %74, label %83, !dbg !908

; <label>:74:                                     ; preds = %69
  call void @llvm.dbg.declare(metadata i8** %6, metadata !909, metadata !820), !dbg !911
  %75 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !912
  %76 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %75, i32 0, i32 9, !dbg !913
  %77 = load i32, i32* %76, align 8, !dbg !913
  %78 = call i8* @bits2level(i32 %77), !dbg !914
  store i8* %78, i8** %6, align 8, !dbg !911
  %79 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !915
  %80 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !916
  %81 = load i8*, i8** %6, align 8, !dbg !917
  call void @config_node_set_str(%struct._CONFIG_REC* %79, %struct._CONFIG_NODE* %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* %81), !dbg !918
  %82 = load i8*, i8** %6, align 8, !dbg !919
  call void @g_free(i8* %82), !dbg !920
  br label %83, !dbg !921

; <label>:83:                                     ; preds = %74, %69
  %84 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !922
  %85 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %84, i32 0, i32 18, !dbg !924
  %86 = load i8*, i8** %85, align 8, !dbg !924
  %87 = icmp ne i8* %86, null, !dbg !925
  br i1 %87, label %88, label %94, !dbg !926

; <label>:88:                                     ; preds = %83
  %89 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !927
  %90 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !928
  %91 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !929
  %92 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %91, i32 0, i32 18, !dbg !930
  %93 = load i8*, i8** %92, align 8, !dbg !930
  call void @config_node_set_str(%struct._CONFIG_REC* %89, %struct._CONFIG_NODE* %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i8* %93), !dbg !931
  br label %94, !dbg !931

; <label>:94:                                     ; preds = %88, %83
  br label %95, !dbg !932

; <label>:95:                                     ; preds = %100, %94
  %96 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !933
  %97 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %96, i32 0, i32 10, !dbg !935
  %98 = load %struct._GSList*, %struct._GSList** %97, align 8, !dbg !935
  %99 = icmp ne %struct._GSList* %98, null, !dbg !936
  br i1 %99, label %100, label %108, !dbg !937

; <label>:100:                                    ; preds = %95
  %101 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !938
  %102 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !939
  %103 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %102, i32 0, i32 10, !dbg !940
  %104 = load %struct._GSList*, %struct._GSList** %103, align 8, !dbg !940
  %105 = getelementptr inbounds %struct._GSList, %struct._GSList* %104, i32 0, i32 0, !dbg !941
  %106 = load i8*, i8** %105, align 8, !dbg !941
  %107 = bitcast i8* %106 to %struct.WINDOW_BIND_REC*, !dbg !939
  call void @window_bind_destroy(%struct._WINDOW_REC* %101, %struct.WINDOW_BIND_REC* %107), !dbg !942
  br label %95, !dbg !943, !llvm.loop !945

; <label>:108:                                    ; preds = %95
  %109 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !946
  %110 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %109, i32 0, i32 4, !dbg !948
  %111 = load %struct._GSList*, %struct._GSList** %110, align 8, !dbg !948
  %112 = icmp ne %struct._GSList* %111, null, !dbg !949
  br i1 %112, label %113, label %116, !dbg !950

; <label>:113:                                    ; preds = %108
  %114 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !951
  %115 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !952
  call void @window_save_items(%struct._WINDOW_REC* %114, %struct._CONFIG_NODE* %115), !dbg !953
  br label %116, !dbg !953

; <label>:116:                                    ; preds = %113, %108
  %117 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !954
  %118 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !955
  %119 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0), i32 2, %struct._WINDOW_REC* %117, %struct._CONFIG_NODE* %118), !dbg !956
  ret void, !dbg !957
}

declare void @g_slist_free(%struct._GSList*) #1

declare void @printformat_module(i8*, i8*, i8*, i32, i32, ...) #1

; Function Attrs: nounwind uwtable
define void @windows_layout_reset() #0 !dbg !958 {
  %1 = alloca %struct._GSList*, align 8
  %2 = alloca %struct._WINDOW_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %1, metadata !959, metadata !820), !dbg !960
  %3 = load %struct._GSList*, %struct._GSList** @windows, align 8, !dbg !961
  store %struct._GSList* %3, %struct._GSList** %1, align 8, !dbg !963
  br label %4, !dbg !964

; <label>:4:                                      ; preds = %26, %0
  %5 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !965
  %6 = icmp ne %struct._GSList* %5, null, !dbg !968
  br i1 %6, label %7, label %30, !dbg !969

; <label>:7:                                      ; preds = %4
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %2, metadata !970, metadata !820), !dbg !972
  %8 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !973
  %9 = getelementptr inbounds %struct._GSList, %struct._GSList* %8, i32 0, i32 0, !dbg !974
  %10 = load i8*, i8** %9, align 8, !dbg !974
  %11 = bitcast i8* %10 to %struct._WINDOW_REC*, !dbg !973
  store %struct._WINDOW_REC* %11, %struct._WINDOW_REC** %2, align 8, !dbg !972
  br label %12, !dbg !975

; <label>:12:                                     ; preds = %17, %7
  %13 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !976
  %14 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %13, i32 0, i32 10, !dbg !978
  %15 = load %struct._GSList*, %struct._GSList** %14, align 8, !dbg !978
  %16 = icmp ne %struct._GSList* %15, null, !dbg !979
  br i1 %16, label %17, label %25, !dbg !980

; <label>:17:                                     ; preds = %12
  %18 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !981
  %19 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !982
  %20 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %19, i32 0, i32 10, !dbg !983
  %21 = load %struct._GSList*, %struct._GSList** %20, align 8, !dbg !983
  %22 = getelementptr inbounds %struct._GSList, %struct._GSList* %21, i32 0, i32 0, !dbg !984
  %23 = load i8*, i8** %22, align 8, !dbg !984
  %24 = bitcast i8* %23 to %struct.WINDOW_BIND_REC*, !dbg !982
  call void @window_bind_destroy(%struct._WINDOW_REC* %18, %struct.WINDOW_BIND_REC* %24), !dbg !985
  br label %12, !dbg !986, !llvm.loop !988

; <label>:25:                                     ; preds = %12
  br label %26, !dbg !989

; <label>:26:                                     ; preds = %25
  %27 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !990
  %28 = getelementptr inbounds %struct._GSList, %struct._GSList* %27, i32 0, i32 1, !dbg !992
  %29 = load %struct._GSList*, %struct._GSList** %28, align 8, !dbg !992
  store %struct._GSList* %29, %struct._GSList** %1, align 8, !dbg !993
  br label %4, !dbg !994, !llvm.loop !995

; <label>:30:                                     ; preds = %4
  %31 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !997
  %32 = call i32 @config_set_str(%struct._CONFIG_REC* %31, i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* null), !dbg !998
  %33 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i32 0), !dbg !999
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 21), !dbg !1000
  ret void, !dbg !1001
}

declare void @window_bind_destroy(%struct._WINDOW_REC*, %struct.WINDOW_BIND_REC*) #1

; Function Attrs: nounwind uwtable
define void @windows_layout_init() #0 !dbg !1002 {
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*, i8*, %struct._CONFIG_NODE*)* @sig_layout_restore_item to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1003
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_layout_restore to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1004
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*, %struct._WI_ITEM_REC*, %struct._CONFIG_NODE*)* @sig_layout_save_item to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1005
  ret void, !dbg !1006
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @sig_layout_restore_item(%struct._WINDOW_REC*, i8*, %struct._CONFIG_NODE*) #0 !dbg !1007 {
  %4 = alloca %struct._WINDOW_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._CONFIG_NODE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.WINDOW_BIND_REC*, align 8
  %11 = alloca %struct._CHAT_PROTOCOL_REC*, align 8
  %12 = alloca %struct._QUERY_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %4, metadata !1010, metadata !820), !dbg !1011
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1012, metadata !820), !dbg !1013
  store %struct._CONFIG_NODE* %2, %struct._CONFIG_NODE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %6, metadata !1014, metadata !820), !dbg !1015
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1016, metadata !820), !dbg !1017
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1018, metadata !820), !dbg !1019
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1020, metadata !820), !dbg !1021
  %13 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1022
  %14 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* null), !dbg !1023
  store i8* %14, i8** %9, align 8, !dbg !1024
  %15 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1025
  %16 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* null), !dbg !1026
  store i8* %16, i8** %7, align 8, !dbg !1027
  %17 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1028
  %18 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* null), !dbg !1029
  store i8* %18, i8** %8, align 8, !dbg !1030
  %19 = load i8*, i8** %7, align 8, !dbg !1031
  %20 = icmp eq i8* %19, null, !dbg !1033
  br i1 %20, label %24, label %21, !dbg !1034

; <label>:21:                                     ; preds = %3
  %22 = load i8*, i8** %8, align 8, !dbg !1035
  %23 = icmp eq i8* %22, null, !dbg !1037
  br i1 %23, label %24, label %25, !dbg !1038

; <label>:24:                                     ; preds = %21, %3
  br label %88, !dbg !1039

; <label>:25:                                     ; preds = %21
  %26 = load i8*, i8** %5, align 8, !dbg !1040
  %27 = call i32 @g_ascii_strcasecmp(i8* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0)), !dbg !1042
  %28 = icmp eq i32 %27, 0, !dbg !1043
  br i1 %28, label %29, label %39, !dbg !1044

; <label>:29:                                     ; preds = %25
  call void @llvm.dbg.declare(metadata %struct.WINDOW_BIND_REC** %10, metadata !1045, metadata !820), !dbg !1054
  %30 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !1055
  %31 = load i8*, i8** %8, align 8, !dbg !1056
  %32 = load i8*, i8** %7, align 8, !dbg !1057
  %33 = call %struct.WINDOW_BIND_REC* @window_bind_add(%struct._WINDOW_REC* %30, i8* %31, i8* %32), !dbg !1058
  store %struct.WINDOW_BIND_REC* %33, %struct.WINDOW_BIND_REC** %10, align 8, !dbg !1054
  %34 = load %struct.WINDOW_BIND_REC*, %struct.WINDOW_BIND_REC** %10, align 8, !dbg !1059
  %35 = getelementptr inbounds %struct.WINDOW_BIND_REC, %struct.WINDOW_BIND_REC* %34, i32 0, i32 2, !dbg !1060
  %36 = load i8, i8* %35, align 8, !dbg !1061
  %37 = and i8 %36, -2, !dbg !1061
  %38 = or i8 %37, 1, !dbg !1061
  store i8 %38, i8* %35, align 8, !dbg !1061
  br label %88, !dbg !1062

; <label>:39:                                     ; preds = %25
  %40 = load i8*, i8** %5, align 8, !dbg !1063
  %41 = call i32 @g_ascii_strcasecmp(i8* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0)), !dbg !1066
  %42 = icmp eq i32 %41, 0, !dbg !1067
  br i1 %42, label %43, label %87, !dbg !1068

; <label>:43:                                     ; preds = %39
  %44 = load i8*, i8** %9, align 8, !dbg !1069
  %45 = icmp ne i8* %44, null, !dbg !1071
  br i1 %45, label %46, label %87, !dbg !1072

; <label>:46:                                     ; preds = %43
  call void @llvm.dbg.declare(metadata %struct._CHAT_PROTOCOL_REC** %11, metadata !1073, metadata !820), !dbg !1131
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._QUERY_REC*)* @signal_query_created_curwin to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1132
  %47 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !1133
  store %struct._WINDOW_REC* %47, %struct._WINDOW_REC** @restore_win, align 8, !dbg !1134
  %48 = load i8*, i8** %9, align 8, !dbg !1135
  %49 = call %struct._CHAT_PROTOCOL_REC* @chat_protocol_find(i8* %48), !dbg !1136
  store %struct._CHAT_PROTOCOL_REC* %49, %struct._CHAT_PROTOCOL_REC** %11, align 8, !dbg !1137
  %50 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %11, align 8, !dbg !1138
  %51 = icmp eq %struct._CHAT_PROTOCOL_REC* %50, null, !dbg !1140
  br i1 %51, label %52, label %57, !dbg !1141

; <label>:52:                                     ; preds = %46
  %53 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !1142
  %54 = load i8*, i8** %8, align 8, !dbg !1143
  %55 = load i8*, i8** %7, align 8, !dbg !1144
  %56 = call %struct.WINDOW_BIND_REC* @window_bind_add(%struct._WINDOW_REC* %53, i8* %54, i8* %55), !dbg !1145
  br label %86, !dbg !1145

; <label>:57:                                     ; preds = %46
  %58 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %11, align 8, !dbg !1146
  %59 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %58, i32 0, i32 13, !dbg !1148
  %60 = load %struct._QUERY_REC* (i8*, i8*, i32)*, %struct._QUERY_REC* (i8*, i8*, i32)** %59, align 8, !dbg !1148
  %61 = icmp ne %struct._QUERY_REC* (i8*, i8*, i32)* %60, null, !dbg !1149
  br i1 %61, label %62, label %69, !dbg !1150

; <label>:62:                                     ; preds = %57
  %63 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %11, align 8, !dbg !1151
  %64 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %63, i32 0, i32 13, !dbg !1152
  %65 = load %struct._QUERY_REC* (i8*, i8*, i32)*, %struct._QUERY_REC* (i8*, i8*, i32)** %64, align 8, !dbg !1152
  %66 = load i8*, i8** %8, align 8, !dbg !1153
  %67 = load i8*, i8** %7, align 8, !dbg !1154
  %68 = call %struct._QUERY_REC* %65(i8* %66, i8* %67, i32 1), !dbg !1151
  br label %85, !dbg !1151

; <label>:69:                                     ; preds = %57
  call void @llvm.dbg.declare(metadata %struct._QUERY_REC** %12, metadata !1155, metadata !820), !dbg !1157
  %70 = call noalias i8* @g_malloc0_n(i64 1, i64 120), !dbg !1158
  %71 = bitcast i8* %70 to %struct._QUERY_REC*, !dbg !1159
  store %struct._QUERY_REC* %71, %struct._QUERY_REC** %12, align 8, !dbg !1160
  %72 = load i8*, i8** %9, align 8, !dbg !1161
  %73 = call i32 @chat_protocol_lookup(i8* %72), !dbg !1162
  %74 = load %struct._QUERY_REC*, %struct._QUERY_REC** %12, align 8, !dbg !1163
  %75 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %74, i32 0, i32 1, !dbg !1164
  store i32 %73, i32* %75, align 4, !dbg !1165
  %76 = load i8*, i8** %7, align 8, !dbg !1166
  %77 = call noalias i8* @g_strdup(i8* %76), !dbg !1167
  %78 = load %struct._QUERY_REC*, %struct._QUERY_REC** %12, align 8, !dbg !1168
  %79 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %78, i32 0, i32 6, !dbg !1169
  store i8* %77, i8** %79, align 8, !dbg !1170
  %80 = load i8*, i8** %8, align 8, !dbg !1171
  %81 = call noalias i8* @g_strdup(i8* %80), !dbg !1172
  %82 = load %struct._QUERY_REC*, %struct._QUERY_REC** %12, align 8, !dbg !1173
  %83 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %82, i32 0, i32 13, !dbg !1174
  store i8* %81, i8** %83, align 8, !dbg !1175
  %84 = load %struct._QUERY_REC*, %struct._QUERY_REC** %12, align 8, !dbg !1176
  call void @query_init(%struct._QUERY_REC* %84, i32 1), !dbg !1177
  br label %85

; <label>:85:                                     ; preds = %69, %62
  br label %86

; <label>:86:                                     ; preds = %85, %52
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._QUERY_REC*)* @signal_query_created_curwin to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1178
  br label %87, !dbg !1179

; <label>:87:                                     ; preds = %86, %43, %39
  br label %88

; <label>:88:                                     ; preds = %24, %87, %29
  ret void, !dbg !1180
}

; Function Attrs: nounwind uwtable
define internal void @sig_layout_restore() #0 !dbg !1181 {
  %1 = alloca %struct._WINDOW_REC*, align 8
  %2 = alloca %struct._CONFIG_NODE*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct._CONFIG_NODE*, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %1, metadata !1182, metadata !820), !dbg !1183
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %2, metadata !1184, metadata !820), !dbg !1185
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !1186, metadata !820), !dbg !1187
  %5 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1188
  %6 = call %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 0), !dbg !1189
  store %struct._CONFIG_NODE* %6, %struct._CONFIG_NODE** %2, align 8, !dbg !1190
  %7 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %2, align 8, !dbg !1191
  %8 = icmp eq %struct._CONFIG_NODE* %7, null, !dbg !1193
  br i1 %8, label %9, label %10, !dbg !1194

; <label>:9:                                      ; preds = %0
  br label %109, !dbg !1195

; <label>:10:                                     ; preds = %0
  %11 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %2, align 8, !dbg !1197
  %12 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %11, i32 0, i32 2, !dbg !1198
  %13 = load i8*, i8** %12, align 8, !dbg !1198
  %14 = bitcast i8* %13 to %struct._GSList*, !dbg !1197
  %15 = call %struct._GSList* @config_node_first(%struct._GSList* %14), !dbg !1199
  store %struct._GSList* %15, %struct._GSList** %3, align 8, !dbg !1200
  br label %16, !dbg !1201

; <label>:16:                                     ; preds = %106, %10
  %17 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1202
  %18 = icmp ne %struct._GSList* %17, null, !dbg !1206
  br i1 %18, label %19, label %109, !dbg !1207

; <label>:19:                                     ; preds = %16
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %4, metadata !1208, metadata !820), !dbg !1210
  %20 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1211
  %21 = getelementptr inbounds %struct._GSList, %struct._GSList* %20, i32 0, i32 0, !dbg !1212
  %22 = load i8*, i8** %21, align 8, !dbg !1212
  %23 = bitcast i8* %22 to %struct._CONFIG_NODE*, !dbg !1211
  store %struct._CONFIG_NODE* %23, %struct._CONFIG_NODE** %4, align 8, !dbg !1210
  %24 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1213
  %25 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %24, i32 0, i32 1, !dbg !1215
  %26 = load i8*, i8** %25, align 8, !dbg !1215
  %27 = icmp eq i8* %26, null, !dbg !1216
  br i1 %27, label %28, label %29, !dbg !1217

; <label>:28:                                     ; preds = %19
  br label %106, !dbg !1218

; <label>:29:                                     ; preds = %19
  %30 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1220
  %31 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %30, i32 0, i32 1, !dbg !1221
  %32 = load i8*, i8** %31, align 8, !dbg !1221
  %33 = call i32 @atoi(i8* %32) #4, !dbg !1222
  %34 = call %struct._WINDOW_REC* @window_find_refnum(i32 %33), !dbg !1223
  store %struct._WINDOW_REC* %34, %struct._WINDOW_REC** %1, align 8, !dbg !1225
  %35 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %1, align 8, !dbg !1226
  %36 = icmp eq %struct._WINDOW_REC* %35, null, !dbg !1228
  br i1 %36, label %37, label %39, !dbg !1229

; <label>:37:                                     ; preds = %29
  %38 = call %struct._WINDOW_REC* @window_create(%struct._WI_ITEM_REC* null, i32 1), !dbg !1230
  store %struct._WINDOW_REC* %38, %struct._WINDOW_REC** %1, align 8, !dbg !1231
  br label %39, !dbg !1232

; <label>:39:                                     ; preds = %37, %29
  %40 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %1, align 8, !dbg !1233
  %41 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1234
  %42 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %41, i32 0, i32 1, !dbg !1235
  %43 = load i8*, i8** %42, align 8, !dbg !1235
  %44 = call i32 @atoi(i8* %43) #4, !dbg !1236
  call void @window_set_refnum(%struct._WINDOW_REC* %40, i32 %44), !dbg !1237
  %45 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1238
  %46 = call i32 @config_node_get_bool(%struct._CONFIG_NODE* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i32 0), !dbg !1239
  %47 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %1, align 8, !dbg !1240
  %48 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %47, i32 0, i32 11, !dbg !1241
  %49 = trunc i32 %46 to i8, !dbg !1242
  %50 = load i8, i8* %48, align 8, !dbg !1242
  %51 = and i8 %49, 1, !dbg !1242
  %52 = shl i8 %51, 1, !dbg !1242
  %53 = and i8 %50, -3, !dbg !1242
  %54 = or i8 %53, %52, !dbg !1242
  store i8 %54, i8* %48, align 8, !dbg !1242
  %55 = zext i8 %51 to i32, !dbg !1242
  %56 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1243
  %57 = call i32 @config_node_get_bool(%struct._CONFIG_NODE* %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 0), !dbg !1244
  %58 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %1, align 8, !dbg !1245
  %59 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %58, i32 0, i32 11, !dbg !1246
  %60 = trunc i32 %57 to i8, !dbg !1247
  %61 = load i8, i8* %59, align 8, !dbg !1247
  %62 = and i8 %60, 1, !dbg !1247
  %63 = and i8 %61, -2, !dbg !1247
  %64 = or i8 %63, %62, !dbg !1247
  store i8 %64, i8* %59, align 8, !dbg !1247
  %65 = zext i8 %62 to i32, !dbg !1247
  %66 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %1, align 8, !dbg !1248
  %67 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1249
  %68 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* null), !dbg !1250
  call void @window_set_name(%struct._WINDOW_REC* %66, i8* %68), !dbg !1251
  %69 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %1, align 8, !dbg !1252
  %70 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1253
  %71 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %70, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i8* null), !dbg !1254
  call void @window_set_history(%struct._WINDOW_REC* %69, i8* %71), !dbg !1255
  %72 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %1, align 8, !dbg !1256
  %73 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1257
  %74 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i32 0, i32 0)), !dbg !1258
  %75 = call i32 @level2bits(i8* %74, i32* null), !dbg !1259
  call void @window_set_level(%struct._WINDOW_REC* %72, i32 %75), !dbg !1260
  %76 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1262
  %77 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* null), !dbg !1263
  %78 = call noalias i8* @g_strdup(i8* %77), !dbg !1264
  %79 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %1, align 8, !dbg !1265
  %80 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %79, i32 0, i32 8, !dbg !1266
  store i8* %78, i8** %80, align 8, !dbg !1267
  %81 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1268
  %82 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i8* null), !dbg !1269
  %83 = call noalias i8* @g_strdup(i8* %82), !dbg !1270
  %84 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %1, align 8, !dbg !1271
  %85 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %84, i32 0, i32 18, !dbg !1272
  store i8* %83, i8** %85, align 8, !dbg !1273
  %86 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %1, align 8, !dbg !1274
  %87 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %86, i32 0, i32 18, !dbg !1276
  %88 = load i8*, i8** %87, align 8, !dbg !1276
  %89 = icmp ne i8* %88, null, !dbg !1277
  br i1 %89, label %90, label %98, !dbg !1278

; <label>:90:                                     ; preds = %39
  %91 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %1, align 8, !dbg !1279
  %92 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %91, i32 0, i32 18, !dbg !1280
  %93 = load i8*, i8** %92, align 8, !dbg !1280
  %94 = call %struct.THEME_REC* @theme_load(i8* %93), !dbg !1281
  %95 = bitcast %struct.THEME_REC* %94 to i8*, !dbg !1281
  %96 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %1, align 8, !dbg !1282
  %97 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %96, i32 0, i32 19, !dbg !1283
  store i8* %95, i8** %97, align 8, !dbg !1284
  br label %98, !dbg !1282

; <label>:98:                                     ; preds = %90, %39
  %99 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %1, align 8, !dbg !1285
  %100 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1286
  %101 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1287
  %102 = call %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC* %100, %struct._CONFIG_NODE* %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 -1), !dbg !1288
  call void @window_add_items(%struct._WINDOW_REC* %99, %struct._CONFIG_NODE* %102), !dbg !1289
  %103 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %1, align 8, !dbg !1290
  %104 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1291
  %105 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i32 0, i32 0), i32 2, %struct._WINDOW_REC* %103, %struct._CONFIG_NODE* %104), !dbg !1292
  br label %106, !dbg !1293

; <label>:106:                                    ; preds = %98, %28
  %107 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1294
  %108 = call %struct._GSList* @config_node_next(%struct._GSList* %107), !dbg !1296
  store %struct._GSList* %108, %struct._GSList** %3, align 8, !dbg !1297
  br label %16, !dbg !1298, !llvm.loop !1299

; <label>:109:                                    ; preds = %9, %16
  ret void, !dbg !1300
}

; Function Attrs: nounwind uwtable
define internal void @sig_layout_save_item(%struct._WINDOW_REC*, %struct._WI_ITEM_REC*, %struct._CONFIG_NODE*) #0 !dbg !1301 {
  %4 = alloca %struct._WINDOW_REC*, align 8
  %5 = alloca %struct._WI_ITEM_REC*, align 8
  %6 = alloca %struct._CONFIG_NODE*, align 8
  %7 = alloca %struct._CONFIG_NODE*, align 8
  %8 = alloca %struct._CHAT_PROTOCOL_REC*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.WINDOW_BIND_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %4, metadata !1304, metadata !820), !dbg !1305
  store %struct._WI_ITEM_REC* %1, %struct._WI_ITEM_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %5, metadata !1306, metadata !820), !dbg !1307
  store %struct._CONFIG_NODE* %2, %struct._CONFIG_NODE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %6, metadata !1308, metadata !820), !dbg !1309
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %7, metadata !1310, metadata !820), !dbg !1311
  call void @llvm.dbg.declare(metadata %struct._CHAT_PROTOCOL_REC** %8, metadata !1312, metadata !820), !dbg !1313
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1314, metadata !820), !dbg !1315
  call void @llvm.dbg.declare(metadata %struct.WINDOW_BIND_REC** %10, metadata !1316, metadata !820), !dbg !1317
  %11 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %5, align 8, !dbg !1318
  %12 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %11, i32 0, i32 0, !dbg !1319
  %13 = load i32, i32* %12, align 8, !dbg !1319
  %14 = call i8* @module_find_id_str(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i32 %13), !dbg !1320
  store i8* %14, i8** %9, align 8, !dbg !1321
  %15 = load i8*, i8** %9, align 8, !dbg !1322
  %16 = icmp eq i8* %15, null, !dbg !1324
  br i1 %16, label %17, label %18, !dbg !1325

; <label>:17:                                     ; preds = %3
  br label %109, !dbg !1326

; <label>:18:                                     ; preds = %3
  %19 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1327
  %20 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1328
  %21 = call %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC* %19, %struct._CONFIG_NODE* %20, i8* null, i32 2), !dbg !1329
  store %struct._CONFIG_NODE* %21, %struct._CONFIG_NODE** %7, align 8, !dbg !1330
  %22 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1331
  %23 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !1332
  %24 = load i8*, i8** %9, align 8, !dbg !1333
  call void @config_node_set_str(%struct._CONFIG_REC* %22, %struct._CONFIG_NODE* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i8* %24), !dbg !1334
  %25 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %5, align 8, !dbg !1335
  %26 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %25, i32 0, i32 1, !dbg !1336
  %27 = load i32, i32* %26, align 4, !dbg !1336
  %28 = icmp eq i32 %27, 0, !dbg !1337
  br i1 %28, label %29, label %30, !dbg !1335

; <label>:29:                                     ; preds = %18
  br label %35, !dbg !1338

; <label>:30:                                     ; preds = %18
  %31 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %5, align 8, !dbg !1340
  %32 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %31, i32 0, i32 1, !dbg !1341
  %33 = load i32, i32* %32, align 4, !dbg !1341
  %34 = call %struct._CHAT_PROTOCOL_REC* @chat_protocol_find_id(i32 %33), !dbg !1342
  br label %35, !dbg !1343

; <label>:35:                                     ; preds = %30, %29
  %36 = phi %struct._CHAT_PROTOCOL_REC* [ null, %29 ], [ %34, %30 ], !dbg !1345
  store %struct._CHAT_PROTOCOL_REC* %36, %struct._CHAT_PROTOCOL_REC** %8, align 8, !dbg !1347
  %37 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %8, align 8, !dbg !1348
  %38 = icmp ne %struct._CHAT_PROTOCOL_REC* %37, null, !dbg !1350
  br i1 %38, label %39, label %45, !dbg !1351

; <label>:39:                                     ; preds = %35
  %40 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1352
  %41 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !1353
  %42 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %8, align 8, !dbg !1354
  %43 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %42, i32 0, i32 2, !dbg !1355
  %44 = load i8*, i8** %43, align 8, !dbg !1355
  call void @config_node_set_str(%struct._CONFIG_REC* %40, %struct._CONFIG_NODE* %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* %44), !dbg !1356
  br label %45, !dbg !1356

; <label>:45:                                     ; preds = %39, %35
  %46 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1357
  %47 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !1358
  %48 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %5, align 8, !dbg !1359
  %49 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %48, i32 0, i32 6, !dbg !1360
  %50 = load i8*, i8** %49, align 8, !dbg !1360
  call void @config_node_set_str(%struct._CONFIG_REC* %46, %struct._CONFIG_NODE* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* %50), !dbg !1361
  %51 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %5, align 8, !dbg !1362
  %52 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %51, i32 0, i32 4, !dbg !1364
  %53 = load %struct._SERVER_REC*, %struct._SERVER_REC** %52, align 8, !dbg !1364
  %54 = icmp ne %struct._SERVER_REC* %53, null, !dbg !1365
  br i1 %54, label %55, label %91, !dbg !1366

; <label>:55:                                     ; preds = %45
  %56 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1367
  %57 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !1369
  %58 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %5, align 8, !dbg !1370
  %59 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %58, i32 0, i32 4, !dbg !1371
  %60 = load %struct._SERVER_REC*, %struct._SERVER_REC** %59, align 8, !dbg !1371
  %61 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %60, i32 0, i32 6, !dbg !1372
  %62 = load i8*, i8** %61, align 8, !dbg !1372
  call void @config_node_set_str(%struct._CONFIG_REC* %56, %struct._CONFIG_NODE* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* %62), !dbg !1373
  %63 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %5, align 8, !dbg !1374
  %64 = bitcast %struct._WI_ITEM_REC* %63 to i8*, !dbg !1374
  %65 = call i8* @module_check_cast_module(i8* %64, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0)), !dbg !1376
  %66 = bitcast i8* %65 to %struct._CHANNEL_REC*, !dbg !1377
  %67 = icmp ne %struct._CHANNEL_REC* %66, null, !dbg !1377
  br i1 %67, label %68, label %69, !dbg !1378

; <label>:68:                                     ; preds = %55
  br i1 false, label %90, label %70, !dbg !1379

; <label>:69:                                     ; preds = %55
  br i1 false, label %70, label %90, !dbg !1381

; <label>:70:                                     ; preds = %69, %68
  %71 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !1383
  %72 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %5, align 8, !dbg !1385
  %73 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %72, i32 0, i32 4, !dbg !1386
  %74 = load %struct._SERVER_REC*, %struct._SERVER_REC** %73, align 8, !dbg !1386
  %75 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %74, i32 0, i32 6, !dbg !1387
  %76 = load i8*, i8** %75, align 8, !dbg !1387
  %77 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %5, align 8, !dbg !1388
  %78 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %77, i32 0, i32 6, !dbg !1389
  %79 = load i8*, i8** %78, align 8, !dbg !1389
  %80 = call %struct.WINDOW_BIND_REC* @window_bind_add(%struct._WINDOW_REC* %71, i8* %76, i8* %79), !dbg !1390
  store %struct.WINDOW_BIND_REC* %80, %struct.WINDOW_BIND_REC** %10, align 8, !dbg !1391
  %81 = load %struct.WINDOW_BIND_REC*, %struct.WINDOW_BIND_REC** %10, align 8, !dbg !1392
  %82 = icmp ne %struct.WINDOW_BIND_REC* %81, null, !dbg !1394
  br i1 %82, label %83, label %89, !dbg !1395

; <label>:83:                                     ; preds = %70
  %84 = load %struct.WINDOW_BIND_REC*, %struct.WINDOW_BIND_REC** %10, align 8, !dbg !1396
  %85 = getelementptr inbounds %struct.WINDOW_BIND_REC, %struct.WINDOW_BIND_REC* %84, i32 0, i32 2, !dbg !1397
  %86 = load i8, i8* %85, align 8, !dbg !1398
  %87 = and i8 %86, -2, !dbg !1398
  %88 = or i8 %87, 1, !dbg !1398
  store i8 %88, i8* %85, align 8, !dbg !1398
  br label %89, !dbg !1396

; <label>:89:                                     ; preds = %83, %70
  br label %90, !dbg !1399

; <label>:90:                                     ; preds = %89, %69, %68
  br label %109, !dbg !1400

; <label>:91:                                     ; preds = %45
  %92 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %5, align 8, !dbg !1401
  %93 = bitcast %struct._WI_ITEM_REC* %92 to i8*, !dbg !1401
  %94 = call i8* @module_check_cast_module(i8* %93, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0)), !dbg !1404
  %95 = bitcast i8* %94 to %struct._QUERY_REC*, !dbg !1405
  %96 = icmp ne %struct._QUERY_REC* %95, null, !dbg !1405
  br i1 %96, label %97, label %98, !dbg !1406

; <label>:97:                                     ; preds = %91
  br i1 false, label %108, label %99, !dbg !1407

; <label>:98:                                     ; preds = %91
  br i1 false, label %99, label %108, !dbg !1409

; <label>:99:                                     ; preds = %98, %97
  %100 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1411
  %101 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !1413
  %102 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %5, align 8, !dbg !1414
  %103 = bitcast %struct._WI_ITEM_REC* %102 to i8*, !dbg !1414
  %104 = call i8* @module_check_cast_module(i8* %103, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0)), !dbg !1415
  %105 = bitcast i8* %104 to %struct._QUERY_REC*, !dbg !1416
  %106 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %105, i32 0, i32 13, !dbg !1413
  %107 = load i8*, i8** %106, align 8, !dbg !1413
  call void @config_node_set_str(%struct._CONFIG_REC* %100, %struct._CONFIG_NODE* %101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* %107), !dbg !1417
  br label %108, !dbg !1419

; <label>:108:                                    ; preds = %99, %98, %97
  br label %109

; <label>:109:                                    ; preds = %17, %108, %90
  ret void, !dbg !1420
}

; Function Attrs: nounwind uwtable
define void @windows_layout_deinit() #0 !dbg !1421 {
  call void @signal_remove_full(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*, i8*, %struct._CONFIG_NODE*)* @sig_layout_restore_item to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1422
  call void @signal_remove_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_layout_restore to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1423
  call void @signal_remove_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*, %struct._WI_ITEM_REC*, %struct._CONFIG_NODE*)* @sig_layout_save_item to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1424
  ret void, !dbg !1425
}

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare i32 @g_snprintf(i8*, i64, i8*, ...) #1

declare %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i32) #1

declare void @config_node_set_bool(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i32) #1

declare void @config_node_set_str(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i8*) #1

declare i8* @bits2level(i32) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @window_save_items(%struct._WINDOW_REC*, %struct._CONFIG_NODE*) #0 !dbg !1426 {
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca %struct._CONFIG_NODE*, align 8
  %5 = alloca %struct._GSList*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !1427, metadata !820), !dbg !1428
  store %struct._CONFIG_NODE* %1, %struct._CONFIG_NODE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %4, metadata !1429, metadata !820), !dbg !1430
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !1431, metadata !820), !dbg !1432
  %6 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1433
  %7 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1434
  %8 = call %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC* %6, %struct._CONFIG_NODE* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 3), !dbg !1435
  store %struct._CONFIG_NODE* %8, %struct._CONFIG_NODE** %4, align 8, !dbg !1436
  %9 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1437
  %10 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %9, i32 0, i32 4, !dbg !1439
  %11 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !1439
  store %struct._GSList* %11, %struct._GSList** %5, align 8, !dbg !1440
  br label %12, !dbg !1441

; <label>:12:                                     ; preds = %22, %2
  %13 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1442
  %14 = icmp ne %struct._GSList* %13, null, !dbg !1445
  br i1 %14, label %15, label %26, !dbg !1446

; <label>:15:                                     ; preds = %12
  %16 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1447
  %17 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1448
  %18 = getelementptr inbounds %struct._GSList, %struct._GSList* %17, i32 0, i32 0, !dbg !1449
  %19 = load i8*, i8** %18, align 8, !dbg !1449
  %20 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1450
  %21 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i32 3, %struct._WINDOW_REC* %16, i8* %19, %struct._CONFIG_NODE* %20), !dbg !1451
  br label %22, !dbg !1451

; <label>:22:                                     ; preds = %15
  %23 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1452
  %24 = getelementptr inbounds %struct._GSList, %struct._GSList* %23, i32 0, i32 1, !dbg !1454
  %25 = load %struct._GSList*, %struct._GSList** %24, align 8, !dbg !1454
  store %struct._GSList* %25, %struct._GSList** %5, align 8, !dbg !1455
  br label %12, !dbg !1456, !llvm.loop !1457

; <label>:26:                                     ; preds = %12
  ret void, !dbg !1459
}

declare i8* @config_node_get_str(%struct._CONFIG_NODE*, i8*, i8*) #1

declare i32 @g_ascii_strcasecmp(i8*, i8*) #1

declare %struct.WINDOW_BIND_REC* @window_bind_add(%struct._WINDOW_REC*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @signal_query_created_curwin(%struct._QUERY_REC*) #0 !dbg !1460 {
  %2 = alloca %struct._QUERY_REC*, align 8
  store %struct._QUERY_REC* %0, %struct._QUERY_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._QUERY_REC** %2, metadata !1463, metadata !820), !dbg !1464
  br label %3, !dbg !1465, !llvm.loop !1466

; <label>:3:                                      ; preds = %1
  %4 = load %struct._QUERY_REC*, %struct._QUERY_REC** %2, align 8, !dbg !1467
  %5 = bitcast %struct._QUERY_REC* %4 to i8*, !dbg !1467
  %6 = call i8* @module_check_cast_module(i8* %5, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0)), !dbg !1471
  %7 = bitcast i8* %6 to %struct._QUERY_REC*, !dbg !1472
  %8 = icmp ne %struct._QUERY_REC* %7, null, !dbg !1472
  br i1 %8, label %9, label %10, !dbg !1473

; <label>:9:                                      ; preds = %3
  br i1 false, label %12, label %11, !dbg !1474

; <label>:10:                                     ; preds = %3
  br i1 false, label %11, label %12, !dbg !1476

; <label>:11:                                     ; preds = %10, %9
  br label %13, !dbg !1478

; <label>:12:                                     ; preds = %10, %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.signal_query_created_curwin, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0)), !dbg !1481
  br label %18, !dbg !1484

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !1485

; <label>:14:                                     ; preds = %13
  %15 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @restore_win, align 8, !dbg !1487
  %16 = load %struct._QUERY_REC*, %struct._QUERY_REC** %2, align 8, !dbg !1488
  %17 = bitcast %struct._QUERY_REC* %16 to %struct._WI_ITEM_REC*, !dbg !1489
  call void @window_item_add(%struct._WINDOW_REC* %15, %struct._WI_ITEM_REC* %17, i32 1), !dbg !1490
  br label %18, !dbg !1491

; <label>:18:                                     ; preds = %14, %12
  ret void, !dbg !1492
}

declare %struct._CHAT_PROTOCOL_REC* @chat_protocol_find(i8*) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare i32 @chat_protocol_lookup(i8*) #1

declare noalias i8* @g_strdup(i8*) #1

declare void @query_init(%struct._QUERY_REC*, i32) #1

declare i8* @module_check_cast_module(i8*, i32, i8*, i8*) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare void @window_item_add(%struct._WINDOW_REC*, %struct._WI_ITEM_REC*, i32) #1

declare %struct._GSList* @config_node_first(%struct._GSList*) #1

declare %struct._WINDOW_REC* @window_find_refnum(i32) #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

declare %struct._WINDOW_REC* @window_create(%struct._WI_ITEM_REC*, i32) #1

declare void @window_set_refnum(%struct._WINDOW_REC*, i32) #1

declare i32 @config_node_get_bool(%struct._CONFIG_NODE*, i8*, i32) #1

declare void @window_set_name(%struct._WINDOW_REC*, i8*) #1

declare void @window_set_history(%struct._WINDOW_REC*, i8*) #1

declare void @window_set_level(%struct._WINDOW_REC*, i32) #1

declare i32 @level2bits(i8*, i32*) #1

declare %struct.THEME_REC* @theme_load(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @window_add_items(%struct._WINDOW_REC*, %struct._CONFIG_NODE*) #0 !dbg !1494 {
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca %struct._CONFIG_NODE*, align 8
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._CONFIG_NODE*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !1495, metadata !820), !dbg !1496
  store %struct._CONFIG_NODE* %1, %struct._CONFIG_NODE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %4, metadata !1497, metadata !820), !dbg !1498
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !1499, metadata !820), !dbg !1500
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1501, metadata !820), !dbg !1502
  %8 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1503
  %9 = icmp eq %struct._CONFIG_NODE* %8, null, !dbg !1505
  br i1 %9, label %10, label %11, !dbg !1506

; <label>:10:                                     ; preds = %2
  br label %38, !dbg !1507

; <label>:11:                                     ; preds = %2
  %12 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1508
  %13 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %12, i32 0, i32 2, !dbg !1509
  %14 = load i8*, i8** %13, align 8, !dbg !1509
  %15 = bitcast i8* %14 to %struct._GSList*, !dbg !1508
  %16 = call %struct._GSList* @config_node_first(%struct._GSList* %15), !dbg !1510
  store %struct._GSList* %16, %struct._GSList** %5, align 8, !dbg !1511
  br label %17, !dbg !1512

; <label>:17:                                     ; preds = %35, %11
  %18 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1513
  %19 = icmp ne %struct._GSList* %18, null, !dbg !1517
  br i1 %19, label %20, label %38, !dbg !1518

; <label>:20:                                     ; preds = %17
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %7, metadata !1519, metadata !820), !dbg !1521
  %21 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1522
  %22 = getelementptr inbounds %struct._GSList, %struct._GSList* %21, i32 0, i32 0, !dbg !1523
  %23 = load i8*, i8** %22, align 8, !dbg !1523
  %24 = bitcast i8* %23 to %struct._CONFIG_NODE*, !dbg !1522
  store %struct._CONFIG_NODE* %24, %struct._CONFIG_NODE** %7, align 8, !dbg !1521
  %25 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !1524
  %26 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i8* null), !dbg !1525
  store i8* %26, i8** %6, align 8, !dbg !1526
  %27 = load i8*, i8** %6, align 8, !dbg !1527
  %28 = icmp ne i8* %27, null, !dbg !1529
  br i1 %28, label %29, label %34, !dbg !1530

; <label>:29:                                     ; preds = %20
  %30 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1531
  %31 = load i8*, i8** %6, align 8, !dbg !1533
  %32 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !1534
  %33 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i32 3, %struct._WINDOW_REC* %30, i8* %31, %struct._CONFIG_NODE* %32), !dbg !1535
  br label %34, !dbg !1536

; <label>:34:                                     ; preds = %29, %20
  br label %35, !dbg !1537

; <label>:35:                                     ; preds = %34
  %36 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1538
  %37 = call %struct._GSList* @config_node_next(%struct._GSList* %36), !dbg !1540
  store %struct._GSList* %37, %struct._GSList** %5, align 8, !dbg !1541
  br label %17, !dbg !1542, !llvm.loop !1543

; <label>:38:                                     ; preds = %10, %17
  ret void, !dbg !1544
}

declare %struct._GSList* @config_node_next(%struct._GSList*) #1

declare i8* @module_find_id_str(i8*, i32) #1

declare %struct._CHAT_PROTOCOL_REC* @chat_protocol_find_id(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!804, !805}
!llvm.ident = !{!806}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !316, globals: !755)
!1 = !DIFile(filename: "line266-windows-layout.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !34, !276, !283, !288, !297, !308}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 10, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../../src/core/levels.h", directory: "/home/lichi/Desktop/irssi/task1")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33}
!6 = !DIEnumerator(name: "MSGLEVEL_CRAP", value: 1)
!7 = !DIEnumerator(name: "MSGLEVEL_MSGS", value: 2)
!8 = !DIEnumerator(name: "MSGLEVEL_PUBLIC", value: 4)
!9 = !DIEnumerator(name: "MSGLEVEL_NOTICES", value: 8)
!10 = !DIEnumerator(name: "MSGLEVEL_SNOTES", value: 16)
!11 = !DIEnumerator(name: "MSGLEVEL_CTCPS", value: 32)
!12 = !DIEnumerator(name: "MSGLEVEL_ACTIONS", value: 64)
!13 = !DIEnumerator(name: "MSGLEVEL_JOINS", value: 128)
!14 = !DIEnumerator(name: "MSGLEVEL_PARTS", value: 256)
!15 = !DIEnumerator(name: "MSGLEVEL_QUITS", value: 512)
!16 = !DIEnumerator(name: "MSGLEVEL_KICKS", value: 1024)
!17 = !DIEnumerator(name: "MSGLEVEL_MODES", value: 2048)
!18 = !DIEnumerator(name: "MSGLEVEL_TOPICS", value: 4096)
!19 = !DIEnumerator(name: "MSGLEVEL_WALLOPS", value: 8192)
!20 = !DIEnumerator(name: "MSGLEVEL_INVITES", value: 16384)
!21 = !DIEnumerator(name: "MSGLEVEL_NICKS", value: 32768)
!22 = !DIEnumerator(name: "MSGLEVEL_DCC", value: 65536)
!23 = !DIEnumerator(name: "MSGLEVEL_DCCMSGS", value: 131072)
!24 = !DIEnumerator(name: "MSGLEVEL_CLIENTNOTICE", value: 262144)
!25 = !DIEnumerator(name: "MSGLEVEL_CLIENTCRAP", value: 524288)
!26 = !DIEnumerator(name: "MSGLEVEL_CLIENTERROR", value: 1048576)
!27 = !DIEnumerator(name: "MSGLEVEL_HILIGHT", value: 2097152)
!28 = !DIEnumerator(name: "MSGLEVEL_ALL", value: 4194303)
!29 = !DIEnumerator(name: "MSGLEVEL_NOHILIGHT", value: 16777216)
!30 = !DIEnumerator(name: "MSGLEVEL_NO_ACT", value: 33554432)
!31 = !DIEnumerator(name: "MSGLEVEL_NEVER", value: 67108864)
!32 = !DIEnumerator(name: "MSGLEVEL_LASTLOG", value: 134217728)
!33 = !DIEnumerator(name: "MSGLEVEL_HIDDEN", value: 268435456)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !35, line: 3, size: 32, align: 32, elements: !36)
!35 = !DIFile(filename: "module-formats.h", directory: "/home/lichi/Desktop/irssi/task1")
!36 = !{!37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275}
!37 = !DIEnumerator(name: "TXT_MODULE_NAME", value: 0)
!38 = !DIEnumerator(name: "TXT_FILL_1", value: 1)
!39 = !DIEnumerator(name: "TXT_LINE_START", value: 2)
!40 = !DIEnumerator(name: "TXT_LINE_START_IRSSI", value: 3)
!41 = !DIEnumerator(name: "TXT_TIMESTAMP", value: 4)
!42 = !DIEnumerator(name: "TXT_SERVERTAG", value: 5)
!43 = !DIEnumerator(name: "TXT_DAYCHANGE", value: 6)
!44 = !DIEnumerator(name: "TXT_TALKING_WITH", value: 7)
!45 = !DIEnumerator(name: "TXT_REFNUM_TOO_LOW", value: 8)
!46 = !DIEnumerator(name: "TXT_ERROR_SERVER_STICKY", value: 9)
!47 = !DIEnumerator(name: "TXT_SET_SERVER_STICKY", value: 10)
!48 = !DIEnumerator(name: "TXT_UNSET_SERVER_STICKY", value: 11)
!49 = !DIEnumerator(name: "TXT_WINDOW_NAME_NOT_UNIQUE", value: 12)
!50 = !DIEnumerator(name: "TXT_WINDOW_LEVEL", value: 13)
!51 = !DIEnumerator(name: "TXT_WINDOW_SET_IMMORTAL", value: 14)
!52 = !DIEnumerator(name: "TXT_WINDOW_UNSET_IMMORTAL", value: 15)
!53 = !DIEnumerator(name: "TXT_WINDOW_IMMORTAL_ERROR", value: 16)
!54 = !DIEnumerator(name: "TXT_WINDOWLIST_HEADER", value: 17)
!55 = !DIEnumerator(name: "TXT_WINDOWLIST_LINE", value: 18)
!56 = !DIEnumerator(name: "TXT_WINDOWLIST_FOOTER", value: 19)
!57 = !DIEnumerator(name: "TXT_WINDOWS_LAYOUT_SAVED", value: 20)
!58 = !DIEnumerator(name: "TXT_WINDOWS_LAYOUT_RESET", value: 21)
!59 = !DIEnumerator(name: "TXT_WINDOW_INFO_HEADER", value: 22)
!60 = !DIEnumerator(name: "TXT_WINDOW_INFO_FOOTER", value: 23)
!61 = !DIEnumerator(name: "TXT_WINDOW_INFO_REFNUM", value: 24)
!62 = !DIEnumerator(name: "TXT_WINDOW_INFO_REFNUM_STICKY", value: 25)
!63 = !DIEnumerator(name: "TXT_WINDOW_INFO_NAME", value: 26)
!64 = !DIEnumerator(name: "TXT_WINDOW_INFO_HISTORY", value: 27)
!65 = !DIEnumerator(name: "TXT_WINDOW_INFO_IMMORTAL", value: 28)
!66 = !DIEnumerator(name: "TXT_WINDOW_INFO_SIZE", value: 29)
!67 = !DIEnumerator(name: "TXT_WINDOW_INFO_LEVEL", value: 30)
!68 = !DIEnumerator(name: "TXT_WINDOW_INFO_SERVER", value: 31)
!69 = !DIEnumerator(name: "TXT_WINDOW_INFO_SERVER_STICKY", value: 32)
!70 = !DIEnumerator(name: "TXT_WINDOW_INFO_THEME", value: 33)
!71 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEMS_HEADER", value: 34)
!72 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEM", value: 35)
!73 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEMS_FOOTER", value: 36)
!74 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEMS_HEADER", value: 37)
!75 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEM", value: 38)
!76 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEMS_FOOTER", value: 39)
!77 = !DIEnumerator(name: "TXT_FILL_2", value: 40)
!78 = !DIEnumerator(name: "TXT_LOOKING_UP", value: 41)
!79 = !DIEnumerator(name: "TXT_CONNECTING", value: 42)
!80 = !DIEnumerator(name: "TXT_RECONNECTING", value: 43)
!81 = !DIEnumerator(name: "TXT_CONNECTION_ESTABLISHED", value: 44)
!82 = !DIEnumerator(name: "TXT_CANT_CONNECT", value: 45)
!83 = !DIEnumerator(name: "TXT_CONNECTION_LOST", value: 46)
!84 = !DIEnumerator(name: "TXT_LAG_DISCONNECTED", value: 47)
!85 = !DIEnumerator(name: "TXT_DISCONNECTED", value: 48)
!86 = !DIEnumerator(name: "TXT_SERVER_QUIT", value: 49)
!87 = !DIEnumerator(name: "TXT_SERVER_CHANGED", value: 50)
!88 = !DIEnumerator(name: "TXT_UNKNOWN_SERVER_TAG", value: 51)
!89 = !DIEnumerator(name: "TXT_NO_CONNECTED_SERVERS", value: 52)
!90 = !DIEnumerator(name: "TXT_SERVER_LIST", value: 53)
!91 = !DIEnumerator(name: "TXT_SERVER_LOOKUP_LIST", value: 54)
!92 = !DIEnumerator(name: "TXT_SERVER_RECONNECT_LIST", value: 55)
!93 = !DIEnumerator(name: "TXT_RECONNECT_REMOVED", value: 56)
!94 = !DIEnumerator(name: "TXT_RECONNECT_NOT_FOUND", value: 57)
!95 = !DIEnumerator(name: "TXT_SETUPSERVER_ADDED", value: 58)
!96 = !DIEnumerator(name: "TXT_SETUPSERVER_REMOVED", value: 59)
!97 = !DIEnumerator(name: "TXT_SETUPSERVER_NOT_FOUND", value: 60)
!98 = !DIEnumerator(name: "TXT_YOUR_NICK", value: 61)
!99 = !DIEnumerator(name: "TXT_FILL_3", value: 62)
!100 = !DIEnumerator(name: "TXT_JOIN", value: 63)
!101 = !DIEnumerator(name: "TXT_PART", value: 64)
!102 = !DIEnumerator(name: "TXT_KICK", value: 65)
!103 = !DIEnumerator(name: "TXT_QUIT", value: 66)
!104 = !DIEnumerator(name: "TXT_QUIT_ONCE", value: 67)
!105 = !DIEnumerator(name: "TXT_INVITE", value: 68)
!106 = !DIEnumerator(name: "TXT_NOT_INVITED", value: 69)
!107 = !DIEnumerator(name: "TXT_NEW_TOPIC", value: 70)
!108 = !DIEnumerator(name: "TXT_TOPIC_UNSET", value: 71)
!109 = !DIEnumerator(name: "TXT_YOUR_NICK_CHANGED", value: 72)
!110 = !DIEnumerator(name: "TXT_NICK_CHANGED", value: 73)
!111 = !DIEnumerator(name: "TXT_TALKING_IN", value: 74)
!112 = !DIEnumerator(name: "TXT_NOT_IN_CHANNELS", value: 75)
!113 = !DIEnumerator(name: "TXT_CURRENT_CHANNEL", value: 76)
!114 = !DIEnumerator(name: "TXT_NAMES", value: 77)
!115 = !DIEnumerator(name: "TXT_NAMES_PREFIX", value: 78)
!116 = !DIEnumerator(name: "TXT_NAMES_NICK_OP", value: 79)
!117 = !DIEnumerator(name: "TXT_NAMES_NICK_HALFOP", value: 80)
!118 = !DIEnumerator(name: "TXT_NAMES_NICK_VOICE", value: 81)
!119 = !DIEnumerator(name: "TXT_NAMES_NICK", value: 82)
!120 = !DIEnumerator(name: "TXT_ENDOFNAMES", value: 83)
!121 = !DIEnumerator(name: "TXT_CHANLIST_HEADER", value: 84)
!122 = !DIEnumerator(name: "TXT_CHANLIST_LINE", value: 85)
!123 = !DIEnumerator(name: "TXT_CHANSETUP_NOT_FOUND", value: 86)
!124 = !DIEnumerator(name: "TXT_CHANSETUP_ADDED", value: 87)
!125 = !DIEnumerator(name: "TXT_CHANSETUP_REMOVED", value: 88)
!126 = !DIEnumerator(name: "TXT_CHANSETUP_HEADER", value: 89)
!127 = !DIEnumerator(name: "TXT_CHANSETUP_LINE", value: 90)
!128 = !DIEnumerator(name: "TXT_CHANSETUP_FOOTER", value: 91)
!129 = !DIEnumerator(name: "TXT_FILL_4", value: 92)
!130 = !DIEnumerator(name: "TXT_OWN_MSG", value: 93)
!131 = !DIEnumerator(name: "TXT_OWN_MSG_CHANNEL", value: 94)
!132 = !DIEnumerator(name: "TXT_OWN_MSG_PRIVATE", value: 95)
!133 = !DIEnumerator(name: "TXT_OWN_MSG_PRIVATE_QUERY", value: 96)
!134 = !DIEnumerator(name: "TXT_PUBMSG_ME", value: 97)
!135 = !DIEnumerator(name: "TXT_PUBMSG_ME_CHANNEL", value: 98)
!136 = !DIEnumerator(name: "TXT_PUBMSG_HILIGHT", value: 99)
!137 = !DIEnumerator(name: "TXT_PUBMSG_HILIGHT_CHANNEL", value: 100)
!138 = !DIEnumerator(name: "TXT_PUBMSG", value: 101)
!139 = !DIEnumerator(name: "TXT_PUBMSG_CHANNEL", value: 102)
!140 = !DIEnumerator(name: "TXT_MSG_PRIVATE", value: 103)
!141 = !DIEnumerator(name: "TXT_MSG_PRIVATE_QUERY", value: 104)
!142 = !DIEnumerator(name: "TXT_NO_MSGS_GOT", value: 105)
!143 = !DIEnumerator(name: "TXT_NO_MSGS_SENT", value: 106)
!144 = !DIEnumerator(name: "TXT_FILL_5", value: 107)
!145 = !DIEnumerator(name: "TXT_QUERY_START", value: 108)
!146 = !DIEnumerator(name: "TXT_QUERY_STOP", value: 109)
!147 = !DIEnumerator(name: "TXT_NO_QUERY", value: 110)
!148 = !DIEnumerator(name: "TXT_QUERY_SERVER_CHANGED", value: 111)
!149 = !DIEnumerator(name: "TXT_FILL_6", value: 112)
!150 = !DIEnumerator(name: "TXT_HILIGHT_HEADER", value: 113)
!151 = !DIEnumerator(name: "TXT_HILIGHT_LINE", value: 114)
!152 = !DIEnumerator(name: "TXT_HILIGHT_FOOTER", value: 115)
!153 = !DIEnumerator(name: "TXT_HILIGHT_NOT_FOUND", value: 116)
!154 = !DIEnumerator(name: "TXT_HILIGHT_REMOVED", value: 117)
!155 = !DIEnumerator(name: "TXT_FILL_7", value: 118)
!156 = !DIEnumerator(name: "TXT_ALIAS_ADDED", value: 119)
!157 = !DIEnumerator(name: "TXT_ALIAS_REMOVED", value: 120)
!158 = !DIEnumerator(name: "TXT_ALIAS_NOT_FOUND", value: 121)
!159 = !DIEnumerator(name: "TXT_ALIASLIST_HEADER", value: 122)
!160 = !DIEnumerator(name: "TXT_ALIASLIST_LINE", value: 123)
!161 = !DIEnumerator(name: "TXT_ALIASLIST_FOOTER", value: 124)
!162 = !DIEnumerator(name: "TXT_FILL_8", value: 125)
!163 = !DIEnumerator(name: "TXT_LOG_OPENED", value: 126)
!164 = !DIEnumerator(name: "TXT_LOG_CLOSED", value: 127)
!165 = !DIEnumerator(name: "TXT_LOG_CREATE_FAILED", value: 128)
!166 = !DIEnumerator(name: "TXT_LOG_LOCKED", value: 129)
!167 = !DIEnumerator(name: "TXT_LOG_NOT_OPEN", value: 130)
!168 = !DIEnumerator(name: "TXT_LOG_STARTED", value: 131)
!169 = !DIEnumerator(name: "TXT_LOG_STOPPED", value: 132)
!170 = !DIEnumerator(name: "TXT_LOG_LIST_HEADER", value: 133)
!171 = !DIEnumerator(name: "TXT_LOG_LIST", value: 134)
!172 = !DIEnumerator(name: "TXT_LOG_LIST_FOOTER", value: 135)
!173 = !DIEnumerator(name: "TXT_WINDOWLOG_FILE", value: 136)
!174 = !DIEnumerator(name: "TXT_WINDOWLOG_FILE_LOGGING", value: 137)
!175 = !DIEnumerator(name: "TXT_LOG_NO_AWAY_MSGS", value: 138)
!176 = !DIEnumerator(name: "TXT_LOG_AWAY_MSGS", value: 139)
!177 = !DIEnumerator(name: "TXT_FILL_9", value: 140)
!178 = !DIEnumerator(name: "TXT_MODULE_HEADER", value: 141)
!179 = !DIEnumerator(name: "TXT_MODULE_LINE", value: 142)
!180 = !DIEnumerator(name: "TXT_MODULE_FOOTER", value: 143)
!181 = !DIEnumerator(name: "TXT_MODULE_ALREADY_LOADED", value: 144)
!182 = !DIEnumerator(name: "TXT_MODULE_NOT_LOADED", value: 145)
!183 = !DIEnumerator(name: "TXT_MODULE_LOAD_ERROR", value: 146)
!184 = !DIEnumerator(name: "TXT_MODULE_VERSION_MISMATCH", value: 147)
!185 = !DIEnumerator(name: "TXT_MODULE_INVALID", value: 148)
!186 = !DIEnumerator(name: "TXT_MODULE_LOADED", value: 149)
!187 = !DIEnumerator(name: "TXT_MODULE_UNLOADED", value: 150)
!188 = !DIEnumerator(name: "TXT_FILL_10", value: 151)
!189 = !DIEnumerator(name: "TXT_COMMAND_UNKNOWN", value: 152)
!190 = !DIEnumerator(name: "TXT_COMMAND_AMBIGUOUS", value: 153)
!191 = !DIEnumerator(name: "TXT_OPTION_UNKNOWN", value: 154)
!192 = !DIEnumerator(name: "TXT_OPTION_AMBIGUOUS", value: 155)
!193 = !DIEnumerator(name: "TXT_OPTION_MISSING_ARG", value: 156)
!194 = !DIEnumerator(name: "TXT_NOT_ENOUGH_PARAMS", value: 157)
!195 = !DIEnumerator(name: "TXT_NOT_CONNECTED", value: 158)
!196 = !DIEnumerator(name: "TXT_NOT_JOINED", value: 159)
!197 = !DIEnumerator(name: "TXT_CHAN_NOT_FOUND", value: 160)
!198 = !DIEnumerator(name: "TXT_CHAN_NOT_SYNCED", value: 161)
!199 = !DIEnumerator(name: "TXT_ILLEGAL_PROTO", value: 162)
!200 = !DIEnumerator(name: "TXT_NOT_GOOD_IDEA", value: 163)
!201 = !DIEnumerator(name: "TXT_INVALID_NUMBER", value: 164)
!202 = !DIEnumerator(name: "TXT_INVALID_TIME", value: 165)
!203 = !DIEnumerator(name: "TXT_INVALID_LEVEL", value: 166)
!204 = !DIEnumerator(name: "TXT_INVALID_SIZE", value: 167)
!205 = !DIEnumerator(name: "TXT_INVALID_CHARSET", value: 168)
!206 = !DIEnumerator(name: "TXT_INVALID_CHOICE", value: 169)
!207 = !DIEnumerator(name: "TXT_EVAL_MAX_RECURSE", value: 170)
!208 = !DIEnumerator(name: "TXT_PROGRAM_NOT_FOUND", value: 171)
!209 = !DIEnumerator(name: "TXT_NO_SERVER_DEFINED", value: 172)
!210 = !DIEnumerator(name: "TXT_FILL_11", value: 173)
!211 = !DIEnumerator(name: "TXT_THEME_SAVED", value: 174)
!212 = !DIEnumerator(name: "TXT_THEME_SAVE_FAILED", value: 175)
!213 = !DIEnumerator(name: "TXT_THEME_NOT_FOUND", value: 176)
!214 = !DIEnumerator(name: "TXT_THEME_CHANGED", value: 177)
!215 = !DIEnumerator(name: "TXT_WINDOW_THEME", value: 178)
!216 = !DIEnumerator(name: "TXT_WINDOW_THEME_DEFAULT", value: 179)
!217 = !DIEnumerator(name: "TXT_WINDOW_THEME_CHANGED", value: 180)
!218 = !DIEnumerator(name: "TXT_WINDOW_THEME_REMOVED", value: 181)
!219 = !DIEnumerator(name: "TXT_FORMAT_TITLE", value: 182)
!220 = !DIEnumerator(name: "TXT_FORMAT_SUBTITLE", value: 183)
!221 = !DIEnumerator(name: "TXT_FORMAT_ITEM", value: 184)
!222 = !DIEnumerator(name: "TXT_FILL_12", value: 185)
!223 = !DIEnumerator(name: "TXT_IGNORED", value: 186)
!224 = !DIEnumerator(name: "TXT_IGNORED_OPTIONS", value: 187)
!225 = !DIEnumerator(name: "TXT_UNIGNORED", value: 188)
!226 = !DIEnumerator(name: "TXT_IGNORE_NOT_FOUND", value: 189)
!227 = !DIEnumerator(name: "TXT_IGNORE_NO_IGNORES", value: 190)
!228 = !DIEnumerator(name: "TXT_IGNORE_HEADER", value: 191)
!229 = !DIEnumerator(name: "TXT_IGNORE_LINE", value: 192)
!230 = !DIEnumerator(name: "TXT_IGNORE_FOOTER", value: 193)
!231 = !DIEnumerator(name: "TXT_FILL_13", value: 194)
!232 = !DIEnumerator(name: "TXT_NOT_CHANNEL_OR_QUERY", value: 195)
!233 = !DIEnumerator(name: "TXT_CONVERSION_ADDED", value: 196)
!234 = !DIEnumerator(name: "TXT_CONVERSION_REMOVED", value: 197)
!235 = !DIEnumerator(name: "TXT_CONVERSION_NOT_FOUND", value: 198)
!236 = !DIEnumerator(name: "TXT_CONVERSION_NO_TRANSLITS", value: 199)
!237 = !DIEnumerator(name: "TXT_RECODE_HEADER", value: 200)
!238 = !DIEnumerator(name: "TXT_RECODE_LINE", value: 201)
!239 = !DIEnumerator(name: "TXT_FILL_14", value: 202)
!240 = !DIEnumerator(name: "TXT_UNKNOWN_CHAT_PROTOCOL", value: 203)
!241 = !DIEnumerator(name: "TXT_UNKNOWN_CHATNET", value: 204)
!242 = !DIEnumerator(name: "TXT_NOT_TOGGLE", value: 205)
!243 = !DIEnumerator(name: "TXT_PERL_ERROR", value: 206)
!244 = !DIEnumerator(name: "TXT_BIND_HEADER", value: 207)
!245 = !DIEnumerator(name: "TXT_BIND_LIST", value: 208)
!246 = !DIEnumerator(name: "TXT_BIND_COMMAND_LIST", value: 209)
!247 = !DIEnumerator(name: "TXT_BIND_FOOTER", value: 210)
!248 = !DIEnumerator(name: "TXT_BIND_UNKNOWN_ID", value: 211)
!249 = !DIEnumerator(name: "TXT_CONFIG_SAVED", value: 212)
!250 = !DIEnumerator(name: "TXT_CONFIG_RELOADED", value: 213)
!251 = !DIEnumerator(name: "TXT_CONFIG_MODIFIED", value: 214)
!252 = !DIEnumerator(name: "TXT_GLIB_ERROR", value: 215)
!253 = !DIEnumerator(name: "TXT_OVERWRITE_CONFIG", value: 216)
!254 = !DIEnumerator(name: "TXT_SET_TITLE", value: 217)
!255 = !DIEnumerator(name: "TXT_SET_ITEM", value: 218)
!256 = !DIEnumerator(name: "TXT_SET_UNKNOWN", value: 219)
!257 = !DIEnumerator(name: "TXT_SET_NOT_BOOLEAN", value: 220)
!258 = !DIEnumerator(name: "TXT_NO_COMPLETIONS", value: 221)
!259 = !DIEnumerator(name: "TXT_COMPLETION_REMOVED", value: 222)
!260 = !DIEnumerator(name: "TXT_COMPLETION_HEADER", value: 223)
!261 = !DIEnumerator(name: "TXT_COMPLETION_LINE", value: 224)
!262 = !DIEnumerator(name: "TXT_COMPLETION_FOOTER", value: 225)
!263 = !DIEnumerator(name: "TXT_CAPSICUM_ENABLED", value: 226)
!264 = !DIEnumerator(name: "TXT_CAPSICUM_DISABLED", value: 227)
!265 = !DIEnumerator(name: "TXT_CAPSICUM_FAILED", value: 228)
!266 = !DIEnumerator(name: "TLS_FILL_15", value: 229)
!267 = !DIEnumerator(name: "TXT_TLS_EPHEMERAL_KEY", value: 230)
!268 = !DIEnumerator(name: "TXT_TLS_EPHEMERAL_KEY_UNAVAILBLE", value: 231)
!269 = !DIEnumerator(name: "TXT_TLS_PUBKEY", value: 232)
!270 = !DIEnumerator(name: "TXT_TLS_CERT_HEADER", value: 233)
!271 = !DIEnumerator(name: "TXT_TLS_CERT_SUBJECT", value: 234)
!272 = !DIEnumerator(name: "TXT_TLS_CERT_ISSUER", value: 235)
!273 = !DIEnumerator(name: "TXT_TLS_PUBKEY_FINGERPRINT", value: 236)
!274 = !DIEnumerator(name: "TXT_TLS_CERT_FINGERPRINT", value: 237)
!275 = !DIEnumerator(name: "TXT_TLS_PROTOCOL_VERSION", value: 238)
!276 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !277, line: 69, size: 32, align: 32, elements: !278)
!277 = !DIFile(filename: "/usr/include/glib-2.0/glib/giochannel.h", directory: "/home/lichi/Desktop/irssi/task1")
!278 = !{!279, !280, !281, !282}
!279 = !DIEnumerator(name: "G_IO_STATUS_ERROR", value: 0)
!280 = !DIEnumerator(name: "G_IO_STATUS_NORMAL", value: 1)
!281 = !DIEnumerator(name: "G_IO_STATUS_EOF", value: 2)
!282 = !DIEnumerator(name: "G_IO_STATUS_AGAIN", value: 3)
!283 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !277, line: 77, size: 32, align: 32, elements: !284)
!284 = !{!285, !286, !287}
!285 = !DIEnumerator(name: "G_SEEK_CUR", value: 0)
!286 = !DIEnumerator(name: "G_SEEK_SET", value: 1)
!287 = !DIEnumerator(name: "G_SEEK_END", value: 2)
!288 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !289, line: 31, size: 32, align: 32, elements: !290)
!289 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/irssi/task1")
!290 = !{!291, !292, !293, !294, !295, !296}
!291 = !DIEnumerator(name: "G_IO_IN", value: 1)
!292 = !DIEnumerator(name: "G_IO_OUT", value: 4)
!293 = !DIEnumerator(name: "G_IO_PRI", value: 2)
!294 = !DIEnumerator(name: "G_IO_ERR", value: 8)
!295 = !DIEnumerator(name: "G_IO_HUP", value: 16)
!296 = !DIEnumerator(name: "G_IO_NVAL", value: 32)
!297 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !277, line: 84, size: 32, align: 32, elements: !298)
!298 = !{!299, !300, !301, !302, !303, !304, !305, !306, !307}
!299 = !DIEnumerator(name: "G_IO_FLAG_APPEND", value: 1)
!300 = !DIEnumerator(name: "G_IO_FLAG_NONBLOCK", value: 2)
!301 = !DIEnumerator(name: "G_IO_FLAG_IS_READABLE", value: 4)
!302 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITABLE", value: 8)
!303 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITEABLE", value: 8)
!304 = !DIEnumerator(name: "G_IO_FLAG_IS_SEEKABLE", value: 16)
!305 = !DIEnumerator(name: "G_IO_FLAG_MASK", value: 31)
!306 = !DIEnumerator(name: "G_IO_FLAG_GET_MASK", value: 31)
!307 = !DIEnumerator(name: "G_IO_FLAG_SET_MASK", value: 3)
!308 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !309, line: 4, size: 32, align: 32, elements: !310)
!309 = !DIFile(filename: "../../../src/lib-config/iconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!310 = !{!311, !312, !313, !314, !315}
!311 = !DIEnumerator(name: "NODE_TYPE_KEY", value: 0)
!312 = !DIEnumerator(name: "NODE_TYPE_VALUE", value: 1)
!313 = !DIEnumerator(name: "NODE_TYPE_BLOCK", value: 2)
!314 = !DIEnumerator(name: "NODE_TYPE_LIST", value: 3)
!315 = !DIEnumerator(name: "NODE_TYPE_COMMENT", value: 4)
!316 = !{!317, !323, !324, !331, !413, !640, !686, !667}
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "GFunc", file: !318, line: 88, baseType: !319)
!318 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64, align: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{null, !322, !322}
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !318, line: 77, baseType: !323)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !325, line: 9, baseType: !326)
!325 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64, align: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{null, !329, !329, !329, !329, !329, !329}
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64, align: 64)
!330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64, align: 64)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !333, line: 110, baseType: !334)
!333 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !335, line: 15, size: 960, align: 64, elements: !336)
!335 = !DIFile(filename: "../../../src/core/queries.h", directory: "/home/lichi/Desktop/irssi/task1")
!336 = !{!337, !340, !341, !346, !347, !742, !743, !744, !745, !746, !747, !748, !749, !751, !752, !753, !754}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !334, file: !338, line: 3, baseType: !339, size: 32, align: 32)
!338 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!339 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !334, file: !338, line: 4, baseType: !339, size: 32, align: 32, offset: 32)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !334, file: !338, line: 5, baseType: !342, size: 64, align: 64, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64, align: 64)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !344, line: 37, baseType: !345)
!344 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!345 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !344, line: 37, flags: DIFlagFwdDecl)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !334, file: !338, line: 7, baseType: !323, size: 64, align: 64, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !334, file: !338, line: 8, baseType: !348, size: 64, align: 64, offset: 192)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64, align: 64)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !333, line: 107, baseType: !350)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !351, line: 30, size: 2240, align: 64, elements: !352)
!351 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!352 = !{!353, !355, !356, !357, !589, !594, !595, !596, !597, !598, !599, !600, !601, !602, !606, !607, !611, !612, !613, !617, !618, !619, !620, !621, !622, !623, !624, !625, !632, !633, !634, !635, !636, !642, !646, !650, !654, !658, !663, !733, !737, !741}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !350, file: !354, line: 3, baseType: !339, size: 32, align: 32)
!354 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!355 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !350, file: !354, line: 4, baseType: !339, size: 32, align: 32, offset: 32)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !350, file: !354, line: 6, baseType: !339, size: 32, align: 32, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !350, file: !354, line: 8, baseType: !358, size: 64, align: 64, offset: 128)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64, align: 64)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !333, line: 113, baseType: !360)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !351, line: 25, size: 1920, align: 64, elements: !361)
!361 = !{!362, !364, !365, !366, !369, !370, !371, !372, !373, !375, !376, !377, !378, !379, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !360, file: !363, line: 3, baseType: !339, size: 32, align: 32)
!363 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!364 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !360, file: !363, line: 4, baseType: !339, size: 32, align: 32, offset: 32)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !360, file: !363, line: 6, baseType: !339, size: 32, align: 32, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !360, file: !363, line: 9, baseType: !367, size: 64, align: 64, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64, align: 64)
!368 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !360, file: !363, line: 10, baseType: !339, size: 32, align: 32, offset: 192)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !360, file: !363, line: 11, baseType: !367, size: 64, align: 64, offset: 256)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !360, file: !363, line: 11, baseType: !367, size: 64, align: 64, offset: 320)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !360, file: !363, line: 11, baseType: !367, size: 64, align: 64, offset: 384)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !360, file: !363, line: 13, baseType: !374, size: 16, align: 16, offset: 448)
!374 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !360, file: !363, line: 14, baseType: !367, size: 64, align: 64, offset: 512)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !360, file: !363, line: 15, baseType: !367, size: 64, align: 64, offset: 576)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !360, file: !363, line: 16, baseType: !339, size: 32, align: 32, offset: 640)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !360, file: !363, line: 17, baseType: !367, size: 64, align: 64, offset: 704)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !360, file: !363, line: 19, baseType: !380, size: 64, align: 64, offset: 768)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64, align: 64)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !333, line: 99, baseType: !382)
!382 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !333, line: 99, flags: DIFlagFwdDecl)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !360, file: !363, line: 19, baseType: !380, size: 64, align: 64, offset: 832)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !360, file: !363, line: 21, baseType: !367, size: 64, align: 64, offset: 896)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !360, file: !363, line: 22, baseType: !367, size: 64, align: 64, offset: 960)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !360, file: !363, line: 23, baseType: !367, size: 64, align: 64, offset: 1024)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !360, file: !363, line: 24, baseType: !367, size: 64, align: 64, offset: 1088)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !360, file: !363, line: 26, baseType: !367, size: 64, align: 64, offset: 1152)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !360, file: !363, line: 27, baseType: !367, size: 64, align: 64, offset: 1216)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !360, file: !363, line: 28, baseType: !367, size: 64, align: 64, offset: 1280)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !360, file: !363, line: 29, baseType: !367, size: 64, align: 64, offset: 1344)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !360, file: !363, line: 30, baseType: !367, size: 64, align: 64, offset: 1408)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !360, file: !363, line: 31, baseType: !367, size: 64, align: 64, offset: 1472)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !360, file: !363, line: 32, baseType: !367, size: 64, align: 64, offset: 1536)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !360, file: !363, line: 33, baseType: !367, size: 64, align: 64, offset: 1600)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !360, file: !363, line: 35, baseType: !397, size: 64, align: 64, offset: 1664)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64, align: 64)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !277, line: 41, baseType: !399)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !277, line: 97, size: 896, align: 64, elements: !400)
!400 = !{!401, !403, !546, !547, !552, !553, !554, !555, !556, !565, !566, !567, !571, !572, !573, !574, !575, !576, !577, !578}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !399, file: !277, line: 100, baseType: !402, size: 32, align: 32)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !318, line: 49, baseType: !339)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !399, file: !277, line: 101, baseType: !404, size: 64, align: 64, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64, align: 64)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !277, line: 42, baseType: !406)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !277, line: 131, size: 512, align: 64, elements: !407)
!407 = !{!408, !432, !438, !445, !449, !533, !537, !542}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !406, file: !277, line: 133, baseType: !409, size: 64, align: 64)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64, align: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{!412, !397, !413, !415, !418, !419}
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !277, line: 75, baseType: !276)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64, align: 64)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !318, line: 46, baseType: !368)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !416, line: 66, baseType: !417)
!416 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!417 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64, align: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64, align: 64)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64, align: 64)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !422, line: 42, baseType: !423)
!422 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !422, line: 44, size: 128, align: 64, elements: !424)
!424 = !{!425, !430, !431}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !423, file: !422, line: 46, baseType: !426, size: 32, align: 32)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !427, line: 36, baseType: !428)
!427 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !416, line: 45, baseType: !429)
!429 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !423, file: !422, line: 47, baseType: !402, size: 32, align: 32, offset: 32)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !423, file: !422, line: 48, baseType: !413, size: 64, align: 64, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !406, file: !277, line: 138, baseType: !433, size: 64, align: 64, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64, align: 64)
!434 = !DISubroutineType(types: !435)
!435 = !{!412, !397, !436, !415, !418, !419}
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64, align: 64)
!437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !414)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !406, file: !277, line: 143, baseType: !439, size: 64, align: 64, offset: 128)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64, align: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{!412, !397, !442, !444, !419}
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !416, line: 51, baseType: !443)
!443 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !277, line: 82, baseType: !283)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !406, file: !277, line: 147, baseType: !446, size: 64, align: 64, offset: 192)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64, align: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{!412, !397, !419}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !406, file: !277, line: 149, baseType: !450, size: 64, align: 64, offset: 256)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64, align: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!453, !397, !532}
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64, align: 64)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !289, line: 64, baseType: !455)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !289, line: 171, size: 768, align: 64, elements: !456)
!456 = !{!457, !458, !479, !508, !510, !514, !515, !516, !517, !525, !526, !527, !528}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !455, file: !289, line: 174, baseType: !322, size: 64, align: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !455, file: !289, line: 175, baseType: !459, size: 64, align: 64, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64, align: 64)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !289, line: 77, baseType: !461)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !289, line: 196, size: 192, align: 64, elements: !462)
!462 = !{!463, !467, !468}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !461, file: !289, line: 198, baseType: !464, size: 64, align: 64)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64, align: 64)
!465 = !DISubroutineType(types: !466)
!466 = !{null, !322}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !461, file: !289, line: 199, baseType: !464, size: 64, align: 64, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !461, file: !289, line: 200, baseType: !469, size: 64, align: 64, offset: 128)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64, align: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{null, !322, !453, !472, !478}
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64, align: 64)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !289, line: 155, baseType: !474)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64, align: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{!477, !322}
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !318, line: 50, baseType: !402)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64, align: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !455, file: !289, line: 177, baseType: !480, size: 64, align: 64, offset: 128)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64, align: 64)
!481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !482)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !289, line: 130, baseType: !483)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !289, line: 214, size: 384, align: 64, elements: !484)
!484 = !{!485, !490, !494, !498, !502, !503}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !483, file: !289, line: 216, baseType: !486, size: 64, align: 64)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64, align: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!477, !453, !489}
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64, align: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !483, file: !289, line: 218, baseType: !491, size: 64, align: 64, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64, align: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{!477, !453}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !483, file: !289, line: 219, baseType: !495, size: 64, align: 64, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64, align: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!477, !453, !473, !322}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !483, file: !289, line: 222, baseType: !499, size: 64, align: 64, offset: 192)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64, align: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{null, !453}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !483, file: !289, line: 226, baseType: !473, size: 64, align: 64, offset: 256)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !483, file: !289, line: 227, baseType: !504, size: 64, align: 64, offset: 320)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !289, line: 212, baseType: !505)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64, align: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{null}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !455, file: !289, line: 178, baseType: !509, size: 32, align: 32, offset: 192)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !318, line: 55, baseType: !429)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !455, file: !289, line: 180, baseType: !511, size: 64, align: 64, offset: 256)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64, align: 64)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !289, line: 48, baseType: !513)
!513 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !289, line: 48, flags: DIFlagFwdDecl)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !455, file: !289, line: 182, baseType: !402, size: 32, align: 32, offset: 320)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !455, file: !289, line: 183, baseType: !509, size: 32, align: 32, offset: 352)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !455, file: !289, line: 184, baseType: !509, size: 32, align: 32, offset: 384)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !455, file: !289, line: 186, baseType: !518, size: 64, align: 64, offset: 448)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64, align: 64)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !520, line: 37, baseType: !521)
!520 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !520, line: 39, size: 128, align: 64, elements: !522)
!522 = !{!523, !524}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !521, file: !520, line: 41, baseType: !322, size: 64, align: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !521, file: !520, line: 42, baseType: !518, size: 64, align: 64, offset: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !455, file: !289, line: 188, baseType: !453, size: 64, align: 64, offset: 512)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !455, file: !289, line: 189, baseType: !453, size: 64, align: 64, offset: 576)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !455, file: !289, line: 191, baseType: !367, size: 64, align: 64, offset: 640)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !455, file: !289, line: 193, baseType: !529, size: 64, align: 64, offset: 704)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64, align: 64)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !289, line: 65, baseType: !531)
!531 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !289, line: 65, flags: DIFlagFwdDecl)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !289, line: 39, baseType: !288)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !406, file: !277, line: 151, baseType: !534, size: 64, align: 64, offset: 320)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64, align: 64)
!535 = !DISubroutineType(types: !536)
!536 = !{null, !397}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !406, file: !277, line: 152, baseType: !538, size: 64, align: 64, offset: 384)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64, align: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!412, !397, !541, !419}
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !277, line: 95, baseType: !297)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !406, file: !277, line: 155, baseType: !543, size: 64, align: 64, offset: 448)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64, align: 64)
!544 = !DISubroutineType(types: !545)
!545 = !{!541, !397}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !399, file: !277, line: 103, baseType: !413, size: 64, align: 64, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !399, file: !277, line: 104, baseType: !548, size: 64, align: 64, offset: 192)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !549, line: 77, baseType: !550)
!549 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64, align: 64)
!551 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !549, line: 77, flags: DIFlagFwdDecl)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !399, file: !277, line: 105, baseType: !548, size: 64, align: 64, offset: 256)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !399, file: !277, line: 106, baseType: !413, size: 64, align: 64, offset: 320)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !399, file: !277, line: 107, baseType: !509, size: 32, align: 32, offset: 384)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !399, file: !277, line: 109, baseType: !415, size: 64, align: 64, offset: 448)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !399, file: !277, line: 110, baseType: !557, size: 64, align: 64, offset: 512)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64, align: 64)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !559, line: 39, baseType: !560)
!559 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !559, line: 41, size: 192, align: 64, elements: !561)
!561 = !{!562, !563, !564}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !560, file: !559, line: 43, baseType: !413, size: 64, align: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !560, file: !559, line: 44, baseType: !415, size: 64, align: 64, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !560, file: !559, line: 45, baseType: !415, size: 64, align: 64, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !399, file: !277, line: 111, baseType: !557, size: 64, align: 64, offset: 576)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !399, file: !277, line: 112, baseType: !557, size: 64, align: 64, offset: 640)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !399, file: !277, line: 113, baseType: !568, size: 48, align: 8, offset: 704)
!568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, size: 48, align: 8, elements: !569)
!569 = !{!570}
!570 = !DISubrange(count: 6)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !399, file: !277, line: 117, baseType: !509, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !399, file: !277, line: 118, baseType: !509, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !399, file: !277, line: 119, baseType: !509, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !399, file: !277, line: 120, baseType: !509, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !399, file: !277, line: 121, baseType: !509, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !399, file: !277, line: 122, baseType: !509, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !399, file: !277, line: 124, baseType: !322, size: 64, align: 64, offset: 768)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !399, file: !277, line: 125, baseType: !322, size: 64, align: 64, offset: 832)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !360, file: !363, line: 38, baseType: !429, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !360, file: !363, line: 39, baseType: !429, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !360, file: !363, line: 40, baseType: !429, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !360, file: !363, line: 41, baseType: !429, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !360, file: !363, line: 42, baseType: !429, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !360, file: !363, line: 43, baseType: !429, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !360, file: !363, line: 44, baseType: !429, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !360, file: !363, line: 45, baseType: !429, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !360, file: !363, line: 46, baseType: !367, size: 64, align: 64, offset: 1792)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !360, file: !363, line: 47, baseType: !367, size: 64, align: 64, offset: 1856)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !350, file: !354, line: 9, baseType: !590, size: 64, align: 64, offset: 192)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !591, line: 75, baseType: !592)
!591 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !593, line: 139, baseType: !443)
!593 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!594 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !350, file: !354, line: 10, baseType: !590, size: 64, align: 64, offset: 256)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !350, file: !354, line: 12, baseType: !367, size: 64, align: 64, offset: 320)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !350, file: !354, line: 13, baseType: !367, size: 64, align: 64, offset: 384)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !350, file: !354, line: 15, baseType: !429, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !350, file: !354, line: 16, baseType: !429, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !350, file: !354, line: 17, baseType: !429, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !350, file: !354, line: 18, baseType: !429, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !350, file: !354, line: 19, baseType: !429, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !350, file: !354, line: 21, baseType: !603, size: 64, align: 64, offset: 512)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64, align: 64)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !333, line: 102, baseType: !605)
!605 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !333, line: 102, flags: DIFlagFwdDecl)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !350, file: !354, line: 22, baseType: !339, size: 32, align: 32, offset: 576)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !350, file: !354, line: 25, baseType: !608, size: 128, align: 64, offset: 640)
!608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 128, align: 64, elements: !609)
!609 = !{!610}
!610 = !DISubrange(count: 2)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !350, file: !354, line: 26, baseType: !339, size: 32, align: 32, offset: 768)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !350, file: !354, line: 27, baseType: !339, size: 32, align: 32, offset: 800)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !350, file: !354, line: 29, baseType: !614, size: 64, align: 64, offset: 832)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64, align: 64)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !333, line: 103, baseType: !616)
!616 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !333, line: 103, flags: DIFlagFwdDecl)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !350, file: !354, line: 30, baseType: !342, size: 64, align: 64, offset: 896)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !350, file: !354, line: 32, baseType: !367, size: 64, align: 64, offset: 960)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !350, file: !354, line: 33, baseType: !367, size: 64, align: 64, offset: 1024)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !350, file: !354, line: 34, baseType: !367, size: 64, align: 64, offset: 1088)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !350, file: !354, line: 35, baseType: !429, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !350, file: !354, line: 36, baseType: !429, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !350, file: !354, line: 37, baseType: !429, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !350, file: !354, line: 38, baseType: !429, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !350, file: !354, line: 40, baseType: !626, size: 128, align: 64, offset: 1216)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !318, line: 504, baseType: !627)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !318, line: 506, size: 128, align: 64, elements: !628)
!628 = !{!629, !631}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !627, file: !318, line: 508, baseType: !630, size: 64, align: 64)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !318, line: 48, baseType: !443)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !627, file: !318, line: 509, baseType: !630, size: 64, align: 64, offset: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !350, file: !354, line: 41, baseType: !590, size: 64, align: 64, offset: 1344)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !350, file: !354, line: 42, baseType: !339, size: 32, align: 32, offset: 1408)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !350, file: !354, line: 44, baseType: !518, size: 64, align: 64, offset: 1472)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !350, file: !354, line: 45, baseType: !518, size: 64, align: 64, offset: 1536)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !350, file: !354, line: 53, baseType: !637, size: 64, align: 64, offset: 1600)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64, align: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{null, !348, !640, !339}
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64, align: 64)
!641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !368)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !350, file: !354, line: 55, baseType: !643, size: 64, align: 64, offset: 1664)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64, align: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{!339, !348, !368}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !350, file: !354, line: 57, baseType: !647, size: 64, align: 64, offset: 1728)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64, align: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{!339, !348, !640}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !350, file: !354, line: 60, baseType: !651, size: 64, align: 64, offset: 1792)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64, align: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{!640, !348}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !350, file: !354, line: 62, baseType: !655, size: 64, align: 64, offset: 1856)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64, align: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{null, !348, !640, !640, !339}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !350, file: !354, line: 65, baseType: !659, size: 64, align: 64, offset: 1920)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64, align: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{!662, !348, !640, !640}
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64, align: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !350, file: !354, line: 69, baseType: !664, size: 64, align: 64, offset: 1984)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64, align: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{!667, !348, !640}
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64, align: 64)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !333, line: 109, baseType: !669)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !670, line: 15, size: 1408, align: 64, elements: !671)
!670 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!671 = !{!672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !706, !707, !709, !710, !711, !712, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !669, file: !338, line: 3, baseType: !339, size: 32, align: 32)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !669, file: !338, line: 4, baseType: !339, size: 32, align: 32, offset: 32)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !669, file: !338, line: 5, baseType: !342, size: 64, align: 64, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !669, file: !338, line: 7, baseType: !323, size: 64, align: 64, offset: 128)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !669, file: !338, line: 8, baseType: !348, size: 64, align: 64, offset: 192)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !669, file: !338, line: 9, baseType: !367, size: 64, align: 64, offset: 256)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !669, file: !338, line: 10, baseType: !367, size: 64, align: 64, offset: 320)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !669, file: !338, line: 11, baseType: !590, size: 64, align: 64, offset: 384)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !669, file: !338, line: 12, baseType: !339, size: 32, align: 32, offset: 448)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !669, file: !338, line: 13, baseType: !367, size: 64, align: 64, offset: 512)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !669, file: !338, line: 15, baseType: !683, size: 64, align: 64, offset: 576)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64, align: 64)
!684 = !DISubroutineType(types: !685)
!685 = !{null, !686}
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64, align: 64)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !333, line: 108, baseType: !688)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !689, line: 5, size: 704, align: 64, elements: !690)
!689 = !DIFile(filename: "../../../src/core/window-item-def.h", directory: "/home/lichi/Desktop/irssi/task1")
!690 = !{!691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !688, file: !338, line: 3, baseType: !339, size: 32, align: 32)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !688, file: !338, line: 4, baseType: !339, size: 32, align: 32, offset: 32)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !688, file: !338, line: 5, baseType: !342, size: 64, align: 64, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !688, file: !338, line: 7, baseType: !323, size: 64, align: 64, offset: 128)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !688, file: !338, line: 8, baseType: !348, size: 64, align: 64, offset: 192)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !688, file: !338, line: 9, baseType: !367, size: 64, align: 64, offset: 256)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !688, file: !338, line: 10, baseType: !367, size: 64, align: 64, offset: 320)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !688, file: !338, line: 11, baseType: !590, size: 64, align: 64, offset: 384)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !688, file: !338, line: 12, baseType: !339, size: 32, align: 32, offset: 448)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !688, file: !338, line: 13, baseType: !367, size: 64, align: 64, offset: 512)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !688, file: !338, line: 15, baseType: !683, size: 64, align: 64, offset: 576)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !688, file: !338, line: 17, baseType: !703, size: 64, align: 64, offset: 640)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64, align: 64)
!704 = !DISubroutineType(types: !705)
!705 = !{!640, !686}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !669, file: !338, line: 17, baseType: !703, size: 64, align: 64, offset: 640)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !669, file: !708, line: 5, baseType: !367, size: 64, align: 64, offset: 704)
!708 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!709 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !669, file: !708, line: 6, baseType: !367, size: 64, align: 64, offset: 768)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !669, file: !708, line: 7, baseType: !590, size: 64, align: 64, offset: 832)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !669, file: !708, line: 9, baseType: !342, size: 64, align: 64, offset: 896)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !669, file: !708, line: 10, baseType: !713, size: 64, align: 64, offset: 960)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64, align: 64)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !333, line: 111, baseType: !715)
!715 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !333, line: 111, flags: DIFlagFwdDecl)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !669, file: !708, line: 12, baseType: !429, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !669, file: !708, line: 13, baseType: !367, size: 64, align: 64, offset: 1088)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !669, file: !708, line: 14, baseType: !339, size: 32, align: 32, offset: 1152)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !669, file: !708, line: 15, baseType: !367, size: 64, align: 64, offset: 1216)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !669, file: !708, line: 17, baseType: !429, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !669, file: !708, line: 18, baseType: !429, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !669, file: !708, line: 19, baseType: !429, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !669, file: !708, line: 20, baseType: !429, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !669, file: !708, line: 22, baseType: !429, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !669, file: !708, line: 23, baseType: !429, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !669, file: !708, line: 24, baseType: !429, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !669, file: !708, line: 25, baseType: !429, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !669, file: !708, line: 26, baseType: !429, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !669, file: !708, line: 31, baseType: !730, size: 64, align: 64, offset: 1344)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64, align: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{!367, !667}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !350, file: !354, line: 70, baseType: !734, size: 64, align: 64, offset: 2048)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64, align: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!331, !348, !640}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !350, file: !354, line: 71, baseType: !738, size: 64, align: 64, offset: 2112)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64, align: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{!339, !640, !640}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !350, file: !354, line: 73, baseType: !738, size: 64, align: 64, offset: 2176)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !334, file: !338, line: 9, baseType: !367, size: 64, align: 64, offset: 256)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !334, file: !338, line: 10, baseType: !367, size: 64, align: 64, offset: 320)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !334, file: !338, line: 11, baseType: !590, size: 64, align: 64, offset: 384)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !334, file: !338, line: 12, baseType: !339, size: 32, align: 32, offset: 448)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !334, file: !338, line: 13, baseType: !367, size: 64, align: 64, offset: 512)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !334, file: !338, line: 15, baseType: !683, size: 64, align: 64, offset: 576)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !334, file: !338, line: 17, baseType: !703, size: 64, align: 64, offset: 640)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !334, file: !750, line: 5, baseType: !367, size: 64, align: 64, offset: 704)
!750 = !DIFile(filename: "../../../src/core/query-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!751 = !DIDerivedType(tag: DW_TAG_member, name: "server_tag", scope: !334, file: !750, line: 6, baseType: !367, size: 64, align: 64, offset: 768)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "last_unread_msg", scope: !334, file: !750, line: 7, baseType: !590, size: 64, align: 64, offset: 832)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "unwanted", scope: !334, file: !750, line: 9, baseType: !429, size: 1, align: 32, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !334, file: !750, line: 11, baseType: !429, size: 1, align: 32, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!755 = !{!756}
!756 = distinct !DIGlobalVariable(name: "restore_win", scope: !0, file: !757, line: 39, type: !758, isLocal: true, isDefinition: true, variable: %struct._WINDOW_REC** @restore_win)
!757 = !DIFile(filename: "windows-layout.c", directory: "/home/lichi/Desktop/irssi/task1")
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64, align: 64)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "WINDOW_REC", file: !333, line: 117, baseType: !760)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WINDOW_REC", file: !761, line: 28, size: 1280, align: 64, elements: !762)
!761 = !DIFile(filename: "fe-windows.h", directory: "/home/lichi/Desktop/irssi/task1")
!762 = !{!763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !796, !797, !798, !799, !800, !801, !802, !803}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "refnum", scope: !760, file: !761, line: 29, baseType: !339, size: 32, align: 32)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !760, file: !761, line: 30, baseType: !367, size: 64, align: 64, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !760, file: !761, line: 32, baseType: !339, size: 32, align: 32, offset: 128)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !760, file: !761, line: 32, baseType: !339, size: 32, align: 32, offset: 160)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !760, file: !761, line: 34, baseType: !518, size: 64, align: 64, offset: 192)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !760, file: !761, line: 35, baseType: !686, size: 64, align: 64, offset: 256)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "active_server", scope: !760, file: !761, line: 36, baseType: !348, size: 64, align: 64, offset: 320)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "connect_server", scope: !760, file: !761, line: 37, baseType: !348, size: 64, align: 64, offset: 384)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !760, file: !761, line: 38, baseType: !367, size: 64, align: 64, offset: 448)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !760, file: !761, line: 40, baseType: !339, size: 32, align: 32, offset: 512)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "bound_items", scope: !760, file: !761, line: 41, baseType: !518, size: 64, align: 64, offset: 576)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "immortal", scope: !760, file: !761, line: 43, baseType: !429, size: 1, align: 32, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "sticky_refnum", scope: !760, file: !761, line: 44, baseType: !429, size: 1, align: 32, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !760, file: !761, line: 45, baseType: !429, size: 1, align: 32, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !760, file: !761, line: 48, baseType: !778, size: 64, align: 64, offset: 704)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64, align: 64)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "HISTORY_REC", file: !780, line: 14, baseType: !781)
!780 = !DIFile(filename: "command-history.h", directory: "/home/lichi/Desktop/irssi/task1")
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !780, line: 6, size: 256, align: 64, elements: !782)
!782 = !{!783, !784, !793, !794, !795}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !781, file: !780, line: 7, baseType: !367, size: 64, align: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !781, file: !780, line: 9, baseType: !785, size: 64, align: 64, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64, align: 64)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "GList", file: !787, line: 37, baseType: !788)
!787 = !DIFile(filename: "/usr/include/glib-2.0/glib/glist.h", directory: "/home/lichi/Desktop/irssi/task1")
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GList", file: !787, line: 39, size: 192, align: 64, elements: !789)
!789 = !{!790, !791, !792}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !788, file: !787, line: 41, baseType: !322, size: 64, align: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !788, file: !787, line: 42, baseType: !785, size: 64, align: 64, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !788, file: !787, line: 43, baseType: !785, size: 64, align: 64, offset: 128)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "lines", scope: !781, file: !780, line: 10, baseType: !339, size: 32, align: 32, offset: 128)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !781, file: !780, line: 12, baseType: !339, size: 32, align: 32, offset: 160)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "redo", scope: !781, file: !780, line: 13, baseType: !339, size: 1, align: 32, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "history_name", scope: !760, file: !761, line: 49, baseType: !367, size: 64, align: 64, offset: 768)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !760, file: !761, line: 51, baseType: !339, size: 32, align: 32, offset: 832)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !760, file: !761, line: 52, baseType: !367, size: 64, align: 64, offset: 896)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "last_timestamp", scope: !760, file: !761, line: 54, baseType: !590, size: 64, align: 64, offset: 960)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "last_line", scope: !760, file: !761, line: 55, baseType: !590, size: 64, align: 64, offset: 1024)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "theme_name", scope: !760, file: !761, line: 57, baseType: !367, size: 64, align: 64, offset: 1088)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "theme", scope: !760, file: !761, line: 58, baseType: !323, size: 64, align: 64, offset: 1152)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "gui_data", scope: !760, file: !761, line: 60, baseType: !323, size: 64, align: 64, offset: 1216)
!804 = !{i32 2, !"Dwarf Version", i32 4}
!805 = !{i32 2, !"Debug Info Version", i32 3}
!806 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!807 = distinct !DISubprogram(name: "windows_layout_restore", scope: !757, file: !757, line: 112, type: !506, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !808)
!808 = !{}
!809 = !DILocation(line: 114, column: 2, scope: !807)
!810 = !DILocation(line: 115, column: 1, scope: !807)
!811 = distinct !DISubprogram(name: "windows_layout_save", scope: !757, file: !757, line: 231, type: !506, isLocal: false, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !808)
!812 = !DILocalVariable(name: "node", scope: !811, file: !757, line: 233, type: !813)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64, align: 64)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "CONFIG_NODE", file: !309, line: 17, baseType: !815)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CONFIG_NODE", file: !309, line: 20, size: 192, align: 64, elements: !816)
!816 = !{!817, !818, !819}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !815, file: !309, line: 21, baseType: !339, size: 32, align: 32)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !815, file: !309, line: 22, baseType: !367, size: 64, align: 64, offset: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !815, file: !309, line: 23, baseType: !323, size: 64, align: 64, offset: 128)
!820 = !DIExpression()
!821 = !DILocation(line: 233, column: 15, scope: !811)
!822 = !DILocalVariable(name: "sorted", scope: !811, file: !757, line: 234, type: !518)
!823 = !DILocation(line: 234, column: 10, scope: !811)
!824 = !DILocation(line: 236, column: 17, scope: !811)
!825 = !DILocation(line: 236, column: 2, scope: !811)
!826 = !DILocation(line: 237, column: 30, scope: !811)
!827 = !DILocation(line: 237, column: 9, scope: !811)
!828 = !DILocation(line: 237, column: 7, scope: !811)
!829 = !DILocation(line: 239, column: 11, scope: !811)
!830 = !DILocation(line: 239, column: 9, scope: !811)
!831 = !DILocation(line: 240, column: 18, scope: !811)
!832 = !DILocation(line: 240, column: 47, scope: !811)
!833 = !DILocation(line: 240, column: 2, scope: !811)
!834 = !DILocation(line: 241, column: 15, scope: !811)
!835 = !DILocation(line: 241, column: 2, scope: !811)
!836 = !DILocation(line: 242, column: 2, scope: !811)
!837 = !DILocation(line: 244, column: 2, scope: !811)
!838 = !DILocation(line: 246, column: 1, scope: !811)
!839 = distinct !DISubprogram(name: "window_save", scope: !757, file: !757, line: 194, type: !840, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !808)
!840 = !DISubroutineType(types: !841)
!841 = !{null, !758, !813}
!842 = !DILocalVariable(name: "window", arg: 1, scope: !839, file: !757, line: 194, type: !758)
!843 = !DILocation(line: 194, column: 37, scope: !839)
!844 = !DILocalVariable(name: "node", arg: 2, scope: !839, file: !757, line: 194, type: !813)
!845 = !DILocation(line: 194, column: 58, scope: !839)
!846 = !DILocalVariable(name: "refnum", scope: !839, file: !757, line: 196, type: !847)
!847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 96, align: 8, elements: !848)
!848 = !{!849}
!849 = !DISubrange(count: 12)
!850 = !DILocation(line: 196, column: 7, scope: !839)
!851 = !DILocation(line: 198, column: 20, scope: !839)
!852 = !DILocation(line: 198, column: 50, scope: !839)
!853 = !DILocation(line: 198, column: 58, scope: !839)
!854 = !DILocation(line: 198, column: 9, scope: !839)
!855 = !DILocation(line: 199, column: 29, scope: !839)
!856 = !DILocation(line: 199, column: 41, scope: !839)
!857 = !DILocation(line: 199, column: 47, scope: !839)
!858 = !DILocation(line: 199, column: 9, scope: !839)
!859 = !DILocation(line: 199, column: 7, scope: !839)
!860 = !DILocation(line: 201, column: 6, scope: !861)
!861 = distinct !DILexicalBlock(scope: !839, file: !757, line: 201, column: 6)
!862 = !DILocation(line: 201, column: 14, scope: !861)
!863 = !DILocation(line: 201, column: 6, scope: !839)
!864 = !DILocation(line: 202, column: 24, scope: !861)
!865 = !DILocation(line: 202, column: 36, scope: !861)
!866 = !DILocation(line: 202, column: 3, scope: !861)
!867 = !DILocation(line: 204, column: 6, scope: !868)
!868 = distinct !DILexicalBlock(scope: !839, file: !757, line: 204, column: 6)
!869 = !DILocation(line: 204, column: 14, scope: !868)
!870 = !DILocation(line: 204, column: 6, scope: !839)
!871 = !DILocation(line: 205, column: 24, scope: !868)
!872 = !DILocation(line: 205, column: 36, scope: !868)
!873 = !DILocation(line: 205, column: 3, scope: !868)
!874 = !DILocation(line: 207, column: 6, scope: !875)
!875 = distinct !DILexicalBlock(scope: !839, file: !757, line: 207, column: 6)
!876 = !DILocation(line: 207, column: 14, scope: !875)
!877 = !DILocation(line: 207, column: 19, scope: !875)
!878 = !DILocation(line: 207, column: 6, scope: !839)
!879 = !DILocation(line: 208, column: 23, scope: !875)
!880 = !DILocation(line: 208, column: 35, scope: !875)
!881 = !DILocation(line: 208, column: 49, scope: !875)
!882 = !DILocation(line: 208, column: 57, scope: !875)
!883 = !DILocation(line: 208, column: 3, scope: !875)
!884 = !DILocation(line: 210, column: 6, scope: !885)
!885 = distinct !DILexicalBlock(scope: !839, file: !757, line: 210, column: 6)
!886 = !DILocation(line: 210, column: 14, scope: !885)
!887 = !DILocation(line: 210, column: 27, scope: !885)
!888 = !DILocation(line: 210, column: 6, scope: !839)
!889 = !DILocation(line: 211, column: 23, scope: !885)
!890 = !DILocation(line: 211, column: 35, scope: !885)
!891 = !DILocation(line: 211, column: 57, scope: !885)
!892 = !DILocation(line: 211, column: 65, scope: !885)
!893 = !DILocation(line: 211, column: 3, scope: !885)
!894 = !DILocation(line: 213, column: 6, scope: !895)
!895 = distinct !DILexicalBlock(scope: !839, file: !757, line: 213, column: 6)
!896 = !DILocation(line: 213, column: 14, scope: !895)
!897 = !DILocation(line: 213, column: 24, scope: !895)
!898 = !DILocation(line: 213, column: 6, scope: !839)
!899 = !DILocation(line: 214, column: 23, scope: !895)
!900 = !DILocation(line: 214, column: 35, scope: !895)
!901 = !DILocation(line: 214, column: 54, scope: !895)
!902 = !DILocation(line: 214, column: 62, scope: !895)
!903 = !DILocation(line: 214, column: 3, scope: !895)
!904 = !DILocation(line: 215, column: 6, scope: !905)
!905 = distinct !DILexicalBlock(scope: !839, file: !757, line: 215, column: 6)
!906 = !DILocation(line: 215, column: 14, scope: !905)
!907 = !DILocation(line: 215, column: 20, scope: !905)
!908 = !DILocation(line: 215, column: 6, scope: !839)
!909 = !DILocalVariable(name: "level", scope: !910, file: !757, line: 216, type: !367)
!910 = distinct !DILexicalBlock(scope: !905, file: !757, line: 215, column: 26)
!911 = !DILocation(line: 216, column: 23, scope: !910)
!912 = !DILocation(line: 216, column: 42, scope: !910)
!913 = !DILocation(line: 216, column: 50, scope: !910)
!914 = !DILocation(line: 216, column: 31, scope: !910)
!915 = !DILocation(line: 217, column: 23, scope: !910)
!916 = !DILocation(line: 217, column: 35, scope: !910)
!917 = !DILocation(line: 217, column: 50, scope: !910)
!918 = !DILocation(line: 217, column: 3, scope: !910)
!919 = !DILocation(line: 218, column: 10, scope: !910)
!920 = !DILocation(line: 218, column: 3, scope: !910)
!921 = !DILocation(line: 219, column: 2, scope: !910)
!922 = !DILocation(line: 220, column: 6, scope: !923)
!923 = distinct !DILexicalBlock(scope: !839, file: !757, line: 220, column: 6)
!924 = !DILocation(line: 220, column: 14, scope: !923)
!925 = !DILocation(line: 220, column: 25, scope: !923)
!926 = !DILocation(line: 220, column: 6, scope: !839)
!927 = !DILocation(line: 221, column: 23, scope: !923)
!928 = !DILocation(line: 221, column: 35, scope: !923)
!929 = !DILocation(line: 221, column: 50, scope: !923)
!930 = !DILocation(line: 221, column: 58, scope: !923)
!931 = !DILocation(line: 221, column: 3, scope: !923)
!932 = !DILocation(line: 223, column: 2, scope: !839)
!933 = !DILocation(line: 223, column: 9, scope: !934)
!934 = !DILexicalBlockFile(scope: !839, file: !757, discriminator: 1)
!935 = !DILocation(line: 223, column: 17, scope: !934)
!936 = !DILocation(line: 223, column: 29, scope: !934)
!937 = !DILocation(line: 223, column: 2, scope: !934)
!938 = !DILocation(line: 224, column: 23, scope: !839)
!939 = !DILocation(line: 224, column: 31, scope: !839)
!940 = !DILocation(line: 224, column: 39, scope: !839)
!941 = !DILocation(line: 224, column: 52, scope: !839)
!942 = !DILocation(line: 224, column: 3, scope: !839)
!943 = !DILocation(line: 223, column: 2, scope: !944)
!944 = !DILexicalBlockFile(scope: !839, file: !757, discriminator: 2)
!945 = distinct !{!945, !932}
!946 = !DILocation(line: 225, column: 6, scope: !947)
!947 = distinct !DILexicalBlock(scope: !839, file: !757, line: 225, column: 6)
!948 = !DILocation(line: 225, column: 14, scope: !947)
!949 = !DILocation(line: 225, column: 20, scope: !947)
!950 = !DILocation(line: 225, column: 6, scope: !839)
!951 = !DILocation(line: 226, column: 21, scope: !947)
!952 = !DILocation(line: 226, column: 29, scope: !947)
!953 = !DILocation(line: 226, column: 3, scope: !947)
!954 = !DILocation(line: 228, column: 39, scope: !839)
!955 = !DILocation(line: 228, column: 47, scope: !839)
!956 = !DILocation(line: 228, column: 2, scope: !839)
!957 = !DILocation(line: 229, column: 1, scope: !839)
!958 = distinct !DISubprogram(name: "windows_layout_reset", scope: !757, file: !757, line: 248, type: !506, isLocal: false, isDefinition: true, scopeLine: 249, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !808)
!959 = !DILocalVariable(name: "tmp", scope: !958, file: !757, line: 250, type: !518)
!960 = !DILocation(line: 250, column: 10, scope: !958)
!961 = !DILocation(line: 252, column: 13, scope: !962)
!962 = distinct !DILexicalBlock(scope: !958, file: !757, line: 252, column: 2)
!963 = !DILocation(line: 252, column: 11, scope: !962)
!964 = !DILocation(line: 252, column: 7, scope: !962)
!965 = !DILocation(line: 252, column: 22, scope: !966)
!966 = !DILexicalBlockFile(scope: !967, file: !757, discriminator: 1)
!967 = distinct !DILexicalBlock(scope: !962, file: !757, line: 252, column: 2)
!968 = !DILocation(line: 252, column: 26, scope: !966)
!969 = !DILocation(line: 252, column: 2, scope: !966)
!970 = !DILocalVariable(name: "window", scope: !971, file: !757, line: 253, type: !758)
!971 = distinct !DILexicalBlock(scope: !967, file: !757, line: 252, column: 51)
!972 = !DILocation(line: 253, column: 15, scope: !971)
!973 = !DILocation(line: 253, column: 24, scope: !971)
!974 = !DILocation(line: 253, column: 29, scope: !971)
!975 = !DILocation(line: 254, column: 3, scope: !971)
!976 = !DILocation(line: 254, column: 10, scope: !977)
!977 = !DILexicalBlockFile(scope: !971, file: !757, discriminator: 1)
!978 = !DILocation(line: 254, column: 18, scope: !977)
!979 = !DILocation(line: 254, column: 30, scope: !977)
!980 = !DILocation(line: 254, column: 3, scope: !977)
!981 = !DILocation(line: 255, column: 24, scope: !971)
!982 = !DILocation(line: 255, column: 32, scope: !971)
!983 = !DILocation(line: 255, column: 40, scope: !971)
!984 = !DILocation(line: 255, column: 53, scope: !971)
!985 = !DILocation(line: 255, column: 4, scope: !971)
!986 = !DILocation(line: 254, column: 3, scope: !987)
!987 = !DILexicalBlockFile(scope: !971, file: !757, discriminator: 2)
!988 = distinct !{!988, !975}
!989 = !DILocation(line: 256, column: 2, scope: !971)
!990 = !DILocation(line: 252, column: 40, scope: !991)
!991 = !DILexicalBlockFile(scope: !967, file: !757, discriminator: 2)
!992 = !DILocation(line: 252, column: 45, scope: !991)
!993 = !DILocation(line: 252, column: 38, scope: !991)
!994 = !DILocation(line: 252, column: 2, scope: !991)
!995 = distinct !{!995, !996}
!996 = !DILocation(line: 252, column: 2, scope: !958)
!997 = !DILocation(line: 258, column: 17, scope: !958)
!998 = !DILocation(line: 258, column: 2, scope: !958)
!999 = !DILocation(line: 259, column: 2, scope: !958)
!1000 = !DILocation(line: 261, column: 2, scope: !958)
!1001 = !DILocation(line: 263, column: 1, scope: !958)
!1002 = distinct !DISubprogram(name: "windows_layout_init", scope: !757, file: !757, line: 265, type: !506, isLocal: false, isDefinition: true, scopeLine: 266, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !808)
!1003 = !DILocation(line: 267, column: 2, scope: !1002)
!1004 = !DILocation(line: 268, column: 2, scope: !1002)
!1005 = !DILocation(line: 269, column: 2, scope: !1002)
!1006 = !DILocation(line: 270, column: 1, scope: !1002)
!1007 = distinct !DISubprogram(name: "sig_layout_restore_item", scope: !757, file: !757, line: 48, type: !1008, isLocal: true, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !808)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{null, !758, !640, !813}
!1010 = !DILocalVariable(name: "window", arg: 1, scope: !1007, file: !757, line: 48, type: !758)
!1011 = !DILocation(line: 48, column: 49, scope: !1007)
!1012 = !DILocalVariable(name: "type", arg: 2, scope: !1007, file: !757, line: 48, type: !640)
!1013 = !DILocation(line: 48, column: 69, scope: !1007)
!1014 = !DILocalVariable(name: "node", arg: 3, scope: !1007, file: !757, line: 49, type: !813)
!1015 = !DILocation(line: 49, column: 22, scope: !1007)
!1016 = !DILocalVariable(name: "name", scope: !1007, file: !757, line: 51, type: !367)
!1017 = !DILocation(line: 51, column: 8, scope: !1007)
!1018 = !DILocalVariable(name: "tag", scope: !1007, file: !757, line: 51, type: !367)
!1019 = !DILocation(line: 51, column: 15, scope: !1007)
!1020 = !DILocalVariable(name: "chat_type", scope: !1007, file: !757, line: 51, type: !367)
!1021 = !DILocation(line: 51, column: 21, scope: !1007)
!1022 = !DILocation(line: 53, column: 34, scope: !1007)
!1023 = !DILocation(line: 53, column: 14, scope: !1007)
!1024 = !DILocation(line: 53, column: 12, scope: !1007)
!1025 = !DILocation(line: 54, column: 29, scope: !1007)
!1026 = !DILocation(line: 54, column: 9, scope: !1007)
!1027 = !DILocation(line: 54, column: 7, scope: !1007)
!1028 = !DILocation(line: 55, column: 28, scope: !1007)
!1029 = !DILocation(line: 55, column: 8, scope: !1007)
!1030 = !DILocation(line: 55, column: 6, scope: !1007)
!1031 = !DILocation(line: 57, column: 6, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1007, file: !757, line: 57, column: 6)
!1033 = !DILocation(line: 57, column: 11, scope: !1032)
!1034 = !DILocation(line: 57, column: 18, scope: !1032)
!1035 = !DILocation(line: 57, column: 21, scope: !1036)
!1036 = !DILexicalBlockFile(scope: !1032, file: !757, discriminator: 1)
!1037 = !DILocation(line: 57, column: 25, scope: !1036)
!1038 = !DILocation(line: 57, column: 6, scope: !1036)
!1039 = !DILocation(line: 58, column: 3, scope: !1032)
!1040 = !DILocation(line: 60, column: 25, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1007, file: !757, line: 60, column: 6)
!1042 = !DILocation(line: 60, column: 6, scope: !1041)
!1043 = !DILocation(line: 60, column: 42, scope: !1041)
!1044 = !DILocation(line: 60, column: 6, scope: !1007)
!1045 = !DILocalVariable(name: "rec", scope: !1046, file: !757, line: 62, type: !1047)
!1046 = distinct !DILexicalBlock(scope: !1041, file: !757, line: 60, column: 48)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64, align: 64)
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "WINDOW_BIND_REC", file: !761, line: 26, baseType: !1049)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !761, line: 22, size: 192, align: 64, elements: !1050)
!1050 = !{!1051, !1052, !1053}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !1049, file: !761, line: 23, baseType: !367, size: 64, align: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1049, file: !761, line: 24, baseType: !367, size: 64, align: 64, offset: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "sticky", scope: !1049, file: !761, line: 25, baseType: !429, size: 1, align: 32, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1054 = !DILocation(line: 62, column: 20, scope: !1046)
!1055 = !DILocation(line: 62, column: 42, scope: !1046)
!1056 = !DILocation(line: 62, column: 50, scope: !1046)
!1057 = !DILocation(line: 62, column: 55, scope: !1046)
!1058 = !DILocation(line: 62, column: 26, scope: !1046)
!1059 = !DILocation(line: 63, column: 17, scope: !1046)
!1060 = !DILocation(line: 63, column: 22, scope: !1046)
!1061 = !DILocation(line: 63, column: 29, scope: !1046)
!1062 = !DILocation(line: 64, column: 2, scope: !1046)
!1063 = !DILocation(line: 64, column: 32, scope: !1064)
!1064 = !DILexicalBlockFile(scope: !1065, file: !757, discriminator: 1)
!1065 = distinct !DILexicalBlock(scope: !1041, file: !757, line: 64, column: 13)
!1066 = !DILocation(line: 64, column: 13, scope: !1064)
!1067 = !DILocation(line: 64, column: 47, scope: !1064)
!1068 = !DILocation(line: 64, column: 52, scope: !1064)
!1069 = !DILocation(line: 64, column: 55, scope: !1070)
!1070 = !DILexicalBlockFile(scope: !1065, file: !757, discriminator: 2)
!1071 = !DILocation(line: 64, column: 65, scope: !1070)
!1072 = !DILocation(line: 64, column: 13, scope: !1070)
!1073 = !DILocalVariable(name: "protocol", scope: !1074, file: !757, line: 65, type: !1075)
!1074 = distinct !DILexicalBlock(scope: !1065, file: !757, line: 64, column: 73)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64, align: 64)
!1076 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHAT_PROTOCOL_REC", file: !333, line: 105, baseType: !1077)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHAT_PROTOCOL_REC", file: !1078, line: 4, size: 832, align: 64, elements: !1079)
!1078 = !DIFile(filename: "../../../src/core/chat-protocols.h", directory: "/home/lichi/Desktop/irssi/task1")
!1079 = !{!1080, !1081, !1082, !1083, !1084, !1085, !1086, !1093, !1100, !1107, !1111, !1115, !1119, !1123, !1127}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1077, file: !1078, line: 5, baseType: !339, size: 32, align: 32)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "not_initialized", scope: !1077, file: !1078, line: 7, baseType: !429, size: 1, align: 32, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "case_insensitive", scope: !1077, file: !1078, line: 8, baseType: !429, size: 1, align: 32, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1077, file: !1078, line: 10, baseType: !367, size: 64, align: 64, offset: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "fullname", scope: !1077, file: !1078, line: 11, baseType: !367, size: 64, align: 64, offset: 128)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !1077, file: !1078, line: 12, baseType: !367, size: 64, align: 64, offset: 192)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "create_chatnet", scope: !1077, file: !1078, line: 14, baseType: !1087, size: 64, align: 64, offset: 256)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64, align: 64)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!1090}
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64, align: 64)
!1091 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHATNET_REC", file: !333, line: 106, baseType: !1092)
!1092 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CHATNET_REC", file: !333, line: 106, flags: DIFlagFwdDecl)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "create_server_setup", scope: !1077, file: !1078, line: 15, baseType: !1094, size: 64, align: 64, offset: 320)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64, align: 64)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!1097}
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64, align: 64)
!1098 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_SETUP_REC", file: !333, line: 114, baseType: !1099)
!1099 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_SETUP_REC", file: !333, line: 114, flags: DIFlagFwdDecl)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "create_channel_setup", scope: !1077, file: !1078, line: 16, baseType: !1101, size: 64, align: 64, offset: 384)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64, align: 64)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!1104}
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64, align: 64)
!1105 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_SETUP_REC", file: !333, line: 115, baseType: !1106)
!1106 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_SETUP_REC", file: !333, line: 115, flags: DIFlagFwdDecl)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "create_server_connect", scope: !1077, file: !1078, line: 17, baseType: !1108, size: 64, align: 64, offset: 448)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64, align: 64)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!358}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_server_connect", scope: !1077, file: !1078, line: 18, baseType: !1112, size: 64, align: 64, offset: 512)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64, align: 64)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{null, !358}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "server_init_connect", scope: !1077, file: !1078, line: 20, baseType: !1116, size: 64, align: 64, offset: 576)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64, align: 64)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{!348, !358}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "server_connect", scope: !1077, file: !1078, line: 21, baseType: !1120, size: 64, align: 64, offset: 640)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64, align: 64)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{null, !348}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "channel_create", scope: !1077, file: !1078, line: 22, baseType: !1124, size: 64, align: 64, offset: 704)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64, align: 64)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!667, !348, !640, !640, !339}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "query_create", scope: !1077, file: !1078, line: 24, baseType: !1128, size: 64, align: 64, offset: 768)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64, align: 64)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!331, !640, !640, !339}
!1131 = !DILocation(line: 65, column: 22, scope: !1074)
!1132 = !DILocation(line: 67, column: 3, scope: !1074)
!1133 = !DILocation(line: 70, column: 31, scope: !1074)
!1134 = !DILocation(line: 70, column: 29, scope: !1074)
!1135 = !DILocation(line: 72, column: 33, scope: !1074)
!1136 = !DILocation(line: 72, column: 14, scope: !1074)
!1137 = !DILocation(line: 72, column: 12, scope: !1074)
!1138 = !DILocation(line: 73, column: 7, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1074, file: !757, line: 73, column: 7)
!1140 = !DILocation(line: 73, column: 16, scope: !1139)
!1141 = !DILocation(line: 73, column: 7, scope: !1074)
!1142 = !DILocation(line: 74, column: 20, scope: !1139)
!1143 = !DILocation(line: 74, column: 28, scope: !1139)
!1144 = !DILocation(line: 74, column: 33, scope: !1139)
!1145 = !DILocation(line: 74, column: 4, scope: !1139)
!1146 = !DILocation(line: 75, column: 12, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1139, file: !757, line: 75, column: 12)
!1148 = !DILocation(line: 75, column: 22, scope: !1147)
!1149 = !DILocation(line: 75, column: 35, scope: !1147)
!1150 = !DILocation(line: 75, column: 12, scope: !1139)
!1151 = !DILocation(line: 76, column: 4, scope: !1147)
!1152 = !DILocation(line: 76, column: 14, scope: !1147)
!1153 = !DILocation(line: 76, column: 27, scope: !1147)
!1154 = !DILocation(line: 76, column: 32, scope: !1147)
!1155 = !DILocalVariable(name: "query", scope: !1156, file: !757, line: 78, type: !331)
!1156 = distinct !DILexicalBlock(scope: !1147, file: !757, line: 77, column: 8)
!1157 = !DILocation(line: 78, column: 15, scope: !1156)
!1158 = !DILocation(line: 80, column: 27, scope: !1156)
!1159 = !DILocation(line: 80, column: 13, scope: !1156)
!1160 = !DILocation(line: 80, column: 10, scope: !1156)
!1161 = !DILocation(line: 81, column: 44, scope: !1156)
!1162 = !DILocation(line: 81, column: 23, scope: !1156)
!1163 = !DILocation(line: 81, column: 4, scope: !1156)
!1164 = !DILocation(line: 81, column: 11, scope: !1156)
!1165 = !DILocation(line: 81, column: 21, scope: !1156)
!1166 = !DILocation(line: 82, column: 27, scope: !1156)
!1167 = !DILocation(line: 82, column: 18, scope: !1156)
!1168 = !DILocation(line: 82, column: 4, scope: !1156)
!1169 = !DILocation(line: 82, column: 11, scope: !1156)
!1170 = !DILocation(line: 82, column: 16, scope: !1156)
!1171 = !DILocation(line: 83, column: 33, scope: !1156)
!1172 = !DILocation(line: 83, column: 24, scope: !1156)
!1173 = !DILocation(line: 83, column: 4, scope: !1156)
!1174 = !DILocation(line: 83, column: 11, scope: !1156)
!1175 = !DILocation(line: 83, column: 22, scope: !1156)
!1176 = !DILocation(line: 84, column: 15, scope: !1156)
!1177 = !DILocation(line: 84, column: 4, scope: !1156)
!1178 = !DILocation(line: 87, column: 3, scope: !1074)
!1179 = !DILocation(line: 89, column: 2, scope: !1074)
!1180 = !DILocation(line: 90, column: 1, scope: !1007)
!1181 = distinct !DISubprogram(name: "sig_layout_restore", scope: !757, file: !757, line: 117, type: !506, isLocal: true, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !808)
!1182 = !DILocalVariable(name: "window", scope: !1181, file: !757, line: 119, type: !758)
!1183 = !DILocation(line: 119, column: 14, scope: !1181)
!1184 = !DILocalVariable(name: "node", scope: !1181, file: !757, line: 120, type: !813)
!1185 = !DILocation(line: 120, column: 15, scope: !1181)
!1186 = !DILocalVariable(name: "tmp", scope: !1181, file: !757, line: 121, type: !518)
!1187 = !DILocation(line: 121, column: 10, scope: !1181)
!1188 = !DILocation(line: 123, column: 30, scope: !1181)
!1189 = !DILocation(line: 123, column: 9, scope: !1181)
!1190 = !DILocation(line: 123, column: 7, scope: !1181)
!1191 = !DILocation(line: 124, column: 6, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1181, file: !757, line: 124, column: 6)
!1193 = !DILocation(line: 124, column: 11, scope: !1192)
!1194 = !DILocation(line: 124, column: 6, scope: !1181)
!1195 = !DILocation(line: 124, column: 19, scope: !1196)
!1196 = !DILexicalBlockFile(scope: !1192, file: !757, discriminator: 1)
!1197 = !DILocation(line: 126, column: 26, scope: !1181)
!1198 = !DILocation(line: 126, column: 32, scope: !1181)
!1199 = !DILocation(line: 126, column: 8, scope: !1181)
!1200 = !DILocation(line: 126, column: 6, scope: !1181)
!1201 = !DILocation(line: 127, column: 2, scope: !1181)
!1202 = !DILocation(line: 127, column: 9, scope: !1203)
!1203 = !DILexicalBlockFile(scope: !1204, file: !757, discriminator: 1)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !757, line: 127, column: 2)
!1205 = distinct !DILexicalBlock(scope: !1181, file: !757, line: 127, column: 2)
!1206 = !DILocation(line: 127, column: 13, scope: !1203)
!1207 = !DILocation(line: 127, column: 2, scope: !1203)
!1208 = !DILocalVariable(name: "node", scope: !1209, file: !757, line: 128, type: !813)
!1209 = distinct !DILexicalBlock(scope: !1204, file: !757, line: 127, column: 50)
!1210 = !DILocation(line: 128, column: 16, scope: !1209)
!1211 = !DILocation(line: 128, column: 23, scope: !1209)
!1212 = !DILocation(line: 128, column: 28, scope: !1209)
!1213 = !DILocation(line: 130, column: 7, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1209, file: !757, line: 130, column: 7)
!1215 = !DILocation(line: 130, column: 13, scope: !1214)
!1216 = !DILocation(line: 130, column: 17, scope: !1214)
!1217 = !DILocation(line: 130, column: 7, scope: !1209)
!1218 = !DILocation(line: 130, column: 25, scope: !1219)
!1219 = !DILexicalBlockFile(scope: !1214, file: !757, discriminator: 1)
!1220 = !DILocation(line: 131, column: 36, scope: !1209)
!1221 = !DILocation(line: 131, column: 42, scope: !1209)
!1222 = !DILocation(line: 131, column: 31, scope: !1209)
!1223 = !DILocation(line: 131, column: 12, scope: !1224)
!1224 = !DILexicalBlockFile(scope: !1209, file: !757, discriminator: 1)
!1225 = !DILocation(line: 131, column: 10, scope: !1209)
!1226 = !DILocation(line: 132, column: 7, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1209, file: !757, line: 132, column: 7)
!1228 = !DILocation(line: 132, column: 14, scope: !1227)
!1229 = !DILocation(line: 132, column: 7, scope: !1209)
!1230 = !DILocation(line: 133, column: 13, scope: !1227)
!1231 = !DILocation(line: 133, column: 11, scope: !1227)
!1232 = !DILocation(line: 133, column: 4, scope: !1227)
!1233 = !DILocation(line: 135, column: 21, scope: !1209)
!1234 = !DILocation(line: 135, column: 34, scope: !1209)
!1235 = !DILocation(line: 135, column: 40, scope: !1209)
!1236 = !DILocation(line: 135, column: 29, scope: !1209)
!1237 = !DILocation(line: 135, column: 3, scope: !1224)
!1238 = !DILocation(line: 136, column: 62, scope: !1209)
!1239 = !DILocation(line: 136, column: 41, scope: !1209)
!1240 = !DILocation(line: 136, column: 17, scope: !1209)
!1241 = !DILocation(line: 136, column: 25, scope: !1209)
!1242 = !DILocation(line: 136, column: 39, scope: !1209)
!1243 = !DILocation(line: 137, column: 57, scope: !1209)
!1244 = !DILocation(line: 137, column: 36, scope: !1209)
!1245 = !DILocation(line: 137, column: 17, scope: !1209)
!1246 = !DILocation(line: 137, column: 25, scope: !1209)
!1247 = !DILocation(line: 137, column: 34, scope: !1209)
!1248 = !DILocation(line: 138, column: 19, scope: !1209)
!1249 = !DILocation(line: 138, column: 47, scope: !1209)
!1250 = !DILocation(line: 138, column: 27, scope: !1209)
!1251 = !DILocation(line: 138, column: 3, scope: !1224)
!1252 = !DILocation(line: 139, column: 22, scope: !1209)
!1253 = !DILocation(line: 139, column: 50, scope: !1209)
!1254 = !DILocation(line: 139, column: 30, scope: !1209)
!1255 = !DILocation(line: 139, column: 3, scope: !1224)
!1256 = !DILocation(line: 140, column: 20, scope: !1209)
!1257 = !DILocation(line: 140, column: 59, scope: !1209)
!1258 = !DILocation(line: 140, column: 39, scope: !1209)
!1259 = !DILocation(line: 140, column: 28, scope: !1224)
!1260 = !DILocation(line: 140, column: 3, scope: !1261)
!1261 = !DILexicalBlockFile(scope: !1209, file: !757, discriminator: 2)
!1262 = !DILocation(line: 142, column: 52, scope: !1209)
!1263 = !DILocation(line: 142, column: 32, scope: !1209)
!1264 = !DILocation(line: 142, column: 23, scope: !1224)
!1265 = !DILocation(line: 142, column: 3, scope: !1209)
!1266 = !DILocation(line: 142, column: 11, scope: !1209)
!1267 = !DILocation(line: 142, column: 21, scope: !1209)
!1268 = !DILocation(line: 143, column: 53, scope: !1209)
!1269 = !DILocation(line: 143, column: 33, scope: !1209)
!1270 = !DILocation(line: 143, column: 24, scope: !1224)
!1271 = !DILocation(line: 143, column: 3, scope: !1209)
!1272 = !DILocation(line: 143, column: 11, scope: !1209)
!1273 = !DILocation(line: 143, column: 22, scope: !1209)
!1274 = !DILocation(line: 144, column: 7, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1209, file: !757, line: 144, column: 7)
!1276 = !DILocation(line: 144, column: 15, scope: !1275)
!1277 = !DILocation(line: 144, column: 26, scope: !1275)
!1278 = !DILocation(line: 144, column: 7, scope: !1209)
!1279 = !DILocation(line: 145, column: 31, scope: !1275)
!1280 = !DILocation(line: 145, column: 39, scope: !1275)
!1281 = !DILocation(line: 145, column: 20, scope: !1275)
!1282 = !DILocation(line: 145, column: 4, scope: !1275)
!1283 = !DILocation(line: 145, column: 12, scope: !1275)
!1284 = !DILocation(line: 145, column: 18, scope: !1275)
!1285 = !DILocation(line: 147, column: 20, scope: !1209)
!1286 = !DILocation(line: 147, column: 48, scope: !1209)
!1287 = !DILocation(line: 147, column: 60, scope: !1209)
!1288 = !DILocation(line: 147, column: 28, scope: !1209)
!1289 = !DILocation(line: 147, column: 3, scope: !1224)
!1290 = !DILocation(line: 148, column: 43, scope: !1209)
!1291 = !DILocation(line: 148, column: 51, scope: !1209)
!1292 = !DILocation(line: 148, column: 3, scope: !1209)
!1293 = !DILocation(line: 149, column: 2, scope: !1209)
!1294 = !DILocation(line: 127, column: 44, scope: !1295)
!1295 = !DILexicalBlockFile(scope: !1204, file: !757, discriminator: 2)
!1296 = !DILocation(line: 127, column: 27, scope: !1295)
!1297 = !DILocation(line: 127, column: 25, scope: !1295)
!1298 = !DILocation(line: 127, column: 2, scope: !1295)
!1299 = distinct !{!1299, !1201}
!1300 = !DILocation(line: 150, column: 1, scope: !1181)
!1301 = distinct !DISubprogram(name: "sig_layout_save_item", scope: !757, file: !757, line: 152, type: !1302, isLocal: true, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !808)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{null, !758, !686, !813}
!1304 = !DILocalVariable(name: "window", arg: 1, scope: !1301, file: !757, line: 152, type: !758)
!1305 = !DILocation(line: 152, column: 46, scope: !1301)
!1306 = !DILocalVariable(name: "item", arg: 2, scope: !1301, file: !757, line: 152, type: !686)
!1307 = !DILocation(line: 152, column: 67, scope: !1301)
!1308 = !DILocalVariable(name: "node", arg: 3, scope: !1301, file: !757, line: 153, type: !813)
!1309 = !DILocation(line: 153, column: 19, scope: !1301)
!1310 = !DILocalVariable(name: "subnode", scope: !1301, file: !757, line: 155, type: !813)
!1311 = !DILocation(line: 155, column: 15, scope: !1301)
!1312 = !DILocalVariable(name: "proto", scope: !1301, file: !757, line: 156, type: !1075)
!1313 = !DILocation(line: 156, column: 28, scope: !1301)
!1314 = !DILocalVariable(name: "type", scope: !1301, file: !757, line: 157, type: !640)
!1315 = !DILocation(line: 157, column: 14, scope: !1301)
!1316 = !DILocalVariable(name: "rec", scope: !1301, file: !757, line: 158, type: !1047)
!1317 = !DILocation(line: 158, column: 19, scope: !1301)
!1318 = !DILocation(line: 160, column: 48, scope: !1301)
!1319 = !DILocation(line: 160, column: 54, scope: !1301)
!1320 = !DILocation(line: 160, column: 9, scope: !1301)
!1321 = !DILocation(line: 160, column: 7, scope: !1301)
!1322 = !DILocation(line: 161, column: 6, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1301, file: !757, line: 161, column: 6)
!1324 = !DILocation(line: 161, column: 11, scope: !1323)
!1325 = !DILocation(line: 161, column: 6, scope: !1301)
!1326 = !DILocation(line: 162, column: 3, scope: !1323)
!1327 = !DILocation(line: 164, column: 32, scope: !1301)
!1328 = !DILocation(line: 164, column: 44, scope: !1301)
!1329 = !DILocation(line: 164, column: 12, scope: !1301)
!1330 = !DILocation(line: 164, column: 10, scope: !1301)
!1331 = !DILocation(line: 166, column: 22, scope: !1301)
!1332 = !DILocation(line: 166, column: 34, scope: !1301)
!1333 = !DILocation(line: 166, column: 51, scope: !1301)
!1334 = !DILocation(line: 166, column: 2, scope: !1301)
!1335 = !DILocation(line: 167, column: 10, scope: !1301)
!1336 = !DILocation(line: 167, column: 16, scope: !1301)
!1337 = !DILocation(line: 167, column: 26, scope: !1301)
!1338 = !DILocation(line: 167, column: 10, scope: !1339)
!1339 = !DILexicalBlockFile(scope: !1301, file: !757, discriminator: 1)
!1340 = !DILocation(line: 168, column: 25, scope: !1301)
!1341 = !DILocation(line: 168, column: 31, scope: !1301)
!1342 = !DILocation(line: 168, column: 3, scope: !1301)
!1343 = !DILocation(line: 167, column: 10, scope: !1344)
!1344 = !DILexicalBlockFile(scope: !1301, file: !757, discriminator: 2)
!1345 = !DILocation(line: 167, column: 10, scope: !1346)
!1346 = !DILexicalBlockFile(scope: !1301, file: !757, discriminator: 3)
!1347 = !DILocation(line: 167, column: 8, scope: !1346)
!1348 = !DILocation(line: 169, column: 6, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1301, file: !757, line: 169, column: 6)
!1350 = !DILocation(line: 169, column: 12, scope: !1349)
!1351 = !DILocation(line: 169, column: 6, scope: !1301)
!1352 = !DILocation(line: 170, column: 23, scope: !1349)
!1353 = !DILocation(line: 170, column: 35, scope: !1349)
!1354 = !DILocation(line: 170, column: 57, scope: !1349)
!1355 = !DILocation(line: 170, column: 64, scope: !1349)
!1356 = !DILocation(line: 170, column: 3, scope: !1349)
!1357 = !DILocation(line: 171, column: 22, scope: !1301)
!1358 = !DILocation(line: 171, column: 34, scope: !1301)
!1359 = !DILocation(line: 171, column: 51, scope: !1301)
!1360 = !DILocation(line: 171, column: 57, scope: !1301)
!1361 = !DILocation(line: 171, column: 2, scope: !1301)
!1362 = !DILocation(line: 173, column: 6, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1301, file: !757, line: 173, column: 6)
!1364 = !DILocation(line: 173, column: 12, scope: !1363)
!1365 = !DILocation(line: 173, column: 19, scope: !1363)
!1366 = !DILocation(line: 173, column: 6, scope: !1301)
!1367 = !DILocation(line: 174, column: 23, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1363, file: !757, line: 173, column: 27)
!1369 = !DILocation(line: 174, column: 35, scope: !1368)
!1370 = !DILocation(line: 174, column: 51, scope: !1368)
!1371 = !DILocation(line: 174, column: 57, scope: !1368)
!1372 = !DILocation(line: 174, column: 65, scope: !1368)
!1373 = !DILocation(line: 174, column: 3, scope: !1368)
!1374 = !DILocation(line: 175, column: 50, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1368, file: !757, line: 175, column: 7)
!1376 = !DILocation(line: 175, column: 25, scope: !1375)
!1377 = !DILocation(line: 175, column: 9, scope: !1375)
!1378 = !DILocation(line: 175, column: 7, scope: !1368)
!1379 = !DILocation(line: 175, column: 8, scope: !1380)
!1380 = !DILexicalBlockFile(scope: !1375, file: !757, discriminator: 1)
!1381 = !DILocation(line: 175, column: 7, scope: !1382)
!1382 = !DILexicalBlockFile(scope: !1368, file: !757, discriminator: 2)
!1383 = !DILocation(line: 176, column: 26, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1375, file: !757, line: 175, column: 57)
!1385 = !DILocation(line: 176, column: 34, scope: !1384)
!1386 = !DILocation(line: 176, column: 40, scope: !1384)
!1387 = !DILocation(line: 176, column: 48, scope: !1384)
!1388 = !DILocation(line: 176, column: 53, scope: !1384)
!1389 = !DILocation(line: 176, column: 59, scope: !1384)
!1390 = !DILocation(line: 176, column: 10, scope: !1384)
!1391 = !DILocation(line: 176, column: 8, scope: !1384)
!1392 = !DILocation(line: 177, column: 8, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1384, file: !757, line: 177, column: 8)
!1394 = !DILocation(line: 177, column: 12, scope: !1393)
!1395 = !DILocation(line: 177, column: 8, scope: !1384)
!1396 = !DILocation(line: 178, column: 5, scope: !1393)
!1397 = !DILocation(line: 178, column: 10, scope: !1393)
!1398 = !DILocation(line: 178, column: 17, scope: !1393)
!1399 = !DILocation(line: 179, column: 3, scope: !1384)
!1400 = !DILocation(line: 180, column: 2, scope: !1368)
!1401 = !DILocation(line: 180, column: 54, scope: !1402)
!1402 = !DILexicalBlockFile(scope: !1403, file: !757, discriminator: 1)
!1403 = distinct !DILexicalBlock(scope: !1363, file: !757, line: 180, column: 13)
!1404 = !DILocation(line: 180, column: 29, scope: !1402)
!1405 = !DILocation(line: 180, column: 15, scope: !1402)
!1406 = !DILocation(line: 180, column: 13, scope: !1402)
!1407 = !DILocation(line: 180, column: 14, scope: !1408)
!1408 = !DILexicalBlockFile(scope: !1403, file: !757, discriminator: 2)
!1409 = !DILocation(line: 180, column: 13, scope: !1410)
!1410 = !DILexicalBlockFile(scope: !1363, file: !757, discriminator: 3)
!1411 = !DILocation(line: 181, column: 23, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1403, file: !757, line: 180, column: 61)
!1413 = !DILocation(line: 181, column: 35, scope: !1412)
!1414 = !DILocation(line: 181, column: 91, scope: !1412)
!1415 = !DILocation(line: 181, column: 66, scope: !1412)
!1416 = !DILocation(line: 181, column: 52, scope: !1412)
!1417 = !DILocation(line: 181, column: 3, scope: !1418)
!1418 = !DILexicalBlockFile(scope: !1412, file: !757, discriminator: 1)
!1419 = !DILocation(line: 182, column: 2, scope: !1412)
!1420 = !DILocation(line: 183, column: 1, scope: !1301)
!1421 = distinct !DISubprogram(name: "windows_layout_deinit", scope: !757, file: !757, line: 272, type: !506, isLocal: false, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !808)
!1422 = !DILocation(line: 274, column: 2, scope: !1421)
!1423 = !DILocation(line: 275, column: 2, scope: !1421)
!1424 = !DILocation(line: 276, column: 2, scope: !1421)
!1425 = !DILocation(line: 277, column: 1, scope: !1421)
!1426 = distinct !DISubprogram(name: "window_save_items", scope: !757, file: !757, line: 185, type: !840, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !808)
!1427 = !DILocalVariable(name: "window", arg: 1, scope: !1426, file: !757, line: 185, type: !758)
!1428 = !DILocation(line: 185, column: 43, scope: !1426)
!1429 = !DILocalVariable(name: "node", arg: 2, scope: !1426, file: !757, line: 185, type: !813)
!1430 = !DILocation(line: 185, column: 64, scope: !1426)
!1431 = !DILocalVariable(name: "tmp", scope: !1426, file: !757, line: 187, type: !518)
!1432 = !DILocation(line: 187, column: 10, scope: !1426)
!1433 = !DILocation(line: 189, column: 29, scope: !1426)
!1434 = !DILocation(line: 189, column: 41, scope: !1426)
!1435 = !DILocation(line: 189, column: 9, scope: !1426)
!1436 = !DILocation(line: 189, column: 7, scope: !1426)
!1437 = !DILocation(line: 190, column: 13, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1426, file: !757, line: 190, column: 2)
!1439 = !DILocation(line: 190, column: 21, scope: !1438)
!1440 = !DILocation(line: 190, column: 11, scope: !1438)
!1441 = !DILocation(line: 190, column: 7, scope: !1438)
!1442 = !DILocation(line: 190, column: 28, scope: !1443)
!1443 = !DILexicalBlockFile(scope: !1444, file: !757, discriminator: 1)
!1444 = distinct !DILexicalBlock(scope: !1438, file: !757, line: 190, column: 2)
!1445 = !DILocation(line: 190, column: 32, scope: !1443)
!1446 = !DILocation(line: 190, column: 2, scope: !1443)
!1447 = !DILocation(line: 191, column: 38, scope: !1444)
!1448 = !DILocation(line: 191, column: 46, scope: !1444)
!1449 = !DILocation(line: 191, column: 51, scope: !1444)
!1450 = !DILocation(line: 191, column: 57, scope: !1444)
!1451 = !DILocation(line: 191, column: 3, scope: !1444)
!1452 = !DILocation(line: 190, column: 46, scope: !1453)
!1453 = !DILexicalBlockFile(scope: !1444, file: !757, discriminator: 2)
!1454 = !DILocation(line: 190, column: 51, scope: !1453)
!1455 = !DILocation(line: 190, column: 44, scope: !1453)
!1456 = !DILocation(line: 190, column: 2, scope: !1453)
!1457 = distinct !{!1457, !1458}
!1458 = !DILocation(line: 190, column: 2, scope: !1426)
!1459 = !DILocation(line: 192, column: 1, scope: !1426)
!1460 = distinct !DISubprogram(name: "signal_query_created_curwin", scope: !757, file: !757, line: 41, type: !1461, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !808)
!1461 = !DISubroutineType(types: !1462)
!1462 = !{null, !331}
!1463 = !DILocalVariable(name: "query", arg: 1, scope: !1460, file: !757, line: 41, type: !331)
!1464 = !DILocation(line: 41, column: 52, scope: !1460)
!1465 = !DILocation(line: 43, column: 2, scope: !1460)
!1466 = distinct !{!1466, !1465}
!1467 = !DILocation(line: 43, column: 51, scope: !1468)
!1468 = !DILexicalBlockFile(scope: !1469, file: !757, discriminator: 1)
!1469 = distinct !DILexicalBlock(scope: !1470, file: !757, line: 43, column: 10)
!1470 = distinct !DILexicalBlock(scope: !1460, file: !757, line: 43, column: 4)
!1471 = !DILocation(line: 43, column: 26, scope: !1468)
!1472 = !DILocation(line: 43, column: 12, scope: !1468)
!1473 = !DILocation(line: 43, column: 10, scope: !1468)
!1474 = !DILocation(line: 43, column: 11, scope: !1475)
!1475 = !DILexicalBlockFile(scope: !1469, file: !757, discriminator: 2)
!1476 = !DILocation(line: 43, column: 10, scope: !1477)
!1477 = !DILexicalBlockFile(scope: !1470, file: !757, discriminator: 3)
!1478 = !DILocation(line: 43, column: 52, scope: !1479)
!1479 = !DILexicalBlockFile(scope: !1480, file: !757, discriminator: 4)
!1480 = distinct !DILexicalBlock(scope: !1469, file: !757, line: 43, column: 50)
!1481 = !DILocation(line: 43, column: 61, scope: !1482)
!1482 = !DILexicalBlockFile(scope: !1483, file: !757, discriminator: 5)
!1483 = distinct !DILexicalBlock(scope: !1469, file: !757, line: 43, column: 59)
!1484 = !DILocation(line: 43, column: 149, scope: !1482)
!1485 = !DILocation(line: 43, column: 160, scope: !1486)
!1486 = !DILexicalBlockFile(scope: !1470, file: !757, discriminator: 6)
!1487 = !DILocation(line: 45, column: 18, scope: !1460)
!1488 = !DILocation(line: 45, column: 47, scope: !1460)
!1489 = !DILocation(line: 45, column: 31, scope: !1460)
!1490 = !DILocation(line: 45, column: 2, scope: !1460)
!1491 = !DILocation(line: 46, column: 1, scope: !1460)
!1492 = !DILocation(line: 46, column: 1, scope: !1493)
!1493 = !DILexicalBlockFile(scope: !1460, file: !757, discriminator: 1)
!1494 = distinct !DISubprogram(name: "window_add_items", scope: !757, file: !757, line: 92, type: !840, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !808)
!1495 = !DILocalVariable(name: "window", arg: 1, scope: !1494, file: !757, line: 92, type: !758)
!1496 = !DILocation(line: 92, column: 42, scope: !1494)
!1497 = !DILocalVariable(name: "node", arg: 2, scope: !1494, file: !757, line: 92, type: !813)
!1498 = !DILocation(line: 92, column: 63, scope: !1494)
!1499 = !DILocalVariable(name: "tmp", scope: !1494, file: !757, line: 94, type: !518)
!1500 = !DILocation(line: 94, column: 10, scope: !1494)
!1501 = !DILocalVariable(name: "type", scope: !1494, file: !757, line: 95, type: !367)
!1502 = !DILocation(line: 95, column: 8, scope: !1494)
!1503 = !DILocation(line: 97, column: 6, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1494, file: !757, line: 97, column: 6)
!1505 = !DILocation(line: 97, column: 11, scope: !1504)
!1506 = !DILocation(line: 97, column: 6, scope: !1494)
!1507 = !DILocation(line: 98, column: 3, scope: !1504)
!1508 = !DILocation(line: 100, column: 26, scope: !1494)
!1509 = !DILocation(line: 100, column: 32, scope: !1494)
!1510 = !DILocation(line: 100, column: 8, scope: !1494)
!1511 = !DILocation(line: 100, column: 6, scope: !1494)
!1512 = !DILocation(line: 101, column: 2, scope: !1494)
!1513 = !DILocation(line: 101, column: 9, scope: !1514)
!1514 = !DILexicalBlockFile(scope: !1515, file: !757, discriminator: 1)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !757, line: 101, column: 2)
!1516 = distinct !DILexicalBlock(scope: !1494, file: !757, line: 101, column: 2)
!1517 = !DILocation(line: 101, column: 13, scope: !1514)
!1518 = !DILocation(line: 101, column: 2, scope: !1514)
!1519 = !DILocalVariable(name: "node", scope: !1520, file: !757, line: 102, type: !813)
!1520 = distinct !DILexicalBlock(scope: !1515, file: !757, line: 101, column: 50)
!1521 = !DILocation(line: 102, column: 16, scope: !1520)
!1522 = !DILocation(line: 102, column: 23, scope: !1520)
!1523 = !DILocation(line: 102, column: 28, scope: !1520)
!1524 = !DILocation(line: 104, column: 30, scope: !1520)
!1525 = !DILocation(line: 104, column: 10, scope: !1520)
!1526 = !DILocation(line: 104, column: 8, scope: !1520)
!1527 = !DILocation(line: 105, column: 7, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1520, file: !757, line: 105, column: 7)
!1529 = !DILocation(line: 105, column: 12, scope: !1528)
!1530 = !DILocation(line: 105, column: 7, scope: !1520)
!1531 = !DILocation(line: 107, column: 9, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1528, file: !757, line: 105, column: 20)
!1533 = !DILocation(line: 107, column: 17, scope: !1532)
!1534 = !DILocation(line: 107, column: 23, scope: !1532)
!1535 = !DILocation(line: 106, column: 4, scope: !1532)
!1536 = !DILocation(line: 108, column: 3, scope: !1532)
!1537 = !DILocation(line: 109, column: 2, scope: !1520)
!1538 = !DILocation(line: 101, column: 44, scope: !1539)
!1539 = !DILexicalBlockFile(scope: !1515, file: !757, discriminator: 2)
!1540 = !DILocation(line: 101, column: 27, scope: !1539)
!1541 = !DILocation(line: 101, column: 25, scope: !1539)
!1542 = !DILocation(line: 101, column: 2, scope: !1539)
!1543 = distinct !{!1543, !1512}
!1544 = !DILocation(line: 110, column: 1, scope: !1494)
