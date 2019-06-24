; ModuleID = './line366-statusbar-items.o.i'
source_filename = "./line366-statusbar-items.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GHashTable = type opaque
%struct._WINDOW_REC = type { i32, i8*, i32, i32, %struct._GSList*, %struct._WI_ITEM_REC*, %struct._SERVER_REC*, %struct._SERVER_REC*, i8*, i32, %struct._GSList*, i8, %struct.HISTORY_REC*, i8*, i32, i8*, i64, i64, i8*, i8*, i8* }
%struct._WI_ITEM_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)* }
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
%struct.THEME_REC = type { i32, i8*, i8*, i64, i32, i8, %struct._GHashTable*, [256 x i32], %struct._GSList*, %struct._GHashTable*, i8* }
%struct.GUI_ENTRY_REC = type { i32, i32, i32*, i8**, %struct._GSList*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i8 }
%struct.SBAR_ITEM_REC = type { %struct.STATUSBAR_REC*, %struct.SBAR_ITEM_CONFIG_REC*, {}*, i32, i32, i32, i32, i32, i8 }
%struct.STATUSBAR_REC = type { %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_CONFIG_REC*, %struct.MAIN_WINDOW_REC*, %struct._GSList*, i8*, i32, i8, i32 }
%struct.STATUSBAR_GROUP_REC = type { i8*, %struct._GSList*, %struct._GSList* }
%struct.STATUSBAR_CONFIG_REC = type { i8*, i32, i32, i32, i32, %struct._GSList* }
%struct.MAIN_WINDOW_REC = type { %struct._WINDOW_REC*, %struct._TERM_WINDOW*, i32, i32, i32, i32, i32, i32, i32, %struct._GSList*, i32, i32, i32, i32, i32, i32, i8 }
%struct._TERM_WINDOW = type opaque
%struct.SBAR_ITEM_CONFIG_REC = type { i8*, i8*, i32, i8 }
%struct.GUI_WINDOW_REC = type { %struct.MAIN_WINDOW_REC*, %struct._TEXT_BUFFER_VIEW_REC*, i8, %struct._LINE_REC*, i64 }
%struct._TEXT_BUFFER_VIEW_REC = type { %struct.TEXT_BUFFER_REC*, %struct._GSList*, %struct._TERM_WINDOW*, i32, i32, i32, i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)*, %struct.TEXT_BUFFER_CACHE_REC*, i32, %struct._LINE_REC*, i32, %struct._LINE_REC*, i32, %struct._GHashTable*, i32, i32, i8 }
%struct.TEXT_BUFFER_REC = type { %struct._GSList*, %struct._LINE_REC*, i32, %struct._LINE_REC*, %struct.TEXT_CHUNK_REC*, i32, i32, i32, i8 }
%struct.TEXT_CHUNK_REC = type { [16368 x i8], i32, i32 }
%struct.TEXT_BUFFER_CACHE_REC = type { i32, i32, %struct._GHashTable*, i8, i32 }
%struct._LINE_REC = type { %struct._LINE_REC*, %struct._LINE_REC*, i8*, %struct.LINE_INFO_REC }
%struct.LINE_INFO_REC = type { i32, i64 }

@.str = private unnamed_addr constant [8 x i8] c"fe-text\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"misc\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"lag_min_show\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"1sec\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"lookandfeel\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"actlist_sort\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"refnum\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"actlist_names\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"window\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"window_empty\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"prompt\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"prompt_empty\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"topic\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"topic_empty\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"lag\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"act\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"more\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@activity_list = internal global %struct._GList* null, align 8
@.str.18 = private unnamed_addr constant [16 x i8] c"window activity\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"window destroyed\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"window refnum changed\00", align 1
@more_visible = internal global %struct._GSList* null, align 8
@.str.21 = private unnamed_addr constant [18 x i8] c"gui page scrolled\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"window changed\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"gui print text finished\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"command clear\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"command scrollback\00", align 1
@last_lag = internal global i32 0, align 4
@last_lag_unknown = internal global i32 0, align 4
@.str.26 = private unnamed_addr constant [11 x i8] c"server lag\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"window server changed\00", align 1
@lag_timeout_tag = internal global i32 0, align 4
@input_entries = internal global %struct._GHashTable* null, align 8
@.str.28 = private unnamed_addr constant [14 x i8] c"setup changed\00", align 1
@active_win = external global %struct._WINDOW_REC*, align 8
@.str.29 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"%d (??)\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"%d.%02d\00", align 1
@current_theme = external global %struct.THEME_REC*, align 8
@.str.33 = private unnamed_addr constant [15 x i8] c"{sb_act_sep ,}\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"{sb_act_text %d\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"{sb_act_msg %d\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"{sb_act_hilight %d\00", align 1
@.str.37 = private unnamed_addr constant [28 x i8] c"{sb_act_hilight_color %s %d\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c":%s\00", align 1
@term_type = external global i32, align 4
@term_width = external global i32, align 4
@__func__.sig_statusbar_activity_hilight = private unnamed_addr constant [31 x i8] c"sig_statusbar_activity_hilight\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"window != NULL\00", align 1
@actlist_sort = internal global i8 0, align 1
@__func__.sig_statusbar_activity_window_destroyed = private unnamed_addr constant [40 x i8] c"sig_statusbar_activity_window_destroyed\00", align 1
@active_entry = external global %struct.GUI_ENTRY_REC*, align 8
@.str.40 = private unnamed_addr constant [7 x i8] c"recent\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"level,recent\00", align 1

; Function Attrs: nounwind uwtable
define void @statusbar_items_init() #0 !dbg !609 {
  call void @settings_add_time_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0)), !dbg !611
  call void @settings_add_str_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0)), !dbg !612
  call void @settings_add_bool_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i32 0), !dbg !613
  call void @statusbar_item_register(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* null, void (%struct.SBAR_ITEM_REC*, i32)* @item_window_active), !dbg !614
  call void @statusbar_item_register(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i8* null, void (%struct.SBAR_ITEM_REC*, i32)* @item_window_empty), !dbg !615
  call void @statusbar_item_register(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* null, void (%struct.SBAR_ITEM_REC*, i32)* @item_window_active), !dbg !616
  call void @statusbar_item_register(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i8* null, void (%struct.SBAR_ITEM_REC*, i32)* @item_window_empty), !dbg !617
  call void @statusbar_item_register(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8* null, void (%struct.SBAR_ITEM_REC*, i32)* @item_window_active), !dbg !618
  call void @statusbar_item_register(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i8* null, void (%struct.SBAR_ITEM_REC*, i32)* @item_window_empty), !dbg !619
  call void @statusbar_item_register(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* null, void (%struct.SBAR_ITEM_REC*, i32)* @item_lag), !dbg !620
  call void @statusbar_item_register(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* null, void (%struct.SBAR_ITEM_REC*, i32)* @item_act), !dbg !621
  call void @statusbar_item_register(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* null, void (%struct.SBAR_ITEM_REC*, i32)* @item_more), !dbg !622
  call void @statusbar_item_register(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* null, void (%struct.SBAR_ITEM_REC*, i32)* @item_input), !dbg !623
  store %struct._GList* null, %struct._GList** @activity_list, align 8, !dbg !624
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*, i8*)* @sig_statusbar_activity_hilight to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !625
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*)* @sig_statusbar_activity_window_destroyed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !626
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_statusbar_activity_updated to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !627
  store %struct._GSList* null, %struct._GSList** @more_visible, align 8, !dbg !628
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_statusbar_more_updated to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !629
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_statusbar_more_updated to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !630
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 100, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_statusbar_more_updated to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !631
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 100, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_statusbar_more_updated to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !632
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 100, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_statusbar_more_updated to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !633
  store i32 0, i32* @last_lag, align 4, !dbg !634
  store i32 0, i32* @last_lag_unknown, align 4, !dbg !635
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*)* @sig_server_lag_updated to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !636
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @lag_check_update to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !637
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @lag_check_update to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !638
  %1 = call i32 @g_timeout_add(i32 5000, i32 (i8*)* bitcast (i32 ()* @sig_lag_timeout to i32 (i8*)*), i8* null), !dbg !639
  store i32 %1, i32* @lag_timeout_tag, align 4, !dbg !640
  %2 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_str_hash, i32 (i8*, i8*)* @g_str_equal), !dbg !641
  store %struct._GHashTable* %2, %struct._GHashTable** @input_entries, align 8, !dbg !642
  call void @read_settings(), !dbg !643
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 100, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !644
  ret void, !dbg !645
}

declare void @settings_add_time_module(i8*, i8*, i8*, i8*) #1

declare void @settings_add_str_module(i8*, i8*, i8*, i8*) #1

declare void @settings_add_bool_module(i8*, i8*, i8*, i32) #1

declare void @statusbar_item_register(i8*, i8*, void (%struct.SBAR_ITEM_REC*, i32)*) #1

; Function Attrs: nounwind uwtable
define internal void @item_window_active(%struct.SBAR_ITEM_REC*, i32) #0 !dbg !646 {
  %3 = alloca %struct.SBAR_ITEM_REC*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._WINDOW_REC*, align 8
  store %struct.SBAR_ITEM_REC* %0, %struct.SBAR_ITEM_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.SBAR_ITEM_REC** %3, metadata !706, metadata !707), !dbg !708
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !709, metadata !707), !dbg !710
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %5, metadata !711, metadata !707), !dbg !712
  %6 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !713
  store %struct._WINDOW_REC* %6, %struct._WINDOW_REC** %5, align 8, !dbg !714
  %7 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %3, align 8, !dbg !715
  %8 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %7, i32 0, i32 0, !dbg !717
  %9 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %8, align 8, !dbg !717
  %10 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %9, i32 0, i32 2, !dbg !718
  %11 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %10, align 8, !dbg !718
  %12 = icmp ne %struct.MAIN_WINDOW_REC* %11, null, !dbg !719
  br i1 %12, label %13, label %21, !dbg !720

; <label>:13:                                     ; preds = %2
  %14 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %3, align 8, !dbg !721
  %15 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %14, i32 0, i32 0, !dbg !722
  %16 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %15, align 8, !dbg !722
  %17 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %16, i32 0, i32 2, !dbg !723
  %18 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %17, align 8, !dbg !723
  %19 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %18, i32 0, i32 0, !dbg !724
  %20 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %19, align 8, !dbg !724
  store %struct._WINDOW_REC* %20, %struct._WINDOW_REC** %5, align 8, !dbg !725
  br label %21, !dbg !726

; <label>:21:                                     ; preds = %13, %2
  %22 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !727
  %23 = icmp ne %struct._WINDOW_REC* %22, null, !dbg !729
  br i1 %23, label %24, label %32, !dbg !730

; <label>:24:                                     ; preds = %21
  %25 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !731
  %26 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %25, i32 0, i32 5, !dbg !733
  %27 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %26, align 8, !dbg !733
  %28 = icmp ne %struct._WI_ITEM_REC* %27, null, !dbg !734
  br i1 %28, label %29, label %32, !dbg !735

; <label>:29:                                     ; preds = %24
  %30 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %3, align 8, !dbg !736
  %31 = load i32, i32* %4, align 4, !dbg !738
  call void @statusbar_item_default_handler(%struct.SBAR_ITEM_REC* %30, i32 %31, i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.29, i32 0, i32 0), i32 1), !dbg !739
  br label %41, !dbg !740

; <label>:32:                                     ; preds = %24, %21
  %33 = load i32, i32* %4, align 4, !dbg !741
  %34 = icmp ne i32 %33, 0, !dbg !741
  br i1 %34, label %35, label %40, !dbg !741

; <label>:35:                                     ; preds = %32
  %36 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %3, align 8, !dbg !744
  %37 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %36, i32 0, i32 4, !dbg !746
  store i32 0, i32* %37, align 4, !dbg !747
  %38 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %3, align 8, !dbg !748
  %39 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %38, i32 0, i32 3, !dbg !749
  store i32 0, i32* %39, align 8, !dbg !750
  br label %40, !dbg !751

; <label>:40:                                     ; preds = %35, %32
  br label %41

; <label>:41:                                     ; preds = %40, %29
  ret void, !dbg !752
}

; Function Attrs: nounwind uwtable
define internal void @item_window_empty(%struct.SBAR_ITEM_REC*, i32) #0 !dbg !753 {
  %3 = alloca %struct.SBAR_ITEM_REC*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._WINDOW_REC*, align 8
  store %struct.SBAR_ITEM_REC* %0, %struct.SBAR_ITEM_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.SBAR_ITEM_REC** %3, metadata !754, metadata !707), !dbg !755
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !756, metadata !707), !dbg !757
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %5, metadata !758, metadata !707), !dbg !759
  %6 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !760
  store %struct._WINDOW_REC* %6, %struct._WINDOW_REC** %5, align 8, !dbg !761
  %7 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %3, align 8, !dbg !762
  %8 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %7, i32 0, i32 0, !dbg !764
  %9 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %8, align 8, !dbg !764
  %10 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %9, i32 0, i32 2, !dbg !765
  %11 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %10, align 8, !dbg !765
  %12 = icmp ne %struct.MAIN_WINDOW_REC* %11, null, !dbg !766
  br i1 %12, label %13, label %21, !dbg !767

; <label>:13:                                     ; preds = %2
  %14 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %3, align 8, !dbg !768
  %15 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %14, i32 0, i32 0, !dbg !769
  %16 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %15, align 8, !dbg !769
  %17 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %16, i32 0, i32 2, !dbg !770
  %18 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %17, align 8, !dbg !770
  %19 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %18, i32 0, i32 0, !dbg !771
  %20 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %19, align 8, !dbg !771
  store %struct._WINDOW_REC* %20, %struct._WINDOW_REC** %5, align 8, !dbg !772
  br label %21, !dbg !773

; <label>:21:                                     ; preds = %13, %2
  %22 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !774
  %23 = icmp ne %struct._WINDOW_REC* %22, null, !dbg !776
  br i1 %23, label %24, label %32, !dbg !777

; <label>:24:                                     ; preds = %21
  %25 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !778
  %26 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %25, i32 0, i32 5, !dbg !780
  %27 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %26, align 8, !dbg !780
  %28 = icmp eq %struct._WI_ITEM_REC* %27, null, !dbg !781
  br i1 %28, label %29, label %32, !dbg !782

; <label>:29:                                     ; preds = %24
  %30 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %3, align 8, !dbg !783
  %31 = load i32, i32* %4, align 4, !dbg !785
  call void @statusbar_item_default_handler(%struct.SBAR_ITEM_REC* %30, i32 %31, i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.29, i32 0, i32 0), i32 1), !dbg !786
  br label %41, !dbg !787

; <label>:32:                                     ; preds = %24, %21
  %33 = load i32, i32* %4, align 4, !dbg !788
  %34 = icmp ne i32 %33, 0, !dbg !788
  br i1 %34, label %35, label %40, !dbg !788

; <label>:35:                                     ; preds = %32
  %36 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %3, align 8, !dbg !791
  %37 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %36, i32 0, i32 4, !dbg !793
  store i32 0, i32* %37, align 4, !dbg !794
  %38 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %3, align 8, !dbg !795
  %39 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %38, i32 0, i32 3, !dbg !796
  store i32 0, i32* %39, align 8, !dbg !797
  br label %40, !dbg !798

; <label>:40:                                     ; preds = %35, %32
  br label %41

; <label>:41:                                     ; preds = %40, %29
  ret void, !dbg !799
}

; Function Attrs: nounwind uwtable
define internal void @item_lag(%struct.SBAR_ITEM_REC*, i32) #0 !dbg !800 {
  %3 = alloca %struct.SBAR_ITEM_REC*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca [22 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.SBAR_ITEM_REC* %0, %struct.SBAR_ITEM_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.SBAR_ITEM_REC** %3, metadata !801, metadata !707), !dbg !802
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !803, metadata !707), !dbg !804
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !805, metadata !707), !dbg !806
  call void @llvm.dbg.declare(metadata [22 x i8]* %6, metadata !807, metadata !707), !dbg !811
  call void @llvm.dbg.declare(metadata i32* %7, metadata !812, metadata !707), !dbg !813
  call void @llvm.dbg.declare(metadata i32* %8, metadata !814, metadata !707), !dbg !815
  %9 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !816
  %10 = icmp eq %struct._WINDOW_REC* %9, null, !dbg !817
  br i1 %10, label %11, label %12, !dbg !816

; <label>:11:                                     ; preds = %2
  br label %16, !dbg !818

; <label>:12:                                     ; preds = %2
  %13 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !820
  %14 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %13, i32 0, i32 6, !dbg !822
  %15 = load %struct._SERVER_REC*, %struct._SERVER_REC** %14, align 8, !dbg !822
  br label %16, !dbg !823

; <label>:16:                                     ; preds = %12, %11
  %17 = phi %struct._SERVER_REC* [ null, %11 ], [ %15, %12 ], !dbg !824
  store %struct._SERVER_REC* %17, %struct._SERVER_REC** %5, align 8, !dbg !826
  %18 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !827
  %19 = call i32 @get_lag(%struct._SERVER_REC* %18, i32* %8), !dbg !828
  store i32 %19, i32* %7, align 4, !dbg !829
  %20 = load i32, i32* %7, align 4, !dbg !830
  %21 = icmp sle i32 %20, 0, !dbg !832
  br i1 %21, label %26, label %22, !dbg !833

; <label>:22:                                     ; preds = %16
  %23 = load i32, i32* %7, align 4, !dbg !834
  %24 = call i32 @settings_get_time(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)), !dbg !836
  %25 = icmp slt i32 %23, %24, !dbg !837
  br i1 %25, label %26, label %35, !dbg !838

; <label>:26:                                     ; preds = %22, %16
  %27 = load i32, i32* %4, align 4, !dbg !839
  %28 = icmp ne i32 %27, 0, !dbg !839
  br i1 %28, label %29, label %34, !dbg !842

; <label>:29:                                     ; preds = %26
  %30 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %3, align 8, !dbg !843
  %31 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %30, i32 0, i32 4, !dbg !844
  store i32 0, i32* %31, align 4, !dbg !845
  %32 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %3, align 8, !dbg !846
  %33 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %32, i32 0, i32 3, !dbg !847
  store i32 0, i32* %33, align 8, !dbg !848
  br label %34, !dbg !846

; <label>:34:                                     ; preds = %29, %26
  br label %68, !dbg !849

; <label>:35:                                     ; preds = %22
  %36 = load i32, i32* %7, align 4, !dbg !850
  %37 = sdiv i32 %36, 10, !dbg !850
  store i32 %37, i32* %7, align 4, !dbg !850
  %38 = load i32, i32* %7, align 4, !dbg !851
  store i32 %38, i32* @last_lag, align 4, !dbg !852
  %39 = load i32, i32* %8, align 4, !dbg !853
  store i32 %39, i32* @last_lag_unknown, align 4, !dbg !854
  %40 = load i32, i32* %8, align 4, !dbg !855
  %41 = icmp ne i32 %40, 0, !dbg !855
  br i1 %41, label %42, label %47, !dbg !857

; <label>:42:                                     ; preds = %35
  %43 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i32 0, i32 0, !dbg !858
  %44 = load i32, i32* %7, align 4, !dbg !860
  %45 = sdiv i32 %44, 100, !dbg !861
  %46 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %43, i64 22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i32 %45), !dbg !862
  br label %64, !dbg !863

; <label>:47:                                     ; preds = %35
  %48 = load i32, i32* %7, align 4, !dbg !864
  %49 = srem i32 %48, 100, !dbg !867
  %50 = icmp eq i32 %49, 0, !dbg !868
  br i1 %50, label %51, label %56, !dbg !869

; <label>:51:                                     ; preds = %47
  %52 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i32 0, i32 0, !dbg !870
  %53 = load i32, i32* %7, align 4, !dbg !871
  %54 = sdiv i32 %53, 100, !dbg !872
  %55 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %52, i64 22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0), i32 %54), !dbg !873
  br label %63, !dbg !873

; <label>:56:                                     ; preds = %47
  %57 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i32 0, i32 0, !dbg !874
  %58 = load i32, i32* %7, align 4, !dbg !875
  %59 = sdiv i32 %58, 100, !dbg !876
  %60 = load i32, i32* %7, align 4, !dbg !877
  %61 = srem i32 %60, 100, !dbg !878
  %62 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %57, i64 22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i32 %59, i32 %61), !dbg !879
  br label %63

; <label>:63:                                     ; preds = %56, %51
  br label %64

; <label>:64:                                     ; preds = %63, %42
  %65 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %3, align 8, !dbg !880
  %66 = load i32, i32* %4, align 4, !dbg !881
  %67 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i32 0, i32 0, !dbg !882
  call void @statusbar_item_default_handler(%struct.SBAR_ITEM_REC* %65, i32 %66, i8* null, i8* %67, i32 1), !dbg !883
  br label %68, !dbg !884

; <label>:68:                                     ; preds = %64, %34
  ret void, !dbg !885
}

; Function Attrs: nounwind uwtable
define internal void @item_act(%struct.SBAR_ITEM_REC*, i32) #0 !dbg !886 {
  %3 = alloca %struct.SBAR_ITEM_REC*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.SBAR_ITEM_REC* %0, %struct.SBAR_ITEM_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.SBAR_ITEM_REC** %3, metadata !887, metadata !707), !dbg !888
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !889, metadata !707), !dbg !890
  call void @llvm.dbg.declare(metadata i8** %5, metadata !891, metadata !707), !dbg !892
  call void @llvm.dbg.declare(metadata i32* %6, metadata !893, metadata !707), !dbg !894
  %7 = load i32, i32* %4, align 4, !dbg !895
  %8 = icmp ne i32 %7, 0, !dbg !895
  br i1 %8, label %9, label %18, !dbg !897

; <label>:9:                                      ; preds = %2
  %10 = load %struct._GList*, %struct._GList** @activity_list, align 8, !dbg !898
  %11 = icmp eq %struct._GList* %10, null, !dbg !901
  br i1 %11, label %12, label %17, !dbg !902

; <label>:12:                                     ; preds = %9
  %13 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %3, align 8, !dbg !903
  %14 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %13, i32 0, i32 4, !dbg !904
  store i32 0, i32* %14, align 4, !dbg !905
  %15 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %3, align 8, !dbg !906
  %16 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %15, i32 0, i32 3, !dbg !907
  store i32 0, i32* %16, align 8, !dbg !908
  br label %17, !dbg !906

; <label>:17:                                     ; preds = %12, %9
  br label %59, !dbg !909

; <label>:18:                                     ; preds = %2
  %19 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %3, align 8, !dbg !910
  %20 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %19, i32 0, i32 0, !dbg !911
  %21 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %20, align 8, !dbg !911
  %22 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %21, i32 0, i32 2, !dbg !912
  %23 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %22, align 8, !dbg !912
  %24 = call i8* @get_activity_list(%struct.MAIN_WINDOW_REC* %23, i32 1, i32 1), !dbg !913
  store i8* %24, i8** %5, align 8, !dbg !914
  %25 = load i8*, i8** %5, align 8, !dbg !915
  %26 = icmp eq i8* %25, null, !dbg !917
  br i1 %26, label %27, label %28, !dbg !918

; <label>:27:                                     ; preds = %18
  br label %59, !dbg !919

; <label>:28:                                     ; preds = %18
  %29 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %3, align 8, !dbg !921
  %30 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %29, i32 0, i32 4, !dbg !922
  %31 = load i32, i32* %30, align 4, !dbg !922
  store i32 %31, i32* %6, align 4, !dbg !923
  %32 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %3, align 8, !dbg !924
  %33 = load i8*, i8** %5, align 8, !dbg !925
  call void @statusbar_item_default_handler(%struct.SBAR_ITEM_REC* %32, i32 1, i8* null, i8* %33, i32 0), !dbg !926
  %34 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %3, align 8, !dbg !927
  %35 = load i8*, i8** %5, align 8, !dbg !928
  call void @statusbar_item_default_handler(%struct.SBAR_ITEM_REC* %34, i32 0, i8* null, i8* %35, i32 0), !dbg !929
  %36 = load i32, i32* %6, align 4, !dbg !930
  %37 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %3, align 8, !dbg !932
  %38 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %37, i32 0, i32 4, !dbg !933
  %39 = load i32, i32* %38, align 4, !dbg !933
  %40 = icmp ne i32 %36, %39, !dbg !934
  br i1 %40, label %41, label %57, !dbg !935

; <label>:41:                                     ; preds = %28
  %42 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %3, align 8, !dbg !936
  %43 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %42, i32 0, i32 8, !dbg !938
  %44 = load i8, i8* %43, align 4, !dbg !939
  %45 = and i8 %44, -2, !dbg !939
  %46 = or i8 %45, 1, !dbg !939
  store i8 %46, i8* %43, align 4, !dbg !939
  %47 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %3, align 8, !dbg !940
  %48 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %47, i32 0, i32 0, !dbg !941
  %49 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %48, align 8, !dbg !941
  %50 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %49, i32 0, i32 6, !dbg !942
  %51 = load i8, i8* %50, align 4, !dbg !943
  %52 = and i8 %51, -2, !dbg !943
  %53 = or i8 %52, 1, !dbg !943
  store i8 %53, i8* %50, align 4, !dbg !943
  %54 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %3, align 8, !dbg !944
  %55 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %54, i32 0, i32 0, !dbg !945
  %56 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %55, align 8, !dbg !945
  call void @statusbar_redraw(%struct.STATUSBAR_REC* %56, i32 1), !dbg !946
  call void @statusbar_redraw_dirty(), !dbg !947
  br label %57, !dbg !948

; <label>:57:                                     ; preds = %41, %28
  %58 = load i8*, i8** %5, align 8, !dbg !949
  call void @g_free(i8* %58), !dbg !950
  br label %59, !dbg !951

; <label>:59:                                     ; preds = %57, %27, %17
  ret void, !dbg !952
}

; Function Attrs: nounwind uwtable
define internal void @item_more(%struct.SBAR_ITEM_REC*, i32) #0 !dbg !954 {
  %3 = alloca %struct.SBAR_ITEM_REC*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %6 = alloca i32, align 4
  store %struct.SBAR_ITEM_REC* %0, %struct.SBAR_ITEM_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.SBAR_ITEM_REC** %3, metadata !955, metadata !707), !dbg !956
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !957, metadata !707), !dbg !958
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %5, metadata !959, metadata !707), !dbg !960
  call void @llvm.dbg.declare(metadata i32* %6, metadata !961, metadata !707), !dbg !962
  %7 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !963
  %8 = icmp eq %struct._WINDOW_REC* %7, null, !dbg !965
  br i1 %8, label %9, label %10, !dbg !966

; <label>:9:                                      ; preds = %2
  store %struct.MAIN_WINDOW_REC* null, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !967
  store i32 0, i32* %6, align 4, !dbg !969
  br label %28, !dbg !970

; <label>:10:                                     ; preds = %2
  %11 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !971
  %12 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %11, i32 0, i32 20, !dbg !973
  %13 = load i8*, i8** %12, align 8, !dbg !973
  %14 = bitcast i8* %13 to %struct.GUI_WINDOW_REC*, !dbg !974
  %15 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %14, i32 0, i32 0, !dbg !975
  %16 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %15, align 8, !dbg !975
  store %struct.MAIN_WINDOW_REC* %16, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !976
  %17 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !977
  %18 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %17, i32 0, i32 20, !dbg !978
  %19 = load i8*, i8** %18, align 8, !dbg !978
  %20 = bitcast i8* %19 to %struct.GUI_WINDOW_REC*, !dbg !979
  %21 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %20, i32 0, i32 1, !dbg !980
  %22 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %21, align 8, !dbg !980
  %23 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %22, i32 0, i32 16, !dbg !981
  %24 = load i8, i8* %23, align 8, !dbg !981
  %25 = lshr i8 %24, 5, !dbg !981
  %26 = and i8 %25, 1, !dbg !981
  %27 = zext i8 %26 to i32, !dbg !981
  store i32 %27, i32* %6, align 4, !dbg !982
  br label %28

; <label>:28:                                     ; preds = %10, %9
  %29 = load i32, i32* %6, align 4, !dbg !983
  %30 = icmp ne i32 %29, 0, !dbg !983
  br i1 %30, label %48, label %31, !dbg !985

; <label>:31:                                     ; preds = %28
  %32 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !986
  %33 = icmp ne %struct.MAIN_WINDOW_REC* %32, null, !dbg !989
  br i1 %33, label %34, label %39, !dbg !990

