; ModuleID = './line248-hilight-text.o.i'
source_filename = "./line248-hilight-text.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GSList = type { i8*, %struct._GSList* }
%struct.NICKMATCH_REC = type { %struct._GHashTable*, void (%struct._GHashTable*, %struct._CHANNEL_REC*, %struct._NICK_REC*)* }
%struct._GHashTable = type opaque
%struct._CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)* }
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
%struct._QUERY_REC = type opaque
%struct._WI_ITEM_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, {}*, i8* (%struct._WI_ITEM_REC*)* }
%struct._NICK_REC = type { i32, i32, i64, i8*, i8*, i8*, i32, i8, [8 x i8], i8*, %struct._NICK_REC* }
%struct._CONFIG_REC = type { i8*, i32, i32, i8*, %struct._CONFIG_NODE*, %struct._GHashTable*, %struct._GHashTable*, %struct._GScanner*, %struct._GIOChannel*, i32, i32 }
%struct._CONFIG_NODE = type { i32, i8*, i8* }
%struct._GScanner = type { i8*, i32, i32, i8*, %struct._GData*, %struct._GScannerConfig*, i32, %union._GTokenValue, i32, i32, i32, %union._GTokenValue, i32, i32, %struct._GHashTable*, i32, i8*, i8*, i8*, i32, void (%struct._GScanner*, i8*, i32)* }
%struct._GData = type opaque
%struct._GScannerConfig = type { i8*, i8*, i8*, i8*, i24, i32 }
%union._GTokenValue = type { i8* }
%struct._HILIGHT_REC = type { i8*, i8**, i32, i8*, i8*, i32, i8, %struct._GRegex*, i8* }
%struct._GRegex = type opaque
%struct._MatchInfo = type opaque
%struct._TEXT_DEST_REC = type { %struct._WINDOW_REC*, %struct._SERVER_REC*, i8*, i8*, i8*, i8*, i32, i32, i8*, i32 }
%struct._WINDOW_REC = type { i32, i8*, i32, i32, %struct._GSList*, %struct._WI_ITEM_REC*, %struct._SERVER_REC*, %struct._SERVER_REC*, i8*, i32, %struct._GSList*, i8, %struct.HISTORY_REC*, i8*, i32, i8*, i64, i64, i8*, i8*, i8* }
%struct.HISTORY_REC = type { i8*, %struct._GList*, i32, i32, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }

@hilights = common global %struct._GSList* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"hilight created\00", align 1
@__func__.hilight_remove = private unnamed_addr constant [15 x i8] c"hilight_remove\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"rec != NULL\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"hilight destroyed\00", align 1
@__func__.hilight_match = private unnamed_addr constant [14 x i8] c"hilight_match\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"str != NULL\00", align 1
@never_hilight_level = internal global i32 0, align 4
@nickmatch = internal global %struct.NICKMATCH_REC* null, align 8
@default_hilight_level = internal global i32 0, align 4
@__func__.hilight_get_color = private unnamed_addr constant [18 x i8] c"hilight_get_color\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"hilight_color\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%n\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"fe-common/core\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"lookandfeel\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%Y\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"hilight_act_color\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%M\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"hilight_level\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"PUBLIC DCCMSGS\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"print text\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"setup reread\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"setup changed\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"hilight\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"dehilight\00", align 1
@.str.18 = private unnamed_addr constant [95 x i8] c"-color -actcolor -level -priority -network -channels nick word line mask full regexp matchcase\00", align 1
@__func__.hilight_remove_config = private unnamed_addr constant [22 x i8] c"hilight_remove_config\00", align 1
@mainconfig = external global %struct._CONFIG_REC*, align 8
@.str.19 = private unnamed_addr constant [9 x i8] c"hilights\00", align 1
@__func__.hilight_add_config = private unnamed_addr constant [19 x i8] c"hilight_add_config\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"(hilights\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"act_color\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"priority\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"nick\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"word\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"fullword\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"regexp\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"matchcase\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"servertag\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"channels\00", align 1
@__func__.hilight_destroy = private unnamed_addr constant [16 x i8] c"hilight_destroy\00", align 1
@__func__.hilight_get_act_color = private unnamed_addr constant [22 x i8] c"hilight_get_act_color\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@__func__.cmd_hilight = private unnamed_addr constant [12 x i8] c"cmd_hilight\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"actcolor\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"network\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"error command\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@__func__.hilight_find = private unnamed_addr constant [13 x i8] c"hilight_find\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"text != NULL\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"-nick \00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"-word \00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"-line \00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"-mask \00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"-full \00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"-matchcase \00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"-regexp \00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"[INVALID!] \00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"-priority %d \00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"-network %s \00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"-color %s \00", align 1
@.str.55 = private unnamed_addr constant [14 x i8] c"-actcolor %s \00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.57 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@cmd_dehilight.chans = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i32 0, i32 0), i8* null], align 16

; Function Attrs: nounwind uwtable
define void @hilight_create(%struct._HILIGHT_REC*) #0 !dbg !844 {
  %2 = alloca %struct._HILIGHT_REC*, align 8
  store %struct._HILIGHT_REC* %0, %struct._HILIGHT_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._HILIGHT_REC** %2, metadata !848, metadata !849), !dbg !850
  %3 = load %struct._GSList*, %struct._GSList** @hilights, align 8, !dbg !851
  %4 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !853
  %5 = bitcast %struct._HILIGHT_REC* %4 to i8*, !dbg !853
  %6 = call %struct._GSList* @g_slist_find(%struct._GSList* %3, i8* %5), !dbg !854
  %7 = icmp ne %struct._GSList* %6, null, !dbg !855
  br i1 %7, label %8, label %14, !dbg !856

; <label>:8:                                      ; preds = %1
  %9 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !857
  call void @hilight_remove_config(%struct._HILIGHT_REC* %9), !dbg !859
  %10 = load %struct._GSList*, %struct._GSList** @hilights, align 8, !dbg !860
  %11 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !861
  %12 = bitcast %struct._HILIGHT_REC* %11 to i8*, !dbg !861
  %13 = call %struct._GSList* @g_slist_remove(%struct._GSList* %10, i8* %12), !dbg !862
  store %struct._GSList* %13, %struct._GSList** @hilights, align 8, !dbg !863
  br label %14, !dbg !864

; <label>:14:                                     ; preds = %8, %1
  %15 = load %struct._GSList*, %struct._GSList** @hilights, align 8, !dbg !865
  %16 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !866
  %17 = bitcast %struct._HILIGHT_REC* %16 to i8*, !dbg !866
  %18 = call %struct._GSList* @g_slist_append(%struct._GSList* %15, i8* %17), !dbg !867
  store %struct._GSList* %18, %struct._GSList** @hilights, align 8, !dbg !868
  %19 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !869
  call void @hilight_add_config(%struct._HILIGHT_REC* %19), !dbg !870
  %20 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !871
  call void @hilight_init_rec(%struct._HILIGHT_REC* %20), !dbg !872
  %21 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !873
  %22 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 1, %struct._HILIGHT_REC* %21), !dbg !874
  ret void, !dbg !875
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct._GSList* @g_slist_find(%struct._GSList*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @hilight_remove_config(%struct._HILIGHT_REC*) #0 !dbg !876 {
  %2 = alloca %struct._HILIGHT_REC*, align 8
  %3 = alloca %struct._CONFIG_NODE*, align 8
  store %struct._HILIGHT_REC* %0, %struct._HILIGHT_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._HILIGHT_REC** %2, metadata !877, metadata !849), !dbg !878
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %3, metadata !879, metadata !849), !dbg !887
  br label %4, !dbg !888, !llvm.loop !889

; <label>:4:                                      ; preds = %1
  %5 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !890
  %6 = icmp ne %struct._HILIGHT_REC* %5, null, !dbg !894
  br i1 %6, label %7, label %8, !dbg !890

; <label>:7:                                      ; preds = %4
  br label %9, !dbg !895

; <label>:8:                                      ; preds = %4
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.hilight_remove_config, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0)), !dbg !898
  br label %22, !dbg !901

; <label>:9:                                      ; preds = %7
  br label %10, !dbg !902

; <label>:10:                                     ; preds = %9
  %11 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !904
  %12 = call %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 0), !dbg !905
  store %struct._CONFIG_NODE* %12, %struct._CONFIG_NODE** %3, align 8, !dbg !906
  %13 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !907
  %14 = icmp ne %struct._CONFIG_NODE* %13, null, !dbg !909
  br i1 %14, label %15, label %22, !dbg !910

; <label>:15:                                     ; preds = %10
  %16 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !911
  %17 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !913
  %18 = load %struct._GSList*, %struct._GSList** @hilights, align 8, !dbg !914
  %19 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !915
  %20 = bitcast %struct._HILIGHT_REC* %19 to i8*, !dbg !915
  %21 = call i32 @g_slist_index(%struct._GSList* %18, i8* %20), !dbg !916
  call void @config_node_list_remove(%struct._CONFIG_REC* %16, %struct._CONFIG_NODE* %17, i32 %21), !dbg !917
  br label %22, !dbg !919

; <label>:22:                                     ; preds = %8, %15, %10
  ret void, !dbg !920
}

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #2

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @hilight_add_config(%struct._HILIGHT_REC*) #0 !dbg !921 {
  %2 = alloca %struct._HILIGHT_REC*, align 8
  %3 = alloca %struct._CONFIG_NODE*, align 8
  store %struct._HILIGHT_REC* %0, %struct._HILIGHT_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._HILIGHT_REC** %2, metadata !922, metadata !849), !dbg !923
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %3, metadata !924, metadata !849), !dbg !925
  br label %4, !dbg !926, !llvm.loop !927

; <label>:4:                                      ; preds = %1
  %5 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !928
  %6 = icmp ne %struct._HILIGHT_REC* %5, null, !dbg !932
  br i1 %6, label %7, label %8, !dbg !928

; <label>:7:                                      ; preds = %4
  br label %9, !dbg !933

; <label>:8:                                      ; preds = %4
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.hilight_add_config, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0)), !dbg !936
  br label %154, !dbg !939

; <label>:9:                                      ; preds = %7
  br label %10, !dbg !940

; <label>:10:                                     ; preds = %9
  %11 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !942
  %12 = call %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i32 1), !dbg !943
  store %struct._CONFIG_NODE* %12, %struct._CONFIG_NODE** %3, align 8, !dbg !944
  %13 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !945
  %14 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !946
  %15 = call %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC* %13, %struct._CONFIG_NODE* %14, i8* null, i32 2), !dbg !947
  store %struct._CONFIG_NODE* %15, %struct._CONFIG_NODE** %3, align 8, !dbg !948
  %16 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !949
  %17 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !950
  %18 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !951
  %19 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %18, i32 0, i32 0, !dbg !952
  %20 = load i8*, i8** %19, align 8, !dbg !952
  call void @config_node_set_str(%struct._CONFIG_REC* %16, %struct._CONFIG_NODE* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i8* %20), !dbg !953
  %21 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !954
  %22 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %21, i32 0, i32 2, !dbg !956
  %23 = load i32, i32* %22, align 8, !dbg !956
  %24 = icmp sgt i32 %23, 0, !dbg !957
  br i1 %24, label %25, label %31, !dbg !958

; <label>:25:                                     ; preds = %10
  %26 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !959
  %27 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !961
  %28 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !962
  %29 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %28, i32 0, i32 2, !dbg !963
  %30 = load i32, i32* %29, align 8, !dbg !963
  call void @config_node_set_int(%struct._CONFIG_REC* %26, %struct._CONFIG_NODE* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %30), !dbg !964
  br label %31, !dbg !964

; <label>:31:                                     ; preds = %25, %10
  %32 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !965
  %33 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %32, i32 0, i32 3, !dbg !967
  %34 = load i8*, i8** %33, align 8, !dbg !967
  %35 = icmp ne i8* %34, null, !dbg !965
  br i1 %35, label %36, label %42, !dbg !968

; <label>:36:                                     ; preds = %31
  %37 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !969
  %38 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !971
  %39 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !972
  %40 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %39, i32 0, i32 3, !dbg !973
  %41 = load i8*, i8** %40, align 8, !dbg !973
  call void @config_node_set_str(%struct._CONFIG_REC* %37, %struct._CONFIG_NODE* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i8* %41), !dbg !974
  br label %42, !dbg !974

; <label>:42:                                     ; preds = %36, %31
  %43 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !975
  %44 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %43, i32 0, i32 4, !dbg !977
  %45 = load i8*, i8** %44, align 8, !dbg !977
  %46 = icmp ne i8* %45, null, !dbg !975
  br i1 %46, label %47, label %53, !dbg !978

; <label>:47:                                     ; preds = %42
  %48 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !979
  %49 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !981
  %50 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !982
  %51 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %50, i32 0, i32 4, !dbg !983
  %52 = load i8*, i8** %51, align 8, !dbg !983
  call void @config_node_set_str(%struct._CONFIG_REC* %48, %struct._CONFIG_NODE* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* %52), !dbg !984
  br label %53, !dbg !984

; <label>:53:                                     ; preds = %47, %42
  %54 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !985
  %55 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %54, i32 0, i32 5, !dbg !987
  %56 = load i32, i32* %55, align 8, !dbg !987
  %57 = icmp sgt i32 %56, 0, !dbg !988
  br i1 %57, label %58, label %64, !dbg !989

; <label>:58:                                     ; preds = %53
  %59 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !990
  %60 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !992
  %61 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !993
  %62 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %61, i32 0, i32 5, !dbg !994
  %63 = load i32, i32* %62, align 8, !dbg !994
  call void @config_node_set_int(%struct._CONFIG_REC* %59, %struct._CONFIG_NODE* %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i32 %63), !dbg !995
  br label %64, !dbg !995

; <label>:64:                                     ; preds = %58, %53
  %65 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !996
  %66 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !997
  %67 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !998
  %68 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %67, i32 0, i32 6, !dbg !999
  %69 = load i8, i8* %68, align 4, !dbg !999
  %70 = and i8 %69, 1, !dbg !999
  %71 = zext i8 %70 to i32, !dbg !999
  call void @config_node_set_bool(%struct._CONFIG_REC* %65, %struct._CONFIG_NODE* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i32 %71), !dbg !1000
  %72 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1001
  %73 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1002
  %74 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !1003
  %75 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %74, i32 0, i32 6, !dbg !1004
  %76 = load i8, i8* %75, align 4, !dbg !1004
  %77 = lshr i8 %76, 1, !dbg !1004
  %78 = and i8 %77, 1, !dbg !1004
  %79 = zext i8 %78 to i32, !dbg !1004
  call void @config_node_set_bool(%struct._CONFIG_REC* %72, %struct._CONFIG_NODE* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i32 %79), !dbg !1005
  %80 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !1006
  %81 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %80, i32 0, i32 6, !dbg !1008
  %82 = load i8, i8* %81, align 4, !dbg !1008
  %83 = lshr i8 %82, 2, !dbg !1008
  %84 = and i8 %83, 1, !dbg !1008
  %85 = zext i8 %84 to i32, !dbg !1008
  %86 = icmp ne i32 %85, 0, !dbg !1006
  br i1 %86, label %87, label %90, !dbg !1009

; <label>:87:                                     ; preds = %64
  %88 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1010
  %89 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1012
  call void @config_node_set_bool(%struct._CONFIG_REC* %88, %struct._CONFIG_NODE* %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i32 1), !dbg !1013
  br label %90, !dbg !1013

; <label>:90:                                     ; preds = %87, %64
  %91 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !1014
  %92 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %91, i32 0, i32 6, !dbg !1016
  %93 = load i8, i8* %92, align 4, !dbg !1016
  %94 = lshr i8 %93, 3, !dbg !1016
  %95 = and i8 %94, 1, !dbg !1016
  %96 = zext i8 %95 to i32, !dbg !1016
  %97 = icmp ne i32 %96, 0, !dbg !1014
  br i1 %97, label %98, label %101, !dbg !1017

; <label>:98:                                     ; preds = %90
  %99 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1018
  %100 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1020
  call void @config_node_set_bool(%struct._CONFIG_REC* %99, %struct._CONFIG_NODE* %100, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i32 1), !dbg !1021
  br label %101, !dbg !1021

; <label>:101:                                    ; preds = %98, %90
  %102 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !1022
  %103 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %102, i32 0, i32 6, !dbg !1024
  %104 = load i8, i8* %103, align 4, !dbg !1024
  %105 = lshr i8 %104, 4, !dbg !1024
  %106 = and i8 %105, 1, !dbg !1024
  %107 = zext i8 %106 to i32, !dbg !1024
  %108 = icmp ne i32 %107, 0, !dbg !1022
  br i1 %108, label %109, label %112, !dbg !1025

; <label>:109:                                    ; preds = %101
  %110 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1026
  %111 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1028
  call void @config_node_set_bool(%struct._CONFIG_REC* %110, %struct._CONFIG_NODE* %111, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i32 1), !dbg !1029
  br label %112, !dbg !1029

; <label>:112:                                    ; preds = %109, %101
  %113 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !1030
  %114 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %113, i32 0, i32 6, !dbg !1032
  %115 = load i8, i8* %114, align 4, !dbg !1032
  %116 = lshr i8 %115, 5, !dbg !1032
  %117 = and i8 %116, 1, !dbg !1032
  %118 = zext i8 %117 to i32, !dbg !1032
  %119 = icmp ne i32 %118, 0, !dbg !1030
  br i1 %119, label %120, label %123, !dbg !1033

; <label>:120:                                    ; preds = %112
  %121 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1034
  %122 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1036
  call void @config_node_set_bool(%struct._CONFIG_REC* %121, %struct._CONFIG_NODE* %122, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i32 1), !dbg !1037
  br label %123, !dbg !1037

; <label>:123:                                    ; preds = %120, %112
  %124 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !1038
  %125 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %124, i32 0, i32 8, !dbg !1040
  %126 = load i8*, i8** %125, align 8, !dbg !1040
  %127 = icmp ne i8* %126, null, !dbg !1038
  br i1 %127, label %128, label %134, !dbg !1041

; <label>:128:                                    ; preds = %123
  %129 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1042
  %130 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1044
  %131 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !1045
  %132 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %131, i32 0, i32 8, !dbg !1046
  %133 = load i8*, i8** %132, align 8, !dbg !1046
  call void @config_node_set_str(%struct._CONFIG_REC* %129, %struct._CONFIG_NODE* %130, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i8* %133), !dbg !1047
  br label %134, !dbg !1047

; <label>:134:                                    ; preds = %128, %123
  %135 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !1048
  %136 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %135, i32 0, i32 1, !dbg !1050
  %137 = load i8**, i8*** %136, align 8, !dbg !1050
  %138 = icmp ne i8** %137, null, !dbg !1051
  br i1 %138, label %139, label %154, !dbg !1052

; <label>:139:                                    ; preds = %134
  %140 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !1053
  %141 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %140, i32 0, i32 1, !dbg !1055
  %142 = load i8**, i8*** %141, align 8, !dbg !1055
  %143 = load i8*, i8** %142, align 8, !dbg !1056
  %144 = icmp ne i8* %143, null, !dbg !1057
  br i1 %144, label %145, label %154, !dbg !1058

; <label>:145:                                    ; preds = %139
  %146 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1059
  %147 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1061
  %148 = call %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC* %146, %struct._CONFIG_NODE* %147, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i32 3), !dbg !1062
  store %struct._CONFIG_NODE* %148, %struct._CONFIG_NODE** %3, align 8, !dbg !1063
  %149 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1064
  %150 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1065
  %151 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !1066
  %152 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %151, i32 0, i32 1, !dbg !1067
  %153 = load i8**, i8*** %152, align 8, !dbg !1067
  call void @config_node_add_list(%struct._CONFIG_REC* %149, %struct._CONFIG_NODE* %150, i8** %153), !dbg !1068
  br label %154, !dbg !1069

; <label>:154:                                    ; preds = %8, %145, %139, %134
  ret void, !dbg !1070
}

; Function Attrs: nounwind uwtable
define internal void @hilight_init_rec(%struct._HILIGHT_REC*) #0 !dbg !1071 {
  %2 = alloca %struct._HILIGHT_REC*, align 8
  store %struct._HILIGHT_REC* %0, %struct._HILIGHT_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._HILIGHT_REC** %2, metadata !1072, metadata !849), !dbg !1073
  %3 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !1074
  %4 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %3, i32 0, i32 7, !dbg !1076
  %5 = load %struct._GRegex*, %struct._GRegex** %4, align 8, !dbg !1076
  %6 = icmp ne %struct._GRegex* %5, null, !dbg !1077
  br i1 %6, label %7, label %11, !dbg !1078

; <label>:7:                                      ; preds = %1
  %8 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !1079
  %9 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %8, i32 0, i32 7, !dbg !1080
  %10 = load %struct._GRegex*, %struct._GRegex** %9, align 8, !dbg !1080
  call void @i_regex_unref(%struct._GRegex* %10), !dbg !1081
  br label %11, !dbg !1081

; <label>:11:                                     ; preds = %7, %1
  %12 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !1082
  %13 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %12, i32 0, i32 0, !dbg !1083
  %14 = load i8*, i8** %13, align 8, !dbg !1083
  %15 = call %struct._GRegex* @i_regex_new(i8* %14, i32 8193, i32 0, %struct._GError** null), !dbg !1084
  %16 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !1085
  %17 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %16, i32 0, i32 7, !dbg !1086
  store %struct._GRegex* %15, %struct._GRegex** %17, align 8, !dbg !1087
  ret void, !dbg !1088
}

declare i32 @signal_emit(i8*, i32, ...) #2

; Function Attrs: nounwind uwtable
define void @hilight_remove(%struct._HILIGHT_REC*) #0 !dbg !1089 {
  %2 = alloca %struct._HILIGHT_REC*, align 8
  store %struct._HILIGHT_REC* %0, %struct._HILIGHT_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._HILIGHT_REC** %2, metadata !1090, metadata !849), !dbg !1091
  br label %3, !dbg !1092, !llvm.loop !1093

; <label>:3:                                      ; preds = %1
  %4 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !1094
  %5 = icmp ne %struct._HILIGHT_REC* %4, null, !dbg !1098
  br i1 %5, label %6, label %7, !dbg !1094

; <label>:6:                                      ; preds = %3
  br label %8, !dbg !1099

; <label>:7:                                      ; preds = %3
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.hilight_remove, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0)), !dbg !1102
  br label %18, !dbg !1105

; <label>:8:                                      ; preds = %6
  br label %9, !dbg !1106

; <label>:9:                                      ; preds = %8
  %10 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !1108
  call void @hilight_remove_config(%struct._HILIGHT_REC* %10), !dbg !1109
  %11 = load %struct._GSList*, %struct._GSList** @hilights, align 8, !dbg !1110
  %12 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !1111
  %13 = bitcast %struct._HILIGHT_REC* %12 to i8*, !dbg !1111
  %14 = call %struct._GSList* @g_slist_remove(%struct._GSList* %11, i8* %13), !dbg !1112
  store %struct._GSList* %14, %struct._GSList** @hilights, align 8, !dbg !1113
  %15 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !1114
  %16 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i32 1, %struct._HILIGHT_REC* %15), !dbg !1115
  %17 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !1116
  call void @hilight_destroy(%struct._HILIGHT_REC* %17), !dbg !1117
  br label %18, !dbg !1118

; <label>:18:                                     ; preds = %9, %7
  ret void, !dbg !1119
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @hilight_destroy(%struct._HILIGHT_REC*) #0 !dbg !1121 {
  %2 = alloca %struct._HILIGHT_REC*, align 8
  store %struct._HILIGHT_REC* %0, %struct._HILIGHT_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._HILIGHT_REC** %2, metadata !1122, metadata !849), !dbg !1123
  br label %3, !dbg !1124, !llvm.loop !1125

; <label>:3:                                      ; preds = %1
  %4 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !1126
  %5 = icmp ne %struct._HILIGHT_REC* %4, null, !dbg !1130
  br i1 %5, label %6, label %7, !dbg !1126

; <label>:6:                                      ; preds = %3
  br label %8, !dbg !1131

; <label>:7:                                      ; preds = %3
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.hilight_destroy, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0)), !dbg !1134
  br label %42, !dbg !1137

; <label>:8:                                      ; preds = %6
  br label %9, !dbg !1138

; <label>:9:                                      ; preds = %8
  %10 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !1140
  %11 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %10, i32 0, i32 7, !dbg !1142
  %12 = load %struct._GRegex*, %struct._GRegex** %11, align 8, !dbg !1142
  %13 = icmp ne %struct._GRegex* %12, null, !dbg !1143
  br i1 %13, label %14, label %18, !dbg !1144

; <label>:14:                                     ; preds = %9
  %15 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !1145
  %16 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %15, i32 0, i32 7, !dbg !1147
  %17 = load %struct._GRegex*, %struct._GRegex** %16, align 8, !dbg !1147
  call void @i_regex_unref(%struct._GRegex* %17), !dbg !1148
  br label %18, !dbg !1148

; <label>:18:                                     ; preds = %14, %9
  %19 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !1149
  %20 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %19, i32 0, i32 1, !dbg !1151
  %21 = load i8**, i8*** %20, align 8, !dbg !1151
  %22 = icmp ne i8** %21, null, !dbg !1152
  br i1 %22, label %23, label %27, !dbg !1153

; <label>:23:                                     ; preds = %18
  %24 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !1154
  %25 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %24, i32 0, i32 1, !dbg !1156
  %26 = load i8**, i8*** %25, align 8, !dbg !1156
  call void @g_strfreev(i8** %26), !dbg !1157
  br label %27, !dbg !1157

; <label>:27:                                     ; preds = %23, %18
  %28 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !1158
  %29 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %28, i32 0, i32 3, !dbg !1159
  %30 = load i8*, i8** %29, align 8, !dbg !1159
  call void @g_free(i8* %30), !dbg !1160
  %31 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !1161
  %32 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %31, i32 0, i32 4, !dbg !1162
  %33 = load i8*, i8** %32, align 8, !dbg !1162
  call void @g_free(i8* %33), !dbg !1163
  %34 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !1164
  %35 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %34, i32 0, i32 8, !dbg !1165
  %36 = load i8*, i8** %35, align 8, !dbg !1165
  call void @g_free(i8* %36), !dbg !1166
  %37 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !1167
  %38 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %37, i32 0, i32 0, !dbg !1168
  %39 = load i8*, i8** %38, align 8, !dbg !1168
  call void @g_free(i8* %39), !dbg !1169
  %40 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !1170
  %41 = bitcast %struct._HILIGHT_REC* %40 to i8*, !dbg !1170
  call void @g_free(i8* %41), !dbg !1171
  br label %42, !dbg !1172

; <label>:42:                                     ; preds = %27, %7
  ret void, !dbg !1173
}

; Function Attrs: nounwind uwtable
define %struct._HILIGHT_REC* @hilight_match(%struct._SERVER_REC*, i8*, i8*, i8*, i32, i8*, i32*, i32*) #0 !dbg !1175 {
  %9 = alloca %struct._HILIGHT_REC*, align 8
  %10 = alloca %struct._SERVER_REC*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct._GSList*, align 8
  %19 = alloca %struct._CHANNEL_REC*, align 8
  %20 = alloca %struct._NICK_REC*, align 8
  %21 = alloca %struct._HILIGHT_REC*, align 8
  %22 = alloca %struct._HILIGHT_REC*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %10, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %10, metadata !1179, metadata !849), !dbg !1180
  store i8* %1, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1181, metadata !849), !dbg !1182
  store i8* %2, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1183, metadata !849), !dbg !1184
  store i8* %3, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1185, metadata !849), !dbg !1186
  store i32 %4, i32* %14, align 4
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1187, metadata !849), !dbg !1188
  store i8* %5, i8** %15, align 8
  call void @llvm.dbg.declare(metadata i8** %15, metadata !1189, metadata !849), !dbg !1190
  store i32* %6, i32** %16, align 8
  call void @llvm.dbg.declare(metadata i32** %16, metadata !1191, metadata !849), !dbg !1192
  store i32* %7, i32** %17, align 8
  call void @llvm.dbg.declare(metadata i32** %17, metadata !1193, metadata !849), !dbg !1194
  call void @llvm.dbg.declare(metadata %struct._GSList** %18, metadata !1195, metadata !849), !dbg !1196
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %19, metadata !1197, metadata !849), !dbg !1198
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %20, metadata !1199, metadata !849), !dbg !1200
  br label %23, !dbg !1201, !llvm.loop !1202

; <label>:23:                                     ; preds = %8
  %24 = load i8*, i8** %15, align 8, !dbg !1203
  %25 = icmp ne i8* %24, null, !dbg !1207
  br i1 %25, label %26, label %27, !dbg !1203

; <label>:26:                                     ; preds = %23
  br label %28, !dbg !1208

; <label>:27:                                     ; preds = %23
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.hilight_match, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0)), !dbg !1211
  store %struct._HILIGHT_REC* null, %struct._HILIGHT_REC** %9, align 8, !dbg !1214
  br label %173, !dbg !1214

; <label>:28:                                     ; preds = %26
  br label %29, !dbg !1215

; <label>:29:                                     ; preds = %28
  %30 = load i32, i32* @never_hilight_level, align 4, !dbg !1217
  %31 = load i32, i32* %14, align 4, !dbg !1219
  %32 = and i32 %30, %31, !dbg !1220
  %33 = load i32, i32* %14, align 4, !dbg !1221
  %34 = icmp eq i32 %32, %33, !dbg !1222
  br i1 %34, label %35, label %36, !dbg !1223

; <label>:35:                                     ; preds = %29
  store %struct._HILIGHT_REC* null, %struct._HILIGHT_REC** %9, align 8, !dbg !1224
  br label %173, !dbg !1224

; <label>:36:                                     ; preds = %29
  %37 = load i8*, i8** %12, align 8, !dbg !1225
  %38 = icmp ne i8* %37, null, !dbg !1227
  br i1 %38, label %39, label %93, !dbg !1228

; <label>:39:                                     ; preds = %36
  %40 = load %struct._SERVER_REC*, %struct._SERVER_REC** %10, align 8, !dbg !1229
  %41 = load i8*, i8** %11, align 8, !dbg !1231
  %42 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %40, i8* %41), !dbg !1232
  store %struct._CHANNEL_REC* %42, %struct._CHANNEL_REC** %19, align 8, !dbg !1233
  %43 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %19, align 8, !dbg !1234
  %44 = icmp eq %struct._CHANNEL_REC* %43, null, !dbg !1235
  br i1 %44, label %45, label %46, !dbg !1234

; <label>:45:                                     ; preds = %39
  br label %50, !dbg !1236

; <label>:46:                                     ; preds = %39
  %47 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %19, align 8, !dbg !1238
  %48 = load i8*, i8** %12, align 8, !dbg !1239
  %49 = call %struct._NICK_REC* @nicklist_find(%struct._CHANNEL_REC* %47, i8* %48), !dbg !1240
  br label %50, !dbg !1241

; <label>:50:                                     ; preds = %46, %45
  %51 = phi %struct._NICK_REC* [ null, %45 ], [ %49, %46 ], !dbg !1243
  store %struct._NICK_REC* %51, %struct._NICK_REC** %20, align 8, !dbg !1245
  %52 = load %struct._NICK_REC*, %struct._NICK_REC** %20, align 8, !dbg !1246
  %53 = icmp ne %struct._NICK_REC* %52, null, !dbg !1248
  br i1 %53, label %54, label %92, !dbg !1249

; <label>:54:                                     ; preds = %50
  call void @llvm.dbg.declare(metadata %struct._HILIGHT_REC** %21, metadata !1250, metadata !849), !dbg !1252
  %55 = load %struct._NICK_REC*, %struct._NICK_REC** %20, align 8, !dbg !1253
  %56 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %55, i32 0, i32 4, !dbg !1255
  %57 = load i8*, i8** %56, align 8, !dbg !1255
  %58 = icmp eq i8* %57, null, !dbg !1256
  br i1 %58, label %59, label %63, !dbg !1257

; <label>:59:                                     ; preds = %54
  %60 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %19, align 8, !dbg !1258
  %61 = load %struct._NICK_REC*, %struct._NICK_REC** %20, align 8, !dbg !1259
  %62 = load i8*, i8** %13, align 8, !dbg !1260
  call void @nicklist_set_host(%struct._CHANNEL_REC* %60, %struct._NICK_REC* %61, i8* %62), !dbg !1261
  br label %63, !dbg !1261

; <label>:63:                                     ; preds = %59, %54
  %64 = load %struct.NICKMATCH_REC*, %struct.NICKMATCH_REC** @nickmatch, align 8, !dbg !1262
  %65 = getelementptr inbounds %struct.NICKMATCH_REC, %struct.NICKMATCH_REC* %64, i32 0, i32 0, !dbg !1263
  %66 = load %struct._GHashTable*, %struct._GHashTable** %65, align 8, !dbg !1263
  %67 = load %struct._NICK_REC*, %struct._NICK_REC** %20, align 8, !dbg !1264
  %68 = bitcast %struct._NICK_REC* %67 to i8*, !dbg !1264
  %69 = call i8* @g_hash_table_lookup(%struct._GHashTable* %66, i8* %68), !dbg !1265
  %70 = bitcast i8* %69 to %struct._HILIGHT_REC*, !dbg !1265
  store %struct._HILIGHT_REC* %70, %struct._HILIGHT_REC** %21, align 8, !dbg !1266
  %71 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %21, align 8, !dbg !1267
  %72 = icmp ne %struct._HILIGHT_REC* %71, null, !dbg !1269
  br i1 %72, label %73, label %91, !dbg !1270

; <label>:73:                                     ; preds = %63
  %74 = load i32, i32* %14, align 4, !dbg !1271
  %75 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %21, align 8, !dbg !1273
  %76 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %75, i32 0, i32 2, !dbg !1274
  %77 = load i32, i32* %76, align 8, !dbg !1274
  %78 = icmp ne i32 %77, 0, !dbg !1275
  br i1 %78, label %79, label %83, !dbg !1276

; <label>:79:                                     ; preds = %73
  %80 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %21, align 8, !dbg !1277
  %81 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %80, i32 0, i32 2, !dbg !1279
  %82 = load i32, i32* %81, align 8, !dbg !1279
  br label %85, !dbg !1280

; <label>:83:                                     ; preds = %73
  %84 = load i32, i32* @default_hilight_level, align 4, !dbg !1281
  br label %85, !dbg !1283

; <label>:85:                                     ; preds = %83, %79
  %86 = phi i32 [ %82, %79 ], [ %84, %83 ], !dbg !1284
  %87 = and i32 %74, %86, !dbg !1286
  %88 = icmp ne i32 %87, 0, !dbg !1286
  br i1 %88, label %89, label %91, !dbg !1287

; <label>:89:                                     ; preds = %85
  %90 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %21, align 8, !dbg !1288
  store %struct._HILIGHT_REC* %90, %struct._HILIGHT_REC** %9, align 8, !dbg !1289
  br label %173, !dbg !1289

; <label>:91:                                     ; preds = %85, %63
  br label %92, !dbg !1290

; <label>:92:                                     ; preds = %91, %50
  br label %93, !dbg !1291

; <label>:93:                                     ; preds = %92, %36
  %94 = load %struct._GSList*, %struct._GSList** @hilights, align 8, !dbg !1292
  store %struct._GSList* %94, %struct._GSList** %18, align 8, !dbg !1294
  br label %95, !dbg !1295

; <label>:95:                                     ; preds = %168, %93
  %96 = load %struct._GSList*, %struct._GSList** %18, align 8, !dbg !1296
  %97 = icmp ne %struct._GSList* %96, null, !dbg !1299
  br i1 %97, label %98, label %172, !dbg !1300

; <label>:98:                                     ; preds = %95
  call void @llvm.dbg.declare(metadata %struct._HILIGHT_REC** %22, metadata !1301, metadata !849), !dbg !1303
  %99 = load %struct._GSList*, %struct._GSList** %18, align 8, !dbg !1304
  %100 = getelementptr inbounds %struct._GSList, %struct._GSList* %99, i32 0, i32 0, !dbg !1305
  %101 = load i8*, i8** %100, align 8, !dbg !1305
  %102 = bitcast i8* %101 to %struct._HILIGHT_REC*, !dbg !1304
  store %struct._HILIGHT_REC* %102, %struct._HILIGHT_REC** %22, align 8, !dbg !1303
  %103 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %22, align 8, !dbg !1306
  %104 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %103, i32 0, i32 6, !dbg !1308
  %105 = load i8, i8* %104, align 4, !dbg !1308
  %106 = lshr i8 %105, 2, !dbg !1308
  %107 = and i8 %106, 1, !dbg !1308
  %108 = zext i8 %107 to i32, !dbg !1308
  %109 = icmp ne i32 %108, 0, !dbg !1306
  br i1 %109, label %167, label %110, !dbg !1309

; <label>:110:                                    ; preds = %98
  %111 = load i32, i32* %14, align 4, !dbg !1310
  %112 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %22, align 8, !dbg !1312
  %113 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %112, i32 0, i32 2, !dbg !1313
  %114 = load i32, i32* %113, align 8, !dbg !1313
  %115 = icmp ne i32 %114, 0, !dbg !1314
  br i1 %115, label %116, label %120, !dbg !1315

; <label>:116:                                    ; preds = %110
  %117 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %22, align 8, !dbg !1316
  %118 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %117, i32 0, i32 2, !dbg !1318
  %119 = load i32, i32* %118, align 8, !dbg !1318
  br label %122, !dbg !1319

; <label>:120:                                    ; preds = %110
  %121 = load i32, i32* @default_hilight_level, align 4, !dbg !1320
  br label %122, !dbg !1322

; <label>:122:                                    ; preds = %120, %116
  %123 = phi i32 [ %119, %116 ], [ %121, %120 ], !dbg !1323
  %124 = and i32 %111, %123, !dbg !1325
  %125 = icmp ne i32 %124, 0, !dbg !1325
  br i1 %125, label %126, label %167, !dbg !1326

; <label>:126:                                    ; preds = %122
  %127 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %22, align 8, !dbg !1327
  %128 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %127, i32 0, i32 1, !dbg !1328
  %129 = load i8**, i8*** %128, align 8, !dbg !1328
  %130 = icmp eq i8** %129, null, !dbg !1329
  br i1 %130, label %141, label %131, !dbg !1330

; <label>:131:                                    ; preds = %126
  %132 = load i8*, i8** %11, align 8, !dbg !1331
  %133 = icmp ne i8* %132, null, !dbg !1332
  br i1 %133, label %134, label %167, !dbg !1333

; <label>:134:                                    ; preds = %131
  %135 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %22, align 8, !dbg !1334
  %136 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %135, i32 0, i32 1, !dbg !1335
  %137 = load i8**, i8*** %136, align 8, !dbg !1335
  %138 = load i8*, i8** %11, align 8, !dbg !1336
  %139 = call i32 @strarray_find(i8** %137, i8* %138), !dbg !1337
  %140 = icmp ne i32 %139, -1, !dbg !1338
  br i1 %140, label %141, label %167, !dbg !1339

; <label>:141:                                    ; preds = %134, %126
  %142 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %22, align 8, !dbg !1340
  %143 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %142, i32 0, i32 8, !dbg !1341
  %144 = load i8*, i8** %143, align 8, !dbg !1341
  %145 = icmp eq i8* %144, null, !dbg !1342
  br i1 %145, label %158, label %146, !dbg !1343

; <label>:146:                                    ; preds = %141
  %147 = load %struct._SERVER_REC*, %struct._SERVER_REC** %10, align 8, !dbg !1344
  %148 = icmp ne %struct._SERVER_REC* %147, null, !dbg !1345
  br i1 %148, label %149, label %167, !dbg !1346

; <label>:149:                                    ; preds = %146
  %150 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %22, align 8, !dbg !1347
  %151 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %150, i32 0, i32 8, !dbg !1348
  %152 = load i8*, i8** %151, align 8, !dbg !1348
  %153 = load %struct._SERVER_REC*, %struct._SERVER_REC** %10, align 8, !dbg !1349
  %154 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %153, i32 0, i32 6, !dbg !1350
  %155 = load i8*, i8** %154, align 8, !dbg !1350
  %156 = call i32 @g_ascii_strcasecmp(i8* %152, i8* %155), !dbg !1351
  %157 = icmp eq i32 %156, 0, !dbg !1352
  br i1 %157, label %158, label %167, !dbg !1353

; <label>:158:                                    ; preds = %149, %141
  %159 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %22, align 8, !dbg !1354
  %160 = load i8*, i8** %15, align 8, !dbg !1355
  %161 = load i32*, i32** %16, align 8, !dbg !1356
  %162 = load i32*, i32** %17, align 8, !dbg !1357
  %163 = call i32 @hilight_match_text(%struct._HILIGHT_REC* %159, i8* %160, i32* %161, i32* %162), !dbg !1358
  %164 = icmp ne i32 %163, 0, !dbg !1358
  br i1 %164, label %165, label %167, !dbg !1359

; <label>:165:                                    ; preds = %158
  %166 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %22, align 8, !dbg !1361
  store %struct._HILIGHT_REC* %166, %struct._HILIGHT_REC** %9, align 8, !dbg !1362
  br label %173, !dbg !1362

; <label>:167:                                    ; preds = %158, %149, %146, %134, %131, %122, %98
  br label %168, !dbg !1363

; <label>:168:                                    ; preds = %167
  %169 = load %struct._GSList*, %struct._GSList** %18, align 8, !dbg !1364
  %170 = getelementptr inbounds %struct._GSList, %struct._GSList* %169, i32 0, i32 1, !dbg !1366
  %171 = load %struct._GSList*, %struct._GSList** %170, align 8, !dbg !1366
  store %struct._GSList* %171, %struct._GSList** %18, align 8, !dbg !1367
  br label %95, !dbg !1368, !llvm.loop !1369

; <label>:172:                                    ; preds = %95
  store %struct._HILIGHT_REC* null, %struct._HILIGHT_REC** %9, align 8, !dbg !1371
  br label %173, !dbg !1371

; <label>:173:                                    ; preds = %172, %165, %89, %35, %27
  %174 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %9, align 8, !dbg !1372
  ret %struct._HILIGHT_REC* %174, !dbg !1372
}

declare %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC*, i8*) #2

declare %struct._NICK_REC* @nicklist_find(%struct._CHANNEL_REC*, i8*) #2

declare void @nicklist_set_host(%struct._CHANNEL_REC*, %struct._NICK_REC*, i8*) #2

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #2

declare i32 @strarray_find(i8**, i8*) #2

declare i32 @g_ascii_strcasecmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @hilight_match_text(%struct._HILIGHT_REC*, i8*, i32*, i32*) #0 !dbg !1373 {
  %5 = alloca %struct._HILIGHT_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct._MatchInfo*, align 8
  %11 = alloca i8*, align 8
  store %struct._HILIGHT_REC* %0, %struct._HILIGHT_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._HILIGHT_REC** %5, metadata !1376, metadata !849), !dbg !1377
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1378, metadata !849), !dbg !1379
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !1380, metadata !849), !dbg !1381
  store i32* %3, i32** %8, align 8
  call void @llvm.dbg.declare(metadata i32** %8, metadata !1382, metadata !849), !dbg !1383
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1384, metadata !849), !dbg !1385
  store i32 0, i32* %9, align 4, !dbg !1385
  %12 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %5, align 8, !dbg !1386
  %13 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %12, i32 0, i32 6, !dbg !1388
  %14 = load i8, i8* %13, align 4, !dbg !1388
  %15 = lshr i8 %14, 4, !dbg !1388
  %16 = and i8 %15, 1, !dbg !1388
  %17 = zext i8 %16 to i32, !dbg !1388
  %18 = icmp ne i32 %17, 0, !dbg !1386
  br i1 %18, label %19, label %41, !dbg !1389

; <label>:19:                                     ; preds = %4
  %20 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %5, align 8, !dbg !1390
  %21 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %20, i32 0, i32 7, !dbg !1393
  %22 = load %struct._GRegex*, %struct._GRegex** %21, align 8, !dbg !1393
  %23 = icmp ne %struct._GRegex* %22, null, !dbg !1394
  br i1 %23, label %24, label %40, !dbg !1395

; <label>:24:                                     ; preds = %19
  call void @llvm.dbg.declare(metadata %struct._MatchInfo** %10, metadata !1396, metadata !849), !dbg !1401
  %25 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %5, align 8, !dbg !1402
  %26 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %25, i32 0, i32 7, !dbg !1403
  %27 = load %struct._GRegex*, %struct._GRegex** %26, align 8, !dbg !1403
  %28 = load i8*, i8** %6, align 8, !dbg !1404
  %29 = call i32 @i_regex_match(%struct._GRegex* %27, i8* %28, i32 0, %struct._MatchInfo** %10), !dbg !1405
  %30 = load %struct._MatchInfo*, %struct._MatchInfo** %10, align 8, !dbg !1406
  %31 = call i32 @i_match_info_matches(%struct._MatchInfo* %30), !dbg !1408
  %32 = icmp ne i32 %31, 0, !dbg !1408
  br i1 %32, label %33, label %38, !dbg !1409

; <label>:33:                                     ; preds = %24
  %34 = load %struct._MatchInfo*, %struct._MatchInfo** %10, align 8, !dbg !1410
  %35 = load i32*, i32** %7, align 8, !dbg !1411
  %36 = load i32*, i32** %8, align 8, !dbg !1412
  %37 = call i32 @i_match_info_fetch_pos(%struct._MatchInfo* %34, i32 0, i32* %35, i32* %36), !dbg !1413
  store i32 %37, i32* %9, align 4, !dbg !1414
  br label %38, !dbg !1415

; <label>:38:                                     ; preds = %33, %24
  %39 = load %struct._MatchInfo*, %struct._MatchInfo** %10, align 8, !dbg !1416
  call void @i_match_info_free(%struct._MatchInfo* %39), !dbg !1417
  br label %40, !dbg !1418

; <label>:40:                                     ; preds = %38, %19
  br label %122, !dbg !1419

; <label>:41:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1420, metadata !849), !dbg !1422
  %42 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %5, align 8, !dbg !1423
  %43 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %42, i32 0, i32 6, !dbg !1425
  %44 = load i8, i8* %43, align 4, !dbg !1425
  %45 = lshr i8 %44, 5, !dbg !1425
  %46 = and i8 %45, 1, !dbg !1425
  %47 = zext i8 %46 to i32, !dbg !1425
  %48 = icmp ne i32 %47, 0, !dbg !1423
  br i1 %48, label %49, label %71, !dbg !1426

; <label>:49:                                     ; preds = %41
  %50 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %5, align 8, !dbg !1427
  %51 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %50, i32 0, i32 6, !dbg !1429
  %52 = load i8, i8* %51, align 4, !dbg !1429
  %53 = lshr i8 %52, 3, !dbg !1429
  %54 = and i8 %53, 1, !dbg !1429
  %55 = zext i8 %54 to i32, !dbg !1429
  %56 = icmp ne i32 %55, 0, !dbg !1427
  br i1 %56, label %57, label %63, !dbg !1427

; <label>:57:                                     ; preds = %49
  %58 = load i8*, i8** %6, align 8, !dbg !1430
  %59 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %5, align 8, !dbg !1431
  %60 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %59, i32 0, i32 0, !dbg !1432
  %61 = load i8*, i8** %60, align 8, !dbg !1432
  %62 = call i8* @strstr_full(i8* %58, i8* %61), !dbg !1433
  br label %69, !dbg !1434

; <label>:63:                                     ; preds = %49
  %64 = load i8*, i8** %6, align 8, !dbg !1436
  %65 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %5, align 8, !dbg !1437
  %66 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %65, i32 0, i32 0, !dbg !1438
  %67 = load i8*, i8** %66, align 8, !dbg !1438
  %68 = call i8* @strstr(i8* %64, i8* %67) #6, !dbg !1439
  br label %69, !dbg !1440

; <label>:69:                                     ; preds = %63, %57
  %70 = phi i8* [ %62, %57 ], [ %68, %63 ], !dbg !1442
  store i8* %70, i8** %11, align 8, !dbg !1444
  br label %93, !dbg !1445

; <label>:71:                                     ; preds = %41
  %72 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %5, align 8, !dbg !1446
  %73 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %72, i32 0, i32 6, !dbg !1448
  %74 = load i8, i8* %73, align 4, !dbg !1448
  %75 = lshr i8 %74, 3, !dbg !1448
  %76 = and i8 %75, 1, !dbg !1448
  %77 = zext i8 %76 to i32, !dbg !1448
  %78 = icmp ne i32 %77, 0, !dbg !1446
  br i1 %78, label %79, label %85, !dbg !1446

; <label>:79:                                     ; preds = %71
  %80 = load i8*, i8** %6, align 8, !dbg !1449
  %81 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %5, align 8, !dbg !1450
  %82 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %81, i32 0, i32 0, !dbg !1451
  %83 = load i8*, i8** %82, align 8, !dbg !1451
  %84 = call i8* @stristr_full(i8* %80, i8* %83), !dbg !1452
  br label %91, !dbg !1453

; <label>:85:                                     ; preds = %71
  %86 = load i8*, i8** %6, align 8, !dbg !1455
  %87 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %5, align 8, !dbg !1456
  %88 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %87, i32 0, i32 0, !dbg !1457
  %89 = load i8*, i8** %88, align 8, !dbg !1457
  %90 = call i8* @stristr(i8* %86, i8* %89), !dbg !1458
  br label %91, !dbg !1459

; <label>:91:                                     ; preds = %85, %79
  %92 = phi i8* [ %84, %79 ], [ %90, %85 ], !dbg !1461
  store i8* %92, i8** %11, align 8, !dbg !1463
  br label %93

; <label>:93:                                     ; preds = %91, %69
  %94 = load i8*, i8** %11, align 8, !dbg !1464
  %95 = icmp ne i8* %94, null, !dbg !1466
  br i1 %95, label %96, label %121, !dbg !1467

; <label>:96:                                     ; preds = %93
  %97 = load i32*, i32** %7, align 8, !dbg !1468
  %98 = icmp ne i32* %97, null, !dbg !1471
  br i1 %98, label %99, label %120, !dbg !1472

; <label>:99:                                     ; preds = %96
  %100 = load i32*, i32** %8, align 8, !dbg !1473
  %101 = icmp ne i32* %100, null, !dbg !1475
  br i1 %101, label %102, label %120, !dbg !1476

; <label>:102:                                    ; preds = %99
  %103 = load i8*, i8** %11, align 8, !dbg !1477
  %104 = load i8*, i8** %6, align 8, !dbg !1479
  %105 = ptrtoint i8* %103 to i64, !dbg !1480
  %106 = ptrtoint i8* %104 to i64, !dbg !1480
  %107 = sub i64 %105, %106, !dbg !1480
  %108 = trunc i64 %107 to i32, !dbg !1481
  %109 = load i32*, i32** %7, align 8, !dbg !1482
  store i32 %108, i32* %109, align 4, !dbg !1483
  %110 = load i32*, i32** %7, align 8, !dbg !1484
  %111 = load i32, i32* %110, align 4, !dbg !1485
  %112 = sext i32 %111 to i64, !dbg !1485
  %113 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %5, align 8, !dbg !1486
  %114 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %113, i32 0, i32 0, !dbg !1487
  %115 = load i8*, i8** %114, align 8, !dbg !1487
  %116 = call i64 @strlen(i8* %115) #6, !dbg !1488
  %117 = add i64 %112, %116, !dbg !1489
  %118 = trunc i64 %117 to i32, !dbg !1485
  %119 = load i32*, i32** %8, align 8, !dbg !1490
  store i32 %118, i32* %119, align 4, !dbg !1491
  br label %120, !dbg !1492

; <label>:120:                                    ; preds = %102, %99, %96
  store i32 1, i32* %9, align 4, !dbg !1493
  br label %121, !dbg !1494

; <label>:121:                                    ; preds = %120, %93
  br label %122

; <label>:122:                                    ; preds = %121, %40
  %123 = load i32, i32* %9, align 4, !dbg !1495
  ret i32 %123, !dbg !1496
}

; Function Attrs: nounwind uwtable
define i8* @hilight_get_color(%struct._HILIGHT_REC*) #0 !dbg !1497 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._HILIGHT_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct._HILIGHT_REC* %0, %struct._HILIGHT_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._HILIGHT_REC** %3, metadata !1500, metadata !849), !dbg !1501
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1502, metadata !849), !dbg !1503
  br label %5, !dbg !1504, !llvm.loop !1505

; <label>:5:                                      ; preds = %1
  %6 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %3, align 8, !dbg !1506
  %7 = icmp ne %struct._HILIGHT_REC* %6, null, !dbg !1510
  br i1 %7, label %8, label %9, !dbg !1506

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !1511

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.hilight_get_color, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0)), !dbg !1514
  store i8* null, i8** %2, align 8, !dbg !1517
  br label %26, !dbg !1517

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !1518

; <label>:11:                                     ; preds = %10
  %12 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %3, align 8, !dbg !1520
  %13 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %12, i32 0, i32 3, !dbg !1521
  %14 = load i8*, i8** %13, align 8, !dbg !1521
  %15 = icmp ne i8* %14, null, !dbg !1522
  br i1 %15, label %16, label %20, !dbg !1520

; <label>:16:                                     ; preds = %11
  %17 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %3, align 8, !dbg !1523
  %18 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %17, i32 0, i32 3, !dbg !1525
  %19 = load i8*, i8** %18, align 8, !dbg !1525
  br label %22, !dbg !1526

; <label>:20:                                     ; preds = %11
  %21 = call i8* @settings_get_str(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0)), !dbg !1527
  br label %22, !dbg !1528

; <label>:22:                                     ; preds = %20, %16
  %23 = phi i8* [ %19, %16 ], [ %21, %20 ], !dbg !1530
  store i8* %23, i8** %4, align 8, !dbg !1532
  %24 = load i8*, i8** %4, align 8, !dbg !1533
  %25 = call i8* @format_string_expand(i8* %24, i32* null), !dbg !1534
  store i8* %25, i8** %2, align 8, !dbg !1535
  br label %26, !dbg !1535

; <label>:26:                                     ; preds = %22, %9
  %27 = load i8*, i8** %2, align 8, !dbg !1536
  ret i8* %27, !dbg !1536
}

declare i8* @settings_get_str(i8*) #2

declare i8* @format_string_expand(i8*, i32*) #2

; Function Attrs: nounwind uwtable
define void @hilight_update_text_dest(%struct._TEXT_DEST_REC*, %struct._HILIGHT_REC*) #0 !dbg !1537 {
  %3 = alloca %struct._TEXT_DEST_REC*, align 8
  %4 = alloca %struct._HILIGHT_REC*, align 8
  store %struct._TEXT_DEST_REC* %0, %struct._TEXT_DEST_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC** %3, metadata !1600, metadata !849), !dbg !1601
  store %struct._HILIGHT_REC* %1, %struct._HILIGHT_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._HILIGHT_REC** %4, metadata !1602, metadata !849), !dbg !1603
  %5 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !1604
  %6 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %5, i32 0, i32 6, !dbg !1605
  %7 = load i32, i32* %6, align 8, !dbg !1606
  %8 = or i32 %7, 2097152, !dbg !1606
  store i32 %8, i32* %6, align 8, !dbg !1606
  %9 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !1607
  %10 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %9, i32 0, i32 5, !dbg !1609
  %11 = load i32, i32* %10, align 8, !dbg !1609
  %12 = icmp sgt i32 %11, 0, !dbg !1610
  br i1 %12, label %13, label %19, !dbg !1611

; <label>:13:                                     ; preds = %2
  %14 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !1612
  %15 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %14, i32 0, i32 5, !dbg !1613
  %16 = load i32, i32* %15, align 8, !dbg !1613
  %17 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !1614
  %18 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %17, i32 0, i32 7, !dbg !1615
  store i32 %16, i32* %18, align 4, !dbg !1616
  br label %19, !dbg !1614

; <label>:19:                                     ; preds = %13, %2
  br label %20, !dbg !1617, !llvm.loop !1618

; <label>:20:                                     ; preds = %19
  %21 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !1619
  %22 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %21, i32 0, i32 8, !dbg !1623
  %23 = load i8*, i8** %22, align 8, !dbg !1623
  %24 = icmp ne i8* %23, null, !dbg !1619
  br i1 %24, label %25, label %31, !dbg !1619

; <label>:25:                                     ; preds = %20
  %26 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !1624
  %27 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %26, i32 0, i32 8, !dbg !1627
  %28 = load i8*, i8** %27, align 8, !dbg !1627
  call void @g_free(i8* %28), !dbg !1628
  %29 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !1629
  %30 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %29, i32 0, i32 8, !dbg !1630
  store i8* null, i8** %30, align 8, !dbg !1631
  br label %31, !dbg !1632

; <label>:31:                                     ; preds = %25, %20
  br label %32, !dbg !1633

; <label>:32:                                     ; preds = %31
  %33 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !1635
  %34 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %33, i32 0, i32 4, !dbg !1637
  %35 = load i8*, i8** %34, align 8, !dbg !1637
  %36 = icmp ne i8* %35, null, !dbg !1638
  br i1 %36, label %37, label %48, !dbg !1639

; <label>:37:                                     ; preds = %32
  %38 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !1640
  %39 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %38, i32 0, i32 4, !dbg !1642
  %40 = load i8*, i8** %39, align 8, !dbg !1642
  %41 = call i32 @g_strcmp0(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0)), !dbg !1643
  %42 = icmp eq i32 %41, 0, !dbg !1644
  br i1 %42, label %43, label %48, !dbg !1645

; <label>:43:                                     ; preds = %37
  %44 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !1646
  %45 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %44, i32 0, i32 6, !dbg !1647
  %46 = load i32, i32* %45, align 8, !dbg !1648
  %47 = or i32 %46, 33554432, !dbg !1648
  store i32 %47, i32* %45, align 8, !dbg !1648
  br label %53, !dbg !1646

; <label>:48:                                     ; preds = %37, %32
  %49 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !1649
  %50 = call i8* @hilight_get_act_color(%struct._HILIGHT_REC* %49), !dbg !1650
  %51 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !1651
  %52 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %51, i32 0, i32 8, !dbg !1652
  store i8* %50, i8** %52, align 8, !dbg !1653
  br label %53

; <label>:53:                                     ; preds = %48, %43
  ret void, !dbg !1654
}

declare void @g_free(i8*) #2

declare i32 @g_strcmp0(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i8* @hilight_get_act_color(%struct._HILIGHT_REC*) #0 !dbg !1655 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._HILIGHT_REC*, align 8
  store %struct._HILIGHT_REC* %0, %struct._HILIGHT_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._HILIGHT_REC** %3, metadata !1656, metadata !849), !dbg !1657
  br label %4, !dbg !1658, !llvm.loop !1659

; <label>:4:                                      ; preds = %1
  %5 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %3, align 8, !dbg !1660
  %6 = icmp ne %struct._HILIGHT_REC* %5, null, !dbg !1664
  br i1 %6, label %7, label %8, !dbg !1660

; <label>:7:                                      ; preds = %4
  br label %9, !dbg !1665

; <label>:8:                                      ; preds = %4
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.hilight_get_act_color, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0)), !dbg !1668
  store i8* null, i8** %2, align 8, !dbg !1671
  br label %35, !dbg !1671

; <label>:9:                                      ; preds = %7
  br label %10, !dbg !1672

; <label>:10:                                     ; preds = %9
  %11 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %3, align 8, !dbg !1674
  %12 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %11, i32 0, i32 4, !dbg !1675
  %13 = load i8*, i8** %12, align 8, !dbg !1675
  %14 = icmp ne i8* %13, null, !dbg !1676
  br i1 %14, label %15, label %19, !dbg !1674

; <label>:15:                                     ; preds = %10
  %16 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %3, align 8, !dbg !1677
  %17 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %16, i32 0, i32 4, !dbg !1679
  %18 = load i8*, i8** %17, align 8, !dbg !1679
  br label %32, !dbg !1680

; <label>:19:                                     ; preds = %10
  %20 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %3, align 8, !dbg !1681
  %21 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %20, i32 0, i32 3, !dbg !1682
  %22 = load i8*, i8** %21, align 8, !dbg !1682
  %23 = icmp ne i8* %22, null, !dbg !1683
  br i1 %23, label %24, label %28, !dbg !1681

; <label>:24:                                     ; preds = %19
  %25 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %3, align 8, !dbg !1684
  %26 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %25, i32 0, i32 3, !dbg !1685
  %27 = load i8*, i8** %26, align 8, !dbg !1685
  br label %30, !dbg !1686

; <label>:28:                                     ; preds = %19
  %29 = call i8* @settings_get_str(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0)), !dbg !1687
  br label %30, !dbg !1688

; <label>:30:                                     ; preds = %28, %24
  %31 = phi i8* [ %27, %24 ], [ %29, %28 ], !dbg !1690
  br label %32, !dbg !1692

; <label>:32:                                     ; preds = %30, %15
  %33 = phi i8* [ %18, %15 ], [ %31, %30 ], !dbg !1693
  %34 = call noalias i8* @g_strdup(i8* %33), !dbg !1694
  store i8* %34, i8** %2, align 8, !dbg !1695
  br label %35, !dbg !1695

; <label>:35:                                     ; preds = %32, %8
  %36 = load i8*, i8** %2, align 8, !dbg !1696
  ret i8* %36, !dbg !1696
}

; Function Attrs: nounwind uwtable
define %struct._HILIGHT_REC* @hilight_match_nick(%struct._SERVER_REC*, i8*, i8*, i8*, i32, i8*) #0 !dbg !1697 {
  %7 = alloca %struct._SERVER_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct._HILIGHT_REC*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %7, metadata !1700, metadata !849), !dbg !1701
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1702, metadata !849), !dbg !1703
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1704, metadata !849), !dbg !1705
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1706, metadata !849), !dbg !1707
  store i32 %4, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1708, metadata !849), !dbg !1709
  store i8* %5, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1710, metadata !849), !dbg !1711
  call void @llvm.dbg.declare(metadata %struct._HILIGHT_REC** %13, metadata !1712, metadata !849), !dbg !1713
  %14 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !1714
  %15 = load i8*, i8** %8, align 8, !dbg !1715
  %16 = load i8*, i8** %9, align 8, !dbg !1716
  %17 = load i8*, i8** %10, align 8, !dbg !1717
  %18 = load i32, i32* %11, align 4, !dbg !1718
  %19 = load i8*, i8** %12, align 8, !dbg !1719
  %20 = call %struct._HILIGHT_REC* @hilight_match(%struct._SERVER_REC* %14, i8* %15, i8* %16, i8* %17, i32 %18, i8* %19, i32* null, i32* null), !dbg !1720
  store %struct._HILIGHT_REC* %20, %struct._HILIGHT_REC** %13, align 8, !dbg !1721
  %21 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %13, align 8, !dbg !1722
  %22 = icmp eq %struct._HILIGHT_REC* %21, null, !dbg !1723
  br i1 %22, label %30, label %23, !dbg !1724

; <label>:23:                                     ; preds = %6
  %24 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %13, align 8, !dbg !1725
  %25 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %24, i32 0, i32 6, !dbg !1727
  %26 = load i8, i8* %25, align 4, !dbg !1727
  %27 = and i8 %26, 1, !dbg !1727
  %28 = zext i8 %27 to i32, !dbg !1727
  %29 = icmp ne i32 %28, 0, !dbg !1725
  br i1 %29, label %31, label %30, !dbg !1728

; <label>:30:                                     ; preds = %23, %6
  br label %33, !dbg !1729

; <label>:31:                                     ; preds = %23
  %32 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %13, align 8, !dbg !1731
  br label %33, !dbg !1733

; <label>:33:                                     ; preds = %31, %30
  %34 = phi %struct._HILIGHT_REC* [ null, %30 ], [ %32, %31 ], !dbg !1734
  ret %struct._HILIGHT_REC* %34, !dbg !1736
}

; Function Attrs: nounwind uwtable
define void @hilight_text_init() #0 !dbg !1737 {
  call void @settings_add_str_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0)), !dbg !1738
  call void @settings_add_str_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0)), !dbg !1739
  call void @settings_add_level_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0)), !dbg !1740
  call void @read_settings(), !dbg !1741
  %1 = call %struct.NICKMATCH_REC* @nickmatch_init(void (%struct._GHashTable*, %struct._CHANNEL_REC*, %struct._NICK_REC*)* @hilight_nick_cache), !dbg !1742
  store %struct.NICKMATCH_REC* %1, %struct.NICKMATCH_REC** @nickmatch, align 8, !dbg !1743
  call void @read_hilight_config(), !dbg !1744
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._TEXT_DEST_REC*, i8*, i8*)* @sig_print_text to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1745
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_hilight_config to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1746
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1747
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_hilight to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1748
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_dehilight to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1749
  call void @command_set_options_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.18, i32 0, i32 0)), !dbg !1750
  ret void, !dbg !1751
}

declare void @settings_add_str_module(i8*, i8*, i8*, i8*) #2

declare void @settings_add_level_module(i8*, i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @read_settings() #0 !dbg !1752 {
  %1 = call i32 @settings_get_level(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0)), !dbg !1753
  store i32 %1, i32* @default_hilight_level, align 4, !dbg !1754
  call void @reset_level_cache(), !dbg !1755
  ret void, !dbg !1756
}

declare %struct.NICKMATCH_REC* @nickmatch_init(void (%struct._GHashTable*, %struct._CHANNEL_REC*, %struct._NICK_REC*)*) #2

; Function Attrs: nounwind uwtable
define internal void @hilight_nick_cache(%struct._GHashTable*, %struct._CHANNEL_REC*, %struct._NICK_REC*) #0 !dbg !1757 {
  %4 = alloca %struct._GHashTable*, align 8
  %5 = alloca %struct._CHANNEL_REC*, align 8
  %6 = alloca %struct._NICK_REC*, align 8
  %7 = alloca %struct._GSList*, align 8
  %8 = alloca %struct._HILIGHT_REC*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct._HILIGHT_REC*, align 8
  store %struct._GHashTable* %0, %struct._GHashTable** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %4, metadata !1758, metadata !849), !dbg !1759
  store %struct._CHANNEL_REC* %1, %struct._CHANNEL_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %5, metadata !1760, metadata !849), !dbg !1761
  store %struct._NICK_REC* %2, %struct._NICK_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %6, metadata !1762, metadata !849), !dbg !1763
  call void @llvm.dbg.declare(metadata %struct._GSList** %7, metadata !1764, metadata !849), !dbg !1765
  call void @llvm.dbg.declare(metadata %struct._HILIGHT_REC** %8, metadata !1766, metadata !849), !dbg !1767
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1768, metadata !849), !dbg !1769
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1770, metadata !849), !dbg !1771
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1772, metadata !849), !dbg !1773
  %13 = load %struct._NICK_REC*, %struct._NICK_REC** %6, align 8, !dbg !1774
  %14 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %13, i32 0, i32 4, !dbg !1776
  %15 = load i8*, i8** %14, align 8, !dbg !1776
  %16 = icmp eq i8* %15, null, !dbg !1777
  br i1 %16, label %17, label %18, !dbg !1778

; <label>:17:                                     ; preds = %3
  br label %97, !dbg !1779

; <label>:18:                                     ; preds = %3
  %19 = load %struct._NICK_REC*, %struct._NICK_REC** %6, align 8, !dbg !1780
  %20 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %19, i32 0, i32 3, !dbg !1781
  %21 = load i8*, i8** %20, align 8, !dbg !1781
  %22 = load %struct._NICK_REC*, %struct._NICK_REC** %6, align 8, !dbg !1782
  %23 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %22, i32 0, i32 4, !dbg !1783
  %24 = load i8*, i8** %23, align 8, !dbg !1783
  %25 = call noalias i8* (i8*, ...) @g_strconcat(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0), i8* %24, i8* null), !dbg !1784
  store i8* %25, i8** %9, align 8, !dbg !1785
  store i32 0, i32* %11, align 4, !dbg !1786
  store %struct._HILIGHT_REC* null, %struct._HILIGHT_REC** %8, align 8, !dbg !1787
  %26 = load %struct._GSList*, %struct._GSList** @hilights, align 8, !dbg !1788
  store %struct._GSList* %26, %struct._GSList** %7, align 8, !dbg !1790
  br label %27, !dbg !1791

; <label>:27:                                     ; preds = %82, %18
  %28 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1792
  %29 = icmp ne %struct._GSList* %28, null, !dbg !1795
  br i1 %29, label %30, label %86, !dbg !1796

; <label>:30:                                     ; preds = %27
  call void @llvm.dbg.declare(metadata %struct._HILIGHT_REC** %12, metadata !1797, metadata !849), !dbg !1799
  %31 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1800
  %32 = getelementptr inbounds %struct._GSList, %struct._GSList* %31, i32 0, i32 0, !dbg !1801
  %33 = load i8*, i8** %32, align 8, !dbg !1801
  %34 = bitcast i8* %33 to %struct._HILIGHT_REC*, !dbg !1800
  store %struct._HILIGHT_REC* %34, %struct._HILIGHT_REC** %12, align 8, !dbg !1799
  %35 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %12, align 8, !dbg !1802
  %36 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %35, i32 0, i32 6, !dbg !1804
  %37 = load i8, i8* %36, align 4, !dbg !1804
  %38 = lshr i8 %37, 2, !dbg !1804
  %39 = and i8 %38, 1, !dbg !1804
  %40 = zext i8 %39 to i32, !dbg !1804
  %41 = icmp ne i32 %40, 0, !dbg !1802
  br i1 %41, label %42, label %81, !dbg !1805

; <label>:42:                                     ; preds = %30
  %43 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %12, align 8, !dbg !1806
  %44 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %43, i32 0, i32 1, !dbg !1807
  %45 = load i8**, i8*** %44, align 8, !dbg !1807
  %46 = icmp eq i8** %45, null, !dbg !1808
  br i1 %46, label %61, label %47, !dbg !1809

; <label>:47:                                     ; preds = %42
  %48 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %5, align 8, !dbg !1810
  %49 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %48, i32 0, i32 6, !dbg !1812
  %50 = load i8*, i8** %49, align 8, !dbg !1812
  %51 = icmp ne i8* %50, null, !dbg !1813
  br i1 %51, label %52, label %81, !dbg !1814

; <label>:52:                                     ; preds = %47
  %53 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %12, align 8, !dbg !1815
  %54 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %53, i32 0, i32 1, !dbg !1817
  %55 = load i8**, i8*** %54, align 8, !dbg !1817
  %56 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %5, align 8, !dbg !1818
  %57 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %56, i32 0, i32 6, !dbg !1819
  %58 = load i8*, i8** %57, align 8, !dbg !1819
  %59 = call i32 @strarray_find(i8** %55, i8* %58), !dbg !1820
  %60 = icmp ne i32 %59, -1, !dbg !1821
  br i1 %60, label %61, label %81, !dbg !1822

; <label>:61:                                     ; preds = %52, %42
  %62 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %12, align 8, !dbg !1823
  %63 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %62, i32 0, i32 0, !dbg !1824
  %64 = load i8*, i8** %63, align 8, !dbg !1824
  %65 = load i8*, i8** %9, align 8, !dbg !1825
  %66 = call i32 @match_wildcards(i8* %64, i8* %65), !dbg !1826
  %67 = icmp ne i32 %66, 0, !dbg !1826
  br i1 %67, label %68, label %81, !dbg !1827

; <label>:68:                                     ; preds = %61
  %69 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %12, align 8, !dbg !1829
  %70 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %69, i32 0, i32 0, !dbg !1831
  %71 = load i8*, i8** %70, align 8, !dbg !1831
  %72 = call i64 @strlen(i8* %71) #6, !dbg !1832
  %73 = trunc i64 %72 to i32, !dbg !1832
  store i32 %73, i32* %10, align 4, !dbg !1833
  %74 = load i32, i32* %11, align 4, !dbg !1834
  %75 = load i32, i32* %10, align 4, !dbg !1836
  %76 = icmp slt i32 %74, %75, !dbg !1837
  br i1 %76, label %77, label %80, !dbg !1838

; <label>:77:                                     ; preds = %68
  %78 = load i32, i32* %10, align 4, !dbg !1839
  store i32 %78, i32* %11, align 4, !dbg !1841
  %79 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %12, align 8, !dbg !1842
  store %struct._HILIGHT_REC* %79, %struct._HILIGHT_REC** %8, align 8, !dbg !1843
  br label %80, !dbg !1844

; <label>:80:                                     ; preds = %77, %68
  br label %81, !dbg !1845

; <label>:81:                                     ; preds = %80, %61, %52, %47, %30
  br label %82, !dbg !1846

; <label>:82:                                     ; preds = %81
  %83 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1847
  %84 = getelementptr inbounds %struct._GSList, %struct._GSList* %83, i32 0, i32 1, !dbg !1849
  %85 = load %struct._GSList*, %struct._GSList** %84, align 8, !dbg !1849
  store %struct._GSList* %85, %struct._GSList** %7, align 8, !dbg !1850
  br label %27, !dbg !1851, !llvm.loop !1852

; <label>:86:                                     ; preds = %27
  %87 = load i8*, i8** %9, align 8, !dbg !1854
  call void @g_free(i8* %87), !dbg !1855
  %88 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %8, align 8, !dbg !1856
  %89 = icmp ne %struct._HILIGHT_REC* %88, null, !dbg !1858
  br i1 %89, label %90, label %97, !dbg !1859

; <label>:90:                                     ; preds = %86
  %91 = load %struct._GHashTable*, %struct._GHashTable** %4, align 8, !dbg !1860
  %92 = load %struct._NICK_REC*, %struct._NICK_REC** %6, align 8, !dbg !1861
  %93 = bitcast %struct._NICK_REC* %92 to i8*, !dbg !1861
  %94 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %8, align 8, !dbg !1862
  %95 = bitcast %struct._HILIGHT_REC* %94 to i8*, !dbg !1862
  %96 = call i32 @g_hash_table_insert(%struct._GHashTable* %91, i8* %93, i8* %95), !dbg !1863
  br label %97, !dbg !1863

; <label>:97:                                     ; preds = %17, %90, %86
  ret void, !dbg !1864
}

; Function Attrs: nounwind uwtable
define internal void @read_hilight_config() #0 !dbg !1865 {
  %1 = alloca %struct._CONFIG_NODE*, align 8
  %2 = alloca %struct._HILIGHT_REC*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %1, metadata !1866, metadata !849), !dbg !1867
  call void @llvm.dbg.declare(metadata %struct._HILIGHT_REC** %2, metadata !1868, metadata !849), !dbg !1869
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !1870, metadata !849), !dbg !1871
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1872, metadata !849), !dbg !1873
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1874, metadata !849), !dbg !1875
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1876, metadata !849), !dbg !1877
  call void @hilights_destroy_all(), !dbg !1878
  %7 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1879
  %8 = call %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 0), !dbg !1880
  store %struct._CONFIG_NODE* %8, %struct._CONFIG_NODE** %1, align 8, !dbg !1881
  %9 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %1, align 8, !dbg !1882
  %10 = icmp eq %struct._CONFIG_NODE* %9, null, !dbg !1884
  br i1 %10, label %11, label %12, !dbg !1885

; <label>:11:                                     ; preds = %0
  call void @reset_cache(), !dbg !1886
  br label %193, !dbg !1888

; <label>:12:                                     ; preds = %0
  %13 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %1, align 8, !dbg !1889
  %14 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %13, i32 0, i32 2, !dbg !1890
  %15 = load i8*, i8** %14, align 8, !dbg !1890
  %16 = bitcast i8* %15 to %struct._GSList*, !dbg !1889
  %17 = call %struct._GSList* @config_node_first(%struct._GSList* %16), !dbg !1891
  store %struct._GSList* %17, %struct._GSList** %3, align 8, !dbg !1892
  br label %18, !dbg !1893

; <label>:18:                                     ; preds = %189, %12
  %19 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1894
  %20 = icmp ne %struct._GSList* %19, null, !dbg !1898
  br i1 %20, label %21, label %192, !dbg !1899

; <label>:21:                                     ; preds = %18
  %22 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1900
  %23 = getelementptr inbounds %struct._GSList, %struct._GSList* %22, i32 0, i32 0, !dbg !1902
  %24 = load i8*, i8** %23, align 8, !dbg !1902
  %25 = bitcast i8* %24 to %struct._CONFIG_NODE*, !dbg !1900
  store %struct._CONFIG_NODE* %25, %struct._CONFIG_NODE** %1, align 8, !dbg !1903
  %26 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %1, align 8, !dbg !1904
  %27 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %26, i32 0, i32 0, !dbg !1906
  %28 = load i32, i32* %27, align 8, !dbg !1906
  %29 = icmp ne i32 %28, 2, !dbg !1907
  br i1 %29, label %30, label %31, !dbg !1908

; <label>:30:                                     ; preds = %21
  br label %189, !dbg !1909

; <label>:31:                                     ; preds = %21
  %32 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %1, align 8, !dbg !1910
  %33 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i8* null), !dbg !1911
  store i8* %33, i8** %4, align 8, !dbg !1912
  %34 = load i8*, i8** %4, align 8, !dbg !1913
  %35 = icmp eq i8* %34, null, !dbg !1915
  br i1 %35, label %41, label %36, !dbg !1916

; <label>:36:                                     ; preds = %31
  %37 = load i8*, i8** %4, align 8, !dbg !1917
  %38 = load i8, i8* %37, align 1, !dbg !1919
  %39 = sext i8 %38 to i32, !dbg !1919
  %40 = icmp eq i32 %39, 0, !dbg !1920
  br i1 %40, label %41, label %42, !dbg !1921

; <label>:41:                                     ; preds = %36, %31
  br label %189, !dbg !1922

; <label>:42:                                     ; preds = %36
  %43 = call noalias i8* @g_malloc0_n(i64 1, i64 64), !dbg !1923
  %44 = bitcast i8* %43 to %struct._HILIGHT_REC*, !dbg !1924
  store %struct._HILIGHT_REC* %44, %struct._HILIGHT_REC** %2, align 8, !dbg !1925
  %45 = load %struct._GSList*, %struct._GSList** @hilights, align 8, !dbg !1926
  %46 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !1927
  %47 = bitcast %struct._HILIGHT_REC* %46 to i8*, !dbg !1927
  %48 = call %struct._GSList* @g_slist_append(%struct._GSList* %45, i8* %47), !dbg !1928
  store %struct._GSList* %48, %struct._GSList** @hilights, align 8, !dbg !1929
  %49 = load i8*, i8** %4, align 8, !dbg !1930
  %50 = call noalias i8* @g_strdup(i8* %49), !dbg !1931
  %51 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !1932
  %52 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %51, i32 0, i32 0, !dbg !1933
  store i8* %50, i8** %52, align 8, !dbg !1934
  %53 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %1, align 8, !dbg !1935
  %54 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i8* null), !dbg !1936
  store i8* %54, i8** %5, align 8, !dbg !1937
  %55 = load i8*, i8** %5, align 8, !dbg !1938
  %56 = icmp eq i8* %55, null, !dbg !1939
  br i1 %56, label %62, label %57, !dbg !1940

; <label>:57:                                     ; preds = %42
  %58 = load i8*, i8** %5, align 8, !dbg !1941
  %59 = load i8, i8* %58, align 1, !dbg !1943
  %60 = sext i8 %59 to i32, !dbg !1943
  %61 = icmp eq i32 %60, 0, !dbg !1944
  br i1 %61, label %62, label %63, !dbg !1945

; <label>:62:                                     ; preds = %57, %42
  br label %66, !dbg !1946

; <label>:63:                                     ; preds = %57
  %64 = load i8*, i8** %5, align 8, !dbg !1948
  %65 = call noalias i8* @g_strdup(i8* %64), !dbg !1949
  br label %66, !dbg !1950

; <label>:66:                                     ; preds = %63, %62
  %67 = phi i8* [ null, %62 ], [ %65, %63 ], !dbg !1952
  %68 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !1954
  %69 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %68, i32 0, i32 3, !dbg !1955
  store i8* %67, i8** %69, align 8, !dbg !1956
  %70 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %1, align 8, !dbg !1957
  %71 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* null), !dbg !1958
  store i8* %71, i8** %5, align 8, !dbg !1959
  %72 = load i8*, i8** %5, align 8, !dbg !1960
  %73 = icmp eq i8* %72, null, !dbg !1961
  br i1 %73, label %79, label %74, !dbg !1962

; <label>:74:                                     ; preds = %66
  %75 = load i8*, i8** %5, align 8, !dbg !1963
  %76 = load i8, i8* %75, align 1, !dbg !1964
  %77 = sext i8 %76 to i32, !dbg !1964
  %78 = icmp eq i32 %77, 0, !dbg !1965
  br i1 %78, label %79, label %80, !dbg !1966

; <label>:79:                                     ; preds = %74, %66
  br label %83, !dbg !1967

; <label>:80:                                     ; preds = %74
  %81 = load i8*, i8** %5, align 8, !dbg !1968
  %82 = call noalias i8* @g_strdup(i8* %81), !dbg !1969
  br label %83, !dbg !1970

; <label>:83:                                     ; preds = %80, %79
  %84 = phi i8* [ null, %79 ], [ %82, %80 ], !dbg !1971
  %85 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !1972
  %86 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %85, i32 0, i32 4, !dbg !1973
  store i8* %84, i8** %86, align 8, !dbg !1974
  %87 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %1, align 8, !dbg !1975
  %88 = call i32 @config_node_get_int(%struct._CONFIG_NODE* %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 0), !dbg !1976
  %89 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !1977
  %90 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %89, i32 0, i32 2, !dbg !1978
  store i32 %88, i32* %90, align 8, !dbg !1979
  %91 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %1, align 8, !dbg !1980
  %92 = call i32 @config_node_get_int(%struct._CONFIG_NODE* %91, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i32 0), !dbg !1981
  %93 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !1982
  %94 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %93, i32 0, i32 5, !dbg !1983
  store i32 %92, i32* %94, align 8, !dbg !1984
  %95 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %1, align 8, !dbg !1985
  %96 = call i32 @config_node_get_bool(%struct._CONFIG_NODE* %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i32 1), !dbg !1986
  %97 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !1987
  %98 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %97, i32 0, i32 6, !dbg !1988
  %99 = trunc i32 %96 to i8, !dbg !1989
  %100 = load i8, i8* %98, align 4, !dbg !1989
  %101 = and i8 %99, 1, !dbg !1989
  %102 = and i8 %100, -2, !dbg !1989
  %103 = or i8 %102, %101, !dbg !1989
  store i8 %103, i8* %98, align 4, !dbg !1989
  %104 = zext i8 %101 to i32, !dbg !1989
  %105 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %1, align 8, !dbg !1990
  %106 = call i32 @config_node_get_bool(%struct._CONFIG_NODE* %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i32 1), !dbg !1991
  %107 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !1992
  %108 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %107, i32 0, i32 6, !dbg !1993
  %109 = trunc i32 %106 to i8, !dbg !1994
  %110 = load i8, i8* %108, align 4, !dbg !1994
  %111 = and i8 %109, 1, !dbg !1994
  %112 = shl i8 %111, 1, !dbg !1994
  %113 = and i8 %110, -3, !dbg !1994
  %114 = or i8 %113, %112, !dbg !1994
  store i8 %114, i8* %108, align 4, !dbg !1994
  %115 = zext i8 %111 to i32, !dbg !1994
  %116 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %1, align 8, !dbg !1995
  %117 = call i32 @config_node_get_bool(%struct._CONFIG_NODE* %116, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i32 0), !dbg !1996
  %118 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !1997
  %119 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %118, i32 0, i32 6, !dbg !1998
  %120 = trunc i32 %117 to i8, !dbg !1999
  %121 = load i8, i8* %119, align 4, !dbg !1999
  %122 = and i8 %120, 1, !dbg !1999
  %123 = shl i8 %122, 5, !dbg !1999
  %124 = and i8 %121, -33, !dbg !1999
  %125 = or i8 %124, %123, !dbg !1999
  store i8 %125, i8* %119, align 4, !dbg !1999
  %126 = zext i8 %122 to i32, !dbg !1999
  %127 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %1, align 8, !dbg !2000
  %128 = call i32 @config_node_get_bool(%struct._CONFIG_NODE* %127, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i32 0), !dbg !2001
  %129 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !2002
  %130 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %129, i32 0, i32 6, !dbg !2003
  %131 = trunc i32 %128 to i8, !dbg !2004
  %132 = load i8, i8* %130, align 4, !dbg !2004
  %133 = and i8 %131, 1, !dbg !2004
  %134 = shl i8 %133, 2, !dbg !2004
  %135 = and i8 %132, -5, !dbg !2004
  %136 = or i8 %135, %134, !dbg !2004
  store i8 %136, i8* %130, align 4, !dbg !2004
  %137 = zext i8 %133 to i32, !dbg !2004
  %138 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %1, align 8, !dbg !2005
  %139 = call i32 @config_node_get_bool(%struct._CONFIG_NODE* %138, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i32 0), !dbg !2006
  %140 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !2007
  %141 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %140, i32 0, i32 6, !dbg !2008
  %142 = trunc i32 %139 to i8, !dbg !2009
  %143 = load i8, i8* %141, align 4, !dbg !2009
  %144 = and i8 %142, 1, !dbg !2009
  %145 = shl i8 %144, 3, !dbg !2009
  %146 = and i8 %143, -9, !dbg !2009
  %147 = or i8 %146, %145, !dbg !2009
  store i8 %147, i8* %141, align 4, !dbg !2009
  %148 = zext i8 %144 to i32, !dbg !2009
  %149 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %1, align 8, !dbg !2010
  %150 = call i32 @config_node_get_bool(%struct._CONFIG_NODE* %149, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i32 0), !dbg !2011
  %151 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !2012
  %152 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %151, i32 0, i32 6, !dbg !2013
  %153 = trunc i32 %150 to i8, !dbg !2014
  %154 = load i8, i8* %152, align 4, !dbg !2014
  %155 = and i8 %153, 1, !dbg !2014
  %156 = shl i8 %155, 4, !dbg !2014
  %157 = and i8 %154, -17, !dbg !2014
  %158 = or i8 %157, %156, !dbg !2014
  store i8 %158, i8* %152, align 4, !dbg !2014
  %159 = zext i8 %155 to i32, !dbg !2014
  %160 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %1, align 8, !dbg !2015
  %161 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %160, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i8* null), !dbg !2016
  store i8* %161, i8** %6, align 8, !dbg !2017
  %162 = load i8*, i8** %6, align 8, !dbg !2018
  %163 = icmp eq i8* %162, null, !dbg !2019
  br i1 %163, label %169, label %164, !dbg !2020

; <label>:164:                                    ; preds = %83
  %165 = load i8*, i8** %6, align 8, !dbg !2021
  %166 = load i8, i8* %165, align 1, !dbg !2022
  %167 = sext i8 %166 to i32, !dbg !2022
  %168 = icmp eq i32 %167, 0, !dbg !2023
  br i1 %168, label %169, label %170, !dbg !2024

; <label>:169:                                    ; preds = %164, %83
  br label %173, !dbg !2025

; <label>:170:                                    ; preds = %164
  %171 = load i8*, i8** %6, align 8, !dbg !2026
  %172 = call noalias i8* @g_strdup(i8* %171), !dbg !2027
  br label %173, !dbg !2028

; <label>:173:                                    ; preds = %170, %169
  %174 = phi i8* [ null, %169 ], [ %172, %170 ], !dbg !2029
  %175 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !2030
  %176 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %175, i32 0, i32 8, !dbg !2031
  store i8* %174, i8** %176, align 8, !dbg !2032
  %177 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !2033
  call void @hilight_init_rec(%struct._HILIGHT_REC* %177), !dbg !2034
  %178 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !2035
  %179 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %1, align 8, !dbg !2036
  %180 = call %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC* %178, %struct._CONFIG_NODE* %179, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i32 -1), !dbg !2037
  store %struct._CONFIG_NODE* %180, %struct._CONFIG_NODE** %1, align 8, !dbg !2038
  %181 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %1, align 8, !dbg !2039
  %182 = icmp ne %struct._CONFIG_NODE* %181, null, !dbg !2041
  br i1 %182, label %183, label %188, !dbg !2042

; <label>:183:                                    ; preds = %173
  %184 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %1, align 8, !dbg !2043
  %185 = call i8** @config_node_get_list(%struct._CONFIG_NODE* %184), !dbg !2045
  %186 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !2046
  %187 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %186, i32 0, i32 1, !dbg !2047
  store i8** %185, i8*** %187, align 8, !dbg !2048
  br label %188, !dbg !2046

; <label>:188:                                    ; preds = %183, %173
  br label %189, !dbg !2049

; <label>:189:                                    ; preds = %188, %41, %30
  %190 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !2050
  %191 = call %struct._GSList* @config_node_next(%struct._GSList* %190), !dbg !2052
  store %struct._GSList* %191, %struct._GSList** %3, align 8, !dbg !2053
  br label %18, !dbg !2054, !llvm.loop !2055

; <label>:192:                                    ; preds = %18
  call void @reset_cache(), !dbg !2056
  br label %193, !dbg !2057

; <label>:193:                                    ; preds = %192, %11
  ret void, !dbg !2058
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @sig_print_text(%struct._TEXT_DEST_REC*, i8*, i8*) #0 !dbg !2060 {
  %4 = alloca %struct._TEXT_DEST_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._HILIGHT_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct._GString*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct._TEXT_DEST_REC* %0, %struct._TEXT_DEST_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC** %4, metadata !2063, metadata !849), !dbg !2064
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2065, metadata !849), !dbg !2066
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2067, metadata !849), !dbg !2068
  call void @llvm.dbg.declare(metadata %struct._HILIGHT_REC** %7, metadata !2069, metadata !849), !dbg !2070
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2071, metadata !849), !dbg !2072
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2073, metadata !849), !dbg !2074
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2075, metadata !849), !dbg !2076
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2077, metadata !849), !dbg !2078
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2079, metadata !849), !dbg !2080
  call void @llvm.dbg.declare(metadata i32* %13, metadata !2081, metadata !849), !dbg !2082
  call void @llvm.dbg.declare(metadata i32* %14, metadata !2083, metadata !849), !dbg !2084
  %21 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %4, align 8, !dbg !2085
  %22 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %21, i32 0, i32 6, !dbg !2087
  %23 = load i32, i32* %22, align 8, !dbg !2087
  %24 = and i32 %23, 16777216, !dbg !2088
  %25 = icmp ne i32 %24, 0, !dbg !2088
  br i1 %25, label %26, label %27, !dbg !2089

; <label>:26:                                     ; preds = %3
  br label %171, !dbg !2090

; <label>:27:                                     ; preds = %3
  store i32 0, i32* %12, align 4, !dbg !2091
  store i32 0, i32* %11, align 4, !dbg !2092
  %28 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %4, align 8, !dbg !2093
  %29 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %28, i32 0, i32 1, !dbg !2094
  %30 = load %struct._SERVER_REC*, %struct._SERVER_REC** %29, align 8, !dbg !2094
  %31 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %4, align 8, !dbg !2095
  %32 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %31, i32 0, i32 3, !dbg !2096
  %33 = load i8*, i8** %32, align 8, !dbg !2096
  %34 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %4, align 8, !dbg !2097
  %35 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %34, i32 0, i32 4, !dbg !2098
  %36 = load i8*, i8** %35, align 8, !dbg !2098
  %37 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %4, align 8, !dbg !2099
  %38 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %37, i32 0, i32 5, !dbg !2100
  %39 = load i8*, i8** %38, align 8, !dbg !2100
  %40 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %4, align 8, !dbg !2101
  %41 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %40, i32 0, i32 6, !dbg !2102
  %42 = load i32, i32* %41, align 8, !dbg !2102
  %43 = load i8*, i8** %6, align 8, !dbg !2103
  %44 = call %struct._HILIGHT_REC* @hilight_match(%struct._SERVER_REC* %30, i8* %33, i8* %36, i8* %39, i32 %42, i8* %43, i32* %11, i32* %12), !dbg !2104
  store %struct._HILIGHT_REC* %44, %struct._HILIGHT_REC** %7, align 8, !dbg !2105
  %45 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %7, align 8, !dbg !2106
  %46 = icmp eq %struct._HILIGHT_REC* %45, null, !dbg !2108
  br i1 %46, label %47, label %48, !dbg !2109

; <label>:47:                                     ; preds = %27
  br label %171, !dbg !2110

; <label>:48:                                     ; preds = %27
  %49 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %7, align 8, !dbg !2111
  %50 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %49, i32 0, i32 6, !dbg !2112
  %51 = load i8, i8* %50, align 4, !dbg !2112
  %52 = and i8 %51, 1, !dbg !2112
  %53 = zext i8 %52 to i32, !dbg !2112
  %54 = icmp ne i32 %53, 0, !dbg !2111
  br i1 %54, label %55, label %61, !dbg !2113

; <label>:55:                                     ; preds = %48
  %56 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %4, align 8, !dbg !2114
  %57 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %56, i32 0, i32 6, !dbg !2116
  %58 = load i32, i32* %57, align 8, !dbg !2116
  %59 = and i32 %58, 68, !dbg !2117
  %60 = icmp eq i32 %59, 4, !dbg !2118
  br label %61

; <label>:61:                                     ; preds = %55, %48
  %62 = phi i1 [ false, %48 ], [ %60, %55 ]
  %63 = zext i1 %62 to i32, !dbg !2119
  store i32 %63, i32* %14, align 4, !dbg !2121
  %64 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %4, align 8, !dbg !2122
  %65 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %64, i32 0, i32 6, !dbg !2123
  %66 = load i32, i32* %65, align 8, !dbg !2123
  store i32 %66, i32* %10, align 4, !dbg !2124
  %67 = load i32, i32* %14, align 4, !dbg !2125
  %68 = icmp ne i32 %67, 0, !dbg !2125
  br i1 %68, label %69, label %75, !dbg !2127

; <label>:69:                                     ; preds = %61
  %70 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %4, align 8, !dbg !2128
  %71 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %70, i32 0, i32 6, !dbg !2130
  %72 = load i32, i32* %71, align 8, !dbg !2130
  %73 = and i32 %72, 2097152, !dbg !2131
  %74 = icmp ne i32 %73, 0, !dbg !2131
  br i1 %74, label %75, label %82, !dbg !2132

; <label>:75:                                     ; preds = %69, %61
  %76 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %4, align 8, !dbg !2133
  %77 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %76, i32 0, i32 6, !dbg !2135
  %78 = load i32, i32* %77, align 8, !dbg !2136
  %79 = and i32 %78, -33554433, !dbg !2136
  store i32 %79, i32* %77, align 8, !dbg !2136
  %80 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %4, align 8, !dbg !2137
  %81 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %7, align 8, !dbg !2138
  call void @hilight_update_text_dest(%struct._TEXT_DEST_REC* %80, %struct._HILIGHT_REC* %81), !dbg !2139
  br label %82, !dbg !2140

; <label>:82:                                     ; preds = %75, %69
  %83 = load i32, i32* %14, align 4, !dbg !2141
  %84 = icmp ne i32 %83, 0, !dbg !2141
  br i1 %84, label %85, label %86, !dbg !2143

; <label>:85:                                     ; preds = %82
  br label %171, !dbg !2144

; <label>:86:                                     ; preds = %82
  %87 = load i32, i32* %10, align 4, !dbg !2145
  %88 = and i32 %87, 2097152, !dbg !2147
  %89 = icmp ne i32 %88, 0, !dbg !2147
  br i1 %89, label %90, label %91, !dbg !2148

; <label>:90:                                     ; preds = %86
  br label %171, !dbg !2149

; <label>:91:                                     ; preds = %86
  %92 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %7, align 8, !dbg !2151
  %93 = call i8* @hilight_get_color(%struct._HILIGHT_REC* %92), !dbg !2152
  store i8* %93, i8** %8, align 8, !dbg !2153
  %94 = load i32, i32* %12, align 4, !dbg !2154
  %95 = load i32, i32* %11, align 4, !dbg !2155
  %96 = sub nsw i32 %94, %95, !dbg !2156
  store i32 %96, i32* %13, align 4, !dbg !2157
  %97 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %7, align 8, !dbg !2158
  %98 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %97, i32 0, i32 6, !dbg !2160
  %99 = load i8, i8* %98, align 4, !dbg !2160
  %100 = lshr i8 %99, 1, !dbg !2160
  %101 = and i8 %100, 1, !dbg !2160
  %102 = zext i8 %101 to i32, !dbg !2160
  %103 = icmp ne i32 %102, 0, !dbg !2158
  br i1 %103, label %111, label %104, !dbg !2161

; <label>:104:                                    ; preds = %91
  call void @llvm.dbg.declare(metadata i8** %15, metadata !2162, metadata !849), !dbg !2164
  %105 = load i8*, i8** %5, align 8, !dbg !2165
  %106 = call i8* @strip_codes(i8* %105), !dbg !2166
  store i8* %106, i8** %15, align 8, !dbg !2164
  %107 = load i8*, i8** %8, align 8, !dbg !2167
  %108 = load i8*, i8** %15, align 8, !dbg !2168
  %109 = call noalias i8* (i8*, ...) @g_strconcat(i8* %107, i8* %108, i8* null), !dbg !2169
  store i8* %109, i8** %9, align 8, !dbg !2170
  %110 = load i8*, i8** %15, align 8, !dbg !2171
  call void @g_free(i8* %110), !dbg !2172
  br label %164, !dbg !2173

; <label>:111:                                    ; preds = %91
  call void @llvm.dbg.declare(metadata %struct._GString** %16, metadata !2174, metadata !849), !dbg !2176
  call void @llvm.dbg.declare(metadata i8** %17, metadata !2177, metadata !849), !dbg !2178
  call void @llvm.dbg.declare(metadata i32* %18, metadata !2179, metadata !849), !dbg !2180
  call void @llvm.dbg.declare(metadata i32* %19, metadata !2181, metadata !849), !dbg !2182
  call void @llvm.dbg.declare(metadata i32* %20, metadata !2183, metadata !849), !dbg !2184
  %112 = load i8*, i8** %5, align 8, !dbg !2185
  %113 = load i32, i32* %11, align 4, !dbg !2186
  %114 = call i32 @strip_real_length(i8* %112, i32 %113, i32* null, i32* null), !dbg !2187
  store i32 %114, i32* %18, align 4, !dbg !2188
  %115 = load i8*, i8** %5, align 8, !dbg !2189
  %116 = load i32, i32* %18, align 4, !dbg !2190
  %117 = sext i32 %116 to i64, !dbg !2190
  %118 = call %struct._GString* @g_string_new_len(i8* %115, i64 %117), !dbg !2191
  store %struct._GString* %118, %struct._GString** %16, align 8, !dbg !2192
  %119 = load %struct._GString*, %struct._GString** %16, align 8, !dbg !2193
  %120 = load i8*, i8** %8, align 8, !dbg !2194
  %121 = call %struct._GString* @g_string_append(%struct._GString* %119, i8* %120), !dbg !2195
  %122 = load i8*, i8** %5, align 8, !dbg !2196
  %123 = load i32, i32* %18, align 4, !dbg !2197
  %124 = sext i32 %123 to i64, !dbg !2198
  %125 = getelementptr inbounds i8, i8* %122, i64 %124, !dbg !2198
  %126 = call i8* @strip_codes(i8* %125), !dbg !2199
  store i8* %126, i8** %17, align 8, !dbg !2200
  %127 = load %struct._GString*, %struct._GString** %16, align 8, !dbg !2201
  %128 = load i8*, i8** %17, align 8, !dbg !2202
  %129 = load i32, i32* %13, align 4, !dbg !2203
  %130 = sext i32 %129 to i64, !dbg !2203
  %131 = call %struct._GString* @g_string_append_len(%struct._GString* %127, i8* %128, i64 %130), !dbg !2204
  %132 = load i8*, i8** %17, align 8, !dbg !2205
  call void @g_free(i8* %132), !dbg !2206
  %133 = load i8*, i8** %5, align 8, !dbg !2207
  %134 = load i32, i32* %12, align 4, !dbg !2208
  %135 = call i32 @strip_real_length(i8* %133, i32 %134, i32* %19, i32* %20), !dbg !2209
  store i32 %135, i32* %18, align 4, !dbg !2210
  %136 = load i32, i32* %19, align 4, !dbg !2211
  %137 = icmp sgt i32 %136, 0, !dbg !2213
  br i1 %137, label %138, label %147, !dbg !2214

; <label>:138:                                    ; preds = %111
  %139 = load %struct._GString*, %struct._GString** %16, align 8, !dbg !2215
  %140 = load i8*, i8** %5, align 8, !dbg !2216
  %141 = load i32, i32* %19, align 4, !dbg !2217
  %142 = sext i32 %141 to i64, !dbg !2218
  %143 = getelementptr inbounds i8, i8* %140, i64 %142, !dbg !2218
  %144 = load i32, i32* %20, align 4, !dbg !2219
  %145 = sext i32 %144 to i64, !dbg !2219
  %146 = call %struct._GString* @g_string_append_len(%struct._GString* %139, i8* %143, i64 %145), !dbg !2220
  br label %152, !dbg !2220

; <label>:147:                                    ; preds = %111
  %148 = load %struct._GString*, %struct._GString** %16, align 8, !dbg !2221
  %149 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %148, i8 signext 4), !dbg !2223
  %150 = load %struct._GString*, %struct._GString** %16, align 8, !dbg !2224
  %151 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %150, i8 signext 103), !dbg !2225
  br label %152

; <label>:152:                                    ; preds = %147, %138
  %153 = load %struct._GString*, %struct._GString** %16, align 8, !dbg !2226
  %154 = load i8*, i8** %5, align 8, !dbg !2227
  %155 = load i32, i32* %18, align 4, !dbg !2228
  %156 = sext i32 %155 to i64, !dbg !2229
  %157 = getelementptr inbounds i8, i8* %154, i64 %156, !dbg !2229
  %158 = call %struct._GString* @g_string_append(%struct._GString* %153, i8* %157), !dbg !2230
  %159 = load %struct._GString*, %struct._GString** %16, align 8, !dbg !2231
  %160 = getelementptr inbounds %struct._GString, %struct._GString* %159, i32 0, i32 0, !dbg !2232
  %161 = load i8*, i8** %160, align 8, !dbg !2232
  store i8* %161, i8** %9, align 8, !dbg !2233
  %162 = load %struct._GString*, %struct._GString** %16, align 8, !dbg !2234
  %163 = call i8* @g_string_free(%struct._GString* %162, i32 0), !dbg !2235
  br label %164

; <label>:164:                                    ; preds = %152, %104
  %165 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %4, align 8, !dbg !2236
  %166 = load i8*, i8** %9, align 8, !dbg !2237
  %167 = load i8*, i8** %6, align 8, !dbg !2238
  %168 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i32 3, %struct._TEXT_DEST_REC* %165, i8* %166, i8* %167), !dbg !2239
  %169 = load i8*, i8** %8, align 8, !dbg !2240
  call void @g_free(i8* %169), !dbg !2241
  %170 = load i8*, i8** %9, align 8, !dbg !2242
  call void @g_free(i8* %170), !dbg !2243
  call void @signal_stop(), !dbg !2244
  br label %171, !dbg !2245

; <label>:171:                                    ; preds = %164, %90, %85, %47, %26
  ret void, !dbg !2246
}

declare void @command_bind_full(i8*, i32, i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @cmd_hilight(i8*) #0 !dbg !2247 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._GHashTable*, align 8
  %4 = alloca %struct._HILIGHT_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2250, metadata !849), !dbg !2251
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %3, metadata !2252, metadata !849), !dbg !2253
  call void @llvm.dbg.declare(metadata %struct._HILIGHT_REC** %4, metadata !2254, metadata !849), !dbg !2255
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2256, metadata !849), !dbg !2257
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2258, metadata !849), !dbg !2259
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2260, metadata !849), !dbg !2261
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2262, metadata !849), !dbg !2263
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2264, metadata !849), !dbg !2265
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2266, metadata !849), !dbg !2267
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2268, metadata !849), !dbg !2269
  call void @llvm.dbg.declare(metadata i8*** %12, metadata !2270, metadata !849), !dbg !2271
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2272, metadata !849), !dbg !2273
  br label %14, !dbg !2274, !llvm.loop !2275

; <label>:14:                                     ; preds = %1
  %15 = load i8*, i8** %2, align 8, !dbg !2276
  %16 = icmp ne i8* %15, null, !dbg !2280
  br i1 %16, label %17, label %18, !dbg !2276

; <label>:17:                                     ; preds = %14
  br label %19, !dbg !2281

; <label>:18:                                     ; preds = %14
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.cmd_hilight, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0)), !dbg !2284
  br label %301, !dbg !2287

; <label>:19:                                     ; preds = %17
  br label %20, !dbg !2288

; <label>:20:                                     ; preds = %19
  %21 = load i8*, i8** %2, align 8, !dbg !2290
  %22 = load i8, i8* %21, align 1, !dbg !2292
  %23 = sext i8 %22 to i32, !dbg !2292
  %24 = icmp eq i32 %23, 0, !dbg !2293
  br i1 %24, label %25, label %26, !dbg !2294

; <label>:25:                                     ; preds = %20
  call void @cmd_hilight_show(), !dbg !2295
  br label %301, !dbg !2297

; <label>:26:                                     ; preds = %20
  %27 = load i8*, i8** %2, align 8, !dbg !2298
  %28 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %27, i8** %13, i32 24577, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), %struct._GHashTable** %3, i8** %10), !dbg !2300
  %29 = icmp ne i32 %28, 0, !dbg !2300
  br i1 %29, label %31, label %30, !dbg !2301

; <label>:30:                                     ; preds = %26
  br label %301, !dbg !2302

; <label>:31:                                     ; preds = %26
  %32 = load %struct._GHashTable*, %struct._GHashTable** %3, align 8, !dbg !2303
  %33 = call i8* @g_hash_table_lookup(%struct._GHashTable* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0)), !dbg !2304
  store i8* %33, i8** %9, align 8, !dbg !2305
  %34 = load %struct._GHashTable*, %struct._GHashTable** %3, align 8, !dbg !2306
  %35 = call i8* @g_hash_table_lookup(%struct._GHashTable* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0)), !dbg !2307
  store i8* %35, i8** %7, align 8, !dbg !2308
  %36 = load %struct._GHashTable*, %struct._GHashTable** %3, align 8, !dbg !2309
  %37 = call i8* @g_hash_table_lookup(%struct._GHashTable* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0)), !dbg !2310
  store i8* %37, i8** %8, align 8, !dbg !2311
  %38 = load %struct._GHashTable*, %struct._GHashTable** %3, align 8, !dbg !2312
  %39 = call i8* @g_hash_table_lookup(%struct._GHashTable* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0)), !dbg !2313
  store i8* %39, i8** %5, align 8, !dbg !2314
  %40 = load %struct._GHashTable*, %struct._GHashTable** %3, align 8, !dbg !2315
  %41 = call i8* @g_hash_table_lookup(%struct._GHashTable* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0)), !dbg !2316
  store i8* %41, i8** %6, align 8, !dbg !2317
  %42 = load %struct._GHashTable*, %struct._GHashTable** %3, align 8, !dbg !2318
  %43 = call i8* @g_hash_table_lookup(%struct._GHashTable* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0)), !dbg !2319
  store i8* %43, i8** %11, align 8, !dbg !2320
  %44 = load i8*, i8** %10, align 8, !dbg !2321
  %45 = load i8, i8* %44, align 1, !dbg !2323
  %46 = sext i8 %45 to i32, !dbg !2323
  %47 = icmp eq i32 %46, 0, !dbg !2324
  br i1 %47, label %48, label %55, !dbg !2325

; <label>:48:                                     ; preds = %31
  br label %49, !dbg !2326, !llvm.loop !2328

; <label>:49:                                     ; preds = %48
  %50 = load i8*, i8** %13, align 8, !dbg !2330
  call void @cmd_params_free(i8* %50), !dbg !2333
  br label %51, !dbg !2334, !llvm.loop !2335

; <label>:51:                                     ; preds = %49
  %52 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !2337
  call void @signal_stop(), !dbg !2340
  br label %301, !dbg !2342
                                                  ; No predecessors!
  br label %54, !dbg !2343

; <label>:54:                                     ; preds = %53
  br label %55, !dbg !2345

; <label>:55:                                     ; preds = %54, %31
  %56 = load i8*, i8** %9, align 8, !dbg !2347
  %57 = icmp eq i8* %56, null, !dbg !2348
  br i1 %57, label %63, label %58, !dbg !2349

; <label>:58:                                     ; preds = %55
  %59 = load i8*, i8** %9, align 8, !dbg !2350
  %60 = load i8, i8* %59, align 1, !dbg !2352
  %61 = sext i8 %60 to i32, !dbg !2352
  %62 = icmp eq i32 %61, 0, !dbg !2353
  br i1 %62, label %63, label %64, !dbg !2354

; <label>:63:                                     ; preds = %58, %55
  br label %67, !dbg !2355

; <label>:64:                                     ; preds = %58
  %65 = load i8*, i8** %9, align 8, !dbg !2357
  %66 = call noalias i8** @g_strsplit(i8* %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0), i32 -1), !dbg !2358
  br label %67, !dbg !2359

; <label>:67:                                     ; preds = %64, %63
  %68 = phi i8** [ null, %63 ], [ %66, %64 ], !dbg !2361
  store i8** %68, i8*** %12, align 8, !dbg !2363
  %69 = load i8*, i8** %10, align 8, !dbg !2364
  %70 = load i8**, i8*** %12, align 8, !dbg !2365
  %71 = call %struct._HILIGHT_REC* @hilight_find(i8* %69, i8** %70), !dbg !2366
  store %struct._HILIGHT_REC* %71, %struct._HILIGHT_REC** %4, align 8, !dbg !2367
  %72 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !2368
  %73 = icmp eq %struct._HILIGHT_REC* %72, null, !dbg !2370
  br i1 %73, label %74, label %94, !dbg !2371

; <label>:74:                                     ; preds = %67
  %75 = call noalias i8* @g_malloc0_n(i64 1, i64 64), !dbg !2372
  %76 = bitcast i8* %75 to %struct._HILIGHT_REC*, !dbg !2374
  store %struct._HILIGHT_REC* %76, %struct._HILIGHT_REC** %4, align 8, !dbg !2375
  %77 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !2376
  %78 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %77, i32 0, i32 6, !dbg !2377
  %79 = load i8, i8* %78, align 4, !dbg !2378
  %80 = and i8 %79, -2, !dbg !2378
  %81 = or i8 %80, 1, !dbg !2378
  store i8 %81, i8* %78, align 4, !dbg !2378
  %82 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !2379
  %83 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %82, i32 0, i32 6, !dbg !2380
  %84 = load i8, i8* %83, align 4, !dbg !2381
  %85 = and i8 %84, -3, !dbg !2381
  %86 = or i8 %85, 2, !dbg !2381
  store i8 %86, i8* %83, align 4, !dbg !2381
  %87 = load i8*, i8** %10, align 8, !dbg !2382
  %88 = call noalias i8* @g_strdup(i8* %87), !dbg !2383
  %89 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !2384
  %90 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %89, i32 0, i32 0, !dbg !2385
  store i8* %88, i8** %90, align 8, !dbg !2386
  %91 = load i8**, i8*** %12, align 8, !dbg !2387
  %92 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !2388
  %93 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %92, i32 0, i32 1, !dbg !2389
  store i8** %91, i8*** %93, align 8, !dbg !2390
  br label %96, !dbg !2391

; <label>:94:                                     ; preds = %67
  %95 = load i8**, i8*** %12, align 8, !dbg !2392
  call void @g_strfreev(i8** %95), !dbg !2394
  br label %96

; <label>:96:                                     ; preds = %94, %74
  %97 = load i8*, i8** %7, align 8, !dbg !2395
  %98 = icmp eq i8* %97, null, !dbg !2396
  br i1 %98, label %104, label %99, !dbg !2397

; <label>:99:                                     ; preds = %96
  %100 = load i8*, i8** %7, align 8, !dbg !2398
  %101 = load i8, i8* %100, align 1, !dbg !2399
  %102 = sext i8 %101 to i32, !dbg !2399
  %103 = icmp eq i32 %102, 0, !dbg !2400
  br i1 %103, label %104, label %105, !dbg !2401

; <label>:104:                                    ; preds = %99, %96
  br label %109, !dbg !2402

; <label>:105:                                    ; preds = %99
  %106 = load i8*, i8** %7, align 8, !dbg !2403
  %107 = call i8* @replace_chars(i8* %106, i8 signext 44, i8 signext 32), !dbg !2404
  %108 = call i32 @level2bits(i8* %107, i32* null), !dbg !2405
  br label %109, !dbg !2406

; <label>:109:                                    ; preds = %105, %104
  %110 = phi i32 [ 0, %104 ], [ %108, %105 ], !dbg !2407
  %111 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !2408
  %112 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %111, i32 0, i32 2, !dbg !2409
  store i32 %110, i32* %112, align 8, !dbg !2410
  %113 = load i8*, i8** %8, align 8, !dbg !2411
  %114 = icmp eq i8* %113, null, !dbg !2412
  br i1 %114, label %115, label %116, !dbg !2411

; <label>:115:                                    ; preds = %109
  br label %119, !dbg !2413

; <label>:116:                                    ; preds = %109
  %117 = load i8*, i8** %8, align 8, !dbg !2414
  %118 = call i32 @atoi(i8* %117) #6, !dbg !2415
  br label %119, !dbg !2416

; <label>:119:                                    ; preds = %116, %115
  %120 = phi i32 [ 0, %115 ], [ %118, %116 ], !dbg !2417
  %121 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !2418
  %122 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %121, i32 0, i32 5, !dbg !2419
  store i32 %120, i32* %122, align 8, !dbg !2420
  %123 = load %struct._GHashTable*, %struct._GHashTable** %3, align 8, !dbg !2421
  %124 = call i8* @g_hash_table_lookup(%struct._GHashTable* %123, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0)), !dbg !2423
  %125 = icmp ne i8* %124, null, !dbg !2424
  br i1 %125, label %126, label %135, !dbg !2425

; <label>:126:                                    ; preds = %119
  %127 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !2426
  %128 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %127, i32 0, i32 6, !dbg !2428
  %129 = load i8, i8* %128, align 4, !dbg !2429
  %130 = and i8 %129, -3, !dbg !2429
  store i8 %130, i8* %128, align 4, !dbg !2429
  %131 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !2430
  %132 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %131, i32 0, i32 6, !dbg !2431
  %133 = load i8, i8* %132, align 4, !dbg !2432
  %134 = and i8 %133, -2, !dbg !2432
  store i8 %134, i8* %132, align 4, !dbg !2432
  br label %135, !dbg !2433

; <label>:135:                                    ; preds = %126, %119
  %136 = load %struct._GHashTable*, %struct._GHashTable** %3, align 8, !dbg !2434
  %137 = call i8* @g_hash_table_lookup(%struct._GHashTable* %136, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0)), !dbg !2436
  %138 = icmp ne i8* %137, null, !dbg !2437
  br i1 %138, label %139, label %149, !dbg !2438

; <label>:139:                                    ; preds = %135
  %140 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !2439
  %141 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %140, i32 0, i32 6, !dbg !2441
  %142 = load i8, i8* %141, align 4, !dbg !2442
  %143 = and i8 %142, -3, !dbg !2442
  %144 = or i8 %143, 2, !dbg !2442
  store i8 %144, i8* %141, align 4, !dbg !2442
  %145 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !2443
  %146 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %145, i32 0, i32 6, !dbg !2444
  %147 = load i8, i8* %146, align 4, !dbg !2445
  %148 = and i8 %147, -2, !dbg !2445
  store i8 %148, i8* %146, align 4, !dbg !2445
  br label %149, !dbg !2446

; <label>:149:                                    ; preds = %139, %135
  %150 = load %struct._GHashTable*, %struct._GHashTable** %3, align 8, !dbg !2447
  %151 = call i8* @g_hash_table_lookup(%struct._GHashTable* %150, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0)), !dbg !2449
  %152 = icmp ne i8* %151, null, !dbg !2450
  br i1 %152, label %153, label %159, !dbg !2451

; <label>:153:                                    ; preds = %149
  %154 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !2452
  %155 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %154, i32 0, i32 6, !dbg !2453
  %156 = load i8, i8* %155, align 4, !dbg !2454
  %157 = and i8 %156, -2, !dbg !2454
  %158 = or i8 %157, 1, !dbg !2454
  store i8 %158, i8* %155, align 4, !dbg !2454
  br label %159, !dbg !2452

; <label>:159:                                    ; preds = %153, %149
  %160 = load %struct._GHashTable*, %struct._GHashTable** %3, align 8, !dbg !2455
  %161 = call i8* @g_hash_table_lookup(%struct._GHashTable* %160, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0)), !dbg !2456
  %162 = icmp ne i8* %161, null, !dbg !2457
  %163 = zext i1 %162 to i32, !dbg !2457
  %164 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !2458
  %165 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %164, i32 0, i32 6, !dbg !2459
  %166 = trunc i32 %163 to i8, !dbg !2460
  %167 = load i8, i8* %165, align 4, !dbg !2460
  %168 = and i8 %166, 1, !dbg !2460
  %169 = shl i8 %168, 2, !dbg !2460
  %170 = and i8 %167, -5, !dbg !2460
  %171 = or i8 %170, %169, !dbg !2460
  store i8 %171, i8* %165, align 4, !dbg !2460
  %172 = zext i8 %168 to i32, !dbg !2460
  %173 = load %struct._GHashTable*, %struct._GHashTable** %3, align 8, !dbg !2461
  %174 = call i8* @g_hash_table_lookup(%struct._GHashTable* %173, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0)), !dbg !2462
  %175 = icmp ne i8* %174, null, !dbg !2463
  %176 = zext i1 %175 to i32, !dbg !2463
  %177 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !2464
  %178 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %177, i32 0, i32 6, !dbg !2465
  %179 = trunc i32 %176 to i8, !dbg !2466
  %180 = load i8, i8* %178, align 4, !dbg !2466
  %181 = and i8 %179, 1, !dbg !2466
  %182 = shl i8 %181, 3, !dbg !2466
  %183 = and i8 %180, -9, !dbg !2466
  %184 = or i8 %183, %182, !dbg !2466
  store i8 %184, i8* %178, align 4, !dbg !2466
  %185 = zext i8 %181 to i32, !dbg !2466
  %186 = load %struct._GHashTable*, %struct._GHashTable** %3, align 8, !dbg !2467
  %187 = call i8* @g_hash_table_lookup(%struct._GHashTable* %186, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0)), !dbg !2468
  %188 = icmp ne i8* %187, null, !dbg !2469
  %189 = zext i1 %188 to i32, !dbg !2469
  %190 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !2470
  %191 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %190, i32 0, i32 6, !dbg !2471
  %192 = trunc i32 %189 to i8, !dbg !2472
  %193 = load i8, i8* %191, align 4, !dbg !2472
  %194 = and i8 %192, 1, !dbg !2472
  %195 = shl i8 %194, 4, !dbg !2472
  %196 = and i8 %193, -17, !dbg !2472
  %197 = or i8 %196, %195, !dbg !2472
  store i8 %197, i8* %191, align 4, !dbg !2472
  %198 = zext i8 %194 to i32, !dbg !2472
  %199 = load %struct._GHashTable*, %struct._GHashTable** %3, align 8, !dbg !2473
  %200 = call i8* @g_hash_table_lookup(%struct._GHashTable* %199, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0)), !dbg !2474
  %201 = icmp ne i8* %200, null, !dbg !2475
  %202 = zext i1 %201 to i32, !dbg !2475
  %203 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !2476
  %204 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %203, i32 0, i32 6, !dbg !2477
  %205 = trunc i32 %202 to i8, !dbg !2478
  %206 = load i8, i8* %204, align 4, !dbg !2478
  %207 = and i8 %205, 1, !dbg !2478
  %208 = shl i8 %207, 5, !dbg !2478
  %209 = and i8 %206, -33, !dbg !2478
  %210 = or i8 %209, %208, !dbg !2478
  store i8 %210, i8* %204, align 4, !dbg !2478
  %211 = zext i8 %207 to i32, !dbg !2478
  %212 = load i8*, i8** %5, align 8, !dbg !2479
  %213 = icmp ne i8* %212, null, !dbg !2481
  br i1 %213, label %214, label %238, !dbg !2482

; <label>:214:                                    ; preds = %159
  br label %215, !dbg !2483, !llvm.loop !2485

; <label>:215:                                    ; preds = %214
  %216 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !2486
  %217 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %216, i32 0, i32 3, !dbg !2490
  %218 = load i8*, i8** %217, align 8, !dbg !2490
  %219 = icmp ne i8* %218, null, !dbg !2486
  br i1 %219, label %220, label %226, !dbg !2486

; <label>:220:                                    ; preds = %215
  %221 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !2491
  %222 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %221, i32 0, i32 3, !dbg !2494
  %223 = load i8*, i8** %222, align 8, !dbg !2494
  call void @g_free(i8* %223), !dbg !2495
  %224 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !2496
  %225 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %224, i32 0, i32 3, !dbg !2497
  store i8* null, i8** %225, align 8, !dbg !2498
  br label %226, !dbg !2499

; <label>:226:                                    ; preds = %220, %215
  br label %227, !dbg !2500

; <label>:227:                                    ; preds = %226
  %228 = load i8*, i8** %5, align 8, !dbg !2502
  %229 = load i8, i8* %228, align 1, !dbg !2504
  %230 = sext i8 %229 to i32, !dbg !2504
  %231 = icmp ne i32 %230, 0, !dbg !2505
  br i1 %231, label %232, label %237, !dbg !2506

; <label>:232:                                    ; preds = %227
  %233 = load i8*, i8** %5, align 8, !dbg !2507
  %234 = call noalias i8* @g_strdup(i8* %233), !dbg !2508
  %235 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !2509
  %236 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %235, i32 0, i32 3, !dbg !2510
  store i8* %234, i8** %236, align 8, !dbg !2511
  br label %237, !dbg !2509

; <label>:237:                                    ; preds = %232, %227
  br label %238, !dbg !2512

; <label>:238:                                    ; preds = %237, %159
  %239 = load i8*, i8** %6, align 8, !dbg !2513
  %240 = icmp ne i8* %239, null, !dbg !2515
  br i1 %240, label %241, label %265, !dbg !2516

; <label>:241:                                    ; preds = %238
  br label %242, !dbg !2517, !llvm.loop !2519

; <label>:242:                                    ; preds = %241
  %243 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !2520
  %244 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %243, i32 0, i32 4, !dbg !2524
  %245 = load i8*, i8** %244, align 8, !dbg !2524
  %246 = icmp ne i8* %245, null, !dbg !2520
  br i1 %246, label %247, label %253, !dbg !2520

; <label>:247:                                    ; preds = %242
  %248 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !2525
  %249 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %248, i32 0, i32 4, !dbg !2528
  %250 = load i8*, i8** %249, align 8, !dbg !2528
  call void @g_free(i8* %250), !dbg !2529
  %251 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !2530
  %252 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %251, i32 0, i32 4, !dbg !2531
  store i8* null, i8** %252, align 8, !dbg !2532
  br label %253, !dbg !2533

; <label>:253:                                    ; preds = %247, %242
  br label %254, !dbg !2534

; <label>:254:                                    ; preds = %253
  %255 = load i8*, i8** %6, align 8, !dbg !2536
  %256 = load i8, i8* %255, align 1, !dbg !2538
  %257 = sext i8 %256 to i32, !dbg !2538
  %258 = icmp ne i32 %257, 0, !dbg !2539
  br i1 %258, label %259, label %264, !dbg !2540

; <label>:259:                                    ; preds = %254
  %260 = load i8*, i8** %6, align 8, !dbg !2541
  %261 = call noalias i8* @g_strdup(i8* %260), !dbg !2542
  %262 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !2543
  %263 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %262, i32 0, i32 4, !dbg !2544
  store i8* %261, i8** %263, align 8, !dbg !2545
  br label %264, !dbg !2543

; <label>:264:                                    ; preds = %259, %254
  br label %265, !dbg !2546

; <label>:265:                                    ; preds = %264, %238
  %266 = load i8*, i8** %11, align 8, !dbg !2547
  %267 = icmp ne i8* %266, null, !dbg !2549
  br i1 %267, label %268, label %292, !dbg !2550

; <label>:268:                                    ; preds = %265
  br label %269, !dbg !2551, !llvm.loop !2553

; <label>:269:                                    ; preds = %268
  %270 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !2554
  %271 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %270, i32 0, i32 8, !dbg !2558
  %272 = load i8*, i8** %271, align 8, !dbg !2558
  %273 = icmp ne i8* %272, null, !dbg !2554
  br i1 %273, label %274, label %280, !dbg !2554

; <label>:274:                                    ; preds = %269
  %275 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !2559
  %276 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %275, i32 0, i32 8, !dbg !2562
  %277 = load i8*, i8** %276, align 8, !dbg !2562
  call void @g_free(i8* %277), !dbg !2563
  %278 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !2564
  %279 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %278, i32 0, i32 8, !dbg !2565
  store i8* null, i8** %279, align 8, !dbg !2566
  br label %280, !dbg !2567

; <label>:280:                                    ; preds = %274, %269
  br label %281, !dbg !2568

; <label>:281:                                    ; preds = %280
  %282 = load i8*, i8** %11, align 8, !dbg !2570
  %283 = load i8, i8* %282, align 1, !dbg !2572
  %284 = sext i8 %283 to i32, !dbg !2572
  %285 = icmp ne i32 %284, 0, !dbg !2573
  br i1 %285, label %286, label %291, !dbg !2574

; <label>:286:                                    ; preds = %281
  %287 = load i8*, i8** %11, align 8, !dbg !2575
  %288 = call noalias i8* @g_strdup(i8* %287), !dbg !2576
  %289 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !2577
  %290 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %289, i32 0, i32 8, !dbg !2578
  store i8* %288, i8** %290, align 8, !dbg !2579
  br label %291, !dbg !2577

; <label>:291:                                    ; preds = %286, %281
  br label %292, !dbg !2580

; <label>:292:                                    ; preds = %291, %265
  %293 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !2581
  call void @hilight_create(%struct._HILIGHT_REC* %293), !dbg !2582
  %294 = load %struct._GSList*, %struct._GSList** @hilights, align 8, !dbg !2583
  %295 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !2584
  %296 = bitcast %struct._HILIGHT_REC* %295 to i8*, !dbg !2584
  %297 = call i32 @g_slist_index(%struct._GSList* %294, i8* %296), !dbg !2585
  %298 = add nsw i32 %297, 1, !dbg !2586
  %299 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !2587
  call void @hilight_print(i32 %298, %struct._HILIGHT_REC* %299), !dbg !2588
  %300 = load i8*, i8** %13, align 8, !dbg !2589
  call void @cmd_params_free(i8* %300), !dbg !2590
  call void @reset_cache(), !dbg !2591
  br label %301, !dbg !2592

; <label>:301:                                    ; preds = %292, %51, %30, %25, %18
  ret void, !dbg !2593
}

; Function Attrs: nounwind uwtable
define internal void @cmd_dehilight(i8*) #0 !dbg !2594 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._HILIGHT_REC*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca [2 x i8*], align 16
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2595, metadata !849), !dbg !2596
  call void @llvm.dbg.declare(metadata %struct._HILIGHT_REC** %3, metadata !2597, metadata !849), !dbg !2598
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !2599, metadata !849), !dbg !2600
  %6 = load i8*, i8** %2, align 8, !dbg !2601
  %7 = call i32 @is_numeric(i8* %6, i8 signext 32), !dbg !2603
  %8 = icmp ne i32 %7, 0, !dbg !2603
  br i1 %8, label %9, label %25, !dbg !2604

; <label>:9:                                      ; preds = %1
  %10 = load %struct._GSList*, %struct._GSList** @hilights, align 8, !dbg !2605
  %11 = load i8*, i8** %2, align 8, !dbg !2607
  %12 = call i32 @atoi(i8* %11) #6, !dbg !2608
  %13 = sub nsw i32 %12, 1, !dbg !2609
  %14 = call %struct._GSList* @g_slist_nth(%struct._GSList* %10, i32 %13), !dbg !2610
  store %struct._GSList* %14, %struct._GSList** %4, align 8, !dbg !2612
  %15 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2613
  %16 = icmp eq %struct._GSList* %15, null, !dbg !2614
  br i1 %16, label %17, label %18, !dbg !2613

; <label>:17:                                     ; preds = %9
  br label %22, !dbg !2615

; <label>:18:                                     ; preds = %9
  %19 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2616
  %20 = getelementptr inbounds %struct._GSList, %struct._GSList* %19, i32 0, i32 0, !dbg !2618
  %21 = load i8*, i8** %20, align 8, !dbg !2618
  br label %22, !dbg !2619

; <label>:22:                                     ; preds = %18, %17
  %23 = phi i8* [ null, %17 ], [ %21, %18 ], !dbg !2620
  %24 = bitcast i8* %23 to %struct._HILIGHT_REC*, !dbg !2620
  store %struct._HILIGHT_REC* %24, %struct._HILIGHT_REC** %3, align 8, !dbg !2622
  br label %30, !dbg !2623

; <label>:25:                                     ; preds = %1
  call void @llvm.dbg.declare(metadata [2 x i8*]* %5, metadata !2624, metadata !849), !dbg !2627
  %26 = bitcast [2 x i8*]* %5 to i8*, !dbg !2627
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* bitcast ([2 x i8*]* @cmd_dehilight.chans to i8*), i64 16, i32 16, i1 false), !dbg !2627
  %27 = load i8*, i8** %2, align 8, !dbg !2628
  %28 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i32 0, i32 0, !dbg !2629
  %29 = call %struct._HILIGHT_REC* @hilight_find(i8* %27, i8** %28), !dbg !2630
  store %struct._HILIGHT_REC* %29, %struct._HILIGHT_REC** %3, align 8, !dbg !2631
  br label %30

; <label>:30:                                     ; preds = %25, %22
  %31 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %3, align 8, !dbg !2632
  %32 = icmp eq %struct._HILIGHT_REC* %31, null, !dbg !2634
  br i1 %32, label %33, label %35, !dbg !2635

; <label>:33:                                     ; preds = %30
  %34 = load i8*, i8** %2, align 8, !dbg !2636
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 116, i8* %34), !dbg !2637
  br label %40, !dbg !2637

; <label>:35:                                     ; preds = %30
  %36 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %3, align 8, !dbg !2638
  %37 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %36, i32 0, i32 0, !dbg !2640
  %38 = load i8*, i8** %37, align 8, !dbg !2640
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 117, i8* %38), !dbg !2641
  %39 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %3, align 8, !dbg !2642
  call void @hilight_remove(%struct._HILIGHT_REC* %39), !dbg !2643
  call void @reset_cache(), !dbg !2644
  br label %40

; <label>:40:                                     ; preds = %35, %33
  ret void, !dbg !2645
}

declare void @command_set_options_module(i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @hilight_text_deinit() #0 !dbg !2646 {
  call void @hilights_destroy_all(), !dbg !2647
  %1 = load %struct.NICKMATCH_REC*, %struct.NICKMATCH_REC** @nickmatch, align 8, !dbg !2648
  call void @nickmatch_deinit(%struct.NICKMATCH_REC* %1), !dbg !2649
  call void @signal_remove_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._TEXT_DEST_REC*, i8*, i8*)* @sig_print_text to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2650
  call void @signal_remove_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_hilight_config to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2651
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2652
  call void @command_unbind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_hilight to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2653
  call void @command_unbind_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_dehilight to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2654
  ret void, !dbg !2655
}

; Function Attrs: nounwind uwtable
define internal void @hilights_destroy_all() #0 !dbg !2656 {
  %1 = load %struct._GSList*, %struct._GSList** @hilights, align 8, !dbg !2657
  call void @g_slist_foreach(%struct._GSList* %1, void (i8*, i8*)* bitcast (void (%struct._HILIGHT_REC*)* @hilight_destroy to void (i8*, i8*)*), i8* null), !dbg !2658
  %2 = load %struct._GSList*, %struct._GSList** @hilights, align 8, !dbg !2659
  call void @g_slist_free(%struct._GSList* %2), !dbg !2660
  store %struct._GSList* null, %struct._GSList** @hilights, align 8, !dbg !2661
  ret void, !dbg !2662
}

declare void @nickmatch_deinit(%struct.NICKMATCH_REC*) #2

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare void @command_unbind_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC*, i8*, i32) #2

declare void @config_node_list_remove(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i32) #2

declare i32 @g_slist_index(%struct._GSList*, i8*) #2

declare %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i32) #2

declare void @config_node_set_str(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i8*) #2

declare void @config_node_set_int(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i32) #2

declare void @config_node_set_bool(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i32) #2

declare void @config_node_add_list(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8**) #2

declare void @i_regex_unref(%struct._GRegex*) #2

declare %struct._GRegex* @i_regex_new(i8*, i32, i32, %struct._GError**) #2

declare void @g_strfreev(i8**) #2

declare i32 @i_regex_match(%struct._GRegex*, i8*, i32, %struct._MatchInfo**) #2

declare i32 @i_match_info_matches(%struct._MatchInfo*) #2

declare i32 @i_match_info_fetch_pos(%struct._MatchInfo*, i32, i32*, i32*) #2

declare void @i_match_info_free(%struct._MatchInfo*) #2

declare i8* @strstr_full(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #3

declare i8* @stristr_full(i8*, i8*) #2

declare i8* @stristr(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare noalias i8* @g_strdup(i8*) #2

declare i32 @settings_get_level(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @reset_level_cache() #0 !dbg !2663 {
  %1 = alloca %struct._GSList*, align 8
  %2 = alloca %struct._HILIGHT_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %1, metadata !2664, metadata !849), !dbg !2665
  %3 = load i32, i32* @default_hilight_level, align 4, !dbg !2666
  %4 = xor i32 %3, -1, !dbg !2667
  %5 = and i32 4194303, %4, !dbg !2668
  store i32 %5, i32* @never_hilight_level, align 4, !dbg !2669
  %6 = load %struct._GSList*, %struct._GSList** @hilights, align 8, !dbg !2670
  store %struct._GSList* %6, %struct._GSList** %1, align 8, !dbg !2672
  br label %7, !dbg !2673

; <label>:7:                                      ; preds = %29, %0
  %8 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !2674
  %9 = icmp ne %struct._GSList* %8, null, !dbg !2677
  br i1 %9, label %10, label %33, !dbg !2678

; <label>:10:                                     ; preds = %7
  call void @llvm.dbg.declare(metadata %struct._HILIGHT_REC** %2, metadata !2679, metadata !849), !dbg !2681
  %11 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !2682
  %12 = getelementptr inbounds %struct._GSList, %struct._GSList* %11, i32 0, i32 0, !dbg !2683
  %13 = load i8*, i8** %12, align 8, !dbg !2683
  %14 = bitcast i8* %13 to %struct._HILIGHT_REC*, !dbg !2682
  store %struct._HILIGHT_REC* %14, %struct._HILIGHT_REC** %2, align 8, !dbg !2681
  %15 = load i32, i32* @never_hilight_level, align 4, !dbg !2684
  %16 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !2686
  %17 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %16, i32 0, i32 2, !dbg !2687
  %18 = load i32, i32* %17, align 8, !dbg !2687
  %19 = and i32 %15, %18, !dbg !2688
  %20 = icmp ne i32 %19, 0, !dbg !2688
  br i1 %20, label %21, label %28, !dbg !2689

; <label>:21:                                     ; preds = %10
  %22 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %2, align 8, !dbg !2690
  %23 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %22, i32 0, i32 2, !dbg !2691
  %24 = load i32, i32* %23, align 8, !dbg !2691
  %25 = xor i32 %24, -1, !dbg !2692
  %26 = load i32, i32* @never_hilight_level, align 4, !dbg !2693
  %27 = and i32 %26, %25, !dbg !2693
  store i32 %27, i32* @never_hilight_level, align 4, !dbg !2693
  br label %28, !dbg !2694

; <label>:28:                                     ; preds = %21, %10
  br label %29, !dbg !2695

; <label>:29:                                     ; preds = %28
  %30 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !2696
  %31 = getelementptr inbounds %struct._GSList, %struct._GSList* %30, i32 0, i32 1, !dbg !2698
  %32 = load %struct._GSList*, %struct._GSList** %31, align 8, !dbg !2698
  store %struct._GSList* %32, %struct._GSList** %1, align 8, !dbg !2699
  br label %7, !dbg !2700, !llvm.loop !2701

; <label>:33:                                     ; preds = %7
  ret void, !dbg !2703
}

declare noalias i8* @g_strconcat(i8*, ...) #2

declare i32 @match_wildcards(i8*, i8*) #2

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @reset_cache() #0 !dbg !2704 {
  call void @reset_level_cache(), !dbg !2705
  %1 = load %struct.NICKMATCH_REC*, %struct.NICKMATCH_REC** @nickmatch, align 8, !dbg !2706
  call void @nickmatch_rebuild(%struct.NICKMATCH_REC* %1), !dbg !2707
  ret void, !dbg !2708
}

declare %struct._GSList* @config_node_first(%struct._GSList*) #2

declare i8* @config_node_get_str(%struct._CONFIG_NODE*, i8*, i8*) #2

declare noalias i8* @g_malloc0_n(i64, i64) #2

declare i32 @config_node_get_int(%struct._CONFIG_NODE*, i8*, i32) #2

declare i32 @config_node_get_bool(%struct._CONFIG_NODE*, i8*, i32) #2

declare i8** @config_node_get_list(%struct._CONFIG_NODE*) #2

declare %struct._GSList* @config_node_next(%struct._GSList*) #2

declare void @nickmatch_rebuild(%struct.NICKMATCH_REC*) #2

declare i8* @strip_codes(i8*) #2

declare i32 @strip_real_length(i8*, i32, i32*, i32*) #2

declare %struct._GString* @g_string_new_len(i8*, i64) #2

declare %struct._GString* @g_string_append(%struct._GString*, i8*) #2

declare %struct._GString* @g_string_append_len(%struct._GString*, i8*, i64) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._GString* @g_string_append_c_inline(%struct._GString*, i8 signext) #4 !dbg !2709 {
  %3 = alloca %struct._GString*, align 8
  %4 = alloca i8, align 1
  store %struct._GString* %0, %struct._GString** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._GString** %3, metadata !2712, metadata !849), !dbg !2713
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !2714, metadata !849), !dbg !2715
  %5 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !2716
  %6 = getelementptr inbounds %struct._GString, %struct._GString* %5, i32 0, i32 1, !dbg !2718
  %7 = load i64, i64* %6, align 8, !dbg !2718
  %8 = add i64 %7, 1, !dbg !2719
  %9 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !2720
  %10 = getelementptr inbounds %struct._GString, %struct._GString* %9, i32 0, i32 2, !dbg !2721
  %11 = load i64, i64* %10, align 8, !dbg !2721
  %12 = icmp ult i64 %8, %11, !dbg !2722
  br i1 %12, label %13, label %30, !dbg !2723

; <label>:13:                                     ; preds = %2
  %14 = load i8, i8* %4, align 1, !dbg !2724
  %15 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !2726
  %16 = getelementptr inbounds %struct._GString, %struct._GString* %15, i32 0, i32 1, !dbg !2727
  %17 = load i64, i64* %16, align 8, !dbg !2728
  %18 = add i64 %17, 1, !dbg !2728
  store i64 %18, i64* %16, align 8, !dbg !2728
  %19 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !2729
  %20 = getelementptr inbounds %struct._GString, %struct._GString* %19, i32 0, i32 0, !dbg !2730
  %21 = load i8*, i8** %20, align 8, !dbg !2730
  %22 = getelementptr inbounds i8, i8* %21, i64 %17, !dbg !2729
  store i8 %14, i8* %22, align 1, !dbg !2731
  %23 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !2732
  %24 = getelementptr inbounds %struct._GString, %struct._GString* %23, i32 0, i32 1, !dbg !2733
  %25 = load i64, i64* %24, align 8, !dbg !2733
  %26 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !2734
  %27 = getelementptr inbounds %struct._GString, %struct._GString* %26, i32 0, i32 0, !dbg !2735
  %28 = load i8*, i8** %27, align 8, !dbg !2735
  %29 = getelementptr inbounds i8, i8* %28, i64 %25, !dbg !2734
  store i8 0, i8* %29, align 1, !dbg !2736
  br label %34, !dbg !2737

; <label>:30:                                     ; preds = %2
  %31 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !2738
  %32 = load i8, i8* %4, align 1, !dbg !2739
  %33 = call %struct._GString* @g_string_insert_c(%struct._GString* %31, i64 -1, i8 signext %32), !dbg !2740
  br label %34

; <label>:34:                                     ; preds = %30, %13
  %35 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !2741
  ret %struct._GString* %35, !dbg !2742
}

declare i8* @g_string_free(%struct._GString*, i32) #2

declare void @signal_stop() #2

declare %struct._GString* @g_string_insert_c(%struct._GString*, i64, i8 signext) #2

; Function Attrs: nounwind uwtable
define internal void @cmd_hilight_show() #0 !dbg !2743 {
  %1 = alloca %struct._GSList*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct._HILIGHT_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %1, metadata !2744, metadata !849), !dbg !2745
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2746, metadata !849), !dbg !2747
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 113), !dbg !2748
  store i32 1, i32* %2, align 4, !dbg !2749
  %4 = load %struct._GSList*, %struct._GSList** @hilights, align 8, !dbg !2750
  store %struct._GSList* %4, %struct._GSList** %1, align 8, !dbg !2752
  br label %5, !dbg !2753

; <label>:5:                                      ; preds = %15, %0
  %6 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !2754
  %7 = icmp ne %struct._GSList* %6, null, !dbg !2757
  br i1 %7, label %8, label %21, !dbg !2758

; <label>:8:                                      ; preds = %5
  call void @llvm.dbg.declare(metadata %struct._HILIGHT_REC** %3, metadata !2759, metadata !849), !dbg !2761
  %9 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !2762
  %10 = getelementptr inbounds %struct._GSList, %struct._GSList* %9, i32 0, i32 0, !dbg !2763
  %11 = load i8*, i8** %10, align 8, !dbg !2763
  %12 = bitcast i8* %11 to %struct._HILIGHT_REC*, !dbg !2762
  store %struct._HILIGHT_REC* %12, %struct._HILIGHT_REC** %3, align 8, !dbg !2761
  %13 = load i32, i32* %2, align 4, !dbg !2764
  %14 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %3, align 8, !dbg !2765
  call void @hilight_print(i32 %13, %struct._HILIGHT_REC* %14), !dbg !2766
  br label %15, !dbg !2767

; <label>:15:                                     ; preds = %8
  %16 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !2768
  %17 = getelementptr inbounds %struct._GSList, %struct._GSList* %16, i32 0, i32 1, !dbg !2770
  %18 = load %struct._GSList*, %struct._GSList** %17, align 8, !dbg !2770
  store %struct._GSList* %18, %struct._GSList** %1, align 8, !dbg !2771
  %19 = load i32, i32* %2, align 4, !dbg !2772
  %20 = add nsw i32 %19, 1, !dbg !2772
  store i32 %20, i32* %2, align 4, !dbg !2772
  br label %5, !dbg !2773, !llvm.loop !2774

; <label>:21:                                     ; preds = %5
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 115), !dbg !2776
  ret void, !dbg !2777
}

declare i32 @cmd_get_params(i8*, i8**, i32, ...) #2

declare void @cmd_params_free(i8*) #2

declare noalias i8** @g_strsplit(i8*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal %struct._HILIGHT_REC* @hilight_find(i8*, i8**) #0 !dbg !2778 {
  %3 = alloca %struct._HILIGHT_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct._HILIGHT_REC*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2781, metadata !849), !dbg !2782
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !2783, metadata !849), !dbg !2784
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !2785, metadata !849), !dbg !2786
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !2787, metadata !849), !dbg !2788
  br label %9, !dbg !2789, !llvm.loop !2790

; <label>:9:                                      ; preds = %2
  %10 = load i8*, i8** %4, align 8, !dbg !2791
  %11 = icmp ne i8* %10, null, !dbg !2795
  br i1 %11, label %12, label %13, !dbg !2791

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !2796

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.hilight_find, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i32 0, i32 0)), !dbg !2799
  store %struct._HILIGHT_REC* null, %struct._HILIGHT_REC** %3, align 8, !dbg !2802
  br label %101, !dbg !2802

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !2803

; <label>:15:                                     ; preds = %14
  %16 = load %struct._GSList*, %struct._GSList** @hilights, align 8, !dbg !2805
  store %struct._GSList* %16, %struct._GSList** %6, align 8, !dbg !2807
  br label %17, !dbg !2808

; <label>:17:                                     ; preds = %96, %15
  %18 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !2809
  %19 = icmp ne %struct._GSList* %18, null, !dbg !2812
  br i1 %19, label %20, label %100, !dbg !2813

; <label>:20:                                     ; preds = %17
  call void @llvm.dbg.declare(metadata %struct._HILIGHT_REC** %8, metadata !2814, metadata !849), !dbg !2816
  %21 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !2817
  %22 = getelementptr inbounds %struct._GSList, %struct._GSList* %21, i32 0, i32 0, !dbg !2818
  %23 = load i8*, i8** %22, align 8, !dbg !2818
  %24 = bitcast i8* %23 to %struct._HILIGHT_REC*, !dbg !2817
  store %struct._HILIGHT_REC* %24, %struct._HILIGHT_REC** %8, align 8, !dbg !2816
  %25 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %8, align 8, !dbg !2819
  %26 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %25, i32 0, i32 0, !dbg !2821
  %27 = load i8*, i8** %26, align 8, !dbg !2821
  %28 = load i8*, i8** %4, align 8, !dbg !2822
  %29 = call i32 @g_ascii_strcasecmp(i8* %27, i8* %28), !dbg !2823
  %30 = icmp ne i32 %29, 0, !dbg !2824
  br i1 %30, label %31, label %32, !dbg !2825

; <label>:31:                                     ; preds = %20
  br label %96, !dbg !2826

; <label>:32:                                     ; preds = %20
  %33 = load i8**, i8*** %5, align 8, !dbg !2827
  %34 = icmp eq i8** %33, null, !dbg !2829
  br i1 %34, label %35, label %42, !dbg !2830

; <label>:35:                                     ; preds = %32
  %36 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %8, align 8, !dbg !2831
  %37 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %36, i32 0, i32 1, !dbg !2833
  %38 = load i8**, i8*** %37, align 8, !dbg !2833
  %39 = icmp eq i8** %38, null, !dbg !2834
  br i1 %39, label %40, label %42, !dbg !2835

; <label>:40:                                     ; preds = %35
  %41 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %8, align 8, !dbg !2836
  store %struct._HILIGHT_REC* %41, %struct._HILIGHT_REC** %3, align 8, !dbg !2837
  br label %101, !dbg !2837

; <label>:42:                                     ; preds = %35, %32
  %43 = load i8**, i8*** %5, align 8, !dbg !2838
  %44 = icmp ne i8** %43, null, !dbg !2840
  br i1 %44, label %45, label %52, !dbg !2841

; <label>:45:                                     ; preds = %42
  %46 = load i8**, i8*** %5, align 8, !dbg !2842
  %47 = load i8*, i8** %46, align 8, !dbg !2844
  %48 = call i32 @g_strcmp0(i8* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i32 0, i32 0)), !dbg !2845
  %49 = icmp eq i32 %48, 0, !dbg !2846
  br i1 %49, label %50, label %52, !dbg !2847

; <label>:50:                                     ; preds = %45
  %51 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %8, align 8, !dbg !2848
  store %struct._HILIGHT_REC* %51, %struct._HILIGHT_REC** %3, align 8, !dbg !2849
  br label %101, !dbg !2849

; <label>:52:                                     ; preds = %45, %42
  %53 = load i8**, i8*** %5, align 8, !dbg !2850
  %54 = icmp eq i8** %53, null, !dbg !2852
  br i1 %54, label %60, label %55, !dbg !2853

; <label>:55:                                     ; preds = %52
  %56 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %8, align 8, !dbg !2854
  %57 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %56, i32 0, i32 1, !dbg !2856
  %58 = load i8**, i8*** %57, align 8, !dbg !2856
  %59 = icmp eq i8** %58, null, !dbg !2857
  br i1 %59, label %60, label %61, !dbg !2858

; <label>:60:                                     ; preds = %55, %52
  br label %96, !dbg !2859

; <label>:61:                                     ; preds = %55
  %62 = load i8**, i8*** %5, align 8, !dbg !2860
  %63 = call i32 @g_strv_length(i8** %62), !dbg !2862
  %64 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %8, align 8, !dbg !2863
  %65 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %64, i32 0, i32 1, !dbg !2864
  %66 = load i8**, i8*** %65, align 8, !dbg !2864
  %67 = call i32 @g_strv_length(i8** %66), !dbg !2865
  %68 = icmp ne i32 %63, %67, !dbg !2867
  br i1 %68, label %69, label %70, !dbg !2868

; <label>:69:                                     ; preds = %61
  br label %96, !dbg !2869

; <label>:70:                                     ; preds = %61
  %71 = load i8**, i8*** %5, align 8, !dbg !2870
  store i8** %71, i8*** %7, align 8, !dbg !2872
  br label %72, !dbg !2873

; <label>:72:                                     ; preds = %86, %70
  %73 = load i8**, i8*** %7, align 8, !dbg !2874
  %74 = load i8*, i8** %73, align 8, !dbg !2877
  %75 = icmp ne i8* %74, null, !dbg !2878
  br i1 %75, label %76, label %89, !dbg !2879

; <label>:76:                                     ; preds = %72
  %77 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %8, align 8, !dbg !2880
  %78 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %77, i32 0, i32 1, !dbg !2883
  %79 = load i8**, i8*** %78, align 8, !dbg !2883
  %80 = load i8**, i8*** %7, align 8, !dbg !2884
  %81 = load i8*, i8** %80, align 8, !dbg !2885
  %82 = call i32 @strarray_find(i8** %79, i8* %81), !dbg !2886
  %83 = icmp eq i32 %82, -1, !dbg !2887
  br i1 %83, label %84, label %85, !dbg !2888

; <label>:84:                                     ; preds = %76
  br label %89, !dbg !2889

; <label>:85:                                     ; preds = %76
  br label %86, !dbg !2890

; <label>:86:                                     ; preds = %85
  %87 = load i8**, i8*** %7, align 8, !dbg !2891
  %88 = getelementptr inbounds i8*, i8** %87, i32 1, !dbg !2891
  store i8** %88, i8*** %7, align 8, !dbg !2891
  br label %72, !dbg !2893, !llvm.loop !2894

; <label>:89:                                     ; preds = %84, %72
  %90 = load i8**, i8*** %7, align 8, !dbg !2896
  %91 = load i8*, i8** %90, align 8, !dbg !2898
  %92 = icmp eq i8* %91, null, !dbg !2899
  br i1 %92, label %93, label %95, !dbg !2900

; <label>:93:                                     ; preds = %89
  %94 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %8, align 8, !dbg !2901
  store %struct._HILIGHT_REC* %94, %struct._HILIGHT_REC** %3, align 8, !dbg !2902
  br label %101, !dbg !2902

; <label>:95:                                     ; preds = %89
  br label %96, !dbg !2903

; <label>:96:                                     ; preds = %95, %69, %60, %31
  %97 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !2904
  %98 = getelementptr inbounds %struct._GSList, %struct._GSList* %97, i32 0, i32 1, !dbg !2906
  %99 = load %struct._GSList*, %struct._GSList** %98, align 8, !dbg !2906
  store %struct._GSList* %99, %struct._GSList** %6, align 8, !dbg !2907
  br label %17, !dbg !2908, !llvm.loop !2909

; <label>:100:                                    ; preds = %17
  store %struct._HILIGHT_REC* null, %struct._HILIGHT_REC** %3, align 8, !dbg !2911
  br label %101, !dbg !2911

; <label>:101:                                    ; preds = %100, %93, %50, %40, %13
  %102 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %3, align 8, !dbg !2912
  ret %struct._HILIGHT_REC* %102, !dbg !2912
}

declare i32 @level2bits(i8*, i32*) #2

declare i8* @replace_chars(i8*, i8 signext, i8 signext) #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @hilight_print(i32, %struct._HILIGHT_REC*) #0 !dbg !2913 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._HILIGHT_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._GString*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2916, metadata !849), !dbg !2917
  store %struct._HILIGHT_REC* %1, %struct._HILIGHT_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._HILIGHT_REC** %4, metadata !2918, metadata !849), !dbg !2919
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2920, metadata !849), !dbg !2921
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2922, metadata !849), !dbg !2923
  call void @llvm.dbg.declare(metadata %struct._GString** %7, metadata !2924, metadata !849), !dbg !2925
  %8 = call %struct._GString* @g_string_new(i8* null), !dbg !2926
  store %struct._GString* %8, %struct._GString** %7, align 8, !dbg !2927
  %9 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !2928
  %10 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %9, i32 0, i32 6, !dbg !2930
  %11 = load i8, i8* %10, align 4, !dbg !2930
  %12 = and i8 %11, 1, !dbg !2930
  %13 = zext i8 %12 to i32, !dbg !2930
  %14 = icmp ne i32 %13, 0, !dbg !2928
  br i1 %14, label %15, label %24, !dbg !2931

; <label>:15:                                     ; preds = %2
  %16 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !2932
  %17 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %16, i32 0, i32 6, !dbg !2934
  %18 = load i8, i8* %17, align 4, !dbg !2934
  %19 = lshr i8 %18, 1, !dbg !2934
  %20 = and i8 %19, 1, !dbg !2934
  %21 = zext i8 %20 to i32, !dbg !2934
  %22 = icmp ne i32 %21, 0, !dbg !2932
  br i1 %22, label %23, label %24, !dbg !2935

; <label>:23:                                     ; preds = %15
  br label %50, !dbg !2936

; <label>:24:                                     ; preds = %15, %2
  %25 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !2939
  %26 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %25, i32 0, i32 6, !dbg !2941
  %27 = load i8, i8* %26, align 4, !dbg !2941
  %28 = and i8 %27, 1, !dbg !2941
  %29 = zext i8 %28 to i32, !dbg !2941
  %30 = icmp ne i32 %29, 0, !dbg !2939
  br i1 %30, label %31, label %34, !dbg !2942

; <label>:31:                                     ; preds = %24
  %32 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !2943
  %33 = call %struct._GString* @g_string_append(%struct._GString* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0)), !dbg !2944
  br label %49, !dbg !2944

; <label>:34:                                     ; preds = %24
  %35 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !2945
  %36 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %35, i32 0, i32 6, !dbg !2947
  %37 = load i8, i8* %36, align 4, !dbg !2947
  %38 = lshr i8 %37, 1, !dbg !2947
  %39 = and i8 %38, 1, !dbg !2947
  %40 = zext i8 %39 to i32, !dbg !2947
  %41 = icmp ne i32 %40, 0, !dbg !2945
  br i1 %41, label %42, label %45, !dbg !2948

; <label>:42:                                     ; preds = %34
  %43 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !2949
  %44 = call %struct._GString* @g_string_append(%struct._GString* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0)), !dbg !2950
  br label %48, !dbg !2950

; <label>:45:                                     ; preds = %34
  %46 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !2951
  %47 = call %struct._GString* @g_string_append(%struct._GString* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0)), !dbg !2952
  br label %48

; <label>:48:                                     ; preds = %45, %42
  br label %49

; <label>:49:                                     ; preds = %48, %31
  br label %50

; <label>:50:                                     ; preds = %49, %23
  %51 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !2953
  %52 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %51, i32 0, i32 6, !dbg !2955
  %53 = load i8, i8* %52, align 4, !dbg !2955
  %54 = lshr i8 %53, 2, !dbg !2955
  %55 = and i8 %54, 1, !dbg !2955
  %56 = zext i8 %55 to i32, !dbg !2955
  %57 = icmp ne i32 %56, 0, !dbg !2953
  br i1 %57, label %58, label %61, !dbg !2956

; <label>:58:                                     ; preds = %50
  %59 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !2957
  %60 = call %struct._GString* @g_string_append(%struct._GString* %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0)), !dbg !2959
  br label %61, !dbg !2959

; <label>:61:                                     ; preds = %58, %50
  %62 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !2960
  %63 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %62, i32 0, i32 6, !dbg !2962
  %64 = load i8, i8* %63, align 4, !dbg !2962
  %65 = lshr i8 %64, 3, !dbg !2962
  %66 = and i8 %65, 1, !dbg !2962
  %67 = zext i8 %66 to i32, !dbg !2962
  %68 = icmp ne i32 %67, 0, !dbg !2960
  br i1 %68, label %69, label %72, !dbg !2963

; <label>:69:                                     ; preds = %61
  %70 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !2964
  %71 = call %struct._GString* @g_string_append(%struct._GString* %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0)), !dbg !2966
  br label %72, !dbg !2966

; <label>:72:                                     ; preds = %69, %61
  %73 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !2967
  %74 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %73, i32 0, i32 6, !dbg !2969
  %75 = load i8, i8* %74, align 4, !dbg !2969
  %76 = lshr i8 %75, 5, !dbg !2969
  %77 = and i8 %76, 1, !dbg !2969
  %78 = zext i8 %77 to i32, !dbg !2969
  %79 = icmp ne i32 %78, 0, !dbg !2967
  br i1 %79, label %80, label %83, !dbg !2970

; <label>:80:                                     ; preds = %72
  %81 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !2971
  %82 = call %struct._GString* @g_string_append(%struct._GString* %81, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0)), !dbg !2973
  br label %83, !dbg !2973

; <label>:83:                                     ; preds = %80, %72
  %84 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !2974
  %85 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %84, i32 0, i32 6, !dbg !2976
  %86 = load i8, i8* %85, align 4, !dbg !2976
  %87 = lshr i8 %86, 4, !dbg !2976
  %88 = and i8 %87, 1, !dbg !2976
  %89 = zext i8 %88 to i32, !dbg !2976
  %90 = icmp ne i32 %89, 0, !dbg !2974
  br i1 %90, label %91, label %102, !dbg !2977

; <label>:91:                                     ; preds = %83
  %92 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !2978
  %93 = call %struct._GString* @g_string_append(%struct._GString* %92, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0)), !dbg !2980
  %94 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !2981
  %95 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %94, i32 0, i32 7, !dbg !2983
  %96 = load %struct._GRegex*, %struct._GRegex** %95, align 8, !dbg !2983
  %97 = icmp eq %struct._GRegex* %96, null, !dbg !2984
  br i1 %97, label %98, label %101, !dbg !2985

; <label>:98:                                     ; preds = %91
  %99 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !2986
  %100 = call %struct._GString* @g_string_append(%struct._GString* %99, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i32 0, i32 0)), !dbg !2987
  br label %101, !dbg !2987

; <label>:101:                                    ; preds = %98, %91
  br label %102, !dbg !2988

; <label>:102:                                    ; preds = %101, %83
  %103 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !2989
  %104 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %103, i32 0, i32 5, !dbg !2991
  %105 = load i32, i32* %104, align 8, !dbg !2991
  %106 = icmp ne i32 %105, 0, !dbg !2992
  br i1 %106, label %107, label %112, !dbg !2993

; <label>:107:                                    ; preds = %102
  %108 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !2994
  %109 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !2995
  %110 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %109, i32 0, i32 5, !dbg !2996
  %111 = load i32, i32* %110, align 8, !dbg !2996
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %108, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.52, i32 0, i32 0), i32 %111), !dbg !2997
  br label %112, !dbg !2997

; <label>:112:                                    ; preds = %107, %102
  %113 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !2998
  %114 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %113, i32 0, i32 8, !dbg !3000
  %115 = load i8*, i8** %114, align 8, !dbg !3000
  %116 = icmp ne i8* %115, null, !dbg !3001
  br i1 %116, label %117, label %122, !dbg !3002

; <label>:117:                                    ; preds = %112
  %118 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !3003
  %119 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !3004
  %120 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %119, i32 0, i32 8, !dbg !3005
  %121 = load i8*, i8** %120, align 8, !dbg !3005
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %118, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i32 0, i32 0), i8* %121), !dbg !3006
  br label %122, !dbg !3006

; <label>:122:                                    ; preds = %117, %112
  %123 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !3007
  %124 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %123, i32 0, i32 3, !dbg !3009
  %125 = load i8*, i8** %124, align 8, !dbg !3009
  %126 = icmp ne i8* %125, null, !dbg !3010
  br i1 %126, label %127, label %132, !dbg !3011

; <label>:127:                                    ; preds = %122
  %128 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !3012
  %129 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !3013
  %130 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %129, i32 0, i32 3, !dbg !3014
  %131 = load i8*, i8** %130, align 8, !dbg !3014
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i32 0, i32 0), i8* %131), !dbg !3015
  br label %132, !dbg !3015

; <label>:132:                                    ; preds = %127, %122
  %133 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !3016
  %134 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %133, i32 0, i32 4, !dbg !3018
  %135 = load i8*, i8** %134, align 8, !dbg !3018
  %136 = icmp ne i8* %135, null, !dbg !3019
  br i1 %136, label %137, label %142, !dbg !3020

; <label>:137:                                    ; preds = %132
  %138 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !3021
  %139 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !3022
  %140 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %139, i32 0, i32 4, !dbg !3023
  %141 = load i8*, i8** %140, align 8, !dbg !3023
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %138, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.55, i32 0, i32 0), i8* %141), !dbg !3024
  br label %142, !dbg !3024

; <label>:142:                                    ; preds = %137, %132
  %143 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !3025
  %144 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %143, i32 0, i32 1, !dbg !3026
  %145 = load i8**, i8*** %144, align 8, !dbg !3026
  %146 = icmp eq i8** %145, null, !dbg !3027
  br i1 %146, label %147, label %148, !dbg !3025

; <label>:147:                                    ; preds = %142
  br label %153, !dbg !3028

; <label>:148:                                    ; preds = %142
  %149 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !3030
  %150 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %149, i32 0, i32 1, !dbg !3031
  %151 = load i8**, i8*** %150, align 8, !dbg !3031
  %152 = call noalias i8* @g_strjoinv(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0), i8** %151), !dbg !3032
  br label %153, !dbg !3033

; <label>:153:                                    ; preds = %148, %147
  %154 = phi i8* [ null, %147 ], [ %152, %148 ], !dbg !3035
  store i8* %154, i8** %5, align 8, !dbg !3037
  %155 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !3038
  %156 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %155, i32 0, i32 2, !dbg !3039
  %157 = load i32, i32* %156, align 8, !dbg !3039
  %158 = icmp eq i32 %157, 0, !dbg !3040
  br i1 %158, label %159, label %160, !dbg !3038

; <label>:159:                                    ; preds = %153
  br label %165, !dbg !3041

; <label>:160:                                    ; preds = %153
  %161 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !3042
  %162 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %161, i32 0, i32 2, !dbg !3043
  %163 = load i32, i32* %162, align 8, !dbg !3043
  %164 = call i8* @bits2level(i32 %163), !dbg !3044
  br label %165, !dbg !3045

; <label>:165:                                    ; preds = %160, %159
  %166 = phi i8* [ null, %159 ], [ %164, %160 ], !dbg !3046
  store i8* %166, i8** %6, align 8, !dbg !3047
  %167 = load i8*, i8** %6, align 8, !dbg !3048
  %168 = icmp ne i8* %167, null, !dbg !3050
  br i1 %168, label %169, label %172, !dbg !3051

; <label>:169:                                    ; preds = %165
  %170 = load i8*, i8** %6, align 8, !dbg !3052
  %171 = call noalias i8* (i8*, ...) @g_strconcat(i8* %170, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i32 0, i32 0), i8* null), !dbg !3053
  store i8* %171, i8** %6, align 8, !dbg !3054
  br label %172, !dbg !3055

; <label>:172:                                    ; preds = %169, %165
  %173 = load i32, i32* %3, align 4, !dbg !3056
  %174 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %4, align 8, !dbg !3057
  %175 = getelementptr inbounds %struct._HILIGHT_REC, %struct._HILIGHT_REC* %174, i32 0, i32 0, !dbg !3058
  %176 = load i8*, i8** %175, align 8, !dbg !3058
  %177 = load i8*, i8** %5, align 8, !dbg !3059
  %178 = icmp ne i8* %177, null, !dbg !3060
  br i1 %178, label %179, label %181, !dbg !3059

; <label>:179:                                    ; preds = %172
  %180 = load i8*, i8** %5, align 8, !dbg !3061
  br label %182, !dbg !3062

; <label>:181:                                    ; preds = %172
  br label %182, !dbg !3063

; <label>:182:                                    ; preds = %181, %179
  %183 = phi i8* [ %180, %179 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.57, i32 0, i32 0), %181 ], !dbg !3064
  %184 = load i8*, i8** %6, align 8, !dbg !3065
  %185 = icmp ne i8* %184, null, !dbg !3066
  br i1 %185, label %186, label %188, !dbg !3065

; <label>:186:                                    ; preds = %182
  %187 = load i8*, i8** %6, align 8, !dbg !3067
  br label %189, !dbg !3069

; <label>:188:                                    ; preds = %182
  br label %189, !dbg !3070

; <label>:189:                                    ; preds = %188, %186
  %190 = phi i8* [ %187, %186 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.57, i32 0, i32 0), %188 ], !dbg !3072
  %191 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !3074
  %192 = getelementptr inbounds %struct._GString, %struct._GString* %191, i32 0, i32 0, !dbg !3075
  %193 = load i8*, i8** %192, align 8, !dbg !3075
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 114, i32 %173, i8* %176, i8* %183, i8* %190, i8* %193), !dbg !3076
  %194 = load i8*, i8** %5, align 8, !dbg !3077
  call void @g_free(i8* %194), !dbg !3078
  %195 = load i8*, i8** %6, align 8, !dbg !3079
  call void @g_free(i8* %195), !dbg !3080
  %196 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !3081
  %197 = call i8* @g_string_free(%struct._GString* %196, i32 1), !dbg !3082
  ret void, !dbg !3083
}

declare void @printformat_module(i8*, i8*, i8*, i32, i32, ...) #2

declare i32 @g_strv_length(i8**) #2

declare %struct._GString* @g_string_new(i8*) #2

declare void @g_string_append_printf(%struct._GString*, i8*, ...) #2

declare noalias i8* @g_strjoinv(i8*, i8**) #2

declare i8* @bits2level(i32) #2

declare i32 @is_numeric(i8*, i8 signext) #2

declare %struct._GSList* @g_slist_nth(%struct._GSList*, i32) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #5

declare void @g_slist_foreach(%struct._GSList*, void (i8*, i8*)*, i8*) #2

declare void @g_slist_free(%struct._GSList*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!841, !842}
!llvm.ident = !{!843}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !358, globals: !409)
!1 = !DIFile(filename: "line248-hilight-text.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !10, !15, !24, !35, !66, !74, !95, !116}
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
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !67, line: 4, size: 32, align: 32, elements: !68)
!67 = !DIFile(filename: "../../../src/lib-config/iconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!68 = !{!69, !70, !71, !72, !73}
!69 = !DIEnumerator(name: "NODE_TYPE_KEY", value: 0)
!70 = !DIEnumerator(name: "NODE_TYPE_VALUE", value: 1)
!71 = !DIEnumerator(name: "NODE_TYPE_BLOCK", value: 2)
!72 = !DIEnumerator(name: "NODE_TYPE_LIST", value: 3)
!73 = !DIEnumerator(name: "NODE_TYPE_COMMENT", value: 4)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !75, line: 297, size: 32, align: 32, elements: !76)
!75 = !DIFile(filename: "/usr/include/glib-2.0/glib/gregex.h", directory: "/home/lichi/Desktop/irssi/task1")
!76 = !{!77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94}
!77 = !DIEnumerator(name: "G_REGEX_CASELESS", value: 1)
!78 = !DIEnumerator(name: "G_REGEX_MULTILINE", value: 2)
!79 = !DIEnumerator(name: "G_REGEX_DOTALL", value: 4)
!80 = !DIEnumerator(name: "G_REGEX_EXTENDED", value: 8)
!81 = !DIEnumerator(name: "G_REGEX_ANCHORED", value: 16)
!82 = !DIEnumerator(name: "G_REGEX_DOLLAR_ENDONLY", value: 32)
!83 = !DIEnumerator(name: "G_REGEX_UNGREEDY", value: 512)
!84 = !DIEnumerator(name: "G_REGEX_RAW", value: 2048)
!85 = !DIEnumerator(name: "G_REGEX_NO_AUTO_CAPTURE", value: 4096)
!86 = !DIEnumerator(name: "G_REGEX_OPTIMIZE", value: 8192)
!87 = !DIEnumerator(name: "G_REGEX_FIRSTLINE", value: 262144)
!88 = !DIEnumerator(name: "G_REGEX_DUPNAMES", value: 524288)
!89 = !DIEnumerator(name: "G_REGEX_NEWLINE_CR", value: 1048576)
!90 = !DIEnumerator(name: "G_REGEX_NEWLINE_LF", value: 2097152)
!91 = !DIEnumerator(name: "G_REGEX_NEWLINE_CRLF", value: 3145728)
!92 = !DIEnumerator(name: "G_REGEX_NEWLINE_ANYCRLF", value: 5242880)
!93 = !DIEnumerator(name: "G_REGEX_BSR_ANYCRLF", value: 8388608)
!94 = !DIEnumerator(name: "G_REGEX_JAVASCRIPT_COMPAT", value: 33554432)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !96, line: 25, size: 32, align: 32, elements: !97)
!96 = !DIFile(filename: "../../../src/core/commands.h", directory: "/home/lichi/Desktop/irssi/task1")
!97 = !{!98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115}
!98 = !DIEnumerator(name: "CMDERR_OPTION_UNKNOWN", value: -3)
!99 = !DIEnumerator(name: "CMDERR_OPTION_AMBIGUOUS", value: -2)
!100 = !DIEnumerator(name: "CMDERR_OPTION_ARG_MISSING", value: -1)
!101 = !DIEnumerator(name: "CMDERR_UNKNOWN", value: 0)
!102 = !DIEnumerator(name: "CMDERR_AMBIGUOUS", value: 1)
!103 = !DIEnumerator(name: "CMDERR_ERRNO", value: 2)
!104 = !DIEnumerator(name: "CMDERR_NOT_ENOUGH_PARAMS", value: 3)
!105 = !DIEnumerator(name: "CMDERR_NOT_CONNECTED", value: 4)
!106 = !DIEnumerator(name: "CMDERR_NOT_JOINED", value: 5)
!107 = !DIEnumerator(name: "CMDERR_CHAN_NOT_FOUND", value: 6)
!108 = !DIEnumerator(name: "CMDERR_CHAN_NOT_SYNCED", value: 7)
!109 = !DIEnumerator(name: "CMDERR_ILLEGAL_PROTO", value: 8)
!110 = !DIEnumerator(name: "CMDERR_NOT_GOOD_IDEA", value: 9)
!111 = !DIEnumerator(name: "CMDERR_INVALID_TIME", value: 10)
!112 = !DIEnumerator(name: "CMDERR_INVALID_CHARSET", value: 11)
!113 = !DIEnumerator(name: "CMDERR_EVAL_MAX_RECURSE", value: 12)
!114 = !DIEnumerator(name: "CMDERR_PROGRAM_NOT_FOUND", value: 13)
!115 = !DIEnumerator(name: "CMDERR_NO_SERVER_DEFINED", value: 14)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !117, line: 3, size: 32, align: 32, elements: !118)
!117 = !DIFile(filename: "module-formats.h", directory: "/home/lichi/Desktop/irssi/task1")
!118 = !{!119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357}
!119 = !DIEnumerator(name: "TXT_MODULE_NAME", value: 0)
!120 = !DIEnumerator(name: "TXT_FILL_1", value: 1)
!121 = !DIEnumerator(name: "TXT_LINE_START", value: 2)
!122 = !DIEnumerator(name: "TXT_LINE_START_IRSSI", value: 3)
!123 = !DIEnumerator(name: "TXT_TIMESTAMP", value: 4)
!124 = !DIEnumerator(name: "TXT_SERVERTAG", value: 5)
!125 = !DIEnumerator(name: "TXT_DAYCHANGE", value: 6)
!126 = !DIEnumerator(name: "TXT_TALKING_WITH", value: 7)
!127 = !DIEnumerator(name: "TXT_REFNUM_TOO_LOW", value: 8)
!128 = !DIEnumerator(name: "TXT_ERROR_SERVER_STICKY", value: 9)
!129 = !DIEnumerator(name: "TXT_SET_SERVER_STICKY", value: 10)
!130 = !DIEnumerator(name: "TXT_UNSET_SERVER_STICKY", value: 11)
!131 = !DIEnumerator(name: "TXT_WINDOW_NAME_NOT_UNIQUE", value: 12)
!132 = !DIEnumerator(name: "TXT_WINDOW_LEVEL", value: 13)
!133 = !DIEnumerator(name: "TXT_WINDOW_SET_IMMORTAL", value: 14)
!134 = !DIEnumerator(name: "TXT_WINDOW_UNSET_IMMORTAL", value: 15)
!135 = !DIEnumerator(name: "TXT_WINDOW_IMMORTAL_ERROR", value: 16)
!136 = !DIEnumerator(name: "TXT_WINDOWLIST_HEADER", value: 17)
!137 = !DIEnumerator(name: "TXT_WINDOWLIST_LINE", value: 18)
!138 = !DIEnumerator(name: "TXT_WINDOWLIST_FOOTER", value: 19)
!139 = !DIEnumerator(name: "TXT_WINDOWS_LAYOUT_SAVED", value: 20)
!140 = !DIEnumerator(name: "TXT_WINDOWS_LAYOUT_RESET", value: 21)
!141 = !DIEnumerator(name: "TXT_WINDOW_INFO_HEADER", value: 22)
!142 = !DIEnumerator(name: "TXT_WINDOW_INFO_FOOTER", value: 23)
!143 = !DIEnumerator(name: "TXT_WINDOW_INFO_REFNUM", value: 24)
!144 = !DIEnumerator(name: "TXT_WINDOW_INFO_REFNUM_STICKY", value: 25)
!145 = !DIEnumerator(name: "TXT_WINDOW_INFO_NAME", value: 26)
!146 = !DIEnumerator(name: "TXT_WINDOW_INFO_HISTORY", value: 27)
!147 = !DIEnumerator(name: "TXT_WINDOW_INFO_IMMORTAL", value: 28)
!148 = !DIEnumerator(name: "TXT_WINDOW_INFO_SIZE", value: 29)
!149 = !DIEnumerator(name: "TXT_WINDOW_INFO_LEVEL", value: 30)
!150 = !DIEnumerator(name: "TXT_WINDOW_INFO_SERVER", value: 31)
!151 = !DIEnumerator(name: "TXT_WINDOW_INFO_SERVER_STICKY", value: 32)
!152 = !DIEnumerator(name: "TXT_WINDOW_INFO_THEME", value: 33)
!153 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEMS_HEADER", value: 34)
!154 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEM", value: 35)
!155 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEMS_FOOTER", value: 36)
!156 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEMS_HEADER", value: 37)
!157 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEM", value: 38)
!158 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEMS_FOOTER", value: 39)
!159 = !DIEnumerator(name: "TXT_FILL_2", value: 40)
!160 = !DIEnumerator(name: "TXT_LOOKING_UP", value: 41)
!161 = !DIEnumerator(name: "TXT_CONNECTING", value: 42)
!162 = !DIEnumerator(name: "TXT_RECONNECTING", value: 43)
!163 = !DIEnumerator(name: "TXT_CONNECTION_ESTABLISHED", value: 44)
!164 = !DIEnumerator(name: "TXT_CANT_CONNECT", value: 45)
!165 = !DIEnumerator(name: "TXT_CONNECTION_LOST", value: 46)
!166 = !DIEnumerator(name: "TXT_LAG_DISCONNECTED", value: 47)
!167 = !DIEnumerator(name: "TXT_DISCONNECTED", value: 48)
!168 = !DIEnumerator(name: "TXT_SERVER_QUIT", value: 49)
!169 = !DIEnumerator(name: "TXT_SERVER_CHANGED", value: 50)
!170 = !DIEnumerator(name: "TXT_UNKNOWN_SERVER_TAG", value: 51)
!171 = !DIEnumerator(name: "TXT_NO_CONNECTED_SERVERS", value: 52)
!172 = !DIEnumerator(name: "TXT_SERVER_LIST", value: 53)
!173 = !DIEnumerator(name: "TXT_SERVER_LOOKUP_LIST", value: 54)
!174 = !DIEnumerator(name: "TXT_SERVER_RECONNECT_LIST", value: 55)
!175 = !DIEnumerator(name: "TXT_RECONNECT_REMOVED", value: 56)
!176 = !DIEnumerator(name: "TXT_RECONNECT_NOT_FOUND", value: 57)
!177 = !DIEnumerator(name: "TXT_SETUPSERVER_ADDED", value: 58)
!178 = !DIEnumerator(name: "TXT_SETUPSERVER_REMOVED", value: 59)
!179 = !DIEnumerator(name: "TXT_SETUPSERVER_NOT_FOUND", value: 60)
!180 = !DIEnumerator(name: "TXT_YOUR_NICK", value: 61)
!181 = !DIEnumerator(name: "TXT_FILL_3", value: 62)
!182 = !DIEnumerator(name: "TXT_JOIN", value: 63)
!183 = !DIEnumerator(name: "TXT_PART", value: 64)
!184 = !DIEnumerator(name: "TXT_KICK", value: 65)
!185 = !DIEnumerator(name: "TXT_QUIT", value: 66)
!186 = !DIEnumerator(name: "TXT_QUIT_ONCE", value: 67)
!187 = !DIEnumerator(name: "TXT_INVITE", value: 68)
!188 = !DIEnumerator(name: "TXT_NOT_INVITED", value: 69)
!189 = !DIEnumerator(name: "TXT_NEW_TOPIC", value: 70)
!190 = !DIEnumerator(name: "TXT_TOPIC_UNSET", value: 71)
!191 = !DIEnumerator(name: "TXT_YOUR_NICK_CHANGED", value: 72)
!192 = !DIEnumerator(name: "TXT_NICK_CHANGED", value: 73)
!193 = !DIEnumerator(name: "TXT_TALKING_IN", value: 74)
!194 = !DIEnumerator(name: "TXT_NOT_IN_CHANNELS", value: 75)
!195 = !DIEnumerator(name: "TXT_CURRENT_CHANNEL", value: 76)
!196 = !DIEnumerator(name: "TXT_NAMES", value: 77)
!197 = !DIEnumerator(name: "TXT_NAMES_PREFIX", value: 78)
!198 = !DIEnumerator(name: "TXT_NAMES_NICK_OP", value: 79)
!199 = !DIEnumerator(name: "TXT_NAMES_NICK_HALFOP", value: 80)
!200 = !DIEnumerator(name: "TXT_NAMES_NICK_VOICE", value: 81)
!201 = !DIEnumerator(name: "TXT_NAMES_NICK", value: 82)
!202 = !DIEnumerator(name: "TXT_ENDOFNAMES", value: 83)
!203 = !DIEnumerator(name: "TXT_CHANLIST_HEADER", value: 84)
!204 = !DIEnumerator(name: "TXT_CHANLIST_LINE", value: 85)
!205 = !DIEnumerator(name: "TXT_CHANSETUP_NOT_FOUND", value: 86)
!206 = !DIEnumerator(name: "TXT_CHANSETUP_ADDED", value: 87)
!207 = !DIEnumerator(name: "TXT_CHANSETUP_REMOVED", value: 88)
!208 = !DIEnumerator(name: "TXT_CHANSETUP_HEADER", value: 89)
!209 = !DIEnumerator(name: "TXT_CHANSETUP_LINE", value: 90)
!210 = !DIEnumerator(name: "TXT_CHANSETUP_FOOTER", value: 91)
!211 = !DIEnumerator(name: "TXT_FILL_4", value: 92)
!212 = !DIEnumerator(name: "TXT_OWN_MSG", value: 93)
!213 = !DIEnumerator(name: "TXT_OWN_MSG_CHANNEL", value: 94)
!214 = !DIEnumerator(name: "TXT_OWN_MSG_PRIVATE", value: 95)
!215 = !DIEnumerator(name: "TXT_OWN_MSG_PRIVATE_QUERY", value: 96)
!216 = !DIEnumerator(name: "TXT_PUBMSG_ME", value: 97)
!217 = !DIEnumerator(name: "TXT_PUBMSG_ME_CHANNEL", value: 98)
!218 = !DIEnumerator(name: "TXT_PUBMSG_HILIGHT", value: 99)
!219 = !DIEnumerator(name: "TXT_PUBMSG_HILIGHT_CHANNEL", value: 100)
!220 = !DIEnumerator(name: "TXT_PUBMSG", value: 101)
!221 = !DIEnumerator(name: "TXT_PUBMSG_CHANNEL", value: 102)
!222 = !DIEnumerator(name: "TXT_MSG_PRIVATE", value: 103)
!223 = !DIEnumerator(name: "TXT_MSG_PRIVATE_QUERY", value: 104)
!224 = !DIEnumerator(name: "TXT_NO_MSGS_GOT", value: 105)
!225 = !DIEnumerator(name: "TXT_NO_MSGS_SENT", value: 106)
!226 = !DIEnumerator(name: "TXT_FILL_5", value: 107)
!227 = !DIEnumerator(name: "TXT_QUERY_START", value: 108)
!228 = !DIEnumerator(name: "TXT_QUERY_STOP", value: 109)
!229 = !DIEnumerator(name: "TXT_NO_QUERY", value: 110)
!230 = !DIEnumerator(name: "TXT_QUERY_SERVER_CHANGED", value: 111)
!231 = !DIEnumerator(name: "TXT_FILL_6", value: 112)
!232 = !DIEnumerator(name: "TXT_HILIGHT_HEADER", value: 113)
!233 = !DIEnumerator(name: "TXT_HILIGHT_LINE", value: 114)
!234 = !DIEnumerator(name: "TXT_HILIGHT_FOOTER", value: 115)
!235 = !DIEnumerator(name: "TXT_HILIGHT_NOT_FOUND", value: 116)
!236 = !DIEnumerator(name: "TXT_HILIGHT_REMOVED", value: 117)
!237 = !DIEnumerator(name: "TXT_FILL_7", value: 118)
!238 = !DIEnumerator(name: "TXT_ALIAS_ADDED", value: 119)
!239 = !DIEnumerator(name: "TXT_ALIAS_REMOVED", value: 120)
!240 = !DIEnumerator(name: "TXT_ALIAS_NOT_FOUND", value: 121)
!241 = !DIEnumerator(name: "TXT_ALIASLIST_HEADER", value: 122)
!242 = !DIEnumerator(name: "TXT_ALIASLIST_LINE", value: 123)
!243 = !DIEnumerator(name: "TXT_ALIASLIST_FOOTER", value: 124)
!244 = !DIEnumerator(name: "TXT_FILL_8", value: 125)
!245 = !DIEnumerator(name: "TXT_LOG_OPENED", value: 126)
!246 = !DIEnumerator(name: "TXT_LOG_CLOSED", value: 127)
!247 = !DIEnumerator(name: "TXT_LOG_CREATE_FAILED", value: 128)
!248 = !DIEnumerator(name: "TXT_LOG_LOCKED", value: 129)
!249 = !DIEnumerator(name: "TXT_LOG_NOT_OPEN", value: 130)
!250 = !DIEnumerator(name: "TXT_LOG_STARTED", value: 131)
!251 = !DIEnumerator(name: "TXT_LOG_STOPPED", value: 132)
!252 = !DIEnumerator(name: "TXT_LOG_LIST_HEADER", value: 133)
!253 = !DIEnumerator(name: "TXT_LOG_LIST", value: 134)
!254 = !DIEnumerator(name: "TXT_LOG_LIST_FOOTER", value: 135)
!255 = !DIEnumerator(name: "TXT_WINDOWLOG_FILE", value: 136)
!256 = !DIEnumerator(name: "TXT_WINDOWLOG_FILE_LOGGING", value: 137)
!257 = !DIEnumerator(name: "TXT_LOG_NO_AWAY_MSGS", value: 138)
!258 = !DIEnumerator(name: "TXT_LOG_AWAY_MSGS", value: 139)
!259 = !DIEnumerator(name: "TXT_FILL_9", value: 140)
!260 = !DIEnumerator(name: "TXT_MODULE_HEADER", value: 141)
!261 = !DIEnumerator(name: "TXT_MODULE_LINE", value: 142)
!262 = !DIEnumerator(name: "TXT_MODULE_FOOTER", value: 143)
!263 = !DIEnumerator(name: "TXT_MODULE_ALREADY_LOADED", value: 144)
!264 = !DIEnumerator(name: "TXT_MODULE_NOT_LOADED", value: 145)
!265 = !DIEnumerator(name: "TXT_MODULE_LOAD_ERROR", value: 146)
!266 = !DIEnumerator(name: "TXT_MODULE_VERSION_MISMATCH", value: 147)
!267 = !DIEnumerator(name: "TXT_MODULE_INVALID", value: 148)
!268 = !DIEnumerator(name: "TXT_MODULE_LOADED", value: 149)
!269 = !DIEnumerator(name: "TXT_MODULE_UNLOADED", value: 150)
!270 = !DIEnumerator(name: "TXT_FILL_10", value: 151)
!271 = !DIEnumerator(name: "TXT_COMMAND_UNKNOWN", value: 152)
!272 = !DIEnumerator(name: "TXT_COMMAND_AMBIGUOUS", value: 153)
!273 = !DIEnumerator(name: "TXT_OPTION_UNKNOWN", value: 154)
!274 = !DIEnumerator(name: "TXT_OPTION_AMBIGUOUS", value: 155)
!275 = !DIEnumerator(name: "TXT_OPTION_MISSING_ARG", value: 156)
!276 = !DIEnumerator(name: "TXT_NOT_ENOUGH_PARAMS", value: 157)
!277 = !DIEnumerator(name: "TXT_NOT_CONNECTED", value: 158)
!278 = !DIEnumerator(name: "TXT_NOT_JOINED", value: 159)
!279 = !DIEnumerator(name: "TXT_CHAN_NOT_FOUND", value: 160)
!280 = !DIEnumerator(name: "TXT_CHAN_NOT_SYNCED", value: 161)
!281 = !DIEnumerator(name: "TXT_ILLEGAL_PROTO", value: 162)
!282 = !DIEnumerator(name: "TXT_NOT_GOOD_IDEA", value: 163)
!283 = !DIEnumerator(name: "TXT_INVALID_NUMBER", value: 164)
!284 = !DIEnumerator(name: "TXT_INVALID_TIME", value: 165)
!285 = !DIEnumerator(name: "TXT_INVALID_LEVEL", value: 166)
!286 = !DIEnumerator(name: "TXT_INVALID_SIZE", value: 167)
!287 = !DIEnumerator(name: "TXT_INVALID_CHARSET", value: 168)
!288 = !DIEnumerator(name: "TXT_INVALID_CHOICE", value: 169)
!289 = !DIEnumerator(name: "TXT_EVAL_MAX_RECURSE", value: 170)
!290 = !DIEnumerator(name: "TXT_PROGRAM_NOT_FOUND", value: 171)
!291 = !DIEnumerator(name: "TXT_NO_SERVER_DEFINED", value: 172)
!292 = !DIEnumerator(name: "TXT_FILL_11", value: 173)
!293 = !DIEnumerator(name: "TXT_THEME_SAVED", value: 174)
!294 = !DIEnumerator(name: "TXT_THEME_SAVE_FAILED", value: 175)
!295 = !DIEnumerator(name: "TXT_THEME_NOT_FOUND", value: 176)
!296 = !DIEnumerator(name: "TXT_THEME_CHANGED", value: 177)
!297 = !DIEnumerator(name: "TXT_WINDOW_THEME", value: 178)
!298 = !DIEnumerator(name: "TXT_WINDOW_THEME_DEFAULT", value: 179)
!299 = !DIEnumerator(name: "TXT_WINDOW_THEME_CHANGED", value: 180)
!300 = !DIEnumerator(name: "TXT_WINDOW_THEME_REMOVED", value: 181)
!301 = !DIEnumerator(name: "TXT_FORMAT_TITLE", value: 182)
!302 = !DIEnumerator(name: "TXT_FORMAT_SUBTITLE", value: 183)
!303 = !DIEnumerator(name: "TXT_FORMAT_ITEM", value: 184)
!304 = !DIEnumerator(name: "TXT_FILL_12", value: 185)
!305 = !DIEnumerator(name: "TXT_IGNORED", value: 186)
!306 = !DIEnumerator(name: "TXT_IGNORED_OPTIONS", value: 187)
!307 = !DIEnumerator(name: "TXT_UNIGNORED", value: 188)
!308 = !DIEnumerator(name: "TXT_IGNORE_NOT_FOUND", value: 189)
!309 = !DIEnumerator(name: "TXT_IGNORE_NO_IGNORES", value: 190)
!310 = !DIEnumerator(name: "TXT_IGNORE_HEADER", value: 191)
!311 = !DIEnumerator(name: "TXT_IGNORE_LINE", value: 192)
!312 = !DIEnumerator(name: "TXT_IGNORE_FOOTER", value: 193)
!313 = !DIEnumerator(name: "TXT_FILL_13", value: 194)
!314 = !DIEnumerator(name: "TXT_NOT_CHANNEL_OR_QUERY", value: 195)
!315 = !DIEnumerator(name: "TXT_CONVERSION_ADDED", value: 196)
!316 = !DIEnumerator(name: "TXT_CONVERSION_REMOVED", value: 197)
!317 = !DIEnumerator(name: "TXT_CONVERSION_NOT_FOUND", value: 198)
!318 = !DIEnumerator(name: "TXT_CONVERSION_NO_TRANSLITS", value: 199)
!319 = !DIEnumerator(name: "TXT_RECODE_HEADER", value: 200)
!320 = !DIEnumerator(name: "TXT_RECODE_LINE", value: 201)
!321 = !DIEnumerator(name: "TXT_FILL_14", value: 202)
!322 = !DIEnumerator(name: "TXT_UNKNOWN_CHAT_PROTOCOL", value: 203)
!323 = !DIEnumerator(name: "TXT_UNKNOWN_CHATNET", value: 204)
!324 = !DIEnumerator(name: "TXT_NOT_TOGGLE", value: 205)
!325 = !DIEnumerator(name: "TXT_PERL_ERROR", value: 206)
!326 = !DIEnumerator(name: "TXT_BIND_HEADER", value: 207)
!327 = !DIEnumerator(name: "TXT_BIND_LIST", value: 208)
!328 = !DIEnumerator(name: "TXT_BIND_COMMAND_LIST", value: 209)
!329 = !DIEnumerator(name: "TXT_BIND_FOOTER", value: 210)
!330 = !DIEnumerator(name: "TXT_BIND_UNKNOWN_ID", value: 211)
!331 = !DIEnumerator(name: "TXT_CONFIG_SAVED", value: 212)
!332 = !DIEnumerator(name: "TXT_CONFIG_RELOADED", value: 213)
!333 = !DIEnumerator(name: "TXT_CONFIG_MODIFIED", value: 214)
!334 = !DIEnumerator(name: "TXT_GLIB_ERROR", value: 215)
!335 = !DIEnumerator(name: "TXT_OVERWRITE_CONFIG", value: 216)
!336 = !DIEnumerator(name: "TXT_SET_TITLE", value: 217)
!337 = !DIEnumerator(name: "TXT_SET_ITEM", value: 218)
!338 = !DIEnumerator(name: "TXT_SET_UNKNOWN", value: 219)
!339 = !DIEnumerator(name: "TXT_SET_NOT_BOOLEAN", value: 220)
!340 = !DIEnumerator(name: "TXT_NO_COMPLETIONS", value: 221)
!341 = !DIEnumerator(name: "TXT_COMPLETION_REMOVED", value: 222)
!342 = !DIEnumerator(name: "TXT_COMPLETION_HEADER", value: 223)
!343 = !DIEnumerator(name: "TXT_COMPLETION_LINE", value: 224)
!344 = !DIEnumerator(name: "TXT_COMPLETION_FOOTER", value: 225)
!345 = !DIEnumerator(name: "TXT_CAPSICUM_ENABLED", value: 226)
!346 = !DIEnumerator(name: "TXT_CAPSICUM_DISABLED", value: 227)
!347 = !DIEnumerator(name: "TXT_CAPSICUM_FAILED", value: 228)
!348 = !DIEnumerator(name: "TLS_FILL_15", value: 229)
!349 = !DIEnumerator(name: "TXT_TLS_EPHEMERAL_KEY", value: 230)
!350 = !DIEnumerator(name: "TXT_TLS_EPHEMERAL_KEY_UNAVAILBLE", value: 231)
!351 = !DIEnumerator(name: "TXT_TLS_PUBKEY", value: 232)
!352 = !DIEnumerator(name: "TXT_TLS_CERT_HEADER", value: 233)
!353 = !DIEnumerator(name: "TXT_TLS_CERT_SUBJECT", value: 234)
!354 = !DIEnumerator(name: "TXT_TLS_CERT_ISSUER", value: 235)
!355 = !DIEnumerator(name: "TXT_TLS_PUBKEY_FINGERPRINT", value: 236)
!356 = !DIEnumerator(name: "TXT_TLS_CERT_FINGERPRINT", value: 237)
!357 = !DIEnumerator(name: "TXT_TLS_PROTOCOL_VERSION", value: 238)
!358 = !{!359, !360, !364, !366, !373, !374, !402, !403, !405}
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64, align: 64)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !362, line: 46, baseType: !363)
!362 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!363 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64, align: 64)
!365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !363)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !367, line: 9, baseType: !368)
!367 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64, align: 64)
!369 = !DISubroutineType(types: !370)
!370 = !{null, !371, !371, !371, !371, !371, !371}
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64, align: 64)
!372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!373 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64, align: 64)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "HILIGHT_REC", file: !376, line: 48, baseType: !377)
!376 = !DIFile(filename: "formats.h", directory: "/home/lichi/Desktop/irssi/task1")
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_HILIGHT_REC", file: !378, line: 7, size: 512, align: 64, elements: !379)
!378 = !DIFile(filename: "hilight-text.h", directory: "/home/lichi/Desktop/irssi/task1")
!379 = !{!380, !382, !384, !385, !386, !387, !388, !390, !391, !392, !393, !394, !395, !401}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !377, file: !378, line: 8, baseType: !381, size: 64, align: 64)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64, align: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !377, file: !378, line: 10, baseType: !383, size: 64, align: 64, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64, align: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !377, file: !378, line: 11, baseType: !373, size: 32, align: 32, offset: 128)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !377, file: !378, line: 12, baseType: !381, size: 64, align: 64, offset: 192)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "act_color", scope: !377, file: !378, line: 14, baseType: !381, size: 64, align: 64, offset: 256)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !377, file: !378, line: 15, baseType: !373, size: 32, align: 32, offset: 320)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !377, file: !378, line: 17, baseType: !389, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!389 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !377, file: !378, line: 18, baseType: !389, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "nickmask", scope: !377, file: !378, line: 20, baseType: !389, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "fullword", scope: !377, file: !378, line: 21, baseType: !389, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "regexp", scope: !377, file: !378, line: 22, baseType: !389, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "case_sensitive", scope: !377, file: !378, line: 23, baseType: !389, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "preg", scope: !377, file: !378, line: 24, baseType: !396, size: 64, align: 64, offset: 384)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64, align: 64)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "Regex", file: !398, line: 9, baseType: !399)
!398 = !DIFile(filename: "../../../src/core/iregex.h", directory: "/home/lichi/Desktop/irssi/task1")
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "GRegex", file: !75, line: 414, baseType: !400)
!400 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GRegex", file: !75, line: 414, flags: DIFlagFwdDecl)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !377, file: !378, line: 25, baseType: !381, size: 64, align: 64, offset: 448)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !362, line: 77, baseType: !359)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !362, line: 48, baseType: !404)
!404 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "GFunc", file: !362, line: 88, baseType: !406)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64, align: 64)
!407 = !DISubroutineType(types: !408)
!408 = !{null, !402, !402}
!409 = !{!410, !838, !839, !840}
!410 = distinct !DIGlobalVariable(name: "nickmatch", scope: !0, file: !411, line: 40, type: !412, isLocal: true, isDefinition: true, variable: %struct.NICKMATCH_REC** @nickmatch)
!411 = !DIFile(filename: "hilight-text.c", directory: "/home/lichi/Desktop/irssi/task1")
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64, align: 64)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICKMATCH_REC", file: !414, line: 10, baseType: !415)
!414 = !DIFile(filename: "../../../src/core/nickmatch-cache.h", directory: "/home/lichi/Desktop/irssi/task1")
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !414, line: 7, size: 128, align: 64, elements: !416)
!416 = !{!417, !422}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !415, file: !414, line: 8, baseType: !418, size: 64, align: 64)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64, align: 64)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !420, line: 37, baseType: !421)
!420 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!421 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !420, line: 37, flags: DIFlagFwdDecl)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !415, file: !414, line: 9, baseType: !423, size: 64, align: 64, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICKMATCH_REBUILD_FUNC", file: !414, line: 4, baseType: !424)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64, align: 64)
!425 = !DISubroutineType(types: !426)
!426 = !{null, !418, !427, !796}
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64, align: 64)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !429, line: 109, baseType: !430)
!429 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !431, line: 15, size: 1408, align: 64, elements: !432)
!431 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!432 = !{!433, !435, !436, !437, !438, !760, !761, !762, !763, !764, !765, !789, !790, !792, !793, !794, !795, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !430, file: !434, line: 3, baseType: !373, size: 32, align: 32)
!434 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!435 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !430, file: !434, line: 4, baseType: !373, size: 32, align: 32, offset: 32)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !430, file: !434, line: 5, baseType: !418, size: 64, align: 64, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !430, file: !434, line: 7, baseType: !359, size: 64, align: 64, offset: 128)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !430, file: !434, line: 8, baseType: !439, size: 64, align: 64, offset: 192)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64, align: 64)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !429, line: 107, baseType: !441)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !442, line: 30, size: 2240, align: 64, elements: !443)
!442 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!443 = !{!444, !446, !447, !448, !674, !679, !680, !681, !682, !683, !684, !685, !686, !687, !691, !692, !696, !697, !698, !702, !703, !704, !705, !706, !707, !708, !709, !710, !716, !717, !718, !719, !720, !724, !728, !732, !736, !740, !744, !748, !755, !759}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !441, file: !445, line: 3, baseType: !373, size: 32, align: 32)
!445 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!446 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !441, file: !445, line: 4, baseType: !373, size: 32, align: 32, offset: 32)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !441, file: !445, line: 6, baseType: !373, size: 32, align: 32, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !441, file: !445, line: 8, baseType: !449, size: 64, align: 64, offset: 128)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64, align: 64)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !429, line: 113, baseType: !451)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !442, line: 25, size: 1920, align: 64, elements: !452)
!452 = !{!453, !455, !456, !457, !458, !459, !460, !461, !462, !464, !465, !466, !467, !468, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !451, file: !454, line: 3, baseType: !373, size: 32, align: 32)
!454 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!455 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !451, file: !454, line: 4, baseType: !373, size: 32, align: 32, offset: 32)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !451, file: !454, line: 6, baseType: !373, size: 32, align: 32, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !451, file: !454, line: 9, baseType: !381, size: 64, align: 64, offset: 128)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !451, file: !454, line: 10, baseType: !373, size: 32, align: 32, offset: 192)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !451, file: !454, line: 11, baseType: !381, size: 64, align: 64, offset: 256)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !451, file: !454, line: 11, baseType: !381, size: 64, align: 64, offset: 320)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !451, file: !454, line: 11, baseType: !381, size: 64, align: 64, offset: 384)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !451, file: !454, line: 13, baseType: !463, size: 16, align: 16, offset: 448)
!463 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !451, file: !454, line: 14, baseType: !381, size: 64, align: 64, offset: 512)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !451, file: !454, line: 15, baseType: !381, size: 64, align: 64, offset: 576)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !451, file: !454, line: 16, baseType: !373, size: 32, align: 32, offset: 640)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !451, file: !454, line: 17, baseType: !381, size: 64, align: 64, offset: 704)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !451, file: !454, line: 19, baseType: !469, size: 64, align: 64, offset: 768)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64, align: 64)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !429, line: 99, baseType: !471)
!471 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !429, line: 99, flags: DIFlagFwdDecl)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !451, file: !454, line: 19, baseType: !469, size: 64, align: 64, offset: 832)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !451, file: !454, line: 21, baseType: !381, size: 64, align: 64, offset: 896)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !451, file: !454, line: 22, baseType: !381, size: 64, align: 64, offset: 960)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !451, file: !454, line: 23, baseType: !381, size: 64, align: 64, offset: 1024)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !451, file: !454, line: 24, baseType: !381, size: 64, align: 64, offset: 1088)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !451, file: !454, line: 26, baseType: !381, size: 64, align: 64, offset: 1152)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !451, file: !454, line: 27, baseType: !381, size: 64, align: 64, offset: 1216)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !451, file: !454, line: 28, baseType: !381, size: 64, align: 64, offset: 1280)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !451, file: !454, line: 29, baseType: !381, size: 64, align: 64, offset: 1344)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !451, file: !454, line: 30, baseType: !381, size: 64, align: 64, offset: 1408)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !451, file: !454, line: 31, baseType: !381, size: 64, align: 64, offset: 1472)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !451, file: !454, line: 32, baseType: !381, size: 64, align: 64, offset: 1536)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !451, file: !454, line: 33, baseType: !381, size: 64, align: 64, offset: 1600)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !451, file: !454, line: 35, baseType: !486, size: 64, align: 64, offset: 1664)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64, align: 64)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !488)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !489)
!489 = !{!490, !492, !631, !632, !637, !638, !639, !640, !641, !650, !651, !652, !656, !657, !658, !659, !660, !661, !662, !663}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !488, file: !4, line: 100, baseType: !491, size: 32, align: 32)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !362, line: 49, baseType: !373)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !488, file: !4, line: 101, baseType: !493, size: 64, align: 64, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64, align: 64)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !495)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !496)
!496 = !{!497, !518, !524, !530, !534, !618, !622, !627}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !495, file: !4, line: 133, baseType: !498, size: 64, align: 64)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64, align: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!501, !486, !360, !502, !505, !506}
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !503, line: 66, baseType: !504)
!503 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!504 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64, align: 64)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64, align: 64)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64, align: 64)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !509, line: 42, baseType: !510)
!509 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !509, line: 44, size: 128, align: 64, elements: !511)
!511 = !{!512, !516, !517}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !510, file: !509, line: 46, baseType: !513, size: 32, align: 32)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !514, line: 36, baseType: !515)
!514 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !503, line: 45, baseType: !389)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !510, file: !509, line: 47, baseType: !491, size: 32, align: 32, offset: 32)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !510, file: !509, line: 48, baseType: !360, size: 64, align: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !495, file: !4, line: 138, baseType: !519, size: 64, align: 64, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64, align: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{!501, !486, !522, !502, !505, !506}
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64, align: 64)
!523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !361)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !495, file: !4, line: 143, baseType: !525, size: 64, align: 64, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64, align: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!501, !486, !528, !529, !506}
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !503, line: 51, baseType: !404)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !495, file: !4, line: 147, baseType: !531, size: 64, align: 64, offset: 192)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64, align: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{!501, !486, !506}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !495, file: !4, line: 149, baseType: !535, size: 64, align: 64, offset: 256)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64, align: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{!538, !486, !617}
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64, align: 64)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !540)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !541)
!541 = !{!542, !543, !564, !593, !595, !599, !600, !601, !602, !610, !611, !612, !613}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !540, file: !16, line: 174, baseType: !402, size: 64, align: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !540, file: !16, line: 175, baseType: !544, size: 64, align: 64, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64, align: 64)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !546)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !547)
!547 = !{!548, !552, !553}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !546, file: !16, line: 198, baseType: !549, size: 64, align: 64)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64, align: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{null, !402}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !546, file: !16, line: 199, baseType: !549, size: 64, align: 64, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !546, file: !16, line: 200, baseType: !554, size: 64, align: 64, offset: 128)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64, align: 64)
!555 = !DISubroutineType(types: !556)
!556 = !{null, !402, !538, !557, !563}
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64, align: 64)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !559)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64, align: 64)
!560 = !DISubroutineType(types: !561)
!561 = !{!562, !402}
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !362, line: 50, baseType: !491)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64, align: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !540, file: !16, line: 177, baseType: !565, size: 64, align: 64, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64, align: 64)
!566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !567)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !568)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !569)
!569 = !{!570, !575, !579, !583, !587, !588}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !568, file: !16, line: 216, baseType: !571, size: 64, align: 64)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64, align: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!562, !538, !574}
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64, align: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !568, file: !16, line: 218, baseType: !576, size: 64, align: 64, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64, align: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{!562, !538}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !568, file: !16, line: 219, baseType: !580, size: 64, align: 64, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64, align: 64)
!581 = !DISubroutineType(types: !582)
!582 = !{!562, !538, !558, !402}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !568, file: !16, line: 222, baseType: !584, size: 64, align: 64, offset: 192)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64, align: 64)
!585 = !DISubroutineType(types: !586)
!586 = !{null, !538}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !568, file: !16, line: 226, baseType: !558, size: 64, align: 64, offset: 256)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !568, file: !16, line: 227, baseType: !589, size: 64, align: 64, offset: 320)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !590)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64, align: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{null}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !540, file: !16, line: 178, baseType: !594, size: 32, align: 32, offset: 192)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !362, line: 55, baseType: !389)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !540, file: !16, line: 180, baseType: !596, size: 64, align: 64, offset: 256)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64, align: 64)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !598)
!598 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !540, file: !16, line: 182, baseType: !491, size: 32, align: 32, offset: 320)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !540, file: !16, line: 183, baseType: !594, size: 32, align: 32, offset: 352)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !540, file: !16, line: 184, baseType: !594, size: 32, align: 32, offset: 384)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !540, file: !16, line: 186, baseType: !603, size: 64, align: 64, offset: 448)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64, align: 64)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !605, line: 37, baseType: !606)
!605 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !605, line: 39, size: 128, align: 64, elements: !607)
!607 = !{!608, !609}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !606, file: !605, line: 41, baseType: !402, size: 64, align: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !606, file: !605, line: 42, baseType: !603, size: 64, align: 64, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !540, file: !16, line: 188, baseType: !538, size: 64, align: 64, offset: 512)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !540, file: !16, line: 189, baseType: !538, size: 64, align: 64, offset: 576)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !540, file: !16, line: 191, baseType: !381, size: 64, align: 64, offset: 640)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !540, file: !16, line: 193, baseType: !614, size: 64, align: 64, offset: 704)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64, align: 64)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !616)
!616 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !495, file: !4, line: 151, baseType: !619, size: 64, align: 64, offset: 320)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64, align: 64)
!620 = !DISubroutineType(types: !621)
!621 = !{null, !486}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !495, file: !4, line: 152, baseType: !623, size: 64, align: 64, offset: 384)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64, align: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{!501, !486, !626, !506}
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !495, file: !4, line: 155, baseType: !628, size: 64, align: 64, offset: 448)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64, align: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{!626, !486}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !488, file: !4, line: 103, baseType: !360, size: 64, align: 64, offset: 128)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !488, file: !4, line: 104, baseType: !633, size: 64, align: 64, offset: 192)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !634, line: 77, baseType: !635)
!634 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64, align: 64)
!636 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !634, line: 77, flags: DIFlagFwdDecl)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !488, file: !4, line: 105, baseType: !633, size: 64, align: 64, offset: 256)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !488, file: !4, line: 106, baseType: !360, size: 64, align: 64, offset: 320)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !488, file: !4, line: 107, baseType: !594, size: 32, align: 32, offset: 384)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !488, file: !4, line: 109, baseType: !502, size: 64, align: 64, offset: 448)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !488, file: !4, line: 110, baseType: !642, size: 64, align: 64, offset: 512)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64, align: 64)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !644, line: 39, baseType: !645)
!644 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !644, line: 41, size: 192, align: 64, elements: !646)
!646 = !{!647, !648, !649}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !645, file: !644, line: 43, baseType: !360, size: 64, align: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !645, file: !644, line: 44, baseType: !502, size: 64, align: 64, offset: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !645, file: !644, line: 45, baseType: !502, size: 64, align: 64, offset: 128)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !488, file: !4, line: 111, baseType: !642, size: 64, align: 64, offset: 576)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !488, file: !4, line: 112, baseType: !642, size: 64, align: 64, offset: 640)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !488, file: !4, line: 113, baseType: !653, size: 48, align: 8, offset: 704)
!653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 48, align: 8, elements: !654)
!654 = !{!655}
!655 = !DISubrange(count: 6)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !488, file: !4, line: 117, baseType: !594, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !488, file: !4, line: 118, baseType: !594, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !488, file: !4, line: 119, baseType: !594, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !488, file: !4, line: 120, baseType: !594, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !488, file: !4, line: 121, baseType: !594, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !488, file: !4, line: 122, baseType: !594, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !488, file: !4, line: 124, baseType: !402, size: 64, align: 64, offset: 768)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !488, file: !4, line: 125, baseType: !402, size: 64, align: 64, offset: 832)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !451, file: !454, line: 38, baseType: !389, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !451, file: !454, line: 39, baseType: !389, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !451, file: !454, line: 40, baseType: !389, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !451, file: !454, line: 41, baseType: !389, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !451, file: !454, line: 42, baseType: !389, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !451, file: !454, line: 43, baseType: !389, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !451, file: !454, line: 44, baseType: !389, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !451, file: !454, line: 45, baseType: !389, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !451, file: !454, line: 46, baseType: !381, size: 64, align: 64, offset: 1792)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !451, file: !454, line: 47, baseType: !381, size: 64, align: 64, offset: 1856)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !441, file: !445, line: 9, baseType: !675, size: 64, align: 64, offset: 192)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !676, line: 75, baseType: !677)
!676 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !678, line: 139, baseType: !404)
!678 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!679 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !441, file: !445, line: 10, baseType: !675, size: 64, align: 64, offset: 256)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !441, file: !445, line: 12, baseType: !381, size: 64, align: 64, offset: 320)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !441, file: !445, line: 13, baseType: !381, size: 64, align: 64, offset: 384)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !441, file: !445, line: 15, baseType: !389, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !441, file: !445, line: 16, baseType: !389, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !441, file: !445, line: 17, baseType: !389, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !441, file: !445, line: 18, baseType: !389, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !441, file: !445, line: 19, baseType: !389, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !441, file: !445, line: 21, baseType: !688, size: 64, align: 64, offset: 512)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64, align: 64)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !429, line: 102, baseType: !690)
!690 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !429, line: 102, flags: DIFlagFwdDecl)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !441, file: !445, line: 22, baseType: !373, size: 32, align: 32, offset: 576)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !441, file: !445, line: 25, baseType: !693, size: 128, align: 64, offset: 640)
!693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !486, size: 128, align: 64, elements: !694)
!694 = !{!695}
!695 = !DISubrange(count: 2)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !441, file: !445, line: 26, baseType: !373, size: 32, align: 32, offset: 768)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !441, file: !445, line: 27, baseType: !373, size: 32, align: 32, offset: 800)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !441, file: !445, line: 29, baseType: !699, size: 64, align: 64, offset: 832)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64, align: 64)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !429, line: 103, baseType: !701)
!701 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !429, line: 103, flags: DIFlagFwdDecl)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !441, file: !445, line: 30, baseType: !418, size: 64, align: 64, offset: 896)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !441, file: !445, line: 32, baseType: !381, size: 64, align: 64, offset: 960)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !441, file: !445, line: 33, baseType: !381, size: 64, align: 64, offset: 1024)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !441, file: !445, line: 34, baseType: !381, size: 64, align: 64, offset: 1088)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !441, file: !445, line: 35, baseType: !389, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !441, file: !445, line: 36, baseType: !389, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !441, file: !445, line: 37, baseType: !389, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !441, file: !445, line: 38, baseType: !389, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !441, file: !445, line: 40, baseType: !711, size: 128, align: 64, offset: 1216)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !362, line: 504, baseType: !712)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !362, line: 506, size: 128, align: 64, elements: !713)
!713 = !{!714, !715}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !712, file: !362, line: 508, baseType: !403, size: 64, align: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !712, file: !362, line: 509, baseType: !403, size: 64, align: 64, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !441, file: !445, line: 41, baseType: !675, size: 64, align: 64, offset: 1344)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !441, file: !445, line: 42, baseType: !373, size: 32, align: 32, offset: 1408)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !441, file: !445, line: 44, baseType: !603, size: 64, align: 64, offset: 1472)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !441, file: !445, line: 45, baseType: !603, size: 64, align: 64, offset: 1536)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !441, file: !445, line: 53, baseType: !721, size: 64, align: 64, offset: 1600)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64, align: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{null, !439, !364, !373}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !441, file: !445, line: 55, baseType: !725, size: 64, align: 64, offset: 1664)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64, align: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{!373, !439, !363}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !441, file: !445, line: 57, baseType: !729, size: 64, align: 64, offset: 1728)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64, align: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{!373, !439, !364}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !441, file: !445, line: 60, baseType: !733, size: 64, align: 64, offset: 1792)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64, align: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!364, !439}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !441, file: !445, line: 62, baseType: !737, size: 64, align: 64, offset: 1856)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64, align: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{null, !439, !364, !364, !373}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !441, file: !445, line: 65, baseType: !741, size: 64, align: 64, offset: 1920)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64, align: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!383, !439, !364, !364}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !441, file: !445, line: 69, baseType: !745, size: 64, align: 64, offset: 1984)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64, align: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{!427, !439, !364}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !441, file: !445, line: 70, baseType: !749, size: 64, align: 64, offset: 2048)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64, align: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{!752, !439, !364}
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64, align: 64)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !429, line: 110, baseType: !754)
!754 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !429, line: 110, flags: DIFlagFwdDecl)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !441, file: !445, line: 71, baseType: !756, size: 64, align: 64, offset: 2112)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64, align: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{!373, !364, !364}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !441, file: !445, line: 73, baseType: !756, size: 64, align: 64, offset: 2176)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !430, file: !434, line: 9, baseType: !381, size: 64, align: 64, offset: 256)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !430, file: !434, line: 10, baseType: !381, size: 64, align: 64, offset: 320)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !430, file: !434, line: 11, baseType: !675, size: 64, align: 64, offset: 384)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !430, file: !434, line: 12, baseType: !373, size: 32, align: 32, offset: 448)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !430, file: !434, line: 13, baseType: !381, size: 64, align: 64, offset: 512)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !430, file: !434, line: 15, baseType: !766, size: 64, align: 64, offset: 576)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64, align: 64)
!767 = !DISubroutineType(types: !768)
!768 = !{null, !769}
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64, align: 64)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !429, line: 108, baseType: !771)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !772, line: 5, size: 704, align: 64, elements: !773)
!772 = !DIFile(filename: "../../../src/core/window-item-def.h", directory: "/home/lichi/Desktop/irssi/task1")
!773 = !{!774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !771, file: !434, line: 3, baseType: !373, size: 32, align: 32)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !771, file: !434, line: 4, baseType: !373, size: 32, align: 32, offset: 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !771, file: !434, line: 5, baseType: !418, size: 64, align: 64, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !771, file: !434, line: 7, baseType: !359, size: 64, align: 64, offset: 128)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !771, file: !434, line: 8, baseType: !439, size: 64, align: 64, offset: 192)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !771, file: !434, line: 9, baseType: !381, size: 64, align: 64, offset: 256)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !771, file: !434, line: 10, baseType: !381, size: 64, align: 64, offset: 320)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !771, file: !434, line: 11, baseType: !675, size: 64, align: 64, offset: 384)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !771, file: !434, line: 12, baseType: !373, size: 32, align: 32, offset: 448)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !771, file: !434, line: 13, baseType: !381, size: 64, align: 64, offset: 512)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !771, file: !434, line: 15, baseType: !766, size: 64, align: 64, offset: 576)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !771, file: !434, line: 17, baseType: !786, size: 64, align: 64, offset: 640)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64, align: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{!364, !769}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !430, file: !434, line: 17, baseType: !786, size: 64, align: 64, offset: 640)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !430, file: !791, line: 5, baseType: !381, size: 64, align: 64, offset: 704)
!791 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!792 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !430, file: !791, line: 6, baseType: !381, size: 64, align: 64, offset: 768)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !430, file: !791, line: 7, baseType: !675, size: 64, align: 64, offset: 832)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !430, file: !791, line: 9, baseType: !418, size: 64, align: 64, offset: 896)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !430, file: !791, line: 10, baseType: !796, size: 64, align: 64, offset: 960)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64, align: 64)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !429, line: 111, baseType: !798)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !799, line: 13, size: 576, align: 64, elements: !800)
!799 = !DIFile(filename: "../../../src/core/nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!800 = !{!801, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !819, !820}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !798, file: !802, line: 3, baseType: !373, size: 32, align: 32)
!802 = !DIFile(filename: "../../../src/core/nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!803 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !798, file: !802, line: 4, baseType: !373, size: 32, align: 32, offset: 32)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !798, file: !802, line: 6, baseType: !675, size: 64, align: 64, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !798, file: !802, line: 8, baseType: !381, size: 64, align: 64, offset: 128)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !798, file: !802, line: 9, baseType: !381, size: 64, align: 64, offset: 192)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !798, file: !802, line: 10, baseType: !381, size: 64, align: 64, offset: 256)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !798, file: !802, line: 11, baseType: !373, size: 32, align: 32, offset: 320)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !798, file: !802, line: 14, baseType: !389, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !798, file: !802, line: 15, baseType: !389, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !798, file: !802, line: 18, baseType: !389, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !798, file: !802, line: 19, baseType: !389, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !798, file: !802, line: 20, baseType: !389, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !798, file: !802, line: 21, baseType: !389, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !798, file: !802, line: 22, baseType: !816, size: 64, align: 8, offset: 360)
!816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 64, align: 8, elements: !817)
!817 = !{!818}
!818 = !DISubrange(count: 8)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !798, file: !802, line: 26, baseType: !359, size: 64, align: 64, offset: 448)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !798, file: !802, line: 28, baseType: !796, size: 64, align: 64, offset: 512)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !430, file: !791, line: 12, baseType: !389, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !430, file: !791, line: 13, baseType: !381, size: 64, align: 64, offset: 1088)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !430, file: !791, line: 14, baseType: !373, size: 32, align: 32, offset: 1152)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !430, file: !791, line: 15, baseType: !381, size: 64, align: 64, offset: 1216)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !430, file: !791, line: 17, baseType: !389, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !430, file: !791, line: 18, baseType: !389, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !430, file: !791, line: 19, baseType: !389, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !430, file: !791, line: 20, baseType: !389, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !430, file: !791, line: 22, baseType: !389, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !430, file: !791, line: 23, baseType: !389, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !430, file: !791, line: 24, baseType: !389, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !430, file: !791, line: 25, baseType: !389, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !430, file: !791, line: 26, baseType: !389, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !430, file: !791, line: 31, baseType: !835, size: 64, align: 64, offset: 1344)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64, align: 64)
!836 = !DISubroutineType(types: !837)
!837 = !{!381, !427}
!838 = distinct !DIGlobalVariable(name: "never_hilight_level", scope: !0, file: !411, line: 41, type: !373, isLocal: true, isDefinition: true, variable: i32* @never_hilight_level)
!839 = distinct !DIGlobalVariable(name: "default_hilight_level", scope: !0, file: !411, line: 41, type: !373, isLocal: true, isDefinition: true, variable: i32* @default_hilight_level)
!840 = distinct !DIGlobalVariable(name: "hilights", scope: !0, file: !411, line: 42, type: !603, isLocal: false, isDefinition: true, variable: %struct._GSList** @hilights)
!841 = !{i32 2, !"Dwarf Version", i32 4}
!842 = !{i32 2, !"Debug Info Version", i32 3}
!843 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!844 = distinct !DISubprogram(name: "hilight_create", scope: !411, file: !411, line: 129, type: !845, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !847)
!845 = !DISubroutineType(types: !846)
!846 = !{null, !374}
!847 = !{}
!848 = !DILocalVariable(name: "rec", arg: 1, scope: !844, file: !411, line: 129, type: !374)
!849 = !DIExpression()
!850 = !DILocation(line: 129, column: 34, scope: !844)
!851 = !DILocation(line: 131, column: 19, scope: !852)
!852 = distinct !DILexicalBlock(scope: !844, file: !411, line: 131, column: 6)
!853 = !DILocation(line: 131, column: 29, scope: !852)
!854 = !DILocation(line: 131, column: 6, scope: !852)
!855 = !DILocation(line: 131, column: 34, scope: !852)
!856 = !DILocation(line: 131, column: 6, scope: !844)
!857 = !DILocation(line: 132, column: 25, scope: !858)
!858 = distinct !DILexicalBlock(scope: !852, file: !411, line: 131, column: 42)
!859 = !DILocation(line: 132, column: 3, scope: !858)
!860 = !DILocation(line: 133, column: 29, scope: !858)
!861 = !DILocation(line: 133, column: 39, scope: !858)
!862 = !DILocation(line: 133, column: 14, scope: !858)
!863 = !DILocation(line: 133, column: 12, scope: !858)
!864 = !DILocation(line: 134, column: 2, scope: !858)
!865 = !DILocation(line: 136, column: 28, scope: !844)
!866 = !DILocation(line: 136, column: 38, scope: !844)
!867 = !DILocation(line: 136, column: 13, scope: !844)
!868 = !DILocation(line: 136, column: 11, scope: !844)
!869 = !DILocation(line: 137, column: 21, scope: !844)
!870 = !DILocation(line: 137, column: 2, scope: !844)
!871 = !DILocation(line: 139, column: 19, scope: !844)
!872 = !DILocation(line: 139, column: 2, scope: !844)
!873 = !DILocation(line: 141, column: 36, scope: !844)
!874 = !DILocation(line: 141, column: 2, scope: !844)
!875 = !DILocation(line: 142, column: 1, scope: !844)
!876 = distinct !DISubprogram(name: "hilight_remove_config", scope: !411, file: !411, line: 91, type: !845, isLocal: true, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !847)
!877 = !DILocalVariable(name: "rec", arg: 1, scope: !876, file: !411, line: 91, type: !374)
!878 = !DILocation(line: 91, column: 48, scope: !876)
!879 = !DILocalVariable(name: "node", scope: !876, file: !411, line: 93, type: !880)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64, align: 64)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "CONFIG_NODE", file: !67, line: 17, baseType: !882)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CONFIG_NODE", file: !67, line: 20, size: 192, align: 64, elements: !883)
!883 = !{!884, !885, !886}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !882, file: !67, line: 21, baseType: !373, size: 32, align: 32)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !882, file: !67, line: 22, baseType: !381, size: 64, align: 64, offset: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !882, file: !67, line: 23, baseType: !359, size: 64, align: 64, offset: 128)
!887 = !DILocation(line: 93, column: 15, scope: !876)
!888 = !DILocation(line: 95, column: 2, scope: !876)
!889 = distinct !{!889, !888}
!890 = !DILocation(line: 95, column: 10, scope: !891)
!891 = !DILexicalBlockFile(scope: !892, file: !411, discriminator: 1)
!892 = distinct !DILexicalBlock(scope: !893, file: !411, line: 95, column: 10)
!893 = distinct !DILexicalBlock(scope: !876, file: !411, line: 95, column: 4)
!894 = !DILocation(line: 95, column: 14, scope: !891)
!895 = !DILocation(line: 95, column: 5, scope: !896)
!896 = !DILexicalBlockFile(scope: !897, file: !411, discriminator: 2)
!897 = distinct !DILexicalBlock(scope: !892, file: !411, line: 95, column: 3)
!898 = !DILocation(line: 95, column: 14, scope: !899)
!899 = !DILexicalBlockFile(scope: !900, file: !411, discriminator: 3)
!900 = distinct !DILexicalBlock(scope: !892, file: !411, line: 95, column: 12)
!901 = !DILocation(line: 95, column: 98, scope: !899)
!902 = !DILocation(line: 95, column: 109, scope: !903)
!903 = !DILexicalBlockFile(scope: !893, file: !411, discriminator: 4)
!904 = !DILocation(line: 97, column: 30, scope: !876)
!905 = !DILocation(line: 97, column: 9, scope: !876)
!906 = !DILocation(line: 97, column: 7, scope: !876)
!907 = !DILocation(line: 98, column: 6, scope: !908)
!908 = distinct !DILexicalBlock(scope: !876, file: !411, line: 98, column: 6)
!909 = !DILocation(line: 98, column: 11, scope: !908)
!910 = !DILocation(line: 98, column: 6, scope: !876)
!911 = !DILocation(line: 98, column: 43, scope: !912)
!912 = !DILexicalBlockFile(scope: !908, file: !411, discriminator: 1)
!913 = !DILocation(line: 98, column: 55, scope: !912)
!914 = !DILocation(line: 98, column: 75, scope: !912)
!915 = !DILocation(line: 98, column: 85, scope: !912)
!916 = !DILocation(line: 98, column: 61, scope: !912)
!917 = !DILocation(line: 98, column: 19, scope: !918)
!918 = !DILexicalBlockFile(scope: !912, file: !411, discriminator: 2)
!919 = !DILocation(line: 98, column: 19, scope: !912)
!920 = !DILocation(line: 99, column: 1, scope: !876)
!921 = distinct !DISubprogram(name: "hilight_add_config", scope: !411, file: !411, line: 63, type: !845, isLocal: true, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !847)
!922 = !DILocalVariable(name: "rec", arg: 1, scope: !921, file: !411, line: 63, type: !374)
!923 = !DILocation(line: 63, column: 45, scope: !921)
!924 = !DILocalVariable(name: "node", scope: !921, file: !411, line: 65, type: !880)
!925 = !DILocation(line: 65, column: 15, scope: !921)
!926 = !DILocation(line: 67, column: 2, scope: !921)
!927 = distinct !{!927, !926}
!928 = !DILocation(line: 67, column: 10, scope: !929)
!929 = !DILexicalBlockFile(scope: !930, file: !411, discriminator: 1)
!930 = distinct !DILexicalBlock(scope: !931, file: !411, line: 67, column: 10)
!931 = distinct !DILexicalBlock(scope: !921, file: !411, line: 67, column: 4)
!932 = !DILocation(line: 67, column: 14, scope: !929)
!933 = !DILocation(line: 67, column: 5, scope: !934)
!934 = !DILexicalBlockFile(scope: !935, file: !411, discriminator: 2)
!935 = distinct !DILexicalBlock(scope: !930, file: !411, line: 67, column: 3)
!936 = !DILocation(line: 67, column: 14, scope: !937)
!937 = !DILexicalBlockFile(scope: !938, file: !411, discriminator: 3)
!938 = distinct !DILexicalBlock(scope: !930, file: !411, line: 67, column: 12)
!939 = !DILocation(line: 67, column: 98, scope: !937)
!940 = !DILocation(line: 67, column: 109, scope: !941)
!941 = !DILexicalBlockFile(scope: !931, file: !411, discriminator: 4)
!942 = !DILocation(line: 69, column: 30, scope: !921)
!943 = !DILocation(line: 69, column: 9, scope: !921)
!944 = !DILocation(line: 69, column: 7, scope: !921)
!945 = !DILocation(line: 70, column: 29, scope: !921)
!946 = !DILocation(line: 70, column: 41, scope: !921)
!947 = !DILocation(line: 70, column: 9, scope: !921)
!948 = !DILocation(line: 70, column: 7, scope: !921)
!949 = !DILocation(line: 72, column: 22, scope: !921)
!950 = !DILocation(line: 72, column: 34, scope: !921)
!951 = !DILocation(line: 72, column: 48, scope: !921)
!952 = !DILocation(line: 72, column: 53, scope: !921)
!953 = !DILocation(line: 72, column: 2, scope: !921)
!954 = !DILocation(line: 73, column: 6, scope: !955)
!955 = distinct !DILexicalBlock(scope: !921, file: !411, line: 73, column: 6)
!956 = !DILocation(line: 73, column: 11, scope: !955)
!957 = !DILocation(line: 73, column: 17, scope: !955)
!958 = !DILocation(line: 73, column: 6, scope: !921)
!959 = !DILocation(line: 73, column: 42, scope: !960)
!960 = !DILexicalBlockFile(scope: !955, file: !411, discriminator: 1)
!961 = !DILocation(line: 73, column: 54, scope: !960)
!962 = !DILocation(line: 73, column: 69, scope: !960)
!963 = !DILocation(line: 73, column: 74, scope: !960)
!964 = !DILocation(line: 73, column: 22, scope: !960)
!965 = !DILocation(line: 74, column: 6, scope: !966)
!966 = distinct !DILexicalBlock(scope: !921, file: !411, line: 74, column: 6)
!967 = !DILocation(line: 74, column: 11, scope: !966)
!968 = !DILocation(line: 74, column: 6, scope: !921)
!969 = !DILocation(line: 74, column: 38, scope: !970)
!970 = !DILexicalBlockFile(scope: !966, file: !411, discriminator: 1)
!971 = !DILocation(line: 74, column: 50, scope: !970)
!972 = !DILocation(line: 74, column: 65, scope: !970)
!973 = !DILocation(line: 74, column: 70, scope: !970)
!974 = !DILocation(line: 74, column: 18, scope: !970)
!975 = !DILocation(line: 75, column: 6, scope: !976)
!976 = distinct !DILexicalBlock(scope: !921, file: !411, line: 75, column: 6)
!977 = !DILocation(line: 75, column: 11, scope: !976)
!978 = !DILocation(line: 75, column: 6, scope: !921)
!979 = !DILocation(line: 75, column: 42, scope: !980)
!980 = !DILexicalBlockFile(scope: !976, file: !411, discriminator: 1)
!981 = !DILocation(line: 75, column: 54, scope: !980)
!982 = !DILocation(line: 75, column: 73, scope: !980)
!983 = !DILocation(line: 75, column: 78, scope: !980)
!984 = !DILocation(line: 75, column: 22, scope: !980)
!985 = !DILocation(line: 76, column: 6, scope: !986)
!986 = distinct !DILexicalBlock(scope: !921, file: !411, line: 76, column: 6)
!987 = !DILocation(line: 76, column: 11, scope: !986)
!988 = !DILocation(line: 76, column: 20, scope: !986)
!989 = !DILocation(line: 76, column: 6, scope: !921)
!990 = !DILocation(line: 76, column: 45, scope: !991)
!991 = !DILexicalBlockFile(scope: !986, file: !411, discriminator: 1)
!992 = !DILocation(line: 76, column: 57, scope: !991)
!993 = !DILocation(line: 76, column: 75, scope: !991)
!994 = !DILocation(line: 76, column: 80, scope: !991)
!995 = !DILocation(line: 76, column: 25, scope: !991)
!996 = !DILocation(line: 77, column: 23, scope: !921)
!997 = !DILocation(line: 77, column: 35, scope: !921)
!998 = !DILocation(line: 77, column: 49, scope: !921)
!999 = !DILocation(line: 77, column: 54, scope: !921)
!1000 = !DILocation(line: 77, column: 2, scope: !921)
!1001 = !DILocation(line: 78, column: 23, scope: !921)
!1002 = !DILocation(line: 78, column: 35, scope: !921)
!1003 = !DILocation(line: 78, column: 49, scope: !921)
!1004 = !DILocation(line: 78, column: 54, scope: !921)
!1005 = !DILocation(line: 78, column: 2, scope: !921)
!1006 = !DILocation(line: 79, column: 6, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !921, file: !411, line: 79, column: 6)
!1008 = !DILocation(line: 79, column: 11, scope: !1007)
!1009 = !DILocation(line: 79, column: 6, scope: !921)
!1010 = !DILocation(line: 79, column: 42, scope: !1011)
!1011 = !DILexicalBlockFile(scope: !1007, file: !411, discriminator: 1)
!1012 = !DILocation(line: 79, column: 54, scope: !1011)
!1013 = !DILocation(line: 79, column: 21, scope: !1011)
!1014 = !DILocation(line: 80, column: 6, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !921, file: !411, line: 80, column: 6)
!1016 = !DILocation(line: 80, column: 11, scope: !1015)
!1017 = !DILocation(line: 80, column: 6, scope: !921)
!1018 = !DILocation(line: 80, column: 42, scope: !1019)
!1019 = !DILexicalBlockFile(scope: !1015, file: !411, discriminator: 1)
!1020 = !DILocation(line: 80, column: 54, scope: !1019)
!1021 = !DILocation(line: 80, column: 21, scope: !1019)
!1022 = !DILocation(line: 81, column: 6, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !921, file: !411, line: 81, column: 6)
!1024 = !DILocation(line: 81, column: 11, scope: !1023)
!1025 = !DILocation(line: 81, column: 6, scope: !921)
!1026 = !DILocation(line: 81, column: 40, scope: !1027)
!1027 = !DILexicalBlockFile(scope: !1023, file: !411, discriminator: 1)
!1028 = !DILocation(line: 81, column: 52, scope: !1027)
!1029 = !DILocation(line: 81, column: 19, scope: !1027)
!1030 = !DILocation(line: 82, column: 6, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !921, file: !411, line: 82, column: 6)
!1032 = !DILocation(line: 82, column: 11, scope: !1031)
!1033 = !DILocation(line: 82, column: 6, scope: !921)
!1034 = !DILocation(line: 82, column: 48, scope: !1035)
!1035 = !DILexicalBlockFile(scope: !1031, file: !411, discriminator: 1)
!1036 = !DILocation(line: 82, column: 60, scope: !1035)
!1037 = !DILocation(line: 82, column: 27, scope: !1035)
!1038 = !DILocation(line: 83, column: 6, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !921, file: !411, line: 83, column: 6)
!1040 = !DILocation(line: 83, column: 11, scope: !1039)
!1041 = !DILocation(line: 83, column: 6, scope: !921)
!1042 = !DILocation(line: 83, column: 42, scope: !1043)
!1043 = !DILexicalBlockFile(scope: !1039, file: !411, discriminator: 1)
!1044 = !DILocation(line: 83, column: 54, scope: !1043)
!1045 = !DILocation(line: 83, column: 73, scope: !1043)
!1046 = !DILocation(line: 83, column: 78, scope: !1043)
!1047 = !DILocation(line: 83, column: 22, scope: !1043)
!1048 = !DILocation(line: 85, column: 6, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !921, file: !411, line: 85, column: 6)
!1050 = !DILocation(line: 85, column: 11, scope: !1049)
!1051 = !DILocation(line: 85, column: 20, scope: !1049)
!1052 = !DILocation(line: 85, column: 27, scope: !1049)
!1053 = !DILocation(line: 85, column: 31, scope: !1054)
!1054 = !DILexicalBlockFile(scope: !1049, file: !411, discriminator: 1)
!1055 = !DILocation(line: 85, column: 36, scope: !1054)
!1056 = !DILocation(line: 85, column: 30, scope: !1054)
!1057 = !DILocation(line: 85, column: 45, scope: !1054)
!1058 = !DILocation(line: 85, column: 6, scope: !1054)
!1059 = !DILocation(line: 86, column: 30, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1049, file: !411, line: 85, column: 54)
!1061 = !DILocation(line: 86, column: 42, scope: !1060)
!1062 = !DILocation(line: 86, column: 10, scope: !1060)
!1063 = !DILocation(line: 86, column: 8, scope: !1060)
!1064 = !DILocation(line: 87, column: 24, scope: !1060)
!1065 = !DILocation(line: 87, column: 36, scope: !1060)
!1066 = !DILocation(line: 87, column: 42, scope: !1060)
!1067 = !DILocation(line: 87, column: 47, scope: !1060)
!1068 = !DILocation(line: 87, column: 3, scope: !1060)
!1069 = !DILocation(line: 88, column: 2, scope: !1060)
!1070 = !DILocation(line: 89, column: 1, scope: !921)
!1071 = distinct !DISubprogram(name: "hilight_init_rec", scope: !411, file: !411, line: 121, type: !845, isLocal: true, isDefinition: true, scopeLine: 122, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !847)
!1072 = !DILocalVariable(name: "rec", arg: 1, scope: !1071, file: !411, line: 121, type: !374)
!1073 = !DILocation(line: 121, column: 43, scope: !1071)
!1074 = !DILocation(line: 123, column: 6, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1071, file: !411, line: 123, column: 6)
!1076 = !DILocation(line: 123, column: 11, scope: !1075)
!1077 = !DILocation(line: 123, column: 16, scope: !1075)
!1078 = !DILocation(line: 123, column: 6, scope: !1071)
!1079 = !DILocation(line: 124, column: 17, scope: !1075)
!1080 = !DILocation(line: 124, column: 22, scope: !1075)
!1081 = !DILocation(line: 124, column: 3, scope: !1075)
!1082 = !DILocation(line: 126, column: 26, scope: !1071)
!1083 = !DILocation(line: 126, column: 31, scope: !1071)
!1084 = !DILocation(line: 126, column: 14, scope: !1071)
!1085 = !DILocation(line: 126, column: 2, scope: !1071)
!1086 = !DILocation(line: 126, column: 7, scope: !1071)
!1087 = !DILocation(line: 126, column: 12, scope: !1071)
!1088 = !DILocation(line: 127, column: 1, scope: !1071)
!1089 = distinct !DISubprogram(name: "hilight_remove", scope: !411, file: !411, line: 144, type: !845, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !847)
!1090 = !DILocalVariable(name: "rec", arg: 1, scope: !1089, file: !411, line: 144, type: !374)
!1091 = !DILocation(line: 144, column: 34, scope: !1089)
!1092 = !DILocation(line: 146, column: 2, scope: !1089)
!1093 = distinct !{!1093, !1092}
!1094 = !DILocation(line: 146, column: 10, scope: !1095)
!1095 = !DILexicalBlockFile(scope: !1096, file: !411, discriminator: 1)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !411, line: 146, column: 10)
!1097 = distinct !DILexicalBlock(scope: !1089, file: !411, line: 146, column: 4)
!1098 = !DILocation(line: 146, column: 14, scope: !1095)
!1099 = !DILocation(line: 146, column: 5, scope: !1100)
!1100 = !DILexicalBlockFile(scope: !1101, file: !411, discriminator: 2)
!1101 = distinct !DILexicalBlock(scope: !1096, file: !411, line: 146, column: 3)
!1102 = !DILocation(line: 146, column: 14, scope: !1103)
!1103 = !DILexicalBlockFile(scope: !1104, file: !411, discriminator: 3)
!1104 = distinct !DILexicalBlock(scope: !1096, file: !411, line: 146, column: 12)
!1105 = !DILocation(line: 146, column: 98, scope: !1103)
!1106 = !DILocation(line: 146, column: 109, scope: !1107)
!1107 = !DILexicalBlockFile(scope: !1097, file: !411, discriminator: 4)
!1108 = !DILocation(line: 148, column: 24, scope: !1089)
!1109 = !DILocation(line: 148, column: 2, scope: !1089)
!1110 = !DILocation(line: 149, column: 28, scope: !1089)
!1111 = !DILocation(line: 149, column: 38, scope: !1089)
!1112 = !DILocation(line: 149, column: 13, scope: !1089)
!1113 = !DILocation(line: 149, column: 11, scope: !1089)
!1114 = !DILocation(line: 151, column: 38, scope: !1089)
!1115 = !DILocation(line: 151, column: 2, scope: !1089)
!1116 = !DILocation(line: 152, column: 18, scope: !1089)
!1117 = !DILocation(line: 152, column: 2, scope: !1089)
!1118 = !DILocation(line: 153, column: 1, scope: !1089)
!1119 = !DILocation(line: 153, column: 1, scope: !1120)
!1120 = !DILexicalBlockFile(scope: !1089, file: !411, discriminator: 1)
!1121 = distinct !DISubprogram(name: "hilight_destroy", scope: !411, file: !411, line: 101, type: !845, isLocal: true, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !847)
!1122 = !DILocalVariable(name: "rec", arg: 1, scope: !1121, file: !411, line: 101, type: !374)
!1123 = !DILocation(line: 101, column: 42, scope: !1121)
!1124 = !DILocation(line: 103, column: 2, scope: !1121)
!1125 = distinct !{!1125, !1124}
!1126 = !DILocation(line: 103, column: 10, scope: !1127)
!1127 = !DILexicalBlockFile(scope: !1128, file: !411, discriminator: 1)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !411, line: 103, column: 10)
!1129 = distinct !DILexicalBlock(scope: !1121, file: !411, line: 103, column: 4)
!1130 = !DILocation(line: 103, column: 14, scope: !1127)
!1131 = !DILocation(line: 103, column: 5, scope: !1132)
!1132 = !DILexicalBlockFile(scope: !1133, file: !411, discriminator: 2)
!1133 = distinct !DILexicalBlock(scope: !1128, file: !411, line: 103, column: 3)
!1134 = !DILocation(line: 103, column: 14, scope: !1135)
!1135 = !DILexicalBlockFile(scope: !1136, file: !411, discriminator: 3)
!1136 = distinct !DILexicalBlock(scope: !1128, file: !411, line: 103, column: 12)
!1137 = !DILocation(line: 103, column: 98, scope: !1135)
!1138 = !DILocation(line: 103, column: 109, scope: !1139)
!1139 = !DILexicalBlockFile(scope: !1129, file: !411, discriminator: 4)
!1140 = !DILocation(line: 105, column: 6, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1121, file: !411, line: 105, column: 6)
!1142 = !DILocation(line: 105, column: 11, scope: !1141)
!1143 = !DILocation(line: 105, column: 16, scope: !1141)
!1144 = !DILocation(line: 105, column: 6, scope: !1121)
!1145 = !DILocation(line: 105, column: 38, scope: !1146)
!1146 = !DILexicalBlockFile(scope: !1141, file: !411, discriminator: 1)
!1147 = !DILocation(line: 105, column: 43, scope: !1146)
!1148 = !DILocation(line: 105, column: 24, scope: !1146)
!1149 = !DILocation(line: 106, column: 6, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1121, file: !411, line: 106, column: 6)
!1151 = !DILocation(line: 106, column: 11, scope: !1150)
!1152 = !DILocation(line: 106, column: 20, scope: !1150)
!1153 = !DILocation(line: 106, column: 6, scope: !1121)
!1154 = !DILocation(line: 106, column: 39, scope: !1155)
!1155 = !DILexicalBlockFile(scope: !1150, file: !411, discriminator: 1)
!1156 = !DILocation(line: 106, column: 44, scope: !1155)
!1157 = !DILocation(line: 106, column: 28, scope: !1155)
!1158 = !DILocation(line: 107, column: 9, scope: !1121)
!1159 = !DILocation(line: 107, column: 14, scope: !1121)
!1160 = !DILocation(line: 107, column: 2, scope: !1121)
!1161 = !DILocation(line: 108, column: 9, scope: !1121)
!1162 = !DILocation(line: 108, column: 14, scope: !1121)
!1163 = !DILocation(line: 108, column: 2, scope: !1121)
!1164 = !DILocation(line: 109, column: 9, scope: !1121)
!1165 = !DILocation(line: 109, column: 14, scope: !1121)
!1166 = !DILocation(line: 109, column: 2, scope: !1121)
!1167 = !DILocation(line: 110, column: 9, scope: !1121)
!1168 = !DILocation(line: 110, column: 14, scope: !1121)
!1169 = !DILocation(line: 110, column: 2, scope: !1121)
!1170 = !DILocation(line: 111, column: 9, scope: !1121)
!1171 = !DILocation(line: 111, column: 2, scope: !1121)
!1172 = !DILocation(line: 112, column: 1, scope: !1121)
!1173 = !DILocation(line: 112, column: 1, scope: !1174)
!1174 = !DILexicalBlockFile(scope: !1121, file: !411, discriminator: 1)
!1175 = distinct !DISubprogram(name: "hilight_match", scope: !411, file: !411, line: 239, type: !1176, isLocal: false, isDefinition: true, scopeLine: 243, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !847)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{!374, !439, !364, !364, !364, !373, !364, !1178, !1178}
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64, align: 64)
!1179 = !DILocalVariable(name: "server", arg: 1, scope: !1175, file: !411, line: 239, type: !439)
!1180 = !DILocation(line: 239, column: 40, scope: !1175)
!1181 = !DILocalVariable(name: "channel", arg: 2, scope: !1175, file: !411, line: 239, type: !364)
!1182 = !DILocation(line: 239, column: 60, scope: !1175)
!1183 = !DILocalVariable(name: "nick", arg: 3, scope: !1175, file: !411, line: 240, type: !364)
!1184 = !DILocation(line: 240, column: 19, scope: !1175)
!1185 = !DILocalVariable(name: "address", arg: 4, scope: !1175, file: !411, line: 240, type: !364)
!1186 = !DILocation(line: 240, column: 37, scope: !1175)
!1187 = !DILocalVariable(name: "level", arg: 5, scope: !1175, file: !411, line: 241, type: !373)
!1188 = !DILocation(line: 241, column: 11, scope: !1175)
!1189 = !DILocalVariable(name: "str", arg: 6, scope: !1175, file: !411, line: 241, type: !364)
!1190 = !DILocation(line: 241, column: 30, scope: !1175)
!1191 = !DILocalVariable(name: "match_beg", arg: 7, scope: !1175, file: !411, line: 242, type: !1178)
!1192 = !DILocation(line: 242, column: 33, scope: !1175)
!1193 = !DILocalVariable(name: "match_end", arg: 8, scope: !1175, file: !411, line: 242, type: !1178)
!1194 = !DILocation(line: 242, column: 49, scope: !1175)
!1195 = !DILocalVariable(name: "tmp", scope: !1175, file: !411, line: 244, type: !603)
!1196 = !DILocation(line: 244, column: 10, scope: !1175)
!1197 = !DILocalVariable(name: "chanrec", scope: !1175, file: !411, line: 245, type: !427)
!1198 = !DILocation(line: 245, column: 22, scope: !1175)
!1199 = !DILocalVariable(name: "nickrec", scope: !1175, file: !411, line: 246, type: !796)
!1200 = !DILocation(line: 246, column: 12, scope: !1175)
!1201 = !DILocation(line: 248, column: 2, scope: !1175)
!1202 = distinct !{!1202, !1201}
!1203 = !DILocation(line: 248, column: 10, scope: !1204)
!1204 = !DILexicalBlockFile(scope: !1205, file: !411, discriminator: 1)
!1205 = distinct !DILexicalBlock(scope: !1206, file: !411, line: 248, column: 10)
!1206 = distinct !DILexicalBlock(scope: !1175, file: !411, line: 248, column: 4)
!1207 = !DILocation(line: 248, column: 14, scope: !1204)
!1208 = !DILocation(line: 248, column: 5, scope: !1209)
!1209 = !DILexicalBlockFile(scope: !1210, file: !411, discriminator: 2)
!1210 = distinct !DILexicalBlock(scope: !1205, file: !411, line: 248, column: 3)
!1211 = !DILocation(line: 248, column: 14, scope: !1212)
!1212 = !DILexicalBlockFile(scope: !1213, file: !411, discriminator: 3)
!1213 = distinct !DILexicalBlock(scope: !1205, file: !411, line: 248, column: 12)
!1214 = !DILocation(line: 248, column: 98, scope: !1212)
!1215 = !DILocation(line: 248, column: 7, scope: !1216)
!1216 = !DILexicalBlockFile(scope: !1206, file: !411, discriminator: 4)
!1217 = !DILocation(line: 250, column: 7, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1175, file: !411, line: 250, column: 6)
!1219 = !DILocation(line: 250, column: 29, scope: !1218)
!1220 = !DILocation(line: 250, column: 27, scope: !1218)
!1221 = !DILocation(line: 250, column: 39, scope: !1218)
!1222 = !DILocation(line: 250, column: 36, scope: !1218)
!1223 = !DILocation(line: 250, column: 6, scope: !1175)
!1224 = !DILocation(line: 251, column: 3, scope: !1218)
!1225 = !DILocation(line: 253, column: 6, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1175, file: !411, line: 253, column: 6)
!1227 = !DILocation(line: 253, column: 11, scope: !1226)
!1228 = !DILocation(line: 253, column: 6, scope: !1175)
!1229 = !DILocation(line: 255, column: 26, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1226, file: !411, line: 253, column: 19)
!1231 = !DILocation(line: 255, column: 34, scope: !1230)
!1232 = !DILocation(line: 255, column: 13, scope: !1230)
!1233 = !DILocation(line: 255, column: 11, scope: !1230)
!1234 = !DILocation(line: 256, column: 13, scope: !1230)
!1235 = !DILocation(line: 256, column: 21, scope: !1230)
!1236 = !DILocation(line: 256, column: 13, scope: !1237)
!1237 = !DILexicalBlockFile(scope: !1230, file: !411, discriminator: 1)
!1238 = !DILocation(line: 257, column: 18, scope: !1230)
!1239 = !DILocation(line: 257, column: 27, scope: !1230)
!1240 = !DILocation(line: 257, column: 4, scope: !1230)
!1241 = !DILocation(line: 256, column: 13, scope: !1242)
!1242 = !DILexicalBlockFile(scope: !1230, file: !411, discriminator: 2)
!1243 = !DILocation(line: 256, column: 13, scope: !1244)
!1244 = !DILexicalBlockFile(scope: !1230, file: !411, discriminator: 3)
!1245 = !DILocation(line: 256, column: 11, scope: !1244)
!1246 = !DILocation(line: 258, column: 7, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1230, file: !411, line: 258, column: 7)
!1248 = !DILocation(line: 258, column: 15, scope: !1247)
!1249 = !DILocation(line: 258, column: 7, scope: !1230)
!1250 = !DILocalVariable(name: "rec", scope: !1251, file: !411, line: 259, type: !374)
!1251 = distinct !DILexicalBlock(scope: !1247, file: !411, line: 258, column: 23)
!1252 = !DILocation(line: 259, column: 38, scope: !1251)
!1253 = !DILocation(line: 261, column: 8, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1251, file: !411, line: 261, column: 8)
!1255 = !DILocation(line: 261, column: 17, scope: !1254)
!1256 = !DILocation(line: 261, column: 22, scope: !1254)
!1257 = !DILocation(line: 261, column: 8, scope: !1251)
!1258 = !DILocation(line: 262, column: 23, scope: !1254)
!1259 = !DILocation(line: 262, column: 32, scope: !1254)
!1260 = !DILocation(line: 262, column: 41, scope: !1254)
!1261 = !DILocation(line: 262, column: 5, scope: !1254)
!1262 = !DILocation(line: 264, column: 31, scope: !1251)
!1263 = !DILocation(line: 264, column: 43, scope: !1251)
!1264 = !DILocation(line: 264, column: 50, scope: !1251)
!1265 = !DILocation(line: 264, column: 10, scope: !1251)
!1266 = !DILocation(line: 264, column: 8, scope: !1251)
!1267 = !DILocation(line: 265, column: 8, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1251, file: !411, line: 265, column: 8)
!1269 = !DILocation(line: 265, column: 12, scope: !1268)
!1270 = !DILocation(line: 265, column: 19, scope: !1268)
!1271 = !DILocation(line: 265, column: 23, scope: !1272)
!1272 = !DILexicalBlockFile(scope: !1268, file: !411, discriminator: 1)
!1273 = !DILocation(line: 265, column: 34, scope: !1272)
!1274 = !DILocation(line: 265, column: 40, scope: !1272)
!1275 = !DILocation(line: 265, column: 46, scope: !1272)
!1276 = !DILocation(line: 265, column: 33, scope: !1272)
!1277 = !DILocation(line: 265, column: 53, scope: !1278)
!1278 = !DILexicalBlockFile(scope: !1268, file: !411, discriminator: 2)
!1279 = !DILocation(line: 265, column: 58, scope: !1278)
!1280 = !DILocation(line: 265, column: 33, scope: !1278)
!1281 = !DILocation(line: 265, column: 66, scope: !1282)
!1282 = !DILexicalBlockFile(scope: !1268, file: !411, discriminator: 3)
!1283 = !DILocation(line: 265, column: 33, scope: !1282)
!1284 = !DILocation(line: 265, column: 33, scope: !1285)
!1285 = !DILexicalBlockFile(scope: !1268, file: !411, discriminator: 4)
!1286 = !DILocation(line: 265, column: 29, scope: !1285)
!1287 = !DILocation(line: 265, column: 8, scope: !1285)
!1288 = !DILocation(line: 266, column: 12, scope: !1268)
!1289 = !DILocation(line: 266, column: 5, scope: !1268)
!1290 = !DILocation(line: 267, column: 3, scope: !1251)
!1291 = !DILocation(line: 268, column: 2, scope: !1230)
!1292 = !DILocation(line: 270, column: 13, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1175, file: !411, line: 270, column: 2)
!1294 = !DILocation(line: 270, column: 11, scope: !1293)
!1295 = !DILocation(line: 270, column: 7, scope: !1293)
!1296 = !DILocation(line: 270, column: 23, scope: !1297)
!1297 = !DILexicalBlockFile(scope: !1298, file: !411, discriminator: 1)
!1298 = distinct !DILexicalBlock(scope: !1293, file: !411, line: 270, column: 2)
!1299 = !DILocation(line: 270, column: 27, scope: !1297)
!1300 = !DILocation(line: 270, column: 2, scope: !1297)
!1301 = !DILocalVariable(name: "rec", scope: !1302, file: !411, line: 271, type: !374)
!1302 = distinct !DILexicalBlock(scope: !1298, file: !411, line: 270, column: 52)
!1303 = !DILocation(line: 271, column: 16, scope: !1302)
!1304 = !DILocation(line: 271, column: 22, scope: !1302)
!1305 = !DILocation(line: 271, column: 27, scope: !1302)
!1306 = !DILocation(line: 273, column: 8, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1302, file: !411, line: 273, column: 7)
!1308 = !DILocation(line: 273, column: 13, scope: !1307)
!1309 = !DILocation(line: 273, column: 22, scope: !1307)
!1310 = !DILocation(line: 273, column: 26, scope: !1311)
!1311 = !DILexicalBlockFile(scope: !1307, file: !411, discriminator: 1)
!1312 = !DILocation(line: 273, column: 37, scope: !1311)
!1313 = !DILocation(line: 273, column: 43, scope: !1311)
!1314 = !DILocation(line: 273, column: 49, scope: !1311)
!1315 = !DILocation(line: 273, column: 36, scope: !1311)
!1316 = !DILocation(line: 273, column: 56, scope: !1317)
!1317 = !DILexicalBlockFile(scope: !1307, file: !411, discriminator: 2)
!1318 = !DILocation(line: 273, column: 61, scope: !1317)
!1319 = !DILocation(line: 273, column: 36, scope: !1317)
!1320 = !DILocation(line: 273, column: 69, scope: !1321)
!1321 = !DILexicalBlockFile(scope: !1307, file: !411, discriminator: 3)
!1322 = !DILocation(line: 273, column: 36, scope: !1321)
!1323 = !DILocation(line: 273, column: 36, scope: !1324)
!1324 = !DILexicalBlockFile(scope: !1307, file: !411, discriminator: 4)
!1325 = !DILocation(line: 273, column: 32, scope: !1324)
!1326 = !DILocation(line: 273, column: 94, scope: !1324)
!1327 = !DILocation(line: 274, column: 6, scope: !1307)
!1328 = !DILocation(line: 274, column: 12, scope: !1307)
!1329 = !DILocation(line: 274, column: 21, scope: !1307)
!1330 = !DILocation(line: 274, column: 3, scope: !1307)
!1331 = !DILocation(line: 274, column: 8, scope: !1311)
!1332 = !DILocation(line: 274, column: 17, scope: !1311)
!1333 = !DILocation(line: 274, column: 3, scope: !1311)
!1334 = !DILocation(line: 274, column: 21, scope: !1317)
!1335 = !DILocation(line: 274, column: 27, scope: !1317)
!1336 = !DILocation(line: 274, column: 38, scope: !1317)
!1337 = !DILocation(line: 274, column: 6, scope: !1317)
!1338 = !DILocation(line: 274, column: 48, scope: !1317)
!1339 = !DILocation(line: 274, column: 56, scope: !1317)
!1340 = !DILocation(line: 275, column: 5, scope: !1307)
!1341 = !DILocation(line: 275, column: 10, scope: !1307)
!1342 = !DILocation(line: 275, column: 20, scope: !1307)
!1343 = !DILocation(line: 275, column: 27, scope: !1307)
!1344 = !DILocation(line: 276, column: 6, scope: !1307)
!1345 = !DILocation(line: 276, column: 13, scope: !1307)
!1346 = !DILocation(line: 276, column: 20, scope: !1307)
!1347 = !DILocation(line: 276, column: 42, scope: !1311)
!1348 = !DILocation(line: 276, column: 47, scope: !1311)
!1349 = !DILocation(line: 276, column: 58, scope: !1311)
!1350 = !DILocation(line: 276, column: 66, scope: !1311)
!1351 = !DILocation(line: 276, column: 23, scope: !1311)
!1352 = !DILocation(line: 276, column: 71, scope: !1311)
!1353 = !DILocation(line: 276, column: 78, scope: !1311)
!1354 = !DILocation(line: 277, column: 23, scope: !1307)
!1355 = !DILocation(line: 277, column: 28, scope: !1307)
!1356 = !DILocation(line: 277, column: 33, scope: !1307)
!1357 = !DILocation(line: 277, column: 44, scope: !1307)
!1358 = !DILocation(line: 277, column: 4, scope: !1307)
!1359 = !DILocation(line: 273, column: 7, scope: !1360)
!1360 = !DILexicalBlockFile(scope: !1302, file: !411, discriminator: 5)
!1361 = !DILocation(line: 278, column: 11, scope: !1307)
!1362 = !DILocation(line: 278, column: 4, scope: !1307)
!1363 = !DILocation(line: 279, column: 2, scope: !1302)
!1364 = !DILocation(line: 270, column: 41, scope: !1365)
!1365 = !DILexicalBlockFile(scope: !1298, file: !411, discriminator: 2)
!1366 = !DILocation(line: 270, column: 46, scope: !1365)
!1367 = !DILocation(line: 270, column: 39, scope: !1365)
!1368 = !DILocation(line: 270, column: 2, scope: !1365)
!1369 = distinct !{!1369, !1370}
!1370 = !DILocation(line: 270, column: 2, scope: !1175)
!1371 = !DILocation(line: 281, column: 2, scope: !1175)
!1372 = !DILocation(line: 282, column: 1, scope: !1175)
!1373 = distinct !DISubprogram(name: "hilight_match_text", scope: !411, file: !411, line: 193, type: !1374, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !847)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{!562, !374, !364, !1178, !1178}
!1376 = !DILocalVariable(name: "rec", arg: 1, scope: !1373, file: !411, line: 193, type: !374)
!1377 = !DILocation(line: 193, column: 49, scope: !1373)
!1378 = !DILocalVariable(name: "text", arg: 2, scope: !1373, file: !411, line: 193, type: !364)
!1379 = !DILocation(line: 193, column: 66, scope: !1373)
!1380 = !DILocalVariable(name: "match_beg", arg: 3, scope: !1373, file: !411, line: 194, type: !1178)
!1381 = !DILocation(line: 194, column: 12, scope: !1373)
!1382 = !DILocalVariable(name: "match_end", arg: 4, scope: !1373, file: !411, line: 194, type: !1178)
!1383 = !DILocation(line: 194, column: 28, scope: !1373)
!1384 = !DILocalVariable(name: "ret", scope: !1373, file: !411, line: 196, type: !562)
!1385 = !DILocation(line: 196, column: 11, scope: !1373)
!1386 = !DILocation(line: 198, column: 6, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1373, file: !411, line: 198, column: 6)
!1388 = !DILocation(line: 198, column: 11, scope: !1387)
!1389 = !DILocation(line: 198, column: 6, scope: !1373)
!1390 = !DILocation(line: 199, column: 7, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !411, line: 199, column: 7)
!1392 = distinct !DILexicalBlock(scope: !1387, file: !411, line: 198, column: 19)
!1393 = !DILocation(line: 199, column: 12, scope: !1391)
!1394 = !DILocation(line: 199, column: 17, scope: !1391)
!1395 = !DILocation(line: 199, column: 7, scope: !1392)
!1396 = !DILocalVariable(name: "match", scope: !1397, file: !411, line: 200, type: !1398)
!1397 = distinct !DILexicalBlock(scope: !1391, file: !411, line: 199, column: 25)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64, align: 64)
!1399 = !DIDerivedType(tag: DW_TAG_typedef, name: "MatchInfo", file: !398, line: 10, baseType: !1400)
!1400 = !DICompositeType(tag: DW_TAG_structure_type, name: "_MatchInfo", file: !398, line: 10, flags: DIFlagFwdDecl)
!1401 = !DILocation(line: 200, column: 15, scope: !1397)
!1402 = !DILocation(line: 201, column: 18, scope: !1397)
!1403 = !DILocation(line: 201, column: 23, scope: !1397)
!1404 = !DILocation(line: 201, column: 29, scope: !1397)
!1405 = !DILocation(line: 201, column: 4, scope: !1397)
!1406 = !DILocation(line: 203, column: 29, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1397, file: !411, line: 203, column: 8)
!1408 = !DILocation(line: 203, column: 8, scope: !1407)
!1409 = !DILocation(line: 203, column: 8, scope: !1397)
!1410 = !DILocation(line: 204, column: 34, scope: !1407)
!1411 = !DILocation(line: 204, column: 44, scope: !1407)
!1412 = !DILocation(line: 204, column: 55, scope: !1407)
!1413 = !DILocation(line: 204, column: 11, scope: !1407)
!1414 = !DILocation(line: 204, column: 9, scope: !1407)
!1415 = !DILocation(line: 204, column: 5, scope: !1407)
!1416 = !DILocation(line: 206, column: 22, scope: !1397)
!1417 = !DILocation(line: 206, column: 4, scope: !1397)
!1418 = !DILocation(line: 207, column: 3, scope: !1397)
!1419 = !DILocation(line: 208, column: 2, scope: !1392)
!1420 = !DILocalVariable(name: "match", scope: !1421, file: !411, line: 209, type: !381)
!1421 = distinct !DILexicalBlock(scope: !1387, file: !411, line: 208, column: 9)
!1422 = !DILocation(line: 209, column: 9, scope: !1421)
!1423 = !DILocation(line: 211, column: 7, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1421, file: !411, line: 211, column: 7)
!1425 = !DILocation(line: 211, column: 12, scope: !1424)
!1426 = !DILocation(line: 211, column: 7, scope: !1421)
!1427 = !DILocation(line: 212, column: 12, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1424, file: !411, line: 211, column: 28)
!1429 = !DILocation(line: 212, column: 17, scope: !1428)
!1430 = !DILocation(line: 213, column: 17, scope: !1428)
!1431 = !DILocation(line: 213, column: 23, scope: !1428)
!1432 = !DILocation(line: 213, column: 28, scope: !1428)
!1433 = !DILocation(line: 213, column: 5, scope: !1428)
!1434 = !DILocation(line: 212, column: 12, scope: !1435)
!1435 = !DILexicalBlockFile(scope: !1428, file: !411, discriminator: 1)
!1436 = !DILocation(line: 214, column: 12, scope: !1428)
!1437 = !DILocation(line: 214, column: 18, scope: !1428)
!1438 = !DILocation(line: 214, column: 23, scope: !1428)
!1439 = !DILocation(line: 214, column: 5, scope: !1428)
!1440 = !DILocation(line: 212, column: 12, scope: !1441)
!1441 = !DILexicalBlockFile(scope: !1428, file: !411, discriminator: 2)
!1442 = !DILocation(line: 212, column: 12, scope: !1443)
!1443 = !DILexicalBlockFile(scope: !1428, file: !411, discriminator: 3)
!1444 = !DILocation(line: 212, column: 10, scope: !1443)
!1445 = !DILocation(line: 215, column: 3, scope: !1428)
!1446 = !DILocation(line: 216, column: 12, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1424, file: !411, line: 215, column: 10)
!1448 = !DILocation(line: 216, column: 17, scope: !1447)
!1449 = !DILocation(line: 217, column: 18, scope: !1447)
!1450 = !DILocation(line: 217, column: 24, scope: !1447)
!1451 = !DILocation(line: 217, column: 29, scope: !1447)
!1452 = !DILocation(line: 217, column: 5, scope: !1447)
!1453 = !DILocation(line: 216, column: 12, scope: !1454)
!1454 = !DILexicalBlockFile(scope: !1447, file: !411, discriminator: 1)
!1455 = !DILocation(line: 218, column: 13, scope: !1447)
!1456 = !DILocation(line: 218, column: 19, scope: !1447)
!1457 = !DILocation(line: 218, column: 24, scope: !1447)
!1458 = !DILocation(line: 218, column: 5, scope: !1447)
!1459 = !DILocation(line: 216, column: 12, scope: !1460)
!1460 = !DILexicalBlockFile(scope: !1447, file: !411, discriminator: 2)
!1461 = !DILocation(line: 216, column: 12, scope: !1462)
!1462 = !DILexicalBlockFile(scope: !1447, file: !411, discriminator: 3)
!1463 = !DILocation(line: 216, column: 10, scope: !1462)
!1464 = !DILocation(line: 220, column: 7, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1421, file: !411, line: 220, column: 7)
!1466 = !DILocation(line: 220, column: 13, scope: !1465)
!1467 = !DILocation(line: 220, column: 7, scope: !1421)
!1468 = !DILocation(line: 221, column: 8, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1470, file: !411, line: 221, column: 8)
!1470 = distinct !DILexicalBlock(scope: !1465, file: !411, line: 220, column: 21)
!1471 = !DILocation(line: 221, column: 18, scope: !1469)
!1472 = !DILocation(line: 221, column: 25, scope: !1469)
!1473 = !DILocation(line: 221, column: 28, scope: !1474)
!1474 = !DILexicalBlockFile(scope: !1469, file: !411, discriminator: 1)
!1475 = !DILocation(line: 221, column: 38, scope: !1474)
!1476 = !DILocation(line: 221, column: 8, scope: !1474)
!1477 = !DILocation(line: 222, column: 25, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1469, file: !411, line: 221, column: 47)
!1479 = !DILocation(line: 222, column: 31, scope: !1478)
!1480 = !DILocation(line: 222, column: 30, scope: !1478)
!1481 = !DILocation(line: 222, column: 18, scope: !1478)
!1482 = !DILocation(line: 222, column: 6, scope: !1478)
!1483 = !DILocation(line: 222, column: 16, scope: !1478)
!1484 = !DILocation(line: 223, column: 19, scope: !1478)
!1485 = !DILocation(line: 223, column: 18, scope: !1478)
!1486 = !DILocation(line: 223, column: 38, scope: !1478)
!1487 = !DILocation(line: 223, column: 43, scope: !1478)
!1488 = !DILocation(line: 223, column: 31, scope: !1478)
!1489 = !DILocation(line: 223, column: 29, scope: !1478)
!1490 = !DILocation(line: 223, column: 6, scope: !1478)
!1491 = !DILocation(line: 223, column: 16, scope: !1478)
!1492 = !DILocation(line: 224, column: 4, scope: !1478)
!1493 = !DILocation(line: 225, column: 8, scope: !1470)
!1494 = !DILocation(line: 226, column: 3, scope: !1470)
!1495 = !DILocation(line: 229, column: 9, scope: !1373)
!1496 = !DILocation(line: 229, column: 2, scope: !1373)
!1497 = distinct !DISubprogram(name: "hilight_get_color", scope: !411, file: !411, line: 293, type: !1498, isLocal: false, isDefinition: true, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !847)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!381, !374}
!1500 = !DILocalVariable(name: "rec", arg: 1, scope: !1497, file: !411, line: 293, type: !374)
!1501 = !DILocation(line: 293, column: 38, scope: !1497)
!1502 = !DILocalVariable(name: "color", scope: !1497, file: !411, line: 295, type: !364)
!1503 = !DILocation(line: 295, column: 14, scope: !1497)
!1504 = !DILocation(line: 297, column: 2, scope: !1497)
!1505 = distinct !{!1505, !1504}
!1506 = !DILocation(line: 297, column: 10, scope: !1507)
!1507 = !DILexicalBlockFile(scope: !1508, file: !411, discriminator: 1)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !411, line: 297, column: 10)
!1509 = distinct !DILexicalBlock(scope: !1497, file: !411, line: 297, column: 4)
!1510 = !DILocation(line: 297, column: 14, scope: !1507)
!1511 = !DILocation(line: 297, column: 5, scope: !1512)
!1512 = !DILexicalBlockFile(scope: !1513, file: !411, discriminator: 2)
!1513 = distinct !DILexicalBlock(scope: !1508, file: !411, line: 297, column: 3)
!1514 = !DILocation(line: 297, column: 14, scope: !1515)
!1515 = !DILexicalBlockFile(scope: !1516, file: !411, discriminator: 3)
!1516 = distinct !DILexicalBlock(scope: !1508, file: !411, line: 297, column: 12)
!1517 = !DILocation(line: 297, column: 98, scope: !1515)
!1518 = !DILocation(line: 297, column: 7, scope: !1519)
!1519 = !DILexicalBlockFile(scope: !1509, file: !411, discriminator: 4)
!1520 = !DILocation(line: 299, column: 10, scope: !1497)
!1521 = !DILocation(line: 299, column: 15, scope: !1497)
!1522 = !DILocation(line: 299, column: 21, scope: !1497)
!1523 = !DILocation(line: 299, column: 30, scope: !1524)
!1524 = !DILexicalBlockFile(scope: !1497, file: !411, discriminator: 1)
!1525 = !DILocation(line: 299, column: 35, scope: !1524)
!1526 = !DILocation(line: 299, column: 10, scope: !1524)
!1527 = !DILocation(line: 300, column: 3, scope: !1497)
!1528 = !DILocation(line: 299, column: 10, scope: !1529)
!1529 = !DILexicalBlockFile(scope: !1497, file: !411, discriminator: 2)
!1530 = !DILocation(line: 299, column: 10, scope: !1531)
!1531 = !DILexicalBlockFile(scope: !1497, file: !411, discriminator: 3)
!1532 = !DILocation(line: 299, column: 8, scope: !1531)
!1533 = !DILocation(line: 302, column: 30, scope: !1497)
!1534 = !DILocation(line: 302, column: 9, scope: !1497)
!1535 = !DILocation(line: 302, column: 2, scope: !1497)
!1536 = !DILocation(line: 303, column: 1, scope: !1497)
!1537 = distinct !DISubprogram(name: "hilight_update_text_dest", scope: !411, file: !411, line: 305, type: !1538, isLocal: false, isDefinition: true, scopeLine: 306, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !847)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{null, !1540, !374}
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64, align: 64)
!1541 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_DEST_REC", file: !376, line: 62, baseType: !1542)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TEXT_DEST_REC", file: !376, line: 50, size: 576, align: 64, elements: !1543)
!1543 = !{!1544, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !1542, file: !376, line: 51, baseType: !1545, size: 64, align: 64)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64, align: 64)
!1546 = !DIDerivedType(tag: DW_TAG_typedef, name: "WINDOW_REC", file: !429, line: 117, baseType: !1547)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WINDOW_REC", file: !1548, line: 28, size: 1280, align: 64, elements: !1549)
!1548 = !DIFile(filename: "fe-windows.h", directory: "/home/lichi/Desktop/irssi/task1")
!1549 = !{!1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "refnum", scope: !1547, file: !1548, line: 29, baseType: !373, size: 32, align: 32)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1547, file: !1548, line: 30, baseType: !381, size: 64, align: 64, offset: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !1547, file: !1548, line: 32, baseType: !373, size: 32, align: 32, offset: 128)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !1547, file: !1548, line: 32, baseType: !373, size: 32, align: 32, offset: 160)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !1547, file: !1548, line: 34, baseType: !603, size: 64, align: 64, offset: 192)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1547, file: !1548, line: 35, baseType: !769, size: 64, align: 64, offset: 256)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "active_server", scope: !1547, file: !1548, line: 36, baseType: !439, size: 64, align: 64, offset: 320)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "connect_server", scope: !1547, file: !1548, line: 37, baseType: !439, size: 64, align: 64, offset: 384)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !1547, file: !1548, line: 38, baseType: !381, size: 64, align: 64, offset: 448)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1547, file: !1548, line: 40, baseType: !373, size: 32, align: 32, offset: 512)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "bound_items", scope: !1547, file: !1548, line: 41, baseType: !603, size: 64, align: 64, offset: 576)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "immortal", scope: !1547, file: !1548, line: 43, baseType: !389, size: 1, align: 32, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "sticky_refnum", scope: !1547, file: !1548, line: 44, baseType: !389, size: 1, align: 32, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !1547, file: !1548, line: 45, baseType: !389, size: 1, align: 32, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !1547, file: !1548, line: 48, baseType: !1565, size: 64, align: 64, offset: 704)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64, align: 64)
!1566 = !DIDerivedType(tag: DW_TAG_typedef, name: "HISTORY_REC", file: !1567, line: 14, baseType: !1568)
!1567 = !DIFile(filename: "command-history.h", directory: "/home/lichi/Desktop/irssi/task1")
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1567, line: 6, size: 256, align: 64, elements: !1569)
!1569 = !{!1570, !1571, !1580, !1581, !1582}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1568, file: !1567, line: 7, baseType: !381, size: 64, align: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1568, file: !1567, line: 9, baseType: !1572, size: 64, align: 64, offset: 64)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64, align: 64)
!1573 = !DIDerivedType(tag: DW_TAG_typedef, name: "GList", file: !1574, line: 37, baseType: !1575)
!1574 = !DIFile(filename: "/usr/include/glib-2.0/glib/glist.h", directory: "/home/lichi/Desktop/irssi/task1")
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GList", file: !1574, line: 39, size: 192, align: 64, elements: !1576)
!1576 = !{!1577, !1578, !1579}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1575, file: !1574, line: 41, baseType: !402, size: 64, align: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1575, file: !1574, line: 42, baseType: !1572, size: 64, align: 64, offset: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1575, file: !1574, line: 43, baseType: !1572, size: 64, align: 64, offset: 128)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "lines", scope: !1568, file: !1567, line: 10, baseType: !373, size: 32, align: 32, offset: 128)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1568, file: !1567, line: 12, baseType: !373, size: 32, align: 32, offset: 160)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "redo", scope: !1568, file: !1567, line: 13, baseType: !373, size: 1, align: 32, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "history_name", scope: !1547, file: !1548, line: 49, baseType: !381, size: 64, align: 64, offset: 768)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !1547, file: !1548, line: 51, baseType: !373, size: 32, align: 32, offset: 832)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !1547, file: !1548, line: 52, baseType: !381, size: 64, align: 64, offset: 896)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "last_timestamp", scope: !1547, file: !1548, line: 54, baseType: !675, size: 64, align: 64, offset: 960)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "last_line", scope: !1547, file: !1548, line: 55, baseType: !675, size: 64, align: 64, offset: 1024)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "theme_name", scope: !1547, file: !1548, line: 57, baseType: !381, size: 64, align: 64, offset: 1088)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "theme", scope: !1547, file: !1548, line: 58, baseType: !359, size: 64, align: 64, offset: 1152)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "gui_data", scope: !1547, file: !1548, line: 60, baseType: !359, size: 64, align: 64, offset: 1216)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !1542, file: !376, line: 52, baseType: !439, size: 64, align: 64, offset: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "server_tag", scope: !1542, file: !376, line: 53, baseType: !364, size: 64, align: 64, offset: 128)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1542, file: !376, line: 54, baseType: !364, size: 64, align: 64, offset: 192)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !1542, file: !376, line: 55, baseType: !364, size: 64, align: 64, offset: 256)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1542, file: !376, line: 56, baseType: !364, size: 64, align: 64, offset: 320)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1542, file: !376, line: 57, baseType: !373, size: 32, align: 32, offset: 384)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_priority", scope: !1542, file: !376, line: 59, baseType: !373, size: 32, align: 32, offset: 416)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !1542, file: !376, line: 60, baseType: !381, size: 64, align: 64, offset: 448)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1542, file: !376, line: 61, baseType: !373, size: 32, align: 32, offset: 512)
!1600 = !DILocalVariable(name: "dest", arg: 1, scope: !1537, file: !411, line: 305, type: !1540)
!1601 = !DILocation(line: 305, column: 46, scope: !1537)
!1602 = !DILocalVariable(name: "rec", arg: 2, scope: !1537, file: !411, line: 305, type: !374)
!1603 = !DILocation(line: 305, column: 65, scope: !1537)
!1604 = !DILocation(line: 307, column: 2, scope: !1537)
!1605 = !DILocation(line: 307, column: 8, scope: !1537)
!1606 = !DILocation(line: 307, column: 14, scope: !1537)
!1607 = !DILocation(line: 309, column: 6, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1537, file: !411, line: 309, column: 6)
!1609 = !DILocation(line: 309, column: 11, scope: !1608)
!1610 = !DILocation(line: 309, column: 20, scope: !1608)
!1611 = !DILocation(line: 309, column: 6, scope: !1537)
!1612 = !DILocation(line: 310, column: 28, scope: !1608)
!1613 = !DILocation(line: 310, column: 33, scope: !1608)
!1614 = !DILocation(line: 310, column: 3, scope: !1608)
!1615 = !DILocation(line: 310, column: 9, scope: !1608)
!1616 = !DILocation(line: 310, column: 26, scope: !1608)
!1617 = !DILocation(line: 312, column: 2, scope: !1537)
!1618 = distinct !{!1618, !1617}
!1619 = !DILocation(line: 312, column: 11, scope: !1620)
!1620 = !DILexicalBlockFile(scope: !1621, file: !411, discriminator: 1)
!1621 = distinct !DILexicalBlock(scope: !1622, file: !411, line: 312, column: 11)
!1622 = distinct !DILexicalBlock(scope: !1537, file: !411, line: 312, column: 5)
!1623 = !DILocation(line: 312, column: 17, scope: !1620)
!1624 = !DILocation(line: 312, column: 41, scope: !1625)
!1625 = !DILexicalBlockFile(scope: !1626, file: !411, discriminator: 2)
!1626 = distinct !DILexicalBlock(scope: !1621, file: !411, line: 312, column: 32)
!1627 = !DILocation(line: 312, column: 47, scope: !1625)
!1628 = !DILocation(line: 312, column: 34, scope: !1625)
!1629 = !DILocation(line: 312, column: 64, scope: !1625)
!1630 = !DILocation(line: 312, column: 70, scope: !1625)
!1631 = !DILocation(line: 312, column: 85, scope: !1625)
!1632 = !DILocation(line: 312, column: 3, scope: !1625)
!1633 = !DILocation(line: 312, column: 5, scope: !1634)
!1634 = !DILexicalBlockFile(scope: !1622, file: !411, discriminator: 3)
!1635 = !DILocation(line: 313, column: 6, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1537, file: !411, line: 313, column: 6)
!1637 = !DILocation(line: 313, column: 11, scope: !1636)
!1638 = !DILocation(line: 313, column: 21, scope: !1636)
!1639 = !DILocation(line: 313, column: 28, scope: !1636)
!1640 = !DILocation(line: 313, column: 41, scope: !1641)
!1641 = !DILexicalBlockFile(scope: !1636, file: !411, discriminator: 1)
!1642 = !DILocation(line: 313, column: 46, scope: !1641)
!1643 = !DILocation(line: 313, column: 31, scope: !1641)
!1644 = !DILocation(line: 313, column: 63, scope: !1641)
!1645 = !DILocation(line: 313, column: 6, scope: !1641)
!1646 = !DILocation(line: 314, column: 3, scope: !1636)
!1647 = !DILocation(line: 314, column: 9, scope: !1636)
!1648 = !DILocation(line: 314, column: 15, scope: !1636)
!1649 = !DILocation(line: 316, column: 47, scope: !1636)
!1650 = !DILocation(line: 316, column: 25, scope: !1636)
!1651 = !DILocation(line: 316, column: 3, scope: !1636)
!1652 = !DILocation(line: 316, column: 9, scope: !1636)
!1653 = !DILocation(line: 316, column: 23, scope: !1636)
!1654 = !DILocation(line: 317, column: 1, scope: !1537)
!1655 = distinct !DISubprogram(name: "hilight_get_act_color", scope: !411, file: !411, line: 284, type: !1498, isLocal: true, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !847)
!1656 = !DILocalVariable(name: "rec", arg: 1, scope: !1655, file: !411, line: 284, type: !374)
!1657 = !DILocation(line: 284, column: 49, scope: !1655)
!1658 = !DILocation(line: 286, column: 2, scope: !1655)
!1659 = distinct !{!1659, !1658}
!1660 = !DILocation(line: 286, column: 10, scope: !1661)
!1661 = !DILexicalBlockFile(scope: !1662, file: !411, discriminator: 1)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !411, line: 286, column: 10)
!1663 = distinct !DILexicalBlock(scope: !1655, file: !411, line: 286, column: 4)
!1664 = !DILocation(line: 286, column: 14, scope: !1661)
!1665 = !DILocation(line: 286, column: 5, scope: !1666)
!1666 = !DILexicalBlockFile(scope: !1667, file: !411, discriminator: 2)
!1667 = distinct !DILexicalBlock(scope: !1662, file: !411, line: 286, column: 3)
!1668 = !DILocation(line: 286, column: 14, scope: !1669)
!1669 = !DILexicalBlockFile(scope: !1670, file: !411, discriminator: 3)
!1670 = distinct !DILexicalBlock(scope: !1662, file: !411, line: 286, column: 12)
!1671 = !DILocation(line: 286, column: 98, scope: !1669)
!1672 = !DILocation(line: 286, column: 7, scope: !1673)
!1673 = !DILexicalBlockFile(scope: !1663, file: !411, discriminator: 4)
!1674 = !DILocation(line: 288, column: 18, scope: !1655)
!1675 = !DILocation(line: 288, column: 23, scope: !1655)
!1676 = !DILocation(line: 288, column: 33, scope: !1655)
!1677 = !DILocation(line: 288, column: 42, scope: !1678)
!1678 = !DILexicalBlockFile(scope: !1655, file: !411, discriminator: 1)
!1679 = !DILocation(line: 288, column: 47, scope: !1678)
!1680 = !DILocation(line: 288, column: 18, scope: !1678)
!1681 = !DILocation(line: 289, column: 4, scope: !1655)
!1682 = !DILocation(line: 289, column: 9, scope: !1655)
!1683 = !DILocation(line: 289, column: 15, scope: !1655)
!1684 = !DILocation(line: 289, column: 24, scope: !1678)
!1685 = !DILocation(line: 289, column: 29, scope: !1678)
!1686 = !DILocation(line: 289, column: 4, scope: !1678)
!1687 = !DILocation(line: 290, column: 4, scope: !1655)
!1688 = !DILocation(line: 289, column: 4, scope: !1689)
!1689 = !DILexicalBlockFile(scope: !1655, file: !411, discriminator: 2)
!1690 = !DILocation(line: 289, column: 4, scope: !1691)
!1691 = !DILexicalBlockFile(scope: !1655, file: !411, discriminator: 3)
!1692 = !DILocation(line: 288, column: 18, scope: !1689)
!1693 = !DILocation(line: 288, column: 18, scope: !1691)
!1694 = !DILocation(line: 288, column: 9, scope: !1691)
!1695 = !DILocation(line: 288, column: 2, scope: !1691)
!1696 = !DILocation(line: 291, column: 1, scope: !1655)
!1697 = distinct !DISubprogram(name: "hilight_match_nick", scope: !411, file: !411, line: 412, type: !1698, isLocal: false, isDefinition: true, scopeLine: 415, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !847)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!374, !439, !364, !364, !364, !373, !364}
!1700 = !DILocalVariable(name: "server", arg: 1, scope: !1697, file: !411, line: 412, type: !439)
!1701 = !DILocation(line: 412, column: 45, scope: !1697)
!1702 = !DILocalVariable(name: "channel", arg: 2, scope: !1697, file: !411, line: 412, type: !364)
!1703 = !DILocation(line: 412, column: 65, scope: !1697)
!1704 = !DILocalVariable(name: "nick", arg: 3, scope: !1697, file: !411, line: 413, type: !364)
!1705 = !DILocation(line: 413, column: 17, scope: !1697)
!1706 = !DILocalVariable(name: "address", arg: 4, scope: !1697, file: !411, line: 413, type: !364)
!1707 = !DILocation(line: 413, column: 35, scope: !1697)
!1708 = !DILocalVariable(name: "level", arg: 5, scope: !1697, file: !411, line: 414, type: !373)
!1709 = !DILocation(line: 414, column: 9, scope: !1697)
!1710 = !DILocalVariable(name: "msg", arg: 6, scope: !1697, file: !411, line: 414, type: !364)
!1711 = !DILocation(line: 414, column: 28, scope: !1697)
!1712 = !DILocalVariable(name: "rec", scope: !1697, file: !411, line: 416, type: !374)
!1713 = !DILocation(line: 416, column: 22, scope: !1697)
!1714 = !DILocation(line: 418, column: 22, scope: !1697)
!1715 = !DILocation(line: 418, column: 30, scope: !1697)
!1716 = !DILocation(line: 418, column: 39, scope: !1697)
!1717 = !DILocation(line: 418, column: 45, scope: !1697)
!1718 = !DILocation(line: 419, column: 5, scope: !1697)
!1719 = !DILocation(line: 419, column: 12, scope: !1697)
!1720 = !DILocation(line: 418, column: 8, scope: !1697)
!1721 = !DILocation(line: 418, column: 6, scope: !1697)
!1722 = !DILocation(line: 420, column: 10, scope: !1697)
!1723 = !DILocation(line: 420, column: 14, scope: !1697)
!1724 = !DILocation(line: 420, column: 21, scope: !1697)
!1725 = !DILocation(line: 420, column: 25, scope: !1726)
!1726 = !DILexicalBlockFile(scope: !1697, file: !411, discriminator: 1)
!1727 = !DILocation(line: 420, column: 30, scope: !1726)
!1728 = !DILocation(line: 420, column: 9, scope: !1726)
!1729 = !DILocation(line: 420, column: 9, scope: !1730)
!1730 = !DILexicalBlockFile(scope: !1697, file: !411, discriminator: 2)
!1731 = !DILocation(line: 420, column: 45, scope: !1732)
!1732 = !DILexicalBlockFile(scope: !1697, file: !411, discriminator: 3)
!1733 = !DILocation(line: 420, column: 9, scope: !1732)
!1734 = !DILocation(line: 420, column: 9, scope: !1735)
!1735 = !DILexicalBlockFile(scope: !1697, file: !411, discriminator: 4)
!1736 = !DILocation(line: 420, column: 2, scope: !1735)
!1737 = distinct !DISubprogram(name: "hilight_text_init", scope: !411, file: !411, line: 705, type: !591, isLocal: false, isDefinition: true, scopeLine: 706, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !847)
!1738 = !DILocation(line: 707, column: 2, scope: !1737)
!1739 = !DILocation(line: 708, column: 2, scope: !1737)
!1740 = !DILocation(line: 709, column: 2, scope: !1737)
!1741 = !DILocation(line: 711, column: 2, scope: !1737)
!1742 = !DILocation(line: 713, column: 14, scope: !1737)
!1743 = !DILocation(line: 713, column: 12, scope: !1737)
!1744 = !DILocation(line: 714, column: 2, scope: !1737)
!1745 = !DILocation(line: 716, column: 2, scope: !1737)
!1746 = !DILocation(line: 717, column: 2, scope: !1737)
!1747 = !DILocation(line: 718, column: 2, scope: !1737)
!1748 = !DILocation(line: 720, column: 2, scope: !1737)
!1749 = !DILocation(line: 721, column: 2, scope: !1737)
!1750 = !DILocation(line: 722, column: 2, scope: !1737)
!1751 = !DILocation(line: 723, column: 1, scope: !1737)
!1752 = distinct !DISubprogram(name: "read_settings", scope: !411, file: !411, line: 699, type: !591, isLocal: true, isDefinition: true, scopeLine: 700, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !847)
!1753 = !DILocation(line: 701, column: 26, scope: !1752)
!1754 = !DILocation(line: 701, column: 24, scope: !1752)
!1755 = !DILocation(line: 702, column: 2, scope: !1752)
!1756 = !DILocation(line: 703, column: 1, scope: !1752)
!1757 = distinct !DISubprogram(name: "hilight_nick_cache", scope: !411, file: !411, line: 666, type: !425, isLocal: true, isDefinition: true, scopeLine: 668, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !847)
!1758 = !DILocalVariable(name: "list", arg: 1, scope: !1757, file: !411, line: 666, type: !418)
!1759 = !DILocation(line: 666, column: 44, scope: !1757)
!1760 = !DILocalVariable(name: "channel", arg: 2, scope: !1757, file: !411, line: 666, type: !427)
!1761 = !DILocation(line: 666, column: 63, scope: !1757)
!1762 = !DILocalVariable(name: "nick", arg: 3, scope: !1757, file: !411, line: 667, type: !796)
!1763 = !DILocation(line: 667, column: 18, scope: !1757)
!1764 = !DILocalVariable(name: "tmp", scope: !1757, file: !411, line: 669, type: !603)
!1765 = !DILocation(line: 669, column: 10, scope: !1757)
!1766 = !DILocalVariable(name: "match", scope: !1757, file: !411, line: 670, type: !374)
!1767 = !DILocation(line: 670, column: 15, scope: !1757)
!1768 = !DILocalVariable(name: "nickmask", scope: !1757, file: !411, line: 671, type: !381)
!1769 = !DILocation(line: 671, column: 8, scope: !1757)
!1770 = !DILocalVariable(name: "len", scope: !1757, file: !411, line: 672, type: !373)
!1771 = !DILocation(line: 672, column: 6, scope: !1757)
!1772 = !DILocalVariable(name: "best_match", scope: !1757, file: !411, line: 672, type: !373)
!1773 = !DILocation(line: 672, column: 11, scope: !1757)
!1774 = !DILocation(line: 674, column: 6, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1757, file: !411, line: 674, column: 6)
!1776 = !DILocation(line: 674, column: 12, scope: !1775)
!1777 = !DILocation(line: 674, column: 17, scope: !1775)
!1778 = !DILocation(line: 674, column: 6, scope: !1757)
!1779 = !DILocation(line: 675, column: 3, scope: !1775)
!1780 = !DILocation(line: 677, column: 25, scope: !1757)
!1781 = !DILocation(line: 677, column: 31, scope: !1757)
!1782 = !DILocation(line: 677, column: 42, scope: !1757)
!1783 = !DILocation(line: 677, column: 48, scope: !1757)
!1784 = !DILocation(line: 677, column: 13, scope: !1757)
!1785 = !DILocation(line: 677, column: 11, scope: !1757)
!1786 = !DILocation(line: 679, column: 13, scope: !1757)
!1787 = !DILocation(line: 679, column: 24, scope: !1757)
!1788 = !DILocation(line: 680, column: 13, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1757, file: !411, line: 680, column: 2)
!1790 = !DILocation(line: 680, column: 11, scope: !1789)
!1791 = !DILocation(line: 680, column: 7, scope: !1789)
!1792 = !DILocation(line: 680, column: 23, scope: !1793)
!1793 = !DILexicalBlockFile(scope: !1794, file: !411, discriminator: 1)
!1794 = distinct !DILexicalBlock(scope: !1789, file: !411, line: 680, column: 2)
!1795 = !DILocation(line: 680, column: 27, scope: !1793)
!1796 = !DILocation(line: 680, column: 2, scope: !1793)
!1797 = !DILocalVariable(name: "rec", scope: !1798, file: !411, line: 681, type: !374)
!1798 = distinct !DILexicalBlock(scope: !1794, file: !411, line: 680, column: 52)
!1799 = !DILocation(line: 681, column: 16, scope: !1798)
!1800 = !DILocation(line: 681, column: 22, scope: !1798)
!1801 = !DILocation(line: 681, column: 27, scope: !1798)
!1802 = !DILocation(line: 683, column: 7, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1798, file: !411, line: 683, column: 7)
!1804 = !DILocation(line: 683, column: 12, scope: !1803)
!1805 = !DILocation(line: 683, column: 21, scope: !1803)
!1806 = !DILocation(line: 684, column: 6, scope: !1803)
!1807 = !DILocation(line: 684, column: 12, scope: !1803)
!1808 = !DILocation(line: 684, column: 21, scope: !1803)
!1809 = !DILocation(line: 684, column: 3, scope: !1803)
!1810 = !DILocation(line: 684, column: 8, scope: !1811)
!1811 = !DILexicalBlockFile(scope: !1803, file: !411, discriminator: 1)
!1812 = !DILocation(line: 684, column: 17, scope: !1811)
!1813 = !DILocation(line: 684, column: 23, scope: !1811)
!1814 = !DILocation(line: 684, column: 3, scope: !1811)
!1815 = !DILocation(line: 684, column: 21, scope: !1816)
!1816 = !DILexicalBlockFile(scope: !1803, file: !411, discriminator: 2)
!1817 = !DILocation(line: 684, column: 27, scope: !1816)
!1818 = !DILocation(line: 684, column: 38, scope: !1816)
!1819 = !DILocation(line: 684, column: 47, scope: !1816)
!1820 = !DILocation(line: 684, column: 6, scope: !1816)
!1821 = !DILocation(line: 684, column: 54, scope: !1816)
!1822 = !DILocation(line: 684, column: 62, scope: !1816)
!1823 = !DILocation(line: 685, column: 20, scope: !1803)
!1824 = !DILocation(line: 685, column: 25, scope: !1803)
!1825 = !DILocation(line: 685, column: 31, scope: !1803)
!1826 = !DILocation(line: 685, column: 4, scope: !1803)
!1827 = !DILocation(line: 683, column: 7, scope: !1828)
!1828 = !DILexicalBlockFile(scope: !1798, file: !411, discriminator: 1)
!1829 = !DILocation(line: 686, column: 17, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1803, file: !411, line: 685, column: 42)
!1831 = !DILocation(line: 686, column: 22, scope: !1830)
!1832 = !DILocation(line: 686, column: 10, scope: !1830)
!1833 = !DILocation(line: 686, column: 8, scope: !1830)
!1834 = !DILocation(line: 687, column: 8, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1830, file: !411, line: 687, column: 8)
!1836 = !DILocation(line: 687, column: 21, scope: !1835)
!1837 = !DILocation(line: 687, column: 19, scope: !1835)
!1838 = !DILocation(line: 687, column: 8, scope: !1830)
!1839 = !DILocation(line: 688, column: 18, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1835, file: !411, line: 687, column: 26)
!1841 = !DILocation(line: 688, column: 16, scope: !1840)
!1842 = !DILocation(line: 689, column: 13, scope: !1840)
!1843 = !DILocation(line: 689, column: 11, scope: !1840)
!1844 = !DILocation(line: 690, column: 4, scope: !1840)
!1845 = !DILocation(line: 691, column: 3, scope: !1830)
!1846 = !DILocation(line: 692, column: 2, scope: !1798)
!1847 = !DILocation(line: 680, column: 41, scope: !1848)
!1848 = !DILexicalBlockFile(scope: !1794, file: !411, discriminator: 2)
!1849 = !DILocation(line: 680, column: 46, scope: !1848)
!1850 = !DILocation(line: 680, column: 39, scope: !1848)
!1851 = !DILocation(line: 680, column: 2, scope: !1848)
!1852 = distinct !{!1852, !1853}
!1853 = !DILocation(line: 680, column: 2, scope: !1757)
!1854 = !DILocation(line: 693, column: 9, scope: !1757)
!1855 = !DILocation(line: 693, column: 2, scope: !1757)
!1856 = !DILocation(line: 695, column: 6, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1757, file: !411, line: 695, column: 6)
!1858 = !DILocation(line: 695, column: 12, scope: !1857)
!1859 = !DILocation(line: 695, column: 6, scope: !1757)
!1860 = !DILocation(line: 696, column: 23, scope: !1857)
!1861 = !DILocation(line: 696, column: 29, scope: !1857)
!1862 = !DILocation(line: 696, column: 35, scope: !1857)
!1863 = !DILocation(line: 696, column: 3, scope: !1857)
!1864 = !DILocation(line: 697, column: 1, scope: !1757)
!1865 = distinct !DISubprogram(name: "read_hilight_config", scope: !411, file: !411, line: 423, type: !591, isLocal: true, isDefinition: true, scopeLine: 424, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !847)
!1866 = !DILocalVariable(name: "node", scope: !1865, file: !411, line: 425, type: !880)
!1867 = !DILocation(line: 425, column: 15, scope: !1865)
!1868 = !DILocalVariable(name: "rec", scope: !1865, file: !411, line: 426, type: !374)
!1869 = !DILocation(line: 426, column: 15, scope: !1865)
!1870 = !DILocalVariable(name: "tmp", scope: !1865, file: !411, line: 427, type: !603)
!1871 = !DILocation(line: 427, column: 10, scope: !1865)
!1872 = !DILocalVariable(name: "text", scope: !1865, file: !411, line: 428, type: !381)
!1873 = !DILocation(line: 428, column: 8, scope: !1865)
!1874 = !DILocalVariable(name: "color", scope: !1865, file: !411, line: 428, type: !381)
!1875 = !DILocation(line: 428, column: 15, scope: !1865)
!1876 = !DILocalVariable(name: "servertag", scope: !1865, file: !411, line: 428, type: !381)
!1877 = !DILocation(line: 428, column: 23, scope: !1865)
!1878 = !DILocation(line: 430, column: 2, scope: !1865)
!1879 = !DILocation(line: 432, column: 30, scope: !1865)
!1880 = !DILocation(line: 432, column: 9, scope: !1865)
!1881 = !DILocation(line: 432, column: 7, scope: !1865)
!1882 = !DILocation(line: 433, column: 6, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1865, file: !411, line: 433, column: 6)
!1884 = !DILocation(line: 433, column: 11, scope: !1883)
!1885 = !DILocation(line: 433, column: 6, scope: !1865)
!1886 = !DILocation(line: 434, column: 17, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1883, file: !411, line: 433, column: 19)
!1888 = !DILocation(line: 435, column: 3, scope: !1887)
!1889 = !DILocation(line: 438, column: 26, scope: !1865)
!1890 = !DILocation(line: 438, column: 32, scope: !1865)
!1891 = !DILocation(line: 438, column: 8, scope: !1865)
!1892 = !DILocation(line: 438, column: 6, scope: !1865)
!1893 = !DILocation(line: 439, column: 2, scope: !1865)
!1894 = !DILocation(line: 439, column: 9, scope: !1895)
!1895 = !DILexicalBlockFile(scope: !1896, file: !411, discriminator: 1)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !411, line: 439, column: 2)
!1897 = distinct !DILexicalBlock(scope: !1865, file: !411, line: 439, column: 2)
!1898 = !DILocation(line: 439, column: 13, scope: !1895)
!1899 = !DILocation(line: 439, column: 2, scope: !1895)
!1900 = !DILocation(line: 440, column: 10, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1896, file: !411, line: 439, column: 50)
!1902 = !DILocation(line: 440, column: 15, scope: !1901)
!1903 = !DILocation(line: 440, column: 8, scope: !1901)
!1904 = !DILocation(line: 442, column: 7, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1901, file: !411, line: 442, column: 7)
!1906 = !DILocation(line: 442, column: 13, scope: !1905)
!1907 = !DILocation(line: 442, column: 18, scope: !1905)
!1908 = !DILocation(line: 442, column: 7, scope: !1901)
!1909 = !DILocation(line: 443, column: 4, scope: !1905)
!1910 = !DILocation(line: 445, column: 30, scope: !1901)
!1911 = !DILocation(line: 445, column: 10, scope: !1901)
!1912 = !DILocation(line: 445, column: 8, scope: !1901)
!1913 = !DILocation(line: 446, column: 7, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1901, file: !411, line: 446, column: 7)
!1915 = !DILocation(line: 446, column: 12, scope: !1914)
!1916 = !DILocation(line: 446, column: 19, scope: !1914)
!1917 = !DILocation(line: 446, column: 23, scope: !1918)
!1918 = !DILexicalBlockFile(scope: !1914, file: !411, discriminator: 1)
!1919 = !DILocation(line: 446, column: 22, scope: !1918)
!1920 = !DILocation(line: 446, column: 28, scope: !1918)
!1921 = !DILocation(line: 446, column: 7, scope: !1918)
!1922 = !DILocation(line: 447, column: 4, scope: !1914)
!1923 = !DILocation(line: 449, column: 26, scope: !1901)
!1924 = !DILocation(line: 449, column: 10, scope: !1901)
!1925 = !DILocation(line: 449, column: 7, scope: !1901)
!1926 = !DILocation(line: 450, column: 29, scope: !1901)
!1927 = !DILocation(line: 450, column: 39, scope: !1901)
!1928 = !DILocation(line: 450, column: 14, scope: !1901)
!1929 = !DILocation(line: 450, column: 12, scope: !1901)
!1930 = !DILocation(line: 452, column: 24, scope: !1901)
!1931 = !DILocation(line: 452, column: 15, scope: !1901)
!1932 = !DILocation(line: 452, column: 3, scope: !1901)
!1933 = !DILocation(line: 452, column: 8, scope: !1901)
!1934 = !DILocation(line: 452, column: 13, scope: !1901)
!1935 = !DILocation(line: 454, column: 31, scope: !1901)
!1936 = !DILocation(line: 454, column: 11, scope: !1901)
!1937 = !DILocation(line: 454, column: 9, scope: !1901)
!1938 = !DILocation(line: 455, column: 16, scope: !1901)
!1939 = !DILocation(line: 455, column: 22, scope: !1901)
!1940 = !DILocation(line: 455, column: 29, scope: !1901)
!1941 = !DILocation(line: 455, column: 33, scope: !1942)
!1942 = !DILexicalBlockFile(scope: !1901, file: !411, discriminator: 1)
!1943 = !DILocation(line: 455, column: 32, scope: !1942)
!1944 = !DILocation(line: 455, column: 39, scope: !1942)
!1945 = !DILocation(line: 455, column: 16, scope: !1942)
!1946 = !DILocation(line: 455, column: 16, scope: !1947)
!1947 = !DILexicalBlockFile(scope: !1901, file: !411, discriminator: 2)
!1948 = !DILocation(line: 456, column: 13, scope: !1901)
!1949 = !DILocation(line: 456, column: 4, scope: !1901)
!1950 = !DILocation(line: 455, column: 16, scope: !1951)
!1951 = !DILexicalBlockFile(scope: !1901, file: !411, discriminator: 3)
!1952 = !DILocation(line: 455, column: 16, scope: !1953)
!1953 = !DILexicalBlockFile(scope: !1901, file: !411, discriminator: 4)
!1954 = !DILocation(line: 455, column: 3, scope: !1953)
!1955 = !DILocation(line: 455, column: 8, scope: !1953)
!1956 = !DILocation(line: 455, column: 14, scope: !1953)
!1957 = !DILocation(line: 458, column: 31, scope: !1901)
!1958 = !DILocation(line: 458, column: 11, scope: !1901)
!1959 = !DILocation(line: 458, column: 9, scope: !1901)
!1960 = !DILocation(line: 459, column: 20, scope: !1901)
!1961 = !DILocation(line: 459, column: 26, scope: !1901)
!1962 = !DILocation(line: 459, column: 33, scope: !1901)
!1963 = !DILocation(line: 459, column: 37, scope: !1942)
!1964 = !DILocation(line: 459, column: 36, scope: !1942)
!1965 = !DILocation(line: 459, column: 43, scope: !1942)
!1966 = !DILocation(line: 459, column: 20, scope: !1942)
!1967 = !DILocation(line: 459, column: 20, scope: !1947)
!1968 = !DILocation(line: 460, column: 13, scope: !1901)
!1969 = !DILocation(line: 460, column: 4, scope: !1901)
!1970 = !DILocation(line: 459, column: 20, scope: !1951)
!1971 = !DILocation(line: 459, column: 20, scope: !1953)
!1972 = !DILocation(line: 459, column: 3, scope: !1953)
!1973 = !DILocation(line: 459, column: 8, scope: !1953)
!1974 = !DILocation(line: 459, column: 18, scope: !1953)
!1975 = !DILocation(line: 462, column: 36, scope: !1901)
!1976 = !DILocation(line: 462, column: 16, scope: !1901)
!1977 = !DILocation(line: 462, column: 3, scope: !1901)
!1978 = !DILocation(line: 462, column: 8, scope: !1901)
!1979 = !DILocation(line: 462, column: 14, scope: !1901)
!1980 = !DILocation(line: 463, column: 39, scope: !1901)
!1981 = !DILocation(line: 463, column: 19, scope: !1901)
!1982 = !DILocation(line: 463, column: 3, scope: !1901)
!1983 = !DILocation(line: 463, column: 8, scope: !1901)
!1984 = !DILocation(line: 463, column: 17, scope: !1901)
!1985 = !DILocation(line: 464, column: 36, scope: !1901)
!1986 = !DILocation(line: 464, column: 15, scope: !1901)
!1987 = !DILocation(line: 464, column: 3, scope: !1901)
!1988 = !DILocation(line: 464, column: 8, scope: !1901)
!1989 = !DILocation(line: 464, column: 13, scope: !1901)
!1990 = !DILocation(line: 465, column: 36, scope: !1901)
!1991 = !DILocation(line: 465, column: 15, scope: !1901)
!1992 = !DILocation(line: 465, column: 3, scope: !1901)
!1993 = !DILocation(line: 465, column: 8, scope: !1901)
!1994 = !DILocation(line: 465, column: 13, scope: !1901)
!1995 = !DILocation(line: 466, column: 46, scope: !1901)
!1996 = !DILocation(line: 466, column: 25, scope: !1901)
!1997 = !DILocation(line: 466, column: 3, scope: !1901)
!1998 = !DILocation(line: 466, column: 8, scope: !1901)
!1999 = !DILocation(line: 466, column: 23, scope: !1901)
!2000 = !DILocation(line: 468, column: 40, scope: !1901)
!2001 = !DILocation(line: 468, column: 19, scope: !1901)
!2002 = !DILocation(line: 468, column: 3, scope: !1901)
!2003 = !DILocation(line: 468, column: 8, scope: !1901)
!2004 = !DILocation(line: 468, column: 17, scope: !1901)
!2005 = !DILocation(line: 469, column: 40, scope: !1901)
!2006 = !DILocation(line: 469, column: 19, scope: !1901)
!2007 = !DILocation(line: 469, column: 3, scope: !1901)
!2008 = !DILocation(line: 469, column: 8, scope: !1901)
!2009 = !DILocation(line: 469, column: 17, scope: !1901)
!2010 = !DILocation(line: 470, column: 38, scope: !1901)
!2011 = !DILocation(line: 470, column: 17, scope: !1901)
!2012 = !DILocation(line: 470, column: 3, scope: !1901)
!2013 = !DILocation(line: 470, column: 8, scope: !1901)
!2014 = !DILocation(line: 470, column: 15, scope: !1901)
!2015 = !DILocation(line: 471, column: 35, scope: !1901)
!2016 = !DILocation(line: 471, column: 15, scope: !1901)
!2017 = !DILocation(line: 471, column: 13, scope: !1901)
!2018 = !DILocation(line: 472, column: 20, scope: !1901)
!2019 = !DILocation(line: 472, column: 30, scope: !1901)
!2020 = !DILocation(line: 472, column: 37, scope: !1901)
!2021 = !DILocation(line: 472, column: 41, scope: !1942)
!2022 = !DILocation(line: 472, column: 40, scope: !1942)
!2023 = !DILocation(line: 472, column: 51, scope: !1942)
!2024 = !DILocation(line: 472, column: 20, scope: !1942)
!2025 = !DILocation(line: 472, column: 20, scope: !1947)
!2026 = !DILocation(line: 473, column: 13, scope: !1901)
!2027 = !DILocation(line: 473, column: 4, scope: !1901)
!2028 = !DILocation(line: 472, column: 20, scope: !1951)
!2029 = !DILocation(line: 472, column: 20, scope: !1953)
!2030 = !DILocation(line: 472, column: 3, scope: !1953)
!2031 = !DILocation(line: 472, column: 8, scope: !1953)
!2032 = !DILocation(line: 472, column: 18, scope: !1953)
!2033 = !DILocation(line: 474, column: 20, scope: !1901)
!2034 = !DILocation(line: 474, column: 3, scope: !1901)
!2035 = !DILocation(line: 476, column: 30, scope: !1901)
!2036 = !DILocation(line: 476, column: 42, scope: !1901)
!2037 = !DILocation(line: 476, column: 10, scope: !1901)
!2038 = !DILocation(line: 476, column: 8, scope: !1901)
!2039 = !DILocation(line: 477, column: 7, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !1901, file: !411, line: 477, column: 7)
!2041 = !DILocation(line: 477, column: 12, scope: !2040)
!2042 = !DILocation(line: 477, column: 7, scope: !1901)
!2043 = !DILocation(line: 477, column: 57, scope: !2044)
!2044 = !DILexicalBlockFile(scope: !2040, file: !411, discriminator: 1)
!2045 = !DILocation(line: 477, column: 36, scope: !2044)
!2046 = !DILocation(line: 477, column: 20, scope: !2044)
!2047 = !DILocation(line: 477, column: 25, scope: !2044)
!2048 = !DILocation(line: 477, column: 34, scope: !2044)
!2049 = !DILocation(line: 478, column: 2, scope: !1901)
!2050 = !DILocation(line: 439, column: 44, scope: !2051)
!2051 = !DILexicalBlockFile(scope: !1896, file: !411, discriminator: 2)
!2052 = !DILocation(line: 439, column: 27, scope: !2051)
!2053 = !DILocation(line: 439, column: 25, scope: !2051)
!2054 = !DILocation(line: 439, column: 2, scope: !2051)
!2055 = distinct !{!2055, !1893}
!2056 = !DILocation(line: 480, column: 2, scope: !1865)
!2057 = !DILocation(line: 481, column: 1, scope: !1865)
!2058 = !DILocation(line: 481, column: 1, scope: !2059)
!2059 = !DILexicalBlockFile(scope: !1865, file: !411, discriminator: 1)
!2060 = distinct !DISubprogram(name: "sig_print_text", scope: !411, file: !411, line: 321, type: !2061, isLocal: true, isDefinition: true, scopeLine: 323, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !847)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{null, !1540, !364, !364}
!2063 = !DILocalVariable(name: "dest", arg: 1, scope: !2060, file: !411, line: 321, type: !1540)
!2064 = !DILocation(line: 321, column: 43, scope: !2060)
!2065 = !DILocalVariable(name: "text", arg: 2, scope: !2060, file: !411, line: 321, type: !364)
!2066 = !DILocation(line: 321, column: 61, scope: !2060)
!2067 = !DILocalVariable(name: "stripped", arg: 3, scope: !2060, file: !411, line: 322, type: !364)
!2068 = !DILocation(line: 322, column: 19, scope: !2060)
!2069 = !DILocalVariable(name: "hilight", scope: !2060, file: !411, line: 324, type: !374)
!2070 = !DILocation(line: 324, column: 15, scope: !2060)
!2071 = !DILocalVariable(name: "color", scope: !2060, file: !411, line: 325, type: !381)
!2072 = !DILocation(line: 325, column: 8, scope: !2060)
!2073 = !DILocalVariable(name: "newstr", scope: !2060, file: !411, line: 325, type: !381)
!2074 = !DILocation(line: 325, column: 16, scope: !2060)
!2075 = !DILocalVariable(name: "old_level", scope: !2060, file: !411, line: 326, type: !373)
!2076 = !DILocation(line: 326, column: 6, scope: !2060)
!2077 = !DILocalVariable(name: "hilight_start", scope: !2060, file: !411, line: 326, type: !373)
!2078 = !DILocation(line: 326, column: 17, scope: !2060)
!2079 = !DILocalVariable(name: "hilight_end", scope: !2060, file: !411, line: 326, type: !373)
!2080 = !DILocation(line: 326, column: 32, scope: !2060)
!2081 = !DILocalVariable(name: "hilight_len", scope: !2060, file: !411, line: 326, type: !373)
!2082 = !DILocation(line: 326, column: 45, scope: !2060)
!2083 = !DILocalVariable(name: "nick_match", scope: !2060, file: !411, line: 327, type: !373)
!2084 = !DILocation(line: 327, column: 6, scope: !2060)
!2085 = !DILocation(line: 329, column: 6, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2060, file: !411, line: 329, column: 6)
!2087 = !DILocation(line: 329, column: 12, scope: !2086)
!2088 = !DILocation(line: 329, column: 18, scope: !2086)
!2089 = !DILocation(line: 329, column: 6, scope: !2060)
!2090 = !DILocation(line: 330, column: 3, scope: !2086)
!2091 = !DILocation(line: 332, column: 30, scope: !2060)
!2092 = !DILocation(line: 332, column: 16, scope: !2060)
!2093 = !DILocation(line: 333, column: 26, scope: !2060)
!2094 = !DILocation(line: 333, column: 32, scope: !2060)
!2095 = !DILocation(line: 333, column: 40, scope: !2060)
!2096 = !DILocation(line: 333, column: 46, scope: !2060)
!2097 = !DILocation(line: 333, column: 54, scope: !2060)
!2098 = !DILocation(line: 333, column: 60, scope: !2060)
!2099 = !DILocation(line: 334, column: 5, scope: !2060)
!2100 = !DILocation(line: 334, column: 11, scope: !2060)
!2101 = !DILocation(line: 334, column: 20, scope: !2060)
!2102 = !DILocation(line: 334, column: 26, scope: !2060)
!2103 = !DILocation(line: 334, column: 33, scope: !2060)
!2104 = !DILocation(line: 333, column: 12, scope: !2060)
!2105 = !DILocation(line: 333, column: 10, scope: !2060)
!2106 = !DILocation(line: 337, column: 6, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2060, file: !411, line: 337, column: 6)
!2108 = !DILocation(line: 337, column: 14, scope: !2107)
!2109 = !DILocation(line: 337, column: 6, scope: !2060)
!2110 = !DILocation(line: 338, column: 3, scope: !2107)
!2111 = !DILocation(line: 340, column: 15, scope: !2060)
!2112 = !DILocation(line: 340, column: 24, scope: !2060)
!2113 = !DILocation(line: 340, column: 29, scope: !2060)
!2114 = !DILocation(line: 340, column: 33, scope: !2115)
!2115 = !DILexicalBlockFile(scope: !2060, file: !411, discriminator: 1)
!2116 = !DILocation(line: 340, column: 39, scope: !2115)
!2117 = !DILocation(line: 340, column: 45, scope: !2115)
!2118 = !DILocation(line: 340, column: 83, scope: !2115)
!2119 = !DILocation(line: 340, column: 29, scope: !2120)
!2120 = !DILexicalBlockFile(scope: !2060, file: !411, discriminator: 2)
!2121 = !DILocation(line: 340, column: 13, scope: !2120)
!2122 = !DILocation(line: 342, column: 14, scope: !2060)
!2123 = !DILocation(line: 342, column: 20, scope: !2060)
!2124 = !DILocation(line: 342, column: 12, scope: !2060)
!2125 = !DILocation(line: 343, column: 7, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2060, file: !411, line: 343, column: 6)
!2127 = !DILocation(line: 343, column: 18, scope: !2126)
!2128 = !DILocation(line: 343, column: 22, scope: !2129)
!2129 = !DILexicalBlockFile(scope: !2126, file: !411, discriminator: 1)
!2130 = !DILocation(line: 343, column: 28, scope: !2129)
!2131 = !DILocation(line: 343, column: 34, scope: !2129)
!2132 = !DILocation(line: 343, column: 6, scope: !2129)
!2133 = !DILocation(line: 349, column: 3, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2126, file: !411, line: 343, column: 55)
!2135 = !DILocation(line: 349, column: 9, scope: !2134)
!2136 = !DILocation(line: 349, column: 15, scope: !2134)
!2137 = !DILocation(line: 351, column: 28, scope: !2134)
!2138 = !DILocation(line: 351, column: 34, scope: !2134)
!2139 = !DILocation(line: 351, column: 3, scope: !2134)
!2140 = !DILocation(line: 352, column: 2, scope: !2134)
!2141 = !DILocation(line: 354, column: 6, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2060, file: !411, line: 354, column: 6)
!2143 = !DILocation(line: 354, column: 6, scope: !2060)
!2144 = !DILocation(line: 355, column: 3, scope: !2142)
!2145 = !DILocation(line: 357, column: 6, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2060, file: !411, line: 357, column: 6)
!2147 = !DILocation(line: 357, column: 16, scope: !2146)
!2148 = !DILocation(line: 357, column: 6, scope: !2060)
!2149 = !DILocation(line: 359, column: 3, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2146, file: !411, line: 357, column: 36)
!2151 = !DILocation(line: 362, column: 28, scope: !2060)
!2152 = !DILocation(line: 362, column: 10, scope: !2060)
!2153 = !DILocation(line: 362, column: 8, scope: !2060)
!2154 = !DILocation(line: 363, column: 16, scope: !2060)
!2155 = !DILocation(line: 363, column: 28, scope: !2060)
!2156 = !DILocation(line: 363, column: 27, scope: !2060)
!2157 = !DILocation(line: 363, column: 14, scope: !2060)
!2158 = !DILocation(line: 365, column: 7, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2060, file: !411, line: 365, column: 6)
!2160 = !DILocation(line: 365, column: 16, scope: !2159)
!2161 = !DILocation(line: 365, column: 6, scope: !2060)
!2162 = !DILocalVariable(name: "tmp", scope: !2163, file: !411, line: 367, type: !381)
!2163 = distinct !DILexicalBlock(scope: !2159, file: !411, line: 365, column: 22)
!2164 = !DILocation(line: 367, column: 9, scope: !2163)
!2165 = !DILocation(line: 367, column: 27, scope: !2163)
!2166 = !DILocation(line: 367, column: 15, scope: !2163)
!2167 = !DILocation(line: 368, column: 24, scope: !2163)
!2168 = !DILocation(line: 368, column: 31, scope: !2163)
!2169 = !DILocation(line: 368, column: 12, scope: !2163)
!2170 = !DILocation(line: 368, column: 10, scope: !2163)
!2171 = !DILocation(line: 369, column: 10, scope: !2163)
!2172 = !DILocation(line: 369, column: 3, scope: !2163)
!2173 = !DILocation(line: 370, column: 2, scope: !2163)
!2174 = !DILocalVariable(name: "tmp", scope: !2175, file: !411, line: 372, type: !642)
!2175 = distinct !DILexicalBlock(scope: !2159, file: !411, line: 370, column: 9)
!2176 = !DILocation(line: 372, column: 12, scope: !2175)
!2177 = !DILocalVariable(name: "middle", scope: !2175, file: !411, line: 373, type: !381)
!2178 = !DILocation(line: 373, column: 9, scope: !2175)
!2179 = !DILocalVariable(name: "pos", scope: !2175, file: !411, line: 374, type: !373)
!2180 = !DILocation(line: 374, column: 7, scope: !2175)
!2181 = !DILocalVariable(name: "color_pos", scope: !2175, file: !411, line: 374, type: !373)
!2182 = !DILocation(line: 374, column: 12, scope: !2175)
!2183 = !DILocalVariable(name: "color_len", scope: !2175, file: !411, line: 374, type: !373)
!2184 = !DILocation(line: 374, column: 23, scope: !2175)
!2185 = !DILocation(line: 377, column: 27, scope: !2175)
!2186 = !DILocation(line: 377, column: 33, scope: !2175)
!2187 = !DILocation(line: 377, column: 9, scope: !2175)
!2188 = !DILocation(line: 377, column: 7, scope: !2175)
!2189 = !DILocation(line: 378, column: 26, scope: !2175)
!2190 = !DILocation(line: 378, column: 32, scope: !2175)
!2191 = !DILocation(line: 378, column: 9, scope: !2175)
!2192 = !DILocation(line: 378, column: 7, scope: !2175)
!2193 = !DILocation(line: 381, column: 19, scope: !2175)
!2194 = !DILocation(line: 381, column: 24, scope: !2175)
!2195 = !DILocation(line: 381, column: 3, scope: !2175)
!2196 = !DILocation(line: 384, column: 24, scope: !2175)
!2197 = !DILocation(line: 384, column: 31, scope: !2175)
!2198 = !DILocation(line: 384, column: 29, scope: !2175)
!2199 = !DILocation(line: 384, column: 12, scope: !2175)
!2200 = !DILocation(line: 384, column: 10, scope: !2175)
!2201 = !DILocation(line: 385, column: 23, scope: !2175)
!2202 = !DILocation(line: 385, column: 28, scope: !2175)
!2203 = !DILocation(line: 385, column: 36, scope: !2175)
!2204 = !DILocation(line: 385, column: 3, scope: !2175)
!2205 = !DILocation(line: 386, column: 10, scope: !2175)
!2206 = !DILocation(line: 386, column: 3, scope: !2175)
!2207 = !DILocation(line: 389, column: 27, scope: !2175)
!2208 = !DILocation(line: 389, column: 33, scope: !2175)
!2209 = !DILocation(line: 389, column: 9, scope: !2175)
!2210 = !DILocation(line: 389, column: 7, scope: !2175)
!2211 = !DILocation(line: 391, column: 7, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2175, file: !411, line: 391, column: 7)
!2213 = !DILocation(line: 391, column: 17, scope: !2212)
!2214 = !DILocation(line: 391, column: 7, scope: !2175)
!2215 = !DILocation(line: 392, column: 24, scope: !2212)
!2216 = !DILocation(line: 392, column: 29, scope: !2212)
!2217 = !DILocation(line: 392, column: 36, scope: !2212)
!2218 = !DILocation(line: 392, column: 34, scope: !2212)
!2219 = !DILocation(line: 392, column: 47, scope: !2212)
!2220 = !DILocation(line: 392, column: 4, scope: !2212)
!2221 = !DILocation(line: 395, column: 30, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2212, file: !411, line: 393, column: 22)
!2223 = !DILocation(line: 395, column: 4, scope: !2222)
!2224 = !DILocation(line: 396, column: 30, scope: !2222)
!2225 = !DILocation(line: 396, column: 4, scope: !2222)
!2226 = !DILocation(line: 398, column: 19, scope: !2175)
!2227 = !DILocation(line: 398, column: 24, scope: !2175)
!2228 = !DILocation(line: 398, column: 31, scope: !2175)
!2229 = !DILocation(line: 398, column: 29, scope: !2175)
!2230 = !DILocation(line: 398, column: 3, scope: !2175)
!2231 = !DILocation(line: 400, column: 12, scope: !2175)
!2232 = !DILocation(line: 400, column: 17, scope: !2175)
!2233 = !DILocation(line: 400, column: 10, scope: !2175)
!2234 = !DILocation(line: 401, column: 17, scope: !2175)
!2235 = !DILocation(line: 401, column: 3, scope: !2175)
!2236 = !DILocation(line: 404, column: 31, scope: !2060)
!2237 = !DILocation(line: 404, column: 37, scope: !2060)
!2238 = !DILocation(line: 404, column: 45, scope: !2060)
!2239 = !DILocation(line: 404, column: 2, scope: !2060)
!2240 = !DILocation(line: 406, column: 9, scope: !2060)
!2241 = !DILocation(line: 406, column: 2, scope: !2060)
!2242 = !DILocation(line: 407, column: 9, scope: !2060)
!2243 = !DILocation(line: 407, column: 2, scope: !2060)
!2244 = !DILocation(line: 409, column: 2, scope: !2060)
!2245 = !DILocation(line: 410, column: 1, scope: !2060)
!2246 = !DILocation(line: 410, column: 1, scope: !2115)
!2247 = distinct !DISubprogram(name: "cmd_hilight", scope: !411, file: !411, line: 550, type: !2248, isLocal: true, isDefinition: true, scopeLine: 551, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !847)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{null, !364}
!2250 = !DILocalVariable(name: "data", arg: 1, scope: !2247, file: !411, line: 550, type: !364)
!2251 = !DILocation(line: 550, column: 37, scope: !2247)
!2252 = !DILocalVariable(name: "optlist", scope: !2247, file: !411, line: 552, type: !418)
!2253 = !DILocation(line: 552, column: 14, scope: !2247)
!2254 = !DILocalVariable(name: "rec", scope: !2247, file: !411, line: 553, type: !374)
!2255 = !DILocation(line: 553, column: 15, scope: !2247)
!2256 = !DILocalVariable(name: "colorarg", scope: !2247, file: !411, line: 554, type: !381)
!2257 = !DILocation(line: 554, column: 8, scope: !2247)
!2258 = !DILocalVariable(name: "actcolorarg", scope: !2247, file: !411, line: 554, type: !381)
!2259 = !DILocation(line: 554, column: 19, scope: !2247)
!2260 = !DILocalVariable(name: "levelarg", scope: !2247, file: !411, line: 554, type: !381)
!2261 = !DILocation(line: 554, column: 33, scope: !2247)
!2262 = !DILocalVariable(name: "priorityarg", scope: !2247, file: !411, line: 554, type: !381)
!2263 = !DILocation(line: 554, column: 44, scope: !2247)
!2264 = !DILocalVariable(name: "chanarg", scope: !2247, file: !411, line: 554, type: !381)
!2265 = !DILocation(line: 554, column: 58, scope: !2247)
!2266 = !DILocalVariable(name: "text", scope: !2247, file: !411, line: 554, type: !381)
!2267 = !DILocation(line: 554, column: 68, scope: !2247)
!2268 = !DILocalVariable(name: "servertag", scope: !2247, file: !411, line: 554, type: !381)
!2269 = !DILocation(line: 554, column: 75, scope: !2247)
!2270 = !DILocalVariable(name: "channels", scope: !2247, file: !411, line: 555, type: !383)
!2271 = !DILocation(line: 555, column: 9, scope: !2247)
!2272 = !DILocalVariable(name: "free_arg", scope: !2247, file: !411, line: 556, type: !359)
!2273 = !DILocation(line: 556, column: 8, scope: !2247)
!2274 = !DILocation(line: 558, column: 2, scope: !2247)
!2275 = distinct !{!2275, !2274}
!2276 = !DILocation(line: 558, column: 10, scope: !2277)
!2277 = !DILexicalBlockFile(scope: !2278, file: !411, discriminator: 1)
!2278 = distinct !DILexicalBlock(scope: !2279, file: !411, line: 558, column: 10)
!2279 = distinct !DILexicalBlock(scope: !2247, file: !411, line: 558, column: 4)
!2280 = !DILocation(line: 558, column: 15, scope: !2277)
!2281 = !DILocation(line: 558, column: 5, scope: !2282)
!2282 = !DILexicalBlockFile(scope: !2283, file: !411, discriminator: 2)
!2283 = distinct !DILexicalBlock(scope: !2278, file: !411, line: 558, column: 3)
!2284 = !DILocation(line: 558, column: 14, scope: !2285)
!2285 = !DILexicalBlockFile(scope: !2286, file: !411, discriminator: 3)
!2286 = distinct !DILexicalBlock(scope: !2278, file: !411, line: 558, column: 12)
!2287 = !DILocation(line: 558, column: 99, scope: !2285)
!2288 = !DILocation(line: 558, column: 110, scope: !2289)
!2289 = !DILexicalBlockFile(scope: !2279, file: !411, discriminator: 4)
!2290 = !DILocation(line: 560, column: 7, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2247, file: !411, line: 560, column: 6)
!2292 = !DILocation(line: 560, column: 6, scope: !2291)
!2293 = !DILocation(line: 560, column: 12, scope: !2291)
!2294 = !DILocation(line: 560, column: 6, scope: !2247)
!2295 = !DILocation(line: 561, column: 3, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2291, file: !411, line: 560, column: 21)
!2297 = !DILocation(line: 562, column: 3, scope: !2296)
!2298 = !DILocation(line: 565, column: 22, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2247, file: !411, line: 565, column: 6)
!2300 = !DILocation(line: 565, column: 7, scope: !2299)
!2301 = !DILocation(line: 565, column: 6, scope: !2247)
!2302 = !DILocation(line: 567, column: 3, scope: !2299)
!2303 = !DILocation(line: 569, column: 32, scope: !2247)
!2304 = !DILocation(line: 569, column: 12, scope: !2247)
!2305 = !DILocation(line: 569, column: 10, scope: !2247)
!2306 = !DILocation(line: 570, column: 33, scope: !2247)
!2307 = !DILocation(line: 570, column: 13, scope: !2247)
!2308 = !DILocation(line: 570, column: 11, scope: !2247)
!2309 = !DILocation(line: 571, column: 36, scope: !2247)
!2310 = !DILocation(line: 571, column: 16, scope: !2247)
!2311 = !DILocation(line: 571, column: 14, scope: !2247)
!2312 = !DILocation(line: 572, column: 33, scope: !2247)
!2313 = !DILocation(line: 572, column: 13, scope: !2247)
!2314 = !DILocation(line: 572, column: 11, scope: !2247)
!2315 = !DILocation(line: 573, column: 36, scope: !2247)
!2316 = !DILocation(line: 573, column: 16, scope: !2247)
!2317 = !DILocation(line: 573, column: 14, scope: !2247)
!2318 = !DILocation(line: 574, column: 34, scope: !2247)
!2319 = !DILocation(line: 574, column: 14, scope: !2247)
!2320 = !DILocation(line: 574, column: 12, scope: !2247)
!2321 = !DILocation(line: 576, column: 7, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2247, file: !411, line: 576, column: 6)
!2323 = !DILocation(line: 576, column: 6, scope: !2322)
!2324 = !DILocation(line: 576, column: 12, scope: !2322)
!2325 = !DILocation(line: 576, column: 6, scope: !2247)
!2326 = !DILocation(line: 576, column: 21, scope: !2327)
!2327 = !DILexicalBlockFile(scope: !2322, file: !411, discriminator: 1)
!2328 = distinct !{!2328, !2329}
!2329 = !DILocation(line: 576, column: 21, scope: !2322)
!2330 = !DILocation(line: 576, column: 42, scope: !2331)
!2331 = !DILexicalBlockFile(scope: !2332, file: !411, discriminator: 2)
!2332 = distinct !DILexicalBlock(scope: !2322, file: !411, line: 576, column: 24)
!2333 = !DILocation(line: 576, column: 26, scope: !2331)
!2334 = !DILocation(line: 576, column: 53, scope: !2331)
!2335 = distinct !{!2335, !2336}
!2336 = !DILocation(line: 576, column: 53, scope: !2332)
!2337 = !DILocation(line: 576, column: 58, scope: !2338)
!2338 = !DILexicalBlockFile(scope: !2339, file: !411, discriminator: 3)
!2339 = distinct !DILexicalBlock(scope: !2332, file: !411, line: 576, column: 56)
!2340 = !DILocation(line: 576, column: 140, scope: !2341)
!2341 = !DILexicalBlockFile(scope: !2338, file: !411, discriminator: 6)
!2342 = !DILocation(line: 576, column: 155, scope: !2338)
!2343 = !DILocation(line: 576, column: 176, scope: !2344)
!2344 = !DILexicalBlockFile(scope: !2332, file: !411, discriminator: 4)
!2345 = !DILocation(line: 576, column: 176, scope: !2346)
!2346 = !DILexicalBlockFile(scope: !2332, file: !411, discriminator: 5)
!2347 = !DILocation(line: 578, column: 14, scope: !2247)
!2348 = !DILocation(line: 578, column: 22, scope: !2247)
!2349 = !DILocation(line: 578, column: 29, scope: !2247)
!2350 = !DILocation(line: 578, column: 33, scope: !2351)
!2351 = !DILexicalBlockFile(scope: !2247, file: !411, discriminator: 1)
!2352 = !DILocation(line: 578, column: 32, scope: !2351)
!2353 = !DILocation(line: 578, column: 41, scope: !2351)
!2354 = !DILocation(line: 578, column: 13, scope: !2351)
!2355 = !DILocation(line: 578, column: 13, scope: !2356)
!2356 = !DILexicalBlockFile(scope: !2247, file: !411, discriminator: 2)
!2357 = !DILocation(line: 579, column: 14, scope: !2247)
!2358 = !DILocation(line: 579, column: 3, scope: !2247)
!2359 = !DILocation(line: 578, column: 13, scope: !2360)
!2360 = !DILexicalBlockFile(scope: !2247, file: !411, discriminator: 3)
!2361 = !DILocation(line: 578, column: 13, scope: !2362)
!2362 = !DILexicalBlockFile(scope: !2247, file: !411, discriminator: 4)
!2363 = !DILocation(line: 578, column: 11, scope: !2362)
!2364 = !DILocation(line: 581, column: 21, scope: !2247)
!2365 = !DILocation(line: 581, column: 27, scope: !2247)
!2366 = !DILocation(line: 581, column: 8, scope: !2247)
!2367 = !DILocation(line: 581, column: 6, scope: !2247)
!2368 = !DILocation(line: 582, column: 6, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2247, file: !411, line: 582, column: 6)
!2370 = !DILocation(line: 582, column: 10, scope: !2369)
!2371 = !DILocation(line: 582, column: 6, scope: !2247)
!2372 = !DILocation(line: 583, column: 26, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2369, file: !411, line: 582, column: 18)
!2374 = !DILocation(line: 583, column: 10, scope: !2373)
!2375 = !DILocation(line: 583, column: 7, scope: !2373)
!2376 = !DILocation(line: 586, column: 3, scope: !2373)
!2377 = !DILocation(line: 586, column: 8, scope: !2373)
!2378 = !DILocation(line: 586, column: 13, scope: !2373)
!2379 = !DILocation(line: 587, column: 3, scope: !2373)
!2380 = !DILocation(line: 587, column: 8, scope: !2373)
!2381 = !DILocation(line: 587, column: 13, scope: !2373)
!2382 = !DILocation(line: 589, column: 24, scope: !2373)
!2383 = !DILocation(line: 589, column: 15, scope: !2373)
!2384 = !DILocation(line: 589, column: 3, scope: !2373)
!2385 = !DILocation(line: 589, column: 8, scope: !2373)
!2386 = !DILocation(line: 589, column: 13, scope: !2373)
!2387 = !DILocation(line: 590, column: 19, scope: !2373)
!2388 = !DILocation(line: 590, column: 3, scope: !2373)
!2389 = !DILocation(line: 590, column: 8, scope: !2373)
!2390 = !DILocation(line: 590, column: 17, scope: !2373)
!2391 = !DILocation(line: 591, column: 2, scope: !2373)
!2392 = !DILocation(line: 592, column: 14, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2369, file: !411, line: 591, column: 9)
!2394 = !DILocation(line: 592, column: 3, scope: !2393)
!2395 = !DILocation(line: 595, column: 16, scope: !2247)
!2396 = !DILocation(line: 595, column: 25, scope: !2247)
!2397 = !DILocation(line: 595, column: 32, scope: !2247)
!2398 = !DILocation(line: 595, column: 36, scope: !2351)
!2399 = !DILocation(line: 595, column: 35, scope: !2351)
!2400 = !DILocation(line: 595, column: 45, scope: !2351)
!2401 = !DILocation(line: 595, column: 15, scope: !2351)
!2402 = !DILocation(line: 595, column: 15, scope: !2356)
!2403 = !DILocation(line: 596, column: 28, scope: !2247)
!2404 = !DILocation(line: 596, column: 14, scope: !2247)
!2405 = !DILocation(line: 596, column: 3, scope: !2351)
!2406 = !DILocation(line: 595, column: 15, scope: !2360)
!2407 = !DILocation(line: 595, column: 15, scope: !2362)
!2408 = !DILocation(line: 595, column: 2, scope: !2362)
!2409 = !DILocation(line: 595, column: 7, scope: !2362)
!2410 = !DILocation(line: 595, column: 13, scope: !2362)
!2411 = !DILocation(line: 597, column: 18, scope: !2247)
!2412 = !DILocation(line: 597, column: 30, scope: !2247)
!2413 = !DILocation(line: 597, column: 18, scope: !2351)
!2414 = !DILocation(line: 597, column: 48, scope: !2356)
!2415 = !DILocation(line: 597, column: 43, scope: !2356)
!2416 = !DILocation(line: 597, column: 18, scope: !2356)
!2417 = !DILocation(line: 597, column: 18, scope: !2360)
!2418 = !DILocation(line: 597, column: 2, scope: !2360)
!2419 = !DILocation(line: 597, column: 7, scope: !2360)
!2420 = !DILocation(line: 597, column: 16, scope: !2360)
!2421 = !DILocation(line: 599, column: 26, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2247, file: !411, line: 599, column: 6)
!2423 = !DILocation(line: 599, column: 6, scope: !2422)
!2424 = !DILocation(line: 599, column: 43, scope: !2422)
!2425 = !DILocation(line: 599, column: 6, scope: !2247)
!2426 = !DILocation(line: 600, column: 3, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2422, file: !411, line: 599, column: 51)
!2428 = !DILocation(line: 600, column: 8, scope: !2427)
!2429 = !DILocation(line: 600, column: 13, scope: !2427)
!2430 = !DILocation(line: 601, column: 3, scope: !2427)
!2431 = !DILocation(line: 601, column: 8, scope: !2427)
!2432 = !DILocation(line: 601, column: 13, scope: !2427)
!2433 = !DILocation(line: 602, column: 2, scope: !2427)
!2434 = !DILocation(line: 604, column: 26, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2247, file: !411, line: 604, column: 6)
!2436 = !DILocation(line: 604, column: 6, scope: !2435)
!2437 = !DILocation(line: 604, column: 43, scope: !2435)
!2438 = !DILocation(line: 604, column: 6, scope: !2247)
!2439 = !DILocation(line: 605, column: 3, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2435, file: !411, line: 604, column: 51)
!2441 = !DILocation(line: 605, column: 8, scope: !2440)
!2442 = !DILocation(line: 605, column: 13, scope: !2440)
!2443 = !DILocation(line: 606, column: 3, scope: !2440)
!2444 = !DILocation(line: 606, column: 8, scope: !2440)
!2445 = !DILocation(line: 606, column: 13, scope: !2440)
!2446 = !DILocation(line: 607, column: 2, scope: !2440)
!2447 = !DILocation(line: 609, column: 26, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2247, file: !411, line: 609, column: 6)
!2449 = !DILocation(line: 609, column: 6, scope: !2448)
!2450 = !DILocation(line: 609, column: 43, scope: !2448)
!2451 = !DILocation(line: 609, column: 6, scope: !2247)
!2452 = !DILocation(line: 610, column: 3, scope: !2448)
!2453 = !DILocation(line: 610, column: 8, scope: !2448)
!2454 = !DILocation(line: 610, column: 13, scope: !2448)
!2455 = !DILocation(line: 612, column: 38, scope: !2247)
!2456 = !DILocation(line: 612, column: 18, scope: !2247)
!2457 = !DILocation(line: 612, column: 55, scope: !2247)
!2458 = !DILocation(line: 612, column: 2, scope: !2247)
!2459 = !DILocation(line: 612, column: 7, scope: !2247)
!2460 = !DILocation(line: 612, column: 16, scope: !2247)
!2461 = !DILocation(line: 613, column: 38, scope: !2247)
!2462 = !DILocation(line: 613, column: 18, scope: !2247)
!2463 = !DILocation(line: 613, column: 55, scope: !2247)
!2464 = !DILocation(line: 613, column: 2, scope: !2247)
!2465 = !DILocation(line: 613, column: 7, scope: !2247)
!2466 = !DILocation(line: 613, column: 16, scope: !2247)
!2467 = !DILocation(line: 614, column: 36, scope: !2247)
!2468 = !DILocation(line: 614, column: 16, scope: !2247)
!2469 = !DILocation(line: 614, column: 55, scope: !2247)
!2470 = !DILocation(line: 614, column: 2, scope: !2247)
!2471 = !DILocation(line: 614, column: 7, scope: !2247)
!2472 = !DILocation(line: 614, column: 14, scope: !2247)
!2473 = !DILocation(line: 615, column: 44, scope: !2247)
!2474 = !DILocation(line: 615, column: 24, scope: !2247)
!2475 = !DILocation(line: 615, column: 66, scope: !2247)
!2476 = !DILocation(line: 615, column: 2, scope: !2247)
!2477 = !DILocation(line: 615, column: 7, scope: !2247)
!2478 = !DILocation(line: 615, column: 22, scope: !2247)
!2479 = !DILocation(line: 617, column: 6, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2247, file: !411, line: 617, column: 6)
!2481 = !DILocation(line: 617, column: 15, scope: !2480)
!2482 = !DILocation(line: 617, column: 6, scope: !2247)
!2483 = !DILocation(line: 618, column: 3, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2480, file: !411, line: 617, column: 23)
!2485 = distinct !{!2485, !2483}
!2486 = !DILocation(line: 618, column: 12, scope: !2487)
!2487 = !DILexicalBlockFile(scope: !2488, file: !411, discriminator: 1)
!2488 = distinct !DILexicalBlock(scope: !2489, file: !411, line: 618, column: 12)
!2489 = distinct !DILexicalBlock(scope: !2484, file: !411, line: 618, column: 6)
!2490 = !DILocation(line: 618, column: 17, scope: !2487)
!2491 = !DILocation(line: 618, column: 33, scope: !2492)
!2492 = !DILexicalBlockFile(scope: !2493, file: !411, discriminator: 2)
!2493 = distinct !DILexicalBlock(scope: !2488, file: !411, line: 618, column: 24)
!2494 = !DILocation(line: 618, column: 38, scope: !2492)
!2495 = !DILocation(line: 618, column: 26, scope: !2492)
!2496 = !DILocation(line: 618, column: 47, scope: !2492)
!2497 = !DILocation(line: 618, column: 52, scope: !2492)
!2498 = !DILocation(line: 618, column: 59, scope: !2492)
!2499 = !DILocation(line: 618, column: 4, scope: !2492)
!2500 = !DILocation(line: 618, column: 6, scope: !2501)
!2501 = !DILexicalBlockFile(scope: !2489, file: !411, discriminator: 3)
!2502 = !DILocation(line: 619, column: 8, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2484, file: !411, line: 619, column: 7)
!2504 = !DILocation(line: 619, column: 7, scope: !2503)
!2505 = !DILocation(line: 619, column: 17, scope: !2503)
!2506 = !DILocation(line: 619, column: 7, scope: !2484)
!2507 = !DILocation(line: 620, column: 26, scope: !2503)
!2508 = !DILocation(line: 620, column: 17, scope: !2503)
!2509 = !DILocation(line: 620, column: 4, scope: !2503)
!2510 = !DILocation(line: 620, column: 9, scope: !2503)
!2511 = !DILocation(line: 620, column: 15, scope: !2503)
!2512 = !DILocation(line: 621, column: 2, scope: !2484)
!2513 = !DILocation(line: 622, column: 6, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2247, file: !411, line: 622, column: 6)
!2515 = !DILocation(line: 622, column: 18, scope: !2514)
!2516 = !DILocation(line: 622, column: 6, scope: !2247)
!2517 = !DILocation(line: 623, column: 3, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2514, file: !411, line: 622, column: 26)
!2519 = distinct !{!2519, !2517}
!2520 = !DILocation(line: 623, column: 12, scope: !2521)
!2521 = !DILexicalBlockFile(scope: !2522, file: !411, discriminator: 1)
!2522 = distinct !DILexicalBlock(scope: !2523, file: !411, line: 623, column: 12)
!2523 = distinct !DILexicalBlock(scope: !2518, file: !411, line: 623, column: 6)
!2524 = !DILocation(line: 623, column: 17, scope: !2521)
!2525 = !DILocation(line: 623, column: 37, scope: !2526)
!2526 = !DILexicalBlockFile(scope: !2527, file: !411, discriminator: 2)
!2527 = distinct !DILexicalBlock(scope: !2522, file: !411, line: 623, column: 28)
!2528 = !DILocation(line: 623, column: 42, scope: !2526)
!2529 = !DILocation(line: 623, column: 30, scope: !2526)
!2530 = !DILocation(line: 623, column: 55, scope: !2526)
!2531 = !DILocation(line: 623, column: 60, scope: !2526)
!2532 = !DILocation(line: 623, column: 71, scope: !2526)
!2533 = !DILocation(line: 623, column: 4, scope: !2526)
!2534 = !DILocation(line: 623, column: 6, scope: !2535)
!2535 = !DILexicalBlockFile(scope: !2523, file: !411, discriminator: 3)
!2536 = !DILocation(line: 624, column: 8, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2518, file: !411, line: 624, column: 7)
!2538 = !DILocation(line: 624, column: 7, scope: !2537)
!2539 = !DILocation(line: 624, column: 20, scope: !2537)
!2540 = !DILocation(line: 624, column: 7, scope: !2518)
!2541 = !DILocation(line: 625, column: 30, scope: !2537)
!2542 = !DILocation(line: 625, column: 21, scope: !2537)
!2543 = !DILocation(line: 625, column: 4, scope: !2537)
!2544 = !DILocation(line: 625, column: 9, scope: !2537)
!2545 = !DILocation(line: 625, column: 19, scope: !2537)
!2546 = !DILocation(line: 626, column: 2, scope: !2518)
!2547 = !DILocation(line: 627, column: 6, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2247, file: !411, line: 627, column: 6)
!2549 = !DILocation(line: 627, column: 16, scope: !2548)
!2550 = !DILocation(line: 627, column: 6, scope: !2247)
!2551 = !DILocation(line: 628, column: 3, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2548, file: !411, line: 627, column: 24)
!2553 = distinct !{!2553, !2551}
!2554 = !DILocation(line: 628, column: 12, scope: !2555)
!2555 = !DILexicalBlockFile(scope: !2556, file: !411, discriminator: 1)
!2556 = distinct !DILexicalBlock(scope: !2557, file: !411, line: 628, column: 12)
!2557 = distinct !DILexicalBlock(scope: !2552, file: !411, line: 628, column: 6)
!2558 = !DILocation(line: 628, column: 17, scope: !2555)
!2559 = !DILocation(line: 628, column: 37, scope: !2560)
!2560 = !DILexicalBlockFile(scope: !2561, file: !411, discriminator: 2)
!2561 = distinct !DILexicalBlock(scope: !2556, file: !411, line: 628, column: 28)
!2562 = !DILocation(line: 628, column: 42, scope: !2560)
!2563 = !DILocation(line: 628, column: 30, scope: !2560)
!2564 = !DILocation(line: 628, column: 55, scope: !2560)
!2565 = !DILocation(line: 628, column: 60, scope: !2560)
!2566 = !DILocation(line: 628, column: 71, scope: !2560)
!2567 = !DILocation(line: 628, column: 4, scope: !2560)
!2568 = !DILocation(line: 628, column: 6, scope: !2569)
!2569 = !DILexicalBlockFile(scope: !2557, file: !411, discriminator: 3)
!2570 = !DILocation(line: 629, column: 8, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2552, file: !411, line: 629, column: 7)
!2572 = !DILocation(line: 629, column: 7, scope: !2571)
!2573 = !DILocation(line: 629, column: 18, scope: !2571)
!2574 = !DILocation(line: 629, column: 7, scope: !2552)
!2575 = !DILocation(line: 630, column: 30, scope: !2571)
!2576 = !DILocation(line: 630, column: 21, scope: !2571)
!2577 = !DILocation(line: 630, column: 4, scope: !2571)
!2578 = !DILocation(line: 630, column: 9, scope: !2571)
!2579 = !DILocation(line: 630, column: 19, scope: !2571)
!2580 = !DILocation(line: 631, column: 2, scope: !2552)
!2581 = !DILocation(line: 633, column: 17, scope: !2247)
!2582 = !DILocation(line: 633, column: 2, scope: !2247)
!2583 = !DILocation(line: 635, column: 30, scope: !2247)
!2584 = !DILocation(line: 635, column: 40, scope: !2247)
!2585 = !DILocation(line: 635, column: 16, scope: !2247)
!2586 = !DILocation(line: 635, column: 44, scope: !2247)
!2587 = !DILocation(line: 635, column: 48, scope: !2247)
!2588 = !DILocation(line: 635, column: 2, scope: !2351)
!2589 = !DILocation(line: 636, column: 18, scope: !2247)
!2590 = !DILocation(line: 636, column: 2, scope: !2247)
!2591 = !DILocation(line: 638, column: 2, scope: !2247)
!2592 = !DILocation(line: 639, column: 1, scope: !2247)
!2593 = !DILocation(line: 639, column: 1, scope: !2351)
!2594 = distinct !DISubprogram(name: "cmd_dehilight", scope: !411, file: !411, line: 642, type: !2248, isLocal: true, isDefinition: true, scopeLine: 643, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !847)
!2595 = !DILocalVariable(name: "data", arg: 1, scope: !2594, file: !411, line: 642, type: !364)
!2596 = !DILocation(line: 642, column: 39, scope: !2594)
!2597 = !DILocalVariable(name: "rec", scope: !2594, file: !411, line: 644, type: !374)
!2598 = !DILocation(line: 644, column: 15, scope: !2594)
!2599 = !DILocalVariable(name: "tmp", scope: !2594, file: !411, line: 645, type: !603)
!2600 = !DILocation(line: 645, column: 10, scope: !2594)
!2601 = !DILocation(line: 647, column: 17, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2594, file: !411, line: 647, column: 6)
!2603 = !DILocation(line: 647, column: 6, scope: !2602)
!2604 = !DILocation(line: 647, column: 6, scope: !2594)
!2605 = !DILocation(line: 649, column: 21, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2602, file: !411, line: 647, column: 29)
!2607 = !DILocation(line: 649, column: 36, scope: !2606)
!2608 = !DILocation(line: 649, column: 31, scope: !2606)
!2609 = !DILocation(line: 649, column: 41, scope: !2606)
!2610 = !DILocation(line: 649, column: 9, scope: !2611)
!2611 = !DILexicalBlockFile(scope: !2606, file: !411, discriminator: 1)
!2612 = !DILocation(line: 649, column: 7, scope: !2606)
!2613 = !DILocation(line: 650, column: 9, scope: !2606)
!2614 = !DILocation(line: 650, column: 13, scope: !2606)
!2615 = !DILocation(line: 650, column: 9, scope: !2611)
!2616 = !DILocation(line: 650, column: 29, scope: !2617)
!2617 = !DILexicalBlockFile(scope: !2606, file: !411, discriminator: 2)
!2618 = !DILocation(line: 650, column: 34, scope: !2617)
!2619 = !DILocation(line: 650, column: 9, scope: !2617)
!2620 = !DILocation(line: 650, column: 9, scope: !2621)
!2621 = !DILexicalBlockFile(scope: !2606, file: !411, discriminator: 3)
!2622 = !DILocation(line: 650, column: 7, scope: !2621)
!2623 = !DILocation(line: 651, column: 2, scope: !2606)
!2624 = !DILocalVariable(name: "chans", scope: !2625, file: !411, line: 653, type: !2626)
!2625 = distinct !DILexicalBlock(scope: !2602, file: !411, line: 651, column: 9)
!2626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 128, align: 64, elements: !694)
!2627 = !DILocation(line: 653, column: 9, scope: !2625)
!2628 = !DILocation(line: 654, column: 22, scope: !2625)
!2629 = !DILocation(line: 654, column: 28, scope: !2625)
!2630 = !DILocation(line: 654, column: 9, scope: !2625)
!2631 = !DILocation(line: 654, column: 7, scope: !2625)
!2632 = !DILocation(line: 657, column: 6, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2594, file: !411, line: 657, column: 6)
!2634 = !DILocation(line: 657, column: 10, scope: !2633)
!2635 = !DILocation(line: 657, column: 6, scope: !2594)
!2636 = !DILocation(line: 658, column: 50, scope: !2633)
!2637 = !DILocation(line: 658, column: 3, scope: !2633)
!2638 = !DILocation(line: 660, column: 48, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2633, file: !411, line: 659, column: 7)
!2640 = !DILocation(line: 660, column: 53, scope: !2639)
!2641 = !DILocation(line: 660, column: 3, scope: !2639)
!2642 = !DILocation(line: 661, column: 18, scope: !2639)
!2643 = !DILocation(line: 661, column: 3, scope: !2639)
!2644 = !DILocation(line: 662, column: 3, scope: !2639)
!2645 = !DILocation(line: 664, column: 1, scope: !2594)
!2646 = distinct !DISubprogram(name: "hilight_text_deinit", scope: !411, file: !411, line: 725, type: !591, isLocal: false, isDefinition: true, scopeLine: 726, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !847)
!2647 = !DILocation(line: 727, column: 2, scope: !2646)
!2648 = !DILocation(line: 728, column: 19, scope: !2646)
!2649 = !DILocation(line: 728, column: 2, scope: !2646)
!2650 = !DILocation(line: 730, column: 2, scope: !2646)
!2651 = !DILocation(line: 731, column: 2, scope: !2646)
!2652 = !DILocation(line: 732, column: 2, scope: !2646)
!2653 = !DILocation(line: 734, column: 2, scope: !2646)
!2654 = !DILocation(line: 735, column: 2, scope: !2646)
!2655 = !DILocation(line: 736, column: 1, scope: !2646)
!2656 = distinct !DISubprogram(name: "hilights_destroy_all", scope: !411, file: !411, line: 114, type: !591, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !847)
!2657 = !DILocation(line: 116, column: 18, scope: !2656)
!2658 = !DILocation(line: 116, column: 2, scope: !2656)
!2659 = !DILocation(line: 117, column: 15, scope: !2656)
!2660 = !DILocation(line: 117, column: 2, scope: !2656)
!2661 = !DILocation(line: 118, column: 11, scope: !2656)
!2662 = !DILocation(line: 119, column: 1, scope: !2656)
!2663 = distinct !DISubprogram(name: "reset_level_cache", scope: !411, file: !411, line: 44, type: !591, isLocal: true, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !847)
!2664 = !DILocalVariable(name: "tmp", scope: !2663, file: !411, line: 46, type: !603)
!2665 = !DILocation(line: 46, column: 10, scope: !2663)
!2666 = !DILocation(line: 48, column: 47, scope: !2663)
!2667 = !DILocation(line: 48, column: 46, scope: !2663)
!2668 = !DILocation(line: 48, column: 44, scope: !2663)
!2669 = !DILocation(line: 48, column: 29, scope: !2663)
!2670 = !DILocation(line: 49, column: 13, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2663, file: !411, line: 49, column: 2)
!2672 = !DILocation(line: 49, column: 11, scope: !2671)
!2673 = !DILocation(line: 49, column: 7, scope: !2671)
!2674 = !DILocation(line: 49, column: 23, scope: !2675)
!2675 = !DILexicalBlockFile(scope: !2676, file: !411, discriminator: 1)
!2676 = distinct !DILexicalBlock(scope: !2671, file: !411, line: 49, column: 2)
!2677 = !DILocation(line: 49, column: 27, scope: !2675)
!2678 = !DILocation(line: 49, column: 2, scope: !2675)
!2679 = !DILocalVariable(name: "rec", scope: !2680, file: !411, line: 50, type: !374)
!2680 = distinct !DILexicalBlock(scope: !2676, file: !411, line: 49, column: 52)
!2681 = !DILocation(line: 50, column: 16, scope: !2680)
!2682 = !DILocation(line: 50, column: 22, scope: !2680)
!2683 = !DILocation(line: 50, column: 27, scope: !2680)
!2684 = !DILocation(line: 52, column: 7, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2680, file: !411, line: 52, column: 7)
!2686 = !DILocation(line: 52, column: 29, scope: !2685)
!2687 = !DILocation(line: 52, column: 34, scope: !2685)
!2688 = !DILocation(line: 52, column: 27, scope: !2685)
!2689 = !DILocation(line: 52, column: 7, scope: !2680)
!2690 = !DILocation(line: 53, column: 28, scope: !2685)
!2691 = !DILocation(line: 53, column: 33, scope: !2685)
!2692 = !DILocation(line: 53, column: 27, scope: !2685)
!2693 = !DILocation(line: 53, column: 24, scope: !2685)
!2694 = !DILocation(line: 53, column: 4, scope: !2685)
!2695 = !DILocation(line: 54, column: 2, scope: !2680)
!2696 = !DILocation(line: 49, column: 41, scope: !2697)
!2697 = !DILexicalBlockFile(scope: !2676, file: !411, discriminator: 2)
!2698 = !DILocation(line: 49, column: 46, scope: !2697)
!2699 = !DILocation(line: 49, column: 39, scope: !2697)
!2700 = !DILocation(line: 49, column: 2, scope: !2697)
!2701 = distinct !{!2701, !2702}
!2702 = !DILocation(line: 49, column: 2, scope: !2663)
!2703 = !DILocation(line: 55, column: 1, scope: !2663)
!2704 = distinct !DISubprogram(name: "reset_cache", scope: !411, file: !411, line: 57, type: !591, isLocal: true, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !847)
!2705 = !DILocation(line: 59, column: 2, scope: !2704)
!2706 = !DILocation(line: 60, column: 20, scope: !2704)
!2707 = !DILocation(line: 60, column: 2, scope: !2704)
!2708 = !DILocation(line: 61, column: 1, scope: !2704)
!2709 = distinct !DISubprogram(name: "g_string_append_c_inline", scope: !644, file: !644, line: 161, type: !2710, isLocal: true, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !847)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{!642, !642, !361}
!2712 = !DILocalVariable(name: "gstring", arg: 1, scope: !2709, file: !644, line: 161, type: !642)
!2713 = !DILocation(line: 161, column: 36, scope: !2709)
!2714 = !DILocalVariable(name: "c", arg: 2, scope: !2709, file: !644, line: 162, type: !361)
!2715 = !DILocation(line: 162, column: 33, scope: !2709)
!2716 = !DILocation(line: 164, column: 7, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2709, file: !644, line: 164, column: 7)
!2718 = !DILocation(line: 164, column: 16, scope: !2717)
!2719 = !DILocation(line: 164, column: 20, scope: !2717)
!2720 = !DILocation(line: 164, column: 26, scope: !2717)
!2721 = !DILocation(line: 164, column: 35, scope: !2717)
!2722 = !DILocation(line: 164, column: 24, scope: !2717)
!2723 = !DILocation(line: 164, column: 7, scope: !2709)
!2724 = !DILocation(line: 166, column: 38, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2717, file: !644, line: 165, column: 5)
!2726 = !DILocation(line: 166, column: 20, scope: !2725)
!2727 = !DILocation(line: 166, column: 29, scope: !2725)
!2728 = !DILocation(line: 166, column: 32, scope: !2725)
!2729 = !DILocation(line: 166, column: 7, scope: !2725)
!2730 = !DILocation(line: 166, column: 16, scope: !2725)
!2731 = !DILocation(line: 166, column: 36, scope: !2725)
!2732 = !DILocation(line: 167, column: 20, scope: !2725)
!2733 = !DILocation(line: 167, column: 29, scope: !2725)
!2734 = !DILocation(line: 167, column: 7, scope: !2725)
!2735 = !DILocation(line: 167, column: 16, scope: !2725)
!2736 = !DILocation(line: 167, column: 34, scope: !2725)
!2737 = !DILocation(line: 168, column: 5, scope: !2725)
!2738 = !DILocation(line: 170, column: 24, scope: !2717)
!2739 = !DILocation(line: 170, column: 37, scope: !2717)
!2740 = !DILocation(line: 170, column: 5, scope: !2717)
!2741 = !DILocation(line: 171, column: 10, scope: !2709)
!2742 = !DILocation(line: 171, column: 3, scope: !2709)
!2743 = distinct !DISubprogram(name: "cmd_hilight_show", scope: !411, file: !411, line: 532, type: !591, isLocal: true, isDefinition: true, scopeLine: 533, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !847)
!2744 = !DILocalVariable(name: "tmp", scope: !2743, file: !411, line: 534, type: !603)
!2745 = !DILocation(line: 534, column: 10, scope: !2743)
!2746 = !DILocalVariable(name: "index", scope: !2743, file: !411, line: 535, type: !373)
!2747 = !DILocation(line: 535, column: 6, scope: !2743)
!2748 = !DILocation(line: 537, column: 2, scope: !2743)
!2749 = !DILocation(line: 538, column: 8, scope: !2743)
!2750 = !DILocation(line: 539, column: 13, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2743, file: !411, line: 539, column: 2)
!2752 = !DILocation(line: 539, column: 11, scope: !2751)
!2753 = !DILocation(line: 539, column: 7, scope: !2751)
!2754 = !DILocation(line: 539, column: 23, scope: !2755)
!2755 = !DILexicalBlockFile(scope: !2756, file: !411, discriminator: 1)
!2756 = distinct !DILexicalBlock(scope: !2751, file: !411, line: 539, column: 2)
!2757 = !DILocation(line: 539, column: 27, scope: !2755)
!2758 = !DILocation(line: 539, column: 2, scope: !2755)
!2759 = !DILocalVariable(name: "rec", scope: !2760, file: !411, line: 540, type: !374)
!2760 = distinct !DILexicalBlock(scope: !2756, file: !411, line: 539, column: 61)
!2761 = !DILocation(line: 540, column: 16, scope: !2760)
!2762 = !DILocation(line: 540, column: 22, scope: !2760)
!2763 = !DILocation(line: 540, column: 27, scope: !2760)
!2764 = !DILocation(line: 542, column: 17, scope: !2760)
!2765 = !DILocation(line: 542, column: 24, scope: !2760)
!2766 = !DILocation(line: 542, column: 3, scope: !2760)
!2767 = !DILocation(line: 543, column: 2, scope: !2760)
!2768 = !DILocation(line: 539, column: 41, scope: !2769)
!2769 = !DILexicalBlockFile(scope: !2756, file: !411, discriminator: 2)
!2770 = !DILocation(line: 539, column: 46, scope: !2769)
!2771 = !DILocation(line: 539, column: 39, scope: !2769)
!2772 = !DILocation(line: 539, column: 57, scope: !2769)
!2773 = !DILocation(line: 539, column: 2, scope: !2769)
!2774 = distinct !{!2774, !2775}
!2775 = !DILocation(line: 539, column: 2, scope: !2743)
!2776 = !DILocation(line: 544, column: 2, scope: !2743)
!2777 = !DILocation(line: 545, column: 1, scope: !2743)
!2778 = distinct !DISubprogram(name: "hilight_find", scope: !411, file: !411, line: 155, type: !2779, isLocal: true, isDefinition: true, scopeLine: 156, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !847)
!2779 = !DISubroutineType(types: !2780)
!2780 = !{!374, !364, !383}
!2781 = !DILocalVariable(name: "text", arg: 1, scope: !2778, file: !411, line: 155, type: !364)
!2782 = !DILocation(line: 155, column: 46, scope: !2778)
!2783 = !DILocalVariable(name: "channels", arg: 2, scope: !2778, file: !411, line: 155, type: !383)
!2784 = !DILocation(line: 155, column: 59, scope: !2778)
!2785 = !DILocalVariable(name: "tmp", scope: !2778, file: !411, line: 157, type: !603)
!2786 = !DILocation(line: 157, column: 10, scope: !2778)
!2787 = !DILocalVariable(name: "chan", scope: !2778, file: !411, line: 158, type: !383)
!2788 = !DILocation(line: 158, column: 9, scope: !2778)
!2789 = !DILocation(line: 160, column: 2, scope: !2778)
!2790 = distinct !{!2790, !2789}
!2791 = !DILocation(line: 160, column: 10, scope: !2792)
!2792 = !DILexicalBlockFile(scope: !2793, file: !411, discriminator: 1)
!2793 = distinct !DILexicalBlock(scope: !2794, file: !411, line: 160, column: 10)
!2794 = distinct !DILexicalBlock(scope: !2778, file: !411, line: 160, column: 4)
!2795 = !DILocation(line: 160, column: 15, scope: !2792)
!2796 = !DILocation(line: 160, column: 5, scope: !2797)
!2797 = !DILexicalBlockFile(scope: !2798, file: !411, discriminator: 2)
!2798 = distinct !DILexicalBlock(scope: !2793, file: !411, line: 160, column: 3)
!2799 = !DILocation(line: 160, column: 14, scope: !2800)
!2800 = !DILexicalBlockFile(scope: !2801, file: !411, discriminator: 3)
!2801 = distinct !DILexicalBlock(scope: !2793, file: !411, line: 160, column: 12)
!2802 = !DILocation(line: 160, column: 99, scope: !2800)
!2803 = !DILocation(line: 160, column: 7, scope: !2804)
!2804 = !DILexicalBlockFile(scope: !2794, file: !411, discriminator: 4)
!2805 = !DILocation(line: 162, column: 13, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2778, file: !411, line: 162, column: 2)
!2807 = !DILocation(line: 162, column: 11, scope: !2806)
!2808 = !DILocation(line: 162, column: 7, scope: !2806)
!2809 = !DILocation(line: 162, column: 23, scope: !2810)
!2810 = !DILexicalBlockFile(scope: !2811, file: !411, discriminator: 1)
!2811 = distinct !DILexicalBlock(scope: !2806, file: !411, line: 162, column: 2)
!2812 = !DILocation(line: 162, column: 27, scope: !2810)
!2813 = !DILocation(line: 162, column: 2, scope: !2810)
!2814 = !DILocalVariable(name: "rec", scope: !2815, file: !411, line: 163, type: !374)
!2815 = distinct !DILexicalBlock(scope: !2811, file: !411, line: 162, column: 52)
!2816 = !DILocation(line: 163, column: 16, scope: !2815)
!2817 = !DILocation(line: 163, column: 22, scope: !2815)
!2818 = !DILocation(line: 163, column: 27, scope: !2815)
!2819 = !DILocation(line: 165, column: 26, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2815, file: !411, line: 165, column: 7)
!2821 = !DILocation(line: 165, column: 31, scope: !2820)
!2822 = !DILocation(line: 165, column: 37, scope: !2820)
!2823 = !DILocation(line: 165, column: 7, scope: !2820)
!2824 = !DILocation(line: 165, column: 43, scope: !2820)
!2825 = !DILocation(line: 165, column: 7, scope: !2815)
!2826 = !DILocation(line: 166, column: 4, scope: !2820)
!2827 = !DILocation(line: 168, column: 8, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2815, file: !411, line: 168, column: 7)
!2829 = !DILocation(line: 168, column: 17, scope: !2828)
!2830 = !DILocation(line: 168, column: 24, scope: !2828)
!2831 = !DILocation(line: 168, column: 27, scope: !2832)
!2832 = !DILexicalBlockFile(scope: !2828, file: !411, discriminator: 1)
!2833 = !DILocation(line: 168, column: 32, scope: !2832)
!2834 = !DILocation(line: 168, column: 41, scope: !2832)
!2835 = !DILocation(line: 168, column: 7, scope: !2832)
!2836 = !DILocation(line: 169, column: 11, scope: !2828)
!2837 = !DILocation(line: 169, column: 4, scope: !2828)
!2838 = !DILocation(line: 171, column: 7, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2815, file: !411, line: 171, column: 7)
!2840 = !DILocation(line: 171, column: 16, scope: !2839)
!2841 = !DILocation(line: 171, column: 23, scope: !2839)
!2842 = !DILocation(line: 171, column: 37, scope: !2843)
!2843 = !DILexicalBlockFile(scope: !2839, file: !411, discriminator: 1)
!2844 = !DILocation(line: 171, column: 36, scope: !2843)
!2845 = !DILocation(line: 171, column: 26, scope: !2843)
!2846 = !DILocation(line: 171, column: 52, scope: !2843)
!2847 = !DILocation(line: 171, column: 7, scope: !2843)
!2848 = !DILocation(line: 172, column: 11, scope: !2839)
!2849 = !DILocation(line: 172, column: 4, scope: !2839)
!2850 = !DILocation(line: 174, column: 7, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2815, file: !411, line: 174, column: 7)
!2852 = !DILocation(line: 174, column: 16, scope: !2851)
!2853 = !DILocation(line: 174, column: 23, scope: !2851)
!2854 = !DILocation(line: 174, column: 26, scope: !2855)
!2855 = !DILexicalBlockFile(scope: !2851, file: !411, discriminator: 1)
!2856 = !DILocation(line: 174, column: 31, scope: !2855)
!2857 = !DILocation(line: 174, column: 40, scope: !2855)
!2858 = !DILocation(line: 174, column: 7, scope: !2855)
!2859 = !DILocation(line: 175, column: 4, scope: !2851)
!2860 = !DILocation(line: 177, column: 21, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2815, file: !411, line: 177, column: 7)
!2862 = !DILocation(line: 177, column: 7, scope: !2861)
!2863 = !DILocation(line: 177, column: 48, scope: !2861)
!2864 = !DILocation(line: 177, column: 53, scope: !2861)
!2865 = !DILocation(line: 177, column: 34, scope: !2866)
!2866 = !DILexicalBlockFile(scope: !2861, file: !411, discriminator: 1)
!2867 = !DILocation(line: 177, column: 31, scope: !2861)
!2868 = !DILocation(line: 177, column: 7, scope: !2815)
!2869 = !DILocation(line: 178, column: 4, scope: !2861)
!2870 = !DILocation(line: 181, column: 15, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2815, file: !411, line: 181, column: 3)
!2872 = !DILocation(line: 181, column: 13, scope: !2871)
!2873 = !DILocation(line: 181, column: 8, scope: !2871)
!2874 = !DILocation(line: 181, column: 26, scope: !2875)
!2875 = !DILexicalBlockFile(scope: !2876, file: !411, discriminator: 1)
!2876 = distinct !DILexicalBlock(scope: !2871, file: !411, line: 181, column: 3)
!2877 = !DILocation(line: 181, column: 25, scope: !2875)
!2878 = !DILocation(line: 181, column: 31, scope: !2875)
!2879 = !DILocation(line: 181, column: 3, scope: !2875)
!2880 = !DILocation(line: 182, column: 22, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2882, file: !411, line: 182, column: 8)
!2882 = distinct !DILexicalBlock(scope: !2876, file: !411, line: 181, column: 47)
!2883 = !DILocation(line: 182, column: 27, scope: !2881)
!2884 = !DILocation(line: 182, column: 38, scope: !2881)
!2885 = !DILocation(line: 182, column: 37, scope: !2881)
!2886 = !DILocation(line: 182, column: 8, scope: !2881)
!2887 = !DILocation(line: 182, column: 44, scope: !2881)
!2888 = !DILocation(line: 182, column: 8, scope: !2882)
!2889 = !DILocation(line: 183, column: 33, scope: !2881)
!2890 = !DILocation(line: 184, column: 3, scope: !2882)
!2891 = !DILocation(line: 181, column: 43, scope: !2892)
!2892 = !DILexicalBlockFile(scope: !2876, file: !411, discriminator: 2)
!2893 = !DILocation(line: 181, column: 3, scope: !2892)
!2894 = distinct !{!2894, !2895}
!2895 = !DILocation(line: 181, column: 3, scope: !2815)
!2896 = !DILocation(line: 186, column: 8, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2815, file: !411, line: 186, column: 7)
!2898 = !DILocation(line: 186, column: 7, scope: !2897)
!2899 = !DILocation(line: 186, column: 13, scope: !2897)
!2900 = !DILocation(line: 186, column: 7, scope: !2815)
!2901 = !DILocation(line: 187, column: 11, scope: !2897)
!2902 = !DILocation(line: 187, column: 4, scope: !2897)
!2903 = !DILocation(line: 188, column: 2, scope: !2815)
!2904 = !DILocation(line: 162, column: 41, scope: !2905)
!2905 = !DILexicalBlockFile(scope: !2811, file: !411, discriminator: 2)
!2906 = !DILocation(line: 162, column: 46, scope: !2905)
!2907 = !DILocation(line: 162, column: 39, scope: !2905)
!2908 = !DILocation(line: 162, column: 2, scope: !2905)
!2909 = distinct !{!2909, !2910}
!2910 = !DILocation(line: 162, column: 2, scope: !2778)
!2911 = !DILocation(line: 190, column: 2, scope: !2778)
!2912 = !DILocation(line: 191, column: 1, scope: !2778)
!2913 = distinct !DISubprogram(name: "hilight_print", scope: !411, file: !411, line: 483, type: !2914, isLocal: true, isDefinition: true, scopeLine: 484, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !847)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{null, !373, !374}
!2916 = !DILocalVariable(name: "index", arg: 1, scope: !2913, file: !411, line: 483, type: !373)
!2917 = !DILocation(line: 483, column: 31, scope: !2913)
!2918 = !DILocalVariable(name: "rec", arg: 2, scope: !2913, file: !411, line: 483, type: !374)
!2919 = !DILocation(line: 483, column: 51, scope: !2913)
!2920 = !DILocalVariable(name: "chans", scope: !2913, file: !411, line: 485, type: !381)
!2921 = !DILocation(line: 485, column: 8, scope: !2913)
!2922 = !DILocalVariable(name: "levelstr", scope: !2913, file: !411, line: 485, type: !381)
!2923 = !DILocation(line: 485, column: 16, scope: !2913)
!2924 = !DILocalVariable(name: "options", scope: !2913, file: !411, line: 486, type: !642)
!2925 = !DILocation(line: 486, column: 11, scope: !2913)
!2926 = !DILocation(line: 488, column: 12, scope: !2913)
!2927 = !DILocation(line: 488, column: 10, scope: !2913)
!2928 = !DILocation(line: 490, column: 6, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2913, file: !411, line: 490, column: 6)
!2930 = !DILocation(line: 490, column: 11, scope: !2929)
!2931 = !DILocation(line: 490, column: 16, scope: !2929)
!2932 = !DILocation(line: 490, column: 19, scope: !2933)
!2933 = !DILexicalBlockFile(scope: !2929, file: !411, discriminator: 1)
!2934 = !DILocation(line: 490, column: 24, scope: !2933)
!2935 = !DILocation(line: 490, column: 6, scope: !2933)
!2936 = !DILocation(line: 490, column: 32, scope: !2937)
!2937 = !DILexicalBlockFile(scope: !2938, file: !411, discriminator: 2)
!2938 = distinct !DILexicalBlock(scope: !2929, file: !411, line: 490, column: 30)
!2939 = !DILocation(line: 491, column: 11, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2929, file: !411, line: 491, column: 11)
!2941 = !DILocation(line: 491, column: 16, scope: !2940)
!2942 = !DILocation(line: 491, column: 11, scope: !2929)
!2943 = !DILocation(line: 492, column: 19, scope: !2940)
!2944 = !DILocation(line: 492, column: 3, scope: !2940)
!2945 = !DILocation(line: 493, column: 11, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2940, file: !411, line: 493, column: 11)
!2947 = !DILocation(line: 493, column: 16, scope: !2946)
!2948 = !DILocation(line: 493, column: 11, scope: !2940)
!2949 = !DILocation(line: 494, column: 19, scope: !2946)
!2950 = !DILocation(line: 494, column: 3, scope: !2946)
!2951 = !DILocation(line: 496, column: 19, scope: !2946)
!2952 = !DILocation(line: 496, column: 3, scope: !2946)
!2953 = !DILocation(line: 498, column: 6, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2913, file: !411, line: 498, column: 6)
!2955 = !DILocation(line: 498, column: 11, scope: !2954)
!2956 = !DILocation(line: 498, column: 6, scope: !2913)
!2957 = !DILocation(line: 498, column: 37, scope: !2958)
!2958 = !DILexicalBlockFile(scope: !2954, file: !411, discriminator: 1)
!2959 = !DILocation(line: 498, column: 21, scope: !2958)
!2960 = !DILocation(line: 499, column: 6, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2913, file: !411, line: 499, column: 6)
!2962 = !DILocation(line: 499, column: 11, scope: !2961)
!2963 = !DILocation(line: 499, column: 6, scope: !2913)
!2964 = !DILocation(line: 499, column: 37, scope: !2965)
!2965 = !DILexicalBlockFile(scope: !2961, file: !411, discriminator: 1)
!2966 = !DILocation(line: 499, column: 21, scope: !2965)
!2967 = !DILocation(line: 500, column: 6, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2913, file: !411, line: 500, column: 6)
!2969 = !DILocation(line: 500, column: 11, scope: !2968)
!2970 = !DILocation(line: 500, column: 6, scope: !2913)
!2971 = !DILocation(line: 500, column: 43, scope: !2972)
!2972 = !DILexicalBlockFile(scope: !2968, file: !411, discriminator: 1)
!2973 = !DILocation(line: 500, column: 27, scope: !2972)
!2974 = !DILocation(line: 501, column: 6, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2913, file: !411, line: 501, column: 6)
!2976 = !DILocation(line: 501, column: 11, scope: !2975)
!2977 = !DILocation(line: 501, column: 6, scope: !2913)
!2978 = !DILocation(line: 502, column: 19, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2975, file: !411, line: 501, column: 19)
!2980 = !DILocation(line: 502, column: 3, scope: !2979)
!2981 = !DILocation(line: 503, column: 7, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2979, file: !411, line: 503, column: 7)
!2983 = !DILocation(line: 503, column: 12, scope: !2982)
!2984 = !DILocation(line: 503, column: 17, scope: !2982)
!2985 = !DILocation(line: 503, column: 7, scope: !2979)
!2986 = !DILocation(line: 504, column: 20, scope: !2982)
!2987 = !DILocation(line: 504, column: 4, scope: !2982)
!2988 = !DILocation(line: 505, column: 2, scope: !2979)
!2989 = !DILocation(line: 507, column: 6, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2913, file: !411, line: 507, column: 6)
!2991 = !DILocation(line: 507, column: 11, scope: !2990)
!2992 = !DILocation(line: 507, column: 20, scope: !2990)
!2993 = !DILocation(line: 507, column: 6, scope: !2913)
!2994 = !DILocation(line: 508, column: 26, scope: !2990)
!2995 = !DILocation(line: 508, column: 52, scope: !2990)
!2996 = !DILocation(line: 508, column: 57, scope: !2990)
!2997 = !DILocation(line: 508, column: 3, scope: !2990)
!2998 = !DILocation(line: 509, column: 6, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2913, file: !411, line: 509, column: 6)
!3000 = !DILocation(line: 509, column: 11, scope: !2999)
!3001 = !DILocation(line: 509, column: 21, scope: !2999)
!3002 = !DILocation(line: 509, column: 6, scope: !2913)
!3003 = !DILocation(line: 510, column: 26, scope: !2999)
!3004 = !DILocation(line: 510, column: 51, scope: !2999)
!3005 = !DILocation(line: 510, column: 56, scope: !2999)
!3006 = !DILocation(line: 510, column: 3, scope: !2999)
!3007 = !DILocation(line: 511, column: 6, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !2913, file: !411, line: 511, column: 6)
!3009 = !DILocation(line: 511, column: 11, scope: !3008)
!3010 = !DILocation(line: 511, column: 17, scope: !3008)
!3011 = !DILocation(line: 511, column: 6, scope: !2913)
!3012 = !DILocation(line: 512, column: 26, scope: !3008)
!3013 = !DILocation(line: 512, column: 49, scope: !3008)
!3014 = !DILocation(line: 512, column: 54, scope: !3008)
!3015 = !DILocation(line: 512, column: 3, scope: !3008)
!3016 = !DILocation(line: 513, column: 6, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !2913, file: !411, line: 513, column: 6)
!3018 = !DILocation(line: 513, column: 11, scope: !3017)
!3019 = !DILocation(line: 513, column: 21, scope: !3017)
!3020 = !DILocation(line: 513, column: 6, scope: !2913)
!3021 = !DILocation(line: 514, column: 26, scope: !3017)
!3022 = !DILocation(line: 514, column: 52, scope: !3017)
!3023 = !DILocation(line: 514, column: 57, scope: !3017)
!3024 = !DILocation(line: 514, column: 3, scope: !3017)
!3025 = !DILocation(line: 516, column: 10, scope: !2913)
!3026 = !DILocation(line: 516, column: 15, scope: !2913)
!3027 = !DILocation(line: 516, column: 24, scope: !2913)
!3028 = !DILocation(line: 516, column: 10, scope: !3029)
!3029 = !DILexicalBlockFile(scope: !2913, file: !411, discriminator: 1)
!3030 = !DILocation(line: 517, column: 19, scope: !2913)
!3031 = !DILocation(line: 517, column: 24, scope: !2913)
!3032 = !DILocation(line: 517, column: 3, scope: !2913)
!3033 = !DILocation(line: 516, column: 10, scope: !3034)
!3034 = !DILexicalBlockFile(scope: !2913, file: !411, discriminator: 2)
!3035 = !DILocation(line: 516, column: 10, scope: !3036)
!3036 = !DILexicalBlockFile(scope: !2913, file: !411, discriminator: 3)
!3037 = !DILocation(line: 516, column: 8, scope: !3036)
!3038 = !DILocation(line: 518, column: 13, scope: !2913)
!3039 = !DILocation(line: 518, column: 18, scope: !2913)
!3040 = !DILocation(line: 518, column: 24, scope: !2913)
!3041 = !DILocation(line: 518, column: 13, scope: !3029)
!3042 = !DILocation(line: 519, column: 14, scope: !2913)
!3043 = !DILocation(line: 519, column: 19, scope: !2913)
!3044 = !DILocation(line: 519, column: 3, scope: !2913)
!3045 = !DILocation(line: 518, column: 13, scope: !3034)
!3046 = !DILocation(line: 518, column: 13, scope: !3036)
!3047 = !DILocation(line: 518, column: 11, scope: !3036)
!3048 = !DILocation(line: 520, column: 6, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !2913, file: !411, line: 520, column: 6)
!3050 = !DILocation(line: 520, column: 15, scope: !3049)
!3051 = !DILocation(line: 520, column: 6, scope: !2913)
!3052 = !DILocation(line: 521, column: 26, scope: !3049)
!3053 = !DILocation(line: 521, column: 14, scope: !3049)
!3054 = !DILocation(line: 521, column: 12, scope: !3049)
!3055 = !DILocation(line: 521, column: 3, scope: !3049)
!3056 = !DILocation(line: 522, column: 42, scope: !2913)
!3057 = !DILocation(line: 522, column: 49, scope: !2913)
!3058 = !DILocation(line: 522, column: 54, scope: !2913)
!3059 = !DILocation(line: 522, column: 60, scope: !2913)
!3060 = !DILocation(line: 522, column: 66, scope: !2913)
!3061 = !DILocation(line: 522, column: 3, scope: !3029)
!3062 = !DILocation(line: 522, column: 60, scope: !3029)
!3063 = !DILocation(line: 522, column: 60, scope: !3034)
!3064 = !DILocation(line: 522, column: 60, scope: !3036)
!3065 = !DILocation(line: 522, column: 15, scope: !3036)
!3066 = !DILocation(line: 522, column: 24, scope: !3036)
!3067 = !DILocation(line: 522, column: 3, scope: !3068)
!3068 = !DILexicalBlockFile(scope: !2913, file: !411, discriminator: 4)
!3069 = !DILocation(line: 522, column: 15, scope: !3068)
!3070 = !DILocation(line: 522, column: 15, scope: !3071)
!3071 = !DILexicalBlockFile(scope: !2913, file: !411, discriminator: 5)
!3072 = !DILocation(line: 522, column: 15, scope: !3073)
!3073 = !DILexicalBlockFile(scope: !2913, file: !411, discriminator: 6)
!3074 = !DILocation(line: 522, column: 18, scope: !3073)
!3075 = !DILocation(line: 522, column: 27, scope: !3073)
!3076 = !DILocation(line: 522, column: 2, scope: !3073)
!3077 = !DILocation(line: 527, column: 9, scope: !2913)
!3078 = !DILocation(line: 527, column: 2, scope: !2913)
!3079 = !DILocation(line: 528, column: 9, scope: !2913)
!3080 = !DILocation(line: 528, column: 2, scope: !2913)
!3081 = !DILocation(line: 529, column: 16, scope: !2913)
!3082 = !DILocation(line: 529, column: 2, scope: !2913)
!3083 = !DILocation(line: 530, column: 1, scope: !2913)
