; ModuleID = './line218-fe-common-core.o.i'
source_filename = "./line218-fe-common-core.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GOptionEntry = type { i8*, i8, i32, i32, i8*, i8*, i8* }
%struct._FORMAT_REC = type { i8*, i8*, i32, [10 x i32] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._WINDOW_REC = type { i32, i8*, i32, i32, %struct._GSList*, %struct._WI_ITEM_REC*, %struct._SERVER_REC*, %struct._SERVER_REC*, i8*, i32, %struct._GSList*, i8, %struct.HISTORY_REC*, i8*, i32, i8*, i64, i64, i8*, i8*, i8* }
%struct._WI_ITEM_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, {}*, i8* (%struct._WI_ITEM_REC*)* }
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
%struct._QUERY_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, i8 }
%struct.HISTORY_REC = type { i8*, %struct._GList*, i32, i32, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.MODULE_FILE_REC = type { %struct._MODULE_REC*, i8*, i8*, void ()*, %struct._GModule*, i8 }
%struct._MODULE_REC = type { i8*, %struct._GSList* }
%struct._GModule = type opaque
%struct.MODULE_SERVER_REC = type { %struct._GSList* }
%struct.MODULE_CHANNEL_REC = type { %struct._GSList* }
%struct._SERVER_SETUP_REC = type { i32, i32, i8*, i16, i8*, i32, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IPADDR*, %struct._IPADDR*, i64, i8, %struct._GHashTable* }
%struct._TEXT_DEST_REC = type { %struct._WINDOW_REC*, %struct._SERVER_REC*, i8*, i8*, i8*, i8*, i32, i32, i8*, i32 }

@fe_common_core_register_options.options = internal global [7 x %struct._GOptionEntry] [%struct._GOptionEntry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8 99, i32 0, i32 1, i8* bitcast (i8** @autocon_server to i8*), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0) }, %struct._GOptionEntry { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8 119, i32 0, i32 1, i8* bitcast (i8** @autocon_password to i8*), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0) }, %struct._GOptionEntry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8 112, i32 0, i32 2, i8* bitcast (i32* @autocon_port to i8*), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0) }, %struct._GOptionEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8 33, i32 0, i32 0, i8* bitcast (i32* @no_autoconnect to i8*), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0), i8* null }, %struct._GOptionEntry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8 110, i32 0, i32 1, i8* bitcast (i8** @cmdline_nick to i8*), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i8* null }, %struct._GOptionEntry { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i8 104, i32 0, i32 1, i8* bitcast (i8** @cmdline_hostname to i8*), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i32 0, i32 0), i8* null }, %struct._GOptionEntry zeroinitializer], align 16
@.str = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@autocon_server = internal global i8* null, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"Automatically connect to server/network\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@autocon_password = internal global i8* null, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"Autoconnect password\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"PASSWORD\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@autocon_port = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"Autoconnect port\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"PORT\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"noconnect\00", align 1
@no_autoconnect = internal global i32 0, align 4
@.str.10 = private unnamed_addr constant [23 x i8] c"Disable autoconnecting\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"nick\00", align 1
@cmdline_nick = internal global i8* null, align 8
@.str.12 = private unnamed_addr constant [20 x i8] c"Specify nick to use\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"hostname\00", align 1
@cmdline_hostname = internal global i8* null, align 8
@.str.14 = private unnamed_addr constant [25 x i8] c"Specify host name to use\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"fe-common/core\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"lookandfeel\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"timestamps\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"timestamp_level\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"ALL\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"timestamp_timeout\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"beep_msg_level\00", align 1
@.str.23 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"beep_when_window_active\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"beep_when_away\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"hide_text_style\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"hide_colors\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"hide_server_tags\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"use_status_window\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"use_msgs_window\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"term_charset\00", align 1
@fecommon_core_formats = external global [0 x %struct._FORMAT_REC], align 8
@.str.32 = private unnamed_addr constant [17 x i8] c"server connected\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"server destroyed\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"channel created\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"channel destroyed\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"fe\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"setup changed\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"warning\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"critical\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@windows = external global %struct._GSList*, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str.42 = private unnamed_addr constant [13 x i8] c"GLib %s: %s\0A\00", align 1
@.str.43 = private unnamed_addr constant [25 x i8] c"irssi init read settings\00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"WINDOW ITEM TYPE\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"CHANNEL\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"QUERY\00", align 1
@__func__.strarray_find_dest = private unnamed_addr constant [19 x i8] c"strarray_find_dest\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"array != NULL\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"dest != NULL\00", align 1
@.str.49 = private unnamed_addr constant [21 x i8] c"dest->window != NULL\00", align 1
@.str.50 = private unnamed_addr constant [21 x i8] c"dest->target != NULL\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"::all\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"::dccqueries\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"::queries\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"::channels\00", align 1
@sig_setup_changed.firsttime = internal global i32 1, align 4
@sig_setup_changed.status_window = internal global i32 0, align 4
@sig_setup_changed.msgs_window = internal global i32 0, align 4
@.str.55 = private unnamed_addr constant [9 x i8] c"(status)\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"(msgs)\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"%s/startup\00", align 1
@.str.58 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@active_win = external global %struct._WINDOW_REC*, align 8
@.str.59 = private unnamed_addr constant [6 x i8] c"%s %d\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"%s %d %s\00", align 1
@.str.61 = private unnamed_addr constant [16 x i8] c"command connect\00", align 1
@setupservers = external global %struct._GSList*, align 8
@.str.62 = private unnamed_addr constant [18 x i8] c"-network %s %s %d\00", align 1

; Function Attrs: nounwind uwtable
define void @fe_common_core_register_options() #0 !dbg !381 {
  store i8* null, i8** @autocon_server, align 8, !dbg !415
  store i8* null, i8** @autocon_password, align 8, !dbg !416
  store i32 0, i32* @autocon_port, align 4, !dbg !417
  store i32 0, i32* @no_autoconnect, align 4, !dbg !418
  store i8* null, i8** @cmdline_nick, align 8, !dbg !419
  store i8* null, i8** @cmdline_hostname, align 8, !dbg !420
  call void @args_register(%struct._GOptionEntry* getelementptr inbounds ([7 x %struct._GOptionEntry], [7 x %struct._GOptionEntry]* @fe_common_core_register_options.options, i32 0, i32 0)), !dbg !421
  ret void, !dbg !422
}

declare void @args_register(%struct._GOptionEntry*) #1

; Function Attrs: nounwind uwtable
define void @fe_common_core_init() #0 !dbg !423 {
  %1 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !424, metadata !425), !dbg !426
  call void @settings_add_bool_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), i32 1), !dbg !427
  call void @settings_add_level_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0)), !dbg !428
  call void @settings_add_time_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0)), !dbg !429
  call void @settings_add_level_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i32 0, i32 0)), !dbg !430
  call void @settings_add_bool_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i32 0, i32 0), i32 1), !dbg !431
  call void @settings_add_bool_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0), i32 1), !dbg !432
  call void @settings_add_bool_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0), i32 0), !dbg !433
  call void @settings_add_bool_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), i32 0), !dbg !434
  call void @settings_add_bool_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i32 0, i32 0), i32 0), !dbg !435
  call void @settings_add_bool_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i32 0, i32 0), i32 1), !dbg !436
  call void @settings_add_bool_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i32 0, i32 0), i32 0), !dbg !437
  %2 = call i32 @g_get_charset(i8** %1), !dbg !438
  %3 = load i8*, i8** %1, align 8, !dbg !439
  call void @settings_add_str_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0), i8* %3), !dbg !440
  call void @themes_init(), !dbg !441
  call void @theme_register_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), %struct._FORMAT_REC* getelementptr inbounds ([0 x %struct._FORMAT_REC], [0 x %struct._FORMAT_REC]* @fecommon_core_formats, i32 0, i32 0)), !dbg !442
  call void @command_history_init(), !dbg !443
  call void @completion_init(), !dbg !444
  call void @keyboard_init(), !dbg !445
  call void @printtext_init(), !dbg !446
  call void @formats_init(), !dbg !447
  call void @fe_exec_init(), !dbg !448
  call void @fe_expandos_init(), !dbg !449
  call void @fe_help_init(), !dbg !450
  call void @fe_ignore_init(), !dbg !451
  call void @fe_log_init(), !dbg !452
  call void @fe_modules_init(), !dbg !453
  call void @fe_server_init(), !dbg !454
  call void @fe_settings_init(), !dbg !455
  call void @fe_tls_init(), !dbg !456
  call void @windows_init(), !dbg !457
  call void @window_activity_init(), !dbg !458
  call void @window_commands_init(), !dbg !459
  call void @window_items_init(), !dbg !460
  call void @windows_layout_init(), !dbg !461
  call void @fe_core_commands_init(), !dbg !462
  call void @fe_channels_init(), !dbg !463
  call void @fe_queries_init(), !dbg !464
  call void @fe_messages_init(), !dbg !465
  call void @hilight_text_init(), !dbg !466
  call void @fe_ignore_messages_init(), !dbg !467
  call void @fe_recode_init(), !dbg !468
  call void @settings_check_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0)), !dbg !469
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*)* @sig_connected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !470
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i32 100, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*)* @sig_destroyed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !471
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CHANNEL_REC*)* @sig_channel_created to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !472
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i32 100, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CHANNEL_REC*)* @sig_channel_destroyed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !473
  %4 = call %struct.MODULE_FILE_REC* @module_register_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0)), !dbg !474
  ret void, !dbg !475
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare void @settings_add_bool_module(i8*, i8*, i8*, i32) #1

declare void @settings_add_level_module(i8*, i8*, i8*, i8*) #1

declare void @settings_add_time_module(i8*, i8*, i8*, i8*) #1

declare i32 @g_get_charset(i8**) #1

declare void @settings_add_str_module(i8*, i8*, i8*, i8*) #1

declare void @themes_init() #1

declare void @theme_register_module(i8*, %struct._FORMAT_REC*) #1

declare void @command_history_init() #1

declare void @completion_init() #1

declare void @keyboard_init() #1

declare void @printtext_init() #1

declare void @formats_init() #1

declare void @fe_exec_init() #1

declare void @fe_expandos_init() #1

declare void @fe_help_init() #1

declare void @fe_ignore_init() #1

declare void @fe_log_init() #1

declare void @fe_modules_init() #1

declare void @fe_server_init() #1

declare void @fe_settings_init() #1

declare void @fe_tls_init() #1

declare void @windows_init() #1

declare void @window_activity_init() #1

declare void @window_commands_init() #1

declare void @window_items_init() #1

declare void @windows_layout_init() #1

declare void @fe_core_commands_init() #1

declare void @fe_channels_init() #1

declare void @fe_queries_init() #1

declare void @fe_messages_init() #1

declare void @hilight_text_init() #1

declare void @fe_ignore_messages_init() #1

declare void @fe_recode_init() #1

declare void @settings_check_module(i8*) #1

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @sig_connected(%struct._SERVER_REC*) #0 !dbg !476 {
  %2 = alloca %struct._SERVER_REC*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %2, metadata !884, metadata !425), !dbg !885
  %3 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !886
  %4 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %3, i32 0, i32 15, !dbg !887
  %5 = load %struct._GHashTable*, %struct._GHashTable** %4, align 8, !dbg !887
  %6 = call noalias i8* @g_malloc0_n(i64 1, i64 8), !dbg !888
  %7 = bitcast i8* %6 to %struct.MODULE_SERVER_REC*, !dbg !889
  %8 = bitcast %struct.MODULE_SERVER_REC* %7 to i8*, !dbg !890
  %9 = call i32 @g_hash_table_insert(%struct._GHashTable* %5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* %8), !dbg !891
  ret void, !dbg !893
}

; Function Attrs: nounwind uwtable
define internal void @sig_destroyed(%struct._SERVER_REC*) #0 !dbg !894 {
  %2 = alloca %struct._SERVER_REC*, align 8
  %3 = alloca i8*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %2, metadata !895, metadata !425), !dbg !896
  call void @llvm.dbg.declare(metadata i8** %3, metadata !897, metadata !425), !dbg !898
  %4 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !899
  %5 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %4, i32 0, i32 15, !dbg !900
  %6 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !900
  %7 = call i8* @g_hash_table_lookup(%struct._GHashTable* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0)), !dbg !901
  store i8* %7, i8** %3, align 8, !dbg !898
  %8 = load i8*, i8** %3, align 8, !dbg !902
  call void @g_free(i8* %8), !dbg !903
  %9 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !904
  %10 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %9, i32 0, i32 15, !dbg !905
  %11 = load %struct._GHashTable*, %struct._GHashTable** %10, align 8, !dbg !905
  %12 = call i32 @g_hash_table_remove(%struct._GHashTable* %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0)), !dbg !906
  ret void, !dbg !907
}

; Function Attrs: nounwind uwtable
define internal void @sig_channel_created(%struct._CHANNEL_REC*) #0 !dbg !908 {
  %2 = alloca %struct._CHANNEL_REC*, align 8
  store %struct._CHANNEL_REC* %0, %struct._CHANNEL_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %2, metadata !911, metadata !425), !dbg !912
  %3 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !913
  %4 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %3, i32 0, i32 2, !dbg !914
  %5 = load %struct._GHashTable*, %struct._GHashTable** %4, align 8, !dbg !914
  %6 = call noalias i8* @g_malloc0_n(i64 1, i64 8), !dbg !915
  %7 = bitcast i8* %6 to %struct.MODULE_CHANNEL_REC*, !dbg !916
  %8 = bitcast %struct.MODULE_CHANNEL_REC* %7 to i8*, !dbg !917
  %9 = call i32 @g_hash_table_insert(%struct._GHashTable* %5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* %8), !dbg !918
  ret void, !dbg !920
}

; Function Attrs: nounwind uwtable
define internal void @sig_channel_destroyed(%struct._CHANNEL_REC*) #0 !dbg !921 {
  %2 = alloca %struct._CHANNEL_REC*, align 8
  %3 = alloca i8*, align 8
  store %struct._CHANNEL_REC* %0, %struct._CHANNEL_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %2, metadata !922, metadata !425), !dbg !923
  call void @llvm.dbg.declare(metadata i8** %3, metadata !924, metadata !425), !dbg !925
  %4 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !926
  %5 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %4, i32 0, i32 2, !dbg !927
  %6 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !927
  %7 = call i8* @g_hash_table_lookup(%struct._GHashTable* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0)), !dbg !928
  store i8* %7, i8** %3, align 8, !dbg !925
  %8 = load i8*, i8** %3, align 8, !dbg !929
  call void @g_free(i8* %8), !dbg !930
  %9 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !931
  %10 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %9, i32 0, i32 2, !dbg !932
  %11 = load %struct._GHashTable*, %struct._GHashTable** %10, align 8, !dbg !932
  %12 = call i32 @g_hash_table_remove(%struct._GHashTable* %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0)), !dbg !933
  ret void, !dbg !934
}

declare %struct.MODULE_FILE_REC* @module_register_full(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @fe_common_core_deinit() #0 !dbg !935 {
  call void @hilight_text_deinit(), !dbg !936
  call void @command_history_deinit(), !dbg !937
  call void @completion_deinit(), !dbg !938
  call void @keyboard_deinit(), !dbg !939
  call void @printtext_deinit(), !dbg !940
  call void @formats_deinit(), !dbg !941
  call void @fe_exec_deinit(), !dbg !942
  call void @fe_expandos_deinit(), !dbg !943
  call void @fe_help_deinit(), !dbg !944
  call void @fe_ignore_deinit(), !dbg !945
  call void @fe_log_deinit(), !dbg !946
  call void @fe_modules_deinit(), !dbg !947
  call void @fe_server_deinit(), !dbg !948
  call void @fe_settings_deinit(), !dbg !949
  call void @fe_tls_deinit(), !dbg !950
  call void @windows_deinit(), !dbg !951
  call void @window_activity_deinit(), !dbg !952
  call void @window_commands_deinit(), !dbg !953
  call void @window_items_deinit(), !dbg !954
  call void @windows_layout_deinit(), !dbg !955
  call void @fe_core_commands_deinit(), !dbg !956
  call void @fe_channels_deinit(), !dbg !957
  call void @fe_queries_deinit(), !dbg !958
  call void @fe_messages_deinit(), !dbg !959
  call void @fe_ignore_messages_deinit(), !dbg !960
  call void @fe_recode_deinit(), !dbg !961
  call void @theme_unregister_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0)), !dbg !962
  call void @themes_deinit(), !dbg !963
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_setup_changed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !964
  call void @signal_remove_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*)* @sig_connected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !965
  call void @signal_remove_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*)* @sig_destroyed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !966
  call void @signal_remove_full(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CHANNEL_REC*)* @sig_channel_created to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !967
  call void @signal_remove_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CHANNEL_REC*)* @sig_channel_destroyed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !968
  ret void, !dbg !969
}

declare void @hilight_text_deinit() #1

declare void @command_history_deinit() #1

declare void @completion_deinit() #1

declare void @keyboard_deinit() #1

declare void @printtext_deinit() #1

declare void @formats_deinit() #1

declare void @fe_exec_deinit() #1

declare void @fe_expandos_deinit() #1

declare void @fe_help_deinit() #1

declare void @fe_ignore_deinit() #1

declare void @fe_log_deinit() #1

declare void @fe_modules_deinit() #1

declare void @fe_server_deinit() #1

declare void @fe_settings_deinit() #1

declare void @fe_tls_deinit() #1

declare void @windows_deinit() #1

declare void @window_activity_deinit() #1

declare void @window_commands_deinit() #1

declare void @window_items_deinit() #1

declare void @windows_layout_deinit() #1

declare void @fe_core_commands_deinit() #1

declare void @fe_channels_deinit() #1

declare void @fe_queries_deinit() #1

declare void @fe_messages_deinit() #1

declare void @fe_ignore_messages_deinit() #1

declare void @fe_recode_deinit() #1

declare void @theme_unregister_module(i8*) #1

declare void @themes_deinit() #1

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @sig_setup_changed() #0 !dbg !409 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !970, metadata !425), !dbg !971
  store i32 0, i32* %1, align 4, !dbg !971
  %2 = call i32 @settings_get_bool(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i32 0, i32 0)), !dbg !972
  %3 = load i32, i32* @sig_setup_changed.status_window, align 4, !dbg !974
  %4 = icmp ne i32 %2, %3, !dbg !975
  br i1 %4, label %5, label %10, !dbg !976

; <label>:5:                                      ; preds = %0
  %6 = load i32, i32* @sig_setup_changed.status_window, align 4, !dbg !977
  %7 = icmp ne i32 %6, 0, !dbg !979
  %8 = xor i1 %7, true, !dbg !979
  %9 = zext i1 %8 to i32, !dbg !979
  store i32 %9, i32* @sig_setup_changed.status_window, align 4, !dbg !980
  store i32 1, i32* %1, align 4, !dbg !981
  br label %10, !dbg !982

; <label>:10:                                     ; preds = %5, %0
  %11 = call i32 @settings_get_bool(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i32 0, i32 0)), !dbg !983
  %12 = load i32, i32* @sig_setup_changed.msgs_window, align 4, !dbg !985
  %13 = icmp ne i32 %11, %12, !dbg !986
  br i1 %13, label %14, label %19, !dbg !987

; <label>:14:                                     ; preds = %10
  %15 = load i32, i32* @sig_setup_changed.msgs_window, align 4, !dbg !988
  %16 = icmp ne i32 %15, 0, !dbg !990
  %17 = xor i1 %16, true, !dbg !990
  %18 = zext i1 %17 to i32, !dbg !990
  store i32 %18, i32* @sig_setup_changed.msgs_window, align 4, !dbg !991
  store i32 1, i32* %1, align 4, !dbg !992
  br label %19, !dbg !993

; <label>:19:                                     ; preds = %14, %10
  %20 = load i32, i32* @sig_setup_changed.firsttime, align 4, !dbg !994
  %21 = icmp ne i32 %20, 0, !dbg !994
  br i1 %21, label %22, label %27, !dbg !996

; <label>:22:                                     ; preds = %19
  store i32 0, i32* @sig_setup_changed.firsttime, align 4, !dbg !997
  store i32 1, i32* %1, align 4, !dbg !999
  call void @windows_layout_restore(), !dbg !1000
  %23 = load %struct._GSList*, %struct._GSList** @windows, align 8, !dbg !1001
  %24 = icmp ne %struct._GSList* %23, null, !dbg !1003
  br i1 %24, label %25, label %26, !dbg !1004

; <label>:25:                                     ; preds = %22
  br label %31, !dbg !1005

; <label>:26:                                     ; preds = %22
  br label %27, !dbg !1006

; <label>:27:                                     ; preds = %26, %19
  %28 = load i32, i32* %1, align 4, !dbg !1007
  %29 = icmp ne i32 %28, 0, !dbg !1007
  br i1 %29, label %30, label %31, !dbg !1009

; <label>:30:                                     ; preds = %27
  call void @create_windows(), !dbg !1010
  br label %31, !dbg !1010

; <label>:31:                                     ; preds = %25, %30, %27
  ret void, !dbg !1011
}

; Function Attrs: nounwind uwtable
define void @glog_func(i8*, i32, i8*) #0 !dbg !1012 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1015, metadata !425), !dbg !1016
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1017, metadata !425), !dbg !1018
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1019, metadata !425), !dbg !1020
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1021, metadata !425), !dbg !1022
  %8 = load i32, i32* %5, align 4, !dbg !1023
  switch i32 %8, label %11 [
    i32 16, label %9
    i32 8, label %10
  ], !dbg !1024

; <label>:9:                                      ; preds = %3
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), i8** %7, align 8, !dbg !1025
  br label %12, !dbg !1027

; <label>:10:                                     ; preds = %3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), i8** %7, align 8, !dbg !1028
  br label %12, !dbg !1029

; <label>:11:                                     ; preds = %3
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i8** %7, align 8, !dbg !1030
  br label %12, !dbg !1031

; <label>:12:                                     ; preds = %11, %10, %9
  %13 = load %struct._GSList*, %struct._GSList** @windows, align 8, !dbg !1032
  %14 = icmp eq %struct._GSList* %13, null, !dbg !1034
  br i1 %14, label %15, label %20, !dbg !1035

; <label>:15:                                     ; preds = %12
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1036
  %17 = load i8*, i8** %7, align 8, !dbg !1037
  %18 = load i8*, i8** %6, align 8, !dbg !1038
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i32 0, i32 0), i8* %17, i8* %18), !dbg !1039
  br label %23, !dbg !1039

; <label>:20:                                     ; preds = %12
  %21 = load i8*, i8** %7, align 8, !dbg !1040
  %22 = load i8*, i8** %6, align 8, !dbg !1042
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* null, i8* null, i32 1048576, i32 215, i8* %21, i8* %22), !dbg !1043
  br label %23