; <label>:34:                                     ; preds = %31
  %35 = load %struct._GSList*, %struct._GSList** @more_visible, align 8, !dbg !991
  %36 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !992
  %37 = bitcast %struct.MAIN_WINDOW_REC* %36 to i8*, !dbg !992
  %38 = call %struct._GSList* @g_slist_remove(%struct._GSList* %35, i8* %37), !dbg !993
  store %struct._GSList* %38, %struct._GSList** @more_visible, align 8, !dbg !994
  br label %39, !dbg !995

; <label>:39:                                     ; preds = %34, %31
  %40 = load i32, i32* %4, align 4, !dbg !996
  %41 = icmp ne i32 %40, 0, !dbg !996
  br i1 %41, label %42, label %47, !dbg !998

; <label>:42:                                     ; preds = %39
  %43 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %3, align 8, !dbg !999
  %44 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %43, i32 0, i32 4, !dbg !1000
  store i32 0, i32* %44, align 4, !dbg !1001
  %45 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %3, align 8, !dbg !1002
  %46 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %45, i32 0, i32 3, !dbg !1003
  store i32 0, i32* %46, align 8, !dbg !1004
  br label %47, !dbg !1002

; <label>:47:                                     ; preds = %42, %39
  br label %55, !dbg !1005

; <label>:48:                                     ; preds = %28
  %49 = load %struct._GSList*, %struct._GSList** @more_visible, align 8, !dbg !1006
  %50 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %5, align 8, !dbg !1007
  %51 = bitcast %struct.MAIN_WINDOW_REC* %50 to i8*, !dbg !1007
  %52 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %49, i8* %51), !dbg !1008
  store %struct._GSList* %52, %struct._GSList** @more_visible, align 8, !dbg !1009
  %53 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %3, align 8, !dbg !1010
  %54 = load i32, i32* %4, align 4, !dbg !1011
  call void @statusbar_item_default_handler(%struct.SBAR_ITEM_REC* %53, i32 %54, i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.29, i32 0, i32 0), i32 0), !dbg !1012
  br label %55, !dbg !1013

; <label>:55:                                     ; preds = %48, %47
  ret void, !dbg !1014
}

; Function Attrs: nounwind uwtable
define internal void @item_input(%struct.SBAR_ITEM_REC*, i32) #0 !dbg !1016 {
  %3 = alloca %struct.SBAR_ITEM_REC*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.GUI_ENTRY_REC*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._WINDOW_REC*, align 8
  store %struct.SBAR_ITEM_REC* %0, %struct.SBAR_ITEM_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.SBAR_ITEM_REC** %3, metadata !1017, metadata !707), !dbg !1018
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1019, metadata !707), !dbg !1020
  call void @llvm.dbg.declare(metadata %struct.GUI_ENTRY_REC** %5, metadata !1021, metadata !707), !dbg !1050
  %8 = load %struct._GHashTable*, %struct._GHashTable** @input_entries, align 8, !dbg !1051
  %9 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %3, align 8, !dbg !1052
  %10 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %9, i32 0, i32 0, !dbg !1053
  %11 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %10, align 8, !dbg !1053
  %12 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %11, i32 0, i32 1, !dbg !1054
  %13 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %12, align 8, !dbg !1054
  %14 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %13, i32 0, i32 0, !dbg !1055
  %15 = load i8*, i8** %14, align 8, !dbg !1055
  %16 = call i8* @g_hash_table_lookup(%struct._GHashTable* %8, i8* %15), !dbg !1056
  %17 = bitcast i8* %16 to %struct.GUI_ENTRY_REC*, !dbg !1056
  store %struct.GUI_ENTRY_REC* %17, %struct.GUI_ENTRY_REC** %5, align 8, !dbg !1057
  %18 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %5, align 8, !dbg !1058
  %19 = icmp eq %struct.GUI_ENTRY_REC* %18, null, !dbg !1060
  br i1 %19, label %20, label %75, !dbg !1061

; <label>:20:                                     ; preds = %2
  %21 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %3, align 8, !dbg !1062
  %22 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %21, i32 0, i32 0, !dbg !1064
  %23 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %22, align 8, !dbg !1064
  %24 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %23, i32 0, i32 2, !dbg !1065
  %25 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %24, align 8, !dbg !1065
  %26 = icmp ne %struct.MAIN_WINDOW_REC* %25, null, !dbg !1066
  br i1 %26, label %27, label %43, !dbg !1067

; <label>:27:                                     ; preds = %20
  %28 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %3, align 8, !dbg !1068
  %29 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %28, i32 0, i32 0, !dbg !1070
  %30 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %29, align 8, !dbg !1070
  %31 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %30, i32 0, i32 2, !dbg !1071
  %32 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %31, align 8, !dbg !1071
  %33 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %32, i32 0, i32 5, !dbg !1072
  %34 = load i32, i32* %33, align 4, !dbg !1072
  %35 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %3, align 8, !dbg !1073
  %36 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %35, i32 0, i32 0, !dbg !1074
  %37 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %36, align 8, !dbg !1074
  %38 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %37, i32 0, i32 2, !dbg !1075
  %39 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %38, align 8, !dbg !1075
  %40 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %39, i32 0, i32 13, !dbg !1076
  %41 = load i32, i32* %40, align 4, !dbg !1076
  %42 = add nsw i32 %34, %41, !dbg !1077
  br label %44, !dbg !1078

; <label>:43:                                     ; preds = %20
  br label %44, !dbg !1079

; <label>:44:                                     ; preds = %43, %27
  %45 = phi i32 [ %42, %27 ], [ 0, %43 ], !dbg !1081
  %46 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %3, align 8, !dbg !1083
  %47 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %46, i32 0, i32 5, !dbg !1084
  %48 = load i32, i32* %47, align 8, !dbg !1084
  %49 = add nsw i32 %45, %48, !dbg !1085
  %50 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %3, align 8, !dbg !1086
  %51 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %50, i32 0, i32 0, !dbg !1087
  %52 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %51, align 8, !dbg !1087
  %53 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %52, i32 0, i32 5, !dbg !1088
  %54 = load i32, i32* %53, align 8, !dbg !1088
  %55 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %3, align 8, !dbg !1089
  %56 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %55, i32 0, i32 6, !dbg !1090
  %57 = load i32, i32* %56, align 4, !dbg !1090
  %58 = load i32, i32* @term_type, align 4, !dbg !1091
  %59 = icmp eq i32 %58, 1, !dbg !1092
  %60 = zext i1 %59 to i32, !dbg !1092
  %61 = call %struct.GUI_ENTRY_REC* @gui_entry_create(i32 %49, i32 %54, i32 %57, i32 %60), !dbg !1093
  store %struct.GUI_ENTRY_REC* %61, %struct.GUI_ENTRY_REC** %5, align 8, !dbg !1094
  %62 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %5, align 8, !dbg !1095
  call void @gui_entry_set_active(%struct.GUI_ENTRY_REC* %62), !dbg !1096
  %63 = load %struct._GHashTable*, %struct._GHashTable** @input_entries, align 8, !dbg !1097
  %64 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %3, align 8, !dbg !1098
  %65 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %64, i32 0, i32 0, !dbg !1099
  %66 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %65, align 8, !dbg !1099
  %67 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %66, i32 0, i32 1, !dbg !1100
  %68 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %67, align 8, !dbg !1100
  %69 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %68, i32 0, i32 0, !dbg !1101
  %70 = load i8*, i8** %69, align 8, !dbg !1101
  %71 = call noalias i8* @g_strdup(i8* %70), !dbg !1102
  %72 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %5, align 8, !dbg !1103
  %73 = bitcast %struct.GUI_ENTRY_REC* %72 to i8*, !dbg !1103
  %74 = call i32 @g_hash_table_insert(%struct._GHashTable* %63, i8* %71, i8* %73), !dbg !1104
  br label %75, !dbg !1105

; <label>:75:                                     ; preds = %44, %2
  %76 = load i32, i32* %4, align 4, !dbg !1106
  %77 = icmp ne i32 %76, 0, !dbg !1106
  br i1 %77, label %78, label %114, !dbg !1108

; <label>:78:                                     ; preds = %75
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1109, metadata !707), !dbg !1111
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %7, metadata !1112, metadata !707), !dbg !1113
  %79 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %3, align 8, !dbg !1114
  %80 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %79, i32 0, i32 0, !dbg !1115
  %81 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %80, align 8, !dbg !1115
  %82 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %81, i32 0, i32 2, !dbg !1116
  %83 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %82, align 8, !dbg !1116
  %84 = icmp ne %struct.MAIN_WINDOW_REC* %83, null, !dbg !1117
  br i1 %84, label %85, label %93, !dbg !1114

; <label>:85:                                     ; preds = %78
  %86 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %3, align 8, !dbg !1118
  %87 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %86, i32 0, i32 0, !dbg !1119
  %88 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %87, align 8, !dbg !1119
  %89 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %88, i32 0, i32 2, !dbg !1120
  %90 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %89, align 8, !dbg !1120
  %91 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %90, i32 0, i32 0, !dbg !1121
  %92 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %91, align 8, !dbg !1121
  br label %94, !dbg !1122

; <label>:93:                                     ; preds = %78
  br label %94, !dbg !1124

; <label>:94:                                     ; preds = %93, %85
  %95 = phi %struct._WINDOW_REC* [ %92, %85 ], [ null, %93 ], !dbg !1126
  store %struct._WINDOW_REC* %95, %struct._WINDOW_REC** %7, align 8, !dbg !1128
  %96 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %7, align 8, !dbg !1129
  %97 = icmp ne %struct._WINDOW_REC* %96, null, !dbg !1130
  br i1 %97, label %98, label %102, !dbg !1129

; <label>:98:                                     ; preds = %94
  %99 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %7, align 8, !dbg !1131
  %100 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %99, i32 0, i32 2, !dbg !1132
  %101 = load i32, i32* %100, align 8, !dbg !1132
  br label %104, !dbg !1133

; <label>:102:                                    ; preds = %94
  %103 = load i32, i32* @term_width, align 4, !dbg !1134
  br label %104, !dbg !1135

; <label>:104:                                    ; preds = %102, %98
  %105 = phi i32 [ %101, %98 ], [ %103, %102 ], !dbg !1136
  store i32 %105, i32* %6, align 4, !dbg !1137
  %106 = load i32, i32* %6, align 4, !dbg !1138
  %107 = sdiv i32 %106, 10, !dbg !1139
  %108 = add nsw i32 2, %107, !dbg !1140
  %109 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %3, align 8, !dbg !1141
  %110 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %109, i32 0, i32 3, !dbg !1142
  store i32 %108, i32* %110, align 8, !dbg !1143
  %111 = load i32, i32* %6, align 4, !dbg !1144
  %112 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %3, align 8, !dbg !1145
  %113 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %112, i32 0, i32 4, !dbg !1146
  store i32 %111, i32* %113, align 4, !dbg !1147
  br label %154, !dbg !1148

; <label>:114:                                    ; preds = %75
  %115 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %5, align 8, !dbg !1149
  %116 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %3, align 8, !dbg !1150
  %117 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %116, i32 0, i32 0, !dbg !1151
  %118 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %117, align 8, !dbg !1151
  %119 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %118, i32 0, i32 2, !dbg !1152
  %120 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %119, align 8, !dbg !1152
  %121 = icmp ne %struct.MAIN_WINDOW_REC* %120, null, !dbg !1153
  br i1 %121, label %122, label %138, !dbg !1154

; <label>:122:                                    ; preds = %114
  %123 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %3, align 8, !dbg !1155
  %124 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %123, i32 0, i32 0, !dbg !1157
  %125 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %124, align 8, !dbg !1157
  %126 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %125, i32 0, i32 2, !dbg !1158
  %127 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %126, align 8, !dbg !1158
  %128 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %127, i32 0, i32 5, !dbg !1159
  %129 = load i32, i32* %128, align 4, !dbg !1159
  %130 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %3, align 8, !dbg !1160
  %131 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %130, i32 0, i32 0, !dbg !1161
  %132 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %131, align 8, !dbg !1161
  %133 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %132, i32 0, i32 2, !dbg !1162
  %134 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %133, align 8, !dbg !1162
  %135 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %134, i32 0, i32 13, !dbg !1163
  %136 = load i32, i32* %135, align 4, !dbg !1163
  %137 = add nsw i32 %129, %136, !dbg !1164
  br label %139, !dbg !1165

; <label>:138:                                    ; preds = %114
  br label %139, !dbg !1166

; <label>:139:                                    ; preds = %138, %122
  %140 = phi i32 [ %137, %122 ], [ 0, %138 ], !dbg !1168
  %141 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %3, align 8, !dbg !1170
  %142 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %141, i32 0, i32 5, !dbg !1171
  %143 = load i32, i32* %142, align 8, !dbg !1171
  %144 = add nsw i32 %140, %143, !dbg !1172
  %145 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %3, align 8, !dbg !1173
  %146 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %145, i32 0, i32 0, !dbg !1174
  %147 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %146, align 8, !dbg !1174
  %148 = getelementptr inbounds %struct.STATUSBAR_REC, %struct.STATUSBAR_REC* %147, i32 0, i32 5, !dbg !1175
  %149 = load i32, i32* %148, align 8, !dbg !1175
  %150 = load %struct.SBAR_ITEM_REC*, %struct.SBAR_ITEM_REC** %3, align 8, !dbg !1176
  %151 = getelementptr inbounds %struct.SBAR_ITEM_REC, %struct.SBAR_ITEM_REC* %150, i32 0, i32 6, !dbg !1177
  %152 = load i32, i32* %151, align 4, !dbg !1177
  call void @gui_entry_move(%struct.GUI_ENTRY_REC* %115, i32 %144, i32 %149, i32 %152), !dbg !1178
  %153 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** %5, align 8, !dbg !1179
  call void @gui_entry_redraw(%struct.GUI_ENTRY_REC* %153), !dbg !1180
  br label %154, !dbg !1181

; <label>:154:                                    ; preds = %139, %104
  ret void, !dbg !1182
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @sig_statusbar_activity_hilight(%struct._WINDOW_REC*, i8*) #0 !dbg !1183 {
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._GList*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !1186, metadata !707), !dbg !1187
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1188, metadata !707), !dbg !1189
  call void @llvm.dbg.declare(metadata %struct._GList** %5, metadata !1190, metadata !707), !dbg !1191
  br label %6, !dbg !1192, !llvm.loop !1193

; <label>:6:                                      ; preds = %2
  %7 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1194
  %8 = icmp ne %struct._WINDOW_REC* %7, null, !dbg !1198
  br i1 %8, label %9, label %10, !dbg !1194

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !1199

; <label>:10:                                     ; preds = %6
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.sig_statusbar_activity_hilight, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i32 0, i32 0)), !dbg !1202
  br label %136, !dbg !1205

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !1206

; <label>:12:                                     ; preds = %11
  %13 = load %struct._GList*, %struct._GList** @activity_list, align 8, !dbg !1208
  %14 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1209
  %15 = bitcast %struct._WINDOW_REC* %14 to i8*, !dbg !1209
  %16 = call %struct._GList* @g_list_find(%struct._GList* %13, i8* %15), !dbg !1210
  store %struct._GList* %16, %struct._GList** %5, align 8, !dbg !1211
  %17 = load i8, i8* @actlist_sort, align 1, !dbg !1212
  %18 = zext i8 %17 to i32, !dbg !1212
  %19 = icmp eq i32 %18, 1, !dbg !1214
  br i1 %19, label %20, label %38, !dbg !1215

; <label>:20:                                     ; preds = %12
  %21 = load %struct._GList*, %struct._GList** %5, align 8, !dbg !1216
  %22 = icmp ne %struct._GList* %21, null, !dbg !1219
  br i1 %22, label %23, label %27, !dbg !1220

; <label>:23:                                     ; preds = %20
  %24 = load %struct._GList*, %struct._GList** @activity_list, align 8, !dbg !1221
  %25 = load %struct._GList*, %struct._GList** %5, align 8, !dbg !1222
  %26 = call %struct._GList* @g_list_delete_link(%struct._GList* %24, %struct._GList* %25), !dbg !1223
  store %struct._GList* %26, %struct._GList** @activity_list, align 8, !dbg !1224
  br label %27, !dbg !1225

; <label>:27:                                     ; preds = %23, %20
  %28 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1226
  %29 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %28, i32 0, i32 14, !dbg !1228
  %30 = load i32, i32* %29, align 8, !dbg !1228
  %31 = icmp ne i32 %30, 0, !dbg !1229
  br i1 %31, label %32, label %37, !dbg !1230

; <label>:32:                                     ; preds = %27
  %33 = load %struct._GList*, %struct._GList** @activity_list, align 8, !dbg !1231
  %34 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1232
  %35 = bitcast %struct._WINDOW_REC* %34 to i8*, !dbg !1232
  %36 = call %struct._GList* @g_list_prepend(%struct._GList* %33, i8* %35), !dbg !1233
  store %struct._GList* %36, %struct._GList** @activity_list, align 8, !dbg !1234
  br label %37, !dbg !1235

; <label>:37:                                     ; preds = %32, %27
  call void @statusbar_items_redraw(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)), !dbg !1236
  br label %136, !dbg !1237

; <label>:38:                                     ; preds = %12
  %39 = load i8, i8* @actlist_sort, align 1, !dbg !1238
  %40 = zext i8 %39 to i32, !dbg !1238
  %41 = icmp eq i32 %40, 2, !dbg !1240
  br i1 %41, label %42, label %75, !dbg !1241

; <label>:42:                                     ; preds = %38
  %43 = load %struct._GList*, %struct._GList** %5, align 8, !dbg !1242
  %44 = icmp ne %struct._GList* %43, null, !dbg !1245
  br i1 %44, label %45, label %64, !dbg !1246

; <label>:45:                                     ; preds = %42
  %46 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1247
  %47 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %46, i32 0, i32 14, !dbg !1250
  %48 = load i32, i32* %47, align 8, !dbg !1250
  %49 = load i8*, i8** %4, align 8, !dbg !1251
  %50 = ptrtoint i8* %49 to i64, !dbg !1252
  %51 = trunc i64 %50 to i32, !dbg !1253
  %52 = icmp eq i32 %48, %51, !dbg !1254
  br i1 %52, label %53, label %60, !dbg !1255

; <label>:53:                                     ; preds = %45
  %54 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1256
  %55 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %54, i32 0, i32 15, !dbg !1259
  %56 = load i8*, i8** %55, align 8, !dbg !1259
  %57 = icmp ne i8* %56, null, !dbg !1260
  br i1 %57, label %58, label %59, !dbg !1261

; <label>:58:                                     ; preds = %53
  call void @statusbar_items_redraw(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)), !dbg !1262
  br label %59, !dbg !1262

; <label>:59:                                     ; preds = %58, %53
  br label %136, !dbg !1263

; <label>:60:                                     ; preds = %45
  %61 = load %struct._GList*, %struct._GList** @activity_list, align 8, !dbg !1264
  %62 = load %struct._GList*, %struct._GList** %5, align 8, !dbg !1265
  %63 = call %struct._GList* @g_list_delete_link(%struct._GList* %61, %struct._GList* %62), !dbg !1266
  store %struct._GList* %63, %struct._GList** @activity_list, align 8, !dbg !1267
  br label %64, !dbg !1268

; <label>:64:                                     ; preds = %60, %42
  %65 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1269
  %66 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %65, i32 0, i32 14, !dbg !1271
  %67 = load i32, i32* %66, align 8, !dbg !1271
  %68 = icmp ne i32 %67, 0, !dbg !1272
  br i1 %68, label %69, label %74, !dbg !1273

; <label>:69:                                     ; preds = %64
  %70 = load %struct._GList*, %struct._GList** @activity_list, align 8, !dbg !1274
  %71 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1275
  %72 = bitcast %struct._WINDOW_REC* %71 to i8*, !dbg !1275
  %73 = call %struct._GList* @g_list_insert_sorted(%struct._GList* %70, i8* %72, i32 (i8*, i8*)* bitcast (i32 (%struct._WINDOW_REC*, %struct._WINDOW_REC*)* @window_level_cmp to i32 (i8*, i8*)*)), !dbg !1276
  store %struct._GList* %73, %struct._GList** @activity_list, align 8, !dbg !1277
  br label %74, !dbg !1278

; <label>:74:                                     ; preds = %69, %64
  call void @statusbar_items_redraw(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)), !dbg !1279
  br label %136, !dbg !1280

; <label>:75:                                     ; preds = %38
  %76 = load i8, i8* @actlist_sort, align 1, !dbg !1281
  %77 = zext i8 %76 to i32, !dbg !1281
  %78 = icmp eq i32 %77, 3, !dbg !1283
  br i1 %78, label %79, label %97, !dbg !1284

; <label>:79:                                     ; preds = %75
  %80 = load %struct._GList*, %struct._GList** %5, align 8, !dbg !1285
  %81 = icmp ne %struct._GList* %80, null, !dbg !1288
  br i1 %81, label %82, label %86, !dbg !1289

; <label>:82:                                     ; preds = %79
  %83 = load %struct._GList*, %struct._GList** @activity_list, align 8, !dbg !1290
  %84 = load %struct._GList*, %struct._GList** %5, align 8, !dbg !1291
  %85 = call %struct._GList* @g_list_delete_link(%struct._GList* %83, %struct._GList* %84), !dbg !1292
  store %struct._GList* %85, %struct._GList** @activity_list, align 8, !dbg !1293
  br label %86, !dbg !1294

; <label>:86:                                     ; preds = %82, %79
  %87 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1295
  %88 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %87, i32 0, i32 14, !dbg !1297
  %89 = load i32, i32* %88, align 8, !dbg !1297
  %90 = icmp ne i32 %89, 0, !dbg !1298
  br i1 %90, label %91, label %96, !dbg !1299

; <label>:91:                                     ; preds = %86
  %92 = load %struct._GList*, %struct._GList** @activity_list, align 8, !dbg !1300
  %93 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1301
  %94 = bitcast %struct._WINDOW_REC* %93 to i8*, !dbg !1301
  %95 = call %struct._GList* @g_list_insert_sorted(%struct._GList* %92, i8* %94, i32 (i8*, i8*)* bitcast (i32 (%struct._WINDOW_REC*, %struct._WINDOW_REC*)* @window_level_recent_cmp to i32 (i8*, i8*)*)), !dbg !1302
  store %struct._GList* %95, %struct._GList** @activity_list, align 8, !dbg !1303
  br label %96, !dbg !1304

; <label>:96:                                     ; preds = %91, %86
  call void @statusbar_items_redraw(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)), !dbg !1305
  br label %136, !dbg !1306

; <label>:97:                                     ; preds = %75
  %98 = load %struct._GList*, %struct._GList** %5, align 8, !dbg !1307
  %99 = icmp ne %struct._GList* %98, null, !dbg !1309
  br i1 %99, label %100, label %125, !dbg !1310

; <label>:100:                                    ; preds = %97
  %101 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1311
  %102 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %101, i32 0, i32 14, !dbg !1314
  %103 = load i32, i32* %102, align 8, !dbg !1314
  %104 = icmp eq i32 %103, 0, !dbg !1315
  br i1 %104, label %105, label %109, !dbg !1316

; <label>:105:                                    ; preds = %100
  %106 = load %struct._GList*, %struct._GList** @activity_list, align 8, !dbg !1317
  %107 = load %struct._GList*, %struct._GList** %5, align 8, !dbg !1319
  %108 = call %struct._GList* @g_list_delete_link(%struct._GList* %106, %struct._GList* %107), !dbg !1320
  store %struct._GList* %108, %struct._GList** @activity_list, align 8, !dbg !1321
  call void @statusbar_items_redraw(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)), !dbg !1322
  br label %124, !dbg !1323

; <label>:109:                                    ; preds = %100
  %110 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1324
  %111 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %110, i32 0, i32 14, !dbg !1327
  %112 = load i32, i32* %111, align 8, !dbg !1327
  %113 = load i8*, i8** %4, align 8, !dbg !1328
  %114 = ptrtoint i8* %113 to i64, !dbg !1329
  %115 = trunc i64 %114 to i32, !dbg !1330
  %116 = icmp ne i32 %112, %115, !dbg !1331
  br i1 %116, label %122, label %117, !dbg !1332

; <label>:117:                                    ; preds = %109
  %118 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1333
  %119 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %118, i32 0, i32 15, !dbg !1334
  %120 = load i8*, i8** %119, align 8, !dbg !1334
  %121 = icmp ne i8* %120, null, !dbg !1335
  br i1 %121, label %122, label %123, !dbg !1336

; <label>:122:                                    ; preds = %117, %109
  call void @statusbar_items_redraw(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)), !dbg !1338
  br label %123, !dbg !1340

; <label>:123:                                    ; preds = %122, %117
  br label %124

; <label>:124:                                    ; preds = %123, %105
  br label %136, !dbg !1341

; <label>:125:                                    ; preds = %97
  %126 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1342
  %127 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %126, i32 0, i32 14, !dbg !1344
  %128 = load i32, i32* %127, align 8, !dbg !1344
  %129 = icmp eq i32 %128, 0, !dbg !1345
  br i1 %129, label %130, label %131, !dbg !1346

; <label>:130:                                    ; preds = %125
  br label %136, !dbg !1347

; <label>:131:                                    ; preds = %125
  %132 = load %struct._GList*, %struct._GList** @activity_list, align 8, !dbg !1348
  %133 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1349
  %134 = bitcast %struct._WINDOW_REC* %133 to i8*, !dbg !1349
  %135 = call %struct._GList* @g_list_insert_sorted(%struct._GList* %132, i8* %134, i32 (i8*, i8*)* bitcast (i32 (%struct._WINDOW_REC*, %struct._WINDOW_REC*)* @window_refnum_cmp to i32 (i8*, i8*)*)), !dbg !1350
  store %struct._GList* %135, %struct._GList** @activity_list, align 8, !dbg !1351
  call void @statusbar_items_redraw(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)), !dbg !1352
  br label %136, !dbg !1353

; <label>:136:                                    ; preds = %131, %130, %124, %96, %74, %59, %37, %10
  ret void, !dbg !1354
}

; Function Attrs: nounwind uwtable
define internal void @sig_statusbar_activity_window_destroyed(%struct._WINDOW_REC*) #0 !dbg !1356 {
  %2 = alloca %struct._WINDOW_REC*, align 8
  %3 = alloca %struct._GList*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %2, metadata !1359, metadata !707), !dbg !1360
  call void @llvm.dbg.declare(metadata %struct._GList** %3, metadata !1361, metadata !707), !dbg !1362
  br label %4, !dbg !1363, !llvm.loop !1364

; <label>:4:                                      ; preds = %1
  %5 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !1365
  %6 = icmp ne %struct._WINDOW_REC* %5, null, !dbg !1369
  br i1 %6, label %7, label %8, !dbg !1365

; <label>:7:                                      ; preds = %4
  br label %9, !dbg !1370

; <label>:8:                                      ; preds = %4
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.sig_statusbar_activity_window_destroyed, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i32 0, i32 0)), !dbg !1373
  br label %22, !dbg !1376

; <label>:9:                                      ; preds = %7
  br label %10, !dbg !1377

; <label>:10:                                     ; preds = %9
  %11 = load %struct._GList*, %struct._GList** @activity_list, align 8, !dbg !1379
  %12 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !1380
  %13 = bitcast %struct._WINDOW_REC* %12 to i8*, !dbg !1380
  %14 = call %struct._GList* @g_list_find(%struct._GList* %11, i8* %13), !dbg !1381
  store %struct._GList* %14, %struct._GList** %3, align 8, !dbg !1382
  %15 = load %struct._GList*, %struct._GList** %3, align 8, !dbg !1383
  %16 = icmp ne %struct._GList* %15, null, !dbg !1385
  br i1 %16, label %17, label %21, !dbg !1386

; <label>:17:                                     ; preds = %10
  %18 = load %struct._GList*, %struct._GList** @activity_list, align 8, !dbg !1387
  %19 = load %struct._GList*, %struct._GList** %3, align 8, !dbg !1388
  %20 = call %struct._GList* @g_list_delete_link(%struct._GList* %18, %struct._GList* %19), !dbg !1389
  store %struct._GList* %20, %struct._GList** @activity_list, align 8, !dbg !1390
  br label %21, !dbg !1391

; <label>:21:                                     ; preds = %17, %10
  call void @statusbar_items_redraw(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)), !dbg !1392
  br label %22, !dbg !1393

