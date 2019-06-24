; ModuleID = './line232-fe-log.o.i'
source_filename = "./line232-fe-log.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GSList = type { i8*, %struct._GSList* }
%struct.THEME_REC = type { i32, i8*, i8*, i64, i32, i8, %struct._GHashTable*, [256 x i32], %struct._GSList*, %struct._GHashTable*, i8* }
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
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._CONFIG_REC = type { i8*, i32, i32, i8*, %struct._CONFIG_NODE*, %struct._GHashTable*, %struct._GHashTable*, %struct._GScanner*, %struct._GIOChannel*, i32, i32 }
%struct._CONFIG_NODE = type { i32, i8*, i8* }
%struct._GScanner = type { i8*, i32, i32, i8*, %struct._GData*, %struct._GScannerConfig*, i32, %union._GTokenValue, i32, i32, i32, %union._GTokenValue, i32, i32, %struct._GHashTable*, i32, i8*, i8*, i8*, i32, void (%struct._GScanner*, i8*, i32)* }
%struct._GData = type opaque
%struct._GScannerConfig = type { i8*, i8*, i8*, i8*, i24, i32 }
%union._GTokenValue = type { i8* }
%struct._LOG_ITEM_REC = type { i32, i8*, i8* }
%struct._LOG_REC = type { i8*, i8*, i32, i64, i32, %struct._GSList*, i64, i8* (i8*)*, i8 }
%struct._TEXT_DEST_REC = type { %struct._WINDOW_REC*, %struct._SERVER_REC*, i8*, i8*, i8*, i8*, i32, i32, i8*, i32 }
%struct._CHAT_PROTOCOL_REC = type { i32, i8, i8*, i8*, i8*, %struct._CHATNET_REC* ()*, %struct._SERVER_SETUP_REC* ()*, %struct._CHANNEL_SETUP_REC* ()*, %struct._SERVER_CONNECT_REC* ()*, void (%struct._SERVER_CONNECT_REC*)*, %struct._SERVER_REC* (%struct._SERVER_CONNECT_REC*)*, void (%struct._SERVER_REC*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*, i8*, i32)*, %struct._QUERY_REC* (i8*, i8*, i32)* }
%struct._CHATNET_REC = type opaque
%struct._SERVER_SETUP_REC = type opaque
%struct._CHANNEL_SETUP_REC = type opaque

@autoremove_tag = internal global i32 0, align 4
@skip_next_printtext = internal global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"fe-common/core\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"awaylog_colors\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"autolog\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"autolog_colors\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"autolog_path\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"~/irclogs/$tag/$0.log\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"autolog_level\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"all -crap -clientcrap -ctcps\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"log_theme\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"autolog_ignore_targets\00", align 1
@autolog_level = internal global i32 0, align 4
@log_theme_name = internal global i8* null, align 8
@.str.12 = private unnamed_addr constant [9 x i8] c"log open\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"log close\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"log start\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"log stop\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"window log\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"window logfile\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"print text\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"window item remove\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"window refnum changed\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"server disconnected\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"log locked\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"log create failed\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"log new\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"log config read\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"log config save\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"awaylog show\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"theme destroyed\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"setup changed\00", align 1
@.str.30 = private unnamed_addr constant [39 x i8] c"noopen autoopen -targets window colors\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"print format\00", align 1
@autolog_ignore_targets = internal global i8** null, align 8
@autolog_path = internal global i8* null, align 8
@logs = external global %struct._GSList*, align 8
@log_theme = internal global %struct.THEME_REC* null, align 8
@.str.32 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c" -autoopen\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c" active\00", align 1
@__func__.log_items_get_list = private unnamed_addr constant [19 x i8] c"log_items_get_list\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"log != NULL\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"log->items != NULL\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"%s, \00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c" (%s)\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"error command\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"window\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"targets\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@active_win = external global %struct._WINDOW_REC*, align 8
@.str.43 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"autoopen\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"colors\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"noopen\00", align 1
@__func__.log_add_targets = private unnamed_addr constant [16 x i8] c"log_add_targets\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"targets != NULL\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"TOGGLE\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"~/irc.log.%s%s\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"Window\00", align 1
@.str.53 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@log_dir_create_mode = external global i32, align 4
@.str.55 = private unnamed_addr constant [10 x i8] c"/\5C|*?\22<>:\00", align 1
@.str.56 = private unnamed_addr constant [13 x i8] c"awaylog_file\00", align 1
@mainconfig = external global %struct._CONFIG_REC*, align 8
@.str.57 = private unnamed_addr constant [8 x i8] c"\22%s\22 %d\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"command cat\00", align 1

; Function Attrs: nounwind uwtable
define void @fe_log_init() #0 !dbg !408 {
  %1 = call i32 @g_timeout_add(i32 60000, i32 (i8*)* bitcast (i32 ()* @sig_autoremove to i32 (i8*)*), i8* null), !dbg !412
  store i32 %1, i32* @autoremove_tag, align 4, !dbg !413
  store i32 0, i32* @skip_next_printtext, align 4, !dbg !414
  call void @settings_add_bool_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 1), !dbg !415
  call void @settings_add_bool_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 0), !dbg !416
  call void @settings_add_bool_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 0), !dbg !417
  call void @settings_add_str_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0)), !dbg !418
  call void @settings_add_level_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0)), !dbg !419
  call void @settings_add_str_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i32 0, i32 0)), !dbg !420
  call void @settings_add_str_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i32 0, i32 0)), !dbg !421
  store i32 0, i32* @autolog_level, align 4, !dbg !422
  store i8* null, i8** @log_theme_name, align 8, !dbg !423
  call void @read_settings(), !dbg !424
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, i8*)* @cmd_log to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !425
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_log_open to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !426
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_log_close to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !427
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_log_start to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !428
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_log_stop to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !429
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_window_log to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !430
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_window_logfile to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !431
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._TEXT_DEST_REC*, i8*, i8*)* @sig_printtext to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !432
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*, %struct._WI_ITEM_REC*)* @sig_window_item_remove to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !433
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*, i8*)* @sig_window_refnum_changed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !434
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*)* @sig_server_disconnected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !435
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._LOG_REC*)* @sig_log_locked to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !436
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._LOG_REC*)* @sig_log_create_failed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !437
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._LOG_REC*)* @sig_log_new to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !438
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._LOG_REC*, %struct._CONFIG_NODE*)* @sig_log_config_read to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !439
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._LOG_REC*, %struct._CONFIG_NODE*)* @sig_log_config_save to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !440
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._LOG_REC*, i8*, i8*)* @sig_awaylog_show to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !441
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.THEME_REC*)* @sig_theme_destroyed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !442
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !443
  call void @command_set_options_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i32 0, i32 0)), !dbg !444
  ret void, !dbg !445
}

declare i32 @g_timeout_add(i32, i32 (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @sig_autoremove() #0 !dbg !446 {
  %1 = alloca %struct._SERVER_REC*, align 8
  %2 = alloca %struct._LOG_ITEM_REC*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct._LOG_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %1, metadata !449, metadata !756), !dbg !757
  call void @llvm.dbg.declare(metadata %struct._LOG_ITEM_REC** %2, metadata !758, metadata !756), !dbg !766
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !767, metadata !756), !dbg !768
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !769, metadata !756), !dbg !770
  call void @llvm.dbg.declare(metadata i64* %5, metadata !771, metadata !756), !dbg !772
  %7 = call i64 @time(i64* null) #6, !dbg !773
  %8 = sub nsw i64 %7, 300, !dbg !774
  store i64 %8, i64* %5, align 8, !dbg !775
  %9 = load %struct._GSList*, %struct._GSList** @logs, align 8, !dbg !776
  store %struct._GSList* %9, %struct._GSList** %3, align 8, !dbg !778
  br label %10, !dbg !779

; <label>:10:                                     ; preds = %77, %0
  %11 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !780
  %12 = icmp ne %struct._GSList* %11, null, !dbg !783
  br i1 %12, label %13, label %79, !dbg !784

; <label>:13:                                     ; preds = %10
  call void @llvm.dbg.declare(metadata %struct._LOG_REC** %6, metadata !785, metadata !756), !dbg !806
  %14 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !807
  %15 = getelementptr inbounds %struct._GSList, %struct._GSList* %14, i32 0, i32 0, !dbg !808
  %16 = load i8*, i8** %15, align 8, !dbg !808
  %17 = bitcast i8* %16 to %struct._LOG_REC*, !dbg !807
  store %struct._LOG_REC* %17, %struct._LOG_REC** %6, align 8, !dbg !806
  %18 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !809
  %19 = getelementptr inbounds %struct._GSList, %struct._GSList* %18, i32 0, i32 1, !dbg !810
  %20 = load %struct._GSList*, %struct._GSList** %19, align 8, !dbg !810
  store %struct._GSList* %20, %struct._GSList** %4, align 8, !dbg !811
  %21 = load %struct._LOG_REC*, %struct._LOG_REC** %6, align 8, !dbg !812
  %22 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %21, i32 0, i32 8, !dbg !814
  %23 = load i8, i8* %22, align 8, !dbg !814
  %24 = lshr i8 %23, 2, !dbg !814
  %25 = and i8 %24, 1, !dbg !814
  %26 = zext i8 %25 to i32, !dbg !814
  %27 = icmp ne i32 %26, 0, !dbg !812
  br i1 %27, label %28, label %39, !dbg !815

; <label>:28:                                     ; preds = %13
  %29 = load %struct._LOG_REC*, %struct._LOG_REC** %6, align 8, !dbg !816
  %30 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %29, i32 0, i32 6, !dbg !818
  %31 = load i64, i64* %30, align 8, !dbg !818
  %32 = load i64, i64* %5, align 8, !dbg !819
  %33 = icmp sgt i64 %31, %32, !dbg !820
  br i1 %33, label %39, label %34, !dbg !821

; <label>:34:                                     ; preds = %28
  %35 = load %struct._LOG_REC*, %struct._LOG_REC** %6, align 8, !dbg !822
  %36 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %35, i32 0, i32 5, !dbg !824
  %37 = load %struct._GSList*, %struct._GSList** %36, align 8, !dbg !824
  %38 = icmp eq %struct._GSList* %37, null, !dbg !825
  br i1 %38, label %39, label %40, !dbg !826

; <label>:39:                                     ; preds = %34, %28, %13
  br label %77, !dbg !827

; <label>:40:                                     ; preds = %34
  %41 = load %struct._LOG_REC*, %struct._LOG_REC** %6, align 8, !dbg !828
  %42 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %41, i32 0, i32 5, !dbg !829
  %43 = load %struct._GSList*, %struct._GSList** %42, align 8, !dbg !829
  %44 = getelementptr inbounds %struct._GSList, %struct._GSList* %43, i32 0, i32 0, !dbg !830
  %45 = load i8*, i8** %44, align 8, !dbg !830
  %46 = bitcast i8* %45 to %struct._LOG_ITEM_REC*, !dbg !828
  store %struct._LOG_ITEM_REC* %46, %struct._LOG_ITEM_REC** %2, align 8, !dbg !831
  %47 = load %struct._LOG_ITEM_REC*, %struct._LOG_ITEM_REC** %2, align 8, !dbg !832
  %48 = getelementptr inbounds %struct._LOG_ITEM_REC, %struct._LOG_ITEM_REC* %47, i32 0, i32 2, !dbg !834
  %49 = load i8*, i8** %48, align 8, !dbg !834
  %50 = icmp eq i8* %49, null, !dbg !835
  br i1 %50, label %51, label %52, !dbg !836

; <label>:51:                                     ; preds = %40
  br label %77, !dbg !837

; <label>:52:                                     ; preds = %40
  %53 = load %struct._LOG_ITEM_REC*, %struct._LOG_ITEM_REC** %2, align 8, !dbg !838
  %54 = getelementptr inbounds %struct._LOG_ITEM_REC, %struct._LOG_ITEM_REC* %53, i32 0, i32 2, !dbg !839
  %55 = load i8*, i8** %54, align 8, !dbg !839
  %56 = call %struct._SERVER_REC* @server_find_tag(i8* %55), !dbg !840
  store %struct._SERVER_REC* %56, %struct._SERVER_REC** %1, align 8, !dbg !841
  %57 = load %struct._LOG_ITEM_REC*, %struct._LOG_ITEM_REC** %2, align 8, !dbg !842
  %58 = getelementptr inbounds %struct._LOG_ITEM_REC, %struct._LOG_ITEM_REC* %57, i32 0, i32 0, !dbg !844
  %59 = load i32, i32* %58, align 8, !dbg !844
  %60 = icmp eq i32 %59, 0, !dbg !845
  br i1 %60, label %61, label %76, !dbg !846

; <label>:61:                                     ; preds = %52
  %62 = load %struct._SERVER_REC*, %struct._SERVER_REC** %1, align 8, !dbg !847
  %63 = icmp ne %struct._SERVER_REC* %62, null, !dbg !848
  br i1 %63, label %64, label %76, !dbg !849

; <label>:64:                                     ; preds = %61
  %65 = load %struct._SERVER_REC*, %struct._SERVER_REC** %1, align 8, !dbg !850
  %66 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %65, i32 0, i32 27, !dbg !852
  %67 = load i32 (%struct._SERVER_REC*, i8*)*, i32 (%struct._SERVER_REC*, i8*)** %66, align 8, !dbg !852
  %68 = load %struct._SERVER_REC*, %struct._SERVER_REC** %1, align 8, !dbg !853
  %69 = load %struct._LOG_ITEM_REC*, %struct._LOG_ITEM_REC** %2, align 8, !dbg !854
  %70 = getelementptr inbounds %struct._LOG_ITEM_REC, %struct._LOG_ITEM_REC* %69, i32 0, i32 1, !dbg !855
  %71 = load i8*, i8** %70, align 8, !dbg !855
  %72 = call i32 %67(%struct._SERVER_REC* %68, i8* %71), !dbg !856
  %73 = icmp ne i32 %72, 0, !dbg !856
  br i1 %73, label %76, label %74, !dbg !857

; <label>:74:                                     ; preds = %64
  %75 = load %struct._LOG_REC*, %struct._LOG_REC** %6, align 8, !dbg !859
  call void @log_close(%struct._LOG_REC* %75), !dbg !860
  br label %76, !dbg !860

; <label>:76:                                     ; preds = %74, %64, %61, %52
  br label %77, !dbg !861

; <label>:77:                                     ; preds = %76, %51, %39
  %78 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !862
  store %struct._GSList* %78, %struct._GSList** %3, align 8, !dbg !864
  br label %10, !dbg !865, !llvm.loop !866

; <label>:79:                                     ; preds = %10
  ret i32 1, !dbg !868
}

declare void @settings_add_bool_module(i8*, i8*, i8*, i32) #1

declare void @settings_add_str_module(i8*, i8*, i8*, i8*) #1

declare void @settings_add_level_module(i8*, i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @read_settings() #0 !dbg !869 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !870, metadata !756), !dbg !871
  %2 = load i32, i32* @autolog_level, align 4, !dbg !872
  store i32 %2, i32* %1, align 4, !dbg !871
  %3 = load i8*, i8** @autolog_path, align 8, !dbg !873
  call void @g_free(i8* %3), !dbg !874
  %4 = call i8* @settings_get_str(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0)), !dbg !875
  %5 = call noalias i8* @g_strdup(i8* %4), !dbg !876
  store i8* %5, i8** @autolog_path, align 8, !dbg !878
  %6 = call i32 @settings_get_bool(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0)), !dbg !879
  %7 = icmp ne i32 %6, 0, !dbg !879
  br i1 %7, label %9, label %8, !dbg !880

; <label>:8:                                      ; preds = %0
  br label %11, !dbg !881

; <label>:9:                                      ; preds = %0
  %10 = call i32 @settings_get_level(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0)), !dbg !882
  br label %11, !dbg !883

; <label>:11:                                     ; preds = %9, %8
  %12 = phi i32 [ 0, %8 ], [ %10, %9 ], !dbg !885
  store i32 %12, i32* @autolog_level, align 4, !dbg !887
  %13 = load i32, i32* %1, align 4, !dbg !888
  %14 = icmp ne i32 %13, 0, !dbg !888
  br i1 %14, label %15, label %19, !dbg !890

; <label>:15:                                     ; preds = %11
  %16 = load i32, i32* @autolog_level, align 4, !dbg !891
  %17 = icmp ne i32 %16, 0, !dbg !891
  br i1 %17, label %19, label %18, !dbg !893

; <label>:18:                                     ; preds = %15
  call void @autologs_close_all(), !dbg !894
  br label %19, !dbg !894

; <label>:19:                                     ; preds = %18, %15, %11
  %20 = load i8*, i8** @log_theme_name, align 8, !dbg !895
  %21 = icmp ne i8* %20, null, !dbg !897
  br i1 %21, label %22, label %23, !dbg !898

; <label>:22:                                     ; preds = %19
  call void @signal_remove_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.THEME_REC*, i8*, %struct._TEXT_DEST_REC*, i8*, i8**)* @sig_print_format to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !899
  br label %23, !dbg !899

; <label>:23:                                     ; preds = %22, %19
  %24 = load i8*, i8** @log_theme_name, align 8, !dbg !900
  call void @g_free(i8* %24), !dbg !901
  %25 = call i8* @settings_get_str(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0)), !dbg !902
  %26 = call noalias i8* @g_strdup(i8* %25), !dbg !903
  store i8* %26, i8** @log_theme_name, align 8, !dbg !904
  %27 = load i8*, i8** @log_theme_name, align 8, !dbg !905
  %28 = load i8, i8* %27, align 1, !dbg !907
  %29 = sext i8 %28 to i32, !dbg !907
  %30 = icmp eq i32 %29, 0, !dbg !908
  br i1 %30, label %31, label %33, !dbg !909

; <label>:31:                                     ; preds = %23
  %32 = load i8*, i8** @log_theme_name, align 8, !dbg !910
  call void @g_free(i8* %32), !dbg !912
  store i8* null, i8** @log_theme_name, align 8, !dbg !913
  br label %34, !dbg !914

; <label>:33:                                     ; preds = %23
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.THEME_REC*, i8*, %struct._TEXT_DEST_REC*, i8*, i8**)* @sig_print_format to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !915
  br label %34

; <label>:34:                                     ; preds = %33, %31
  %35 = load i8*, i8** @log_theme_name, align 8, !dbg !916
  %36 = icmp eq i8* %35, null, !dbg !917
  br i1 %36, label %37, label %38, !dbg !916

; <label>:37:                                     ; preds = %34
  br label %41, !dbg !918

; <label>:38:                                     ; preds = %34
  %39 = load i8*, i8** @log_theme_name, align 8, !dbg !919
  %40 = call %struct.THEME_REC* @theme_load(i8* %39), !dbg !920
  br label %41, !dbg !921

; <label>:41:                                     ; preds = %38, %37
  %42 = phi %struct.THEME_REC* [ null, %37 ], [ %40, %38 ], !dbg !922
  store %struct.THEME_REC* %42, %struct.THEME_REC** @log_theme, align 8, !dbg !923
  %43 = load i8**, i8*** @autolog_ignore_targets, align 8, !dbg !924
  %44 = icmp ne i8** %43, null, !dbg !926
  br i1 %44, label %45, label %47, !dbg !927

; <label>:45:                                     ; preds = %41
  %46 = load i8**, i8*** @autolog_ignore_targets, align 8, !dbg !928
  call void @g_strfreev(i8** %46), !dbg !929
  br label %47, !dbg !929

; <label>:47:                                     ; preds = %45, %41
  %48 = call i8* @settings_get_str(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0)), !dbg !930
  %49 = call noalias i8** @g_strsplit(i8* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0), i32 -1), !dbg !931
  store i8** %49, i8*** @autolog_ignore_targets, align 8, !dbg !932
  ret void, !dbg !933
}

declare void @command_bind_full(i8*, i32, i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @cmd_log(i8*, %struct._SERVER_REC*, i8*) #0 !dbg !934 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !937, metadata !756), !dbg !938
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !939, metadata !756), !dbg !940
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !941, metadata !756), !dbg !942
  %7 = load i8*, i8** %4, align 8, !dbg !943
  %8 = load i8, i8* %7, align 1, !dbg !945
  %9 = sext i8 %8 to i32, !dbg !945
  %10 = icmp eq i32 %9, 0, !dbg !946
  br i1 %10, label %11, label %12, !dbg !947

; <label>:11:                                     ; preds = %3
  call void @cmd_log_list(), !dbg !948
  br label %17, !dbg !948

; <label>:12:                                     ; preds = %3
  %13 = load i8*, i8** %4, align 8, !dbg !949
  %14 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !950
  %15 = bitcast %struct._SERVER_REC* %14 to i8*, !dbg !950
  %16 = load i8*, i8** %6, align 8, !dbg !951
  call void @command_runsub(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* %13, i8* %15, i8* %16), !dbg !952
  br label %17

; <label>:17:                                     ; preds = %12, %11
  ret void, !dbg !953
}

; Function Attrs: nounwind uwtable
define internal void @cmd_log_open(i8*) #0 !dbg !954 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._SERVER_REC*, align 8
  %4 = alloca %struct._GHashTable*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [12 x i8], align 1
  %11 = alloca %struct._LOG_REC*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !957, metadata !756), !dbg !958
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %3, metadata !959, metadata !756), !dbg !960
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %4, metadata !961, metadata !756), !dbg !962
  call void @llvm.dbg.declare(metadata i8** %5, metadata !963, metadata !756), !dbg !964
  call void @llvm.dbg.declare(metadata i8** %6, metadata !965, metadata !756), !dbg !966
  call void @llvm.dbg.declare(metadata i8** %7, metadata !967, metadata !756), !dbg !968
  call void @llvm.dbg.declare(metadata i8** %8, metadata !969, metadata !756), !dbg !970
  call void @llvm.dbg.declare(metadata i8** %9, metadata !971, metadata !756), !dbg !972
  call void @llvm.dbg.declare(metadata [12 x i8]* %10, metadata !973, metadata !756), !dbg !977
  call void @llvm.dbg.declare(metadata %struct._LOG_REC** %11, metadata !978, metadata !756), !dbg !979
  call void @llvm.dbg.declare(metadata i32* %12, metadata !980, metadata !756), !dbg !981
  %13 = load i8*, i8** %2, align 8, !dbg !982
  %14 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %13, i8** %9, i32 319490, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), %struct._GHashTable** %4, i8** %6, i8** %7), !dbg !984
  %15 = icmp ne i32 %14, 0, !dbg !984
  br i1 %15, label %17, label %16, !dbg !985

; <label>:16:                                     ; preds = %1
  br label %135, !dbg !986

; <label>:17:                                     ; preds = %1
  %18 = load i8*, i8** %6, align 8, !dbg !987
  %19 = load i8, i8* %18, align 1, !dbg !989
  %20 = sext i8 %19 to i32, !dbg !989
  %21 = icmp eq i32 %20, 0, !dbg !990
  br i1 %21, label %22, label %29, !dbg !991

; <label>:22:                                     ; preds = %17
  br label %23, !dbg !992, !llvm.loop !994

; <label>:23:                                     ; preds = %22
  %24 = load i8*, i8** %9, align 8, !dbg !996
  call void @cmd_params_free(i8* %24), !dbg !999
  br label %25, !dbg !1000, !llvm.loop !1001

; <label>:25:                                     ; preds = %23
  %26 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !1003
  call void @signal_stop(), !dbg !1006
  br label %135, !dbg !1008
                                                  ; No predecessors!
  br label %28, !dbg !1009

; <label>:28:                                     ; preds = %27
  br label %29, !dbg !1011

; <label>:29:                                     ; preds = %28, %17
  %30 = load i8*, i8** %7, align 8, !dbg !1013
  %31 = call i32 @level2bits(i8* %30, i32* null), !dbg !1014
  store i32 %31, i32* %12, align 4, !dbg !1015
  %32 = load i8*, i8** %6, align 8, !dbg !1016
  %33 = load i32, i32* %12, align 4, !dbg !1017
  %34 = icmp ne i32 %33, 0, !dbg !1018
  br i1 %34, label %35, label %37, !dbg !1017

; <label>:35:                                     ; preds = %29
  %36 = load i32, i32* %12, align 4, !dbg !1019
  br label %38, !dbg !1021

; <label>:37:                                     ; preds = %29
  br label %38, !dbg !1022

; <label>:38:                                     ; preds = %37, %35
  %39 = phi i32 [ %36, %35 ], [ 4194303, %37 ], !dbg !1024
  %40 = call %struct._LOG_REC* @log_create_rec(i8* %32, i32 %39), !dbg !1026
  store %struct._LOG_REC* %40, %struct._LOG_REC** %11, align 8, !dbg !1027
  %41 = load %struct._GHashTable*, %struct._GHashTable** %4, align 8, !dbg !1028
  %42 = call %struct._SERVER_REC* @cmd_options_get_server(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), %struct._GHashTable* %41, %struct._SERVER_REC* null), !dbg !1029
  store %struct._SERVER_REC* %42, %struct._SERVER_REC** %3, align 8, !dbg !1030
  %43 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1031
  %44 = icmp eq %struct._SERVER_REC* %43, null, !dbg !1032
  br i1 %44, label %45, label %46, !dbg !1031

; <label>:45:                                     ; preds = %38
  br label %50, !dbg !1033

; <label>:46:                                     ; preds = %38
  %47 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1034
  %48 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %47, i32 0, i32 6, !dbg !1035
  %49 = load i8*, i8** %48, align 8, !dbg !1035
  br label %50, !dbg !1036

; <label>:50:                                     ; preds = %46, %45
  %51 = phi i8* [ null, %45 ], [ %49, %46 ], !dbg !1037
  store i8* %51, i8** %8, align 8, !dbg !1038
  %52 = load %struct._GHashTable*, %struct._GHashTable** %4, align 8, !dbg !1039
  %53 = call i8* @g_hash_table_lookup(%struct._GHashTable* %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0)), !dbg !1041
  %54 = icmp ne i8* %53, null, !dbg !1041
  br i1 %54, label %55, label %75, !dbg !1042

; <label>:55:                                     ; preds = %50
  %56 = load %struct._GHashTable*, %struct._GHashTable** %4, align 8, !dbg !1043
  %57 = call i8* @g_hash_table_lookup(%struct._GHashTable* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0)), !dbg !1045
  store i8* %57, i8** %5, align 8, !dbg !1046
  %58 = load i8*, i8** %5, align 8, !dbg !1047
  %59 = icmp eq i8* %58, null, !dbg !1049
  br i1 %59, label %64, label %60, !dbg !1050

; <label>:60:                                     ; preds = %55
  %61 = load i8*, i8** %5, align 8, !dbg !1051
  %62 = call i32 @is_numeric(i8* %61, i8 signext 0), !dbg !1053
  %63 = icmp ne i32 %62, 0, !dbg !1053
  br i1 %63, label %71, label %64, !dbg !1054

; <label>:64:                                     ; preds = %60, %55
  %65 = getelementptr inbounds [12 x i8], [12 x i8]* %10, i32 0, i32 0, !dbg !1055
  %66 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1057
  %67 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %66, i32 0, i32 0, !dbg !1058
  %68 = load i32, i32* %67, align 8, !dbg !1058
  %69 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %65, i64 12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0), i32 %68), !dbg !1059
  %70 = getelementptr inbounds [12 x i8], [12 x i8]* %10, i32 0, i32 0, !dbg !1060
  store i8* %70, i8** %5, align 8, !dbg !1061
  br label %71, !dbg !1062

; <label>:71:                                     ; preds = %64, %60
  %72 = load %struct._LOG_REC*, %struct._LOG_REC** %11, align 8, !dbg !1063
  %73 = load i8*, i8** %5, align 8, !dbg !1064
  %74 = load i8*, i8** %8, align 8, !dbg !1065
  call void @log_item_add(%struct._LOG_REC* %72, i32 1, i8* %73, i8* %74), !dbg !1066
  br label %97, !dbg !1067

; <label>:75:                                     ; preds = %50
  %76 = load %struct._GHashTable*, %struct._GHashTable** %4, align 8, !dbg !1068
  %77 = call i8* @g_hash_table_lookup(%struct._GHashTable* %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0)), !dbg !1070
  store i8* %77, i8** %5, align 8, !dbg !1071
  %78 = load i8*, i8** %5, align 8, !dbg !1072
  %79 = icmp ne i8* %78, null, !dbg !1074
  br i1 %79, label %80, label %89, !dbg !1075

; <label>:80:                                     ; preds = %75
  %81 = load i8*, i8** %5, align 8, !dbg !1076
  %82 = load i8, i8* %81, align 1, !dbg !1078
  %83 = sext i8 %82 to i32, !dbg !1078
  %84 = icmp ne i32 %83, 0, !dbg !1079
  br i1 %84, label %85, label %89, !dbg !1080

; <label>:85:                                     ; preds = %80
  %86 = load %struct._LOG_REC*, %struct._LOG_REC** %11, align 8, !dbg !1081
  %87 = load i8*, i8** %5, align 8, !dbg !1082
  %88 = load i8*, i8** %8, align 8, !dbg !1083
  call void @log_add_targets(%struct._LOG_REC* %86, i8* %87, i8* %88), !dbg !1084
  br label %96, !dbg !1084

; <label>:89:                                     ; preds = %80, %75
  %90 = load i8*, i8** %8, align 8, !dbg !1085
  %91 = icmp ne i8* %90, null, !dbg !1087
  br i1 %91, label %92, label %95, !dbg !1088

; <label>:92:                                     ; preds = %89
  %93 = load %struct._LOG_REC*, %struct._LOG_REC** %11, align 8, !dbg !1089
  %94 = load i8*, i8** %8, align 8, !dbg !1090
  call void @log_add_targets(%struct._LOG_REC* %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i32 0, i32 0), i8* %94), !dbg !1091
  br label %95, !dbg !1091

; <label>:95:                                     ; preds = %92, %89
  br label %96

; <label>:96:                                     ; preds = %95, %85
  br label %97

; <label>:97:                                     ; preds = %96, %71
  %98 = load %struct._GHashTable*, %struct._GHashTable** %4, align 8, !dbg !1092
  %99 = call i8* @g_hash_table_lookup(%struct._GHashTable* %98, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0)), !dbg !1094
  %100 = icmp ne i8* %99, null, !dbg !1094
  br i1 %100, label %101, label %107, !dbg !1095

; <label>:101:                                    ; preds = %97
  %102 = load %struct._LOG_REC*, %struct._LOG_REC** %11, align 8, !dbg !1096
  %103 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %102, i32 0, i32 8, !dbg !1097
  %104 = load i8, i8* %103, align 8, !dbg !1098
  %105 = and i8 %104, -2, !dbg !1098
  %106 = or i8 %105, 1, !dbg !1098
  store i8 %106, i8* %103, align 8, !dbg !1098
  br label %107, !dbg !1096

; <label>:107:                                    ; preds = %101, %97
  %108 = load %struct._GHashTable*, %struct._GHashTable** %4, align 8, !dbg !1099
  %109 = call i8* @g_hash_table_lookup(%struct._GHashTable* %108, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0)), !dbg !1101
  %110 = icmp eq i8* %109, null, !dbg !1102
  br i1 %110, label %111, label %114, !dbg !1103

; <label>:111:                                    ; preds = %107
  %112 = load %struct._LOG_REC*, %struct._LOG_REC** %11, align 8, !dbg !1104
  %113 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %112, i32 0, i32 7, !dbg !1105
  store i8* (i8*)* @log_colorizer_strip, i8* (i8*)** %113, align 8, !dbg !1106
  br label %114, !dbg !1104

; <label>:114:                                    ; preds = %111, %107
  %115 = load %struct._LOG_REC*, %struct._LOG_REC** %11, align 8, !dbg !1107
  call void @log_update(%struct._LOG_REC* %115), !dbg !1108
  %116 = load %struct._LOG_REC*, %struct._LOG_REC** %11, align 8, !dbg !1109
  %117 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %116, i32 0, i32 2, !dbg !1111
  %118 = load i32, i32* %117, align 8, !dbg !1111
  %119 = icmp eq i32 %118, -1, !dbg !1112
  br i1 %119, label %120, label %133, !dbg !1113

; <label>:120:                                    ; preds = %114
  %121 = load %struct._GHashTable*, %struct._GHashTable** %4, align 8, !dbg !1114
  %122 = call i8* @g_hash_table_lookup(%struct._GHashTable* %121, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0)), !dbg !1116
  %123 = icmp eq i8* %122, null, !dbg !1117
  br i1 %123, label %124, label %133, !dbg !1118

; <label>:124:                                    ; preds = %120
  %125 = load %struct._LOG_REC*, %struct._LOG_REC** %11, align 8, !dbg !1119
  %126 = call i32 @log_start_logging(%struct._LOG_REC* %125), !dbg !1122
  %127 = icmp ne i32 %126, 0, !dbg !1122
  br i1 %127, label %128, label %130, !dbg !1123

; <label>:128:                                    ; preds = %124
  %129 = load i8*, i8** %6, align 8, !dbg !1124
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 126, i8* %129), !dbg !1126
  br label %132, !dbg !1127

; <label>:130:                                    ; preds = %124
  %131 = load %struct._LOG_REC*, %struct._LOG_REC** %11, align 8, !dbg !1128
  call void @log_close(%struct._LOG_REC* %131), !dbg !1130
  br label %132

; <label>:132:                                    ; preds = %130, %128
  br label %133, !dbg !1131

; <label>:133:                                    ; preds = %132, %120, %114
  %134 = load i8*, i8** %9, align 8, !dbg !1132
  call void @cmd_params_free(i8* %134), !dbg !1133
  br label %135, !dbg !1134

; <label>:135:                                    ; preds = %133, %25, %16
  ret void, !dbg !1135
}

; Function Attrs: nounwind uwtable
define internal void @cmd_log_close(i8*) #0 !dbg !1136 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._LOG_REC*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1137, metadata !756), !dbg !1138
  call void @llvm.dbg.declare(metadata %struct._LOG_REC** %3, metadata !1139, metadata !756), !dbg !1140
  %4 = load i8*, i8** %2, align 8, !dbg !1141
  %5 = call %struct._LOG_REC* @log_find_from_data(i8* %4), !dbg !1142
  store %struct._LOG_REC* %5, %struct._LOG_REC** %3, align 8, !dbg !1143
  %6 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !1144
  %7 = icmp eq %struct._LOG_REC* %6, null, !dbg !1146
  br i1 %7, label %8, label %10, !dbg !1147

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** %2, align 8, !dbg !1148
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 1048576, i32 130, i8* %9), !dbg !1149
  br label %13, !dbg !1149

; <label>:10:                                     ; preds = %1
  %11 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !1150
  call void @log_close(%struct._LOG_REC* %11), !dbg !1152
  %12 = load i8*, i8** %2, align 8, !dbg !1153
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 127, i8* %12), !dbg !1154
  br label %13

; <label>:13:                                     ; preds = %10, %8
  ret void, !dbg !1155
}

; Function Attrs: nounwind uwtable
define internal void @cmd_log_start(i8*) #0 !dbg !1156 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._LOG_REC*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1157, metadata !756), !dbg !1158
  call void @llvm.dbg.declare(metadata %struct._LOG_REC** %3, metadata !1159, metadata !756), !dbg !1160
  %4 = load i8*, i8** %2, align 8, !dbg !1161
  %5 = call %struct._LOG_REC* @log_find_from_data(i8* %4), !dbg !1162
  store %struct._LOG_REC* %5, %struct._LOG_REC** %3, align 8, !dbg !1163
  %6 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !1164
  %7 = icmp ne %struct._LOG_REC* %6, null, !dbg !1166
  br i1 %7, label %8, label %12, !dbg !1167

; <label>:8:                                      ; preds = %1
  %9 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !1168
  %10 = call i32 @log_start_logging(%struct._LOG_REC* %9), !dbg !1170
  %11 = load i8*, i8** %2, align 8, !dbg !1171
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 126, i8* %11), !dbg !1172
  br label %12, !dbg !1173

; <label>:12:                                     ; preds = %8, %1
  ret void, !dbg !1174
}

; Function Attrs: nounwind uwtable
define internal void @cmd_log_stop(i8*) #0 !dbg !1175 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._LOG_REC*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1176, metadata !756), !dbg !1177
  call void @llvm.dbg.declare(metadata %struct._LOG_REC** %3, metadata !1178, metadata !756), !dbg !1179
  %4 = load i8*, i8** %2, align 8, !dbg !1180
  %5 = call %struct._LOG_REC* @log_find_from_data(i8* %4), !dbg !1181
  store %struct._LOG_REC* %5, %struct._LOG_REC** %3, align 8, !dbg !1182
  %6 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !1183
  %7 = icmp eq %struct._LOG_REC* %6, null, !dbg !1185
  br i1 %7, label %13, label %8, !dbg !1186

; <label>:8:                                      ; preds = %1
  %9 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !1187
  %10 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %9, i32 0, i32 2, !dbg !1189
  %11 = load i32, i32* %10, align 8, !dbg !1189
  %12 = icmp eq i32 %11, -1, !dbg !1190
  br i1 %12, label %13, label %15, !dbg !1191

; <label>:13:                                     ; preds = %8, %1
  %14 = load i8*, i8** %2, align 8, !dbg !1192
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 1048576, i32 130, i8* %14), !dbg !1193
  br label %18, !dbg !1193

; <label>:15:                                     ; preds = %8
  %16 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !1194
  call void @log_stop_logging(%struct._LOG_REC* %16), !dbg !1196
  %17 = load i8*, i8** %2, align 8, !dbg !1197
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 127, i8* %17), !dbg !1198
  br label %18

; <label>:18:                                     ; preds = %15, %13
  ret void, !dbg !1199
}

; Function Attrs: nounwind uwtable
define internal void @cmd_window_log(i8*) #0 !dbg !1200 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._LOG_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [12 x i8], align 1
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1201, metadata !756), !dbg !1202
  call void @llvm.dbg.declare(metadata %struct._LOG_REC** %3, metadata !1203, metadata !756), !dbg !1204
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1205, metadata !756), !dbg !1206
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1207, metadata !756), !dbg !1208
  call void @llvm.dbg.declare(metadata [12 x i8]* %6, metadata !1209, metadata !756), !dbg !1210
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1211, metadata !756), !dbg !1212
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1213, metadata !756), !dbg !1214
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1215, metadata !756), !dbg !1216
  %10 = load i8*, i8** %2, align 8, !dbg !1217
  %11 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %10, i8** %7, i32 2, i8** %4, i8** %5), !dbg !1219
  %12 = icmp ne i32 %11, 0, !dbg !1219
  br i1 %12, label %14, label %13, !dbg !1220

; <label>:13:                                     ; preds = %1
  br label %123, !dbg !1221

; <label>:14:                                     ; preds = %1
  %15 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i32 0, i32 0, !dbg !1222
  %16 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1223
  %17 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %16, i32 0, i32 0, !dbg !1224
  %18 = load i32, i32* %17, align 8, !dbg !1224
  %19 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %15, i64 12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0), i32 %18), !dbg !1225
  %20 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i32 0, i32 0, !dbg !1226
  %21 = call %struct._LOG_REC* @logs_find_item(i32 1, i8* %20, i8* null, %struct._LOG_ITEM_REC** null), !dbg !1227
  store %struct._LOG_REC* %21, %struct._LOG_REC** %3, align 8, !dbg !1228
  store i32 0, i32* %9, align 4, !dbg !1229
  store i32 0, i32* %8, align 4, !dbg !1230
  %22 = load i8*, i8** %4, align 8, !dbg !1231
  %23 = call i32 @g_ascii_strcasecmp(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i32 0, i32 0)), !dbg !1233
  %24 = icmp eq i32 %23, 0, !dbg !1234
  br i1 %24, label %25, label %26, !dbg !1235

; <label>:25:                                     ; preds = %14
  store i32 1, i32* %8, align 4, !dbg !1236
  br label %46, !dbg !1237

; <label>:26:                                     ; preds = %14
  %27 = load i8*, i8** %4, align 8, !dbg !1238
  %28 = call i32 @g_ascii_strcasecmp(i8* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i32 0, i32 0)), !dbg !1240
  %29 = icmp eq i32 %28, 0, !dbg !1241
  br i1 %29, label %30, label %31, !dbg !1242

; <label>:30:                                     ; preds = %26
  store i32 1, i32* %9, align 4, !dbg !1243
  br label %45, !dbg !1245

; <label>:31:                                     ; preds = %26
  %32 = load i8*, i8** %4, align 8, !dbg !1246
  %33 = call i32 @g_ascii_strcasecmp(i8* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0)), !dbg !1249
  %34 = icmp eq i32 %33, 0, !dbg !1250
  br i1 %34, label %35, label %42, !dbg !1249

; <label>:35:                                     ; preds = %31
  %36 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !1251
  %37 = icmp eq %struct._LOG_REC* %36, null, !dbg !1253
  %38 = zext i1 %37 to i32, !dbg !1253
  store i32 %38, i32* %8, align 4, !dbg !1254
  %39 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !1255
  %40 = icmp ne %struct._LOG_REC* %39, null, !dbg !1256
  %41 = zext i1 %40 to i32, !dbg !1256
  store i32 %41, i32* %9, align 4, !dbg !1257
  br label %44, !dbg !1258

; <label>:42:                                     ; preds = %31
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 1048576, i32 205), !dbg !1259
  %43 = load i8*, i8** %7, align 8, !dbg !1261
  call void @cmd_params_free(i8* %43), !dbg !1262
  br label %123, !dbg !1263

; <label>:44:                                     ; preds = %35
  br label %45

; <label>:45:                                     ; preds = %44, %30
  br label %46

; <label>:46:                                     ; preds = %45, %25
  %47 = load i32, i32* %8, align 4, !dbg !1264
  %48 = icmp ne i32 %47, 0, !dbg !1264
  br i1 %48, label %49, label %92, !dbg !1266

; <label>:49:                                     ; preds = %46
  %50 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !1267
  %51 = icmp eq %struct._LOG_REC* %50, null, !dbg !1269
  br i1 %51, label %52, label %92, !dbg !1270

; <label>:52:                                     ; preds = %49
  %53 = load i8*, i8** %5, align 8, !dbg !1271
  %54 = load i8, i8* %53, align 1, !dbg !1273
  %55 = sext i8 %54 to i32, !dbg !1273
  %56 = icmp ne i32 %55, 0, !dbg !1274
  br i1 %56, label %57, label %60, !dbg !1273

; <label>:57:                                     ; preds = %52
  %58 = load i8*, i8** %5, align 8, !dbg !1275
  %59 = call noalias i8* @g_strdup(i8* %58), !dbg !1277
  br label %82, !dbg !1278

; <label>:60:                                     ; preds = %52
  %61 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1279
  %62 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %61, i32 0, i32 1, !dbg !1280
  %63 = load i8*, i8** %62, align 8, !dbg !1280
  %64 = icmp ne i8* %63, null, !dbg !1281
  br i1 %64, label %65, label %69, !dbg !1279

; <label>:65:                                     ; preds = %60
  %66 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1282
  %67 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %66, i32 0, i32 1, !dbg !1283
  %68 = load i8*, i8** %67, align 8, !dbg !1283
  br label %70, !dbg !1284

; <label>:69:                                     ; preds = %60
  br label %70, !dbg !1285

; <label>:70:                                     ; preds = %69, %65
  %71 = phi i8* [ %68, %65 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), %69 ], !dbg !1287
  %72 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1289
  %73 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %72, i32 0, i32 1, !dbg !1290
  %74 = load i8*, i8** %73, align 8, !dbg !1290
  %75 = icmp ne i8* %74, null, !dbg !1291
  br i1 %75, label %76, label %77, !dbg !1289

; <label>:76:                                     ; preds = %70
  br label %79, !dbg !1292

; <label>:77:                                     ; preds = %70
  %78 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i32 0, i32 0, !dbg !1293
  br label %79, !dbg !1294

; <label>:79:                                     ; preds = %77, %76
  %80 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i32 0, i32 0), %76 ], [ %78, %77 ], !dbg !1295
  %81 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i32 0, i32 0), i8* %71, i8* %80), !dbg !1296
  br label %82, !dbg !1297

; <label>:82:                                     ; preds = %79, %57
  %83 = phi i8* [ %59, %57 ], [ %81, %79 ], !dbg !1298
  store i8* %83, i8** %5, align 8, !dbg !1299
  %84 = load i8*, i8** %5, align 8, !dbg !1300
  %85 = call %struct._LOG_REC* @log_create_rec(i8* %84, i32 4194303), !dbg !1301
  store %struct._LOG_REC* %85, %struct._LOG_REC** %3, align 8, !dbg !1302
  %86 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !1303
  %87 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %86, i32 0, i32 7, !dbg !1304
  store i8* (i8*)* @log_colorizer_strip, i8* (i8*)** %87, align 8, !dbg !1305
  %88 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !1306
  %89 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i32 0, i32 0, !dbg !1307
  call void @log_item_add(%struct._LOG_REC* %88, i32 1, i8* %89, i8* null), !dbg !1308
  %90 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !1309
  call void @log_update(%struct._LOG_REC* %90), !dbg !1310
  %91 = load i8*, i8** %5, align 8, !dbg !1311
  call void @g_free(i8* %91), !dbg !1312
  br label %92, !dbg !1313

; <label>:92:                                     ; preds = %82, %49, %46
  %93 = load i32, i32* %8, align 4, !dbg !1314
  %94 = icmp ne i32 %93, 0, !dbg !1314
  br i1 %94, label %95, label %104, !dbg !1316

; <label>:95:                                     ; preds = %92
  %96 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !1317
  %97 = icmp ne %struct._LOG_REC* %96, null, !dbg !1319
  br i1 %97, label %98, label %104, !dbg !1320

; <label>:98:                                     ; preds = %95
  %99 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !1321
  %100 = call i32 @log_start_logging(%struct._LOG_REC* %99), !dbg !1323
  %101 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !1324
  %102 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %101, i32 0, i32 0, !dbg !1325
  %103 = load i8*, i8** %102, align 8, !dbg !1325
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 126, i8* %103), !dbg !1326
  br label %121, !dbg !1327

; <label>:104:                                    ; preds = %95, %92
  %105 = load i32, i32* %9, align 4, !dbg !1328
  %106 = icmp ne i32 %105, 0, !dbg !1328
  br i1 %106, label %107, label %120, !dbg !1331

; <label>:107:                                    ; preds = %104
  %108 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !1332
  %109 = icmp ne %struct._LOG_REC* %108, null, !dbg !1334
  br i1 %109, label %110, label %120, !dbg !1335

; <label>:110:                                    ; preds = %107
  %111 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !1336
  %112 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %111, i32 0, i32 2, !dbg !1338
  %113 = load i32, i32* %112, align 8, !dbg !1338
  %114 = icmp ne i32 %113, -1, !dbg !1339
  br i1 %114, label %115, label %120, !dbg !1340

; <label>:115:                                    ; preds = %110
  %116 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !1341
  call void @log_stop_logging(%struct._LOG_REC* %116), !dbg !1343
  %117 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !1344
  %118 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %117, i32 0, i32 0, !dbg !1345
  %119 = load i8*, i8** %118, align 8, !dbg !1345
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 127, i8* %119), !dbg !1346
  br label %120, !dbg !1347

; <label>:120:                                    ; preds = %115, %110, %107, %104
  br label %121

; <label>:121:                                    ; preds = %120, %98
  %122 = load i8*, i8** %7, align 8, !dbg !1348
  call void @cmd_params_free(i8* %122), !dbg !1349
  br label %123, !dbg !1350

; <label>:123:                                    ; preds = %121, %42, %13
  ret void, !dbg !1351
}

; Function Attrs: nounwind uwtable
define internal void @cmd_window_logfile(i8*) #0 !dbg !1353 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._LOG_REC*, align 8
  %4 = alloca [12 x i8], align 1
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1354, metadata !756), !dbg !1355
  call void @llvm.dbg.declare(metadata %struct._LOG_REC** %3, metadata !1356, metadata !756), !dbg !1357
  call void @llvm.dbg.declare(metadata [12 x i8]* %4, metadata !1358, metadata !756), !dbg !1359
  %5 = getelementptr inbounds [12 x i8], [12 x i8]* %4, i32 0, i32 0, !dbg !1360
  %6 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1361
  %7 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %6, i32 0, i32 0, !dbg !1362
  %8 = load i32, i32* %7, align 8, !dbg !1362
  %9 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %5, i64 12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0), i32 %8), !dbg !1363
  %10 = getelementptr inbounds [12 x i8], [12 x i8]* %4, i32 0, i32 0, !dbg !1364
  %11 = call %struct._LOG_REC* @logs_find_item(i32 1, i8* %10, i8* null, %struct._LOG_ITEM_REC** null), !dbg !1365
  store %struct._LOG_REC* %11, %struct._LOG_REC** %3, align 8, !dbg !1366
  %12 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !1367
  %13 = icmp ne %struct._LOG_REC* %12, null, !dbg !1369
  br i1 %13, label %14, label %15, !dbg !1370

; <label>:14:                                     ; preds = %1
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 137), !dbg !1371
  br label %24, !dbg !1373

; <label>:15:                                     ; preds = %1
  %16 = load i8*, i8** %2, align 8, !dbg !1374
  %17 = call %struct._LOG_REC* @log_create_rec(i8* %16, i32 4194303), !dbg !1375
  store %struct._LOG_REC* %17, %struct._LOG_REC** %3, align 8, !dbg !1376
  %18 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !1377
  %19 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %18, i32 0, i32 7, !dbg !1378
  store i8* (i8*)* @log_colorizer_strip, i8* (i8*)** %19, align 8, !dbg !1379
  %20 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !1380
  %21 = getelementptr inbounds [12 x i8], [12 x i8]* %4, i32 0, i32 0, !dbg !1381
  call void @log_item_add(%struct._LOG_REC* %20, i32 1, i8* %21, i8* null), !dbg !1382
  %22 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !1383
  call void @log_update(%struct._LOG_REC* %22), !dbg !1384
  %23 = load i8*, i8** %2, align 8, !dbg !1385
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 136, i8* %23), !dbg !1386
  br label %24, !dbg !1387

; <label>:24:                                     ; preds = %15, %14
  ret void, !dbg !1388
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @sig_printtext(%struct._TEXT_DEST_REC*, i8*, i8*) #0 !dbg !1390 {
  %4 = alloca %struct._TEXT_DEST_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct._TEXT_DEST_REC* %0, %struct._TEXT_DEST_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC** %4, metadata !1478, metadata !756), !dbg !1479
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1480, metadata !756), !dbg !1481
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1482, metadata !756), !dbg !1483
  %7 = load i32, i32* @skip_next_printtext, align 4, !dbg !1484
  %8 = icmp ne i32 %7, 0, !dbg !1484
  br i1 %8, label %9, label %10, !dbg !1486

; <label>:9:                                      ; preds = %3
  store i32 0, i32* @skip_next_printtext, align 4, !dbg !1487
  br label %13, !dbg !1489

; <label>:10:                                     ; preds = %3
  %11 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %4, align 8, !dbg !1490
  %12 = load i8*, i8** %5, align 8, !dbg !1491
  call void @log_line(%struct._TEXT_DEST_REC* %11, i8* %12), !dbg !1492
  br label %13, !dbg !1493

; <label>:13:                                     ; preds = %10, %9
  ret void, !dbg !1494
}

; Function Attrs: nounwind uwtable
define internal void @sig_window_item_remove(%struct._WINDOW_REC*, %struct._WI_ITEM_REC*) #0 !dbg !1496 {
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca %struct._WI_ITEM_REC*, align 8
  %5 = alloca %struct._LOG_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !1499, metadata !756), !dbg !1500
  store %struct._WI_ITEM_REC* %1, %struct._WI_ITEM_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %4, metadata !1501, metadata !756), !dbg !1502
  call void @llvm.dbg.declare(metadata %struct._LOG_REC** %5, metadata !1503, metadata !756), !dbg !1504
  %6 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %4, align 8, !dbg !1505
  %7 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %6, i32 0, i32 5, !dbg !1506
  %8 = load i8*, i8** %7, align 8, !dbg !1506
  %9 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %4, align 8, !dbg !1507
  %10 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %9, i32 0, i32 4, !dbg !1508
  %11 = load %struct._SERVER_REC*, %struct._SERVER_REC** %10, align 8, !dbg !1508
  %12 = icmp eq %struct._SERVER_REC* %11, null, !dbg !1509
  br i1 %12, label %13, label %14, !dbg !1507

; <label>:13:                                     ; preds = %2
  br label %20, !dbg !1510

; <label>:14:                                     ; preds = %2
  %15 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %4, align 8, !dbg !1512
  %16 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %15, i32 0, i32 4, !dbg !1513
  %17 = load %struct._SERVER_REC*, %struct._SERVER_REC** %16, align 8, !dbg !1513
  %18 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %17, i32 0, i32 6, !dbg !1514
  %19 = load i8*, i8** %18, align 8, !dbg !1514
  br label %20, !dbg !1515

; <label>:20:                                     ; preds = %14, %13
  %21 = phi i8* [ null, %13 ], [ %19, %14 ], !dbg !1517
  %22 = call %struct._LOG_REC* @logs_find_item(i32 0, i8* %8, i8* %21, %struct._LOG_ITEM_REC** null), !dbg !1519
  store %struct._LOG_REC* %22, %struct._LOG_REC** %5, align 8, !dbg !1520
  %23 = load %struct._LOG_REC*, %struct._LOG_REC** %5, align 8, !dbg !1521
  %24 = icmp ne %struct._LOG_REC* %23, null, !dbg !1523
  br i1 %24, label %25, label %35, !dbg !1524

; <label>:25:                                     ; preds = %20
  %26 = load %struct._LOG_REC*, %struct._LOG_REC** %5, align 8, !dbg !1525
  %27 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %26, i32 0, i32 8, !dbg !1527
  %28 = load i8, i8* %27, align 8, !dbg !1527
  %29 = lshr i8 %28, 2, !dbg !1527
  %30 = and i8 %29, 1, !dbg !1527
  %31 = zext i8 %30 to i32, !dbg !1527
  %32 = icmp ne i32 %31, 0, !dbg !1525
  br i1 %32, label %33, label %35, !dbg !1528

; <label>:33:                                     ; preds = %25
  %34 = load %struct._LOG_REC*, %struct._LOG_REC** %5, align 8, !dbg !1529
  call void @log_close(%struct._LOG_REC* %34), !dbg !1530
  br label %35, !dbg !1530

; <label>:35:                                     ; preds = %33, %25, %20
  ret void, !dbg !1531
}

; Function Attrs: nounwind uwtable
define internal void @sig_window_refnum_changed(%struct._WINDOW_REC*, i8*) #0 !dbg !1532 {
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [12 x i8], align 1
  %6 = alloca %struct._LOG_REC*, align 8
  %7 = alloca %struct._LOG_ITEM_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !1535, metadata !756), !dbg !1536
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1537, metadata !756), !dbg !1538
  call void @llvm.dbg.declare(metadata [12 x i8]* %5, metadata !1539, metadata !756), !dbg !1540
  call void @llvm.dbg.declare(metadata %struct._LOG_REC** %6, metadata !1541, metadata !756), !dbg !1542
  call void @llvm.dbg.declare(metadata %struct._LOG_ITEM_REC** %7, metadata !1543, metadata !756), !dbg !1544
  %8 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i32 0, i32 0, !dbg !1545
  %9 = load i8*, i8** %4, align 8, !dbg !1546
  %10 = ptrtoint i8* %9 to i64, !dbg !1547
  %11 = trunc i64 %10 to i32, !dbg !1548
  %12 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %8, i64 12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0), i32 %11), !dbg !1549
  %13 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i32 0, i32 0, !dbg !1550
  %14 = call %struct._LOG_REC* @logs_find_item(i32 1, i8* %13, i8* null, %struct._LOG_ITEM_REC** %7), !dbg !1551
  store %struct._LOG_REC* %14, %struct._LOG_REC** %6, align 8, !dbg !1552
  %15 = load %struct._LOG_REC*, %struct._LOG_REC** %6, align 8, !dbg !1553
  %16 = icmp ne %struct._LOG_REC* %15, null, !dbg !1555
  br i1 %16, label %17, label %30, !dbg !1556

; <label>:17:                                     ; preds = %2
  %18 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i32 0, i32 0, !dbg !1557
  %19 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1559
  %20 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %19, i32 0, i32 0, !dbg !1560
  %21 = load i32, i32* %20, align 8, !dbg !1560
  %22 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %18, i64 12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0), i32 %21), !dbg !1561
  %23 = load %struct._LOG_ITEM_REC*, %struct._LOG_ITEM_REC** %7, align 8, !dbg !1562
  %24 = getelementptr inbounds %struct._LOG_ITEM_REC, %struct._LOG_ITEM_REC* %23, i32 0, i32 1, !dbg !1563
  %25 = load i8*, i8** %24, align 8, !dbg !1563
  call void @g_free(i8* %25), !dbg !1564
  %26 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i32 0, i32 0, !dbg !1565
  %27 = call noalias i8* @g_strdup(i8* %26), !dbg !1566
  %28 = load %struct._LOG_ITEM_REC*, %struct._LOG_ITEM_REC** %7, align 8, !dbg !1567
  %29 = getelementptr inbounds %struct._LOG_ITEM_REC, %struct._LOG_ITEM_REC* %28, i32 0, i32 1, !dbg !1568
  store i8* %27, i8** %29, align 8, !dbg !1569
  br label %30, !dbg !1570

; <label>:30:                                     ; preds = %17, %2
  ret void, !dbg !1571
}

; Function Attrs: nounwind uwtable
define internal void @sig_server_disconnected(%struct._SERVER_REC*) #0 !dbg !1572 {
  %2 = alloca %struct._SERVER_REC*, align 8
  %3 = alloca %struct._LOG_ITEM_REC*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca %struct._LOG_REC*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %2, metadata !1575, metadata !756), !dbg !1576
  call void @llvm.dbg.declare(metadata %struct._LOG_ITEM_REC** %3, metadata !1577, metadata !756), !dbg !1578
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !1579, metadata !756), !dbg !1580
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !1581, metadata !756), !dbg !1582
  %7 = load %struct._GSList*, %struct._GSList** @logs, align 8, !dbg !1583
  store %struct._GSList* %7, %struct._GSList** %4, align 8, !dbg !1585
  br label %8, !dbg !1586

; <label>:8:                                      ; preds = %70, %1
  %9 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1587
  %10 = icmp ne %struct._GSList* %9, null, !dbg !1590
  br i1 %10, label %11, label %72, !dbg !1591

; <label>:11:                                     ; preds = %8
  call void @llvm.dbg.declare(metadata %struct._LOG_REC** %6, metadata !1592, metadata !756), !dbg !1594
  %12 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1595
  %13 = getelementptr inbounds %struct._GSList, %struct._GSList* %12, i32 0, i32 0, !dbg !1596
  %14 = load i8*, i8** %13, align 8, !dbg !1596
  %15 = bitcast i8* %14 to %struct._LOG_REC*, !dbg !1595
  store %struct._LOG_REC* %15, %struct._LOG_REC** %6, align 8, !dbg !1594
  %16 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1597
  %17 = getelementptr inbounds %struct._GSList, %struct._GSList* %16, i32 0, i32 1, !dbg !1598
  %18 = load %struct._GSList*, %struct._GSList** %17, align 8, !dbg !1598
  store %struct._GSList* %18, %struct._GSList** %5, align 8, !dbg !1599
  %19 = load %struct._LOG_REC*, %struct._LOG_REC** %6, align 8, !dbg !1600
  %20 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %19, i32 0, i32 8, !dbg !1602
  %21 = load i8, i8* %20, align 8, !dbg !1602
  %22 = lshr i8 %21, 2, !dbg !1602
  %23 = and i8 %22, 1, !dbg !1602
  %24 = zext i8 %23 to i32, !dbg !1602
  %25 = icmp ne i32 %24, 0, !dbg !1600
  br i1 %25, label %26, label %31, !dbg !1603

; <label>:26:                                     ; preds = %11
  %27 = load %struct._LOG_REC*, %struct._LOG_REC** %6, align 8, !dbg !1604
  %28 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %27, i32 0, i32 5, !dbg !1606
  %29 = load %struct._GSList*, %struct._GSList** %28, align 8, !dbg !1606
  %30 = icmp eq %struct._GSList* %29, null, !dbg !1607
  br i1 %30, label %31, label %32, !dbg !1608

; <label>:31:                                     ; preds = %26, %11
  br label %70, !dbg !1609

; <label>:32:                                     ; preds = %26
  %33 = load %struct._LOG_REC*, %struct._LOG_REC** %6, align 8, !dbg !1610
  %34 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %33, i32 0, i32 5, !dbg !1611
  %35 = load %struct._GSList*, %struct._GSList** %34, align 8, !dbg !1611
  %36 = getelementptr inbounds %struct._GSList, %struct._GSList* %35, i32 0, i32 0, !dbg !1612
  %37 = load i8*, i8** %36, align 8, !dbg !1612
  %38 = bitcast i8* %37 to %struct._LOG_ITEM_REC*, !dbg !1610
  store %struct._LOG_ITEM_REC* %38, %struct._LOG_ITEM_REC** %3, align 8, !dbg !1613
  %39 = load %struct._LOG_ITEM_REC*, %struct._LOG_ITEM_REC** %3, align 8, !dbg !1614
  %40 = getelementptr inbounds %struct._LOG_ITEM_REC, %struct._LOG_ITEM_REC* %39, i32 0, i32 0, !dbg !1616
  %41 = load i32, i32* %40, align 8, !dbg !1616
  %42 = icmp eq i32 %41, 0, !dbg !1617
  br i1 %42, label %43, label %69, !dbg !1618

; <label>:43:                                     ; preds = %32
  %44 = load %struct._LOG_ITEM_REC*, %struct._LOG_ITEM_REC** %3, align 8, !dbg !1619
  %45 = getelementptr inbounds %struct._LOG_ITEM_REC, %struct._LOG_ITEM_REC* %44, i32 0, i32 2, !dbg !1620
  %46 = load i8*, i8** %45, align 8, !dbg !1620
  %47 = icmp ne i8* %46, null, !dbg !1621
  br i1 %47, label %48, label %69, !dbg !1622

; <label>:48:                                     ; preds = %43
  %49 = load %struct._LOG_ITEM_REC*, %struct._LOG_ITEM_REC** %3, align 8, !dbg !1623
  %50 = getelementptr inbounds %struct._LOG_ITEM_REC, %struct._LOG_ITEM_REC* %49, i32 0, i32 2, !dbg !1624
  %51 = load i8*, i8** %50, align 8, !dbg !1624
  %52 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1625
  %53 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %52, i32 0, i32 6, !dbg !1626
  %54 = load i8*, i8** %53, align 8, !dbg !1626
  %55 = call i32 @g_ascii_strcasecmp(i8* %51, i8* %54), !dbg !1627
  %56 = icmp eq i32 %55, 0, !dbg !1628
  br i1 %56, label %57, label %69, !dbg !1629

; <label>:57:                                     ; preds = %48
  %58 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1630
  %59 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %58, i32 0, i32 27, !dbg !1631
  %60 = load i32 (%struct._SERVER_REC*, i8*)*, i32 (%struct._SERVER_REC*, i8*)** %59, align 8, !dbg !1631
  %61 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1632
  %62 = load %struct._LOG_ITEM_REC*, %struct._LOG_ITEM_REC** %3, align 8, !dbg !1633
  %63 = getelementptr inbounds %struct._LOG_ITEM_REC, %struct._LOG_ITEM_REC* %62, i32 0, i32 1, !dbg !1634
  %64 = load i8*, i8** %63, align 8, !dbg !1634
  %65 = call i32 %60(%struct._SERVER_REC* %61, i8* %64), !dbg !1635
  %66 = icmp ne i32 %65, 0, !dbg !1635
  br i1 %66, label %67, label %69, !dbg !1636

; <label>:67:                                     ; preds = %57
  %68 = load %struct._LOG_REC*, %struct._LOG_REC** %6, align 8, !dbg !1638
  call void @log_close(%struct._LOG_REC* %68), !dbg !1639
  br label %69, !dbg !1639

; <label>:69:                                     ; preds = %67, %57, %48, %43, %32
  br label %70, !dbg !1640

; <label>:70:                                     ; preds = %69, %31
  %71 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1641
  store %struct._GSList* %71, %struct._GSList** %4, align 8, !dbg !1643
  br label %8, !dbg !1644, !llvm.loop !1645

; <label>:72:                                     ; preds = %8
  ret void, !dbg !1647
}

; Function Attrs: nounwind uwtable
define internal void @sig_log_locked(%struct._LOG_REC*) #0 !dbg !1648 {
  %2 = alloca %struct._LOG_REC*, align 8
  store %struct._LOG_REC* %0, %struct._LOG_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._LOG_REC** %2, metadata !1651, metadata !756), !dbg !1652
  %3 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !1653
  %4 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %3, i32 0, i32 1, !dbg !1654
  %5 = load i8*, i8** %4, align 8, !dbg !1654
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 1048576, i32 129, i8* %5), !dbg !1655
  ret void, !dbg !1656
}

; Function Attrs: nounwind uwtable
define internal void @sig_log_create_failed(%struct._LOG_REC*) #0 !dbg !1657 {
  %2 = alloca %struct._LOG_REC*, align 8
  store %struct._LOG_REC* %0, %struct._LOG_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._LOG_REC** %2, metadata !1658, metadata !756), !dbg !1659
  %3 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !1660
  %4 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %3, i32 0, i32 1, !dbg !1661
  %5 = load i8*, i8** %4, align 8, !dbg !1661
  %6 = call i32* @__errno_location() #2, !dbg !1662
  %7 = load i32, i32* %6, align 4, !dbg !1663
  %8 = call i8* @g_strerror(i32 %7) #2, !dbg !1664
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 1048576, i32 128, i8* %5, i8* %8), !dbg !1666
  ret void, !dbg !1668
}

; Function Attrs: nounwind uwtable
define internal void @sig_log_new(%struct._LOG_REC*) #0 !dbg !1669 {
  %2 = alloca %struct._LOG_REC*, align 8
  store %struct._LOG_REC* %0, %struct._LOG_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._LOG_REC** %2, metadata !1670, metadata !756), !dbg !1671
  %3 = call i32 @settings_get_bool(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)), !dbg !1672
  %4 = icmp ne i32 %3, 0, !dbg !1672
  br i1 %4, label %15, label %5, !dbg !1674

; <label>:5:                                      ; preds = %1
  %6 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !1675
  %7 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %6, i32 0, i32 0, !dbg !1676
  %8 = load i8*, i8** %7, align 8, !dbg !1676
  %9 = call i8* @settings_get_str(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i32 0, i32 0)), !dbg !1677
  %10 = call i32 @g_strcmp0(i8* %8, i8* %9), !dbg !1678
  %11 = icmp eq i32 %10, 0, !dbg !1680
  br i1 %11, label %12, label %15, !dbg !1681

; <label>:12:                                     ; preds = %5
  %13 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !1683
  %14 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %13, i32 0, i32 7, !dbg !1684
  store i8* (i8*)* @log_colorizer_strip, i8* (i8*)** %14, align 8, !dbg !1685
  br label %15, !dbg !1683

; <label>:15:                                     ; preds = %12, %5, %1
  ret void, !dbg !1686
}

; Function Attrs: nounwind uwtable
define internal void @sig_log_config_read(%struct._LOG_REC*, %struct._CONFIG_NODE*) #0 !dbg !1687 {
  %3 = alloca %struct._LOG_REC*, align 8
  %4 = alloca %struct._CONFIG_NODE*, align 8
  store %struct._LOG_REC* %0, %struct._LOG_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._LOG_REC** %3, metadata !1698, metadata !756), !dbg !1699
  store %struct._CONFIG_NODE* %1, %struct._CONFIG_NODE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %4, metadata !1700, metadata !756), !dbg !1701
  %5 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1702
  %6 = call i32 @config_node_get_bool(%struct._CONFIG_NODE* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i32 0), !dbg !1704
  %7 = icmp ne i32 %6, 0, !dbg !1704
  br i1 %7, label %11, label %8, !dbg !1705

; <label>:8:                                      ; preds = %2
  %9 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !1706
  %10 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %9, i32 0, i32 7, !dbg !1707
  store i8* (i8*)* @log_colorizer_strip, i8* (i8*)** %10, align 8, !dbg !1708
  br label %11, !dbg !1706

; <label>:11:                                     ; preds = %8, %2
  ret void, !dbg !1709
}

; Function Attrs: nounwind uwtable
define internal void @sig_log_config_save(%struct._LOG_REC*, %struct._CONFIG_NODE*) #0 !dbg !1710 {
  %3 = alloca %struct._LOG_REC*, align 8
  %4 = alloca %struct._CONFIG_NODE*, align 8
  store %struct._LOG_REC* %0, %struct._LOG_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._LOG_REC** %3, metadata !1711, metadata !756), !dbg !1712
  store %struct._CONFIG_NODE* %1, %struct._CONFIG_NODE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %4, metadata !1713, metadata !756), !dbg !1714
  %5 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !1715
  %6 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %5, i32 0, i32 7, !dbg !1717
  %7 = load i8* (i8*)*, i8* (i8*)** %6, align 8, !dbg !1717
  %8 = icmp eq i8* (i8*)* %7, null, !dbg !1718
  br i1 %8, label %9, label %12, !dbg !1719

; <label>:9:                                      ; preds = %2
  %10 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1720
  %11 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1721
  call void @config_node_set_bool(%struct._CONFIG_REC* %10, %struct._CONFIG_NODE* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i32 1), !dbg !1722
  br label %15, !dbg !1722

; <label>:12:                                     ; preds = %2
  %13 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1723
  %14 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1724
  call void @config_node_set_str(%struct._CONFIG_REC* %13, %struct._CONFIG_NODE* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i8* null), !dbg !1725
  br label %15

; <label>:15:                                     ; preds = %12, %9
  ret void, !dbg !1726
}

; Function Attrs: nounwind uwtable
define internal void @sig_awaylog_show(%struct._LOG_REC*, i8*, i8*) #0 !dbg !1727 {
  %4 = alloca %struct._LOG_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct._LOG_REC* %0, %struct._LOG_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._LOG_REC** %4, metadata !1730, metadata !756), !dbg !1731
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1732, metadata !756), !dbg !1733
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1734, metadata !756), !dbg !1735
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1736, metadata !756), !dbg !1737
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1738, metadata !756), !dbg !1739
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1740, metadata !756), !dbg !1741
  %10 = load i8*, i8** %5, align 8, !dbg !1742
  %11 = ptrtoint i8* %10 to i64, !dbg !1743
  %12 = trunc i64 %11 to i32, !dbg !1744
  store i32 %12, i32* %8, align 4, !dbg !1745
  %13 = load i8*, i8** %6, align 8, !dbg !1746
  %14 = ptrtoint i8* %13 to i64, !dbg !1747
  %15 = trunc i64 %14 to i32, !dbg !1748
  store i32 %15, i32* %9, align 4, !dbg !1749
  %16 = load i32, i32* %8, align 4, !dbg !1750
  %17 = icmp eq i32 %16, 0, !dbg !1752
  br i1 %17, label %18, label %22, !dbg !1753

; <label>:18:                                     ; preds = %3
  %19 = load %struct._LOG_REC*, %struct._LOG_REC** %4, align 8, !dbg !1754
  %20 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %19, i32 0, i32 1, !dbg !1755
  %21 = load i8*, i8** %20, align 8, !dbg !1755
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 138, i8* %21), !dbg !1756
  br label %35, !dbg !1756

; <label>:22:                                     ; preds = %3
  %23 = load %struct._LOG_REC*, %struct._LOG_REC** %4, align 8, !dbg !1757
  %24 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %23, i32 0, i32 1, !dbg !1759
  %25 = load i8*, i8** %24, align 8, !dbg !1759
  %26 = load i32, i32* %8, align 4, !dbg !1760
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 139, i8* %25, i32 %26), !dbg !1761
  %27 = load %struct._LOG_REC*, %struct._LOG_REC** %4, align 8, !dbg !1762
  %28 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %27, i32 0, i32 1, !dbg !1763
  %29 = load i8*, i8** %28, align 8, !dbg !1763
  %30 = load i32, i32* %9, align 4, !dbg !1764
  %31 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i32 0, i32 0), i8* %29, i32 %30), !dbg !1765
  store i8* %31, i8** %7, align 8, !dbg !1766
  %32 = load i8*, i8** %7, align 8, !dbg !1767
  %33 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i32 0, i32 0), i32 1, i8* %32), !dbg !1768
  %34 = load i8*, i8** %7, align 8, !dbg !1769
  call void @g_free(i8* %34), !dbg !1770
  br label %35

; <label>:35:                                     ; preds = %22, %18
  ret void, !dbg !1771
}

; Function Attrs: nounwind uwtable
define internal void @sig_theme_destroyed(%struct.THEME_REC*) #0 !dbg !1772 {
  %2 = alloca %struct.THEME_REC*, align 8
  store %struct.THEME_REC* %0, %struct.THEME_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.THEME_REC** %2, metadata !1775, metadata !756), !dbg !1776
  %3 = load %struct.THEME_REC*, %struct.THEME_REC** %2, align 8, !dbg !1777
  %4 = load %struct.THEME_REC*, %struct.THEME_REC** @log_theme, align 8, !dbg !1779
  %5 = icmp eq %struct.THEME_REC* %3, %4, !dbg !1780
  br i1 %5, label %6, label %7, !dbg !1781

; <label>:6:                                      ; preds = %1
  store %struct.THEME_REC* null, %struct.THEME_REC** @log_theme, align 8, !dbg !1782
  br label %7, !dbg !1783

; <label>:7:                                      ; preds = %6, %1
  ret void, !dbg !1784
}

declare void @command_set_options_module(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @fe_log_deinit() #0 !dbg !1785 {
  %1 = load i32, i32* @autoremove_tag, align 4, !dbg !1786
  %2 = call i32 @g_source_remove(i32 %1), !dbg !1787
  %3 = load i8*, i8** @log_theme_name, align 8, !dbg !1788
  %4 = icmp ne i8* %3, null, !dbg !1790
  br i1 %4, label %5, label %6, !dbg !1791

; <label>:5:                                      ; preds = %0
  call void @signal_remove_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.THEME_REC*, i8*, %struct._TEXT_DEST_REC*, i8*, i8**)* @sig_print_format to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1792
  br label %6, !dbg !1792

; <label>:6:                                      ; preds = %5, %0
  call void @command_unbind_full(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, i8*)* @cmd_log to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1793
  call void @command_unbind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_log_open to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1794
  call void @command_unbind_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_log_close to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1795
  call void @command_unbind_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_log_start to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1796
  call void @command_unbind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_log_stop to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1797
  call void @command_unbind_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_window_log to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1798
  call void @command_unbind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_window_logfile to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1799
  call void @signal_remove_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._TEXT_DEST_REC*, i8*, i8*)* @sig_printtext to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1800
  call void @signal_remove_full(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*, %struct._WI_ITEM_REC*)* @sig_window_item_remove to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1801
  call void @signal_remove_full(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*, i8*)* @sig_window_refnum_changed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1802
  call void @signal_remove_full(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*)* @sig_server_disconnected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1803
  call void @signal_remove_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._LOG_REC*)* @sig_log_locked to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1804
  call void @signal_remove_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._LOG_REC*)* @sig_log_create_failed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1805
  call void @signal_remove_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._LOG_REC*)* @sig_log_new to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1806
  call void @signal_remove_full(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._LOG_REC*, %struct._CONFIG_NODE*)* @sig_log_config_read to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1807
  call void @signal_remove_full(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._LOG_REC*, %struct._CONFIG_NODE*)* @sig_log_config_save to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1808
  call void @signal_remove_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._LOG_REC*, i8*, i8*)* @sig_awaylog_show to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1809
  call void @signal_remove_full(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.THEME_REC*)* @sig_theme_destroyed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1810
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1811
  %7 = load i8**, i8*** @autolog_ignore_targets, align 8, !dbg !1812
  %8 = icmp ne i8** %7, null, !dbg !1814
  br i1 %8, label %9, label %11, !dbg !1815

; <label>:9:                                      ; preds = %6
  %10 = load i8**, i8*** @autolog_ignore_targets, align 8, !dbg !1816
  call void @g_strfreev(i8** %10), !dbg !1817
  br label %11, !dbg !1817

; <label>:11:                                     ; preds = %9, %6
  %12 = load i8*, i8** @autolog_path, align 8, !dbg !1818
  call void @g_free(i8* %12), !dbg !1819
  %13 = load i8*, i8** @log_theme_name, align 8, !dbg !1820
  call void @g_free(i8* %13), !dbg !1821
  ret void, !dbg !1822
}

declare i32 @g_source_remove(i32) #1

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @sig_print_format(%struct.THEME_REC*, i8*, %struct._TEXT_DEST_REC*, i8*, i8**) #0 !dbg !1823 {
  %6 = alloca %struct.THEME_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct._TEXT_DEST_REC*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.THEME_REC* %0, %struct.THEME_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.THEME_REC** %6, metadata !1826, metadata !756), !dbg !1827
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1828, metadata !756), !dbg !1829
  store %struct._TEXT_DEST_REC* %2, %struct._TEXT_DEST_REC** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC** %8, metadata !1830, metadata !756), !dbg !1831
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1832, metadata !756), !dbg !1833
  store i8** %4, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !1834, metadata !756), !dbg !1835
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1836, metadata !756), !dbg !1837
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1838, metadata !756), !dbg !1839
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1840, metadata !756), !dbg !1841
  %14 = load %struct.THEME_REC*, %struct.THEME_REC** @log_theme, align 8, !dbg !1842
  %15 = icmp eq %struct.THEME_REC* %14, null, !dbg !1844
  br i1 %15, label %16, label %23, !dbg !1845

; <label>:16:                                     ; preds = %5
  %17 = load i8*, i8** @log_theme_name, align 8, !dbg !1846
  %18 = call %struct.THEME_REC* @theme_load(i8* %17), !dbg !1848
  store %struct.THEME_REC* %18, %struct.THEME_REC** @log_theme, align 8, !dbg !1849
  %19 = load %struct.THEME_REC*, %struct.THEME_REC** @log_theme, align 8, !dbg !1850
  %20 = icmp eq %struct.THEME_REC* %19, null, !dbg !1852
  br i1 %20, label %21, label %22, !dbg !1853

; <label>:21:                                     ; preds = %16
  br label %55, !dbg !1854

; <label>:22:                                     ; preds = %16
  br label %23, !dbg !1856

; <label>:23:                                     ; preds = %22, %5
  %24 = load %struct.THEME_REC*, %struct.THEME_REC** %6, align 8, !dbg !1857
  %25 = load %struct.THEME_REC*, %struct.THEME_REC** @log_theme, align 8, !dbg !1859
  %26 = icmp eq %struct.THEME_REC* %24, %25, !dbg !1860
  br i1 %26, label %27, label %28, !dbg !1861

; <label>:27:                                     ; preds = %23
  br label %55, !dbg !1862

; <label>:28:                                     ; preds = %23
  %29 = load %struct.THEME_REC*, %struct.THEME_REC** @log_theme, align 8, !dbg !1863
  %30 = load i8*, i8** %7, align 8, !dbg !1864
  %31 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %8, align 8, !dbg !1865
  %32 = load i8*, i8** %9, align 8, !dbg !1866
  %33 = ptrtoint i8* %32 to i64, !dbg !1867
  %34 = trunc i64 %33 to i32, !dbg !1868
  %35 = load i8**, i8*** %10, align 8, !dbg !1869
  %36 = call i8* @format_get_text_theme_charargs(%struct.THEME_REC* %29, i8* %30, %struct._TEXT_DEST_REC* %31, i32 %34, i8** %35), !dbg !1870
  store i8* %36, i8** %11, align 8, !dbg !1871
  store i32 1, i32* @skip_next_printtext, align 4, !dbg !1872
  %37 = load i8*, i8** %11, align 8, !dbg !1873
  %38 = load i8, i8* %37, align 1, !dbg !1875
  %39 = sext i8 %38 to i32, !dbg !1875
  %40 = icmp ne i32 %39, 0, !dbg !1876
  br i1 %40, label %41, label %53, !dbg !1877

; <label>:41:                                     ; preds = %28
  %42 = load %struct.THEME_REC*, %struct.THEME_REC** @log_theme, align 8, !dbg !1878
  %43 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %8, align 8, !dbg !1880
  %44 = call i8* @format_get_level_tag(%struct.THEME_REC* %42, %struct._TEXT_DEST_REC* %43), !dbg !1881
  store i8* %44, i8** %12, align 8, !dbg !1882
  %45 = load i8*, i8** %11, align 8, !dbg !1883
  store i8* %45, i8** %13, align 8, !dbg !1884
  %46 = load i8*, i8** %13, align 8, !dbg !1885
  %47 = load i8*, i8** %12, align 8, !dbg !1886
  %48 = call i8* @format_add_linestart(i8* %46, i8* %47), !dbg !1887
  store i8* %48, i8** %11, align 8, !dbg !1888
  %49 = load i8*, i8** %12, align 8, !dbg !1889
  call void @g_free(i8* %49), !dbg !1890
  %50 = load i8*, i8** %13, align 8, !dbg !1891
  call void @g_free(i8* %50), !dbg !1892
  %51 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %8, align 8, !dbg !1893
  %52 = load i8*, i8** %11, align 8, !dbg !1894
  call void @log_line(%struct._TEXT_DEST_REC* %51, i8* %52), !dbg !1895
  br label %53, !dbg !1896

; <label>:53:                                     ; preds = %41, %28
  %54 = load i8*, i8** %11, align 8, !dbg !1897
  call void @g_free(i8* %54), !dbg !1898
  br label %55, !dbg !1899

; <label>:55:                                     ; preds = %53, %27, %21
  ret void, !dbg !1900
}

declare void @command_unbind_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @g_strfreev(i8**) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind
declare i64 @time(i64*) #3

declare %struct._SERVER_REC* @server_find_tag(i8*) #1

declare void @log_close(%struct._LOG_REC*) #1

declare noalias i8* @g_strdup(i8*) #1

declare i8* @settings_get_str(i8*) #1

declare i32 @settings_get_bool(i8*) #1

declare i32 @settings_get_level(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @autologs_close_all() #0 !dbg !1902 {
  %1 = alloca %struct._GSList*, align 8
  %2 = alloca %struct._GSList*, align 8
  %3 = alloca %struct._LOG_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %1, metadata !1903, metadata !756), !dbg !1904
  call void @llvm.dbg.declare(metadata %struct._GSList** %2, metadata !1905, metadata !756), !dbg !1906
  %4 = load %struct._GSList*, %struct._GSList** @logs, align 8, !dbg !1907
  store %struct._GSList* %4, %struct._GSList** %1, align 8, !dbg !1909
  br label %5, !dbg !1910

; <label>:5:                                      ; preds = %26, %0
  %6 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1911
  %7 = icmp ne %struct._GSList* %6, null, !dbg !1914
  br i1 %7, label %8, label %28, !dbg !1915

; <label>:8:                                      ; preds = %5
  call void @llvm.dbg.declare(metadata %struct._LOG_REC** %3, metadata !1916, metadata !756), !dbg !1918
  %9 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1919
  %10 = getelementptr inbounds %struct._GSList, %struct._GSList* %9, i32 0, i32 0, !dbg !1920
  %11 = load i8*, i8** %10, align 8, !dbg !1920
  %12 = bitcast i8* %11 to %struct._LOG_REC*, !dbg !1919
  store %struct._LOG_REC* %12, %struct._LOG_REC** %3, align 8, !dbg !1918
  %13 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1921
  %14 = getelementptr inbounds %struct._GSList, %struct._GSList* %13, i32 0, i32 1, !dbg !1922
  %15 = load %struct._GSList*, %struct._GSList** %14, align 8, !dbg !1922
  store %struct._GSList* %15, %struct._GSList** %2, align 8, !dbg !1923
  %16 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !1924
  %17 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %16, i32 0, i32 8, !dbg !1926
  %18 = load i8, i8* %17, align 8, !dbg !1926
  %19 = lshr i8 %18, 2, !dbg !1926
  %20 = and i8 %19, 1, !dbg !1926
  %21 = zext i8 %20 to i32, !dbg !1926
  %22 = icmp ne i32 %21, 0, !dbg !1924
  br i1 %22, label %23, label %25, !dbg !1927

; <label>:23:                                     ; preds = %8
  %24 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !1928
  call void @log_close(%struct._LOG_REC* %24), !dbg !1930
  br label %25, !dbg !1930

; <label>:25:                                     ; preds = %23, %8
  br label %26, !dbg !1931

; <label>:26:                                     ; preds = %25
  %27 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !1932
  store %struct._GSList* %27, %struct._GSList** %1, align 8, !dbg !1934
  br label %5, !dbg !1935, !llvm.loop !1936

; <label>:28:                                     ; preds = %5
  ret void, !dbg !1938
}

declare %struct.THEME_REC* @theme_load(i8*) #1

declare noalias i8** @g_strsplit(i8*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @cmd_log_list() #0 !dbg !1939 {
  %1 = alloca %struct._GSList*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._LOG_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %1, metadata !1940, metadata !756), !dbg !1941
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1942, metadata !756), !dbg !1943
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1944, metadata !756), !dbg !1945
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1946, metadata !756), !dbg !1947
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 133), !dbg !1948
  %6 = load %struct._GSList*, %struct._GSList** @logs, align 8, !dbg !1949
  store %struct._GSList* %6, %struct._GSList** %1, align 8, !dbg !1951
  store i32 1, i32* %4, align 4, !dbg !1952
  br label %7, !dbg !1953

; <label>:7:                                      ; preds = %55, %0
  %8 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1954
  %9 = icmp ne %struct._GSList* %8, null, !dbg !1957
  br i1 %9, label %10, label %61, !dbg !1958

; <label>:10:                                     ; preds = %7
  call void @llvm.dbg.declare(metadata %struct._LOG_REC** %5, metadata !1959, metadata !756), !dbg !1961
  %11 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1962
  %12 = getelementptr inbounds %struct._GSList, %struct._GSList* %11, i32 0, i32 0, !dbg !1963
  %13 = load i8*, i8** %12, align 8, !dbg !1963
  %14 = bitcast i8* %13 to %struct._LOG_REC*, !dbg !1962
  store %struct._LOG_REC* %14, %struct._LOG_REC** %5, align 8, !dbg !1961
  %15 = load %struct._LOG_REC*, %struct._LOG_REC** %5, align 8, !dbg !1964
  %16 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %15, i32 0, i32 4, !dbg !1965
  %17 = load i32, i32* %16, align 8, !dbg !1965
  %18 = call i8* @bits2level(i32 %17), !dbg !1966
  store i8* %18, i8** %2, align 8, !dbg !1967
  %19 = load %struct._LOG_REC*, %struct._LOG_REC** %5, align 8, !dbg !1968
  %20 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %19, i32 0, i32 5, !dbg !1969
  %21 = load %struct._GSList*, %struct._GSList** %20, align 8, !dbg !1969
  %22 = icmp eq %struct._GSList* %21, null, !dbg !1970
  br i1 %22, label %23, label %24, !dbg !1968

; <label>:23:                                     ; preds = %10
  br label %27, !dbg !1971

; <label>:24:                                     ; preds = %10
  %25 = load %struct._LOG_REC*, %struct._LOG_REC** %5, align 8, !dbg !1973
  %26 = call i8* @log_items_get_list(%struct._LOG_REC* %25), !dbg !1974
  br label %27, !dbg !1975

; <label>:27:                                     ; preds = %24, %23
  %28 = phi i8* [ null, %23 ], [ %26, %24 ], !dbg !1977
  store i8* %28, i8** %3, align 8, !dbg !1979
  %29 = load i32, i32* %4, align 4, !dbg !1980
  %30 = load %struct._LOG_REC*, %struct._LOG_REC** %5, align 8, !dbg !1981
  %31 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %30, i32 0, i32 0, !dbg !1982
  %32 = load i8*, i8** %31, align 8, !dbg !1982
  %33 = load i8*, i8** %3, align 8, !dbg !1983
  %34 = icmp ne i8* %33, null, !dbg !1984
  br i1 %34, label %35, label %37, !dbg !1983

; <label>:35:                                     ; preds = %27
  %36 = load i8*, i8** %3, align 8, !dbg !1985
  br label %38, !dbg !1986

; <label>:37:                                     ; preds = %27
  br label %38, !dbg !1987

; <label>:38:                                     ; preds = %37, %35
  %39 = phi i8* [ %36, %35 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i32 0, i32 0), %37 ], !dbg !1988
  %40 = load i8*, i8** %2, align 8, !dbg !1989
  %41 = load %struct._LOG_REC*, %struct._LOG_REC** %5, align 8, !dbg !1990
  %42 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %41, i32 0, i32 8, !dbg !1991
  %43 = load i8, i8* %42, align 8, !dbg !1991
  %44 = and i8 %43, 1, !dbg !1991
  %45 = zext i8 %44 to i32, !dbg !1991
  %46 = icmp ne i32 %45, 0, !dbg !1990
  %47 = select i1 %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i32 0, i32 0), !dbg !1990
  %48 = load %struct._LOG_REC*, %struct._LOG_REC** %5, align 8, !dbg !1992
  %49 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %48, i32 0, i32 2, !dbg !1993
  %50 = load i32, i32* %49, align 8, !dbg !1993
  %51 = icmp ne i32 %50, -1, !dbg !1994
  %52 = select i1 %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i32 0, i32 0), !dbg !1992
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 134, i32 %29, i8* %32, i8* %39, i8* %40, i8* %47, i8* %52), !dbg !1995
  %53 = load i8*, i8** %3, align 8, !dbg !1996
  call void @g_free(i8* %53), !dbg !1997
  %54 = load i8*, i8** %2, align 8, !dbg !1998
  call void @g_free(i8* %54), !dbg !1999
  br label %55, !dbg !2000

; <label>:55:                                     ; preds = %38
  %56 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !2001
  %57 = getelementptr inbounds %struct._GSList, %struct._GSList* %56, i32 0, i32 1, !dbg !2003
  %58 = load %struct._GSList*, %struct._GSList** %57, align 8, !dbg !2003
  store %struct._GSList* %58, %struct._GSList** %1, align 8, !dbg !2004
  %59 = load i32, i32* %4, align 4, !dbg !2005
  %60 = add nsw i32 %59, 1, !dbg !2005
  store i32 %60, i32* %4, align 4, !dbg !2005
  br label %7, !dbg !2006, !llvm.loop !2007

; <label>:61:                                     ; preds = %7
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 135), !dbg !2009
  ret void, !dbg !2010
}

declare void @command_runsub(i8*, i8*, i8*, i8*) #1

declare void @printformat_module(i8*, i8*, i8*, i32, i32, ...) #1

declare i8* @bits2level(i32) #1

; Function Attrs: nounwind uwtable
define internal i8* @log_items_get_list(%struct._LOG_REC*) #0 !dbg !2011 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._LOG_REC*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct._GString*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._LOG_ITEM_REC*, align 8
  store %struct._LOG_REC* %0, %struct._LOG_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._LOG_REC** %3, metadata !2014, metadata !756), !dbg !2015
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !2016, metadata !756), !dbg !2017
  call void @llvm.dbg.declare(metadata %struct._GString** %5, metadata !2018, metadata !756), !dbg !2019
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2020, metadata !756), !dbg !2021
  call void @llvm.dbg.declare(metadata %struct._LOG_ITEM_REC** %7, metadata !2022, metadata !756), !dbg !2023
  store %struct._LOG_ITEM_REC* null, %struct._LOG_ITEM_REC** %7, align 8, !dbg !2023
  br label %8, !dbg !2024, !llvm.loop !2025

; <label>:8:                                      ; preds = %1
  %9 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !2026
  %10 = icmp ne %struct._LOG_REC* %9, null, !dbg !2030
  br i1 %10, label %11, label %12, !dbg !2026

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !2031

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.log_items_get_list, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0)), !dbg !2034
  store i8* null, i8** %2, align 8, !dbg !2037
  br label %67, !dbg !2037

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !2038

; <label>:14:                                     ; preds = %13
  br label %15, !dbg !2040, !llvm.loop !2041

; <label>:15:                                     ; preds = %14
  %16 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !2042
  %17 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %16, i32 0, i32 5, !dbg !2046
  %18 = load %struct._GSList*, %struct._GSList** %17, align 8, !dbg !2046
  %19 = icmp ne %struct._GSList* %18, null, !dbg !2047
  br i1 %19, label %20, label %21, !dbg !2042

; <label>:20:                                     ; preds = %15
  br label %22, !dbg !2048

; <label>:21:                                     ; preds = %15
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.log_items_get_list, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.36, i32 0, i32 0)), !dbg !2051
  store i8* null, i8** %2, align 8, !dbg !2054
  br label %67, !dbg !2054

; <label>:22:                                     ; preds = %20
  br label %23, !dbg !2055

; <label>:23:                                     ; preds = %22
  %24 = call %struct._GString* @g_string_new(i8* null), !dbg !2057
  store %struct._GString* %24, %struct._GString** %5, align 8, !dbg !2058
  %25 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !2059
  %26 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %25, i32 0, i32 5, !dbg !2061
  %27 = load %struct._GSList*, %struct._GSList** %26, align 8, !dbg !2061
  store %struct._GSList* %27, %struct._GSList** %4, align 8, !dbg !2062
  br label %28, !dbg !2063

; <label>:28:                                     ; preds = %40, %23
  %29 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2064
  %30 = icmp ne %struct._GSList* %29, null, !dbg !2067
  br i1 %30, label %31, label %44, !dbg !2068

; <label>:31:                                     ; preds = %28
  %32 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2069
  %33 = getelementptr inbounds %struct._GSList, %struct._GSList* %32, i32 0, i32 0, !dbg !2071
  %34 = load i8*, i8** %33, align 8, !dbg !2071
  %35 = bitcast i8* %34 to %struct._LOG_ITEM_REC*, !dbg !2069
  store %struct._LOG_ITEM_REC* %35, %struct._LOG_ITEM_REC** %7, align 8, !dbg !2072
  %36 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !2073
  %37 = load %struct._LOG_ITEM_REC*, %struct._LOG_ITEM_REC** %7, align 8, !dbg !2074
  %38 = getelementptr inbounds %struct._LOG_ITEM_REC, %struct._LOG_ITEM_REC* %37, i32 0, i32 1, !dbg !2075
  %39 = load i8*, i8** %38, align 8, !dbg !2075
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i8* %39), !dbg !2076
  br label %40, !dbg !2077

; <label>:40:                                     ; preds = %31
  %41 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2078
  %42 = getelementptr inbounds %struct._GSList, %struct._GSList* %41, i32 0, i32 1, !dbg !2080
  %43 = load %struct._GSList*, %struct._GSList** %42, align 8, !dbg !2080
  store %struct._GSList* %43, %struct._GSList** %4, align 8, !dbg !2081
  br label %28, !dbg !2082, !llvm.loop !2083

; <label>:44:                                     ; preds = %28
  %45 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !2085
  %46 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !2086
  %47 = getelementptr inbounds %struct._GString, %struct._GString* %46, i32 0, i32 1, !dbg !2087
  %48 = load i64, i64* %47, align 8, !dbg !2087
  %49 = sub i64 %48, 2, !dbg !2088
  %50 = call %struct._GString* @g_string_truncate(%struct._GString* %45, i64 %49), !dbg !2089
  %51 = load %struct._LOG_ITEM_REC*, %struct._LOG_ITEM_REC** %7, align 8, !dbg !2090
  %52 = getelementptr inbounds %struct._LOG_ITEM_REC, %struct._LOG_ITEM_REC* %51, i32 0, i32 2, !dbg !2092
  %53 = load i8*, i8** %52, align 8, !dbg !2092
  %54 = icmp ne i8* %53, null, !dbg !2093
  br i1 %54, label %55, label %60, !dbg !2094

; <label>:55:                                     ; preds = %44
  %56 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !2095
  %57 = load %struct._LOG_ITEM_REC*, %struct._LOG_ITEM_REC** %7, align 8, !dbg !2096
  %58 = getelementptr inbounds %struct._LOG_ITEM_REC, %struct._LOG_ITEM_REC* %57, i32 0, i32 2, !dbg !2097
  %59 = load i8*, i8** %58, align 8, !dbg !2097
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i8* %59), !dbg !2098
  br label %60, !dbg !2098

; <label>:60:                                     ; preds = %55, %44
  %61 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !2099
  %62 = getelementptr inbounds %struct._GString, %struct._GString* %61, i32 0, i32 0, !dbg !2100
  %63 = load i8*, i8** %62, align 8, !dbg !2100
  store i8* %63, i8** %6, align 8, !dbg !2101
  %64 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !2102
  %65 = call i8* @g_string_free(%struct._GString* %64, i32 0), !dbg !2103
  %66 = load i8*, i8** %6, align 8, !dbg !2104
  store i8* %66, i8** %2, align 8, !dbg !2105
  br label %67, !dbg !2105

; <label>:67:                                     ; preds = %60, %21, %12
  %68 = load i8*, i8** %2, align 8, !dbg !2106
  ret i8* %68, !dbg !2106
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare %struct._GString* @g_string_new(i8*) #1

declare void @g_string_append_printf(%struct._GString*, i8*, ...) #1

declare %struct._GString* @g_string_truncate(%struct._GString*, i64) #1

declare i8* @g_string_free(%struct._GString*, i32) #1

declare i32 @cmd_get_params(i8*, i8**, i32, ...) #1

declare void @cmd_params_free(i8*) #1

declare i32 @signal_emit(i8*, i32, ...) #1

declare void @signal_stop() #1

declare i32 @level2bits(i8*, i32*) #1

declare %struct._LOG_REC* @log_create_rec(i8*, i32) #1

declare %struct._SERVER_REC* @cmd_options_get_server(i8*, %struct._GHashTable*, %struct._SERVER_REC*) #1

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #1

declare i32 @is_numeric(i8*, i8 signext) #1

declare i32 @g_snprintf(i8*, i64, i8*, ...) #1

declare void @log_item_add(%struct._LOG_REC*, i32, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @log_add_targets(%struct._LOG_REC*, i8*, i8*) #0 !dbg !2107 {
  %4 = alloca %struct._LOG_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  store %struct._LOG_REC* %0, %struct._LOG_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._LOG_REC** %4, metadata !2110, metadata !756), !dbg !2111
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2112, metadata !756), !dbg !2113
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2114, metadata !756), !dbg !2115
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !2116, metadata !756), !dbg !2117
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !2118, metadata !756), !dbg !2119
  br label %9, !dbg !2120, !llvm.loop !2121

; <label>:9:                                      ; preds = %3
  %10 = load %struct._LOG_REC*, %struct._LOG_REC** %4, align 8, !dbg !2122
  %11 = icmp ne %struct._LOG_REC* %10, null, !dbg !2126
  br i1 %11, label %12, label %13, !dbg !2122

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !2127

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.log_add_targets, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0)), !dbg !2130
  br label %40, !dbg !2133

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !2134

; <label>:15:                                     ; preds = %14
  br label %16, !dbg !2136, !llvm.loop !2137

; <label>:16:                                     ; preds = %15
  %17 = load i8*, i8** %5, align 8, !dbg !2138
  %18 = icmp ne i8* %17, null, !dbg !2142
  br i1 %18, label %19, label %20, !dbg !2138

; <label>:19:                                     ; preds = %16
  br label %21, !dbg !2143

; <label>:20:                                     ; preds = %16
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.log_add_targets, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.47, i32 0, i32 0)), !dbg !2146
  br label %40, !dbg !2149

; <label>:21:                                     ; preds = %19
  br label %22, !dbg !2150

; <label>:22:                                     ; preds = %21
  %23 = load i8*, i8** %5, align 8, !dbg !2152
  %24 = call noalias i8** @g_strsplit(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0), i32 -1), !dbg !2153
  store i8** %24, i8*** %8, align 8, !dbg !2154
  %25 = load i8**, i8*** %8, align 8, !dbg !2155
  store i8** %25, i8*** %7, align 8, !dbg !2157
  br label %26, !dbg !2158

; <label>:26:                                     ; preds = %35, %22
  %27 = load i8**, i8*** %7, align 8, !dbg !2159
  %28 = load i8*, i8** %27, align 8, !dbg !2162
  %29 = icmp ne i8* %28, null, !dbg !2163
  br i1 %29, label %30, label %38, !dbg !2164

; <label>:30:                                     ; preds = %26
  %31 = load %struct._LOG_REC*, %struct._LOG_REC** %4, align 8, !dbg !2165
  %32 = load i8**, i8*** %7, align 8, !dbg !2166
  %33 = load i8*, i8** %32, align 8, !dbg !2167
  %34 = load i8*, i8** %6, align 8, !dbg !2168
  call void @log_item_add(%struct._LOG_REC* %31, i32 0, i8* %33, i8* %34), !dbg !2169
  br label %35, !dbg !2169

; <label>:35:                                     ; preds = %30
  %36 = load i8**, i8*** %7, align 8, !dbg !2170
  %37 = getelementptr inbounds i8*, i8** %36, i32 1, !dbg !2170
  store i8** %37, i8*** %7, align 8, !dbg !2170
  br label %26, !dbg !2172, !llvm.loop !2173

; <label>:38:                                     ; preds = %26
  %39 = load i8**, i8*** %8, align 8, !dbg !2175
  call void @g_strfreev(i8** %39), !dbg !2176
  br label %40, !dbg !2177

; <label>:40:                                     ; preds = %38, %20, %13
  ret void, !dbg !2178
}

; Function Attrs: nounwind uwtable
define internal i8* @log_colorizer_strip(i8*) #0 !dbg !2180 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2181, metadata !756), !dbg !2182
  %3 = load i8*, i8** %2, align 8, !dbg !2183
  %4 = call i8* @strip_codes(i8* %3), !dbg !2184
  ret i8* %4, !dbg !2185
}

declare void @log_update(%struct._LOG_REC*) #1

declare i32 @log_start_logging(%struct._LOG_REC*) #1

declare i8* @strip_codes(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._LOG_REC* @log_find_from_data(i8*) #0 !dbg !2186 {
  %2 = alloca %struct._LOG_REC*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._GSList*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2189, metadata !756), !dbg !2190
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !2191, metadata !756), !dbg !2192
  %5 = load i8*, i8** %3, align 8, !dbg !2193
  %6 = call i32 @is_numeric(i8* %5, i8 signext 32), !dbg !2195
  %7 = icmp ne i32 %6, 0, !dbg !2195
  br i1 %7, label %11, label %8, !dbg !2196

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** %3, align 8, !dbg !2197
  %10 = call %struct._LOG_REC* @log_find(i8* %9), !dbg !2198
  store %struct._LOG_REC* %10, %struct._LOG_REC** %2, align 8, !dbg !2199
  br label %27, !dbg !2199

; <label>:11:                                     ; preds = %1
  %12 = load %struct._GSList*, %struct._GSList** @logs, align 8, !dbg !2200
  %13 = load i8*, i8** %3, align 8, !dbg !2201
  %14 = call i32 @atoi(i8* %13) #7, !dbg !2202
  %15 = sub nsw i32 %14, 1, !dbg !2203
  %16 = call %struct._GSList* @g_slist_nth(%struct._GSList* %12, i32 %15), !dbg !2204
  store %struct._GSList* %16, %struct._GSList** %4, align 8, !dbg !2206
  %17 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2207
  %18 = icmp eq %struct._GSList* %17, null, !dbg !2208
  br i1 %18, label %19, label %20, !dbg !2207

; <label>:19:                                     ; preds = %11
  br label %24, !dbg !2209

; <label>:20:                                     ; preds = %11
  %21 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2210
  %22 = getelementptr inbounds %struct._GSList, %struct._GSList* %21, i32 0, i32 0, !dbg !2212
  %23 = load i8*, i8** %22, align 8, !dbg !2212
  br label %24, !dbg !2213

; <label>:24:                                     ; preds = %20, %19
  %25 = phi i8* [ null, %19 ], [ %23, %20 ], !dbg !2214
  %26 = bitcast i8* %25 to %struct._LOG_REC*, !dbg !2214
  store %struct._LOG_REC* %26, %struct._LOG_REC** %2, align 8, !dbg !2216
  br label %27, !dbg !2216

; <label>:27:                                     ; preds = %24, %8
  %28 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !2217
  ret %struct._LOG_REC* %28, !dbg !2217
}

declare %struct._LOG_REC* @log_find(i8*) #1

declare %struct._GSList* @g_slist_nth(%struct._GSList*, i32) #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #4

declare void @log_stop_logging(%struct._LOG_REC*) #1

; Function Attrs: nounwind uwtable
define internal %struct._LOG_REC* @logs_find_item(i32, i8*, i8*, %struct._LOG_ITEM_REC**) #0 !dbg !2218 {
  %5 = alloca %struct._LOG_REC*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._LOG_ITEM_REC**, align 8
  %10 = alloca %struct._LOG_ITEM_REC*, align 8
  %11 = alloca %struct._GSList*, align 8
  %12 = alloca %struct._LOG_REC*, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2222, metadata !756), !dbg !2223
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2224, metadata !756), !dbg !2225
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2226, metadata !756), !dbg !2227
  store %struct._LOG_ITEM_REC** %3, %struct._LOG_ITEM_REC*** %9, align 8
  call void @llvm.dbg.declare(metadata %struct._LOG_ITEM_REC*** %9, metadata !2228, metadata !756), !dbg !2229
  call void @llvm.dbg.declare(metadata %struct._LOG_ITEM_REC** %10, metadata !2230, metadata !756), !dbg !2231
  call void @llvm.dbg.declare(metadata %struct._GSList** %11, metadata !2232, metadata !756), !dbg !2233
  %13 = load %struct._GSList*, %struct._GSList** @logs, align 8, !dbg !2234
  store %struct._GSList* %13, %struct._GSList** %11, align 8, !dbg !2236
  br label %14, !dbg !2237

; <label>:14:                                     ; preds = %50, %4
  %15 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !2238
  %16 = icmp ne %struct._GSList* %15, null, !dbg !2241
  br i1 %16, label %17, label %54, !dbg !2242

; <label>:17:                                     ; preds = %14
  call void @llvm.dbg.declare(metadata %struct._LOG_REC** %12, metadata !2243, metadata !756), !dbg !2245
  %18 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !2246
  %19 = getelementptr inbounds %struct._GSList, %struct._GSList* %18, i32 0, i32 0, !dbg !2247
  %20 = load i8*, i8** %19, align 8, !dbg !2247
  %21 = bitcast i8* %20 to %struct._LOG_REC*, !dbg !2246
  store %struct._LOG_REC* %21, %struct._LOG_REC** %12, align 8, !dbg !2245
  %22 = load i32, i32* %6, align 4, !dbg !2248
  %23 = icmp eq i32 %22, 0, !dbg !2250
  br i1 %23, label %24, label %33, !dbg !2251

; <label>:24:                                     ; preds = %17
  %25 = load %struct._LOG_REC*, %struct._LOG_REC** %12, align 8, !dbg !2252
  %26 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %25, i32 0, i32 8, !dbg !2254
  %27 = load i8, i8* %26, align 8, !dbg !2254
  %28 = lshr i8 %27, 2, !dbg !2254
  %29 = and i8 %28, 1, !dbg !2254
  %30 = zext i8 %29 to i32, !dbg !2254
  %31 = icmp eq i32 %30, 0, !dbg !2255
  br i1 %31, label %32, label %33, !dbg !2256

; <label>:32:                                     ; preds = %24
  br label %50, !dbg !2257

; <label>:33:                                     ; preds = %24, %17
  %34 = load %struct._LOG_REC*, %struct._LOG_REC** %12, align 8, !dbg !2259
  %35 = load i32, i32* %6, align 4, !dbg !2260
  %36 = load i8*, i8** %7, align 8, !dbg !2261
  %37 = load i8*, i8** %8, align 8, !dbg !2262
  %38 = call %struct._LOG_ITEM_REC* @log_item_find(%struct._LOG_REC* %34, i32 %35, i8* %36, i8* %37), !dbg !2263
  store %struct._LOG_ITEM_REC* %38, %struct._LOG_ITEM_REC** %10, align 8, !dbg !2264
  %39 = load %struct._LOG_ITEM_REC*, %struct._LOG_ITEM_REC** %10, align 8, !dbg !2265
  %40 = icmp ne %struct._LOG_ITEM_REC* %39, null, !dbg !2267
  br i1 %40, label %41, label %49, !dbg !2268

; <label>:41:                                     ; preds = %33
  %42 = load %struct._LOG_ITEM_REC**, %struct._LOG_ITEM_REC*** %9, align 8, !dbg !2269
  %43 = icmp ne %struct._LOG_ITEM_REC** %42, null, !dbg !2272
  br i1 %43, label %44, label %47, !dbg !2273

; <label>:44:                                     ; preds = %41
  %45 = load %struct._LOG_ITEM_REC*, %struct._LOG_ITEM_REC** %10, align 8, !dbg !2274
  %46 = load %struct._LOG_ITEM_REC**, %struct._LOG_ITEM_REC*** %9, align 8, !dbg !2276
  store %struct._LOG_ITEM_REC* %45, %struct._LOG_ITEM_REC** %46, align 8, !dbg !2277
  br label %47, !dbg !2278

; <label>:47:                                     ; preds = %44, %41
  %48 = load %struct._LOG_REC*, %struct._LOG_REC** %12, align 8, !dbg !2279
  store %struct._LOG_REC* %48, %struct._LOG_REC** %5, align 8, !dbg !2280
  br label %55, !dbg !2280

; <label>:49:                                     ; preds = %33
  br label %50, !dbg !2281

; <label>:50:                                     ; preds = %49, %32
  %51 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !2282
  %52 = getelementptr inbounds %struct._GSList, %struct._GSList* %51, i32 0, i32 1, !dbg !2284
  %53 = load %struct._GSList*, %struct._GSList** %52, align 8, !dbg !2284
  store %struct._GSList* %53, %struct._GSList** %11, align 8, !dbg !2285
  br label %14, !dbg !2286, !llvm.loop !2287

; <label>:54:                                     ; preds = %14
  store %struct._LOG_REC* null, %struct._LOG_REC** %5, align 8, !dbg !2289
  br label %55, !dbg !2289

; <label>:55:                                     ; preds = %54, %47
  %56 = load %struct._LOG_REC*, %struct._LOG_REC** %5, align 8, !dbg !2290
  ret %struct._LOG_REC* %56, !dbg !2290
}

declare i32 @g_ascii_strcasecmp(i8*, i8*) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare %struct._LOG_ITEM_REC* @log_item_find(%struct._LOG_REC*, i32, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @log_line(%struct._TEXT_DEST_REC*, i8*) #0 !dbg !2291 {
  %3 = alloca %struct._TEXT_DEST_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  store %struct._TEXT_DEST_REC* %0, %struct._TEXT_DEST_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC** %3, metadata !2294, metadata !756), !dbg !2295
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2296, metadata !756), !dbg !2297
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !2298, metadata !756), !dbg !2299
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !2300, metadata !756), !dbg !2301
  %7 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !2302
  %8 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %7, i32 0, i32 6, !dbg !2304
  %9 = load i32, i32* %8, align 8, !dbg !2304
  %10 = icmp eq i32 %9, 67108864, !dbg !2305
  br i1 %10, label %11, label %12, !dbg !2306

; <label>:11:                                     ; preds = %2
  br label %45, !dbg !2307

; <label>:12:                                     ; preds = %2
  %13 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !2308
  call void @autolog_open_check(%struct._TEXT_DEST_REC* %13), !dbg !2309
  %14 = load %struct._GSList*, %struct._GSList** @logs, align 8, !dbg !2310
  %15 = icmp eq %struct._GSList* %14, null, !dbg !2312
  br i1 %15, label %16, label %17, !dbg !2313

; <label>:16:                                     ; preds = %12
  br label %45, !dbg !2314

; <label>:17:                                     ; preds = %12
  %18 = load i8*, i8** %4, align 8, !dbg !2315
  %19 = call noalias i8** @g_strsplit(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i32 0, i32 0), i32 -1), !dbg !2316
  store i8** %19, i8*** %5, align 8, !dbg !2317
  %20 = load i8**, i8*** %5, align 8, !dbg !2318
  store i8** %20, i8*** %6, align 8, !dbg !2320
  br label %21, !dbg !2321

; <label>:21:                                     ; preds = %40, %17
  %22 = load i8**, i8*** %6, align 8, !dbg !2322
  %23 = load i8*, i8** %22, align 8, !dbg !2325
  %24 = icmp ne i8* %23, null, !dbg !2326
  br i1 %24, label %25, label %43, !dbg !2327

; <label>:25:                                     ; preds = %21
  %26 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !2328
  %27 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %26, i32 0, i32 0, !dbg !2329
  %28 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %27, align 8, !dbg !2329
  %29 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !2330
  %30 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %29, i32 0, i32 2, !dbg !2331
  %31 = load i8*, i8** %30, align 8, !dbg !2331
  %32 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !2332
  %33 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %32, i32 0, i32 3, !dbg !2333
  %34 = load i8*, i8** %33, align 8, !dbg !2333
  %35 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !2334
  %36 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %35, i32 0, i32 6, !dbg !2335
  %37 = load i32, i32* %36, align 8, !dbg !2335
  %38 = load i8**, i8*** %6, align 8, !dbg !2336
  %39 = load i8*, i8** %38, align 8, !dbg !2337
  call void @log_single_line(%struct._WINDOW_REC* %28, i8* %31, i8* %34, i32 %37, i8* %39), !dbg !2338
  br label %40, !dbg !2338

; <label>:40:                                     ; preds = %25
  %41 = load i8**, i8*** %6, align 8, !dbg !2339
  %42 = getelementptr inbounds i8*, i8** %41, i32 1, !dbg !2339
  store i8** %42, i8*** %6, align 8, !dbg !2339
  br label %21, !dbg !2341, !llvm.loop !2342

; <label>:43:                                     ; preds = %21
  %44 = load i8**, i8*** %5, align 8, !dbg !2344
  call void @g_strfreev(i8** %44), !dbg !2345
  br label %45, !dbg !2346

; <label>:45:                                     ; preds = %43, %16, %11
  ret void, !dbg !2347
}

; Function Attrs: nounwind uwtable
define internal void @autolog_open_check(%struct._TEXT_DEST_REC*) #0 !dbg !2349 {
  %2 = alloca %struct._TEXT_DEST_REC*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct._TEXT_DEST_REC* %0, %struct._TEXT_DEST_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC** %2, metadata !2352, metadata !756), !dbg !2353
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2354, metadata !756), !dbg !2355
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !2356, metadata !756), !dbg !2357
  %8 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %2, align 8, !dbg !2358
  %9 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %8, i32 0, i32 1, !dbg !2359
  %10 = load %struct._SERVER_REC*, %struct._SERVER_REC** %9, align 8, !dbg !2359
  store %struct._SERVER_REC* %10, %struct._SERVER_REC** %4, align 8, !dbg !2357
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2360, metadata !756), !dbg !2361
  %11 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %2, align 8, !dbg !2362
  %12 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %11, i32 0, i32 2, !dbg !2363
  %13 = load i8*, i8** %12, align 8, !dbg !2363
  store i8* %13, i8** %5, align 8, !dbg !2361
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2364, metadata !756), !dbg !2365
  %14 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %2, align 8, !dbg !2366
  %15 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %14, i32 0, i32 3, !dbg !2367
  %16 = load i8*, i8** %15, align 8, !dbg !2367
  store i8* %16, i8** %6, align 8, !dbg !2365
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2368, metadata !756), !dbg !2369
  %17 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %2, align 8, !dbg !2370
  %18 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %17, i32 0, i32 6, !dbg !2371
  %19 = load i32, i32* %18, align 8, !dbg !2371
  store i32 %19, i32* %7, align 4, !dbg !2369
  %20 = load i32, i32* %7, align 4, !dbg !2372
  %21 = icmp eq i32 %20, 256, !dbg !2374
  br i1 %21, label %35, label %22, !dbg !2375

; <label>:22:                                     ; preds = %1
  %23 = load i32, i32* @autolog_level, align 4, !dbg !2376
  %24 = load i32, i32* %7, align 4, !dbg !2377
  %25 = and i32 %23, %24, !dbg !2378
  %26 = icmp eq i32 %25, 0, !dbg !2379
  br i1 %26, label %35, label %27, !dbg !2380

; <label>:27:                                     ; preds = %22
  %28 = load i8*, i8** %6, align 8, !dbg !2381
  %29 = icmp eq i8* %28, null, !dbg !2383
  br i1 %29, label %35, label %30, !dbg !2384

; <label>:30:                                     ; preds = %27
  %31 = load i8*, i8** %6, align 8, !dbg !2385
  %32 = load i8, i8* %31, align 1, !dbg !2387
  %33 = sext i8 %32 to i32, !dbg !2387
  %34 = icmp eq i32 %33, 0, !dbg !2388
  br i1 %34, label %35, label %36, !dbg !2389

; <label>:35:                                     ; preds = %30, %27, %22, %1
  br label %69, !dbg !2391

; <label>:36:                                     ; preds = %30
  %37 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !2392
  %38 = icmp ne %struct._SERVER_REC* %37, null, !dbg !2392
  br i1 %38, label %39, label %43, !dbg !2392

; <label>:39:                                     ; preds = %36
  %40 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !2393
  %41 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %40, i32 0, i32 7, !dbg !2394
  %42 = load i8*, i8** %41, align 8, !dbg !2394
  br label %44, !dbg !2395

; <label>:43:                                     ; preds = %36
  br label %44, !dbg !2396

; <label>:44:                                     ; preds = %43, %39
  %45 = phi i8* [ %42, %39 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0), %43 ], !dbg !2398
  store i8* %45, i8** %3, align 8, !dbg !2400
  %46 = load i8**, i8*** @autolog_ignore_targets, align 8, !dbg !2401
  %47 = icmp ne i8** %46, null, !dbg !2403
  br i1 %47, label %48, label %54, !dbg !2404

; <label>:48:                                     ; preds = %44
  %49 = load i8**, i8*** @autolog_ignore_targets, align 8, !dbg !2405
  %50 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %2, align 8, !dbg !2406
  %51 = call i32 @strarray_find_dest(i8** %49, %struct._TEXT_DEST_REC* %50), !dbg !2407
  %52 = icmp ne i32 %51, 0, !dbg !2407
  br i1 %52, label %53, label %54, !dbg !2408

; <label>:53:                                     ; preds = %48
  br label %69, !dbg !2409

; <label>:54:                                     ; preds = %48, %44
  %55 = load i8*, i8** %6, align 8, !dbg !2410
  %56 = icmp ne i8* %55, null, !dbg !2412
  br i1 %56, label %57, label %69, !dbg !2413

; <label>:57:                                     ; preds = %54
  %58 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !2414
  %59 = load i8*, i8** %5, align 8, !dbg !2415
  %60 = load i8*, i8** %6, align 8, !dbg !2416
  %61 = call i32 @g_strcmp0(i8* %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i32 0, i32 0)), !dbg !2417
  %62 = icmp ne i32 %61, 0, !dbg !2417
  br i1 %62, label %63, label %65, !dbg !2417

; <label>:63:                                     ; preds = %57
  %64 = load i8*, i8** %6, align 8, !dbg !2418
  br label %67, !dbg !2420

; <label>:65:                                     ; preds = %57
  %66 = load i8*, i8** %3, align 8, !dbg !2421
  br label %67, !dbg !2423

; <label>:67:                                     ; preds = %65, %63
  %68 = phi i8* [ %64, %63 ], [ %66, %65 ], !dbg !2424
  call void @autolog_open(%struct._SERVER_REC* %58, i8* %59, i8* %68), !dbg !2426
  br label %69, !dbg !2426

; <label>:69:                                     ; preds = %35, %53, %67, %54
  ret void, !dbg !2427
}

; Function Attrs: nounwind uwtable
define internal void @log_single_line(%struct._WINDOW_REC*, i8*, i8*, i32, i8*) #0 !dbg !2428 {
  %6 = alloca %struct._WINDOW_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca [12 x i8], align 1
  %12 = alloca %struct._LOG_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %6, metadata !2431, metadata !756), !dbg !2432
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2433, metadata !756), !dbg !2434
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2435, metadata !756), !dbg !2436
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2437, metadata !756), !dbg !2438
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2439, metadata !756), !dbg !2440
  call void @llvm.dbg.declare(metadata [12 x i8]* %11, metadata !2441, metadata !756), !dbg !2442
  call void @llvm.dbg.declare(metadata %struct._LOG_REC** %12, metadata !2443, metadata !756), !dbg !2444
  %13 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %6, align 8, !dbg !2445
  %14 = icmp ne %struct._WINDOW_REC* %13, null, !dbg !2447
  br i1 %14, label %15, label %30, !dbg !2448

; <label>:15:                                     ; preds = %5
  %16 = getelementptr inbounds [12 x i8], [12 x i8]* %11, i32 0, i32 0, !dbg !2449
  %17 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %6, align 8, !dbg !2451
  %18 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %17, i32 0, i32 0, !dbg !2452
  %19 = load i32, i32* %18, align 8, !dbg !2452
  %20 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %16, i64 12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0), i32 %19), !dbg !2453
  %21 = getelementptr inbounds [12 x i8], [12 x i8]* %11, i32 0, i32 0, !dbg !2454
  %22 = call %struct._LOG_REC* @logs_find_item(i32 1, i8* %21, i8* null, %struct._LOG_ITEM_REC** null), !dbg !2455
  store %struct._LOG_REC* %22, %struct._LOG_REC** %12, align 8, !dbg !2456
  %23 = load %struct._LOG_REC*, %struct._LOG_REC** %12, align 8, !dbg !2457
  %24 = icmp ne %struct._LOG_REC* %23, null, !dbg !2459
  br i1 %24, label %25, label %29, !dbg !2460

; <label>:25:                                     ; preds = %15
  %26 = load %struct._LOG_REC*, %struct._LOG_REC** %12, align 8, !dbg !2461
  %27 = load i8*, i8** %10, align 8, !dbg !2462
  %28 = load i32, i32* %9, align 4, !dbg !2463
  call void @log_write_rec(%struct._LOG_REC* %26, i8* %27, i32 %28), !dbg !2464
  br label %29, !dbg !2464

; <label>:29:                                     ; preds = %25, %15
  br label %30, !dbg !2465

; <label>:30:                                     ; preds = %29, %5
  %31 = load i8*, i8** %7, align 8, !dbg !2466
  %32 = load i8*, i8** %8, align 8, !dbg !2467
  %33 = load i32, i32* %9, align 4, !dbg !2468
  %34 = load i8*, i8** %10, align 8, !dbg !2469
  call void @log_file_write(i8* %31, i8* %32, i32 %33, i8* %34, i32 0), !dbg !2470
  ret void, !dbg !2471
}

declare i32 @strarray_find_dest(i8**, %struct._TEXT_DEST_REC*) #1

; Function Attrs: nounwind uwtable
define internal void @autolog_open(%struct._SERVER_REC*, i8*, i8*) #0 !dbg !2472 {
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._LOG_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !2475, metadata !756), !dbg !2476
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2477, metadata !756), !dbg !2478
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2479, metadata !756), !dbg !2480
  call void @llvm.dbg.declare(metadata %struct._LOG_REC** %7, metadata !2481, metadata !756), !dbg !2482
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2483, metadata !756), !dbg !2484
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2485, metadata !756), !dbg !2486
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2487, metadata !756), !dbg !2488
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2489, metadata !756), !dbg !2490
  %12 = load i8*, i8** %6, align 8, !dbg !2491
  %13 = load i8*, i8** %5, align 8, !dbg !2492
  %14 = call %struct._LOG_REC* @logs_find_item(i32 0, i8* %12, i8* %13, %struct._LOG_ITEM_REC** null), !dbg !2493
  store %struct._LOG_REC* %14, %struct._LOG_REC** %7, align 8, !dbg !2494
  %15 = load %struct._LOG_REC*, %struct._LOG_REC** %7, align 8, !dbg !2495
  %16 = icmp ne %struct._LOG_REC* %15, null, !dbg !2497
  br i1 %16, label %17, label %28, !dbg !2498

; <label>:17:                                     ; preds = %3
  %18 = load %struct._LOG_REC*, %struct._LOG_REC** %7, align 8, !dbg !2499
  %19 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %18, i32 0, i32 8, !dbg !2501
  %20 = load i8, i8* %19, align 8, !dbg !2501
  %21 = lshr i8 %20, 1, !dbg !2501
  %22 = and i8 %21, 1, !dbg !2501
  %23 = zext i8 %22 to i32, !dbg !2501
  %24 = icmp ne i32 %23, 0, !dbg !2499
  br i1 %24, label %28, label %25, !dbg !2502

; <label>:25:                                     ; preds = %17
  %26 = load %struct._LOG_REC*, %struct._LOG_REC** %7, align 8, !dbg !2503
  %27 = call i32 @log_start_logging(%struct._LOG_REC* %26), !dbg !2505
  br label %95, !dbg !2506

; <label>:28:                                     ; preds = %17, %3
  %29 = load i8*, i8** %6, align 8, !dbg !2507
  %30 = call i8* @escape_target(i8* %29), !dbg !2508
  store i8* %30, i8** %10, align 8, !dbg !2509
  %31 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !2510
  %32 = icmp eq %struct._SERVER_REC* %31, null, !dbg !2512
  br i1 %32, label %33, label %35, !dbg !2513

; <label>:33:                                     ; preds = %28
  %34 = call %struct._CHAT_PROTOCOL_REC* @chat_protocol_get_default(), !dbg !2514
  br label %40, !dbg !2514

; <label>:35:                                     ; preds = %28
  %36 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !2516
  %37 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %36, i32 0, i32 1, !dbg !2518
  %38 = load i32, i32* %37, align 4, !dbg !2518
  %39 = call %struct._CHAT_PROTOCOL_REC* @chat_protocol_find_id(i32 %38), !dbg !2519
  br label %40, !dbg !2520

; <label>:40:                                     ; preds = %35, %33
  %41 = phi %struct._CHAT_PROTOCOL_REC* [ %34, %33 ], [ %39, %35 ], !dbg !2521
  %42 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %41, i32 0, i32 1, !dbg !2523
  %43 = load i8, i8* %42, align 4, !dbg !2523
  %44 = lshr i8 %43, 1, !dbg !2523
  %45 = and i8 %44, 1, !dbg !2523
  %46 = zext i8 %45 to i32, !dbg !2523
  %47 = icmp ne i32 %46, 0, !dbg !2524
  br i1 %47, label %48, label %51, !dbg !2524

; <label>:48:                                     ; preds = %40
  %49 = load i8*, i8** %10, align 8, !dbg !2525
  %50 = call i8* @ascii_strdown(i8* %49), !dbg !2526
  br label %51, !dbg !2526

; <label>:51:                                     ; preds = %48, %40
  %52 = load i8*, i8** %10, align 8, !dbg !2527
  %53 = load i8*, i8** %5, align 8, !dbg !2528
  %54 = call noalias i8* (i8*, ...) @g_strconcat(i8* %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0), i8* %53, i8* null), !dbg !2529
  store i8* %54, i8** %11, align 8, !dbg !2530
  %55 = load i8*, i8** %10, align 8, !dbg !2531
  call void @g_free(i8* %55), !dbg !2532
  %56 = load i8*, i8** @autolog_path, align 8, !dbg !2533
  %57 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !2534
  %58 = load i8*, i8** %11, align 8, !dbg !2535
  %59 = call i8* @parse_special_string(i8* %56, %struct._SERVER_REC* %57, i8* null, i8* %58, i32* null, i32 0), !dbg !2536
  store i8* %59, i8** %8, align 8, !dbg !2537
  %60 = load i8*, i8** %11, align 8, !dbg !2538
  call void @g_free(i8* %60), !dbg !2539
  %61 = load i8*, i8** %8, align 8, !dbg !2540
  %62 = call %struct._LOG_REC* @log_find(i8* %61), !dbg !2542
  %63 = icmp eq %struct._LOG_REC* %62, null, !dbg !2543
  br i1 %63, label %64, label %93, !dbg !2544

; <label>:64:                                     ; preds = %51
  %65 = load i8*, i8** %8, align 8, !dbg !2545
  %66 = load i32, i32* @autolog_level, align 4, !dbg !2547
  %67 = call %struct._LOG_REC* @log_create_rec(i8* %65, i32 %66), !dbg !2548
  store %struct._LOG_REC* %67, %struct._LOG_REC** %7, align 8, !dbg !2549
  %68 = call i32 @settings_get_bool(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0)), !dbg !2550
  %69 = icmp ne i32 %68, 0, !dbg !2550
  br i1 %69, label %73, label %70, !dbg !2552

; <label>:70:                                     ; preds = %64
  %71 = load %struct._LOG_REC*, %struct._LOG_REC** %7, align 8, !dbg !2553
  %72 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %71, i32 0, i32 7, !dbg !2554
  store i8* (i8*)* @log_colorizer_strip, i8* (i8*)** %72, align 8, !dbg !2555
  br label %73, !dbg !2553

; <label>:73:                                     ; preds = %70, %64
  %74 = load %struct._LOG_REC*, %struct._LOG_REC** %7, align 8, !dbg !2556
  %75 = load i8*, i8** %6, align 8, !dbg !2557
  %76 = load i8*, i8** %5, align 8, !dbg !2558
  call void @log_item_add(%struct._LOG_REC* %74, i32 0, i8* %75, i8* %76), !dbg !2559
  %77 = load %struct._LOG_REC*, %struct._LOG_REC** %7, align 8, !dbg !2560
  %78 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %77, i32 0, i32 1, !dbg !2561
  %79 = load i8*, i8** %78, align 8, !dbg !2561
  %80 = call noalias i8* @g_path_get_dirname(i8* %79), !dbg !2562
  store i8* %80, i8** %9, align 8, !dbg !2563
  %81 = load i8*, i8** %9, align 8, !dbg !2564
  %82 = load i32, i32* @log_dir_create_mode, align 4, !dbg !2565
  %83 = call i32 @g_mkdir_with_parents(i8* %81, i32 %82), !dbg !2566
  %84 = load i8*, i8** %9, align 8, !dbg !2567
  call void @g_free(i8* %84), !dbg !2568
  %85 = load %struct._LOG_REC*, %struct._LOG_REC** %7, align 8, !dbg !2569
  %86 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %85, i32 0, i32 8, !dbg !2570
  %87 = load i8, i8* %86, align 8, !dbg !2571
  %88 = and i8 %87, -5, !dbg !2571
  %89 = or i8 %88, 4, !dbg !2571
  store i8 %89, i8* %86, align 8, !dbg !2571
  %90 = load %struct._LOG_REC*, %struct._LOG_REC** %7, align 8, !dbg !2572
  call void @log_update(%struct._LOG_REC* %90), !dbg !2573
  %91 = load %struct._LOG_REC*, %struct._LOG_REC** %7, align 8, !dbg !2574
  %92 = call i32 @log_start_logging(%struct._LOG_REC* %91), !dbg !2575
  br label %93, !dbg !2576

; <label>:93:                                     ; preds = %73, %51
  %94 = load i8*, i8** %8, align 8, !dbg !2577
  call void @g_free(i8* %94), !dbg !2578
  br label %95, !dbg !2579

; <label>:95:                                     ; preds = %93, %25
  ret void, !dbg !2580
}

declare i32 @g_strcmp0(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i8* @escape_target(i8*) #0 !dbg !2582 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2583, metadata !756), !dbg !2584
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2585, metadata !756), !dbg !2586
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2587, metadata !756), !dbg !2588
  %5 = load i8*, i8** %2, align 8, !dbg !2589
  %6 = call i64 @strlen(i8* %5) #7, !dbg !2590
  %7 = mul i64 %6, 2, !dbg !2591
  %8 = add i64 %7, 1, !dbg !2592
  %9 = call noalias i8* @g_malloc(i64 %8), !dbg !2593
  store i8* %9, i8** %3, align 8, !dbg !2595
  store i8* %9, i8** %4, align 8, !dbg !2596
  br label %10, !dbg !2597

; <label>:10:                                     ; preds = %37, %1
  %11 = load i8*, i8** %2, align 8, !dbg !2598
  %12 = load i8, i8* %11, align 1, !dbg !2599
  %13 = sext i8 %12 to i32, !dbg !2599
  %14 = icmp ne i32 %13, 0, !dbg !2600
  br i1 %14, label %15, label %40, !dbg !2601

; <label>:15:                                     ; preds = %10
  %16 = load i8*, i8** %2, align 8, !dbg !2602
  %17 = load i8, i8* %16, align 1, !dbg !2605
  %18 = sext i8 %17 to i32, !dbg !2605
  %19 = call i8* @strchr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i32 0, i32 0), i32 %18) #7, !dbg !2606
  %20 = icmp ne i8* %19, null, !dbg !2606
  br i1 %20, label %21, label %24, !dbg !2607

; <label>:21:                                     ; preds = %15
  %22 = load i8*, i8** %4, align 8, !dbg !2608
  %23 = getelementptr inbounds i8, i8* %22, i32 1, !dbg !2608
  store i8* %23, i8** %4, align 8, !dbg !2608
  store i8 95, i8* %22, align 1, !dbg !2609
  br label %37, !dbg !2610

; <label>:24:                                     ; preds = %15
  %25 = load i8*, i8** %2, align 8, !dbg !2611
  %26 = load i8, i8* %25, align 1, !dbg !2614
  %27 = sext i8 %26 to i32, !dbg !2614
  %28 = icmp eq i32 %27, 37, !dbg !2615
  br i1 %28, label %29, label %32, !dbg !2616

; <label>:29:                                     ; preds = %24
  %30 = load i8*, i8** %4, align 8, !dbg !2617
  %31 = getelementptr inbounds i8, i8* %30, i32 1, !dbg !2617
  store i8* %31, i8** %4, align 8, !dbg !2617
  store i8 37, i8* %30, align 1, !dbg !2618
  br label %32, !dbg !2619

; <label>:32:                                     ; preds = %29, %24
  %33 = load i8*, i8** %2, align 8, !dbg !2620
  %34 = load i8, i8* %33, align 1, !dbg !2621
  %35 = load i8*, i8** %4, align 8, !dbg !2622
  %36 = getelementptr inbounds i8, i8* %35, i32 1, !dbg !2622
  store i8* %36, i8** %4, align 8, !dbg !2622
  store i8 %34, i8* %35, align 1, !dbg !2623
  br label %37

; <label>:37:                                     ; preds = %32, %21
  %38 = load i8*, i8** %2, align 8, !dbg !2624
  %39 = getelementptr inbounds i8, i8* %38, i32 1, !dbg !2624
  store i8* %39, i8** %2, align 8, !dbg !2624
  br label %10, !dbg !2625, !llvm.loop !2627

; <label>:40:                                     ; preds = %10
  %41 = load i8*, i8** %4, align 8, !dbg !2628
  store i8 0, i8* %41, align 1, !dbg !2629
  %42 = load i8*, i8** %3, align 8, !dbg !2630
  ret i8* %42, !dbg !2631
}

declare %struct._CHAT_PROTOCOL_REC* @chat_protocol_get_default() #1

declare %struct._CHAT_PROTOCOL_REC* @chat_protocol_find_id(i32) #1

declare i8* @ascii_strdown(i8*) #1

declare noalias i8* @g_strconcat(i8*, ...) #1

declare i8* @parse_special_string(i8*, %struct._SERVER_REC*, i8*, i8*, i32*, i32) #1

declare noalias i8* @g_path_get_dirname(i8*) #1

declare i32 @g_mkdir_with_parents(i8*, i32) #1

declare noalias i8* @g_malloc(i64) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

declare void @log_write_rec(%struct._LOG_REC*, i8*, i32) #1

declare void @log_file_write(i8*, i8*, i32, i8*, i32) #1

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #5

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

declare i32 @config_node_get_bool(%struct._CONFIG_NODE*, i8*, i32) #1

declare void @config_node_set_bool(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i32) #1

declare void @config_node_set_str(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i8*) #1

declare i8* @format_get_text_theme_charargs(%struct.THEME_REC*, i8*, %struct._TEXT_DEST_REC*, i32, i8**) #1

declare i8* @format_get_level_tag(%struct.THEME_REC*, %struct._TEXT_DEST_REC*) #1

declare i8* @format_add_linestart(i8*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!405, !406}
!llvm.ident = !{!407}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !334, globals: !359)
!1 = !DIFile(filename: "line232-fe-log.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !10, !15, !24, !35, !40, !71, !313}
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
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 4, size: 32, align: 32, elements: !37)
!36 = !DIFile(filename: "../../../src/core/log.h", directory: "/home/lichi/Desktop/irssi/task1")
!37 = !{!38, !39}
!38 = !DIEnumerator(name: "LOG_ITEM_TARGET", value: 0)
!39 = !DIEnumerator(name: "LOG_ITEM_WINDOW_REFNUM", value: 1)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !41, line: 10, size: 32, align: 32, elements: !42)
!41 = !DIFile(filename: "../../../src/core/levels.h", directory: "/home/lichi/Desktop/irssi/task1")
!42 = !{!43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70}
!43 = !DIEnumerator(name: "MSGLEVEL_CRAP", value: 1)
!44 = !DIEnumerator(name: "MSGLEVEL_MSGS", value: 2)
!45 = !DIEnumerator(name: "MSGLEVEL_PUBLIC", value: 4)
!46 = !DIEnumerator(name: "MSGLEVEL_NOTICES", value: 8)
!47 = !DIEnumerator(name: "MSGLEVEL_SNOTES", value: 16)
!48 = !DIEnumerator(name: "MSGLEVEL_CTCPS", value: 32)
!49 = !DIEnumerator(name: "MSGLEVEL_ACTIONS", value: 64)
!50 = !DIEnumerator(name: "MSGLEVEL_JOINS", value: 128)
!51 = !DIEnumerator(name: "MSGLEVEL_PARTS", value: 256)
!52 = !DIEnumerator(name: "MSGLEVEL_QUITS", value: 512)
!53 = !DIEnumerator(name: "MSGLEVEL_KICKS", value: 1024)
!54 = !DIEnumerator(name: "MSGLEVEL_MODES", value: 2048)
!55 = !DIEnumerator(name: "MSGLEVEL_TOPICS", value: 4096)
!56 = !DIEnumerator(name: "MSGLEVEL_WALLOPS", value: 8192)
!57 = !DIEnumerator(name: "MSGLEVEL_INVITES", value: 16384)
!58 = !DIEnumerator(name: "MSGLEVEL_NICKS", value: 32768)
!59 = !DIEnumerator(name: "MSGLEVEL_DCC", value: 65536)
!60 = !DIEnumerator(name: "MSGLEVEL_DCCMSGS", value: 131072)
!61 = !DIEnumerator(name: "MSGLEVEL_CLIENTNOTICE", value: 262144)
!62 = !DIEnumerator(name: "MSGLEVEL_CLIENTCRAP", value: 524288)
!63 = !DIEnumerator(name: "MSGLEVEL_CLIENTERROR", value: 1048576)
!64 = !DIEnumerator(name: "MSGLEVEL_HILIGHT", value: 2097152)
!65 = !DIEnumerator(name: "MSGLEVEL_ALL", value: 4194303)
!66 = !DIEnumerator(name: "MSGLEVEL_NOHILIGHT", value: 16777216)
!67 = !DIEnumerator(name: "MSGLEVEL_NO_ACT", value: 33554432)
!68 = !DIEnumerator(name: "MSGLEVEL_NEVER", value: 67108864)
!69 = !DIEnumerator(name: "MSGLEVEL_LASTLOG", value: 134217728)
!70 = !DIEnumerator(name: "MSGLEVEL_HIDDEN", value: 268435456)
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !72, line: 3, size: 32, align: 32, elements: !73)
!72 = !DIFile(filename: "module-formats.h", directory: "/home/lichi/Desktop/irssi/task1")
!73 = !{!74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312}
!74 = !DIEnumerator(name: "TXT_MODULE_NAME", value: 0)
!75 = !DIEnumerator(name: "TXT_FILL_1", value: 1)
!76 = !DIEnumerator(name: "TXT_LINE_START", value: 2)
!77 = !DIEnumerator(name: "TXT_LINE_START_IRSSI", value: 3)
!78 = !DIEnumerator(name: "TXT_TIMESTAMP", value: 4)
!79 = !DIEnumerator(name: "TXT_SERVERTAG", value: 5)
!80 = !DIEnumerator(name: "TXT_DAYCHANGE", value: 6)
!81 = !DIEnumerator(name: "TXT_TALKING_WITH", value: 7)
!82 = !DIEnumerator(name: "TXT_REFNUM_TOO_LOW", value: 8)
!83 = !DIEnumerator(name: "TXT_ERROR_SERVER_STICKY", value: 9)
!84 = !DIEnumerator(name: "TXT_SET_SERVER_STICKY", value: 10)
!85 = !DIEnumerator(name: "TXT_UNSET_SERVER_STICKY", value: 11)
!86 = !DIEnumerator(name: "TXT_WINDOW_NAME_NOT_UNIQUE", value: 12)
!87 = !DIEnumerator(name: "TXT_WINDOW_LEVEL", value: 13)
!88 = !DIEnumerator(name: "TXT_WINDOW_SET_IMMORTAL", value: 14)
!89 = !DIEnumerator(name: "TXT_WINDOW_UNSET_IMMORTAL", value: 15)
!90 = !DIEnumerator(name: "TXT_WINDOW_IMMORTAL_ERROR", value: 16)
!91 = !DIEnumerator(name: "TXT_WINDOWLIST_HEADER", value: 17)
!92 = !DIEnumerator(name: "TXT_WINDOWLIST_LINE", value: 18)
!93 = !DIEnumerator(name: "TXT_WINDOWLIST_FOOTER", value: 19)
!94 = !DIEnumerator(name: "TXT_WINDOWS_LAYOUT_SAVED", value: 20)
!95 = !DIEnumerator(name: "TXT_WINDOWS_LAYOUT_RESET", value: 21)
!96 = !DIEnumerator(name: "TXT_WINDOW_INFO_HEADER", value: 22)
!97 = !DIEnumerator(name: "TXT_WINDOW_INFO_FOOTER", value: 23)
!98 = !DIEnumerator(name: "TXT_WINDOW_INFO_REFNUM", value: 24)
!99 = !DIEnumerator(name: "TXT_WINDOW_INFO_REFNUM_STICKY", value: 25)
!100 = !DIEnumerator(name: "TXT_WINDOW_INFO_NAME", value: 26)
!101 = !DIEnumerator(name: "TXT_WINDOW_INFO_HISTORY", value: 27)
!102 = !DIEnumerator(name: "TXT_WINDOW_INFO_IMMORTAL", value: 28)
!103 = !DIEnumerator(name: "TXT_WINDOW_INFO_SIZE", value: 29)
!104 = !DIEnumerator(name: "TXT_WINDOW_INFO_LEVEL", value: 30)
!105 = !DIEnumerator(name: "TXT_WINDOW_INFO_SERVER", value: 31)
!106 = !DIEnumerator(name: "TXT_WINDOW_INFO_SERVER_STICKY", value: 32)
!107 = !DIEnumerator(name: "TXT_WINDOW_INFO_THEME", value: 33)
!108 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEMS_HEADER", value: 34)
!109 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEM", value: 35)
!110 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEMS_FOOTER", value: 36)
!111 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEMS_HEADER", value: 37)
!112 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEM", value: 38)
!113 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEMS_FOOTER", value: 39)
!114 = !DIEnumerator(name: "TXT_FILL_2", value: 40)
!115 = !DIEnumerator(name: "TXT_LOOKING_UP", value: 41)
!116 = !DIEnumerator(name: "TXT_CONNECTING", value: 42)
!117 = !DIEnumerator(name: "TXT_RECONNECTING", value: 43)
!118 = !DIEnumerator(name: "TXT_CONNECTION_ESTABLISHED", value: 44)
!119 = !DIEnumerator(name: "TXT_CANT_CONNECT", value: 45)
!120 = !DIEnumerator(name: "TXT_CONNECTION_LOST", value: 46)
!121 = !DIEnumerator(name: "TXT_LAG_DISCONNECTED", value: 47)
!122 = !DIEnumerator(name: "TXT_DISCONNECTED", value: 48)
!123 = !DIEnumerator(name: "TXT_SERVER_QUIT", value: 49)
!124 = !DIEnumerator(name: "TXT_SERVER_CHANGED", value: 50)
!125 = !DIEnumerator(name: "TXT_UNKNOWN_SERVER_TAG", value: 51)
!126 = !DIEnumerator(name: "TXT_NO_CONNECTED_SERVERS", value: 52)
!127 = !DIEnumerator(name: "TXT_SERVER_LIST", value: 53)
!128 = !DIEnumerator(name: "TXT_SERVER_LOOKUP_LIST", value: 54)
!129 = !DIEnumerator(name: "TXT_SERVER_RECONNECT_LIST", value: 55)
!130 = !DIEnumerator(name: "TXT_RECONNECT_REMOVED", value: 56)
!131 = !DIEnumerator(name: "TXT_RECONNECT_NOT_FOUND", value: 57)
!132 = !DIEnumerator(name: "TXT_SETUPSERVER_ADDED", value: 58)
!133 = !DIEnumerator(name: "TXT_SETUPSERVER_REMOVED", value: 59)
!134 = !DIEnumerator(name: "TXT_SETUPSERVER_NOT_FOUND", value: 60)
!135 = !DIEnumerator(name: "TXT_YOUR_NICK", value: 61)
!136 = !DIEnumerator(name: "TXT_FILL_3", value: 62)
!137 = !DIEnumerator(name: "TXT_JOIN", value: 63)
!138 = !DIEnumerator(name: "TXT_PART", value: 64)
!139 = !DIEnumerator(name: "TXT_KICK", value: 65)
!140 = !DIEnumerator(name: "TXT_QUIT", value: 66)
!141 = !DIEnumerator(name: "TXT_QUIT_ONCE", value: 67)
!142 = !DIEnumerator(name: "TXT_INVITE", value: 68)
!143 = !DIEnumerator(name: "TXT_NOT_INVITED", value: 69)
!144 = !DIEnumerator(name: "TXT_NEW_TOPIC", value: 70)
!145 = !DIEnumerator(name: "TXT_TOPIC_UNSET", value: 71)
!146 = !DIEnumerator(name: "TXT_YOUR_NICK_CHANGED", value: 72)
!147 = !DIEnumerator(name: "TXT_NICK_CHANGED", value: 73)
!148 = !DIEnumerator(name: "TXT_TALKING_IN", value: 74)
!149 = !DIEnumerator(name: "TXT_NOT_IN_CHANNELS", value: 75)
!150 = !DIEnumerator(name: "TXT_CURRENT_CHANNEL", value: 76)
!151 = !DIEnumerator(name: "TXT_NAMES", value: 77)
!152 = !DIEnumerator(name: "TXT_NAMES_PREFIX", value: 78)
!153 = !DIEnumerator(name: "TXT_NAMES_NICK_OP", value: 79)
!154 = !DIEnumerator(name: "TXT_NAMES_NICK_HALFOP", value: 80)
!155 = !DIEnumerator(name: "TXT_NAMES_NICK_VOICE", value: 81)
!156 = !DIEnumerator(name: "TXT_NAMES_NICK", value: 82)
!157 = !DIEnumerator(name: "TXT_ENDOFNAMES", value: 83)
!158 = !DIEnumerator(name: "TXT_CHANLIST_HEADER", value: 84)
!159 = !DIEnumerator(name: "TXT_CHANLIST_LINE", value: 85)
!160 = !DIEnumerator(name: "TXT_CHANSETUP_NOT_FOUND", value: 86)
!161 = !DIEnumerator(name: "TXT_CHANSETUP_ADDED", value: 87)
!162 = !DIEnumerator(name: "TXT_CHANSETUP_REMOVED", value: 88)
!163 = !DIEnumerator(name: "TXT_CHANSETUP_HEADER", value: 89)
!164 = !DIEnumerator(name: "TXT_CHANSETUP_LINE", value: 90)
!165 = !DIEnumerator(name: "TXT_CHANSETUP_FOOTER", value: 91)
!166 = !DIEnumerator(name: "TXT_FILL_4", value: 92)
!167 = !DIEnumerator(name: "TXT_OWN_MSG", value: 93)
!168 = !DIEnumerator(name: "TXT_OWN_MSG_CHANNEL", value: 94)
!169 = !DIEnumerator(name: "TXT_OWN_MSG_PRIVATE", value: 95)
!170 = !DIEnumerator(name: "TXT_OWN_MSG_PRIVATE_QUERY", value: 96)
!171 = !DIEnumerator(name: "TXT_PUBMSG_ME", value: 97)
!172 = !DIEnumerator(name: "TXT_PUBMSG_ME_CHANNEL", value: 98)
!173 = !DIEnumerator(name: "TXT_PUBMSG_HILIGHT", value: 99)
!174 = !DIEnumerator(name: "TXT_PUBMSG_HILIGHT_CHANNEL", value: 100)
!175 = !DIEnumerator(name: "TXT_PUBMSG", value: 101)
!176 = !DIEnumerator(name: "TXT_PUBMSG_CHANNEL", value: 102)
!177 = !DIEnumerator(name: "TXT_MSG_PRIVATE", value: 103)
!178 = !DIEnumerator(name: "TXT_MSG_PRIVATE_QUERY", value: 104)
!179 = !DIEnumerator(name: "TXT_NO_MSGS_GOT", value: 105)
!180 = !DIEnumerator(name: "TXT_NO_MSGS_SENT", value: 106)
!181 = !DIEnumerator(name: "TXT_FILL_5", value: 107)
!182 = !DIEnumerator(name: "TXT_QUERY_START", value: 108)
!183 = !DIEnumerator(name: "TXT_QUERY_STOP", value: 109)
!184 = !DIEnumerator(name: "TXT_NO_QUERY", value: 110)
!185 = !DIEnumerator(name: "TXT_QUERY_SERVER_CHANGED", value: 111)
!186 = !DIEnumerator(name: "TXT_FILL_6", value: 112)
!187 = !DIEnumerator(name: "TXT_HILIGHT_HEADER", value: 113)
!188 = !DIEnumerator(name: "TXT_HILIGHT_LINE", value: 114)
!189 = !DIEnumerator(name: "TXT_HILIGHT_FOOTER", value: 115)
!190 = !DIEnumerator(name: "TXT_HILIGHT_NOT_FOUND", value: 116)
!191 = !DIEnumerator(name: "TXT_HILIGHT_REMOVED", value: 117)
!192 = !DIEnumerator(name: "TXT_FILL_7", value: 118)
!193 = !DIEnumerator(name: "TXT_ALIAS_ADDED", value: 119)
!194 = !DIEnumerator(name: "TXT_ALIAS_REMOVED", value: 120)
!195 = !DIEnumerator(name: "TXT_ALIAS_NOT_FOUND", value: 121)
!196 = !DIEnumerator(name: "TXT_ALIASLIST_HEADER", value: 122)
!197 = !DIEnumerator(name: "TXT_ALIASLIST_LINE", value: 123)
!198 = !DIEnumerator(name: "TXT_ALIASLIST_FOOTER", value: 124)
!199 = !DIEnumerator(name: "TXT_FILL_8", value: 125)
!200 = !DIEnumerator(name: "TXT_LOG_OPENED", value: 126)
!201 = !DIEnumerator(name: "TXT_LOG_CLOSED", value: 127)
!202 = !DIEnumerator(name: "TXT_LOG_CREATE_FAILED", value: 128)
!203 = !DIEnumerator(name: "TXT_LOG_LOCKED", value: 129)
!204 = !DIEnumerator(name: "TXT_LOG_NOT_OPEN", value: 130)
!205 = !DIEnumerator(name: "TXT_LOG_STARTED", value: 131)
!206 = !DIEnumerator(name: "TXT_LOG_STOPPED", value: 132)
!207 = !DIEnumerator(name: "TXT_LOG_LIST_HEADER", value: 133)
!208 = !DIEnumerator(name: "TXT_LOG_LIST", value: 134)
!209 = !DIEnumerator(name: "TXT_LOG_LIST_FOOTER", value: 135)
!210 = !DIEnumerator(name: "TXT_WINDOWLOG_FILE", value: 136)
!211 = !DIEnumerator(name: "TXT_WINDOWLOG_FILE_LOGGING", value: 137)
!212 = !DIEnumerator(name: "TXT_LOG_NO_AWAY_MSGS", value: 138)
!213 = !DIEnumerator(name: "TXT_LOG_AWAY_MSGS", value: 139)
!214 = !DIEnumerator(name: "TXT_FILL_9", value: 140)
!215 = !DIEnumerator(name: "TXT_MODULE_HEADER", value: 141)
!216 = !DIEnumerator(name: "TXT_MODULE_LINE", value: 142)
!217 = !DIEnumerator(name: "TXT_MODULE_FOOTER", value: 143)
!218 = !DIEnumerator(name: "TXT_MODULE_ALREADY_LOADED", value: 144)
!219 = !DIEnumerator(name: "TXT_MODULE_NOT_LOADED", value: 145)
!220 = !DIEnumerator(name: "TXT_MODULE_LOAD_ERROR", value: 146)
!221 = !DIEnumerator(name: "TXT_MODULE_VERSION_MISMATCH", value: 147)
!222 = !DIEnumerator(name: "TXT_MODULE_INVALID", value: 148)
!223 = !DIEnumerator(name: "TXT_MODULE_LOADED", value: 149)
!224 = !DIEnumerator(name: "TXT_MODULE_UNLOADED", value: 150)
!225 = !DIEnumerator(name: "TXT_FILL_10", value: 151)
!226 = !DIEnumerator(name: "TXT_COMMAND_UNKNOWN", value: 152)
!227 = !DIEnumerator(name: "TXT_COMMAND_AMBIGUOUS", value: 153)
!228 = !DIEnumerator(name: "TXT_OPTION_UNKNOWN", value: 154)
!229 = !DIEnumerator(name: "TXT_OPTION_AMBIGUOUS", value: 155)
!230 = !DIEnumerator(name: "TXT_OPTION_MISSING_ARG", value: 156)
!231 = !DIEnumerator(name: "TXT_NOT_ENOUGH_PARAMS", value: 157)
!232 = !DIEnumerator(name: "TXT_NOT_CONNECTED", value: 158)
!233 = !DIEnumerator(name: "TXT_NOT_JOINED", value: 159)
!234 = !DIEnumerator(name: "TXT_CHAN_NOT_FOUND", value: 160)
!235 = !DIEnumerator(name: "TXT_CHAN_NOT_SYNCED", value: 161)
!236 = !DIEnumerator(name: "TXT_ILLEGAL_PROTO", value: 162)
!237 = !DIEnumerator(name: "TXT_NOT_GOOD_IDEA", value: 163)
!238 = !DIEnumerator(name: "TXT_INVALID_NUMBER", value: 164)
!239 = !DIEnumerator(name: "TXT_INVALID_TIME", value: 165)
!240 = !DIEnumerator(name: "TXT_INVALID_LEVEL", value: 166)
!241 = !DIEnumerator(name: "TXT_INVALID_SIZE", value: 167)
!242 = !DIEnumerator(name: "TXT_INVALID_CHARSET", value: 168)
!243 = !DIEnumerator(name: "TXT_INVALID_CHOICE", value: 169)
!244 = !DIEnumerator(name: "TXT_EVAL_MAX_RECURSE", value: 170)
!245 = !DIEnumerator(name: "TXT_PROGRAM_NOT_FOUND", value: 171)
!246 = !DIEnumerator(name: "TXT_NO_SERVER_DEFINED", value: 172)
!247 = !DIEnumerator(name: "TXT_FILL_11", value: 173)
!248 = !DIEnumerator(name: "TXT_THEME_SAVED", value: 174)
!249 = !DIEnumerator(name: "TXT_THEME_SAVE_FAILED", value: 175)
!250 = !DIEnumerator(name: "TXT_THEME_NOT_FOUND", value: 176)
!251 = !DIEnumerator(name: "TXT_THEME_CHANGED", value: 177)
!252 = !DIEnumerator(name: "TXT_WINDOW_THEME", value: 178)
!253 = !DIEnumerator(name: "TXT_WINDOW_THEME_DEFAULT", value: 179)
!254 = !DIEnumerator(name: "TXT_WINDOW_THEME_CHANGED", value: 180)
!255 = !DIEnumerator(name: "TXT_WINDOW_THEME_REMOVED", value: 181)
!256 = !DIEnumerator(name: "TXT_FORMAT_TITLE", value: 182)
!257 = !DIEnumerator(name: "TXT_FORMAT_SUBTITLE", value: 183)
!258 = !DIEnumerator(name: "TXT_FORMAT_ITEM", value: 184)
!259 = !DIEnumerator(name: "TXT_FILL_12", value: 185)
!260 = !DIEnumerator(name: "TXT_IGNORED", value: 186)
!261 = !DIEnumerator(name: "TXT_IGNORED_OPTIONS", value: 187)
!262 = !DIEnumerator(name: "TXT_UNIGNORED", value: 188)
!263 = !DIEnumerator(name: "TXT_IGNORE_NOT_FOUND", value: 189)
!264 = !DIEnumerator(name: "TXT_IGNORE_NO_IGNORES", value: 190)
!265 = !DIEnumerator(name: "TXT_IGNORE_HEADER", value: 191)
!266 = !DIEnumerator(name: "TXT_IGNORE_LINE", value: 192)
!267 = !DIEnumerator(name: "TXT_IGNORE_FOOTER", value: 193)
!268 = !DIEnumerator(name: "TXT_FILL_13", value: 194)
!269 = !DIEnumerator(name: "TXT_NOT_CHANNEL_OR_QUERY", value: 195)
!270 = !DIEnumerator(name: "TXT_CONVERSION_ADDED", value: 196)
!271 = !DIEnumerator(name: "TXT_CONVERSION_REMOVED", value: 197)
!272 = !DIEnumerator(name: "TXT_CONVERSION_NOT_FOUND", value: 198)
!273 = !DIEnumerator(name: "TXT_CONVERSION_NO_TRANSLITS", value: 199)
!274 = !DIEnumerator(name: "TXT_RECODE_HEADER", value: 200)
!275 = !DIEnumerator(name: "TXT_RECODE_LINE", value: 201)
!276 = !DIEnumerator(name: "TXT_FILL_14", value: 202)
!277 = !DIEnumerator(name: "TXT_UNKNOWN_CHAT_PROTOCOL", value: 203)
!278 = !DIEnumerator(name: "TXT_UNKNOWN_CHATNET", value: 204)
!279 = !DIEnumerator(name: "TXT_NOT_TOGGLE", value: 205)
!280 = !DIEnumerator(name: "TXT_PERL_ERROR", value: 206)
!281 = !DIEnumerator(name: "TXT_BIND_HEADER", value: 207)
!282 = !DIEnumerator(name: "TXT_BIND_LIST", value: 208)
!283 = !DIEnumerator(name: "TXT_BIND_COMMAND_LIST", value: 209)
!284 = !DIEnumerator(name: "TXT_BIND_FOOTER", value: 210)
!285 = !DIEnumerator(name: "TXT_BIND_UNKNOWN_ID", value: 211)
!286 = !DIEnumerator(name: "TXT_CONFIG_SAVED", value: 212)
!287 = !DIEnumerator(name: "TXT_CONFIG_RELOADED", value: 213)
!288 = !DIEnumerator(name: "TXT_CONFIG_MODIFIED", value: 214)
!289 = !DIEnumerator(name: "TXT_GLIB_ERROR", value: 215)
!290 = !DIEnumerator(name: "TXT_OVERWRITE_CONFIG", value: 216)
!291 = !DIEnumerator(name: "TXT_SET_TITLE", value: 217)
!292 = !DIEnumerator(name: "TXT_SET_ITEM", value: 218)
!293 = !DIEnumerator(name: "TXT_SET_UNKNOWN", value: 219)
!294 = !DIEnumerator(name: "TXT_SET_NOT_BOOLEAN", value: 220)
!295 = !DIEnumerator(name: "TXT_NO_COMPLETIONS", value: 221)
!296 = !DIEnumerator(name: "TXT_COMPLETION_REMOVED", value: 222)
!297 = !DIEnumerator(name: "TXT_COMPLETION_HEADER", value: 223)
!298 = !DIEnumerator(name: "TXT_COMPLETION_LINE", value: 224)
!299 = !DIEnumerator(name: "TXT_COMPLETION_FOOTER", value: 225)
!300 = !DIEnumerator(name: "TXT_CAPSICUM_ENABLED", value: 226)
!301 = !DIEnumerator(name: "TXT_CAPSICUM_DISABLED", value: 227)
!302 = !DIEnumerator(name: "TXT_CAPSICUM_FAILED", value: 228)
!303 = !DIEnumerator(name: "TLS_FILL_15", value: 229)
!304 = !DIEnumerator(name: "TXT_TLS_EPHEMERAL_KEY", value: 230)
!305 = !DIEnumerator(name: "TXT_TLS_EPHEMERAL_KEY_UNAVAILBLE", value: 231)
!306 = !DIEnumerator(name: "TXT_TLS_PUBKEY", value: 232)
!307 = !DIEnumerator(name: "TXT_TLS_CERT_HEADER", value: 233)
!308 = !DIEnumerator(name: "TXT_TLS_CERT_SUBJECT", value: 234)
!309 = !DIEnumerator(name: "TXT_TLS_CERT_ISSUER", value: 235)
!310 = !DIEnumerator(name: "TXT_TLS_PUBKEY_FINGERPRINT", value: 236)
!311 = !DIEnumerator(name: "TXT_TLS_CERT_FINGERPRINT", value: 237)
!312 = !DIEnumerator(name: "TXT_TLS_PROTOCOL_VERSION", value: 238)
!313 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !314, line: 25, size: 32, align: 32, elements: !315)
!314 = !DIFile(filename: "../../../src/core/commands.h", directory: "/home/lichi/Desktop/irssi/task1")
!315 = !{!316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333}
!316 = !DIEnumerator(name: "CMDERR_OPTION_UNKNOWN", value: -3)
!317 = !DIEnumerator(name: "CMDERR_OPTION_AMBIGUOUS", value: -2)
!318 = !DIEnumerator(name: "CMDERR_OPTION_ARG_MISSING", value: -1)
!319 = !DIEnumerator(name: "CMDERR_UNKNOWN", value: 0)
!320 = !DIEnumerator(name: "CMDERR_AMBIGUOUS", value: 1)
!321 = !DIEnumerator(name: "CMDERR_ERRNO", value: 2)
!322 = !DIEnumerator(name: "CMDERR_NOT_ENOUGH_PARAMS", value: 3)
!323 = !DIEnumerator(name: "CMDERR_NOT_CONNECTED", value: 4)
!324 = !DIEnumerator(name: "CMDERR_NOT_JOINED", value: 5)
!325 = !DIEnumerator(name: "CMDERR_CHAN_NOT_FOUND", value: 6)
!326 = !DIEnumerator(name: "CMDERR_CHAN_NOT_SYNCED", value: 7)
!327 = !DIEnumerator(name: "CMDERR_ILLEGAL_PROTO", value: 8)
!328 = !DIEnumerator(name: "CMDERR_NOT_GOOD_IDEA", value: 9)
!329 = !DIEnumerator(name: "CMDERR_INVALID_TIME", value: 10)
!330 = !DIEnumerator(name: "CMDERR_INVALID_CHARSET", value: 11)
!331 = !DIEnumerator(name: "CMDERR_EVAL_MAX_RECURSE", value: 12)
!332 = !DIEnumerator(name: "CMDERR_PROGRAM_NOT_FOUND", value: 13)
!333 = !DIEnumerator(name: "CMDERR_NO_SERVER_DEFINED", value: 14)
!334 = !{!335, !344, !345, !352, !355, !343, !357, !341}
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64, align: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!339, !343}
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !340, line: 50, baseType: !341)
!340 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !340, line: 49, baseType: !342)
!342 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !340, line: 77, baseType: !344)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !346, line: 9, baseType: !347)
!346 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64, align: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{null, !350, !350, !350, !350, !350, !350}
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64, align: 64)
!351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64, align: 64)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !340, line: 46, baseType: !354)
!354 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64, align: 64)
!356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !354)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !340, line: 48, baseType: !358)
!358 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!359 = !{!360, !362, !363, !365, !366, !367, !369}
!360 = distinct !DIGlobalVariable(name: "autolog_level", scope: !0, file: !361, line: 47, type: !342, isLocal: true, isDefinition: true, variable: i32* @autolog_level)
!361 = !DIFile(filename: "fe-log.c", directory: "/home/lichi/Desktop/irssi/task1")
!362 = distinct !DIGlobalVariable(name: "autoremove_tag", scope: !0, file: !361, line: 48, type: !342, isLocal: true, isDefinition: true, variable: i32* @autoremove_tag)
!363 = distinct !DIGlobalVariable(name: "autolog_path", scope: !0, file: !361, line: 49, type: !364, isLocal: true, isDefinition: true, variable: i8** @autolog_path)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64, align: 64)
!365 = distinct !DIGlobalVariable(name: "skip_next_printtext", scope: !0, file: !361, line: 52, type: !342, isLocal: true, isDefinition: true, variable: i32* @skip_next_printtext)
!366 = distinct !DIGlobalVariable(name: "log_theme_name", scope: !0, file: !361, line: 53, type: !364, isLocal: true, isDefinition: true, variable: i8** @log_theme_name)
!367 = distinct !DIGlobalVariable(name: "autolog_ignore_targets", scope: !0, file: !361, line: 55, type: !368, isLocal: true, isDefinition: true, variable: i8*** @autolog_ignore_targets)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64, align: 64)
!369 = distinct !DIGlobalVariable(name: "log_theme", scope: !0, file: !361, line: 51, type: !370, isLocal: true, isDefinition: true, variable: %struct.THEME_REC** @log_theme)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64, align: 64)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "THEME_REC", file: !372, line: 33, baseType: !373)
!372 = !DIFile(filename: "themes.h", directory: "/home/lichi/Desktop/irssi/task1")
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !372, line: 13, size: 8768, align: 64, elements: !374)
!374 = !{!375, !376, !377, !378, !383, !384, !386, !391, !395, !403, !404}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !373, file: !372, line: 14, baseType: !342, size: 32, align: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !373, file: !372, line: 16, baseType: !364, size: 64, align: 64, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !373, file: !372, line: 17, baseType: !364, size: 64, align: 64, offset: 128)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "last_modify", scope: !373, file: !372, line: 18, baseType: !379, size: 64, align: 64, offset: 192)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !380, line: 75, baseType: !381)
!380 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !382, line: 139, baseType: !358)
!382 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!383 = !DIDerivedType(tag: DW_TAG_member, name: "default_color", scope: !373, file: !372, line: 20, baseType: !342, size: 32, align: 32, offset: 256)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "info_eol", scope: !373, file: !372, line: 23, baseType: !385, size: 1, align: 32, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!385 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !373, file: !372, line: 26, baseType: !387, size: 64, align: 64, offset: 320)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64, align: 64)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !389, line: 37, baseType: !390)
!389 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!390 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !389, line: 37, flags: DIFlagFwdDecl)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "replace_keys", scope: !373, file: !372, line: 28, baseType: !392, size: 8192, align: 32, offset: 384)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 8192, align: 32, elements: !393)
!393 = !{!394}
!394 = !DISubrange(count: 256)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "replace_values", scope: !373, file: !372, line: 29, baseType: !396, size: 64, align: 64, offset: 8576)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64, align: 64)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !398, line: 37, baseType: !399)
!398 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !398, line: 39, size: 128, align: 64, elements: !400)
!400 = !{!401, !402}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !399, file: !398, line: 41, baseType: !343, size: 64, align: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !399, file: !398, line: 42, baseType: !396, size: 64, align: 64, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "abstracts", scope: !373, file: !372, line: 30, baseType: !387, size: 64, align: 64, offset: 8640)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "gui_data", scope: !373, file: !372, line: 32, baseType: !344, size: 64, align: 64, offset: 8704)
!405 = !{i32 2, !"Dwarf Version", i32 4}
!406 = !{i32 2, !"Debug Info Version", i32 3}
!407 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!408 = distinct !DISubprogram(name: "fe_log_init", scope: !361, file: !361, line: 717, type: !409, isLocal: false, isDefinition: true, scopeLine: 718, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !411)
!409 = !DISubroutineType(types: !410)
!410 = !{null}
!411 = !{}
!412 = !DILocation(line: 719, column: 19, scope: !408)
!413 = !DILocation(line: 719, column: 17, scope: !408)
!414 = !DILocation(line: 720, column: 22, scope: !408)
!415 = !DILocation(line: 722, column: 2, scope: !408)
!416 = !DILocation(line: 723, column: 9, scope: !408)
!417 = !DILocation(line: 724, column: 2, scope: !408)
!418 = !DILocation(line: 725, column: 9, scope: !408)
!419 = !DILocation(line: 726, column: 2, scope: !408)
!420 = !DILocation(line: 727, column: 9, scope: !408)
!421 = !DILocation(line: 728, column: 2, scope: !408)
!422 = !DILocation(line: 730, column: 16, scope: !408)
!423 = !DILocation(line: 731, column: 17, scope: !408)
!424 = !DILocation(line: 732, column: 2, scope: !408)
!425 = !DILocation(line: 734, column: 2, scope: !408)
!426 = !DILocation(line: 735, column: 2, scope: !408)
!427 = !DILocation(line: 736, column: 2, scope: !408)
!428 = !DILocation(line: 737, column: 2, scope: !408)
!429 = !DILocation(line: 738, column: 2, scope: !408)
!430 = !DILocation(line: 739, column: 2, scope: !408)
!431 = !DILocation(line: 740, column: 2, scope: !408)
!432 = !DILocation(line: 741, column: 2, scope: !408)
!433 = !DILocation(line: 742, column: 2, scope: !408)
!434 = !DILocation(line: 743, column: 2, scope: !408)
!435 = !DILocation(line: 744, column: 2, scope: !408)
!436 = !DILocation(line: 745, column: 2, scope: !408)
!437 = !DILocation(line: 746, column: 2, scope: !408)
!438 = !DILocation(line: 747, column: 2, scope: !408)
!439 = !DILocation(line: 748, column: 2, scope: !408)
!440 = !DILocation(line: 749, column: 2, scope: !408)
!441 = !DILocation(line: 750, column: 2, scope: !408)
!442 = !DILocation(line: 751, column: 2, scope: !408)
!443 = !DILocation(line: 752, column: 2, scope: !408)
!444 = !DILocation(line: 754, column: 2, scope: !408)
!445 = !DILocation(line: 755, column: 1, scope: !408)
!446 = distinct !DISubprogram(name: "sig_autoremove", scope: !361, file: !361, line: 582, type: !447, isLocal: true, isDefinition: true, scopeLine: 583, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !411)
!447 = !DISubroutineType(types: !448)
!448 = !{!342}
!449 = !DILocalVariable(name: "server", scope: !446, file: !361, line: 584, type: !450)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64, align: 64)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !452, line: 107, baseType: !453)
!452 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !454, line: 30, size: 2240, align: 64, elements: !455)
!454 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!455 = !{!456, !458, !459, !460, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !684, !685, !689, !690, !691, !695, !696, !697, !698, !699, !700, !701, !702, !703, !709, !710, !711, !712, !713, !717, !721, !725, !729, !733, !737, !744, !751, !755}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !453, file: !457, line: 3, baseType: !342, size: 32, align: 32)
!457 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!458 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !453, file: !457, line: 4, baseType: !342, size: 32, align: 32, offset: 32)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !453, file: !457, line: 6, baseType: !342, size: 32, align: 32, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !453, file: !457, line: 8, baseType: !461, size: 64, align: 64, offset: 128)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64, align: 64)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !452, line: 113, baseType: !463)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !454, line: 25, size: 1920, align: 64, elements: !464)
!464 = !{!465, !467, !468, !469, !470, !471, !472, !473, !474, !476, !477, !478, !479, !480, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !463, file: !466, line: 3, baseType: !342, size: 32, align: 32)
!466 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!467 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !463, file: !466, line: 4, baseType: !342, size: 32, align: 32, offset: 32)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !463, file: !466, line: 6, baseType: !342, size: 32, align: 32, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !463, file: !466, line: 9, baseType: !364, size: 64, align: 64, offset: 128)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !463, file: !466, line: 10, baseType: !342, size: 32, align: 32, offset: 192)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !463, file: !466, line: 11, baseType: !364, size: 64, align: 64, offset: 256)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !463, file: !466, line: 11, baseType: !364, size: 64, align: 64, offset: 320)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !463, file: !466, line: 11, baseType: !364, size: 64, align: 64, offset: 384)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !463, file: !466, line: 13, baseType: !475, size: 16, align: 16, offset: 448)
!475 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !463, file: !466, line: 14, baseType: !364, size: 64, align: 64, offset: 512)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !463, file: !466, line: 15, baseType: !364, size: 64, align: 64, offset: 576)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !463, file: !466, line: 16, baseType: !342, size: 32, align: 32, offset: 640)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !463, file: !466, line: 17, baseType: !364, size: 64, align: 64, offset: 704)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !463, file: !466, line: 19, baseType: !481, size: 64, align: 64, offset: 768)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64, align: 64)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !452, line: 99, baseType: !483)
!483 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !452, line: 99, flags: DIFlagFwdDecl)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !463, file: !466, line: 19, baseType: !481, size: 64, align: 64, offset: 832)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !463, file: !466, line: 21, baseType: !364, size: 64, align: 64, offset: 896)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !463, file: !466, line: 22, baseType: !364, size: 64, align: 64, offset: 960)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !463, file: !466, line: 23, baseType: !364, size: 64, align: 64, offset: 1024)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !463, file: !466, line: 24, baseType: !364, size: 64, align: 64, offset: 1088)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !463, file: !466, line: 26, baseType: !364, size: 64, align: 64, offset: 1152)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !463, file: !466, line: 27, baseType: !364, size: 64, align: 64, offset: 1216)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !463, file: !466, line: 28, baseType: !364, size: 64, align: 64, offset: 1280)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !463, file: !466, line: 29, baseType: !364, size: 64, align: 64, offset: 1344)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !463, file: !466, line: 30, baseType: !364, size: 64, align: 64, offset: 1408)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !463, file: !466, line: 31, baseType: !364, size: 64, align: 64, offset: 1472)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !463, file: !466, line: 32, baseType: !364, size: 64, align: 64, offset: 1536)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !463, file: !466, line: 33, baseType: !364, size: 64, align: 64, offset: 1600)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !463, file: !466, line: 35, baseType: !498, size: 64, align: 64, offset: 1664)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64, align: 64)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !500)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !501)
!501 = !{!502, !503, !628, !629, !634, !635, !636, !637, !638, !647, !648, !649, !653, !654, !655, !656, !657, !658, !659, !660}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !500, file: !4, line: 100, baseType: !341, size: 32, align: 32)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !500, file: !4, line: 101, baseType: !504, size: 64, align: 64, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64, align: 64)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !506)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !507)
!507 = !{!508, !529, !535, !541, !545, !615, !619, !624}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !506, file: !4, line: 133, baseType: !509, size: 64, align: 64)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64, align: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!512, !498, !352, !513, !516, !517}
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !514, line: 66, baseType: !515)
!514 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!515 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64, align: 64)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64, align: 64)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64, align: 64)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !520, line: 42, baseType: !521)
!520 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !520, line: 44, size: 128, align: 64, elements: !522)
!522 = !{!523, !527, !528}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !521, file: !520, line: 46, baseType: !524, size: 32, align: 32)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !525, line: 36, baseType: !526)
!525 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !514, line: 45, baseType: !385)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !521, file: !520, line: 47, baseType: !341, size: 32, align: 32, offset: 32)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !521, file: !520, line: 48, baseType: !352, size: 64, align: 64, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !506, file: !4, line: 138, baseType: !530, size: 64, align: 64, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64, align: 64)
!531 = !DISubroutineType(types: !532)
!532 = !{!512, !498, !533, !513, !516, !517}
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64, align: 64)
!534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !353)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !506, file: !4, line: 143, baseType: !536, size: 64, align: 64, offset: 128)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64, align: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!512, !498, !539, !540, !517}
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !514, line: 51, baseType: !358)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !506, file: !4, line: 147, baseType: !542, size: 64, align: 64, offset: 192)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64, align: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{!512, !498, !517}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !506, file: !4, line: 149, baseType: !546, size: 64, align: 64, offset: 256)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64, align: 64)
!547 = !DISubroutineType(types: !548)
!548 = !{!549, !498, !614}
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64, align: 64)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !551)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !552)
!552 = !{!553, !554, !570, !597, !599, !603, !604, !605, !606, !607, !608, !609, !610}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !551, file: !16, line: 174, baseType: !343, size: 64, align: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !551, file: !16, line: 175, baseType: !555, size: 64, align: 64, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64, align: 64)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !557)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !558)
!558 = !{!559, !563, !564}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !557, file: !16, line: 198, baseType: !560, size: 64, align: 64)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64, align: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{null, !343}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !557, file: !16, line: 199, baseType: !560, size: 64, align: 64, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !557, file: !16, line: 200, baseType: !565, size: 64, align: 64, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64, align: 64)
!566 = !DISubroutineType(types: !567)
!567 = !{null, !343, !549, !568, !569}
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64, align: 64)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64, align: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !551, file: !16, line: 177, baseType: !571, size: 64, align: 64, offset: 128)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64, align: 64)
!572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !573)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !574)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !575)
!575 = !{!576, !581, !585, !589, !593, !594}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !574, file: !16, line: 216, baseType: !577, size: 64, align: 64)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64, align: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!339, !549, !580}
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64, align: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !574, file: !16, line: 218, baseType: !582, size: 64, align: 64, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64, align: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{!339, !549}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !574, file: !16, line: 219, baseType: !586, size: 64, align: 64, offset: 128)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64, align: 64)
!587 = !DISubroutineType(types: !588)
!588 = !{!339, !549, !335, !343}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !574, file: !16, line: 222, baseType: !590, size: 64, align: 64, offset: 192)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64, align: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{null, !549}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !574, file: !16, line: 226, baseType: !335, size: 64, align: 64, offset: 256)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !574, file: !16, line: 227, baseType: !595, size: 64, align: 64, offset: 320)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !596)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64, align: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !551, file: !16, line: 178, baseType: !598, size: 32, align: 32, offset: 192)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !340, line: 55, baseType: !385)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !551, file: !16, line: 180, baseType: !600, size: 64, align: 64, offset: 256)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64, align: 64)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !602)
!602 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !551, file: !16, line: 182, baseType: !341, size: 32, align: 32, offset: 320)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !551, file: !16, line: 183, baseType: !598, size: 32, align: 32, offset: 352)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !551, file: !16, line: 184, baseType: !598, size: 32, align: 32, offset: 384)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !551, file: !16, line: 186, baseType: !396, size: 64, align: 64, offset: 448)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !551, file: !16, line: 188, baseType: !549, size: 64, align: 64, offset: 512)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !551, file: !16, line: 189, baseType: !549, size: 64, align: 64, offset: 576)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !551, file: !16, line: 191, baseType: !364, size: 64, align: 64, offset: 640)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !551, file: !16, line: 193, baseType: !611, size: 64, align: 64, offset: 704)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64, align: 64)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !613)
!613 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !506, file: !4, line: 151, baseType: !616, size: 64, align: 64, offset: 320)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64, align: 64)
!617 = !DISubroutineType(types: !618)
!618 = !{null, !498}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !506, file: !4, line: 152, baseType: !620, size: 64, align: 64, offset: 384)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64, align: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!512, !498, !623, !517}
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !506, file: !4, line: 155, baseType: !625, size: 64, align: 64, offset: 448)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64, align: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{!623, !498}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !500, file: !4, line: 103, baseType: !352, size: 64, align: 64, offset: 128)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !500, file: !4, line: 104, baseType: !630, size: 64, align: 64, offset: 192)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !631, line: 77, baseType: !632)
!631 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64, align: 64)
!633 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !631, line: 77, flags: DIFlagFwdDecl)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !500, file: !4, line: 105, baseType: !630, size: 64, align: 64, offset: 256)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !500, file: !4, line: 106, baseType: !352, size: 64, align: 64, offset: 320)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !500, file: !4, line: 107, baseType: !598, size: 32, align: 32, offset: 384)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !500, file: !4, line: 109, baseType: !513, size: 64, align: 64, offset: 448)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !500, file: !4, line: 110, baseType: !639, size: 64, align: 64, offset: 512)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64, align: 64)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !641, line: 39, baseType: !642)
!641 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !641, line: 41, size: 192, align: 64, elements: !643)
!643 = !{!644, !645, !646}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !642, file: !641, line: 43, baseType: !352, size: 64, align: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !642, file: !641, line: 44, baseType: !513, size: 64, align: 64, offset: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !642, file: !641, line: 45, baseType: !513, size: 64, align: 64, offset: 128)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !500, file: !4, line: 111, baseType: !639, size: 64, align: 64, offset: 576)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !500, file: !4, line: 112, baseType: !639, size: 64, align: 64, offset: 640)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !500, file: !4, line: 113, baseType: !650, size: 48, align: 8, offset: 704)
!650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !353, size: 48, align: 8, elements: !651)
!651 = !{!652}
!652 = !DISubrange(count: 6)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !500, file: !4, line: 117, baseType: !598, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !500, file: !4, line: 118, baseType: !598, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !500, file: !4, line: 119, baseType: !598, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !500, file: !4, line: 120, baseType: !598, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !500, file: !4, line: 121, baseType: !598, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !500, file: !4, line: 122, baseType: !598, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !500, file: !4, line: 124, baseType: !343, size: 64, align: 64, offset: 768)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !500, file: !4, line: 125, baseType: !343, size: 64, align: 64, offset: 832)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !463, file: !466, line: 38, baseType: !385, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !463, file: !466, line: 39, baseType: !385, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !463, file: !466, line: 40, baseType: !385, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !463, file: !466, line: 41, baseType: !385, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !463, file: !466, line: 42, baseType: !385, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !463, file: !466, line: 43, baseType: !385, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !463, file: !466, line: 44, baseType: !385, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !463, file: !466, line: 45, baseType: !385, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !463, file: !466, line: 46, baseType: !364, size: 64, align: 64, offset: 1792)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !463, file: !466, line: 47, baseType: !364, size: 64, align: 64, offset: 1856)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !453, file: !457, line: 9, baseType: !379, size: 64, align: 64, offset: 192)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !453, file: !457, line: 10, baseType: !379, size: 64, align: 64, offset: 256)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !453, file: !457, line: 12, baseType: !364, size: 64, align: 64, offset: 320)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !453, file: !457, line: 13, baseType: !364, size: 64, align: 64, offset: 384)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !453, file: !457, line: 15, baseType: !385, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !453, file: !457, line: 16, baseType: !385, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !453, file: !457, line: 17, baseType: !385, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !453, file: !457, line: 18, baseType: !385, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !453, file: !457, line: 19, baseType: !385, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !453, file: !457, line: 21, baseType: !681, size: 64, align: 64, offset: 512)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64, align: 64)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !452, line: 102, baseType: !683)
!683 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !452, line: 102, flags: DIFlagFwdDecl)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !453, file: !457, line: 22, baseType: !342, size: 32, align: 32, offset: 576)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !453, file: !457, line: 25, baseType: !686, size: 128, align: 64, offset: 640)
!686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !498, size: 128, align: 64, elements: !687)
!687 = !{!688}
!688 = !DISubrange(count: 2)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !453, file: !457, line: 26, baseType: !342, size: 32, align: 32, offset: 768)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !453, file: !457, line: 27, baseType: !342, size: 32, align: 32, offset: 800)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !453, file: !457, line: 29, baseType: !692, size: 64, align: 64, offset: 832)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64, align: 64)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !452, line: 103, baseType: !694)
!694 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !452, line: 103, flags: DIFlagFwdDecl)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !453, file: !457, line: 30, baseType: !387, size: 64, align: 64, offset: 896)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !453, file: !457, line: 32, baseType: !364, size: 64, align: 64, offset: 960)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !453, file: !457, line: 33, baseType: !364, size: 64, align: 64, offset: 1024)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !453, file: !457, line: 34, baseType: !364, size: 64, align: 64, offset: 1088)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !453, file: !457, line: 35, baseType: !385, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !453, file: !457, line: 36, baseType: !385, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !453, file: !457, line: 37, baseType: !385, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !453, file: !457, line: 38, baseType: !385, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !453, file: !457, line: 40, baseType: !704, size: 128, align: 64, offset: 1216)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !340, line: 504, baseType: !705)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !340, line: 506, size: 128, align: 64, elements: !706)
!706 = !{!707, !708}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !705, file: !340, line: 508, baseType: !357, size: 64, align: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !705, file: !340, line: 509, baseType: !357, size: 64, align: 64, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !453, file: !457, line: 41, baseType: !379, size: 64, align: 64, offset: 1344)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !453, file: !457, line: 42, baseType: !342, size: 32, align: 32, offset: 1408)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !453, file: !457, line: 44, baseType: !396, size: 64, align: 64, offset: 1472)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !453, file: !457, line: 45, baseType: !396, size: 64, align: 64, offset: 1536)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !453, file: !457, line: 53, baseType: !714, size: 64, align: 64, offset: 1600)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64, align: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{null, !450, !355, !342}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !453, file: !457, line: 55, baseType: !718, size: 64, align: 64, offset: 1664)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64, align: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{!342, !450, !354}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !453, file: !457, line: 57, baseType: !722, size: 64, align: 64, offset: 1728)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64, align: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{!342, !450, !355}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !453, file: !457, line: 60, baseType: !726, size: 64, align: 64, offset: 1792)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64, align: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{!355, !450}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !453, file: !457, line: 62, baseType: !730, size: 64, align: 64, offset: 1856)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64, align: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{null, !450, !355, !355, !342}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !453, file: !457, line: 65, baseType: !734, size: 64, align: 64, offset: 1920)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64, align: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!368, !450, !355, !355}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !453, file: !457, line: 69, baseType: !738, size: 64, align: 64, offset: 1984)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64, align: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{!741, !450, !355}
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64, align: 64)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !452, line: 109, baseType: !743)
!743 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !452, line: 109, flags: DIFlagFwdDecl)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !453, file: !457, line: 70, baseType: !745, size: 64, align: 64, offset: 2048)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64, align: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{!748, !450, !355}
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64, align: 64)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !452, line: 110, baseType: !750)
!750 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !452, line: 110, flags: DIFlagFwdDecl)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !453, file: !457, line: 71, baseType: !752, size: 64, align: 64, offset: 2112)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64, align: 64)
!753 = !DISubroutineType(types: !754)
!754 = !{!342, !355, !355}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !453, file: !457, line: 73, baseType: !752, size: 64, align: 64, offset: 2176)
!756 = !DIExpression()
!757 = !DILocation(line: 584, column: 14, scope: !446)
!758 = !DILocalVariable(name: "logitem", scope: !446, file: !361, line: 585, type: !759)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64, align: 64)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "LOG_ITEM_REC", file: !36, line: 12, baseType: !761)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_LOG_ITEM_REC", file: !36, line: 14, size: 192, align: 64, elements: !762)
!762 = !{!763, !764, !765}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !761, file: !36, line: 15, baseType: !342, size: 32, align: 32)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !761, file: !36, line: 16, baseType: !364, size: 64, align: 64, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !761, file: !36, line: 17, baseType: !364, size: 64, align: 64, offset: 128)
!766 = !DILocation(line: 585, column: 16, scope: !446)
!767 = !DILocalVariable(name: "tmp", scope: !446, file: !361, line: 586, type: !396)
!768 = !DILocation(line: 586, column: 10, scope: !446)
!769 = !DILocalVariable(name: "next", scope: !446, file: !361, line: 586, type: !396)
!770 = !DILocation(line: 586, column: 16, scope: !446)
!771 = !DILocalVariable(name: "removetime", scope: !446, file: !361, line: 587, type: !379)
!772 = !DILocation(line: 587, column: 9, scope: !446)
!773 = !DILocation(line: 589, column: 22, scope: !446)
!774 = !DILocation(line: 589, column: 31, scope: !446)
!775 = !DILocation(line: 589, column: 20, scope: !446)
!776 = !DILocation(line: 590, column: 13, scope: !777)
!777 = distinct !DILexicalBlock(scope: !446, file: !361, line: 590, column: 2)
!778 = !DILocation(line: 590, column: 11, scope: !777)
!779 = !DILocation(line: 590, column: 7, scope: !777)
!780 = !DILocation(line: 590, column: 19, scope: !781)
!781 = !DILexicalBlockFile(scope: !782, file: !361, discriminator: 1)
!782 = distinct !DILexicalBlock(scope: !777, file: !361, line: 590, column: 2)
!783 = !DILocation(line: 590, column: 23, scope: !781)
!784 = !DILocation(line: 590, column: 2, scope: !781)
!785 = !DILocalVariable(name: "log", scope: !786, file: !361, line: 591, type: !787)
!786 = distinct !DILexicalBlock(scope: !782, file: !361, line: 590, column: 43)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64, align: 64)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "LOG_REC", file: !36, line: 11, baseType: !789)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_LOG_REC", file: !36, line: 20, size: 576, align: 64, elements: !790)
!790 = !{!791, !792, !793, !794, !795, !796, !797, !798, !803, !804, !805}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !789, file: !36, line: 21, baseType: !364, size: 64, align: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "real_fname", scope: !789, file: !36, line: 22, baseType: !364, size: 64, align: 64, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !789, file: !36, line: 23, baseType: !342, size: 32, align: 32, offset: 128)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "opened", scope: !789, file: !36, line: 24, baseType: !379, size: 64, align: 64, offset: 192)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !789, file: !36, line: 26, baseType: !342, size: 32, align: 32, offset: 256)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !789, file: !36, line: 27, baseType: !396, size: 64, align: 64, offset: 320)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !789, file: !36, line: 29, baseType: !379, size: 64, align: 64, offset: 384)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "colorizer", scope: !789, file: !36, line: 30, baseType: !799, size: 64, align: 64, offset: 448)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "COLORIZE_FUNC", file: !36, line: 9, baseType: !800)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64, align: 64)
!801 = !DISubroutineType(types: !802)
!802 = !{!364, !355}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "autoopen", scope: !789, file: !36, line: 32, baseType: !385, size: 1, align: 32, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "failed", scope: !789, file: !36, line: 33, baseType: !385, size: 1, align: 32, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !789, file: !36, line: 34, baseType: !385, size: 1, align: 32, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!806 = !DILocation(line: 591, column: 12, scope: !786)
!807 = !DILocation(line: 591, column: 18, scope: !786)
!808 = !DILocation(line: 591, column: 23, scope: !786)
!809 = !DILocation(line: 593, column: 10, scope: !786)
!810 = !DILocation(line: 593, column: 15, scope: !786)
!811 = !DILocation(line: 593, column: 8, scope: !786)
!812 = !DILocation(line: 595, column: 8, scope: !813)
!813 = distinct !DILexicalBlock(scope: !786, file: !361, line: 595, column: 7)
!814 = !DILocation(line: 595, column: 13, scope: !813)
!815 = !DILocation(line: 595, column: 18, scope: !813)
!816 = !DILocation(line: 595, column: 21, scope: !817)
!817 = !DILexicalBlockFile(scope: !813, file: !361, discriminator: 1)
!818 = !DILocation(line: 595, column: 26, scope: !817)
!819 = !DILocation(line: 595, column: 33, scope: !817)
!820 = !DILocation(line: 595, column: 31, scope: !817)
!821 = !DILocation(line: 595, column: 44, scope: !817)
!822 = !DILocation(line: 595, column: 47, scope: !823)
!823 = !DILexicalBlockFile(scope: !813, file: !361, discriminator: 2)
!824 = !DILocation(line: 595, column: 52, scope: !823)
!825 = !DILocation(line: 595, column: 58, scope: !823)
!826 = !DILocation(line: 595, column: 7, scope: !823)
!827 = !DILocation(line: 596, column: 25, scope: !813)
!828 = !DILocation(line: 599, column: 13, scope: !786)
!829 = !DILocation(line: 599, column: 18, scope: !786)
!830 = !DILocation(line: 599, column: 25, scope: !786)
!831 = !DILocation(line: 599, column: 11, scope: !786)
!832 = !DILocation(line: 600, column: 7, scope: !833)
!833 = distinct !DILexicalBlock(scope: !786, file: !361, line: 600, column: 7)
!834 = !DILocation(line: 600, column: 16, scope: !833)
!835 = !DILocation(line: 600, column: 26, scope: !833)
!836 = !DILocation(line: 600, column: 7, scope: !786)
!837 = !DILocation(line: 601, column: 4, scope: !833)
!838 = !DILocation(line: 603, column: 28, scope: !786)
!839 = !DILocation(line: 603, column: 37, scope: !786)
!840 = !DILocation(line: 603, column: 12, scope: !786)
!841 = !DILocation(line: 603, column: 10, scope: !786)
!842 = !DILocation(line: 604, column: 7, scope: !843)
!843 = distinct !DILexicalBlock(scope: !786, file: !361, line: 604, column: 7)
!844 = !DILocation(line: 604, column: 16, scope: !843)
!845 = !DILocation(line: 604, column: 21, scope: !843)
!846 = !DILocation(line: 604, column: 40, scope: !843)
!847 = !DILocation(line: 605, column: 7, scope: !843)
!848 = !DILocation(line: 605, column: 14, scope: !843)
!849 = !DILocation(line: 605, column: 21, scope: !843)
!850 = !DILocation(line: 605, column: 27, scope: !851)
!851 = !DILexicalBlockFile(scope: !843, file: !361, discriminator: 1)
!852 = !DILocation(line: 605, column: 36, scope: !851)
!853 = !DILocation(line: 605, column: 46, scope: !851)
!854 = !DILocation(line: 605, column: 54, scope: !851)
!855 = !DILocation(line: 605, column: 63, scope: !851)
!856 = !DILocation(line: 605, column: 26, scope: !851)
!857 = !DILocation(line: 604, column: 7, scope: !858)
!858 = !DILexicalBlockFile(scope: !786, file: !361, discriminator: 1)
!859 = !DILocation(line: 606, column: 14, scope: !843)
!860 = !DILocation(line: 606, column: 4, scope: !843)
!861 = !DILocation(line: 607, column: 2, scope: !786)
!862 = !DILocation(line: 590, column: 37, scope: !863)
!863 = !DILexicalBlockFile(scope: !782, file: !361, discriminator: 2)
!864 = !DILocation(line: 590, column: 35, scope: !863)
!865 = !DILocation(line: 590, column: 2, scope: !863)
!866 = distinct !{!866, !867}
!867 = !DILocation(line: 590, column: 2, scope: !446)
!868 = !DILocation(line: 608, column: 2, scope: !446)
!869 = distinct !DISubprogram(name: "read_settings", scope: !361, file: !361, line: 681, type: !409, isLocal: true, isDefinition: true, scopeLine: 682, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !411)
!870 = !DILocalVariable(name: "old_autolog", scope: !869, file: !361, line: 683, type: !342)
!871 = !DILocation(line: 683, column: 6, scope: !869)
!872 = !DILocation(line: 683, column: 20, scope: !869)
!873 = !DILocation(line: 685, column: 9, scope: !869)
!874 = !DILocation(line: 685, column: 2, scope: !869)
!875 = !DILocation(line: 686, column: 26, scope: !869)
!876 = !DILocation(line: 686, column: 17, scope: !877)
!877 = !DILexicalBlockFile(scope: !869, file: !361, discriminator: 1)
!878 = !DILocation(line: 686, column: 15, scope: !869)
!879 = !DILocation(line: 688, column: 19, scope: !869)
!880 = !DILocation(line: 688, column: 18, scope: !869)
!881 = !DILocation(line: 688, column: 18, scope: !877)
!882 = !DILocation(line: 689, column: 3, scope: !869)
!883 = !DILocation(line: 688, column: 18, scope: !884)
!884 = !DILexicalBlockFile(scope: !869, file: !361, discriminator: 2)
!885 = !DILocation(line: 688, column: 18, scope: !886)
!886 = !DILexicalBlockFile(scope: !869, file: !361, discriminator: 3)
!887 = !DILocation(line: 688, column: 16, scope: !886)
!888 = !DILocation(line: 691, column: 6, scope: !889)
!889 = distinct !DILexicalBlock(scope: !869, file: !361, line: 691, column: 6)
!890 = !DILocation(line: 691, column: 18, scope: !889)
!891 = !DILocation(line: 691, column: 22, scope: !892)
!892 = !DILexicalBlockFile(scope: !889, file: !361, discriminator: 1)
!893 = !DILocation(line: 691, column: 6, scope: !892)
!894 = !DILocation(line: 692, column: 3, scope: !889)
!895 = !DILocation(line: 695, column: 6, scope: !896)
!896 = distinct !DILexicalBlock(scope: !869, file: !361, line: 695, column: 6)
!897 = !DILocation(line: 695, column: 21, scope: !896)
!898 = !DILocation(line: 695, column: 6, scope: !869)
!899 = !DILocation(line: 696, column: 3, scope: !896)
!900 = !DILocation(line: 698, column: 9, scope: !869)
!901 = !DILocation(line: 698, column: 2, scope: !869)
!902 = !DILocation(line: 699, column: 28, scope: !869)
!903 = !DILocation(line: 699, column: 19, scope: !877)
!904 = !DILocation(line: 699, column: 17, scope: !869)
!905 = !DILocation(line: 701, column: 7, scope: !906)
!906 = distinct !DILexicalBlock(scope: !869, file: !361, line: 701, column: 6)
!907 = !DILocation(line: 701, column: 6, scope: !906)
!908 = !DILocation(line: 701, column: 22, scope: !906)
!909 = !DILocation(line: 701, column: 6, scope: !869)
!910 = !DILocation(line: 702, column: 10, scope: !911)
!911 = distinct !DILexicalBlock(scope: !906, file: !361, line: 701, column: 31)
!912 = !DILocation(line: 702, column: 3, scope: !911)
!913 = !DILocation(line: 703, column: 18, scope: !911)
!914 = !DILocation(line: 704, column: 2, scope: !911)
!915 = !DILocation(line: 706, column: 3, scope: !906)
!916 = !DILocation(line: 708, column: 14, scope: !869)
!917 = !DILocation(line: 708, column: 29, scope: !869)
!918 = !DILocation(line: 708, column: 14, scope: !877)
!919 = !DILocation(line: 709, column: 14, scope: !869)
!920 = !DILocation(line: 709, column: 3, scope: !869)
!921 = !DILocation(line: 708, column: 14, scope: !884)
!922 = !DILocation(line: 708, column: 14, scope: !886)
!923 = !DILocation(line: 708, column: 12, scope: !886)
!924 = !DILocation(line: 711, column: 6, scope: !925)
!925 = distinct !DILexicalBlock(scope: !869, file: !361, line: 711, column: 6)
!926 = !DILocation(line: 711, column: 29, scope: !925)
!927 = !DILocation(line: 711, column: 6, scope: !869)
!928 = !DILocation(line: 712, column: 14, scope: !925)
!929 = !DILocation(line: 712, column: 3, scope: !925)
!930 = !DILocation(line: 714, column: 38, scope: !869)
!931 = !DILocation(line: 714, column: 27, scope: !877)
!932 = !DILocation(line: 714, column: 25, scope: !869)
!933 = !DILocation(line: 715, column: 1, scope: !869)
!934 = distinct !DISubprogram(name: "cmd_log", scope: !361, file: !361, line: 244, type: !935, isLocal: true, isDefinition: true, scopeLine: 245, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !411)
!935 = !DISubroutineType(types: !936)
!936 = !{null, !355, !450, !344}
!937 = !DILocalVariable(name: "data", arg: 1, scope: !934, file: !361, line: 244, type: !355)
!938 = !DILocation(line: 244, column: 33, scope: !934)
!939 = !DILocalVariable(name: "server", arg: 2, scope: !934, file: !361, line: 244, type: !450)
!940 = !DILocation(line: 244, column: 51, scope: !934)
!941 = !DILocalVariable(name: "item", arg: 3, scope: !934, file: !361, line: 244, type: !344)
!942 = !DILocation(line: 244, column: 65, scope: !934)
!943 = !DILocation(line: 246, column: 7, scope: !944)
!944 = distinct !DILexicalBlock(scope: !934, file: !361, line: 246, column: 6)
!945 = !DILocation(line: 246, column: 6, scope: !944)
!946 = !DILocation(line: 246, column: 12, scope: !944)
!947 = !DILocation(line: 246, column: 6, scope: !934)
!948 = !DILocation(line: 247, column: 3, scope: !944)
!949 = !DILocation(line: 249, column: 25, scope: !944)
!950 = !DILocation(line: 249, column: 31, scope: !944)
!951 = !DILocation(line: 249, column: 39, scope: !944)
!952 = !DILocation(line: 249, column: 3, scope: !944)
!953 = !DILocation(line: 250, column: 1, scope: !934)
!954 = distinct !DISubprogram(name: "cmd_log_open", scope: !361, file: !361, line: 80, type: !955, isLocal: true, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !411)
!955 = !DISubroutineType(types: !956)
!956 = !{null, !355}
!957 = !DILocalVariable(name: "data", arg: 1, scope: !954, file: !361, line: 80, type: !355)
!958 = !DILocation(line: 80, column: 38, scope: !954)
!959 = !DILocalVariable(name: "server", scope: !954, file: !361, line: 82, type: !450)
!960 = !DILocation(line: 82, column: 21, scope: !954)
!961 = !DILocalVariable(name: "optlist", scope: !954, file: !361, line: 83, type: !387)
!962 = !DILocation(line: 83, column: 21, scope: !954)
!963 = !DILocalVariable(name: "targetarg", scope: !954, file: !361, line: 84, type: !364)
!964 = !DILocation(line: 84, column: 8, scope: !954)
!965 = !DILocalVariable(name: "fname", scope: !954, file: !361, line: 84, type: !364)
!966 = !DILocation(line: 84, column: 20, scope: !954)
!967 = !DILocalVariable(name: "levels", scope: !954, file: !361, line: 84, type: !364)
!968 = !DILocation(line: 84, column: 28, scope: !954)
!969 = !DILocalVariable(name: "servertag", scope: !954, file: !361, line: 84, type: !364)
!970 = !DILocation(line: 84, column: 37, scope: !954)
!971 = !DILocalVariable(name: "free_arg", scope: !954, file: !361, line: 85, type: !344)
!972 = !DILocation(line: 85, column: 8, scope: !954)
!973 = !DILocalVariable(name: "window", scope: !954, file: !361, line: 86, type: !974)
!974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !354, size: 96, align: 8, elements: !975)
!975 = !{!976}
!976 = !DISubrange(count: 12)
!977 = !DILocation(line: 86, column: 7, scope: !954)
!978 = !DILocalVariable(name: "log", scope: !954, file: !361, line: 87, type: !787)
!979 = !DILocation(line: 87, column: 11, scope: !954)
!980 = !DILocalVariable(name: "level", scope: !954, file: !361, line: 88, type: !342)
!981 = !DILocation(line: 88, column: 6, scope: !954)
!982 = !DILocation(line: 90, column: 22, scope: !983)
!983 = distinct !DILexicalBlock(scope: !954, file: !361, line: 90, column: 6)
!984 = !DILocation(line: 90, column: 7, scope: !983)
!985 = !DILocation(line: 90, column: 6, scope: !954)
!986 = !DILocation(line: 94, column: 3, scope: !983)
!987 = !DILocation(line: 95, column: 7, scope: !988)
!988 = distinct !DILexicalBlock(scope: !954, file: !361, line: 95, column: 6)
!989 = !DILocation(line: 95, column: 6, scope: !988)
!990 = !DILocation(line: 95, column: 13, scope: !988)
!991 = !DILocation(line: 95, column: 6, scope: !954)
!992 = !DILocation(line: 95, column: 22, scope: !993)
!993 = !DILexicalBlockFile(scope: !988, file: !361, discriminator: 1)
!994 = distinct !{!994, !995}
!995 = !DILocation(line: 95, column: 22, scope: !988)
!996 = !DILocation(line: 95, column: 43, scope: !997)
!997 = !DILexicalBlockFile(scope: !998, file: !361, discriminator: 2)
!998 = distinct !DILexicalBlock(scope: !988, file: !361, line: 95, column: 25)
!999 = !DILocation(line: 95, column: 27, scope: !997)
!1000 = !DILocation(line: 95, column: 54, scope: !997)
!1001 = distinct !{!1001, !1002}
!1002 = !DILocation(line: 95, column: 54, scope: !998)
!1003 = !DILocation(line: 95, column: 59, scope: !1004)
!1004 = !DILexicalBlockFile(scope: !1005, file: !361, discriminator: 3)
!1005 = distinct !DILexicalBlock(scope: !998, file: !361, line: 95, column: 57)
!1006 = !DILocation(line: 95, column: 141, scope: !1007)
!1007 = !DILexicalBlockFile(scope: !1004, file: !361, discriminator: 6)
!1008 = !DILocation(line: 95, column: 156, scope: !1004)
!1009 = !DILocation(line: 95, column: 177, scope: !1010)
!1010 = !DILexicalBlockFile(scope: !998, file: !361, discriminator: 4)
!1011 = !DILocation(line: 95, column: 177, scope: !1012)
!1012 = !DILexicalBlockFile(scope: !998, file: !361, discriminator: 5)
!1013 = !DILocation(line: 97, column: 21, scope: !954)
!1014 = !DILocation(line: 97, column: 10, scope: !954)
!1015 = !DILocation(line: 97, column: 8, scope: !954)
!1016 = !DILocation(line: 98, column: 23, scope: !954)
!1017 = !DILocation(line: 98, column: 30, scope: !954)
!1018 = !DILocation(line: 98, column: 36, scope: !954)
!1019 = !DILocation(line: 98, column: 43, scope: !1020)
!1020 = !DILexicalBlockFile(scope: !954, file: !361, discriminator: 1)
!1021 = !DILocation(line: 98, column: 30, scope: !1020)
!1022 = !DILocation(line: 98, column: 30, scope: !1023)
!1023 = !DILexicalBlockFile(scope: !954, file: !361, discriminator: 2)
!1024 = !DILocation(line: 98, column: 30, scope: !1025)
!1025 = !DILexicalBlockFile(scope: !954, file: !361, discriminator: 3)
!1026 = !DILocation(line: 98, column: 8, scope: !1025)
!1027 = !DILocation(line: 98, column: 6, scope: !1025)
!1028 = !DILocation(line: 101, column: 46, scope: !954)
!1029 = !DILocation(line: 101, column: 11, scope: !954)
!1030 = !DILocation(line: 101, column: 9, scope: !954)
!1031 = !DILocation(line: 102, column: 14, scope: !954)
!1032 = !DILocation(line: 102, column: 21, scope: !954)
!1033 = !DILocation(line: 102, column: 14, scope: !1020)
!1034 = !DILocation(line: 102, column: 37, scope: !1023)
!1035 = !DILocation(line: 102, column: 45, scope: !1023)
!1036 = !DILocation(line: 102, column: 14, scope: !1023)
!1037 = !DILocation(line: 102, column: 14, scope: !1025)
!1038 = !DILocation(line: 102, column: 12, scope: !1025)
!1039 = !DILocation(line: 104, column: 26, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !954, file: !361, line: 104, column: 6)
!1041 = !DILocation(line: 104, column: 6, scope: !1040)
!1042 = !DILocation(line: 104, column: 6, scope: !954)
!1043 = !DILocation(line: 106, column: 35, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1040, file: !361, line: 104, column: 46)
!1045 = !DILocation(line: 106, column: 15, scope: !1044)
!1046 = !DILocation(line: 106, column: 13, scope: !1044)
!1047 = !DILocation(line: 107, column: 7, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1044, file: !361, line: 107, column: 7)
!1049 = !DILocation(line: 107, column: 17, scope: !1048)
!1050 = !DILocation(line: 107, column: 24, scope: !1048)
!1051 = !DILocation(line: 107, column: 39, scope: !1052)
!1052 = !DILexicalBlockFile(scope: !1048, file: !361, discriminator: 1)
!1053 = !DILocation(line: 107, column: 28, scope: !1052)
!1054 = !DILocation(line: 107, column: 7, scope: !1052)
!1055 = !DILocation(line: 108, column: 15, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1048, file: !361, line: 107, column: 57)
!1057 = !DILocation(line: 108, column: 45, scope: !1056)
!1058 = !DILocation(line: 108, column: 57, scope: !1056)
!1059 = !DILocation(line: 108, column: 4, scope: !1056)
!1060 = !DILocation(line: 109, column: 16, scope: !1056)
!1061 = !DILocation(line: 109, column: 14, scope: !1056)
!1062 = !DILocation(line: 110, column: 3, scope: !1056)
!1063 = !DILocation(line: 111, column: 16, scope: !1044)
!1064 = !DILocation(line: 111, column: 45, scope: !1044)
!1065 = !DILocation(line: 112, column: 9, scope: !1044)
!1066 = !DILocation(line: 111, column: 3, scope: !1044)
!1067 = !DILocation(line: 113, column: 2, scope: !1044)
!1068 = !DILocation(line: 114, column: 35, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1040, file: !361, line: 113, column: 9)
!1070 = !DILocation(line: 114, column: 15, scope: !1069)
!1071 = !DILocation(line: 114, column: 13, scope: !1069)
!1072 = !DILocation(line: 115, column: 7, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1069, file: !361, line: 115, column: 7)
!1074 = !DILocation(line: 115, column: 17, scope: !1073)
!1075 = !DILocation(line: 115, column: 24, scope: !1073)
!1076 = !DILocation(line: 115, column: 28, scope: !1077)
!1077 = !DILexicalBlockFile(scope: !1073, file: !361, discriminator: 1)
!1078 = !DILocation(line: 115, column: 27, scope: !1077)
!1079 = !DILocation(line: 115, column: 38, scope: !1077)
!1080 = !DILocation(line: 115, column: 7, scope: !1077)
!1081 = !DILocation(line: 116, column: 20, scope: !1073)
!1082 = !DILocation(line: 116, column: 25, scope: !1073)
!1083 = !DILocation(line: 116, column: 36, scope: !1073)
!1084 = !DILocation(line: 116, column: 4, scope: !1073)
!1085 = !DILocation(line: 117, column: 12, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1073, file: !361, line: 117, column: 12)
!1087 = !DILocation(line: 117, column: 22, scope: !1086)
!1088 = !DILocation(line: 117, column: 12, scope: !1073)
!1089 = !DILocation(line: 118, column: 20, scope: !1086)
!1090 = !DILocation(line: 118, column: 30, scope: !1086)
!1091 = !DILocation(line: 118, column: 4, scope: !1086)
!1092 = !DILocation(line: 121, column: 26, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !954, file: !361, line: 121, column: 6)
!1094 = !DILocation(line: 121, column: 6, scope: !1093)
!1095 = !DILocation(line: 121, column: 6, scope: !954)
!1096 = !DILocation(line: 122, column: 3, scope: !1093)
!1097 = !DILocation(line: 122, column: 8, scope: !1093)
!1098 = !DILocation(line: 122, column: 17, scope: !1093)
!1099 = !DILocation(line: 124, column: 26, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !954, file: !361, line: 124, column: 6)
!1101 = !DILocation(line: 124, column: 6, scope: !1100)
!1102 = !DILocation(line: 124, column: 45, scope: !1100)
!1103 = !DILocation(line: 124, column: 6, scope: !954)
!1104 = !DILocation(line: 125, column: 3, scope: !1100)
!1105 = !DILocation(line: 125, column: 8, scope: !1100)
!1106 = !DILocation(line: 125, column: 18, scope: !1100)
!1107 = !DILocation(line: 127, column: 13, scope: !954)
!1108 = !DILocation(line: 127, column: 2, scope: !954)
!1109 = !DILocation(line: 129, column: 6, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !954, file: !361, line: 129, column: 6)
!1111 = !DILocation(line: 129, column: 11, scope: !1110)
!1112 = !DILocation(line: 129, column: 18, scope: !1110)
!1113 = !DILocation(line: 129, column: 24, scope: !1110)
!1114 = !DILocation(line: 129, column: 47, scope: !1115)
!1115 = !DILexicalBlockFile(scope: !1110, file: !361, discriminator: 1)
!1116 = !DILocation(line: 129, column: 27, scope: !1115)
!1117 = !DILocation(line: 129, column: 66, scope: !1115)
!1118 = !DILocation(line: 129, column: 6, scope: !1115)
!1119 = !DILocation(line: 131, column: 25, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1121, file: !361, line: 131, column: 7)
!1121 = distinct !DILexicalBlock(scope: !1110, file: !361, line: 129, column: 74)
!1122 = !DILocation(line: 131, column: 7, scope: !1120)
!1123 = !DILocation(line: 131, column: 7, scope: !1121)
!1124 = !DILocation(line: 132, column: 44, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1120, file: !361, line: 131, column: 31)
!1126 = !DILocation(line: 132, column: 4, scope: !1125)
!1127 = !DILocation(line: 134, column: 3, scope: !1125)
!1128 = !DILocation(line: 135, column: 14, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1120, file: !361, line: 134, column: 10)
!1130 = !DILocation(line: 135, column: 4, scope: !1129)
!1131 = !DILocation(line: 137, column: 2, scope: !1121)
!1132 = !DILocation(line: 139, column: 25, scope: !954)
!1133 = !DILocation(line: 139, column: 9, scope: !954)
!1134 = !DILocation(line: 140, column: 1, scope: !954)
!1135 = !DILocation(line: 140, column: 1, scope: !1020)
!1136 = distinct !DISubprogram(name: "cmd_log_close", scope: !361, file: !361, line: 155, type: !955, isLocal: true, isDefinition: true, scopeLine: 156, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !411)
!1137 = !DILocalVariable(name: "data", arg: 1, scope: !1136, file: !361, line: 155, type: !355)
!1138 = !DILocation(line: 155, column: 39, scope: !1136)
!1139 = !DILocalVariable(name: "log", scope: !1136, file: !361, line: 157, type: !787)
!1140 = !DILocation(line: 157, column: 11, scope: !1136)
!1141 = !DILocation(line: 159, column: 27, scope: !1136)
!1142 = !DILocation(line: 159, column: 8, scope: !1136)
!1143 = !DILocation(line: 159, column: 6, scope: !1136)
!1144 = !DILocation(line: 160, column: 6, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1136, file: !361, line: 160, column: 6)
!1146 = !DILocation(line: 160, column: 10, scope: !1145)
!1147 = !DILocation(line: 160, column: 6, scope: !1136)
!1148 = !DILocation(line: 161, column: 44, scope: !1145)
!1149 = !DILocation(line: 161, column: 3, scope: !1145)
!1150 = !DILocation(line: 163, column: 13, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1145, file: !361, line: 162, column: 7)
!1152 = !DILocation(line: 163, column: 3, scope: !1151)
!1153 = !DILocation(line: 164, column: 43, scope: !1151)
!1154 = !DILocation(line: 164, column: 3, scope: !1151)
!1155 = !DILocation(line: 166, column: 1, scope: !1136)
!1156 = distinct !DISubprogram(name: "cmd_log_start", scope: !361, file: !361, line: 169, type: !955, isLocal: true, isDefinition: true, scopeLine: 170, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !411)
!1157 = !DILocalVariable(name: "data", arg: 1, scope: !1156, file: !361, line: 169, type: !355)
!1158 = !DILocation(line: 169, column: 39, scope: !1156)
!1159 = !DILocalVariable(name: "log", scope: !1156, file: !361, line: 171, type: !787)
!1160 = !DILocation(line: 171, column: 11, scope: !1156)
!1161 = !DILocation(line: 173, column: 27, scope: !1156)
!1162 = !DILocation(line: 173, column: 8, scope: !1156)
!1163 = !DILocation(line: 173, column: 6, scope: !1156)
!1164 = !DILocation(line: 174, column: 6, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1156, file: !361, line: 174, column: 6)
!1166 = !DILocation(line: 174, column: 10, scope: !1165)
!1167 = !DILocation(line: 174, column: 6, scope: !1156)
!1168 = !DILocation(line: 175, column: 21, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1165, file: !361, line: 174, column: 18)
!1170 = !DILocation(line: 175, column: 3, scope: !1169)
!1171 = !DILocation(line: 176, column: 43, scope: !1169)
!1172 = !DILocation(line: 176, column: 3, scope: !1169)
!1173 = !DILocation(line: 177, column: 2, scope: !1169)
!1174 = !DILocation(line: 178, column: 1, scope: !1156)
!1175 = distinct !DISubprogram(name: "cmd_log_stop", scope: !361, file: !361, line: 181, type: !955, isLocal: true, isDefinition: true, scopeLine: 182, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !411)
!1176 = !DILocalVariable(name: "data", arg: 1, scope: !1175, file: !361, line: 181, type: !355)
!1177 = !DILocation(line: 181, column: 38, scope: !1175)
!1178 = !DILocalVariable(name: "log", scope: !1175, file: !361, line: 183, type: !787)
!1179 = !DILocation(line: 183, column: 11, scope: !1175)
!1180 = !DILocation(line: 185, column: 27, scope: !1175)
!1181 = !DILocation(line: 185, column: 8, scope: !1175)
!1182 = !DILocation(line: 185, column: 6, scope: !1175)
!1183 = !DILocation(line: 186, column: 6, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1175, file: !361, line: 186, column: 6)
!1185 = !DILocation(line: 186, column: 10, scope: !1184)
!1186 = !DILocation(line: 186, column: 17, scope: !1184)
!1187 = !DILocation(line: 186, column: 20, scope: !1188)
!1188 = !DILexicalBlockFile(scope: !1184, file: !361, discriminator: 1)
!1189 = !DILocation(line: 186, column: 25, scope: !1188)
!1190 = !DILocation(line: 186, column: 32, scope: !1188)
!1191 = !DILocation(line: 186, column: 6, scope: !1188)
!1192 = !DILocation(line: 187, column: 44, scope: !1184)
!1193 = !DILocation(line: 187, column: 3, scope: !1184)
!1194 = !DILocation(line: 189, column: 20, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1184, file: !361, line: 188, column: 7)
!1196 = !DILocation(line: 189, column: 3, scope: !1195)
!1197 = !DILocation(line: 190, column: 43, scope: !1195)
!1198 = !DILocation(line: 190, column: 3, scope: !1195)
!1199 = !DILocation(line: 192, column: 1, scope: !1175)
!1200 = distinct !DISubprogram(name: "cmd_window_log", scope: !361, file: !361, line: 273, type: !955, isLocal: true, isDefinition: true, scopeLine: 274, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !411)
!1201 = !DILocalVariable(name: "data", arg: 1, scope: !1200, file: !361, line: 273, type: !355)
!1202 = !DILocation(line: 273, column: 40, scope: !1200)
!1203 = !DILocalVariable(name: "log", scope: !1200, file: !361, line: 275, type: !787)
!1204 = !DILocation(line: 275, column: 11, scope: !1200)
!1205 = !DILocalVariable(name: "set", scope: !1200, file: !361, line: 276, type: !364)
!1206 = !DILocation(line: 276, column: 8, scope: !1200)
!1207 = !DILocalVariable(name: "fname", scope: !1200, file: !361, line: 276, type: !364)
!1208 = !DILocation(line: 276, column: 14, scope: !1200)
!1209 = !DILocalVariable(name: "window", scope: !1200, file: !361, line: 276, type: !974)
!1210 = !DILocation(line: 276, column: 21, scope: !1200)
!1211 = !DILocalVariable(name: "free_arg", scope: !1200, file: !361, line: 277, type: !344)
!1212 = !DILocation(line: 277, column: 8, scope: !1200)
!1213 = !DILocalVariable(name: "open_log", scope: !1200, file: !361, line: 278, type: !342)
!1214 = !DILocation(line: 278, column: 6, scope: !1200)
!1215 = !DILocalVariable(name: "close_log", scope: !1200, file: !361, line: 278, type: !342)
!1216 = !DILocation(line: 278, column: 16, scope: !1200)
!1217 = !DILocation(line: 280, column: 22, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1200, file: !361, line: 280, column: 6)
!1219 = !DILocation(line: 280, column: 7, scope: !1218)
!1220 = !DILocation(line: 280, column: 6, scope: !1200)
!1221 = !DILocation(line: 281, column: 3, scope: !1218)
!1222 = !DILocation(line: 283, column: 20, scope: !1200)
!1223 = !DILocation(line: 283, column: 50, scope: !1200)
!1224 = !DILocation(line: 283, column: 62, scope: !1200)
!1225 = !DILocation(line: 283, column: 9, scope: !1200)
!1226 = !DILocation(line: 284, column: 47, scope: !1200)
!1227 = !DILocation(line: 284, column: 8, scope: !1200)
!1228 = !DILocation(line: 284, column: 6, scope: !1200)
!1229 = !DILocation(line: 286, column: 30, scope: !1200)
!1230 = !DILocation(line: 286, column: 18, scope: !1200)
!1231 = !DILocation(line: 287, column: 25, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1200, file: !361, line: 287, column: 6)
!1233 = !DILocation(line: 287, column: 6, scope: !1232)
!1234 = !DILocation(line: 287, column: 36, scope: !1232)
!1235 = !DILocation(line: 287, column: 6, scope: !1200)
!1236 = !DILocation(line: 288, column: 12, scope: !1232)
!1237 = !DILocation(line: 288, column: 3, scope: !1232)
!1238 = !DILocation(line: 289, column: 30, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1232, file: !361, line: 289, column: 11)
!1240 = !DILocation(line: 289, column: 11, scope: !1239)
!1241 = !DILocation(line: 289, column: 42, scope: !1239)
!1242 = !DILocation(line: 289, column: 11, scope: !1232)
!1243 = !DILocation(line: 290, column: 13, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1239, file: !361, line: 289, column: 48)
!1245 = !DILocation(line: 291, column: 2, scope: !1244)
!1246 = !DILocation(line: 291, column: 32, scope: !1247)
!1247 = !DILexicalBlockFile(scope: !1248, file: !361, discriminator: 1)
!1248 = distinct !DILexicalBlock(scope: !1239, file: !361, line: 291, column: 13)
!1249 = !DILocation(line: 291, column: 13, scope: !1247)
!1250 = !DILocation(line: 291, column: 47, scope: !1247)
!1251 = !DILocation(line: 292, column: 28, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1248, file: !361, line: 291, column: 53)
!1253 = !DILocation(line: 292, column: 32, scope: !1252)
!1254 = !DILocation(line: 292, column: 26, scope: !1252)
!1255 = !DILocation(line: 293, column: 29, scope: !1252)
!1256 = !DILocation(line: 293, column: 33, scope: !1252)
!1257 = !DILocation(line: 293, column: 27, scope: !1252)
!1258 = !DILocation(line: 294, column: 2, scope: !1252)
!1259 = !DILocation(line: 295, column: 3, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1248, file: !361, line: 294, column: 9)
!1261 = !DILocation(line: 296, column: 19, scope: !1260)
!1262 = !DILocation(line: 296, column: 3, scope: !1260)
!1263 = !DILocation(line: 297, column: 3, scope: !1260)
!1264 = !DILocation(line: 300, column: 6, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1200, file: !361, line: 300, column: 6)
!1266 = !DILocation(line: 300, column: 15, scope: !1265)
!1267 = !DILocation(line: 300, column: 18, scope: !1268)
!1268 = !DILexicalBlockFile(scope: !1265, file: !361, discriminator: 1)
!1269 = !DILocation(line: 300, column: 22, scope: !1268)
!1270 = !DILocation(line: 300, column: 6, scope: !1268)
!1271 = !DILocation(line: 302, column: 12, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1265, file: !361, line: 300, column: 30)
!1273 = !DILocation(line: 302, column: 11, scope: !1272)
!1274 = !DILocation(line: 302, column: 18, scope: !1272)
!1275 = !DILocation(line: 302, column: 37, scope: !1276)
!1276 = !DILexicalBlockFile(scope: !1272, file: !361, discriminator: 1)
!1277 = !DILocation(line: 302, column: 28, scope: !1276)
!1278 = !DILocation(line: 302, column: 11, scope: !1276)
!1279 = !DILocation(line: 304, column: 6, scope: !1272)
!1280 = !DILocation(line: 304, column: 18, scope: !1272)
!1281 = !DILocation(line: 304, column: 23, scope: !1272)
!1282 = !DILocation(line: 304, column: 32, scope: !1276)
!1283 = !DILocation(line: 304, column: 44, scope: !1276)
!1284 = !DILocation(line: 304, column: 6, scope: !1276)
!1285 = !DILocation(line: 304, column: 6, scope: !1286)
!1286 = !DILexicalBlockFile(scope: !1272, file: !361, discriminator: 2)
!1287 = !DILocation(line: 304, column: 6, scope: !1288)
!1288 = !DILexicalBlockFile(scope: !1272, file: !361, discriminator: 3)
!1289 = !DILocation(line: 305, column: 6, scope: !1272)
!1290 = !DILocation(line: 305, column: 18, scope: !1272)
!1291 = !DILocation(line: 305, column: 23, scope: !1272)
!1292 = !DILocation(line: 305, column: 6, scope: !1276)
!1293 = !DILocation(line: 305, column: 37, scope: !1286)
!1294 = !DILocation(line: 305, column: 6, scope: !1286)
!1295 = !DILocation(line: 305, column: 6, scope: !1288)
!1296 = !DILocation(line: 303, column: 4, scope: !1272)
!1297 = !DILocation(line: 302, column: 11, scope: !1286)
!1298 = !DILocation(line: 302, column: 11, scope: !1288)
!1299 = !DILocation(line: 302, column: 9, scope: !1288)
!1300 = !DILocation(line: 306, column: 24, scope: !1272)
!1301 = !DILocation(line: 306, column: 9, scope: !1272)
!1302 = !DILocation(line: 306, column: 7, scope: !1272)
!1303 = !DILocation(line: 307, column: 3, scope: !1272)
!1304 = !DILocation(line: 307, column: 8, scope: !1272)
!1305 = !DILocation(line: 307, column: 18, scope: !1272)
!1306 = !DILocation(line: 308, column: 30, scope: !1272)
!1307 = !DILocation(line: 308, column: 59, scope: !1272)
!1308 = !DILocation(line: 308, column: 17, scope: !1272)
!1309 = !DILocation(line: 309, column: 14, scope: !1272)
!1310 = !DILocation(line: 309, column: 3, scope: !1272)
!1311 = !DILocation(line: 310, column: 10, scope: !1272)
!1312 = !DILocation(line: 310, column: 3, scope: !1272)
!1313 = !DILocation(line: 311, column: 2, scope: !1272)
!1314 = !DILocation(line: 313, column: 6, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1200, file: !361, line: 313, column: 6)
!1316 = !DILocation(line: 313, column: 15, scope: !1315)
!1317 = !DILocation(line: 313, column: 18, scope: !1318)
!1318 = !DILexicalBlockFile(scope: !1315, file: !361, discriminator: 1)
!1319 = !DILocation(line: 313, column: 22, scope: !1318)
!1320 = !DILocation(line: 313, column: 6, scope: !1318)
!1321 = !DILocation(line: 314, column: 21, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1315, file: !361, line: 313, column: 30)
!1323 = !DILocation(line: 314, column: 3, scope: !1322)
!1324 = !DILocation(line: 315, column: 43, scope: !1322)
!1325 = !DILocation(line: 315, column: 48, scope: !1322)
!1326 = !DILocation(line: 315, column: 3, scope: !1322)
!1327 = !DILocation(line: 316, column: 2, scope: !1322)
!1328 = !DILocation(line: 316, column: 13, scope: !1329)
!1329 = !DILexicalBlockFile(scope: !1330, file: !361, discriminator: 1)
!1330 = distinct !DILexicalBlock(scope: !1315, file: !361, line: 316, column: 13)
!1331 = !DILocation(line: 316, column: 23, scope: !1329)
!1332 = !DILocation(line: 316, column: 26, scope: !1333)
!1333 = !DILexicalBlockFile(scope: !1330, file: !361, discriminator: 2)
!1334 = !DILocation(line: 316, column: 30, scope: !1333)
!1335 = !DILocation(line: 316, column: 37, scope: !1333)
!1336 = !DILocation(line: 316, column: 40, scope: !1337)
!1337 = !DILexicalBlockFile(scope: !1330, file: !361, discriminator: 3)
!1338 = !DILocation(line: 316, column: 45, scope: !1337)
!1339 = !DILocation(line: 316, column: 52, scope: !1337)
!1340 = !DILocation(line: 316, column: 13, scope: !1337)
!1341 = !DILocation(line: 317, column: 20, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1330, file: !361, line: 316, column: 59)
!1343 = !DILocation(line: 317, column: 3, scope: !1342)
!1344 = !DILocation(line: 318, column: 43, scope: !1342)
!1345 = !DILocation(line: 318, column: 48, scope: !1342)
!1346 = !DILocation(line: 318, column: 3, scope: !1342)
!1347 = !DILocation(line: 319, column: 2, scope: !1342)
!1348 = !DILocation(line: 321, column: 25, scope: !1200)
!1349 = !DILocation(line: 321, column: 9, scope: !1200)
!1350 = !DILocation(line: 322, column: 1, scope: !1200)
!1351 = !DILocation(line: 322, column: 1, scope: !1352)
!1352 = !DILexicalBlockFile(scope: !1200, file: !361, discriminator: 1)
!1353 = distinct !DISubprogram(name: "cmd_window_logfile", scope: !361, file: !361, line: 326, type: !955, isLocal: true, isDefinition: true, scopeLine: 327, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !411)
!1354 = !DILocalVariable(name: "data", arg: 1, scope: !1353, file: !361, line: 326, type: !355)
!1355 = !DILocation(line: 326, column: 44, scope: !1353)
!1356 = !DILocalVariable(name: "log", scope: !1353, file: !361, line: 328, type: !787)
!1357 = !DILocation(line: 328, column: 11, scope: !1353)
!1358 = !DILocalVariable(name: "window", scope: !1353, file: !361, line: 329, type: !974)
!1359 = !DILocation(line: 329, column: 7, scope: !1353)
!1360 = !DILocation(line: 331, column: 20, scope: !1353)
!1361 = !DILocation(line: 331, column: 50, scope: !1353)
!1362 = !DILocation(line: 331, column: 62, scope: !1353)
!1363 = !DILocation(line: 331, column: 9, scope: !1353)
!1364 = !DILocation(line: 332, column: 47, scope: !1353)
!1365 = !DILocation(line: 332, column: 8, scope: !1353)
!1366 = !DILocation(line: 332, column: 6, scope: !1353)
!1367 = !DILocation(line: 334, column: 6, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1353, file: !361, line: 334, column: 6)
!1369 = !DILocation(line: 334, column: 10, scope: !1368)
!1370 = !DILocation(line: 334, column: 6, scope: !1353)
!1371 = !DILocation(line: 335, column: 3, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1368, file: !361, line: 334, column: 18)
!1373 = !DILocation(line: 336, column: 3, scope: !1372)
!1374 = !DILocation(line: 339, column: 23, scope: !1353)
!1375 = !DILocation(line: 339, column: 8, scope: !1353)
!1376 = !DILocation(line: 339, column: 6, scope: !1353)
!1377 = !DILocation(line: 340, column: 2, scope: !1353)
!1378 = !DILocation(line: 340, column: 7, scope: !1353)
!1379 = !DILocation(line: 340, column: 17, scope: !1353)
!1380 = !DILocation(line: 341, column: 15, scope: !1353)
!1381 = !DILocation(line: 341, column: 44, scope: !1353)
!1382 = !DILocation(line: 341, column: 2, scope: !1353)
!1383 = !DILocation(line: 342, column: 13, scope: !1353)
!1384 = !DILocation(line: 342, column: 2, scope: !1353)
!1385 = !DILocation(line: 344, column: 46, scope: !1353)
!1386 = !DILocation(line: 344, column: 2, scope: !1353)
!1387 = !DILocation(line: 345, column: 1, scope: !1353)
!1388 = !DILocation(line: 345, column: 1, scope: !1389)
!1389 = !DILexicalBlockFile(scope: !1353, file: !361, discriminator: 1)
!1390 = distinct !DISubprogram(name: "sig_printtext", scope: !361, file: !361, line: 537, type: !1391, isLocal: true, isDefinition: true, scopeLine: 539, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !411)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{null, !1393, !355, !355}
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64, align: 64)
!1394 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_DEST_REC", file: !1395, line: 62, baseType: !1396)
!1395 = !DIFile(filename: "formats.h", directory: "/home/lichi/Desktop/irssi/task1")
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TEXT_DEST_REC", file: !1395, line: 50, size: 576, align: 64, elements: !1397)
!1397 = !{!1398, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !1396, file: !1395, line: 51, baseType: !1399, size: 64, align: 64)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64, align: 64)
!1400 = !DIDerivedType(tag: DW_TAG_typedef, name: "WINDOW_REC", file: !452, line: 117, baseType: !1401)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WINDOW_REC", file: !1402, line: 28, size: 1280, align: 64, elements: !1403)
!1402 = !DIFile(filename: "fe-windows.h", directory: "/home/lichi/Desktop/irssi/task1")
!1403 = !{!1404, !1405, !1406, !1407, !1408, !1409, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "refnum", scope: !1401, file: !1402, line: 29, baseType: !342, size: 32, align: 32)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1401, file: !1402, line: 30, baseType: !364, size: 64, align: 64, offset: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !1401, file: !1402, line: 32, baseType: !342, size: 32, align: 32, offset: 128)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !1401, file: !1402, line: 32, baseType: !342, size: 32, align: 32, offset: 160)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !1401, file: !1402, line: 34, baseType: !396, size: 64, align: 64, offset: 192)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1401, file: !1402, line: 35, baseType: !1410, size: 64, align: 64, offset: 256)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64, align: 64)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !452, line: 108, baseType: !1412)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !1413, line: 5, size: 704, align: 64, elements: !1414)
!1413 = !DIFile(filename: "../../../src/core/window-item-def.h", directory: "/home/lichi/Desktop/irssi/task1")
!1414 = !{!1415, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1430}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1412, file: !1416, line: 3, baseType: !342, size: 32, align: 32)
!1416 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !1412, file: !1416, line: 4, baseType: !342, size: 32, align: 32, offset: 32)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !1412, file: !1416, line: 5, baseType: !387, size: 64, align: 64, offset: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !1412, file: !1416, line: 7, baseType: !344, size: 64, align: 64, offset: 128)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !1412, file: !1416, line: 8, baseType: !450, size: 64, align: 64, offset: 192)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !1412, file: !1416, line: 9, baseType: !364, size: 64, align: 64, offset: 256)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1412, file: !1416, line: 10, baseType: !364, size: 64, align: 64, offset: 320)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !1412, file: !1416, line: 11, baseType: !379, size: 64, align: 64, offset: 384)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !1412, file: !1416, line: 12, baseType: !342, size: 32, align: 32, offset: 448)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !1412, file: !1416, line: 13, baseType: !364, size: 64, align: 64, offset: 512)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !1412, file: !1416, line: 15, baseType: !1427, size: 64, align: 64, offset: 576)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64, align: 64)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{null, !1410}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !1412, file: !1416, line: 17, baseType: !1431, size: 64, align: 64, offset: 640)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64, align: 64)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!355, !1410}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "active_server", scope: !1401, file: !1402, line: 36, baseType: !450, size: 64, align: 64, offset: 320)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "connect_server", scope: !1401, file: !1402, line: 37, baseType: !450, size: 64, align: 64, offset: 384)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !1401, file: !1402, line: 38, baseType: !364, size: 64, align: 64, offset: 448)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1401, file: !1402, line: 40, baseType: !342, size: 32, align: 32, offset: 512)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "bound_items", scope: !1401, file: !1402, line: 41, baseType: !396, size: 64, align: 64, offset: 576)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "immortal", scope: !1401, file: !1402, line: 43, baseType: !385, size: 1, align: 32, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "sticky_refnum", scope: !1401, file: !1402, line: 44, baseType: !385, size: 1, align: 32, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !1401, file: !1402, line: 45, baseType: !385, size: 1, align: 32, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !1401, file: !1402, line: 48, baseType: !1443, size: 64, align: 64, offset: 704)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64, align: 64)
!1444 = !DIDerivedType(tag: DW_TAG_typedef, name: "HISTORY_REC", file: !1445, line: 14, baseType: !1446)
!1445 = !DIFile(filename: "command-history.h", directory: "/home/lichi/Desktop/irssi/task1")
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1445, line: 6, size: 256, align: 64, elements: !1447)
!1447 = !{!1448, !1449, !1458, !1459, !1460}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1446, file: !1445, line: 7, baseType: !364, size: 64, align: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1446, file: !1445, line: 9, baseType: !1450, size: 64, align: 64, offset: 64)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64, align: 64)
!1451 = !DIDerivedType(tag: DW_TAG_typedef, name: "GList", file: !1452, line: 37, baseType: !1453)
!1452 = !DIFile(filename: "/usr/include/glib-2.0/glib/glist.h", directory: "/home/lichi/Desktop/irssi/task1")
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GList", file: !1452, line: 39, size: 192, align: 64, elements: !1454)
!1454 = !{!1455, !1456, !1457}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1453, file: !1452, line: 41, baseType: !343, size: 64, align: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1453, file: !1452, line: 42, baseType: !1450, size: 64, align: 64, offset: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1453, file: !1452, line: 43, baseType: !1450, size: 64, align: 64, offset: 128)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "lines", scope: !1446, file: !1445, line: 10, baseType: !342, size: 32, align: 32, offset: 128)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1446, file: !1445, line: 12, baseType: !342, size: 32, align: 32, offset: 160)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "redo", scope: !1446, file: !1445, line: 13, baseType: !342, size: 1, align: 32, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "history_name", scope: !1401, file: !1402, line: 49, baseType: !364, size: 64, align: 64, offset: 768)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !1401, file: !1402, line: 51, baseType: !342, size: 32, align: 32, offset: 832)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !1401, file: !1402, line: 52, baseType: !364, size: 64, align: 64, offset: 896)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "last_timestamp", scope: !1401, file: !1402, line: 54, baseType: !379, size: 64, align: 64, offset: 960)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "last_line", scope: !1401, file: !1402, line: 55, baseType: !379, size: 64, align: 64, offset: 1024)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "theme_name", scope: !1401, file: !1402, line: 57, baseType: !364, size: 64, align: 64, offset: 1088)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "theme", scope: !1401, file: !1402, line: 58, baseType: !344, size: 64, align: 64, offset: 1152)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "gui_data", scope: !1401, file: !1402, line: 60, baseType: !344, size: 64, align: 64, offset: 1216)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !1396, file: !1395, line: 52, baseType: !450, size: 64, align: 64, offset: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "server_tag", scope: !1396, file: !1395, line: 53, baseType: !355, size: 64, align: 64, offset: 128)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1396, file: !1395, line: 54, baseType: !355, size: 64, align: 64, offset: 192)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !1396, file: !1395, line: 55, baseType: !355, size: 64, align: 64, offset: 256)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1396, file: !1395, line: 56, baseType: !355, size: 64, align: 64, offset: 320)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1396, file: !1395, line: 57, baseType: !342, size: 32, align: 32, offset: 384)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_priority", scope: !1396, file: !1395, line: 59, baseType: !342, size: 32, align: 32, offset: 416)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !1396, file: !1395, line: 60, baseType: !364, size: 64, align: 64, offset: 448)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1396, file: !1395, line: 61, baseType: !342, size: 32, align: 32, offset: 512)
!1478 = !DILocalVariable(name: "dest", arg: 1, scope: !1390, file: !361, line: 537, type: !1393)
!1479 = !DILocation(line: 537, column: 42, scope: !1390)
!1480 = !DILocalVariable(name: "text", arg: 2, scope: !1390, file: !361, line: 537, type: !355)
!1481 = !DILocation(line: 537, column: 60, scope: !1390)
!1482 = !DILocalVariable(name: "stripped", arg: 3, scope: !1390, file: !361, line: 538, type: !355)
!1483 = !DILocation(line: 538, column: 18, scope: !1390)
!1484 = !DILocation(line: 540, column: 6, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1390, file: !361, line: 540, column: 6)
!1486 = !DILocation(line: 540, column: 6, scope: !1390)
!1487 = !DILocation(line: 541, column: 23, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1485, file: !361, line: 540, column: 27)
!1489 = !DILocation(line: 542, column: 3, scope: !1488)
!1490 = !DILocation(line: 545, column: 11, scope: !1390)
!1491 = !DILocation(line: 545, column: 17, scope: !1390)
!1492 = !DILocation(line: 545, column: 2, scope: !1390)
!1493 = !DILocation(line: 546, column: 1, scope: !1390)
!1494 = !DILocation(line: 546, column: 1, scope: !1495)
!1495 = !DILexicalBlockFile(scope: !1390, file: !361, discriminator: 1)
!1496 = distinct !DISubprogram(name: "sig_window_item_remove", scope: !361, file: !361, line: 611, type: !1497, isLocal: true, isDefinition: true, scopeLine: 612, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !411)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{null, !1399, !1410}
!1499 = !DILocalVariable(name: "window", arg: 1, scope: !1496, file: !361, line: 611, type: !1399)
!1500 = !DILocation(line: 611, column: 48, scope: !1496)
!1501 = !DILocalVariable(name: "item", arg: 2, scope: !1496, file: !361, line: 611, type: !1410)
!1502 = !DILocation(line: 611, column: 69, scope: !1496)
!1503 = !DILocalVariable(name: "log", scope: !1496, file: !361, line: 613, type: !787)
!1504 = !DILocation(line: 613, column: 11, scope: !1496)
!1505 = !DILocation(line: 615, column: 40, scope: !1496)
!1506 = !DILocation(line: 615, column: 46, scope: !1496)
!1507 = !DILocation(line: 616, column: 9, scope: !1496)
!1508 = !DILocation(line: 616, column: 15, scope: !1496)
!1509 = !DILocation(line: 616, column: 22, scope: !1496)
!1510 = !DILocation(line: 616, column: 9, scope: !1511)
!1511 = !DILexicalBlockFile(scope: !1496, file: !361, discriminator: 1)
!1512 = !DILocation(line: 617, column: 9, scope: !1496)
!1513 = !DILocation(line: 617, column: 15, scope: !1496)
!1514 = !DILocation(line: 617, column: 23, scope: !1496)
!1515 = !DILocation(line: 616, column: 9, scope: !1516)
!1516 = !DILexicalBlockFile(scope: !1496, file: !361, discriminator: 2)
!1517 = !DILocation(line: 616, column: 9, scope: !1518)
!1518 = !DILexicalBlockFile(scope: !1496, file: !361, discriminator: 3)
!1519 = !DILocation(line: 615, column: 8, scope: !1511)
!1520 = !DILocation(line: 615, column: 6, scope: !1511)
!1521 = !DILocation(line: 618, column: 6, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1496, file: !361, line: 618, column: 6)
!1523 = !DILocation(line: 618, column: 10, scope: !1522)
!1524 = !DILocation(line: 618, column: 17, scope: !1522)
!1525 = !DILocation(line: 618, column: 20, scope: !1526)
!1526 = !DILexicalBlockFile(scope: !1522, file: !361, discriminator: 1)
!1527 = !DILocation(line: 618, column: 25, scope: !1526)
!1528 = !DILocation(line: 618, column: 6, scope: !1526)
!1529 = !DILocation(line: 619, column: 13, scope: !1522)
!1530 = !DILocation(line: 619, column: 3, scope: !1522)
!1531 = !DILocation(line: 620, column: 1, scope: !1496)
!1532 = distinct !DISubprogram(name: "sig_window_refnum_changed", scope: !361, file: !361, line: 348, type: !1533, isLocal: true, isDefinition: true, scopeLine: 349, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !411)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{null, !1399, !343}
!1535 = !DILocalVariable(name: "window", arg: 1, scope: !1532, file: !361, line: 348, type: !1399)
!1536 = !DILocation(line: 348, column: 51, scope: !1532)
!1537 = !DILocalVariable(name: "old_refnum", arg: 2, scope: !1532, file: !361, line: 348, type: !343)
!1538 = !DILocation(line: 348, column: 68, scope: !1532)
!1539 = !DILocalVariable(name: "winnum", scope: !1532, file: !361, line: 350, type: !974)
!1540 = !DILocation(line: 350, column: 7, scope: !1532)
!1541 = !DILocalVariable(name: "log", scope: !1532, file: !361, line: 351, type: !787)
!1542 = !DILocation(line: 351, column: 11, scope: !1532)
!1543 = !DILocalVariable(name: "item", scope: !1532, file: !361, line: 352, type: !759)
!1544 = !DILocation(line: 352, column: 16, scope: !1532)
!1545 = !DILocation(line: 354, column: 20, scope: !1532)
!1546 = !DILocation(line: 354, column: 67, scope: !1532)
!1547 = !DILocation(line: 354, column: 58, scope: !1532)
!1548 = !DILocation(line: 354, column: 51, scope: !1532)
!1549 = !DILocation(line: 354, column: 9, scope: !1532)
!1550 = !DILocation(line: 355, column: 47, scope: !1532)
!1551 = !DILocation(line: 355, column: 8, scope: !1532)
!1552 = !DILocation(line: 355, column: 6, scope: !1532)
!1553 = !DILocation(line: 357, column: 6, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1532, file: !361, line: 357, column: 6)
!1555 = !DILocation(line: 357, column: 10, scope: !1554)
!1556 = !DILocation(line: 357, column: 6, scope: !1532)
!1557 = !DILocation(line: 358, column: 14, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1554, file: !361, line: 357, column: 18)
!1559 = !DILocation(line: 358, column: 44, scope: !1558)
!1560 = !DILocation(line: 358, column: 52, scope: !1558)
!1561 = !DILocation(line: 358, column: 3, scope: !1558)
!1562 = !DILocation(line: 360, column: 10, scope: !1558)
!1563 = !DILocation(line: 360, column: 16, scope: !1558)
!1564 = !DILocation(line: 360, column: 3, scope: !1558)
!1565 = !DILocation(line: 361, column: 25, scope: !1558)
!1566 = !DILocation(line: 361, column: 16, scope: !1558)
!1567 = !DILocation(line: 361, column: 3, scope: !1558)
!1568 = !DILocation(line: 361, column: 9, scope: !1558)
!1569 = !DILocation(line: 361, column: 14, scope: !1558)
!1570 = !DILocation(line: 362, column: 2, scope: !1558)
!1571 = !DILocation(line: 363, column: 1, scope: !1532)
!1572 = distinct !DISubprogram(name: "sig_server_disconnected", scope: !361, file: !361, line: 365, type: !1573, isLocal: true, isDefinition: true, scopeLine: 366, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !411)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{null, !450}
!1575 = !DILocalVariable(name: "server", arg: 1, scope: !1572, file: !361, line: 365, type: !450)
!1576 = !DILocation(line: 365, column: 49, scope: !1572)
!1577 = !DILocalVariable(name: "logitem", scope: !1572, file: !361, line: 367, type: !759)
!1578 = !DILocation(line: 367, column: 23, scope: !1572)
!1579 = !DILocalVariable(name: "tmp", scope: !1572, file: !361, line: 368, type: !396)
!1580 = !DILocation(line: 368, column: 10, scope: !1572)
!1581 = !DILocalVariable(name: "next", scope: !1572, file: !361, line: 368, type: !396)
!1582 = !DILocation(line: 368, column: 16, scope: !1572)
!1583 = !DILocation(line: 370, column: 13, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1572, file: !361, line: 370, column: 2)
!1585 = !DILocation(line: 370, column: 11, scope: !1584)
!1586 = !DILocation(line: 370, column: 7, scope: !1584)
!1587 = !DILocation(line: 370, column: 19, scope: !1588)
!1588 = !DILexicalBlockFile(scope: !1589, file: !361, discriminator: 1)
!1589 = distinct !DILexicalBlock(scope: !1584, file: !361, line: 370, column: 2)
!1590 = !DILocation(line: 370, column: 23, scope: !1588)
!1591 = !DILocation(line: 370, column: 2, scope: !1588)
!1592 = !DILocalVariable(name: "log", scope: !1593, file: !361, line: 371, type: !787)
!1593 = distinct !DILexicalBlock(scope: !1589, file: !361, line: 370, column: 43)
!1594 = !DILocation(line: 371, column: 12, scope: !1593)
!1595 = !DILocation(line: 371, column: 18, scope: !1593)
!1596 = !DILocation(line: 371, column: 23, scope: !1593)
!1597 = !DILocation(line: 372, column: 10, scope: !1593)
!1598 = !DILocation(line: 372, column: 15, scope: !1593)
!1599 = !DILocation(line: 372, column: 8, scope: !1593)
!1600 = !DILocation(line: 374, column: 8, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1593, file: !361, line: 374, column: 7)
!1602 = !DILocation(line: 374, column: 13, scope: !1601)
!1603 = !DILocation(line: 374, column: 18, scope: !1601)
!1604 = !DILocation(line: 374, column: 21, scope: !1605)
!1605 = !DILexicalBlockFile(scope: !1601, file: !361, discriminator: 1)
!1606 = !DILocation(line: 374, column: 26, scope: !1605)
!1607 = !DILocation(line: 374, column: 32, scope: !1605)
!1608 = !DILocation(line: 374, column: 7, scope: !1605)
!1609 = !DILocation(line: 375, column: 25, scope: !1601)
!1610 = !DILocation(line: 377, column: 13, scope: !1593)
!1611 = !DILocation(line: 377, column: 18, scope: !1593)
!1612 = !DILocation(line: 377, column: 25, scope: !1593)
!1613 = !DILocation(line: 377, column: 11, scope: !1593)
!1614 = !DILocation(line: 378, column: 7, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1593, file: !361, line: 378, column: 7)
!1616 = !DILocation(line: 378, column: 16, scope: !1615)
!1617 = !DILocation(line: 378, column: 21, scope: !1615)
!1618 = !DILocation(line: 378, column: 40, scope: !1615)
!1619 = !DILocation(line: 379, column: 7, scope: !1615)
!1620 = !DILocation(line: 379, column: 16, scope: !1615)
!1621 = !DILocation(line: 379, column: 26, scope: !1615)
!1622 = !DILocation(line: 379, column: 33, scope: !1615)
!1623 = !DILocation(line: 380, column: 26, scope: !1615)
!1624 = !DILocation(line: 380, column: 35, scope: !1615)
!1625 = !DILocation(line: 380, column: 46, scope: !1615)
!1626 = !DILocation(line: 380, column: 54, scope: !1615)
!1627 = !DILocation(line: 380, column: 7, scope: !1615)
!1628 = !DILocation(line: 380, column: 59, scope: !1615)
!1629 = !DILocation(line: 380, column: 64, scope: !1615)
!1630 = !DILocation(line: 381, column: 9, scope: !1615)
!1631 = !DILocation(line: 381, column: 18, scope: !1615)
!1632 = !DILocation(line: 381, column: 28, scope: !1615)
!1633 = !DILocation(line: 381, column: 36, scope: !1615)
!1634 = !DILocation(line: 381, column: 45, scope: !1615)
!1635 = !DILocation(line: 381, column: 8, scope: !1615)
!1636 = !DILocation(line: 378, column: 7, scope: !1637)
!1637 = !DILexicalBlockFile(scope: !1593, file: !361, discriminator: 1)
!1638 = !DILocation(line: 382, column: 14, scope: !1615)
!1639 = !DILocation(line: 382, column: 4, scope: !1615)
!1640 = !DILocation(line: 383, column: 2, scope: !1593)
!1641 = !DILocation(line: 370, column: 37, scope: !1642)
!1642 = !DILexicalBlockFile(scope: !1589, file: !361, discriminator: 2)
!1643 = !DILocation(line: 370, column: 35, scope: !1642)
!1644 = !DILocation(line: 370, column: 2, scope: !1642)
!1645 = distinct !{!1645, !1646}
!1646 = !DILocation(line: 370, column: 2, scope: !1572)
!1647 = !DILocation(line: 384, column: 1, scope: !1572)
!1648 = distinct !DISubprogram(name: "sig_log_locked", scope: !361, file: !361, line: 622, type: !1649, isLocal: true, isDefinition: true, scopeLine: 623, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !411)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{null, !787}
!1651 = !DILocalVariable(name: "log", arg: 1, scope: !1648, file: !361, line: 622, type: !787)
!1652 = !DILocation(line: 622, column: 37, scope: !1648)
!1653 = !DILocation(line: 624, column: 41, scope: !1648)
!1654 = !DILocation(line: 624, column: 46, scope: !1648)
!1655 = !DILocation(line: 624, column: 2, scope: !1648)
!1656 = !DILocation(line: 626, column: 1, scope: !1648)
!1657 = distinct !DISubprogram(name: "sig_log_create_failed", scope: !361, file: !361, line: 628, type: !1649, isLocal: true, isDefinition: true, scopeLine: 629, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !411)
!1658 = !DILocalVariable(name: "log", arg: 1, scope: !1657, file: !361, line: 628, type: !787)
!1659 = !DILocation(line: 628, column: 44, scope: !1657)
!1660 = !DILocation(line: 630, column: 48, scope: !1657)
!1661 = !DILocation(line: 630, column: 53, scope: !1657)
!1662 = !DILocation(line: 630, column: 3, scope: !1657)
!1663 = !DILocation(line: 630, column: 2, scope: !1657)
!1664 = !DILocation(line: 630, column: 65, scope: !1665)
!1665 = !DILexicalBlockFile(scope: !1657, file: !361, discriminator: 1)
!1666 = !DILocation(line: 630, column: 2, scope: !1667)
!1667 = !DILexicalBlockFile(scope: !1657, file: !361, discriminator: 2)
!1668 = !DILocation(line: 633, column: 1, scope: !1657)
!1669 = distinct !DISubprogram(name: "sig_log_new", scope: !361, file: !361, line: 635, type: !1649, isLocal: true, isDefinition: true, scopeLine: 636, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !411)
!1670 = !DILocalVariable(name: "log", arg: 1, scope: !1669, file: !361, line: 635, type: !787)
!1671 = !DILocation(line: 635, column: 34, scope: !1669)
!1672 = !DILocation(line: 637, column: 7, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1669, file: !361, line: 637, column: 6)
!1674 = !DILocation(line: 637, column: 43, scope: !1673)
!1675 = !DILocation(line: 638, column: 16, scope: !1673)
!1676 = !DILocation(line: 638, column: 21, scope: !1673)
!1677 = !DILocation(line: 638, column: 28, scope: !1673)
!1678 = !DILocation(line: 638, column: 6, scope: !1679)
!1679 = !DILexicalBlockFile(scope: !1673, file: !361, discriminator: 1)
!1680 = !DILocation(line: 638, column: 62, scope: !1673)
!1681 = !DILocation(line: 637, column: 6, scope: !1682)
!1682 = !DILexicalBlockFile(scope: !1669, file: !361, discriminator: 1)
!1683 = !DILocation(line: 639, column: 17, scope: !1673)
!1684 = !DILocation(line: 639, column: 22, scope: !1673)
!1685 = !DILocation(line: 639, column: 32, scope: !1673)
!1686 = !DILocation(line: 640, column: 1, scope: !1669)
!1687 = distinct !DISubprogram(name: "sig_log_config_read", scope: !361, file: !361, line: 642, type: !1688, isLocal: true, isDefinition: true, scopeLine: 643, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !411)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{null, !787, !1690}
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64, align: 64)
!1691 = !DIDerivedType(tag: DW_TAG_typedef, name: "CONFIG_NODE", file: !1692, line: 17, baseType: !1693)
!1692 = !DIFile(filename: "../../../src/lib-config/iconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CONFIG_NODE", file: !1692, line: 20, size: 192, align: 64, elements: !1694)
!1694 = !{!1695, !1696, !1697}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1693, file: !1692, line: 21, baseType: !342, size: 32, align: 32)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1693, file: !1692, line: 22, baseType: !364, size: 64, align: 64, offset: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1693, file: !1692, line: 23, baseType: !344, size: 64, align: 64, offset: 128)
!1698 = !DILocalVariable(name: "log", arg: 1, scope: !1687, file: !361, line: 642, type: !787)
!1699 = !DILocation(line: 642, column: 42, scope: !1687)
!1700 = !DILocalVariable(name: "node", arg: 2, scope: !1687, file: !361, line: 642, type: !1690)
!1701 = !DILocation(line: 642, column: 60, scope: !1687)
!1702 = !DILocation(line: 644, column: 35, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1687, file: !361, line: 644, column: 13)
!1704 = !DILocation(line: 644, column: 14, scope: !1703)
!1705 = !DILocation(line: 644, column: 13, scope: !1687)
!1706 = !DILocation(line: 645, column: 3, scope: !1703)
!1707 = !DILocation(line: 645, column: 8, scope: !1703)
!1708 = !DILocation(line: 645, column: 18, scope: !1703)
!1709 = !DILocation(line: 646, column: 1, scope: !1687)
!1710 = distinct !DISubprogram(name: "sig_log_config_save", scope: !361, file: !361, line: 648, type: !1688, isLocal: true, isDefinition: true, scopeLine: 649, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !411)
!1711 = !DILocalVariable(name: "log", arg: 1, scope: !1710, file: !361, line: 648, type: !787)
!1712 = !DILocation(line: 648, column: 42, scope: !1710)
!1713 = !DILocalVariable(name: "node", arg: 2, scope: !1710, file: !361, line: 648, type: !1690)
!1714 = !DILocation(line: 648, column: 60, scope: !1710)
!1715 = !DILocation(line: 650, column: 13, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1710, file: !361, line: 650, column: 13)
!1717 = !DILocation(line: 650, column: 18, scope: !1716)
!1718 = !DILocation(line: 650, column: 28, scope: !1716)
!1719 = !DILocation(line: 650, column: 13, scope: !1710)
!1720 = !DILocation(line: 651, column: 24, scope: !1716)
!1721 = !DILocation(line: 651, column: 36, scope: !1716)
!1722 = !DILocation(line: 651, column: 3, scope: !1716)
!1723 = !DILocation(line: 653, column: 23, scope: !1716)
!1724 = !DILocation(line: 653, column: 35, scope: !1716)
!1725 = !DILocation(line: 653, column: 3, scope: !1716)
!1726 = !DILocation(line: 654, column: 1, scope: !1710)
!1727 = distinct !DISubprogram(name: "sig_awaylog_show", scope: !361, file: !361, line: 656, type: !1728, isLocal: true, isDefinition: true, scopeLine: 657, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !411)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{null, !787, !343, !343}
!1730 = !DILocalVariable(name: "log", arg: 1, scope: !1727, file: !361, line: 656, type: !787)
!1731 = !DILocation(line: 656, column: 39, scope: !1727)
!1732 = !DILocalVariable(name: "pmsgs", arg: 2, scope: !1727, file: !361, line: 656, type: !343)
!1733 = !DILocation(line: 656, column: 53, scope: !1727)
!1734 = !DILocalVariable(name: "pfilepos", arg: 3, scope: !1727, file: !361, line: 656, type: !343)
!1735 = !DILocation(line: 656, column: 69, scope: !1727)
!1736 = !DILocalVariable(name: "str", scope: !1727, file: !361, line: 658, type: !364)
!1737 = !DILocation(line: 658, column: 8, scope: !1727)
!1738 = !DILocalVariable(name: "msgs", scope: !1727, file: !361, line: 659, type: !342)
!1739 = !DILocation(line: 659, column: 6, scope: !1727)
!1740 = !DILocalVariable(name: "filepos", scope: !1727, file: !361, line: 659, type: !342)
!1741 = !DILocation(line: 659, column: 12, scope: !1727)
!1742 = !DILocation(line: 661, column: 26, scope: !1727)
!1743 = !DILocation(line: 661, column: 17, scope: !1727)
!1744 = !DILocation(line: 661, column: 10, scope: !1727)
!1745 = !DILocation(line: 661, column: 7, scope: !1727)
!1746 = !DILocation(line: 662, column: 29, scope: !1727)
!1747 = !DILocation(line: 662, column: 20, scope: !1727)
!1748 = !DILocation(line: 662, column: 13, scope: !1727)
!1749 = !DILocation(line: 662, column: 10, scope: !1727)
!1750 = !DILocation(line: 664, column: 6, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1727, file: !361, line: 664, column: 6)
!1752 = !DILocation(line: 664, column: 11, scope: !1751)
!1753 = !DILocation(line: 664, column: 6, scope: !1727)
!1754 = !DILocation(line: 665, column: 49, scope: !1751)
!1755 = !DILocation(line: 665, column: 54, scope: !1751)
!1756 = !DILocation(line: 665, column: 3, scope: !1751)
!1757 = !DILocation(line: 667, column: 46, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1751, file: !361, line: 666, column: 7)
!1759 = !DILocation(line: 667, column: 51, scope: !1758)
!1760 = !DILocation(line: 667, column: 63, scope: !1758)
!1761 = !DILocation(line: 667, column: 3, scope: !1758)
!1762 = !DILocation(line: 669, column: 52, scope: !1758)
!1763 = !DILocation(line: 669, column: 57, scope: !1758)
!1764 = !DILocation(line: 669, column: 69, scope: !1758)
!1765 = !DILocation(line: 669, column: 23, scope: !1758)
!1766 = !DILocation(line: 669, column: 21, scope: !1758)
!1767 = !DILocation(line: 670, column: 33, scope: !1758)
!1768 = !DILocation(line: 670, column: 3, scope: !1758)
!1769 = !DILocation(line: 671, column: 10, scope: !1758)
!1770 = !DILocation(line: 671, column: 3, scope: !1758)
!1771 = !DILocation(line: 673, column: 1, scope: !1727)
!1772 = distinct !DISubprogram(name: "sig_theme_destroyed", scope: !361, file: !361, line: 675, type: !1773, isLocal: true, isDefinition: true, scopeLine: 676, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !411)
!1773 = !DISubroutineType(types: !1774)
!1774 = !{null, !370}
!1775 = !DILocalVariable(name: "theme", arg: 1, scope: !1772, file: !361, line: 675, type: !370)
!1776 = !DILocation(line: 675, column: 44, scope: !1772)
!1777 = !DILocation(line: 677, column: 6, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1772, file: !361, line: 677, column: 6)
!1779 = !DILocation(line: 677, column: 15, scope: !1778)
!1780 = !DILocation(line: 677, column: 12, scope: !1778)
!1781 = !DILocation(line: 677, column: 6, scope: !1772)
!1782 = !DILocation(line: 678, column: 13, scope: !1778)
!1783 = !DILocation(line: 678, column: 3, scope: !1778)
!1784 = !DILocation(line: 679, column: 1, scope: !1772)
!1785 = distinct !DISubprogram(name: "fe_log_deinit", scope: !361, file: !361, line: 757, type: !409, isLocal: false, isDefinition: true, scopeLine: 758, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !411)
!1786 = !DILocation(line: 759, column: 18, scope: !1785)
!1787 = !DILocation(line: 759, column: 2, scope: !1785)
!1788 = !DILocation(line: 760, column: 6, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1785, file: !361, line: 760, column: 6)
!1790 = !DILocation(line: 760, column: 21, scope: !1789)
!1791 = !DILocation(line: 760, column: 6, scope: !1785)
!1792 = !DILocation(line: 761, column: 3, scope: !1789)
!1793 = !DILocation(line: 763, column: 2, scope: !1785)
!1794 = !DILocation(line: 764, column: 2, scope: !1785)
!1795 = !DILocation(line: 765, column: 2, scope: !1785)
!1796 = !DILocation(line: 766, column: 2, scope: !1785)
!1797 = !DILocation(line: 767, column: 2, scope: !1785)
!1798 = !DILocation(line: 768, column: 2, scope: !1785)
!1799 = !DILocation(line: 769, column: 2, scope: !1785)
!1800 = !DILocation(line: 770, column: 2, scope: !1785)
!1801 = !DILocation(line: 771, column: 2, scope: !1785)
!1802 = !DILocation(line: 772, column: 2, scope: !1785)
!1803 = !DILocation(line: 773, column: 2, scope: !1785)
!1804 = !DILocation(line: 774, column: 2, scope: !1785)
!1805 = !DILocation(line: 775, column: 2, scope: !1785)
!1806 = !DILocation(line: 776, column: 2, scope: !1785)
!1807 = !DILocation(line: 777, column: 2, scope: !1785)
!1808 = !DILocation(line: 778, column: 2, scope: !1785)
!1809 = !DILocation(line: 779, column: 2, scope: !1785)
!1810 = !DILocation(line: 780, column: 2, scope: !1785)
!1811 = !DILocation(line: 781, column: 2, scope: !1785)
!1812 = !DILocation(line: 783, column: 6, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1785, file: !361, line: 783, column: 6)
!1814 = !DILocation(line: 783, column: 29, scope: !1813)
!1815 = !DILocation(line: 783, column: 6, scope: !1785)
!1816 = !DILocation(line: 784, column: 14, scope: !1813)
!1817 = !DILocation(line: 784, column: 3, scope: !1813)
!1818 = !DILocation(line: 786, column: 9, scope: !1785)
!1819 = !DILocation(line: 786, column: 2, scope: !1785)
!1820 = !DILocation(line: 787, column: 9, scope: !1785)
!1821 = !DILocation(line: 787, column: 2, scope: !1785)
!1822 = !DILocation(line: 788, column: 1, scope: !1785)
!1823 = distinct !DISubprogram(name: "sig_print_format", scope: !361, file: !361, line: 548, type: !1824, isLocal: true, isDefinition: true, scopeLine: 550, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !411)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{null, !370, !355, !1393, !344, !368}
!1826 = !DILocalVariable(name: "theme", arg: 1, scope: !1823, file: !361, line: 548, type: !370)
!1827 = !DILocation(line: 548, column: 41, scope: !1823)
!1828 = !DILocalVariable(name: "module", arg: 2, scope: !1823, file: !361, line: 548, type: !355)
!1829 = !DILocation(line: 548, column: 60, scope: !1823)
!1830 = !DILocalVariable(name: "dest", arg: 3, scope: !1823, file: !361, line: 549, type: !1393)
!1831 = !DILocation(line: 549, column: 24, scope: !1823)
!1832 = !DILocalVariable(name: "formatnum", arg: 4, scope: !1823, file: !361, line: 549, type: !344)
!1833 = !DILocation(line: 549, column: 36, scope: !1823)
!1834 = !DILocalVariable(name: "args", arg: 5, scope: !1823, file: !361, line: 549, type: !368)
!1835 = !DILocation(line: 549, column: 54, scope: !1823)
!1836 = !DILocalVariable(name: "str", scope: !1823, file: !361, line: 551, type: !364)
!1837 = !DILocation(line: 551, column: 8, scope: !1823)
!1838 = !DILocalVariable(name: "linestart", scope: !1823, file: !361, line: 551, type: !364)
!1839 = !DILocation(line: 551, column: 14, scope: !1823)
!1840 = !DILocalVariable(name: "tmp", scope: !1823, file: !361, line: 551, type: !364)
!1841 = !DILocation(line: 551, column: 26, scope: !1823)
!1842 = !DILocation(line: 553, column: 6, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1823, file: !361, line: 553, column: 6)
!1844 = !DILocation(line: 553, column: 16, scope: !1843)
!1845 = !DILocation(line: 553, column: 6, scope: !1823)
!1846 = !DILocation(line: 556, column: 26, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1843, file: !361, line: 553, column: 24)
!1848 = !DILocation(line: 556, column: 15, scope: !1847)
!1849 = !DILocation(line: 556, column: 13, scope: !1847)
!1850 = !DILocation(line: 557, column: 7, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1847, file: !361, line: 557, column: 7)
!1852 = !DILocation(line: 557, column: 17, scope: !1851)
!1853 = !DILocation(line: 557, column: 7, scope: !1847)
!1854 = !DILocation(line: 557, column: 25, scope: !1855)
!1855 = !DILexicalBlockFile(scope: !1851, file: !361, discriminator: 1)
!1856 = !DILocation(line: 558, column: 2, scope: !1847)
!1857 = !DILocation(line: 560, column: 6, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1823, file: !361, line: 560, column: 6)
!1859 = !DILocation(line: 560, column: 15, scope: !1858)
!1860 = !DILocation(line: 560, column: 12, scope: !1858)
!1861 = !DILocation(line: 560, column: 6, scope: !1823)
!1862 = !DILocation(line: 561, column: 3, scope: !1858)
!1863 = !DILocation(line: 563, column: 39, scope: !1823)
!1864 = !DILocation(line: 563, column: 50, scope: !1823)
!1865 = !DILocation(line: 563, column: 58, scope: !1823)
!1866 = !DILocation(line: 564, column: 28, scope: !1823)
!1867 = !DILocation(line: 564, column: 19, scope: !1823)
!1868 = !DILocation(line: 564, column: 12, scope: !1823)
!1869 = !DILocation(line: 564, column: 41, scope: !1823)
!1870 = !DILocation(line: 563, column: 8, scope: !1823)
!1871 = !DILocation(line: 563, column: 6, scope: !1823)
!1872 = !DILocation(line: 565, column: 22, scope: !1823)
!1873 = !DILocation(line: 567, column: 7, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1823, file: !361, line: 567, column: 6)
!1875 = !DILocation(line: 567, column: 6, scope: !1874)
!1876 = !DILocation(line: 567, column: 11, scope: !1874)
!1877 = !DILocation(line: 567, column: 6, scope: !1823)
!1878 = !DILocation(line: 569, column: 36, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1874, file: !361, line: 567, column: 20)
!1880 = !DILocation(line: 569, column: 47, scope: !1879)
!1881 = !DILocation(line: 569, column: 15, scope: !1879)
!1882 = !DILocation(line: 569, column: 13, scope: !1879)
!1883 = !DILocation(line: 570, column: 23, scope: !1879)
!1884 = !DILocation(line: 570, column: 21, scope: !1879)
!1885 = !DILocation(line: 571, column: 30, scope: !1879)
!1886 = !DILocation(line: 571, column: 35, scope: !1879)
!1887 = !DILocation(line: 571, column: 9, scope: !1879)
!1888 = !DILocation(line: 571, column: 7, scope: !1879)
!1889 = !DILocation(line: 572, column: 10, scope: !1879)
!1890 = !DILocation(line: 572, column: 3, scope: !1879)
!1891 = !DILocation(line: 573, column: 10, scope: !1879)
!1892 = !DILocation(line: 573, column: 3, scope: !1879)
!1893 = !DILocation(line: 576, column: 12, scope: !1879)
!1894 = !DILocation(line: 576, column: 18, scope: !1879)
!1895 = !DILocation(line: 576, column: 3, scope: !1879)
!1896 = !DILocation(line: 577, column: 2, scope: !1879)
!1897 = !DILocation(line: 578, column: 9, scope: !1823)
!1898 = !DILocation(line: 578, column: 2, scope: !1823)
!1899 = !DILocation(line: 580, column: 1, scope: !1823)
!1900 = !DILocation(line: 580, column: 1, scope: !1901)
!1901 = !DILexicalBlockFile(scope: !1823, file: !361, discriminator: 1)
!1902 = distinct !DISubprogram(name: "autologs_close_all", scope: !361, file: !361, line: 386, type: !409, isLocal: true, isDefinition: true, scopeLine: 387, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !411)
!1903 = !DILocalVariable(name: "tmp", scope: !1902, file: !361, line: 388, type: !396)
!1904 = !DILocation(line: 388, column: 10, scope: !1902)
!1905 = !DILocalVariable(name: "next", scope: !1902, file: !361, line: 388, type: !396)
!1906 = !DILocation(line: 388, column: 16, scope: !1902)
!1907 = !DILocation(line: 390, column: 13, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1902, file: !361, line: 390, column: 2)
!1909 = !DILocation(line: 390, column: 11, scope: !1908)
!1910 = !DILocation(line: 390, column: 7, scope: !1908)
!1911 = !DILocation(line: 390, column: 19, scope: !1912)
!1912 = !DILexicalBlockFile(scope: !1913, file: !361, discriminator: 1)
!1913 = distinct !DILexicalBlock(scope: !1908, file: !361, line: 390, column: 2)
!1914 = !DILocation(line: 390, column: 23, scope: !1912)
!1915 = !DILocation(line: 390, column: 2, scope: !1912)
!1916 = !DILocalVariable(name: "rec", scope: !1917, file: !361, line: 391, type: !787)
!1917 = distinct !DILexicalBlock(scope: !1913, file: !361, line: 390, column: 43)
!1918 = !DILocation(line: 391, column: 12, scope: !1917)
!1919 = !DILocation(line: 391, column: 18, scope: !1917)
!1920 = !DILocation(line: 391, column: 23, scope: !1917)
!1921 = !DILocation(line: 393, column: 10, scope: !1917)
!1922 = !DILocation(line: 393, column: 15, scope: !1917)
!1923 = !DILocation(line: 393, column: 8, scope: !1917)
!1924 = !DILocation(line: 394, column: 7, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1917, file: !361, line: 394, column: 7)
!1926 = !DILocation(line: 394, column: 12, scope: !1925)
!1927 = !DILocation(line: 394, column: 7, scope: !1917)
!1928 = !DILocation(line: 394, column: 28, scope: !1929)
!1929 = !DILexicalBlockFile(scope: !1925, file: !361, discriminator: 1)
!1930 = !DILocation(line: 394, column: 18, scope: !1929)
!1931 = !DILocation(line: 395, column: 2, scope: !1917)
!1932 = !DILocation(line: 390, column: 37, scope: !1933)
!1933 = !DILexicalBlockFile(scope: !1913, file: !361, discriminator: 2)
!1934 = !DILocation(line: 390, column: 35, scope: !1933)
!1935 = !DILocation(line: 390, column: 2, scope: !1933)
!1936 = distinct !{!1936, !1937}
!1937 = !DILocation(line: 390, column: 2, scope: !1902)
!1938 = !DILocation(line: 396, column: 1, scope: !1902)
!1939 = distinct !DISubprogram(name: "cmd_log_list", scope: !361, file: !361, line: 219, type: !409, isLocal: true, isDefinition: true, scopeLine: 220, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !411)
!1940 = !DILocalVariable(name: "tmp", scope: !1939, file: !361, line: 221, type: !396)
!1941 = !DILocation(line: 221, column: 10, scope: !1939)
!1942 = !DILocalVariable(name: "levelstr", scope: !1939, file: !361, line: 222, type: !364)
!1943 = !DILocation(line: 222, column: 8, scope: !1939)
!1944 = !DILocalVariable(name: "items", scope: !1939, file: !361, line: 222, type: !364)
!1945 = !DILocation(line: 222, column: 19, scope: !1939)
!1946 = !DILocalVariable(name: "index", scope: !1939, file: !361, line: 223, type: !342)
!1947 = !DILocation(line: 223, column: 6, scope: !1939)
!1948 = !DILocation(line: 225, column: 2, scope: !1939)
!1949 = !DILocation(line: 226, column: 13, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1939, file: !361, line: 226, column: 2)
!1951 = !DILocation(line: 226, column: 11, scope: !1950)
!1952 = !DILocation(line: 226, column: 25, scope: !1950)
!1953 = !DILocation(line: 226, column: 7, scope: !1950)
!1954 = !DILocation(line: 226, column: 30, scope: !1955)
!1955 = !DILexicalBlockFile(scope: !1956, file: !361, discriminator: 1)
!1956 = distinct !DILexicalBlock(scope: !1950, file: !361, line: 226, column: 2)
!1957 = !DILocation(line: 226, column: 34, scope: !1955)
!1958 = !DILocation(line: 226, column: 2, scope: !1955)
!1959 = !DILocalVariable(name: "rec", scope: !1960, file: !361, line: 227, type: !787)
!1960 = distinct !DILexicalBlock(scope: !1956, file: !361, line: 226, column: 68)
!1961 = !DILocation(line: 227, column: 12, scope: !1960)
!1962 = !DILocation(line: 227, column: 18, scope: !1960)
!1963 = !DILocation(line: 227, column: 23, scope: !1960)
!1964 = !DILocation(line: 229, column: 25, scope: !1960)
!1965 = !DILocation(line: 229, column: 30, scope: !1960)
!1966 = !DILocation(line: 229, column: 14, scope: !1960)
!1967 = !DILocation(line: 229, column: 12, scope: !1960)
!1968 = !DILocation(line: 230, column: 11, scope: !1960)
!1969 = !DILocation(line: 230, column: 16, scope: !1960)
!1970 = !DILocation(line: 230, column: 22, scope: !1960)
!1971 = !DILocation(line: 230, column: 11, scope: !1972)
!1972 = !DILexicalBlockFile(scope: !1960, file: !361, discriminator: 1)
!1973 = !DILocation(line: 231, column: 44, scope: !1960)
!1974 = !DILocation(line: 231, column: 25, scope: !1960)
!1975 = !DILocation(line: 230, column: 11, scope: !1976)
!1976 = !DILexicalBlockFile(scope: !1960, file: !361, discriminator: 2)
!1977 = !DILocation(line: 230, column: 11, scope: !1978)
!1978 = !DILexicalBlockFile(scope: !1960, file: !361, discriminator: 3)
!1979 = !DILocation(line: 230, column: 9, scope: !1978)
!1980 = !DILocation(line: 233, column: 39, scope: !1960)
!1981 = !DILocation(line: 233, column: 46, scope: !1960)
!1982 = !DILocation(line: 233, column: 51, scope: !1960)
!1983 = !DILocation(line: 233, column: 58, scope: !1960)
!1984 = !DILocation(line: 233, column: 64, scope: !1960)
!1985 = !DILocation(line: 233, column: 4, scope: !1972)
!1986 = !DILocation(line: 233, column: 58, scope: !1972)
!1987 = !DILocation(line: 233, column: 58, scope: !1976)
!1988 = !DILocation(line: 233, column: 58, scope: !1978)
!1989 = !DILocation(line: 233, column: 16, scope: !1978)
!1990 = !DILocation(line: 233, column: 26, scope: !1978)
!1991 = !DILocation(line: 233, column: 31, scope: !1978)
!1992 = !DILocation(line: 233, column: 61, scope: !1978)
!1993 = !DILocation(line: 233, column: 66, scope: !1978)
!1994 = !DILocation(line: 233, column: 73, scope: !1978)
!1995 = !DILocation(line: 233, column: 3, scope: !1978)
!1996 = !DILocation(line: 238, column: 10, scope: !1960)
!1997 = !DILocation(line: 238, column: 3, scope: !1960)
!1998 = !DILocation(line: 239, column: 10, scope: !1960)
!1999 = !DILocation(line: 239, column: 3, scope: !1960)
!2000 = !DILocation(line: 240, column: 2, scope: !1960)
!2001 = !DILocation(line: 226, column: 48, scope: !2002)
!2002 = !DILexicalBlockFile(scope: !1956, file: !361, discriminator: 2)
!2003 = !DILocation(line: 226, column: 53, scope: !2002)
!2004 = !DILocation(line: 226, column: 46, scope: !2002)
!2005 = !DILocation(line: 226, column: 64, scope: !2002)
!2006 = !DILocation(line: 226, column: 2, scope: !2002)
!2007 = distinct !{!2007, !2008}
!2008 = !DILocation(line: 226, column: 2, scope: !1939)
!2009 = !DILocation(line: 241, column: 2, scope: !1939)
!2010 = !DILocation(line: 242, column: 1, scope: !1939)
!2011 = distinct !DISubprogram(name: "log_items_get_list", scope: !361, file: !361, line: 194, type: !2012, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !411)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!364, !787}
!2014 = !DILocalVariable(name: "log", arg: 1, scope: !2011, file: !361, line: 194, type: !787)
!2015 = !DILocation(line: 194, column: 42, scope: !2011)
!2016 = !DILocalVariable(name: "tmp", scope: !2011, file: !361, line: 196, type: !396)
!2017 = !DILocation(line: 196, column: 10, scope: !2011)
!2018 = !DILocalVariable(name: "str", scope: !2011, file: !361, line: 197, type: !639)
!2019 = !DILocation(line: 197, column: 11, scope: !2011)
!2020 = !DILocalVariable(name: "ret", scope: !2011, file: !361, line: 198, type: !364)
!2021 = !DILocation(line: 198, column: 8, scope: !2011)
!2022 = !DILocalVariable(name: "rec", scope: !2011, file: !361, line: 199, type: !759)
!2023 = !DILocation(line: 199, column: 16, scope: !2011)
!2024 = !DILocation(line: 201, column: 2, scope: !2011)
!2025 = distinct !{!2025, !2024}
!2026 = !DILocation(line: 201, column: 10, scope: !2027)
!2027 = !DILexicalBlockFile(scope: !2028, file: !361, discriminator: 1)
!2028 = distinct !DILexicalBlock(scope: !2029, file: !361, line: 201, column: 10)
!2029 = distinct !DILexicalBlock(scope: !2011, file: !361, line: 201, column: 4)
!2030 = !DILocation(line: 201, column: 14, scope: !2027)
!2031 = !DILocation(line: 201, column: 5, scope: !2032)
!2032 = !DILexicalBlockFile(scope: !2033, file: !361, discriminator: 2)
!2033 = distinct !DILexicalBlock(scope: !2028, file: !361, line: 201, column: 3)
!2034 = !DILocation(line: 201, column: 14, scope: !2035)
!2035 = !DILexicalBlockFile(scope: !2036, file: !361, discriminator: 3)
!2036 = distinct !DILexicalBlock(scope: !2028, file: !361, line: 201, column: 12)
!2037 = !DILocation(line: 201, column: 98, scope: !2035)
!2038 = !DILocation(line: 201, column: 7, scope: !2039)
!2039 = !DILexicalBlockFile(scope: !2029, file: !361, discriminator: 4)
!2040 = !DILocation(line: 202, column: 2, scope: !2011)
!2041 = distinct !{!2041, !2040}
!2042 = !DILocation(line: 202, column: 10, scope: !2043)
!2043 = !DILexicalBlockFile(scope: !2044, file: !361, discriminator: 1)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !361, line: 202, column: 10)
!2045 = distinct !DILexicalBlock(scope: !2011, file: !361, line: 202, column: 4)
!2046 = !DILocation(line: 202, column: 15, scope: !2043)
!2047 = !DILocation(line: 202, column: 21, scope: !2043)
!2048 = !DILocation(line: 202, column: 5, scope: !2049)
!2049 = !DILexicalBlockFile(scope: !2050, file: !361, discriminator: 2)
!2050 = distinct !DILexicalBlock(scope: !2044, file: !361, line: 202, column: 3)
!2051 = !DILocation(line: 202, column: 14, scope: !2052)
!2052 = !DILexicalBlockFile(scope: !2053, file: !361, discriminator: 3)
!2053 = distinct !DILexicalBlock(scope: !2044, file: !361, line: 202, column: 12)
!2054 = !DILocation(line: 202, column: 105, scope: !2052)
!2055 = !DILocation(line: 202, column: 7, scope: !2056)
!2056 = !DILexicalBlockFile(scope: !2045, file: !361, discriminator: 4)
!2057 = !DILocation(line: 204, column: 8, scope: !2011)
!2058 = !DILocation(line: 204, column: 6, scope: !2011)
!2059 = !DILocation(line: 205, column: 13, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2011, file: !361, line: 205, column: 2)
!2061 = !DILocation(line: 205, column: 18, scope: !2060)
!2062 = !DILocation(line: 205, column: 11, scope: !2060)
!2063 = !DILocation(line: 205, column: 7, scope: !2060)
!2064 = !DILocation(line: 205, column: 25, scope: !2065)
!2065 = !DILexicalBlockFile(scope: !2066, file: !361, discriminator: 1)
!2066 = distinct !DILexicalBlock(scope: !2060, file: !361, line: 205, column: 2)
!2067 = !DILocation(line: 205, column: 29, scope: !2065)
!2068 = !DILocation(line: 205, column: 2, scope: !2065)
!2069 = !DILocation(line: 206, column: 9, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2066, file: !361, line: 205, column: 54)
!2071 = !DILocation(line: 206, column: 14, scope: !2070)
!2072 = !DILocation(line: 206, column: 7, scope: !2070)
!2073 = !DILocation(line: 208, column: 40, scope: !2070)
!2074 = !DILocation(line: 208, column: 53, scope: !2070)
!2075 = !DILocation(line: 208, column: 58, scope: !2070)
!2076 = !DILocation(line: 208, column: 17, scope: !2070)
!2077 = !DILocation(line: 209, column: 2, scope: !2070)
!2078 = !DILocation(line: 205, column: 43, scope: !2079)
!2079 = !DILexicalBlockFile(scope: !2066, file: !361, discriminator: 2)
!2080 = !DILocation(line: 205, column: 48, scope: !2079)
!2081 = !DILocation(line: 205, column: 41, scope: !2079)
!2082 = !DILocation(line: 205, column: 2, scope: !2079)
!2083 = distinct !{!2083, !2084}
!2084 = !DILocation(line: 205, column: 2, scope: !2011)
!2085 = !DILocation(line: 210, column: 20, scope: !2011)
!2086 = !DILocation(line: 210, column: 25, scope: !2011)
!2087 = !DILocation(line: 210, column: 30, scope: !2011)
!2088 = !DILocation(line: 210, column: 33, scope: !2011)
!2089 = !DILocation(line: 210, column: 2, scope: !2011)
!2090 = !DILocation(line: 211, column: 5, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2011, file: !361, line: 211, column: 5)
!2092 = !DILocation(line: 211, column: 10, scope: !2091)
!2093 = !DILocation(line: 211, column: 20, scope: !2091)
!2094 = !DILocation(line: 211, column: 5, scope: !2011)
!2095 = !DILocation(line: 212, column: 26, scope: !2091)
!2096 = !DILocation(line: 212, column: 40, scope: !2091)
!2097 = !DILocation(line: 212, column: 45, scope: !2091)
!2098 = !DILocation(line: 212, column: 3, scope: !2091)
!2099 = !DILocation(line: 214, column: 8, scope: !2011)
!2100 = !DILocation(line: 214, column: 13, scope: !2011)
!2101 = !DILocation(line: 214, column: 6, scope: !2011)
!2102 = !DILocation(line: 215, column: 16, scope: !2011)
!2103 = !DILocation(line: 215, column: 2, scope: !2011)
!2104 = !DILocation(line: 216, column: 9, scope: !2011)
!2105 = !DILocation(line: 216, column: 2, scope: !2011)
!2106 = !DILocation(line: 217, column: 1, scope: !2011)
!2107 = distinct !DISubprogram(name: "log_add_targets", scope: !361, file: !361, line: 62, type: !2108, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !411)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{null, !787, !355, !355}
!2110 = !DILocalVariable(name: "log", arg: 1, scope: !2107, file: !361, line: 62, type: !787)
!2111 = !DILocation(line: 62, column: 38, scope: !2107)
!2112 = !DILocalVariable(name: "targets", arg: 2, scope: !2107, file: !361, line: 62, type: !355)
!2113 = !DILocation(line: 62, column: 55, scope: !2107)
!2114 = !DILocalVariable(name: "tag", arg: 3, scope: !2107, file: !361, line: 62, type: !355)
!2115 = !DILocation(line: 62, column: 76, scope: !2107)
!2116 = !DILocalVariable(name: "tmp", scope: !2107, file: !361, line: 64, type: !368)
!2117 = !DILocation(line: 64, column: 9, scope: !2107)
!2118 = !DILocalVariable(name: "items", scope: !2107, file: !361, line: 64, type: !368)
!2119 = !DILocation(line: 64, column: 16, scope: !2107)
!2120 = !DILocation(line: 66, column: 9, scope: !2107)
!2121 = distinct !{!2121, !2120}
!2122 = !DILocation(line: 66, column: 17, scope: !2123)
!2123 = !DILexicalBlockFile(scope: !2124, file: !361, discriminator: 1)
!2124 = distinct !DILexicalBlock(scope: !2125, file: !361, line: 66, column: 17)
!2125 = distinct !DILexicalBlock(scope: !2107, file: !361, line: 66, column: 11)
!2126 = !DILocation(line: 66, column: 21, scope: !2123)
!2127 = !DILocation(line: 66, column: 12, scope: !2128)
!2128 = !DILexicalBlockFile(scope: !2129, file: !361, discriminator: 2)
!2129 = distinct !DILexicalBlock(scope: !2124, file: !361, line: 66, column: 10)
!2130 = !DILocation(line: 66, column: 21, scope: !2131)
!2131 = !DILexicalBlockFile(scope: !2132, file: !361, discriminator: 3)
!2132 = distinct !DILexicalBlock(scope: !2124, file: !361, line: 66, column: 19)
!2133 = !DILocation(line: 66, column: 105, scope: !2131)
!2134 = !DILocation(line: 66, column: 116, scope: !2135)
!2135 = !DILexicalBlockFile(scope: !2125, file: !361, discriminator: 4)
!2136 = !DILocation(line: 67, column: 9, scope: !2107)
!2137 = distinct !{!2137, !2136}
!2138 = !DILocation(line: 67, column: 17, scope: !2139)
!2139 = !DILexicalBlockFile(scope: !2140, file: !361, discriminator: 1)
!2140 = distinct !DILexicalBlock(scope: !2141, file: !361, line: 67, column: 17)
!2141 = distinct !DILexicalBlock(scope: !2107, file: !361, line: 67, column: 11)
!2142 = !DILocation(line: 67, column: 25, scope: !2139)
!2143 = !DILocation(line: 67, column: 12, scope: !2144)
!2144 = !DILexicalBlockFile(scope: !2145, file: !361, discriminator: 2)
!2145 = distinct !DILexicalBlock(scope: !2140, file: !361, line: 67, column: 10)
!2146 = !DILocation(line: 67, column: 21, scope: !2147)
!2147 = !DILexicalBlockFile(scope: !2148, file: !361, discriminator: 3)
!2148 = distinct !DILexicalBlock(scope: !2140, file: !361, line: 67, column: 19)
!2149 = !DILocation(line: 67, column: 109, scope: !2147)
!2150 = !DILocation(line: 67, column: 120, scope: !2151)
!2151 = !DILexicalBlockFile(scope: !2141, file: !361, discriminator: 4)
!2152 = !DILocation(line: 69, column: 21, scope: !2107)
!2153 = !DILocation(line: 69, column: 10, scope: !2107)
!2154 = !DILocation(line: 69, column: 8, scope: !2107)
!2155 = !DILocation(line: 71, column: 13, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2107, file: !361, line: 71, column: 2)
!2157 = !DILocation(line: 71, column: 11, scope: !2156)
!2158 = !DILocation(line: 71, column: 7, scope: !2156)
!2159 = !DILocation(line: 71, column: 21, scope: !2160)
!2160 = !DILexicalBlockFile(scope: !2161, file: !361, discriminator: 1)
!2161 = distinct !DILexicalBlock(scope: !2156, file: !361, line: 71, column: 2)
!2162 = !DILocation(line: 71, column: 20, scope: !2160)
!2163 = !DILocation(line: 71, column: 25, scope: !2160)
!2164 = !DILocation(line: 71, column: 2, scope: !2160)
!2165 = !DILocation(line: 72, column: 16, scope: !2161)
!2166 = !DILocation(line: 72, column: 39, scope: !2161)
!2167 = !DILocation(line: 72, column: 38, scope: !2161)
!2168 = !DILocation(line: 72, column: 44, scope: !2161)
!2169 = !DILocation(line: 72, column: 3, scope: !2161)
!2170 = !DILocation(line: 71, column: 36, scope: !2171)
!2171 = !DILexicalBlockFile(scope: !2161, file: !361, discriminator: 2)
!2172 = !DILocation(line: 71, column: 2, scope: !2171)
!2173 = distinct !{!2173, !2174}
!2174 = !DILocation(line: 71, column: 2, scope: !2107)
!2175 = !DILocation(line: 74, column: 13, scope: !2107)
!2176 = !DILocation(line: 74, column: 2, scope: !2107)
!2177 = !DILocation(line: 75, column: 1, scope: !2107)
!2178 = !DILocation(line: 75, column: 1, scope: !2179)
!2179 = !DILexicalBlockFile(scope: !2107, file: !361, discriminator: 1)
!2180 = distinct !DISubprogram(name: "log_colorizer_strip", scope: !361, file: !361, line: 57, type: !801, isLocal: true, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !411)
!2181 = !DILocalVariable(name: "str", arg: 1, scope: !2180, file: !361, line: 57, type: !355)
!2182 = !DILocation(line: 57, column: 46, scope: !2180)
!2183 = !DILocation(line: 59, column: 28, scope: !2180)
!2184 = !DILocation(line: 59, column: 16, scope: !2180)
!2185 = !DILocation(line: 59, column: 9, scope: !2180)
!2186 = distinct !DISubprogram(name: "log_find_from_data", scope: !361, file: !361, line: 142, type: !2187, isLocal: true, isDefinition: true, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !411)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{!787, !355}
!2189 = !DILocalVariable(name: "data", arg: 1, scope: !2186, file: !361, line: 142, type: !355)
!2190 = !DILocation(line: 142, column: 48, scope: !2186)
!2191 = !DILocalVariable(name: "tmp", scope: !2186, file: !361, line: 144, type: !396)
!2192 = !DILocation(line: 144, column: 10, scope: !2186)
!2193 = !DILocation(line: 146, column: 18, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2186, file: !361, line: 146, column: 6)
!2195 = !DILocation(line: 146, column: 7, scope: !2194)
!2196 = !DILocation(line: 146, column: 6, scope: !2186)
!2197 = !DILocation(line: 147, column: 19, scope: !2194)
!2198 = !DILocation(line: 147, column: 10, scope: !2194)
!2199 = !DILocation(line: 147, column: 3, scope: !2194)
!2200 = !DILocation(line: 150, column: 20, scope: !2186)
!2201 = !DILocation(line: 150, column: 31, scope: !2186)
!2202 = !DILocation(line: 150, column: 26, scope: !2186)
!2203 = !DILocation(line: 150, column: 36, scope: !2186)
!2204 = !DILocation(line: 150, column: 8, scope: !2205)
!2205 = !DILexicalBlockFile(scope: !2186, file: !361, discriminator: 1)
!2206 = !DILocation(line: 150, column: 6, scope: !2186)
!2207 = !DILocation(line: 151, column: 9, scope: !2186)
!2208 = !DILocation(line: 151, column: 13, scope: !2186)
!2209 = !DILocation(line: 151, column: 9, scope: !2205)
!2210 = !DILocation(line: 151, column: 29, scope: !2211)
!2211 = !DILexicalBlockFile(scope: !2186, file: !361, discriminator: 2)
!2212 = !DILocation(line: 151, column: 34, scope: !2211)
!2213 = !DILocation(line: 151, column: 9, scope: !2211)
!2214 = !DILocation(line: 151, column: 9, scope: !2215)
!2215 = !DILexicalBlockFile(scope: !2186, file: !361, discriminator: 3)
!2216 = !DILocation(line: 151, column: 2, scope: !2215)
!2217 = !DILocation(line: 152, column: 1, scope: !2186)
!2218 = distinct !DISubprogram(name: "logs_find_item", scope: !361, file: !361, line: 252, type: !2219, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !411)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{!787, !342, !355, !355, !2221}
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64, align: 64)
!2222 = !DILocalVariable(name: "type", arg: 1, scope: !2218, file: !361, line: 252, type: !342)
!2223 = !DILocation(line: 252, column: 36, scope: !2218)
!2224 = !DILocalVariable(name: "item", arg: 2, scope: !2218, file: !361, line: 252, type: !355)
!2225 = !DILocation(line: 252, column: 54, scope: !2218)
!2226 = !DILocalVariable(name: "servertag", arg: 3, scope: !2218, file: !361, line: 253, type: !355)
!2227 = !DILocation(line: 253, column: 23, scope: !2218)
!2228 = !DILocalVariable(name: "ret_item", arg: 4, scope: !2218, file: !361, line: 253, type: !2221)
!2229 = !DILocation(line: 253, column: 49, scope: !2218)
!2230 = !DILocalVariable(name: "logitem", scope: !2218, file: !361, line: 255, type: !759)
!2231 = !DILocation(line: 255, column: 16, scope: !2218)
!2232 = !DILocalVariable(name: "tmp", scope: !2218, file: !361, line: 256, type: !396)
!2233 = !DILocation(line: 256, column: 10, scope: !2218)
!2234 = !DILocation(line: 258, column: 13, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2218, file: !361, line: 258, column: 2)
!2236 = !DILocation(line: 258, column: 11, scope: !2235)
!2237 = !DILocation(line: 258, column: 7, scope: !2235)
!2238 = !DILocation(line: 258, column: 19, scope: !2239)
!2239 = !DILexicalBlockFile(scope: !2240, file: !361, discriminator: 1)
!2240 = distinct !DILexicalBlock(scope: !2235, file: !361, line: 258, column: 2)
!2241 = !DILocation(line: 258, column: 23, scope: !2239)
!2242 = !DILocation(line: 258, column: 2, scope: !2239)
!2243 = !DILocalVariable(name: "log", scope: !2244, file: !361, line: 259, type: !787)
!2244 = distinct !DILexicalBlock(scope: !2240, file: !361, line: 258, column: 48)
!2245 = !DILocation(line: 259, column: 12, scope: !2244)
!2246 = !DILocation(line: 259, column: 18, scope: !2244)
!2247 = !DILocation(line: 259, column: 23, scope: !2244)
!2248 = !DILocation(line: 261, column: 7, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2244, file: !361, line: 261, column: 7)
!2250 = !DILocation(line: 261, column: 12, scope: !2249)
!2251 = !DILocation(line: 261, column: 31, scope: !2249)
!2252 = !DILocation(line: 261, column: 34, scope: !2253)
!2253 = !DILexicalBlockFile(scope: !2249, file: !361, discriminator: 1)
!2254 = !DILocation(line: 261, column: 39, scope: !2253)
!2255 = !DILocation(line: 261, column: 44, scope: !2253)
!2256 = !DILocation(line: 261, column: 7, scope: !2253)
!2257 = !DILocation(line: 261, column: 50, scope: !2258)
!2258 = !DILexicalBlockFile(scope: !2249, file: !361, discriminator: 2)
!2259 = !DILocation(line: 262, column: 27, scope: !2244)
!2260 = !DILocation(line: 262, column: 32, scope: !2244)
!2261 = !DILocation(line: 262, column: 38, scope: !2244)
!2262 = !DILocation(line: 262, column: 44, scope: !2244)
!2263 = !DILocation(line: 262, column: 13, scope: !2244)
!2264 = !DILocation(line: 262, column: 11, scope: !2244)
!2265 = !DILocation(line: 263, column: 7, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2244, file: !361, line: 263, column: 7)
!2267 = !DILocation(line: 263, column: 15, scope: !2266)
!2268 = !DILocation(line: 263, column: 7, scope: !2244)
!2269 = !DILocation(line: 264, column: 8, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2271, file: !361, line: 264, column: 8)
!2271 = distinct !DILexicalBlock(scope: !2266, file: !361, line: 263, column: 23)
!2272 = !DILocation(line: 264, column: 17, scope: !2270)
!2273 = !DILocation(line: 264, column: 8, scope: !2271)
!2274 = !DILocation(line: 264, column: 37, scope: !2275)
!2275 = !DILexicalBlockFile(scope: !2270, file: !361, discriminator: 1)
!2276 = !DILocation(line: 264, column: 26, scope: !2275)
!2277 = !DILocation(line: 264, column: 35, scope: !2275)
!2278 = !DILocation(line: 264, column: 25, scope: !2275)
!2279 = !DILocation(line: 265, column: 11, scope: !2271)
!2280 = !DILocation(line: 265, column: 4, scope: !2271)
!2281 = !DILocation(line: 267, column: 2, scope: !2244)
!2282 = !DILocation(line: 258, column: 37, scope: !2283)
!2283 = !DILexicalBlockFile(scope: !2240, file: !361, discriminator: 2)
!2284 = !DILocation(line: 258, column: 42, scope: !2283)
!2285 = !DILocation(line: 258, column: 35, scope: !2283)
!2286 = !DILocation(line: 258, column: 2, scope: !2283)
!2287 = distinct !{!2287, !2288}
!2288 = !DILocation(line: 258, column: 2, scope: !2218)
!2289 = !DILocation(line: 269, column: 2, scope: !2218)
!2290 = !DILocation(line: 270, column: 1, scope: !2218)
!2291 = distinct !DISubprogram(name: "log_line", scope: !361, file: !361, line: 515, type: !2292, isLocal: true, isDefinition: true, scopeLine: 516, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !411)
!2292 = !DISubroutineType(types: !2293)
!2293 = !{null, !1393, !355}
!2294 = !DILocalVariable(name: "dest", arg: 1, scope: !2291, file: !361, line: 515, type: !1393)
!2295 = !DILocation(line: 515, column: 37, scope: !2291)
!2296 = !DILocalVariable(name: "text", arg: 2, scope: !2291, file: !361, line: 515, type: !355)
!2297 = !DILocation(line: 515, column: 55, scope: !2291)
!2298 = !DILocalVariable(name: "lines", scope: !2291, file: !361, line: 517, type: !368)
!2299 = !DILocation(line: 517, column: 9, scope: !2291)
!2300 = !DILocalVariable(name: "tmp", scope: !2291, file: !361, line: 517, type: !368)
!2301 = !DILocation(line: 517, column: 18, scope: !2291)
!2302 = !DILocation(line: 519, column: 6, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2291, file: !361, line: 519, column: 6)
!2304 = !DILocation(line: 519, column: 12, scope: !2303)
!2305 = !DILocation(line: 519, column: 18, scope: !2303)
!2306 = !DILocation(line: 519, column: 6, scope: !2291)
!2307 = !DILocation(line: 520, column: 3, scope: !2303)
!2308 = !DILocation(line: 523, column: 21, scope: !2291)
!2309 = !DILocation(line: 523, column: 2, scope: !2291)
!2310 = !DILocation(line: 525, column: 6, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2291, file: !361, line: 525, column: 6)
!2312 = !DILocation(line: 525, column: 11, scope: !2311)
!2313 = !DILocation(line: 525, column: 6, scope: !2291)
!2314 = !DILocation(line: 526, column: 3, scope: !2311)
!2315 = !DILocation(line: 530, column: 21, scope: !2291)
!2316 = !DILocation(line: 530, column: 10, scope: !2291)
!2317 = !DILocation(line: 530, column: 8, scope: !2291)
!2318 = !DILocation(line: 531, column: 13, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2291, file: !361, line: 531, column: 2)
!2320 = !DILocation(line: 531, column: 11, scope: !2319)
!2321 = !DILocation(line: 531, column: 7, scope: !2319)
!2322 = !DILocation(line: 531, column: 21, scope: !2323)
!2323 = !DILexicalBlockFile(scope: !2324, file: !361, discriminator: 1)
!2324 = distinct !DILexicalBlock(scope: !2319, file: !361, line: 531, column: 2)
!2325 = !DILocation(line: 531, column: 20, scope: !2323)
!2326 = !DILocation(line: 531, column: 25, scope: !2323)
!2327 = !DILocation(line: 531, column: 2, scope: !2323)
!2328 = !DILocation(line: 532, column: 19, scope: !2324)
!2329 = !DILocation(line: 532, column: 25, scope: !2324)
!2330 = !DILocation(line: 532, column: 33, scope: !2324)
!2331 = !DILocation(line: 532, column: 39, scope: !2324)
!2332 = !DILocation(line: 533, column: 5, scope: !2324)
!2333 = !DILocation(line: 533, column: 11, scope: !2324)
!2334 = !DILocation(line: 533, column: 19, scope: !2324)
!2335 = !DILocation(line: 533, column: 25, scope: !2324)
!2336 = !DILocation(line: 533, column: 33, scope: !2324)
!2337 = !DILocation(line: 533, column: 32, scope: !2324)
!2338 = !DILocation(line: 532, column: 3, scope: !2324)
!2339 = !DILocation(line: 531, column: 36, scope: !2340)
!2340 = !DILexicalBlockFile(scope: !2324, file: !361, discriminator: 2)
!2341 = !DILocation(line: 531, column: 2, scope: !2340)
!2342 = distinct !{!2342, !2343}
!2343 = !DILocation(line: 531, column: 2, scope: !2291)
!2344 = !DILocation(line: 534, column: 13, scope: !2291)
!2345 = !DILocation(line: 534, column: 2, scope: !2291)
!2346 = !DILocation(line: 535, column: 1, scope: !2291)
!2347 = !DILocation(line: 535, column: 1, scope: !2348)
!2348 = !DILexicalBlockFile(scope: !2291, file: !361, discriminator: 1)
!2349 = distinct !DISubprogram(name: "autolog_open_check", scope: !361, file: !361, line: 471, type: !2350, isLocal: true, isDefinition: true, scopeLine: 472, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !411)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{null, !1393}
!2352 = !DILocalVariable(name: "dest", arg: 1, scope: !2349, file: !361, line: 471, type: !1393)
!2353 = !DILocation(line: 471, column: 47, scope: !2349)
!2354 = !DILocalVariable(name: "deftarget", scope: !2349, file: !361, line: 473, type: !355)
!2355 = !DILocation(line: 473, column: 14, scope: !2349)
!2356 = !DILocalVariable(name: "server", scope: !2349, file: !361, line: 474, type: !450)
!2357 = !DILocation(line: 474, column: 14, scope: !2349)
!2358 = !DILocation(line: 474, column: 23, scope: !2349)
!2359 = !DILocation(line: 474, column: 29, scope: !2349)
!2360 = !DILocalVariable(name: "server_tag", scope: !2349, file: !361, line: 475, type: !355)
!2361 = !DILocation(line: 475, column: 14, scope: !2349)
!2362 = !DILocation(line: 475, column: 27, scope: !2349)
!2363 = !DILocation(line: 475, column: 33, scope: !2349)
!2364 = !DILocalVariable(name: "target", scope: !2349, file: !361, line: 476, type: !355)
!2365 = !DILocation(line: 476, column: 14, scope: !2349)
!2366 = !DILocation(line: 476, column: 23, scope: !2349)
!2367 = !DILocation(line: 476, column: 29, scope: !2349)
!2368 = !DILocalVariable(name: "level", scope: !2349, file: !361, line: 477, type: !342)
!2369 = !DILocation(line: 477, column: 6, scope: !2349)
!2370 = !DILocation(line: 477, column: 14, scope: !2349)
!2371 = !DILocation(line: 477, column: 20, scope: !2349)
!2372 = !DILocation(line: 483, column: 6, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2349, file: !361, line: 483, column: 6)
!2374 = !DILocation(line: 483, column: 12, scope: !2373)
!2375 = !DILocation(line: 483, column: 30, scope: !2373)
!2376 = !DILocation(line: 484, column: 7, scope: !2373)
!2377 = !DILocation(line: 484, column: 23, scope: !2373)
!2378 = !DILocation(line: 484, column: 21, scope: !2373)
!2379 = !DILocation(line: 484, column: 30, scope: !2373)
!2380 = !DILocation(line: 484, column: 35, scope: !2373)
!2381 = !DILocation(line: 484, column: 38, scope: !2382)
!2382 = !DILexicalBlockFile(scope: !2373, file: !361, discriminator: 1)
!2383 = !DILocation(line: 484, column: 45, scope: !2382)
!2384 = !DILocation(line: 484, column: 52, scope: !2382)
!2385 = !DILocation(line: 484, column: 56, scope: !2386)
!2386 = !DILexicalBlockFile(scope: !2373, file: !361, discriminator: 2)
!2387 = !DILocation(line: 484, column: 55, scope: !2386)
!2388 = !DILocation(line: 484, column: 63, scope: !2386)
!2389 = !DILocation(line: 483, column: 6, scope: !2390)
!2390 = !DILexicalBlockFile(scope: !2349, file: !361, discriminator: 1)
!2391 = !DILocation(line: 485, column: 3, scope: !2373)
!2392 = !DILocation(line: 487, column: 14, scope: !2349)
!2393 = !DILocation(line: 487, column: 23, scope: !2390)
!2394 = !DILocation(line: 487, column: 31, scope: !2390)
!2395 = !DILocation(line: 487, column: 14, scope: !2390)
!2396 = !DILocation(line: 487, column: 14, scope: !2397)
!2397 = !DILexicalBlockFile(scope: !2349, file: !361, discriminator: 2)
!2398 = !DILocation(line: 487, column: 14, scope: !2399)
!2399 = !DILexicalBlockFile(scope: !2349, file: !361, discriminator: 3)
!2400 = !DILocation(line: 487, column: 12, scope: !2399)
!2401 = !DILocation(line: 489, column: 6, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2349, file: !361, line: 489, column: 6)
!2403 = !DILocation(line: 489, column: 29, scope: !2402)
!2404 = !DILocation(line: 489, column: 36, scope: !2402)
!2405 = !DILocation(line: 490, column: 25, scope: !2402)
!2406 = !DILocation(line: 490, column: 49, scope: !2402)
!2407 = !DILocation(line: 490, column: 6, scope: !2402)
!2408 = !DILocation(line: 489, column: 6, scope: !2390)
!2409 = !DILocation(line: 491, column: 3, scope: !2402)
!2410 = !DILocation(line: 493, column: 6, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2349, file: !361, line: 493, column: 6)
!2412 = !DILocation(line: 493, column: 13, scope: !2411)
!2413 = !DILocation(line: 493, column: 6, scope: !2349)
!2414 = !DILocation(line: 494, column: 16, scope: !2411)
!2415 = !DILocation(line: 494, column: 24, scope: !2411)
!2416 = !DILocation(line: 494, column: 46, scope: !2411)
!2417 = !DILocation(line: 494, column: 36, scope: !2411)
!2418 = !DILocation(line: 494, column: 61, scope: !2419)
!2419 = !DILexicalBlockFile(scope: !2411, file: !361, discriminator: 1)
!2420 = !DILocation(line: 494, column: 36, scope: !2419)
!2421 = !DILocation(line: 494, column: 70, scope: !2422)
!2422 = !DILexicalBlockFile(scope: !2411, file: !361, discriminator: 2)
!2423 = !DILocation(line: 494, column: 36, scope: !2422)
!2424 = !DILocation(line: 494, column: 36, scope: !2425)
!2425 = !DILexicalBlockFile(scope: !2411, file: !361, discriminator: 3)
!2426 = !DILocation(line: 494, column: 3, scope: !2425)
!2427 = !DILocation(line: 495, column: 1, scope: !2349)
!2428 = distinct !DISubprogram(name: "log_single_line", scope: !361, file: !361, line: 497, type: !2429, isLocal: true, isDefinition: true, scopeLine: 499, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !411)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{null, !1399, !355, !355, !342, !355}
!2431 = !DILocalVariable(name: "window", arg: 1, scope: !2428, file: !361, line: 497, type: !1399)
!2432 = !DILocation(line: 497, column: 41, scope: !2428)
!2433 = !DILocalVariable(name: "server_tag", arg: 2, scope: !2428, file: !361, line: 497, type: !355)
!2434 = !DILocation(line: 497, column: 61, scope: !2428)
!2435 = !DILocalVariable(name: "target", arg: 3, scope: !2428, file: !361, line: 498, type: !355)
!2436 = !DILocation(line: 498, column: 20, scope: !2428)
!2437 = !DILocalVariable(name: "level", arg: 4, scope: !2428, file: !361, line: 498, type: !342)
!2438 = !DILocation(line: 498, column: 32, scope: !2428)
!2439 = !DILocalVariable(name: "text", arg: 5, scope: !2428, file: !361, line: 498, type: !355)
!2440 = !DILocation(line: 498, column: 51, scope: !2428)
!2441 = !DILocalVariable(name: "windownum", scope: !2428, file: !361, line: 500, type: !974)
!2442 = !DILocation(line: 500, column: 7, scope: !2428)
!2443 = !DILocalVariable(name: "log", scope: !2428, file: !361, line: 501, type: !787)
!2444 = !DILocation(line: 501, column: 11, scope: !2428)
!2445 = !DILocation(line: 503, column: 6, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2428, file: !361, line: 503, column: 6)
!2447 = !DILocation(line: 503, column: 13, scope: !2446)
!2448 = !DILocation(line: 503, column: 6, scope: !2428)
!2449 = !DILocation(line: 505, column: 14, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2446, file: !361, line: 503, column: 21)
!2451 = !DILocation(line: 505, column: 50, scope: !2450)
!2452 = !DILocation(line: 505, column: 58, scope: !2450)
!2453 = !DILocation(line: 505, column: 3, scope: !2450)
!2454 = !DILocation(line: 507, column: 10, scope: !2450)
!2455 = !DILocation(line: 506, column: 9, scope: !2450)
!2456 = !DILocation(line: 506, column: 7, scope: !2450)
!2457 = !DILocation(line: 508, column: 7, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2450, file: !361, line: 508, column: 7)
!2459 = !DILocation(line: 508, column: 11, scope: !2458)
!2460 = !DILocation(line: 508, column: 7, scope: !2450)
!2461 = !DILocation(line: 509, column: 18, scope: !2458)
!2462 = !DILocation(line: 509, column: 23, scope: !2458)
!2463 = !DILocation(line: 509, column: 29, scope: !2458)
!2464 = !DILocation(line: 509, column: 4, scope: !2458)
!2465 = !DILocation(line: 510, column: 2, scope: !2450)
!2466 = !DILocation(line: 512, column: 17, scope: !2428)
!2467 = !DILocation(line: 512, column: 29, scope: !2428)
!2468 = !DILocation(line: 512, column: 37, scope: !2428)
!2469 = !DILocation(line: 512, column: 44, scope: !2428)
!2470 = !DILocation(line: 512, column: 2, scope: !2428)
!2471 = !DILocation(line: 513, column: 1, scope: !2428)
!2472 = distinct !DISubprogram(name: "autolog_open", scope: !361, file: !361, line: 420, type: !2473, isLocal: true, isDefinition: true, scopeLine: 422, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !411)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{null, !450, !355, !355}
!2475 = !DILocalVariable(name: "server", arg: 1, scope: !2472, file: !361, line: 420, type: !450)
!2476 = !DILocation(line: 420, column: 38, scope: !2472)
!2477 = !DILocalVariable(name: "server_tag", arg: 2, scope: !2472, file: !361, line: 420, type: !355)
!2478 = !DILocation(line: 420, column: 58, scope: !2472)
!2479 = !DILocalVariable(name: "target", arg: 3, scope: !2472, file: !361, line: 421, type: !355)
!2480 = !DILocation(line: 421, column: 17, scope: !2472)
!2481 = !DILocalVariable(name: "log", scope: !2472, file: !361, line: 423, type: !787)
!2482 = !DILocation(line: 423, column: 11, scope: !2472)
!2483 = !DILocalVariable(name: "fname", scope: !2472, file: !361, line: 424, type: !364)
!2484 = !DILocation(line: 424, column: 8, scope: !2472)
!2485 = !DILocalVariable(name: "dir", scope: !2472, file: !361, line: 424, type: !364)
!2486 = !DILocation(line: 424, column: 16, scope: !2472)
!2487 = !DILocalVariable(name: "fixed_target", scope: !2472, file: !361, line: 424, type: !364)
!2488 = !DILocation(line: 424, column: 22, scope: !2472)
!2489 = !DILocalVariable(name: "params", scope: !2472, file: !361, line: 424, type: !364)
!2490 = !DILocation(line: 424, column: 37, scope: !2472)
!2491 = !DILocation(line: 426, column: 40, scope: !2472)
!2492 = !DILocation(line: 426, column: 48, scope: !2472)
!2493 = !DILocation(line: 426, column: 8, scope: !2472)
!2494 = !DILocation(line: 426, column: 6, scope: !2472)
!2495 = !DILocation(line: 427, column: 6, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2472, file: !361, line: 427, column: 6)
!2497 = !DILocation(line: 427, column: 10, scope: !2496)
!2498 = !DILocation(line: 427, column: 17, scope: !2496)
!2499 = !DILocation(line: 427, column: 21, scope: !2500)
!2500 = !DILexicalBlockFile(scope: !2496, file: !361, discriminator: 1)
!2501 = !DILocation(line: 427, column: 26, scope: !2500)
!2502 = !DILocation(line: 427, column: 6, scope: !2500)
!2503 = !DILocation(line: 428, column: 21, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2496, file: !361, line: 427, column: 34)
!2505 = !DILocation(line: 428, column: 3, scope: !2504)
!2506 = !DILocation(line: 429, column: 3, scope: !2504)
!2507 = !DILocation(line: 438, column: 31, scope: !2472)
!2508 = !DILocation(line: 438, column: 17, scope: !2472)
!2509 = !DILocation(line: 438, column: 15, scope: !2472)
!2510 = !DILocation(line: 439, column: 8, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2472, file: !361, line: 439, column: 6)
!2512 = !DILocation(line: 439, column: 16, scope: !2511)
!2513 = !DILocation(line: 439, column: 7, scope: !2511)
!2514 = !DILocation(line: 439, column: 7, scope: !2515)
!2515 = !DILexicalBlockFile(scope: !2511, file: !361, discriminator: 1)
!2516 = !DILocation(line: 439, column: 60, scope: !2517)
!2517 = !DILexicalBlockFile(scope: !2511, file: !361, discriminator: 2)
!2518 = !DILocation(line: 439, column: 69, scope: !2517)
!2519 = !DILocation(line: 439, column: 37, scope: !2517)
!2520 = !DILocation(line: 439, column: 7, scope: !2517)
!2521 = !DILocation(line: 439, column: 7, scope: !2522)
!2522 = !DILexicalBlockFile(scope: !2511, file: !361, discriminator: 3)
!2523 = !DILocation(line: 439, column: 82, scope: !2522)
!2524 = !DILocation(line: 439, column: 6, scope: !2522)
!2525 = !DILocation(line: 440, column: 17, scope: !2511)
!2526 = !DILocation(line: 440, column: 3, scope: !2511)
!2527 = !DILocation(line: 443, column: 30, scope: !2472)
!2528 = !DILocation(line: 443, column: 49, scope: !2472)
!2529 = !DILocation(line: 443, column: 18, scope: !2472)
!2530 = !DILocation(line: 443, column: 16, scope: !2472)
!2531 = !DILocation(line: 444, column: 9, scope: !2472)
!2532 = !DILocation(line: 444, column: 2, scope: !2472)
!2533 = !DILocation(line: 446, column: 31, scope: !2472)
!2534 = !DILocation(line: 446, column: 45, scope: !2472)
!2535 = !DILocation(line: 447, column: 10, scope: !2472)
!2536 = !DILocation(line: 446, column: 10, scope: !2472)
!2537 = !DILocation(line: 446, column: 8, scope: !2472)
!2538 = !DILocation(line: 448, column: 9, scope: !2472)
!2539 = !DILocation(line: 448, column: 2, scope: !2472)
!2540 = !DILocation(line: 450, column: 15, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2472, file: !361, line: 450, column: 6)
!2542 = !DILocation(line: 450, column: 6, scope: !2541)
!2543 = !DILocation(line: 450, column: 22, scope: !2541)
!2544 = !DILocation(line: 450, column: 6, scope: !2472)
!2545 = !DILocation(line: 451, column: 24, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2541, file: !361, line: 450, column: 30)
!2547 = !DILocation(line: 451, column: 31, scope: !2546)
!2548 = !DILocation(line: 451, column: 9, scope: !2546)
!2549 = !DILocation(line: 451, column: 7, scope: !2546)
!2550 = !DILocation(line: 452, column: 22, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2546, file: !361, line: 452, column: 21)
!2552 = !DILocation(line: 452, column: 21, scope: !2546)
!2553 = !DILocation(line: 453, column: 4, scope: !2551)
!2554 = !DILocation(line: 453, column: 9, scope: !2551)
!2555 = !DILocation(line: 453, column: 19, scope: !2551)
!2556 = !DILocation(line: 454, column: 16, scope: !2546)
!2557 = !DILocation(line: 454, column: 38, scope: !2546)
!2558 = !DILocation(line: 454, column: 46, scope: !2546)
!2559 = !DILocation(line: 454, column: 3, scope: !2546)
!2560 = !DILocation(line: 456, column: 28, scope: !2546)
!2561 = !DILocation(line: 456, column: 33, scope: !2546)
!2562 = !DILocation(line: 456, column: 9, scope: !2546)
!2563 = !DILocation(line: 456, column: 7, scope: !2546)
!2564 = !DILocation(line: 460, column: 24, scope: !2546)
!2565 = !DILocation(line: 460, column: 29, scope: !2546)
!2566 = !DILocation(line: 460, column: 3, scope: !2546)
!2567 = !DILocation(line: 462, column: 10, scope: !2546)
!2568 = !DILocation(line: 462, column: 3, scope: !2546)
!2569 = !DILocation(line: 464, column: 3, scope: !2546)
!2570 = !DILocation(line: 464, column: 8, scope: !2546)
!2571 = !DILocation(line: 464, column: 13, scope: !2546)
!2572 = !DILocation(line: 465, column: 14, scope: !2546)
!2573 = !DILocation(line: 465, column: 3, scope: !2546)
!2574 = !DILocation(line: 466, column: 21, scope: !2546)
!2575 = !DILocation(line: 466, column: 3, scope: !2546)
!2576 = !DILocation(line: 467, column: 2, scope: !2546)
!2577 = !DILocation(line: 468, column: 9, scope: !2472)
!2578 = !DILocation(line: 468, column: 2, scope: !2472)
!2579 = !DILocation(line: 469, column: 1, scope: !2472)
!2580 = !DILocation(line: 469, column: 1, scope: !2581)
!2581 = !DILexicalBlockFile(scope: !2472, file: !361, discriminator: 1)
!2582 = distinct !DISubprogram(name: "escape_target", scope: !361, file: !361, line: 399, type: !801, isLocal: true, isDefinition: true, scopeLine: 400, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !411)
!2583 = !DILocalVariable(name: "target", arg: 1, scope: !2582, file: !361, line: 399, type: !355)
!2584 = !DILocation(line: 399, column: 40, scope: !2582)
!2585 = !DILocalVariable(name: "str", scope: !2582, file: !361, line: 401, type: !364)
!2586 = !DILocation(line: 401, column: 8, scope: !2582)
!2587 = !DILocalVariable(name: "p", scope: !2582, file: !361, line: 401, type: !364)
!2588 = !DILocation(line: 401, column: 14, scope: !2582)
!2589 = !DILocation(line: 403, column: 28, scope: !2582)
!2590 = !DILocation(line: 403, column: 21, scope: !2582)
!2591 = !DILocation(line: 403, column: 35, scope: !2582)
!2592 = !DILocation(line: 403, column: 37, scope: !2582)
!2593 = !DILocation(line: 403, column: 12, scope: !2594)
!2594 = !DILexicalBlockFile(scope: !2582, file: !361, discriminator: 1)
!2595 = !DILocation(line: 403, column: 10, scope: !2582)
!2596 = !DILocation(line: 403, column: 4, scope: !2582)
!2597 = !DILocation(line: 404, column: 2, scope: !2582)
!2598 = !DILocation(line: 404, column: 10, scope: !2594)
!2599 = !DILocation(line: 404, column: 9, scope: !2594)
!2600 = !DILocation(line: 404, column: 17, scope: !2594)
!2601 = !DILocation(line: 404, column: 2, scope: !2594)
!2602 = !DILocation(line: 405, column: 30, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2604, file: !361, line: 405, column: 7)
!2604 = distinct !DILexicalBlock(scope: !2582, file: !361, line: 404, column: 26)
!2605 = !DILocation(line: 405, column: 29, scope: !2603)
!2606 = !DILocation(line: 405, column: 7, scope: !2603)
!2607 = !DILocation(line: 405, column: 7, scope: !2604)
!2608 = !DILocation(line: 406, column: 6, scope: !2603)
!2609 = !DILocation(line: 406, column: 9, scope: !2603)
!2610 = !DILocation(line: 406, column: 4, scope: !2603)
!2611 = !DILocation(line: 408, column: 9, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2613, file: !361, line: 408, column: 8)
!2613 = distinct !DILexicalBlock(scope: !2603, file: !361, line: 407, column: 8)
!2614 = !DILocation(line: 408, column: 8, scope: !2612)
!2615 = !DILocation(line: 408, column: 16, scope: !2612)
!2616 = !DILocation(line: 408, column: 8, scope: !2613)
!2617 = !DILocation(line: 409, column: 7, scope: !2612)
!2618 = !DILocation(line: 409, column: 10, scope: !2612)
!2619 = !DILocation(line: 409, column: 5, scope: !2612)
!2620 = !DILocation(line: 410, column: 12, scope: !2613)
!2621 = !DILocation(line: 410, column: 11, scope: !2613)
!2622 = !DILocation(line: 410, column: 6, scope: !2613)
!2623 = !DILocation(line: 410, column: 9, scope: !2613)
!2624 = !DILocation(line: 413, column: 23, scope: !2604)
!2625 = !DILocation(line: 404, column: 2, scope: !2626)
!2626 = !DILexicalBlockFile(scope: !2582, file: !361, discriminator: 2)
!2627 = distinct !{!2627, !2597}
!2628 = !DILocation(line: 415, column: 3, scope: !2582)
!2629 = !DILocation(line: 415, column: 5, scope: !2582)
!2630 = !DILocation(line: 417, column: 16, scope: !2582)
!2631 = !DILocation(line: 417, column: 9, scope: !2582)