; <label>:23:                                     ; preds = %20, %15
  ret void, !dbg !1044
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @printformat_module(i8*, i8*, i8*, i32, i32, ...) #1

; Function Attrs: nounwind uwtable
define void @fe_common_core_finish_init() #0 !dbg !1045 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1046, metadata !425), !dbg !1047
  %2 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.43, i32 0, i32 0), i32 0), !dbg !1048
  %3 = call void (i32)* @signal(i32 13, void (i32)* inttoptr (i64 1 to void (i32)*)) #5, !dbg !1049
  store i32 0, i32* %1, align 4, !dbg !1050
  %4 = load i8*, i8** @cmdline_nick, align 8, !dbg !1051
  %5 = icmp ne i8* %4, null, !dbg !1053
  br i1 %5, label %6, label %13, !dbg !1054

; <label>:6:                                      ; preds = %0
  %7 = load i8*, i8** @cmdline_nick, align 8, !dbg !1055
  %8 = load i8, i8* %7, align 1, !dbg !1057
  %9 = sext i8 %8 to i32, !dbg !1057
  %10 = icmp ne i32 %9, 0, !dbg !1058
  br i1 %10, label %11, label %13, !dbg !1059

; <label>:11:                                     ; preds = %6
  %12 = load i8*, i8** @cmdline_nick, align 8, !dbg !1060
  call void @settings_set_str(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* %12), !dbg !1062
  store i32 1, i32* %1, align 4, !dbg !1063
  br label %13, !dbg !1064

; <label>:13:                                     ; preds = %11, %6, %0
  %14 = load i8*, i8** @cmdline_hostname, align 8, !dbg !1065
  %15 = icmp ne i8* %14, null, !dbg !1067
  br i1 %15, label %16, label %18, !dbg !1068

; <label>:16:                                     ; preds = %13
  %17 = load i8*, i8** @cmdline_hostname, align 8, !dbg !1069
  call void @settings_set_str(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i8* %17), !dbg !1071
  store i32 1, i32* %1, align 4, !dbg !1072
  br label %18, !dbg !1073

; <label>:18:                                     ; preds = %16, %13
  call void @sig_setup_changed(), !dbg !1074
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_setup_changed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1075
  %19 = call void (i8*, i32, i8*, i8*)* @g_log_set_default_handler(void (i8*, i32, i8*, i8*)* bitcast (void (i8*, i32, i8*)* @glog_func to void (i8*, i32, i8*, i8*)*), i8* null), !dbg !1076
  %20 = load i32, i32* %1, align 4, !dbg !1077
  %21 = icmp ne i32 %20, 0, !dbg !1077
  br i1 %21, label %22, label %24, !dbg !1079

; <label>:22:                                     ; preds = %18
  %23 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i32 0, i32 0), i32 0), !dbg !1080
  br label %24, !dbg !1080

; <label>:24:                                     ; preds = %22, %18
  call void @autorun_startup(), !dbg !1081
  call void @autoconnect_servers(), !dbg !1082
  ret void, !dbg !1083
}

declare i32 @signal_emit(i8*, i32, ...) #1

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #3

declare void @settings_set_str(i8*, i8*) #1

declare void (i8*, i32, i8*, i8*)* @g_log_set_default_handler(void (i8*, i32, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @autorun_startup() #0 !dbg !1084 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct._GIOChannel*, align 8
  %3 = alloca %struct._GString*, align 8
  %4 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !1085, metadata !425), !dbg !1086
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %2, metadata !1087, metadata !425), !dbg !1088
  call void @llvm.dbg.declare(metadata %struct._GString** %3, metadata !1089, metadata !425), !dbg !1090
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1091, metadata !425), !dbg !1092
  %5 = call i8* @get_irssi_dir(), !dbg !1093
  %6 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i32 0, i32 0), i8* %5), !dbg !1094
  store i8* %6, i8** %1, align 8, !dbg !1096
  %7 = load i8*, i8** %1, align 8, !dbg !1097
  %8 = call %struct._GIOChannel* @g_io_channel_new_file(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i32 0, i32 0), %struct._GError** null), !dbg !1098
  store %struct._GIOChannel* %8, %struct._GIOChannel** %2, align 8, !dbg !1099
  %9 = load i8*, i8** %1, align 8, !dbg !1100
  call void @g_free(i8* %9), !dbg !1101
  %10 = load %struct._GIOChannel*, %struct._GIOChannel** %2, align 8, !dbg !1102
  %11 = icmp eq %struct._GIOChannel* %10, null, !dbg !1104
  br i1 %11, label %12, label %13, !dbg !1105

; <label>:12:                                     ; preds = %0
  br label %51, !dbg !1106

; <label>:13:                                     ; preds = %0
  %14 = load %struct._GIOChannel*, %struct._GIOChannel** %2, align 8, !dbg !1108
  %15 = call i32 @g_io_channel_set_encoding(%struct._GIOChannel* %14, i8* null, %struct._GError** null), !dbg !1109
  %16 = call %struct._GString* @g_string_sized_new(i64 512), !dbg !1110
  store %struct._GString* %16, %struct._GString** %3, align 8, !dbg !1111
  br label %17, !dbg !1112

; <label>:17:                                     ; preds = %46, %13
  %18 = load %struct._GIOChannel*, %struct._GIOChannel** %2, align 8, !dbg !1113
  %19 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1114
  %20 = call i32 @g_io_channel_read_line_string(%struct._GIOChannel* %18, %struct._GString* %19, i64* %4, %struct._GError** null), !dbg !1115
  %21 = icmp eq i32 %20, 1, !dbg !1116
  br i1 %21, label %22, label %47, !dbg !1117

; <label>:22:                                     ; preds = %17
  %23 = load i64, i64* %4, align 8, !dbg !1118
  %24 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1120
  %25 = getelementptr inbounds %struct._GString, %struct._GString* %24, i32 0, i32 0, !dbg !1121
  %26 = load i8*, i8** %25, align 8, !dbg !1121
  %27 = getelementptr inbounds i8, i8* %26, i64 %23, !dbg !1120
  store i8 0, i8* %27, align 1, !dbg !1122
  %28 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1123
  %29 = getelementptr inbounds %struct._GString, %struct._GString* %28, i32 0, i32 0, !dbg !1125
  %30 = load i8*, i8** %29, align 8, !dbg !1125
  %31 = getelementptr inbounds i8, i8* %30, i64 0, !dbg !1123
  %32 = load i8, i8* %31, align 1, !dbg !1123
  %33 = sext i8 %32 to i32, !dbg !1123
  %34 = icmp ne i32 %33, 35, !dbg !1126
  br i1 %34, label %35, label %46, !dbg !1127

; <label>:35:                                     ; preds = %22
  %36 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1128
  %37 = getelementptr inbounds %struct._GString, %struct._GString* %36, i32 0, i32 0, !dbg !1130
  %38 = load i8*, i8** %37, align 8, !dbg !1130
  %39 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1131
  %40 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %39, i32 0, i32 6, !dbg !1132
  %41 = load %struct._SERVER_REC*, %struct._SERVER_REC** %40, align 8, !dbg !1132
  %42 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1133
  %43 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %42, i32 0, i32 5, !dbg !1134
  %44 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %43, align 8, !dbg !1134
  %45 = bitcast %struct._WI_ITEM_REC* %44 to i8*, !dbg !1133
  call void @eval_special_string(i8* %38, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i32 0, i32 0), %struct._SERVER_REC* %41, i8* %45), !dbg !1135
  br label %46, !dbg !1136

; <label>:46:                                     ; preds = %35, %22
  br label %17, !dbg !1137, !llvm.loop !1139

; <label>:47:                                     ; preds = %17
  %48 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1140
  %49 = call i8* @g_string_free(%struct._GString* %48, i32 1), !dbg !1141
  %50 = load %struct._GIOChannel*, %struct._GIOChannel** %2, align 8, !dbg !1142
  call void @g_io_channel_unref(%struct._GIOChannel* %50), !dbg !1143
  br label %51, !dbg !1144

; <label>:51:                                     ; preds = %47, %12
  ret void, !dbg !1145
}

; Function Attrs: nounwind uwtable
define internal void @autoconnect_servers() #0 !dbg !1146 {
  %1 = alloca %struct._GSList*, align 8
  %2 = alloca %struct._GSList*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._SERVER_SETUP_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %1, metadata !1147, metadata !425), !dbg !1148
  call void @llvm.dbg.declare(metadata %struct._GSList** %2, metadata !1149, metadata !425), !dbg !1150
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1151, metadata !425), !dbg !1152
  %5 = load i8*, i8** @autocon_server, align 8, !dbg !1153
  %6 = icmp ne i8* %5, null, !dbg !1155
  br i1 %6, label %7, label %23, !dbg !1156

; <label>:7:                                      ; preds = %0
  %8 = load i8*, i8** @autocon_password, align 8, !dbg !1157
  %9 = icmp eq i8* %8, null, !dbg !1160
  br i1 %9, label %10, label %14, !dbg !1161

; <label>:10:                                     ; preds = %7
  %11 = load i8*, i8** @autocon_server, align 8, !dbg !1162
  %12 = load i32, i32* @autocon_port, align 4, !dbg !1163
  %13 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0), i8* %11, i32 %12), !dbg !1164
  store i8* %13, i8** %3, align 8, !dbg !1165
  br label %19, !dbg !1166

; <label>:14:                                     ; preds = %7
  %15 = load i8*, i8** @autocon_server, align 8, !dbg !1167
  %16 = load i32, i32* @autocon_port, align 4, !dbg !1168
  %17 = load i8*, i8** @autocon_password, align 8, !dbg !1169
  %18 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i32 0, i32 0), i8* %15, i32 %16, i8* %17), !dbg !1170
  store i8* %18, i8** %3, align 8, !dbg !1171
  br label %19

; <label>:19:                                     ; preds = %14, %10
  %20 = load i8*, i8** %3, align 8, !dbg !1172
  %21 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.61, i32 0, i32 0), i32 1, i8* %20), !dbg !1173
  %22 = load i8*, i8** %3, align 8, !dbg !1174
  call void @g_free(i8* %22), !dbg !1175
  br label %95, !dbg !1176

; <label>:23:                                     ; preds = %0
  %24 = load i32, i32* @no_autoconnect, align 4, !dbg !1177
  %25 = icmp ne i32 %24, 0, !dbg !1177
  br i1 %25, label %26, label %27, !dbg !1179

; <label>:26:                                     ; preds = %23
  br label %95, !dbg !1180

; <label>:27:                                     ; preds = %23
  store %struct._GSList* null, %struct._GSList** %2, align 8, !dbg !1182
  %28 = load %struct._GSList*, %struct._GSList** @setupservers, align 8, !dbg !1183
  store %struct._GSList* %28, %struct._GSList** %1, align 8, !dbg !1185
  br label %29, !dbg !1186

; <label>:29:                                     ; preds = %89, %27
  %30 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1187
  %31 = icmp ne %struct._GSList* %30, null, !dbg !1190
  br i1 %31, label %32, label %93, !dbg !1191

; <label>:32:                                     ; preds = %29
  call void @llvm.dbg.declare(metadata %struct._SERVER_SETUP_REC** %4, metadata !1192, metadata !425), !dbg !1229
  %33 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1230
  %34 = getelementptr inbounds %struct._GSList, %struct._GSList* %33, i32 0, i32 0, !dbg !1231
  %35 = load i8*, i8** %34, align 8, !dbg !1231
  %36 = bitcast i8* %35 to %struct._SERVER_SETUP_REC*, !dbg !1230
  store %struct._SERVER_SETUP_REC* %36, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !1229
  %37 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !1232
  %38 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %37, i32 0, i32 21, !dbg !1234
  %39 = load i8, i8* %38, align 8, !dbg !1234
  %40 = and i8 %39, 1, !dbg !1234
  %41 = zext i8 %40 to i32, !dbg !1234
  %42 = icmp ne i32 %41, 0, !dbg !1232
  br i1 %42, label %43, label %88, !dbg !1235

; <label>:43:                                     ; preds = %32
  %44 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !1236
  %45 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %44, i32 0, i32 2, !dbg !1237
  %46 = load i8*, i8** %45, align 8, !dbg !1237
  %47 = icmp eq i8* %46, null, !dbg !1238
  br i1 %47, label %55, label %48, !dbg !1239

; <label>:48:                                     ; preds = %43
  %49 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !1240
  %50 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !1241
  %51 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %50, i32 0, i32 2, !dbg !1242
  %52 = load i8*, i8** %51, align 8, !dbg !1242
  %53 = call %struct._GSList* @gslist_find_icase_string(%struct._GSList* %49, i8* %52), !dbg !1243
  %54 = icmp eq %struct._GSList* %53, null, !dbg !1244
  br i1 %54, label %55, label %88, !dbg !1245

; <label>:55:                                     ; preds = %48, %43
  %56 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !1247
  %57 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %56, i32 0, i32 2, !dbg !1250
  %58 = load i8*, i8** %57, align 8, !dbg !1250
  %59 = icmp ne i8* %58, null, !dbg !1251
  br i1 %59, label %60, label %76, !dbg !1252

; <label>:60:                                     ; preds = %55
  %61 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !1253
  %62 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !1255
  %63 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %62, i32 0, i32 2, !dbg !1256
  %64 = load i8*, i8** %63, align 8, !dbg !1256
  %65 = call %struct._GSList* @g_slist_append(%struct._GSList* %61, i8* %64), !dbg !1257
  store %struct._GSList* %65, %struct._GSList** %2, align 8, !dbg !1258
  %66 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !1259
  %67 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %66, i32 0, i32 2, !dbg !1260
  %68 = load i8*, i8** %67, align 8, !dbg !1260
  %69 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !1261
  %70 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %69, i32 0, i32 4, !dbg !1262
  %71 = load i8*, i8** %70, align 8, !dbg !1262
  %72 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !1263
  %73 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %72, i32 0, i32 5, !dbg !1264
  %74 = load i32, i32* %73, align 8, !dbg !1264
  %75 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i32 0, i32 0), i8* %68, i8* %71, i32 %74), !dbg !1265
  store i8* %75, i8** %3, align 8, !dbg !1266
  br label %84, !dbg !1267

; <label>:76:                                     ; preds = %55
  %77 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !1268
  %78 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %77, i32 0, i32 4, !dbg !1270
  %79 = load i8*, i8** %78, align 8, !dbg !1270
  %80 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !1271
  %81 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %80, i32 0, i32 5, !dbg !1272
  %82 = load i32, i32* %81, align 8, !dbg !1272
  %83 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0), i8* %79, i32 %82), !dbg !1273
  store i8* %83, i8** %3, align 8, !dbg !1274
  br label %84

; <label>:84:                                     ; preds = %76, %60
  %85 = load i8*, i8** %3, align 8, !dbg !1275
  %86 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.61, i32 0, i32 0), i32 1, i8* %85), !dbg !1276
  %87 = load i8*, i8** %3, align 8, !dbg !1277
  call void @g_free(i8* %87), !dbg !1278
  br label %88, !dbg !1279

; <label>:88:                                     ; preds = %84, %48, %32
  br label %89, !dbg !1280

; <label>:89:                                     ; preds = %88
  %90 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1281
  %91 = getelementptr inbounds %struct._GSList, %struct._GSList* %90, i32 0, i32 1, !dbg !1283
  %92 = load %struct._GSList*, %struct._GSList** %91, align 8, !dbg !1283
  store %struct._GSList* %92, %struct._GSList** %1, align 8, !dbg !1284
  br label %29, !dbg !1285, !llvm.loop !1286

; <label>:93:                                     ; preds = %29
  %94 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !1288
  call void @g_slist_free(%struct._GSList* %94), !dbg !1289
  br label %95, !dbg !1290

; <label>:95:                                     ; preds = %93, %26, %19
  ret void, !dbg !1291
}

; Function Attrs: nounwind uwtable
define i32 @strarray_find_dest(i8**, %struct._TEXT_DEST_REC*) #0 !dbg !1293 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct._TEXT_DEST_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !1358, metadata !425), !dbg !1359
  store %struct._TEXT_DEST_REC* %1, %struct._TEXT_DEST_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC** %5, metadata !1360, metadata !425), !dbg !1361
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !1362, metadata !425), !dbg !1363
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1364, metadata !425), !dbg !1365
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1366, metadata !425), !dbg !1367
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1368, metadata !425), !dbg !1369
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !1370, metadata !425), !dbg !1371
  %12 = call i32 @module_get_uniq_id_str(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0)), !dbg !1372
  store i32 %12, i32* %8, align 4, !dbg !1373
  %13 = call i32 @module_get_uniq_id_str(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0)), !dbg !1374
  store i32 %13, i32* %9, align 4, !dbg !1375
  br label %14, !dbg !1376, !llvm.loop !1377

; <label>:14:                                     ; preds = %2
  %15 = load i8**, i8*** %4, align 8, !dbg !1378
  %16 = icmp ne i8** %15, null, !dbg !1382
  br i1 %16, label %17, label %18, !dbg !1378

; <label>:17:                                     ; preds = %14
  br label %19, !dbg !1383

; <label>:18:                                     ; preds = %14
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.strarray_find_dest, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i32 0, i32 0)), !dbg !1386
  store i32 0, i32* %3, align 4, !dbg !1389
  br label %168, !dbg !1389

; <label>:19:                                     ; preds = %17
  br label %20, !dbg !1390

; <label>:20:                                     ; preds = %19
  br label %21, !dbg !1392, !llvm.loop !1393

; <label>:21:                                     ; preds = %20
  %22 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %5, align 8, !dbg !1394
  %23 = icmp ne %struct._TEXT_DEST_REC* %22, null, !dbg !1398
  br i1 %23, label %24, label %25, !dbg !1394

; <label>:24:                                     ; preds = %21
  br label %26, !dbg !1399

; <label>:25:                                     ; preds = %21
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.strarray_find_dest, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i32 0, i32 0)), !dbg !1402
  store i32 0, i32* %3, align 4, !dbg !1405
  br label %168, !dbg !1405

; <label>:26:                                     ; preds = %24
  br label %27, !dbg !1406

; <label>:27:                                     ; preds = %26
  br label %28, !dbg !1408, !llvm.loop !1409

; <label>:28:                                     ; preds = %27
  %29 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %5, align 8, !dbg !1410
  %30 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %29, i32 0, i32 0, !dbg !1414
  %31 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %30, align 8, !dbg !1414
  %32 = icmp ne %struct._WINDOW_REC* %31, null, !dbg !1415
  br i1 %32, label %33, label %34, !dbg !1410

; <label>:33:                                     ; preds = %28
  br label %35, !dbg !1416

; <label>:34:                                     ; preds = %28
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.strarray_find_dest, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.49, i32 0, i32 0)), !dbg !1419
  store i32 0, i32* %3, align 4, !dbg !1422
  br label %168, !dbg !1422

; <label>:35:                                     ; preds = %33
  br label %36, !dbg !1423

; <label>:36:                                     ; preds = %35
  br label %37, !dbg !1425, !llvm.loop !1426

; <label>:37:                                     ; preds = %36
  %38 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %5, align 8, !dbg !1427
  %39 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %38, i32 0, i32 3, !dbg !1431
  %40 = load i8*, i8** %39, align 8, !dbg !1431
  %41 = icmp ne i8* %40, null, !dbg !1432
  br i1 %41, label %42, label %43, !dbg !1427

; <label>:42:                                     ; preds = %37
  br label %44, !dbg !1433

; <label>:43:                                     ; preds = %37
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.strarray_find_dest, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.50, i32 0, i32 0)), !dbg !1436
  store i32 0, i32* %3, align 4, !dbg !1439
  br label %168, !dbg !1439

; <label>:44:                                     ; preds = %42
  br label %45, !dbg !1440

; <label>:45:                                     ; preds = %44
  %46 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %5, align 8, !dbg !1442
  %47 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %46, i32 0, i32 0, !dbg !1443
  %48 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %47, align 8, !dbg !1443
  %49 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %5, align 8, !dbg !1444
  %50 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %49, i32 0, i32 1, !dbg !1445
  %51 = load %struct._SERVER_REC*, %struct._SERVER_REC** %50, align 8, !dbg !1445
  %52 = bitcast %struct._SERVER_REC* %51 to i8*, !dbg !1444
  %53 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %5, align 8, !dbg !1446
  %54 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %53, i32 0, i32 3, !dbg !1447
  %55 = load i8*, i8** %54, align 8, !dbg !1447
  %56 = call %struct._WI_ITEM_REC* @window_item_find_window(%struct._WINDOW_REC* %48, i8* %52, i8* %55), !dbg !1448
  store %struct._WI_ITEM_REC* %56, %struct._WI_ITEM_REC** %6, align 8, !dbg !1449
  %57 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1450
  %58 = icmp eq %struct._WI_ITEM_REC* %57, null, !dbg !1452
  br i1 %58, label %59, label %60, !dbg !1453

; <label>:59:                                     ; preds = %45
  store i32 0, i32* %3, align 4, !dbg !1454
  br label %168, !dbg !1454

; <label>:60:                                     ; preds = %45
  %61 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %5, align 8, !dbg !1456
  %62 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %61, i32 0, i32 2, !dbg !1457
  %63 = load i8*, i8** %62, align 8, !dbg !1457
  %64 = icmp ne i8* %63, null, !dbg !1458
  br i1 %64, label %65, label %70, !dbg !1456

; <label>:65:                                     ; preds = %60
  %66 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %5, align 8, !dbg !1459
  %67 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %66, i32 0, i32 2, !dbg !1461
  %68 = load i8*, i8** %67, align 8, !dbg !1461
  %69 = call i64 @strlen(i8* %68) #6, !dbg !1462
  br label %71, !dbg !1463

; <label>:70:                                     ; preds = %60
  br label %71, !dbg !1464

; <label>:71:                                     ; preds = %70, %65
  %72 = phi i64 [ %69, %65 ], [ 0, %70 ], !dbg !1466
  %73 = trunc i64 %72 to i32, !dbg !1466
  store i32 %73, i32* %7, align 4, !dbg !1468
  %74 = load i8**, i8*** %4, align 8, !dbg !1469
  store i8** %74, i8*** %10, align 8, !dbg !1471
  br label %75, !dbg !1472

; <label>:75:                                     ; preds = %164, %71
  %76 = load i8**, i8*** %10, align 8, !dbg !1473
  %77 = load i8*, i8** %76, align 8, !dbg !1476
  %78 = icmp ne i8* %77, null, !dbg !1477
  br i1 %78, label %79, label %167, !dbg !1478