; <label>:22:                                     ; preds = %21, %8
  ret void, !dbg !1394
}

; Function Attrs: nounwind uwtable
define internal void @sig_statusbar_activity_updated() #0 !dbg !1396 {
  call void @statusbar_items_redraw(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)), !dbg !1397
  ret void, !dbg !1398
}

; Function Attrs: nounwind uwtable
define internal void @sig_statusbar_more_updated() #0 !dbg !1399 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1400, metadata !707), !dbg !1401
  %2 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1402
  %3 = icmp eq %struct._WINDOW_REC* %2, null, !dbg !1404
  br i1 %3, label %4, label %5, !dbg !1405

; <label>:4:                                      ; preds = %0
  br label %31, !dbg !1406

; <label>:5:                                      ; preds = %0
  %6 = load %struct._GSList*, %struct._GSList** @more_visible, align 8, !dbg !1407
  %7 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1408
  %8 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %7, i32 0, i32 20, !dbg !1409
  %9 = load i8*, i8** %8, align 8, !dbg !1409
  %10 = bitcast i8* %9 to %struct.GUI_WINDOW_REC*, !dbg !1410
  %11 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %10, i32 0, i32 0, !dbg !1411
  %12 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %11, align 8, !dbg !1411
  %13 = bitcast %struct.MAIN_WINDOW_REC* %12 to i8*, !dbg !1412
  %14 = call %struct._GSList* @g_slist_find(%struct._GSList* %6, i8* %13), !dbg !1413
  %15 = icmp ne %struct._GSList* %14, null, !dbg !1414
  %16 = zext i1 %15 to i32, !dbg !1414
  store i32 %16, i32* %1, align 4, !dbg !1415
  %17 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1416
  %18 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %17, i32 0, i32 20, !dbg !1418
  %19 = load i8*, i8** %18, align 8, !dbg !1418
  %20 = bitcast i8* %19 to %struct.GUI_WINDOW_REC*, !dbg !1419
  %21 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %20, i32 0, i32 1, !dbg !1420
  %22 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %21, align 8, !dbg !1420
  %23 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %22, i32 0, i32 16, !dbg !1421
  %24 = load i8, i8* %23, align 8, !dbg !1421
  %25 = lshr i8 %24, 5, !dbg !1421
  %26 = and i8 %25, 1, !dbg !1421
  %27 = zext i8 %26 to i32, !dbg !1421
  %28 = load i32, i32* %1, align 4, !dbg !1422
  %29 = icmp ne i32 %27, %28, !dbg !1423
  br i1 %29, label %30, label %31, !dbg !1424

; <label>:30:                                     ; preds = %5
  call void @statusbar_items_redraw(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0)), !dbg !1425
  br label %31, !dbg !1425

; <label>:31:                                     ; preds = %4, %30, %5
  ret void, !dbg !1426
}

; Function Attrs: nounwind uwtable
define internal void @sig_server_lag_updated(%struct._SERVER_REC*) #0 !dbg !1427 {
  %2 = alloca %struct._SERVER_REC*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %2, metadata !1430, metadata !707), !dbg !1431
  %3 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1432
  %4 = icmp ne %struct._WINDOW_REC* %3, null, !dbg !1434
  br i1 %4, label %5, label %12, !dbg !1435

; <label>:5:                                      ; preds = %1
  %6 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1436
  %7 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %6, i32 0, i32 6, !dbg !1438
  %8 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !1438
  %9 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1439
  %10 = icmp eq %struct._SERVER_REC* %8, %9, !dbg !1440
  br i1 %10, label %11, label %12, !dbg !1441

; <label>:11:                                     ; preds = %5
  call void @lag_check_update(), !dbg !1442
  br label %12, !dbg !1442

; <label>:12:                                     ; preds = %11, %5, %1
  ret void, !dbg !1443
}

; Function Attrs: nounwind uwtable
define internal void @lag_check_update() #0 !dbg !1444 {
  %1 = alloca %struct._SERVER_REC*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %1, metadata !1445, metadata !707), !dbg !1446
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1447, metadata !707), !dbg !1448
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1449, metadata !707), !dbg !1450
  %4 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1451
  %5 = icmp eq %struct._WINDOW_REC* %4, null, !dbg !1452
  br i1 %5, label %6, label %7, !dbg !1451

; <label>:6:                                      ; preds = %0
  br label %11, !dbg !1453

; <label>:7:                                      ; preds = %0
  %8 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1455
  %9 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %8, i32 0, i32 6, !dbg !1457
  %10 = load %struct._SERVER_REC*, %struct._SERVER_REC** %9, align 8, !dbg !1457
  br label %11, !dbg !1458

; <label>:11:                                     ; preds = %7, %6
  %12 = phi %struct._SERVER_REC* [ null, %6 ], [ %10, %7 ], !dbg !1459
  store %struct._SERVER_REC* %12, %struct._SERVER_REC** %1, align 8, !dbg !1461
  %13 = load %struct._SERVER_REC*, %struct._SERVER_REC** %1, align 8, !dbg !1462
  %14 = call i32 @get_lag(%struct._SERVER_REC* %13, i32* %3), !dbg !1463
  %15 = sdiv i32 %14, 10, !dbg !1464
  store i32 %15, i32* %2, align 4, !dbg !1465
  %16 = load i32, i32* %2, align 4, !dbg !1466
  %17 = call i32 @settings_get_time(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)), !dbg !1468
  %18 = icmp slt i32 %16, %17, !dbg !1469
  br i1 %18, label %19, label %20, !dbg !1470

; <label>:19:                                     ; preds = %11
  store i32 0, i32* %2, align 4, !dbg !1471
  br label %23, !dbg !1472

; <label>:20:                                     ; preds = %11
  %21 = load i32, i32* %2, align 4, !dbg !1473
  %22 = sdiv i32 %21, 10, !dbg !1473
  store i32 %22, i32* %2, align 4, !dbg !1473
  br label %23

; <label>:23:                                     ; preds = %20, %19
  %24 = load i32, i32* %2, align 4, !dbg !1474
  %25 = load i32, i32* @last_lag, align 4, !dbg !1476
  %26 = icmp ne i32 %24, %25, !dbg !1477
  br i1 %26, label %34, label %27, !dbg !1478

; <label>:27:                                     ; preds = %23
  %28 = load i32, i32* %2, align 4, !dbg !1479
  %29 = icmp sgt i32 %28, 0, !dbg !1481
  br i1 %29, label %30, label %35, !dbg !1482

; <label>:30:                                     ; preds = %27
  %31 = load i32, i32* %3, align 4, !dbg !1483
  %32 = load i32, i32* @last_lag_unknown, align 4, !dbg !1485
  %33 = icmp ne i32 %31, %32, !dbg !1486
  br i1 %33, label %34, label %35, !dbg !1487

; <label>:34:                                     ; preds = %30, %23
  call void @statusbar_items_redraw(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0)), !dbg !1488
  br label %35, !dbg !1488

; <label>:35:                                     ; preds = %34, %30, %27
  ret void, !dbg !1489
}

declare i32 @g_timeout_add(i32, i32 (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @sig_lag_timeout() #0 !dbg !1490 {
  call void @lag_check_update(), !dbg !1493
  ret i32 1, !dbg !1494
}

declare %struct._GHashTable* @g_hash_table_new(i32 (i8*)*, i32 (i8*, i8*)*) #1

declare i32 @g_str_hash(i8*) #1

declare i32 @g_str_equal(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @read_settings() #0 !dbg !1495 {
  %1 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !1496, metadata !707), !dbg !1497
  %2 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1498
  %3 = icmp ne %struct.GUI_ENTRY_REC* %2, null, !dbg !1500
  br i1 %3, label %4, label %9, !dbg !1501

; <label>:4:                                      ; preds = %0
  %5 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !1502
  %6 = load i32, i32* @term_type, align 4, !dbg !1503
  %7 = icmp eq i32 %6, 1, !dbg !1504
  %8 = zext i1 %7 to i32, !dbg !1504
  call void @gui_entry_set_utf8(%struct.GUI_ENTRY_REC* %5, i32 %8), !dbg !1505
  br label %9, !dbg !1505

; <label>:9:                                      ; preds = %4, %0
  %10 = call i8* @settings_get_str(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0)), !dbg !1506
  store i8* %10, i8** %1, align 8, !dbg !1507
  %11 = load i8*, i8** %1, align 8, !dbg !1508
  %12 = call i32 @g_ascii_strcasecmp(i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0)), !dbg !1510
  %13 = icmp eq i32 %12, 0, !dbg !1511
  br i1 %13, label %14, label %15, !dbg !1512

; <label>:14:                                     ; preds = %9
  store i8 1, i8* @actlist_sort, align 1, !dbg !1513
  br label %28, !dbg !1514

; <label>:15:                                     ; preds = %9
  %16 = load i8*, i8** %1, align 8, !dbg !1515
  %17 = call i32 @g_ascii_strcasecmp(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0)), !dbg !1517
  %18 = icmp eq i32 %17, 0, !dbg !1518
  br i1 %18, label %19, label %20, !dbg !1519

; <label>:19:                                     ; preds = %15
  store i8 2, i8* @actlist_sort, align 1, !dbg !1520
  br label %27, !dbg !1521

; <label>:20:                                     ; preds = %15
  %21 = load i8*, i8** %1, align 8, !dbg !1522
  %22 = call i32 @g_ascii_strcasecmp(i8* %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i32 0, i32 0)), !dbg !1524
  %23 = icmp eq i32 %22, 0, !dbg !1525
  br i1 %23, label %24, label %25, !dbg !1526

; <label>:24:                                     ; preds = %20
  store i8 3, i8* @actlist_sort, align 1, !dbg !1527
  br label %26, !dbg !1528

; <label>:25:                                     ; preds = %20
  call void @settings_set_str(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0)), !dbg !1529
  store i8 0, i8* @actlist_sort, align 1, !dbg !1531
  br label %26

; <label>:26:                                     ; preds = %25, %24
  br label %27

; <label>:27:                                     ; preds = %26, %19
  br label %28

; <label>:28:                                     ; preds = %27, %14
  ret void, !dbg !1532
}

; Function Attrs: nounwind uwtable
define void @statusbar_items_deinit() #0 !dbg !1533 {
  call void @signal_remove_full(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*, i8*)* @sig_statusbar_activity_hilight to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1534
  call void @signal_remove_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*)* @sig_statusbar_activity_window_destroyed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1535
  call void @signal_remove_full(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_statusbar_activity_updated to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1536
  %1 = load %struct._GList*, %struct._GList** @activity_list, align 8, !dbg !1537
  call void @g_list_free(%struct._GList* %1), !dbg !1538
  store %struct._GList* null, %struct._GList** @activity_list, align 8, !dbg !1539
  %2 = load %struct._GSList*, %struct._GSList** @more_visible, align 8, !dbg !1540
  call void @g_slist_free(%struct._GSList* %2), !dbg !1541
  call void @signal_remove_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_statusbar_more_updated to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1542
  call void @signal_remove_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_statusbar_more_updated to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1543
  call void @signal_remove_full(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_statusbar_more_updated to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1544
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_statusbar_more_updated to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1545
  call void @signal_remove_full(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_statusbar_more_updated to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1546
  call void @signal_remove_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*)* @sig_server_lag_updated to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1547
  call void @signal_remove_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @lag_check_update to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1548
  call void @signal_remove_full(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @lag_check_update to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1549
  %3 = load i32, i32* @lag_timeout_tag, align 4, !dbg !1550
  %4 = call i32 @g_source_remove(i32 %3), !dbg !1551
  %5 = load %struct._GHashTable*, %struct._GHashTable** @input_entries, align 8, !dbg !1552
  call void @g_hash_table_foreach(%struct._GHashTable* %5, void (i8*, i8*, i8*)* bitcast (void (i8*)* @g_free to void (i8*, i8*, i8*)*), i8* null), !dbg !1553
  %6 = load %struct._GHashTable*, %struct._GHashTable** @input_entries, align 8, !dbg !1554
  call void @g_hash_table_destroy(%struct._GHashTable* %6), !dbg !1555
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1556
  ret void, !dbg !1557
}

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @g_list_free(%struct._GList*) #1

declare void @g_slist_free(%struct._GSList*) #1

declare i32 @g_source_remove(i32) #1

declare void @g_hash_table_foreach(%struct._GHashTable*, void (i8*, i8*, i8*)*, i8*) #1

declare void @g_free(i8*) #1

declare void @g_hash_table_destroy(%struct._GHashTable*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare void @statusbar_item_default_handler(%struct.SBAR_ITEM_REC*, i32, i8*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @get_lag(%struct._SERVER_REC*, i32*) #0 !dbg !1558 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !1562, metadata !707), !dbg !1563
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !1564, metadata !707), !dbg !1565
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1566, metadata !707), !dbg !1567
  %7 = load i32*, i32** %5, align 8, !dbg !1568
  store i32 0, i32* %7, align 4, !dbg !1569
  %8 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1570
  %9 = icmp eq %struct._SERVER_REC* %8, null, !dbg !1572
  br i1 %9, label %15, label %10, !dbg !1573

; <label>:10:                                     ; preds = %2
  %11 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1574
  %12 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %11, i32 0, i32 21, !dbg !1576
  %13 = load i64, i64* %12, align 8, !dbg !1576
  %14 = icmp eq i64 %13, 0, !dbg !1577
  br i1 %14, label %15, label %16, !dbg !1578

; <label>:15:                                     ; preds = %10, %2
  store i32 0, i32* %3, align 4, !dbg !1579
  br label %49, !dbg !1579

; <label>:16:                                     ; preds = %10
  %17 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1581
  %18 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %17, i32 0, i32 20, !dbg !1583
  %19 = getelementptr inbounds %struct._GTimeVal, %struct._GTimeVal* %18, i32 0, i32 0, !dbg !1584
  %20 = load i64, i64* %19, align 8, !dbg !1584
  %21 = icmp eq i64 %20, 0, !dbg !1585
  br i1 %21, label %22, label %26, !dbg !1586

; <label>:22:                                     ; preds = %16
  %23 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1587
  %24 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %23, i32 0, i32 22, !dbg !1589
  %25 = load i32, i32* %24, align 8, !dbg !1589
  store i32 %25, i32* %3, align 4, !dbg !1590
  br label %49, !dbg !1590

; <label>:26:                                     ; preds = %16
  %27 = load i32*, i32** %5, align 8, !dbg !1591
  store i32 1, i32* %27, align 4, !dbg !1592
  %28 = call i64 @time(i64* null) #5, !dbg !1593
  %29 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1594
  %30 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %29, i32 0, i32 20, !dbg !1595
  %31 = getelementptr inbounds %struct._GTimeVal, %struct._GTimeVal* %30, i32 0, i32 0, !dbg !1596
  %32 = load i64, i64* %31, align 8, !dbg !1596
  %33 = sub nsw i64 %28, %32, !dbg !1597
  store i64 %33, i64* %6, align 8, !dbg !1598
  %34 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1599
  %35 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %34, i32 0, i32 22, !dbg !1601
  %36 = load i32, i32* %35, align 8, !dbg !1601
  %37 = sdiv i32 %36, 1000, !dbg !1602
  %38 = sext i32 %37 to i64, !dbg !1599
  %39 = load i64, i64* %6, align 8, !dbg !1603
  %40 = icmp sgt i64 %38, %39, !dbg !1604
  br i1 %40, label %41, label %45, !dbg !1605

; <label>:41:                                     ; preds = %26
  %42 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1606
  %43 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %42, i32 0, i32 22, !dbg !1608
  %44 = load i32, i32* %43, align 8, !dbg !1608
  store i32 %44, i32* %3, align 4, !dbg !1609
  br label %49, !dbg !1609

; <label>:45:                                     ; preds = %26
  %46 = load i64, i64* %6, align 8, !dbg !1610
  %47 = mul nsw i64 %46, 1000, !dbg !1611
  %48 = trunc i64 %47 to i32, !dbg !1610
  store i32 %48, i32* %3, align 4, !dbg !1612
  br label %49, !dbg !1612

; <label>:49:                                     ; preds = %45, %41, %22, %15
  %50 = load i32, i32* %3, align 4, !dbg !1613
  ret i32 %50, !dbg !1613
}

declare i32 @settings_get_time(i8*) #1

declare i32 @g_snprintf(i8*, i64, i8*, ...) #1

; Function Attrs: nounwind
declare i64 @time(i64*) #3

; Function Attrs: nounwind uwtable
define internal i8* @get_activity_list(%struct.MAIN_WINDOW_REC*, i32, i32) #0 !dbg !1614 {
  %4 = alloca %struct.MAIN_WINDOW_REC*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.THEME_REC*, align 8
  %8 = alloca %struct._GString*, align 8
  %9 = alloca %struct._GString*, align 8
  %10 = alloca %struct._GList*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct._WINDOW_REC*, align 8
  store %struct.MAIN_WINDOW_REC* %0, %struct.MAIN_WINDOW_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.MAIN_WINDOW_REC** %4, metadata !1617, metadata !707), !dbg !1618
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1619, metadata !707), !dbg !1620
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1621, metadata !707), !dbg !1622
  call void @llvm.dbg.declare(metadata %struct.THEME_REC** %7, metadata !1623, metadata !707), !dbg !1643
  call void @llvm.dbg.declare(metadata %struct._GString** %8, metadata !1644, metadata !707), !dbg !1645
  call void @llvm.dbg.declare(metadata %struct._GString** %9, metadata !1646, metadata !707), !dbg !1647
  call void @llvm.dbg.declare(metadata %struct._GList** %10, metadata !1648, metadata !707), !dbg !1649
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1650, metadata !707), !dbg !1651
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1652, metadata !707), !dbg !1653
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1654, metadata !707), !dbg !1655
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1656, metadata !707), !dbg !1657
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1658, metadata !707), !dbg !1659
  %17 = call i32 @settings_get_bool(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0)), !dbg !1660
  store i32 %17, i32* %15, align 4, !dbg !1659
  %18 = call %struct._GString* @g_string_new(i8* null), !dbg !1661
  store %struct._GString* %18, %struct._GString** %8, align 8, !dbg !1662
  %19 = call %struct._GString* @g_string_new(i8* null), !dbg !1663
  store %struct._GString* %19, %struct._GString** %9, align 8, !dbg !1664
  %20 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !1665
  %21 = icmp ne %struct.MAIN_WINDOW_REC* %20, null, !dbg !1666
  br i1 %21, label %22, label %40, !dbg !1667

; <label>:22:                                     ; preds = %3
  %23 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !1668
  %24 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %23, i32 0, i32 0, !dbg !1670
  %25 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %24, align 8, !dbg !1670
  %26 = icmp ne %struct._WINDOW_REC* %25, null, !dbg !1671
  br i1 %26, label %27, label %40, !dbg !1672

; <label>:27:                                     ; preds = %22
  %28 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !1673
  %29 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %28, i32 0, i32 0, !dbg !1674
  %30 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %29, align 8, !dbg !1674
  %31 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %30, i32 0, i32 19, !dbg !1675
  %32 = load i8*, i8** %31, align 8, !dbg !1675
  %33 = icmp ne i8* %32, null, !dbg !1676
  br i1 %33, label %34, label %40, !dbg !1677

; <label>:34:                                     ; preds = %27
  %35 = load %struct.MAIN_WINDOW_REC*, %struct.MAIN_WINDOW_REC** %4, align 8, !dbg !1679
  %36 = getelementptr inbounds %struct.MAIN_WINDOW_REC, %struct.MAIN_WINDOW_REC* %35, i32 0, i32 0, !dbg !1680
  %37 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %36, align 8, !dbg !1680
  %38 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %37, i32 0, i32 19, !dbg !1681
  %39 = load i8*, i8** %38, align 8, !dbg !1681
  br label %43, !dbg !1682

; <label>:40:                                     ; preds = %27, %22, %3
  %41 = load %struct.THEME_REC*, %struct.THEME_REC** @current_theme, align 8, !dbg !1684
  %42 = bitcast %struct.THEME_REC* %41 to i8*, !dbg !1684
  br label %43, !dbg !1685

; <label>:43:                                     ; preds = %40, %34
  %44 = phi i8* [ %39, %34 ], [ %42, %40 ], !dbg !1687
  %45 = bitcast i8* %44 to %struct.THEME_REC*, !dbg !1687
  store %struct.THEME_REC* %45, %struct.THEME_REC** %7, align 8, !dbg !1689
  %46 = load %struct._GList*, %struct._GList** @activity_list, align 8, !dbg !1690
  store %struct._GList* %46, %struct._GList** %10, align 8, !dbg !1692
  br label %47, !dbg !1693

; <label>:47:                                     ; preds = %142, %43
  %48 = load %struct._GList*, %struct._GList** %10, align 8, !dbg !1694
  %49 = icmp ne %struct._GList* %48, null, !dbg !1697
  br i1 %49, label %50, label %146, !dbg !1698

; <label>:50:                                     ; preds = %47
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %16, metadata !1699, metadata !707), !dbg !1701
  %51 = load %struct._GList*, %struct._GList** %10, align 8, !dbg !1702
  %52 = getelementptr inbounds %struct._GList, %struct._GList* %51, i32 0, i32 0, !dbg !1703
  %53 = load i8*, i8** %52, align 8, !dbg !1703
  %54 = bitcast i8* %53 to %struct._WINDOW_REC*, !dbg !1702
  store %struct._WINDOW_REC* %54, %struct._WINDOW_REC** %16, align 8, !dbg !1701
  %55 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %16, align 8, !dbg !1704
  %56 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %55, i32 0, i32 14, !dbg !1705
  %57 = load i32, i32* %56, align 8, !dbg !1705
  %58 = icmp sge i32 %57, 3, !dbg !1706
  %59 = zext i1 %58 to i32, !dbg !1706
  store i32 %59, i32* %14, align 4, !dbg !1707
  %60 = load i32, i32* %14, align 4, !dbg !1708
  %61 = icmp ne i32 %60, 0, !dbg !1708
  br i1 %61, label %65, label %62, !dbg !1710

; <label>:62:                                     ; preds = %50
  %63 = load i32, i32* %5, align 4, !dbg !1711
  %64 = icmp ne i32 %63, 0, !dbg !1711
  br i1 %64, label %65, label %71, !dbg !1713

; <label>:65:                                     ; preds = %62, %50
  %66 = load i32, i32* %14, align 4, !dbg !1714
  %67 = icmp ne i32 %66, 0, !dbg !1714
  br i1 %67, label %68, label %72, !dbg !1716

; <label>:68:                                     ; preds = %65
  %69 = load i32, i32* %6, align 4, !dbg !1717
  %70 = icmp ne i32 %69, 0, !dbg !1717
  br i1 %70, label %72, label %71, !dbg !1719

; <label>:71:                                     ; preds = %68, %62
  br label %142, !dbg !1720

; <label>:72:                                     ; preds = %68, %65
  %73 = load %struct._GString*, %struct._GString** %8, align 8, !dbg !1721
  %74 = getelementptr inbounds %struct._GString, %struct._GString* %73, i32 0, i32 1, !dbg !1723
  %75 = load i64, i64* %74, align 8, !dbg !1723
  %76 = icmp ugt i64 %75, 0, !dbg !1724
  br i1 %76, label %77, label %84, !dbg !1725

; <label>:77:                                     ; preds = %72
  %78 = load %struct.THEME_REC*, %struct.THEME_REC** %7, align 8, !dbg !1726
  %79 = call i8* @theme_format_expand(%struct.THEME_REC* %78, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i32 0, i32 0)), !dbg !1728
  store i8* %79, i8** %13, align 8, !dbg !1729
  %80 = load %struct._GString*, %struct._GString** %8, align 8, !dbg !1730
  %81 = load i8*, i8** %13, align 8, !dbg !1731
  %82 = call %struct._GString* @g_string_append(%struct._GString* %80, i8* %81), !dbg !1732
  %83 = load i8*, i8** %13, align 8, !dbg !1733
  call void @g_free(i8* %83), !dbg !1734
  br label %84, !dbg !1735

; <label>:84:                                     ; preds = %77, %72
  %85 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %16, align 8, !dbg !1736
  %86 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %85, i32 0, i32 14, !dbg !1737
  %87 = load i32, i32* %86, align 8, !dbg !1737
  switch i32 %87, label %90 [
    i32 0, label %88
    i32 1, label %88
    i32 2, label %89
  ], !dbg !1738

; <label>:88:                                     ; preds = %84, %84
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i32 0, i32 0), i8** %12, align 8, !dbg !1739
  br label %98, !dbg !1741

; <label>:89:                                     ; preds = %84
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0), i8** %12, align 8, !dbg !1742
  br label %98, !dbg !1743

; <label>:90:                                     ; preds = %84
  %91 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %16, align 8, !dbg !1744
  %92 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %91, i32 0, i32 15, !dbg !1746
  %93 = load i8*, i8** %92, align 8, !dbg !1746
  %94 = icmp eq i8* %93, null, !dbg !1747
  br i1 %94, label %95, label %96, !dbg !1748

; <label>:95:                                     ; preds = %90
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.36, i32 0, i32 0), i8** %12, align 8, !dbg !1749
  br label %97, !dbg !1750

; <label>:96:                                     ; preds = %90
  store i8* null, i8** %12, align 8, !dbg !1751
  br label %97

; <label>:97:                                     ; preds = %96, %95
  br label %98, !dbg !1752

; <label>:98:                                     ; preds = %97, %89, %88
  %99 = load i8*, i8** %12, align 8, !dbg !1753
  %100 = icmp ne i8* %99, null, !dbg !1755
  br i1 %100, label %101, label %107, !dbg !1756

; <label>:101:                                    ; preds = %98
  %102 = load %struct._GString*, %struct._GString** %9, align 8, !dbg !1757
  %103 = load i8*, i8** %12, align 8, !dbg !1758
  %104 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %16, align 8, !dbg !1759
  %105 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %104, i32 0, i32 0, !dbg !1760
  %106 = load i32, i32* %105, align 8, !dbg !1760
  call void (%struct._GString*, i8*, ...) @g_string_printf(%struct._GString* %102, i8* %103, i32 %106), !dbg !1761
  br label %115, !dbg !1761

; <label>:107:                                    ; preds = %98
  %108 = load %struct._GString*, %struct._GString** %9, align 8, !dbg !1762
  %109 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %16, align 8, !dbg !1763
  %110 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %109, i32 0, i32 15, !dbg !1764
  %111 = load i8*, i8** %110, align 8, !dbg !1764
  %112 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %16, align 8, !dbg !1765
  %113 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %112, i32 0, i32 0, !dbg !1766
  %114 = load i32, i32* %113, align 8, !dbg !1766
  call void (%struct._GString*, i8*, ...) @g_string_printf(%struct._GString* %108, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.37, i32 0, i32 0), i8* %111, i32 %114), !dbg !1767
  br label %115

; <label>:115:                                    ; preds = %107, %101
  %116 = load i32, i32* %15, align 4, !dbg !1768
  %117 = icmp ne i32 %116, 0, !dbg !1768
  br i1 %117, label %118, label %130, !dbg !1770

; <label>:118:                                    ; preds = %115
  %119 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %16, align 8, !dbg !1771
  %120 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %119, i32 0, i32 5, !dbg !1773
  %121 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %120, align 8, !dbg !1773
  %122 = icmp ne %struct._WI_ITEM_REC* %121, null, !dbg !1774
  br i1 %122, label %123, label %130, !dbg !1775

; <label>:123:                                    ; preds = %118
  %124 = load %struct._GString*, %struct._GString** %9, align 8, !dbg !1776
  %125 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %16, align 8, !dbg !1777
  %126 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %125, i32 0, i32 5, !dbg !1778
  %127 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %126, align 8, !dbg !1778
  %128 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %127, i32 0, i32 5, !dbg !1779
  %129 = load i8*, i8** %128, align 8, !dbg !1779
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %124, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0), i8* %129), !dbg !1780
  br label %130, !dbg !1780

