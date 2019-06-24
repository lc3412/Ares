; ModuleID = './line262-window-commands.o.i'
source_filename = "./line262-window-commands.o.i"
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
%struct._CHANNEL_REC = type opaque
%struct._QUERY_REC = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct.HISTORY_REC = type { i8*, %struct._GList*, i32, i32, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.THEME_REC = type { i32, i8*, i8*, i64, i32, i8, %struct._GHashTable*, [256 x i32], %struct._GSList*, %struct._GHashTable*, i8* }
%struct.WINDOW_BIND_REC = type { i8*, i8*, i8 }

@.str = private unnamed_addr constant [15 x i8] c"window history\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@active_win = external global %struct._WINDOW_REC*, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"fe-common/core\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"lookandfeel\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"active_window_ignore_refnum\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"window\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"window new\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"window close\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"window kill\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"window server\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"window refnum\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"window goto\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"window previous\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"window next\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"window last\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"window level\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"window immortal\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"window item\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"window item prev\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"window item next\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"window item goto\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"window item move\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"window number\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"window name\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"window move\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"window move prev\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"window move next\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"window move first\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"window move last\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"window list\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"window theme\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"layout\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"layout save\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"layout reset\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"foreach window\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"sticky\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"sticky unsticky\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.38 = private unnamed_addr constant [22 x i8] c"command window refnum\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.40 = private unnamed_addr constant [39 x i8] c"Active server isn't the sticky server!\00", align 1
@.str.41 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"(not loaded)\00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"window print info\00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"WINDOW ITEM TYPE\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@__func__.cmd_window_new = private unnamed_addr constant [15 x i8] c"cmd_window_new\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"hid\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"tab\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"split\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"rs\00", align 1
@.str.51 = private unnamed_addr constant [27 x i8] c"gui window create override\00", align 1
@windows = external global %struct._GSList*, align 8
@.str.52 = private unnamed_addr constant [9 x i8] c"unsticky\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"error command\00", align 1
@__func__.cmd_window_goto = private unnamed_addr constant [16 x i8] c"cmd_window_goto\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@__func__.window_highest_activity = private unnamed_addr constant [24 x i8] c"window_highest_activity\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"window != NULL\00", align 1
@__func__.cmd_window_level = private unnamed_addr constant [17 x i8] c"cmd_window_level\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"TOGGLE\00", align 1
@.str.59 = private unnamed_addr constant [25 x i8] c"command window item goto\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"cmdchars\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"%c%s\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"send command\00", align 1

; Function Attrs: nounwind uwtable
define void @cmd_window_history(i8*) #0 !dbg !703 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._GHashTable*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !708, metadata !709), !dbg !710
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %3, metadata !711, metadata !709), !dbg !712
  call void @llvm.dbg.declare(metadata i8** %4, metadata !713, metadata !709), !dbg !714
  call void @llvm.dbg.declare(metadata i8** %5, metadata !715, metadata !709), !dbg !716
  %6 = load i8*, i8** %2, align 8, !dbg !717
  %7 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %6, i8** %5, i32 278529, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), %struct._GHashTable** %3, i8** %4), !dbg !719
  %8 = icmp ne i32 %7, 0, !dbg !719
  br i1 %8, label %10, label %9, !dbg !720

; <label>:9:                                      ; preds = %1
  br label %23, !dbg !721

; <label>:10:                                     ; preds = %1
  %11 = load %struct._GHashTable*, %struct._GHashTable** %3, align 8, !dbg !722
  %12 = call i8* @g_hash_table_lookup(%struct._GHashTable* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0)), !dbg !724
  %13 = icmp ne i8* %12, null, !dbg !725
  br i1 %13, label %14, label %18, !dbg !726

; <label>:14:                                     ; preds = %10
  %15 = load i8*, i8** %2, align 8, !dbg !727
  call void (i32, ...) @signal_continue(i32 1, i8* %15), !dbg !729
  %16 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !730
  %17 = load i8*, i8** %4, align 8, !dbg !731
  call void @window_clear_history(%struct._WINDOW_REC* %16, i8* %17), !dbg !732
  br label %21, !dbg !733

; <label>:18:                                     ; preds = %10
  %19 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !734
  %20 = load i8*, i8** %4, align 8, !dbg !736
  call void @window_set_history(%struct._WINDOW_REC* %19, i8* %20), !dbg !737
  br label %21

; <label>:21:                                     ; preds = %18, %14
  %22 = load i8*, i8** %5, align 8, !dbg !738
  call void @cmd_params_free(i8* %22), !dbg !739
  br label %23, !dbg !740

; <label>:23:                                     ; preds = %21, %9
  ret void, !dbg !741
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @cmd_get_params(i8*, i8**, i32, ...) #2

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #2

declare void @signal_continue(i32, ...) #2

declare void @window_clear_history(%struct._WINDOW_REC*, i8*) #2

declare void @window_set_history(%struct._WINDOW_REC*, i8*) #2

declare void @cmd_params_free(i8*) #2

; Function Attrs: nounwind uwtable
define void @window_commands_init() #0 !dbg !743 {
  call void @settings_add_bool_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0), i32 1), !dbg !744
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, i8*, %struct._WI_ITEM_REC*)* @cmd_window to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !745
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, i8*, %struct._WI_ITEM_REC*)* @cmd_window_new to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !746
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_window_close to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !747
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_window_close to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !748
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_window_server to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !749
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_window_refnum to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !750
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_window_goto to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !751
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_window_previous to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !752
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_window_next to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !753
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_window_last to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !754
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_window_level to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !755
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_window_immortal to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !756
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, i8*, %struct._WI_ITEM_REC*)* @cmd_window_item to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !757
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_window_item_prev to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !758
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_window_item_next to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !759
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*)* @cmd_window_item_goto to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !760
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_window_item_move to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !761
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_window_number to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !762
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_window_name to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !763
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_window_history to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !764
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_window_move to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !765
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_window_move_prev to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !766
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_window_move_next to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !767
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_window_move_first to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !768
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_window_move_last to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !769
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_window_list to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !770
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_window_theme to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !771
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_layout to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !772
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @windows_layout_save to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !773
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @windows_layout_reset to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !774
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_foreach_window to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !775
  call void @command_set_options_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0)), !dbg !776
  call void @command_set_options_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i32 0, i32 0)), !dbg !777
  call void @command_set_options_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0)), !dbg !778
  call void @command_set_options_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0)), !dbg !779
  ret void, !dbg !780
}

declare void @settings_add_bool_module(i8*, i8*, i8*, i32) #2

declare void @command_bind_full(i8*, i32, i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @cmd_window(i8*, i8*, %struct._WI_ITEM_REC*) #0 !dbg !781 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !808, metadata !709), !dbg !809
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !810, metadata !709), !dbg !811
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !812, metadata !709), !dbg !813
  br label %7, !dbg !814

; <label>:7:                                      ; preds = %12, %3
  %8 = load i8*, i8** %4, align 8, !dbg !815
  %9 = load i8, i8* %8, align 1, !dbg !817
  %10 = sext i8 %9 to i32, !dbg !817
  %11 = icmp eq i32 %10, 32, !dbg !818
  br i1 %11, label %12, label %15, !dbg !819

; <label>:12:                                     ; preds = %7
  %13 = load i8*, i8** %4, align 8, !dbg !820
  %14 = getelementptr inbounds i8, i8* %13, i32 1, !dbg !820
  store i8* %14, i8** %4, align 8, !dbg !820
  br label %7, !dbg !822, !llvm.loop !823

; <label>:15:                                     ; preds = %7
  %16 = load i8*, i8** %4, align 8, !dbg !824
  %17 = load i8, i8* %16, align 1, !dbg !826
  %18 = sext i8 %17 to i32, !dbg !826
  %19 = icmp eq i32 %18, 0, !dbg !827
  br i1 %19, label %20, label %22, !dbg !828

; <label>:20:                                     ; preds = %15
  %21 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !829
  call void @cmd_window_info(%struct._WINDOW_REC* %21), !dbg !830
  br label %37, !dbg !830

; <label>:22:                                     ; preds = %15
  %23 = load i8*, i8** %4, align 8, !dbg !831
  %24 = call i32 @is_numeric(i8* %23, i8 signext 0), !dbg !833
  %25 = icmp ne i32 %24, 0, !dbg !833
  br i1 %25, label %26, label %31, !dbg !834

; <label>:26:                                     ; preds = %22
  %27 = load i8*, i8** %4, align 8, !dbg !835
  %28 = load i8*, i8** %5, align 8, !dbg !836
  %29 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !837
  %30 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i32 0, i32 0), i32 3, i8* %27, i8* %28, %struct._WI_ITEM_REC* %29), !dbg !838
  br label %36, !dbg !838

; <label>:31:                                     ; preds = %22
  %32 = load i8*, i8** %4, align 8, !dbg !839
  %33 = load i8*, i8** %5, align 8, !dbg !840
  %34 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !841
  %35 = bitcast %struct._WI_ITEM_REC* %34 to i8*, !dbg !841
  call void @command_runsub(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* %32, i8* %33, i8* %35), !dbg !842
  br label %36

; <label>:36:                                     ; preds = %31, %26
  br label %37

; <label>:37:                                     ; preds = %36, %20
  ret void, !dbg !843
}

; Function Attrs: nounwind uwtable
define internal void @cmd_window_new(i8*, i8*, %struct._WI_ITEM_REC*) #0 !dbg !844 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  %7 = alloca %struct._WINDOW_REC*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !845, metadata !709), !dbg !846
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !847, metadata !709), !dbg !848
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !849, metadata !709), !dbg !850
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %7, metadata !851, metadata !709), !dbg !897
  call void @llvm.dbg.declare(metadata i32* %8, metadata !898, metadata !709), !dbg !899
  br label %9, !dbg !900, !llvm.loop !901

; <label>:9:                                      ; preds = %3
  %10 = load i8*, i8** %4, align 8, !dbg !902
  %11 = icmp ne i8* %10, null, !dbg !906
  br i1 %11, label %12, label %13, !dbg !902

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !907

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.cmd_window_new, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i32 0, i32 0)), !dbg !910
  br label %45, !dbg !913

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !914

; <label>:15:                                     ; preds = %14
  %16 = load i8*, i8** %4, align 8, !dbg !916
  %17 = call i32 @g_ascii_strncasecmp(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i32 0, i32 0), i64 3), !dbg !917
  %18 = icmp eq i32 %17, 0, !dbg !918
  br i1 %18, label %23, label %19, !dbg !919

; <label>:19:                                     ; preds = %15
  %20 = load i8*, i8** %4, align 8, !dbg !920
  %21 = call i32 @g_ascii_strcasecmp(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i32 0, i32 0)), !dbg !922
  %22 = icmp eq i32 %21, 0, !dbg !923
  br i1 %22, label %23, label %24, !dbg !924

; <label>:23:                                     ; preds = %19, %15
  br label %36, !dbg !925

; <label>:24:                                     ; preds = %19
  %25 = load i8*, i8** %4, align 8, !dbg !927
  %26 = call i32 @g_ascii_strcasecmp(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0)), !dbg !928
  %27 = icmp eq i32 %26, 0, !dbg !929
  br i1 %27, label %28, label %29, !dbg !928

; <label>:28:                                     ; preds = %24
  br label %34, !dbg !930

; <label>:29:                                     ; preds = %24
  %30 = load i8*, i8** %4, align 8, !dbg !931
  %31 = call i32 @g_ascii_strncasecmp(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0), i64 2), !dbg !932
  %32 = icmp eq i32 %31, 0, !dbg !933
  %33 = select i1 %32, i32 3, i32 0, !dbg !932
  br label %34, !dbg !934

; <label>:34:                                     ; preds = %29, %28
  %35 = phi i32 [ 2, %28 ], [ %33, %29 ], !dbg !935
  br label %36, !dbg !937

; <label>:36:                                     ; preds = %34, %23
  %37 = phi i32 [ 1, %23 ], [ %35, %34 ], !dbg !938
  store i32 %37, i32* %8, align 4, !dbg !940
  %38 = load i32, i32* %8, align 4, !dbg !941
  %39 = sext i32 %38 to i64, !dbg !942
  %40 = inttoptr i64 %39 to i8*, !dbg !943
  %41 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.51, i32 0, i32 0), i32 1, i8* %40), !dbg !944
  %42 = call %struct._WINDOW_REC* @window_create(%struct._WI_ITEM_REC* null, i32 0), !dbg !945
  store %struct._WINDOW_REC* %42, %struct._WINDOW_REC** %7, align 8, !dbg !946
  %43 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %7, align 8, !dbg !947
  %44 = load i8*, i8** %5, align 8, !dbg !948
  call void @window_change_server(%struct._WINDOW_REC* %43, i8* %44), !dbg !949
  br label %45, !dbg !950

; <label>:45:                                     ; preds = %36, %13
  ret void, !dbg !951
}

; Function Attrs: nounwind uwtable
define internal void @cmd_window_close(i8*) #0 !dbg !952 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct._WINDOW_REC*, align 8
  %11 = alloca %struct._WINDOW_REC*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !953, metadata !709), !dbg !954
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !955, metadata !709), !dbg !956
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !957, metadata !709), !dbg !958
  call void @llvm.dbg.declare(metadata i8** %5, metadata !959, metadata !709), !dbg !960
  call void @llvm.dbg.declare(metadata i8** %6, metadata !961, metadata !709), !dbg !962
  call void @llvm.dbg.declare(metadata i32* %7, metadata !963, metadata !709), !dbg !964
  call void @llvm.dbg.declare(metadata i32* %8, metadata !965, metadata !709), !dbg !966
  call void @llvm.dbg.declare(metadata i8** %9, metadata !967, metadata !709), !dbg !968
  %12 = load i8*, i8** %2, align 8, !dbg !969
  %13 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %12, i8** %9, i32 2, i8** %5, i8** %6), !dbg !971
  %14 = icmp ne i32 %13, 0, !dbg !971
  br i1 %14, label %16, label %15, !dbg !972

; <label>:15:                                     ; preds = %1
  br label %123, !dbg !973

; <label>:16:                                     ; preds = %1
  %17 = load i8*, i8** %5, align 8, !dbg !974
  %18 = load i8, i8* %17, align 1, !dbg !976
  %19 = sext i8 %18 to i32, !dbg !976
  %20 = icmp ne i32 %19, 0, !dbg !977
  br i1 %20, label %21, label %25, !dbg !978

; <label>:21:                                     ; preds = %16
  %22 = load i8*, i8** %5, align 8, !dbg !979
  %23 = call i32 @is_numeric(i8* %22, i8 signext 0), !dbg !981
  %24 = icmp ne i32 %23, 0, !dbg !981
  br i1 %24, label %25, label %34, !dbg !982

; <label>:25:                                     ; preds = %21, %16
  %26 = load i8*, i8** %6, align 8, !dbg !983
  %27 = load i8, i8* %26, align 1, !dbg !984
  %28 = sext i8 %27 to i32, !dbg !984
  %29 = icmp ne i32 %28, 0, !dbg !985
  br i1 %29, label %30, label %36, !dbg !986

; <label>:30:                                     ; preds = %25
  %31 = load i8*, i8** %6, align 8, !dbg !987
  %32 = call i32 @is_numeric(i8* %31, i8 signext 0), !dbg !988
  %33 = icmp ne i32 %32, 0, !dbg !988
  br i1 %33, label %36, label %34, !dbg !989

; <label>:34:                                     ; preds = %30, %21
  %35 = load i8*, i8** %9, align 8, !dbg !991
  call void @cmd_params_free(i8* %35), !dbg !993
  br label %123, !dbg !994

; <label>:36:                                     ; preds = %30, %25
  %37 = load i8*, i8** %5, align 8, !dbg !995
  %38 = load i8, i8* %37, align 1, !dbg !996
  %39 = sext i8 %38 to i32, !dbg !996
  %40 = icmp eq i32 %39, 0, !dbg !997
  br i1 %40, label %41, label %45, !dbg !996

; <label>:41:                                     ; preds = %36
  %42 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !998
  %43 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %42, i32 0, i32 0, !dbg !1000
  %44 = load i32, i32* %43, align 8, !dbg !1000
  br label %48, !dbg !1001

; <label>:45:                                     ; preds = %36
  %46 = load i8*, i8** %5, align 8, !dbg !1002
  %47 = call i32 @atoi(i8* %46) #5, !dbg !1003
  br label %48, !dbg !1004

; <label>:48:                                     ; preds = %45, %41
  %49 = phi i32 [ %44, %41 ], [ %47, %45 ], !dbg !1005
  store i32 %49, i32* %7, align 4, !dbg !1007
  %50 = load i8*, i8** %6, align 8, !dbg !1008
  %51 = load i8, i8* %50, align 1, !dbg !1009
  %52 = sext i8 %51 to i32, !dbg !1009
  %53 = icmp eq i32 %52, 0, !dbg !1010
  br i1 %53, label %54, label %56, !dbg !1009

; <label>:54:                                     ; preds = %48
  %55 = load i32, i32* %7, align 4, !dbg !1011
  br label %59, !dbg !1012

; <label>:56:                                     ; preds = %48
  %57 = load i8*, i8** %6, align 8, !dbg !1013
  %58 = call i32 @atoi(i8* %57) #5, !dbg !1014
  br label %59, !dbg !1015

; <label>:59:                                     ; preds = %56, %54
  %60 = phi i32 [ %55, %54 ], [ %58, %56 ], !dbg !1016
  store i32 %60, i32* %8, align 4, !dbg !1017
  store %struct._GSList* null, %struct._GSList** %4, align 8, !dbg !1018
  %61 = load %struct._GSList*, %struct._GSList** @windows, align 8, !dbg !1019
  store %struct._GSList* %61, %struct._GSList** %3, align 8, !dbg !1021
  br label %62, !dbg !1022

; <label>:62:                                     ; preds = %87, %59
  %63 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1023
  %64 = icmp ne %struct._GSList* %63, null, !dbg !1026
  br i1 %64, label %65, label %91, !dbg !1027

; <label>:65:                                     ; preds = %62
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %10, metadata !1028, metadata !709), !dbg !1030
  %66 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1031
  %67 = getelementptr inbounds %struct._GSList, %struct._GSList* %66, i32 0, i32 0, !dbg !1032
  %68 = load i8*, i8** %67, align 8, !dbg !1032
  %69 = bitcast i8* %68 to %struct._WINDOW_REC*, !dbg !1031
  store %struct._WINDOW_REC* %69, %struct._WINDOW_REC** %10, align 8, !dbg !1030
  %70 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %10, align 8, !dbg !1033
  %71 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %70, i32 0, i32 0, !dbg !1035
  %72 = load i32, i32* %71, align 8, !dbg !1035
  %73 = load i32, i32* %7, align 4, !dbg !1036
  %74 = icmp sge i32 %72, %73, !dbg !1037
  br i1 %74, label %75, label %86, !dbg !1038

; <label>:75:                                     ; preds = %65
  %76 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %10, align 8, !dbg !1039
  %77 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %76, i32 0, i32 0, !dbg !1041
  %78 = load i32, i32* %77, align 8, !dbg !1041
  %79 = load i32, i32* %8, align 4, !dbg !1042
  %80 = icmp sle i32 %78, %79, !dbg !1043
  br i1 %80, label %81, label %86, !dbg !1044

; <label>:81:                                     ; preds = %75
  %82 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1045
  %83 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %10, align 8, !dbg !1046
  %84 = bitcast %struct._WINDOW_REC* %83 to i8*, !dbg !1046
  %85 = call %struct._GSList* @g_slist_append(%struct._GSList* %82, i8* %84), !dbg !1047
  store %struct._GSList* %85, %struct._GSList** %4, align 8, !dbg !1048
  br label %86, !dbg !1049

; <label>:86:                                     ; preds = %81, %75, %65
  br label %87, !dbg !1050

; <label>:87:                                     ; preds = %86
  %88 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1051
  %89 = getelementptr inbounds %struct._GSList, %struct._GSList* %88, i32 0, i32 1, !dbg !1053
  %90 = load %struct._GSList*, %struct._GSList** %89, align 8, !dbg !1053
  store %struct._GSList* %90, %struct._GSList** %3, align 8, !dbg !1054
  br label %62, !dbg !1055, !llvm.loop !1056

; <label>:91:                                     ; preds = %62
  br label %92, !dbg !1058

; <label>:92:                                     ; preds = %116, %91
  %93 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1059
  %94 = icmp ne %struct._GSList* %93, null, !dbg !1060
  br i1 %94, label %95, label %121, !dbg !1061

; <label>:95:                                     ; preds = %92
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %11, metadata !1062, metadata !709), !dbg !1064
  %96 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1065
  %97 = getelementptr inbounds %struct._GSList, %struct._GSList* %96, i32 0, i32 0, !dbg !1066
  %98 = load i8*, i8** %97, align 8, !dbg !1066
  %99 = bitcast i8* %98 to %struct._WINDOW_REC*, !dbg !1065
  store %struct._WINDOW_REC* %99, %struct._WINDOW_REC** %11, align 8, !dbg !1064
  %100 = load %struct._GSList*, %struct._GSList** @windows, align 8, !dbg !1067
  %101 = getelementptr inbounds %struct._GSList, %struct._GSList* %100, i32 0, i32 1, !dbg !1069
  %102 = load %struct._GSList*, %struct._GSList** %101, align 8, !dbg !1069
  %103 = icmp ne %struct._GSList* %102, null, !dbg !1070
  br i1 %103, label %104, label %116, !dbg !1071

; <label>:104:                                    ; preds = %95
  %105 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %11, align 8, !dbg !1072
  %106 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %105, i32 0, i32 11, !dbg !1075
  %107 = load i8, i8* %106, align 8, !dbg !1075
  %108 = and i8 %107, 1, !dbg !1075
  %109 = zext i8 %108 to i32, !dbg !1075
  %110 = icmp ne i32 %109, 0, !dbg !1072
  br i1 %110, label %113, label %111, !dbg !1076

; <label>:111:                                    ; preds = %104
  %112 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %11, align 8, !dbg !1077
  call void @window_destroy(%struct._WINDOW_REC* %112), !dbg !1078
  br label %115, !dbg !1078

; <label>:113:                                    ; preds = %104
  %114 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %11, align 8, !dbg !1079
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), %struct._WINDOW_REC* %114, i32 1048576, i32 16), !dbg !1081
  br label %115

; <label>:115:                                    ; preds = %113, %111
  br label %116, !dbg !1082

; <label>:116:                                    ; preds = %115, %95
  %117 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1083
  %118 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %11, align 8, !dbg !1084
  %119 = bitcast %struct._WINDOW_REC* %118 to i8*, !dbg !1084
  %120 = call %struct._GSList* @g_slist_remove(%struct._GSList* %117, i8* %119), !dbg !1085
  store %struct._GSList* %120, %struct._GSList** %4, align 8, !dbg !1086
  br label %92, !dbg !1087, !llvm.loop !1088

; <label>:121:                                    ; preds = %92
  %122 = load i8*, i8** %9, align 8, !dbg !1089
  call void @cmd_params_free(i8* %122), !dbg !1090
  br label %123, !dbg !1091

; <label>:123:                                    ; preds = %121, %34, %15
  ret void, !dbg !1092
}

; Function Attrs: nounwind uwtable
define internal void @cmd_window_server(i8*) #0 !dbg !1093 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._GHashTable*, align 8
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1094, metadata !709), !dbg !1095
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %3, metadata !1096, metadata !709), !dbg !1097
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !1098, metadata !709), !dbg !1099
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1100, metadata !709), !dbg !1101
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1102, metadata !709), !dbg !1103
  %7 = load i8*, i8** %2, align 8, !dbg !1104
  %8 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %7, i8** %6, i32 16385, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), %struct._GHashTable** %3, i8** %5), !dbg !1106
  %9 = icmp ne i32 %8, 0, !dbg !1106
  br i1 %9, label %11, label %10, !dbg !1107

; <label>:10:                                     ; preds = %1
  br label %151, !dbg !1108

; <label>:11:                                     ; preds = %1
  %12 = load i8*, i8** %5, align 8, !dbg !1109
  %13 = load i8, i8* %12, align 1, !dbg !1111
  %14 = sext i8 %13 to i32, !dbg !1111
  %15 = icmp eq i32 %14, 0, !dbg !1112
  br i1 %15, label %16, label %35, !dbg !1113

; <label>:16:                                     ; preds = %11
  %17 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1114
  %18 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %17, i32 0, i32 6, !dbg !1116
  %19 = load %struct._SERVER_REC*, %struct._SERVER_REC** %18, align 8, !dbg !1116
  %20 = icmp ne %struct._SERVER_REC* %19, null, !dbg !1117
  br i1 %20, label %21, label %35, !dbg !1118

; <label>:21:                                     ; preds = %16
  %22 = load %struct._GHashTable*, %struct._GHashTable** %3, align 8, !dbg !1119
  %23 = call i8* @g_hash_table_lookup(%struct._GHashTable* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0)), !dbg !1120
  %24 = icmp ne i8* %23, null, !dbg !1121
  br i1 %24, label %29, label %25, !dbg !1122

; <label>:25:                                     ; preds = %21
  %26 = load %struct._GHashTable*, %struct._GHashTable** %3, align 8, !dbg !1123
  %27 = call i8* @g_hash_table_lookup(%struct._GHashTable* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0)), !dbg !1124
  %28 = icmp ne i8* %27, null, !dbg !1125
  br i1 %28, label %29, label %35, !dbg !1126

; <label>:29:                                     ; preds = %25, %21
  %30 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1128
  %31 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %30, i32 0, i32 6, !dbg !1130
  %32 = load %struct._SERVER_REC*, %struct._SERVER_REC** %31, align 8, !dbg !1130
  %33 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %32, i32 0, i32 6, !dbg !1131
  %34 = load i8*, i8** %33, align 8, !dbg !1131
  store i8* %34, i8** %5, align 8, !dbg !1132
  br label %35, !dbg !1133

; <label>:35:                                     ; preds = %29, %25, %16, %11
  %36 = load i8*, i8** %5, align 8, !dbg !1134
  %37 = load i8, i8* %36, align 1, !dbg !1136
  %38 = sext i8 %37 to i32, !dbg !1136
  %39 = icmp eq i32 %38, 0, !dbg !1137
  br i1 %39, label %40, label %47, !dbg !1138

; <label>:40:                                     ; preds = %35
  br label %41, !dbg !1139, !llvm.loop !1140

; <label>:41:                                     ; preds = %40
  %42 = load i8*, i8** %6, align 8, !dbg !1141
  call void @cmd_params_free(i8* %42), !dbg !1144
  br label %43, !dbg !1145, !llvm.loop !1146

; <label>:43:                                     ; preds = %41
  %44 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !1148
  call void @signal_stop(), !dbg !1151
  br label %151, !dbg !1153
                                                  ; No predecessors!
  br label %46, !dbg !1154

; <label>:46:                                     ; preds = %45
  br label %47, !dbg !1156

; <label>:47:                                     ; preds = %46, %35
  %48 = load i8*, i8** %5, align 8, !dbg !1158
  %49 = call %struct._SERVER_REC* @server_find_tag(i8* %48), !dbg !1159
  store %struct._SERVER_REC* %49, %struct._SERVER_REC** %4, align 8, !dbg !1160
  %50 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1161
  %51 = icmp eq %struct._SERVER_REC* %50, null, !dbg !1163
  br i1 %51, label %52, label %55, !dbg !1164

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %5, align 8, !dbg !1165
  %54 = call %struct._SERVER_REC* @server_find_lookup_tag(i8* %53), !dbg !1166
  store %struct._SERVER_REC* %54, %struct._SERVER_REC** %4, align 8, !dbg !1167
  br label %55, !dbg !1168

; <label>:55:                                     ; preds = %52, %47
  %56 = load %struct._GHashTable*, %struct._GHashTable** %3, align 8, !dbg !1169
  %57 = call i8* @g_hash_table_lookup(%struct._GHashTable* %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0)), !dbg !1171
  %58 = icmp ne i8* %57, null, !dbg !1172
  br i1 %58, label %59, label %79, !dbg !1173

; <label>:59:                                     ; preds = %55
  %60 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1174
  %61 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %60, i32 0, i32 8, !dbg !1175
  %62 = load i8*, i8** %61, align 8, !dbg !1175
  %63 = icmp ne i8* %62, null, !dbg !1176
  br i1 %63, label %64, label %79, !dbg !1177

; <label>:64:                                     ; preds = %59
  br label %65, !dbg !1179, !llvm.loop !1181

; <label>:65:                                     ; preds = %64
  %66 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1182
  %67 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %66, i32 0, i32 8, !dbg !1186
  %68 = load i8*, i8** %67, align 8, !dbg !1186
  %69 = icmp ne i8* %68, null, !dbg !1182
  br i1 %69, label %70, label %76, !dbg !1182

; <label>:70:                                     ; preds = %65
  %71 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1187
  %72 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %71, i32 0, i32 8, !dbg !1190
  %73 = load i8*, i8** %72, align 8, !dbg !1190
  call void @g_free(i8* %73), !dbg !1191
  %74 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1192
  %75 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %74, i32 0, i32 8, !dbg !1193
  store i8* null, i8** %75, align 8, !dbg !1194
  br label %76, !dbg !1195

; <label>:76:                                     ; preds = %70, %65
  br label %77, !dbg !1196

; <label>:77:                                     ; preds = %76
  %78 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1198
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), %struct._WINDOW_REC* %78, i32 262144, i32 11), !dbg !1199
  br label %79, !dbg !1200

; <label>:79:                                     ; preds = %77, %59, %55
  %80 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1201
  %81 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %80, i32 0, i32 8, !dbg !1203
  %82 = load i8*, i8** %81, align 8, !dbg !1203
  %83 = icmp ne i8* %82, null, !dbg !1204
  br i1 %83, label %84, label %90, !dbg !1205

; <label>:84:                                     ; preds = %79
  %85 = load %struct._GHashTable*, %struct._GHashTable** %3, align 8, !dbg !1206
  %86 = call i8* @g_hash_table_lookup(%struct._GHashTable* %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0)), !dbg !1207
  %87 = icmp eq i8* %86, null, !dbg !1208
  br i1 %87, label %88, label %90, !dbg !1209

; <label>:88:                                     ; preds = %84
  %89 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1210
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), %struct._WINDOW_REC* %89, i32 1048576, i32 9), !dbg !1212
  br label %149, !dbg !1213

; <label>:90:                                     ; preds = %84, %79
  %91 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1214
  %92 = icmp eq %struct._SERVER_REC* %91, null, !dbg !1217
  br i1 %92, label %93, label %96, !dbg !1214

; <label>:93:                                     ; preds = %90
  %94 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1218
  %95 = load i8*, i8** %5, align 8, !dbg !1220
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), %struct._WINDOW_REC* %94, i32 262144, i32 51, i8* %95), !dbg !1221
  br label %148, !dbg !1222

; <label>:96:                                     ; preds = %90
  %97 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1223
  %98 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %97, i32 0, i32 5, !dbg !1226
  %99 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %98, align 8, !dbg !1226
  %100 = icmp eq %struct._WI_ITEM_REC* %99, null, !dbg !1227
  br i1 %100, label %101, label %147, !dbg !1223

; <label>:101:                                    ; preds = %96
  %102 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1228
  %103 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1230
  %104 = bitcast %struct._SERVER_REC* %103 to i8*, !dbg !1230
  call void @window_change_server(%struct._WINDOW_REC* %102, i8* %104), !dbg !1231
  %105 = load %struct._GHashTable*, %struct._GHashTable** %3, align 8, !dbg !1232
  %106 = call i8* @g_hash_table_lookup(%struct._GHashTable* %105, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0)), !dbg !1234
  %107 = icmp ne i8* %106, null, !dbg !1235
  br i1 %107, label %108, label %122, !dbg !1236

; <label>:108:                                    ; preds = %101
  %109 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1237
  %110 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %109, i32 0, i32 8, !dbg !1239
  %111 = load i8*, i8** %110, align 8, !dbg !1239
  call void @g_free(i8* %111), !dbg !1240
  %112 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1241
  %113 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %112, i32 0, i32 6, !dbg !1242
  %114 = load i8*, i8** %113, align 8, !dbg !1242
  %115 = call noalias i8* @g_strdup(i8* %114), !dbg !1243
  %116 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1244
  %117 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %116, i32 0, i32 8, !dbg !1245
  store i8* %115, i8** %117, align 8, !dbg !1246
  %118 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1247
  %119 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1248
  %120 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %119, i32 0, i32 6, !dbg !1249
  %121 = load i8*, i8** %120, align 8, !dbg !1249
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), %struct._WINDOW_REC* %118, i32 262144, i32 10, i8* %121), !dbg !1250
  br label %122, !dbg !1251

; <label>:122:                                    ; preds = %108, %101
  %123 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1252
  %124 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1253
  %125 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %124, i32 0, i32 6, !dbg !1254
  %126 = load i8*, i8** %125, align 8, !dbg !1254
  %127 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1255
  %128 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %127, i32 0, i32 3, !dbg !1256
  %129 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %128, align 8, !dbg !1256
  %130 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %129, i32 0, i32 10, !dbg !1257
  %131 = load i8*, i8** %130, align 8, !dbg !1257
  %132 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1258
  %133 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %132, i32 0, i32 3, !dbg !1259
  %134 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %133, align 8, !dbg !1259
  %135 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %134, i32 0, i32 12, !dbg !1260
  %136 = load i8*, i8** %135, align 8, !dbg !1260
  %137 = icmp eq i8* %136, null, !dbg !1261
  br i1 %137, label %138, label %139, !dbg !1258

; <label>:138:                                    ; preds = %122
  br label %145, !dbg !1262

; <label>:139:                                    ; preds = %122
  %140 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1264
  %141 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %140, i32 0, i32 3, !dbg !1266
  %142 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %141, align 8, !dbg !1266
  %143 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %142, i32 0, i32 12, !dbg !1267
  %144 = load i8*, i8** %143, align 8, !dbg !1267
  br label %145, !dbg !1268

; <label>:145:                                    ; preds = %139, %138
  %146 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.41, i32 0, i32 0), %138 ], [ %144, %139 ], !dbg !1269
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), %struct._WINDOW_REC* %123, i32 262144, i32 50, i8* %126, i8* %131, i8* %146), !dbg !1271
  br label %147, !dbg !1272

; <label>:147:                                    ; preds = %145, %96
  br label %148

; <label>:148:                                    ; preds = %147, %93
  br label %149

; <label>:149:                                    ; preds = %148, %88
  %150 = load i8*, i8** %6, align 8, !dbg !1273
  call void @cmd_params_free(i8* %150), !dbg !1274
  br label %151, !dbg !1275

; <label>:151:                                    ; preds = %149, %43, %10
  ret void, !dbg !1276
}

; Function Attrs: nounwind uwtable
define internal void @cmd_window_refnum(i8*) #0 !dbg !1277 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._WINDOW_REC*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1278, metadata !709), !dbg !1279
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !1280, metadata !709), !dbg !1281
  %4 = load i8*, i8** %2, align 8, !dbg !1282
  %5 = call i32 @is_numeric(i8* %4, i8 signext 0), !dbg !1284
  %6 = icmp ne i32 %5, 0, !dbg !1284
  br i1 %6, label %8, label %7, !dbg !1285

; <label>:7:                                      ; preds = %1
  br label %16, !dbg !1286

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** %2, align 8, !dbg !1287
  %10 = call i32 @atoi(i8* %9) #5, !dbg !1288
  %11 = call %struct._WINDOW_REC* @window_find_refnum(i32 %10), !dbg !1289
  store %struct._WINDOW_REC* %11, %struct._WINDOW_REC** %3, align 8, !dbg !1291
  %12 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1292
  %13 = icmp ne %struct._WINDOW_REC* %12, null, !dbg !1294
  br i1 %13, label %14, label %16, !dbg !1295

; <label>:14:                                     ; preds = %8
  %15 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1296
  call void @window_set_active(%struct._WINDOW_REC* %15), !dbg !1297
  br label %16, !dbg !1297

; <label>:16:                                     ; preds = %7, %14, %8
  ret void, !dbg !1298
}

; Function Attrs: nounwind uwtable
define internal void @cmd_window_goto(i8*) #0 !dbg !1299 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1300, metadata !709), !dbg !1301
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !1302, metadata !709), !dbg !1303
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1304, metadata !709), !dbg !1305
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1306, metadata !709), !dbg !1307
  br label %6, !dbg !1308, !llvm.loop !1309

; <label>:6:                                      ; preds = %1
  %7 = load i8*, i8** %2, align 8, !dbg !1310
  %8 = icmp ne i8* %7, null, !dbg !1314
  br i1 %8, label %9, label %10, !dbg !1310

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !1315

; <label>:10:                                     ; preds = %6
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.cmd_window_goto, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i32 0, i32 0)), !dbg !1318
  br label %61, !dbg !1321

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !1322

; <label>:12:                                     ; preds = %11
  %13 = load i8*, i8** %2, align 8, !dbg !1324
  %14 = call i32 @is_numeric(i8* %13, i8 signext 0), !dbg !1326
  %15 = icmp ne i32 %14, 0, !dbg !1326
  br i1 %15, label %16, label %18, !dbg !1327

; <label>:16:                                     ; preds = %12
  %17 = load i8*, i8** %2, align 8, !dbg !1328
  call void @cmd_window_refnum(i8* %17), !dbg !1330
  br label %61, !dbg !1331

; <label>:18:                                     ; preds = %12
  %19 = load i8*, i8** %2, align 8, !dbg !1332
  %20 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %19, i8** %5, i32 1, i8** %4), !dbg !1334
  %21 = icmp ne i32 %20, 0, !dbg !1334
  br i1 %21, label %23, label %22, !dbg !1335

; <label>:22:                                     ; preds = %18
  br label %61, !dbg !1336

; <label>:23:                                     ; preds = %18
  %24 = load i8*, i8** %4, align 8, !dbg !1337
  %25 = call i32 @g_ascii_strcasecmp(i8* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0)), !dbg !1339
  %26 = icmp eq i32 %25, 0, !dbg !1340
  br i1 %26, label %27, label %31, !dbg !1341

; <label>:27:                                     ; preds = %23
  %28 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1342
  %29 = call i32 @settings_get_bool(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0)), !dbg !1343
  %30 = call %struct._WINDOW_REC* @window_highest_activity(%struct._WINDOW_REC* %28, i32 %29), !dbg !1344
  store %struct._WINDOW_REC* %30, %struct._WINDOW_REC** %3, align 8, !dbg !1345
  br label %54, !dbg !1346

; <label>:31:                                     ; preds = %23
  %32 = load i8*, i8** %4, align 8, !dbg !1347
  %33 = call %struct._WINDOW_REC* @window_find_name(i8* %32), !dbg !1349
  store %struct._WINDOW_REC* %33, %struct._WINDOW_REC** %3, align 8, !dbg !1350
  %34 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1351
  %35 = icmp eq %struct._WINDOW_REC* %34, null, !dbg !1353
  br i1 %35, label %36, label %47, !dbg !1354

; <label>:36:                                     ; preds = %31
  %37 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1355
  %38 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %37, i32 0, i32 6, !dbg !1357
  %39 = load %struct._SERVER_REC*, %struct._SERVER_REC** %38, align 8, !dbg !1357
  %40 = icmp ne %struct._SERVER_REC* %39, null, !dbg !1358
  br i1 %40, label %41, label %47, !dbg !1359

; <label>:41:                                     ; preds = %36
  %42 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1360
  %43 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %42, i32 0, i32 6, !dbg !1361
  %44 = load %struct._SERVER_REC*, %struct._SERVER_REC** %43, align 8, !dbg !1361
  %45 = load i8*, i8** %4, align 8, !dbg !1362
  %46 = call %struct._WINDOW_REC* @window_find_item_cycle(%struct._SERVER_REC* %44, i8* %45), !dbg !1363
  store %struct._WINDOW_REC* %46, %struct._WINDOW_REC** %3, align 8, !dbg !1364
  br label %47, !dbg !1365

; <label>:47:                                     ; preds = %41, %36, %31
  %48 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1366
  %49 = icmp eq %struct._WINDOW_REC* %48, null, !dbg !1368
  br i1 %49, label %50, label %53, !dbg !1369

; <label>:50:                                     ; preds = %47
  %51 = load i8*, i8** %4, align 8, !dbg !1370
  %52 = call %struct._WINDOW_REC* @window_find_item_cycle(%struct._SERVER_REC* null, i8* %51), !dbg !1371
  store %struct._WINDOW_REC* %52, %struct._WINDOW_REC** %3, align 8, !dbg !1372
  br label %53, !dbg !1373

; <label>:53:                                     ; preds = %50, %47
  br label %54

; <label>:54:                                     ; preds = %53, %27
  %55 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1374
  %56 = icmp ne %struct._WINDOW_REC* %55, null, !dbg !1376
  br i1 %56, label %57, label %59, !dbg !1377

; <label>:57:                                     ; preds = %54
  %58 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1378
  call void @window_set_active(%struct._WINDOW_REC* %58), !dbg !1379
  br label %59, !dbg !1379

; <label>:59:                                     ; preds = %57, %54
  %60 = load i8*, i8** %5, align 8, !dbg !1380
  call void @cmd_params_free(i8* %60), !dbg !1381
  br label %61, !dbg !1382

; <label>:61:                                     ; preds = %59, %22, %16, %10
  ret void, !dbg !1383
}

; Function Attrs: nounwind uwtable
define internal void @cmd_window_previous() #0 !dbg !1385 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1386, metadata !709), !dbg !1387
  %2 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1388
  %3 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %2, i32 0, i32 0, !dbg !1389
  %4 = load i32, i32* %3, align 8, !dbg !1389
  %5 = call i32 @window_refnum_prev(i32 %4, i32 1), !dbg !1390
  store i32 %5, i32* %1, align 4, !dbg !1391
  %6 = load i32, i32* %1, align 4, !dbg !1392
  %7 = icmp slt i32 %6, 1, !dbg !1394
  br i1 %7, label %8, label %10, !dbg !1395

; <label>:8:                                      ; preds = %0
  %9 = call i32 @window_refnum_next(i32 0, i32 1), !dbg !1396
  store i32 %9, i32* %1, align 4, !dbg !1398
  br label %10, !dbg !1399

; <label>:10:                                     ; preds = %8, %0
  %11 = load i32, i32* %1, align 4, !dbg !1400
  %12 = call %struct._WINDOW_REC* @window_find_refnum(i32 %11), !dbg !1401
  call void @window_set_active(%struct._WINDOW_REC* %12), !dbg !1402
  ret void, !dbg !1404
}

; Function Attrs: nounwind uwtable
define internal void @cmd_window_next() #0 !dbg !1405 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1406, metadata !709), !dbg !1407
  %2 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1408
  %3 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %2, i32 0, i32 0, !dbg !1409
  %4 = load i32, i32* %3, align 8, !dbg !1409
  %5 = call i32 @window_refnum_next(i32 %4, i32 1), !dbg !1410
  store i32 %5, i32* %1, align 4, !dbg !1411
  %6 = load i32, i32* %1, align 4, !dbg !1412
  %7 = icmp slt i32 %6, 1, !dbg !1414
  br i1 %7, label %8, label %10, !dbg !1415

; <label>:8:                                      ; preds = %0
  %9 = call i32 @windows_refnum_last(), !dbg !1416
  store i32 %9, i32* %1, align 4, !dbg !1418
  br label %10, !dbg !1419

; <label>:10:                                     ; preds = %8, %0
  %11 = load i32, i32* %1, align 4, !dbg !1420
  %12 = call %struct._WINDOW_REC* @window_find_refnum(i32 %11), !dbg !1421
  call void @window_set_active(%struct._WINDOW_REC* %12), !dbg !1422
  ret void, !dbg !1424
}

; Function Attrs: nounwind uwtable
define internal void @cmd_window_last() #0 !dbg !1425 {
  %1 = load %struct._GSList*, %struct._GSList** @windows, align 8, !dbg !1426
  %2 = getelementptr inbounds %struct._GSList, %struct._GSList* %1, i32 0, i32 1, !dbg !1428
  %3 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !1428
  %4 = icmp ne %struct._GSList* %3, null, !dbg !1429
  br i1 %4, label %5, label %12, !dbg !1430

; <label>:5:                                      ; preds = %0
  %6 = load %struct._GSList*, %struct._GSList** @windows, align 8, !dbg !1431
  %7 = getelementptr inbounds %struct._GSList, %struct._GSList* %6, i32 0, i32 1, !dbg !1432
  %8 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1432
  %9 = getelementptr inbounds %struct._GSList, %struct._GSList* %8, i32 0, i32 0, !dbg !1433
  %10 = load i8*, i8** %9, align 8, !dbg !1433
  %11 = bitcast i8* %10 to %struct._WINDOW_REC*, !dbg !1431
  call void @window_set_active(%struct._WINDOW_REC* %11), !dbg !1434
  br label %12, !dbg !1434

; <label>:12:                                     ; preds = %5, %0
  ret void, !dbg !1435
}

; Function Attrs: nounwind uwtable
define internal void @cmd_window_level(i8*) #0 !dbg !1436 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1437, metadata !709), !dbg !1438
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1439, metadata !709), !dbg !1440
  br label %4, !dbg !1441, !llvm.loop !1442

; <label>:4:                                      ; preds = %1
  %5 = load i8*, i8** %2, align 8, !dbg !1443
  %6 = icmp ne i8* %5, null, !dbg !1447
  br i1 %6, label %7, label %8, !dbg !1443

; <label>:7:                                      ; preds = %4
  br label %9, !dbg !1448

; <label>:8:                                      ; preds = %4
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.cmd_window_level, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i32 0, i32 0)), !dbg !1451
  br label %33, !dbg !1454

; <label>:9:                                      ; preds = %7
  br label %10, !dbg !1455

; <label>:10:                                     ; preds = %9
  %11 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1457
  %12 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1458
  %13 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %12, i32 0, i32 9, !dbg !1459
  %14 = load i32, i32* %13, align 8, !dbg !1459
  %15 = load i8*, i8** %2, align 8, !dbg !1460
  %16 = call i32 @combine_level(i32 %14, i8* %15), !dbg !1461
  call void @window_set_level(%struct._WINDOW_REC* %11, i32 %16), !dbg !1462
  %17 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1464
  %18 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %17, i32 0, i32 9, !dbg !1465
  %19 = load i32, i32* %18, align 8, !dbg !1465
  %20 = icmp eq i32 %19, 0, !dbg !1466
  br i1 %20, label %21, label %23, !dbg !1464

; <label>:21:                                     ; preds = %10
  %22 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0)), !dbg !1467
  br label %28, !dbg !1468

; <label>:23:                                     ; preds = %10
  %24 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1469
  %25 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %24, i32 0, i32 9, !dbg !1470
  %26 = load i32, i32* %25, align 8, !dbg !1470
  %27 = call i8* @bits2level(i32 %26), !dbg !1471
  br label %28, !dbg !1472

; <label>:28:                                     ; preds = %23, %21
  %29 = phi i8* [ %22, %21 ], [ %27, %23 ], !dbg !1474
  store i8* %29, i8** %3, align 8, !dbg !1476
  %30 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1477
  %31 = load i8*, i8** %3, align 8, !dbg !1478
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), %struct._WINDOW_REC* %30, i32 262144, i32 13, i8* %31), !dbg !1479
  %32 = load i8*, i8** %3, align 8, !dbg !1480
  call void @g_free(i8* %32), !dbg !1481
  br label %33, !dbg !1482

; <label>:33:                                     ; preds = %28, %8
  ret void, !dbg !1483
}

; Function Attrs: nounwind uwtable
define internal void @cmd_window_immortal(i8*) #0 !dbg !1484 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1485, metadata !709), !dbg !1486
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1487, metadata !709), !dbg !1488
  %4 = load i8*, i8** %2, align 8, !dbg !1489
  %5 = load i8, i8* %4, align 1, !dbg !1491
  %6 = sext i8 %5 to i32, !dbg !1491
  %7 = icmp eq i32 %6, 0, !dbg !1492
  br i1 %7, label %8, label %14, !dbg !1493

; <label>:8:                                      ; preds = %1
  %9 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1494
  %10 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %9, i32 0, i32 11, !dbg !1495
  %11 = load i8, i8* %10, align 8, !dbg !1495
  %12 = and i8 %11, 1, !dbg !1495
  %13 = zext i8 %12 to i32, !dbg !1495
  store i32 %13, i32* %3, align 4, !dbg !1496
  br label %42, !dbg !1497

; <label>:14:                                     ; preds = %1
  %15 = load i8*, i8** %2, align 8, !dbg !1498
  %16 = call i32 @g_ascii_strcasecmp(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i32 0, i32 0)), !dbg !1500
  %17 = icmp eq i32 %16, 0, !dbg !1501
  br i1 %17, label %18, label %19, !dbg !1502

; <label>:18:                                     ; preds = %14
  store i32 1, i32* %3, align 4, !dbg !1503
  br label %41, !dbg !1504

; <label>:19:                                     ; preds = %14
  %20 = load i8*, i8** %2, align 8, !dbg !1505
  %21 = call i32 @g_ascii_strcasecmp(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0)), !dbg !1507
  %22 = icmp eq i32 %21, 0, !dbg !1508
  br i1 %22, label %23, label %24, !dbg !1509

; <label>:23:                                     ; preds = %19
  store i32 0, i32* %3, align 4, !dbg !1510
  br label %40, !dbg !1511

; <label>:24:                                     ; preds = %19
  %25 = load i8*, i8** %2, align 8, !dbg !1512
  %26 = call i32 @g_ascii_strcasecmp(i8* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0)), !dbg !1514
  %27 = icmp eq i32 %26, 0, !dbg !1515
  br i1 %27, label %28, label %37, !dbg !1516

; <label>:28:                                     ; preds = %24
  %29 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1517
  %30 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %29, i32 0, i32 11, !dbg !1518
  %31 = load i8, i8* %30, align 8, !dbg !1518
  %32 = and i8 %31, 1, !dbg !1518
  %33 = zext i8 %32 to i32, !dbg !1518
  %34 = icmp ne i32 %33, 0, !dbg !1519
  %35 = xor i1 %34, true, !dbg !1519
  %36 = zext i1 %35 to i32, !dbg !1519
  store i32 %36, i32* %3, align 4, !dbg !1520
  br label %39, !dbg !1521

; <label>:37:                                     ; preds = %24
  %38 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1522
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), %struct._WINDOW_REC* %38, i32 1048576, i32 205), !dbg !1524
  br label %51, !dbg !1525

; <label>:39:                                     ; preds = %28
  br label %40

; <label>:40:                                     ; preds = %39, %23
  br label %41

; <label>:41:                                     ; preds = %40, %18
  br label %42

; <label>:42:                                     ; preds = %41, %8
  %43 = load i32, i32* %3, align 4, !dbg !1526
  %44 = icmp ne i32 %43, 0, !dbg !1526
  br i1 %44, label %45, label %48, !dbg !1528

; <label>:45:                                     ; preds = %42
  %46 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1529
  call void @window_set_immortal(%struct._WINDOW_REC* %46, i32 1), !dbg !1531
  %47 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1532
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), %struct._WINDOW_REC* %47, i32 262144, i32 14), !dbg !1533
  br label %51, !dbg !1534

; <label>:48:                                     ; preds = %42
  %49 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1535
  call void @window_set_immortal(%struct._WINDOW_REC* %49, i32 0), !dbg !1537
  %50 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1538
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), %struct._WINDOW_REC* %50, i32 262144, i32 15), !dbg !1539
  br label %51

; <label>:51:                                     ; preds = %37, %48, %45
  ret void, !dbg !1540
}

; Function Attrs: nounwind uwtable
define internal void @cmd_window_item(i8*, i8*, %struct._WI_ITEM_REC*) #0 !dbg !1541 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1542, metadata !709), !dbg !1543
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1544, metadata !709), !dbg !1545
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !1546, metadata !709), !dbg !1547
  br label %7, !dbg !1548

; <label>:7:                                      ; preds = %12, %3
  %8 = load i8*, i8** %4, align 8, !dbg !1549
  %9 = load i8, i8* %8, align 1, !dbg !1551
  %10 = sext i8 %9 to i32, !dbg !1551
  %11 = icmp eq i32 %10, 32, !dbg !1552
  br i1 %11, label %12, label %15, !dbg !1553

; <label>:12:                                     ; preds = %7
  %13 = load i8*, i8** %4, align 8, !dbg !1554
  %14 = getelementptr inbounds i8, i8* %13, i32 1, !dbg !1554
  store i8* %14, i8** %4, align 8, !dbg !1554
  br label %7, !dbg !1556, !llvm.loop !1557

; <label>:15:                                     ; preds = %7
  %16 = load i8*, i8** %4, align 8, !dbg !1558
  %17 = call i32 @is_numeric(i8* %16, i8 signext 0), !dbg !1560
  %18 = icmp ne i32 %17, 0, !dbg !1560
  br i1 %18, label %19, label %24, !dbg !1561

; <label>:19:                                     ; preds = %15
  %20 = load i8*, i8** %4, align 8, !dbg !1562
  %21 = load i8*, i8** %5, align 8, !dbg !1563
  %22 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1564
  %23 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.59, i32 0, i32 0), i32 3, i8* %20, i8* %21, %struct._WI_ITEM_REC* %22), !dbg !1565
  br label %29, !dbg !1565

; <label>:24:                                     ; preds = %15
  %25 = load i8*, i8** %4, align 8, !dbg !1566
  %26 = load i8*, i8** %5, align 8, !dbg !1567
  %27 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1568
  %28 = bitcast %struct._WI_ITEM_REC* %27 to i8*, !dbg !1568
  call void @command_runsub(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i8* %25, i8* %26, i8* %28), !dbg !1569
  br label %29

; <label>:29:                                     ; preds = %24, %19
  ret void, !dbg !1570
}

; Function Attrs: nounwind uwtable
define internal void @cmd_window_item_prev() #0 !dbg !1571 {
  %1 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1572
  call void @window_item_prev(%struct._WINDOW_REC* %1), !dbg !1573
  ret void, !dbg !1574
}

; Function Attrs: nounwind uwtable
define internal void @cmd_window_item_next() #0 !dbg !1575 {
  %1 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1576
  call void @window_item_next(%struct._WINDOW_REC* %1), !dbg !1577
  ret void, !dbg !1578
}

; Function Attrs: nounwind uwtable
define internal void @cmd_window_item_goto(i8*, %struct._SERVER_REC*) #0 !dbg !1579 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca %struct._WI_ITEM_REC*, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1582, metadata !709), !dbg !1583
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !1584, metadata !709), !dbg !1585
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %5, metadata !1586, metadata !709), !dbg !1587
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !1588, metadata !709), !dbg !1589
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1590, metadata !709), !dbg !1591
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1592, metadata !709), !dbg !1593
  %9 = load i8*, i8** %3, align 8, !dbg !1594
  %10 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %9, i8** %7, i32 1, i8** %8), !dbg !1596
  %11 = icmp ne i32 %10, 0, !dbg !1596
  br i1 %11, label %13, label %12, !dbg !1597

; <label>:12:                                     ; preds = %2
  br label %49, !dbg !1598

; <label>:13:                                     ; preds = %2
  %14 = load i8*, i8** %8, align 8, !dbg !1599
  %15 = call i32 @is_numeric(i8* %14, i8 signext 0), !dbg !1601
  %16 = icmp ne i32 %15, 0, !dbg !1601
  br i1 %16, label %17, label %35, !dbg !1602

; <label>:17:                                     ; preds = %13
  %18 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1603
  %19 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %18, i32 0, i32 4, !dbg !1605
  %20 = load %struct._GSList*, %struct._GSList** %19, align 8, !dbg !1605
  %21 = load i8*, i8** %8, align 8, !dbg !1606
  %22 = call i32 @atoi(i8* %21) #5, !dbg !1607
  %23 = sub nsw i32 %22, 1, !dbg !1608
  %24 = call %struct._GSList* @g_slist_nth(%struct._GSList* %20, i32 %23), !dbg !1609
  store %struct._GSList* %24, %struct._GSList** %6, align 8, !dbg !1611
  %25 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1612
  %26 = icmp eq %struct._GSList* %25, null, !dbg !1613
  br i1 %26, label %27, label %28, !dbg !1612

; <label>:27:                                     ; preds = %17
  br label %32, !dbg !1614

; <label>:28:                                     ; preds = %17
  %29 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1615
  %30 = getelementptr inbounds %struct._GSList, %struct._GSList* %29, i32 0, i32 0, !dbg !1617
  %31 = load i8*, i8** %30, align 8, !dbg !1617
  br label %32, !dbg !1618

; <label>:32:                                     ; preds = %28, %27
  %33 = phi i8* [ null, %27 ], [ %31, %28 ], !dbg !1619
  %34 = bitcast i8* %33 to %struct._WI_ITEM_REC*, !dbg !1619
  store %struct._WI_ITEM_REC* %34, %struct._WI_ITEM_REC** %5, align 8, !dbg !1621
  br label %41, !dbg !1622

; <label>:35:                                     ; preds = %13
  %36 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1623
  %37 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1625
  %38 = bitcast %struct._SERVER_REC* %37 to i8*, !dbg !1625
  %39 = load i8*, i8** %8, align 8, !dbg !1626
  %40 = call %struct._WI_ITEM_REC* @window_item_find_window(%struct._WINDOW_REC* %36, i8* %38, i8* %39), !dbg !1627
  store %struct._WI_ITEM_REC* %40, %struct._WI_ITEM_REC** %5, align 8, !dbg !1628
  br label %41

; <label>:41:                                     ; preds = %35, %32
  %42 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %5, align 8, !dbg !1629
  %43 = icmp ne %struct._WI_ITEM_REC* %42, null, !dbg !1631
  br i1 %43, label %44, label %47, !dbg !1632

; <label>:44:                                     ; preds = %41
  %45 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1633
  %46 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %5, align 8, !dbg !1634
  call void @window_item_set_active(%struct._WINDOW_REC* %45, %struct._WI_ITEM_REC* %46), !dbg !1635
  br label %47, !dbg !1635

; <label>:47:                                     ; preds = %44, %41
  %48 = load i8*, i8** %7, align 8, !dbg !1636
  call void @cmd_params_free(i8* %48), !dbg !1637
  br label %49, !dbg !1638

; <label>:49:                                     ; preds = %47, %12
  ret void, !dbg !1639
}

; Function Attrs: nounwind uwtable
define internal void @cmd_window_item_move(i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !1641 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  %7 = alloca %struct._WINDOW_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1644, metadata !709), !dbg !1645
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !1646, metadata !709), !dbg !1647
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !1648, metadata !709), !dbg !1649
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %7, metadata !1650, metadata !709), !dbg !1651
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1652, metadata !709), !dbg !1653
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1654, metadata !709), !dbg !1655
  %10 = load i8*, i8** %4, align 8, !dbg !1656
  %11 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %10, i8** %8, i32 1, i8** %9), !dbg !1658
  %12 = icmp ne i32 %11, 0, !dbg !1658
  br i1 %12, label %14, label %13, !dbg !1659

; <label>:13:                                     ; preds = %3
  br label %39, !dbg !1660

; <label>:14:                                     ; preds = %3
  %15 = load i8*, i8** %9, align 8, !dbg !1661
  %16 = call i32 @is_numeric(i8* %15, i8 signext 0), !dbg !1663
  %17 = icmp ne i32 %16, 0, !dbg !1663
  br i1 %17, label %18, label %22, !dbg !1664

; <label>:18:                                     ; preds = %14
  %19 = load i8*, i8** %9, align 8, !dbg !1665
  %20 = call i32 @atoi(i8* %19) #5, !dbg !1667
  %21 = call %struct._WINDOW_REC* @window_find_refnum(i32 %20), !dbg !1668
  store %struct._WINDOW_REC* %21, %struct._WINDOW_REC** %7, align 8, !dbg !1670
  br label %28, !dbg !1671

; <label>:22:                                     ; preds = %14
  %23 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1672
  %24 = bitcast %struct._SERVER_REC* %23 to i8*, !dbg !1672
  %25 = load i8*, i8** %9, align 8, !dbg !1674
  %26 = call %struct._WI_ITEM_REC* @window_item_find(i8* %24, i8* %25), !dbg !1675
  store %struct._WI_ITEM_REC* %26, %struct._WI_ITEM_REC** %6, align 8, !dbg !1676
  %27 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1677
  store %struct._WINDOW_REC* %27, %struct._WINDOW_REC** %7, align 8, !dbg !1678
  br label %28

; <label>:28:                                     ; preds = %22, %18
  %29 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %7, align 8, !dbg !1679
  %30 = icmp ne %struct._WINDOW_REC* %29, null, !dbg !1681
  br i1 %30, label %31, label %37, !dbg !1682

; <label>:31:                                     ; preds = %28
  %32 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1683
  %33 = icmp ne %struct._WI_ITEM_REC* %32, null, !dbg !1685
  br i1 %33, label %34, label %37, !dbg !1686

; <label>:34:                                     ; preds = %31
  %35 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %7, align 8, !dbg !1687
  %36 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1688
  call void @window_item_set_active(%struct._WINDOW_REC* %35, %struct._WI_ITEM_REC* %36), !dbg !1689
  br label %37, !dbg !1689

; <label>:37:                                     ; preds = %34, %31, %28
  %38 = load i8*, i8** %8, align 8, !dbg !1690
  call void @cmd_params_free(i8* %38), !dbg !1691
  br label %39, !dbg !1692

; <label>:39:                                     ; preds = %37, %13
  ret void, !dbg !1693
}

; Function Attrs: nounwind uwtable
define internal void @cmd_window_number(i8*) #0 !dbg !1695 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._GHashTable*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1696, metadata !709), !dbg !1697
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %3, metadata !1698, metadata !709), !dbg !1699
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1700, metadata !709), !dbg !1701
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1702, metadata !709), !dbg !1703
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1704, metadata !709), !dbg !1705
  %7 = load i8*, i8** %2, align 8, !dbg !1706
  %8 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %7, i8** %5, i32 16385, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i32 0, i32 0), %struct._GHashTable** %3, i8** %4), !dbg !1708
  %9 = icmp ne i32 %8, 0, !dbg !1708
  br i1 %9, label %11, label %10, !dbg !1709

; <label>:10:                                     ; preds = %1
  br label %48, !dbg !1710

; <label>:11:                                     ; preds = %1
  %12 = load i8*, i8** %4, align 8, !dbg !1711
  %13 = load i8, i8* %12, align 1, !dbg !1713
  %14 = sext i8 %13 to i32, !dbg !1713
  %15 = icmp eq i32 %14, 0, !dbg !1714
  br i1 %15, label %16, label %23, !dbg !1715

; <label>:16:                                     ; preds = %11
  br label %17, !dbg !1716, !llvm.loop !1717

; <label>:17:                                     ; preds = %16
  %18 = load i8*, i8** %5, align 8, !dbg !1718
  call void @cmd_params_free(i8* %18), !dbg !1721
  br label %19, !dbg !1722, !llvm.loop !1723

; <label>:19:                                     ; preds = %17
  %20 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !1725
  call void @signal_stop(), !dbg !1728
  br label %48, !dbg !1730
                                                  ; No predecessors!
  br label %22, !dbg !1731

; <label>:22:                                     ; preds = %21
  br label %23, !dbg !1733

; <label>:23:                                     ; preds = %22, %11
  %24 = load i8*, i8** %4, align 8, !dbg !1735
  %25 = call i32 @atoi(i8* %24) #5, !dbg !1736
  store i32 %25, i32* %6, align 4, !dbg !1737
  %26 = load i32, i32* %6, align 4, !dbg !1738
  %27 = icmp slt i32 %26, 1, !dbg !1740
  br i1 %27, label %28, label %30, !dbg !1741

; <label>:28:                                     ; preds = %23
  %29 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1742
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), %struct._WINDOW_REC* %29, i32 262144, i32 8), !dbg !1744
  br label %46, !dbg !1745

; <label>:30:                                     ; preds = %23
  %31 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1746
  %32 = load i32, i32* %6, align 4, !dbg !1748
  call void @window_set_refnum(%struct._WINDOW_REC* %31, i32 %32), !dbg !1749
  %33 = load %struct._GHashTable*, %struct._GHashTable** %3, align 8, !dbg !1750
  %34 = call i8* @g_hash_table_lookup(%struct._GHashTable* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0)), !dbg !1751
  %35 = icmp ne i8* %34, null, !dbg !1752
  %36 = zext i1 %35 to i32, !dbg !1752
  %37 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1753
  %38 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %37, i32 0, i32 11, !dbg !1754
  %39 = trunc i32 %36 to i8, !dbg !1755
  %40 = load i8, i8* %38, align 8, !dbg !1755
  %41 = and i8 %39, 1, !dbg !1755
  %42 = shl i8 %41, 1, !dbg !1755
  %43 = and i8 %40, -3, !dbg !1755
  %44 = or i8 %43, %42, !dbg !1755
  store i8 %44, i8* %38, align 8, !dbg !1755
  %45 = zext i8 %41 to i32, !dbg !1755
  br label %46

; <label>:46:                                     ; preds = %30, %28
  %47 = load i8*, i8** %5, align 8, !dbg !1756
  call void @cmd_params_free(i8* %47), !dbg !1757
  br label %48, !dbg !1758

; <label>:48:                                     ; preds = %46, %19, %10
  ret void, !dbg !1759
}

; Function Attrs: nounwind uwtable
define internal void @cmd_window_name(i8*) #0 !dbg !1761 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._WINDOW_REC*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1762, metadata !709), !dbg !1763
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !1764, metadata !709), !dbg !1765
  %4 = load i8*, i8** %2, align 8, !dbg !1766
  %5 = call %struct._WINDOW_REC* @window_find_name(i8* %4), !dbg !1767
  store %struct._WINDOW_REC* %5, %struct._WINDOW_REC** %3, align 8, !dbg !1768
  %6 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1769
  %7 = icmp eq %struct._WINDOW_REC* %6, null, !dbg !1771
  br i1 %7, label %12, label %8, !dbg !1772

; <label>:8:                                      ; preds = %1
  %9 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1773
  %10 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1775
  %11 = icmp eq %struct._WINDOW_REC* %9, %10, !dbg !1776
  br i1 %11, label %12, label %15, !dbg !1777

; <label>:12:                                     ; preds = %8, %1
  %13 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1778
  %14 = load i8*, i8** %2, align 8, !dbg !1779
  call void @window_set_name(%struct._WINDOW_REC* %13, i8* %14), !dbg !1780
  br label %31, !dbg !1780

; <label>:15:                                     ; preds = %8
  %16 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1781
  %17 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %16, i32 0, i32 1, !dbg !1783
  %18 = load i8*, i8** %17, align 8, !dbg !1783
  %19 = icmp eq i8* %18, null, !dbg !1784
  br i1 %19, label %27, label %20, !dbg !1785

; <label>:20:                                     ; preds = %15
  %21 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1786
  %22 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %21, i32 0, i32 1, !dbg !1787
  %23 = load i8*, i8** %22, align 8, !dbg !1787
  %24 = load i8*, i8** %2, align 8, !dbg !1788
  %25 = call i32 @g_strcmp0(i8* %23, i8* %24), !dbg !1789
  %26 = icmp ne i32 %25, 0, !dbg !1790
  br i1 %26, label %27, label %30, !dbg !1791

; <label>:27:                                     ; preds = %20, %15
  %28 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1792
  %29 = load i8*, i8** %2, align 8, !dbg !1794
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), %struct._WINDOW_REC* %28, i32 1048576, i32 12, i8* %29), !dbg !1795
  br label %30, !dbg !1796

; <label>:30:                                     ; preds = %27, %20
  br label %31

; <label>:31:                                     ; preds = %30, %12
  ret void, !dbg !1797
}

; Function Attrs: nounwind uwtable
define internal void @cmd_window_move(i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !1798 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1799, metadata !709), !dbg !1800
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !1801, metadata !709), !dbg !1802
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !1803, metadata !709), !dbg !1804
  %7 = load i8*, i8** %4, align 8, !dbg !1805
  %8 = call i32 @is_numeric(i8* %7, i8 signext 0), !dbg !1807
  %9 = icmp ne i32 %8, 0, !dbg !1807
  br i1 %9, label %16, label %10, !dbg !1808

; <label>:10:                                     ; preds = %3
  %11 = load i8*, i8** %4, align 8, !dbg !1809
  %12 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1811
  %13 = bitcast %struct._SERVER_REC* %12 to i8*, !dbg !1811
  %14 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1812
  %15 = bitcast %struct._WI_ITEM_REC* %14 to i8*, !dbg !1812
  call void @command_runsub(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i8* %11, i8* %13, i8* %15), !dbg !1813
  br label %19, !dbg !1814

; <label>:16:                                     ; preds = %3
  %17 = load i8*, i8** %4, align 8, !dbg !1815
  %18 = call i32 @atoi(i8* %17) #5, !dbg !1816
  call void @active_window_move_to(i32 %18), !dbg !1817
  br label %19, !dbg !1819

; <label>:19:                                     ; preds = %16, %10
  ret void, !dbg !1820
}

; Function Attrs: nounwind uwtable
define internal void @cmd_window_move_prev() #0 !dbg !1821 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1822, metadata !709), !dbg !1823
  %2 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1824
  %3 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %2, i32 0, i32 0, !dbg !1825
  %4 = load i32, i32* %3, align 8, !dbg !1825
  %5 = call i32 @window_refnum_prev(i32 %4, i32 0), !dbg !1826
  store i32 %5, i32* %1, align 4, !dbg !1827
  %6 = load i32, i32* %1, align 4, !dbg !1828
  %7 = icmp ne i32 %6, -1, !dbg !1830
  br i1 %7, label %8, label %11, !dbg !1831

; <label>:8:                                      ; preds = %0
  %9 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1832
  %10 = load i32, i32* %1, align 4, !dbg !1834
  call void @window_set_refnum(%struct._WINDOW_REC* %9, i32 %10), !dbg !1835
  br label %13, !dbg !1836

; <label>:11:                                     ; preds = %0
  %12 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1837
  call void @window_refnums_move_left(%struct._WINDOW_REC* %12), !dbg !1838
  br label %13, !dbg !1839

; <label>:13:                                     ; preds = %11, %8
  ret void, !dbg !1840
}

; Function Attrs: nounwind uwtable
define internal void @cmd_window_move_next() #0 !dbg !1842 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1843, metadata !709), !dbg !1844
  %2 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1845
  %3 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %2, i32 0, i32 0, !dbg !1846
  %4 = load i32, i32* %3, align 8, !dbg !1846
  %5 = call i32 @window_refnum_next(i32 %4, i32 0), !dbg !1847
  store i32 %5, i32* %1, align 4, !dbg !1848
  %6 = load i32, i32* %1, align 4, !dbg !1849
  %7 = icmp ne i32 %6, -1, !dbg !1851
  br i1 %7, label %8, label %11, !dbg !1852

; <label>:8:                                      ; preds = %0
  %9 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1853
  %10 = load i32, i32* %1, align 4, !dbg !1855
  call void @window_set_refnum(%struct._WINDOW_REC* %9, i32 %10), !dbg !1856
  br label %13, !dbg !1857

; <label>:11:                                     ; preds = %0
  %12 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1858
  call void @window_refnums_move_right(%struct._WINDOW_REC* %12), !dbg !1859
  br label %13, !dbg !1860

; <label>:13:                                     ; preds = %11, %8
  ret void, !dbg !1861
}

; Function Attrs: nounwind uwtable
define internal void @cmd_window_move_first() #0 !dbg !1863 {
  call void @active_window_move_to(i32 1), !dbg !1864
  ret void, !dbg !1865
}

; Function Attrs: nounwind uwtable
define internal void @cmd_window_move_last() #0 !dbg !1866 {
  %1 = call i32 @windows_refnum_last(), !dbg !1867
  call void @active_window_move_to(i32 %1), !dbg !1868
  ret void, !dbg !1870
}

; Function Attrs: nounwind uwtable
define internal void @cmd_window_list() #0 !dbg !1871 {
  %1 = alloca %struct._GSList*, align 8
  %2 = alloca %struct._GSList*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._WINDOW_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %1, metadata !1872, metadata !709), !dbg !1873
  call void @llvm.dbg.declare(metadata %struct._GSList** %2, metadata !1874, metadata !709), !dbg !1875
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1876, metadata !709), !dbg !1877
  %5 = call %struct._GSList* @windows_get_sorted(), !dbg !1878
  store %struct._GSList* %5, %struct._GSList** %2, align 8, !dbg !1879
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 17), !dbg !1880
  %6 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !1881
  store %struct._GSList* %6, %struct._GSList** %1, align 8, !dbg !1883
  br label %7, !dbg !1884

; <label>:7:                                      ; preds = %61, %0
  %8 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1885
  %9 = icmp ne %struct._GSList* %8, null, !dbg !1888
  br i1 %9, label %10, label %65, !dbg !1889

; <label>:10:                                     ; preds = %7
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %4, metadata !1890, metadata !709), !dbg !1892
  %11 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1893
  %12 = getelementptr inbounds %struct._GSList, %struct._GSList* %11, i32 0, i32 0, !dbg !1894
  %13 = load i8*, i8** %12, align 8, !dbg !1894
  %14 = bitcast i8* %13 to %struct._WINDOW_REC*, !dbg !1893
  store %struct._WINDOW_REC* %14, %struct._WINDOW_REC** %4, align 8, !dbg !1892
  %15 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !1895
  %16 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %15, i32 0, i32 9, !dbg !1896
  %17 = load i32, i32* %16, align 8, !dbg !1896
  %18 = call i8* @bits2level(i32 %17), !dbg !1897
  store i8* %18, i8** %3, align 8, !dbg !1898
  %19 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !1899
  %20 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %19, i32 0, i32 0, !dbg !1900
  %21 = load i32, i32* %20, align 8, !dbg !1900
  %22 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !1901
  %23 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %22, i32 0, i32 1, !dbg !1902
  %24 = load i8*, i8** %23, align 8, !dbg !1902
  %25 = icmp eq i8* %24, null, !dbg !1903
  br i1 %25, label %26, label %27, !dbg !1901

; <label>:26:                                     ; preds = %10
  br label %31, !dbg !1904

; <label>:27:                                     ; preds = %10
  %28 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !1906
  %29 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %28, i32 0, i32 1, !dbg !1908
  %30 = load i8*, i8** %29, align 8, !dbg !1908
  br label %31, !dbg !1909

; <label>:31:                                     ; preds = %27, %26
  %32 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.41, i32 0, i32 0), %26 ], [ %30, %27 ], !dbg !1910
  %33 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !1912
  %34 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %33, i32 0, i32 5, !dbg !1913
  %35 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %34, align 8, !dbg !1913
  %36 = icmp eq %struct._WI_ITEM_REC* %35, null, !dbg !1914
  br i1 %36, label %37, label %38, !dbg !1912

; <label>:37:                                     ; preds = %31
  br label %44, !dbg !1915

; <label>:38:                                     ; preds = %31
  %39 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !1917
  %40 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %39, i32 0, i32 5, !dbg !1919
  %41 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %40, align 8, !dbg !1919
  %42 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %41, i32 0, i32 5, !dbg !1920
  %43 = load i8*, i8** %42, align 8, !dbg !1920
  br label %44, !dbg !1921

; <label>:44:                                     ; preds = %38, %37
  %45 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.41, i32 0, i32 0), %37 ], [ %43, %38 ], !dbg !1922
  %46 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !1924
  %47 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %46, i32 0, i32 6, !dbg !1925
  %48 = load %struct._SERVER_REC*, %struct._SERVER_REC** %47, align 8, !dbg !1925
  %49 = icmp eq %struct._SERVER_REC* %48, null, !dbg !1926
  br i1 %49, label %50, label %51, !dbg !1924

; <label>:50:                                     ; preds = %44
  br label %57, !dbg !1927

; <label>:51:                                     ; preds = %44
  %52 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !1929
  %53 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %52, i32 0, i32 6, !dbg !1931
  %54 = load %struct._SERVER_REC*, %struct._SERVER_REC** %53, align 8, !dbg !1931
  %55 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %54, i32 0, i32 6, !dbg !1932
  %56 = load i8*, i8** %55, align 8, !dbg !1932
  br label %57, !dbg !1933

; <label>:57:                                     ; preds = %51, %50
  %58 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.41, i32 0, i32 0), %50 ], [ %56, %51 ], !dbg !1934
  %59 = load i8*, i8** %3, align 8, !dbg !1936
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 18, i32 %21, i8* %32, i8* %45, i8* %58, i8* %59), !dbg !1937
  %60 = load i8*, i8** %3, align 8, !dbg !1938
  call void @g_free(i8* %60), !dbg !1939
  br label %61, !dbg !1940

; <label>:61:                                     ; preds = %57
  %62 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1941
  %63 = getelementptr inbounds %struct._GSList, %struct._GSList* %62, i32 0, i32 1, !dbg !1943
  %64 = load %struct._GSList*, %struct._GSList** %63, align 8, !dbg !1943
  store %struct._GSList* %64, %struct._GSList** %1, align 8, !dbg !1944
  br label %7, !dbg !1945, !llvm.loop !1946

; <label>:65:                                     ; preds = %7
  %66 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !1948
  call void @g_slist_free(%struct._GSList* %66), !dbg !1949
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 19), !dbg !1950
  ret void, !dbg !1951
}

; Function Attrs: nounwind uwtable
define internal void @cmd_window_theme(i8*) #0 !dbg !1952 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.THEME_REC*, align 8
  %4 = alloca %struct._GHashTable*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1953, metadata !709), !dbg !1954
  call void @llvm.dbg.declare(metadata %struct.THEME_REC** %3, metadata !1955, metadata !709), !dbg !1975
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %4, metadata !1976, metadata !709), !dbg !1977
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1978, metadata !709), !dbg !1979
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1980, metadata !709), !dbg !1981
  %7 = load i8*, i8** %2, align 8, !dbg !1982
  %8 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %7, i8** %6, i32 16385, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), %struct._GHashTable** %4, i8** %5), !dbg !1984
  %9 = icmp ne i32 %8, 0, !dbg !1984
  br i1 %9, label %11, label %10, !dbg !1985

; <label>:10:                                     ; preds = %1
  br label %85, !dbg !1986

; <label>:11:                                     ; preds = %1
  %12 = load %struct._GHashTable*, %struct._GHashTable** %4, align 8, !dbg !1987
  %13 = call i8* @g_hash_table_lookup(%struct._GHashTable* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0)), !dbg !1989
  %14 = icmp ne i8* %13, null, !dbg !1990
  br i1 %14, label %15, label %30, !dbg !1991

; <label>:15:                                     ; preds = %11
  br label %16, !dbg !1992, !llvm.loop !1994

; <label>:16:                                     ; preds = %15
  %17 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1995
  %18 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %17, i32 0, i32 18, !dbg !1999
  %19 = load i8*, i8** %18, align 8, !dbg !1999
  %20 = icmp ne i8* %19, null, !dbg !1995
  br i1 %20, label %21, label %27, !dbg !1995

; <label>:21:                                     ; preds = %16
  %22 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !2000
  %23 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %22, i32 0, i32 18, !dbg !2003
  %24 = load i8*, i8** %23, align 8, !dbg !2003
  call void @g_free(i8* %24), !dbg !2004
  %25 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !2005
  %26 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %25, i32 0, i32 18, !dbg !2006
  store i8* null, i8** %26, align 8, !dbg !2007
  br label %27, !dbg !2008

; <label>:27:                                     ; preds = %21, %16
  br label %28, !dbg !2009

; <label>:28:                                     ; preds = %27
  %29 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !2011
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), %struct._WINDOW_REC* %29, i32 262144, i32 181), !dbg !2012
  br label %83, !dbg !2013

; <label>:30:                                     ; preds = %11
  %31 = load i8*, i8** %5, align 8, !dbg !2014
  %32 = load i8, i8* %31, align 1, !dbg !2017
  %33 = sext i8 %32 to i32, !dbg !2017
  %34 = icmp eq i32 %33, 0, !dbg !2018
  br i1 %34, label %35, label %55, !dbg !2017

; <label>:35:                                     ; preds = %30
  %36 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !2019
  %37 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %36, i32 0, i32 19, !dbg !2022
  %38 = load i8*, i8** %37, align 8, !dbg !2022
  %39 = icmp eq i8* %38, null, !dbg !2023
  br i1 %39, label %40, label %42, !dbg !2024

; <label>:40:                                     ; preds = %35
  %41 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !2025
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), %struct._WINDOW_REC* %41, i32 262144, i32 179), !dbg !2027
  br label %54, !dbg !2028

; <label>:42:                                     ; preds = %35
  %43 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !2029
  %44 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %43, i32 0, i32 19, !dbg !2031
  %45 = load i8*, i8** %44, align 8, !dbg !2031
  %46 = bitcast i8* %45 to %struct.THEME_REC*, !dbg !2029
  store %struct.THEME_REC* %46, %struct.THEME_REC** %3, align 8, !dbg !2032
  %47 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !2033
  %48 = load %struct.THEME_REC*, %struct.THEME_REC** %3, align 8, !dbg !2034
  %49 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %48, i32 0, i32 2, !dbg !2035
  %50 = load i8*, i8** %49, align 8, !dbg !2035
  %51 = load %struct.THEME_REC*, %struct.THEME_REC** %3, align 8, !dbg !2036
  %52 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %51, i32 0, i32 1, !dbg !2037
  %53 = load i8*, i8** %52, align 8, !dbg !2037
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), %struct._WINDOW_REC* %47, i32 262144, i32 178, i8* %50, i8* %53), !dbg !2038
  br label %54

; <label>:54:                                     ; preds = %42, %40
  br label %82, !dbg !2039

; <label>:55:                                     ; preds = %30
  %56 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !2040
  %57 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %56, i32 0, i32 18, !dbg !2042
  %58 = load i8*, i8** %57, align 8, !dbg !2042
  call void @g_free(i8* %58), !dbg !2043
  %59 = load i8*, i8** %2, align 8, !dbg !2044
  %60 = call noalias i8* @g_strdup(i8* %59), !dbg !2045
  %61 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !2046
  %62 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %61, i32 0, i32 18, !dbg !2047
  store i8* %60, i8** %62, align 8, !dbg !2048
  %63 = load i8*, i8** %2, align 8, !dbg !2049
  %64 = call %struct.THEME_REC* @theme_load(i8* %63), !dbg !2050
  store %struct.THEME_REC* %64, %struct.THEME_REC** %3, align 8, !dbg !2051
  %65 = bitcast %struct.THEME_REC* %64 to i8*, !dbg !2052
  %66 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !2053
  %67 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %66, i32 0, i32 19, !dbg !2054
  store i8* %65, i8** %67, align 8, !dbg !2055
  %68 = load %struct.THEME_REC*, %struct.THEME_REC** %3, align 8, !dbg !2056
  %69 = icmp ne %struct.THEME_REC* %68, null, !dbg !2058
  br i1 %69, label %70, label %78, !dbg !2059

; <label>:70:                                     ; preds = %55
  %71 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !2060
  %72 = load %struct.THEME_REC*, %struct.THEME_REC** %3, align 8, !dbg !2062
  %73 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %72, i32 0, i32 2, !dbg !2063
  %74 = load i8*, i8** %73, align 8, !dbg !2063
  %75 = load %struct.THEME_REC*, %struct.THEME_REC** %3, align 8, !dbg !2064
  %76 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %75, i32 0, i32 1, !dbg !2065
  %77 = load i8*, i8** %76, align 8, !dbg !2065
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), %struct._WINDOW_REC* %71, i32 262144, i32 180, i8* %74, i8* %77), !dbg !2066
  br label %81, !dbg !2067

; <label>:78:                                     ; preds = %55
  %79 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !2068
  %80 = load i8*, i8** %2, align 8, !dbg !2070
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), %struct._WINDOW_REC* %79, i32 262144, i32 176, i8* %80), !dbg !2071
  br label %81

; <label>:81:                                     ; preds = %78, %70
  br label %82

; <label>:82:                                     ; preds = %81, %54
  br label %83

; <label>:83:                                     ; preds = %82, %28
  %84 = load i8*, i8** %6, align 8, !dbg !2072
  call void @cmd_params_free(i8* %84), !dbg !2073
  br label %85, !dbg !2074

; <label>:85:                                     ; preds = %83, %10
  ret void, !dbg !2075
}

; Function Attrs: nounwind uwtable
define internal void @cmd_layout(i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !2077 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2078, metadata !709), !dbg !2079
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !2080, metadata !709), !dbg !2081
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !2082, metadata !709), !dbg !2083
  %7 = load i8*, i8** %4, align 8, !dbg !2084
  %8 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !2085
  %9 = bitcast %struct._SERVER_REC* %8 to i8*, !dbg !2085
  %10 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !2086
  %11 = bitcast %struct._WI_ITEM_REC* %10 to i8*, !dbg !2086
  call void @command_runsub(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i8* %7, i8* %9, i8* %11), !dbg !2087
  ret void, !dbg !2088
}

declare void @windows_layout_save() #2

declare void @windows_layout_reset() #2

; Function Attrs: nounwind uwtable
define internal void @cmd_foreach_window(i8*) #0 !dbg !2089 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._WINDOW_REC*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2090, metadata !709), !dbg !2091
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !2092, metadata !709), !dbg !2093
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !2094, metadata !709), !dbg !2095
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2096, metadata !709), !dbg !2097
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2098, metadata !709), !dbg !2099
  %8 = call i8* @settings_get_str(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i32 0, i32 0)), !dbg !2100
  store i8* %8, i8** %5, align 8, !dbg !2101
  %9 = load i8*, i8** %5, align 8, !dbg !2102
  %10 = load i8*, i8** %2, align 8, !dbg !2103
  %11 = load i8, i8* %10, align 1, !dbg !2104
  %12 = sext i8 %11 to i32, !dbg !2104
  %13 = call i8* @strchr(i8* %9, i32 %12) #5, !dbg !2105
  %14 = icmp ne i8* %13, null, !dbg !2106
  br i1 %14, label %15, label %18, !dbg !2105

; <label>:15:                                     ; preds = %1
  %16 = load i8*, i8** %2, align 8, !dbg !2107
  %17 = call noalias i8* @g_strdup(i8* %16), !dbg !2109
  br label %24, !dbg !2110

; <label>:18:                                     ; preds = %1
  %19 = load i8*, i8** %5, align 8, !dbg !2111
  %20 = load i8, i8* %19, align 1, !dbg !2112
  %21 = sext i8 %20 to i32, !dbg !2112
  %22 = load i8*, i8** %2, align 8, !dbg !2113
  %23 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i32 0, i32 0), i32 %21, i8* %22), !dbg !2114
  br label %24, !dbg !2115

; <label>:24:                                     ; preds = %18, %15
  %25 = phi i8* [ %17, %15 ], [ %23, %18 ], !dbg !2117
  store i8* %25, i8** %6, align 8, !dbg !2119
  %26 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !2120
  store %struct._WINDOW_REC* %26, %struct._WINDOW_REC** %3, align 8, !dbg !2121
  %27 = load %struct._GSList*, %struct._GSList** @windows, align 8, !dbg !2122
  %28 = call %struct._GSList* @g_slist_copy(%struct._GSList* %27), !dbg !2123
  store %struct._GSList* %28, %struct._GSList** %4, align 8, !dbg !2124
  br label %29, !dbg !2125

; <label>:29:                                     ; preds = %32, %24
  %30 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2126
  %31 = icmp ne %struct._GSList* %30, null, !dbg !2127
  br i1 %31, label %32, label %51, !dbg !2128

; <label>:32:                                     ; preds = %29
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %7, metadata !2129, metadata !709), !dbg !2131
  %33 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2132
  %34 = getelementptr inbounds %struct._GSList, %struct._GSList* %33, i32 0, i32 0, !dbg !2133
  %35 = load i8*, i8** %34, align 8, !dbg !2133
  %36 = bitcast i8* %35 to %struct._WINDOW_REC*, !dbg !2132
  store %struct._WINDOW_REC* %36, %struct._WINDOW_REC** %7, align 8, !dbg !2131
  %37 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %7, align 8, !dbg !2134
  store %struct._WINDOW_REC* %37, %struct._WINDOW_REC** @active_win, align 8, !dbg !2135
  %38 = load i8*, i8** %6, align 8, !dbg !2136
  %39 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %7, align 8, !dbg !2137
  %40 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %39, i32 0, i32 6, !dbg !2138
  %41 = load %struct._SERVER_REC*, %struct._SERVER_REC** %40, align 8, !dbg !2138
  %42 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %7, align 8, !dbg !2139
  %43 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %42, i32 0, i32 5, !dbg !2140
  %44 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %43, align 8, !dbg !2140
  %45 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i32 0, i32 0), i32 3, i8* %38, %struct._SERVER_REC* %41, %struct._WI_ITEM_REC* %44), !dbg !2141
  %46 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2142
  %47 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2143
  %48 = getelementptr inbounds %struct._GSList, %struct._GSList* %47, i32 0, i32 0, !dbg !2144
  %49 = load i8*, i8** %48, align 8, !dbg !2144
  %50 = call %struct._GSList* @g_slist_remove(%struct._GSList* %46, i8* %49), !dbg !2145
  store %struct._GSList* %50, %struct._GSList** %4, align 8, !dbg !2146
  br label %29, !dbg !2147, !llvm.loop !2148

; <label>:51:                                     ; preds = %29
  %52 = load %struct._GSList*, %struct._GSList** @windows, align 8, !dbg !2149
  %53 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !2151
  %54 = bitcast %struct._WINDOW_REC* %53 to i8*, !dbg !2151
  %55 = call %struct._GSList* @g_slist_find(%struct._GSList* %52, i8* %54), !dbg !2152
  %56 = icmp ne %struct._GSList* %55, null, !dbg !2153
  br i1 %56, label %57, label %59, !dbg !2154

; <label>:57:                                     ; preds = %51
  %58 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !2155
  store %struct._WINDOW_REC* %58, %struct._WINDOW_REC** @active_win, align 8, !dbg !2156
  br label %59, !dbg !2157

; <label>:59:                                     ; preds = %57, %51
  %60 = load i8*, i8** %6, align 8, !dbg !2158
  call void @g_free(i8* %60), !dbg !2159
  ret void, !dbg !2160
}

declare void @command_set_options_module(i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @window_commands_deinit() #0 !dbg !2161 {
  call void @command_unbind_full(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, i8*, %struct._WI_ITEM_REC*)* @cmd_window to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2162
  call void @command_unbind_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, i8*, %struct._WI_ITEM_REC*)* @cmd_window_new to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2163
  call void @command_unbind_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_window_close to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2164
  call void @command_unbind_full(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_window_close to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2165
  call void @command_unbind_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_window_server to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2166
  call void @command_unbind_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_window_refnum to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2167
  call void @command_unbind_full(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_window_goto to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2168
  call void @command_unbind_full(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_window_previous to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2169
  call void @command_unbind_full(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_window_next to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2170
  call void @command_unbind_full(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_window_last to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2171
  call void @command_unbind_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_window_level to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2172
  call void @command_unbind_full(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_window_immortal to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2173
  call void @command_unbind_full(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, i8*, %struct._WI_ITEM_REC*)* @cmd_window_item to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2174
  call void @command_unbind_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_window_item_prev to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2175
  call void @command_unbind_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_window_item_next to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2176
  call void @command_unbind_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*)* @cmd_window_item_goto to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2177
  call void @command_unbind_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_window_item_move to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2178
  call void @command_unbind_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_window_number to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2179
  call void @command_unbind_full(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_window_name to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2180
  call void @command_unbind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_window_history to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2181
  call void @command_unbind_full(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_window_move to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2182
  call void @command_unbind_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_window_move_prev to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2183
  call void @command_unbind_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_window_move_next to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2184
  call void @command_unbind_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_window_move_first to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2185
  call void @command_unbind_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_window_move_last to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2186
  call void @command_unbind_full(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_window_list to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2187
  call void @command_unbind_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_window_theme to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2188
  call void @command_unbind_full(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_layout to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2189
  call void @command_unbind_full(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @windows_layout_save to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2190
  call void @command_unbind_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @windows_layout_reset to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2191
  call void @command_unbind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_foreach_window to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2192
  ret void, !dbg !2193
}

declare void @command_unbind_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @cmd_window_info(%struct._WINDOW_REC*) #0 !dbg !2194 {
  %2 = alloca %struct._WINDOW_REC*, align 8
  %3 = alloca i8*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %2, metadata !2197, metadata !709), !dbg !2198
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2199, metadata !709), !dbg !2200
  %4 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2201
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), %struct._WINDOW_REC* %4, i32 524288, i32 22), !dbg !2202
  %5 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2203
  %6 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %5, i32 0, i32 11, !dbg !2205
  %7 = load i8, i8* %6, align 8, !dbg !2205
  %8 = lshr i8 %7, 1, !dbg !2205
  %9 = and i8 %8, 1, !dbg !2205
  %10 = zext i8 %9 to i32, !dbg !2205
  %11 = icmp ne i32 %10, 0, !dbg !2203
  br i1 %11, label %17, label %12, !dbg !2206

; <label>:12:                                     ; preds = %1
  %13 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2207
  %14 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2209
  %15 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %14, i32 0, i32 0, !dbg !2210
  %16 = load i32, i32* %15, align 8, !dbg !2210
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), %struct._WINDOW_REC* %13, i32 524288, i32 24, i32 %16), !dbg !2211
  br label %22, !dbg !2212

; <label>:17:                                     ; preds = %1
  %18 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2213
  %19 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2215
  %20 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %19, i32 0, i32 0, !dbg !2216
  %21 = load i32, i32* %20, align 8, !dbg !2216
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), %struct._WINDOW_REC* %18, i32 524288, i32 25, i32 %21), !dbg !2217
  br label %22

; <label>:22:                                     ; preds = %17, %12
  %23 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2218
  %24 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %23, i32 0, i32 1, !dbg !2220
  %25 = load i8*, i8** %24, align 8, !dbg !2220
  %26 = icmp ne i8* %25, null, !dbg !2221
  br i1 %26, label %27, label %32, !dbg !2222

; <label>:27:                                     ; preds = %22
  %28 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2223
  %29 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2225
  %30 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %29, i32 0, i32 1, !dbg !2226
  %31 = load i8*, i8** %30, align 8, !dbg !2226
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), %struct._WINDOW_REC* %28, i32 524288, i32 26, i8* %31), !dbg !2227
  br label %32, !dbg !2228

; <label>:32:                                     ; preds = %27, %22
  %33 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2229
  %34 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2230
  %35 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %34, i32 0, i32 2, !dbg !2231
  %36 = load i32, i32* %35, align 8, !dbg !2231
  %37 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2232
  %38 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %37, i32 0, i32 3, !dbg !2233
  %39 = load i32, i32* %38, align 4, !dbg !2233
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), %struct._WINDOW_REC* %33, i32 524288, i32 29, i32 %36, i32 %39), !dbg !2234
  %40 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2235
  %41 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %40, i32 0, i32 11, !dbg !2237
  %42 = load i8, i8* %41, align 8, !dbg !2237
  %43 = and i8 %42, 1, !dbg !2237
  %44 = zext i8 %43 to i32, !dbg !2237
  %45 = icmp ne i32 %44, 0, !dbg !2235
  br i1 %45, label %46, label %48, !dbg !2238

; <label>:46:                                     ; preds = %32
  %47 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2239
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), %struct._WINDOW_REC* %47, i32 524288, i32 28), !dbg !2241
  br label %48, !dbg !2242

; <label>:48:                                     ; preds = %46, %32
  %49 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2243
  %50 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %49, i32 0, i32 13, !dbg !2245
  %51 = load i8*, i8** %50, align 8, !dbg !2245
  %52 = icmp ne i8* %51, null, !dbg !2246
  br i1 %52, label %53, label %58, !dbg !2247

; <label>:53:                                     ; preds = %48
  %54 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2248
  %55 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2250
  %56 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %55, i32 0, i32 13, !dbg !2251
  %57 = load i8*, i8** %56, align 8, !dbg !2251
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), %struct._WINDOW_REC* %54, i32 524288, i32 27, i8* %57), !dbg !2252
  br label %58, !dbg !2253

; <label>:58:                                     ; preds = %53, %48
  %59 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2254
  %60 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %59, i32 0, i32 9, !dbg !2255
  %61 = load i32, i32* %60, align 8, !dbg !2255
  %62 = icmp eq i32 %61, 0, !dbg !2256
  br i1 %62, label %63, label %65, !dbg !2254

; <label>:63:                                     ; preds = %58
  %64 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0)), !dbg !2257
  br label %70, !dbg !2258

; <label>:65:                                     ; preds = %58
  %66 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2260
  %67 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %66, i32 0, i32 9, !dbg !2261
  %68 = load i32, i32* %67, align 8, !dbg !2261
  %69 = call i8* @bits2level(i32 %68), !dbg !2262
  br label %70, !dbg !2263

; <label>:70:                                     ; preds = %65, %63
  %71 = phi i8* [ %64, %63 ], [ %69, %65 ], !dbg !2265
  store i8* %71, i8** %3, align 8, !dbg !2267
  %72 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2268
  %73 = load i8*, i8** %3, align 8, !dbg !2269
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), %struct._WINDOW_REC* %72, i32 524288, i32 30, i8* %73), !dbg !2270
  %74 = load i8*, i8** %3, align 8, !dbg !2271
  call void @g_free(i8* %74), !dbg !2272
  %75 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2273
  %76 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %75, i32 0, i32 8, !dbg !2275
  %77 = load i8*, i8** %76, align 8, !dbg !2275
  %78 = icmp eq i8* %77, null, !dbg !2276
  br i1 %78, label %79, label %94, !dbg !2277

; <label>:79:                                     ; preds = %70
  %80 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2278
  %81 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2280
  %82 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %81, i32 0, i32 6, !dbg !2281
  %83 = load %struct._SERVER_REC*, %struct._SERVER_REC** %82, align 8, !dbg !2281
  %84 = icmp ne %struct._SERVER_REC* %83, null, !dbg !2282
  br i1 %84, label %85, label %91, !dbg !2280

; <label>:85:                                     ; preds = %79
  %86 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2283
  %87 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %86, i32 0, i32 6, !dbg !2285
  %88 = load %struct._SERVER_REC*, %struct._SERVER_REC** %87, align 8, !dbg !2285
  %89 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %88, i32 0, i32 6, !dbg !2286
  %90 = load i8*, i8** %89, align 8, !dbg !2286
  br label %92, !dbg !2287

; <label>:91:                                     ; preds = %79
  br label %92, !dbg !2288

; <label>:92:                                     ; preds = %91, %85
  %93 = phi i8* [ %90, %85 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), %91 ], !dbg !2290
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), %struct._WINDOW_REC* %80, i32 524288, i32 31, i8* %93), !dbg !2292
  br label %116, !dbg !2293

; <label>:94:                                     ; preds = %70
  %95 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2294
  %96 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %95, i32 0, i32 6, !dbg !2297
  %97 = load %struct._SERVER_REC*, %struct._SERVER_REC** %96, align 8, !dbg !2297
  %98 = icmp ne %struct._SERVER_REC* %97, null, !dbg !2298
  br i1 %98, label %99, label %111, !dbg !2299

; <label>:99:                                     ; preds = %94
  %100 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2300
  %101 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %100, i32 0, i32 6, !dbg !2301
  %102 = load %struct._SERVER_REC*, %struct._SERVER_REC** %101, align 8, !dbg !2301
  %103 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %102, i32 0, i32 6, !dbg !2302
  %104 = load i8*, i8** %103, align 8, !dbg !2302
  %105 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2303
  %106 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %105, i32 0, i32 8, !dbg !2304
  %107 = load i8*, i8** %106, align 8, !dbg !2304
  %108 = call i32 @g_strcmp0(i8* %104, i8* %107), !dbg !2305
  %109 = icmp ne i32 %108, 0, !dbg !2306
  br i1 %109, label %110, label %111, !dbg !2307

; <label>:110:                                    ; preds = %99
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.40, i32 0, i32 0)), !dbg !2309
  br label %111, !dbg !2309

; <label>:111:                                    ; preds = %110, %99, %94
  %112 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2310
  %113 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2311
  %114 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %113, i32 0, i32 8, !dbg !2312
  %115 = load i8*, i8** %114, align 8, !dbg !2312
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), %struct._WINDOW_REC* %112, i32 524288, i32 32, i8* %115), !dbg !2313
  br label %116

; <label>:116:                                    ; preds = %111, %92
  %117 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2314
  %118 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %117, i32 0, i32 18, !dbg !2316
  %119 = load i8*, i8** %118, align 8, !dbg !2316
  %120 = icmp ne i8* %119, null, !dbg !2317
  br i1 %120, label %121, label %131, !dbg !2318

; <label>:121:                                    ; preds = %116
  %122 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2319
  %123 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2321
  %124 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %123, i32 0, i32 18, !dbg !2322
  %125 = load i8*, i8** %124, align 8, !dbg !2322
  %126 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2323
  %127 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %126, i32 0, i32 19, !dbg !2324
  %128 = load i8*, i8** %127, align 8, !dbg !2324
  %129 = icmp ne i8* %128, null, !dbg !2325
  %130 = select i1 %129, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i32 0, i32 0), !dbg !2323
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), %struct._WINDOW_REC* %122, i32 524288, i32 33, i8* %125, i8* %130), !dbg !2326
  br label %131, !dbg !2327

; <label>:131:                                    ; preds = %121, %116
  %132 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2328
  %133 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %132, i32 0, i32 10, !dbg !2330
  %134 = load %struct._GSList*, %struct._GSList** %133, align 8, !dbg !2330
  %135 = icmp ne %struct._GSList* %134, null, !dbg !2331
  br i1 %135, label %136, label %138, !dbg !2332

; <label>:136:                                    ; preds = %131
  %137 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2333
  call void @window_print_binds(%struct._WINDOW_REC* %137), !dbg !2334
  br label %138, !dbg !2334

; <label>:138:                                    ; preds = %136, %131
  %139 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2335
  %140 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %139, i32 0, i32 4, !dbg !2337
  %141 = load %struct._GSList*, %struct._GSList** %140, align 8, !dbg !2337
  %142 = icmp ne %struct._GSList* %141, null, !dbg !2338
  br i1 %142, label %143, label %145, !dbg !2339

; <label>:143:                                    ; preds = %138
  %144 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2340
  call void @window_print_items(%struct._WINDOW_REC* %144), !dbg !2341
  br label %145, !dbg !2341

; <label>:145:                                    ; preds = %143, %138
  %146 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2342
  %147 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i32 0, i32 0), i32 1, %struct._WINDOW_REC* %146), !dbg !2343
  %148 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2344
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), %struct._WINDOW_REC* %148, i32 524288, i32 23), !dbg !2345
  ret void, !dbg !2346
}

declare i32 @is_numeric(i8*, i8 signext) #2

declare i32 @signal_emit(i8*, i32, ...) #2

declare void @command_runsub(i8*, i8*, i8*, i8*) #2

declare void @printformat_module_window(i8*, %struct._WINDOW_REC*, i32, i32, ...) #2

declare noalias i8* @g_strdup(i8*) #2

declare i8* @bits2level(i32) #2

declare void @g_free(i8*) #2

declare i32 @g_strcmp0(i8*, i8*) #2

declare void @g_log(i8*, i32, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal void @window_print_binds(%struct._WINDOW_REC*) #0 !dbg !2347 {
  %2 = alloca %struct._WINDOW_REC*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct.WINDOW_BIND_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %2, metadata !2348, metadata !709), !dbg !2349
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !2350, metadata !709), !dbg !2351
  %5 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2352
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), %struct._WINDOW_REC* %5, i32 524288, i32 34), !dbg !2353
  %6 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2354
  %7 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %6, i32 0, i32 10, !dbg !2356
  %8 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !2356
  store %struct._GSList* %8, %struct._GSList** %3, align 8, !dbg !2357
  br label %9, !dbg !2358

; <label>:9:                                      ; preds = %31, %1
  %10 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !2359
  %11 = icmp ne %struct._GSList* %10, null, !dbg !2362
  br i1 %11, label %12, label %35, !dbg !2363

; <label>:12:                                     ; preds = %9
  call void @llvm.dbg.declare(metadata %struct.WINDOW_BIND_REC** %4, metadata !2364, metadata !709), !dbg !2373
  %13 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !2374
  %14 = getelementptr inbounds %struct._GSList, %struct._GSList* %13, i32 0, i32 0, !dbg !2375
  %15 = load i8*, i8** %14, align 8, !dbg !2375
  %16 = bitcast i8* %15 to %struct.WINDOW_BIND_REC*, !dbg !2374
  store %struct.WINDOW_BIND_REC* %16, %struct.WINDOW_BIND_REC** %4, align 8, !dbg !2373
  %17 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2376
  %18 = load %struct.WINDOW_BIND_REC*, %struct.WINDOW_BIND_REC** %4, align 8, !dbg !2377
  %19 = getelementptr inbounds %struct.WINDOW_BIND_REC, %struct.WINDOW_BIND_REC* %18, i32 0, i32 1, !dbg !2378
  %20 = load i8*, i8** %19, align 8, !dbg !2378
  %21 = load %struct.WINDOW_BIND_REC*, %struct.WINDOW_BIND_REC** %4, align 8, !dbg !2379
  %22 = getelementptr inbounds %struct.WINDOW_BIND_REC, %struct.WINDOW_BIND_REC* %21, i32 0, i32 0, !dbg !2380
  %23 = load i8*, i8** %22, align 8, !dbg !2380
  %24 = load %struct.WINDOW_BIND_REC*, %struct.WINDOW_BIND_REC** %4, align 8, !dbg !2381
  %25 = getelementptr inbounds %struct.WINDOW_BIND_REC, %struct.WINDOW_BIND_REC* %24, i32 0, i32 2, !dbg !2382
  %26 = load i8, i8* %25, align 8, !dbg !2382
  %27 = and i8 %26, 1, !dbg !2382
  %28 = zext i8 %27 to i32, !dbg !2382
  %29 = icmp ne i32 %28, 0, !dbg !2381
  %30 = select i1 %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.41, i32 0, i32 0), !dbg !2381
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), %struct._WINDOW_REC* %17, i32 524288, i32 35, i8* %20, i8* %23, i8* %30), !dbg !2383
  br label %31, !dbg !2384

; <label>:31:                                     ; preds = %12
  %32 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !2385
  %33 = getelementptr inbounds %struct._GSList, %struct._GSList* %32, i32 0, i32 1, !dbg !2387
  %34 = load %struct._GSList*, %struct._GSList** %33, align 8, !dbg !2387
  store %struct._GSList* %34, %struct._GSList** %3, align 8, !dbg !2388
  br label %9, !dbg !2389, !llvm.loop !2390

; <label>:35:                                     ; preds = %9
  %36 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2392
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), %struct._WINDOW_REC* %36, i32 524288, i32 36), !dbg !2393
  ret void, !dbg !2394
}

; Function Attrs: nounwind uwtable
define internal void @window_print_items(%struct._WINDOW_REC*) #0 !dbg !2395 {
  %2 = alloca %struct._WINDOW_REC*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._WI_ITEM_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %2, metadata !2396, metadata !709), !dbg !2397
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !2398, metadata !709), !dbg !2399
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2400, metadata !709), !dbg !2401
  %6 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2402
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), %struct._WINDOW_REC* %6, i32 524288, i32 37), !dbg !2403
  %7 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2404
  %8 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %7, i32 0, i32 4, !dbg !2406
  %9 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !2406
  store %struct._GSList* %9, %struct._GSList** %3, align 8, !dbg !2407
  br label %10, !dbg !2408

; <label>:10:                                     ; preds = %46, %1
  %11 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !2409
  %12 = icmp ne %struct._GSList* %11, null, !dbg !2412
  br i1 %12, label %13, label %50, !dbg !2413

; <label>:13:                                     ; preds = %10
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %5, metadata !2414, metadata !709), !dbg !2416
  %14 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !2417
  %15 = getelementptr inbounds %struct._GSList, %struct._GSList* %14, i32 0, i32 0, !dbg !2418
  %16 = load i8*, i8** %15, align 8, !dbg !2418
  %17 = bitcast i8* %16 to %struct._WI_ITEM_REC*, !dbg !2417
  store %struct._WI_ITEM_REC* %17, %struct._WI_ITEM_REC** %5, align 8, !dbg !2416
  %18 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %5, align 8, !dbg !2419
  %19 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %18, i32 0, i32 0, !dbg !2420
  %20 = load i32, i32* %19, align 8, !dbg !2420
  %21 = call i8* @module_find_id_str(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.44, i32 0, i32 0), i32 %20), !dbg !2421
  store i8* %21, i8** %4, align 8, !dbg !2422
  %22 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2423
  %23 = load i8*, i8** %4, align 8, !dbg !2424
  %24 = icmp eq i8* %23, null, !dbg !2425
  br i1 %24, label %25, label %26, !dbg !2424

; <label>:25:                                     ; preds = %13
  br label %28, !dbg !2426

; <label>:26:                                     ; preds = %13
  %27 = load i8*, i8** %4, align 8, !dbg !2428
  br label %28, !dbg !2430

; <label>:28:                                     ; preds = %26, %25
  %29 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0), %25 ], [ %27, %26 ], !dbg !2431
  %30 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %5, align 8, !dbg !2433
  %31 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %30, i32 0, i32 5, !dbg !2434
  %32 = load i8*, i8** %31, align 8, !dbg !2434
  %33 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %5, align 8, !dbg !2435
  %34 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %33, i32 0, i32 4, !dbg !2436
  %35 = load %struct._SERVER_REC*, %struct._SERVER_REC** %34, align 8, !dbg !2436
  %36 = icmp eq %struct._SERVER_REC* %35, null, !dbg !2437
  br i1 %36, label %37, label %38, !dbg !2435

; <label>:37:                                     ; preds = %28
  br label %44, !dbg !2438

; <label>:38:                                     ; preds = %28
  %39 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %5, align 8, !dbg !2440
  %40 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %39, i32 0, i32 4, !dbg !2442
  %41 = load %struct._SERVER_REC*, %struct._SERVER_REC** %40, align 8, !dbg !2442
  %42 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %41, i32 0, i32 6, !dbg !2443
  %43 = load i8*, i8** %42, align 8, !dbg !2443
  br label %44, !dbg !2444

; <label>:44:                                     ; preds = %38, %37
  %45 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.41, i32 0, i32 0), %37 ], [ %43, %38 ], !dbg !2445
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), %struct._WINDOW_REC* %22, i32 524288, i32 38, i8* %29, i8* %32, i8* %45), !dbg !2447
  br label %46, !dbg !2448

; <label>:46:                                     ; preds = %44
  %47 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !2449
  %48 = getelementptr inbounds %struct._GSList, %struct._GSList* %47, i32 0, i32 1, !dbg !2451
  %49 = load %struct._GSList*, %struct._GSList** %48, align 8, !dbg !2451
  store %struct._GSList* %49, %struct._GSList** %3, align 8, !dbg !2452
  br label %10, !dbg !2453, !llvm.loop !2454

; <label>:50:                                     ; preds = %10
  %51 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2456
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), %struct._WINDOW_REC* %51, i32 524288, i32 39), !dbg !2457
  ret void, !dbg !2458
}

declare i8* @module_find_id_str(i8*, i32) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare i32 @g_ascii_strncasecmp(i8*, i8*, i64) #2

declare i32 @g_ascii_strcasecmp(i8*, i8*) #2

declare %struct._WINDOW_REC* @window_create(%struct._WI_ITEM_REC*, i32) #2

declare void @window_change_server(%struct._WINDOW_REC*, i8*) #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #2

declare void @window_destroy(%struct._WINDOW_REC*) #2

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #2

declare void @signal_stop() #2

declare %struct._SERVER_REC* @server_find_tag(i8*) #2

declare %struct._SERVER_REC* @server_find_lookup_tag(i8*) #2

declare %struct._WINDOW_REC* @window_find_refnum(i32) #2

declare void @window_set_active(%struct._WINDOW_REC*) #2

; Function Attrs: nounwind uwtable
define internal %struct._WINDOW_REC* @window_highest_activity(%struct._WINDOW_REC*, i32) #0 !dbg !2459 {
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca %struct._WINDOW_REC*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._WINDOW_REC*, align 8
  %7 = alloca %struct._WINDOW_REC*, align 8
  %8 = alloca %struct._GSList*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %4, metadata !2462, metadata !709), !dbg !2463
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2464, metadata !709), !dbg !2465
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %6, metadata !2466, metadata !709), !dbg !2467
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %7, metadata !2468, metadata !709), !dbg !2469
  call void @llvm.dbg.declare(metadata %struct._GSList** %8, metadata !2470, metadata !709), !dbg !2471
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2472, metadata !709), !dbg !2473
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2474, metadata !709), !dbg !2475
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2476, metadata !709), !dbg !2477
  br label %12, !dbg !2478, !llvm.loop !2479

; <label>:12:                                     ; preds = %2
  %13 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !2480
  %14 = icmp ne %struct._WINDOW_REC* %13, null, !dbg !2484
  br i1 %14, label %15, label %16, !dbg !2480

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !2485

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.window_highest_activity, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.55, i32 0, i32 0)), !dbg !2488
  store %struct._WINDOW_REC* null, %struct._WINDOW_REC** %3, align 8, !dbg !2491
  br label %104, !dbg !2491

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !2492

; <label>:18:                                     ; preds = %17
  store %struct._WINDOW_REC* null, %struct._WINDOW_REC** %7, align 8, !dbg !2494
  store i32 0, i32* %9, align 4, !dbg !2495
  store i32 0, i32* %10, align 4, !dbg !2496
  store i32 0, i32* %11, align 4, !dbg !2497
  %19 = load %struct._GSList*, %struct._GSList** @windows, align 8, !dbg !2498
  %20 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !2499
  %21 = bitcast %struct._WINDOW_REC* %20 to i8*, !dbg !2499
  %22 = call %struct._GSList* @g_slist_find(%struct._GSList* %19, i8* %21), !dbg !2500
  store %struct._GSList* %22, %struct._GSList** %8, align 8, !dbg !2501
  br label %23, !dbg !2502

; <label>:23:                                     ; preds = %98, %18
  %24 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !2503
  %25 = icmp eq %struct._GSList* %24, null, !dbg !2508
  br i1 %25, label %26, label %28, !dbg !2509

; <label>:26:                                     ; preds = %23
  %27 = load %struct._GSList*, %struct._GSList** @windows, align 8, !dbg !2510
  store %struct._GSList* %27, %struct._GSList** %8, align 8, !dbg !2512
  store i32 1, i32* %11, align 4, !dbg !2513
  br label %28, !dbg !2514

; <label>:28:                                     ; preds = %26, %23
  %29 = load i32, i32* %11, align 4, !dbg !2515
  %30 = icmp ne i32 %29, 0, !dbg !2515
  br i1 %30, label %31, label %39, !dbg !2517

; <label>:31:                                     ; preds = %28
  %32 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !2518
  %33 = getelementptr inbounds %struct._GSList, %struct._GSList* %32, i32 0, i32 0, !dbg !2520
  %34 = load i8*, i8** %33, align 8, !dbg !2520
  %35 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !2521
  %36 = bitcast %struct._WINDOW_REC* %35 to i8*, !dbg !2521
  %37 = icmp eq i8* %34, %36, !dbg !2522
  br i1 %37, label %38, label %39, !dbg !2523

; <label>:38:                                     ; preds = %31
  br label %102, !dbg !2524

; <label>:39:                                     ; preds = %31, %28
  %40 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !2525
  %41 = getelementptr inbounds %struct._GSList, %struct._GSList* %40, i32 0, i32 0, !dbg !2526
  %42 = load i8*, i8** %41, align 8, !dbg !2526
  %43 = bitcast i8* %42 to %struct._WINDOW_REC*, !dbg !2525
  store %struct._WINDOW_REC* %43, %struct._WINDOW_REC** %6, align 8, !dbg !2527
  %44 = load i32, i32* %5, align 4, !dbg !2528
  %45 = icmp ne i32 %44, 0, !dbg !2528
  br i1 %45, label %46, label %62, !dbg !2530

; <label>:46:                                     ; preds = %39
  %47 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %6, align 8, !dbg !2531
  %48 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %47, i32 0, i32 14, !dbg !2532
  %49 = load i32, i32* %48, align 8, !dbg !2532
  %50 = icmp sgt i32 %49, 0, !dbg !2533
  br i1 %50, label %51, label %62, !dbg !2534

; <label>:51:                                     ; preds = %46
  %52 = load i32, i32* %9, align 4, !dbg !2535
  %53 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %6, align 8, !dbg !2537
  %54 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %53, i32 0, i32 14, !dbg !2538
  %55 = load i32, i32* %54, align 8, !dbg !2538
  %56 = icmp slt i32 %52, %55, !dbg !2539
  br i1 %56, label %57, label %62, !dbg !2540

; <label>:57:                                     ; preds = %51
  %58 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %6, align 8, !dbg !2542
  %59 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %58, i32 0, i32 14, !dbg !2544
  %60 = load i32, i32* %59, align 8, !dbg !2544
  store i32 %60, i32* %9, align 4, !dbg !2545
  %61 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %6, align 8, !dbg !2546
  store %struct._WINDOW_REC* %61, %struct._WINDOW_REC** %7, align 8, !dbg !2547
  br label %97, !dbg !2548

; <label>:62:                                     ; preds = %51, %46, %39
  %63 = load i32, i32* %5, align 4, !dbg !2549
  %64 = icmp ne i32 %63, 0, !dbg !2549
  br i1 %64, label %96, label %65, !dbg !2551

; <label>:65:                                     ; preds = %62
  %66 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %6, align 8, !dbg !2552
  %67 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %66, i32 0, i32 14, !dbg !2553
  %68 = load i32, i32* %67, align 8, !dbg !2553
  %69 = icmp sgt i32 %68, 0, !dbg !2554
  br i1 %69, label %70, label %96, !dbg !2555

; <label>:70:                                     ; preds = %65
  %71 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %6, align 8, !dbg !2556
  %72 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %71, i32 0, i32 14, !dbg !2557
  %73 = load i32, i32* %72, align 8, !dbg !2557
  %74 = load i32, i32* %9, align 4, !dbg !2558
  %75 = icmp sgt i32 %73, %74, !dbg !2559
  br i1 %75, label %88, label %76, !dbg !2560

; <label>:76:                                     ; preds = %70
  %77 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %6, align 8, !dbg !2561
  %78 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %77, i32 0, i32 14, !dbg !2562
  %79 = load i32, i32* %78, align 8, !dbg !2562
  %80 = load i32, i32* %9, align 4, !dbg !2563
  %81 = icmp eq i32 %79, %80, !dbg !2564
  br i1 %81, label %82, label %96, !dbg !2565

; <label>:82:                                     ; preds = %76
  %83 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %6, align 8, !dbg !2566
  %84 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %83, i32 0, i32 0, !dbg !2568
  %85 = load i32, i32* %84, align 8, !dbg !2568
  %86 = load i32, i32* %10, align 4, !dbg !2569
  %87 = icmp slt i32 %85, %86, !dbg !2570
  br i1 %87, label %88, label %96, !dbg !2571

; <label>:88:                                     ; preds = %82, %70
  %89 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %6, align 8, !dbg !2572
  %90 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %89, i32 0, i32 14, !dbg !2574
  %91 = load i32, i32* %90, align 8, !dbg !2574
  store i32 %91, i32* %9, align 4, !dbg !2575
  %92 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %6, align 8, !dbg !2576
  store %struct._WINDOW_REC* %92, %struct._WINDOW_REC** %7, align 8, !dbg !2577
  %93 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %6, align 8, !dbg !2578
  %94 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %93, i32 0, i32 0, !dbg !2579
  %95 = load i32, i32* %94, align 8, !dbg !2579
  store i32 %95, i32* %10, align 4, !dbg !2580
  br label %96, !dbg !2581

; <label>:96:                                     ; preds = %88, %82, %76, %65, %62
  br label %97

; <label>:97:                                     ; preds = %96, %57
  br label %98, !dbg !2582

; <label>:98:                                     ; preds = %97
  %99 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !2583
  %100 = getelementptr inbounds %struct._GSList, %struct._GSList* %99, i32 0, i32 1, !dbg !2585
  %101 = load %struct._GSList*, %struct._GSList** %100, align 8, !dbg !2585
  store %struct._GSList* %101, %struct._GSList** %8, align 8, !dbg !2586
  br label %23, !dbg !2587, !llvm.loop !2588

; <label>:102:                                    ; preds = %38
  %103 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %7, align 8, !dbg !2589
  store %struct._WINDOW_REC* %103, %struct._WINDOW_REC** %3, align 8, !dbg !2590
  br label %104, !dbg !2590

; <label>:104:                                    ; preds = %102, %16
  %105 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !2591
  ret %struct._WINDOW_REC* %105, !dbg !2591
}

declare i32 @settings_get_bool(i8*) #2

declare %struct._WINDOW_REC* @window_find_name(i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct._WINDOW_REC* @window_find_item_cycle(%struct._SERVER_REC*, i8*) #0 !dbg !2592 {
  %3 = alloca %struct._SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._WINDOW_REC*, align 8
  %6 = alloca %struct._WINDOW_REC*, align 8
  %7 = alloca %struct._GSList*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %3, metadata !2595, metadata !709), !dbg !2596
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2597, metadata !709), !dbg !2598
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %5, metadata !2599, metadata !709), !dbg !2600
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %6, metadata !2601, metadata !709), !dbg !2602
  call void @llvm.dbg.declare(metadata %struct._GSList** %7, metadata !2603, metadata !709), !dbg !2604
  store %struct._WINDOW_REC* null, %struct._WINDOW_REC** %6, align 8, !dbg !2605
  %8 = load %struct._GSList*, %struct._GSList** @windows, align 8, !dbg !2606
  %9 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !2607
  %10 = bitcast %struct._WINDOW_REC* %9 to i8*, !dbg !2607
  %11 = call %struct._GSList* @g_slist_find(%struct._GSList* %8, i8* %10), !dbg !2608
  store %struct._GSList* %11, %struct._GSList** %7, align 8, !dbg !2609
  %12 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !2610
  %13 = getelementptr inbounds %struct._GSList, %struct._GSList* %12, i32 0, i32 1, !dbg !2611
  %14 = load %struct._GSList*, %struct._GSList** %13, align 8, !dbg !2611
  store %struct._GSList* %14, %struct._GSList** %7, align 8, !dbg !2612
  br label %15, !dbg !2613

; <label>:15:                                     ; preds = %58, %2
  %16 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !2614
  %17 = icmp eq %struct._GSList* %16, null, !dbg !2619
  br i1 %17, label %18, label %20, !dbg !2620

; <label>:18:                                     ; preds = %15
  %19 = load %struct._GSList*, %struct._GSList** @windows, align 8, !dbg !2621
  store %struct._GSList* %19, %struct._GSList** %7, align 8, !dbg !2622
  br label %20, !dbg !2623

; <label>:20:                                     ; preds = %18, %15
  %21 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !2624
  %22 = getelementptr inbounds %struct._GSList, %struct._GSList* %21, i32 0, i32 0, !dbg !2626
  %23 = load i8*, i8** %22, align 8, !dbg !2626
  %24 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !2627
  %25 = bitcast %struct._WINDOW_REC* %24 to i8*, !dbg !2627
  %26 = icmp eq i8* %23, %25, !dbg !2628
  br i1 %26, label %27, label %28, !dbg !2629

; <label>:27:                                     ; preds = %20
  br label %62, !dbg !2630

; <label>:28:                                     ; preds = %20
  %29 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !2631
  %30 = getelementptr inbounds %struct._GSList, %struct._GSList* %29, i32 0, i32 0, !dbg !2632
  %31 = load i8*, i8** %30, align 8, !dbg !2632
  %32 = bitcast i8* %31 to %struct._WINDOW_REC*, !dbg !2631
  store %struct._WINDOW_REC* %32, %struct._WINDOW_REC** %5, align 8, !dbg !2633
  %33 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !2634
  %34 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !2636
  %35 = bitcast %struct._SERVER_REC* %34 to i8*, !dbg !2636
  %36 = load i8*, i8** %4, align 8, !dbg !2637
  %37 = call %struct._WI_ITEM_REC* @window_item_find_window(%struct._WINDOW_REC* %33, i8* %35, i8* %36), !dbg !2638
  %38 = icmp ne %struct._WI_ITEM_REC* %37, null, !dbg !2639
  br i1 %38, label %39, label %57, !dbg !2640

; <label>:39:                                     ; preds = %28
  %40 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %6, align 8, !dbg !2641
  %41 = icmp eq %struct._WINDOW_REC* %40, null, !dbg !2642
  br i1 %41, label %51, label %42, !dbg !2643

; <label>:42:                                     ; preds = %39
  %43 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !2644
  %44 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %43, i32 0, i32 0, !dbg !2646
  %45 = load i32, i32* %44, align 8, !dbg !2646
  %46 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %6, align 8, !dbg !2647
  %47 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %46, i32 0, i32 0, !dbg !2648
  %48 = load i32, i32* %47, align 8, !dbg !2648
  %49 = call i32 @is_nearer(i32 %45, i32 %48), !dbg !2649
  %50 = icmp ne i32 %49, 0, !dbg !2649
  br i1 %50, label %51, label %57, !dbg !2650

; <label>:51:                                     ; preds = %42, %39
  %52 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !2652
  store %struct._WINDOW_REC* %52, %struct._WINDOW_REC** %6, align 8, !dbg !2654
  %53 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !2655
  %54 = icmp ne %struct._SERVER_REC* %53, null, !dbg !2657
  br i1 %54, label %55, label %56, !dbg !2658

; <label>:55:                                     ; preds = %51
  br label %62, !dbg !2659

; <label>:56:                                     ; preds = %51
  br label %57, !dbg !2661

; <label>:57:                                     ; preds = %56, %42, %28
  br label %58, !dbg !2662

; <label>:58:                                     ; preds = %57
  %59 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !2663
  %60 = getelementptr inbounds %struct._GSList, %struct._GSList* %59, i32 0, i32 1, !dbg !2665
  %61 = load %struct._GSList*, %struct._GSList** %60, align 8, !dbg !2665
  store %struct._GSList* %61, %struct._GSList** %7, align 8, !dbg !2666
  br label %15, !dbg !2667, !llvm.loop !2668

; <label>:62:                                     ; preds = %55, %27
  %63 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %6, align 8, !dbg !2669
  ret %struct._WINDOW_REC* %63, !dbg !2670
}

declare %struct._GSList* @g_slist_find(%struct._GSList*, i8*) #2

declare %struct._WI_ITEM_REC* @window_item_find_window(%struct._WINDOW_REC*, i8*, i8*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @is_nearer(i32, i32) #4 !dbg !2671 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2674, metadata !709), !dbg !2675
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2676, metadata !709), !dbg !2677
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2678, metadata !709), !dbg !2679
  %8 = load i32, i32* %5, align 4, !dbg !2680
  %9 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !2681
  %10 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %9, i32 0, i32 0, !dbg !2682
  %11 = load i32, i32* %10, align 8, !dbg !2682
  %12 = icmp slt i32 %8, %11, !dbg !2683
  %13 = zext i1 %12 to i32, !dbg !2683
  store i32 %13, i32* %6, align 4, !dbg !2679
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2684, metadata !709), !dbg !2685
  %14 = load i32, i32* %4, align 4, !dbg !2686
  %15 = load i32, i32* %5, align 4, !dbg !2687
  %16 = icmp slt i32 %14, %15, !dbg !2688
  %17 = zext i1 %16 to i32, !dbg !2688
  store i32 %17, i32* %7, align 4, !dbg !2685
  %18 = load i32, i32* %4, align 4, !dbg !2689
  %19 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !2691
  %20 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %19, i32 0, i32 0, !dbg !2692
  %21 = load i32, i32* %20, align 8, !dbg !2692
  %22 = icmp sgt i32 %18, %21, !dbg !2693
  br i1 %22, label %23, label %32, !dbg !2694

; <label>:23:                                     ; preds = %2
  %24 = load i32, i32* %6, align 4, !dbg !2695
  %25 = icmp ne i32 %24, 0, !dbg !2695
  br i1 %25, label %29, label %26, !dbg !2696

; <label>:26:                                     ; preds = %23
  %27 = load i32, i32* %7, align 4, !dbg !2697
  %28 = icmp ne i32 %27, 0, !dbg !2699
  br label %29, !dbg !2699

; <label>:29:                                     ; preds = %26, %23
  %30 = phi i1 [ true, %23 ], [ %28, %26 ]
  %31 = zext i1 %30 to i32, !dbg !2700
  store i32 %31, i32* %3, align 4, !dbg !2702
  br label %41, !dbg !2702

; <label>:32:                                     ; preds = %2
  %33 = load i32, i32* %6, align 4, !dbg !2703
  %34 = icmp ne i32 %33, 0, !dbg !2703
  br i1 %34, label %35, label %38, !dbg !2704

; <label>:35:                                     ; preds = %32
  %36 = load i32, i32* %7, align 4, !dbg !2705
  %37 = icmp ne i32 %36, 0, !dbg !2706
  br label %38

; <label>:38:                                     ; preds = %35, %32
  %39 = phi i1 [ false, %32 ], [ %37, %35 ]
  %40 = zext i1 %39 to i32, !dbg !2707
  store i32 %40, i32* %3, align 4, !dbg !2708
  br label %41, !dbg !2708

; <label>:41:                                     ; preds = %38, %29
  %42 = load i32, i32* %3, align 4, !dbg !2709
  ret i32 %42, !dbg !2709
}

declare i32 @window_refnum_prev(i32, i32) #2

declare i32 @window_refnum_next(i32, i32) #2

declare i32 @windows_refnum_last() #2

declare void @window_set_level(%struct._WINDOW_REC*, i32) #2

declare i32 @combine_level(i32, i8*) #2

declare void @window_set_immortal(%struct._WINDOW_REC*, i32) #2

declare void @window_item_prev(%struct._WINDOW_REC*) #2

declare void @window_item_next(%struct._WINDOW_REC*) #2

declare %struct._GSList* @g_slist_nth(%struct._GSList*, i32) #2

declare void @window_item_set_active(%struct._WINDOW_REC*, %struct._WI_ITEM_REC*) #2

declare %struct._WI_ITEM_REC* @window_item_find(i8*, i8*) #2

declare void @window_set_refnum(%struct._WINDOW_REC*, i32) #2

declare void @window_set_name(%struct._WINDOW_REC*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @active_window_move_to(i32) #0 !dbg !2710 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2713, metadata !709), !dbg !2714
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2715, metadata !709), !dbg !2716
  %4 = load i32, i32* %2, align 4, !dbg !2717
  %5 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !2719
  %6 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %5, i32 0, i32 0, !dbg !2720
  %7 = load i32, i32* %6, align 8, !dbg !2720
  %8 = icmp sgt i32 %4, %7, !dbg !2721
  br i1 %8, label %9, label %26, !dbg !2722

; <label>:9:                                      ; preds = %1
  br label %10, !dbg !2723

; <label>:10:                                     ; preds = %22, %9
  %11 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !2725
  %12 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %11, i32 0, i32 0, !dbg !2729
  %13 = load i32, i32* %12, align 8, !dbg !2729
  %14 = call i32 @window_refnum_next(i32 %13, i32 0), !dbg !2730
  store i32 %14, i32* %3, align 4, !dbg !2731
  %15 = load i32, i32* %3, align 4, !dbg !2732
  %16 = icmp eq i32 %15, -1, !dbg !2734
  br i1 %16, label %21, label %17, !dbg !2735

; <label>:17:                                     ; preds = %10
  %18 = load i32, i32* %3, align 4, !dbg !2736
  %19 = load i32, i32* %2, align 4, !dbg !2738
  %20 = icmp sgt i32 %18, %19, !dbg !2739
  br i1 %20, label %21, label %22, !dbg !2740

; <label>:21:                                     ; preds = %17, %10
  br label %25, !dbg !2741

; <label>:22:                                     ; preds = %17
  %23 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !2742
  %24 = load i32, i32* %3, align 4, !dbg !2743
  call void @window_set_refnum(%struct._WINDOW_REC* %23, i32 %24), !dbg !2744
  br label %10, !dbg !2745, !llvm.loop !2747

; <label>:25:                                     ; preds = %21
  br label %43, !dbg !2748

; <label>:26:                                     ; preds = %1
  br label %27, !dbg !2749

; <label>:27:                                     ; preds = %39, %26
  %28 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !2751
  %29 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %28, i32 0, i32 0, !dbg !2755
  %30 = load i32, i32* %29, align 8, !dbg !2755
  %31 = call i32 @window_refnum_prev(i32 %30, i32 0), !dbg !2756
  store i32 %31, i32* %3, align 4, !dbg !2757
  %32 = load i32, i32* %3, align 4, !dbg !2758
  %33 = icmp eq i32 %32, -1, !dbg !2760
  br i1 %33, label %38, label %34, !dbg !2761

; <label>:34:                                     ; preds = %27
  %35 = load i32, i32* %3, align 4, !dbg !2762
  %36 = load i32, i32* %2, align 4, !dbg !2764
  %37 = icmp slt i32 %35, %36, !dbg !2765
  br i1 %37, label %38, label %39, !dbg !2766

; <label>:38:                                     ; preds = %34, %27
  br label %42, !dbg !2767

; <label>:39:                                     ; preds = %34
  %40 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !2768
  %41 = load i32, i32* %3, align 4, !dbg !2769
  call void @window_set_refnum(%struct._WINDOW_REC* %40, i32 %41), !dbg !2770
  br label %27, !dbg !2771, !llvm.loop !2773

; <label>:42:                                     ; preds = %38
  br label %43

; <label>:43:                                     ; preds = %42, %25
  ret void, !dbg !2774
}

; Function Attrs: nounwind uwtable
define internal void @window_refnums_move_left(%struct._WINDOW_REC*) #0 !dbg !2775 {
  %2 = alloca %struct._WINDOW_REC*, align 8
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %2, metadata !2776, metadata !709), !dbg !2777
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !2778, metadata !709), !dbg !2779
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2780, metadata !709), !dbg !2781
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2782, metadata !709), !dbg !2783
  %6 = call i32 @windows_refnum_last(), !dbg !2784
  store i32 %6, i32* %5, align 4, !dbg !2785
  %7 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2786
  %8 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %7, i32 0, i32 0, !dbg !2788
  %9 = load i32, i32* %8, align 8, !dbg !2788
  %10 = add nsw i32 %9, 1, !dbg !2789
  store i32 %10, i32* %4, align 4, !dbg !2790
  br label %11, !dbg !2791

; <label>:11:                                     ; preds = %27, %1
  %12 = load i32, i32* %4, align 4, !dbg !2792
  %13 = load i32, i32* %5, align 4, !dbg !2795
  %14 = icmp sle i32 %12, %13, !dbg !2796
  br i1 %14, label %15, label %30, !dbg !2797

; <label>:15:                                     ; preds = %11
  %16 = load i32, i32* %4, align 4, !dbg !2798
  %17 = call %struct._WINDOW_REC* @window_find_refnum(i32 %16), !dbg !2800
  store %struct._WINDOW_REC* %17, %struct._WINDOW_REC** %3, align 8, !dbg !2801
  %18 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !2802
  %19 = icmp eq %struct._WINDOW_REC* %18, null, !dbg !2804
  br i1 %19, label %20, label %23, !dbg !2805

; <label>:20:                                     ; preds = %15
  %21 = load i32, i32* %5, align 4, !dbg !2806
  %22 = add nsw i32 %21, 1, !dbg !2806
  store i32 %22, i32* %5, align 4, !dbg !2806
  br label %30, !dbg !2808

; <label>:23:                                     ; preds = %15
  %24 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !2809
  %25 = load i32, i32* %4, align 4, !dbg !2810
  %26 = sub nsw i32 %25, 1, !dbg !2811
  call void @window_set_refnum(%struct._WINDOW_REC* %24, i32 %26), !dbg !2812
  br label %27, !dbg !2813

; <label>:27:                                     ; preds = %23
  %28 = load i32, i32* %4, align 4, !dbg !2814
  %29 = add nsw i32 %28, 1, !dbg !2814
  store i32 %29, i32* %4, align 4, !dbg !2814
  br label %11, !dbg !2816, !llvm.loop !2817

; <label>:30:                                     ; preds = %20, %11
  %31 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2819
  %32 = load i32, i32* %5, align 4, !dbg !2820
  call void @window_set_refnum(%struct._WINDOW_REC* %31, i32 %32), !dbg !2821
  ret void, !dbg !2822
}

; Function Attrs: nounwind uwtable
define internal void @window_refnums_move_right(%struct._WINDOW_REC*) #0 !dbg !2823 {
  %2 = alloca %struct._WINDOW_REC*, align 8
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %2, metadata !2824, metadata !709), !dbg !2825
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !2826, metadata !709), !dbg !2827
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2828, metadata !709), !dbg !2829
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2830, metadata !709), !dbg !2831
  store i32 1, i32* %5, align 4, !dbg !2832
  %6 = load i32, i32* %5, align 4, !dbg !2833
  %7 = call %struct._WINDOW_REC* @window_find_refnum(i32 %6), !dbg !2835
  %8 = icmp eq %struct._WINDOW_REC* %7, null, !dbg !2836
  br i1 %8, label %9, label %12, !dbg !2837

; <label>:9:                                      ; preds = %1
  %10 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2838
  %11 = load i32, i32* %5, align 4, !dbg !2840
  call void @window_set_refnum(%struct._WINDOW_REC* %10, i32 %11), !dbg !2841
  br label %47, !dbg !2842

; <label>:12:                                     ; preds = %1
  %13 = load i32, i32* %5, align 4, !dbg !2843
  store i32 %13, i32* %4, align 4, !dbg !2844
  br label %14, !dbg !2845

; <label>:14:                                     ; preds = %26, %12
  %15 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2846
  %16 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %15, i32 0, i32 0, !dbg !2848
  %17 = load i32, i32* %16, align 8, !dbg !2848
  %18 = load i32, i32* %4, align 4, !dbg !2849
  %19 = icmp eq i32 %17, %18, !dbg !2850
  br i1 %19, label %24, label %20, !dbg !2851

; <label>:20:                                     ; preds = %14
  %21 = load i32, i32* %4, align 4, !dbg !2852
  %22 = call %struct._WINDOW_REC* @window_find_refnum(i32 %21), !dbg !2853
  %23 = icmp ne %struct._WINDOW_REC* %22, null, !dbg !2854
  br label %24, !dbg !2855

; <label>:24:                                     ; preds = %20, %14
  %25 = phi i1 [ true, %14 ], [ %23, %20 ]
  br i1 %25, label %26, label %29, !dbg !2857

; <label>:26:                                     ; preds = %24
  %27 = load i32, i32* %4, align 4, !dbg !2859
  %28 = add nsw i32 %27, 1, !dbg !2859
  store i32 %28, i32* %4, align 4, !dbg !2859
  br label %14, !dbg !2860, !llvm.loop !2862

; <label>:29:                                     ; preds = %24
  %30 = load i32, i32* %4, align 4, !dbg !2863
  %31 = add nsw i32 %30, -1, !dbg !2863
  store i32 %31, i32* %4, align 4, !dbg !2863
  br label %32, !dbg !2864

; <label>:32:                                     ; preds = %36, %29
  %33 = load i32, i32* %4, align 4, !dbg !2865
  %34 = load i32, i32* %5, align 4, !dbg !2866
  %35 = icmp sge i32 %33, %34, !dbg !2867
  br i1 %35, label %36, label %44, !dbg !2868

; <label>:36:                                     ; preds = %32
  %37 = load i32, i32* %4, align 4, !dbg !2869
  %38 = call %struct._WINDOW_REC* @window_find_refnum(i32 %37), !dbg !2871
  store %struct._WINDOW_REC* %38, %struct._WINDOW_REC** %3, align 8, !dbg !2872
  %39 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !2873
  %40 = load i32, i32* %4, align 4, !dbg !2874
  %41 = add nsw i32 %40, 1, !dbg !2875
  call void @window_set_refnum(%struct._WINDOW_REC* %39, i32 %41), !dbg !2876
  %42 = load i32, i32* %4, align 4, !dbg !2877
  %43 = add nsw i32 %42, -1, !dbg !2877
  store i32 %43, i32* %4, align 4, !dbg !2877
  br label %32, !dbg !2878, !llvm.loop !2879

; <label>:44:                                     ; preds = %32
  %45 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2880
  %46 = load i32, i32* %5, align 4, !dbg !2881
  call void @window_set_refnum(%struct._WINDOW_REC* %45, i32 %46), !dbg !2882
  br label %47, !dbg !2883

; <label>:47:                                     ; preds = %44, %9
  ret void, !dbg !2884
}

declare %struct._GSList* @windows_get_sorted() #2

declare void @printformat_module(i8*, i8*, i8*, i32, i32, ...) #2

declare void @g_slist_free(%struct._GSList*) #2

declare %struct.THEME_REC* @theme_load(i8*) #2

declare i8* @settings_get_str(i8*) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

declare noalias i8* @g_strdup_printf(i8*, ...) #2

declare %struct._GSList* @g_slist_copy(%struct._GSList*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!700, !701}
!llvm.ident = !{!702}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !349)
!1 = !DIFile(filename: "line262-window-commands.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !10, !15, !24, !35, !66, !308, !320, !328}
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
!308 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !309, line: 51, size: 32, align: 32, elements: !310)
!309 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/irssi/task1")
!310 = !{!311, !312, !313, !314, !315, !316, !317, !318, !319}
!311 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!312 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!313 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!314 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!315 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!316 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!317 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!318 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!319 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!320 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !321, line: 14, size: 32, align: 32, elements: !322)
!321 = !DIFile(filename: "fe-windows.h", directory: "/home/lichi/Desktop/irssi/task1")
!322 = !{!323, !324, !325, !326, !327}
!323 = !DIEnumerator(name: "MAIN_WINDOW_TYPE_NONE", value: -1)
!324 = !DIEnumerator(name: "MAIN_WINDOW_TYPE_DEFAULT", value: 0)
!325 = !DIEnumerator(name: "MAIN_WINDOW_TYPE_HIDDEN", value: 1)
!326 = !DIEnumerator(name: "MAIN_WINDOW_TYPE_SPLIT", value: 2)
!327 = !DIEnumerator(name: "MAIN_WINDOW_TYPE_RSPLIT", value: 3)
!328 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !329, line: 25, size: 32, align: 32, elements: !330)
!329 = !DIFile(filename: "../../../src/core/commands.h", directory: "/home/lichi/Desktop/irssi/task1")
!330 = !{!331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348}
!331 = !DIEnumerator(name: "CMDERR_OPTION_UNKNOWN", value: -3)
!332 = !DIEnumerator(name: "CMDERR_OPTION_AMBIGUOUS", value: -2)
!333 = !DIEnumerator(name: "CMDERR_OPTION_ARG_MISSING", value: -1)
!334 = !DIEnumerator(name: "CMDERR_UNKNOWN", value: 0)
!335 = !DIEnumerator(name: "CMDERR_AMBIGUOUS", value: 1)
!336 = !DIEnumerator(name: "CMDERR_ERRNO", value: 2)
!337 = !DIEnumerator(name: "CMDERR_NOT_ENOUGH_PARAMS", value: 3)
!338 = !DIEnumerator(name: "CMDERR_NOT_CONNECTED", value: 4)
!339 = !DIEnumerator(name: "CMDERR_NOT_JOINED", value: 5)
!340 = !DIEnumerator(name: "CMDERR_CHAN_NOT_FOUND", value: 6)
!341 = !DIEnumerator(name: "CMDERR_CHAN_NOT_SYNCED", value: 7)
!342 = !DIEnumerator(name: "CMDERR_ILLEGAL_PROTO", value: 8)
!343 = !DIEnumerator(name: "CMDERR_NOT_GOOD_IDEA", value: 9)
!344 = !DIEnumerator(name: "CMDERR_INVALID_TIME", value: 10)
!345 = !DIEnumerator(name: "CMDERR_INVALID_CHARSET", value: 11)
!346 = !DIEnumerator(name: "CMDERR_EVAL_MAX_RECURSE", value: 12)
!347 = !DIEnumerator(name: "CMDERR_PROGRAM_NOT_FOUND", value: 13)
!348 = !DIEnumerator(name: "CMDERR_NO_SERVER_DEFINED", value: 14)
!349 = !{!350, !351, !358, !362, !364, !365, !367}
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !352, line: 9, baseType: !353)
!352 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64, align: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{null, !356, !356, !356, !356, !356, !356}
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64, align: 64)
!357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64, align: 64)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !360, line: 46, baseType: !361)
!360 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!361 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64, align: 64)
!363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !361)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !360, line: 77, baseType: !350)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !360, line: 48, baseType: !366)
!366 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64, align: 64)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !369, line: 107, baseType: !370)
!369 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !371, line: 30, size: 2240, align: 64, elements: !372)
!371 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!372 = !{!373, !376, !377, !378, !606, !611, !612, !613, !614, !615, !616, !617, !618, !619, !623, !624, !628, !629, !630, !634, !639, !640, !641, !642, !643, !644, !645, !646, !652, !653, !654, !655, !656, !660, !664, !668, !672, !676, !681, !688, !695, !699}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !370, file: !374, line: 3, baseType: !375, size: 32, align: 32)
!374 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!375 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !370, file: !374, line: 4, baseType: !375, size: 32, align: 32, offset: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !370, file: !374, line: 6, baseType: !375, size: 32, align: 32, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !370, file: !374, line: 8, baseType: !379, size: 64, align: 64, offset: 128)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64, align: 64)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !369, line: 113, baseType: !381)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !371, line: 25, size: 1920, align: 64, elements: !382)
!382 = !{!383, !385, !386, !387, !389, !390, !391, !392, !393, !395, !396, !397, !398, !399, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !381, file: !384, line: 3, baseType: !375, size: 32, align: 32)
!384 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!385 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !381, file: !384, line: 4, baseType: !375, size: 32, align: 32, offset: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !381, file: !384, line: 6, baseType: !375, size: 32, align: 32, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !381, file: !384, line: 9, baseType: !388, size: 64, align: 64, offset: 128)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64, align: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !381, file: !384, line: 10, baseType: !375, size: 32, align: 32, offset: 192)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !381, file: !384, line: 11, baseType: !388, size: 64, align: 64, offset: 256)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !381, file: !384, line: 11, baseType: !388, size: 64, align: 64, offset: 320)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !381, file: !384, line: 11, baseType: !388, size: 64, align: 64, offset: 384)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !381, file: !384, line: 13, baseType: !394, size: 16, align: 16, offset: 448)
!394 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !381, file: !384, line: 14, baseType: !388, size: 64, align: 64, offset: 512)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !381, file: !384, line: 15, baseType: !388, size: 64, align: 64, offset: 576)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !381, file: !384, line: 16, baseType: !375, size: 32, align: 32, offset: 640)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !381, file: !384, line: 17, baseType: !388, size: 64, align: 64, offset: 704)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !381, file: !384, line: 19, baseType: !400, size: 64, align: 64, offset: 768)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64, align: 64)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !369, line: 99, baseType: !402)
!402 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !369, line: 99, flags: DIFlagFwdDecl)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !381, file: !384, line: 19, baseType: !400, size: 64, align: 64, offset: 832)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !381, file: !384, line: 21, baseType: !388, size: 64, align: 64, offset: 896)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !381, file: !384, line: 22, baseType: !388, size: 64, align: 64, offset: 960)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !381, file: !384, line: 23, baseType: !388, size: 64, align: 64, offset: 1024)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !381, file: !384, line: 24, baseType: !388, size: 64, align: 64, offset: 1088)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !381, file: !384, line: 26, baseType: !388, size: 64, align: 64, offset: 1152)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !381, file: !384, line: 27, baseType: !388, size: 64, align: 64, offset: 1216)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !381, file: !384, line: 28, baseType: !388, size: 64, align: 64, offset: 1280)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !381, file: !384, line: 29, baseType: !388, size: 64, align: 64, offset: 1344)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !381, file: !384, line: 30, baseType: !388, size: 64, align: 64, offset: 1408)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !381, file: !384, line: 31, baseType: !388, size: 64, align: 64, offset: 1472)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !381, file: !384, line: 32, baseType: !388, size: 64, align: 64, offset: 1536)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !381, file: !384, line: 33, baseType: !388, size: 64, align: 64, offset: 1600)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !381, file: !384, line: 35, baseType: !417, size: 64, align: 64, offset: 1664)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64, align: 64)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !419)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !420)
!420 = !{!421, !423, !563, !564, !569, !570, !571, !572, !573, !582, !583, !584, !588, !589, !590, !591, !592, !593, !594, !595}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !419, file: !4, line: 100, baseType: !422, size: 32, align: 32)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !360, line: 49, baseType: !375)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !419, file: !4, line: 101, baseType: !424, size: 64, align: 64, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64, align: 64)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !426)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !427)
!427 = !{!428, !450, !456, !462, !466, !550, !554, !559}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !426, file: !4, line: 133, baseType: !429, size: 64, align: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64, align: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{!432, !417, !358, !433, !436, !437}
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !434, line: 66, baseType: !435)
!434 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!435 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64, align: 64)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64, align: 64)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64, align: 64)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !440, line: 42, baseType: !441)
!440 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !440, line: 44, size: 128, align: 64, elements: !442)
!442 = !{!443, !448, !449}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !441, file: !440, line: 46, baseType: !444, size: 32, align: 32)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !445, line: 36, baseType: !446)
!445 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !434, line: 45, baseType: !447)
!447 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !441, file: !440, line: 47, baseType: !422, size: 32, align: 32, offset: 32)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !441, file: !440, line: 48, baseType: !358, size: 64, align: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !426, file: !4, line: 138, baseType: !451, size: 64, align: 64, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64, align: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!432, !417, !454, !433, !436, !437}
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64, align: 64)
!455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !359)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !426, file: !4, line: 143, baseType: !457, size: 64, align: 64, offset: 128)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64, align: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{!432, !417, !460, !461, !437}
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !434, line: 51, baseType: !366)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !426, file: !4, line: 147, baseType: !463, size: 64, align: 64, offset: 192)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64, align: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!432, !417, !437}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !426, file: !4, line: 149, baseType: !467, size: 64, align: 64, offset: 256)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64, align: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{!470, !417, !549}
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64, align: 64)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !472)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !473)
!473 = !{!474, !475, !496, !525, !527, !531, !532, !533, !534, !542, !543, !544, !545}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !472, file: !16, line: 174, baseType: !364, size: 64, align: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !472, file: !16, line: 175, baseType: !476, size: 64, align: 64, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64, align: 64)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !478)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !479)
!479 = !{!480, !484, !485}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !478, file: !16, line: 198, baseType: !481, size: 64, align: 64)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64, align: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{null, !364}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !478, file: !16, line: 199, baseType: !481, size: 64, align: 64, offset: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !478, file: !16, line: 200, baseType: !486, size: 64, align: 64, offset: 128)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64, align: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{null, !364, !470, !489, !495}
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64, align: 64)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !491)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64, align: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{!494, !364}
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !360, line: 50, baseType: !422)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64, align: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !472, file: !16, line: 177, baseType: !497, size: 64, align: 64, offset: 128)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64, align: 64)
!498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !499)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !500)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !501)
!501 = !{!502, !507, !511, !515, !519, !520}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !500, file: !16, line: 216, baseType: !503, size: 64, align: 64)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64, align: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!494, !470, !506}
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64, align: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !500, file: !16, line: 218, baseType: !508, size: 64, align: 64, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64, align: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!494, !470}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !500, file: !16, line: 219, baseType: !512, size: 64, align: 64, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64, align: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!494, !470, !490, !364}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !500, file: !16, line: 222, baseType: !516, size: 64, align: 64, offset: 192)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64, align: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{null, !470}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !500, file: !16, line: 226, baseType: !490, size: 64, align: 64, offset: 256)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !500, file: !16, line: 227, baseType: !521, size: 64, align: 64, offset: 320)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !522)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64, align: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{null}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !472, file: !16, line: 178, baseType: !526, size: 32, align: 32, offset: 192)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !360, line: 55, baseType: !447)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !472, file: !16, line: 180, baseType: !528, size: 64, align: 64, offset: 256)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64, align: 64)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !530)
!530 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !472, file: !16, line: 182, baseType: !422, size: 32, align: 32, offset: 320)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !472, file: !16, line: 183, baseType: !526, size: 32, align: 32, offset: 352)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !472, file: !16, line: 184, baseType: !526, size: 32, align: 32, offset: 384)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !472, file: !16, line: 186, baseType: !535, size: 64, align: 64, offset: 448)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64, align: 64)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !537, line: 37, baseType: !538)
!537 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !537, line: 39, size: 128, align: 64, elements: !539)
!539 = !{!540, !541}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !538, file: !537, line: 41, baseType: !364, size: 64, align: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !538, file: !537, line: 42, baseType: !535, size: 64, align: 64, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !472, file: !16, line: 188, baseType: !470, size: 64, align: 64, offset: 512)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !472, file: !16, line: 189, baseType: !470, size: 64, align: 64, offset: 576)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !472, file: !16, line: 191, baseType: !388, size: 64, align: 64, offset: 640)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !472, file: !16, line: 193, baseType: !546, size: 64, align: 64, offset: 704)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64, align: 64)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !548)
!548 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !426, file: !4, line: 151, baseType: !551, size: 64, align: 64, offset: 320)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64, align: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{null, !417}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !426, file: !4, line: 152, baseType: !555, size: 64, align: 64, offset: 384)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64, align: 64)
!556 = !DISubroutineType(types: !557)
!557 = !{!432, !417, !558, !437}
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !426, file: !4, line: 155, baseType: !560, size: 64, align: 64, offset: 448)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64, align: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{!558, !417}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !419, file: !4, line: 103, baseType: !358, size: 64, align: 64, offset: 128)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !419, file: !4, line: 104, baseType: !565, size: 64, align: 64, offset: 192)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !566, line: 77, baseType: !567)
!566 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64, align: 64)
!568 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !566, line: 77, flags: DIFlagFwdDecl)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !419, file: !4, line: 105, baseType: !565, size: 64, align: 64, offset: 256)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !419, file: !4, line: 106, baseType: !358, size: 64, align: 64, offset: 320)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !419, file: !4, line: 107, baseType: !526, size: 32, align: 32, offset: 384)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !419, file: !4, line: 109, baseType: !433, size: 64, align: 64, offset: 448)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !419, file: !4, line: 110, baseType: !574, size: 64, align: 64, offset: 512)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64, align: 64)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !576, line: 39, baseType: !577)
!576 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !576, line: 41, size: 192, align: 64, elements: !578)
!578 = !{!579, !580, !581}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !577, file: !576, line: 43, baseType: !358, size: 64, align: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !577, file: !576, line: 44, baseType: !433, size: 64, align: 64, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !577, file: !576, line: 45, baseType: !433, size: 64, align: 64, offset: 128)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !419, file: !4, line: 111, baseType: !574, size: 64, align: 64, offset: 576)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !419, file: !4, line: 112, baseType: !574, size: 64, align: 64, offset: 640)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !419, file: !4, line: 113, baseType: !585, size: 48, align: 8, offset: 704)
!585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !359, size: 48, align: 8, elements: !586)
!586 = !{!587}
!587 = !DISubrange(count: 6)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !419, file: !4, line: 117, baseType: !526, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !419, file: !4, line: 118, baseType: !526, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !419, file: !4, line: 119, baseType: !526, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !419, file: !4, line: 120, baseType: !526, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !419, file: !4, line: 121, baseType: !526, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !419, file: !4, line: 122, baseType: !526, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !419, file: !4, line: 124, baseType: !364, size: 64, align: 64, offset: 768)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !419, file: !4, line: 125, baseType: !364, size: 64, align: 64, offset: 832)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !381, file: !384, line: 38, baseType: !447, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !381, file: !384, line: 39, baseType: !447, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !381, file: !384, line: 40, baseType: !447, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !381, file: !384, line: 41, baseType: !447, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !381, file: !384, line: 42, baseType: !447, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !381, file: !384, line: 43, baseType: !447, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !381, file: !384, line: 44, baseType: !447, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !381, file: !384, line: 45, baseType: !447, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !381, file: !384, line: 46, baseType: !388, size: 64, align: 64, offset: 1792)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !381, file: !384, line: 47, baseType: !388, size: 64, align: 64, offset: 1856)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !370, file: !374, line: 9, baseType: !607, size: 64, align: 64, offset: 192)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !608, line: 75, baseType: !609)
!608 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !610, line: 139, baseType: !366)
!610 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!611 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !370, file: !374, line: 10, baseType: !607, size: 64, align: 64, offset: 256)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !370, file: !374, line: 12, baseType: !388, size: 64, align: 64, offset: 320)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !370, file: !374, line: 13, baseType: !388, size: 64, align: 64, offset: 384)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !370, file: !374, line: 15, baseType: !447, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !370, file: !374, line: 16, baseType: !447, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !370, file: !374, line: 17, baseType: !447, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !370, file: !374, line: 18, baseType: !447, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !370, file: !374, line: 19, baseType: !447, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !370, file: !374, line: 21, baseType: !620, size: 64, align: 64, offset: 512)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64, align: 64)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !369, line: 102, baseType: !622)
!622 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !369, line: 102, flags: DIFlagFwdDecl)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !370, file: !374, line: 22, baseType: !375, size: 32, align: 32, offset: 576)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !370, file: !374, line: 25, baseType: !625, size: 128, align: 64, offset: 640)
!625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !417, size: 128, align: 64, elements: !626)
!626 = !{!627}
!627 = !DISubrange(count: 2)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !370, file: !374, line: 26, baseType: !375, size: 32, align: 32, offset: 768)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !370, file: !374, line: 27, baseType: !375, size: 32, align: 32, offset: 800)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !370, file: !374, line: 29, baseType: !631, size: 64, align: 64, offset: 832)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64, align: 64)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !369, line: 103, baseType: !633)
!633 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !369, line: 103, flags: DIFlagFwdDecl)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !370, file: !374, line: 30, baseType: !635, size: 64, align: 64, offset: 896)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64, align: 64)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !637, line: 37, baseType: !638)
!637 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!638 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !637, line: 37, flags: DIFlagFwdDecl)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !370, file: !374, line: 32, baseType: !388, size: 64, align: 64, offset: 960)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !370, file: !374, line: 33, baseType: !388, size: 64, align: 64, offset: 1024)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !370, file: !374, line: 34, baseType: !388, size: 64, align: 64, offset: 1088)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !370, file: !374, line: 35, baseType: !447, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !370, file: !374, line: 36, baseType: !447, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !370, file: !374, line: 37, baseType: !447, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !370, file: !374, line: 38, baseType: !447, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !370, file: !374, line: 40, baseType: !647, size: 128, align: 64, offset: 1216)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !360, line: 504, baseType: !648)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !360, line: 506, size: 128, align: 64, elements: !649)
!649 = !{!650, !651}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !648, file: !360, line: 508, baseType: !365, size: 64, align: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !648, file: !360, line: 509, baseType: !365, size: 64, align: 64, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !370, file: !374, line: 41, baseType: !607, size: 64, align: 64, offset: 1344)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !370, file: !374, line: 42, baseType: !375, size: 32, align: 32, offset: 1408)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !370, file: !374, line: 44, baseType: !535, size: 64, align: 64, offset: 1472)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !370, file: !374, line: 45, baseType: !535, size: 64, align: 64, offset: 1536)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !370, file: !374, line: 53, baseType: !657, size: 64, align: 64, offset: 1600)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64, align: 64)
!658 = !DISubroutineType(types: !659)
!659 = !{null, !367, !362, !375}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !370, file: !374, line: 55, baseType: !661, size: 64, align: 64, offset: 1664)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64, align: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{!375, !367, !361}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !370, file: !374, line: 57, baseType: !665, size: 64, align: 64, offset: 1728)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64, align: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{!375, !367, !362}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !370, file: !374, line: 60, baseType: !669, size: 64, align: 64, offset: 1792)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64, align: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{!362, !367}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !370, file: !374, line: 62, baseType: !673, size: 64, align: 64, offset: 1856)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64, align: 64)
!674 = !DISubroutineType(types: !675)
!675 = !{null, !367, !362, !362, !375}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !370, file: !374, line: 65, baseType: !677, size: 64, align: 64, offset: 1920)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64, align: 64)
!678 = !DISubroutineType(types: !679)
!679 = !{!680, !367, !362, !362}
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64, align: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !370, file: !374, line: 69, baseType: !682, size: 64, align: 64, offset: 1984)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64, align: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{!685, !367, !362}
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64, align: 64)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !369, line: 109, baseType: !687)
!687 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !369, line: 109, flags: DIFlagFwdDecl)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !370, file: !374, line: 70, baseType: !689, size: 64, align: 64, offset: 2048)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64, align: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{!692, !367, !362}
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64, align: 64)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !369, line: 110, baseType: !694)
!694 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !369, line: 110, flags: DIFlagFwdDecl)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !370, file: !374, line: 71, baseType: !696, size: 64, align: 64, offset: 2112)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64, align: 64)
!697 = !DISubroutineType(types: !698)
!698 = !{!375, !362, !362}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !370, file: !374, line: 73, baseType: !696, size: 64, align: 64, offset: 2176)
!700 = !{i32 2, !"Dwarf Version", i32 4}
!701 = !{i32 2, !"Debug Info Version", i32 3}
!702 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!703 = distinct !DISubprogram(name: "cmd_window_history", scope: !704, file: !704, line: 621, type: !705, isLocal: false, isDefinition: true, scopeLine: 622, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !707)
!704 = !DIFile(filename: "window-commands.c", directory: "/home/lichi/Desktop/irssi/task1")
!705 = !DISubroutineType(types: !706)
!706 = !{null, !362}
!707 = !{}
!708 = !DILocalVariable(name: "data", arg: 1, scope: !703, file: !704, line: 621, type: !362)
!709 = !DIExpression()
!710 = !DILocation(line: 621, column: 37, scope: !703)
!711 = !DILocalVariable(name: "optlist", scope: !703, file: !704, line: 623, type: !635)
!712 = !DILocation(line: 623, column: 14, scope: !703)
!713 = !DILocalVariable(name: "name", scope: !703, file: !704, line: 624, type: !388)
!714 = !DILocation(line: 624, column: 8, scope: !703)
!715 = !DILocalVariable(name: "free_arg", scope: !703, file: !704, line: 625, type: !350)
!716 = !DILocation(line: 625, column: 8, scope: !703)
!717 = !DILocation(line: 627, column: 22, scope: !718)
!718 = distinct !DILexicalBlock(scope: !703, file: !704, line: 627, column: 6)
!719 = !DILocation(line: 627, column: 7, scope: !718)
!720 = !DILocation(line: 627, column: 6, scope: !703)
!721 = !DILocation(line: 629, column: 3, scope: !718)
!722 = !DILocation(line: 631, column: 26, scope: !723)
!723 = distinct !DILexicalBlock(scope: !703, file: !704, line: 631, column: 6)
!724 = !DILocation(line: 631, column: 6, scope: !723)
!725 = !DILocation(line: 631, column: 44, scope: !723)
!726 = !DILocation(line: 631, column: 6, scope: !703)
!727 = !DILocation(line: 632, column: 22, scope: !728)
!728 = distinct !DILexicalBlock(scope: !723, file: !704, line: 631, column: 52)
!729 = !DILocation(line: 632, column: 3, scope: !728)
!730 = !DILocation(line: 633, column: 24, scope: !728)
!731 = !DILocation(line: 633, column: 36, scope: !728)
!732 = !DILocation(line: 633, column: 3, scope: !728)
!733 = !DILocation(line: 634, column: 2, scope: !728)
!734 = !DILocation(line: 635, column: 22, scope: !735)
!735 = distinct !DILexicalBlock(scope: !723, file: !704, line: 634, column: 9)
!736 = !DILocation(line: 635, column: 34, scope: !735)
!737 = !DILocation(line: 635, column: 3, scope: !735)
!738 = !DILocation(line: 638, column: 18, scope: !703)
!739 = !DILocation(line: 638, column: 2, scope: !703)
!740 = !DILocation(line: 639, column: 1, scope: !703)
!741 = !DILocation(line: 639, column: 1, scope: !742)
!742 = !DILexicalBlockFile(scope: !703, file: !704, discriminator: 1)
!743 = distinct !DISubprogram(name: "window_commands_init", scope: !704, file: !704, line: 870, type: !523, isLocal: false, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !707)
!744 = !DILocation(line: 872, column: 2, scope: !743)
!745 = !DILocation(line: 874, column: 2, scope: !743)
!746 = !DILocation(line: 875, column: 2, scope: !743)
!747 = !DILocation(line: 876, column: 2, scope: !743)
!748 = !DILocation(line: 877, column: 2, scope: !743)
!749 = !DILocation(line: 878, column: 2, scope: !743)
!750 = !DILocation(line: 879, column: 2, scope: !743)
!751 = !DILocation(line: 880, column: 2, scope: !743)
!752 = !DILocation(line: 881, column: 2, scope: !743)
!753 = !DILocation(line: 882, column: 2, scope: !743)
!754 = !DILocation(line: 883, column: 2, scope: !743)
!755 = !DILocation(line: 884, column: 2, scope: !743)
!756 = !DILocation(line: 885, column: 2, scope: !743)
!757 = !DILocation(line: 886, column: 2, scope: !743)
!758 = !DILocation(line: 887, column: 2, scope: !743)
!759 = !DILocation(line: 888, column: 2, scope: !743)
!760 = !DILocation(line: 889, column: 2, scope: !743)
!761 = !DILocation(line: 890, column: 2, scope: !743)
!762 = !DILocation(line: 891, column: 2, scope: !743)
!763 = !DILocation(line: 892, column: 2, scope: !743)
!764 = !DILocation(line: 893, column: 2, scope: !743)
!765 = !DILocation(line: 894, column: 2, scope: !743)
!766 = !DILocation(line: 895, column: 2, scope: !743)
!767 = !DILocation(line: 896, column: 2, scope: !743)
!768 = !DILocation(line: 897, column: 2, scope: !743)
!769 = !DILocation(line: 898, column: 2, scope: !743)
!770 = !DILocation(line: 899, column: 2, scope: !743)
!771 = !DILocation(line: 900, column: 2, scope: !743)
!772 = !DILocation(line: 901, column: 2, scope: !743)
!773 = !DILocation(line: 903, column: 2, scope: !743)
!774 = !DILocation(line: 905, column: 2, scope: !743)
!775 = !DILocation(line: 906, column: 2, scope: !743)
!776 = !DILocation(line: 908, column: 2, scope: !743)
!777 = !DILocation(line: 909, column: 2, scope: !743)
!778 = !DILocation(line: 910, column: 2, scope: !743)
!779 = !DILocation(line: 911, column: 2, scope: !743)
!780 = !DILocation(line: 912, column: 1, scope: !743)
!781 = distinct !DISubprogram(name: "cmd_window", scope: !704, file: !704, line: 160, type: !782, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !707)
!782 = !DISubroutineType(types: !783)
!783 = !{null, !362, !350, !784}
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64, align: 64)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !369, line: 108, baseType: !786)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !787, line: 5, size: 704, align: 64, elements: !788)
!787 = !DIFile(filename: "../../../src/core/window-item-def.h", directory: "/home/lichi/Desktop/irssi/task1")
!788 = !{!789, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !804}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !786, file: !790, line: 3, baseType: !375, size: 32, align: 32)
!790 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!791 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !786, file: !790, line: 4, baseType: !375, size: 32, align: 32, offset: 32)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !786, file: !790, line: 5, baseType: !635, size: 64, align: 64, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !786, file: !790, line: 7, baseType: !350, size: 64, align: 64, offset: 128)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !786, file: !790, line: 8, baseType: !367, size: 64, align: 64, offset: 192)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !786, file: !790, line: 9, baseType: !388, size: 64, align: 64, offset: 256)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !786, file: !790, line: 10, baseType: !388, size: 64, align: 64, offset: 320)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !786, file: !790, line: 11, baseType: !607, size: 64, align: 64, offset: 384)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !786, file: !790, line: 12, baseType: !375, size: 32, align: 32, offset: 448)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !786, file: !790, line: 13, baseType: !388, size: 64, align: 64, offset: 512)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !786, file: !790, line: 15, baseType: !801, size: 64, align: 64, offset: 576)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64, align: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{null, !784}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !786, file: !790, line: 17, baseType: !805, size: 64, align: 64, offset: 640)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64, align: 64)
!806 = !DISubroutineType(types: !807)
!807 = !{!362, !784}
!808 = !DILocalVariable(name: "data", arg: 1, scope: !781, file: !704, line: 160, type: !362)
!809 = !DILocation(line: 160, column: 36, scope: !781)
!810 = !DILocalVariable(name: "server", arg: 2, scope: !781, file: !704, line: 160, type: !350)
!811 = !DILocation(line: 160, column: 48, scope: !781)
!812 = !DILocalVariable(name: "item", arg: 3, scope: !781, file: !704, line: 160, type: !784)
!813 = !DILocation(line: 160, column: 69, scope: !781)
!814 = !DILocation(line: 162, column: 9, scope: !781)
!815 = !DILocation(line: 162, column: 17, scope: !816)
!816 = !DILexicalBlockFile(scope: !781, file: !704, discriminator: 1)
!817 = !DILocation(line: 162, column: 16, scope: !816)
!818 = !DILocation(line: 162, column: 22, scope: !816)
!819 = !DILocation(line: 162, column: 9, scope: !816)
!820 = !DILocation(line: 162, column: 34, scope: !821)
!821 = !DILexicalBlockFile(scope: !781, file: !704, discriminator: 2)
!822 = !DILocation(line: 162, column: 9, scope: !821)
!823 = distinct !{!823, !814}
!824 = !DILocation(line: 164, column: 7, scope: !825)
!825 = distinct !DILexicalBlock(scope: !781, file: !704, line: 164, column: 6)
!826 = !DILocation(line: 164, column: 6, scope: !825)
!827 = !DILocation(line: 164, column: 12, scope: !825)
!828 = !DILocation(line: 164, column: 6, scope: !781)
!829 = !DILocation(line: 165, column: 33, scope: !825)
!830 = !DILocation(line: 165, column: 17, scope: !825)
!831 = !DILocation(line: 166, column: 22, scope: !832)
!832 = distinct !DILexicalBlock(scope: !825, file: !704, line: 166, column: 11)
!833 = !DILocation(line: 166, column: 11, scope: !832)
!834 = !DILocation(line: 166, column: 11, scope: !825)
!835 = !DILocation(line: 167, column: 57, scope: !832)
!836 = !DILocation(line: 167, column: 63, scope: !832)
!837 = !DILocation(line: 167, column: 71, scope: !832)
!838 = !DILocation(line: 167, column: 17, scope: !832)
!839 = !DILocation(line: 169, column: 28, scope: !832)
!840 = !DILocation(line: 169, column: 34, scope: !832)
!841 = !DILocation(line: 169, column: 42, scope: !832)
!842 = !DILocation(line: 169, column: 3, scope: !832)
!843 = !DILocation(line: 170, column: 1, scope: !781)
!844 = distinct !DISubprogram(name: "cmd_window_new", scope: !704, file: !704, line: 173, type: !782, isLocal: true, isDefinition: true, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !707)
!845 = !DILocalVariable(name: "data", arg: 1, scope: !844, file: !704, line: 173, type: !362)
!846 = !DILocation(line: 173, column: 40, scope: !844)
!847 = !DILocalVariable(name: "server", arg: 2, scope: !844, file: !704, line: 173, type: !350)
!848 = !DILocation(line: 173, column: 52, scope: !844)
!849 = !DILocalVariable(name: "item", arg: 3, scope: !844, file: !704, line: 173, type: !784)
!850 = !DILocation(line: 173, column: 73, scope: !844)
!851 = !DILocalVariable(name: "window", scope: !844, file: !704, line: 175, type: !852)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64, align: 64)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "WINDOW_REC", file: !369, line: 117, baseType: !854)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WINDOW_REC", file: !321, line: 28, size: 1280, align: 64, elements: !855)
!855 = !{!856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !889, !890, !891, !892, !893, !894, !895, !896}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "refnum", scope: !854, file: !321, line: 29, baseType: !375, size: 32, align: 32)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !854, file: !321, line: 30, baseType: !388, size: 64, align: 64, offset: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !854, file: !321, line: 32, baseType: !375, size: 32, align: 32, offset: 128)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !854, file: !321, line: 32, baseType: !375, size: 32, align: 32, offset: 160)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !854, file: !321, line: 34, baseType: !535, size: 64, align: 64, offset: 192)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !854, file: !321, line: 35, baseType: !784, size: 64, align: 64, offset: 256)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "active_server", scope: !854, file: !321, line: 36, baseType: !367, size: 64, align: 64, offset: 320)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "connect_server", scope: !854, file: !321, line: 37, baseType: !367, size: 64, align: 64, offset: 384)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !854, file: !321, line: 38, baseType: !388, size: 64, align: 64, offset: 448)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !854, file: !321, line: 40, baseType: !375, size: 32, align: 32, offset: 512)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "bound_items", scope: !854, file: !321, line: 41, baseType: !535, size: 64, align: 64, offset: 576)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "immortal", scope: !854, file: !321, line: 43, baseType: !447, size: 1, align: 32, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "sticky_refnum", scope: !854, file: !321, line: 44, baseType: !447, size: 1, align: 32, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !854, file: !321, line: 45, baseType: !447, size: 1, align: 32, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !854, file: !321, line: 48, baseType: !871, size: 64, align: 64, offset: 704)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64, align: 64)
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "HISTORY_REC", file: !873, line: 14, baseType: !874)
!873 = !DIFile(filename: "command-history.h", directory: "/home/lichi/Desktop/irssi/task1")
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !873, line: 6, size: 256, align: 64, elements: !875)
!875 = !{!876, !877, !886, !887, !888}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !874, file: !873, line: 7, baseType: !388, size: 64, align: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !874, file: !873, line: 9, baseType: !878, size: 64, align: 64, offset: 64)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64, align: 64)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "GList", file: !880, line: 37, baseType: !881)
!880 = !DIFile(filename: "/usr/include/glib-2.0/glib/glist.h", directory: "/home/lichi/Desktop/irssi/task1")
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GList", file: !880, line: 39, size: 192, align: 64, elements: !882)
!882 = !{!883, !884, !885}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !881, file: !880, line: 41, baseType: !364, size: 64, align: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !881, file: !880, line: 42, baseType: !878, size: 64, align: 64, offset: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !881, file: !880, line: 43, baseType: !878, size: 64, align: 64, offset: 128)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "lines", scope: !874, file: !873, line: 10, baseType: !375, size: 32, align: 32, offset: 128)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !874, file: !873, line: 12, baseType: !375, size: 32, align: 32, offset: 160)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "redo", scope: !874, file: !873, line: 13, baseType: !375, size: 1, align: 32, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "history_name", scope: !854, file: !321, line: 49, baseType: !388, size: 64, align: 64, offset: 768)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !854, file: !321, line: 51, baseType: !375, size: 32, align: 32, offset: 832)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !854, file: !321, line: 52, baseType: !388, size: 64, align: 64, offset: 896)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "last_timestamp", scope: !854, file: !321, line: 54, baseType: !607, size: 64, align: 64, offset: 960)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "last_line", scope: !854, file: !321, line: 55, baseType: !607, size: 64, align: 64, offset: 1024)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "theme_name", scope: !854, file: !321, line: 57, baseType: !388, size: 64, align: 64, offset: 1088)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "theme", scope: !854, file: !321, line: 58, baseType: !350, size: 64, align: 64, offset: 1152)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "gui_data", scope: !854, file: !321, line: 60, baseType: !350, size: 64, align: 64, offset: 1216)
!897 = !DILocation(line: 175, column: 14, scope: !844)
!898 = !DILocalVariable(name: "type", scope: !844, file: !704, line: 176, type: !375)
!899 = !DILocation(line: 176, column: 6, scope: !844)
!900 = !DILocation(line: 178, column: 2, scope: !844)
!901 = distinct !{!901, !900}
!902 = !DILocation(line: 178, column: 10, scope: !903)
!903 = !DILexicalBlockFile(scope: !904, file: !704, discriminator: 1)
!904 = distinct !DILexicalBlock(scope: !905, file: !704, line: 178, column: 10)
!905 = distinct !DILexicalBlock(scope: !844, file: !704, line: 178, column: 4)
!906 = !DILocation(line: 178, column: 15, scope: !903)
!907 = !DILocation(line: 178, column: 5, scope: !908)
!908 = !DILexicalBlockFile(scope: !909, file: !704, discriminator: 2)
!909 = distinct !DILexicalBlock(scope: !904, file: !704, line: 178, column: 3)
!910 = !DILocation(line: 178, column: 14, scope: !911)
!911 = !DILexicalBlockFile(scope: !912, file: !704, discriminator: 3)
!912 = distinct !DILexicalBlock(scope: !904, file: !704, line: 178, column: 12)
!913 = !DILocation(line: 178, column: 99, scope: !911)
!914 = !DILocation(line: 178, column: 110, scope: !915)
!915 = !DILexicalBlockFile(scope: !905, file: !704, discriminator: 4)
!916 = !DILocation(line: 180, column: 30, scope: !844)
!917 = !DILocation(line: 180, column: 10, scope: !844)
!918 = !DILocation(line: 180, column: 46, scope: !844)
!919 = !DILocation(line: 180, column: 51, scope: !844)
!920 = !DILocation(line: 180, column: 73, scope: !921)
!921 = !DILexicalBlockFile(scope: !844, file: !704, discriminator: 1)
!922 = !DILocation(line: 180, column: 54, scope: !921)
!923 = !DILocation(line: 180, column: 86, scope: !921)
!924 = !DILocation(line: 180, column: 9, scope: !921)
!925 = !DILocation(line: 180, column: 9, scope: !926)
!926 = !DILexicalBlockFile(scope: !844, file: !704, discriminator: 2)
!927 = !DILocation(line: 181, column: 22, scope: !844)
!928 = !DILocation(line: 181, column: 3, scope: !844)
!929 = !DILocation(line: 181, column: 37, scope: !844)
!930 = !DILocation(line: 181, column: 3, scope: !921)
!931 = !DILocation(line: 182, column: 23, scope: !844)
!932 = !DILocation(line: 182, column: 3, scope: !844)
!933 = !DILocation(line: 182, column: 38, scope: !844)
!934 = !DILocation(line: 181, column: 3, scope: !926)
!935 = !DILocation(line: 181, column: 3, scope: !936)
!936 = !DILexicalBlockFile(scope: !844, file: !704, discriminator: 3)
!937 = !DILocation(line: 180, column: 9, scope: !936)
!938 = !DILocation(line: 180, column: 9, scope: !939)
!939 = !DILexicalBlockFile(scope: !844, file: !704, discriminator: 4)
!940 = !DILocation(line: 180, column: 7, scope: !939)
!941 = !DILocation(line: 183, column: 68, scope: !844)
!942 = !DILocation(line: 183, column: 59, scope: !844)
!943 = !DILocation(line: 183, column: 48, scope: !844)
!944 = !DILocation(line: 183, column: 2, scope: !844)
!945 = !DILocation(line: 185, column: 11, scope: !844)
!946 = !DILocation(line: 185, column: 9, scope: !844)
!947 = !DILocation(line: 186, column: 23, scope: !844)
!948 = !DILocation(line: 186, column: 31, scope: !844)
!949 = !DILocation(line: 186, column: 2, scope: !844)
!950 = !DILocation(line: 187, column: 1, scope: !844)
!951 = !DILocation(line: 187, column: 1, scope: !921)
!952 = distinct !DISubprogram(name: "cmd_window_close", scope: !704, file: !704, line: 190, type: !705, isLocal: true, isDefinition: true, scopeLine: 191, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !707)
!953 = !DILocalVariable(name: "data", arg: 1, scope: !952, file: !704, line: 190, type: !362)
!954 = !DILocation(line: 190, column: 42, scope: !952)
!955 = !DILocalVariable(name: "tmp", scope: !952, file: !704, line: 192, type: !535)
!956 = !DILocation(line: 192, column: 17, scope: !952)
!957 = !DILocalVariable(name: "destroys", scope: !952, file: !704, line: 192, type: !535)
!958 = !DILocation(line: 192, column: 23, scope: !952)
!959 = !DILocalVariable(name: "first", scope: !952, file: !704, line: 193, type: !388)
!960 = !DILocation(line: 193, column: 8, scope: !952)
!961 = !DILocalVariable(name: "last", scope: !952, file: !704, line: 193, type: !388)
!962 = !DILocation(line: 193, column: 16, scope: !952)
!963 = !DILocalVariable(name: "first_num", scope: !952, file: !704, line: 194, type: !375)
!964 = !DILocation(line: 194, column: 13, scope: !952)
!965 = !DILocalVariable(name: "last_num", scope: !952, file: !704, line: 194, type: !375)
!966 = !DILocation(line: 194, column: 24, scope: !952)
!967 = !DILocalVariable(name: "free_arg", scope: !952, file: !704, line: 195, type: !350)
!968 = !DILocation(line: 195, column: 8, scope: !952)
!969 = !DILocation(line: 197, column: 22, scope: !970)
!970 = distinct !DILexicalBlock(scope: !952, file: !704, line: 197, column: 6)
!971 = !DILocation(line: 197, column: 7, scope: !970)
!972 = !DILocation(line: 197, column: 6, scope: !952)
!973 = !DILocation(line: 198, column: 3, scope: !970)
!974 = !DILocation(line: 200, column: 8, scope: !975)
!975 = distinct !DILexicalBlock(scope: !952, file: !704, line: 200, column: 6)
!976 = !DILocation(line: 200, column: 7, scope: !975)
!977 = !DILocation(line: 200, column: 14, scope: !975)
!978 = !DILocation(line: 200, column: 22, scope: !975)
!979 = !DILocation(line: 200, column: 37, scope: !980)
!980 = !DILexicalBlockFile(scope: !975, file: !704, discriminator: 1)
!981 = !DILocation(line: 200, column: 26, scope: !980)
!982 = !DILocation(line: 200, column: 51, scope: !980)
!983 = !DILocation(line: 201, column: 9, scope: !975)
!984 = !DILocation(line: 201, column: 8, scope: !975)
!985 = !DILocation(line: 201, column: 14, scope: !975)
!986 = !DILocation(line: 201, column: 23, scope: !975)
!987 = !DILocation(line: 201, column: 38, scope: !980)
!988 = !DILocation(line: 201, column: 27, scope: !980)
!989 = !DILocation(line: 200, column: 6, scope: !990)
!990 = !DILexicalBlockFile(scope: !952, file: !704, discriminator: 2)
!991 = !DILocation(line: 202, column: 19, scope: !992)
!992 = distinct !DILexicalBlock(scope: !975, file: !704, line: 201, column: 52)
!993 = !DILocation(line: 202, column: 3, scope: !992)
!994 = !DILocation(line: 203, column: 17, scope: !992)
!995 = !DILocation(line: 206, column: 15, scope: !952)
!996 = !DILocation(line: 206, column: 14, scope: !952)
!997 = !DILocation(line: 206, column: 21, scope: !952)
!998 = !DILocation(line: 206, column: 31, scope: !999)
!999 = !DILexicalBlockFile(scope: !952, file: !704, discriminator: 1)
!1000 = !DILocation(line: 206, column: 43, scope: !999)
!1001 = !DILocation(line: 206, column: 14, scope: !999)
!1002 = !DILocation(line: 206, column: 57, scope: !990)
!1003 = !DILocation(line: 206, column: 52, scope: !990)
!1004 = !DILocation(line: 206, column: 14, scope: !990)
!1005 = !DILocation(line: 206, column: 14, scope: !1006)
!1006 = !DILexicalBlockFile(scope: !952, file: !704, discriminator: 3)
!1007 = !DILocation(line: 206, column: 12, scope: !1006)
!1008 = !DILocation(line: 207, column: 14, scope: !952)
!1009 = !DILocation(line: 207, column: 13, scope: !952)
!1010 = !DILocation(line: 207, column: 19, scope: !952)
!1011 = !DILocation(line: 207, column: 29, scope: !999)
!1012 = !DILocation(line: 207, column: 13, scope: !999)
!1013 = !DILocation(line: 207, column: 46, scope: !990)
!1014 = !DILocation(line: 207, column: 41, scope: !990)
!1015 = !DILocation(line: 207, column: 13, scope: !990)
!1016 = !DILocation(line: 207, column: 13, scope: !1006)
!1017 = !DILocation(line: 207, column: 11, scope: !1006)
!1018 = !DILocation(line: 210, column: 18, scope: !952)
!1019 = !DILocation(line: 211, column: 13, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !952, file: !704, line: 211, column: 2)
!1021 = !DILocation(line: 211, column: 11, scope: !1020)
!1022 = !DILocation(line: 211, column: 7, scope: !1020)
!1023 = !DILocation(line: 211, column: 22, scope: !1024)
!1024 = !DILexicalBlockFile(scope: !1025, file: !704, discriminator: 1)
!1025 = distinct !DILexicalBlock(scope: !1020, file: !704, line: 211, column: 2)
!1026 = !DILocation(line: 211, column: 26, scope: !1024)
!1027 = !DILocation(line: 211, column: 2, scope: !1024)
!1028 = !DILocalVariable(name: "rec", scope: !1029, file: !704, line: 212, type: !852)
!1029 = distinct !DILexicalBlock(scope: !1025, file: !704, line: 211, column: 51)
!1030 = !DILocation(line: 212, column: 15, scope: !1029)
!1031 = !DILocation(line: 212, column: 21, scope: !1029)
!1032 = !DILocation(line: 212, column: 26, scope: !1029)
!1033 = !DILocation(line: 214, column: 7, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1029, file: !704, line: 214, column: 7)
!1035 = !DILocation(line: 214, column: 12, scope: !1034)
!1036 = !DILocation(line: 214, column: 22, scope: !1034)
!1037 = !DILocation(line: 214, column: 19, scope: !1034)
!1038 = !DILocation(line: 214, column: 32, scope: !1034)
!1039 = !DILocation(line: 214, column: 35, scope: !1040)
!1040 = !DILexicalBlockFile(scope: !1034, file: !704, discriminator: 1)
!1041 = !DILocation(line: 214, column: 40, scope: !1040)
!1042 = !DILocation(line: 214, column: 50, scope: !1040)
!1043 = !DILocation(line: 214, column: 47, scope: !1040)
!1044 = !DILocation(line: 214, column: 7, scope: !1040)
!1045 = !DILocation(line: 215, column: 30, scope: !1034)
!1046 = !DILocation(line: 215, column: 40, scope: !1034)
!1047 = !DILocation(line: 215, column: 15, scope: !1034)
!1048 = !DILocation(line: 215, column: 13, scope: !1034)
!1049 = !DILocation(line: 215, column: 4, scope: !1034)
!1050 = !DILocation(line: 216, column: 2, scope: !1029)
!1051 = !DILocation(line: 211, column: 40, scope: !1052)
!1052 = !DILexicalBlockFile(scope: !1025, file: !704, discriminator: 2)
!1053 = !DILocation(line: 211, column: 45, scope: !1052)
!1054 = !DILocation(line: 211, column: 38, scope: !1052)
!1055 = !DILocation(line: 211, column: 2, scope: !1052)
!1056 = distinct !{!1056, !1057}
!1057 = !DILocation(line: 211, column: 2, scope: !952)
!1058 = !DILocation(line: 219, column: 2, scope: !952)
!1059 = !DILocation(line: 219, column: 9, scope: !999)
!1060 = !DILocation(line: 219, column: 18, scope: !999)
!1061 = !DILocation(line: 219, column: 2, scope: !999)
!1062 = !DILocalVariable(name: "rec", scope: !1063, file: !704, line: 220, type: !852)
!1063 = distinct !DILexicalBlock(scope: !952, file: !704, line: 219, column: 26)
!1064 = !DILocation(line: 220, column: 15, scope: !1063)
!1065 = !DILocation(line: 220, column: 21, scope: !1063)
!1066 = !DILocation(line: 220, column: 31, scope: !1063)
!1067 = !DILocation(line: 222, column: 7, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1063, file: !704, line: 222, column: 7)
!1069 = !DILocation(line: 222, column: 16, scope: !1068)
!1070 = !DILocation(line: 222, column: 21, scope: !1068)
!1071 = !DILocation(line: 222, column: 7, scope: !1063)
!1072 = !DILocation(line: 223, column: 9, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1074, file: !704, line: 223, column: 8)
!1074 = distinct !DILexicalBlock(scope: !1068, file: !704, line: 222, column: 29)
!1075 = !DILocation(line: 223, column: 14, scope: !1073)
!1076 = !DILocation(line: 223, column: 8, scope: !1074)
!1077 = !DILocation(line: 224, column: 20, scope: !1073)
!1078 = !DILocation(line: 224, column: 5, scope: !1073)
!1079 = !DILocation(line: 226, column: 49, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1073, file: !704, line: 225, column: 9)
!1081 = !DILocation(line: 226, column: 5, scope: !1080)
!1082 = !DILocation(line: 229, column: 3, scope: !1074)
!1083 = !DILocation(line: 231, column: 43, scope: !1063)
!1084 = !DILocation(line: 231, column: 53, scope: !1063)
!1085 = !DILocation(line: 231, column: 28, scope: !1063)
!1086 = !DILocation(line: 231, column: 26, scope: !1063)
!1087 = !DILocation(line: 219, column: 2, scope: !990)
!1088 = distinct !{!1088, !1058}
!1089 = !DILocation(line: 234, column: 18, scope: !952)
!1090 = !DILocation(line: 234, column: 2, scope: !952)
!1091 = !DILocation(line: 235, column: 1, scope: !952)
!1092 = !DILocation(line: 235, column: 1, scope: !999)
!1093 = distinct !DISubprogram(name: "cmd_window_server", scope: !704, file: !704, line: 450, type: !705, isLocal: true, isDefinition: true, scopeLine: 451, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !707)
!1094 = !DILocalVariable(name: "data", arg: 1, scope: !1093, file: !704, line: 450, type: !362)
!1095 = !DILocation(line: 450, column: 43, scope: !1093)
!1096 = !DILocalVariable(name: "optlist", scope: !1093, file: !704, line: 452, type: !635)
!1097 = !DILocation(line: 452, column: 14, scope: !1093)
!1098 = !DILocalVariable(name: "server", scope: !1093, file: !704, line: 453, type: !367)
!1099 = !DILocation(line: 453, column: 14, scope: !1093)
!1100 = !DILocalVariable(name: "tag", scope: !1093, file: !704, line: 454, type: !388)
!1101 = !DILocation(line: 454, column: 15, scope: !1093)
!1102 = !DILocalVariable(name: "free_arg", scope: !1093, file: !704, line: 455, type: !350)
!1103 = !DILocation(line: 455, column: 8, scope: !1093)
!1104 = !DILocation(line: 457, column: 22, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1093, file: !704, line: 457, column: 6)
!1106 = !DILocation(line: 457, column: 7, scope: !1105)
!1107 = !DILocation(line: 457, column: 6, scope: !1093)
!1108 = !DILocation(line: 459, column: 3, scope: !1105)
!1109 = !DILocation(line: 461, column: 7, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1093, file: !704, line: 461, column: 6)
!1111 = !DILocation(line: 461, column: 6, scope: !1110)
!1112 = !DILocation(line: 461, column: 11, scope: !1110)
!1113 = !DILocation(line: 461, column: 19, scope: !1110)
!1114 = !DILocation(line: 461, column: 22, scope: !1115)
!1115 = !DILexicalBlockFile(scope: !1110, file: !704, discriminator: 1)
!1116 = !DILocation(line: 461, column: 34, scope: !1115)
!1117 = !DILocation(line: 461, column: 48, scope: !1115)
!1118 = !DILocation(line: 461, column: 55, scope: !1115)
!1119 = !DILocation(line: 462, column: 27, scope: !1110)
!1120 = !DILocation(line: 462, column: 7, scope: !1110)
!1121 = !DILocation(line: 462, column: 46, scope: !1110)
!1122 = !DILocation(line: 462, column: 53, scope: !1110)
!1123 = !DILocation(line: 463, column: 27, scope: !1110)
!1124 = !DILocation(line: 463, column: 7, scope: !1110)
!1125 = !DILocation(line: 463, column: 48, scope: !1110)
!1126 = !DILocation(line: 461, column: 6, scope: !1127)
!1127 = !DILexicalBlockFile(scope: !1093, file: !704, discriminator: 2)
!1128 = !DILocation(line: 464, column: 9, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1110, file: !704, line: 463, column: 57)
!1130 = !DILocation(line: 464, column: 21, scope: !1129)
!1131 = !DILocation(line: 464, column: 36, scope: !1129)
!1132 = !DILocation(line: 464, column: 7, scope: !1129)
!1133 = !DILocation(line: 465, column: 2, scope: !1129)
!1134 = !DILocation(line: 467, column: 7, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1093, file: !704, line: 467, column: 6)
!1136 = !DILocation(line: 467, column: 6, scope: !1135)
!1137 = !DILocation(line: 467, column: 11, scope: !1135)
!1138 = !DILocation(line: 467, column: 6, scope: !1093)
!1139 = !DILocation(line: 468, column: 3, scope: !1135)
!1140 = distinct !{!1140, !1139}
!1141 = !DILocation(line: 468, column: 24, scope: !1142)
!1142 = !DILexicalBlockFile(scope: !1143, file: !704, discriminator: 1)
!1143 = distinct !DILexicalBlock(scope: !1135, file: !704, line: 468, column: 6)
!1144 = !DILocation(line: 468, column: 8, scope: !1142)
!1145 = !DILocation(line: 468, column: 35, scope: !1142)
!1146 = distinct !{!1146, !1147}
!1147 = !DILocation(line: 468, column: 35, scope: !1143)
!1148 = !DILocation(line: 468, column: 40, scope: !1149)
!1149 = !DILexicalBlockFile(scope: !1150, file: !704, discriminator: 2)
!1150 = distinct !DILexicalBlock(scope: !1143, file: !704, line: 468, column: 38)
!1151 = !DILocation(line: 468, column: 122, scope: !1152)
!1152 = !DILexicalBlockFile(scope: !1149, file: !704, discriminator: 5)
!1153 = !DILocation(line: 468, column: 137, scope: !1149)
!1154 = !DILocation(line: 468, column: 158, scope: !1155)
!1155 = !DILexicalBlockFile(scope: !1143, file: !704, discriminator: 3)
!1156 = !DILocation(line: 468, column: 158, scope: !1157)
!1157 = !DILexicalBlockFile(scope: !1143, file: !704, discriminator: 4)
!1158 = !DILocation(line: 469, column: 27, scope: !1093)
!1159 = !DILocation(line: 469, column: 11, scope: !1093)
!1160 = !DILocation(line: 469, column: 9, scope: !1093)
!1161 = !DILocation(line: 470, column: 6, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1093, file: !704, line: 470, column: 6)
!1163 = !DILocation(line: 470, column: 13, scope: !1162)
!1164 = !DILocation(line: 470, column: 6, scope: !1093)
!1165 = !DILocation(line: 471, column: 35, scope: !1162)
!1166 = !DILocation(line: 471, column: 12, scope: !1162)
!1167 = !DILocation(line: 471, column: 10, scope: !1162)
!1168 = !DILocation(line: 471, column: 3, scope: !1162)
!1169 = !DILocation(line: 473, column: 26, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1093, file: !704, line: 473, column: 6)
!1171 = !DILocation(line: 473, column: 6, scope: !1170)
!1172 = !DILocation(line: 473, column: 47, scope: !1170)
!1173 = !DILocation(line: 473, column: 54, scope: !1170)
!1174 = !DILocation(line: 474, column: 6, scope: !1170)
!1175 = !DILocation(line: 474, column: 18, scope: !1170)
!1176 = !DILocation(line: 474, column: 28, scope: !1170)
!1177 = !DILocation(line: 473, column: 6, scope: !1178)
!1178 = !DILexicalBlockFile(scope: !1093, file: !704, discriminator: 1)
!1179 = !DILocation(line: 475, column: 3, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1170, file: !704, line: 474, column: 36)
!1181 = distinct !{!1181, !1179}
!1182 = !DILocation(line: 475, column: 12, scope: !1183)
!1183 = !DILexicalBlockFile(scope: !1184, file: !704, discriminator: 1)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !704, line: 475, column: 12)
!1185 = distinct !DILexicalBlock(scope: !1180, file: !704, line: 475, column: 6)
!1186 = !DILocation(line: 475, column: 24, scope: !1183)
!1187 = !DILocation(line: 475, column: 44, scope: !1188)
!1188 = !DILexicalBlockFile(scope: !1189, file: !704, discriminator: 2)
!1189 = distinct !DILexicalBlock(scope: !1184, file: !704, line: 475, column: 35)
!1190 = !DILocation(line: 475, column: 56, scope: !1188)
!1191 = !DILocation(line: 475, column: 37, scope: !1188)
!1192 = !DILocation(line: 475, column: 69, scope: !1188)
!1193 = !DILocation(line: 475, column: 81, scope: !1188)
!1194 = !DILocation(line: 475, column: 92, scope: !1188)
!1195 = !DILocation(line: 475, column: 4, scope: !1188)
!1196 = !DILocation(line: 475, column: 6, scope: !1197)
!1197 = !DILexicalBlockFile(scope: !1185, file: !704, discriminator: 3)
!1198 = !DILocation(line: 476, column: 47, scope: !1180)
!1199 = !DILocation(line: 476, column: 3, scope: !1180)
!1200 = !DILocation(line: 478, column: 2, scope: !1180)
!1201 = !DILocation(line: 480, column: 6, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1093, file: !704, line: 480, column: 6)
!1203 = !DILocation(line: 480, column: 18, scope: !1202)
!1204 = !DILocation(line: 480, column: 28, scope: !1202)
!1205 = !DILocation(line: 480, column: 35, scope: !1202)
!1206 = !DILocation(line: 481, column: 26, scope: !1202)
!1207 = !DILocation(line: 481, column: 6, scope: !1202)
!1208 = !DILocation(line: 481, column: 45, scope: !1202)
!1209 = !DILocation(line: 480, column: 6, scope: !1178)
!1210 = !DILocation(line: 482, column: 47, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1202, file: !704, line: 481, column: 53)
!1212 = !DILocation(line: 482, column: 3, scope: !1211)
!1213 = !DILocation(line: 484, column: 2, scope: !1211)
!1214 = !DILocation(line: 484, column: 13, scope: !1215)
!1215 = !DILexicalBlockFile(scope: !1216, file: !704, discriminator: 1)
!1216 = distinct !DILexicalBlock(scope: !1202, file: !704, line: 484, column: 13)
!1217 = !DILocation(line: 484, column: 20, scope: !1215)
!1218 = !DILocation(line: 485, column: 47, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1216, file: !704, line: 484, column: 28)
!1220 = !DILocation(line: 485, column: 106, scope: !1219)
!1221 = !DILocation(line: 485, column: 3, scope: !1219)
!1222 = !DILocation(line: 487, column: 2, scope: !1219)
!1223 = !DILocation(line: 487, column: 13, scope: !1224)
!1224 = !DILexicalBlockFile(scope: !1225, file: !704, discriminator: 1)
!1225 = distinct !DILexicalBlock(scope: !1216, file: !704, line: 487, column: 13)
!1226 = !DILocation(line: 487, column: 25, scope: !1224)
!1227 = !DILocation(line: 487, column: 32, scope: !1224)
!1228 = !DILocation(line: 488, column: 24, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1225, file: !704, line: 487, column: 40)
!1230 = !DILocation(line: 488, column: 36, scope: !1229)
!1231 = !DILocation(line: 488, column: 3, scope: !1229)
!1232 = !DILocation(line: 489, column: 27, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1229, file: !704, line: 489, column: 7)
!1234 = !DILocation(line: 489, column: 7, scope: !1233)
!1235 = !DILocation(line: 489, column: 46, scope: !1233)
!1236 = !DILocation(line: 489, column: 7, scope: !1229)
!1237 = !DILocation(line: 490, column: 32, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1233, file: !704, line: 489, column: 54)
!1239 = !DILocation(line: 490, column: 44, scope: !1238)
!1240 = !DILocation(line: 490, column: 25, scope: !1238)
!1241 = !DILocation(line: 491, column: 37, scope: !1238)
!1242 = !DILocation(line: 491, column: 45, scope: !1238)
!1243 = !DILocation(line: 491, column: 28, scope: !1238)
!1244 = !DILocation(line: 491, column: 4, scope: !1238)
!1245 = !DILocation(line: 491, column: 16, scope: !1238)
!1246 = !DILocation(line: 491, column: 26, scope: !1238)
!1247 = !DILocation(line: 492, column: 48, scope: !1238)
!1248 = !DILocation(line: 492, column: 106, scope: !1238)
!1249 = !DILocation(line: 492, column: 114, scope: !1238)
!1250 = !DILocation(line: 492, column: 4, scope: !1238)
!1251 = !DILocation(line: 494, column: 3, scope: !1238)
!1252 = !DILocation(line: 495, column: 47, scope: !1229)
!1253 = !DILocation(line: 495, column: 102, scope: !1229)
!1254 = !DILocation(line: 495, column: 110, scope: !1229)
!1255 = !DILocation(line: 495, column: 115, scope: !1229)
!1256 = !DILocation(line: 495, column: 123, scope: !1229)
!1257 = !DILocation(line: 495, column: 132, scope: !1229)
!1258 = !DILocation(line: 495, column: 141, scope: !1229)
!1259 = !DILocation(line: 495, column: 149, scope: !1229)
!1260 = !DILocation(line: 495, column: 158, scope: !1229)
!1261 = !DILocation(line: 495, column: 166, scope: !1229)
!1262 = !DILocation(line: 495, column: 141, scope: !1263)
!1263 = !DILexicalBlockFile(scope: !1229, file: !704, discriminator: 1)
!1264 = !DILocation(line: 495, column: 9, scope: !1265)
!1265 = !DILexicalBlockFile(scope: !1229, file: !704, discriminator: 2)
!1266 = !DILocation(line: 495, column: 17, scope: !1265)
!1267 = !DILocation(line: 495, column: 26, scope: !1265)
!1268 = !DILocation(line: 495, column: 141, scope: !1265)
!1269 = !DILocation(line: 495, column: 141, scope: !1270)
!1270 = !DILexicalBlockFile(scope: !1229, file: !704, discriminator: 3)
!1271 = !DILocation(line: 495, column: 3, scope: !1270)
!1272 = !DILocation(line: 500, column: 2, scope: !1229)
!1273 = !DILocation(line: 502, column: 18, scope: !1093)
!1274 = !DILocation(line: 502, column: 2, scope: !1093)
!1275 = !DILocation(line: 503, column: 1, scope: !1093)
!1276 = !DILocation(line: 503, column: 1, scope: !1178)
!1277 = distinct !DISubprogram(name: "cmd_window_refnum", scope: !704, file: !704, line: 238, type: !705, isLocal: true, isDefinition: true, scopeLine: 239, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !707)
!1278 = !DILocalVariable(name: "data", arg: 1, scope: !1277, file: !704, line: 238, type: !362)
!1279 = !DILocation(line: 238, column: 43, scope: !1277)
!1280 = !DILocalVariable(name: "window", scope: !1277, file: !704, line: 240, type: !852)
!1281 = !DILocation(line: 240, column: 14, scope: !1277)
!1282 = !DILocation(line: 242, column: 18, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1277, file: !704, line: 242, column: 6)
!1284 = !DILocation(line: 242, column: 7, scope: !1283)
!1285 = !DILocation(line: 242, column: 6, scope: !1277)
!1286 = !DILocation(line: 243, column: 3, scope: !1283)
!1287 = !DILocation(line: 245, column: 35, scope: !1277)
!1288 = !DILocation(line: 245, column: 30, scope: !1277)
!1289 = !DILocation(line: 245, column: 11, scope: !1290)
!1290 = !DILexicalBlockFile(scope: !1277, file: !704, discriminator: 1)
!1291 = !DILocation(line: 245, column: 9, scope: !1277)
!1292 = !DILocation(line: 246, column: 6, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1277, file: !704, line: 246, column: 6)
!1294 = !DILocation(line: 246, column: 13, scope: !1293)
!1295 = !DILocation(line: 246, column: 6, scope: !1277)
!1296 = !DILocation(line: 247, column: 21, scope: !1293)
!1297 = !DILocation(line: 247, column: 3, scope: !1293)
!1298 = !DILocation(line: 248, column: 1, scope: !1277)
!1299 = distinct !DISubprogram(name: "cmd_window_goto", scope: !704, file: !704, line: 341, type: !705, isLocal: true, isDefinition: true, scopeLine: 342, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !707)
!1300 = !DILocalVariable(name: "data", arg: 1, scope: !1299, file: !704, line: 341, type: !362)
!1301 = !DILocation(line: 341, column: 41, scope: !1299)
!1302 = !DILocalVariable(name: "window", scope: !1299, file: !704, line: 343, type: !852)
!1303 = !DILocation(line: 343, column: 14, scope: !1299)
!1304 = !DILocalVariable(name: "target", scope: !1299, file: !704, line: 344, type: !388)
!1305 = !DILocation(line: 344, column: 8, scope: !1299)
!1306 = !DILocalVariable(name: "free_arg", scope: !1299, file: !704, line: 345, type: !350)
!1307 = !DILocation(line: 345, column: 8, scope: !1299)
!1308 = !DILocation(line: 347, column: 2, scope: !1299)
!1309 = distinct !{!1309, !1308}
!1310 = !DILocation(line: 347, column: 10, scope: !1311)
!1311 = !DILexicalBlockFile(scope: !1312, file: !704, discriminator: 1)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !704, line: 347, column: 10)
!1313 = distinct !DILexicalBlock(scope: !1299, file: !704, line: 347, column: 4)
!1314 = !DILocation(line: 347, column: 15, scope: !1311)
!1315 = !DILocation(line: 347, column: 5, scope: !1316)
!1316 = !DILexicalBlockFile(scope: !1317, file: !704, discriminator: 2)
!1317 = distinct !DILexicalBlock(scope: !1312, file: !704, line: 347, column: 3)
!1318 = !DILocation(line: 347, column: 14, scope: !1319)
!1319 = !DILexicalBlockFile(scope: !1320, file: !704, discriminator: 3)
!1320 = distinct !DILexicalBlock(scope: !1312, file: !704, line: 347, column: 12)
!1321 = !DILocation(line: 347, column: 99, scope: !1319)
!1322 = !DILocation(line: 347, column: 110, scope: !1323)
!1323 = !DILexicalBlockFile(scope: !1313, file: !704, discriminator: 4)
!1324 = !DILocation(line: 349, column: 17, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1299, file: !704, line: 349, column: 6)
!1326 = !DILocation(line: 349, column: 6, scope: !1325)
!1327 = !DILocation(line: 349, column: 6, scope: !1299)
!1328 = !DILocation(line: 350, column: 21, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1325, file: !704, line: 349, column: 27)
!1330 = !DILocation(line: 350, column: 3, scope: !1329)
!1331 = !DILocation(line: 351, column: 3, scope: !1329)
!1332 = !DILocation(line: 354, column: 22, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1299, file: !704, line: 354, column: 6)
!1334 = !DILocation(line: 354, column: 7, scope: !1333)
!1335 = !DILocation(line: 354, column: 6, scope: !1299)
!1336 = !DILocation(line: 355, column: 3, scope: !1333)
!1337 = !DILocation(line: 357, column: 25, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1299, file: !704, line: 357, column: 6)
!1339 = !DILocation(line: 357, column: 6, scope: !1338)
!1340 = !DILocation(line: 357, column: 43, scope: !1338)
!1341 = !DILocation(line: 357, column: 6, scope: !1299)
!1342 = !DILocation(line: 358, column: 36, scope: !1338)
!1343 = !DILocation(line: 359, column: 4, scope: !1338)
!1344 = !DILocation(line: 358, column: 12, scope: !1338)
!1345 = !DILocation(line: 358, column: 10, scope: !1338)
!1346 = !DILocation(line: 358, column: 3, scope: !1338)
!1347 = !DILocation(line: 361, column: 29, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1338, file: !704, line: 360, column: 7)
!1349 = !DILocation(line: 361, column: 12, scope: !1348)
!1350 = !DILocation(line: 361, column: 10, scope: !1348)
!1351 = !DILocation(line: 362, column: 7, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1348, file: !704, line: 362, column: 7)
!1353 = !DILocation(line: 362, column: 14, scope: !1352)
!1354 = !DILocation(line: 362, column: 21, scope: !1352)
!1355 = !DILocation(line: 362, column: 24, scope: !1356)
!1356 = !DILexicalBlockFile(scope: !1352, file: !704, discriminator: 1)
!1357 = !DILocation(line: 362, column: 36, scope: !1356)
!1358 = !DILocation(line: 362, column: 50, scope: !1356)
!1359 = !DILocation(line: 362, column: 7, scope: !1356)
!1360 = !DILocation(line: 363, column: 36, scope: !1352)
!1361 = !DILocation(line: 363, column: 48, scope: !1352)
!1362 = !DILocation(line: 363, column: 63, scope: !1352)
!1363 = !DILocation(line: 363, column: 13, scope: !1352)
!1364 = !DILocation(line: 363, column: 11, scope: !1352)
!1365 = !DILocation(line: 363, column: 4, scope: !1352)
!1366 = !DILocation(line: 364, column: 7, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1348, file: !704, line: 364, column: 7)
!1368 = !DILocation(line: 364, column: 14, scope: !1367)
!1369 = !DILocation(line: 364, column: 7, scope: !1348)
!1370 = !DILocation(line: 365, column: 41, scope: !1367)
!1371 = !DILocation(line: 365, column: 13, scope: !1367)
!1372 = !DILocation(line: 365, column: 11, scope: !1367)
!1373 = !DILocation(line: 365, column: 4, scope: !1367)
!1374 = !DILocation(line: 368, column: 6, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1299, file: !704, line: 368, column: 6)
!1376 = !DILocation(line: 368, column: 13, scope: !1375)
!1377 = !DILocation(line: 368, column: 6, scope: !1299)
!1378 = !DILocation(line: 369, column: 21, scope: !1375)
!1379 = !DILocation(line: 369, column: 3, scope: !1375)
!1380 = !DILocation(line: 371, column: 18, scope: !1299)
!1381 = !DILocation(line: 371, column: 2, scope: !1299)
!1382 = !DILocation(line: 372, column: 1, scope: !1299)
!1383 = !DILocation(line: 372, column: 1, scope: !1384)
!1384 = !DILexicalBlockFile(scope: !1299, file: !704, discriminator: 1)
!1385 = distinct !DISubprogram(name: "cmd_window_previous", scope: !704, file: !704, line: 393, type: !523, isLocal: true, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !707)
!1386 = !DILocalVariable(name: "num", scope: !1385, file: !704, line: 395, type: !375)
!1387 = !DILocation(line: 395, column: 6, scope: !1385)
!1388 = !DILocation(line: 397, column: 27, scope: !1385)
!1389 = !DILocation(line: 397, column: 39, scope: !1385)
!1390 = !DILocation(line: 397, column: 8, scope: !1385)
!1391 = !DILocation(line: 397, column: 6, scope: !1385)
!1392 = !DILocation(line: 398, column: 6, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1385, file: !704, line: 398, column: 6)
!1394 = !DILocation(line: 398, column: 10, scope: !1393)
!1395 = !DILocation(line: 398, column: 6, scope: !1385)
!1396 = !DILocation(line: 398, column: 21, scope: !1397)
!1397 = !DILexicalBlockFile(scope: !1393, file: !704, discriminator: 1)
!1398 = !DILocation(line: 398, column: 19, scope: !1397)
!1399 = !DILocation(line: 398, column: 15, scope: !1397)
!1400 = !DILocation(line: 400, column: 39, scope: !1385)
!1401 = !DILocation(line: 400, column: 20, scope: !1385)
!1402 = !DILocation(line: 400, column: 2, scope: !1403)
!1403 = !DILexicalBlockFile(scope: !1385, file: !704, discriminator: 1)
!1404 = !DILocation(line: 401, column: 1, scope: !1385)
!1405 = distinct !DISubprogram(name: "cmd_window_next", scope: !704, file: !704, line: 375, type: !523, isLocal: true, isDefinition: true, scopeLine: 376, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !707)
!1406 = !DILocalVariable(name: "num", scope: !1405, file: !704, line: 377, type: !375)
!1407 = !DILocation(line: 377, column: 6, scope: !1405)
!1408 = !DILocation(line: 379, column: 27, scope: !1405)
!1409 = !DILocation(line: 379, column: 39, scope: !1405)
!1410 = !DILocation(line: 379, column: 8, scope: !1405)
!1411 = !DILocation(line: 379, column: 6, scope: !1405)
!1412 = !DILocation(line: 380, column: 6, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1405, file: !704, line: 380, column: 6)
!1414 = !DILocation(line: 380, column: 10, scope: !1413)
!1415 = !DILocation(line: 380, column: 6, scope: !1405)
!1416 = !DILocation(line: 380, column: 21, scope: !1417)
!1417 = !DILexicalBlockFile(scope: !1413, file: !704, discriminator: 1)
!1418 = !DILocation(line: 380, column: 19, scope: !1417)
!1419 = !DILocation(line: 380, column: 15, scope: !1417)
!1420 = !DILocation(line: 382, column: 39, scope: !1405)
!1421 = !DILocation(line: 382, column: 20, scope: !1405)
!1422 = !DILocation(line: 382, column: 2, scope: !1423)
!1423 = !DILexicalBlockFile(scope: !1405, file: !704, discriminator: 1)
!1424 = !DILocation(line: 383, column: 1, scope: !1405)
!1425 = distinct !DISubprogram(name: "cmd_window_last", scope: !704, file: !704, line: 386, type: !523, isLocal: true, isDefinition: true, scopeLine: 387, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !707)
!1426 = !DILocation(line: 388, column: 6, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1425, file: !704, line: 388, column: 6)
!1428 = !DILocation(line: 388, column: 15, scope: !1427)
!1429 = !DILocation(line: 388, column: 20, scope: !1427)
!1430 = !DILocation(line: 388, column: 6, scope: !1425)
!1431 = !DILocation(line: 389, column: 21, scope: !1427)
!1432 = !DILocation(line: 389, column: 30, scope: !1427)
!1433 = !DILocation(line: 389, column: 36, scope: !1427)
!1434 = !DILocation(line: 389, column: 3, scope: !1427)
!1435 = !DILocation(line: 390, column: 1, scope: !1425)
!1436 = distinct !DISubprogram(name: "cmd_window_level", scope: !704, file: !704, line: 404, type: !705, isLocal: true, isDefinition: true, scopeLine: 405, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !707)
!1437 = !DILocalVariable(name: "data", arg: 1, scope: !1436, file: !704, line: 404, type: !362)
!1438 = !DILocation(line: 404, column: 42, scope: !1436)
!1439 = !DILocalVariable(name: "level", scope: !1436, file: !704, line: 406, type: !388)
!1440 = !DILocation(line: 406, column: 8, scope: !1436)
!1441 = !DILocation(line: 408, column: 2, scope: !1436)
!1442 = distinct !{!1442, !1441}
!1443 = !DILocation(line: 408, column: 10, scope: !1444)
!1444 = !DILexicalBlockFile(scope: !1445, file: !704, discriminator: 1)
!1445 = distinct !DILexicalBlock(scope: !1446, file: !704, line: 408, column: 10)
!1446 = distinct !DILexicalBlock(scope: !1436, file: !704, line: 408, column: 4)
!1447 = !DILocation(line: 408, column: 15, scope: !1444)
!1448 = !DILocation(line: 408, column: 5, scope: !1449)
!1449 = !DILexicalBlockFile(scope: !1450, file: !704, discriminator: 2)
!1450 = distinct !DILexicalBlock(scope: !1445, file: !704, line: 408, column: 3)
!1451 = !DILocation(line: 408, column: 14, scope: !1452)
!1452 = !DILexicalBlockFile(scope: !1453, file: !704, discriminator: 3)
!1453 = distinct !DILexicalBlock(scope: !1445, file: !704, line: 408, column: 12)
!1454 = !DILocation(line: 408, column: 99, scope: !1452)
!1455 = !DILocation(line: 408, column: 110, scope: !1456)
!1456 = !DILexicalBlockFile(scope: !1446, file: !704, discriminator: 4)
!1457 = !DILocation(line: 410, column: 19, scope: !1436)
!1458 = !DILocation(line: 410, column: 45, scope: !1436)
!1459 = !DILocation(line: 410, column: 57, scope: !1436)
!1460 = !DILocation(line: 410, column: 64, scope: !1436)
!1461 = !DILocation(line: 410, column: 31, scope: !1436)
!1462 = !DILocation(line: 410, column: 2, scope: !1463)
!1463 = !DILexicalBlockFile(scope: !1436, file: !704, discriminator: 1)
!1464 = !DILocation(line: 412, column: 10, scope: !1436)
!1465 = !DILocation(line: 412, column: 22, scope: !1436)
!1466 = !DILocation(line: 412, column: 28, scope: !1436)
!1467 = !DILocation(line: 412, column: 35, scope: !1463)
!1468 = !DILocation(line: 412, column: 10, scope: !1463)
!1469 = !DILocation(line: 413, column: 14, scope: !1436)
!1470 = !DILocation(line: 413, column: 26, scope: !1436)
!1471 = !DILocation(line: 413, column: 3, scope: !1436)
!1472 = !DILocation(line: 412, column: 10, scope: !1473)
!1473 = !DILexicalBlockFile(scope: !1436, file: !704, discriminator: 2)
!1474 = !DILocation(line: 412, column: 10, scope: !1475)
!1475 = !DILexicalBlockFile(scope: !1436, file: !704, discriminator: 3)
!1476 = !DILocation(line: 412, column: 8, scope: !1475)
!1477 = !DILocation(line: 414, column: 46, scope: !1436)
!1478 = !DILocation(line: 414, column: 99, scope: !1436)
!1479 = !DILocation(line: 414, column: 2, scope: !1436)
!1480 = !DILocation(line: 416, column: 9, scope: !1436)
!1481 = !DILocation(line: 416, column: 2, scope: !1436)
!1482 = !DILocation(line: 417, column: 1, scope: !1436)
!1483 = !DILocation(line: 417, column: 1, scope: !1463)
!1484 = distinct !DISubprogram(name: "cmd_window_immortal", scope: !704, file: !704, line: 420, type: !705, isLocal: true, isDefinition: true, scopeLine: 421, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !707)
!1485 = !DILocalVariable(name: "data", arg: 1, scope: !1484, file: !704, line: 420, type: !362)
!1486 = !DILocation(line: 420, column: 45, scope: !1484)
!1487 = !DILocalVariable(name: "set", scope: !1484, file: !704, line: 422, type: !375)
!1488 = !DILocation(line: 422, column: 6, scope: !1484)
!1489 = !DILocation(line: 424, column: 7, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1484, file: !704, line: 424, column: 6)
!1491 = !DILocation(line: 424, column: 6, scope: !1490)
!1492 = !DILocation(line: 424, column: 12, scope: !1490)
!1493 = !DILocation(line: 424, column: 6, scope: !1484)
!1494 = !DILocation(line: 425, column: 9, scope: !1490)
!1495 = !DILocation(line: 425, column: 21, scope: !1490)
!1496 = !DILocation(line: 425, column: 7, scope: !1490)
!1497 = !DILocation(line: 425, column: 3, scope: !1490)
!1498 = !DILocation(line: 426, column: 30, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1490, file: !704, line: 426, column: 11)
!1500 = !DILocation(line: 426, column: 11, scope: !1499)
!1501 = !DILocation(line: 426, column: 42, scope: !1499)
!1502 = !DILocation(line: 426, column: 11, scope: !1490)
!1503 = !DILocation(line: 427, column: 21, scope: !1499)
!1504 = !DILocation(line: 427, column: 17, scope: !1499)
!1505 = !DILocation(line: 428, column: 30, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1499, file: !704, line: 428, column: 11)
!1507 = !DILocation(line: 428, column: 11, scope: !1506)
!1508 = !DILocation(line: 428, column: 43, scope: !1506)
!1509 = !DILocation(line: 428, column: 11, scope: !1499)
!1510 = !DILocation(line: 429, column: 21, scope: !1506)
!1511 = !DILocation(line: 429, column: 17, scope: !1506)
!1512 = !DILocation(line: 430, column: 30, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1506, file: !704, line: 430, column: 11)
!1514 = !DILocation(line: 430, column: 11, scope: !1513)
!1515 = !DILocation(line: 430, column: 46, scope: !1513)
!1516 = !DILocation(line: 430, column: 11, scope: !1506)
!1517 = !DILocation(line: 431, column: 24, scope: !1513)
!1518 = !DILocation(line: 431, column: 36, scope: !1513)
!1519 = !DILocation(line: 431, column: 23, scope: !1513)
!1520 = !DILocation(line: 431, column: 21, scope: !1513)
!1521 = !DILocation(line: 431, column: 17, scope: !1513)
!1522 = !DILocation(line: 433, column: 47, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1513, file: !704, line: 432, column: 7)
!1524 = !DILocation(line: 433, column: 3, scope: !1523)
!1525 = !DILocation(line: 435, column: 3, scope: !1523)
!1526 = !DILocation(line: 438, column: 6, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1484, file: !704, line: 438, column: 6)
!1528 = !DILocation(line: 438, column: 6, scope: !1484)
!1529 = !DILocation(line: 439, column: 37, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1527, file: !704, line: 438, column: 11)
!1531 = !DILocation(line: 439, column: 17, scope: !1530)
!1532 = !DILocation(line: 440, column: 47, scope: !1530)
!1533 = !DILocation(line: 440, column: 3, scope: !1530)
!1534 = !DILocation(line: 442, column: 2, scope: !1530)
!1535 = !DILocation(line: 443, column: 37, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1527, file: !704, line: 442, column: 9)
!1537 = !DILocation(line: 443, column: 17, scope: !1536)
!1538 = !DILocation(line: 444, column: 47, scope: !1536)
!1539 = !DILocation(line: 444, column: 3, scope: !1536)
!1540 = !DILocation(line: 447, column: 1, scope: !1484)
!1541 = distinct !DISubprogram(name: "cmd_window_item", scope: !704, file: !704, line: 505, type: !782, isLocal: true, isDefinition: true, scopeLine: 506, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !707)
!1542 = !DILocalVariable(name: "data", arg: 1, scope: !1541, file: !704, line: 505, type: !362)
!1543 = !DILocation(line: 505, column: 41, scope: !1541)
!1544 = !DILocalVariable(name: "server", arg: 2, scope: !1541, file: !704, line: 505, type: !350)
!1545 = !DILocation(line: 505, column: 53, scope: !1541)
!1546 = !DILocalVariable(name: "item", arg: 3, scope: !1541, file: !704, line: 505, type: !784)
!1547 = !DILocation(line: 505, column: 74, scope: !1541)
!1548 = !DILocation(line: 507, column: 9, scope: !1541)
!1549 = !DILocation(line: 507, column: 17, scope: !1550)
!1550 = !DILexicalBlockFile(scope: !1541, file: !704, discriminator: 1)
!1551 = !DILocation(line: 507, column: 16, scope: !1550)
!1552 = !DILocation(line: 507, column: 22, scope: !1550)
!1553 = !DILocation(line: 507, column: 9, scope: !1550)
!1554 = !DILocation(line: 507, column: 34, scope: !1555)
!1555 = !DILexicalBlockFile(scope: !1541, file: !704, discriminator: 2)
!1556 = !DILocation(line: 507, column: 9, scope: !1555)
!1557 = distinct !{!1557, !1548}
!1558 = !DILocation(line: 509, column: 17, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1541, file: !704, line: 509, column: 6)
!1560 = !DILocation(line: 509, column: 6, scope: !1559)
!1561 = !DILocation(line: 509, column: 6, scope: !1541)
!1562 = !DILocation(line: 510, column: 46, scope: !1559)
!1563 = !DILocation(line: 510, column: 52, scope: !1559)
!1564 = !DILocation(line: 510, column: 60, scope: !1559)
!1565 = !DILocation(line: 510, column: 3, scope: !1559)
!1566 = !DILocation(line: 512, column: 33, scope: !1559)
!1567 = !DILocation(line: 512, column: 39, scope: !1559)
!1568 = !DILocation(line: 512, column: 47, scope: !1559)
!1569 = !DILocation(line: 512, column: 3, scope: !1559)
!1570 = !DILocation(line: 513, column: 1, scope: !1541)
!1571 = distinct !DISubprogram(name: "cmd_window_item_prev", scope: !704, file: !704, line: 516, type: !523, isLocal: true, isDefinition: true, scopeLine: 517, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !707)
!1572 = !DILocation(line: 518, column: 19, scope: !1571)
!1573 = !DILocation(line: 518, column: 2, scope: !1571)
!1574 = !DILocation(line: 519, column: 1, scope: !1571)
!1575 = distinct !DISubprogram(name: "cmd_window_item_next", scope: !704, file: !704, line: 522, type: !523, isLocal: true, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !707)
!1576 = !DILocation(line: 524, column: 19, scope: !1575)
!1577 = !DILocation(line: 524, column: 2, scope: !1575)
!1578 = !DILocation(line: 525, column: 1, scope: !1575)
!1579 = distinct !DISubprogram(name: "cmd_window_item_goto", scope: !704, file: !704, line: 528, type: !1580, isLocal: true, isDefinition: true, scopeLine: 529, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !707)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{null, !362, !367}
!1582 = !DILocalVariable(name: "data", arg: 1, scope: !1579, file: !704, line: 528, type: !362)
!1583 = !DILocation(line: 528, column: 46, scope: !1579)
!1584 = !DILocalVariable(name: "server", arg: 2, scope: !1579, file: !704, line: 528, type: !367)
!1585 = !DILocation(line: 528, column: 64, scope: !1579)
!1586 = !DILocalVariable(name: "item", scope: !1579, file: !704, line: 530, type: !784)
!1587 = !DILocation(line: 530, column: 15, scope: !1579)
!1588 = !DILocalVariable(name: "tmp", scope: !1579, file: !704, line: 531, type: !535)
!1589 = !DILocation(line: 531, column: 10, scope: !1579)
!1590 = !DILocalVariable(name: "free_arg", scope: !1579, file: !704, line: 532, type: !350)
!1591 = !DILocation(line: 532, column: 8, scope: !1579)
!1592 = !DILocalVariable(name: "target", scope: !1579, file: !704, line: 533, type: !388)
!1593 = !DILocation(line: 533, column: 8, scope: !1579)
!1594 = !DILocation(line: 535, column: 22, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1579, file: !704, line: 535, column: 6)
!1596 = !DILocation(line: 535, column: 7, scope: !1595)
!1597 = !DILocation(line: 535, column: 6, scope: !1579)
!1598 = !DILocation(line: 536, column: 3, scope: !1595)
!1599 = !DILocation(line: 538, column: 17, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1579, file: !704, line: 538, column: 6)
!1601 = !DILocation(line: 538, column: 6, scope: !1600)
!1602 = !DILocation(line: 538, column: 6, scope: !1579)
!1603 = !DILocation(line: 540, column: 21, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1600, file: !704, line: 538, column: 32)
!1605 = !DILocation(line: 540, column: 33, scope: !1604)
!1606 = !DILocation(line: 540, column: 45, scope: !1604)
!1607 = !DILocation(line: 540, column: 40, scope: !1604)
!1608 = !DILocation(line: 540, column: 52, scope: !1604)
!1609 = !DILocation(line: 540, column: 9, scope: !1610)
!1610 = !DILexicalBlockFile(scope: !1604, file: !704, discriminator: 1)
!1611 = !DILocation(line: 540, column: 7, scope: !1604)
!1612 = !DILocation(line: 541, column: 10, scope: !1604)
!1613 = !DILocation(line: 541, column: 14, scope: !1604)
!1614 = !DILocation(line: 541, column: 10, scope: !1610)
!1615 = !DILocation(line: 541, column: 30, scope: !1616)
!1616 = !DILexicalBlockFile(scope: !1604, file: !704, discriminator: 2)
!1617 = !DILocation(line: 541, column: 35, scope: !1616)
!1618 = !DILocation(line: 541, column: 10, scope: !1616)
!1619 = !DILocation(line: 541, column: 10, scope: !1620)
!1620 = !DILexicalBlockFile(scope: !1604, file: !704, discriminator: 3)
!1621 = !DILocation(line: 541, column: 8, scope: !1620)
!1622 = !DILocation(line: 542, column: 2, scope: !1604)
!1623 = !DILocation(line: 543, column: 34, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1600, file: !704, line: 542, column: 9)
!1625 = !DILocation(line: 543, column: 46, scope: !1624)
!1626 = !DILocation(line: 543, column: 54, scope: !1624)
!1627 = !DILocation(line: 543, column: 10, scope: !1624)
!1628 = !DILocation(line: 543, column: 8, scope: !1624)
!1629 = !DILocation(line: 546, column: 13, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1579, file: !704, line: 546, column: 13)
!1631 = !DILocation(line: 546, column: 18, scope: !1630)
!1632 = !DILocation(line: 546, column: 13, scope: !1579)
!1633 = !DILocation(line: 547, column: 40, scope: !1630)
!1634 = !DILocation(line: 547, column: 52, scope: !1630)
!1635 = !DILocation(line: 547, column: 17, scope: !1630)
!1636 = !DILocation(line: 549, column: 18, scope: !1579)
!1637 = !DILocation(line: 549, column: 2, scope: !1579)
!1638 = !DILocation(line: 550, column: 1, scope: !1579)
!1639 = !DILocation(line: 550, column: 1, scope: !1640)
!1640 = !DILexicalBlockFile(scope: !1579, file: !704, discriminator: 1)
!1641 = distinct !DISubprogram(name: "cmd_window_item_move", scope: !704, file: !704, line: 553, type: !1642, isLocal: true, isDefinition: true, scopeLine: 555, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !707)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{null, !362, !367, !784}
!1644 = !DILocalVariable(name: "data", arg: 1, scope: !1641, file: !704, line: 553, type: !362)
!1645 = !DILocation(line: 553, column: 46, scope: !1641)
!1646 = !DILocalVariable(name: "server", arg: 2, scope: !1641, file: !704, line: 553, type: !367)
!1647 = !DILocation(line: 553, column: 64, scope: !1641)
!1648 = !DILocalVariable(name: "item", arg: 3, scope: !1641, file: !704, line: 554, type: !784)
!1649 = !DILocation(line: 554, column: 47, scope: !1641)
!1650 = !DILocalVariable(name: "window", scope: !1641, file: !704, line: 556, type: !852)
!1651 = !DILocation(line: 556, column: 14, scope: !1641)
!1652 = !DILocalVariable(name: "free_arg", scope: !1641, file: !704, line: 557, type: !350)
!1653 = !DILocation(line: 557, column: 8, scope: !1641)
!1654 = !DILocalVariable(name: "target", scope: !1641, file: !704, line: 558, type: !388)
!1655 = !DILocation(line: 558, column: 8, scope: !1641)
!1656 = !DILocation(line: 560, column: 22, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1641, file: !704, line: 560, column: 6)
!1658 = !DILocation(line: 560, column: 7, scope: !1657)
!1659 = !DILocation(line: 560, column: 6, scope: !1641)
!1660 = !DILocation(line: 561, column: 3, scope: !1657)
!1661 = !DILocation(line: 563, column: 24, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1641, file: !704, line: 563, column: 13)
!1663 = !DILocation(line: 563, column: 13, scope: !1662)
!1664 = !DILocation(line: 563, column: 13, scope: !1641)
!1665 = !DILocation(line: 565, column: 50, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1662, file: !704, line: 563, column: 39)
!1667 = !DILocation(line: 565, column: 45, scope: !1666)
!1668 = !DILocation(line: 565, column: 26, scope: !1669)
!1669 = !DILexicalBlockFile(scope: !1666, file: !704, discriminator: 1)
!1670 = !DILocation(line: 565, column: 24, scope: !1666)
!1671 = !DILocation(line: 566, column: 9, scope: !1666)
!1672 = !DILocation(line: 568, column: 41, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1662, file: !704, line: 566, column: 16)
!1674 = !DILocation(line: 568, column: 49, scope: !1673)
!1675 = !DILocation(line: 568, column: 24, scope: !1673)
!1676 = !DILocation(line: 568, column: 22, scope: !1673)
!1677 = !DILocation(line: 569, column: 26, scope: !1673)
!1678 = !DILocation(line: 569, column: 24, scope: !1673)
!1679 = !DILocation(line: 571, column: 13, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1641, file: !704, line: 571, column: 13)
!1681 = !DILocation(line: 571, column: 20, scope: !1680)
!1682 = !DILocation(line: 571, column: 27, scope: !1680)
!1683 = !DILocation(line: 571, column: 30, scope: !1684)
!1684 = !DILexicalBlockFile(scope: !1680, file: !704, discriminator: 1)
!1685 = !DILocation(line: 571, column: 35, scope: !1684)
!1686 = !DILocation(line: 571, column: 13, scope: !1684)
!1687 = !DILocation(line: 572, column: 26, scope: !1680)
!1688 = !DILocation(line: 572, column: 34, scope: !1680)
!1689 = !DILocation(line: 572, column: 3, scope: !1680)
!1690 = !DILocation(line: 574, column: 18, scope: !1641)
!1691 = !DILocation(line: 574, column: 2, scope: !1641)
!1692 = !DILocation(line: 575, column: 1, scope: !1641)
!1693 = !DILocation(line: 575, column: 1, scope: !1694)
!1694 = !DILexicalBlockFile(scope: !1641, file: !704, discriminator: 1)
!1695 = distinct !DISubprogram(name: "cmd_window_number", scope: !704, file: !704, line: 578, type: !705, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !707)
!1696 = !DILocalVariable(name: "data", arg: 1, scope: !1695, file: !704, line: 578, type: !362)
!1697 = !DILocation(line: 578, column: 43, scope: !1695)
!1698 = !DILocalVariable(name: "optlist", scope: !1695, file: !704, line: 580, type: !635)
!1699 = !DILocation(line: 580, column: 14, scope: !1695)
!1700 = !DILocalVariable(name: "refnum", scope: !1695, file: !704, line: 581, type: !388)
!1701 = !DILocation(line: 581, column: 15, scope: !1695)
!1702 = !DILocalVariable(name: "free_arg", scope: !1695, file: !704, line: 582, type: !350)
!1703 = !DILocation(line: 582, column: 8, scope: !1695)
!1704 = !DILocalVariable(name: "num", scope: !1695, file: !704, line: 583, type: !375)
!1705 = !DILocation(line: 583, column: 13, scope: !1695)
!1706 = !DILocation(line: 585, column: 22, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1695, file: !704, line: 585, column: 6)
!1708 = !DILocation(line: 585, column: 7, scope: !1707)
!1709 = !DILocation(line: 585, column: 6, scope: !1695)
!1710 = !DILocation(line: 587, column: 3, scope: !1707)
!1711 = !DILocation(line: 589, column: 7, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1695, file: !704, line: 589, column: 6)
!1713 = !DILocation(line: 589, column: 6, scope: !1712)
!1714 = !DILocation(line: 589, column: 14, scope: !1712)
!1715 = !DILocation(line: 589, column: 6, scope: !1695)
!1716 = !DILocation(line: 590, column: 3, scope: !1712)
!1717 = distinct !{!1717, !1716}
!1718 = !DILocation(line: 590, column: 24, scope: !1719)
!1719 = !DILexicalBlockFile(scope: !1720, file: !704, discriminator: 1)
!1720 = distinct !DILexicalBlock(scope: !1712, file: !704, line: 590, column: 6)
!1721 = !DILocation(line: 590, column: 8, scope: !1719)
!1722 = !DILocation(line: 590, column: 35, scope: !1719)
!1723 = distinct !{!1723, !1724}
!1724 = !DILocation(line: 590, column: 35, scope: !1720)
!1725 = !DILocation(line: 590, column: 40, scope: !1726)
!1726 = !DILexicalBlockFile(scope: !1727, file: !704, discriminator: 2)
!1727 = distinct !DILexicalBlock(scope: !1720, file: !704, line: 590, column: 38)
!1728 = !DILocation(line: 590, column: 122, scope: !1729)
!1729 = !DILexicalBlockFile(scope: !1726, file: !704, discriminator: 5)
!1730 = !DILocation(line: 590, column: 137, scope: !1726)
!1731 = !DILocation(line: 590, column: 158, scope: !1732)
!1732 = !DILexicalBlockFile(scope: !1720, file: !704, discriminator: 3)
!1733 = !DILocation(line: 590, column: 158, scope: !1734)
!1734 = !DILexicalBlockFile(scope: !1720, file: !704, discriminator: 4)
!1735 = !DILocation(line: 592, column: 13, scope: !1695)
!1736 = !DILocation(line: 592, column: 8, scope: !1695)
!1737 = !DILocation(line: 592, column: 6, scope: !1695)
!1738 = !DILocation(line: 593, column: 6, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1695, file: !704, line: 593, column: 6)
!1740 = !DILocation(line: 593, column: 10, scope: !1739)
!1741 = !DILocation(line: 593, column: 6, scope: !1695)
!1742 = !DILocation(line: 594, column: 47, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1739, file: !704, line: 593, column: 15)
!1744 = !DILocation(line: 594, column: 3, scope: !1743)
!1745 = !DILocation(line: 596, column: 2, scope: !1743)
!1746 = !DILocation(line: 597, column: 21, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1739, file: !704, line: 596, column: 9)
!1748 = !DILocation(line: 597, column: 33, scope: !1747)
!1749 = !DILocation(line: 597, column: 3, scope: !1747)
!1750 = !DILocation(line: 599, column: 24, scope: !1747)
!1751 = !DILocation(line: 599, column: 4, scope: !1747)
!1752 = !DILocation(line: 599, column: 43, scope: !1747)
!1753 = !DILocation(line: 598, column: 3, scope: !1747)
!1754 = !DILocation(line: 598, column: 15, scope: !1747)
!1755 = !DILocation(line: 598, column: 29, scope: !1747)
!1756 = !DILocation(line: 602, column: 25, scope: !1695)
!1757 = !DILocation(line: 602, column: 9, scope: !1695)
!1758 = !DILocation(line: 603, column: 1, scope: !1695)
!1759 = !DILocation(line: 603, column: 1, scope: !1760)
!1760 = !DILexicalBlockFile(scope: !1695, file: !704, discriminator: 1)
!1761 = distinct !DISubprogram(name: "cmd_window_name", scope: !704, file: !704, line: 606, type: !705, isLocal: true, isDefinition: true, scopeLine: 607, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !707)
!1762 = !DILocalVariable(name: "data", arg: 1, scope: !1761, file: !704, line: 606, type: !362)
!1763 = !DILocation(line: 606, column: 41, scope: !1761)
!1764 = !DILocalVariable(name: "win", scope: !1761, file: !704, line: 608, type: !852)
!1765 = !DILocation(line: 608, column: 14, scope: !1761)
!1766 = !DILocation(line: 610, column: 25, scope: !1761)
!1767 = !DILocation(line: 610, column: 8, scope: !1761)
!1768 = !DILocation(line: 610, column: 6, scope: !1761)
!1769 = !DILocation(line: 611, column: 6, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1761, file: !704, line: 611, column: 6)
!1771 = !DILocation(line: 611, column: 10, scope: !1770)
!1772 = !DILocation(line: 611, column: 17, scope: !1770)
!1773 = !DILocation(line: 611, column: 20, scope: !1774)
!1774 = !DILexicalBlockFile(scope: !1770, file: !704, discriminator: 1)
!1775 = !DILocation(line: 611, column: 27, scope: !1774)
!1776 = !DILocation(line: 611, column: 24, scope: !1774)
!1777 = !DILocation(line: 611, column: 6, scope: !1774)
!1778 = !DILocation(line: 612, column: 19, scope: !1770)
!1779 = !DILocation(line: 612, column: 31, scope: !1770)
!1780 = !DILocation(line: 612, column: 3, scope: !1770)
!1781 = !DILocation(line: 613, column: 11, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1770, file: !704, line: 613, column: 11)
!1783 = !DILocation(line: 613, column: 23, scope: !1782)
!1784 = !DILocation(line: 613, column: 28, scope: !1782)
!1785 = !DILocation(line: 613, column: 35, scope: !1782)
!1786 = !DILocation(line: 614, column: 14, scope: !1782)
!1787 = !DILocation(line: 614, column: 26, scope: !1782)
!1788 = !DILocation(line: 614, column: 32, scope: !1782)
!1789 = !DILocation(line: 614, column: 4, scope: !1782)
!1790 = !DILocation(line: 614, column: 38, scope: !1782)
!1791 = !DILocation(line: 613, column: 11, scope: !1774)
!1792 = !DILocation(line: 615, column: 47, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1782, file: !704, line: 614, column: 44)
!1794 = !DILocation(line: 615, column: 109, scope: !1793)
!1795 = !DILocation(line: 615, column: 3, scope: !1793)
!1796 = !DILocation(line: 617, column: 2, scope: !1793)
!1797 = !DILocation(line: 618, column: 1, scope: !1761)
!1798 = distinct !DISubprogram(name: "cmd_window_move", scope: !704, file: !704, line: 757, type: !1642, isLocal: true, isDefinition: true, scopeLine: 758, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !707)
!1799 = !DILocalVariable(name: "data", arg: 1, scope: !1798, file: !704, line: 757, type: !362)
!1800 = !DILocation(line: 757, column: 41, scope: !1798)
!1801 = !DILocalVariable(name: "server", arg: 2, scope: !1798, file: !704, line: 757, type: !367)
!1802 = !DILocation(line: 757, column: 59, scope: !1798)
!1803 = !DILocalVariable(name: "item", arg: 3, scope: !1798, file: !704, line: 757, type: !784)
!1804 = !DILocation(line: 757, column: 80, scope: !1798)
!1805 = !DILocation(line: 759, column: 18, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1798, file: !704, line: 759, column: 6)
!1807 = !DILocation(line: 759, column: 7, scope: !1806)
!1808 = !DILocation(line: 759, column: 6, scope: !1798)
!1809 = !DILocation(line: 760, column: 33, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1806, file: !704, line: 759, column: 28)
!1811 = !DILocation(line: 760, column: 39, scope: !1810)
!1812 = !DILocation(line: 760, column: 47, scope: !1810)
!1813 = !DILocation(line: 760, column: 3, scope: !1810)
!1814 = !DILocation(line: 761, column: 17, scope: !1810)
!1815 = !DILocation(line: 764, column: 29, scope: !1798)
!1816 = !DILocation(line: 764, column: 24, scope: !1798)
!1817 = !DILocation(line: 764, column: 2, scope: !1818)
!1818 = !DILexicalBlockFile(scope: !1798, file: !704, discriminator: 1)
!1819 = !DILocation(line: 765, column: 1, scope: !1798)
!1820 = !DILocation(line: 765, column: 1, scope: !1818)
!1821 = distinct !DISubprogram(name: "cmd_window_move_prev", scope: !704, file: !704, line: 694, type: !523, isLocal: true, isDefinition: true, scopeLine: 695, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !707)
!1822 = !DILocalVariable(name: "refnum", scope: !1821, file: !704, line: 696, type: !375)
!1823 = !DILocation(line: 696, column: 6, scope: !1821)
!1824 = !DILocation(line: 698, column: 30, scope: !1821)
!1825 = !DILocation(line: 698, column: 42, scope: !1821)
!1826 = !DILocation(line: 698, column: 11, scope: !1821)
!1827 = !DILocation(line: 698, column: 9, scope: !1821)
!1828 = !DILocation(line: 699, column: 6, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1821, file: !704, line: 699, column: 6)
!1830 = !DILocation(line: 699, column: 13, scope: !1829)
!1831 = !DILocation(line: 699, column: 6, scope: !1821)
!1832 = !DILocation(line: 700, column: 21, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1829, file: !704, line: 699, column: 20)
!1834 = !DILocation(line: 700, column: 33, scope: !1833)
!1835 = !DILocation(line: 700, column: 3, scope: !1833)
!1836 = !DILocation(line: 701, column: 3, scope: !1833)
!1837 = !DILocation(line: 704, column: 27, scope: !1821)
!1838 = !DILocation(line: 704, column: 2, scope: !1821)
!1839 = !DILocation(line: 705, column: 1, scope: !1821)
!1840 = !DILocation(line: 705, column: 1, scope: !1841)
!1841 = !DILexicalBlockFile(scope: !1821, file: !704, discriminator: 1)
!1842 = distinct !DISubprogram(name: "cmd_window_move_next", scope: !704, file: !704, line: 708, type: !523, isLocal: true, isDefinition: true, scopeLine: 709, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !707)
!1843 = !DILocalVariable(name: "refnum", scope: !1842, file: !704, line: 710, type: !375)
!1844 = !DILocation(line: 710, column: 6, scope: !1842)
!1845 = !DILocation(line: 712, column: 30, scope: !1842)
!1846 = !DILocation(line: 712, column: 42, scope: !1842)
!1847 = !DILocation(line: 712, column: 11, scope: !1842)
!1848 = !DILocation(line: 712, column: 9, scope: !1842)
!1849 = !DILocation(line: 713, column: 6, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1842, file: !704, line: 713, column: 6)
!1851 = !DILocation(line: 713, column: 13, scope: !1850)
!1852 = !DILocation(line: 713, column: 6, scope: !1842)
!1853 = !DILocation(line: 714, column: 21, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1850, file: !704, line: 713, column: 20)
!1855 = !DILocation(line: 714, column: 33, scope: !1854)
!1856 = !DILocation(line: 714, column: 3, scope: !1854)
!1857 = !DILocation(line: 715, column: 3, scope: !1854)
!1858 = !DILocation(line: 718, column: 35, scope: !1842)
!1859 = !DILocation(line: 718, column: 9, scope: !1842)
!1860 = !DILocation(line: 719, column: 1, scope: !1842)
!1861 = !DILocation(line: 719, column: 1, scope: !1862)
!1862 = !DILexicalBlockFile(scope: !1842, file: !704, discriminator: 1)
!1863 = distinct !DISubprogram(name: "cmd_window_move_first", scope: !704, file: !704, line: 745, type: !523, isLocal: true, isDefinition: true, scopeLine: 746, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !707)
!1864 = !DILocation(line: 747, column: 2, scope: !1863)
!1865 = !DILocation(line: 748, column: 1, scope: !1863)
!1866 = distinct !DISubprogram(name: "cmd_window_move_last", scope: !704, file: !704, line: 751, type: !523, isLocal: true, isDefinition: true, scopeLine: 752, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !707)
!1867 = !DILocation(line: 753, column: 24, scope: !1866)
!1868 = !DILocation(line: 753, column: 2, scope: !1869)
!1869 = !DILexicalBlockFile(scope: !1866, file: !704, discriminator: 1)
!1870 = !DILocation(line: 754, column: 1, scope: !1866)
!1871 = distinct !DISubprogram(name: "cmd_window_list", scope: !704, file: !704, line: 768, type: !523, isLocal: true, isDefinition: true, scopeLine: 769, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !707)
!1872 = !DILocalVariable(name: "tmp", scope: !1871, file: !704, line: 770, type: !535)
!1873 = !DILocation(line: 770, column: 10, scope: !1871)
!1874 = !DILocalVariable(name: "sorted", scope: !1871, file: !704, line: 770, type: !535)
!1875 = !DILocation(line: 770, column: 16, scope: !1871)
!1876 = !DILocalVariable(name: "levelstr", scope: !1871, file: !704, line: 771, type: !388)
!1877 = !DILocation(line: 771, column: 8, scope: !1871)
!1878 = !DILocation(line: 773, column: 11, scope: !1871)
!1879 = !DILocation(line: 773, column: 9, scope: !1871)
!1880 = !DILocation(line: 774, column: 2, scope: !1871)
!1881 = !DILocation(line: 775, column: 13, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1871, file: !704, line: 775, column: 2)
!1883 = !DILocation(line: 775, column: 11, scope: !1882)
!1884 = !DILocation(line: 775, column: 7, scope: !1882)
!1885 = !DILocation(line: 775, column: 21, scope: !1886)
!1886 = !DILexicalBlockFile(scope: !1887, file: !704, discriminator: 1)
!1887 = distinct !DILexicalBlock(scope: !1882, file: !704, line: 775, column: 2)
!1888 = !DILocation(line: 775, column: 25, scope: !1886)
!1889 = !DILocation(line: 775, column: 2, scope: !1886)
!1890 = !DILocalVariable(name: "rec", scope: !1891, file: !704, line: 776, type: !852)
!1891 = distinct !DILexicalBlock(scope: !1887, file: !704, line: 775, column: 50)
!1892 = !DILocation(line: 776, column: 15, scope: !1891)
!1893 = !DILocation(line: 776, column: 21, scope: !1891)
!1894 = !DILocation(line: 776, column: 26, scope: !1891)
!1895 = !DILocation(line: 778, column: 25, scope: !1891)
!1896 = !DILocation(line: 778, column: 30, scope: !1891)
!1897 = !DILocation(line: 778, column: 14, scope: !1891)
!1898 = !DILocation(line: 778, column: 12, scope: !1891)
!1899 = !DILocation(line: 779, column: 46, scope: !1891)
!1900 = !DILocation(line: 779, column: 51, scope: !1891)
!1901 = !DILocation(line: 779, column: 59, scope: !1891)
!1902 = !DILocation(line: 779, column: 64, scope: !1891)
!1903 = !DILocation(line: 779, column: 69, scope: !1891)
!1904 = !DILocation(line: 779, column: 59, scope: !1905)
!1905 = !DILexicalBlockFile(scope: !1891, file: !704, discriminator: 1)
!1906 = !DILocation(line: 779, column: 9, scope: !1907)
!1907 = !DILexicalBlockFile(scope: !1891, file: !704, discriminator: 2)
!1908 = !DILocation(line: 779, column: 14, scope: !1907)
!1909 = !DILocation(line: 779, column: 59, scope: !1907)
!1910 = !DILocation(line: 779, column: 59, scope: !1911)
!1911 = !DILexicalBlockFile(scope: !1891, file: !704, discriminator: 3)
!1912 = !DILocation(line: 779, column: 20, scope: !1911)
!1913 = !DILocation(line: 779, column: 25, scope: !1911)
!1914 = !DILocation(line: 779, column: 32, scope: !1911)
!1915 = !DILocation(line: 779, column: 20, scope: !1916)
!1916 = !DILexicalBlockFile(scope: !1891, file: !704, discriminator: 4)
!1917 = !DILocation(line: 779, column: 9, scope: !1918)
!1918 = !DILexicalBlockFile(scope: !1891, file: !704, discriminator: 5)
!1919 = !DILocation(line: 779, column: 14, scope: !1918)
!1920 = !DILocation(line: 779, column: 22, scope: !1918)
!1921 = !DILocation(line: 779, column: 20, scope: !1918)
!1922 = !DILocation(line: 779, column: 20, scope: !1923)
!1923 = !DILexicalBlockFile(scope: !1891, file: !704, discriminator: 6)
!1924 = !DILocation(line: 779, column: 36, scope: !1923)
!1925 = !DILocation(line: 779, column: 41, scope: !1923)
!1926 = !DILocation(line: 779, column: 55, scope: !1923)
!1927 = !DILocation(line: 779, column: 36, scope: !1928)
!1928 = !DILexicalBlockFile(scope: !1891, file: !704, discriminator: 7)
!1929 = !DILocation(line: 779, column: 25, scope: !1930)
!1930 = !DILexicalBlockFile(scope: !1891, file: !704, discriminator: 8)
!1931 = !DILocation(line: 779, column: 30, scope: !1930)
!1932 = !DILocation(line: 779, column: 46, scope: !1930)
!1933 = !DILocation(line: 779, column: 36, scope: !1930)
!1934 = !DILocation(line: 779, column: 36, scope: !1935)
!1935 = !DILexicalBlockFile(scope: !1891, file: !704, discriminator: 9)
!1936 = !DILocation(line: 779, column: 51, scope: !1935)
!1937 = !DILocation(line: 779, column: 3, scope: !1935)
!1938 = !DILocation(line: 784, column: 10, scope: !1891)
!1939 = !DILocation(line: 784, column: 3, scope: !1891)
!1940 = !DILocation(line: 785, column: 2, scope: !1891)
!1941 = !DILocation(line: 775, column: 39, scope: !1942)
!1942 = !DILexicalBlockFile(scope: !1887, file: !704, discriminator: 2)
!1943 = !DILocation(line: 775, column: 44, scope: !1942)
!1944 = !DILocation(line: 775, column: 37, scope: !1942)
!1945 = !DILocation(line: 775, column: 2, scope: !1942)
!1946 = distinct !{!1946, !1947}
!1947 = !DILocation(line: 775, column: 2, scope: !1871)
!1948 = !DILocation(line: 786, column: 15, scope: !1871)
!1949 = !DILocation(line: 786, column: 2, scope: !1871)
!1950 = !DILocation(line: 787, column: 9, scope: !1871)
!1951 = !DILocation(line: 788, column: 1, scope: !1871)
!1952 = distinct !DISubprogram(name: "cmd_window_theme", scope: !704, file: !704, line: 791, type: !705, isLocal: true, isDefinition: true, scopeLine: 792, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !707)
!1953 = !DILocalVariable(name: "data", arg: 1, scope: !1952, file: !704, line: 791, type: !362)
!1954 = !DILocation(line: 791, column: 42, scope: !1952)
!1955 = !DILocalVariable(name: "theme", scope: !1952, file: !704, line: 793, type: !1956)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64, align: 64)
!1957 = !DIDerivedType(tag: DW_TAG_typedef, name: "THEME_REC", file: !1958, line: 33, baseType: !1959)
!1958 = !DIFile(filename: "themes.h", directory: "/home/lichi/Desktop/irssi/task1")
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1958, line: 13, size: 8768, align: 64, elements: !1960)
!1960 = !{!1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1972, !1973, !1974}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1959, file: !1958, line: 14, baseType: !375, size: 32, align: 32)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !1959, file: !1958, line: 16, baseType: !388, size: 64, align: 64, offset: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1959, file: !1958, line: 17, baseType: !388, size: 64, align: 64, offset: 128)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "last_modify", scope: !1959, file: !1958, line: 18, baseType: !607, size: 64, align: 64, offset: 192)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "default_color", scope: !1959, file: !1958, line: 20, baseType: !375, size: 32, align: 32, offset: 256)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "info_eol", scope: !1959, file: !1958, line: 23, baseType: !447, size: 1, align: 32, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !1959, file: !1958, line: 26, baseType: !635, size: 64, align: 64, offset: 320)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "replace_keys", scope: !1959, file: !1958, line: 28, baseType: !1969, size: 8192, align: 32, offset: 384)
!1969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !375, size: 8192, align: 32, elements: !1970)
!1970 = !{!1971}
!1971 = !DISubrange(count: 256)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "replace_values", scope: !1959, file: !1958, line: 29, baseType: !535, size: 64, align: 64, offset: 8576)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "abstracts", scope: !1959, file: !1958, line: 30, baseType: !635, size: 64, align: 64, offset: 8640)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "gui_data", scope: !1959, file: !1958, line: 32, baseType: !350, size: 64, align: 64, offset: 8704)
!1975 = !DILocation(line: 793, column: 13, scope: !1952)
!1976 = !DILocalVariable(name: "optlist", scope: !1952, file: !704, line: 794, type: !635)
!1977 = !DILocation(line: 794, column: 14, scope: !1952)
!1978 = !DILocalVariable(name: "name", scope: !1952, file: !704, line: 795, type: !388)
!1979 = !DILocation(line: 795, column: 15, scope: !1952)
!1980 = !DILocalVariable(name: "free_arg", scope: !1952, file: !704, line: 796, type: !350)
!1981 = !DILocation(line: 796, column: 8, scope: !1952)
!1982 = !DILocation(line: 798, column: 22, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1952, file: !704, line: 798, column: 6)
!1984 = !DILocation(line: 798, column: 7, scope: !1983)
!1985 = !DILocation(line: 798, column: 6, scope: !1952)
!1986 = !DILocation(line: 800, column: 3, scope: !1983)
!1987 = !DILocation(line: 802, column: 26, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1952, file: !704, line: 802, column: 6)
!1989 = !DILocation(line: 802, column: 6, scope: !1988)
!1990 = !DILocation(line: 802, column: 45, scope: !1988)
!1991 = !DILocation(line: 802, column: 6, scope: !1952)
!1992 = !DILocation(line: 803, column: 3, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1988, file: !704, line: 802, column: 53)
!1994 = distinct !{!1994, !1992}
!1995 = !DILocation(line: 803, column: 12, scope: !1996)
!1996 = !DILexicalBlockFile(scope: !1997, file: !704, discriminator: 1)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !704, line: 803, column: 12)
!1998 = distinct !DILexicalBlock(scope: !1993, file: !704, line: 803, column: 6)
!1999 = !DILocation(line: 803, column: 24, scope: !1996)
!2000 = !DILocation(line: 803, column: 45, scope: !2001)
!2001 = !DILexicalBlockFile(scope: !2002, file: !704, discriminator: 2)
!2002 = distinct !DILexicalBlock(scope: !1997, file: !704, line: 803, column: 36)
!2003 = !DILocation(line: 803, column: 57, scope: !2001)
!2004 = !DILocation(line: 803, column: 38, scope: !2001)
!2005 = !DILocation(line: 803, column: 71, scope: !2001)
!2006 = !DILocation(line: 803, column: 83, scope: !2001)
!2007 = !DILocation(line: 803, column: 95, scope: !2001)
!2008 = !DILocation(line: 803, column: 4, scope: !2001)
!2009 = !DILocation(line: 803, column: 6, scope: !2010)
!2010 = !DILexicalBlockFile(scope: !1998, file: !704, discriminator: 3)
!2011 = !DILocation(line: 805, column: 47, scope: !1993)
!2012 = !DILocation(line: 805, column: 3, scope: !1993)
!2013 = !DILocation(line: 807, column: 2, scope: !1993)
!2014 = !DILocation(line: 807, column: 14, scope: !2015)
!2015 = !DILexicalBlockFile(scope: !2016, file: !704, discriminator: 1)
!2016 = distinct !DILexicalBlock(scope: !1988, file: !704, line: 807, column: 13)
!2017 = !DILocation(line: 807, column: 13, scope: !2015)
!2018 = !DILocation(line: 807, column: 19, scope: !2015)
!2019 = !DILocation(line: 808, column: 7, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2021, file: !704, line: 808, column: 7)
!2021 = distinct !DILexicalBlock(scope: !2016, file: !704, line: 807, column: 28)
!2022 = !DILocation(line: 808, column: 19, scope: !2020)
!2023 = !DILocation(line: 808, column: 25, scope: !2020)
!2024 = !DILocation(line: 808, column: 7, scope: !2021)
!2025 = !DILocation(line: 809, column: 48, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2020, file: !704, line: 808, column: 33)
!2027 = !DILocation(line: 809, column: 4, scope: !2026)
!2028 = !DILocation(line: 811, column: 3, scope: !2026)
!2029 = !DILocation(line: 812, column: 33, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2020, file: !704, line: 811, column: 10)
!2031 = !DILocation(line: 812, column: 45, scope: !2030)
!2032 = !DILocation(line: 812, column: 31, scope: !2030)
!2033 = !DILocation(line: 813, column: 48, scope: !2030)
!2034 = !DILocation(line: 813, column: 101, scope: !2030)
!2035 = !DILocation(line: 813, column: 108, scope: !2030)
!2036 = !DILocation(line: 813, column: 114, scope: !2030)
!2037 = !DILocation(line: 813, column: 121, scope: !2030)
!2038 = !DILocation(line: 813, column: 4, scope: !2030)
!2039 = !DILocation(line: 817, column: 2, scope: !2021)
!2040 = !DILocation(line: 818, column: 10, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2016, file: !704, line: 817, column: 9)
!2042 = !DILocation(line: 818, column: 22, scope: !2041)
!2043 = !DILocation(line: 818, column: 3, scope: !2041)
!2044 = !DILocation(line: 819, column: 37, scope: !2041)
!2045 = !DILocation(line: 819, column: 28, scope: !2041)
!2046 = !DILocation(line: 819, column: 3, scope: !2041)
!2047 = !DILocation(line: 819, column: 15, scope: !2041)
!2048 = !DILocation(line: 819, column: 26, scope: !2041)
!2049 = !DILocation(line: 821, column: 42, scope: !2041)
!2050 = !DILocation(line: 821, column: 31, scope: !2041)
!2051 = !DILocation(line: 821, column: 29, scope: !2041)
!2052 = !DILocation(line: 821, column: 23, scope: !2041)
!2053 = !DILocation(line: 821, column: 3, scope: !2041)
!2054 = !DILocation(line: 821, column: 15, scope: !2041)
!2055 = !DILocation(line: 821, column: 21, scope: !2041)
!2056 = !DILocation(line: 822, column: 7, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2041, file: !704, line: 822, column: 7)
!2058 = !DILocation(line: 822, column: 13, scope: !2057)
!2059 = !DILocation(line: 822, column: 7, scope: !2041)
!2060 = !DILocation(line: 823, column: 48, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2057, file: !704, line: 822, column: 21)
!2062 = !DILocation(line: 823, column: 109, scope: !2061)
!2063 = !DILocation(line: 823, column: 116, scope: !2061)
!2064 = !DILocation(line: 823, column: 122, scope: !2061)
!2065 = !DILocation(line: 823, column: 129, scope: !2061)
!2066 = !DILocation(line: 823, column: 4, scope: !2061)
!2067 = !DILocation(line: 826, column: 3, scope: !2061)
!2068 = !DILocation(line: 827, column: 48, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2057, file: !704, line: 826, column: 10)
!2070 = !DILocation(line: 827, column: 104, scope: !2069)
!2071 = !DILocation(line: 827, column: 4, scope: !2069)
!2072 = !DILocation(line: 832, column: 18, scope: !1952)
!2073 = !DILocation(line: 832, column: 2, scope: !1952)
!2074 = !DILocation(line: 833, column: 1, scope: !1952)
!2075 = !DILocation(line: 833, column: 1, scope: !2076)
!2076 = !DILexicalBlockFile(scope: !1952, file: !704, discriminator: 1)
!2077 = distinct !DISubprogram(name: "cmd_layout", scope: !704, file: !704, line: 835, type: !1642, isLocal: true, isDefinition: true, scopeLine: 836, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !707)
!2078 = !DILocalVariable(name: "data", arg: 1, scope: !2077, file: !704, line: 835, type: !362)
!2079 = !DILocation(line: 835, column: 36, scope: !2077)
!2080 = !DILocalVariable(name: "server", arg: 2, scope: !2077, file: !704, line: 835, type: !367)
!2081 = !DILocation(line: 835, column: 54, scope: !2077)
!2082 = !DILocalVariable(name: "item", arg: 3, scope: !2077, file: !704, line: 835, type: !784)
!2083 = !DILocation(line: 835, column: 75, scope: !2077)
!2084 = !DILocation(line: 837, column: 27, scope: !2077)
!2085 = !DILocation(line: 837, column: 33, scope: !2077)
!2086 = !DILocation(line: 837, column: 41, scope: !2077)
!2087 = !DILocation(line: 837, column: 2, scope: !2077)
!2088 = !DILocation(line: 838, column: 1, scope: !2077)
!2089 = distinct !DISubprogram(name: "cmd_foreach_window", scope: !704, file: !704, line: 841, type: !705, isLocal: true, isDefinition: true, scopeLine: 842, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !707)
!2090 = !DILocalVariable(name: "data", arg: 1, scope: !2089, file: !704, line: 841, type: !362)
!2091 = !DILocation(line: 841, column: 44, scope: !2089)
!2092 = !DILocalVariable(name: "old", scope: !2089, file: !704, line: 843, type: !852)
!2093 = !DILocation(line: 843, column: 14, scope: !2089)
!2094 = !DILocalVariable(name: "list", scope: !2089, file: !704, line: 844, type: !535)
!2095 = !DILocation(line: 844, column: 10, scope: !2089)
!2096 = !DILocalVariable(name: "cmdchars", scope: !2089, file: !704, line: 845, type: !362)
!2097 = !DILocation(line: 845, column: 14, scope: !2089)
!2098 = !DILocalVariable(name: "str", scope: !2089, file: !704, line: 846, type: !388)
!2099 = !DILocation(line: 846, column: 8, scope: !2089)
!2100 = !DILocation(line: 848, column: 13, scope: !2089)
!2101 = !DILocation(line: 848, column: 11, scope: !2089)
!2102 = !DILocation(line: 849, column: 15, scope: !2089)
!2103 = !DILocation(line: 849, column: 26, scope: !2089)
!2104 = !DILocation(line: 849, column: 25, scope: !2089)
!2105 = !DILocation(line: 849, column: 8, scope: !2089)
!2106 = !DILocation(line: 849, column: 32, scope: !2089)
!2107 = !DILocation(line: 849, column: 50, scope: !2108)
!2108 = !DILexicalBlockFile(scope: !2089, file: !704, discriminator: 1)
!2109 = !DILocation(line: 849, column: 41, scope: !2108)
!2110 = !DILocation(line: 849, column: 8, scope: !2108)
!2111 = !DILocation(line: 850, column: 28, scope: !2089)
!2112 = !DILocation(line: 850, column: 27, scope: !2089)
!2113 = !DILocation(line: 850, column: 38, scope: !2089)
!2114 = !DILocation(line: 850, column: 3, scope: !2089)
!2115 = !DILocation(line: 849, column: 8, scope: !2116)
!2116 = !DILexicalBlockFile(scope: !2089, file: !704, discriminator: 2)
!2117 = !DILocation(line: 849, column: 8, scope: !2118)
!2118 = !DILexicalBlockFile(scope: !2089, file: !704, discriminator: 3)
!2119 = !DILocation(line: 849, column: 6, scope: !2118)
!2120 = !DILocation(line: 852, column: 8, scope: !2089)
!2121 = !DILocation(line: 852, column: 6, scope: !2089)
!2122 = !DILocation(line: 854, column: 22, scope: !2089)
!2123 = !DILocation(line: 854, column: 9, scope: !2089)
!2124 = !DILocation(line: 854, column: 7, scope: !2089)
!2125 = !DILocation(line: 855, column: 2, scope: !2089)
!2126 = !DILocation(line: 855, column: 9, scope: !2108)
!2127 = !DILocation(line: 855, column: 14, scope: !2108)
!2128 = !DILocation(line: 855, column: 2, scope: !2108)
!2129 = !DILocalVariable(name: "rec", scope: !2130, file: !704, line: 856, type: !852)
!2130 = distinct !DILexicalBlock(scope: !2089, file: !704, line: 855, column: 22)
!2131 = !DILocation(line: 856, column: 15, scope: !2130)
!2132 = !DILocation(line: 856, column: 21, scope: !2130)
!2133 = !DILocation(line: 856, column: 27, scope: !2130)
!2134 = !DILocation(line: 858, column: 16, scope: !2130)
!2135 = !DILocation(line: 858, column: 14, scope: !2130)
!2136 = !DILocation(line: 859, column: 34, scope: !2130)
!2137 = !DILocation(line: 859, column: 39, scope: !2130)
!2138 = !DILocation(line: 859, column: 44, scope: !2130)
!2139 = !DILocation(line: 860, column: 8, scope: !2130)
!2140 = !DILocation(line: 860, column: 13, scope: !2130)
!2141 = !DILocation(line: 859, column: 3, scope: !2130)
!2142 = !DILocation(line: 861, column: 25, scope: !2130)
!2143 = !DILocation(line: 861, column: 31, scope: !2130)
!2144 = !DILocation(line: 861, column: 37, scope: !2130)
!2145 = !DILocation(line: 861, column: 10, scope: !2130)
!2146 = !DILocation(line: 861, column: 8, scope: !2130)
!2147 = !DILocation(line: 855, column: 2, scope: !2116)
!2148 = distinct !{!2148, !2125}
!2149 = !DILocation(line: 864, column: 19, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2089, file: !704, line: 864, column: 6)
!2151 = !DILocation(line: 864, column: 28, scope: !2150)
!2152 = !DILocation(line: 864, column: 6, scope: !2150)
!2153 = !DILocation(line: 864, column: 33, scope: !2150)
!2154 = !DILocation(line: 864, column: 6, scope: !2089)
!2155 = !DILocation(line: 865, column: 16, scope: !2150)
!2156 = !DILocation(line: 865, column: 14, scope: !2150)
!2157 = !DILocation(line: 865, column: 3, scope: !2150)
!2158 = !DILocation(line: 867, column: 9, scope: !2089)
!2159 = !DILocation(line: 867, column: 2, scope: !2089)
!2160 = !DILocation(line: 868, column: 1, scope: !2089)
!2161 = distinct !DISubprogram(name: "window_commands_deinit", scope: !704, file: !704, line: 914, type: !523, isLocal: false, isDefinition: true, scopeLine: 915, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !707)
!2162 = !DILocation(line: 916, column: 2, scope: !2161)
!2163 = !DILocation(line: 917, column: 2, scope: !2161)
!2164 = !DILocation(line: 918, column: 2, scope: !2161)
!2165 = !DILocation(line: 919, column: 2, scope: !2161)
!2166 = !DILocation(line: 920, column: 2, scope: !2161)
!2167 = !DILocation(line: 921, column: 2, scope: !2161)
!2168 = !DILocation(line: 922, column: 2, scope: !2161)
!2169 = !DILocation(line: 923, column: 2, scope: !2161)
!2170 = !DILocation(line: 924, column: 2, scope: !2161)
!2171 = !DILocation(line: 925, column: 2, scope: !2161)
!2172 = !DILocation(line: 926, column: 2, scope: !2161)
!2173 = !DILocation(line: 927, column: 2, scope: !2161)
!2174 = !DILocation(line: 928, column: 2, scope: !2161)
!2175 = !DILocation(line: 929, column: 2, scope: !2161)
!2176 = !DILocation(line: 930, column: 2, scope: !2161)
!2177 = !DILocation(line: 931, column: 2, scope: !2161)
!2178 = !DILocation(line: 932, column: 2, scope: !2161)
!2179 = !DILocation(line: 933, column: 2, scope: !2161)
!2180 = !DILocation(line: 934, column: 2, scope: !2161)
!2181 = !DILocation(line: 935, column: 2, scope: !2161)
!2182 = !DILocation(line: 936, column: 2, scope: !2161)
!2183 = !DILocation(line: 937, column: 2, scope: !2161)
!2184 = !DILocation(line: 938, column: 2, scope: !2161)
!2185 = !DILocation(line: 939, column: 2, scope: !2161)
!2186 = !DILocation(line: 940, column: 2, scope: !2161)
!2187 = !DILocation(line: 941, column: 2, scope: !2161)
!2188 = !DILocation(line: 942, column: 2, scope: !2161)
!2189 = !DILocation(line: 943, column: 2, scope: !2161)
!2190 = !DILocation(line: 944, column: 2, scope: !2161)
!2191 = !DILocation(line: 945, column: 2, scope: !2161)
!2192 = !DILocation(line: 946, column: 2, scope: !2161)
!2193 = !DILocation(line: 947, column: 1, scope: !2161)
!2194 = distinct !DISubprogram(name: "cmd_window_info", scope: !704, file: !704, line: 78, type: !2195, isLocal: true, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !707)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{null, !852}
!2197 = !DILocalVariable(name: "win", arg: 1, scope: !2194, file: !704, line: 78, type: !852)
!2198 = !DILocation(line: 78, column: 41, scope: !2194)
!2199 = !DILocalVariable(name: "levelstr", scope: !2194, file: !704, line: 80, type: !388)
!2200 = !DILocation(line: 80, column: 15, scope: !2194)
!2201 = !DILocation(line: 82, column: 46, scope: !2194)
!2202 = !DILocation(line: 82, column: 2, scope: !2194)
!2203 = !DILocation(line: 86, column: 7, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2194, file: !704, line: 86, column: 6)
!2205 = !DILocation(line: 86, column: 12, scope: !2204)
!2206 = !DILocation(line: 86, column: 6, scope: !2194)
!2207 = !DILocation(line: 87, column: 47, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2204, file: !704, line: 86, column: 27)
!2209 = !DILocation(line: 87, column: 97, scope: !2208)
!2210 = !DILocation(line: 87, column: 102, scope: !2208)
!2211 = !DILocation(line: 87, column: 3, scope: !2208)
!2212 = !DILocation(line: 89, column: 2, scope: !2208)
!2213 = !DILocation(line: 90, column: 47, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2204, file: !704, line: 89, column: 9)
!2215 = !DILocation(line: 90, column: 104, scope: !2214)
!2216 = !DILocation(line: 90, column: 109, scope: !2214)
!2217 = !DILocation(line: 90, column: 3, scope: !2214)
!2218 = !DILocation(line: 95, column: 6, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2194, file: !704, line: 95, column: 6)
!2220 = !DILocation(line: 95, column: 11, scope: !2219)
!2221 = !DILocation(line: 95, column: 16, scope: !2219)
!2222 = !DILocation(line: 95, column: 6, scope: !2194)
!2223 = !DILocation(line: 96, column: 47, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2219, file: !704, line: 95, column: 24)
!2225 = !DILocation(line: 96, column: 95, scope: !2224)
!2226 = !DILocation(line: 96, column: 100, scope: !2224)
!2227 = !DILocation(line: 96, column: 3, scope: !2224)
!2228 = !DILocation(line: 98, column: 2, scope: !2224)
!2229 = !DILocation(line: 101, column: 46, scope: !2194)
!2230 = !DILocation(line: 101, column: 94, scope: !2194)
!2231 = !DILocation(line: 101, column: 99, scope: !2194)
!2232 = !DILocation(line: 101, column: 106, scope: !2194)
!2233 = !DILocation(line: 101, column: 111, scope: !2194)
!2234 = !DILocation(line: 101, column: 2, scope: !2194)
!2235 = !DILocation(line: 105, column: 6, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2194, file: !704, line: 105, column: 6)
!2237 = !DILocation(line: 105, column: 11, scope: !2236)
!2238 = !DILocation(line: 105, column: 6, scope: !2194)
!2239 = !DILocation(line: 106, column: 47, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2236, file: !704, line: 105, column: 21)
!2241 = !DILocation(line: 106, column: 3, scope: !2240)
!2242 = !DILocation(line: 108, column: 2, scope: !2240)
!2243 = !DILocation(line: 111, column: 6, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2194, file: !704, line: 111, column: 6)
!2245 = !DILocation(line: 111, column: 11, scope: !2244)
!2246 = !DILocation(line: 111, column: 24, scope: !2244)
!2247 = !DILocation(line: 111, column: 6, scope: !2194)
!2248 = !DILocation(line: 112, column: 47, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2244, file: !704, line: 111, column: 32)
!2250 = !DILocation(line: 112, column: 98, scope: !2249)
!2251 = !DILocation(line: 112, column: 103, scope: !2249)
!2252 = !DILocation(line: 112, column: 3, scope: !2249)
!2253 = !DILocation(line: 114, column: 2, scope: !2249)
!2254 = !DILocation(line: 117, column: 13, scope: !2194)
!2255 = !DILocation(line: 117, column: 18, scope: !2194)
!2256 = !DILocation(line: 117, column: 24, scope: !2194)
!2257 = !DILocation(line: 118, column: 3, scope: !2194)
!2258 = !DILocation(line: 117, column: 13, scope: !2259)
!2259 = !DILexicalBlockFile(scope: !2194, file: !704, discriminator: 1)
!2260 = !DILocation(line: 118, column: 33, scope: !2259)
!2261 = !DILocation(line: 118, column: 38, scope: !2259)
!2262 = !DILocation(line: 118, column: 22, scope: !2259)
!2263 = !DILocation(line: 117, column: 13, scope: !2264)
!2264 = !DILexicalBlockFile(scope: !2194, file: !704, discriminator: 2)
!2265 = !DILocation(line: 117, column: 13, scope: !2266)
!2266 = !DILexicalBlockFile(scope: !2194, file: !704, discriminator: 3)
!2267 = !DILocation(line: 117, column: 11, scope: !2266)
!2268 = !DILocation(line: 119, column: 46, scope: !2194)
!2269 = !DILocation(line: 119, column: 95, scope: !2194)
!2270 = !DILocation(line: 119, column: 2, scope: !2194)
!2271 = !DILocation(line: 121, column: 9, scope: !2194)
!2272 = !DILocation(line: 121, column: 2, scope: !2194)
!2273 = !DILocation(line: 124, column: 6, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2194, file: !704, line: 124, column: 6)
!2275 = !DILocation(line: 124, column: 11, scope: !2274)
!2276 = !DILocation(line: 124, column: 21, scope: !2274)
!2277 = !DILocation(line: 124, column: 6, scope: !2194)
!2278 = !DILocation(line: 125, column: 47, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2274, file: !704, line: 124, column: 29)
!2280 = !DILocation(line: 125, column: 97, scope: !2279)
!2281 = !DILocation(line: 125, column: 102, scope: !2279)
!2282 = !DILocation(line: 125, column: 116, scope: !2279)
!2283 = !DILocation(line: 125, column: 4, scope: !2284)
!2284 = !DILexicalBlockFile(scope: !2279, file: !704, discriminator: 1)
!2285 = !DILocation(line: 125, column: 9, scope: !2284)
!2286 = !DILocation(line: 125, column: 24, scope: !2284)
!2287 = !DILocation(line: 125, column: 97, scope: !2284)
!2288 = !DILocation(line: 125, column: 97, scope: !2289)
!2289 = !DILexicalBlockFile(scope: !2279, file: !704, discriminator: 2)
!2290 = !DILocation(line: 125, column: 97, scope: !2291)
!2291 = !DILexicalBlockFile(scope: !2279, file: !704, discriminator: 3)
!2292 = !DILocation(line: 125, column: 3, scope: !2291)
!2293 = !DILocation(line: 129, column: 2, scope: !2279)
!2294 = !DILocation(line: 130, column: 7, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2296, file: !704, line: 130, column: 7)
!2296 = distinct !DILexicalBlock(scope: !2274, file: !704, line: 129, column: 9)
!2297 = !DILocation(line: 130, column: 12, scope: !2295)
!2298 = !DILocation(line: 130, column: 26, scope: !2295)
!2299 = !DILocation(line: 130, column: 33, scope: !2295)
!2300 = !DILocation(line: 131, column: 17, scope: !2295)
!2301 = !DILocation(line: 131, column: 22, scope: !2295)
!2302 = !DILocation(line: 131, column: 37, scope: !2295)
!2303 = !DILocation(line: 131, column: 42, scope: !2295)
!2304 = !DILocation(line: 131, column: 47, scope: !2295)
!2305 = !DILocation(line: 131, column: 7, scope: !2295)
!2306 = !DILocation(line: 131, column: 58, scope: !2295)
!2307 = !DILocation(line: 130, column: 7, scope: !2308)
!2308 = !DILexicalBlockFile(scope: !2296, file: !704, discriminator: 1)
!2309 = !DILocation(line: 132, column: 25, scope: !2295)
!2310 = !DILocation(line: 134, column: 47, scope: !2296)
!2311 = !DILocation(line: 134, column: 104, scope: !2296)
!2312 = !DILocation(line: 134, column: 109, scope: !2296)
!2313 = !DILocation(line: 134, column: 3, scope: !2296)
!2314 = !DILocation(line: 140, column: 6, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2194, file: !704, line: 140, column: 6)
!2316 = !DILocation(line: 140, column: 11, scope: !2315)
!2317 = !DILocation(line: 140, column: 22, scope: !2315)
!2318 = !DILocation(line: 140, column: 6, scope: !2194)
!2319 = !DILocation(line: 141, column: 47, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2315, file: !704, line: 140, column: 30)
!2321 = !DILocation(line: 141, column: 96, scope: !2320)
!2322 = !DILocation(line: 141, column: 101, scope: !2320)
!2323 = !DILocation(line: 141, column: 113, scope: !2320)
!2324 = !DILocation(line: 141, column: 118, scope: !2320)
!2325 = !DILocation(line: 141, column: 124, scope: !2320)
!2326 = !DILocation(line: 141, column: 3, scope: !2320)
!2327 = !DILocation(line: 144, column: 2, scope: !2320)
!2328 = !DILocation(line: 147, column: 6, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2194, file: !704, line: 147, column: 6)
!2330 = !DILocation(line: 147, column: 11, scope: !2329)
!2331 = !DILocation(line: 147, column: 23, scope: !2329)
!2332 = !DILocation(line: 147, column: 6, scope: !2194)
!2333 = !DILocation(line: 148, column: 36, scope: !2329)
!2334 = !DILocation(line: 148, column: 17, scope: !2329)
!2335 = !DILocation(line: 151, column: 6, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2194, file: !704, line: 151, column: 6)
!2337 = !DILocation(line: 151, column: 11, scope: !2336)
!2338 = !DILocation(line: 151, column: 17, scope: !2336)
!2339 = !DILocation(line: 151, column: 6, scope: !2194)
!2340 = !DILocation(line: 152, column: 36, scope: !2336)
!2341 = !DILocation(line: 152, column: 17, scope: !2336)
!2342 = !DILocation(line: 154, column: 45, scope: !2194)
!2343 = !DILocation(line: 154, column: 9, scope: !2194)
!2344 = !DILocation(line: 156, column: 46, scope: !2194)
!2345 = !DILocation(line: 156, column: 2, scope: !2194)
!2346 = !DILocation(line: 158, column: 1, scope: !2194)
!2347 = distinct !DISubprogram(name: "window_print_binds", scope: !704, file: !704, line: 38, type: !2195, isLocal: true, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !707)
!2348 = !DILocalVariable(name: "win", arg: 1, scope: !2347, file: !704, line: 38, type: !852)
!2349 = !DILocation(line: 38, column: 44, scope: !2347)
!2350 = !DILocalVariable(name: "tmp", scope: !2347, file: !704, line: 40, type: !535)
!2351 = !DILocation(line: 40, column: 10, scope: !2347)
!2352 = !DILocation(line: 42, column: 46, scope: !2347)
!2353 = !DILocation(line: 42, column: 2, scope: !2347)
!2354 = !DILocation(line: 44, column: 13, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2347, file: !704, line: 44, column: 2)
!2356 = !DILocation(line: 44, column: 18, scope: !2355)
!2357 = !DILocation(line: 44, column: 11, scope: !2355)
!2358 = !DILocation(line: 44, column: 7, scope: !2355)
!2359 = !DILocation(line: 44, column: 31, scope: !2360)
!2360 = !DILexicalBlockFile(scope: !2361, file: !704, discriminator: 1)
!2361 = distinct !DILexicalBlock(scope: !2355, file: !704, line: 44, column: 2)
!2362 = !DILocation(line: 44, column: 35, scope: !2360)
!2363 = !DILocation(line: 44, column: 2, scope: !2360)
!2364 = !DILocalVariable(name: "bind", scope: !2365, file: !704, line: 45, type: !2366)
!2365 = distinct !DILexicalBlock(scope: !2361, file: !704, line: 44, column: 60)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64, align: 64)
!2367 = !DIDerivedType(tag: DW_TAG_typedef, name: "WINDOW_BIND_REC", file: !321, line: 26, baseType: !2368)
!2368 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !321, line: 22, size: 192, align: 64, elements: !2369)
!2369 = !{!2370, !2371, !2372}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !2368, file: !321, line: 23, baseType: !388, size: 64, align: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2368, file: !321, line: 24, baseType: !388, size: 64, align: 64, offset: 64)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "sticky", scope: !2368, file: !321, line: 25, baseType: !447, size: 1, align: 32, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2373 = !DILocation(line: 45, column: 20, scope: !2365)
!2374 = !DILocation(line: 45, column: 27, scope: !2365)
!2375 = !DILocation(line: 45, column: 32, scope: !2365)
!2376 = !DILocation(line: 47, column: 47, scope: !2365)
!2377 = !DILocation(line: 47, column: 101, scope: !2365)
!2378 = !DILocation(line: 47, column: 107, scope: !2365)
!2379 = !DILocation(line: 47, column: 113, scope: !2365)
!2380 = !DILocation(line: 47, column: 119, scope: !2365)
!2381 = !DILocation(line: 47, column: 130, scope: !2365)
!2382 = !DILocation(line: 47, column: 136, scope: !2365)
!2383 = !DILocation(line: 47, column: 3, scope: !2365)
!2384 = !DILocation(line: 51, column: 2, scope: !2365)
!2385 = !DILocation(line: 44, column: 49, scope: !2386)
!2386 = !DILexicalBlockFile(scope: !2361, file: !704, discriminator: 2)
!2387 = !DILocation(line: 44, column: 54, scope: !2386)
!2388 = !DILocation(line: 44, column: 47, scope: !2386)
!2389 = !DILocation(line: 44, column: 2, scope: !2386)
!2390 = distinct !{!2390, !2391}
!2391 = !DILocation(line: 44, column: 2, scope: !2347)
!2392 = !DILocation(line: 52, column: 46, scope: !2347)
!2393 = !DILocation(line: 52, column: 2, scope: !2347)
!2394 = !DILocation(line: 54, column: 1, scope: !2347)
!2395 = distinct !DISubprogram(name: "window_print_items", scope: !704, file: !704, line: 56, type: !2195, isLocal: true, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !707)
!2396 = !DILocalVariable(name: "win", arg: 1, scope: !2395, file: !704, line: 56, type: !852)
!2397 = !DILocation(line: 56, column: 44, scope: !2395)
!2398 = !DILocalVariable(name: "tmp", scope: !2395, file: !704, line: 58, type: !535)
!2399 = !DILocation(line: 58, column: 10, scope: !2395)
!2400 = !DILocalVariable(name: "type", scope: !2395, file: !704, line: 59, type: !362)
!2401 = !DILocation(line: 59, column: 21, scope: !2395)
!2402 = !DILocation(line: 61, column: 46, scope: !2395)
!2403 = !DILocation(line: 61, column: 2, scope: !2395)
!2404 = !DILocation(line: 63, column: 13, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2395, file: !704, line: 63, column: 2)
!2406 = !DILocation(line: 63, column: 18, scope: !2405)
!2407 = !DILocation(line: 63, column: 11, scope: !2405)
!2408 = !DILocation(line: 63, column: 7, scope: !2405)
!2409 = !DILocation(line: 63, column: 25, scope: !2410)
!2410 = !DILexicalBlockFile(scope: !2411, file: !704, discriminator: 1)
!2411 = distinct !DILexicalBlock(scope: !2405, file: !704, line: 63, column: 2)
!2412 = !DILocation(line: 63, column: 29, scope: !2410)
!2413 = !DILocation(line: 63, column: 2, scope: !2410)
!2414 = !DILocalVariable(name: "item", scope: !2415, file: !704, line: 64, type: !784)
!2415 = distinct !DILexicalBlock(scope: !2411, file: !704, line: 63, column: 54)
!2416 = !DILocation(line: 64, column: 16, scope: !2415)
!2417 = !DILocation(line: 64, column: 23, scope: !2415)
!2418 = !DILocation(line: 64, column: 28, scope: !2415)
!2419 = !DILocation(line: 66, column: 49, scope: !2415)
!2420 = !DILocation(line: 66, column: 55, scope: !2415)
!2421 = !DILocation(line: 66, column: 10, scope: !2415)
!2422 = !DILocation(line: 66, column: 8, scope: !2415)
!2423 = !DILocation(line: 67, column: 47, scope: !2415)
!2424 = !DILocation(line: 67, column: 95, scope: !2415)
!2425 = !DILocation(line: 67, column: 100, scope: !2415)
!2426 = !DILocation(line: 67, column: 95, scope: !2427)
!2427 = !DILexicalBlockFile(scope: !2415, file: !704, discriminator: 1)
!2428 = !DILocation(line: 67, column: 11, scope: !2429)
!2429 = !DILexicalBlockFile(scope: !2415, file: !704, discriminator: 2)
!2430 = !DILocation(line: 67, column: 95, scope: !2429)
!2431 = !DILocation(line: 67, column: 95, scope: !2432)
!2432 = !DILexicalBlockFile(scope: !2415, file: !704, discriminator: 3)
!2433 = !DILocation(line: 67, column: 17, scope: !2432)
!2434 = !DILocation(line: 67, column: 23, scope: !2432)
!2435 = !DILocation(line: 67, column: 37, scope: !2432)
!2436 = !DILocation(line: 67, column: 43, scope: !2432)
!2437 = !DILocation(line: 67, column: 50, scope: !2432)
!2438 = !DILocation(line: 67, column: 37, scope: !2439)
!2439 = !DILexicalBlockFile(scope: !2415, file: !704, discriminator: 4)
!2440 = !DILocation(line: 67, column: 9, scope: !2441)
!2441 = !DILexicalBlockFile(scope: !2415, file: !704, discriminator: 5)
!2442 = !DILocation(line: 67, column: 15, scope: !2441)
!2443 = !DILocation(line: 67, column: 23, scope: !2441)
!2444 = !DILocation(line: 67, column: 37, scope: !2441)
!2445 = !DILocation(line: 67, column: 37, scope: !2446)
!2446 = !DILexicalBlockFile(scope: !2415, file: !704, discriminator: 6)
!2447 = !DILocation(line: 67, column: 3, scope: !2446)
!2448 = !DILocation(line: 73, column: 2, scope: !2415)
!2449 = !DILocation(line: 63, column: 43, scope: !2450)
!2450 = !DILexicalBlockFile(scope: !2411, file: !704, discriminator: 2)
!2451 = !DILocation(line: 63, column: 48, scope: !2450)
!2452 = !DILocation(line: 63, column: 41, scope: !2450)
!2453 = !DILocation(line: 63, column: 2, scope: !2450)
!2454 = distinct !{!2454, !2455}
!2455 = !DILocation(line: 63, column: 2, scope: !2395)
!2456 = !DILocation(line: 74, column: 46, scope: !2395)
!2457 = !DILocation(line: 74, column: 2, scope: !2395)
!2458 = !DILocation(line: 76, column: 1, scope: !2395)
!2459 = distinct !DISubprogram(name: "window_highest_activity", scope: !704, file: !704, line: 257, type: !2460, isLocal: true, isDefinition: true, scopeLine: 259, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !707)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{!852, !852, !375}
!2462 = !DILocalVariable(name: "window", arg: 1, scope: !2459, file: !704, line: 257, type: !852)
!2463 = !DILocation(line: 257, column: 56, scope: !2459)
!2464 = !DILocalVariable(name: "ignore_refnum", arg: 2, scope: !2459, file: !704, line: 258, type: !375)
!2465 = !DILocation(line: 258, column: 48, scope: !2459)
!2466 = !DILocalVariable(name: "rec", scope: !2459, file: !704, line: 260, type: !852)
!2467 = !DILocation(line: 260, column: 14, scope: !2459)
!2468 = !DILocalVariable(name: "max_win", scope: !2459, file: !704, line: 260, type: !852)
!2469 = !DILocation(line: 260, column: 20, scope: !2459)
!2470 = !DILocalVariable(name: "tmp", scope: !2459, file: !704, line: 261, type: !535)
!2471 = !DILocation(line: 261, column: 10, scope: !2459)
!2472 = !DILocalVariable(name: "max_act", scope: !2459, file: !704, line: 262, type: !375)
!2473 = !DILocation(line: 262, column: 6, scope: !2459)
!2474 = !DILocalVariable(name: "max_ref", scope: !2459, file: !704, line: 262, type: !375)
!2475 = !DILocation(line: 262, column: 15, scope: !2459)
!2476 = !DILocalVariable(name: "through", scope: !2459, file: !704, line: 262, type: !375)
!2477 = !DILocation(line: 262, column: 24, scope: !2459)
!2478 = !DILocation(line: 264, column: 2, scope: !2459)
!2479 = distinct !{!2479, !2478}
!2480 = !DILocation(line: 264, column: 10, scope: !2481)
!2481 = !DILexicalBlockFile(scope: !2482, file: !704, discriminator: 1)
!2482 = distinct !DILexicalBlock(scope: !2483, file: !704, line: 264, column: 10)
!2483 = distinct !DILexicalBlock(scope: !2459, file: !704, line: 264, column: 4)
!2484 = !DILocation(line: 264, column: 17, scope: !2481)
!2485 = !DILocation(line: 264, column: 5, scope: !2486)
!2486 = !DILexicalBlockFile(scope: !2487, file: !704, discriminator: 2)
!2487 = distinct !DILexicalBlock(scope: !2482, file: !704, line: 264, column: 3)
!2488 = !DILocation(line: 264, column: 14, scope: !2489)
!2489 = !DILexicalBlockFile(scope: !2490, file: !704, discriminator: 3)
!2490 = distinct !DILexicalBlock(scope: !2482, file: !704, line: 264, column: 12)
!2491 = !DILocation(line: 264, column: 101, scope: !2489)
!2492 = !DILocation(line: 264, column: 7, scope: !2493)
!2493 = !DILexicalBlockFile(scope: !2483, file: !704, discriminator: 4)
!2494 = !DILocation(line: 266, column: 10, scope: !2459)
!2495 = !DILocation(line: 266, column: 25, scope: !2459)
!2496 = !DILocation(line: 266, column: 38, scope: !2459)
!2497 = !DILocation(line: 266, column: 51, scope: !2459)
!2498 = !DILocation(line: 268, column: 21, scope: !2459)
!2499 = !DILocation(line: 268, column: 30, scope: !2459)
!2500 = !DILocation(line: 268, column: 8, scope: !2459)
!2501 = !DILocation(line: 268, column: 6, scope: !2459)
!2502 = !DILocation(line: 269, column: 2, scope: !2459)
!2503 = !DILocation(line: 270, column: 7, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2505, file: !704, line: 270, column: 7)
!2505 = distinct !DILexicalBlock(scope: !2506, file: !704, line: 269, column: 27)
!2506 = distinct !DILexicalBlock(scope: !2507, file: !704, line: 269, column: 2)
!2507 = distinct !DILexicalBlock(scope: !2459, file: !704, line: 269, column: 2)
!2508 = !DILocation(line: 270, column: 11, scope: !2504)
!2509 = !DILocation(line: 270, column: 7, scope: !2505)
!2510 = !DILocation(line: 271, column: 10, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2504, file: !704, line: 270, column: 19)
!2512 = !DILocation(line: 271, column: 8, scope: !2511)
!2513 = !DILocation(line: 272, column: 12, scope: !2511)
!2514 = !DILocation(line: 273, column: 3, scope: !2511)
!2515 = !DILocation(line: 275, column: 7, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2505, file: !704, line: 275, column: 7)
!2517 = !DILocation(line: 275, column: 15, scope: !2516)
!2518 = !DILocation(line: 275, column: 18, scope: !2519)
!2519 = !DILexicalBlockFile(scope: !2516, file: !704, discriminator: 1)
!2520 = !DILocation(line: 275, column: 23, scope: !2519)
!2521 = !DILocation(line: 275, column: 31, scope: !2519)
!2522 = !DILocation(line: 275, column: 28, scope: !2519)
!2523 = !DILocation(line: 275, column: 7, scope: !2519)
!2524 = !DILocation(line: 276, column: 4, scope: !2516)
!2525 = !DILocation(line: 278, column: 9, scope: !2505)
!2526 = !DILocation(line: 278, column: 14, scope: !2505)
!2527 = !DILocation(line: 278, column: 7, scope: !2505)
!2528 = !DILocation(line: 281, column: 7, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2505, file: !704, line: 281, column: 7)
!2530 = !DILocation(line: 281, column: 21, scope: !2529)
!2531 = !DILocation(line: 282, column: 7, scope: !2529)
!2532 = !DILocation(line: 282, column: 12, scope: !2529)
!2533 = !DILocation(line: 282, column: 23, scope: !2529)
!2534 = !DILocation(line: 282, column: 27, scope: !2529)
!2535 = !DILocation(line: 282, column: 30, scope: !2536)
!2536 = !DILexicalBlockFile(scope: !2529, file: !704, discriminator: 1)
!2537 = !DILocation(line: 282, column: 40, scope: !2536)
!2538 = !DILocation(line: 282, column: 45, scope: !2536)
!2539 = !DILocation(line: 282, column: 38, scope: !2536)
!2540 = !DILocation(line: 281, column: 7, scope: !2541)
!2541 = !DILexicalBlockFile(scope: !2505, file: !704, discriminator: 1)
!2542 = !DILocation(line: 283, column: 14, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2529, file: !704, line: 282, column: 57)
!2544 = !DILocation(line: 283, column: 19, scope: !2543)
!2545 = !DILocation(line: 283, column: 12, scope: !2543)
!2546 = !DILocation(line: 284, column: 14, scope: !2543)
!2547 = !DILocation(line: 284, column: 12, scope: !2543)
!2548 = !DILocation(line: 285, column: 3, scope: !2543)
!2549 = !DILocation(line: 288, column: 13, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2529, file: !704, line: 288, column: 12)
!2551 = !DILocation(line: 288, column: 27, scope: !2550)
!2552 = !DILocation(line: 289, column: 12, scope: !2550)
!2553 = !DILocation(line: 289, column: 17, scope: !2550)
!2554 = !DILocation(line: 289, column: 28, scope: !2550)
!2555 = !DILocation(line: 289, column: 32, scope: !2550)
!2556 = !DILocation(line: 290, column: 13, scope: !2550)
!2557 = !DILocation(line: 290, column: 18, scope: !2550)
!2558 = !DILocation(line: 290, column: 31, scope: !2550)
!2559 = !DILocation(line: 290, column: 29, scope: !2550)
!2560 = !DILocation(line: 290, column: 39, scope: !2550)
!2561 = !DILocation(line: 291, column: 14, scope: !2550)
!2562 = !DILocation(line: 291, column: 19, scope: !2550)
!2563 = !DILocation(line: 291, column: 33, scope: !2550)
!2564 = !DILocation(line: 291, column: 30, scope: !2550)
!2565 = !DILocation(line: 291, column: 41, scope: !2550)
!2566 = !DILocation(line: 291, column: 44, scope: !2567)
!2567 = !DILexicalBlockFile(scope: !2550, file: !704, discriminator: 1)
!2568 = !DILocation(line: 291, column: 49, scope: !2567)
!2569 = !DILocation(line: 291, column: 58, scope: !2567)
!2570 = !DILocation(line: 291, column: 56, scope: !2567)
!2571 = !DILocation(line: 288, column: 12, scope: !2536)
!2572 = !DILocation(line: 292, column: 14, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2550, file: !704, line: 291, column: 69)
!2574 = !DILocation(line: 292, column: 19, scope: !2573)
!2575 = !DILocation(line: 292, column: 12, scope: !2573)
!2576 = !DILocation(line: 293, column: 14, scope: !2573)
!2577 = !DILocation(line: 293, column: 12, scope: !2573)
!2578 = !DILocation(line: 294, column: 14, scope: !2573)
!2579 = !DILocation(line: 294, column: 19, scope: !2573)
!2580 = !DILocation(line: 294, column: 12, scope: !2573)
!2581 = !DILocation(line: 295, column: 3, scope: !2573)
!2582 = !DILocation(line: 296, column: 2, scope: !2505)
!2583 = !DILocation(line: 269, column: 16, scope: !2584)
!2584 = !DILexicalBlockFile(scope: !2506, file: !704, discriminator: 1)
!2585 = !DILocation(line: 269, column: 21, scope: !2584)
!2586 = !DILocation(line: 269, column: 14, scope: !2584)
!2587 = !DILocation(line: 269, column: 2, scope: !2584)
!2588 = distinct !{!2588, !2502}
!2589 = !DILocation(line: 298, column: 9, scope: !2459)
!2590 = !DILocation(line: 298, column: 2, scope: !2459)
!2591 = !DILocation(line: 299, column: 1, scope: !2459)
!2592 = distinct !DISubprogram(name: "window_find_item_cycle", scope: !704, file: !704, line: 312, type: !2593, isLocal: true, isDefinition: true, scopeLine: 313, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !707)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{!852, !367, !362}
!2595 = !DILocalVariable(name: "server", arg: 1, scope: !2592, file: !704, line: 312, type: !367)
!2596 = !DILocation(line: 312, column: 55, scope: !2592)
!2597 = !DILocalVariable(name: "name", arg: 2, scope: !2592, file: !704, line: 312, type: !362)
!2598 = !DILocation(line: 312, column: 75, scope: !2592)
!2599 = !DILocalVariable(name: "rec", scope: !2592, file: !704, line: 314, type: !852)
!2600 = !DILocation(line: 314, column: 14, scope: !2592)
!2601 = !DILocalVariable(name: "win", scope: !2592, file: !704, line: 314, type: !852)
!2602 = !DILocation(line: 314, column: 20, scope: !2592)
!2603 = !DILocalVariable(name: "tmp", scope: !2592, file: !704, line: 315, type: !535)
!2604 = !DILocation(line: 315, column: 10, scope: !2592)
!2605 = !DILocation(line: 317, column: 6, scope: !2592)
!2606 = !DILocation(line: 319, column: 21, scope: !2592)
!2607 = !DILocation(line: 319, column: 30, scope: !2592)
!2608 = !DILocation(line: 319, column: 8, scope: !2592)
!2609 = !DILocation(line: 319, column: 6, scope: !2592)
!2610 = !DILocation(line: 320, column: 8, scope: !2592)
!2611 = !DILocation(line: 320, column: 13, scope: !2592)
!2612 = !DILocation(line: 320, column: 6, scope: !2592)
!2613 = !DILocation(line: 321, column: 2, scope: !2592)
!2614 = !DILocation(line: 322, column: 7, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2616, file: !704, line: 322, column: 7)
!2616 = distinct !DILexicalBlock(scope: !2617, file: !704, line: 321, column: 27)
!2617 = distinct !DILexicalBlock(scope: !2618, file: !704, line: 321, column: 2)
!2618 = distinct !DILexicalBlock(scope: !2592, file: !704, line: 321, column: 2)
!2619 = !DILocation(line: 322, column: 11, scope: !2615)
!2620 = !DILocation(line: 322, column: 7, scope: !2616)
!2621 = !DILocation(line: 323, column: 10, scope: !2615)
!2622 = !DILocation(line: 323, column: 8, scope: !2615)
!2623 = !DILocation(line: 323, column: 4, scope: !2615)
!2624 = !DILocation(line: 325, column: 7, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2616, file: !704, line: 325, column: 7)
!2626 = !DILocation(line: 325, column: 12, scope: !2625)
!2627 = !DILocation(line: 325, column: 20, scope: !2625)
!2628 = !DILocation(line: 325, column: 17, scope: !2625)
!2629 = !DILocation(line: 325, column: 7, scope: !2616)
!2630 = !DILocation(line: 326, column: 4, scope: !2625)
!2631 = !DILocation(line: 328, column: 9, scope: !2616)
!2632 = !DILocation(line: 328, column: 14, scope: !2616)
!2633 = !DILocation(line: 328, column: 7, scope: !2616)
!2634 = !DILocation(line: 330, column: 31, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2616, file: !704, line: 330, column: 7)
!2636 = !DILocation(line: 330, column: 36, scope: !2635)
!2637 = !DILocation(line: 330, column: 44, scope: !2635)
!2638 = !DILocation(line: 330, column: 7, scope: !2635)
!2639 = !DILocation(line: 330, column: 50, scope: !2635)
!2640 = !DILocation(line: 330, column: 57, scope: !2635)
!2641 = !DILocation(line: 331, column: 8, scope: !2635)
!2642 = !DILocation(line: 331, column: 12, scope: !2635)
!2643 = !DILocation(line: 331, column: 19, scope: !2635)
!2644 = !DILocation(line: 331, column: 32, scope: !2645)
!2645 = !DILexicalBlockFile(scope: !2635, file: !704, discriminator: 1)
!2646 = !DILocation(line: 331, column: 37, scope: !2645)
!2647 = !DILocation(line: 331, column: 45, scope: !2645)
!2648 = !DILocation(line: 331, column: 50, scope: !2645)
!2649 = !DILocation(line: 331, column: 22, scope: !2645)
!2650 = !DILocation(line: 330, column: 7, scope: !2651)
!2651 = !DILexicalBlockFile(scope: !2616, file: !704, discriminator: 1)
!2652 = !DILocation(line: 332, column: 10, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2635, file: !704, line: 331, column: 60)
!2654 = !DILocation(line: 332, column: 8, scope: !2653)
!2655 = !DILocation(line: 333, column: 8, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2653, file: !704, line: 333, column: 8)
!2657 = !DILocation(line: 333, column: 15, scope: !2656)
!2658 = !DILocation(line: 333, column: 8, scope: !2653)
!2659 = !DILocation(line: 333, column: 23, scope: !2660)
!2660 = !DILexicalBlockFile(scope: !2656, file: !704, discriminator: 1)
!2661 = !DILocation(line: 334, column: 3, scope: !2653)
!2662 = !DILocation(line: 335, column: 2, scope: !2616)
!2663 = !DILocation(line: 321, column: 16, scope: !2664)
!2664 = !DILexicalBlockFile(scope: !2617, file: !704, discriminator: 1)
!2665 = !DILocation(line: 321, column: 21, scope: !2664)
!2666 = !DILocation(line: 321, column: 14, scope: !2664)
!2667 = !DILocation(line: 321, column: 2, scope: !2664)
!2668 = distinct !{!2668, !2613}
!2669 = !DILocation(line: 337, column: 9, scope: !2592)
!2670 = !DILocation(line: 337, column: 2, scope: !2592)
!2671 = distinct !DISubprogram(name: "is_nearer", scope: !704, file: !704, line: 301, type: !2672, isLocal: true, isDefinition: true, scopeLine: 302, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !707)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{!375, !375, !375}
!2674 = !DILocalVariable(name: "r1", arg: 1, scope: !2671, file: !704, line: 301, type: !375)
!2675 = !DILocation(line: 301, column: 33, scope: !2671)
!2676 = !DILocalVariable(name: "r2", arg: 2, scope: !2671, file: !704, line: 301, type: !375)
!2677 = !DILocation(line: 301, column: 41, scope: !2671)
!2678 = !DILocalVariable(name: "a", scope: !2671, file: !704, line: 303, type: !375)
!2679 = !DILocation(line: 303, column: 6, scope: !2671)
!2680 = !DILocation(line: 303, column: 10, scope: !2671)
!2681 = !DILocation(line: 303, column: 15, scope: !2671)
!2682 = !DILocation(line: 303, column: 27, scope: !2671)
!2683 = !DILocation(line: 303, column: 13, scope: !2671)
!2684 = !DILocalVariable(name: "b", scope: !2671, file: !704, line: 304, type: !375)
!2685 = !DILocation(line: 304, column: 6, scope: !2671)
!2686 = !DILocation(line: 304, column: 10, scope: !2671)
!2687 = !DILocation(line: 304, column: 15, scope: !2671)
!2688 = !DILocation(line: 304, column: 13, scope: !2671)
!2689 = !DILocation(line: 306, column: 6, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2671, file: !704, line: 306, column: 6)
!2691 = !DILocation(line: 306, column: 11, scope: !2690)
!2692 = !DILocation(line: 306, column: 23, scope: !2690)
!2693 = !DILocation(line: 306, column: 9, scope: !2690)
!2694 = !DILocation(line: 306, column: 6, scope: !2671)
!2695 = !DILocation(line: 307, column: 10, scope: !2690)
!2696 = !DILocation(line: 307, column: 12, scope: !2690)
!2697 = !DILocation(line: 307, column: 15, scope: !2698)
!2698 = !DILexicalBlockFile(scope: !2690, file: !704, discriminator: 1)
!2699 = !DILocation(line: 307, column: 12, scope: !2698)
!2700 = !DILocation(line: 307, column: 12, scope: !2701)
!2701 = !DILexicalBlockFile(scope: !2690, file: !704, discriminator: 2)
!2702 = !DILocation(line: 307, column: 3, scope: !2701)
!2703 = !DILocation(line: 309, column: 10, scope: !2690)
!2704 = !DILocation(line: 309, column: 12, scope: !2690)
!2705 = !DILocation(line: 309, column: 15, scope: !2698)
!2706 = !DILocation(line: 309, column: 12, scope: !2698)
!2707 = !DILocation(line: 309, column: 12, scope: !2701)
!2708 = !DILocation(line: 309, column: 3, scope: !2701)
!2709 = !DILocation(line: 310, column: 1, scope: !2671)
!2710 = distinct !DISubprogram(name: "active_window_move_to", scope: !704, file: !704, line: 721, type: !2711, isLocal: true, isDefinition: true, scopeLine: 722, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !707)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{null, !375}
!2713 = !DILocalVariable(name: "new_refnum", arg: 1, scope: !2710, file: !704, line: 721, type: !375)
!2714 = !DILocation(line: 721, column: 39, scope: !2710)
!2715 = !DILocalVariable(name: "refnum", scope: !2710, file: !704, line: 723, type: !375)
!2716 = !DILocation(line: 723, column: 6, scope: !2710)
!2717 = !DILocation(line: 725, column: 6, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2710, file: !704, line: 725, column: 6)
!2719 = !DILocation(line: 725, column: 19, scope: !2718)
!2720 = !DILocation(line: 725, column: 31, scope: !2718)
!2721 = !DILocation(line: 725, column: 17, scope: !2718)
!2722 = !DILocation(line: 725, column: 6, scope: !2710)
!2723 = !DILocation(line: 726, column: 3, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2718, file: !704, line: 725, column: 39)
!2725 = !DILocation(line: 727, column: 32, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2727, file: !704, line: 726, column: 12)
!2727 = distinct !DILexicalBlock(scope: !2728, file: !704, line: 726, column: 3)
!2728 = distinct !DILexicalBlock(scope: !2724, file: !704, line: 726, column: 3)
!2729 = !DILocation(line: 727, column: 44, scope: !2726)
!2730 = !DILocation(line: 727, column: 13, scope: !2726)
!2731 = !DILocation(line: 727, column: 11, scope: !2726)
!2732 = !DILocation(line: 728, column: 8, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2726, file: !704, line: 728, column: 8)
!2734 = !DILocation(line: 728, column: 15, scope: !2733)
!2735 = !DILocation(line: 728, column: 21, scope: !2733)
!2736 = !DILocation(line: 728, column: 24, scope: !2737)
!2737 = !DILexicalBlockFile(scope: !2733, file: !704, discriminator: 1)
!2738 = !DILocation(line: 728, column: 33, scope: !2737)
!2739 = !DILocation(line: 728, column: 31, scope: !2737)
!2740 = !DILocation(line: 728, column: 8, scope: !2737)
!2741 = !DILocation(line: 729, column: 5, scope: !2733)
!2742 = !DILocation(line: 731, column: 22, scope: !2726)
!2743 = !DILocation(line: 731, column: 34, scope: !2726)
!2744 = !DILocation(line: 731, column: 4, scope: !2726)
!2745 = !DILocation(line: 726, column: 3, scope: !2746)
!2746 = !DILexicalBlockFile(scope: !2727, file: !704, discriminator: 1)
!2747 = distinct !{!2747, !2723}
!2748 = !DILocation(line: 733, column: 2, scope: !2724)
!2749 = !DILocation(line: 734, column: 3, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2718, file: !704, line: 733, column: 9)
!2751 = !DILocation(line: 735, column: 32, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2753, file: !704, line: 734, column: 12)
!2753 = distinct !DILexicalBlock(scope: !2754, file: !704, line: 734, column: 3)
!2754 = distinct !DILexicalBlock(scope: !2750, file: !704, line: 734, column: 3)
!2755 = !DILocation(line: 735, column: 44, scope: !2752)
!2756 = !DILocation(line: 735, column: 13, scope: !2752)
!2757 = !DILocation(line: 735, column: 11, scope: !2752)
!2758 = !DILocation(line: 736, column: 8, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2752, file: !704, line: 736, column: 8)
!2760 = !DILocation(line: 736, column: 15, scope: !2759)
!2761 = !DILocation(line: 736, column: 21, scope: !2759)
!2762 = !DILocation(line: 736, column: 24, scope: !2763)
!2763 = !DILexicalBlockFile(scope: !2759, file: !704, discriminator: 1)
!2764 = !DILocation(line: 736, column: 33, scope: !2763)
!2765 = !DILocation(line: 736, column: 31, scope: !2763)
!2766 = !DILocation(line: 736, column: 8, scope: !2763)
!2767 = !DILocation(line: 737, column: 5, scope: !2759)
!2768 = !DILocation(line: 739, column: 22, scope: !2752)
!2769 = !DILocation(line: 739, column: 34, scope: !2752)
!2770 = !DILocation(line: 739, column: 4, scope: !2752)
!2771 = !DILocation(line: 734, column: 3, scope: !2772)
!2772 = !DILexicalBlockFile(scope: !2753, file: !704, discriminator: 1)
!2773 = distinct !{!2773, !2749}
!2774 = !DILocation(line: 742, column: 1, scope: !2710)
!2775 = distinct !DISubprogram(name: "window_refnums_move_left", scope: !704, file: !704, line: 644, type: !2195, isLocal: true, isDefinition: true, scopeLine: 645, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !707)
!2776 = !DILocalVariable(name: "move_window", arg: 1, scope: !2775, file: !704, line: 644, type: !852)
!2777 = !DILocation(line: 644, column: 50, scope: !2775)
!2778 = !DILocalVariable(name: "window", scope: !2775, file: !704, line: 646, type: !852)
!2779 = !DILocation(line: 646, column: 14, scope: !2775)
!2780 = !DILocalVariable(name: "refnum", scope: !2775, file: !704, line: 647, type: !375)
!2781 = !DILocation(line: 647, column: 6, scope: !2775)
!2782 = !DILocalVariable(name: "new_refnum", scope: !2775, file: !704, line: 647, type: !375)
!2783 = !DILocation(line: 647, column: 14, scope: !2775)
!2784 = !DILocation(line: 649, column: 22, scope: !2775)
!2785 = !DILocation(line: 649, column: 20, scope: !2775)
!2786 = !DILocation(line: 650, column: 16, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2775, file: !704, line: 650, column: 2)
!2788 = !DILocation(line: 650, column: 29, scope: !2787)
!2789 = !DILocation(line: 650, column: 35, scope: !2787)
!2790 = !DILocation(line: 650, column: 14, scope: !2787)
!2791 = !DILocation(line: 650, column: 7, scope: !2787)
!2792 = !DILocation(line: 650, column: 39, scope: !2793)
!2793 = !DILexicalBlockFile(scope: !2794, file: !704, discriminator: 1)
!2794 = distinct !DILexicalBlock(scope: !2787, file: !704, line: 650, column: 2)
!2795 = !DILocation(line: 650, column: 49, scope: !2793)
!2796 = !DILocation(line: 650, column: 46, scope: !2793)
!2797 = !DILocation(line: 650, column: 2, scope: !2793)
!2798 = !DILocation(line: 651, column: 31, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2794, file: !704, line: 650, column: 71)
!2800 = !DILocation(line: 651, column: 12, scope: !2799)
!2801 = !DILocation(line: 651, column: 10, scope: !2799)
!2802 = !DILocation(line: 652, column: 7, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2799, file: !704, line: 652, column: 7)
!2804 = !DILocation(line: 652, column: 14, scope: !2803)
!2805 = !DILocation(line: 652, column: 7, scope: !2799)
!2806 = !DILocation(line: 653, column: 35, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2803, file: !704, line: 652, column: 22)
!2808 = !DILocation(line: 654, column: 4, scope: !2807)
!2809 = !DILocation(line: 657, column: 21, scope: !2799)
!2810 = !DILocation(line: 657, column: 29, scope: !2799)
!2811 = !DILocation(line: 657, column: 35, scope: !2799)
!2812 = !DILocation(line: 657, column: 3, scope: !2799)
!2813 = !DILocation(line: 658, column: 2, scope: !2799)
!2814 = !DILocation(line: 650, column: 67, scope: !2815)
!2815 = !DILexicalBlockFile(scope: !2794, file: !704, discriminator: 2)
!2816 = !DILocation(line: 650, column: 2, scope: !2815)
!2817 = distinct !{!2817, !2818}
!2818 = !DILocation(line: 650, column: 2, scope: !2775)
!2819 = !DILocation(line: 660, column: 20, scope: !2775)
!2820 = !DILocation(line: 660, column: 33, scope: !2775)
!2821 = !DILocation(line: 660, column: 2, scope: !2775)
!2822 = !DILocation(line: 661, column: 1, scope: !2775)
!2823 = distinct !DISubprogram(name: "window_refnums_move_right", scope: !704, file: !704, line: 665, type: !2195, isLocal: true, isDefinition: true, scopeLine: 666, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !707)
!2824 = !DILocalVariable(name: "move_window", arg: 1, scope: !2823, file: !704, line: 665, type: !852)
!2825 = !DILocation(line: 665, column: 51, scope: !2823)
!2826 = !DILocalVariable(name: "window", scope: !2823, file: !704, line: 667, type: !852)
!2827 = !DILocation(line: 667, column: 14, scope: !2823)
!2828 = !DILocalVariable(name: "refnum", scope: !2823, file: !704, line: 668, type: !375)
!2829 = !DILocation(line: 668, column: 6, scope: !2823)
!2830 = !DILocalVariable(name: "new_refnum", scope: !2823, file: !704, line: 668, type: !375)
!2831 = !DILocation(line: 668, column: 14, scope: !2823)
!2832 = !DILocation(line: 670, column: 20, scope: !2823)
!2833 = !DILocation(line: 671, column: 25, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2823, file: !704, line: 671, column: 6)
!2835 = !DILocation(line: 671, column: 6, scope: !2834)
!2836 = !DILocation(line: 671, column: 37, scope: !2834)
!2837 = !DILocation(line: 671, column: 6, scope: !2823)
!2838 = !DILocation(line: 672, column: 21, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2834, file: !704, line: 671, column: 45)
!2840 = !DILocation(line: 672, column: 34, scope: !2839)
!2841 = !DILocation(line: 672, column: 3, scope: !2839)
!2842 = !DILocation(line: 673, column: 17, scope: !2839)
!2843 = !DILocation(line: 678, column: 11, scope: !2823)
!2844 = !DILocation(line: 678, column: 9, scope: !2823)
!2845 = !DILocation(line: 679, column: 2, scope: !2823)
!2846 = !DILocation(line: 679, column: 9, scope: !2847)
!2847 = !DILexicalBlockFile(scope: !2823, file: !704, discriminator: 1)
!2848 = !DILocation(line: 679, column: 22, scope: !2847)
!2849 = !DILocation(line: 679, column: 32, scope: !2847)
!2850 = !DILocation(line: 679, column: 29, scope: !2847)
!2851 = !DILocation(line: 679, column: 39, scope: !2847)
!2852 = !DILocation(line: 680, column: 28, scope: !2823)
!2853 = !DILocation(line: 680, column: 9, scope: !2823)
!2854 = !DILocation(line: 680, column: 36, scope: !2823)
!2855 = !DILocation(line: 679, column: 39, scope: !2856)
!2856 = !DILexicalBlockFile(scope: !2823, file: !704, discriminator: 2)
!2857 = !DILocation(line: 679, column: 2, scope: !2858)
!2858 = !DILexicalBlockFile(scope: !2823, file: !704, discriminator: 3)
!2859 = !DILocation(line: 680, column: 50, scope: !2847)
!2860 = !DILocation(line: 679, column: 2, scope: !2861)
!2861 = !DILexicalBlockFile(scope: !2823, file: !704, discriminator: 4)
!2862 = distinct !{!2862, !2845}
!2863 = !DILocation(line: 681, column: 8, scope: !2823)
!2864 = !DILocation(line: 683, column: 2, scope: !2823)
!2865 = !DILocation(line: 683, column: 9, scope: !2847)
!2866 = !DILocation(line: 683, column: 19, scope: !2847)
!2867 = !DILocation(line: 683, column: 16, scope: !2847)
!2868 = !DILocation(line: 683, column: 2, scope: !2847)
!2869 = !DILocation(line: 684, column: 31, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2823, file: !704, line: 683, column: 31)
!2871 = !DILocation(line: 684, column: 12, scope: !2870)
!2872 = !DILocation(line: 684, column: 10, scope: !2870)
!2873 = !DILocation(line: 685, column: 21, scope: !2870)
!2874 = !DILocation(line: 685, column: 29, scope: !2870)
!2875 = !DILocation(line: 685, column: 35, scope: !2870)
!2876 = !DILocation(line: 685, column: 3, scope: !2870)
!2877 = !DILocation(line: 687, column: 9, scope: !2870)
!2878 = !DILocation(line: 683, column: 2, scope: !2856)
!2879 = distinct !{!2879, !2864}
!2880 = !DILocation(line: 690, column: 20, scope: !2823)
!2881 = !DILocation(line: 690, column: 33, scope: !2823)
!2882 = !DILocation(line: 690, column: 2, scope: !2823)
!2883 = !DILocation(line: 691, column: 1, scope: !2823)
!2884 = !DILocation(line: 691, column: 1, scope: !2847)