; <label>:79:                                     ; preds = %75
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1479, metadata !425), !dbg !1481
  %80 = load i8**, i8*** %10, align 8, !dbg !1482
  %81 = load i8*, i8** %80, align 8, !dbg !1483
  store i8* %81, i8** %11, align 8, !dbg !1481
  %82 = load i8*, i8** %11, align 8, !dbg !1484
  %83 = load i8, i8* %82, align 1, !dbg !1486
  %84 = sext i8 %83 to i32, !dbg !1486
  %85 = icmp eq i32 %84, 0, !dbg !1487
  br i1 %85, label %86, label %87, !dbg !1488

; <label>:86:                                     ; preds = %79
  br label %164, !dbg !1489

; <label>:87:                                     ; preds = %79
  %88 = load i32, i32* %7, align 4, !dbg !1491
  %89 = icmp ne i32 %88, 0, !dbg !1491
  br i1 %89, label %90, label %113, !dbg !1493

; <label>:90:                                     ; preds = %87
  %91 = load i8*, i8** %11, align 8, !dbg !1494
  %92 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %5, align 8, !dbg !1495
  %93 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %92, i32 0, i32 2, !dbg !1496
  %94 = load i8*, i8** %93, align 8, !dbg !1496
  %95 = load i32, i32* %7, align 4, !dbg !1497
  %96 = sext i32 %95 to i64, !dbg !1497
  %97 = call i32 @g_ascii_strncasecmp(i8* %91, i8* %94, i64 %96), !dbg !1498
  %98 = icmp eq i32 %97, 0, !dbg !1499
  br i1 %98, label %99, label %113, !dbg !1500

; <label>:99:                                     ; preds = %90
  %100 = load i32, i32* %7, align 4, !dbg !1501
  %101 = sext i32 %100 to i64, !dbg !1502
  %102 = load i8*, i8** %11, align 8, !dbg !1502
  %103 = getelementptr inbounds i8, i8* %102, i64 %101, !dbg !1502
  %104 = load i8, i8* %103, align 1, !dbg !1502
  %105 = sext i8 %104 to i32, !dbg !1502
  %106 = icmp eq i32 %105, 47, !dbg !1503
  br i1 %106, label %107, label %113, !dbg !1504

; <label>:107:                                    ; preds = %99
  %108 = load i32, i32* %7, align 4, !dbg !1506
  %109 = add nsw i32 %108, 1, !dbg !1508
  %110 = load i8*, i8** %11, align 8, !dbg !1509
  %111 = sext i32 %109 to i64, !dbg !1509
  %112 = getelementptr inbounds i8, i8* %110, i64 %111, !dbg !1509
  store i8* %112, i8** %11, align 8, !dbg !1509
  br label %113, !dbg !1510

; <label>:113:                                    ; preds = %107, %99, %90, %87
  %114 = load i8*, i8** %11, align 8, !dbg !1511
  %115 = call i32 @g_strcmp0(i8* %114, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i32 0, i32 0)), !dbg !1513
  %116 = icmp eq i32 %115, 0, !dbg !1514
  br i1 %116, label %121, label %117, !dbg !1515

; <label>:117:                                    ; preds = %113
  %118 = load i8*, i8** %11, align 8, !dbg !1516
  %119 = call i32 @g_strcmp0(i8* %118, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i32 0, i32 0)), !dbg !1518
  %120 = icmp eq i32 %119, 0, !dbg !1519
  br i1 %120, label %121, label %122, !dbg !1520

; <label>:121:                                    ; preds = %117, %113
  store i32 1, i32* %3, align 4, !dbg !1521
  br label %168, !dbg !1521

; <label>:122:                                    ; preds = %117
  %123 = load i8*, i8** %11, align 8, !dbg !1523
  %124 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %5, align 8, !dbg !1525
  %125 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %124, i32 0, i32 3, !dbg !1526
  %126 = load i8*, i8** %125, align 8, !dbg !1526
  %127 = call i32 @g_ascii_strcasecmp(i8* %123, i8* %126), !dbg !1527
  %128 = icmp eq i32 %127, 0, !dbg !1528
  br i1 %128, label %129, label %130, !dbg !1529

; <label>:129:                                    ; preds = %122
  store i32 1, i32* %3, align 4, !dbg !1530
  br label %168, !dbg !1530

; <label>:130:                                    ; preds = %122
  %131 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1532
  %132 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %131, i32 0, i32 0, !dbg !1534
  %133 = load i32, i32* %132, align 8, !dbg !1534
  %134 = load i32, i32* %9, align 4, !dbg !1535
  %135 = icmp eq i32 %133, %134, !dbg !1536
  br i1 %135, label %136, label %149, !dbg !1537

; <label>:136:                                    ; preds = %130
  %137 = load i8*, i8** %11, align 8, !dbg !1538
  %138 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %5, align 8, !dbg !1539
  %139 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %138, i32 0, i32 3, !dbg !1540
  %140 = load i8*, i8** %139, align 8, !dbg !1540
  %141 = getelementptr inbounds i8, i8* %140, i64 0, !dbg !1539
  %142 = load i8, i8* %141, align 1, !dbg !1539
  %143 = sext i8 %142 to i32, !dbg !1539
  %144 = icmp eq i32 %143, 61, !dbg !1541
  %145 = select i1 %144, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i32 0, i32 0), !dbg !1539
  %146 = call i32 @g_strcmp0(i8* %137, i8* %145), !dbg !1542
  %147 = icmp eq i32 %146, 0, !dbg !1543
  br i1 %147, label %148, label %149, !dbg !1544

; <label>:148:                                    ; preds = %136
  store i32 1, i32* %3, align 4, !dbg !1546
  br label %168, !dbg !1546

; <label>:149:                                    ; preds = %136, %130
  %150 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1548
  %151 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %150, i32 0, i32 0, !dbg !1550
  %152 = load i32, i32* %151, align 8, !dbg !1550
  %153 = load i32, i32* %8, align 4, !dbg !1551
  %154 = icmp eq i32 %152, %153, !dbg !1552
  br i1 %154, label %155, label %160, !dbg !1553

; <label>:155:                                    ; preds = %149
  %156 = load i8*, i8** %11, align 8, !dbg !1554
  %157 = call i32 @g_strcmp0(i8* %156, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i32 0, i32 0)), !dbg !1555
  %158 = icmp eq i32 %157, 0, !dbg !1556
  br i1 %158, label %159, label %160, !dbg !1557

; <label>:159:                                    ; preds = %155
  store i32 1, i32* %3, align 4, !dbg !1559
  br label %168, !dbg !1559

; <label>:160:                                    ; preds = %155, %149
  br label %161

; <label>:161:                                    ; preds = %160
  br label %162

; <label>:162:                                    ; preds = %161
  br label %163

; <label>:163:                                    ; preds = %162
  br label %164, !dbg !1561

; <label>:164:                                    ; preds = %163, %86
  %165 = load i8**, i8*** %10, align 8, !dbg !1562
  %166 = getelementptr inbounds i8*, i8** %165, i32 1, !dbg !1562
  store i8** %166, i8*** %10, align 8, !dbg !1562
  br label %75, !dbg !1564, !llvm.loop !1565

; <label>:167:                                    ; preds = %75
  store i32 0, i32* %3, align 4, !dbg !1567
  br label %168, !dbg !1567

; <label>:168:                                    ; preds = %167, %159, %148, %129, %121, %59, %43, %34, %25, %18
  %169 = load i32, i32* %3, align 4, !dbg !1568
  ret i32 %169, !dbg !1568
}

declare i32 @module_get_uniq_id_str(i8*, i8*) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare %struct._WI_ITEM_REC* @window_item_find_window(%struct._WINDOW_REC*, i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i32 @g_ascii_strncasecmp(i8*, i8*, i64) #1

declare i32 @g_strcmp0(i8*, i8*) #1

declare i32 @g_ascii_strcasecmp(i8*, i8*) #1

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #1

declare void @g_free(i8*) #1

declare i32 @g_hash_table_remove(%struct._GHashTable*, i8*) #1

declare i32 @settings_get_bool(i8*) #1

declare void @windows_layout_restore() #1

; Function Attrs: nounwind uwtable
define internal void @create_windows() #0 !dbg !1569 {
  %1 = alloca %struct._WINDOW_REC*, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %1, metadata !1570, metadata !425), !dbg !1571
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1572, metadata !425), !dbg !1573
  %3 = call i32 @settings_get_bool(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i32 0, i32 0)), !dbg !1574
  store i32 %3, i32* %2, align 4, !dbg !1573
  %4 = call %struct._WINDOW_REC* @window_find_name(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0)), !dbg !1575
  store %struct._WINDOW_REC* %4, %struct._WINDOW_REC** %1, align 8, !dbg !1576
  %5 = load i32, i32* %2, align 4, !dbg !1577
  %6 = icmp ne i32 %5, 0, !dbg !1577
  br i1 %6, label %7, label %21, !dbg !1579

; <label>:7:                                      ; preds = %0
  %8 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %1, align 8, !dbg !1580
  %9 = icmp eq %struct._WINDOW_REC* %8, null, !dbg !1583
  br i1 %9, label %10, label %20, !dbg !1584

; <label>:10:                                     ; preds = %7
  %11 = call %struct._WINDOW_REC* @window_create(%struct._WI_ITEM_REC* null, i32 1), !dbg !1585
  store %struct._WINDOW_REC* %11, %struct._WINDOW_REC** %1, align 8, !dbg !1587
  %12 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %1, align 8, !dbg !1588
  call void @window_set_refnum(%struct._WINDOW_REC* %12, i32 1), !dbg !1589
  %13 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %1, align 8, !dbg !1590
  call void @window_set_name(%struct._WINDOW_REC* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0)), !dbg !1591
  %14 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %1, align 8, !dbg !1592
  %15 = call i32 @settings_get_bool(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i32 0, i32 0)), !dbg !1593
  %16 = icmp ne i32 %15, 0, !dbg !1593
  %17 = select i1 %16, i32 131138, i32 0, !dbg !1593
  %18 = xor i32 4194303, %17, !dbg !1594
  call void @window_set_level(%struct._WINDOW_REC* %14, i32 %18), !dbg !1595
  %19 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %1, align 8, !dbg !1596
  call void @window_set_immortal(%struct._WINDOW_REC* %19, i32 1), !dbg !1597
  br label %20, !dbg !1598

; <label>:20:                                     ; preds = %10, %7
  br label %29, !dbg !1599

; <label>:21:                                     ; preds = %0
  %22 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %1, align 8, !dbg !1600
  %23 = icmp ne %struct._WINDOW_REC* %22, null, !dbg !1603
  br i1 %23, label %24, label %28, !dbg !1604

; <label>:24:                                     ; preds = %21
  %25 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %1, align 8, !dbg !1605
  call void @window_set_name(%struct._WINDOW_REC* %25, i8* null), !dbg !1607
  %26 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %1, align 8, !dbg !1608
  call void @window_set_level(%struct._WINDOW_REC* %26, i32 0), !dbg !1609
  %27 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %1, align 8, !dbg !1610
  call void @window_set_immortal(%struct._WINDOW_REC* %27, i32 0), !dbg !1611
  br label %28, !dbg !1612

; <label>:28:                                     ; preds = %24, %21
  br label %29

; <label>:29:                                     ; preds = %28, %20
  %30 = call %struct._WINDOW_REC* @window_find_name(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0)), !dbg !1613
  store %struct._WINDOW_REC* %30, %struct._WINDOW_REC** %1, align 8, !dbg !1614
  %31 = call i32 @settings_get_bool(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i32 0, i32 0)), !dbg !1615
  %32 = icmp ne i32 %31, 0, !dbg !1615
  br i1 %32, label %33, label %46, !dbg !1617

; <label>:33:                                     ; preds = %29
  %34 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %1, align 8, !dbg !1618
  %35 = icmp eq %struct._WINDOW_REC* %34, null, !dbg !1621
  br i1 %35, label %36, label %45, !dbg !1622

; <label>:36:                                     ; preds = %33
  %37 = call %struct._WINDOW_REC* @window_create(%struct._WI_ITEM_REC* null, i32 1), !dbg !1623
  store %struct._WINDOW_REC* %37, %struct._WINDOW_REC** %1, align 8, !dbg !1625
  %38 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %1, align 8, !dbg !1626
  %39 = load i32, i32* %2, align 4, !dbg !1627
  %40 = icmp ne i32 %39, 0, !dbg !1627
  %41 = select i1 %40, i32 2, i32 1, !dbg !1627
  call void @window_set_refnum(%struct._WINDOW_REC* %38, i32 %41), !dbg !1628
  %42 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %1, align 8, !dbg !1629
  call void @window_set_name(%struct._WINDOW_REC* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0)), !dbg !1630
  %43 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %1, align 8, !dbg !1631
  call void @window_set_level(%struct._WINDOW_REC* %43, i32 131138), !dbg !1632
  %44 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %1, align 8, !dbg !1633
  call void @window_set_immortal(%struct._WINDOW_REC* %44, i32 1), !dbg !1634
  br label %45, !dbg !1635

; <label>:45:                                     ; preds = %36, %33
  br label %54, !dbg !1636

; <label>:46:                                     ; preds = %29
  %47 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %1, align 8, !dbg !1637
  %48 = icmp ne %struct._WINDOW_REC* %47, null, !dbg !1640
  br i1 %48, label %49, label %53, !dbg !1641

; <label>:49:                                     ; preds = %46
  %50 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %1, align 8, !dbg !1642
  call void @window_set_name(%struct._WINDOW_REC* %50, i8* null), !dbg !1644
  %51 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %1, align 8, !dbg !1645
  call void @window_set_level(%struct._WINDOW_REC* %51, i32 0), !dbg !1646
  %52 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %1, align 8, !dbg !1647
  call void @window_set_immortal(%struct._WINDOW_REC* %52, i32 0), !dbg !1648
  br label %53, !dbg !1649

; <label>:53:                                     ; preds = %49, %46
  br label %54

; <label>:54:                                     ; preds = %53, %45
  %55 = load %struct._GSList*, %struct._GSList** @windows, align 8, !dbg !1650
  %56 = icmp eq %struct._GSList* %55, null, !dbg !1652
  br i1 %56, label %57, label %59, !dbg !1653

; <label>:57:                                     ; preds = %54
  %58 = call %struct._WINDOW_REC* @window_create(%struct._WI_ITEM_REC* null, i32 1), !dbg !1654
  store %struct._WINDOW_REC* %58, %struct._WINDOW_REC** %1, align 8, !dbg !1656
  br label %59, !dbg !1657

; <label>:59:                                     ; preds = %57, %54
  ret void, !dbg !1658
}

declare %struct._WINDOW_REC* @window_find_name(i8*) #1

declare %struct._WINDOW_REC* @window_create(%struct._WI_ITEM_REC*, i32) #1

declare void @window_set_refnum(%struct._WINDOW_REC*, i32) #1

declare void @window_set_name(%struct._WINDOW_REC*, i8*) #1

declare void @window_set_level(%struct._WINDOW_REC*, i32) #1

declare void @window_set_immortal(%struct._WINDOW_REC*, i32) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare i8* @get_irssi_dir() #1

declare %struct._GIOChannel* @g_io_channel_new_file(i8*, i8*, %struct._GError**) #1

declare i32 @g_io_channel_set_encoding(%struct._GIOChannel*, i8*, %struct._GError**) #1

declare %struct._GString* @g_string_sized_new(i64) #1

declare i32 @g_io_channel_read_line_string(%struct._GIOChannel*, %struct._GString*, i64*, %struct._GError**) #1

declare void @eval_special_string(i8*, i8*, %struct._SERVER_REC*, i8*) #1

declare i8* @g_string_free(%struct._GString*, i32) #1

declare void @g_io_channel_unref(%struct._GIOChannel*) #1

declare %struct._GSList* @gslist_find_icase_string(%struct._GSList*, i8*) #1

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #1