; <label>:130:                                    ; preds = %123, %118, %115
  %131 = load %struct._GString*, %struct._GString** %9, align 8, !dbg !1781
  %132 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %131, i8 signext 125), !dbg !1782
  %133 = load %struct.THEME_REC*, %struct.THEME_REC** %7, align 8, !dbg !1783
  %134 = load %struct._GString*, %struct._GString** %9, align 8, !dbg !1784
  %135 = getelementptr inbounds %struct._GString, %struct._GString* %134, i32 0, i32 0, !dbg !1785
  %136 = load i8*, i8** %135, align 8, !dbg !1785
  %137 = call i8* @theme_format_expand(%struct.THEME_REC* %133, i8* %136), !dbg !1786
  store i8* %137, i8** %13, align 8, !dbg !1787
  %138 = load %struct._GString*, %struct._GString** %8, align 8, !dbg !1788
  %139 = load i8*, i8** %13, align 8, !dbg !1789
  %140 = call %struct._GString* @g_string_append(%struct._GString* %138, i8* %139), !dbg !1790
  %141 = load i8*, i8** %13, align 8, !dbg !1791
  call void @g_free(i8* %141), !dbg !1792
  br label %142, !dbg !1793

; <label>:142:                                    ; preds = %130, %71
  %143 = load %struct._GList*, %struct._GList** %10, align 8, !dbg !1794
  %144 = getelementptr inbounds %struct._GList, %struct._GList* %143, i32 0, i32 1, !dbg !1796
  %145 = load %struct._GList*, %struct._GList** %144, align 8, !dbg !1796
  store %struct._GList* %145, %struct._GList** %10, align 8, !dbg !1797
  br label %47, !dbg !1798, !llvm.loop !1799

; <label>:146:                                    ; preds = %47
  %147 = load %struct._GString*, %struct._GString** %8, align 8, !dbg !1801
  %148 = getelementptr inbounds %struct._GString, %struct._GString* %147, i32 0, i32 1, !dbg !1802
  %149 = load i64, i64* %148, align 8, !dbg !1802
  %150 = icmp eq i64 %149, 0, !dbg !1803
  br i1 %150, label %151, label %152, !dbg !1801

; <label>:151:                                    ; preds = %146
  br label %156, !dbg !1804

; <label>:152:                                    ; preds = %146
  %153 = load %struct._GString*, %struct._GString** %8, align 8, !dbg !1805
  %154 = getelementptr inbounds %struct._GString, %struct._GString* %153, i32 0, i32 0, !dbg !1806
  %155 = load i8*, i8** %154, align 8, !dbg !1806
  br label %156, !dbg !1807

; <label>:156:                                    ; preds = %152, %151
  %157 = phi i8* [ null, %151 ], [ %155, %152 ], !dbg !1808
  store i8* %157, i8** %11, align 8, !dbg !1809
  %158 = load %struct._GString*, %struct._GString** %8, align 8, !dbg !1810
  %159 = load i8*, i8** %11, align 8, !dbg !1811
  %160 = icmp eq i8* %159, null, !dbg !1812
  %161 = zext i1 %160 to i32, !dbg !1812
  %162 = call i8* @g_string_free(%struct._GString* %158, i32 %161), !dbg !1813
  %163 = load %struct._GString*, %struct._GString** %9, align 8, !dbg !1814
  %164 = call i8* @g_string_free(%struct._GString* %163, i32 1), !dbg !1815
  %165 = load i8*, i8** %11, align 8, !dbg !1816
  ret i8* %165, !dbg !1817
}

declare void @statusbar_redraw(%struct.STATUSBAR_REC*, i32) #1

declare void @statusbar_redraw_dirty() #1

declare i32 @settings_get_bool(i8*) #1

declare %struct._GString* @g_string_new(i8*) #1

declare i8* @theme_format_expand(%struct.THEME_REC*, i8*) #1

declare %struct._GString* @g_string_append(%struct._GString*, i8*) #1

declare void @g_string_printf(%struct._GString*, i8*, ...) #1

declare void @g_string_append_printf(%struct._GString*, i8*, ...) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._GString* @g_string_append_c_inline(%struct._GString*, i8 signext) #4 !dbg !1818 {
  %3 = alloca %struct._GString*, align 8
  %4 = alloca i8, align 1
  store %struct._GString* %0, %struct._GString** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._GString** %3, metadata !1821, metadata !707), !dbg !1822
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !1823, metadata !707), !dbg !1824
  %5 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1825
  %6 = getelementptr inbounds %struct._GString, %struct._GString* %5, i32 0, i32 1, !dbg !1827
  %7 = load i64, i64* %6, align 8, !dbg !1827
  %8 = add i64 %7, 1, !dbg !1828
  %9 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1829
  %10 = getelementptr inbounds %struct._GString, %struct._GString* %9, i32 0, i32 2, !dbg !1830
  %11 = load i64, i64* %10, align 8, !dbg !1830
  %12 = icmp ult i64 %8, %11, !dbg !1831
  br i1 %12, label %13, label %30, !dbg !1832

; <label>:13:                                     ; preds = %2
  %14 = load i8, i8* %4, align 1, !dbg !1833
  %15 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1835
  %16 = getelementptr inbounds %struct._GString, %struct._GString* %15, i32 0, i32 1, !dbg !1836
  %17 = load i64, i64* %16, align 8, !dbg !1837
  %18 = add i64 %17, 1, !dbg !1837
  store i64 %18, i64* %16, align 8, !dbg !1837
  %19 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1838
  %20 = getelementptr inbounds %struct._GString, %struct._GString* %19, i32 0, i32 0, !dbg !1839
  %21 = load i8*, i8** %20, align 8, !dbg !1839
  %22 = getelementptr inbounds i8, i8* %21, i64 %17, !dbg !1838
  store i8 %14, i8* %22, align 1, !dbg !1840
  %23 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1841
  %24 = getelementptr inbounds %struct._GString, %struct._GString* %23, i32 0, i32 1, !dbg !1842
  %25 = load i64, i64* %24, align 8, !dbg !1842
  %26 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1843
  %27 = getelementptr inbounds %struct._GString, %struct._GString* %26, i32 0, i32 0, !dbg !1844
  %28 = load i8*, i8** %27, align 8, !dbg !1844
  %29 = getelementptr inbounds i8, i8* %28, i64 %25, !dbg !1843
  store i8 0, i8* %29, align 1, !dbg !1845
  br label %34, !dbg !1846

; <label>:30:                                     ; preds = %2
  %31 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1847
  %32 = load i8, i8* %4, align 1, !dbg !1848
  %33 = call %struct._GString* @g_string_insert_c(%struct._GString* %31, i64 -1, i8 signext %32), !dbg !1849
  br label %34

; <label>:34:                                     ; preds = %30, %13
  %35 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1850
  ret %struct._GString* %35, !dbg !1851
}

declare i8* @g_string_free(%struct._GString*, i32) #1

declare %struct._GString* @g_string_insert_c(%struct._GString*, i64, i8 signext) #1

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #1

declare %struct._GSList* @g_slist_prepend(%struct._GSList*, i8*) #1

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #1

declare %struct.GUI_ENTRY_REC* @gui_entry_create(i32, i32, i32, i32) #1

declare void @gui_entry_set_active(%struct.GUI_ENTRY_REC*) #1

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #1

declare noalias i8* @g_strdup(i8*) #1

declare void @gui_entry_move(%struct.GUI_ENTRY_REC*, i32, i32, i32) #1

declare void @gui_entry_redraw(%struct.GUI_ENTRY_REC*) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare %struct._GList* @g_list_find(%struct._GList*, i8*) #1

declare %struct._GList* @g_list_delete_link(%struct._GList*, %struct._GList*) #1

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

declare void @statusbar_items_redraw(i8*) #1

declare %struct._GList* @g_list_insert_sorted(%struct._GList*, i8*, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @window_level_cmp(%struct._WINDOW_REC*, %struct._WINDOW_REC*) #0 !dbg !1852 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._WINDOW_REC*, align 8
  %5 = alloca %struct._WINDOW_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %4, metadata !1855, metadata !707), !dbg !1856
  store %struct._WINDOW_REC* %1, %struct._WINDOW_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %5, metadata !1857, metadata !707), !dbg !1858
  %6 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !1859
  %7 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %6, i32 0, i32 14, !dbg !1861
  %8 = load i32, i32* %7, align 8, !dbg !1861
  %9 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !1862
  %10 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %9, i32 0, i32 14, !dbg !1863
  %11 = load i32, i32* %10, align 8, !dbg !1863
  %12 = icmp sgt i32 %8, %11, !dbg !1864
  br i1 %12, label %29, label %13, !dbg !1865

; <label>:13:                                     ; preds = %2
  %14 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !1866
  %15 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %14, i32 0, i32 14, !dbg !1867
  %16 = load i32, i32* %15, align 8, !dbg !1867
  %17 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !1868
  %18 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %17, i32 0, i32 14, !dbg !1869
  %19 = load i32, i32* %18, align 8, !dbg !1869
  %20 = icmp eq i32 %16, %19, !dbg !1870
  br i1 %20, label %21, label %30, !dbg !1871

; <label>:21:                                     ; preds = %13
  %22 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !1872
  %23 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %22, i32 0, i32 0, !dbg !1874
  %24 = load i32, i32* %23, align 8, !dbg !1874
  %25 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !1875
  %26 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %25, i32 0, i32 0, !dbg !1876
  %27 = load i32, i32* %26, align 8, !dbg !1876
  %28 = icmp slt i32 %24, %27, !dbg !1877
  br i1 %28, label %29, label %30, !dbg !1878

; <label>:29:                                     ; preds = %21, %2
  store i32 -1, i32* %3, align 4, !dbg !1880
  br label %31, !dbg !1880

; <label>:30:                                     ; preds = %21, %13
  store i32 1, i32* %3, align 4, !dbg !1881
  br label %31, !dbg !1881

; <label>:31:                                     ; preds = %30, %29
  %32 = load i32, i32* %3, align 4, !dbg !1882
  ret i32 %32, !dbg !1882
}

; Function Attrs: nounwind uwtable
define internal i32 @window_level_recent_cmp(%struct._WINDOW_REC*, %struct._WINDOW_REC*) #0 !dbg !1883 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._WINDOW_REC*, align 8
  %5 = alloca %struct._WINDOW_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %4, metadata !1884, metadata !707), !dbg !1885
  store %struct._WINDOW_REC* %1, %struct._WINDOW_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %5, metadata !1886, metadata !707), !dbg !1887
  %6 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !1888
  %7 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %6, i32 0, i32 14, !dbg !1890
  %8 = load i32, i32* %7, align 8, !dbg !1890
  %9 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !1891
  %10 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %9, i32 0, i32 14, !dbg !1892
  %11 = load i32, i32* %10, align 8, !dbg !1892
  %12 = icmp sge i32 %8, %11, !dbg !1893
  br i1 %12, label %13, label %14, !dbg !1894

; <label>:13:                                     ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !1895
  br label %15, !dbg !1895

; <label>:14:                                     ; preds = %2
  store i32 1, i32* %3, align 4, !dbg !1896
  br label %15, !dbg !1896

; <label>:15:                                     ; preds = %14, %13
  %16 = load i32, i32* %3, align 4, !dbg !1897
  ret i32 %16, !dbg !1897
}

declare i32 @window_refnum_cmp(%struct._WINDOW_REC*, %struct._WINDOW_REC*) #1

declare %struct._GSList* @g_slist_find(%struct._GSList*, i8*) #1

declare void @gui_entry_set_utf8(%struct.GUI_ENTRY_REC*, i32) #1

declare i8* @settings_get_str(i8*) #1

declare i32 @g_ascii_strcasecmp(i8*, i8*) #1

declare void @settings_set_str(i8*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!606, !607}
!llvm.ident = !{!608}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !42, globals: !596)
!1 = !DIFile(filename: "line366-statusbar-items.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !10, !15, !24, !35}
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
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 7, size: 32, align: 32, elements: !37)
!36 = !DIFile(filename: "../../src/fe-common/core/fe-windows.h", directory: "/home/lichi/Desktop/irssi/task1")
!37 = !{!38, !39, !40, !41}
!38 = !DIEnumerator(name: "DATA_LEVEL_NONE", value: 0)
!39 = !DIEnumerator(name: "DATA_LEVEL_TEXT", value: 1)
!40 = !DIEnumerator(name: "DATA_LEVEL_MSG", value: 2)
!41 = !DIEnumerator(name: "DATA_LEVEL_HILIGHT", value: 3)
!42 = !{!43, !50, !51, !60, !67, !71, !75, !76, !185, !397, !57, !387}
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !44, line: 9, baseType: !45)
!44 = !DIFile(filename: "../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DISubroutineType(types: !47)
!47 = !{null, !48, !48, !48, !48, !48, !48}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DISubroutineType(types: !54)
!54 = !{!55, !59}
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !56, line: 50, baseType: !57)
!56 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !56, line: 49, baseType: !58)
!58 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !56, line: 77, baseType: !50)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashFunc", file: !56, line: 90, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!62 = !DISubroutineType(types: !63)
!63 = !{!64, !66}
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !56, line: 55, baseType: !65)
!65 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "gconstpointer", file: !56, line: 78, baseType: !48)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCompareFunc", file: !56, line: 80, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{!57, !66, !66}
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHFunc", file: !56, line: 91, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !59, !59, !59}
!75 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, align: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "GUI_WINDOW_REC", file: !78, line: 24, baseType: !79)
!78 = !DIFile(filename: "gui-windows.h", directory: "/home/lichi/Desktop/irssi/task1")
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !78, line: 13, size: 320, align: 64, elements: !80)
!80 = !{!81, !508, !590, !591, !592, !593, !594, !595}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !79, file: !78, line: 14, baseType: !82, size: 64, align: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "MAIN_WINDOW_REC", file: !84, line: 34, baseType: !85)
!84 = !DIFile(filename: "mainwindows.h", directory: "/home/lichi/Desktop/irssi/task1")
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !84, line: 16, size: 704, align: 64, elements: !86)
!86 = !{!87, !487, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !85, file: !84, line: 17, baseType: !88, size: 64, align: 64)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64, align: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "WINDOW_REC", file: !90, line: 117, baseType: !91)
!90 = !DIFile(filename: "../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WINDOW_REC", file: !36, line: 28, size: 1280, align: 64, elements: !92)
!92 = !{!93, !94, !97, !98, !99, !107, !452, !453, !454, !455, !456, !457, !458, !459, !460, !479, !480, !481, !482, !483, !484, !485, !486}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "refnum", scope: !91, file: !36, line: 29, baseType: !58, size: 32, align: 32)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !91, file: !36, line: 30, baseType: !95, size: 64, align: 64, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64, align: 64)
!96 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !91, file: !36, line: 32, baseType: !58, size: 32, align: 32, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !91, file: !36, line: 32, baseType: !58, size: 32, align: 32, offset: 160)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !91, file: !36, line: 34, baseType: !100, size: 64, align: 64, offset: 192)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64, align: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !102, line: 37, baseType: !103)
!102 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !102, line: 39, size: 128, align: 64, elements: !104)
!104 = !{!105, !106}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !103, file: !102, line: 41, baseType: !59, size: 64, align: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !103, file: !102, line: 42, baseType: !100, size: 64, align: 64, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !91, file: !36, line: 35, baseType: !108, size: 64, align: 64, offset: 256)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64, align: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !90, line: 108, baseType: !110)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !111, line: 5, size: 704, align: 64, elements: !112)
!111 = !DIFile(filename: "../../src/core/window-item-def.h", directory: "/home/lichi/Desktop/irssi/task1")
!112 = !{!113, !115, !116, !121, !122, !439, !440, !441, !442, !443, !444, !448}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !110, file: !114, line: 3, baseType: !58, size: 32, align: 32)
!114 = !DIFile(filename: "../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!115 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !110, file: !114, line: 4, baseType: !58, size: 32, align: 32, offset: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !110, file: !114, line: 5, baseType: !117, size: 64, align: 64, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, align: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !119, line: 37, baseType: !120)
!119 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!120 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !119, line: 37, flags: DIFlagFwdDecl)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !110, file: !114, line: 7, baseType: !50, size: 64, align: 64, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !110, file: !114, line: 8, baseType: !123, size: 64, align: 64, offset: 192)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !90, line: 107, baseType: !125)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !126, line: 30, size: 2240, align: 64, elements: !127)
!126 = !DIFile(filename: "../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!127 = !{!128, !130, !131, !132, !346, !351, !352, !353, !354, !355, !356, !357, !358, !359, !363, !364, !368, !369, !370, !374, !375, !376, !377, !378, !379, !380, !381, !382, !389, !390, !391, !392, !393, !399, !403, !407, !411, !415, !420, !427, !434, !438}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !125, file: !129, line: 3, baseType: !58, size: 32, align: 32)
!129 = !DIFile(filename: "../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!130 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !125, file: !129, line: 4, baseType: !58, size: 32, align: 32, offset: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !125, file: !129, line: 6, baseType: !58, size: 32, align: 32, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !125, file: !129, line: 8, baseType: !133, size: 64, align: 64, offset: 128)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, align: 64)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !90, line: 113, baseType: !135)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !126, line: 25, size: 1920, align: 64, elements: !136)
!136 = !{!137, !139, !140, !141, !142, !143, !144, !145, !146, !148, !149, !150, !151, !152, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !135, file: !138, line: 3, baseType: !58, size: 32, align: 32)
!138 = !DIFile(filename: "../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!139 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !135, file: !138, line: 4, baseType: !58, size: 32, align: 32, offset: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !135, file: !138, line: 6, baseType: !58, size: 32, align: 32, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !135, file: !138, line: 9, baseType: !95, size: 64, align: 64, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !135, file: !138, line: 10, baseType: !58, size: 32, align: 32, offset: 192)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !135, file: !138, line: 11, baseType: !95, size: 64, align: 64, offset: 256)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !135, file: !138, line: 11, baseType: !95, size: 64, align: 64, offset: 320)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !135, file: !138, line: 11, baseType: !95, size: 64, align: 64, offset: 384)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !135, file: !138, line: 13, baseType: !147, size: 16, align: 16, offset: 448)
!147 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !135, file: !138, line: 14, baseType: !95, size: 64, align: 64, offset: 512)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !135, file: !138, line: 15, baseType: !95, size: 64, align: 64, offset: 576)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !135, file: !138, line: 16, baseType: !58, size: 32, align: 32, offset: 640)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !135, file: !138, line: 17, baseType: !95, size: 64, align: 64, offset: 704)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !135, file: !138, line: 19, baseType: !153, size: 64, align: 64, offset: 768)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64, align: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !90, line: 99, baseType: !155)
!155 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !90, line: 99, flags: DIFlagFwdDecl)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !135, file: !138, line: 19, baseType: !153, size: 64, align: 64, offset: 832)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !135, file: !138, line: 21, baseType: !95, size: 64, align: 64, offset: 896)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !135, file: !138, line: 22, baseType: !95, size: 64, align: 64, offset: 960)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !135, file: !138, line: 23, baseType: !95, size: 64, align: 64, offset: 1024)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !135, file: !138, line: 24, baseType: !95, size: 64, align: 64, offset: 1088)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !135, file: !138, line: 26, baseType: !95, size: 64, align: 64, offset: 1152)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !135, file: !138, line: 27, baseType: !95, size: 64, align: 64, offset: 1216)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !135, file: !138, line: 28, baseType: !95, size: 64, align: 64, offset: 1280)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !135, file: !138, line: 29, baseType: !95, size: 64, align: 64, offset: 1344)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !135, file: !138, line: 30, baseType: !95, size: 64, align: 64, offset: 1408)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !135, file: !138, line: 31, baseType: !95, size: 64, align: 64, offset: 1472)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !135, file: !138, line: 32, baseType: !95, size: 64, align: 64, offset: 1536)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !135, file: !138, line: 33, baseType: !95, size: 64, align: 64, offset: 1600)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !135, file: !138, line: 35, baseType: !170, size: 64, align: 64, offset: 1664)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64, align: 64)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !172)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !173)
!173 = !{!174, !175, !303, !304, !309, !310, !311, !312, !313, !322, !323, !324, !328, !329, !330, !331, !332, !333, !334, !335}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !172, file: !4, line: 100, baseType: !57, size: 32, align: 32)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !172, file: !4, line: 101, baseType: !176, size: 64, align: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64, align: 64)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !178)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !179)
!179 = !{!180, !203, !209, !215, !219, !290, !294, !299}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !178, file: !4, line: 133, baseType: !181, size: 64, align: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64, align: 64)
!182 = !DISubroutineType(types: !183)
!183 = !{!184, !170, !185, !187, !190, !191}
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64, align: 64)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !56, line: 46, baseType: !96)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !188, line: 66, baseType: !189)
!188 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!189 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64, align: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64, align: 64)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64, align: 64)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !194, line: 42, baseType: !195)
!194 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !194, line: 44, size: 128, align: 64, elements: !196)
!196 = !{!197, !201, !202}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !195, file: !194, line: 46, baseType: !198, size: 32, align: 32)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !199, line: 36, baseType: !200)
!199 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !188, line: 45, baseType: !65)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !195, file: !194, line: 47, baseType: !57, size: 32, align: 32, offset: 32)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !195, file: !194, line: 48, baseType: !185, size: 64, align: 64, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !178, file: !4, line: 138, baseType: !204, size: 64, align: 64, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, align: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!184, !170, !207, !187, !190, !191}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64, align: 64)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !186)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !178, file: !4, line: 143, baseType: !210, size: 64, align: 64, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!184, !170, !213, !214, !191}
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !188, line: 51, baseType: !75)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !178, file: !4, line: 147, baseType: !216, size: 64, align: 64, offset: 192)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{!184, !170, !191}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !178, file: !4, line: 149, baseType: !220, size: 64, align: 64, offset: 256)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, align: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{!223, !170, !289}
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64, align: 64)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !225)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !226)
!226 = !{!227, !228, !244, !273, !274, !278, !279, !280, !281, !282, !283, !284, !285}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !225, file: !16, line: 174, baseType: !59, size: 64, align: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !225, file: !16, line: 175, baseType: !229, size: 64, align: 64, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64, align: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !231)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !232)
!232 = !{!233, !237, !238}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !231, file: !16, line: 198, baseType: !234, size: 64, align: 64)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64, align: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{null, !59}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !231, file: !16, line: 199, baseType: !234, size: 64, align: 64, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !231, file: !16, line: 200, baseType: !239, size: 64, align: 64, offset: 128)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64, align: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{null, !59, !223, !242, !243}
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !225, file: !16, line: 177, baseType: !245, size: 64, align: 64, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64, align: 64)
!246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !247)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !248)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !249)
!249 = !{!250, !255, !259, !263, !267, !268}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !248, file: !16, line: 216, baseType: !251, size: 64, align: 64)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64, align: 64)
!252 = !DISubroutineType(types: !253)
!253 = !{!55, !223, !254}
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !248, file: !16, line: 218, baseType: !256, size: 64, align: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64, align: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{!55, !223}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !248, file: !16, line: 219, baseType: !260, size: 64, align: 64, offset: 128)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!55, !223, !51, !59}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !248, file: !16, line: 222, baseType: !264, size: 64, align: 64, offset: 192)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64, align: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{null, !223}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !248, file: !16, line: 226, baseType: !51, size: 64, align: 64, offset: 256)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !248, file: !16, line: 227, baseType: !269, size: 64, align: 64, offset: 320)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{null}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !225, file: !16, line: 178, baseType: !64, size: 32, align: 32, offset: 192)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !225, file: !16, line: 180, baseType: !275, size: 64, align: 64, offset: 256)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64, align: 64)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !277)
!277 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !225, file: !16, line: 182, baseType: !57, size: 32, align: 32, offset: 320)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !225, file: !16, line: 183, baseType: !64, size: 32, align: 32, offset: 352)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !225, file: !16, line: 184, baseType: !64, size: 32, align: 32, offset: 384)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !225, file: !16, line: 186, baseType: !100, size: 64, align: 64, offset: 448)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !225, file: !16, line: 188, baseType: !223, size: 64, align: 64, offset: 512)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !225, file: !16, line: 189, baseType: !223, size: 64, align: 64, offset: 576)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !225, file: !16, line: 191, baseType: !95, size: 64, align: 64, offset: 640)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !225, file: !16, line: 193, baseType: !286, size: 64, align: 64, offset: 704)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64, align: 64)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !288)
!288 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !178, file: !4, line: 151, baseType: !291, size: 64, align: 64, offset: 320)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64, align: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{null, !170}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !178, file: !4, line: 152, baseType: !295, size: 64, align: 64, offset: 384)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64, align: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{!184, !170, !298, !191}
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !178, file: !4, line: 155, baseType: !300, size: 64, align: 64, offset: 448)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64, align: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{!298, !170}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !172, file: !4, line: 103, baseType: !185, size: 64, align: 64, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !172, file: !4, line: 104, baseType: !305, size: 64, align: 64, offset: 192)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !306, line: 77, baseType: !307)
!306 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64, align: 64)
!308 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !306, line: 77, flags: DIFlagFwdDecl)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !172, file: !4, line: 105, baseType: !305, size: 64, align: 64, offset: 256)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !172, file: !4, line: 106, baseType: !185, size: 64, align: 64, offset: 320)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !172, file: !4, line: 107, baseType: !64, size: 32, align: 32, offset: 384)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !172, file: !4, line: 109, baseType: !187, size: 64, align: 64, offset: 448)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !172, file: !4, line: 110, baseType: !314, size: 64, align: 64, offset: 512)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64, align: 64)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !316, line: 39, baseType: !317)
!316 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !316, line: 41, size: 192, align: 64, elements: !318)
!318 = !{!319, !320, !321}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !317, file: !316, line: 43, baseType: !185, size: 64, align: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !317, file: !316, line: 44, baseType: !187, size: 64, align: 64, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !317, file: !316, line: 45, baseType: !187, size: 64, align: 64, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !172, file: !4, line: 111, baseType: !314, size: 64, align: 64, offset: 576)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !172, file: !4, line: 112, baseType: !314, size: 64, align: 64, offset: 640)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !172, file: !4, line: 113, baseType: !325, size: 48, align: 8, offset: 704)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 48, align: 8, elements: !326)
!326 = !{!327}
!327 = !DISubrange(count: 6)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !172, file: !4, line: 117, baseType: !64, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !172, file: !4, line: 118, baseType: !64, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !172, file: !4, line: 119, baseType: !64, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !172, file: !4, line: 120, baseType: !64, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !172, file: !4, line: 121, baseType: !64, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !172, file: !4, line: 122, baseType: !64, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !172, file: !4, line: 124, baseType: !59, size: 64, align: 64, offset: 768)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !172, file: !4, line: 125, baseType: !59, size: 64, align: 64, offset: 832)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !135, file: !138, line: 38, baseType: !65, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !135, file: !138, line: 39, baseType: !65, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !135, file: !138, line: 40, baseType: !65, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !135, file: !138, line: 41, baseType: !65, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !135, file: !138, line: 42, baseType: !65, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !135, file: !138, line: 43, baseType: !65, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !135, file: !138, line: 44, baseType: !65, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !135, file: !138, line: 45, baseType: !65, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !135, file: !138, line: 46, baseType: !95, size: 64, align: 64, offset: 1792)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !135, file: !138, line: 47, baseType: !95, size: 64, align: 64, offset: 1856)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !125, file: !129, line: 9, baseType: !347, size: 64, align: 64, offset: 192)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !348, line: 75, baseType: !349)
!348 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !350, line: 139, baseType: !75)
!350 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!351 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !125, file: !129, line: 10, baseType: !347, size: 64, align: 64, offset: 256)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !125, file: !129, line: 12, baseType: !95, size: 64, align: 64, offset: 320)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !125, file: !129, line: 13, baseType: !95, size: 64, align: 64, offset: 384)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !125, file: !129, line: 15, baseType: !65, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !125, file: !129, line: 16, baseType: !65, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !125, file: !129, line: 17, baseType: !65, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !125, file: !129, line: 18, baseType: !65, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !125, file: !129, line: 19, baseType: !65, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !125, file: !129, line: 21, baseType: !360, size: 64, align: 64, offset: 512)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64, align: 64)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !90, line: 102, baseType: !362)
!362 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !90, line: 102, flags: DIFlagFwdDecl)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !125, file: !129, line: 22, baseType: !58, size: 32, align: 32, offset: 576)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !125, file: !129, line: 25, baseType: !365, size: 128, align: 64, offset: 640)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 128, align: 64, elements: !366)
!366 = !{!367}
!367 = !DISubrange(count: 2)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !125, file: !129, line: 26, baseType: !58, size: 32, align: 32, offset: 768)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !125, file: !129, line: 27, baseType: !58, size: 32, align: 32, offset: 800)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !125, file: !129, line: 29, baseType: !371, size: 64, align: 64, offset: 832)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64, align: 64)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !90, line: 103, baseType: !373)
!373 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !90, line: 103, flags: DIFlagFwdDecl)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !125, file: !129, line: 30, baseType: !117, size: 64, align: 64, offset: 896)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !125, file: !129, line: 32, baseType: !95, size: 64, align: 64, offset: 960)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !125, file: !129, line: 33, baseType: !95, size: 64, align: 64, offset: 1024)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !125, file: !129, line: 34, baseType: !95, size: 64, align: 64, offset: 1088)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !125, file: !129, line: 35, baseType: !65, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !125, file: !129, line: 36, baseType: !65, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !125, file: !129, line: 37, baseType: !65, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !125, file: !129, line: 38, baseType: !65, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !125, file: !129, line: 40, baseType: !383, size: 128, align: 64, offset: 1216)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !56, line: 504, baseType: !384)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !56, line: 506, size: 128, align: 64, elements: !385)
!385 = !{!386, !388}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !384, file: !56, line: 508, baseType: !387, size: 64, align: 64)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !56, line: 48, baseType: !75)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !384, file: !56, line: 509, baseType: !387, size: 64, align: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !125, file: !129, line: 41, baseType: !347, size: 64, align: 64, offset: 1344)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !125, file: !129, line: 42, baseType: !58, size: 32, align: 32, offset: 1408)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !125, file: !129, line: 44, baseType: !100, size: 64, align: 64, offset: 1472)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !125, file: !129, line: 45, baseType: !100, size: 64, align: 64, offset: 1536)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !125, file: !129, line: 53, baseType: !394, size: 64, align: 64, offset: 1600)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64, align: 64)
!395 = !DISubroutineType(types: !396)
!396 = !{null, !123, !397, !58}
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64, align: 64)
!398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !125, file: !129, line: 55, baseType: !400, size: 64, align: 64, offset: 1664)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64, align: 64)
!401 = !DISubroutineType(types: !402)
!402 = !{!58, !123, !96}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !125, file: !129, line: 57, baseType: !404, size: 64, align: 64, offset: 1728)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64, align: 64)
!405 = !DISubroutineType(types: !406)
!406 = !{!58, !123, !397}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !125, file: !129, line: 60, baseType: !408, size: 64, align: 64, offset: 1792)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64, align: 64)
!409 = !DISubroutineType(types: !410)
!410 = !{!397, !123}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !125, file: !129, line: 62, baseType: !412, size: 64, align: 64, offset: 1856)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64, align: 64)
!413 = !DISubroutineType(types: !414)
!414 = !{null, !123, !397, !397, !58}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !125, file: !129, line: 65, baseType: !416, size: 64, align: 64, offset: 1920)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64, align: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{!419, !123, !397, !397}
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !125, file: !129, line: 69, baseType: !421, size: 64, align: 64, offset: 1984)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64, align: 64)
!422 = !DISubroutineType(types: !423)
!423 = !{!424, !123, !397}
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64, align: 64)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !90, line: 109, baseType: !426)
!426 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !90, line: 109, flags: DIFlagFwdDecl)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !125, file: !129, line: 70, baseType: !428, size: 64, align: 64, offset: 2048)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64, align: 64)
!429 = !DISubroutineType(types: !430)
!430 = !{!431, !123, !397}
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64, align: 64)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !90, line: 110, baseType: !433)
!433 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !90, line: 110, flags: DIFlagFwdDecl)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !125, file: !129, line: 71, baseType: !435, size: 64, align: 64, offset: 2112)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64, align: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{!58, !397, !397}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !125, file: !129, line: 73, baseType: !435, size: 64, align: 64, offset: 2176)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !110, file: !114, line: 9, baseType: !95, size: 64, align: 64, offset: 256)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !110, file: !114, line: 10, baseType: !95, size: 64, align: 64, offset: 320)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !110, file: !114, line: 11, baseType: !347, size: 64, align: 64, offset: 384)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !110, file: !114, line: 12, baseType: !58, size: 32, align: 32, offset: 448)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !110, file: !114, line: 13, baseType: !95, size: 64, align: 64, offset: 512)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !110, file: !114, line: 15, baseType: !445, size: 64, align: 64, offset: 576)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64, align: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{null, !108}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !110, file: !114, line: 17, baseType: !449, size: 64, align: 64, offset: 640)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64, align: 64)
!450 = !DISubroutineType(types: !451)
!451 = !{!397, !108}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "active_server", scope: !91, file: !36, line: 36, baseType: !123, size: 64, align: 64, offset: 320)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "connect_server", scope: !91, file: !36, line: 37, baseType: !123, size: 64, align: 64, offset: 384)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !91, file: !36, line: 38, baseType: !95, size: 64, align: 64, offset: 448)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !91, file: !36, line: 40, baseType: !58, size: 32, align: 32, offset: 512)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "bound_items", scope: !91, file: !36, line: 41, baseType: !100, size: 64, align: 64, offset: 576)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "immortal", scope: !91, file: !36, line: 43, baseType: !65, size: 1, align: 32, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "sticky_refnum", scope: !91, file: !36, line: 44, baseType: !65, size: 1, align: 32, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !91, file: !36, line: 45, baseType: !65, size: 1, align: 32, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !91, file: !36, line: 48, baseType: !461, size: 64, align: 64, offset: 704)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64, align: 64)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "HISTORY_REC", file: !463, line: 14, baseType: !464)
!463 = !DIFile(filename: "../../src/fe-common/core/command-history.h", directory: "/home/lichi/Desktop/irssi/task1")
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !463, line: 6, size: 256, align: 64, elements: !465)
!465 = !{!466, !467, !476, !477, !478}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !464, file: !463, line: 7, baseType: !95, size: 64, align: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !464, file: !463, line: 9, baseType: !468, size: 64, align: 64, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64, align: 64)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "GList", file: !470, line: 37, baseType: !471)
!470 = !DIFile(filename: "/usr/include/glib-2.0/glib/glist.h", directory: "/home/lichi/Desktop/irssi/task1")
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GList", file: !470, line: 39, size: 192, align: 64, elements: !472)
!472 = !{!473, !474, !475}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !471, file: !470, line: 41, baseType: !59, size: 64, align: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !471, file: !470, line: 42, baseType: !468, size: 64, align: 64, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !471, file: !470, line: 43, baseType: !468, size: 64, align: 64, offset: 128)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "lines", scope: !464, file: !463, line: 10, baseType: !58, size: 32, align: 32, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !464, file: !463, line: 12, baseType: !58, size: 32, align: 32, offset: 160)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "redo", scope: !464, file: !463, line: 13, baseType: !58, size: 1, align: 32, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "history_name", scope: !91, file: !36, line: 49, baseType: !95, size: 64, align: 64, offset: 768)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !91, file: !36, line: 51, baseType: !58, size: 32, align: 32, offset: 832)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !91, file: !36, line: 52, baseType: !95, size: 64, align: 64, offset: 896)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "last_timestamp", scope: !91, file: !36, line: 54, baseType: !347, size: 64, align: 64, offset: 960)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "last_line", scope: !91, file: !36, line: 55, baseType: !347, size: 64, align: 64, offset: 1024)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "theme_name", scope: !91, file: !36, line: 57, baseType: !95, size: 64, align: 64, offset: 1088)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "theme", scope: !91, file: !36, line: 58, baseType: !50, size: 64, align: 64, offset: 1152)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "gui_data", scope: !91, file: !36, line: 60, baseType: !50, size: 64, align: 64, offset: 1216)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "screen_win", scope: !85, file: !84, line: 19, baseType: !488, size: 64, align: 64, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64, align: 64)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "TERM_WINDOW", file: !490, line: 4, baseType: !491)
!490 = !DIFile(filename: "term.h", directory: "/home/lichi/Desktop/irssi/task1")
!491 = !DICompositeType(tag: DW_TAG_structure_type, name: "_TERM_WINDOW", file: !490, line: 4, flags: DIFlagFwdDecl)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "sticky_windows", scope: !85, file: !84, line: 20, baseType: !58, size: 32, align: 32, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "first_line", scope: !85, file: !84, line: 22, baseType: !58, size: 32, align: 32, offset: 160)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "last_line", scope: !85, file: !84, line: 22, baseType: !58, size: 32, align: 32, offset: 192)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "first_column", scope: !85, file: !84, line: 23, baseType: !58, size: 32, align: 32, offset: 224)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "last_column", scope: !85, file: !84, line: 23, baseType: !58, size: 32, align: 32, offset: 256)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !85, file: !84, line: 24, baseType: !58, size: 32, align: 32, offset: 288)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !85, file: !84, line: 24, baseType: !58, size: 32, align: 32, offset: 320)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "statusbars", scope: !85, file: !84, line: 26, baseType: !100, size: 64, align: 64, offset: 384)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_lines_top", scope: !85, file: !84, line: 27, baseType: !58, size: 32, align: 32, offset: 448)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_lines_bottom", scope: !85, file: !84, line: 27, baseType: !58, size: 32, align: 32, offset: 480)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_lines", scope: !85, file: !84, line: 28, baseType: !58, size: 32, align: 32, offset: 512)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_columns_left", scope: !85, file: !84, line: 29, baseType: !58, size: 32, align: 32, offset: 544)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_columns_right", scope: !85, file: !84, line: 29, baseType: !58, size: 32, align: 32, offset: 576)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_columns", scope: !85, file: !84, line: 30, baseType: !58, size: 32, align: 32, offset: 608)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !85, file: !84, line: 32, baseType: !65, size: 1, align: 32, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "size_dirty", scope: !85, file: !84, line: 33, baseType: !65, size: 1, align: 32, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "view", scope: !79, file: !78, line: 15, baseType: !509, size: 64, align: 64, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64, align: 64)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_BUFFER_VIEW_REC", file: !511, line: 7, baseType: !512)
!511 = !DIFile(filename: "textbuffer-view.h", directory: "/home/lichi/Desktop/irssi/task1")
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TEXT_BUFFER_VIEW_REC", file: !511, line: 50, size: 960, align: 64, elements: !513)
!513 = !{!514, !555, !556, !557, !558, !559, !560, !565, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !512, file: !511, line: 51, baseType: !515, size: 64, align: 64)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64, align: 64)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_BUFFER_REC", file: !517, line: 72, baseType: !518)
!517 = !DIFile(filename: "textbuffer.h", directory: "/home/lichi/Desktop/irssi/task1")
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !517, line: 60, size: 448, align: 64, elements: !519)
!519 = !{!520, !521, !538, !539, !540, !551, !552, !553, !554}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "text_chunks", scope: !518, file: !517, line: 61, baseType: !100, size: 64, align: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "first_line", scope: !518, file: !517, line: 62, baseType: !522, size: 64, align: 64, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64, align: 64)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "LINE_REC", file: !517, line: 52, baseType: !524)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_LINE_REC", file: !517, line: 34, size: 320, align: 64, elements: !525)
!525 = !{!526, !528, !529, !532}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !524, file: !517, line: 48, baseType: !527, size: 64, align: 64)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64, align: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !524, file: !517, line: 48, baseType: !527, size: 64, align: 64, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !524, file: !517, line: 50, baseType: !530, size: 64, align: 64, offset: 128)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64, align: 64)
!531 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !524, file: !517, line: 51, baseType: !533, size: 128, align: 64, offset: 192)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "LINE_INFO_REC", file: !517, line: 32, baseType: !534)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !517, line: 29, size: 128, align: 64, elements: !535)
!535 = !{!536, !537}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !534, file: !517, line: 30, baseType: !58, size: 32, align: 32)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !534, file: !517, line: 31, baseType: !347, size: 64, align: 64, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "lines_count", scope: !518, file: !517, line: 63, baseType: !58, size: 32, align: 32, offset: 128)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "cur_line", scope: !518, file: !517, line: 65, baseType: !522, size: 64, align: 64, offset: 192)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "cur_text", scope: !518, file: !517, line: 66, baseType: !541, size: 64, align: 64, offset: 256)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64, align: 64)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_CHUNK_REC", file: !517, line: 58, baseType: !543)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !517, line: 54, size: 131008, align: 32, elements: !544)
!544 = !{!545, !549, !550}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !543, file: !517, line: 55, baseType: !546, size: 130944, align: 8)
!546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !531, size: 130944, align: 8, elements: !547)
!547 = !{!548}
!548 = !DISubrange(count: 16368)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !543, file: !517, line: 56, baseType: !58, size: 32, align: 32, offset: 130944)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !543, file: !517, line: 57, baseType: !58, size: 32, align: 32, offset: 130976)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "last_fg", scope: !518, file: !517, line: 68, baseType: !58, size: 32, align: 32, offset: 320)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "last_bg", scope: !518, file: !517, line: 69, baseType: !58, size: 32, align: 32, offset: 352)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "last_flags", scope: !518, file: !517, line: 70, baseType: !58, size: 32, align: 32, offset: 384)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "last_eol", scope: !518, file: !517, line: 71, baseType: !65, size: 1, align: 32, offset: 416, flags: DIFlagBitField, extraData: i64 416)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "siblings", scope: !512, file: !511, line: 53, baseType: !100, size: 64, align: 64, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !512, file: !511, line: 55, baseType: !488, size: 64, align: 64, offset: 128)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !512, file: !511, line: 56, baseType: !58, size: 32, align: 32, offset: 192)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !512, file: !511, line: 56, baseType: !58, size: 32, align: 32, offset: 224)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "default_indent", scope: !512, file: !511, line: 58, baseType: !58, size: 32, align: 32, offset: 256)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "default_indent_func", scope: !512, file: !511, line: 59, baseType: !561, size: 64, align: 64, offset: 320)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "INDENT_FUNC", file: !511, line: 10, baseType: !562)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64, align: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{!58, !509, !522, !58}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !512, file: !511, line: 61, baseType: !566, size: 64, align: 64, offset: 384)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64, align: 64)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_BUFFER_CACHE_REC", file: !511, line: 48, baseType: !568)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !511, line: 37, size: 192, align: 64, elements: !569)
!569 = !{!570, !571, !572, !573, !574}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !568, file: !511, line: 38, baseType: !58, size: 32, align: 32)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !568, file: !511, line: 39, baseType: !58, size: 32, align: 32, offset: 32)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "line_cache", scope: !568, file: !511, line: 41, baseType: !117, size: 64, align: 64, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "update_counter", scope: !568, file: !511, line: 45, baseType: !531, size: 8, align: 8, offset: 128)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "last_linecount", scope: !568, file: !511, line: 47, baseType: !58, size: 32, align: 32, offset: 160)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "ypos", scope: !512, file: !511, line: 63, baseType: !58, size: 32, align: 32, offset: 448)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "startline", scope: !512, file: !511, line: 66, baseType: !522, size: 64, align: 64, offset: 512)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "subline", scope: !512, file: !511, line: 68, baseType: !58, size: 32, align: 32, offset: 576)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_startline", scope: !512, file: !511, line: 71, baseType: !522, size: 64, align: 64, offset: 640)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_subline", scope: !512, file: !511, line: 72, baseType: !58, size: 32, align: 32, offset: 704)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "bookmarks", scope: !512, file: !511, line: 76, baseType: !117, size: 64, align: 64, offset: 768)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "hidden_level", scope: !512, file: !511, line: 79, baseType: !58, size: 32, align: 32, offset: 832)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "empty_linecount", scope: !512, file: !511, line: 82, baseType: !58, size: 32, align: 32, offset: 864)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "longword_noindent", scope: !512, file: !511, line: 84, baseType: !65, size: 1, align: 32, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "scroll", scope: !512, file: !511, line: 86, baseType: !65, size: 1, align: 32, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "utf8", scope: !512, file: !511, line: 88, baseType: !65, size: 1, align: 32, offset: 898, flags: DIFlagBitField, extraData: i64 896)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "break_wide", scope: !512, file: !511, line: 90, baseType: !65, size: 1, align: 32, offset: 899, flags: DIFlagBitField, extraData: i64 896)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "bottom", scope: !512, file: !511, line: 92, baseType: !65, size: 1, align: 32, offset: 900, flags: DIFlagBitField, extraData: i64 896)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "more_text", scope: !512, file: !511, line: 94, baseType: !65, size: 1, align: 32, offset: 901, flags: DIFlagBitField, extraData: i64 896)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !512, file: !511, line: 96, baseType: !65, size: 1, align: 32, offset: 902, flags: DIFlagBitField, extraData: i64 896)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "scroll", scope: !79, file: !78, line: 17, baseType: !65, size: 1, align: 32, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "use_scroll", scope: !79, file: !78, line: 18, baseType: !65, size: 1, align: 32, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "sticky", scope: !79, file: !78, line: 20, baseType: !65, size: 1, align: 32, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "use_insert_after", scope: !79, file: !78, line: 21, baseType: !65, size: 1, align: 32, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "insert_after", scope: !79, file: !78, line: 22, baseType: !522, size: 64, align: 64, offset: 192)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "insert_after_time", scope: !79, file: !78, line: 23, baseType: !347, size: 64, align: 64, offset: 256)
!596 = !{!597, !599, !600, !601, !602, !603, !604}
!597 = distinct !DIGlobalVariable(name: "activity_list", scope: !0, file: !598, line: 34, type: !468, isLocal: true, isDefinition: true, variable: %struct._GList** @activity_list)
!598 = !DIFile(filename: "statusbar-items.c", directory: "/home/lichi/Desktop/irssi/task1")
!599 = distinct !DIGlobalVariable(name: "more_visible", scope: !0, file: !598, line: 36, type: !100, isLocal: true, isDefinition: true, variable: %struct._GSList** @more_visible)
!600 = distinct !DIGlobalVariable(name: "input_entries", scope: !0, file: !598, line: 37, type: !117, isLocal: true, isDefinition: true, variable: %struct._GHashTable** @input_entries)
!601 = distinct !DIGlobalVariable(name: "last_lag", scope: !0, file: !598, line: 38, type: !58, isLocal: true, isDefinition: true, variable: i32* @last_lag)
!602 = distinct !DIGlobalVariable(name: "last_lag_unknown", scope: !0, file: !598, line: 38, type: !58, isLocal: true, isDefinition: true, variable: i32* @last_lag_unknown)
!603 = distinct !DIGlobalVariable(name: "lag_timeout_tag", scope: !0, file: !598, line: 38, type: !58, isLocal: true, isDefinition: true, variable: i32* @lag_timeout_tag)
!604 = distinct !DIGlobalVariable(name: "actlist_sort", scope: !0, file: !598, line: 35, type: !605, isLocal: true, isDefinition: true, variable: i8* @actlist_sort)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint8", file: !188, line: 38, baseType: !531)
!606 = !{i32 2, !"Dwarf Version", i32 4}
!607 = !{i32 2, !"Debug Info Version", i32 3}
!608 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!609 = distinct !DISubprogram(name: "statusbar_items_init", scope: !598, file: !598, line: 468, type: !271, isLocal: false, isDefinition: true, scopeLine: 469, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !610)
!610 = !{}
!611 = !DILocation(line: 470, column: 2, scope: !609)
!612 = !DILocation(line: 471, column: 2, scope: !609)
!613 = !DILocation(line: 472, column: 2, scope: !609)
!614 = !DILocation(line: 474, column: 2, scope: !609)
!615 = !DILocation(line: 475, column: 2, scope: !609)
!616 = !DILocation(line: 476, column: 2, scope: !609)
!617 = !DILocation(line: 477, column: 2, scope: !609)
!618 = !DILocation(line: 478, column: 2, scope: !609)
!619 = !DILocation(line: 479, column: 2, scope: !609)
!620 = !DILocation(line: 480, column: 2, scope: !609)
!621 = !DILocation(line: 481, column: 2, scope: !609)
!622 = !DILocation(line: 482, column: 2, scope: !609)
!623 = !DILocation(line: 483, column: 2, scope: !609)
!624 = !DILocation(line: 486, column: 16, scope: !609)
!625 = !DILocation(line: 487, column: 2, scope: !609)
!626 = !DILocation(line: 488, column: 2, scope: !609)
!627 = !DILocation(line: 489, column: 2, scope: !609)
!628 = !DILocation(line: 492, column: 22, scope: !609)
!629 = !DILocation(line: 493, column: 2, scope: !609)
!630 = !DILocation(line: 494, column: 2, scope: !609)
!631 = !DILocation(line: 495, column: 2, scope: !609)
!632 = !DILocation(line: 496, column: 2, scope: !609)
!633 = !DILocation(line: 497, column: 2, scope: !609)
!634 = !DILocation(line: 500, column: 11, scope: !609)
!635 = !DILocation(line: 500, column: 33, scope: !609)
!636 = !DILocation(line: 501, column: 2, scope: !609)
!637 = !DILocation(line: 502, column: 2, scope: !609)
!638 = !DILocation(line: 503, column: 2, scope: !609)
!639 = !DILocation(line: 504, column: 27, scope: !609)
!640 = !DILocation(line: 504, column: 25, scope: !609)
!641 = !DILocation(line: 507, column: 18, scope: !609)
!642 = !DILocation(line: 507, column: 16, scope: !609)
!643 = !DILocation(line: 510, column: 2, scope: !609)
!644 = !DILocation(line: 511, column: 9, scope: !609)
!645 = !DILocation(line: 512, column: 1, scope: !609)
!646 = distinct !DISubprogram(name: "item_window_active", scope: !598, file: !598, line: 40, type: !647, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !610)
!647 = !DISubroutineType(types: !648)
!648 = !{null, !649, !58}
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64, align: 64)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "SBAR_ITEM_REC", file: !651, line: 11, baseType: !652)
!651 = !DIFile(filename: "statusbar.h", directory: "/home/lichi/Desktop/irssi/task1")
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SBAR_ITEM_REC", file: !651, line: 71, size: 384, align: 64, elements: !653)
!653 = !{!654, !684, !693, !700, !701, !702, !703, !704, !705}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "bar", scope: !652, file: !651, line: 72, baseType: !655, size: 64, align: 64)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64, align: 64)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "STATUSBAR_REC", file: !651, line: 61, baseType: !657)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !651, line: 49, size: 448, align: 64, elements: !658)
!658 = !{!659, !667, !678, !679, !680, !681, !682, !683}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !657, file: !651, line: 50, baseType: !660, size: 64, align: 64)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64, align: 64)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "STATUSBAR_GROUP_REC", file: !651, line: 36, baseType: !662)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !651, line: 32, size: 192, align: 64, elements: !663)
!663 = !{!664, !665, !666}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !662, file: !651, line: 33, baseType: !95, size: 64, align: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "config_bars", scope: !662, file: !651, line: 34, baseType: !100, size: 64, align: 64, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "bars", scope: !662, file: !651, line: 35, baseType: !100, size: 64, align: 64, offset: 128)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !657, file: !651, line: 51, baseType: !668, size: 64, align: 64, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64, align: 64)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "STATUSBAR_CONFIG_REC", file: !651, line: 47, baseType: !670)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !651, line: 38, size: 256, align: 64, elements: !671)
!671 = !{!672, !673, !674, !675, !676, !677}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !670, file: !651, line: 39, baseType: !95, size: 64, align: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !670, file: !651, line: 41, baseType: !58, size: 32, align: 32, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "placement", scope: !670, file: !651, line: 42, baseType: !58, size: 32, align: 32, offset: 96)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "position", scope: !670, file: !651, line: 43, baseType: !58, size: 32, align: 32, offset: 128)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "visible", scope: !670, file: !651, line: 44, baseType: !58, size: 32, align: 32, offset: 160)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !670, file: !651, line: 46, baseType: !100, size: 64, align: 64, offset: 192)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "parent_window", scope: !657, file: !651, line: 53, baseType: !82, size: 64, align: 64, offset: 128)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !657, file: !651, line: 54, baseType: !100, size: 64, align: 64, offset: 192)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !657, file: !651, line: 56, baseType: !95, size: 64, align: 64, offset: 256)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "real_ypos", scope: !657, file: !651, line: 57, baseType: !58, size: 32, align: 32, offset: 320)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !657, file: !651, line: 59, baseType: !65, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_xpos", scope: !657, file: !651, line: 60, baseType: !58, size: 32, align: 32, offset: 384)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !652, file: !651, line: 73, baseType: !685, size: 64, align: 64, offset: 64)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64, align: 64)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "SBAR_ITEM_CONFIG_REC", file: !651, line: 69, baseType: !687)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !651, line: 63, size: 192, align: 64, elements: !688)
!688 = !{!689, !690, !691, !692}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !687, file: !651, line: 64, baseType: !95, size: 64, align: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !687, file: !651, line: 65, baseType: !95, size: 64, align: 64, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !687, file: !651, line: 67, baseType: !58, size: 32, align: 32, offset: 128)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "right_alignment", scope: !687, file: !651, line: 68, baseType: !65, size: 1, align: 32, offset: 160, flags: DIFlagBitField, extraData: i64 160)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !652, file: !651, line: 74, baseType: !694, size: 64, align: 64, offset: 128)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "STATUSBAR_FUNC", file: !695, line: 6, baseType: !696)
!695 = !DIFile(filename: "statusbar-item.h", directory: "/home/lichi/Desktop/irssi/task1")
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64, align: 64)
!697 = !DISubroutineType(types: !698)
!698 = !{null, !699, !58}
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64, align: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "min_size", scope: !652, file: !651, line: 77, baseType: !58, size: 32, align: 32, offset: 192)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "max_size", scope: !652, file: !651, line: 77, baseType: !58, size: 32, align: 32, offset: 224)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "xpos", scope: !652, file: !651, line: 80, baseType: !58, size: 32, align: 32, offset: 256)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !652, file: !651, line: 80, baseType: !58, size: 32, align: 32, offset: 288)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "current_size", scope: !652, file: !651, line: 82, baseType: !58, size: 32, align: 32, offset: 320)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !652, file: !651, line: 83, baseType: !65, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!706 = !DILocalVariable(name: "item", arg: 1, scope: !646, file: !598, line: 40, type: !649)
!707 = !DIExpression()
!708 = !DILocation(line: 40, column: 47, scope: !646)
!709 = !DILocalVariable(name: "get_size_only", arg: 2, scope: !646, file: !598, line: 40, type: !58)
!710 = !DILocation(line: 40, column: 57, scope: !646)
!711 = !DILocalVariable(name: "window", scope: !646, file: !598, line: 42, type: !88)
!712 = !DILocation(line: 42, column: 14, scope: !646)
!713 = !DILocation(line: 44, column: 18, scope: !646)
!714 = !DILocation(line: 44, column: 16, scope: !646)
!715 = !DILocation(line: 45, column: 6, scope: !716)
!716 = distinct !DILexicalBlock(scope: !646, file: !598, line: 45, column: 6)
!717 = !DILocation(line: 45, column: 12, scope: !716)
!718 = !DILocation(line: 45, column: 17, scope: !716)
!719 = !DILocation(line: 45, column: 31, scope: !716)
!720 = !DILocation(line: 45, column: 6, scope: !646)
!721 = !DILocation(line: 46, column: 12, scope: !716)
!722 = !DILocation(line: 46, column: 18, scope: !716)
!723 = !DILocation(line: 46, column: 23, scope: !716)
!724 = !DILocation(line: 46, column: 38, scope: !716)
!725 = !DILocation(line: 46, column: 10, scope: !716)
!726 = !DILocation(line: 46, column: 3, scope: !716)
!727 = !DILocation(line: 48, column: 6, scope: !728)
!728 = distinct !DILexicalBlock(scope: !646, file: !598, line: 48, column: 6)
!729 = !DILocation(line: 48, column: 13, scope: !728)
!730 = !DILocation(line: 48, column: 20, scope: !728)
!731 = !DILocation(line: 48, column: 23, scope: !732)
!732 = !DILexicalBlockFile(scope: !728, file: !598, discriminator: 1)
!733 = !DILocation(line: 48, column: 31, scope: !732)
!734 = !DILocation(line: 48, column: 38, scope: !732)
!735 = !DILocation(line: 48, column: 6, scope: !732)
!736 = !DILocation(line: 49, column: 34, scope: !737)
!737 = distinct !DILexicalBlock(scope: !728, file: !598, line: 48, column: 47)
!738 = !DILocation(line: 49, column: 40, scope: !737)
!739 = !DILocation(line: 49, column: 3, scope: !737)
!740 = !DILocation(line: 51, column: 2, scope: !737)
!741 = !DILocation(line: 51, column: 13, scope: !742)
!742 = !DILexicalBlockFile(scope: !743, file: !598, discriminator: 1)
!743 = distinct !DILexicalBlock(scope: !728, file: !598, line: 51, column: 13)
!744 = !DILocation(line: 52, column: 34, scope: !745)
!745 = distinct !DILexicalBlock(scope: !743, file: !598, line: 51, column: 28)
!746 = !DILocation(line: 52, column: 40, scope: !745)
!747 = !DILocation(line: 52, column: 49, scope: !745)
!748 = !DILocation(line: 52, column: 17, scope: !745)
!749 = !DILocation(line: 52, column: 23, scope: !745)
!750 = !DILocation(line: 52, column: 32, scope: !745)
!751 = !DILocation(line: 53, column: 2, scope: !745)
!752 = !DILocation(line: 54, column: 1, scope: !646)
!753 = distinct !DISubprogram(name: "item_window_empty", scope: !598, file: !598, line: 56, type: !647, isLocal: true, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !610)
!754 = !DILocalVariable(name: "item", arg: 1, scope: !753, file: !598, line: 56, type: !649)
!755 = !DILocation(line: 56, column: 46, scope: !753)
!756 = !DILocalVariable(name: "get_size_only", arg: 2, scope: !753, file: !598, line: 56, type: !58)
!757 = !DILocation(line: 56, column: 56, scope: !753)
!758 = !DILocalVariable(name: "window", scope: !753, file: !598, line: 58, type: !88)
!759 = !DILocation(line: 58, column: 14, scope: !753)
!760 = !DILocation(line: 60, column: 18, scope: !753)
!761 = !DILocation(line: 60, column: 16, scope: !753)
!762 = !DILocation(line: 61, column: 6, scope: !763)
!763 = distinct !DILexicalBlock(scope: !753, file: !598, line: 61, column: 6)
!764 = !DILocation(line: 61, column: 12, scope: !763)
!765 = !DILocation(line: 61, column: 17, scope: !763)
!766 = !DILocation(line: 61, column: 31, scope: !763)
!767 = !DILocation(line: 61, column: 6, scope: !753)
!768 = !DILocation(line: 62, column: 12, scope: !763)
!769 = !DILocation(line: 62, column: 18, scope: !763)
!770 = !DILocation(line: 62, column: 23, scope: !763)
!771 = !DILocation(line: 62, column: 38, scope: !763)
!772 = !DILocation(line: 62, column: 10, scope: !763)
!773 = !DILocation(line: 62, column: 3, scope: !763)
!774 = !DILocation(line: 64, column: 6, scope: !775)
!775 = distinct !DILexicalBlock(scope: !753, file: !598, line: 64, column: 6)
!776 = !DILocation(line: 64, column: 13, scope: !775)
!777 = !DILocation(line: 64, column: 20, scope: !775)
!778 = !DILocation(line: 64, column: 23, scope: !779)
!779 = !DILexicalBlockFile(scope: !775, file: !598, discriminator: 1)
!780 = !DILocation(line: 64, column: 31, scope: !779)
!781 = !DILocation(line: 64, column: 38, scope: !779)
!782 = !DILocation(line: 64, column: 6, scope: !779)
!783 = !DILocation(line: 65, column: 34, scope: !784)
!784 = distinct !DILexicalBlock(scope: !775, file: !598, line: 64, column: 47)
!785 = !DILocation(line: 65, column: 40, scope: !784)
!786 = !DILocation(line: 65, column: 3, scope: !784)
!787 = !DILocation(line: 67, column: 2, scope: !784)
!788 = !DILocation(line: 67, column: 13, scope: !789)
!789 = !DILexicalBlockFile(scope: !790, file: !598, discriminator: 1)
!790 = distinct !DILexicalBlock(scope: !775, file: !598, line: 67, column: 13)
!791 = !DILocation(line: 68, column: 34, scope: !792)
!792 = distinct !DILexicalBlock(scope: !790, file: !598, line: 67, column: 28)
!793 = !DILocation(line: 68, column: 40, scope: !792)
!794 = !DILocation(line: 68, column: 49, scope: !792)
!795 = !DILocation(line: 68, column: 17, scope: !792)
!796 = !DILocation(line: 68, column: 23, scope: !792)
!797 = !DILocation(line: 68, column: 32, scope: !792)
!798 = !DILocation(line: 69, column: 2, scope: !792)
!799 = !DILocation(line: 70, column: 1, scope: !753)
!800 = distinct !DISubprogram(name: "item_lag", scope: !598, file: !598, line: 351, type: !647, isLocal: true, isDefinition: true, scopeLine: 352, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !610)
!801 = !DILocalVariable(name: "item", arg: 1, scope: !800, file: !598, line: 351, type: !649)
!802 = !DILocation(line: 351, column: 37, scope: !800)
!803 = !DILocalVariable(name: "get_size_only", arg: 2, scope: !800, file: !598, line: 351, type: !58)
!804 = !DILocation(line: 351, column: 47, scope: !800)
!805 = !DILocalVariable(name: "server", scope: !800, file: !598, line: 353, type: !123)
!806 = !DILocation(line: 353, column: 14, scope: !800)
!807 = !DILocalVariable(name: "str", scope: !800, file: !598, line: 354, type: !808)
!808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 176, align: 8, elements: !809)
!809 = !{!810}
!810 = !DISubrange(count: 22)
!811 = !DILocation(line: 354, column: 14, scope: !800)
!812 = !DILocalVariable(name: "lag", scope: !800, file: !598, line: 355, type: !58)
!813 = !DILocation(line: 355, column: 6, scope: !800)
!814 = !DILocalVariable(name: "lag_unknown", scope: !800, file: !598, line: 355, type: !58)
!815 = !DILocation(line: 355, column: 11, scope: !800)
!816 = !DILocation(line: 357, column: 11, scope: !800)
!817 = !DILocation(line: 357, column: 22, scope: !800)
!818 = !DILocation(line: 357, column: 11, scope: !819)
!819 = !DILexicalBlockFile(scope: !800, file: !598, discriminator: 1)
!820 = !DILocation(line: 357, column: 38, scope: !821)
!821 = !DILexicalBlockFile(scope: !800, file: !598, discriminator: 2)
!822 = !DILocation(line: 357, column: 50, scope: !821)
!823 = !DILocation(line: 357, column: 11, scope: !821)
!824 = !DILocation(line: 357, column: 11, scope: !825)
!825 = !DILexicalBlockFile(scope: !800, file: !598, discriminator: 3)
!826 = !DILocation(line: 357, column: 9, scope: !825)
!827 = !DILocation(line: 358, column: 16, scope: !800)
!828 = !DILocation(line: 358, column: 8, scope: !800)
!829 = !DILocation(line: 358, column: 6, scope: !800)
!830 = !DILocation(line: 360, column: 6, scope: !831)
!831 = distinct !DILexicalBlock(scope: !800, file: !598, line: 360, column: 6)
!832 = !DILocation(line: 360, column: 10, scope: !831)
!833 = !DILocation(line: 360, column: 15, scope: !831)
!834 = !DILocation(line: 360, column: 18, scope: !835)
!835 = !DILexicalBlockFile(scope: !831, file: !598, discriminator: 1)
!836 = !DILocation(line: 360, column: 24, scope: !835)
!837 = !DILocation(line: 360, column: 22, scope: !835)
!838 = !DILocation(line: 360, column: 6, scope: !835)
!839 = !DILocation(line: 362, column: 7, scope: !840)
!840 = distinct !DILexicalBlock(scope: !841, file: !598, line: 362, column: 7)
!841 = distinct !DILexicalBlock(scope: !831, file: !598, line: 360, column: 59)
!842 = !DILocation(line: 362, column: 7, scope: !841)
!843 = !DILocation(line: 363, column: 21, scope: !840)
!844 = !DILocation(line: 363, column: 27, scope: !840)
!845 = !DILocation(line: 363, column: 36, scope: !840)
!846 = !DILocation(line: 363, column: 4, scope: !840)
!847 = !DILocation(line: 363, column: 10, scope: !840)
!848 = !DILocation(line: 363, column: 19, scope: !840)
!849 = !DILocation(line: 364, column: 3, scope: !841)
!850 = !DILocation(line: 367, column: 6, scope: !800)
!851 = !DILocation(line: 368, column: 13, scope: !800)
!852 = !DILocation(line: 368, column: 11, scope: !800)
!853 = !DILocation(line: 369, column: 21, scope: !800)
!854 = !DILocation(line: 369, column: 19, scope: !800)
!855 = !DILocation(line: 371, column: 6, scope: !856)
!856 = distinct !DILexicalBlock(scope: !800, file: !598, line: 371, column: 6)
!857 = !DILocation(line: 371, column: 6, scope: !800)
!858 = !DILocation(line: 374, column: 14, scope: !859)
!859 = distinct !DILexicalBlock(scope: !856, file: !598, line: 371, column: 19)
!860 = !DILocation(line: 374, column: 45, scope: !859)
!861 = !DILocation(line: 374, column: 49, scope: !859)
!862 = !DILocation(line: 374, column: 3, scope: !859)
!863 = !DILocation(line: 375, column: 2, scope: !859)
!864 = !DILocation(line: 376, column: 7, scope: !865)
!865 = distinct !DILexicalBlock(scope: !866, file: !598, line: 376, column: 7)
!866 = distinct !DILexicalBlock(scope: !856, file: !598, line: 375, column: 9)
!867 = !DILocation(line: 376, column: 11, scope: !865)
!868 = !DILocation(line: 376, column: 17, scope: !865)
!869 = !DILocation(line: 376, column: 7, scope: !866)
!870 = !DILocation(line: 377, column: 15, scope: !865)
!871 = !DILocation(line: 377, column: 39, scope: !865)
!872 = !DILocation(line: 377, column: 43, scope: !865)
!873 = !DILocation(line: 377, column: 4, scope: !865)
!874 = !DILocation(line: 379, column: 15, scope: !865)
!875 = !DILocation(line: 379, column: 44, scope: !865)
!876 = !DILocation(line: 379, column: 48, scope: !865)
!877 = !DILocation(line: 379, column: 55, scope: !865)
!878 = !DILocation(line: 379, column: 59, scope: !865)
!879 = !DILocation(line: 379, column: 4, scope: !865)
!880 = !DILocation(line: 382, column: 33, scope: !800)
!881 = !DILocation(line: 382, column: 39, scope: !800)
!882 = !DILocation(line: 383, column: 17, scope: !800)
!883 = !DILocation(line: 382, column: 2, scope: !800)
!884 = !DILocation(line: 384, column: 1, scope: !800)
!885 = !DILocation(line: 384, column: 1, scope: !819)
!886 = distinct !DISubprogram(name: "item_act", scope: !598, file: !598, line: 143, type: !647, isLocal: true, isDefinition: true, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !610)
!887 = !DILocalVariable(name: "item", arg: 1, scope: !886, file: !598, line: 143, type: !649)
!888 = !DILocation(line: 143, column: 37, scope: !886)
!889 = !DILocalVariable(name: "get_size_only", arg: 2, scope: !886, file: !598, line: 143, type: !58)
!890 = !DILocation(line: 143, column: 47, scope: !886)
!891 = !DILocalVariable(name: "actlist", scope: !886, file: !598, line: 145, type: !95)
!892 = !DILocation(line: 145, column: 8, scope: !886)
!893 = !DILocalVariable(name: "max_size", scope: !886, file: !598, line: 146, type: !58)
!894 = !DILocation(line: 146, column: 6, scope: !886)
!895 = !DILocation(line: 148, column: 6, scope: !896)
!896 = distinct !DILexicalBlock(scope: !886, file: !598, line: 148, column: 6)
!897 = !DILocation(line: 148, column: 6, scope: !886)
!898 = !DILocation(line: 149, column: 7, scope: !899)
!899 = distinct !DILexicalBlock(scope: !900, file: !598, line: 149, column: 7)
!900 = distinct !DILexicalBlock(scope: !896, file: !598, line: 148, column: 21)
!901 = !DILocation(line: 149, column: 21, scope: !899)
!902 = !DILocation(line: 149, column: 7, scope: !900)
!903 = !DILocation(line: 150, column: 21, scope: !899)
!904 = !DILocation(line: 150, column: 27, scope: !899)
!905 = !DILocation(line: 150, column: 36, scope: !899)
!906 = !DILocation(line: 150, column: 4, scope: !899)
!907 = !DILocation(line: 150, column: 10, scope: !899)
!908 = !DILocation(line: 150, column: 19, scope: !899)
!909 = !DILocation(line: 153, column: 3, scope: !900)
!910 = !DILocation(line: 156, column: 30, scope: !886)
!911 = !DILocation(line: 156, column: 36, scope: !886)
!912 = !DILocation(line: 156, column: 41, scope: !886)
!913 = !DILocation(line: 156, column: 12, scope: !886)
!914 = !DILocation(line: 156, column: 10, scope: !886)
!915 = !DILocation(line: 157, column: 6, scope: !916)
!916 = distinct !DILexicalBlock(scope: !886, file: !598, line: 157, column: 6)
!917 = !DILocation(line: 157, column: 14, scope: !916)
!918 = !DILocation(line: 157, column: 6, scope: !886)
!919 = !DILocation(line: 158, column: 3, scope: !920)
!920 = distinct !DILexicalBlock(scope: !916, file: !598, line: 157, column: 22)
!921 = !DILocation(line: 161, column: 13, scope: !886)
!922 = !DILocation(line: 161, column: 19, scope: !886)
!923 = !DILocation(line: 161, column: 11, scope: !886)
!924 = !DILocation(line: 162, column: 33, scope: !886)
!925 = !DILocation(line: 163, column: 17, scope: !886)
!926 = !DILocation(line: 162, column: 2, scope: !886)
!927 = !DILocation(line: 164, column: 33, scope: !886)
!928 = !DILocation(line: 165, column: 17, scope: !886)
!929 = !DILocation(line: 164, column: 2, scope: !886)
!930 = !DILocation(line: 166, column: 6, scope: !931)
!931 = distinct !DILexicalBlock(scope: !886, file: !598, line: 166, column: 6)
!932 = !DILocation(line: 166, column: 18, scope: !931)
!933 = !DILocation(line: 166, column: 24, scope: !931)
!934 = !DILocation(line: 166, column: 15, scope: !931)
!935 = !DILocation(line: 166, column: 6, scope: !886)
!936 = !DILocation(line: 170, column: 22, scope: !937)
!937 = distinct !DILexicalBlock(scope: !931, file: !598, line: 166, column: 34)
!938 = !DILocation(line: 170, column: 28, scope: !937)
!939 = !DILocation(line: 170, column: 34, scope: !937)
!940 = !DILocation(line: 170, column: 3, scope: !937)
!941 = !DILocation(line: 170, column: 9, scope: !937)
!942 = !DILocation(line: 170, column: 14, scope: !937)
!943 = !DILocation(line: 170, column: 20, scope: !937)
!944 = !DILocation(line: 171, column: 20, scope: !937)
!945 = !DILocation(line: 171, column: 26, scope: !937)
!946 = !DILocation(line: 171, column: 3, scope: !937)
!947 = !DILocation(line: 172, column: 3, scope: !937)
!948 = !DILocation(line: 173, column: 2, scope: !937)
!949 = !DILocation(line: 175, column: 9, scope: !886)
!950 = !DILocation(line: 175, column: 2, scope: !886)
!951 = !DILocation(line: 176, column: 1, scope: !886)
!952 = !DILocation(line: 176, column: 1, scope: !953)
!953 = !DILexicalBlockFile(scope: !886, file: !598, discriminator: 1)
!954 = distinct !DISubprogram(name: "item_more", scope: !598, file: !598, line: 281, type: !647, isLocal: true, isDefinition: true, scopeLine: 282, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !610)
!955 = !DILocalVariable(name: "item", arg: 1, scope: !954, file: !598, line: 281, type: !649)
!956 = !DILocation(line: 281, column: 38, scope: !954)
!957 = !DILocalVariable(name: "get_size_only", arg: 2, scope: !954, file: !598, line: 281, type: !58)
!958 = !DILocation(line: 281, column: 48, scope: !954)
!959 = !DILocalVariable(name: "mainwin", scope: !954, file: !598, line: 283, type: !82)
!960 = !DILocation(line: 283, column: 26, scope: !954)
!961 = !DILocalVariable(name: "visible", scope: !954, file: !598, line: 284, type: !58)
!962 = !DILocation(line: 284, column: 6, scope: !954)
!963 = !DILocation(line: 286, column: 6, scope: !964)
!964 = distinct !DILexicalBlock(scope: !954, file: !598, line: 286, column: 6)
!965 = !DILocation(line: 286, column: 17, scope: !964)
!966 = !DILocation(line: 286, column: 6, scope: !954)
!967 = !DILocation(line: 287, column: 25, scope: !968)
!968 = distinct !DILexicalBlock(scope: !964, file: !598, line: 286, column: 25)
!969 = !DILocation(line: 288, column: 11, scope: !968)
!970 = !DILocation(line: 289, column: 2, scope: !968)
!971 = !DILocation(line: 290, column: 36, scope: !972)
!972 = distinct !DILexicalBlock(scope: !964, file: !598, line: 289, column: 9)
!973 = !DILocation(line: 290, column: 49, scope: !972)
!974 = !DILocation(line: 290, column: 15, scope: !972)
!975 = !DILocation(line: 290, column: 61, scope: !972)
!976 = !DILocation(line: 290, column: 11, scope: !972)
!977 = !DILocation(line: 291, column: 35, scope: !972)
!978 = !DILocation(line: 291, column: 48, scope: !972)
!979 = !DILocation(line: 291, column: 14, scope: !972)
!980 = !DILocation(line: 291, column: 60, scope: !972)
!981 = !DILocation(line: 291, column: 66, scope: !972)
!982 = !DILocation(line: 291, column: 11, scope: !972)
!983 = !DILocation(line: 294, column: 7, scope: !984)
!984 = distinct !DILexicalBlock(scope: !954, file: !598, line: 294, column: 6)
!985 = !DILocation(line: 294, column: 6, scope: !954)
!986 = !DILocation(line: 295, column: 7, scope: !987)
!987 = distinct !DILexicalBlock(scope: !988, file: !598, line: 295, column: 7)
!988 = distinct !DILexicalBlock(scope: !984, file: !598, line: 294, column: 16)
!989 = !DILocation(line: 295, column: 15, scope: !987)
!990 = !DILocation(line: 295, column: 7, scope: !988)
!991 = !DILocation(line: 296, column: 34, scope: !987)
!992 = !DILocation(line: 296, column: 48, scope: !987)
!993 = !DILocation(line: 296, column: 19, scope: !987)
!994 = !DILocation(line: 296, column: 17, scope: !987)
!995 = !DILocation(line: 296, column: 4, scope: !987)
!996 = !DILocation(line: 297, column: 7, scope: !997)
!997 = distinct !DILexicalBlock(scope: !988, file: !598, line: 297, column: 7)
!998 = !DILocation(line: 297, column: 7, scope: !988)
!999 = !DILocation(line: 298, column: 21, scope: !997)
!1000 = !DILocation(line: 298, column: 27, scope: !997)
!1001 = !DILocation(line: 298, column: 36, scope: !997)
!1002 = !DILocation(line: 298, column: 4, scope: !997)
!1003 = !DILocation(line: 298, column: 10, scope: !997)
!1004 = !DILocation(line: 298, column: 19, scope: !997)
!1005 = !DILocation(line: 299, column: 3, scope: !988)
!1006 = !DILocation(line: 302, column: 33, scope: !954)
!1007 = !DILocation(line: 302, column: 47, scope: !954)
!1008 = !DILocation(line: 302, column: 17, scope: !954)
!1009 = !DILocation(line: 302, column: 15, scope: !954)
!1010 = !DILocation(line: 303, column: 33, scope: !954)
!1011 = !DILocation(line: 303, column: 39, scope: !954)
!1012 = !DILocation(line: 303, column: 2, scope: !954)
!1013 = !DILocation(line: 304, column: 1, scope: !954)
!1014 = !DILocation(line: 304, column: 1, scope: !1015)
!1015 = !DILexicalBlockFile(scope: !954, file: !598, discriminator: 1)
!1016 = distinct !DISubprogram(name: "item_input", scope: !598, file: !598, line: 415, type: !647, isLocal: true, isDefinition: true, scopeLine: 416, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !610)
!1017 = !DILocalVariable(name: "item", arg: 1, scope: !1016, file: !598, line: 415, type: !649)
!1018 = !DILocation(line: 415, column: 39, scope: !1016)
!1019 = !DILocalVariable(name: "get_size_only", arg: 2, scope: !1016, file: !598, line: 415, type: !58)
!1020 = !DILocation(line: 415, column: 49, scope: !1016)
!1021 = !DILocalVariable(name: "rec", scope: !1016, file: !598, line: 417, type: !1022)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64, align: 64)
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "GUI_ENTRY_REC", file: !1024, line: 31, baseType: !1025)
!1024 = !DIFile(filename: "gui-entry.h", directory: "/home/lichi/Desktop/irssi/task1")
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1024, line: 9, size: 640, align: 64, elements: !1026)
!1026 = !{!1027, !1028, !1029, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "text_len", scope: !1025, file: !1024, line: 10, baseType: !58, size: 32, align: 32)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "text_alloc", scope: !1025, file: !1024, line: 10, baseType: !58, size: 32, align: 32, offset: 32)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !1025, file: !1024, line: 11, baseType: !1030, size: 64, align: 64, offset: 64)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64, align: 64)
!1031 = !DIDerivedType(tag: DW_TAG_typedef, name: "unichar", file: !1032, line: 12, baseType: !200)
!1032 = !DIFile(filename: "../../src/core/utf8.h", directory: "/home/lichi/Desktop/irssi/task1")
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "extents", scope: !1025, file: !1024, line: 12, baseType: !419, size: 64, align: 64, offset: 128)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "kill_ring", scope: !1025, file: !1024, line: 14, baseType: !100, size: 64, align: 64, offset: 192)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "xpos", scope: !1025, file: !1024, line: 17, baseType: !58, size: 32, align: 32, offset: 256)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "ypos", scope: !1025, file: !1024, line: 17, baseType: !58, size: 32, align: 32, offset: 288)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !1025, file: !1024, line: 17, baseType: !58, size: 32, align: 32, offset: 320)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1025, file: !1024, line: 18, baseType: !58, size: 32, align: 32, offset: 352)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "scrstart", scope: !1025, file: !1024, line: 18, baseType: !58, size: 32, align: 32, offset: 384)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "scrpos", scope: !1025, file: !1024, line: 18, baseType: !58, size: 32, align: 32, offset: 416)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "hidden", scope: !1025, file: !1024, line: 19, baseType: !58, size: 32, align: 32, offset: 448)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "promptlen", scope: !1025, file: !1024, line: 21, baseType: !58, size: 32, align: 32, offset: 480)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "prompt", scope: !1025, file: !1024, line: 22, baseType: !95, size: 64, align: 64, offset: 512)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "redraw_needed_from", scope: !1025, file: !1024, line: 24, baseType: !58, size: 32, align: 32, offset: 576)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "utf8", scope: !1025, file: !1024, line: 25, baseType: !65, size: 1, align: 32, offset: 608, flags: DIFlagBitField, extraData: i64 608)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "previous_append_next_kill", scope: !1025, file: !1024, line: 27, baseType: !65, size: 1, align: 32, offset: 609, flags: DIFlagBitField, extraData: i64 608)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "append_next_kill", scope: !1025, file: !1024, line: 28, baseType: !65, size: 1, align: 32, offset: 610, flags: DIFlagBitField, extraData: i64 608)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "yank_preceded", scope: !1025, file: !1024, line: 29, baseType: !65, size: 1, align: 32, offset: 611, flags: DIFlagBitField, extraData: i64 608)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "uses_extents", scope: !1025, file: !1024, line: 30, baseType: !65, size: 1, align: 32, offset: 612, flags: DIFlagBitField, extraData: i64 608)
!1050 = !DILocation(line: 417, column: 17, scope: !1016)
!1051 = !DILocation(line: 419, column: 28, scope: !1016)
!1052 = !DILocation(line: 419, column: 43, scope: !1016)
!1053 = !DILocation(line: 419, column: 49, scope: !1016)
!1054 = !DILocation(line: 419, column: 54, scope: !1016)
!1055 = !DILocation(line: 419, column: 62, scope: !1016)
!1056 = !DILocation(line: 419, column: 8, scope: !1016)
!1057 = !DILocation(line: 419, column: 6, scope: !1016)
!1058 = !DILocation(line: 420, column: 6, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1016, file: !598, line: 420, column: 6)
!1060 = !DILocation(line: 420, column: 10, scope: !1059)
!1061 = !DILocation(line: 420, column: 6, scope: !1016)
!1062 = !DILocation(line: 421, column: 31, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1059, file: !598, line: 420, column: 18)
!1064 = !DILocation(line: 421, column: 38, scope: !1063)
!1065 = !DILocation(line: 421, column: 43, scope: !1063)
!1066 = !DILocation(line: 421, column: 57, scope: !1063)
!1067 = !DILocation(line: 421, column: 30, scope: !1063)
!1068 = !DILocation(line: 421, column: 28, scope: !1069)
!1069 = !DILexicalBlockFile(scope: !1063, file: !598, discriminator: 1)
!1070 = !DILocation(line: 421, column: 35, scope: !1069)
!1071 = !DILocation(line: 421, column: 40, scope: !1069)
!1072 = !DILocation(line: 421, column: 55, scope: !1069)
!1073 = !DILocation(line: 421, column: 71, scope: !1069)
!1074 = !DILocation(line: 421, column: 78, scope: !1069)
!1075 = !DILocation(line: 421, column: 83, scope: !1069)
!1076 = !DILocation(line: 421, column: 98, scope: !1069)
!1077 = !DILocation(line: 421, column: 68, scope: !1069)
!1078 = !DILocation(line: 421, column: 30, scope: !1069)
!1079 = !DILocation(line: 421, column: 30, scope: !1080)
!1080 = !DILexicalBlockFile(scope: !1063, file: !598, discriminator: 2)
!1081 = !DILocation(line: 421, column: 30, scope: !1082)
!1082 = !DILexicalBlockFile(scope: !1063, file: !598, discriminator: 3)
!1083 = !DILocation(line: 421, column: 130, scope: !1082)
!1084 = !DILocation(line: 421, column: 137, scope: !1082)
!1085 = !DILocation(line: 421, column: 127, scope: !1082)
!1086 = !DILocation(line: 421, column: 145, scope: !1082)
!1087 = !DILocation(line: 421, column: 151, scope: !1082)
!1088 = !DILocation(line: 421, column: 156, scope: !1082)
!1089 = !DILocation(line: 422, column: 12, scope: !1063)
!1090 = !DILocation(line: 422, column: 18, scope: !1063)
!1091 = !DILocation(line: 422, column: 24, scope: !1063)
!1092 = !DILocation(line: 422, column: 34, scope: !1063)
!1093 = !DILocation(line: 421, column: 9, scope: !1082)
!1094 = !DILocation(line: 421, column: 7, scope: !1082)
!1095 = !DILocation(line: 423, column: 24, scope: !1063)
!1096 = !DILocation(line: 423, column: 3, scope: !1063)
!1097 = !DILocation(line: 424, column: 23, scope: !1063)
!1098 = !DILocation(line: 425, column: 18, scope: !1063)
!1099 = !DILocation(line: 425, column: 24, scope: !1063)
!1100 = !DILocation(line: 425, column: 29, scope: !1063)
!1101 = !DILocation(line: 425, column: 37, scope: !1063)
!1102 = !DILocation(line: 425, column: 9, scope: !1063)
!1103 = !DILocation(line: 425, column: 44, scope: !1063)
!1104 = !DILocation(line: 424, column: 3, scope: !1063)
!1105 = !DILocation(line: 426, column: 2, scope: !1063)
!1106 = !DILocation(line: 428, column: 6, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1016, file: !598, line: 428, column: 6)
!1108 = !DILocation(line: 428, column: 6, scope: !1016)
!1109 = !DILocalVariable(name: "max_width", scope: !1110, file: !598, line: 429, type: !58)
!1110 = distinct !DILexicalBlock(scope: !1107, file: !598, line: 428, column: 21)
!1111 = !DILocation(line: 429, column: 7, scope: !1110)
!1112 = !DILocalVariable(name: "window", scope: !1110, file: !598, line: 430, type: !88)
!1113 = !DILocation(line: 430, column: 15, scope: !1110)
!1114 = !DILocation(line: 432, column: 12, scope: !1110)
!1115 = !DILocation(line: 432, column: 18, scope: !1110)
!1116 = !DILocation(line: 432, column: 23, scope: !1110)
!1117 = !DILocation(line: 432, column: 37, scope: !1110)
!1118 = !DILocation(line: 433, column: 5, scope: !1110)
!1119 = !DILocation(line: 433, column: 11, scope: !1110)
!1120 = !DILocation(line: 433, column: 16, scope: !1110)
!1121 = !DILocation(line: 433, column: 31, scope: !1110)
!1122 = !DILocation(line: 432, column: 12, scope: !1123)
!1123 = !DILexicalBlockFile(scope: !1110, file: !598, discriminator: 1)
!1124 = !DILocation(line: 432, column: 12, scope: !1125)
!1125 = !DILexicalBlockFile(scope: !1110, file: !598, discriminator: 2)
!1126 = !DILocation(line: 432, column: 12, scope: !1127)
!1127 = !DILexicalBlockFile(scope: !1110, file: !598, discriminator: 3)
!1128 = !DILocation(line: 432, column: 10, scope: !1127)
!1129 = !DILocation(line: 436, column: 15, scope: !1110)
!1130 = !DILocation(line: 436, column: 22, scope: !1110)
!1131 = !DILocation(line: 436, column: 31, scope: !1123)
!1132 = !DILocation(line: 436, column: 39, scope: !1123)
!1133 = !DILocation(line: 436, column: 15, scope: !1123)
!1134 = !DILocation(line: 436, column: 47, scope: !1125)
!1135 = !DILocation(line: 436, column: 15, scope: !1125)
!1136 = !DILocation(line: 436, column: 15, scope: !1127)
!1137 = !DILocation(line: 436, column: 13, scope: !1127)
!1138 = !DILocation(line: 438, column: 22, scope: !1110)
!1139 = !DILocation(line: 438, column: 31, scope: !1110)
!1140 = !DILocation(line: 438, column: 21, scope: !1110)
!1141 = !DILocation(line: 438, column: 3, scope: !1110)
!1142 = !DILocation(line: 438, column: 9, scope: !1110)
!1143 = !DILocation(line: 438, column: 18, scope: !1110)
!1144 = !DILocation(line: 439, column: 20, scope: !1110)
!1145 = !DILocation(line: 439, column: 3, scope: !1110)
!1146 = !DILocation(line: 439, column: 9, scope: !1110)
!1147 = !DILocation(line: 439, column: 18, scope: !1110)
!1148 = !DILocation(line: 440, column: 3, scope: !1110)
!1149 = !DILocation(line: 443, column: 17, scope: !1016)
!1150 = !DILocation(line: 443, column: 27, scope: !1016)
!1151 = !DILocation(line: 443, column: 34, scope: !1016)
!1152 = !DILocation(line: 443, column: 39, scope: !1016)
!1153 = !DILocation(line: 443, column: 53, scope: !1016)
!1154 = !DILocation(line: 443, column: 26, scope: !1016)
!1155 = !DILocation(line: 443, column: 24, scope: !1156)
!1156 = !DILexicalBlockFile(scope: !1016, file: !598, discriminator: 1)
!1157 = !DILocation(line: 443, column: 31, scope: !1156)
!1158 = !DILocation(line: 443, column: 36, scope: !1156)
!1159 = !DILocation(line: 443, column: 51, scope: !1156)
!1160 = !DILocation(line: 443, column: 67, scope: !1156)
!1161 = !DILocation(line: 443, column: 74, scope: !1156)
!1162 = !DILocation(line: 443, column: 79, scope: !1156)
!1163 = !DILocation(line: 443, column: 94, scope: !1156)
!1164 = !DILocation(line: 443, column: 64, scope: !1156)
!1165 = !DILocation(line: 443, column: 26, scope: !1156)
!1166 = !DILocation(line: 443, column: 26, scope: !1167)
!1167 = !DILexicalBlockFile(scope: !1016, file: !598, discriminator: 2)
!1168 = !DILocation(line: 443, column: 26, scope: !1169)
!1169 = !DILexicalBlockFile(scope: !1016, file: !598, discriminator: 3)
!1170 = !DILocation(line: 443, column: 126, scope: !1169)
!1171 = !DILocation(line: 443, column: 133, scope: !1169)
!1172 = !DILocation(line: 443, column: 123, scope: !1169)
!1173 = !DILocation(line: 443, column: 141, scope: !1169)
!1174 = !DILocation(line: 443, column: 147, scope: !1169)
!1175 = !DILocation(line: 443, column: 152, scope: !1169)
!1176 = !DILocation(line: 444, column: 10, scope: !1016)
!1177 = !DILocation(line: 444, column: 16, scope: !1016)
!1178 = !DILocation(line: 443, column: 2, scope: !1169)
!1179 = !DILocation(line: 445, column: 19, scope: !1016)
!1180 = !DILocation(line: 445, column: 2, scope: !1016)
!1181 = !DILocation(line: 446, column: 1, scope: !1016)
!1182 = !DILocation(line: 446, column: 1, scope: !1156)
!1183 = distinct !DISubprogram(name: "sig_statusbar_activity_hilight", scope: !598, file: !598, line: 195, type: !1184, isLocal: true, isDefinition: true, scopeLine: 196, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !610)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{null, !88, !59}
!1186 = !DILocalVariable(name: "window", arg: 1, scope: !1183, file: !598, line: 195, type: !88)
!1187 = !DILocation(line: 195, column: 56, scope: !1183)
!1188 = !DILocalVariable(name: "oldlevel", arg: 2, scope: !1183, file: !598, line: 195, type: !59)
!1189 = !DILocation(line: 195, column: 73, scope: !1183)
!1190 = !DILocalVariable(name: "node", scope: !1183, file: !598, line: 197, type: !468)
!1191 = !DILocation(line: 197, column: 9, scope: !1183)
!1192 = !DILocation(line: 199, column: 2, scope: !1183)
!1193 = distinct !{!1193, !1192}
!1194 = !DILocation(line: 199, column: 10, scope: !1195)
!1195 = !DILexicalBlockFile(scope: !1196, file: !598, discriminator: 1)
!1196 = distinct !DILexicalBlock(scope: !1197, file: !598, line: 199, column: 10)
!1197 = distinct !DILexicalBlock(scope: !1183, file: !598, line: 199, column: 4)
!1198 = !DILocation(line: 199, column: 17, scope: !1195)
!1199 = !DILocation(line: 199, column: 5, scope: !1200)
!1200 = !DILexicalBlockFile(scope: !1201, file: !598, discriminator: 2)
!1201 = distinct !DILexicalBlock(scope: !1196, file: !598, line: 199, column: 3)
!1202 = !DILocation(line: 199, column: 14, scope: !1203)
!1203 = !DILexicalBlockFile(scope: !1204, file: !598, discriminator: 3)
!1204 = distinct !DILexicalBlock(scope: !1196, file: !598, line: 199, column: 12)
!1205 = !DILocation(line: 199, column: 101, scope: !1203)
!1206 = !DILocation(line: 199, column: 112, scope: !1207)
!1207 = !DILexicalBlockFile(scope: !1197, file: !598, discriminator: 4)
!1208 = !DILocation(line: 201, column: 21, scope: !1183)
!1209 = !DILocation(line: 201, column: 36, scope: !1183)
!1210 = !DILocation(line: 201, column: 9, scope: !1183)
!1211 = !DILocation(line: 201, column: 7, scope: !1183)
!1212 = !DILocation(line: 203, column: 6, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1183, file: !598, line: 203, column: 6)
!1214 = !DILocation(line: 203, column: 19, scope: !1213)
!1215 = !DILocation(line: 203, column: 6, scope: !1183)
!1216 = !DILocation(line: 205, column: 7, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !598, line: 205, column: 7)
!1218 = distinct !DILexicalBlock(scope: !1213, file: !598, line: 203, column: 25)
!1219 = !DILocation(line: 205, column: 12, scope: !1217)
!1220 = !DILocation(line: 205, column: 7, scope: !1218)
!1221 = !DILocation(line: 206, column: 39, scope: !1217)
!1222 = !DILocation(line: 206, column: 54, scope: !1217)
!1223 = !DILocation(line: 206, column: 20, scope: !1217)
!1224 = !DILocation(line: 206, column: 18, scope: !1217)
!1225 = !DILocation(line: 206, column: 4, scope: !1217)
!1226 = !DILocation(line: 207, column: 7, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1218, file: !598, line: 207, column: 7)
!1228 = !DILocation(line: 207, column: 15, scope: !1227)
!1229 = !DILocation(line: 207, column: 26, scope: !1227)
!1230 = !DILocation(line: 207, column: 7, scope: !1218)
!1231 = !DILocation(line: 208, column: 35, scope: !1227)
!1232 = !DILocation(line: 208, column: 50, scope: !1227)
!1233 = !DILocation(line: 208, column: 20, scope: !1227)
!1234 = !DILocation(line: 208, column: 18, scope: !1227)
!1235 = !DILocation(line: 208, column: 4, scope: !1227)
!1236 = !DILocation(line: 209, column: 3, scope: !1218)
!1237 = !DILocation(line: 210, column: 3, scope: !1218)
!1238 = !DILocation(line: 213, column: 6, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1183, file: !598, line: 213, column: 6)
!1240 = !DILocation(line: 213, column: 19, scope: !1239)
!1241 = !DILocation(line: 213, column: 6, scope: !1183)
!1242 = !DILocation(line: 214, column: 7, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1244, file: !598, line: 214, column: 7)
!1244 = distinct !DILexicalBlock(scope: !1239, file: !598, line: 213, column: 25)
!1245 = !DILocation(line: 214, column: 12, scope: !1243)
!1246 = !DILocation(line: 214, column: 7, scope: !1244)
!1247 = !DILocation(line: 215, column: 8, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !598, line: 215, column: 8)
!1249 = distinct !DILexicalBlock(scope: !1243, file: !598, line: 214, column: 20)
!1250 = !DILocation(line: 215, column: 16, scope: !1248)
!1251 = !DILocation(line: 215, column: 47, scope: !1248)
!1252 = !DILocation(line: 215, column: 38, scope: !1248)
!1253 = !DILocation(line: 215, column: 31, scope: !1248)
!1254 = !DILocation(line: 215, column: 27, scope: !1248)
!1255 = !DILocation(line: 215, column: 8, scope: !1249)
!1256 = !DILocation(line: 216, column: 9, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !598, line: 216, column: 9)
!1258 = distinct !DILexicalBlock(scope: !1248, file: !598, line: 215, column: 59)
!1259 = !DILocation(line: 216, column: 17, scope: !1257)
!1260 = !DILocation(line: 216, column: 31, scope: !1257)
!1261 = !DILocation(line: 216, column: 9, scope: !1258)
!1262 = !DILocation(line: 217, column: 6, scope: !1257)
!1263 = !DILocation(line: 218, column: 5, scope: !1258)
!1264 = !DILocation(line: 220, column: 39, scope: !1249)
!1265 = !DILocation(line: 220, column: 54, scope: !1249)
!1266 = !DILocation(line: 220, column: 20, scope: !1249)
!1267 = !DILocation(line: 220, column: 18, scope: !1249)
!1268 = !DILocation(line: 221, column: 3, scope: !1249)
!1269 = !DILocation(line: 222, column: 7, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1244, file: !598, line: 222, column: 7)
!1271 = !DILocation(line: 222, column: 15, scope: !1270)
!1272 = !DILocation(line: 222, column: 26, scope: !1270)
!1273 = !DILocation(line: 222, column: 7, scope: !1244)
!1274 = !DILocation(line: 223, column: 41, scope: !1270)
!1275 = !DILocation(line: 223, column: 56, scope: !1270)
!1276 = !DILocation(line: 223, column: 20, scope: !1270)
!1277 = !DILocation(line: 223, column: 18, scope: !1270)
!1278 = !DILocation(line: 223, column: 4, scope: !1270)
!1279 = !DILocation(line: 225, column: 3, scope: !1244)
!1280 = !DILocation(line: 226, column: 3, scope: !1244)
!1281 = !DILocation(line: 229, column: 6, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1183, file: !598, line: 229, column: 6)
!1283 = !DILocation(line: 229, column: 19, scope: !1282)
!1284 = !DILocation(line: 229, column: 6, scope: !1183)
!1285 = !DILocation(line: 230, column: 7, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !598, line: 230, column: 7)
!1287 = distinct !DILexicalBlock(scope: !1282, file: !598, line: 229, column: 25)
!1288 = !DILocation(line: 230, column: 12, scope: !1286)
!1289 = !DILocation(line: 230, column: 7, scope: !1287)
!1290 = !DILocation(line: 231, column: 39, scope: !1286)
!1291 = !DILocation(line: 231, column: 54, scope: !1286)
!1292 = !DILocation(line: 231, column: 20, scope: !1286)
!1293 = !DILocation(line: 231, column: 18, scope: !1286)
!1294 = !DILocation(line: 231, column: 4, scope: !1286)
!1295 = !DILocation(line: 232, column: 7, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1287, file: !598, line: 232, column: 7)
!1297 = !DILocation(line: 232, column: 15, scope: !1296)
!1298 = !DILocation(line: 232, column: 26, scope: !1296)
!1299 = !DILocation(line: 232, column: 7, scope: !1287)
!1300 = !DILocation(line: 233, column: 41, scope: !1296)
!1301 = !DILocation(line: 233, column: 56, scope: !1296)
!1302 = !DILocation(line: 233, column: 20, scope: !1296)
!1303 = !DILocation(line: 233, column: 18, scope: !1296)
!1304 = !DILocation(line: 233, column: 4, scope: !1296)
!1305 = !DILocation(line: 235, column: 3, scope: !1287)
!1306 = !DILocation(line: 236, column: 3, scope: !1287)
!1307 = !DILocation(line: 239, column: 6, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1183, file: !598, line: 239, column: 6)
!1309 = !DILocation(line: 239, column: 11, scope: !1308)
!1310 = !DILocation(line: 239, column: 6, scope: !1183)
!1311 = !DILocation(line: 241, column: 7, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !598, line: 241, column: 7)
!1313 = distinct !DILexicalBlock(scope: !1308, file: !598, line: 239, column: 19)
!1314 = !DILocation(line: 241, column: 15, scope: !1312)
!1315 = !DILocation(line: 241, column: 26, scope: !1312)
!1316 = !DILocation(line: 241, column: 7, scope: !1313)
!1317 = !DILocation(line: 243, column: 39, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1312, file: !598, line: 241, column: 32)
!1319 = !DILocation(line: 243, column: 54, scope: !1318)
!1320 = !DILocation(line: 243, column: 20, scope: !1318)
!1321 = !DILocation(line: 243, column: 18, scope: !1318)
!1322 = !DILocation(line: 244, column: 4, scope: !1318)
!1323 = !DILocation(line: 245, column: 3, scope: !1318)
!1324 = !DILocation(line: 245, column: 14, scope: !1325)
!1325 = !DILexicalBlockFile(scope: !1326, file: !598, discriminator: 1)
!1326 = distinct !DILexicalBlock(scope: !1312, file: !598, line: 245, column: 14)
!1327 = !DILocation(line: 245, column: 22, scope: !1325)
!1328 = !DILocation(line: 245, column: 53, scope: !1325)
!1329 = !DILocation(line: 245, column: 44, scope: !1325)
!1330 = !DILocation(line: 245, column: 37, scope: !1325)
!1331 = !DILocation(line: 245, column: 33, scope: !1325)
!1332 = !DILocation(line: 245, column: 64, scope: !1325)
!1333 = !DILocation(line: 246, column: 5, scope: !1326)
!1334 = !DILocation(line: 246, column: 13, scope: !1326)
!1335 = !DILocation(line: 246, column: 27, scope: !1326)
!1336 = !DILocation(line: 245, column: 14, scope: !1337)
!1337 = !DILexicalBlockFile(scope: !1312, file: !598, discriminator: 2)
!1338 = !DILocation(line: 249, column: 4, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1326, file: !598, line: 246, column: 33)
!1340 = !DILocation(line: 250, column: 3, scope: !1339)
!1341 = !DILocation(line: 251, column: 3, scope: !1313)
!1342 = !DILocation(line: 254, column: 6, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1183, file: !598, line: 254, column: 6)
!1344 = !DILocation(line: 254, column: 14, scope: !1343)
!1345 = !DILocation(line: 254, column: 25, scope: !1343)
!1346 = !DILocation(line: 254, column: 6, scope: !1183)
!1347 = !DILocation(line: 255, column: 3, scope: !1343)
!1348 = !DILocation(line: 258, column: 39, scope: !1183)
!1349 = !DILocation(line: 258, column: 54, scope: !1183)
!1350 = !DILocation(line: 258, column: 18, scope: !1183)
!1351 = !DILocation(line: 258, column: 16, scope: !1183)
!1352 = !DILocation(line: 261, column: 2, scope: !1183)
!1353 = !DILocation(line: 262, column: 1, scope: !1183)
!1354 = !DILocation(line: 262, column: 1, scope: !1355)
!1355 = !DILexicalBlockFile(scope: !1183, file: !598, discriminator: 1)
!1356 = distinct !DISubprogram(name: "sig_statusbar_activity_window_destroyed", scope: !598, file: !598, line: 264, type: !1357, isLocal: true, isDefinition: true, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !610)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{null, !88}
!1359 = !DILocalVariable(name: "window", arg: 1, scope: !1356, file: !598, line: 264, type: !88)
!1360 = !DILocation(line: 264, column: 65, scope: !1356)
!1361 = !DILocalVariable(name: "node", scope: !1356, file: !598, line: 266, type: !468)
!1362 = !DILocation(line: 266, column: 9, scope: !1356)
!1363 = !DILocation(line: 268, column: 2, scope: !1356)
!1364 = distinct !{!1364, !1363}
!1365 = !DILocation(line: 268, column: 10, scope: !1366)
!1366 = !DILexicalBlockFile(scope: !1367, file: !598, discriminator: 1)
!1367 = distinct !DILexicalBlock(scope: !1368, file: !598, line: 268, column: 10)
!1368 = distinct !DILexicalBlock(scope: !1356, file: !598, line: 268, column: 4)
!1369 = !DILocation(line: 268, column: 17, scope: !1366)
!1370 = !DILocation(line: 268, column: 5, scope: !1371)
!1371 = !DILexicalBlockFile(scope: !1372, file: !598, discriminator: 2)
!1372 = distinct !DILexicalBlock(scope: !1367, file: !598, line: 268, column: 3)
!1373 = !DILocation(line: 268, column: 14, scope: !1374)
!1374 = !DILexicalBlockFile(scope: !1375, file: !598, discriminator: 3)
!1375 = distinct !DILexicalBlock(scope: !1367, file: !598, line: 268, column: 12)
!1376 = !DILocation(line: 268, column: 101, scope: !1374)
!1377 = !DILocation(line: 268, column: 112, scope: !1378)
!1378 = !DILexicalBlockFile(scope: !1368, file: !598, discriminator: 4)
!1379 = !DILocation(line: 270, column: 21, scope: !1356)
!1380 = !DILocation(line: 270, column: 36, scope: !1356)
!1381 = !DILocation(line: 270, column: 9, scope: !1356)
!1382 = !DILocation(line: 270, column: 7, scope: !1356)
!1383 = !DILocation(line: 271, column: 6, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1356, file: !598, line: 271, column: 6)
!1385 = !DILocation(line: 271, column: 11, scope: !1384)
!1386 = !DILocation(line: 271, column: 6, scope: !1356)
!1387 = !DILocation(line: 272, column: 38, scope: !1384)
!1388 = !DILocation(line: 272, column: 53, scope: !1384)
!1389 = !DILocation(line: 272, column: 19, scope: !1384)
!1390 = !DILocation(line: 272, column: 17, scope: !1384)
!1391 = !DILocation(line: 272, column: 3, scope: !1384)
!1392 = !DILocation(line: 273, column: 2, scope: !1356)
!1393 = !DILocation(line: 274, column: 1, scope: !1356)
!1394 = !DILocation(line: 274, column: 1, scope: !1395)
!1395 = !DILexicalBlockFile(scope: !1356, file: !598, discriminator: 1)
!1396 = distinct !DISubprogram(name: "sig_statusbar_activity_updated", scope: !598, file: !598, line: 276, type: !271, isLocal: true, isDefinition: true, scopeLine: 277, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !610)
!1397 = !DILocation(line: 278, column: 2, scope: !1396)
!1398 = !DILocation(line: 279, column: 1, scope: !1396)
!1399 = distinct !DISubprogram(name: "sig_statusbar_more_updated", scope: !598, file: !598, line: 306, type: !271, isLocal: true, isDefinition: true, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !610)
!1400 = !DILocalVariable(name: "visible", scope: !1399, file: !598, line: 308, type: !58)
!1401 = !DILocation(line: 308, column: 6, scope: !1399)
!1402 = !DILocation(line: 311, column: 6, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1399, file: !598, line: 311, column: 6)
!1404 = !DILocation(line: 311, column: 17, scope: !1403)
!1405 = !DILocation(line: 311, column: 6, scope: !1399)
!1406 = !DILocation(line: 312, column: 3, scope: !1403)
!1407 = !DILocation(line: 314, column: 32, scope: !1399)
!1408 = !DILocation(line: 314, column: 69, scope: !1399)
!1409 = !DILocation(line: 314, column: 82, scope: !1399)
!1410 = !DILocation(line: 314, column: 48, scope: !1399)
!1411 = !DILocation(line: 314, column: 94, scope: !1399)
!1412 = !DILocation(line: 314, column: 46, scope: !1399)
!1413 = !DILocation(line: 314, column: 19, scope: !1399)
!1414 = !DILocation(line: 314, column: 103, scope: !1399)
!1415 = !DILocation(line: 314, column: 17, scope: !1399)
!1416 = !DILocation(line: 315, column: 28, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1399, file: !598, line: 315, column: 6)
!1418 = !DILocation(line: 315, column: 41, scope: !1417)
!1419 = !DILocation(line: 315, column: 7, scope: !1417)
!1420 = !DILocation(line: 315, column: 53, scope: !1417)
!1421 = !DILocation(line: 315, column: 59, scope: !1417)
!1422 = !DILocation(line: 315, column: 72, scope: !1417)
!1423 = !DILocation(line: 315, column: 69, scope: !1417)
!1424 = !DILocation(line: 315, column: 6, scope: !1399)
!1425 = !DILocation(line: 316, column: 17, scope: !1417)
!1426 = !DILocation(line: 317, column: 1, scope: !1399)
!1427 = distinct !DISubprogram(name: "sig_server_lag_updated", scope: !598, file: !598, line: 403, type: !1428, isLocal: true, isDefinition: true, scopeLine: 404, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !610)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{null, !123}
!1430 = !DILocalVariable(name: "server", arg: 1, scope: !1427, file: !598, line: 403, type: !123)
!1431 = !DILocation(line: 403, column: 48, scope: !1427)
!1432 = !DILocation(line: 405, column: 6, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1427, file: !598, line: 405, column: 6)
!1434 = !DILocation(line: 405, column: 17, scope: !1433)
!1435 = !DILocation(line: 405, column: 24, scope: !1433)
!1436 = !DILocation(line: 405, column: 27, scope: !1437)
!1437 = !DILexicalBlockFile(scope: !1433, file: !598, discriminator: 1)
!1438 = !DILocation(line: 405, column: 39, scope: !1437)
!1439 = !DILocation(line: 405, column: 56, scope: !1437)
!1440 = !DILocation(line: 405, column: 53, scope: !1437)
!1441 = !DILocation(line: 405, column: 6, scope: !1437)
!1442 = !DILocation(line: 406, column: 17, scope: !1433)
!1443 = !DILocation(line: 407, column: 1, scope: !1427)
!1444 = distinct !DISubprogram(name: "lag_check_update", scope: !598, file: !598, line: 386, type: !271, isLocal: true, isDefinition: true, scopeLine: 387, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !610)
!1445 = !DILocalVariable(name: "server", scope: !1444, file: !598, line: 388, type: !123)
!1446 = !DILocation(line: 388, column: 14, scope: !1444)
!1447 = !DILocalVariable(name: "lag", scope: !1444, file: !598, line: 389, type: !58)
!1448 = !DILocation(line: 389, column: 6, scope: !1444)
!1449 = !DILocalVariable(name: "lag_unknown", scope: !1444, file: !598, line: 389, type: !58)
!1450 = !DILocation(line: 389, column: 11, scope: !1444)
!1451 = !DILocation(line: 391, column: 11, scope: !1444)
!1452 = !DILocation(line: 391, column: 22, scope: !1444)
!1453 = !DILocation(line: 391, column: 11, scope: !1454)
!1454 = !DILexicalBlockFile(scope: !1444, file: !598, discriminator: 1)
!1455 = !DILocation(line: 391, column: 38, scope: !1456)
!1456 = !DILexicalBlockFile(scope: !1444, file: !598, discriminator: 2)
!1457 = !DILocation(line: 391, column: 50, scope: !1456)
!1458 = !DILocation(line: 391, column: 11, scope: !1456)
!1459 = !DILocation(line: 391, column: 11, scope: !1460)
!1460 = !DILexicalBlockFile(scope: !1444, file: !598, discriminator: 3)
!1461 = !DILocation(line: 391, column: 9, scope: !1460)
!1462 = !DILocation(line: 392, column: 16, scope: !1444)
!1463 = !DILocation(line: 392, column: 8, scope: !1444)
!1464 = !DILocation(line: 392, column: 37, scope: !1444)
!1465 = !DILocation(line: 392, column: 6, scope: !1444)
!1466 = !DILocation(line: 394, column: 6, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1444, file: !598, line: 394, column: 6)
!1468 = !DILocation(line: 394, column: 12, scope: !1467)
!1469 = !DILocation(line: 394, column: 10, scope: !1467)
!1470 = !DILocation(line: 394, column: 6, scope: !1444)
!1471 = !DILocation(line: 395, column: 7, scope: !1467)
!1472 = !DILocation(line: 395, column: 3, scope: !1467)
!1473 = !DILocation(line: 397, column: 7, scope: !1467)
!1474 = !DILocation(line: 399, column: 6, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1444, file: !598, line: 399, column: 6)
!1476 = !DILocation(line: 399, column: 13, scope: !1475)
!1477 = !DILocation(line: 399, column: 10, scope: !1475)
!1478 = !DILocation(line: 399, column: 22, scope: !1475)
!1479 = !DILocation(line: 399, column: 26, scope: !1480)
!1480 = !DILexicalBlockFile(scope: !1475, file: !598, discriminator: 1)
!1481 = !DILocation(line: 399, column: 30, scope: !1480)
!1482 = !DILocation(line: 399, column: 34, scope: !1480)
!1483 = !DILocation(line: 399, column: 37, scope: !1484)
!1484 = !DILexicalBlockFile(scope: !1475, file: !598, discriminator: 2)
!1485 = !DILocation(line: 399, column: 52, scope: !1484)
!1486 = !DILocation(line: 399, column: 49, scope: !1484)
!1487 = !DILocation(line: 399, column: 6, scope: !1484)
!1488 = !DILocation(line: 400, column: 17, scope: !1475)
!1489 = !DILocation(line: 401, column: 1, scope: !1444)
!1490 = distinct !DISubprogram(name: "sig_lag_timeout", scope: !598, file: !598, line: 409, type: !1491, isLocal: true, isDefinition: true, scopeLine: 410, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !610)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!58}
!1493 = !DILocation(line: 411, column: 9, scope: !1490)
!1494 = !DILocation(line: 412, column: 9, scope: !1490)
!1495 = distinct !DISubprogram(name: "read_settings", scope: !598, file: !598, line: 448, type: !271, isLocal: true, isDefinition: true, scopeLine: 449, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !610)
!1496 = !DILocalVariable(name: "str", scope: !1495, file: !598, line: 450, type: !397)
!1497 = !DILocation(line: 450, column: 14, scope: !1495)
!1498 = !DILocation(line: 452, column: 6, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1495, file: !598, line: 452, column: 6)
!1500 = !DILocation(line: 452, column: 19, scope: !1499)
!1501 = !DILocation(line: 452, column: 6, scope: !1495)
!1502 = !DILocation(line: 453, column: 22, scope: !1499)
!1503 = !DILocation(line: 453, column: 36, scope: !1499)
!1504 = !DILocation(line: 453, column: 46, scope: !1499)
!1505 = !DILocation(line: 453, column: 3, scope: !1499)
!1506 = !DILocation(line: 455, column: 8, scope: !1495)
!1507 = !DILocation(line: 455, column: 6, scope: !1495)
!1508 = !DILocation(line: 456, column: 25, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1495, file: !598, line: 456, column: 6)
!1510 = !DILocation(line: 456, column: 6, scope: !1509)
!1511 = !DILocation(line: 456, column: 40, scope: !1509)
!1512 = !DILocation(line: 456, column: 6, scope: !1495)
!1513 = !DILocation(line: 457, column: 16, scope: !1509)
!1514 = !DILocation(line: 457, column: 3, scope: !1509)
!1515 = !DILocation(line: 458, column: 30, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1509, file: !598, line: 458, column: 11)
!1517 = !DILocation(line: 458, column: 11, scope: !1516)
!1518 = !DILocation(line: 458, column: 44, scope: !1516)
!1519 = !DILocation(line: 458, column: 11, scope: !1509)
!1520 = !DILocation(line: 459, column: 16, scope: !1516)
!1521 = !DILocation(line: 459, column: 3, scope: !1516)
!1522 = !DILocation(line: 460, column: 30, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1516, file: !598, line: 460, column: 11)
!1524 = !DILocation(line: 460, column: 11, scope: !1523)
!1525 = !DILocation(line: 460, column: 51, scope: !1523)
!1526 = !DILocation(line: 460, column: 11, scope: !1516)
!1527 = !DILocation(line: 461, column: 16, scope: !1523)
!1528 = !DILocation(line: 461, column: 3, scope: !1523)
!1529 = !DILocation(line: 463, column: 3, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1523, file: !598, line: 462, column: 7)
!1531 = !DILocation(line: 464, column: 16, scope: !1530)
!1532 = !DILocation(line: 466, column: 1, scope: !1495)
!1533 = distinct !DISubprogram(name: "statusbar_items_deinit", scope: !598, file: !598, line: 514, type: !271, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !610)
!1534 = !DILocation(line: 517, column: 2, scope: !1533)
!1535 = !DILocation(line: 518, column: 2, scope: !1533)
!1536 = !DILocation(line: 519, column: 2, scope: !1533)
!1537 = !DILocation(line: 520, column: 14, scope: !1533)
!1538 = !DILocation(line: 520, column: 2, scope: !1533)
!1539 = !DILocation(line: 521, column: 23, scope: !1533)
!1540 = !DILocation(line: 524, column: 22, scope: !1533)
!1541 = !DILocation(line: 524, column: 9, scope: !1533)
!1542 = !DILocation(line: 525, column: 2, scope: !1533)
!1543 = !DILocation(line: 526, column: 2, scope: !1533)
!1544 = !DILocation(line: 527, column: 2, scope: !1533)
!1545 = !DILocation(line: 528, column: 2, scope: !1533)
!1546 = !DILocation(line: 529, column: 2, scope: !1533)
!1547 = !DILocation(line: 532, column: 2, scope: !1533)
!1548 = !DILocation(line: 533, column: 2, scope: !1533)
!1549 = !DILocation(line: 534, column: 2, scope: !1533)
!1550 = !DILocation(line: 535, column: 25, scope: !1533)
!1551 = !DILocation(line: 535, column: 9, scope: !1533)
!1552 = !DILocation(line: 538, column: 30, scope: !1533)
!1553 = !DILocation(line: 538, column: 9, scope: !1533)
!1554 = !DILocation(line: 539, column: 23, scope: !1533)
!1555 = !DILocation(line: 539, column: 2, scope: !1533)
!1556 = !DILocation(line: 541, column: 9, scope: !1533)
!1557 = !DILocation(line: 542, column: 1, scope: !1533)
!1558 = distinct !DISubprogram(name: "get_lag", scope: !598, file: !598, line: 321, type: !1559, isLocal: true, isDefinition: true, scopeLine: 322, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !610)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!58, !123, !1561}
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!1562 = !DILocalVariable(name: "server", arg: 1, scope: !1558, file: !598, line: 321, type: !123)
!1563 = !DILocation(line: 321, column: 32, scope: !1558)
!1564 = !DILocalVariable(name: "unknown", arg: 2, scope: !1558, file: !598, line: 321, type: !1561)
!1565 = !DILocation(line: 321, column: 45, scope: !1558)
!1566 = !DILocalVariable(name: "lag", scope: !1558, file: !598, line: 323, type: !75)
!1567 = !DILocation(line: 323, column: 7, scope: !1558)
!1568 = !DILocation(line: 325, column: 10, scope: !1558)
!1569 = !DILocation(line: 325, column: 18, scope: !1558)
!1570 = !DILocation(line: 327, column: 6, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1558, file: !598, line: 327, column: 6)
!1572 = !DILocation(line: 327, column: 13, scope: !1571)
!1573 = !DILocation(line: 327, column: 20, scope: !1571)
!1574 = !DILocation(line: 327, column: 23, scope: !1575)
!1575 = !DILexicalBlockFile(scope: !1571, file: !598, discriminator: 1)
!1576 = !DILocation(line: 327, column: 31, scope: !1575)
!1577 = !DILocation(line: 327, column: 46, scope: !1575)
!1578 = !DILocation(line: 327, column: 6, scope: !1575)
!1579 = !DILocation(line: 329, column: 3, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1571, file: !598, line: 327, column: 52)
!1581 = !DILocation(line: 332, column: 6, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1558, file: !598, line: 332, column: 6)
!1583 = !DILocation(line: 332, column: 14, scope: !1582)
!1584 = !DILocation(line: 332, column: 23, scope: !1582)
!1585 = !DILocation(line: 332, column: 30, scope: !1582)
!1586 = !DILocation(line: 332, column: 6, scope: !1558)
!1587 = !DILocation(line: 334, column: 24, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1582, file: !598, line: 332, column: 36)
!1589 = !DILocation(line: 334, column: 32, scope: !1588)
!1590 = !DILocation(line: 334, column: 17, scope: !1588)
!1591 = !DILocation(line: 338, column: 3, scope: !1558)
!1592 = !DILocation(line: 338, column: 11, scope: !1558)
!1593 = !DILocation(line: 340, column: 23, scope: !1558)
!1594 = !DILocation(line: 340, column: 33, scope: !1558)
!1595 = !DILocation(line: 340, column: 41, scope: !1558)
!1596 = !DILocation(line: 340, column: 50, scope: !1558)
!1597 = !DILocation(line: 340, column: 32, scope: !1558)
!1598 = !DILocation(line: 340, column: 13, scope: !1558)
!1599 = !DILocation(line: 341, column: 6, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1558, file: !598, line: 341, column: 6)
!1601 = !DILocation(line: 341, column: 14, scope: !1600)
!1602 = !DILocation(line: 341, column: 17, scope: !1600)
!1603 = !DILocation(line: 341, column: 25, scope: !1600)
!1604 = !DILocation(line: 341, column: 23, scope: !1600)
!1605 = !DILocation(line: 341, column: 6, scope: !1558)
!1606 = !DILocation(line: 344, column: 10, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1600, file: !598, line: 341, column: 30)
!1608 = !DILocation(line: 344, column: 18, scope: !1607)
!1609 = !DILocation(line: 344, column: 3, scope: !1607)
!1610 = !DILocation(line: 348, column: 16, scope: !1558)
!1611 = !DILocation(line: 348, column: 19, scope: !1558)
!1612 = !DILocation(line: 348, column: 9, scope: !1558)
!1613 = !DILocation(line: 349, column: 1, scope: !1558)
!1614 = distinct !DISubprogram(name: "get_activity_list", scope: !598, file: !598, line: 72, type: !1615, isLocal: true, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !610)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!95, !82, !58, !58}
!1617 = !DILocalVariable(name: "window", arg: 1, scope: !1614, file: !598, line: 72, type: !82)
!1618 = !DILocation(line: 72, column: 49, scope: !1614)
!1619 = !DILocalVariable(name: "normal", arg: 2, scope: !1614, file: !598, line: 72, type: !58)
!1620 = !DILocation(line: 72, column: 61, scope: !1614)
!1621 = !DILocalVariable(name: "hilight", arg: 3, scope: !1614, file: !598, line: 72, type: !58)
!1622 = !DILocation(line: 72, column: 73, scope: !1614)
!1623 = !DILocalVariable(name: "theme", scope: !1614, file: !598, line: 74, type: !1624)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64, align: 64)
!1625 = !DIDerivedType(tag: DW_TAG_typedef, name: "THEME_REC", file: !1626, line: 33, baseType: !1627)
!1626 = !DIFile(filename: "../../src/fe-common/core/themes.h", directory: "/home/lichi/Desktop/irssi/task1")
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1626, line: 13, size: 8768, align: 64, elements: !1628)
!1628 = !{!1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1640, !1641, !1642}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1627, file: !1626, line: 14, baseType: !58, size: 32, align: 32)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !1627, file: !1626, line: 16, baseType: !95, size: 64, align: 64, offset: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1627, file: !1626, line: 17, baseType: !95, size: 64, align: 64, offset: 128)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "last_modify", scope: !1627, file: !1626, line: 18, baseType: !347, size: 64, align: 64, offset: 192)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "default_color", scope: !1627, file: !1626, line: 20, baseType: !58, size: 32, align: 32, offset: 256)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "info_eol", scope: !1627, file: !1626, line: 23, baseType: !65, size: 1, align: 32, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !1627, file: !1626, line: 26, baseType: !117, size: 64, align: 64, offset: 320)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "replace_keys", scope: !1627, file: !1626, line: 28, baseType: !1637, size: 8192, align: 32, offset: 384)
!1637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 8192, align: 32, elements: !1638)
!1638 = !{!1639}
!1639 = !DISubrange(count: 256)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "replace_values", scope: !1627, file: !1626, line: 29, baseType: !100, size: 64, align: 64, offset: 8576)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "abstracts", scope: !1627, file: !1626, line: 30, baseType: !117, size: 64, align: 64, offset: 8640)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "gui_data", scope: !1627, file: !1626, line: 32, baseType: !50, size: 64, align: 64, offset: 8704)
!1643 = !DILocation(line: 74, column: 20, scope: !1614)
!1644 = !DILocalVariable(name: "str", scope: !1614, file: !598, line: 75, type: !314)
!1645 = !DILocation(line: 75, column: 11, scope: !1614)
!1646 = !DILocalVariable(name: "format", scope: !1614, file: !598, line: 76, type: !314)
!1647 = !DILocation(line: 76, column: 11, scope: !1614)
!1648 = !DILocalVariable(name: "tmp", scope: !1614, file: !598, line: 77, type: !468)
!1649 = !DILocation(line: 77, column: 9, scope: !1614)
!1650 = !DILocalVariable(name: "ret", scope: !1614, file: !598, line: 78, type: !95)
!1651 = !DILocation(line: 78, column: 15, scope: !1614)
!1652 = !DILocalVariable(name: "name", scope: !1614, file: !598, line: 78, type: !95)
!1653 = !DILocation(line: 78, column: 21, scope: !1614)
!1654 = !DILocalVariable(name: "value", scope: !1614, file: !598, line: 78, type: !95)
!1655 = !DILocation(line: 78, column: 28, scope: !1614)
!1656 = !DILocalVariable(name: "is_det", scope: !1614, file: !598, line: 79, type: !58)
!1657 = !DILocation(line: 79, column: 13, scope: !1614)
!1658 = !DILocalVariable(name: "add_name", scope: !1614, file: !598, line: 80, type: !58)
!1659 = !DILocation(line: 80, column: 6, scope: !1614)
!1660 = !DILocation(line: 80, column: 17, scope: !1614)
!1661 = !DILocation(line: 82, column: 8, scope: !1614)
!1662 = !DILocation(line: 82, column: 6, scope: !1614)
!1663 = !DILocation(line: 83, column: 11, scope: !1614)
!1664 = !DILocation(line: 83, column: 9, scope: !1614)
!1665 = !DILocation(line: 85, column: 10, scope: !1614)
!1666 = !DILocation(line: 85, column: 17, scope: !1614)
!1667 = !DILocation(line: 85, column: 24, scope: !1614)
!1668 = !DILocation(line: 85, column: 27, scope: !1669)
!1669 = !DILexicalBlockFile(scope: !1614, file: !598, discriminator: 1)
!1670 = !DILocation(line: 85, column: 35, scope: !1669)
!1671 = !DILocation(line: 85, column: 42, scope: !1669)
!1672 = !DILocation(line: 85, column: 50, scope: !1669)
!1673 = !DILocation(line: 86, column: 3, scope: !1614)
!1674 = !DILocation(line: 86, column: 11, scope: !1614)
!1675 = !DILocation(line: 86, column: 19, scope: !1614)
!1676 = !DILocation(line: 86, column: 25, scope: !1614)
!1677 = !DILocation(line: 85, column: 10, scope: !1678)
!1678 = !DILexicalBlockFile(scope: !1614, file: !598, discriminator: 2)
!1679 = !DILocation(line: 87, column: 3, scope: !1614)
!1680 = !DILocation(line: 87, column: 11, scope: !1614)
!1681 = !DILocation(line: 87, column: 19, scope: !1614)
!1682 = !DILocation(line: 85, column: 10, scope: !1683)
!1683 = !DILexicalBlockFile(scope: !1614, file: !598, discriminator: 3)
!1684 = !DILocation(line: 87, column: 27, scope: !1669)
!1685 = !DILocation(line: 85, column: 10, scope: !1686)
!1686 = !DILexicalBlockFile(scope: !1614, file: !598, discriminator: 4)
!1687 = !DILocation(line: 85, column: 10, scope: !1688)
!1688 = !DILexicalBlockFile(scope: !1614, file: !598, discriminator: 5)
!1689 = !DILocation(line: 85, column: 8, scope: !1688)
!1690 = !DILocation(line: 89, column: 13, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1614, file: !598, line: 89, column: 2)
!1692 = !DILocation(line: 89, column: 11, scope: !1691)
!1693 = !DILocation(line: 89, column: 7, scope: !1691)
!1694 = !DILocation(line: 89, column: 28, scope: !1695)
!1695 = !DILexicalBlockFile(scope: !1696, file: !598, discriminator: 1)
!1696 = distinct !DILexicalBlock(scope: !1691, file: !598, line: 89, column: 2)
!1697 = !DILocation(line: 89, column: 32, scope: !1695)
!1698 = !DILocation(line: 89, column: 2, scope: !1695)
!1699 = !DILocalVariable(name: "window", scope: !1700, file: !598, line: 90, type: !88)
!1700 = distinct !DILexicalBlock(scope: !1696, file: !598, line: 89, column: 57)
!1701 = !DILocation(line: 90, column: 15, scope: !1700)
!1702 = !DILocation(line: 90, column: 24, scope: !1700)
!1703 = !DILocation(line: 90, column: 29, scope: !1700)
!1704 = !DILocation(line: 92, column: 12, scope: !1700)
!1705 = !DILocation(line: 92, column: 20, scope: !1700)
!1706 = !DILocation(line: 92, column: 31, scope: !1700)
!1707 = !DILocation(line: 92, column: 10, scope: !1700)
!1708 = !DILocation(line: 93, column: 9, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1700, file: !598, line: 93, column: 7)
!1710 = !DILocation(line: 93, column: 16, scope: !1709)
!1711 = !DILocation(line: 93, column: 20, scope: !1712)
!1712 = !DILexicalBlockFile(scope: !1709, file: !598, discriminator: 1)
!1713 = !DILocation(line: 93, column: 28, scope: !1712)
!1714 = !DILocation(line: 93, column: 32, scope: !1715)
!1715 = !DILexicalBlockFile(scope: !1709, file: !598, discriminator: 2)
!1716 = !DILocation(line: 93, column: 39, scope: !1715)
!1717 = !DILocation(line: 93, column: 43, scope: !1718)
!1718 = !DILexicalBlockFile(scope: !1709, file: !598, discriminator: 3)
!1719 = !DILocation(line: 93, column: 7, scope: !1718)
!1720 = !DILocation(line: 94, column: 25, scope: !1709)
!1721 = !DILocation(line: 97, column: 7, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1700, file: !598, line: 97, column: 7)
!1723 = !DILocation(line: 97, column: 12, scope: !1722)
!1724 = !DILocation(line: 97, column: 16, scope: !1722)
!1725 = !DILocation(line: 97, column: 7, scope: !1700)
!1726 = !DILocation(line: 98, column: 32, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1722, file: !598, line: 97, column: 21)
!1728 = !DILocation(line: 98, column: 12, scope: !1727)
!1729 = !DILocation(line: 98, column: 10, scope: !1727)
!1730 = !DILocation(line: 99, column: 20, scope: !1727)
!1731 = !DILocation(line: 99, column: 25, scope: !1727)
!1732 = !DILocation(line: 99, column: 4, scope: !1727)
!1733 = !DILocation(line: 100, column: 11, scope: !1727)
!1734 = !DILocation(line: 100, column: 4, scope: !1727)
!1735 = !DILocation(line: 101, column: 3, scope: !1727)
!1736 = !DILocation(line: 103, column: 11, scope: !1700)
!1737 = !DILocation(line: 103, column: 19, scope: !1700)
!1738 = !DILocation(line: 103, column: 3, scope: !1700)
!1739 = !DILocation(line: 106, column: 9, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1700, file: !598, line: 103, column: 31)
!1741 = !DILocation(line: 107, column: 4, scope: !1740)
!1742 = !DILocation(line: 109, column: 9, scope: !1740)
!1743 = !DILocation(line: 110, column: 4, scope: !1740)
!1744 = !DILocation(line: 112, column: 29, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1740, file: !598, line: 112, column: 29)
!1746 = !DILocation(line: 112, column: 37, scope: !1745)
!1747 = !DILocation(line: 112, column: 51, scope: !1745)
!1748 = !DILocation(line: 112, column: 29, scope: !1740)
!1749 = !DILocation(line: 113, column: 10, scope: !1745)
!1750 = !DILocation(line: 113, column: 5, scope: !1745)
!1751 = !DILocation(line: 115, column: 38, scope: !1745)
!1752 = !DILocation(line: 116, column: 4, scope: !1740)
!1753 = !DILocation(line: 119, column: 7, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1700, file: !598, line: 119, column: 7)
!1755 = !DILocation(line: 119, column: 12, scope: !1754)
!1756 = !DILocation(line: 119, column: 7, scope: !1700)
!1757 = !DILocation(line: 120, column: 20, scope: !1754)
!1758 = !DILocation(line: 120, column: 28, scope: !1754)
!1759 = !DILocation(line: 120, column: 34, scope: !1754)
!1760 = !DILocation(line: 120, column: 42, scope: !1754)
!1761 = !DILocation(line: 120, column: 4, scope: !1754)
!1762 = !DILocation(line: 122, column: 20, scope: !1754)
!1763 = !DILocation(line: 123, column: 8, scope: !1754)
!1764 = !DILocation(line: 123, column: 16, scope: !1754)
!1765 = !DILocation(line: 124, column: 8, scope: !1754)
!1766 = !DILocation(line: 124, column: 16, scope: !1754)
!1767 = !DILocation(line: 122, column: 4, scope: !1754)
!1768 = !DILocation(line: 125, column: 7, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1700, file: !598, line: 125, column: 7)
!1770 = !DILocation(line: 125, column: 16, scope: !1769)
!1771 = !DILocation(line: 125, column: 19, scope: !1772)
!1772 = !DILexicalBlockFile(scope: !1769, file: !598, discriminator: 1)
!1773 = !DILocation(line: 125, column: 27, scope: !1772)
!1774 = !DILocation(line: 125, column: 34, scope: !1772)
!1775 = !DILocation(line: 125, column: 7, scope: !1772)
!1776 = !DILocation(line: 126, column: 27, scope: !1769)
!1777 = !DILocation(line: 126, column: 42, scope: !1769)
!1778 = !DILocation(line: 126, column: 50, scope: !1769)
!1779 = !DILocation(line: 126, column: 58, scope: !1769)
!1780 = !DILocation(line: 126, column: 4, scope: !1769)
!1781 = !DILocation(line: 127, column: 29, scope: !1700)
!1782 = !DILocation(line: 127, column: 3, scope: !1700)
!1783 = !DILocation(line: 129, column: 31, scope: !1700)
!1784 = !DILocation(line: 129, column: 38, scope: !1700)
!1785 = !DILocation(line: 129, column: 46, scope: !1700)
!1786 = !DILocation(line: 129, column: 11, scope: !1700)
!1787 = !DILocation(line: 129, column: 9, scope: !1700)
!1788 = !DILocation(line: 130, column: 19, scope: !1700)
!1789 = !DILocation(line: 130, column: 24, scope: !1700)
!1790 = !DILocation(line: 130, column: 3, scope: !1700)
!1791 = !DILocation(line: 131, column: 24, scope: !1700)
!1792 = !DILocation(line: 131, column: 17, scope: !1700)
!1793 = !DILocation(line: 132, column: 2, scope: !1700)
!1794 = !DILocation(line: 89, column: 46, scope: !1795)
!1795 = !DILexicalBlockFile(scope: !1696, file: !598, discriminator: 2)
!1796 = !DILocation(line: 89, column: 51, scope: !1795)
!1797 = !DILocation(line: 89, column: 44, scope: !1795)
!1798 = !DILocation(line: 89, column: 2, scope: !1795)
!1799 = distinct !{!1799, !1800}
!1800 = !DILocation(line: 89, column: 2, scope: !1614)
!1801 = !DILocation(line: 134, column: 8, scope: !1614)
!1802 = !DILocation(line: 134, column: 13, scope: !1614)
!1803 = !DILocation(line: 134, column: 17, scope: !1614)
!1804 = !DILocation(line: 134, column: 8, scope: !1669)
!1805 = !DILocation(line: 134, column: 30, scope: !1678)
!1806 = !DILocation(line: 134, column: 35, scope: !1678)
!1807 = !DILocation(line: 134, column: 8, scope: !1678)
!1808 = !DILocation(line: 134, column: 8, scope: !1683)
!1809 = !DILocation(line: 134, column: 6, scope: !1683)
!1810 = !DILocation(line: 135, column: 23, scope: !1614)
!1811 = !DILocation(line: 135, column: 28, scope: !1614)
!1812 = !DILocation(line: 135, column: 32, scope: !1614)
!1813 = !DILocation(line: 135, column: 9, scope: !1614)
!1814 = !DILocation(line: 136, column: 16, scope: !1614)
!1815 = !DILocation(line: 136, column: 2, scope: !1614)
!1816 = !DILocation(line: 137, column: 16, scope: !1614)
!1817 = !DILocation(line: 137, column: 9, scope: !1614)
!1818 = distinct !DISubprogram(name: "g_string_append_c_inline", scope: !316, file: !316, line: 161, type: !1819, isLocal: true, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !610)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{!314, !314, !186}
!1821 = !DILocalVariable(name: "gstring", arg: 1, scope: !1818, file: !316, line: 161, type: !314)
!1822 = !DILocation(line: 161, column: 36, scope: !1818)
!1823 = !DILocalVariable(name: "c", arg: 2, scope: !1818, file: !316, line: 162, type: !186)
!1824 = !DILocation(line: 162, column: 33, scope: !1818)
!1825 = !DILocation(line: 164, column: 7, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1818, file: !316, line: 164, column: 7)
!1827 = !DILocation(line: 164, column: 16, scope: !1826)
!1828 = !DILocation(line: 164, column: 20, scope: !1826)
!1829 = !DILocation(line: 164, column: 26, scope: !1826)
!1830 = !DILocation(line: 164, column: 35, scope: !1826)
!1831 = !DILocation(line: 164, column: 24, scope: !1826)
!1832 = !DILocation(line: 164, column: 7, scope: !1818)
!1833 = !DILocation(line: 166, column: 38, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1826, file: !316, line: 165, column: 5)
!1835 = !DILocation(line: 166, column: 20, scope: !1834)
!1836 = !DILocation(line: 166, column: 29, scope: !1834)
!1837 = !DILocation(line: 166, column: 32, scope: !1834)
!1838 = !DILocation(line: 166, column: 7, scope: !1834)
!1839 = !DILocation(line: 166, column: 16, scope: !1834)
!1840 = !DILocation(line: 166, column: 36, scope: !1834)
!1841 = !DILocation(line: 167, column: 20, scope: !1834)
!1842 = !DILocation(line: 167, column: 29, scope: !1834)
!1843 = !DILocation(line: 167, column: 7, scope: !1834)
!1844 = !DILocation(line: 167, column: 16, scope: !1834)
!1845 = !DILocation(line: 167, column: 34, scope: !1834)
!1846 = !DILocation(line: 168, column: 5, scope: !1834)
!1847 = !DILocation(line: 170, column: 24, scope: !1826)
!1848 = !DILocation(line: 170, column: 37, scope: !1826)
!1849 = !DILocation(line: 170, column: 5, scope: !1826)
!1850 = !DILocation(line: 171, column: 10, scope: !1818)
!1851 = !DILocation(line: 171, column: 3, scope: !1818)
!1852 = distinct !DISubprogram(name: "window_level_cmp", scope: !598, file: !598, line: 186, type: !1853, isLocal: true, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !610)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!58, !88, !88}
!1855 = !DILocalVariable(name: "w1", arg: 1, scope: !1852, file: !598, line: 186, type: !88)
!1856 = !DILocation(line: 186, column: 41, scope: !1852)
!1857 = !DILocalVariable(name: "w2", arg: 2, scope: !1852, file: !598, line: 186, type: !88)
!1858 = !DILocation(line: 186, column: 57, scope: !1852)
!1859 = !DILocation(line: 188, column: 6, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1852, file: !598, line: 188, column: 6)
!1861 = !DILocation(line: 188, column: 10, scope: !1860)
!1862 = !DILocation(line: 188, column: 23, scope: !1860)
!1863 = !DILocation(line: 188, column: 27, scope: !1860)
!1864 = !DILocation(line: 188, column: 21, scope: !1860)
!1865 = !DILocation(line: 188, column: 38, scope: !1860)
!1866 = !DILocation(line: 189, column: 7, scope: !1860)
!1867 = !DILocation(line: 189, column: 11, scope: !1860)
!1868 = !DILocation(line: 189, column: 25, scope: !1860)
!1869 = !DILocation(line: 189, column: 29, scope: !1860)
!1870 = !DILocation(line: 189, column: 22, scope: !1860)
!1871 = !DILocation(line: 189, column: 40, scope: !1860)
!1872 = !DILocation(line: 189, column: 43, scope: !1873)
!1873 = !DILexicalBlockFile(scope: !1860, file: !598, discriminator: 1)
!1874 = !DILocation(line: 189, column: 47, scope: !1873)
!1875 = !DILocation(line: 189, column: 56, scope: !1873)
!1876 = !DILocation(line: 189, column: 60, scope: !1873)
!1877 = !DILocation(line: 189, column: 54, scope: !1873)
!1878 = !DILocation(line: 188, column: 6, scope: !1879)
!1879 = !DILexicalBlockFile(scope: !1852, file: !598, discriminator: 1)
!1880 = !DILocation(line: 190, column: 3, scope: !1860)
!1881 = !DILocation(line: 192, column: 3, scope: !1860)
!1882 = !DILocation(line: 193, column: 1, scope: !1852)
!1883 = distinct !DISubprogram(name: "window_level_recent_cmp", scope: !598, file: !598, line: 178, type: !1853, isLocal: true, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !610)
!1884 = !DILocalVariable(name: "w1", arg: 1, scope: !1883, file: !598, line: 178, type: !88)
!1885 = !DILocation(line: 178, column: 48, scope: !1883)
!1886 = !DILocalVariable(name: "w2", arg: 2, scope: !1883, file: !598, line: 178, type: !88)
!1887 = !DILocation(line: 178, column: 64, scope: !1883)
!1888 = !DILocation(line: 180, column: 6, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1883, file: !598, line: 180, column: 6)
!1890 = !DILocation(line: 180, column: 10, scope: !1889)
!1891 = !DILocation(line: 180, column: 24, scope: !1889)
!1892 = !DILocation(line: 180, column: 28, scope: !1889)
!1893 = !DILocation(line: 180, column: 21, scope: !1889)
!1894 = !DILocation(line: 180, column: 6, scope: !1883)
!1895 = !DILocation(line: 181, column: 3, scope: !1889)
!1896 = !DILocation(line: 183, column: 3, scope: !1889)
!1897 = !DILocation(line: 184, column: 1, scope: !1883)