declare void @g_slist_free(%struct._GSList*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!412, !413}
!llvm.ident = !{!414}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !332, globals: !379)
!1 = !DIFile(filename: "line218-fe-common-core.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !15, !27, !58, !300, !307, !312, !321}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 118, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/glib-2.0/glib/goption.h", directory: "/home/lichi/Desktop/irssi/task1")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14}
!6 = !DIEnumerator(name: "G_OPTION_ARG_NONE", value: 0)
!7 = !DIEnumerator(name: "G_OPTION_ARG_STRING", value: 1)
!8 = !DIEnumerator(name: "G_OPTION_ARG_INT", value: 2)
!9 = !DIEnumerator(name: "G_OPTION_ARG_CALLBACK", value: 3)
!10 = !DIEnumerator(name: "G_OPTION_ARG_FILENAME", value: 4)
!11 = !DIEnumerator(name: "G_OPTION_ARG_STRING_ARRAY", value: 5)
!12 = !DIEnumerator(name: "G_OPTION_ARG_FILENAME_ARRAY", value: 6)
!13 = !DIEnumerator(name: "G_OPTION_ARG_DOUBLE", value: 7)
!14 = !DIEnumerator(name: "G_OPTION_ARG_INT64", value: 8)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 51, size: 32, align: 32, elements: !17)
!16 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/irssi/task1")
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25, !26}
!18 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!19 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!20 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!21 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!22 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!23 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!24 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!25 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!26 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !28, line: 10, size: 32, align: 32, elements: !29)
!28 = !DIFile(filename: "../../../src/core/levels.h", directory: "/home/lichi/Desktop/irssi/task1")
!29 = !{!30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57}
!30 = !DIEnumerator(name: "MSGLEVEL_CRAP", value: 1)
!31 = !DIEnumerator(name: "MSGLEVEL_MSGS", value: 2)
!32 = !DIEnumerator(name: "MSGLEVEL_PUBLIC", value: 4)
!33 = !DIEnumerator(name: "MSGLEVEL_NOTICES", value: 8)
!34 = !DIEnumerator(name: "MSGLEVEL_SNOTES", value: 16)
!35 = !DIEnumerator(name: "MSGLEVEL_CTCPS", value: 32)
!36 = !DIEnumerator(name: "MSGLEVEL_ACTIONS", value: 64)
!37 = !DIEnumerator(name: "MSGLEVEL_JOINS", value: 128)
!38 = !DIEnumerator(name: "MSGLEVEL_PARTS", value: 256)
!39 = !DIEnumerator(name: "MSGLEVEL_QUITS", value: 512)
!40 = !DIEnumerator(name: "MSGLEVEL_KICKS", value: 1024)
!41 = !DIEnumerator(name: "MSGLEVEL_MODES", value: 2048)
!42 = !DIEnumerator(name: "MSGLEVEL_TOPICS", value: 4096)
!43 = !DIEnumerator(name: "MSGLEVEL_WALLOPS", value: 8192)
!44 = !DIEnumerator(name: "MSGLEVEL_INVITES", value: 16384)
!45 = !DIEnumerator(name: "MSGLEVEL_NICKS", value: 32768)
!46 = !DIEnumerator(name: "MSGLEVEL_DCC", value: 65536)
!47 = !DIEnumerator(name: "MSGLEVEL_DCCMSGS", value: 131072)
!48 = !DIEnumerator(name: "MSGLEVEL_CLIENTNOTICE", value: 262144)
!49 = !DIEnumerator(name: "MSGLEVEL_CLIENTCRAP", value: 524288)
!50 = !DIEnumerator(name: "MSGLEVEL_CLIENTERROR", value: 1048576)
!51 = !DIEnumerator(name: "MSGLEVEL_HILIGHT", value: 2097152)
!52 = !DIEnumerator(name: "MSGLEVEL_ALL", value: 4194303)
!53 = !DIEnumerator(name: "MSGLEVEL_NOHILIGHT", value: 16777216)
!54 = !DIEnumerator(name: "MSGLEVEL_NO_ACT", value: 33554432)
!55 = !DIEnumerator(name: "MSGLEVEL_NEVER", value: 67108864)
!56 = !DIEnumerator(name: "MSGLEVEL_LASTLOG", value: 134217728)
!57 = !DIEnumerator(name: "MSGLEVEL_HIDDEN", value: 268435456)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !59, line: 3, size: 32, align: 32, elements: !60)
!59 = !DIFile(filename: "module-formats.h", directory: "/home/lichi/Desktop/irssi/task1")
!60 = !{!61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299}
!61 = !DIEnumerator(name: "TXT_MODULE_NAME", value: 0)
!62 = !DIEnumerator(name: "TXT_FILL_1", value: 1)
!63 = !DIEnumerator(name: "TXT_LINE_START", value: 2)
!64 = !DIEnumerator(name: "TXT_LINE_START_IRSSI", value: 3)
!65 = !DIEnumerator(name: "TXT_TIMESTAMP", value: 4)
!66 = !DIEnumerator(name: "TXT_SERVERTAG", value: 5)
!67 = !DIEnumerator(name: "TXT_DAYCHANGE", value: 6)
!68 = !DIEnumerator(name: "TXT_TALKING_WITH", value: 7)
!69 = !DIEnumerator(name: "TXT_REFNUM_TOO_LOW", value: 8)
!70 = !DIEnumerator(name: "TXT_ERROR_SERVER_STICKY", value: 9)
!71 = !DIEnumerator(name: "TXT_SET_SERVER_STICKY", value: 10)
!72 = !DIEnumerator(name: "TXT_UNSET_SERVER_STICKY", value: 11)
!73 = !DIEnumerator(name: "TXT_WINDOW_NAME_NOT_UNIQUE", value: 12)
!74 = !DIEnumerator(name: "TXT_WINDOW_LEVEL", value: 13)
!75 = !DIEnumerator(name: "TXT_WINDOW_SET_IMMORTAL", value: 14)
!76 = !DIEnumerator(name: "TXT_WINDOW_UNSET_IMMORTAL", value: 15)
!77 = !DIEnumerator(name: "TXT_WINDOW_IMMORTAL_ERROR", value: 16)
!78 = !DIEnumerator(name: "TXT_WINDOWLIST_HEADER", value: 17)
!79 = !DIEnumerator(name: "TXT_WINDOWLIST_LINE", value: 18)
!80 = !DIEnumerator(name: "TXT_WINDOWLIST_FOOTER", value: 19)
!81 = !DIEnumerator(name: "TXT_WINDOWS_LAYOUT_SAVED", value: 20)
!82 = !DIEnumerator(name: "TXT_WINDOWS_LAYOUT_RESET", value: 21)
!83 = !DIEnumerator(name: "TXT_WINDOW_INFO_HEADER", value: 22)
!84 = !DIEnumerator(name: "TXT_WINDOW_INFO_FOOTER", value: 23)
!85 = !DIEnumerator(name: "TXT_WINDOW_INFO_REFNUM", value: 24)
!86 = !DIEnumerator(name: "TXT_WINDOW_INFO_REFNUM_STICKY", value: 25)
!87 = !DIEnumerator(name: "TXT_WINDOW_INFO_NAME", value: 26)
!88 = !DIEnumerator(name: "TXT_WINDOW_INFO_HISTORY", value: 27)
!89 = !DIEnumerator(name: "TXT_WINDOW_INFO_IMMORTAL", value: 28)
!90 = !DIEnumerator(name: "TXT_WINDOW_INFO_SIZE", value: 29)
!91 = !DIEnumerator(name: "TXT_WINDOW_INFO_LEVEL", value: 30)
!92 = !DIEnumerator(name: "TXT_WINDOW_INFO_SERVER", value: 31)
!93 = !DIEnumerator(name: "TXT_WINDOW_INFO_SERVER_STICKY", value: 32)
!94 = !DIEnumerator(name: "TXT_WINDOW_INFO_THEME", value: 33)
!95 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEMS_HEADER", value: 34)
!96 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEM", value: 35)
!97 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEMS_FOOTER", value: 36)
!98 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEMS_HEADER", value: 37)
!99 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEM", value: 38)
!100 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEMS_FOOTER", value: 39)
!101 = !DIEnumerator(name: "TXT_FILL_2", value: 40)
!102 = !DIEnumerator(name: "TXT_LOOKING_UP", value: 41)
!103 = !DIEnumerator(name: "TXT_CONNECTING", value: 42)
!104 = !DIEnumerator(name: "TXT_RECONNECTING", value: 43)
!105 = !DIEnumerator(name: "TXT_CONNECTION_ESTABLISHED", value: 44)
!106 = !DIEnumerator(name: "TXT_CANT_CONNECT", value: 45)
!107 = !DIEnumerator(name: "TXT_CONNECTION_LOST", value: 46)
!108 = !DIEnumerator(name: "TXT_LAG_DISCONNECTED", value: 47)
!109 = !DIEnumerator(name: "TXT_DISCONNECTED", value: 48)
!110 = !DIEnumerator(name: "TXT_SERVER_QUIT", value: 49)
!111 = !DIEnumerator(name: "TXT_SERVER_CHANGED", value: 50)
!112 = !DIEnumerator(name: "TXT_UNKNOWN_SERVER_TAG", value: 51)
!113 = !DIEnumerator(name: "TXT_NO_CONNECTED_SERVERS", value: 52)
!114 = !DIEnumerator(name: "TXT_SERVER_LIST", value: 53)
!115 = !DIEnumerator(name: "TXT_SERVER_LOOKUP_LIST", value: 54)
!116 = !DIEnumerator(name: "TXT_SERVER_RECONNECT_LIST", value: 55)
!117 = !DIEnumerator(name: "TXT_RECONNECT_REMOVED", value: 56)
!118 = !DIEnumerator(name: "TXT_RECONNECT_NOT_FOUND", value: 57)
!119 = !DIEnumerator(name: "TXT_SETUPSERVER_ADDED", value: 58)
!120 = !DIEnumerator(name: "TXT_SETUPSERVER_REMOVED", value: 59)
!121 = !DIEnumerator(name: "TXT_SETUPSERVER_NOT_FOUND", value: 60)
!122 = !DIEnumerator(name: "TXT_YOUR_NICK", value: 61)
!123 = !DIEnumerator(name: "TXT_FILL_3", value: 62)
!124 = !DIEnumerator(name: "TXT_JOIN", value: 63)
!125 = !DIEnumerator(name: "TXT_PART", value: 64)
!126 = !DIEnumerator(name: "TXT_KICK", value: 65)
!127 = !DIEnumerator(name: "TXT_QUIT", value: 66)
!128 = !DIEnumerator(name: "TXT_QUIT_ONCE", value: 67)
!129 = !DIEnumerator(name: "TXT_INVITE", value: 68)
!130 = !DIEnumerator(name: "TXT_NOT_INVITED", value: 69)
!131 = !DIEnumerator(name: "TXT_NEW_TOPIC", value: 70)
!132 = !DIEnumerator(name: "TXT_TOPIC_UNSET", value: 71)
!133 = !DIEnumerator(name: "TXT_YOUR_NICK_CHANGED", value: 72)
!134 = !DIEnumerator(name: "TXT_NICK_CHANGED", value: 73)
!135 = !DIEnumerator(name: "TXT_TALKING_IN", value: 74)
!136 = !DIEnumerator(name: "TXT_NOT_IN_CHANNELS", value: 75)
!137 = !DIEnumerator(name: "TXT_CURRENT_CHANNEL", value: 76)
!138 = !DIEnumerator(name: "TXT_NAMES", value: 77)
!139 = !DIEnumerator(name: "TXT_NAMES_PREFIX", value: 78)
!140 = !DIEnumerator(name: "TXT_NAMES_NICK_OP", value: 79)
!141 = !DIEnumerator(name: "TXT_NAMES_NICK_HALFOP", value: 80)
!142 = !DIEnumerator(name: "TXT_NAMES_NICK_VOICE", value: 81)
!143 = !DIEnumerator(name: "TXT_NAMES_NICK", value: 82)
!144 = !DIEnumerator(name: "TXT_ENDOFNAMES", value: 83)
!145 = !DIEnumerator(name: "TXT_CHANLIST_HEADER", value: 84)
!146 = !DIEnumerator(name: "TXT_CHANLIST_LINE", value: 85)
!147 = !DIEnumerator(name: "TXT_CHANSETUP_NOT_FOUND", value: 86)
!148 = !DIEnumerator(name: "TXT_CHANSETUP_ADDED", value: 87)
!149 = !DIEnumerator(name: "TXT_CHANSETUP_REMOVED", value: 88)
!150 = !DIEnumerator(name: "TXT_CHANSETUP_HEADER", value: 89)
!151 = !DIEnumerator(name: "TXT_CHANSETUP_LINE", value: 90)
!152 = !DIEnumerator(name: "TXT_CHANSETUP_FOOTER", value: 91)
!153 = !DIEnumerator(name: "TXT_FILL_4", value: 92)
!154 = !DIEnumerator(name: "TXT_OWN_MSG", value: 93)
!155 = !DIEnumerator(name: "TXT_OWN_MSG_CHANNEL", value: 94)
!156 = !DIEnumerator(name: "TXT_OWN_MSG_PRIVATE", value: 95)
!157 = !DIEnumerator(name: "TXT_OWN_MSG_PRIVATE_QUERY", value: 96)
!158 = !DIEnumerator(name: "TXT_PUBMSG_ME", value: 97)
!159 = !DIEnumerator(name: "TXT_PUBMSG_ME_CHANNEL", value: 98)
!160 = !DIEnumerator(name: "TXT_PUBMSG_HILIGHT", value: 99)
!161 = !DIEnumerator(name: "TXT_PUBMSG_HILIGHT_CHANNEL", value: 100)
!162 = !DIEnumerator(name: "TXT_PUBMSG", value: 101)
!163 = !DIEnumerator(name: "TXT_PUBMSG_CHANNEL", value: 102)
!164 = !DIEnumerator(name: "TXT_MSG_PRIVATE", value: 103)
!165 = !DIEnumerator(name: "TXT_MSG_PRIVATE_QUERY", value: 104)
!166 = !DIEnumerator(name: "TXT_NO_MSGS_GOT", value: 105)
!167 = !DIEnumerator(name: "TXT_NO_MSGS_SENT", value: 106)
!168 = !DIEnumerator(name: "TXT_FILL_5", value: 107)
!169 = !DIEnumerator(name: "TXT_QUERY_START", value: 108)
!170 = !DIEnumerator(name: "TXT_QUERY_STOP", value: 109)
!171 = !DIEnumerator(name: "TXT_NO_QUERY", value: 110)
!172 = !DIEnumerator(name: "TXT_QUERY_SERVER_CHANGED", value: 111)
!173 = !DIEnumerator(name: "TXT_FILL_6", value: 112)
!174 = !DIEnumerator(name: "TXT_HILIGHT_HEADER", value: 113)
!175 = !DIEnumerator(name: "TXT_HILIGHT_LINE", value: 114)
!176 = !DIEnumerator(name: "TXT_HILIGHT_FOOTER", value: 115)
!177 = !DIEnumerator(name: "TXT_HILIGHT_NOT_FOUND", value: 116)
!178 = !DIEnumerator(name: "TXT_HILIGHT_REMOVED", value: 117)
!179 = !DIEnumerator(name: "TXT_FILL_7", value: 118)
!180 = !DIEnumerator(name: "TXT_ALIAS_ADDED", value: 119)
!181 = !DIEnumerator(name: "TXT_ALIAS_REMOVED", value: 120)
!182 = !DIEnumerator(name: "TXT_ALIAS_NOT_FOUND", value: 121)
!183 = !DIEnumerator(name: "TXT_ALIASLIST_HEADER", value: 122)
!184 = !DIEnumerator(name: "TXT_ALIASLIST_LINE", value: 123)
!185 = !DIEnumerator(name: "TXT_ALIASLIST_FOOTER", value: 124)
!186 = !DIEnumerator(name: "TXT_FILL_8", value: 125)
!187 = !DIEnumerator(name: "TXT_LOG_OPENED", value: 126)
!188 = !DIEnumerator(name: "TXT_LOG_CLOSED", value: 127)
!189 = !DIEnumerator(name: "TXT_LOG_CREATE_FAILED", value: 128)
!190 = !DIEnumerator(name: "TXT_LOG_LOCKED", value: 129)
!191 = !DIEnumerator(name: "TXT_LOG_NOT_OPEN", value: 130)
!192 = !DIEnumerator(name: "TXT_LOG_STARTED", value: 131)
!193 = !DIEnumerator(name: "TXT_LOG_STOPPED", value: 132)
!194 = !DIEnumerator(name: "TXT_LOG_LIST_HEADER", value: 133)
!195 = !DIEnumerator(name: "TXT_LOG_LIST", value: 134)
!196 = !DIEnumerator(name: "TXT_LOG_LIST_FOOTER", value: 135)
!197 = !DIEnumerator(name: "TXT_WINDOWLOG_FILE", value: 136)
!198 = !DIEnumerator(name: "TXT_WINDOWLOG_FILE_LOGGING", value: 137)
!199 = !DIEnumerator(name: "TXT_LOG_NO_AWAY_MSGS", value: 138)
!200 = !DIEnumerator(name: "TXT_LOG_AWAY_MSGS", value: 139)
!201 = !DIEnumerator(name: "TXT_FILL_9", value: 140)
!202 = !DIEnumerator(name: "TXT_MODULE_HEADER", value: 141)
!203 = !DIEnumerator(name: "TXT_MODULE_LINE", value: 142)
!204 = !DIEnumerator(name: "TXT_MODULE_FOOTER", value: 143)
!205 = !DIEnumerator(name: "TXT_MODULE_ALREADY_LOADED", value: 144)
!206 = !DIEnumerator(name: "TXT_MODULE_NOT_LOADED", value: 145)
!207 = !DIEnumerator(name: "TXT_MODULE_LOAD_ERROR", value: 146)
!208 = !DIEnumerator(name: "TXT_MODULE_VERSION_MISMATCH", value: 147)
!209 = !DIEnumerator(name: "TXT_MODULE_INVALID", value: 148)
!210 = !DIEnumerator(name: "TXT_MODULE_LOADED", value: 149)
!211 = !DIEnumerator(name: "TXT_MODULE_UNLOADED", value: 150)
!212 = !DIEnumerator(name: "TXT_FILL_10", value: 151)
!213 = !DIEnumerator(name: "TXT_COMMAND_UNKNOWN", value: 152)
!214 = !DIEnumerator(name: "TXT_COMMAND_AMBIGUOUS", value: 153)
!215 = !DIEnumerator(name: "TXT_OPTION_UNKNOWN", value: 154)
!216 = !DIEnumerator(name: "TXT_OPTION_AMBIGUOUS", value: 155)
!217 = !DIEnumerator(name: "TXT_OPTION_MISSING_ARG", value: 156)
!218 = !DIEnumerator(name: "TXT_NOT_ENOUGH_PARAMS", value: 157)
!219 = !DIEnumerator(name: "TXT_NOT_CONNECTED", value: 158)
!220 = !DIEnumerator(name: "TXT_NOT_JOINED", value: 159)
!221 = !DIEnumerator(name: "TXT_CHAN_NOT_FOUND", value: 160)
!222 = !DIEnumerator(name: "TXT_CHAN_NOT_SYNCED", value: 161)
!223 = !DIEnumerator(name: "TXT_ILLEGAL_PROTO", value: 162)
!224 = !DIEnumerator(name: "TXT_NOT_GOOD_IDEA", value: 163)
!225 = !DIEnumerator(name: "TXT_INVALID_NUMBER", value: 164)
!226 = !DIEnumerator(name: "TXT_INVALID_TIME", value: 165)
!227 = !DIEnumerator(name: "TXT_INVALID_LEVEL", value: 166)
!228 = !DIEnumerator(name: "TXT_INVALID_SIZE", value: 167)
!229 = !DIEnumerator(name: "TXT_INVALID_CHARSET", value: 168)
!230 = !DIEnumerator(name: "TXT_INVALID_CHOICE", value: 169)
!231 = !DIEnumerator(name: "TXT_EVAL_MAX_RECURSE", value: 170)
!232 = !DIEnumerator(name: "TXT_PROGRAM_NOT_FOUND", value: 171)
!233 = !DIEnumerator(name: "TXT_NO_SERVER_DEFINED", value: 172)
!234 = !DIEnumerator(name: "TXT_FILL_11", value: 173)
!235 = !DIEnumerator(name: "TXT_THEME_SAVED", value: 174)
!236 = !DIEnumerator(name: "TXT_THEME_SAVE_FAILED", value: 175)
!237 = !DIEnumerator(name: "TXT_THEME_NOT_FOUND", value: 176)
!238 = !DIEnumerator(name: "TXT_THEME_CHANGED", value: 177)
!239 = !DIEnumerator(name: "TXT_WINDOW_THEME", value: 178)
!240 = !DIEnumerator(name: "TXT_WINDOW_THEME_DEFAULT", value: 179)
!241 = !DIEnumerator(name: "TXT_WINDOW_THEME_CHANGED", value: 180)
!242 = !DIEnumerator(name: "TXT_WINDOW_THEME_REMOVED", value: 181)
!243 = !DIEnumerator(name: "TXT_FORMAT_TITLE", value: 182)
!244 = !DIEnumerator(name: "TXT_FORMAT_SUBTITLE", value: 183)
!245 = !DIEnumerator(name: "TXT_FORMAT_ITEM", value: 184)
!246 = !DIEnumerator(name: "TXT_FILL_12", value: 185)
!247 = !DIEnumerator(name: "TXT_IGNORED", value: 186)
!248 = !DIEnumerator(name: "TXT_IGNORED_OPTIONS", value: 187)
!249 = !DIEnumerator(name: "TXT_UNIGNORED", value: 188)
!250 = !DIEnumerator(name: "TXT_IGNORE_NOT_FOUND", value: 189)
!251 = !DIEnumerator(name: "TXT_IGNORE_NO_IGNORES", value: 190)
!252 = !DIEnumerator(name: "TXT_IGNORE_HEADER", value: 191)
!253 = !DIEnumerator(name: "TXT_IGNORE_LINE", value: 192)
!254 = !DIEnumerator(name: "TXT_IGNORE_FOOTER", value: 193)
!255 = !DIEnumerator(name: "TXT_FILL_13", value: 194)
!256 = !DIEnumerator(name: "TXT_NOT_CHANNEL_OR_QUERY", value: 195)
!257 = !DIEnumerator(name: "TXT_CONVERSION_ADDED", value: 196)
!258 = !DIEnumerator(name: "TXT_CONVERSION_REMOVED", value: 197)
!259 = !DIEnumerator(name: "TXT_CONVERSION_NOT_FOUND", value: 198)
!260 = !DIEnumerator(name: "TXT_CONVERSION_NO_TRANSLITS", value: 199)
!261 = !DIEnumerator(name: "TXT_RECODE_HEADER", value: 200)
!262 = !DIEnumerator(name: "TXT_RECODE_LINE", value: 201)
!263 = !DIEnumerator(name: "TXT_FILL_14", value: 202)
!264 = !DIEnumerator(name: "TXT_UNKNOWN_CHAT_PROTOCOL", value: 203)
!265 = !DIEnumerator(name: "TXT_UNKNOWN_CHATNET", value: 204)
!266 = !DIEnumerator(name: "TXT_NOT_TOGGLE", value: 205)
!267 = !DIEnumerator(name: "TXT_PERL_ERROR", value: 206)
!268 = !DIEnumerator(name: "TXT_BIND_HEADER", value: 207)
!269 = !DIEnumerator(name: "TXT_BIND_LIST", value: 208)
!270 = !DIEnumerator(name: "TXT_BIND_COMMAND_LIST", value: 209)
!271 = !DIEnumerator(name: "TXT_BIND_FOOTER", value: 210)
!272 = !DIEnumerator(name: "TXT_BIND_UNKNOWN_ID", value: 211)
!273 = !DIEnumerator(name: "TXT_CONFIG_SAVED", value: 212)
!274 = !DIEnumerator(name: "TXT_CONFIG_RELOADED", value: 213)
!275 = !DIEnumerator(name: "TXT_CONFIG_MODIFIED", value: 214)
!276 = !DIEnumerator(name: "TXT_GLIB_ERROR", value: 215)
!277 = !DIEnumerator(name: "TXT_OVERWRITE_CONFIG", value: 216)
!278 = !DIEnumerator(name: "TXT_SET_TITLE", value: 217)
!279 = !DIEnumerator(name: "TXT_SET_ITEM", value: 218)
!280 = !DIEnumerator(name: "TXT_SET_UNKNOWN", value: 219)
!281 = !DIEnumerator(name: "TXT_SET_NOT_BOOLEAN", value: 220)
!282 = !DIEnumerator(name: "TXT_NO_COMPLETIONS", value: 221)
!283 = !DIEnumerator(name: "TXT_COMPLETION_REMOVED", value: 222)
!284 = !DIEnumerator(name: "TXT_COMPLETION_HEADER", value: 223)
!285 = !DIEnumerator(name: "TXT_COMPLETION_LINE", value: 224)
!286 = !DIEnumerator(name: "TXT_COMPLETION_FOOTER", value: 225)
!287 = !DIEnumerator(name: "TXT_CAPSICUM_ENABLED", value: 226)
!288 = !DIEnumerator(name: "TXT_CAPSICUM_DISABLED", value: 227)
!289 = !DIEnumerator(name: "TXT_CAPSICUM_FAILED", value: 228)
!290 = !DIEnumerator(name: "TLS_FILL_15", value: 229)
!291 = !DIEnumerator(name: "TXT_TLS_EPHEMERAL_KEY", value: 230)
!292 = !DIEnumerator(name: "TXT_TLS_EPHEMERAL_KEY_UNAVAILBLE", value: 231)
!293 = !DIEnumerator(name: "TXT_TLS_PUBKEY", value: 232)
!294 = !DIEnumerator(name: "TXT_TLS_CERT_HEADER", value: 233)
!295 = !DIEnumerator(name: "TXT_TLS_CERT_SUBJECT", value: 234)
!296 = !DIEnumerator(name: "TXT_TLS_CERT_ISSUER", value: 235)
!297 = !DIEnumerator(name: "TXT_TLS_PUBKEY_FINGERPRINT", value: 236)
!298 = !DIEnumerator(name: "TXT_TLS_CERT_FINGERPRINT", value: 237)
!299 = !DIEnumerator(name: "TXT_TLS_PROTOCOL_VERSION", value: 238)
!300 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !301, line: 69, size: 32, align: 32, elements: !302)
!301 = !DIFile(filename: "/usr/include/glib-2.0/glib/giochannel.h", directory: "/home/lichi/Desktop/irssi/task1")
!302 = !{!303, !304, !305, !306}
!303 = !DIEnumerator(name: "G_IO_STATUS_ERROR", value: 0)
!304 = !DIEnumerator(name: "G_IO_STATUS_NORMAL", value: 1)
!305 = !DIEnumerator(name: "G_IO_STATUS_EOF", value: 2)
!306 = !DIEnumerator(name: "G_IO_STATUS_AGAIN", value: 3)
!307 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !301, line: 77, size: 32, align: 32, elements: !308)
!308 = !{!309, !310, !311}
!309 = !DIEnumerator(name: "G_SEEK_CUR", value: 0)
!310 = !DIEnumerator(name: "G_SEEK_SET", value: 1)
!311 = !DIEnumerator(name: "G_SEEK_END", value: 2)
!312 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !313, line: 31, size: 32, align: 32, elements: !314)
!313 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/irssi/task1")
!314 = !{!315, !316, !317, !318, !319, !320}
!315 = !DIEnumerator(name: "G_IO_IN", value: 1)
!316 = !DIEnumerator(name: "G_IO_OUT", value: 4)
!317 = !DIEnumerator(name: "G_IO_PRI", value: 2)
!318 = !DIEnumerator(name: "G_IO_ERR", value: 8)
!319 = !DIEnumerator(name: "G_IO_HUP", value: 16)
!320 = !DIEnumerator(name: "G_IO_NVAL", value: 32)
!321 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !301, line: 84, size: 32, align: 32, elements: !322)
!322 = !{!323, !324, !325, !326, !327, !328, !329, !330, !331}
!323 = !DIEnumerator(name: "G_IO_FLAG_APPEND", value: 1)
!324 = !DIEnumerator(name: "G_IO_FLAG_NONBLOCK", value: 2)
!325 = !DIEnumerator(name: "G_IO_FLAG_IS_READABLE", value: 4)
!326 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITABLE", value: 8)
!327 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITEABLE", value: 8)
!328 = !DIEnumerator(name: "G_IO_FLAG_IS_SEEKABLE", value: 16)
!329 = !DIEnumerator(name: "G_IO_FLAG_MASK", value: 31)
!330 = !DIEnumerator(name: "G_IO_FLAG_GET_MASK", value: 31)
!331 = !DIEnumerator(name: "G_IO_FLAG_SET_MASK", value: 3)
!332 = !{!333, !340, !341, !347, !358, !359, !361, !374}
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !334, line: 9, baseType: !335)
!334 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64, align: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !338, !338, !338, !338, !338, !338}
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64, align: 64)
!339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !342, line: 85, baseType: !343)
!342 = !DIFile(filename: "/usr/include/signal.h", directory: "/home/lichi/Desktop/irssi/task1")
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64, align: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !346}
!346 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "GLogFunc", file: !16, line: 71, baseType: !348)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64, align: 64)
!349 = !DISubroutineType(types: !350)
!350 = !{null, !351, !356, !351, !357}
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64, align: 64)
!352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !353)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !354, line: 46, baseType: !355)
!354 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!355 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "GLogLevelFlags", file: !16, line: 66, baseType: !15)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !354, line: 77, baseType: !340)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64, align: 64)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64, align: 64)
!360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !355)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64, align: 64)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "MODULE_SERVER_REC", file: !363, line: 29, baseType: !364)
!363 = !DIFile(filename: "module.h", directory: "/home/lichi/Desktop/irssi/task1")
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !363, line: 25, size: 64, align: 64, elements: !365)
!365 = !{!366}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "lastmsgs", scope: !364, file: !363, line: 27, baseType: !367, size: 64, align: 64)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64, align: 64)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !369, line: 37, baseType: !370)
!369 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !369, line: 39, size: 128, align: 64, elements: !371)
!371 = !{!372, !373}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !370, file: !369, line: 41, baseType: !357, size: 64, align: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !370, file: !369, line: 42, baseType: !367, size: 64, align: 64, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64, align: 64)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "MODULE_CHANNEL_REC", file: !363, line: 35, baseType: !376)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !363, line: 31, size: 64, align: 64, elements: !377)
!377 = !{!378}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "lastmsgs", scope: !376, file: !363, line: 33, baseType: !367, size: 64, align: 64)
!379 = !{!380, !401, !403, !404, !405, !406, !407, !408, !410, !411}
!380 = distinct !DIGlobalVariable(name: "options", scope: !381, file: !382, line: 129, type: !386, isLocal: true, isDefinition: true, variable: [7 x %struct._GOptionEntry]* @fe_common_core_register_options.options)
!381 = distinct !DISubprogram(name: "fe_common_core_register_options", scope: !382, file: !382, line: 127, type: !383, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !385)
!382 = !DIFile(filename: "fe-common-core.c", directory: "/home/lichi/Desktop/irssi/task1")
!383 = !DISubroutineType(types: !384)
!384 = !{null}
!385 = !{}
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 2688, align: 64, elements: !399)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "GOptionEntry", file: !4, line: 52, baseType: !388)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GOptionEntry", file: !4, line: 257, size: 384, align: 64, elements: !389)
!389 = !{!390, !391, !392, !394, !396, !397, !398}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "long_name", scope: !388, file: !4, line: 259, baseType: !351, size: 64, align: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "short_name", scope: !388, file: !4, line: 260, baseType: !353, size: 8, align: 8, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !388, file: !4, line: 261, baseType: !393, size: 32, align: 32, offset: 96)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !354, line: 49, baseType: !346)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !388, file: !4, line: 263, baseType: !395, size: 32, align: 32, offset: 128)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "GOptionArg", file: !4, line: 129, baseType: !3)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "arg_data", scope: !388, file: !4, line: 264, baseType: !357, size: 64, align: 64, offset: 192)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !388, file: !4, line: 266, baseType: !351, size: 64, align: 64, offset: 256)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "arg_description", scope: !388, file: !4, line: 267, baseType: !351, size: 64, align: 64, offset: 320)
!399 = !{!400}
!400 = !DISubrange(count: 7)
!401 = distinct !DIGlobalVariable(name: "autocon_server", scope: !0, file: !382, line: 54, type: !402, isLocal: true, isDefinition: true, variable: i8** @autocon_server)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64, align: 64)
!403 = distinct !DIGlobalVariable(name: "autocon_password", scope: !0, file: !382, line: 55, type: !402, isLocal: true, isDefinition: true, variable: i8** @autocon_password)
!404 = distinct !DIGlobalVariable(name: "autocon_port", scope: !0, file: !382, line: 56, type: !346, isLocal: true, isDefinition: true, variable: i32* @autocon_port)
!405 = distinct !DIGlobalVariable(name: "no_autoconnect", scope: !0, file: !382, line: 57, type: !346, isLocal: true, isDefinition: true, variable: i32* @no_autoconnect)
!406 = distinct !DIGlobalVariable(name: "cmdline_nick", scope: !0, file: !382, line: 58, type: !402, isLocal: true, isDefinition: true, variable: i8** @cmdline_nick)
!407 = distinct !DIGlobalVariable(name: "cmdline_hostname", scope: !0, file: !382, line: 59, type: !402, isLocal: true, isDefinition: true, variable: i8** @cmdline_hostname)
!408 = distinct !DIGlobalVariable(name: "firsttime", scope: !409, file: !382, line: 378, type: !346, isLocal: true, isDefinition: true, variable: i32* @sig_setup_changed.firsttime)
!409 = distinct !DISubprogram(name: "sig_setup_changed", scope: !382, file: !382, line: 376, type: !383, isLocal: true, isDefinition: true, scopeLine: 377, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !385)
!410 = distinct !DIGlobalVariable(name: "status_window", scope: !409, file: !382, line: 379, type: !346, isLocal: true, isDefinition: true, variable: i32* @sig_setup_changed.status_window)
!411 = distinct !DIGlobalVariable(name: "msgs_window", scope: !409, file: !382, line: 379, type: !346, isLocal: true, isDefinition: true, variable: i32* @sig_setup_changed.msgs_window)
!412 = !{i32 2, !"Dwarf Version", i32 4}
!413 = !{i32 2, !"Debug Info Version", i32 3}
!414 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!415 = !DILocation(line: 139, column: 17, scope: !381)
!416 = !DILocation(line: 140, column: 19, scope: !381)
!417 = !DILocation(line: 141, column: 15, scope: !381)
!418 = !DILocation(line: 142, column: 17, scope: !381)
!419 = !DILocation(line: 143, column: 15, scope: !381)
!420 = !DILocation(line: 144, column: 19, scope: !381)
!421 = !DILocation(line: 145, column: 2, scope: !381)
!422 = !DILocation(line: 146, column: 1, scope: !381)
!423 = distinct !DISubprogram(name: "fe_common_core_init", scope: !382, file: !382, line: 148, type: !383, isLocal: false, isDefinition: true, scopeLine: 149, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !385)
!424 = !DILocalVariable(name: "str", scope: !423, file: !382, line: 150, type: !359)
!425 = !DIExpression()
!426 = !DILocation(line: 150, column: 14, scope: !423)
!427 = !DILocation(line: 152, column: 2, scope: !423)
!428 = !DILocation(line: 153, column: 2, scope: !423)
!429 = !DILocation(line: 154, column: 2, scope: !423)
!430 = !DILocation(line: 156, column: 2, scope: !423)
!431 = !DILocation(line: 157, column: 2, scope: !423)
!432 = !DILocation(line: 158, column: 2, scope: !423)
!433 = !DILocation(line: 160, column: 2, scope: !423)
!434 = !DILocation(line: 161, column: 2, scope: !423)
!435 = !DILocation(line: 162, column: 2, scope: !423)
!436 = !DILocation(line: 164, column: 2, scope: !423)
!437 = !DILocation(line: 165, column: 2, scope: !423)
!438 = !DILocation(line: 166, column: 2, scope: !423)
!439 = !DILocation(line: 167, column: 75, scope: !423)
!440 = !DILocation(line: 167, column: 2, scope: !423)
!441 = !DILocation(line: 168, column: 2, scope: !423)
!442 = !DILocation(line: 169, column: 9, scope: !423)
!443 = !DILocation(line: 171, column: 2, scope: !423)
!444 = !DILocation(line: 172, column: 2, scope: !423)
!445 = !DILocation(line: 173, column: 2, scope: !423)
!446 = !DILocation(line: 174, column: 2, scope: !423)
!447 = !DILocation(line: 175, column: 2, scope: !423)
!448 = !DILocation(line: 176, column: 9, scope: !423)
!449 = !DILocation(line: 177, column: 9, scope: !423)
!450 = !DILocation(line: 178, column: 2, scope: !423)
!451 = !DILocation(line: 179, column: 2, scope: !423)
!452 = !DILocation(line: 180, column: 2, scope: !423)
!453 = !DILocation(line: 181, column: 2, scope: !423)
!454 = !DILocation(line: 182, column: 2, scope: !423)
!455 = !DILocation(line: 183, column: 2, scope: !423)
!456 = !DILocation(line: 184, column: 2, scope: !423)
!457 = !DILocation(line: 188, column: 2, scope: !423)
!458 = !DILocation(line: 189, column: 2, scope: !423)
!459 = !DILocation(line: 190, column: 2, scope: !423)
!460 = !DILocation(line: 191, column: 2, scope: !423)
!461 = !DILocation(line: 192, column: 2, scope: !423)
!462 = !DILocation(line: 193, column: 2, scope: !423)
!463 = !DILocation(line: 195, column: 9, scope: !423)
!464 = !DILocation(line: 196, column: 9, scope: !423)
!465 = !DILocation(line: 198, column: 2, scope: !423)
!466 = !DILocation(line: 199, column: 2, scope: !423)
!467 = !DILocation(line: 200, column: 2, scope: !423)
!468 = !DILocation(line: 201, column: 2, scope: !423)
!469 = !DILocation(line: 203, column: 2, scope: !423)
!470 = !DILocation(line: 205, column: 9, scope: !423)
!471 = !DILocation(line: 206, column: 9, scope: !423)
!472 = !DILocation(line: 207, column: 9, scope: !423)
!473 = !DILocation(line: 208, column: 9, scope: !423)
!474 = !DILocation(line: 210, column: 2, scope: !423)
!475 = !DILocation(line: 211, column: 1, scope: !423)
!476 = distinct !DISubprogram(name: "sig_connected", scope: !382, file: !382, line: 102, type: !477, isLocal: true, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !385)
!477 = !DISubroutineType(types: !478)
!478 = !{null, !479}
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64, align: 64)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !481, line: 107, baseType: !482)
!481 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !483, line: 30, size: 2240, align: 64, elements: !484)
!483 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!484 = !{!485, !487, !488, !489, !705, !710, !711, !712, !713, !714, !715, !716, !717, !718, !722, !723, !727, !728, !729, !733, !738, !739, !740, !741, !742, !743, !744, !745, !752, !753, !754, !755, !756, !760, !764, !768, !772, !776, !781, !852, !879, !883}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !482, file: !486, line: 3, baseType: !346, size: 32, align: 32)
!486 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!487 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !482, file: !486, line: 4, baseType: !346, size: 32, align: 32, offset: 32)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !482, file: !486, line: 6, baseType: !346, size: 32, align: 32, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !482, file: !486, line: 8, baseType: !490, size: 64, align: 64, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64, align: 64)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !481, line: 113, baseType: !492)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !483, line: 25, size: 1920, align: 64, elements: !493)
!493 = !{!494, !496, !497, !498, !499, !500, !501, !502, !503, !505, !506, !507, !508, !509, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !492, file: !495, line: 3, baseType: !346, size: 32, align: 32)
!495 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!496 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !492, file: !495, line: 4, baseType: !346, size: 32, align: 32, offset: 32)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !492, file: !495, line: 6, baseType: !346, size: 32, align: 32, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !492, file: !495, line: 9, baseType: !402, size: 64, align: 64, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !492, file: !495, line: 10, baseType: !346, size: 32, align: 32, offset: 192)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !492, file: !495, line: 11, baseType: !402, size: 64, align: 64, offset: 256)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !492, file: !495, line: 11, baseType: !402, size: 64, align: 64, offset: 320)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !492, file: !495, line: 11, baseType: !402, size: 64, align: 64, offset: 384)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !492, file: !495, line: 13, baseType: !504, size: 16, align: 16, offset: 448)
!504 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !492, file: !495, line: 14, baseType: !402, size: 64, align: 64, offset: 512)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !492, file: !495, line: 15, baseType: !402, size: 64, align: 64, offset: 576)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !492, file: !495, line: 16, baseType: !346, size: 32, align: 32, offset: 640)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !492, file: !495, line: 17, baseType: !402, size: 64, align: 64, offset: 704)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !492, file: !495, line: 19, baseType: !510, size: 64, align: 64, offset: 768)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64, align: 64)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !481, line: 99, baseType: !512)
!512 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !481, line: 99, flags: DIFlagFwdDecl)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !492, file: !495, line: 19, baseType: !510, size: 64, align: 64, offset: 832)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !492, file: !495, line: 21, baseType: !402, size: 64, align: 64, offset: 896)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !492, file: !495, line: 22, baseType: !402, size: 64, align: 64, offset: 960)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !492, file: !495, line: 23, baseType: !402, size: 64, align: 64, offset: 1024)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !492, file: !495, line: 24, baseType: !402, size: 64, align: 64, offset: 1088)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !492, file: !495, line: 26, baseType: !402, size: 64, align: 64, offset: 1152)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !492, file: !495, line: 27, baseType: !402, size: 64, align: 64, offset: 1216)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !492, file: !495, line: 28, baseType: !402, size: 64, align: 64, offset: 1280)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !492, file: !495, line: 29, baseType: !402, size: 64, align: 64, offset: 1344)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !492, file: !495, line: 30, baseType: !402, size: 64, align: 64, offset: 1408)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !492, file: !495, line: 31, baseType: !402, size: 64, align: 64, offset: 1472)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !492, file: !495, line: 32, baseType: !402, size: 64, align: 64, offset: 1536)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !492, file: !495, line: 33, baseType: !402, size: 64, align: 64, offset: 1600)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !492, file: !495, line: 35, baseType: !527, size: 64, align: 64, offset: 1664)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64, align: 64)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !301, line: 41, baseType: !529)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !301, line: 97, size: 896, align: 64, elements: !530)
!530 = !{!531, !532, !662, !663, !668, !669, !670, !671, !672, !681, !682, !683, !687, !688, !689, !690, !691, !692, !693, !694}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !529, file: !301, line: 100, baseType: !393, size: 32, align: 32)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !529, file: !301, line: 101, baseType: !533, size: 64, align: 64, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64, align: 64)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !301, line: 42, baseType: !535)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !301, line: 131, size: 512, align: 64, elements: !536)
!536 = !{!537, !559, !563, !570, !574, !649, !653, !658}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !535, file: !301, line: 133, baseType: !538, size: 64, align: 64)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64, align: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!541, !527, !358, !542, !545, !546}
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !301, line: 75, baseType: !300)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !543, line: 66, baseType: !544)
!543 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!544 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64, align: 64)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64, align: 64)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64, align: 64)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !549, line: 42, baseType: !550)
!549 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !549, line: 44, size: 128, align: 64, elements: !551)
!551 = !{!552, !557, !558}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !550, file: !549, line: 46, baseType: !553, size: 32, align: 32)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !554, line: 36, baseType: !555)
!554 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !543, line: 45, baseType: !556)
!556 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !550, file: !549, line: 47, baseType: !393, size: 32, align: 32, offset: 32)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !550, file: !549, line: 48, baseType: !358, size: 64, align: 64, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !535, file: !301, line: 138, baseType: !560, size: 64, align: 64, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64, align: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{!541, !527, !351, !542, !545, !546}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !535, file: !301, line: 143, baseType: !564, size: 64, align: 64, offset: 128)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64, align: 64)
!565 = !DISubroutineType(types: !566)
!566 = !{!541, !527, !567, !569, !546}
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !543, line: 51, baseType: !568)
!568 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !301, line: 82, baseType: !307)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !535, file: !301, line: 147, baseType: !571, size: 64, align: 64, offset: 192)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64, align: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!541, !527, !546}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !535, file: !301, line: 149, baseType: !575, size: 64, align: 64, offset: 256)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64, align: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{!578, !527, !648}
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64, align: 64)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !313, line: 64, baseType: !580)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !313, line: 171, size: 768, align: 64, elements: !581)
!581 = !{!582, !583, !604, !631, !633, !637, !638, !639, !640, !641, !642, !643, !644}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !580, file: !313, line: 174, baseType: !357, size: 64, align: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !580, file: !313, line: 175, baseType: !584, size: 64, align: 64, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64, align: 64)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !313, line: 77, baseType: !586)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !313, line: 196, size: 192, align: 64, elements: !587)
!587 = !{!588, !592, !593}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !586, file: !313, line: 198, baseType: !589, size: 64, align: 64)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64, align: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{null, !357}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !586, file: !313, line: 199, baseType: !589, size: 64, align: 64, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !586, file: !313, line: 200, baseType: !594, size: 64, align: 64, offset: 128)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64, align: 64)
!595 = !DISubroutineType(types: !596)
!596 = !{null, !357, !578, !597, !603}
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64, align: 64)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !313, line: 155, baseType: !599)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64, align: 64)
!600 = !DISubroutineType(types: !601)
!601 = !{!602, !357}
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !354, line: 50, baseType: !393)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64, align: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !580, file: !313, line: 177, baseType: !605, size: 64, align: 64, offset: 128)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64, align: 64)
!606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !607)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !313, line: 130, baseType: !608)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !313, line: 214, size: 384, align: 64, elements: !609)
!609 = !{!610, !615, !619, !623, !627, !628}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !608, file: !313, line: 216, baseType: !611, size: 64, align: 64)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64, align: 64)
!612 = !DISubroutineType(types: !613)
!613 = !{!602, !578, !614}
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64, align: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !608, file: !313, line: 218, baseType: !616, size: 64, align: 64, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64, align: 64)
!617 = !DISubroutineType(types: !618)
!618 = !{!602, !578}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !608, file: !313, line: 219, baseType: !620, size: 64, align: 64, offset: 128)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64, align: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!602, !578, !598, !357}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !608, file: !313, line: 222, baseType: !624, size: 64, align: 64, offset: 192)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64, align: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{null, !578}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !608, file: !313, line: 226, baseType: !598, size: 64, align: 64, offset: 256)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !608, file: !313, line: 227, baseType: !629, size: 64, align: 64, offset: 320)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !313, line: 212, baseType: !630)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64, align: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !580, file: !313, line: 178, baseType: !632, size: 32, align: 32, offset: 192)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !354, line: 55, baseType: !556)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !580, file: !313, line: 180, baseType: !634, size: 64, align: 64, offset: 256)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64, align: 64)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !313, line: 48, baseType: !636)
!636 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !313, line: 48, flags: DIFlagFwdDecl)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !580, file: !313, line: 182, baseType: !393, size: 32, align: 32, offset: 320)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !580, file: !313, line: 183, baseType: !632, size: 32, align: 32, offset: 352)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !580, file: !313, line: 184, baseType: !632, size: 32, align: 32, offset: 384)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !580, file: !313, line: 186, baseType: !367, size: 64, align: 64, offset: 448)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !580, file: !313, line: 188, baseType: !578, size: 64, align: 64, offset: 512)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !580, file: !313, line: 189, baseType: !578, size: 64, align: 64, offset: 576)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !580, file: !313, line: 191, baseType: !402, size: 64, align: 64, offset: 640)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !580, file: !313, line: 193, baseType: !645, size: 64, align: 64, offset: 704)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64, align: 64)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !313, line: 65, baseType: !647)
!647 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !313, line: 65, flags: DIFlagFwdDecl)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !313, line: 39, baseType: !312)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !535, file: !301, line: 151, baseType: !650, size: 64, align: 64, offset: 320)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64, align: 64)
!651 = !DISubroutineType(types: !652)
!652 = !{null, !527}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !535, file: !301, line: 152, baseType: !654, size: 64, align: 64, offset: 384)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64, align: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!541, !527, !657, !546}
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !301, line: 95, baseType: !321)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !535, file: !301, line: 155, baseType: !659, size: 64, align: 64, offset: 448)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64, align: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{!657, !527}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !529, file: !301, line: 103, baseType: !358, size: 64, align: 64, offset: 128)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !529, file: !301, line: 104, baseType: !664, size: 64, align: 64, offset: 192)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !665, line: 77, baseType: !666)
!665 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64, align: 64)
!667 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !665, line: 77, flags: DIFlagFwdDecl)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !529, file: !301, line: 105, baseType: !664, size: 64, align: 64, offset: 256)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !529, file: !301, line: 106, baseType: !358, size: 64, align: 64, offset: 320)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !529, file: !301, line: 107, baseType: !632, size: 32, align: 32, offset: 384)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !529, file: !301, line: 109, baseType: !542, size: 64, align: 64, offset: 448)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !529, file: !301, line: 110, baseType: !673, size: 64, align: 64, offset: 512)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64, align: 64)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !675, line: 39, baseType: !676)
!675 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !675, line: 41, size: 192, align: 64, elements: !677)
!677 = !{!678, !679, !680}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !676, file: !675, line: 43, baseType: !358, size: 64, align: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !676, file: !675, line: 44, baseType: !542, size: 64, align: 64, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !676, file: !675, line: 45, baseType: !542, size: 64, align: 64, offset: 128)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !529, file: !301, line: 111, baseType: !673, size: 64, align: 64, offset: 576)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !529, file: !301, line: 112, baseType: !673, size: 64, align: 64, offset: 640)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !529, file: !301, line: 113, baseType: !684, size: 48, align: 8, offset: 704)
!684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !353, size: 48, align: 8, elements: !685)
!685 = !{!686}
!686 = !DISubrange(count: 6)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !529, file: !301, line: 117, baseType: !632, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !529, file: !301, line: 118, baseType: !632, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !529, file: !301, line: 119, baseType: !632, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !529, file: !301, line: 120, baseType: !632, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !529, file: !301, line: 121, baseType: !632, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !529, file: !301, line: 122, baseType: !632, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !529, file: !301, line: 124, baseType: !357, size: 64, align: 64, offset: 768)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !529, file: !301, line: 125, baseType: !357, size: 64, align: 64, offset: 832)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !492, file: !495, line: 38, baseType: !556, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !492, file: !495, line: 39, baseType: !556, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !492, file: !495, line: 40, baseType: !556, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !492, file: !495, line: 41, baseType: !556, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !492, file: !495, line: 42, baseType: !556, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !492, file: !495, line: 43, baseType: !556, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !492, file: !495, line: 44, baseType: !556, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !492, file: !495, line: 45, baseType: !556, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !492, file: !495, line: 46, baseType: !402, size: 64, align: 64, offset: 1792)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !492, file: !495, line: 47, baseType: !402, size: 64, align: 64, offset: 1856)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !482, file: !486, line: 9, baseType: !706, size: 64, align: 64, offset: 192)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !707, line: 75, baseType: !708)
!707 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !709, line: 139, baseType: !568)
!709 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!710 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !482, file: !486, line: 10, baseType: !706, size: 64, align: 64, offset: 256)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !482, file: !486, line: 12, baseType: !402, size: 64, align: 64, offset: 320)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !482, file: !486, line: 13, baseType: !402, size: 64, align: 64, offset: 384)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !482, file: !486, line: 15, baseType: !556, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !482, file: !486, line: 16, baseType: !556, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !482, file: !486, line: 17, baseType: !556, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !482, file: !486, line: 18, baseType: !556, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !482, file: !486, line: 19, baseType: !556, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !482, file: !486, line: 21, baseType: !719, size: 64, align: 64, offset: 512)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64, align: 64)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !481, line: 102, baseType: !721)
!721 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !481, line: 102, flags: DIFlagFwdDecl)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !482, file: !486, line: 22, baseType: !346, size: 32, align: 32, offset: 576)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !482, file: !486, line: 25, baseType: !724, size: 128, align: 64, offset: 640)
!724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !527, size: 128, align: 64, elements: !725)
!725 = !{!726}
!726 = !DISubrange(count: 2)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !482, file: !486, line: 26, baseType: !346, size: 32, align: 32, offset: 768)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !482, file: !486, line: 27, baseType: !346, size: 32, align: 32, offset: 800)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !482, file: !486, line: 29, baseType: !730, size: 64, align: 64, offset: 832)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64, align: 64)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !481, line: 103, baseType: !732)
!732 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !481, line: 103, flags: DIFlagFwdDecl)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !482, file: !486, line: 30, baseType: !734, size: 64, align: 64, offset: 896)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64, align: 64)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !736, line: 37, baseType: !737)
!736 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!737 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !736, line: 37, flags: DIFlagFwdDecl)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !482, file: !486, line: 32, baseType: !402, size: 64, align: 64, offset: 960)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !482, file: !486, line: 33, baseType: !402, size: 64, align: 64, offset: 1024)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !482, file: !486, line: 34, baseType: !402, size: 64, align: 64, offset: 1088)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !482, file: !486, line: 35, baseType: !556, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !482, file: !486, line: 36, baseType: !556, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !482, file: !486, line: 37, baseType: !556, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !482, file: !486, line: 38, baseType: !556, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !482, file: !486, line: 40, baseType: !746, size: 128, align: 64, offset: 1216)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !354, line: 504, baseType: !747)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !354, line: 506, size: 128, align: 64, elements: !748)
!748 = !{!749, !751}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !747, file: !354, line: 508, baseType: !750, size: 64, align: 64)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !354, line: 48, baseType: !568)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !747, file: !354, line: 509, baseType: !750, size: 64, align: 64, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !482, file: !486, line: 41, baseType: !706, size: 64, align: 64, offset: 1344)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !482, file: !486, line: 42, baseType: !346, size: 32, align: 32, offset: 1408)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !482, file: !486, line: 44, baseType: !367, size: 64, align: 64, offset: 1472)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !482, file: !486, line: 45, baseType: !367, size: 64, align: 64, offset: 1536)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !482, file: !486, line: 53, baseType: !757, size: 64, align: 64, offset: 1600)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64, align: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{null, !479, !359, !346}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !482, file: !486, line: 55, baseType: !761, size: 64, align: 64, offset: 1664)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64, align: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{!346, !479, !355}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !482, file: !486, line: 57, baseType: !765, size: 64, align: 64, offset: 1728)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64, align: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{!346, !479, !359}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !482, file: !486, line: 60, baseType: !769, size: 64, align: 64, offset: 1792)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64, align: 64)
!770 = !DISubroutineType(types: !771)
!771 = !{!359, !479}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !482, file: !486, line: 62, baseType: !773, size: 64, align: 64, offset: 1856)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64, align: 64)
!774 = !DISubroutineType(types: !775)
!775 = !{null, !479, !359, !359, !346}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !482, file: !486, line: 65, baseType: !777, size: 64, align: 64, offset: 1920)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64, align: 64)
!778 = !DISubroutineType(types: !779)
!779 = !{!780, !479, !359, !359}
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64, align: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !482, file: !486, line: 69, baseType: !782, size: 64, align: 64, offset: 1984)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64, align: 64)
!783 = !DISubroutineType(types: !784)
!784 = !{!785, !479, !359}
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64, align: 64)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !481, line: 109, baseType: !787)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !788, line: 15, size: 1408, align: 64, elements: !789)
!788 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!789 = !{!790, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !825, !826, !828, !829, !830, !831, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !787, file: !791, line: 3, baseType: !346, size: 32, align: 32)
!791 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!792 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !787, file: !791, line: 4, baseType: !346, size: 32, align: 32, offset: 32)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !787, file: !791, line: 5, baseType: !734, size: 64, align: 64, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !787, file: !791, line: 7, baseType: !340, size: 64, align: 64, offset: 128)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !787, file: !791, line: 8, baseType: !479, size: 64, align: 64, offset: 192)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !787, file: !791, line: 9, baseType: !402, size: 64, align: 64, offset: 256)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !787, file: !791, line: 10, baseType: !402, size: 64, align: 64, offset: 320)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !787, file: !791, line: 11, baseType: !706, size: 64, align: 64, offset: 384)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !787, file: !791, line: 12, baseType: !346, size: 32, align: 32, offset: 448)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !787, file: !791, line: 13, baseType: !402, size: 64, align: 64, offset: 512)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !787, file: !791, line: 15, baseType: !802, size: 64, align: 64, offset: 576)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64, align: 64)
!803 = !DISubroutineType(types: !804)
!804 = !{null, !805}
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64, align: 64)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !481, line: 108, baseType: !807)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !808, line: 5, size: 704, align: 64, elements: !809)
!808 = !DIFile(filename: "../../../src/core/window-item-def.h", directory: "/home/lichi/Desktop/irssi/task1")
!809 = !{!810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !807, file: !791, line: 3, baseType: !346, size: 32, align: 32)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !807, file: !791, line: 4, baseType: !346, size: 32, align: 32, offset: 32)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !807, file: !791, line: 5, baseType: !734, size: 64, align: 64, offset: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !807, file: !791, line: 7, baseType: !340, size: 64, align: 64, offset: 128)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !807, file: !791, line: 8, baseType: !479, size: 64, align: 64, offset: 192)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !807, file: !791, line: 9, baseType: !402, size: 64, align: 64, offset: 256)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !807, file: !791, line: 10, baseType: !402, size: 64, align: 64, offset: 320)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !807, file: !791, line: 11, baseType: !706, size: 64, align: 64, offset: 384)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !807, file: !791, line: 12, baseType: !346, size: 32, align: 32, offset: 448)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !807, file: !791, line: 13, baseType: !402, size: 64, align: 64, offset: 512)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !807, file: !791, line: 15, baseType: !802, size: 64, align: 64, offset: 576)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !807, file: !791, line: 17, baseType: !822, size: 64, align: 64, offset: 640)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64, align: 64)
!823 = !DISubroutineType(types: !824)
!824 = !{!359, !805}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !787, file: !791, line: 17, baseType: !822, size: 64, align: 64, offset: 640)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !787, file: !827, line: 5, baseType: !402, size: 64, align: 64, offset: 704)
!827 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!828 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !787, file: !827, line: 6, baseType: !402, size: 64, align: 64, offset: 768)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !787, file: !827, line: 7, baseType: !706, size: 64, align: 64, offset: 832)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !787, file: !827, line: 9, baseType: !734, size: 64, align: 64, offset: 896)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !787, file: !827, line: 10, baseType: !832, size: 64, align: 64, offset: 960)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64, align: 64)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !481, line: 111, baseType: !834)
!834 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !481, line: 111, flags: DIFlagFwdDecl)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !787, file: !827, line: 12, baseType: !556, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !787, file: !827, line: 13, baseType: !402, size: 64, align: 64, offset: 1088)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !787, file: !827, line: 14, baseType: !346, size: 32, align: 32, offset: 1152)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !787, file: !827, line: 15, baseType: !402, size: 64, align: 64, offset: 1216)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !787, file: !827, line: 17, baseType: !556, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !787, file: !827, line: 18, baseType: !556, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !787, file: !827, line: 19, baseType: !556, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !787, file: !827, line: 20, baseType: !556, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !787, file: !827, line: 22, baseType: !556, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !787, file: !827, line: 23, baseType: !556, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !787, file: !827, line: 24, baseType: !556, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !787, file: !827, line: 25, baseType: !556, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !787, file: !827, line: 26, baseType: !556, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !787, file: !827, line: 31, baseType: !849, size: 64, align: 64, offset: 1344)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64, align: 64)
!850 = !DISubroutineType(types: !851)
!851 = !{!402, !785}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !482, file: !486, line: 70, baseType: !853, size: 64, align: 64, offset: 2048)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64, align: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{!856, !479, !359}
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64, align: 64)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !481, line: 110, baseType: !858)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !859, line: 15, size: 960, align: 64, elements: !860)
!859 = !DIFile(filename: "../../../src/core/queries.h", directory: "/home/lichi/Desktop/irssi/task1")
!860 = !{!861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !875, !876, !877, !878}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !858, file: !791, line: 3, baseType: !346, size: 32, align: 32)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !858, file: !791, line: 4, baseType: !346, size: 32, align: 32, offset: 32)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !858, file: !791, line: 5, baseType: !734, size: 64, align: 64, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !858, file: !791, line: 7, baseType: !340, size: 64, align: 64, offset: 128)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !858, file: !791, line: 8, baseType: !479, size: 64, align: 64, offset: 192)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !858, file: !791, line: 9, baseType: !402, size: 64, align: 64, offset: 256)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !858, file: !791, line: 10, baseType: !402, size: 64, align: 64, offset: 320)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !858, file: !791, line: 11, baseType: !706, size: 64, align: 64, offset: 384)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !858, file: !791, line: 12, baseType: !346, size: 32, align: 32, offset: 448)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !858, file: !791, line: 13, baseType: !402, size: 64, align: 64, offset: 512)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !858, file: !791, line: 15, baseType: !802, size: 64, align: 64, offset: 576)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !858, file: !791, line: 17, baseType: !822, size: 64, align: 64, offset: 640)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !858, file: !874, line: 5, baseType: !402, size: 64, align: 64, offset: 704)
!874 = !DIFile(filename: "../../../src/core/query-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!875 = !DIDerivedType(tag: DW_TAG_member, name: "server_tag", scope: !858, file: !874, line: 6, baseType: !402, size: 64, align: 64, offset: 768)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "last_unread_msg", scope: !858, file: !874, line: 7, baseType: !706, size: 64, align: 64, offset: 832)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "unwanted", scope: !858, file: !874, line: 9, baseType: !556, size: 1, align: 32, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !858, file: !874, line: 11, baseType: !556, size: 1, align: 32, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !482, file: !486, line: 71, baseType: !880, size: 64, align: 64, offset: 2112)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64, align: 64)
!881 = !DISubroutineType(types: !882)
!882 = !{!346, !359, !359}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !482, file: !486, line: 73, baseType: !880, size: 64, align: 64, offset: 2176)
!884 = !DILocalVariable(name: "server", arg: 1, scope: !476, file: !382, line: 102, type: !479)
!885 = !DILocation(line: 102, column: 39, scope: !476)
!886 = !DILocation(line: 104, column: 23, scope: !476)
!887 = !DILocation(line: 104, column: 32, scope: !476)
!888 = !DILocation(line: 104, column: 86, scope: !476)
!889 = !DILocation(line: 104, column: 64, scope: !476)
!890 = !DILocation(line: 104, column: 63, scope: !476)
!891 = !DILocation(line: 104, column: 2, scope: !892)
!892 = !DILexicalBlockFile(scope: !476, file: !382, discriminator: 1)
!893 = !DILocation(line: 105, column: 1, scope: !476)
!894 = distinct !DISubprogram(name: "sig_destroyed", scope: !382, file: !382, line: 107, type: !477, isLocal: true, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !385)
!895 = !DILocalVariable(name: "server", arg: 1, scope: !894, file: !382, line: 107, type: !479)
!896 = !DILocation(line: 107, column: 39, scope: !894)
!897 = !DILocalVariable(name: "data", scope: !894, file: !382, line: 109, type: !340)
!898 = !DILocation(line: 109, column: 8, scope: !894)
!899 = !DILocation(line: 109, column: 36, scope: !894)
!900 = !DILocation(line: 109, column: 45, scope: !894)
!901 = !DILocation(line: 109, column: 15, scope: !894)
!902 = !DILocation(line: 110, column: 9, scope: !894)
!903 = !DILocation(line: 110, column: 2, scope: !894)
!904 = !DILocation(line: 111, column: 23, scope: !894)
!905 = !DILocation(line: 111, column: 32, scope: !894)
!906 = !DILocation(line: 111, column: 2, scope: !894)
!907 = !DILocation(line: 112, column: 1, scope: !894)
!908 = distinct !DISubprogram(name: "sig_channel_created", scope: !382, file: !382, line: 114, type: !909, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !385)
!909 = !DISubroutineType(types: !910)
!910 = !{null, !785}
!911 = !DILocalVariable(name: "channel", arg: 1, scope: !908, file: !382, line: 114, type: !785)
!912 = !DILocation(line: 114, column: 46, scope: !908)
!913 = !DILocation(line: 116, column: 23, scope: !908)
!914 = !DILocation(line: 116, column: 33, scope: !908)
!915 = !DILocation(line: 116, column: 88, scope: !908)
!916 = !DILocation(line: 116, column: 65, scope: !908)
!917 = !DILocation(line: 116, column: 64, scope: !908)
!918 = !DILocation(line: 116, column: 2, scope: !919)
!919 = !DILexicalBlockFile(scope: !908, file: !382, discriminator: 1)
!920 = !DILocation(line: 117, column: 1, scope: !908)
!921 = distinct !DISubprogram(name: "sig_channel_destroyed", scope: !382, file: !382, line: 119, type: !909, isLocal: true, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !385)
!922 = !DILocalVariable(name: "channel", arg: 1, scope: !921, file: !382, line: 119, type: !785)
!923 = !DILocation(line: 119, column: 48, scope: !921)
!924 = !DILocalVariable(name: "data", scope: !921, file: !382, line: 121, type: !340)
!925 = !DILocation(line: 121, column: 8, scope: !921)
!926 = !DILocation(line: 121, column: 36, scope: !921)
!927 = !DILocation(line: 121, column: 46, scope: !921)
!928 = !DILocation(line: 121, column: 15, scope: !921)
!929 = !DILocation(line: 123, column: 9, scope: !921)
!930 = !DILocation(line: 123, column: 2, scope: !921)
!931 = !DILocation(line: 124, column: 23, scope: !921)
!932 = !DILocation(line: 124, column: 33, scope: !921)
!933 = !DILocation(line: 124, column: 2, scope: !921)
!934 = !DILocation(line: 125, column: 1, scope: !921)
!935 = distinct !DISubprogram(name: "fe_common_core_deinit", scope: !382, file: !382, line: 213, type: !383, isLocal: false, isDefinition: true, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !385)
!936 = !DILocation(line: 215, column: 2, scope: !935)
!937 = !DILocation(line: 216, column: 2, scope: !935)
!938 = !DILocation(line: 217, column: 2, scope: !935)
!939 = !DILocation(line: 218, column: 2, scope: !935)
!940 = !DILocation(line: 219, column: 2, scope: !935)
!941 = !DILocation(line: 220, column: 2, scope: !935)
!942 = !DILocation(line: 221, column: 9, scope: !935)
!943 = !DILocation(line: 222, column: 9, scope: !935)
!944 = !DILocation(line: 223, column: 2, scope: !935)
!945 = !DILocation(line: 224, column: 2, scope: !935)
!946 = !DILocation(line: 225, column: 2, scope: !935)
!947 = !DILocation(line: 226, column: 2, scope: !935)
!948 = !DILocation(line: 227, column: 2, scope: !935)
!949 = !DILocation(line: 228, column: 2, scope: !935)
!950 = !DILocation(line: 229, column: 2, scope: !935)
!951 = !DILocation(line: 233, column: 2, scope: !935)
!952 = !DILocation(line: 234, column: 2, scope: !935)
!953 = !DILocation(line: 235, column: 2, scope: !935)
!954 = !DILocation(line: 236, column: 2, scope: !935)
!955 = !DILocation(line: 237, column: 2, scope: !935)
!956 = !DILocation(line: 238, column: 2, scope: !935)
!957 = !DILocation(line: 240, column: 9, scope: !935)
!958 = !DILocation(line: 241, column: 9, scope: !935)
!959 = !DILocation(line: 243, column: 2, scope: !935)
!960 = !DILocation(line: 244, column: 2, scope: !935)
!961 = !DILocation(line: 245, column: 2, scope: !935)
!962 = !DILocation(line: 247, column: 9, scope: !935)
!963 = !DILocation(line: 248, column: 2, scope: !935)
!964 = !DILocation(line: 250, column: 9, scope: !935)
!965 = !DILocation(line: 251, column: 9, scope: !935)
!966 = !DILocation(line: 252, column: 9, scope: !935)
!967 = !DILocation(line: 253, column: 9, scope: !935)
!968 = !DILocation(line: 254, column: 9, scope: !935)
!969 = !DILocation(line: 255, column: 1, scope: !935)
!970 = !DILocalVariable(name: "changed", scope: !409, file: !382, line: 380, type: !346)
!971 = !DILocation(line: 380, column: 6, scope: !409)
!972 = !DILocation(line: 382, column: 6, scope: !973)
!973 = distinct !DILexicalBlock(scope: !409, file: !382, line: 382, column: 6)
!974 = !DILocation(line: 382, column: 48, scope: !973)
!975 = !DILocation(line: 382, column: 45, scope: !973)
!976 = !DILocation(line: 382, column: 6, scope: !409)
!977 = !DILocation(line: 383, column: 20, scope: !978)
!978 = distinct !DILexicalBlock(scope: !973, file: !382, line: 382, column: 63)
!979 = !DILocation(line: 383, column: 19, scope: !978)
!980 = !DILocation(line: 383, column: 17, scope: !978)
!981 = !DILocation(line: 384, column: 11, scope: !978)
!982 = !DILocation(line: 385, column: 2, scope: !978)
!983 = !DILocation(line: 386, column: 6, scope: !984)
!984 = distinct !DILexicalBlock(scope: !409, file: !382, line: 386, column: 6)
!985 = !DILocation(line: 386, column: 46, scope: !984)
!986 = !DILocation(line: 386, column: 43, scope: !984)
!987 = !DILocation(line: 386, column: 6, scope: !409)
!988 = !DILocation(line: 387, column: 18, scope: !989)
!989 = distinct !DILexicalBlock(scope: !984, file: !382, line: 386, column: 59)
!990 = !DILocation(line: 387, column: 17, scope: !989)
!991 = !DILocation(line: 387, column: 15, scope: !989)
!992 = !DILocation(line: 388, column: 11, scope: !989)
!993 = !DILocation(line: 389, column: 2, scope: !989)
!994 = !DILocation(line: 391, column: 6, scope: !995)
!995 = distinct !DILexicalBlock(scope: !409, file: !382, line: 391, column: 6)
!996 = !DILocation(line: 391, column: 6, scope: !409)
!997 = !DILocation(line: 392, column: 13, scope: !998)
!998 = distinct !DILexicalBlock(scope: !995, file: !382, line: 391, column: 17)
!999 = !DILocation(line: 393, column: 11, scope: !998)
!1000 = !DILocation(line: 395, column: 3, scope: !998)
!1001 = !DILocation(line: 396, column: 7, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !998, file: !382, line: 396, column: 7)
!1003 = !DILocation(line: 396, column: 15, scope: !1002)
!1004 = !DILocation(line: 396, column: 7, scope: !998)
!1005 = !DILocation(line: 397, column: 4, scope: !1002)
!1006 = !DILocation(line: 398, column: 2, scope: !998)
!1007 = !DILocation(line: 400, column: 6, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !409, file: !382, line: 400, column: 6)
!1009 = !DILocation(line: 400, column: 6, scope: !409)
!1010 = !DILocation(line: 401, column: 3, scope: !1008)
!1011 = !DILocation(line: 402, column: 1, scope: !409)
!1012 = distinct !DISubprogram(name: "glog_func", scope: !382, file: !382, line: 257, type: !1013, isLocal: false, isDefinition: true, scopeLine: 259, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !385)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{null, !359, !356, !359}
!1015 = !DILocalVariable(name: "log_domain", arg: 1, scope: !1012, file: !382, line: 257, type: !359)
!1016 = !DILocation(line: 257, column: 28, scope: !1012)
!1017 = !DILocalVariable(name: "log_level", arg: 2, scope: !1012, file: !382, line: 257, type: !356)
!1018 = !DILocation(line: 257, column: 55, scope: !1012)
!1019 = !DILocalVariable(name: "message", arg: 3, scope: !1012, file: !382, line: 258, type: !359)
!1020 = !DILocation(line: 258, column: 21, scope: !1012)
!1021 = !DILocalVariable(name: "reason", scope: !1012, file: !382, line: 260, type: !359)
!1022 = !DILocation(line: 260, column: 14, scope: !1012)
!1023 = !DILocation(line: 262, column: 10, scope: !1012)
!1024 = !DILocation(line: 262, column: 2, scope: !1012)
!1025 = !DILocation(line: 264, column: 24, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1012, file: !382, line: 262, column: 21)
!1027 = !DILocation(line: 265, column: 17, scope: !1026)
!1028 = !DILocation(line: 267, column: 24, scope: !1026)
!1029 = !DILocation(line: 268, column: 3, scope: !1026)
!1030 = !DILocation(line: 270, column: 10, scope: !1026)
!1031 = !DILocation(line: 271, column: 17, scope: !1026)
!1032 = !DILocation(line: 274, column: 6, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1012, file: !382, line: 274, column: 6)
!1034 = !DILocation(line: 274, column: 14, scope: !1033)
!1035 = !DILocation(line: 274, column: 6, scope: !1012)
!1036 = !DILocation(line: 275, column: 10, scope: !1033)
!1037 = !DILocation(line: 275, column: 35, scope: !1033)
!1038 = !DILocation(line: 275, column: 43, scope: !1033)
!1039 = !DILocation(line: 275, column: 3, scope: !1033)
!1040 = !DILocation(line: 277, column: 42, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1033, file: !382, line: 276, column: 7)
!1042 = !DILocation(line: 277, column: 50, scope: !1041)
!1043 = !DILocation(line: 277, column: 3, scope: !1041)
!1044 = !DILocation(line: 280, column: 1, scope: !1012)
!1045 = distinct !DISubprogram(name: "fe_common_core_finish_init", scope: !382, file: !382, line: 435, type: !383, isLocal: false, isDefinition: true, scopeLine: 436, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !385)
!1046 = !DILocalVariable(name: "setup_changed", scope: !1045, file: !382, line: 437, type: !346)
!1047 = !DILocation(line: 437, column: 6, scope: !1045)
!1048 = !DILocation(line: 439, column: 2, scope: !1045)
!1049 = !DILocation(line: 442, column: 2, scope: !1045)
!1050 = !DILocation(line: 445, column: 23, scope: !1045)
!1051 = !DILocation(line: 446, column: 6, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1045, file: !382, line: 446, column: 6)
!1053 = !DILocation(line: 446, column: 19, scope: !1052)
!1054 = !DILocation(line: 446, column: 26, scope: !1052)
!1055 = !DILocation(line: 446, column: 30, scope: !1056)
!1056 = !DILexicalBlockFile(scope: !1052, file: !382, discriminator: 1)
!1057 = !DILocation(line: 446, column: 29, scope: !1056)
!1058 = !DILocation(line: 446, column: 43, scope: !1056)
!1059 = !DILocation(line: 446, column: 6, scope: !1056)
!1060 = !DILocation(line: 448, column: 28, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1052, file: !382, line: 446, column: 52)
!1062 = !DILocation(line: 448, column: 3, scope: !1061)
!1063 = !DILocation(line: 449, column: 17, scope: !1061)
!1064 = !DILocation(line: 450, column: 2, scope: !1061)
!1065 = !DILocation(line: 452, column: 6, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1045, file: !382, line: 452, column: 6)
!1067 = !DILocation(line: 452, column: 23, scope: !1066)
!1068 = !DILocation(line: 452, column: 6, scope: !1045)
!1069 = !DILocation(line: 454, column: 32, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1066, file: !382, line: 452, column: 31)
!1071 = !DILocation(line: 454, column: 3, scope: !1070)
!1072 = !DILocation(line: 455, column: 17, scope: !1070)
!1073 = !DILocation(line: 456, column: 2, scope: !1070)
!1074 = !DILocation(line: 458, column: 2, scope: !1045)
!1075 = !DILocation(line: 459, column: 2, scope: !1045)
!1076 = !DILocation(line: 462, column: 2, scope: !1045)
!1077 = !DILocation(line: 464, column: 6, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1045, file: !382, line: 464, column: 6)
!1079 = !DILocation(line: 464, column: 6, scope: !1045)
!1080 = !DILocation(line: 465, column: 17, scope: !1078)
!1081 = !DILocation(line: 467, column: 2, scope: !1045)
!1082 = !DILocation(line: 468, column: 2, scope: !1045)
!1083 = !DILocation(line: 469, column: 1, scope: !1045)
!1084 = distinct !DISubprogram(name: "autorun_startup", scope: !382, file: !382, line: 404, type: !383, isLocal: true, isDefinition: true, scopeLine: 405, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !385)
!1085 = !DILocalVariable(name: "path", scope: !1084, file: !382, line: 406, type: !402)
!1086 = !DILocation(line: 406, column: 8, scope: !1084)
!1087 = !DILocalVariable(name: "handle", scope: !1084, file: !382, line: 407, type: !527)
!1088 = !DILocation(line: 407, column: 14, scope: !1084)
!1089 = !DILocalVariable(name: "buf", scope: !1084, file: !382, line: 408, type: !673)
!1090 = !DILocation(line: 408, column: 11, scope: !1084)
!1091 = !DILocalVariable(name: "tpos", scope: !1084, file: !382, line: 409, type: !542)
!1092 = !DILocation(line: 409, column: 8, scope: !1084)
!1093 = !DILocation(line: 412, column: 39, scope: !1084)
!1094 = !DILocation(line: 412, column: 9, scope: !1095)
!1095 = !DILexicalBlockFile(scope: !1084, file: !382, discriminator: 1)
!1096 = !DILocation(line: 412, column: 7, scope: !1084)
!1097 = !DILocation(line: 413, column: 33, scope: !1084)
!1098 = !DILocation(line: 413, column: 11, scope: !1084)
!1099 = !DILocation(line: 413, column: 9, scope: !1084)
!1100 = !DILocation(line: 414, column: 9, scope: !1084)
!1101 = !DILocation(line: 414, column: 2, scope: !1084)
!1102 = !DILocation(line: 415, column: 6, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1084, file: !382, line: 415, column: 6)
!1104 = !DILocation(line: 415, column: 13, scope: !1103)
!1105 = !DILocation(line: 415, column: 6, scope: !1084)
!1106 = !DILocation(line: 417, column: 3, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1103, file: !382, line: 415, column: 21)
!1108 = !DILocation(line: 420, column: 28, scope: !1084)
!1109 = !DILocation(line: 420, column: 2, scope: !1084)
!1110 = !DILocation(line: 421, column: 8, scope: !1084)
!1111 = !DILocation(line: 421, column: 6, scope: !1084)
!1112 = !DILocation(line: 422, column: 2, scope: !1084)
!1113 = !DILocation(line: 422, column: 39, scope: !1095)
!1114 = !DILocation(line: 422, column: 47, scope: !1095)
!1115 = !DILocation(line: 422, column: 9, scope: !1095)
!1116 = !DILocation(line: 422, column: 64, scope: !1095)
!1117 = !DILocation(line: 422, column: 2, scope: !1095)
!1118 = !DILocation(line: 423, column: 12, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1084, file: !382, line: 422, column: 87)
!1120 = !DILocation(line: 423, column: 3, scope: !1119)
!1121 = !DILocation(line: 423, column: 8, scope: !1119)
!1122 = !DILocation(line: 423, column: 18, scope: !1119)
!1123 = !DILocation(line: 424, column: 7, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1119, file: !382, line: 424, column: 7)
!1125 = !DILocation(line: 424, column: 12, scope: !1124)
!1126 = !DILocation(line: 424, column: 19, scope: !1124)
!1127 = !DILocation(line: 424, column: 7, scope: !1119)
!1128 = !DILocation(line: 425, column: 24, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1124, file: !382, line: 424, column: 27)
!1130 = !DILocation(line: 425, column: 29, scope: !1129)
!1131 = !DILocation(line: 426, column: 10, scope: !1129)
!1132 = !DILocation(line: 426, column: 22, scope: !1129)
!1133 = !DILocation(line: 427, column: 10, scope: !1129)
!1134 = !DILocation(line: 427, column: 22, scope: !1129)
!1135 = !DILocation(line: 425, column: 4, scope: !1129)
!1136 = !DILocation(line: 428, column: 3, scope: !1129)
!1137 = !DILocation(line: 422, column: 2, scope: !1138)
!1138 = !DILexicalBlockFile(scope: !1084, file: !382, discriminator: 2)
!1139 = distinct !{!1139, !1112}
!1140 = !DILocation(line: 430, column: 16, scope: !1084)
!1141 = !DILocation(line: 430, column: 2, scope: !1084)
!1142 = !DILocation(line: 432, column: 21, scope: !1084)
!1143 = !DILocation(line: 432, column: 2, scope: !1084)
!1144 = !DILocation(line: 433, column: 1, scope: !1084)
!1145 = !DILocation(line: 433, column: 1, scope: !1095)
!1146 = distinct !DISubprogram(name: "autoconnect_servers", scope: !382, file: !382, line: 331, type: !383, isLocal: true, isDefinition: true, scopeLine: 332, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !385)
!1147 = !DILocalVariable(name: "tmp", scope: !1146, file: !382, line: 333, type: !367)
!1148 = !DILocation(line: 333, column: 10, scope: !1146)
!1149 = !DILocalVariable(name: "chatnets", scope: !1146, file: !382, line: 333, type: !367)
!1150 = !DILocation(line: 333, column: 16, scope: !1146)
!1151 = !DILocalVariable(name: "str", scope: !1146, file: !382, line: 334, type: !402)
!1152 = !DILocation(line: 334, column: 8, scope: !1146)
!1153 = !DILocation(line: 336, column: 6, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1146, file: !382, line: 336, column: 6)
!1155 = !DILocation(line: 336, column: 21, scope: !1154)
!1156 = !DILocation(line: 336, column: 6, scope: !1146)
!1157 = !DILocation(line: 338, column: 7, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1159, file: !382, line: 338, column: 7)
!1159 = distinct !DILexicalBlock(scope: !1154, file: !382, line: 336, column: 29)
!1160 = !DILocation(line: 338, column: 24, scope: !1158)
!1161 = !DILocation(line: 338, column: 7, scope: !1159)
!1162 = !DILocation(line: 339, column: 35, scope: !1158)
!1163 = !DILocation(line: 339, column: 51, scope: !1158)
!1164 = !DILocation(line: 339, column: 10, scope: !1158)
!1165 = !DILocation(line: 339, column: 8, scope: !1158)
!1166 = !DILocation(line: 339, column: 4, scope: !1158)
!1167 = !DILocation(line: 341, column: 38, scope: !1158)
!1168 = !DILocation(line: 341, column: 54, scope: !1158)
!1169 = !DILocation(line: 341, column: 68, scope: !1158)
!1170 = !DILocation(line: 341, column: 10, scope: !1158)
!1171 = !DILocation(line: 341, column: 8, scope: !1158)
!1172 = !DILocation(line: 343, column: 37, scope: !1159)
!1173 = !DILocation(line: 343, column: 3, scope: !1159)
!1174 = !DILocation(line: 344, column: 10, scope: !1159)
!1175 = !DILocation(line: 344, column: 3, scope: !1159)
!1176 = !DILocation(line: 345, column: 3, scope: !1159)
!1177 = !DILocation(line: 348, column: 6, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1146, file: !382, line: 348, column: 6)
!1179 = !DILocation(line: 348, column: 6, scope: !1146)
!1180 = !DILocation(line: 350, column: 3, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1178, file: !382, line: 348, column: 22)
!1182 = !DILocation(line: 354, column: 11, scope: !1146)
!1183 = !DILocation(line: 355, column: 13, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1146, file: !382, line: 355, column: 2)
!1185 = !DILocation(line: 355, column: 11, scope: !1184)
!1186 = !DILocation(line: 355, column: 7, scope: !1184)
!1187 = !DILocation(line: 355, column: 27, scope: !1188)
!1188 = !DILexicalBlockFile(scope: !1189, file: !382, discriminator: 1)
!1189 = distinct !DILexicalBlock(scope: !1184, file: !382, line: 355, column: 2)
!1190 = !DILocation(line: 355, column: 31, scope: !1188)
!1191 = !DILocation(line: 355, column: 2, scope: !1188)
!1192 = !DILocalVariable(name: "rec", scope: !1193, file: !382, line: 356, type: !1194)
!1193 = distinct !DILexicalBlock(scope: !1189, file: !382, line: 355, column: 56)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64, align: 64)
!1195 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_SETUP_REC", file: !481, line: 114, baseType: !1196)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_SETUP_REC", file: !1197, line: 13, size: 1408, align: 64, elements: !1198)
!1197 = !DIFile(filename: "../../../src/core/servers-setup.h", directory: "/home/lichi/Desktop/irssi/task1")
!1198 = !{!1199, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1196, file: !1200, line: 1, baseType: !346, size: 32, align: 32)
!1200 = !DIFile(filename: "../../../src/core/server-setup-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !1196, file: !1200, line: 2, baseType: !346, size: 32, align: 32, offset: 32)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !1196, file: !1200, line: 4, baseType: !402, size: 64, align: 64, offset: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !1196, file: !1200, line: 6, baseType: !504, size: 16, align: 16, offset: 128)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1196, file: !1200, line: 7, baseType: !402, size: 64, align: 64, offset: 192)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1196, file: !1200, line: 8, baseType: !346, size: 32, align: 32, offset: 256)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !1196, file: !1200, line: 9, baseType: !402, size: 64, align: 64, offset: 320)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !1196, file: !1200, line: 11, baseType: !346, size: 32, align: 32, offset: 384)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !1196, file: !1200, line: 12, baseType: !402, size: 64, align: 64, offset: 448)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !1196, file: !1200, line: 14, baseType: !402, size: 64, align: 64, offset: 512)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !1196, file: !1200, line: 15, baseType: !402, size: 64, align: 64, offset: 576)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !1196, file: !1200, line: 16, baseType: !402, size: 64, align: 64, offset: 640)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !1196, file: !1200, line: 17, baseType: !402, size: 64, align: 64, offset: 704)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !1196, file: !1200, line: 18, baseType: !402, size: 64, align: 64, offset: 768)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !1196, file: !1200, line: 19, baseType: !402, size: 64, align: 64, offset: 832)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !1196, file: !1200, line: 20, baseType: !402, size: 64, align: 64, offset: 896)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !1196, file: !1200, line: 21, baseType: !402, size: 64, align: 64, offset: 960)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "own_host", scope: !1196, file: !1200, line: 23, baseType: !402, size: 64, align: 64, offset: 1024)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !1196, file: !1200, line: 24, baseType: !510, size: 64, align: 64, offset: 1088)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !1196, file: !1200, line: 24, baseType: !510, size: 64, align: 64, offset: 1152)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "last_connect", scope: !1196, file: !1200, line: 26, baseType: !706, size: 64, align: 64, offset: 1216)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "autoconnect", scope: !1196, file: !1200, line: 28, baseType: !556, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "no_proxy", scope: !1196, file: !1200, line: 29, baseType: !556, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "last_failed", scope: !1196, file: !1200, line: 30, baseType: !556, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !1196, file: !1200, line: 31, baseType: !556, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !1196, file: !1200, line: 32, baseType: !556, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !1196, file: !1200, line: 33, baseType: !556, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !1196, file: !1200, line: 34, baseType: !556, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !1196, file: !1200, line: 36, baseType: !734, size: 64, align: 64, offset: 1344)
!1229 = !DILocation(line: 356, column: 21, scope: !1193)
!1230 = !DILocation(line: 356, column: 27, scope: !1193)
!1231 = !DILocation(line: 356, column: 32, scope: !1193)
!1232 = !DILocation(line: 358, column: 7, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1193, file: !382, line: 358, column: 7)
!1234 = !DILocation(line: 358, column: 12, scope: !1233)
!1235 = !DILocation(line: 358, column: 24, scope: !1233)
!1236 = !DILocation(line: 359, column: 8, scope: !1233)
!1237 = !DILocation(line: 359, column: 13, scope: !1233)
!1238 = !DILocation(line: 359, column: 21, scope: !1233)
!1239 = !DILocation(line: 359, column: 28, scope: !1233)
!1240 = !DILocation(line: 360, column: 33, scope: !1233)
!1241 = !DILocation(line: 360, column: 43, scope: !1233)
!1242 = !DILocation(line: 360, column: 48, scope: !1233)
!1243 = !DILocation(line: 360, column: 8, scope: !1233)
!1244 = !DILocation(line: 360, column: 57, scope: !1233)
!1245 = !DILocation(line: 358, column: 7, scope: !1246)
!1246 = !DILexicalBlockFile(scope: !1193, file: !382, discriminator: 1)
!1247 = !DILocation(line: 361, column: 8, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !382, line: 361, column: 8)
!1249 = distinct !DILexicalBlock(scope: !1233, file: !382, line: 360, column: 66)
!1250 = !DILocation(line: 361, column: 13, scope: !1248)
!1251 = !DILocation(line: 361, column: 21, scope: !1248)
!1252 = !DILocation(line: 361, column: 8, scope: !1249)
!1253 = !DILocation(line: 362, column: 31, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1248, file: !382, line: 361, column: 29)
!1255 = !DILocation(line: 362, column: 41, scope: !1254)
!1256 = !DILocation(line: 362, column: 46, scope: !1254)
!1257 = !DILocation(line: 362, column: 16, scope: !1254)
!1258 = !DILocation(line: 362, column: 14, scope: !1254)
!1259 = !DILocation(line: 363, column: 48, scope: !1254)
!1260 = !DILocation(line: 363, column: 53, scope: !1254)
!1261 = !DILocation(line: 363, column: 62, scope: !1254)
!1262 = !DILocation(line: 363, column: 67, scope: !1254)
!1263 = !DILocation(line: 363, column: 76, scope: !1254)
!1264 = !DILocation(line: 363, column: 81, scope: !1254)
!1265 = !DILocation(line: 363, column: 11, scope: !1254)
!1266 = !DILocation(line: 363, column: 9, scope: !1254)
!1267 = !DILocation(line: 364, column: 4, scope: !1254)
!1268 = !DILocation(line: 365, column: 36, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1248, file: !382, line: 364, column: 11)
!1270 = !DILocation(line: 365, column: 41, scope: !1269)
!1271 = !DILocation(line: 365, column: 50, scope: !1269)
!1272 = !DILocation(line: 365, column: 55, scope: !1269)
!1273 = !DILocation(line: 365, column: 11, scope: !1269)
!1274 = !DILocation(line: 365, column: 9, scope: !1269)
!1275 = !DILocation(line: 368, column: 38, scope: !1249)
!1276 = !DILocation(line: 368, column: 4, scope: !1249)
!1277 = !DILocation(line: 369, column: 11, scope: !1249)
!1278 = !DILocation(line: 369, column: 4, scope: !1249)
!1279 = !DILocation(line: 370, column: 3, scope: !1249)
!1280 = !DILocation(line: 371, column: 2, scope: !1193)
!1281 = !DILocation(line: 355, column: 45, scope: !1282)
!1282 = !DILexicalBlockFile(scope: !1189, file: !382, discriminator: 2)
!1283 = !DILocation(line: 355, column: 50, scope: !1282)
!1284 = !DILocation(line: 355, column: 43, scope: !1282)
!1285 = !DILocation(line: 355, column: 2, scope: !1282)
!1286 = distinct !{!1286, !1287}
!1287 = !DILocation(line: 355, column: 2, scope: !1146)
!1288 = !DILocation(line: 373, column: 15, scope: !1146)
!1289 = !DILocation(line: 373, column: 2, scope: !1146)
!1290 = !DILocation(line: 374, column: 1, scope: !1146)
!1291 = !DILocation(line: 374, column: 1, scope: !1292)
!1292 = !DILexicalBlockFile(scope: !1146, file: !382, discriminator: 1)
!1293 = distinct !DISubprogram(name: "strarray_find_dest", scope: !382, file: !382, line: 471, type: !1294, isLocal: false, isDefinition: true, scopeLine: 472, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !385)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{!602, !780, !1296}
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64, align: 64)
!1297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1298)
!1298 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_DEST_REC", file: !1299, line: 62, baseType: !1300)
!1299 = !DIFile(filename: "formats.h", directory: "/home/lichi/Desktop/irssi/task1")
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TEXT_DEST_REC", file: !1299, line: 50, size: 576, align: 64, elements: !1301)
!1301 = !{!1302, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !1300, file: !1299, line: 51, baseType: !1303, size: 64, align: 64)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64, align: 64)
!1304 = !DIDerivedType(tag: DW_TAG_typedef, name: "WINDOW_REC", file: !481, line: 117, baseType: !1305)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WINDOW_REC", file: !1306, line: 28, size: 1280, align: 64, elements: !1307)
!1306 = !DIFile(filename: "fe-windows.h", directory: "/home/lichi/Desktop/irssi/task1")
!1307 = !{!1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "refnum", scope: !1305, file: !1306, line: 29, baseType: !346, size: 32, align: 32)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1305, file: !1306, line: 30, baseType: !402, size: 64, align: 64, offset: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !1305, file: !1306, line: 32, baseType: !346, size: 32, align: 32, offset: 128)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !1305, file: !1306, line: 32, baseType: !346, size: 32, align: 32, offset: 160)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !1305, file: !1306, line: 34, baseType: !367, size: 64, align: 64, offset: 192)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1305, file: !1306, line: 35, baseType: !805, size: 64, align: 64, offset: 256)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "active_server", scope: !1305, file: !1306, line: 36, baseType: !479, size: 64, align: 64, offset: 320)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "connect_server", scope: !1305, file: !1306, line: 37, baseType: !479, size: 64, align: 64, offset: 384)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !1305, file: !1306, line: 38, baseType: !402, size: 64, align: 64, offset: 448)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1305, file: !1306, line: 40, baseType: !346, size: 32, align: 32, offset: 512)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "bound_items", scope: !1305, file: !1306, line: 41, baseType: !367, size: 64, align: 64, offset: 576)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "immortal", scope: !1305, file: !1306, line: 43, baseType: !556, size: 1, align: 32, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "sticky_refnum", scope: !1305, file: !1306, line: 44, baseType: !556, size: 1, align: 32, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !1305, file: !1306, line: 45, baseType: !556, size: 1, align: 32, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !1305, file: !1306, line: 48, baseType: !1323, size: 64, align: 64, offset: 704)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64, align: 64)
!1324 = !DIDerivedType(tag: DW_TAG_typedef, name: "HISTORY_REC", file: !1325, line: 14, baseType: !1326)
!1325 = !DIFile(filename: "command-history.h", directory: "/home/lichi/Desktop/irssi/task1")
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1325, line: 6, size: 256, align: 64, elements: !1327)
!1327 = !{!1328, !1329, !1338, !1339, !1340}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1326, file: !1325, line: 7, baseType: !402, size: 64, align: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1326, file: !1325, line: 9, baseType: !1330, size: 64, align: 64, offset: 64)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64, align: 64)
!1331 = !DIDerivedType(tag: DW_TAG_typedef, name: "GList", file: !1332, line: 37, baseType: !1333)
!1332 = !DIFile(filename: "/usr/include/glib-2.0/glib/glist.h", directory: "/home/lichi/Desktop/irssi/task1")
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GList", file: !1332, line: 39, size: 192, align: 64, elements: !1334)
!1334 = !{!1335, !1336, !1337}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1333, file: !1332, line: 41, baseType: !357, size: 64, align: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1333, file: !1332, line: 42, baseType: !1330, size: 64, align: 64, offset: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1333, file: !1332, line: 43, baseType: !1330, size: 64, align: 64, offset: 128)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "lines", scope: !1326, file: !1325, line: 10, baseType: !346, size: 32, align: 32, offset: 128)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1326, file: !1325, line: 12, baseType: !346, size: 32, align: 32, offset: 160)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "redo", scope: !1326, file: !1325, line: 13, baseType: !346, size: 1, align: 32, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "history_name", scope: !1305, file: !1306, line: 49, baseType: !402, size: 64, align: 64, offset: 768)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !1305, file: !1306, line: 51, baseType: !346, size: 32, align: 32, offset: 832)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !1305, file: !1306, line: 52, baseType: !402, size: 64, align: 64, offset: 896)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "last_timestamp", scope: !1305, file: !1306, line: 54, baseType: !706, size: 64, align: 64, offset: 960)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "last_line", scope: !1305, file: !1306, line: 55, baseType: !706, size: 64, align: 64, offset: 1024)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "theme_name", scope: !1305, file: !1306, line: 57, baseType: !402, size: 64, align: 64, offset: 1088)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "theme", scope: !1305, file: !1306, line: 58, baseType: !340, size: 64, align: 64, offset: 1152)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "gui_data", scope: !1305, file: !1306, line: 60, baseType: !340, size: 64, align: 64, offset: 1216)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !1300, file: !1299, line: 52, baseType: !479, size: 64, align: 64, offset: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "server_tag", scope: !1300, file: !1299, line: 53, baseType: !359, size: 64, align: 64, offset: 128)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1300, file: !1299, line: 54, baseType: !359, size: 64, align: 64, offset: 192)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !1300, file: !1299, line: 55, baseType: !359, size: 64, align: 64, offset: 256)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1300, file: !1299, line: 56, baseType: !359, size: 64, align: 64, offset: 320)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1300, file: !1299, line: 57, baseType: !346, size: 32, align: 32, offset: 384)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_priority", scope: !1300, file: !1299, line: 59, baseType: !346, size: 32, align: 32, offset: 416)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !1300, file: !1299, line: 60, baseType: !402, size: 64, align: 64, offset: 448)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1300, file: !1299, line: 61, baseType: !346, size: 32, align: 32, offset: 512)
!1358 = !DILocalVariable(name: "array", arg: 1, scope: !1293, file: !382, line: 471, type: !780)
!1359 = !DILocation(line: 471, column: 36, scope: !1293)
!1360 = !DILocalVariable(name: "dest", arg: 2, scope: !1293, file: !382, line: 471, type: !1296)
!1361 = !DILocation(line: 471, column: 64, scope: !1293)
!1362 = !DILocalVariable(name: "item", scope: !1293, file: !382, line: 473, type: !805)
!1363 = !DILocation(line: 473, column: 15, scope: !1293)
!1364 = !DILocalVariable(name: "server_tag_len", scope: !1293, file: !382, line: 474, type: !346)
!1365 = !DILocation(line: 474, column: 6, scope: !1293)
!1366 = !DILocalVariable(name: "channel_type", scope: !1293, file: !382, line: 474, type: !346)
!1367 = !DILocation(line: 474, column: 22, scope: !1293)
!1368 = !DILocalVariable(name: "query_type", scope: !1293, file: !382, line: 474, type: !346)
!1369 = !DILocation(line: 474, column: 36, scope: !1293)
!1370 = !DILocalVariable(name: "tmp", scope: !1293, file: !382, line: 475, type: !780)
!1371 = !DILocation(line: 475, column: 9, scope: !1293)
!1372 = !DILocation(line: 477, column: 17, scope: !1293)
!1373 = !DILocation(line: 477, column: 15, scope: !1293)
!1374 = !DILocation(line: 478, column: 15, scope: !1293)
!1375 = !DILocation(line: 478, column: 13, scope: !1293)
!1376 = !DILocation(line: 480, column: 2, scope: !1293)
!1377 = distinct !{!1377, !1376}
!1378 = !DILocation(line: 480, column: 10, scope: !1379)
!1379 = !DILexicalBlockFile(scope: !1380, file: !382, discriminator: 1)
!1380 = distinct !DILexicalBlock(scope: !1381, file: !382, line: 480, column: 10)
!1381 = distinct !DILexicalBlock(scope: !1293, file: !382, line: 480, column: 4)
!1382 = !DILocation(line: 480, column: 16, scope: !1379)
!1383 = !DILocation(line: 480, column: 5, scope: !1384)
!1384 = !DILexicalBlockFile(scope: !1385, file: !382, discriminator: 2)
!1385 = distinct !DILexicalBlock(scope: !1380, file: !382, line: 480, column: 3)
!1386 = !DILocation(line: 480, column: 14, scope: !1387)
!1387 = !DILexicalBlockFile(scope: !1388, file: !382, discriminator: 3)
!1388 = distinct !DILexicalBlock(scope: !1380, file: !382, line: 480, column: 12)
!1389 = !DILocation(line: 480, column: 100, scope: !1387)
!1390 = !DILocation(line: 480, column: 117, scope: !1391)
!1391 = !DILexicalBlockFile(scope: !1381, file: !382, discriminator: 4)
!1392 = !DILocation(line: 481, column: 2, scope: !1293)
!1393 = distinct !{!1393, !1392}
!1394 = !DILocation(line: 481, column: 10, scope: !1395)
!1395 = !DILexicalBlockFile(scope: !1396, file: !382, discriminator: 1)
!1396 = distinct !DILexicalBlock(scope: !1397, file: !382, line: 481, column: 10)
!1397 = distinct !DILexicalBlock(scope: !1293, file: !382, line: 481, column: 4)
!1398 = !DILocation(line: 481, column: 15, scope: !1395)
!1399 = !DILocation(line: 481, column: 5, scope: !1400)
!1400 = !DILexicalBlockFile(scope: !1401, file: !382, discriminator: 2)
!1401 = distinct !DILexicalBlock(scope: !1396, file: !382, line: 481, column: 3)
!1402 = !DILocation(line: 481, column: 14, scope: !1403)
!1403 = !DILexicalBlockFile(scope: !1404, file: !382, discriminator: 3)
!1404 = distinct !DILexicalBlock(scope: !1396, file: !382, line: 481, column: 12)
!1405 = !DILocation(line: 481, column: 99, scope: !1403)
!1406 = !DILocation(line: 481, column: 116, scope: !1407)
!1407 = !DILexicalBlockFile(scope: !1397, file: !382, discriminator: 4)
!1408 = !DILocation(line: 482, column: 2, scope: !1293)
!1409 = distinct !{!1409, !1408}
!1410 = !DILocation(line: 482, column: 10, scope: !1411)
!1411 = !DILexicalBlockFile(scope: !1412, file: !382, discriminator: 1)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !382, line: 482, column: 10)
!1413 = distinct !DILexicalBlock(scope: !1293, file: !382, line: 482, column: 4)
!1414 = !DILocation(line: 482, column: 16, scope: !1411)
!1415 = !DILocation(line: 482, column: 23, scope: !1411)
!1416 = !DILocation(line: 482, column: 5, scope: !1417)
!1417 = !DILexicalBlockFile(scope: !1418, file: !382, discriminator: 2)
!1418 = distinct !DILexicalBlock(scope: !1412, file: !382, line: 482, column: 3)
!1419 = !DILocation(line: 482, column: 14, scope: !1420)
!1420 = !DILexicalBlockFile(scope: !1421, file: !382, discriminator: 3)
!1421 = distinct !DILexicalBlock(scope: !1412, file: !382, line: 482, column: 12)
!1422 = !DILocation(line: 482, column: 107, scope: !1420)
!1423 = !DILocation(line: 482, column: 124, scope: !1424)
!1424 = !DILexicalBlockFile(scope: !1413, file: !382, discriminator: 4)
!1425 = !DILocation(line: 483, column: 2, scope: !1293)
!1426 = distinct !{!1426, !1425}
!1427 = !DILocation(line: 483, column: 10, scope: !1428)
!1428 = !DILexicalBlockFile(scope: !1429, file: !382, discriminator: 1)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !382, line: 483, column: 10)
!1430 = distinct !DILexicalBlock(scope: !1293, file: !382, line: 483, column: 4)
!1431 = !DILocation(line: 483, column: 16, scope: !1428)
!1432 = !DILocation(line: 483, column: 23, scope: !1428)
!1433 = !DILocation(line: 483, column: 5, scope: !1434)
!1434 = !DILexicalBlockFile(scope: !1435, file: !382, discriminator: 2)
!1435 = distinct !DILexicalBlock(scope: !1429, file: !382, line: 483, column: 3)
!1436 = !DILocation(line: 483, column: 14, scope: !1437)
!1437 = !DILexicalBlockFile(scope: !1438, file: !382, discriminator: 3)
!1438 = distinct !DILexicalBlock(scope: !1429, file: !382, line: 483, column: 12)
!1439 = !DILocation(line: 483, column: 107, scope: !1437)
!1440 = !DILocation(line: 483, column: 124, scope: !1441)
!1441 = !DILexicalBlockFile(scope: !1430, file: !382, discriminator: 4)
!1442 = !DILocation(line: 485, column: 33, scope: !1293)
!1443 = !DILocation(line: 485, column: 39, scope: !1293)
!1444 = !DILocation(line: 485, column: 47, scope: !1293)
!1445 = !DILocation(line: 485, column: 53, scope: !1293)
!1446 = !DILocation(line: 485, column: 61, scope: !1293)
!1447 = !DILocation(line: 485, column: 67, scope: !1293)
!1448 = !DILocation(line: 485, column: 9, scope: !1293)
!1449 = !DILocation(line: 485, column: 7, scope: !1293)
!1450 = !DILocation(line: 486, column: 6, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1293, file: !382, line: 486, column: 6)
!1452 = !DILocation(line: 486, column: 11, scope: !1451)
!1453 = !DILocation(line: 486, column: 6, scope: !1293)
!1454 = !DILocation(line: 487, column: 3, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1451, file: !382, line: 486, column: 19)
!1456 = !DILocation(line: 490, column: 19, scope: !1293)
!1457 = !DILocation(line: 490, column: 25, scope: !1293)
!1458 = !DILocation(line: 490, column: 36, scope: !1293)
!1459 = !DILocation(line: 490, column: 52, scope: !1460)
!1460 = !DILexicalBlockFile(scope: !1293, file: !382, discriminator: 1)
!1461 = !DILocation(line: 490, column: 58, scope: !1460)
!1462 = !DILocation(line: 490, column: 45, scope: !1460)
!1463 = !DILocation(line: 490, column: 19, scope: !1460)
!1464 = !DILocation(line: 490, column: 19, scope: !1465)
!1465 = !DILexicalBlockFile(scope: !1293, file: !382, discriminator: 2)
!1466 = !DILocation(line: 490, column: 19, scope: !1467)
!1467 = !DILexicalBlockFile(scope: !1293, file: !382, discriminator: 3)
!1468 = !DILocation(line: 490, column: 17, scope: !1467)
!1469 = !DILocation(line: 491, column: 13, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1293, file: !382, line: 491, column: 2)
!1471 = !DILocation(line: 491, column: 11, scope: !1470)
!1472 = !DILocation(line: 491, column: 7, scope: !1470)
!1473 = !DILocation(line: 491, column: 21, scope: !1474)
!1474 = !DILexicalBlockFile(scope: !1475, file: !382, discriminator: 1)
!1475 = distinct !DILexicalBlock(scope: !1470, file: !382, line: 491, column: 2)
!1476 = !DILocation(line: 491, column: 20, scope: !1474)
!1477 = !DILocation(line: 491, column: 25, scope: !1474)
!1478 = !DILocation(line: 491, column: 2, scope: !1474)
!1479 = !DILocalVariable(name: "str", scope: !1480, file: !382, line: 492, type: !402)
!1480 = distinct !DILexicalBlock(scope: !1475, file: !382, line: 491, column: 40)
!1481 = !DILocation(line: 492, column: 9, scope: !1480)
!1482 = !DILocation(line: 492, column: 16, scope: !1480)
!1483 = !DILocation(line: 492, column: 15, scope: !1480)
!1484 = !DILocation(line: 493, column: 8, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1480, file: !382, line: 493, column: 7)
!1486 = !DILocation(line: 493, column: 7, scope: !1485)
!1487 = !DILocation(line: 493, column: 12, scope: !1485)
!1488 = !DILocation(line: 493, column: 7, scope: !1480)
!1489 = !DILocation(line: 494, column: 4, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1485, file: !382, line: 493, column: 21)
!1491 = !DILocation(line: 497, column: 7, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1480, file: !382, line: 497, column: 7)
!1493 = !DILocation(line: 497, column: 22, scope: !1492)
!1494 = !DILocation(line: 498, column: 27, scope: !1492)
!1495 = !DILocation(line: 498, column: 32, scope: !1492)
!1496 = !DILocation(line: 498, column: 38, scope: !1492)
!1497 = !DILocation(line: 498, column: 50, scope: !1492)
!1498 = !DILocation(line: 498, column: 7, scope: !1492)
!1499 = !DILocation(line: 498, column: 66, scope: !1492)
!1500 = !DILocation(line: 498, column: 71, scope: !1492)
!1501 = !DILocation(line: 499, column: 11, scope: !1492)
!1502 = !DILocation(line: 499, column: 7, scope: !1492)
!1503 = !DILocation(line: 499, column: 27, scope: !1492)
!1504 = !DILocation(line: 497, column: 7, scope: !1505)
!1505 = !DILexicalBlockFile(scope: !1480, file: !382, discriminator: 1)
!1506 = !DILocation(line: 500, column: 11, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1492, file: !382, line: 499, column: 35)
!1508 = !DILocation(line: 500, column: 26, scope: !1507)
!1509 = !DILocation(line: 500, column: 8, scope: !1507)
!1510 = !DILocation(line: 501, column: 3, scope: !1507)
!1511 = !DILocation(line: 503, column: 17, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1480, file: !382, line: 503, column: 7)
!1513 = !DILocation(line: 503, column: 7, scope: !1512)
!1514 = !DILocation(line: 503, column: 26, scope: !1512)
!1515 = !DILocation(line: 503, column: 31, scope: !1512)
!1516 = !DILocation(line: 503, column: 44, scope: !1517)
!1517 = !DILexicalBlockFile(scope: !1512, file: !382, discriminator: 1)
!1518 = !DILocation(line: 503, column: 34, scope: !1517)
!1519 = !DILocation(line: 503, column: 58, scope: !1517)
!1520 = !DILocation(line: 503, column: 7, scope: !1517)
!1521 = !DILocation(line: 504, column: 4, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1512, file: !382, line: 503, column: 64)
!1523 = !DILocation(line: 505, column: 33, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1512, file: !382, line: 505, column: 14)
!1525 = !DILocation(line: 505, column: 38, scope: !1524)
!1526 = !DILocation(line: 505, column: 44, scope: !1524)
!1527 = !DILocation(line: 505, column: 14, scope: !1524)
!1528 = !DILocation(line: 505, column: 52, scope: !1524)
!1529 = !DILocation(line: 505, column: 14, scope: !1512)
!1530 = !DILocation(line: 506, column: 4, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1524, file: !382, line: 505, column: 58)
!1532 = !DILocation(line: 507, column: 14, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1524, file: !382, line: 507, column: 14)
!1534 = !DILocation(line: 507, column: 20, scope: !1533)
!1535 = !DILocation(line: 507, column: 28, scope: !1533)
!1536 = !DILocation(line: 507, column: 25, scope: !1533)
!1537 = !DILocation(line: 507, column: 39, scope: !1533)
!1538 = !DILocation(line: 508, column: 24, scope: !1533)
!1539 = !DILocation(line: 508, column: 29, scope: !1533)
!1540 = !DILocation(line: 508, column: 35, scope: !1533)
!1541 = !DILocation(line: 508, column: 45, scope: !1533)
!1542 = !DILocation(line: 508, column: 14, scope: !1533)
!1543 = !DILocation(line: 509, column: 30, scope: !1533)
!1544 = !DILocation(line: 507, column: 14, scope: !1545)
!1545 = !DILexicalBlockFile(scope: !1524, file: !382, discriminator: 1)
!1546 = !DILocation(line: 510, column: 4, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1533, file: !382, line: 509, column: 36)
!1548 = !DILocation(line: 511, column: 14, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1533, file: !382, line: 511, column: 14)
!1550 = !DILocation(line: 511, column: 20, scope: !1549)
!1551 = !DILocation(line: 511, column: 28, scope: !1549)
!1552 = !DILocation(line: 511, column: 25, scope: !1549)
!1553 = !DILocation(line: 511, column: 41, scope: !1549)
!1554 = !DILocation(line: 512, column: 17, scope: !1549)
!1555 = !DILocation(line: 512, column: 7, scope: !1549)
!1556 = !DILocation(line: 512, column: 36, scope: !1549)
!1557 = !DILocation(line: 511, column: 14, scope: !1558)
!1558 = !DILexicalBlockFile(scope: !1533, file: !382, discriminator: 1)
!1559 = !DILocation(line: 513, column: 4, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1549, file: !382, line: 512, column: 42)
!1561 = !DILocation(line: 515, column: 2, scope: !1480)
!1562 = !DILocation(line: 491, column: 36, scope: !1563)
!1563 = !DILexicalBlockFile(scope: !1475, file: !382, discriminator: 2)
!1564 = !DILocation(line: 491, column: 2, scope: !1563)
!1565 = distinct !{!1565, !1566}
!1566 = !DILocation(line: 491, column: 2, scope: !1293)
!1567 = !DILocation(line: 517, column: 2, scope: !1293)
!1568 = !DILocation(line: 518, column: 1, scope: !1293)
!1569 = distinct !DISubprogram(name: "create_windows", scope: !382, file: !382, line: 284, type: !383, isLocal: true, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !385)
!1570 = !DILocalVariable(name: "window", scope: !1569, file: !382, line: 286, type: !1303)
!1571 = !DILocation(line: 286, column: 14, scope: !1569)
!1572 = !DILocalVariable(name: "have_status", scope: !1569, file: !382, line: 287, type: !346)
!1573 = !DILocation(line: 287, column: 6, scope: !1569)
!1574 = !DILocation(line: 287, column: 20, scope: !1569)
!1575 = !DILocation(line: 289, column: 11, scope: !1569)
!1576 = !DILocation(line: 289, column: 9, scope: !1569)
!1577 = !DILocation(line: 290, column: 6, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1569, file: !382, line: 290, column: 6)
!1579 = !DILocation(line: 290, column: 6, scope: !1569)
!1580 = !DILocation(line: 291, column: 7, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1582, file: !382, line: 291, column: 7)
!1582 = distinct !DILexicalBlock(scope: !1578, file: !382, line: 290, column: 19)
!1583 = !DILocation(line: 291, column: 14, scope: !1581)
!1584 = !DILocation(line: 291, column: 7, scope: !1582)
!1585 = !DILocation(line: 292, column: 13, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1581, file: !382, line: 291, column: 22)
!1587 = !DILocation(line: 292, column: 11, scope: !1586)
!1588 = !DILocation(line: 293, column: 22, scope: !1586)
!1589 = !DILocation(line: 293, column: 4, scope: !1586)
!1590 = !DILocation(line: 294, column: 20, scope: !1586)
!1591 = !DILocation(line: 294, column: 4, scope: !1586)
!1592 = !DILocation(line: 295, column: 21, scope: !1586)
!1593 = !DILocation(line: 296, column: 8, scope: !1586)
!1594 = !DILocation(line: 295, column: 42, scope: !1586)
!1595 = !DILocation(line: 295, column: 4, scope: !1586)
!1596 = !DILocation(line: 298, column: 24, scope: !1586)
!1597 = !DILocation(line: 298, column: 4, scope: !1586)
!1598 = !DILocation(line: 299, column: 3, scope: !1586)
!1599 = !DILocation(line: 300, column: 2, scope: !1582)
!1600 = !DILocation(line: 301, column: 7, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !382, line: 301, column: 7)
!1602 = distinct !DILexicalBlock(scope: !1578, file: !382, line: 300, column: 9)
!1603 = !DILocation(line: 301, column: 14, scope: !1601)
!1604 = !DILocation(line: 301, column: 7, scope: !1602)
!1605 = !DILocation(line: 302, column: 20, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1601, file: !382, line: 301, column: 22)
!1607 = !DILocation(line: 302, column: 4, scope: !1606)
!1608 = !DILocation(line: 303, column: 21, scope: !1606)
!1609 = !DILocation(line: 303, column: 4, scope: !1606)
!1610 = !DILocation(line: 304, column: 24, scope: !1606)
!1611 = !DILocation(line: 304, column: 4, scope: !1606)
!1612 = !DILocation(line: 305, column: 3, scope: !1606)
!1613 = !DILocation(line: 308, column: 11, scope: !1569)
!1614 = !DILocation(line: 308, column: 9, scope: !1569)
!1615 = !DILocation(line: 309, column: 6, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1569, file: !382, line: 309, column: 6)
!1617 = !DILocation(line: 309, column: 6, scope: !1569)
!1618 = !DILocation(line: 310, column: 7, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1620, file: !382, line: 310, column: 7)
!1620 = distinct !DILexicalBlock(scope: !1616, file: !382, line: 309, column: 44)
!1621 = !DILocation(line: 310, column: 14, scope: !1619)
!1622 = !DILocation(line: 310, column: 7, scope: !1620)
!1623 = !DILocation(line: 311, column: 13, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1619, file: !382, line: 310, column: 22)
!1625 = !DILocation(line: 311, column: 11, scope: !1624)
!1626 = !DILocation(line: 312, column: 22, scope: !1624)
!1627 = !DILocation(line: 312, column: 30, scope: !1624)
!1628 = !DILocation(line: 312, column: 4, scope: !1624)
!1629 = !DILocation(line: 313, column: 20, scope: !1624)
!1630 = !DILocation(line: 313, column: 4, scope: !1624)
!1631 = !DILocation(line: 314, column: 21, scope: !1624)
!1632 = !DILocation(line: 314, column: 4, scope: !1624)
!1633 = !DILocation(line: 315, column: 24, scope: !1624)
!1634 = !DILocation(line: 315, column: 4, scope: !1624)
!1635 = !DILocation(line: 316, column: 3, scope: !1624)
!1636 = !DILocation(line: 317, column: 2, scope: !1620)
!1637 = !DILocation(line: 318, column: 7, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !382, line: 318, column: 7)
!1639 = distinct !DILexicalBlock(scope: !1616, file: !382, line: 317, column: 9)
!1640 = !DILocation(line: 318, column: 14, scope: !1638)
!1641 = !DILocation(line: 318, column: 7, scope: !1639)
!1642 = !DILocation(line: 319, column: 20, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1638, file: !382, line: 318, column: 22)
!1644 = !DILocation(line: 319, column: 4, scope: !1643)
!1645 = !DILocation(line: 320, column: 21, scope: !1643)
!1646 = !DILocation(line: 320, column: 4, scope: !1643)
!1647 = !DILocation(line: 321, column: 24, scope: !1643)
!1648 = !DILocation(line: 321, column: 4, scope: !1643)
!1649 = !DILocation(line: 322, column: 3, scope: !1643)
!1650 = !DILocation(line: 325, column: 6, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1569, file: !382, line: 325, column: 6)
!1652 = !DILocation(line: 325, column: 14, scope: !1651)
!1653 = !DILocation(line: 325, column: 6, scope: !1569)
!1654 = !DILocation(line: 327, column: 26, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1651, file: !382, line: 325, column: 22)
!1656 = !DILocation(line: 327, column: 24, scope: !1655)
!1657 = !DILocation(line: 328, column: 2, scope: !1655)
!1658 = !DILocation(line: 329, column: 1, scope: !1569)
