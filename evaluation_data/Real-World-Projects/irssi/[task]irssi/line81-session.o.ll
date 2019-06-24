; ModuleID = './line81-session.o.i'
source_filename = "./line81-session.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._GOptionEntry = type { i8*, i8, i32, i32, i8*, i8*, i8* }
%struct._GSList = type { i8*, %struct._GSList* }
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
%struct._GSourcePrivate = type opaque
%struct._GIConv = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._SERVER_REC = type { i32, i32, i32, %struct._SERVER_CONNECT_REC*, i64, i64, i8*, i8*, i8, %struct._NET_SENDBUF_REC*, i32, [2 x %struct._GIOChannel*], i32, i32, %struct._RAWLOG_REC*, %struct._GHashTable*, i8*, i8*, i8*, i8, %struct._GTimeVal, i64, i32, %struct._GSList*, %struct._GSList*, void (%struct._SERVER_REC*, i8*, i32)*, i32 (%struct._SERVER_REC*, i8)*, i32 (%struct._SERVER_REC*, i8*)*, i8* (%struct._SERVER_REC*)*, void (%struct._SERVER_REC*, i8*, i8*, i32)*, i8** (%struct._SERVER_REC*, i8*, i8*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)*, %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)* }
%struct._SERVER_CONNECT_REC = type { i32, i32, i32, i8*, i32, i8*, i8*, i8*, i16, i8*, i8*, i32, i8*, %struct._IPADDR*, %struct._IPADDR*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._GIOChannel*, i8, i8*, i8* }
%struct._IPADDR = type { i16, %struct.in6_addr }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct._NET_SENDBUF_REC = type { %struct._GIOChannel*, %struct._LINEBUF_REC*, i32, i32, i32, i8*, i32, i8 }
%struct._LINEBUF_REC = type opaque
%struct._RAWLOG_REC = type opaque
%struct._GTimeVal = type { i64, i64 }
%struct._CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)* }
%struct._WI_ITEM_REC = type opaque
%struct._NICK_REC = type { i32, i32, i64, i8*, i8*, i8*, i32, i8, [8 x i8], i8*, %struct._NICK_REC* }
%struct._QUERY_REC = type opaque
%struct._CHAT_PROTOCOL_REC = type { i32, i8, i8*, i8*, i8*, %struct._CHATNET_REC* ()*, %struct._SERVER_SETUP_REC* ()*, %struct._CHANNEL_SETUP_REC* ()*, %struct._SERVER_CONNECT_REC* ()*, void (%struct._SERVER_CONNECT_REC*)*, %struct._SERVER_REC* (%struct._SERVER_CONNECT_REC*)*, void (%struct._SERVER_REC*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*, i8*, i32)*, %struct._QUERY_REC* (i8*, i8*, i32)* }
%struct._CHATNET_REC = type opaque
%struct._SERVER_SETUP_REC = type { i32, i32, i8*, i16, i8*, i32, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IPADDR*, %struct._IPADDR*, i64, i8, %struct._GHashTable* }
%struct._CHANNEL_SETUP_REC = type opaque

@irssi_binary = global i8* null, align 8
@session_args = internal global i8** null, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [21 x i8] c"exec failed: %s: %s\0A\00", align 1
@session_register_options.options = internal global [2 x %struct._GOptionEntry] [%struct._GOptionEntry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8 0, i32 1, i32 1, i8* bitcast (i8** @session_file to i8*), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0) }, %struct._GOptionEntry zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [8 x i8] c"session\00", align 1
@session_file = internal global i8* null, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"Used by /UPGRADE command\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"upgrade\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"session save\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"session restore\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"session save server\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"session restore server\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"session save channel\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"session restore channel\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"irssi init finished\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"error command\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"%s/session\00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"%s --noconnect --session=%s --home=%s --config=%s\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"gui exit\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"(servers\00", align 1
@servers = external global %struct._GSList*, align 8
@.str.19 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"pids\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"chat_type\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"address\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"chatnet\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"nick\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"use_tls\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"tls_cert\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"tls_pkey\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"tls_verify\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"tls_cafile\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"tls_capath\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"tls_ciphers\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"tls_pinned_cert\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"tls_pinned_pubkey\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"handle\00", align 1
@.str.38 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"channels\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"visible_name\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"topic\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"topic_by\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"topic_time\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"nicks\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"op\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"halfop\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"voice\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"prefixes\00", align 1
@.str.51 = private unnamed_addr constant [18 x i8] c"session save nick\00", align 1
@.str.52 = private unnamed_addr constant [21 x i8] c"session restore nick\00", align 1

; Function Attrs: nounwind uwtable
define void @session_set_binary(i8*) #0 !dbg !151 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !156, metadata !157), !dbg !158
  br label %3, !dbg !159, !llvm.loop !160

; <label>:3:                                      ; preds = %1
  %4 = load i8*, i8** @irssi_binary, align 8, !dbg !161
  %5 = icmp ne i8* %4, null, !dbg !161
  br i1 %5, label %6, label %8, !dbg !161

; <label>:6:                                      ; preds = %3
  %7 = load i8*, i8** @irssi_binary, align 8, !dbg !165
  call void @g_free(i8* %7), !dbg !168
  store i8* null, i8** @irssi_binary, align 8, !dbg !169
  br label %8, !dbg !170

; <label>:8:                                      ; preds = %6, %3
  br label %9, !dbg !171

; <label>:9:                                      ; preds = %8
  %10 = load i8*, i8** %2, align 8, !dbg !173
  %11 = call i8* @g_find_program_in_path(i8* %10), !dbg !174
  store i8* %11, i8** @irssi_binary, align 8, !dbg !175
  ret void, !dbg !176
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @g_free(i8*) #2

declare i8* @g_find_program_in_path(i8*) #2

; Function Attrs: nounwind uwtable
define void @session_upgrade() #0 !dbg !177 {
  %1 = load i8**, i8*** @session_args, align 8, !dbg !178
  %2 = icmp eq i8** %1, null, !dbg !180
  br i1 %2, label %3, label %4, !dbg !181

; <label>:3:                                      ; preds = %0
  br label %18, !dbg !182

; <label>:4:                                      ; preds = %0
  %5 = load i8**, i8*** @session_args, align 8, !dbg !183
  %6 = getelementptr inbounds i8*, i8** %5, i64 0, !dbg !183
  %7 = load i8*, i8** %6, align 8, !dbg !183
  %8 = load i8**, i8*** @session_args, align 8, !dbg !184
  %9 = call i32 @execv(i8* %7, i8** %8) #6, !dbg !185
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !186
  %11 = load i8**, i8*** @session_args, align 8, !dbg !187
  %12 = getelementptr inbounds i8*, i8** %11, i64 0, !dbg !187
  %13 = load i8*, i8** %12, align 8, !dbg !187
  %14 = call i32* @__errno_location() #1, !dbg !188
  %15 = load i32, i32* %14, align 4, !dbg !189
  %16 = call i8* @g_strerror(i32 %15) #1, !dbg !190
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i8* %13, i8* %16), !dbg !192
  br label %18, !dbg !193

; <label>:18:                                     ; preds = %4, %3
  ret void, !dbg !194
}

; Function Attrs: nounwind
declare i32 @execv(i8*, i8**) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

; Function Attrs: nounwind uwtable
define void @session_register_options() #0 !dbg !124 {
  store i8* null, i8** @session_file, align 8, !dbg !195
  call void @args_register(%struct._GOptionEntry* getelementptr inbounds ([2 x %struct._GOptionEntry], [2 x %struct._GOptionEntry]* @session_register_options.options, i32 0, i32 0)), !dbg !196
  ret void, !dbg !197
}

declare void @args_register(%struct._GOptionEntry*) #2

; Function Attrs: nounwind uwtable
define void @session_init() #0 !dbg !198 {
  call void @command_bind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_upgrade to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !199
  call void @signal_add_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CONFIG_REC*)* @sig_session_save to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !200
  call void @signal_add_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CONFIG_REC*)* @sig_session_restore to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !201
  call void @signal_add_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, %struct._CONFIG_REC*, %struct._CONFIG_NODE*)* @session_save_server_channels to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !202
  call void @signal_add_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, %struct._CONFIG_NODE*)* @session_restore_server_channels to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !203
  call void @signal_add_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CHANNEL_REC*, %struct._CONFIG_REC*, %struct._CONFIG_NODE*)* @session_save_channel_nicks to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !204
  call void @signal_add_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CHANNEL_REC*, %struct._CONFIG_NODE*)* @session_restore_channel_nicks to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !205
  call void @signal_add_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_init_finished to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !206
  ret void, !dbg !207
}

declare void @command_bind_full(i8*, i32, i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @cmd_upgrade(i8*) #0 !dbg !208 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._CONFIG_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !209, metadata !157), !dbg !210
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %3, metadata !211, metadata !157), !dbg !499
  call void @llvm.dbg.declare(metadata i8** %4, metadata !500, metadata !157), !dbg !501
  call void @llvm.dbg.declare(metadata i8** %5, metadata !502, metadata !157), !dbg !503
  call void @llvm.dbg.declare(metadata i8** %6, metadata !504, metadata !157), !dbg !505
  %7 = load i8*, i8** %2, align 8, !dbg !506
  %8 = load i8, i8* %7, align 1, !dbg !508
  %9 = sext i8 %8 to i32, !dbg !508
  %10 = icmp eq i32 %9, 0, !dbg !509
  br i1 %10, label %11, label %13, !dbg !510

; <label>:11:                                     ; preds = %1
  %12 = load i8*, i8** @irssi_binary, align 8, !dbg !511
  store i8* %12, i8** %2, align 8, !dbg !512
  br label %13, !dbg !513

; <label>:13:                                     ; preds = %11, %1
  %14 = load i8*, i8** %2, align 8, !dbg !514
  %15 = call i8* @g_find_program_in_path(i8* %14), !dbg !516
  store i8* %15, i8** %6, align 8, !dbg !517
  %16 = icmp eq i8* %15, null, !dbg !518
  br i1 %16, label %17, label %21, !dbg !519

; <label>:17:                                     ; preds = %13
  br label %18, !dbg !520, !llvm.loop !521

; <label>:18:                                     ; preds = %17
  %19 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i32 1, i8* inttoptr (i64 13 to i8*)), !dbg !522
  call void @signal_stop(), !dbg !525
  br label %44, !dbg !527
                                                  ; No predecessors!
  br label %21, !dbg !528

; <label>:21:                                     ; preds = %20, %13
  %22 = call i8* @get_irssi_dir(), !dbg !530
  %23 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i8* %22), !dbg !531
  store i8* %23, i8** %4, align 8, !dbg !533
  %24 = load i8*, i8** %4, align 8, !dbg !534
  %25 = call %struct._CONFIG_REC* @config_open(i8* %24, i32 384), !dbg !535
  store %struct._CONFIG_REC* %25, %struct._CONFIG_REC** %3, align 8, !dbg !536
  %26 = load i8*, i8** %4, align 8, !dbg !537
  %27 = call i32 @unlink(i8* %26) #6, !dbg !538
  %28 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %3, align 8, !dbg !539
  %29 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i32 1, %struct._CONFIG_REC* %28), !dbg !540
  %30 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %3, align 8, !dbg !541
  %31 = call i32 @config_write(%struct._CONFIG_REC* %30, i8* null, i32 -1), !dbg !542
  %32 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %3, align 8, !dbg !543
  call void @config_close(%struct._CONFIG_REC* %32), !dbg !544
  %33 = load i8*, i8** %6, align 8, !dbg !545
  %34 = load i8*, i8** %4, align 8, !dbg !546
  %35 = call i8* @get_irssi_dir(), !dbg !547
  %36 = call i8* @get_irssi_config(), !dbg !548
  %37 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.15, i32 0, i32 0), i8* %33, i8* %34, i8* %35, i8* %36), !dbg !549
  store i8* %37, i8** %5, align 8, !dbg !550
  %38 = load i8*, i8** %6, align 8, !dbg !551
  call void @g_free(i8* %38), !dbg !552
  %39 = load i8*, i8** %4, align 8, !dbg !553
  call void @g_free(i8* %39), !dbg !554
  %40 = load i8*, i8** %5, align 8, !dbg !555
  %41 = call noalias i8** @g_strsplit(i8* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i32 -1), !dbg !556
  store i8** %41, i8*** @session_args, align 8, !dbg !557
  %42 = load i8*, i8** %5, align 8, !dbg !558
  call void @g_free(i8* %42), !dbg !559
  %43 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 0), !dbg !560
  br label %44, !dbg !561

; <label>:44:                                     ; preds = %21, %18
  ret void, !dbg !562
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @sig_session_save(%struct._CONFIG_REC*) #0 !dbg !563 {
  %2 = alloca %struct._CONFIG_REC*, align 8
  %3 = alloca %struct._CONFIG_NODE*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct._GString*, align 8
  store %struct._CONFIG_REC* %0, %struct._CONFIG_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %2, metadata !566, metadata !157), !dbg !567
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %3, metadata !568, metadata !157), !dbg !569
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !570, metadata !157), !dbg !571
  call void @llvm.dbg.declare(metadata %struct._GString** %5, metadata !572, metadata !157), !dbg !573
  %6 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %2, align 8, !dbg !574
  %7 = call %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i32 1), !dbg !575
  store %struct._CONFIG_NODE* %7, %struct._CONFIG_NODE** %3, align 8, !dbg !576
  br label %8, !dbg !577

; <label>:8:                                      ; preds = %11, %1
  %9 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !578
  %10 = icmp ne %struct._GSList* %9, null, !dbg !580
  br i1 %10, label %11, label %18, !dbg !581

; <label>:11:                                     ; preds = %8
  %12 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !582
  %13 = getelementptr inbounds %struct._GSList, %struct._GSList* %12, i32 0, i32 0, !dbg !583
  %14 = load i8*, i8** %13, align 8, !dbg !583
  %15 = bitcast i8* %14 to %struct._SERVER_REC*, !dbg !582
  %16 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %2, align 8, !dbg !584
  %17 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !585
  call void @session_save_server(%struct._SERVER_REC* %15, %struct._CONFIG_REC* %16, %struct._CONFIG_NODE* %17), !dbg !586
  br label %8, !dbg !587, !llvm.loop !589

; <label>:18:                                     ; preds = %8
  %19 = call %struct._GString* @g_string_new(i8* null), !dbg !590
  store %struct._GString* %19, %struct._GString** %5, align 8, !dbg !591
  %20 = call %struct._GSList* @pidwait_get_pids(), !dbg !592
  store %struct._GSList* %20, %struct._GSList** %4, align 8, !dbg !594
  br label %21, !dbg !595

; <label>:21:                                     ; preds = %31, %18
  %22 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !596
  %23 = icmp ne %struct._GSList* %22, null, !dbg !599
  br i1 %23, label %24, label %35, !dbg !600

; <label>:24:                                     ; preds = %21
  %25 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !601
  %26 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !602
  %27 = getelementptr inbounds %struct._GSList, %struct._GSList* %26, i32 0, i32 0, !dbg !603
  %28 = load i8*, i8** %27, align 8, !dbg !603
  %29 = ptrtoint i8* %28 to i64, !dbg !604
  %30 = trunc i64 %29 to i32, !dbg !605
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), i32 %30), !dbg !606
  br label %31, !dbg !606

; <label>:31:                                     ; preds = %24
  %32 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !607
  %33 = getelementptr inbounds %struct._GSList, %struct._GSList* %32, i32 0, i32 1, !dbg !609
  %34 = load %struct._GSList*, %struct._GSList** %33, align 8, !dbg !609
  store %struct._GSList* %34, %struct._GSList** %4, align 8, !dbg !610
  br label %21, !dbg !611, !llvm.loop !612

; <label>:35:                                     ; preds = %21
  %36 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %2, align 8, !dbg !614
  %37 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %2, align 8, !dbg !615
  %38 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %37, i32 0, i32 4, !dbg !616
  %39 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %38, align 8, !dbg !616
  %40 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !617
  %41 = getelementptr inbounds %struct._GString, %struct._GString* %40, i32 0, i32 0, !dbg !618
  %42 = load i8*, i8** %41, align 8, !dbg !618
  call void @config_node_set_str(%struct._CONFIG_REC* %36, %struct._CONFIG_NODE* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* %42), !dbg !619
  %43 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !620
  %44 = call i8* @g_string_free(%struct._GString* %43, i32 1), !dbg !621
  ret void, !dbg !622
}

; Function Attrs: nounwind uwtable
define internal void @sig_session_restore(%struct._CONFIG_REC*) #0 !dbg !623 {
  %2 = alloca %struct._CONFIG_REC*, align 8
  %3 = alloca %struct._CONFIG_NODE*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  store %struct._CONFIG_REC* %0, %struct._CONFIG_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %2, metadata !624, metadata !157), !dbg !625
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %3, metadata !626, metadata !157), !dbg !627
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !628, metadata !157), !dbg !629
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !630, metadata !157), !dbg !631
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !632, metadata !157), !dbg !633
  %7 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %2, align 8, !dbg !634
  %8 = call %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i32 0), !dbg !635
  store %struct._CONFIG_NODE* %8, %struct._CONFIG_NODE** %3, align 8, !dbg !636
  %9 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !637
  %10 = icmp ne %struct._CONFIG_NODE* %9, null, !dbg !639
  br i1 %10, label %11, label %29, !dbg !640

; <label>:11:                                     ; preds = %1
  %12 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !641
  %13 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %12, i32 0, i32 2, !dbg !643
  %14 = load i8*, i8** %13, align 8, !dbg !643
  %15 = bitcast i8* %14 to %struct._GSList*, !dbg !641
  %16 = call %struct._GSList* @config_node_first(%struct._GSList* %15), !dbg !644
  store %struct._GSList* %16, %struct._GSList** %4, align 8, !dbg !645
  br label %17, !dbg !646

; <label>:17:                                     ; preds = %25, %11
  %18 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !647
  %19 = icmp ne %struct._GSList* %18, null, !dbg !651
  br i1 %19, label %20, label %28, !dbg !652

; <label>:20:                                     ; preds = %17
  %21 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !653
  %22 = getelementptr inbounds %struct._GSList, %struct._GSList* %21, i32 0, i32 0, !dbg !654
  %23 = load i8*, i8** %22, align 8, !dbg !654
  %24 = bitcast i8* %23 to %struct._CONFIG_NODE*, !dbg !653
  call void @session_restore_server(%struct._CONFIG_NODE* %24), !dbg !655
  br label %25, !dbg !655

; <label>:25:                                     ; preds = %20
  %26 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !656
  %27 = call %struct._GSList* @config_node_next(%struct._GSList* %26), !dbg !658
  store %struct._GSList* %27, %struct._GSList** %4, align 8, !dbg !659
  br label %17, !dbg !660, !llvm.loop !661

; <label>:28:                                     ; preds = %17
  br label %29, !dbg !662

; <label>:29:                                     ; preds = %28, %1
  %30 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %2, align 8, !dbg !663
  %31 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %30, i32 0, i32 4, !dbg !664
  %32 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %31, align 8, !dbg !664
  %33 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.38, i32 0, i32 0)), !dbg !665
  %34 = call noalias i8** @g_strsplit(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i32 -1), !dbg !666
  store i8** %34, i8*** %5, align 8, !dbg !668
  %35 = load i8**, i8*** %5, align 8, !dbg !669
  store i8** %35, i8*** %6, align 8, !dbg !671
  br label %36, !dbg !672

; <label>:36:                                     ; preds = %44, %29
  %37 = load i8**, i8*** %6, align 8, !dbg !673
  %38 = load i8*, i8** %37, align 8, !dbg !676
  %39 = icmp ne i8* %38, null, !dbg !677
  br i1 %39, label %40, label %47, !dbg !678

; <label>:40:                                     ; preds = %36
  %41 = load i8**, i8*** %6, align 8, !dbg !679
  %42 = load i8*, i8** %41, align 8, !dbg !680
  %43 = call i32 @atoi(i8* %42) #7, !dbg !681
  call void @pidwait_add(i32 %43), !dbg !682
  br label %44, !dbg !683

; <label>:44:                                     ; preds = %40
  %45 = load i8**, i8*** %6, align 8, !dbg !684
  %46 = getelementptr inbounds i8*, i8** %45, i32 1, !dbg !684
  store i8** %46, i8*** %6, align 8, !dbg !684
  br label %36, !dbg !686, !llvm.loop !687

; <label>:47:                                     ; preds = %36
  %48 = load i8**, i8*** %5, align 8, !dbg !689
  call void @g_strfreev(i8** %48), !dbg !690
  ret void, !dbg !691
}

; Function Attrs: nounwind uwtable
define internal void @session_save_server_channels(%struct._SERVER_REC*, %struct._CONFIG_REC*, %struct._CONFIG_NODE*) #0 !dbg !692 {
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca %struct._CONFIG_REC*, align 8
  %6 = alloca %struct._CONFIG_NODE*, align 8
  %7 = alloca %struct._GSList*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !949, metadata !157), !dbg !950
  store %struct._CONFIG_REC* %1, %struct._CONFIG_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %5, metadata !951, metadata !157), !dbg !952
  store %struct._CONFIG_NODE* %2, %struct._CONFIG_NODE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %6, metadata !953, metadata !157), !dbg !954
  call void @llvm.dbg.declare(metadata %struct._GSList** %7, metadata !955, metadata !157), !dbg !956
  %8 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !957
  %9 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !958
  %10 = call %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC* %8, %struct._CONFIG_NODE* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), i32 3), !dbg !959
  store %struct._CONFIG_NODE* %10, %struct._CONFIG_NODE** %6, align 8, !dbg !960
  %11 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !961
  %12 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %11, i32 0, i32 23, !dbg !963
  %13 = load %struct._GSList*, %struct._GSList** %12, align 8, !dbg !963
  store %struct._GSList* %13, %struct._GSList** %7, align 8, !dbg !964
  br label %14, !dbg !965

; <label>:14:                                     ; preds = %24, %3
  %15 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !966
  %16 = icmp ne %struct._GSList* %15, null, !dbg !969
  br i1 %16, label %17, label %28, !dbg !970

; <label>:17:                                     ; preds = %14
  %18 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !971
  %19 = getelementptr inbounds %struct._GSList, %struct._GSList* %18, i32 0, i32 0, !dbg !972
  %20 = load i8*, i8** %19, align 8, !dbg !972
  %21 = bitcast i8* %20 to %struct._CHANNEL_REC*, !dbg !971
  %22 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !973
  %23 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !974
  call void @session_save_channel(%struct._CHANNEL_REC* %21, %struct._CONFIG_REC* %22, %struct._CONFIG_NODE* %23), !dbg !975
  br label %24, !dbg !975

; <label>:24:                                     ; preds = %17
  %25 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !976
  %26 = getelementptr inbounds %struct._GSList, %struct._GSList* %25, i32 0, i32 1, !dbg !978
  %27 = load %struct._GSList*, %struct._GSList** %26, align 8, !dbg !978
  store %struct._GSList* %27, %struct._GSList** %7, align 8, !dbg !979
  br label %14, !dbg !980, !llvm.loop !981

; <label>:28:                                     ; preds = %14
  ret void, !dbg !983
}

; Function Attrs: nounwind uwtable
define internal void @session_restore_server_channels(%struct._SERVER_REC*, %struct._CONFIG_NODE*) #0 !dbg !984 {
  %3 = alloca %struct._SERVER_REC*, align 8
  %4 = alloca %struct._CONFIG_NODE*, align 8
  %5 = alloca %struct._GSList*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %3, metadata !987, metadata !157), !dbg !988
  store %struct._CONFIG_NODE* %1, %struct._CONFIG_NODE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %4, metadata !989, metadata !157), !dbg !990
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !991, metadata !157), !dbg !992
  %6 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !993
  %7 = call %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC* null, %struct._CONFIG_NODE* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), i32 -1), !dbg !994
  store %struct._CONFIG_NODE* %7, %struct._CONFIG_NODE** %4, align 8, !dbg !995
  %8 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !996
  %9 = icmp ne %struct._CONFIG_NODE* %8, null, !dbg !998
  br i1 %9, label %10, label %34, !dbg !999

; <label>:10:                                     ; preds = %2
  %11 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1000
  %12 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %11, i32 0, i32 0, !dbg !1002
  %13 = load i32, i32* %12, align 8, !dbg !1002
  %14 = icmp eq i32 %13, 3, !dbg !1003
  br i1 %14, label %15, label %34, !dbg !1004

; <label>:15:                                     ; preds = %10
  %16 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1005
  %17 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %16, i32 0, i32 2, !dbg !1007
  %18 = load i8*, i8** %17, align 8, !dbg !1007
  %19 = bitcast i8* %18 to %struct._GSList*, !dbg !1005
  %20 = call %struct._GSList* @config_node_first(%struct._GSList* %19), !dbg !1008
  store %struct._GSList* %20, %struct._GSList** %5, align 8, !dbg !1009
  br label %21, !dbg !1010

; <label>:21:                                     ; preds = %30, %15
  %22 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1011
  %23 = icmp ne %struct._GSList* %22, null, !dbg !1015
  br i1 %23, label %24, label %33, !dbg !1016

; <label>:24:                                     ; preds = %21
  %25 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1017
  %26 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1018
  %27 = getelementptr inbounds %struct._GSList, %struct._GSList* %26, i32 0, i32 0, !dbg !1019
  %28 = load i8*, i8** %27, align 8, !dbg !1019
  %29 = bitcast i8* %28 to %struct._CONFIG_NODE*, !dbg !1018
  call void @session_restore_channel(%struct._SERVER_REC* %25, %struct._CONFIG_NODE* %29), !dbg !1020
  br label %30, !dbg !1020

; <label>:30:                                     ; preds = %24
  %31 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1021
  %32 = call %struct._GSList* @config_node_next(%struct._GSList* %31), !dbg !1023
  store %struct._GSList* %32, %struct._GSList** %5, align 8, !dbg !1024
  br label %21, !dbg !1025, !llvm.loop !1026

; <label>:33:                                     ; preds = %21
  br label %34, !dbg !1027

; <label>:34:                                     ; preds = %33, %10, %2
  ret void, !dbg !1028
}

; Function Attrs: nounwind uwtable
define internal void @session_save_channel_nicks(%struct._CHANNEL_REC*, %struct._CONFIG_REC*, %struct._CONFIG_NODE*) #0 !dbg !1029 {
  %4 = alloca %struct._CHANNEL_REC*, align 8
  %5 = alloca %struct._CONFIG_REC*, align 8
  %6 = alloca %struct._CONFIG_NODE*, align 8
  %7 = alloca %struct._GSList*, align 8
  %8 = alloca %struct._GSList*, align 8
  store %struct._CHANNEL_REC* %0, %struct._CHANNEL_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %4, metadata !1032, metadata !157), !dbg !1033
  store %struct._CONFIG_REC* %1, %struct._CONFIG_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %5, metadata !1034, metadata !157), !dbg !1035
  store %struct._CONFIG_NODE* %2, %struct._CONFIG_NODE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %6, metadata !1036, metadata !157), !dbg !1037
  call void @llvm.dbg.declare(metadata %struct._GSList** %7, metadata !1038, metadata !157), !dbg !1039
  call void @llvm.dbg.declare(metadata %struct._GSList** %8, metadata !1040, metadata !157), !dbg !1041
  %9 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1042
  %10 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1043
  %11 = call %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC* %9, %struct._CONFIG_NODE* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i32 3), !dbg !1044
  store %struct._CONFIG_NODE* %11, %struct._CONFIG_NODE** %6, align 8, !dbg !1045
  %12 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %4, align 8, !dbg !1046
  %13 = call %struct._GSList* @nicklist_getnicks(%struct._CHANNEL_REC* %12), !dbg !1047
  store %struct._GSList* %13, %struct._GSList** %8, align 8, !dbg !1048
  %14 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1049
  store %struct._GSList* %14, %struct._GSList** %7, align 8, !dbg !1051
  br label %15, !dbg !1052

; <label>:15:                                     ; preds = %26, %3
  %16 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1053
  %17 = icmp ne %struct._GSList* %16, null, !dbg !1056
  br i1 %17, label %18, label %30, !dbg !1057

; <label>:18:                                     ; preds = %15
  %19 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %4, align 8, !dbg !1058
  %20 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1059
  %21 = getelementptr inbounds %struct._GSList, %struct._GSList* %20, i32 0, i32 0, !dbg !1060
  %22 = load i8*, i8** %21, align 8, !dbg !1060
  %23 = bitcast i8* %22 to %struct._NICK_REC*, !dbg !1059
  %24 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1061
  %25 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1062
  call void @session_save_nick(%struct._CHANNEL_REC* %19, %struct._NICK_REC* %23, %struct._CONFIG_REC* %24, %struct._CONFIG_NODE* %25), !dbg !1063
  br label %26, !dbg !1063

; <label>:26:                                     ; preds = %18
  %27 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1064
  %28 = getelementptr inbounds %struct._GSList, %struct._GSList* %27, i32 0, i32 1, !dbg !1066
  %29 = load %struct._GSList*, %struct._GSList** %28, align 8, !dbg !1066
  store %struct._GSList* %29, %struct._GSList** %7, align 8, !dbg !1067
  br label %15, !dbg !1068, !llvm.loop !1069

; <label>:30:                                     ; preds = %15
  %31 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1071
  call void @g_slist_free(%struct._GSList* %31), !dbg !1072
  ret void, !dbg !1073
}

; Function Attrs: nounwind uwtable
define internal void @session_restore_channel_nicks(%struct._CHANNEL_REC*, %struct._CONFIG_NODE*) #0 !dbg !1074 {
  %3 = alloca %struct._CHANNEL_REC*, align 8
  %4 = alloca %struct._CONFIG_NODE*, align 8
  %5 = alloca %struct._GSList*, align 8
  store %struct._CHANNEL_REC* %0, %struct._CHANNEL_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %3, metadata !1077, metadata !157), !dbg !1078
  store %struct._CONFIG_NODE* %1, %struct._CONFIG_NODE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %4, metadata !1079, metadata !157), !dbg !1080
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !1081, metadata !157), !dbg !1082
  %6 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1083
  %7 = call %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC* null, %struct._CONFIG_NODE* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i32 -1), !dbg !1084
  store %struct._CONFIG_NODE* %7, %struct._CONFIG_NODE** %4, align 8, !dbg !1085
  %8 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1086
  %9 = icmp ne %struct._CONFIG_NODE* %8, null, !dbg !1088
  br i1 %9, label %10, label %34, !dbg !1089

; <label>:10:                                     ; preds = %2
  %11 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1090
  %12 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %11, i32 0, i32 0, !dbg !1092
  %13 = load i32, i32* %12, align 8, !dbg !1092
  %14 = icmp eq i32 %13, 3, !dbg !1093
  br i1 %14, label %15, label %34, !dbg !1094

; <label>:15:                                     ; preds = %10
  %16 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1095
  %17 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %16, i32 0, i32 2, !dbg !1097
  %18 = load i8*, i8** %17, align 8, !dbg !1097
  %19 = bitcast i8* %18 to %struct._GSList*, !dbg !1095
  %20 = call %struct._GSList* @config_node_first(%struct._GSList* %19), !dbg !1098
  store %struct._GSList* %20, %struct._GSList** %5, align 8, !dbg !1099
  br label %21, !dbg !1100

; <label>:21:                                     ; preds = %30, %15
  %22 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1101
  %23 = icmp ne %struct._GSList* %22, null, !dbg !1105
  br i1 %23, label %24, label %33, !dbg !1106

; <label>:24:                                     ; preds = %21
  %25 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !1107
  %26 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1109
  %27 = getelementptr inbounds %struct._GSList, %struct._GSList* %26, i32 0, i32 0, !dbg !1110
  %28 = load i8*, i8** %27, align 8, !dbg !1110
  %29 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i32 0, i32 0), i32 2, %struct._CHANNEL_REC* %25, i8* %28), !dbg !1111
  br label %30, !dbg !1112

; <label>:30:                                     ; preds = %24
  %31 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1113
  %32 = call %struct._GSList* @config_node_next(%struct._GSList* %31), !dbg !1115
  store %struct._GSList* %32, %struct._GSList** %5, align 8, !dbg !1116
  br label %21, !dbg !1117, !llvm.loop !1118

; <label>:33:                                     ; preds = %21
  br label %34, !dbg !1119

; <label>:34:                                     ; preds = %33, %10, %2
  ret void, !dbg !1120
}

; Function Attrs: nounwind uwtable
define internal void @sig_init_finished() #0 !dbg !1121 {
  %1 = alloca %struct._CONFIG_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %1, metadata !1122, metadata !157), !dbg !1123
  %2 = load i8*, i8** @session_file, align 8, !dbg !1124
  %3 = icmp eq i8* %2, null, !dbg !1126
  br i1 %3, label %4, label %5, !dbg !1127

; <label>:4:                                      ; preds = %0
  br label %19, !dbg !1128

; <label>:5:                                      ; preds = %0
  %6 = load i8*, i8** @session_file, align 8, !dbg !1129
  %7 = call %struct._CONFIG_REC* @config_open(i8* %6, i32 -1), !dbg !1130
  store %struct._CONFIG_REC* %7, %struct._CONFIG_REC** %1, align 8, !dbg !1131
  %8 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %1, align 8, !dbg !1132
  %9 = icmp eq %struct._CONFIG_REC* %8, null, !dbg !1134
  br i1 %9, label %10, label %11, !dbg !1135

; <label>:10:                                     ; preds = %5
  br label %19, !dbg !1136

; <label>:11:                                     ; preds = %5
  %12 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %1, align 8, !dbg !1137
  %13 = call i32 @config_parse(%struct._CONFIG_REC* %12), !dbg !1138
  %14 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %1, align 8, !dbg !1139
  %15 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i32 1, %struct._CONFIG_REC* %14), !dbg !1140
  %16 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %1, align 8, !dbg !1141
  call void @config_close(%struct._CONFIG_REC* %16), !dbg !1142
  %17 = load i8*, i8** @session_file, align 8, !dbg !1143
  %18 = call i32 @unlink(i8* %17) #6, !dbg !1144
  br label %19, !dbg !1145

; <label>:19:                                     ; preds = %11, %10, %4
  ret void, !dbg !1146
}

; Function Attrs: nounwind uwtable
define void @session_deinit() #0 !dbg !1148 {
  %1 = load i8*, i8** @irssi_binary, align 8, !dbg !1149
  call void @g_free(i8* %1), !dbg !1150
  call void @command_unbind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_upgrade to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1151
  call void @signal_remove_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CONFIG_REC*)* @sig_session_save to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1152
  call void @signal_remove_full(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CONFIG_REC*)* @sig_session_restore to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1153
  call void @signal_remove_full(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, %struct._CONFIG_REC*, %struct._CONFIG_NODE*)* @session_save_server_channels to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1154
  call void @signal_remove_full(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, %struct._CONFIG_NODE*)* @session_restore_server_channels to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1155
  call void @signal_remove_full(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CHANNEL_REC*, %struct._CONFIG_REC*, %struct._CONFIG_NODE*)* @session_save_channel_nicks to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1156
  call void @signal_remove_full(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CHANNEL_REC*, %struct._CONFIG_NODE*)* @session_restore_channel_nicks to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1157
  call void @signal_remove_full(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_init_finished to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1158
  ret void, !dbg !1159
}

declare void @command_unbind_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare i32 @signal_emit(i8*, i32, ...) #2

declare void @signal_stop() #2

declare noalias i8* @g_strdup_printf(i8*, ...) #2

declare i8* @get_irssi_dir() #2

declare %struct._CONFIG_REC* @config_open(i8*, i32) #2

; Function Attrs: nounwind
declare i32 @unlink(i8*) #3

declare i32 @config_write(%struct._CONFIG_REC*, i8*, i32) #2

declare void @config_close(%struct._CONFIG_REC*) #2

declare i8* @get_irssi_config() #2

declare noalias i8** @g_strsplit(i8*, i8*, i32) #2

declare %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @session_save_server(%struct._SERVER_REC*, %struct._CONFIG_REC*, %struct._CONFIG_NODE*) #0 !dbg !1160 {
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca %struct._CONFIG_REC*, align 8
  %6 = alloca %struct._CONFIG_NODE*, align 8
  %7 = alloca i32, align 4
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !1161, metadata !157), !dbg !1162
  store %struct._CONFIG_REC* %1, %struct._CONFIG_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %5, metadata !1163, metadata !157), !dbg !1164
  store %struct._CONFIG_NODE* %2, %struct._CONFIG_NODE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %6, metadata !1165, metadata !157), !dbg !1166
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1167, metadata !157), !dbg !1168
  %8 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1169
  %9 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1170
  %10 = call %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC* %8, %struct._CONFIG_NODE* %9, i8* null, i32 2), !dbg !1171
  store %struct._CONFIG_NODE* %10, %struct._CONFIG_NODE** %6, align 8, !dbg !1172
  %11 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1173
  %12 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1174
  %13 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1175
  %14 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %13, i32 0, i32 1, !dbg !1176
  %15 = load i32, i32* %14, align 4, !dbg !1176
  %16 = call %struct._CHAT_PROTOCOL_REC* @chat_protocol_find_id(i32 %15), !dbg !1177
  %17 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %16, i32 0, i32 2, !dbg !1178
  %18 = load i8*, i8** %17, align 8, !dbg !1178
  call void @config_node_set_str(%struct._CONFIG_REC* %11, %struct._CONFIG_NODE* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* %18), !dbg !1179
  %19 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1181
  %20 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1182
  %21 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1183
  %22 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %21, i32 0, i32 3, !dbg !1184
  %23 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %22, align 8, !dbg !1184
  %24 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %23, i32 0, i32 10, !dbg !1185
  %25 = load i8*, i8** %24, align 8, !dbg !1185
  call void @config_node_set_str(%struct._CONFIG_REC* %19, %struct._CONFIG_NODE* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8* %25), !dbg !1186
  %26 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1187
  %27 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1188
  %28 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1189
  %29 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %28, i32 0, i32 3, !dbg !1190
  %30 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %29, align 8, !dbg !1190
  %31 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %30, i32 0, i32 11, !dbg !1191
  %32 = load i32, i32* %31, align 8, !dbg !1191
  call void @config_node_set_int(%struct._CONFIG_REC* %26, %struct._CONFIG_NODE* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i32 %32), !dbg !1192
  %33 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1193
  %34 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1194
  %35 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1195
  %36 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %35, i32 0, i32 3, !dbg !1196
  %37 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %36, align 8, !dbg !1196
  %38 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %37, i32 0, i32 12, !dbg !1197
  %39 = load i8*, i8** %38, align 8, !dbg !1197
  call void @config_node_set_str(%struct._CONFIG_REC* %33, %struct._CONFIG_NODE* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i8* %39), !dbg !1198
  %40 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1199
  %41 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1200
  %42 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1201
  %43 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %42, i32 0, i32 3, !dbg !1202
  %44 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %43, align 8, !dbg !1202
  %45 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %44, i32 0, i32 15, !dbg !1203
  %46 = load i8*, i8** %45, align 8, !dbg !1203
  call void @config_node_set_str(%struct._CONFIG_REC* %40, %struct._CONFIG_NODE* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i8* %46), !dbg !1204
  %47 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1205
  %48 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1206
  %49 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1207
  %50 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %49, i32 0, i32 7, !dbg !1208
  %51 = load i8*, i8** %50, align 8, !dbg !1208
  call void @config_node_set_str(%struct._CONFIG_REC* %47, %struct._CONFIG_NODE* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i8* %51), !dbg !1209
  %52 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1210
  %53 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1211
  %54 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1212
  %55 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %54, i32 0, i32 16, !dbg !1213
  %56 = load i8*, i8** %55, align 8, !dbg !1213
  call void @config_node_set_str(%struct._CONFIG_REC* %52, %struct._CONFIG_NODE* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i8* %56), !dbg !1214
  %57 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1215
  %58 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1216
  %59 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1217
  %60 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %59, i32 0, i32 3, !dbg !1218
  %61 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %60, align 8, !dbg !1218
  %62 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %61, i32 0, i32 28, !dbg !1219
  %63 = load i8, i8* %62, align 8, !dbg !1219
  %64 = lshr i8 %63, 5, !dbg !1219
  %65 = and i8 %64, 1, !dbg !1219
  %66 = zext i8 %65 to i32, !dbg !1219
  call void @config_node_set_bool(%struct._CONFIG_REC* %57, %struct._CONFIG_NODE* %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i32 %66), !dbg !1220
  %67 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1221
  %68 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1222
  %69 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1223
  %70 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %69, i32 0, i32 3, !dbg !1224
  %71 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %70, align 8, !dbg !1224
  %72 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %71, i32 0, i32 19, !dbg !1225
  %73 = load i8*, i8** %72, align 8, !dbg !1225
  call void @config_node_set_str(%struct._CONFIG_REC* %67, %struct._CONFIG_NODE* %68, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i8* %73), !dbg !1226
  %74 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1227
  %75 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1228
  %76 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1229
  %77 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %76, i32 0, i32 3, !dbg !1230
  %78 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %77, align 8, !dbg !1230
  %79 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %78, i32 0, i32 20, !dbg !1231
  %80 = load i8*, i8** %79, align 8, !dbg !1231
  call void @config_node_set_str(%struct._CONFIG_REC* %74, %struct._CONFIG_NODE* %75, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), i8* %80), !dbg !1232
  %81 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1233
  %82 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1234
  %83 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1235
  %84 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %83, i32 0, i32 3, !dbg !1236
  %85 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %84, align 8, !dbg !1236
  %86 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %85, i32 0, i32 28, !dbg !1237
  %87 = load i8, i8* %86, align 8, !dbg !1237
  %88 = lshr i8 %87, 6, !dbg !1237
  %89 = and i8 %88, 1, !dbg !1237
  %90 = zext i8 %89 to i32, !dbg !1237
  call void @config_node_set_bool(%struct._CONFIG_REC* %81, %struct._CONFIG_NODE* %82, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), i32 %90), !dbg !1238
  %91 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1239
  %92 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1240
  %93 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1241
  %94 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %93, i32 0, i32 3, !dbg !1242
  %95 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %94, align 8, !dbg !1242
  %96 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %95, i32 0, i32 22, !dbg !1243
  %97 = load i8*, i8** %96, align 8, !dbg !1243
  call void @config_node_set_str(%struct._CONFIG_REC* %91, %struct._CONFIG_NODE* %92, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i8* %97), !dbg !1244
  %98 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1245
  %99 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1246
  %100 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1247
  %101 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %100, i32 0, i32 3, !dbg !1248
  %102 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %101, align 8, !dbg !1248
  %103 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %102, i32 0, i32 23, !dbg !1249
  %104 = load i8*, i8** %103, align 8, !dbg !1249
  call void @config_node_set_str(%struct._CONFIG_REC* %98, %struct._CONFIG_NODE* %99, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0), i8* %104), !dbg !1250
  %105 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1251
  %106 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1252
  %107 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1253
  %108 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %107, i32 0, i32 3, !dbg !1254
  %109 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %108, align 8, !dbg !1254
  %110 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %109, i32 0, i32 24, !dbg !1255
  %111 = load i8*, i8** %110, align 8, !dbg !1255
  call void @config_node_set_str(%struct._CONFIG_REC* %105, %struct._CONFIG_NODE* %106, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i32 0, i32 0), i8* %111), !dbg !1256
  %112 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1257
  %113 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1258
  %114 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1259
  %115 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %114, i32 0, i32 3, !dbg !1260
  %116 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %115, align 8, !dbg !1260
  %117 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %116, i32 0, i32 25, !dbg !1261
  %118 = load i8*, i8** %117, align 8, !dbg !1261
  call void @config_node_set_str(%struct._CONFIG_REC* %112, %struct._CONFIG_NODE* %113, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i32 0, i32 0), i8* %118), !dbg !1262
  %119 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1263
  %120 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1264
  %121 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1265
  %122 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %121, i32 0, i32 3, !dbg !1266
  %123 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %122, align 8, !dbg !1266
  %124 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %123, i32 0, i32 26, !dbg !1267
  %125 = load i8*, i8** %124, align 8, !dbg !1267
  call void @config_node_set_str(%struct._CONFIG_REC* %119, %struct._CONFIG_NODE* %120, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.36, i32 0, i32 0), i8* %125), !dbg !1268
  %126 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1269
  %127 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %126, i32 0, i32 9, !dbg !1270
  %128 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %127, align 8, !dbg !1270
  %129 = call %struct._GIOChannel* @net_sendbuffer_handle(%struct._NET_SENDBUF_REC* %128), !dbg !1271
  %130 = call i32 @g_io_channel_unix_get_fd(%struct._GIOChannel* %129), !dbg !1272
  store i32 %130, i32* %7, align 4, !dbg !1273
  %131 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1274
  %132 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1275
  %133 = load i32, i32* %7, align 4, !dbg !1276
  call void @config_node_set_int(%struct._CONFIG_REC* %131, %struct._CONFIG_NODE* %132, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i32 %133), !dbg !1277
  %134 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1278
  %135 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1279
  %136 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1280
  %137 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), i32 3, %struct._SERVER_REC* %134, %struct._CONFIG_REC* %135, %struct._CONFIG_NODE* %136), !dbg !1281
  %138 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1282
  %139 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %138, i32 0, i32 9, !dbg !1283
  %140 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %139, align 8, !dbg !1283
  %141 = call %struct._GIOChannel* @net_sendbuffer_handle(%struct._NET_SENDBUF_REC* %140), !dbg !1284
  call void @g_io_channel_unref(%struct._GIOChannel* %141), !dbg !1285
  %142 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1286
  %143 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %142, i32 0, i32 9, !dbg !1287
  %144 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %143, align 8, !dbg !1287
  call void @net_sendbuffer_destroy(%struct._NET_SENDBUF_REC* %144, i32 0), !dbg !1288
  %145 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1289
  %146 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %145, i32 0, i32 9, !dbg !1290
  store %struct._NET_SENDBUF_REC* null, %struct._NET_SENDBUF_REC** %146, align 8, !dbg !1291
  %147 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1292
  %148 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %147, i32 0, i32 8, !dbg !1293
  %149 = load i8, i8* %148, align 8, !dbg !1294
  %150 = and i8 %149, -5, !dbg !1294
  %151 = or i8 %150, 4, !dbg !1294
  store i8 %151, i8* %148, align 8, !dbg !1294
  %152 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1295
  %153 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %152, i32 0, i32 8, !dbg !1296
  %154 = load i8, i8* %153, align 8, !dbg !1297
  %155 = and i8 %154, -17, !dbg !1297
  %156 = or i8 %155, 16, !dbg !1297
  store i8 %156, i8* %153, align 8, !dbg !1297
  %157 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1298
  call void @server_disconnect(%struct._SERVER_REC* %157), !dbg !1299
  ret void, !dbg !1300
}

declare %struct._GString* @g_string_new(i8*) #2

declare %struct._GSList* @pidwait_get_pids() #2

declare void @g_string_append_printf(%struct._GString*, i8*, ...) #2

declare void @config_node_set_str(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i8*) #2

declare i8* @g_string_free(%struct._GString*, i32) #2

declare %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i32) #2

declare %struct._CHAT_PROTOCOL_REC* @chat_protocol_find_id(i32) #2

declare void @config_node_set_int(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i32) #2

declare void @config_node_set_bool(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i32) #2

declare i32 @g_io_channel_unix_get_fd(%struct._GIOChannel*) #2

declare %struct._GIOChannel* @net_sendbuffer_handle(%struct._NET_SENDBUF_REC*) #2

declare void @g_io_channel_unref(%struct._GIOChannel*) #2

declare void @net_sendbuffer_destroy(%struct._NET_SENDBUF_REC*, i32) #2

declare void @server_disconnect(%struct._SERVER_REC*) #2

declare %struct._GSList* @config_node_first(%struct._GSList*) #2

; Function Attrs: nounwind uwtable
define internal void @session_restore_server(%struct._CONFIG_NODE*) #0 !dbg !1301 {
  %2 = alloca %struct._CONFIG_NODE*, align 8
  %3 = alloca %struct._CHAT_PROTOCOL_REC*, align 8
  %4 = alloca %struct._SERVER_CONNECT_REC*, align 8
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct._CONFIG_NODE* %0, %struct._CONFIG_NODE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %2, metadata !1304, metadata !157), !dbg !1305
  call void @llvm.dbg.declare(metadata %struct._CHAT_PROTOCOL_REC** %3, metadata !1306, metadata !157), !dbg !1395
  call void @llvm.dbg.declare(metadata %struct._SERVER_CONNECT_REC** %4, metadata !1396, metadata !157), !dbg !1397
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !1398, metadata !157), !dbg !1399
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1400, metadata !157), !dbg !1401
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1402, metadata !157), !dbg !1403
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1404, metadata !157), !dbg !1405
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1406, metadata !157), !dbg !1407
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1408, metadata !157), !dbg !1409
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1410, metadata !157), !dbg !1411
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1412, metadata !157), !dbg !1413
  %13 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %2, align 8, !dbg !1414
  %14 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* null), !dbg !1415
  store i8* %14, i8** %6, align 8, !dbg !1416
  %15 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %2, align 8, !dbg !1417
  %16 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8* null), !dbg !1418
  store i8* %16, i8** %7, align 8, !dbg !1419
  %17 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %2, align 8, !dbg !1420
  %18 = call i32 @config_node_get_int(%struct._CONFIG_NODE* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i32 0), !dbg !1421
  store i32 %18, i32* %11, align 4, !dbg !1422
  %19 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %2, align 8, !dbg !1423
  %20 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i8* null), !dbg !1424
  store i8* %20, i8** %8, align 8, !dbg !1425
  %21 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %2, align 8, !dbg !1426
  %22 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i8* null), !dbg !1427
  store i8* %22, i8** %9, align 8, !dbg !1428
  %23 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %2, align 8, !dbg !1429
  %24 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i8* null), !dbg !1430
  store i8* %24, i8** %10, align 8, !dbg !1431
  %25 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %2, align 8, !dbg !1432
  %26 = call i32 @config_node_get_int(%struct._CONFIG_NODE* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i32 -1), !dbg !1433
  store i32 %26, i32* %12, align 4, !dbg !1434
  %27 = load i8*, i8** %6, align 8, !dbg !1435
  %28 = icmp eq i8* %27, null, !dbg !1437
  br i1 %28, label %38, label %29, !dbg !1438

; <label>:29:                                     ; preds = %1
  %30 = load i8*, i8** %7, align 8, !dbg !1439
  %31 = icmp eq i8* %30, null, !dbg !1441
  br i1 %31, label %38, label %32, !dbg !1442

; <label>:32:                                     ; preds = %29
  %33 = load i8*, i8** %10, align 8, !dbg !1443
  %34 = icmp eq i8* %33, null, !dbg !1445
  br i1 %34, label %38, label %35, !dbg !1446

; <label>:35:                                     ; preds = %32
  %36 = load i32, i32* %12, align 4, !dbg !1447
  %37 = icmp slt i32 %36, 0, !dbg !1449
  br i1 %37, label %38, label %39, !dbg !1450

; <label>:38:                                     ; preds = %35, %32, %29, %1
  br label %102, !dbg !1451

; <label>:39:                                     ; preds = %35
  %40 = load i8*, i8** %6, align 8, !dbg !1452
  %41 = call %struct._CHAT_PROTOCOL_REC* @chat_protocol_find(i8* %40), !dbg !1453
  store %struct._CHAT_PROTOCOL_REC* %41, %struct._CHAT_PROTOCOL_REC** %3, align 8, !dbg !1454
  %42 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %3, align 8, !dbg !1455
  %43 = icmp eq %struct._CHAT_PROTOCOL_REC* %42, null, !dbg !1457
  br i1 %43, label %51, label %44, !dbg !1458

; <label>:44:                                     ; preds = %39
  %45 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %3, align 8, !dbg !1459
  %46 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %45, i32 0, i32 1, !dbg !1461
  %47 = load i8, i8* %46, align 4, !dbg !1461
  %48 = and i8 %47, 1, !dbg !1461
  %49 = zext i8 %48 to i32, !dbg !1461
  %50 = icmp ne i32 %49, 0, !dbg !1459
  br i1 %50, label %51, label %58, !dbg !1462

; <label>:51:                                     ; preds = %44, %39
  %52 = load i32, i32* %12, align 4, !dbg !1463
  %53 = icmp slt i32 %52, 0, !dbg !1466
  br i1 %53, label %54, label %57, !dbg !1467

; <label>:54:                                     ; preds = %51
  %55 = load i32, i32* %12, align 4, !dbg !1468
  %56 = call i32 @close(i32 %55), !dbg !1470
  br label %57, !dbg !1470

; <label>:57:                                     ; preds = %54, %51
  br label %102, !dbg !1471

; <label>:58:                                     ; preds = %44
  %59 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %3, align 8, !dbg !1472
  %60 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %59, i32 0, i32 0, !dbg !1473
  %61 = load i32, i32* %60, align 8, !dbg !1473
  %62 = load i8*, i8** %7, align 8, !dbg !1474
  %63 = load i32, i32* %11, align 4, !dbg !1475
  %64 = load i8*, i8** %8, align 8, !dbg !1476
  %65 = load i8*, i8** %9, align 8, !dbg !1477
  %66 = load i8*, i8** %10, align 8, !dbg !1478
  %67 = call %struct._SERVER_CONNECT_REC* @server_create_conn(i32 %61, i8* %62, i32 %63, i8* %64, i8* %65, i8* %66), !dbg !1479
  store %struct._SERVER_CONNECT_REC* %67, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1480
  %68 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1481
  %69 = icmp ne %struct._SERVER_CONNECT_REC* %68, null, !dbg !1483
  br i1 %69, label %70, label %102, !dbg !1484

; <label>:70:                                     ; preds = %58
  %71 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1485
  %72 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %71, i32 0, i32 28, !dbg !1487
  %73 = load i8, i8* %72, align 8, !dbg !1488
  %74 = and i8 %73, -2, !dbg !1488
  %75 = or i8 %74, 1, !dbg !1488
  store i8 %75, i8* %72, align 8, !dbg !1488
  %76 = load i32, i32* %12, align 4, !dbg !1489
  %77 = call %struct._GIOChannel* @g_io_channel_new(i32 %76), !dbg !1490
  %78 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1491
  %79 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %78, i32 0, i32 27, !dbg !1492
  store %struct._GIOChannel* %77, %struct._GIOChannel** %79, align 8, !dbg !1493
  %80 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %3, align 8, !dbg !1494
  %81 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %80, i32 0, i32 10, !dbg !1495
  %82 = load %struct._SERVER_REC* (%struct._SERVER_CONNECT_REC*)*, %struct._SERVER_REC* (%struct._SERVER_CONNECT_REC*)** %81, align 8, !dbg !1495
  %83 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1496
  %84 = call %struct._SERVER_REC* %82(%struct._SERVER_CONNECT_REC* %83), !dbg !1494
  store %struct._SERVER_REC* %84, %struct._SERVER_REC** %5, align 8, !dbg !1497
  %85 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %2, align 8, !dbg !1498
  %86 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i8* null), !dbg !1499
  %87 = call noalias i8* @g_strdup(i8* %86), !dbg !1500
  %88 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1502
  %89 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %88, i32 0, i32 16, !dbg !1503
  store i8* %87, i8** %89, align 8, !dbg !1504
  %90 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1505
  %91 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %90, i32 0, i32 8, !dbg !1506
  %92 = load i8, i8* %91, align 8, !dbg !1507
  %93 = and i8 %92, -9, !dbg !1507
  %94 = or i8 %93, 8, !dbg !1507
  store i8 %94, i8* %91, align 8, !dbg !1507
  %95 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1508
  %96 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %2, align 8, !dbg !1509
  %97 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0), i32 2, %struct._SERVER_REC* %95, %struct._CONFIG_NODE* %96), !dbg !1510
  %98 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %3, align 8, !dbg !1511
  %99 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %98, i32 0, i32 11, !dbg !1512
  %100 = load void (%struct._SERVER_REC*)*, void (%struct._SERVER_REC*)** %99, align 8, !dbg !1512
  %101 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1513
  call void %100(%struct._SERVER_REC* %101), !dbg !1511
  br label %102, !dbg !1514

; <label>:102:                                    ; preds = %38, %57, %70, %58
  ret void, !dbg !1515
}

declare %struct._GSList* @config_node_next(%struct._GSList*) #2

declare i8* @config_node_get_str(%struct._CONFIG_NODE*, i8*, i8*) #2

declare void @pidwait_add(i32) #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #5

declare void @g_strfreev(i8**) #2

declare i32 @config_node_get_int(%struct._CONFIG_NODE*, i8*, i32) #2

declare %struct._CHAT_PROTOCOL_REC* @chat_protocol_find(i8*) #2

declare i32 @close(i32) #2

declare %struct._SERVER_CONNECT_REC* @server_create_conn(i32, i8*, i32, i8*, i8*, i8*) #2

declare %struct._GIOChannel* @g_io_channel_new(i32) #2

declare noalias i8* @g_strdup(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @session_save_channel(%struct._CHANNEL_REC*, %struct._CONFIG_REC*, %struct._CONFIG_NODE*) #0 !dbg !1516 {
  %4 = alloca %struct._CHANNEL_REC*, align 8
  %5 = alloca %struct._CONFIG_REC*, align 8
  %6 = alloca %struct._CONFIG_NODE*, align 8
  store %struct._CHANNEL_REC* %0, %struct._CHANNEL_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %4, metadata !1517, metadata !157), !dbg !1518
  store %struct._CONFIG_REC* %1, %struct._CONFIG_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %5, metadata !1519, metadata !157), !dbg !1520
  store %struct._CONFIG_NODE* %2, %struct._CONFIG_NODE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %6, metadata !1521, metadata !157), !dbg !1522
  %7 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1523
  %8 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1524
  %9 = call %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC* %7, %struct._CONFIG_NODE* %8, i8* null, i32 2), !dbg !1525
  store %struct._CONFIG_NODE* %9, %struct._CONFIG_NODE** %6, align 8, !dbg !1526
  %10 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1527
  %11 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1528
  %12 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %4, align 8, !dbg !1529
  %13 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %12, i32 0, i32 6, !dbg !1530
  %14 = load i8*, i8** %13, align 8, !dbg !1530
  call void @config_node_set_str(%struct._CONFIG_REC* %10, %struct._CONFIG_NODE* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i8* %14), !dbg !1531
  %15 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1532
  %16 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1533
  %17 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %4, align 8, !dbg !1534
  %18 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %17, i32 0, i32 5, !dbg !1535
  %19 = load i8*, i8** %18, align 8, !dbg !1535
  call void @config_node_set_str(%struct._CONFIG_REC* %15, %struct._CONFIG_NODE* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i32 0, i32 0), i8* %19), !dbg !1536
  %20 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1537
  %21 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1538
  %22 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %4, align 8, !dbg !1539
  %23 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %22, i32 0, i32 12, !dbg !1540
  %24 = load i8*, i8** %23, align 8, !dbg !1540
  call void @config_node_set_str(%struct._CONFIG_REC* %20, %struct._CONFIG_NODE* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i8* %24), !dbg !1541
  %25 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1542
  %26 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1543
  %27 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %4, align 8, !dbg !1544
  %28 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %27, i32 0, i32 13, !dbg !1545
  %29 = load i8*, i8** %28, align 8, !dbg !1545
  call void @config_node_set_str(%struct._CONFIG_REC* %25, %struct._CONFIG_NODE* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0), i8* %29), !dbg !1546
  %30 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1547
  %31 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1548
  %32 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %4, align 8, !dbg !1549
  %33 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %32, i32 0, i32 14, !dbg !1550
  %34 = load i64, i64* %33, align 8, !dbg !1550
  %35 = trunc i64 %34 to i32, !dbg !1549
  call void @config_node_set_int(%struct._CONFIG_REC* %30, %struct._CONFIG_NODE* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i32 0, i32 0), i32 %35), !dbg !1551
  %36 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1552
  %37 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1553
  %38 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %4, align 8, !dbg !1554
  %39 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %38, i32 0, i32 20, !dbg !1555
  %40 = load i8*, i8** %39, align 8, !dbg !1555
  call void @config_node_set_str(%struct._CONFIG_REC* %36, %struct._CONFIG_NODE* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0), i8* %40), !dbg !1556
  %41 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %4, align 8, !dbg !1557
  %42 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1558
  %43 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1559
  %44 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), i32 3, %struct._CHANNEL_REC* %41, %struct._CONFIG_REC* %42, %struct._CONFIG_NODE* %43), !dbg !1560
  ret void, !dbg !1561
}

; Function Attrs: nounwind uwtable
define internal void @session_restore_channel(%struct._SERVER_REC*, %struct._CONFIG_NODE*) #0 !dbg !1562 {
  %3 = alloca %struct._SERVER_REC*, align 8
  %4 = alloca %struct._CONFIG_NODE*, align 8
  %5 = alloca %struct._CHANNEL_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %3, metadata !1563, metadata !157), !dbg !1564
  store %struct._CONFIG_NODE* %1, %struct._CONFIG_NODE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %4, metadata !1565, metadata !157), !dbg !1566
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %5, metadata !1567, metadata !157), !dbg !1568
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1569, metadata !157), !dbg !1570
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1571, metadata !157), !dbg !1572
  %8 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1573
  %9 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i8* null), !dbg !1574
  store i8* %9, i8** %6, align 8, !dbg !1575
  %10 = load i8*, i8** %6, align 8, !dbg !1576
  %11 = icmp eq i8* %10, null, !dbg !1578
  br i1 %11, label %12, label %13, !dbg !1579

; <label>:12:                                     ; preds = %2
  br label %61, !dbg !1580

; <label>:13:                                     ; preds = %2
  %14 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1581
  %15 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i32 0, i32 0), i8* null), !dbg !1582
  store i8* %15, i8** %7, align 8, !dbg !1583
  %16 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1584
  %17 = icmp eq %struct._SERVER_REC* %16, null, !dbg !1585
  br i1 %17, label %18, label %20, !dbg !1586

; <label>:18:                                     ; preds = %13
  %19 = call %struct._CHAT_PROTOCOL_REC* @chat_protocol_get_default(), !dbg !1587
  br label %25, !dbg !1587

; <label>:20:                                     ; preds = %13
  %21 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1589
  %22 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %21, i32 0, i32 1, !dbg !1591
  %23 = load i32, i32* %22, align 4, !dbg !1591
  %24 = call %struct._CHAT_PROTOCOL_REC* @chat_protocol_find_id(i32 %23), !dbg !1592
  br label %25, !dbg !1593

; <label>:25:                                     ; preds = %20, %18
  %26 = phi %struct._CHAT_PROTOCOL_REC* [ %19, %18 ], [ %24, %20 ], !dbg !1594
  %27 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %26, i32 0, i32 12, !dbg !1596
  %28 = load %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*, i8*, i32)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*, i8*, i32)** %27, align 8, !dbg !1596
  %29 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1597
  %30 = load i8*, i8** %6, align 8, !dbg !1598
  %31 = load i8*, i8** %7, align 8, !dbg !1599
  %32 = call %struct._CHANNEL_REC* %28(%struct._SERVER_REC* %29, i8* %30, i8* %31, i32 1), !dbg !1600
  store %struct._CHANNEL_REC* %32, %struct._CHANNEL_REC** %5, align 8, !dbg !1601
  %33 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1602
  %34 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i8* null), !dbg !1603
  %35 = call noalias i8* @g_strdup(i8* %34), !dbg !1604
  %36 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %5, align 8, !dbg !1605
  %37 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %36, i32 0, i32 12, !dbg !1606
  store i8* %35, i8** %37, align 8, !dbg !1607
  %38 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1608
  %39 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0), i8* null), !dbg !1609
  %40 = call noalias i8* @g_strdup(i8* %39), !dbg !1610
  %41 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %5, align 8, !dbg !1611
  %42 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %41, i32 0, i32 13, !dbg !1612
  store i8* %40, i8** %42, align 8, !dbg !1613
  %43 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1614
  %44 = call i32 @config_node_get_int(%struct._CONFIG_NODE* %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i32 0, i32 0), i32 0), !dbg !1615
  %45 = sext i32 %44 to i64, !dbg !1615
  %46 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %5, align 8, !dbg !1616
  %47 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %46, i32 0, i32 14, !dbg !1617
  store i64 %45, i64* %47, align 8, !dbg !1618
  %48 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1619
  %49 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0), i8* null), !dbg !1620
  %50 = call noalias i8* @g_strdup(i8* %49), !dbg !1621
  %51 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %5, align 8, !dbg !1622
  %52 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %51, i32 0, i32 20, !dbg !1623
  store i8* %50, i8** %52, align 8, !dbg !1624
  %53 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %5, align 8, !dbg !1625
  %54 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %53, i32 0, i32 21, !dbg !1626
  %55 = load i16, i16* %54, align 8, !dbg !1627
  %56 = and i16 %55, -129, !dbg !1627
  %57 = or i16 %56, 128, !dbg !1627
  store i16 %57, i16* %54, align 8, !dbg !1627
  %58 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %5, align 8, !dbg !1628
  %59 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1629
  %60 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0), i32 2, %struct._CHANNEL_REC* %58, %struct._CONFIG_NODE* %59), !dbg !1630
  br label %61, !dbg !1631

; <label>:61:                                     ; preds = %25, %12
  ret void, !dbg !1632
}

declare %struct._CHAT_PROTOCOL_REC* @chat_protocol_get_default() #2

declare %struct._GSList* @nicklist_getnicks(%struct._CHANNEL_REC*) #2

; Function Attrs: nounwind uwtable
define internal void @session_save_nick(%struct._CHANNEL_REC*, %struct._NICK_REC*, %struct._CONFIG_REC*, %struct._CONFIG_NODE*) #0 !dbg !1633 {
  %5 = alloca %struct._CHANNEL_REC*, align 8
  %6 = alloca %struct._NICK_REC*, align 8
  %7 = alloca %struct._CONFIG_REC*, align 8
  %8 = alloca %struct._CONFIG_NODE*, align 8
  store %struct._CHANNEL_REC* %0, %struct._CHANNEL_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %5, metadata !1636, metadata !157), !dbg !1637
  store %struct._NICK_REC* %1, %struct._NICK_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %6, metadata !1638, metadata !157), !dbg !1639
  store %struct._CONFIG_REC* %2, %struct._CONFIG_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %7, metadata !1640, metadata !157), !dbg !1641
  store %struct._CONFIG_NODE* %3, %struct._CONFIG_NODE** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %8, metadata !1642, metadata !157), !dbg !1643
  %9 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %7, align 8, !dbg !1644
  %10 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !1645
  %11 = call %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC* %9, %struct._CONFIG_NODE* %10, i8* null, i32 2), !dbg !1646
  store %struct._CONFIG_NODE* %11, %struct._CONFIG_NODE** %8, align 8, !dbg !1647
  %12 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %7, align 8, !dbg !1648
  %13 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !1649
  %14 = load %struct._NICK_REC*, %struct._NICK_REC** %6, align 8, !dbg !1650
  %15 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %14, i32 0, i32 3, !dbg !1651
  %16 = load i8*, i8** %15, align 8, !dbg !1651
  call void @config_node_set_str(%struct._CONFIG_REC* %12, %struct._CONFIG_NODE* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i8* %16), !dbg !1652
  %17 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %7, align 8, !dbg !1653
  %18 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !1654
  %19 = load %struct._NICK_REC*, %struct._NICK_REC** %6, align 8, !dbg !1655
  %20 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %19, i32 0, i32 7, !dbg !1656
  %21 = load i8, i8* %20, align 4, !dbg !1656
  %22 = lshr i8 %21, 3, !dbg !1656
  %23 = and i8 %22, 1, !dbg !1656
  %24 = zext i8 %23 to i32, !dbg !1656
  call void @config_node_set_bool(%struct._CONFIG_REC* %17, %struct._CONFIG_NODE* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0), i32 %24), !dbg !1657
  %25 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %7, align 8, !dbg !1658
  %26 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !1659
  %27 = load %struct._NICK_REC*, %struct._NICK_REC** %6, align 8, !dbg !1660
  %28 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %27, i32 0, i32 7, !dbg !1661
  %29 = load i8, i8* %28, align 4, !dbg !1661
  %30 = lshr i8 %29, 4, !dbg !1661
  %31 = and i8 %30, 1, !dbg !1661
  %32 = zext i8 %31 to i32, !dbg !1661
  call void @config_node_set_bool(%struct._CONFIG_REC* %25, %struct._CONFIG_NODE* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i32 %32), !dbg !1662
  %33 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %7, align 8, !dbg !1663
  %34 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !1664
  %35 = load %struct._NICK_REC*, %struct._NICK_REC** %6, align 8, !dbg !1665
  %36 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %35, i32 0, i32 7, !dbg !1666
  %37 = load i8, i8* %36, align 4, !dbg !1666
  %38 = lshr i8 %37, 5, !dbg !1666
  %39 = and i8 %38, 1, !dbg !1666
  %40 = zext i8 %39 to i32, !dbg !1666
  call void @config_node_set_bool(%struct._CONFIG_REC* %33, %struct._CONFIG_NODE* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i32 %40), !dbg !1667
  %41 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %7, align 8, !dbg !1668
  %42 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !1669
  %43 = load %struct._NICK_REC*, %struct._NICK_REC** %6, align 8, !dbg !1670
  %44 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %43, i32 0, i32 8, !dbg !1671
  %45 = getelementptr inbounds [8 x i8], [8 x i8]* %44, i32 0, i32 0, !dbg !1670
  call void @config_node_set_str(%struct._CONFIG_REC* %41, %struct._CONFIG_NODE* %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), i8* %45), !dbg !1672
  %46 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %5, align 8, !dbg !1673
  %47 = load %struct._NICK_REC*, %struct._NICK_REC** %6, align 8, !dbg !1674
  %48 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %7, align 8, !dbg !1675
  %49 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !1676
  %50 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.51, i32 0, i32 0), i32 4, %struct._CHANNEL_REC* %46, %struct._NICK_REC* %47, %struct._CONFIG_REC* %48, %struct._CONFIG_NODE* %49), !dbg !1677
  ret void, !dbg !1678
}

declare void @g_slist_free(%struct._GSList*) #2

declare i32 @config_parse(%struct._CONFIG_REC*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!148, !149}
!llvm.ident = !{!150}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !103, globals: !118)
!1 = !DIFile(filename: "line81-session.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !15, !42, !49, !54, !63, !74, !95}
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
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 75, size: 32, align: 32, elements: !17)
!16 = !DIFile(filename: "/usr/include/glib-2.0/glib/gscanner.h", directory: "/home/lichi/Desktop/irssi/task1")
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41}
!18 = !DIEnumerator(name: "G_TOKEN_EOF", value: 0)
!19 = !DIEnumerator(name: "G_TOKEN_LEFT_PAREN", value: 40)
!20 = !DIEnumerator(name: "G_TOKEN_RIGHT_PAREN", value: 41)
!21 = !DIEnumerator(name: "G_TOKEN_LEFT_CURLY", value: 123)
!22 = !DIEnumerator(name: "G_TOKEN_RIGHT_CURLY", value: 125)
!23 = !DIEnumerator(name: "G_TOKEN_LEFT_BRACE", value: 91)
!24 = !DIEnumerator(name: "G_TOKEN_RIGHT_BRACE", value: 93)
!25 = !DIEnumerator(name: "G_TOKEN_EQUAL_SIGN", value: 61)
!26 = !DIEnumerator(name: "G_TOKEN_COMMA", value: 44)
!27 = !DIEnumerator(name: "G_TOKEN_NONE", value: 256)
!28 = !DIEnumerator(name: "G_TOKEN_ERROR", value: 257)
!29 = !DIEnumerator(name: "G_TOKEN_CHAR", value: 258)
!30 = !DIEnumerator(name: "G_TOKEN_BINARY", value: 259)
!31 = !DIEnumerator(name: "G_TOKEN_OCTAL", value: 260)
!32 = !DIEnumerator(name: "G_TOKEN_INT", value: 261)
!33 = !DIEnumerator(name: "G_TOKEN_HEX", value: 262)
!34 = !DIEnumerator(name: "G_TOKEN_FLOAT", value: 263)
!35 = !DIEnumerator(name: "G_TOKEN_STRING", value: 264)
!36 = !DIEnumerator(name: "G_TOKEN_SYMBOL", value: 265)
!37 = !DIEnumerator(name: "G_TOKEN_IDENTIFIER", value: 266)
!38 = !DIEnumerator(name: "G_TOKEN_IDENTIFIER_NULL", value: 267)
!39 = !DIEnumerator(name: "G_TOKEN_COMMENT_SINGLE", value: 268)
!40 = !DIEnumerator(name: "G_TOKEN_COMMENT_MULTI", value: 269)
!41 = !DIEnumerator(name: "G_TOKEN_LAST", value: 270)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !43, line: 69, size: 32, align: 32, elements: !44)
!43 = !DIFile(filename: "/usr/include/glib-2.0/glib/giochannel.h", directory: "/home/lichi/Desktop/irssi/task1")
!44 = !{!45, !46, !47, !48}
!45 = !DIEnumerator(name: "G_IO_STATUS_ERROR", value: 0)
!46 = !DIEnumerator(name: "G_IO_STATUS_NORMAL", value: 1)
!47 = !DIEnumerator(name: "G_IO_STATUS_EOF", value: 2)
!48 = !DIEnumerator(name: "G_IO_STATUS_AGAIN", value: 3)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !43, line: 77, size: 32, align: 32, elements: !50)
!50 = !{!51, !52, !53}
!51 = !DIEnumerator(name: "G_SEEK_CUR", value: 0)
!52 = !DIEnumerator(name: "G_SEEK_SET", value: 1)
!53 = !DIEnumerator(name: "G_SEEK_END", value: 2)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !55, line: 31, size: 32, align: 32, elements: !56)
!55 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/irssi/task1")
!56 = !{!57, !58, !59, !60, !61, !62}
!57 = !DIEnumerator(name: "G_IO_IN", value: 1)
!58 = !DIEnumerator(name: "G_IO_OUT", value: 4)
!59 = !DIEnumerator(name: "G_IO_PRI", value: 2)
!60 = !DIEnumerator(name: "G_IO_ERR", value: 8)
!61 = !DIEnumerator(name: "G_IO_HUP", value: 16)
!62 = !DIEnumerator(name: "G_IO_NVAL", value: 32)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !43, line: 84, size: 32, align: 32, elements: !64)
!64 = !{!65, !66, !67, !68, !69, !70, !71, !72, !73}
!65 = !DIEnumerator(name: "G_IO_FLAG_APPEND", value: 1)
!66 = !DIEnumerator(name: "G_IO_FLAG_NONBLOCK", value: 2)
!67 = !DIEnumerator(name: "G_IO_FLAG_IS_READABLE", value: 4)
!68 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITABLE", value: 8)
!69 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITEABLE", value: 8)
!70 = !DIEnumerator(name: "G_IO_FLAG_IS_SEEKABLE", value: 16)
!71 = !DIEnumerator(name: "G_IO_FLAG_MASK", value: 31)
!72 = !DIEnumerator(name: "G_IO_FLAG_GET_MASK", value: 31)
!73 = !DIEnumerator(name: "G_IO_FLAG_SET_MASK", value: 3)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !75, line: 25, size: 32, align: 32, elements: !76)
!75 = !DIFile(filename: "commands.h", directory: "/home/lichi/Desktop/irssi/task1")
!76 = !{!77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94}
!77 = !DIEnumerator(name: "CMDERR_OPTION_UNKNOWN", value: -3)
!78 = !DIEnumerator(name: "CMDERR_OPTION_AMBIGUOUS", value: -2)
!79 = !DIEnumerator(name: "CMDERR_OPTION_ARG_MISSING", value: -1)
!80 = !DIEnumerator(name: "CMDERR_UNKNOWN", value: 0)
!81 = !DIEnumerator(name: "CMDERR_AMBIGUOUS", value: 1)
!82 = !DIEnumerator(name: "CMDERR_ERRNO", value: 2)
!83 = !DIEnumerator(name: "CMDERR_NOT_ENOUGH_PARAMS", value: 3)
!84 = !DIEnumerator(name: "CMDERR_NOT_CONNECTED", value: 4)
!85 = !DIEnumerator(name: "CMDERR_NOT_JOINED", value: 5)
!86 = !DIEnumerator(name: "CMDERR_CHAN_NOT_FOUND", value: 6)
!87 = !DIEnumerator(name: "CMDERR_CHAN_NOT_SYNCED", value: 7)
!88 = !DIEnumerator(name: "CMDERR_ILLEGAL_PROTO", value: 8)
!89 = !DIEnumerator(name: "CMDERR_NOT_GOOD_IDEA", value: 9)
!90 = !DIEnumerator(name: "CMDERR_INVALID_TIME", value: 10)
!91 = !DIEnumerator(name: "CMDERR_INVALID_CHARSET", value: 11)
!92 = !DIEnumerator(name: "CMDERR_EVAL_MAX_RECURSE", value: 12)
!93 = !DIEnumerator(name: "CMDERR_PROGRAM_NOT_FOUND", value: 13)
!94 = !DIEnumerator(name: "CMDERR_NO_SERVER_DEFINED", value: 14)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !96, line: 4, size: 32, align: 32, elements: !97)
!96 = !DIFile(filename: "../../src/lib-config/iconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!97 = !{!98, !99, !100, !101, !102}
!98 = !DIEnumerator(name: "NODE_TYPE_KEY", value: 0)
!99 = !DIEnumerator(name: "NODE_TYPE_VALUE", value: 1)
!100 = !DIEnumerator(name: "NODE_TYPE_BLOCK", value: 2)
!101 = !DIEnumerator(name: "NODE_TYPE_LIST", value: 3)
!102 = !DIEnumerator(name: "NODE_TYPE_COMMENT", value: 4)
!103 = !{!104, !105, !112, !114, !116}
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !106, line: 9, baseType: !107)
!106 = !DIFile(filename: "signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, align: 64)
!108 = !DISubroutineType(types: !109)
!109 = !{null, !110, !110, !110, !110, !110, !110}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64, align: 64)
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !113, line: 77, baseType: !104)
!113 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !113, line: 48, baseType: !115)
!115 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !113, line: 49, baseType: !117)
!117 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!118 = !{!119, !123, !145, !146}
!119 = distinct !DIGlobalVariable(name: "irssi_binary", scope: !0, file: !120, line: 37, type: !121, isLocal: false, isDefinition: true, variable: i8** @irssi_binary)
!120 = !DIFile(filename: "session.c", directory: "/home/lichi/Desktop/irssi/task1")
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!122 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!123 = distinct !DIGlobalVariable(name: "options", scope: !124, file: !120, line: 336, type: !128, isLocal: true, isDefinition: true, variable: [2 x %struct._GOptionEntry]* @session_register_options.options)
!124 = distinct !DISubprogram(name: "session_register_options", scope: !120, file: !120, line: 334, type: !125, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !127)
!125 = !DISubroutineType(types: !126)
!126 = !{null}
!127 = !{}
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 768, align: 64, elements: !143)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "GOptionEntry", file: !4, line: 52, baseType: !130)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GOptionEntry", file: !4, line: 257, size: 384, align: 64, elements: !131)
!131 = !{!132, !136, !137, !138, !140, !141, !142}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "long_name", scope: !130, file: !4, line: 259, baseType: !133, size: 64, align: 64)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, align: 64)
!134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !113, line: 46, baseType: !122)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "short_name", scope: !130, file: !4, line: 260, baseType: !135, size: 8, align: 8, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !130, file: !4, line: 261, baseType: !116, size: 32, align: 32, offset: 96)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !130, file: !4, line: 263, baseType: !139, size: 32, align: 32, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "GOptionArg", file: !4, line: 129, baseType: !3)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "arg_data", scope: !130, file: !4, line: 264, baseType: !112, size: 64, align: 64, offset: 192)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !130, file: !4, line: 266, baseType: !133, size: 64, align: 64, offset: 256)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "arg_description", scope: !130, file: !4, line: 267, baseType: !133, size: 64, align: 64, offset: 320)
!143 = !{!144}
!144 = !DISubrange(count: 2)
!145 = distinct !DIGlobalVariable(name: "session_file", scope: !0, file: !120, line: 36, type: !121, isLocal: true, isDefinition: true, variable: i8** @session_file)
!146 = distinct !DIGlobalVariable(name: "session_args", scope: !0, file: !120, line: 39, type: !147, isLocal: true, isDefinition: true, variable: i8*** @session_args)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, align: 64)
!148 = !{i32 2, !"Dwarf Version", i32 4}
!149 = !{i32 2, !"Debug Info Version", i32 3}
!150 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!151 = distinct !DISubprogram(name: "session_set_binary", scope: !120, file: !120, line: 41, type: !152, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !127)
!152 = !DISubroutineType(types: !153)
!153 = !{null, !154}
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64, align: 64)
!155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!156 = !DILocalVariable(name: "path", arg: 1, scope: !151, file: !120, line: 41, type: !154)
!157 = !DIExpression()
!158 = !DILocation(line: 41, column: 37, scope: !151)
!159 = !DILocation(line: 43, column: 2, scope: !151)
!160 = distinct !{!160, !159}
!161 = !DILocation(line: 43, column: 11, scope: !162)
!162 = !DILexicalBlockFile(scope: !163, file: !120, discriminator: 1)
!163 = distinct !DILexicalBlock(scope: !164, file: !120, line: 43, column: 11)
!164 = distinct !DILexicalBlock(scope: !151, file: !120, line: 43, column: 5)
!165 = !DILocation(line: 43, column: 34, scope: !166)
!166 = !DILexicalBlockFile(scope: !167, file: !120, discriminator: 2)
!167 = distinct !DILexicalBlock(scope: !163, file: !120, line: 43, column: 25)
!168 = !DILocation(line: 43, column: 27, scope: !166)
!169 = !DILocation(line: 43, column: 64, scope: !166)
!170 = !DILocation(line: 43, column: 3, scope: !166)
!171 = !DILocation(line: 43, column: 5, scope: !172)
!172 = !DILexicalBlockFile(scope: !164, file: !120, discriminator: 3)
!173 = !DILocation(line: 45, column: 40, scope: !151)
!174 = !DILocation(line: 45, column: 17, scope: !151)
!175 = !DILocation(line: 45, column: 15, scope: !151)
!176 = !DILocation(line: 46, column: 1, scope: !151)
!177 = distinct !DISubprogram(name: "session_upgrade", scope: !120, file: !120, line: 48, type: !125, isLocal: false, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !127)
!178 = !DILocation(line: 50, column: 6, scope: !179)
!179 = distinct !DILexicalBlock(scope: !177, file: !120, line: 50, column: 6)
!180 = !DILocation(line: 50, column: 19, scope: !179)
!181 = !DILocation(line: 50, column: 6, scope: !177)
!182 = !DILocation(line: 51, column: 17, scope: !179)
!183 = !DILocation(line: 53, column: 8, scope: !177)
!184 = !DILocation(line: 53, column: 25, scope: !177)
!185 = !DILocation(line: 53, column: 2, scope: !177)
!186 = !DILocation(line: 54, column: 9, scope: !177)
!187 = !DILocation(line: 55, column: 3, scope: !177)
!188 = !DILocation(line: 55, column: 32, scope: !177)
!189 = !DILocation(line: 55, column: 31, scope: !177)
!190 = !DILocation(line: 55, column: 20, scope: !191)
!191 = !DILexicalBlockFile(scope: !177, file: !120, discriminator: 1)
!192 = !DILocation(line: 54, column: 2, scope: !177)
!193 = !DILocation(line: 56, column: 1, scope: !177)
!194 = !DILocation(line: 56, column: 1, scope: !191)
!195 = !DILocation(line: 341, column: 15, scope: !124)
!196 = !DILocation(line: 342, column: 2, scope: !124)
!197 = !DILocation(line: 343, column: 1, scope: !124)
!198 = distinct !DISubprogram(name: "session_init", scope: !120, file: !120, line: 345, type: !125, isLocal: false, isDefinition: true, scopeLine: 346, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !127)
!199 = !DILocation(line: 347, column: 2, scope: !198)
!200 = !DILocation(line: 349, column: 2, scope: !198)
!201 = !DILocation(line: 350, column: 2, scope: !198)
!202 = !DILocation(line: 351, column: 2, scope: !198)
!203 = !DILocation(line: 352, column: 2, scope: !198)
!204 = !DILocation(line: 353, column: 2, scope: !198)
!205 = !DILocation(line: 354, column: 2, scope: !198)
!206 = !DILocation(line: 355, column: 2, scope: !198)
!207 = !DILocation(line: 356, column: 1, scope: !198)
!208 = distinct !DISubprogram(name: "cmd_upgrade", scope: !120, file: !120, line: 59, type: !152, isLocal: true, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !127)
!209 = !DILocalVariable(name: "data", arg: 1, scope: !208, file: !120, line: 59, type: !154)
!210 = !DILocation(line: 59, column: 37, scope: !208)
!211 = !DILocalVariable(name: "session", scope: !208, file: !120, line: 61, type: !212)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64, align: 64)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "CONFIG_REC", file: !96, line: 18, baseType: !214)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CONFIG_REC", file: !96, line: 49, size: 576, align: 64, elements: !215)
!215 = !{!216, !217, !218, !219, !220, !228, !233, !234, !327, !497, !498}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !214, file: !96, line: 50, baseType: !121, size: 64, align: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "create_mode", scope: !214, file: !96, line: 51, baseType: !117, size: 32, align: 32, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "modifycounter", scope: !214, file: !96, line: 52, baseType: !117, size: 32, align: 32, offset: 96)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "last_error", scope: !214, file: !96, line: 54, baseType: !121, size: 64, align: 64, offset: 128)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "mainnode", scope: !214, file: !96, line: 55, baseType: !221, size: 64, align: 64, offset: 192)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "CONFIG_NODE", file: !96, line: 17, baseType: !223)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CONFIG_NODE", file: !96, line: 20, size: 192, align: 64, elements: !224)
!224 = !{!225, !226, !227}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !223, file: !96, line: 21, baseType: !117, size: 32, align: 32)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !223, file: !96, line: 22, baseType: !121, size: 64, align: 64, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !223, file: !96, line: 23, baseType: !104, size: 64, align: 64, offset: 128)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !214, file: !96, line: 56, baseType: !229, size: 64, align: 64, offset: 256)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64, align: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !231, line: 37, baseType: !232)
!231 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!232 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !231, line: 37, flags: DIFlagFwdDecl)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "cache_nodes", scope: !214, file: !96, line: 57, baseType: !229, size: 64, align: 64, offset: 320)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "scanner", scope: !214, file: !96, line: 59, baseType: !235, size: 64, align: 64, offset: 384)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "GScanner", file: !16, line: 37, baseType: !237)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GScanner", file: !16, line: 169, size: 1152, align: 64, elements: !238)
!238 = !{!239, !240, !243, !244, !245, !250, !283, !285, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !237, file: !16, line: 172, baseType: !112, size: 64, align: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "max_parse_errors", scope: !237, file: !16, line: 173, baseType: !241, size: 32, align: 32, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !113, line: 55, baseType: !242)
!242 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "parse_errors", scope: !237, file: !16, line: 176, baseType: !241, size: 32, align: 32, offset: 96)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "input_name", scope: !237, file: !16, line: 179, baseType: !133, size: 64, align: 64, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "qdata", scope: !237, file: !16, line: 182, baseType: !246, size: 64, align: 64, offset: 192)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64, align: 64)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "GData", file: !248, line: 36, baseType: !249)
!248 = !DIFile(filename: "/usr/include/glib-2.0/glib/gdataset.h", directory: "/home/lichi/Desktop/irssi/task1")
!249 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GData", file: !248, line: 36, flags: DIFlagFwdDecl)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !237, file: !16, line: 185, baseType: !251, size: 64, align: 64, offset: 256)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64, align: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "GScannerConfig", file: !16, line: 38, baseType: !253)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GScannerConfig", file: !16, line: 127, size: 320, align: 64, elements: !254)
!254 = !{!255, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "cset_skip_characters", scope: !253, file: !16, line: 131, baseType: !256, size: 64, align: 64)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "cset_identifier_first", scope: !253, file: !16, line: 132, baseType: !256, size: 64, align: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "cset_identifier_nth", scope: !253, file: !16, line: 133, baseType: !256, size: 64, align: 64, offset: 128)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "cpair_comment_single", scope: !253, file: !16, line: 134, baseType: !256, size: 64, align: 64, offset: 192)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "case_sensitive", scope: !253, file: !16, line: 138, baseType: !241, size: 1, align: 32, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "skip_comment_multi", scope: !253, file: !16, line: 143, baseType: !241, size: 1, align: 32, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "skip_comment_single", scope: !253, file: !16, line: 144, baseType: !241, size: 1, align: 32, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "scan_comment_multi", scope: !253, file: !16, line: 145, baseType: !241, size: 1, align: 32, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "scan_identifier", scope: !253, file: !16, line: 146, baseType: !241, size: 1, align: 32, offset: 260, flags: DIFlagBitField, extraData: i64 256)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "scan_identifier_1char", scope: !253, file: !16, line: 147, baseType: !241, size: 1, align: 32, offset: 261, flags: DIFlagBitField, extraData: i64 256)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "scan_identifier_NULL", scope: !253, file: !16, line: 148, baseType: !241, size: 1, align: 32, offset: 262, flags: DIFlagBitField, extraData: i64 256)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "scan_symbols", scope: !253, file: !16, line: 149, baseType: !241, size: 1, align: 32, offset: 263, flags: DIFlagBitField, extraData: i64 256)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "scan_binary", scope: !253, file: !16, line: 150, baseType: !241, size: 1, align: 32, offset: 264, flags: DIFlagBitField, extraData: i64 256)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "scan_octal", scope: !253, file: !16, line: 151, baseType: !241, size: 1, align: 32, offset: 265, flags: DIFlagBitField, extraData: i64 256)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "scan_float", scope: !253, file: !16, line: 152, baseType: !241, size: 1, align: 32, offset: 266, flags: DIFlagBitField, extraData: i64 256)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "scan_hex", scope: !253, file: !16, line: 153, baseType: !241, size: 1, align: 32, offset: 267, flags: DIFlagBitField, extraData: i64 256)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "scan_hex_dollar", scope: !253, file: !16, line: 154, baseType: !241, size: 1, align: 32, offset: 268, flags: DIFlagBitField, extraData: i64 256)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "scan_string_sq", scope: !253, file: !16, line: 155, baseType: !241, size: 1, align: 32, offset: 269, flags: DIFlagBitField, extraData: i64 256)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "scan_string_dq", scope: !253, file: !16, line: 156, baseType: !241, size: 1, align: 32, offset: 270, flags: DIFlagBitField, extraData: i64 256)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "numbers_2_int", scope: !253, file: !16, line: 157, baseType: !241, size: 1, align: 32, offset: 271, flags: DIFlagBitField, extraData: i64 256)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "int_2_float", scope: !253, file: !16, line: 158, baseType: !241, size: 1, align: 32, offset: 272, flags: DIFlagBitField, extraData: i64 256)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "identifier_2_string", scope: !253, file: !16, line: 159, baseType: !241, size: 1, align: 32, offset: 273, flags: DIFlagBitField, extraData: i64 256)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "char_2_token", scope: !253, file: !16, line: 160, baseType: !241, size: 1, align: 32, offset: 274, flags: DIFlagBitField, extraData: i64 256)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_2_token", scope: !253, file: !16, line: 161, baseType: !241, size: 1, align: 32, offset: 275, flags: DIFlagBitField, extraData: i64 256)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "scope_0_fallback", scope: !253, file: !16, line: 162, baseType: !241, size: 1, align: 32, offset: 276, flags: DIFlagBitField, extraData: i64 256)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "store_int64", scope: !253, file: !16, line: 163, baseType: !241, size: 1, align: 32, offset: 277, flags: DIFlagBitField, extraData: i64 256)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "padding_dummy", scope: !253, file: !16, line: 166, baseType: !241, size: 32, align: 32, offset: 288)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !237, file: !16, line: 188, baseType: !284, size: 32, align: 32, offset: 320)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTokenType", file: !16, line: 109, baseType: !15)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !237, file: !16, line: 189, baseType: !286, size: 64, align: 64, offset: 384)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTokenValue", file: !16, line: 39, baseType: !287)
!287 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_GTokenValue", file: !16, line: 111, size: 64, align: 64, elements: !288)
!288 = !{!289, !290, !291, !294, !295, !296, !299, !302, !303, !304, !305, !308}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "v_symbol", scope: !287, file: !16, line: 113, baseType: !112, size: 64, align: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "v_identifier", scope: !287, file: !16, line: 114, baseType: !256, size: 64, align: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "v_binary", scope: !287, file: !16, line: 115, baseType: !292, size: 64, align: 64)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "gulong", file: !113, line: 54, baseType: !293)
!293 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "v_octal", scope: !287, file: !16, line: 116, baseType: !292, size: 64, align: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "v_int", scope: !287, file: !16, line: 117, baseType: !292, size: 64, align: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "v_int64", scope: !287, file: !16, line: 118, baseType: !297, size: 64, align: 64)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint64", file: !298, line: 52, baseType: !293)
!298 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!299 = !DIDerivedType(tag: DW_TAG_member, name: "v_float", scope: !287, file: !16, line: 119, baseType: !300, size: 64, align: 64)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "gdouble", file: !113, line: 58, baseType: !301)
!301 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "v_hex", scope: !287, file: !16, line: 120, baseType: !292, size: 64, align: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "v_string", scope: !287, file: !16, line: 121, baseType: !256, size: 64, align: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "v_comment", scope: !287, file: !16, line: 122, baseType: !256, size: 64, align: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "v_char", scope: !287, file: !16, line: 123, baseType: !306, size: 8, align: 8)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "guchar", file: !113, line: 52, baseType: !307)
!307 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "v_error", scope: !287, file: !16, line: 124, baseType: !241, size: 32, align: 32)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !237, file: !16, line: 190, baseType: !241, size: 32, align: 32, offset: 448)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "position", scope: !237, file: !16, line: 191, baseType: !241, size: 32, align: 32, offset: 480)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "next_token", scope: !237, file: !16, line: 194, baseType: !284, size: 32, align: 32, offset: 512)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "next_value", scope: !237, file: !16, line: 195, baseType: !286, size: 64, align: 64, offset: 576)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "next_line", scope: !237, file: !16, line: 196, baseType: !241, size: 32, align: 32, offset: 640)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "next_position", scope: !237, file: !16, line: 197, baseType: !241, size: 32, align: 32, offset: 672)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_table", scope: !237, file: !16, line: 201, baseType: !229, size: 64, align: 64, offset: 704)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "input_fd", scope: !237, file: !16, line: 202, baseType: !116, size: 32, align: 32, offset: 768)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !237, file: !16, line: 203, baseType: !133, size: 64, align: 64, offset: 832)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "text_end", scope: !237, file: !16, line: 204, baseType: !133, size: 64, align: 64, offset: 896)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !237, file: !16, line: 205, baseType: !256, size: 64, align: 64, offset: 960)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "scope_id", scope: !237, file: !16, line: 206, baseType: !241, size: 32, align: 32, offset: 1024)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "msg_handler", scope: !237, file: !16, line: 210, baseType: !322, size: 64, align: 64, offset: 1088)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "GScannerMsgFunc", file: !16, line: 41, baseType: !323)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64, align: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{null, !235, !256, !326}
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !113, line: 50, baseType: !116)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !214, file: !96, line: 62, baseType: !328, size: 64, align: 64, offset: 448)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64, align: 64)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !43, line: 41, baseType: !330)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !43, line: 97, size: 896, align: 64, elements: !331)
!331 = !{!332, !333, !464, !465, !470, !471, !472, !473, !474, !483, !484, !485, !489, !490, !491, !492, !493, !494, !495, !496}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !330, file: !43, line: 100, baseType: !116, size: 32, align: 32)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !330, file: !43, line: 101, baseType: !334, size: 64, align: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64, align: 64)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !43, line: 42, baseType: !336)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !43, line: 131, size: 512, align: 64, elements: !337)
!337 = !{!338, !357, !361, !367, !371, !451, !455, !460}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !336, file: !43, line: 133, baseType: !339, size: 64, align: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64, align: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{!342, !328, !256, !343, !344, !345}
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !43, line: 75, baseType: !42)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !298, line: 66, baseType: !293)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64, align: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64, align: 64)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64, align: 64)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !348, line: 42, baseType: !349)
!348 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !348, line: 44, size: 128, align: 64, elements: !350)
!350 = !{!351, !355, !356}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !349, file: !348, line: 46, baseType: !352, size: 32, align: 32)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !353, line: 36, baseType: !354)
!353 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !298, line: 45, baseType: !242)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !349, file: !348, line: 47, baseType: !116, size: 32, align: 32, offset: 32)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !349, file: !348, line: 48, baseType: !256, size: 64, align: 64, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !336, file: !43, line: 138, baseType: !358, size: 64, align: 64, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64, align: 64)
!359 = !DISubroutineType(types: !360)
!360 = !{!342, !328, !133, !343, !344, !345}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !336, file: !43, line: 143, baseType: !362, size: 64, align: 64, offset: 128)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64, align: 64)
!363 = !DISubroutineType(types: !364)
!364 = !{!342, !328, !365, !366, !345}
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !298, line: 51, baseType: !115)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !43, line: 82, baseType: !49)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !336, file: !43, line: 147, baseType: !368, size: 64, align: 64, offset: 192)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64, align: 64)
!369 = !DISubroutineType(types: !370)
!370 = !{!342, !328, !345}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !336, file: !43, line: 149, baseType: !372, size: 64, align: 64, offset: 256)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64, align: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{!375, !328, !450}
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64, align: 64)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !55, line: 64, baseType: !377)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !55, line: 171, size: 768, align: 64, elements: !378)
!378 = !{!379, !380, !400, !427, !428, !432, !433, !434, !435, !443, !444, !445, !446}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !377, file: !55, line: 174, baseType: !112, size: 64, align: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !377, file: !55, line: 175, baseType: !381, size: 64, align: 64, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64, align: 64)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !55, line: 77, baseType: !383)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !55, line: 196, size: 192, align: 64, elements: !384)
!384 = !{!385, !389, !390}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !383, file: !55, line: 198, baseType: !386, size: 64, align: 64)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64, align: 64)
!387 = !DISubroutineType(types: !388)
!388 = !{null, !112}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !383, file: !55, line: 199, baseType: !386, size: 64, align: 64, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !383, file: !55, line: 200, baseType: !391, size: 64, align: 64, offset: 128)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64, align: 64)
!392 = !DISubroutineType(types: !393)
!393 = !{null, !112, !375, !394, !399}
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64, align: 64)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !55, line: 155, baseType: !396)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64, align: 64)
!397 = !DISubroutineType(types: !398)
!398 = !{!326, !112}
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !377, file: !55, line: 177, baseType: !401, size: 64, align: 64, offset: 128)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64, align: 64)
!402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !403)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !55, line: 130, baseType: !404)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !55, line: 214, size: 384, align: 64, elements: !405)
!405 = !{!406, !411, !415, !419, !423, !424}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !404, file: !55, line: 216, baseType: !407, size: 64, align: 64)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64, align: 64)
!408 = !DISubroutineType(types: !409)
!409 = !{!326, !375, !410}
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !404, file: !55, line: 218, baseType: !412, size: 64, align: 64, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64, align: 64)
!413 = !DISubroutineType(types: !414)
!414 = !{!326, !375}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !404, file: !55, line: 219, baseType: !416, size: 64, align: 64, offset: 128)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64, align: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{!326, !375, !395, !112}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !404, file: !55, line: 222, baseType: !420, size: 64, align: 64, offset: 192)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64, align: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{null, !375}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !404, file: !55, line: 226, baseType: !395, size: 64, align: 64, offset: 256)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !404, file: !55, line: 227, baseType: !425, size: 64, align: 64, offset: 320)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !55, line: 212, baseType: !426)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !377, file: !55, line: 178, baseType: !241, size: 32, align: 32, offset: 192)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !377, file: !55, line: 180, baseType: !429, size: 64, align: 64, offset: 256)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64, align: 64)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !55, line: 48, baseType: !431)
!431 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !55, line: 48, flags: DIFlagFwdDecl)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !377, file: !55, line: 182, baseType: !116, size: 32, align: 32, offset: 320)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !377, file: !55, line: 183, baseType: !241, size: 32, align: 32, offset: 352)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !377, file: !55, line: 184, baseType: !241, size: 32, align: 32, offset: 384)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !377, file: !55, line: 186, baseType: !436, size: 64, align: 64, offset: 448)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64, align: 64)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !438, line: 37, baseType: !439)
!438 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !438, line: 39, size: 128, align: 64, elements: !440)
!440 = !{!441, !442}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !439, file: !438, line: 41, baseType: !112, size: 64, align: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !439, file: !438, line: 42, baseType: !436, size: 64, align: 64, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !377, file: !55, line: 188, baseType: !375, size: 64, align: 64, offset: 512)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !377, file: !55, line: 189, baseType: !375, size: 64, align: 64, offset: 576)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !377, file: !55, line: 191, baseType: !121, size: 64, align: 64, offset: 640)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !377, file: !55, line: 193, baseType: !447, size: 64, align: 64, offset: 704)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64, align: 64)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !55, line: 65, baseType: !449)
!449 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !55, line: 65, flags: DIFlagFwdDecl)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !55, line: 39, baseType: !54)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !336, file: !43, line: 151, baseType: !452, size: 64, align: 64, offset: 320)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64, align: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{null, !328}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !336, file: !43, line: 152, baseType: !456, size: 64, align: 64, offset: 384)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64, align: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{!342, !328, !459, !345}
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !43, line: 95, baseType: !63)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !336, file: !43, line: 155, baseType: !461, size: 64, align: 64, offset: 448)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64, align: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{!459, !328}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !330, file: !43, line: 103, baseType: !256, size: 64, align: 64, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !330, file: !43, line: 104, baseType: !466, size: 64, align: 64, offset: 192)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !467, line: 77, baseType: !468)
!467 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64, align: 64)
!469 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !467, line: 77, flags: DIFlagFwdDecl)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !330, file: !43, line: 105, baseType: !466, size: 64, align: 64, offset: 256)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !330, file: !43, line: 106, baseType: !256, size: 64, align: 64, offset: 320)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !330, file: !43, line: 107, baseType: !241, size: 32, align: 32, offset: 384)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !330, file: !43, line: 109, baseType: !343, size: 64, align: 64, offset: 448)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !330, file: !43, line: 110, baseType: !475, size: 64, align: 64, offset: 512)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64, align: 64)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !477, line: 39, baseType: !478)
!477 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !477, line: 41, size: 192, align: 64, elements: !479)
!479 = !{!480, !481, !482}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !478, file: !477, line: 43, baseType: !256, size: 64, align: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !478, file: !477, line: 44, baseType: !343, size: 64, align: 64, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !478, file: !477, line: 45, baseType: !343, size: 64, align: 64, offset: 128)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !330, file: !43, line: 111, baseType: !475, size: 64, align: 64, offset: 576)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !330, file: !43, line: 112, baseType: !475, size: 64, align: 64, offset: 640)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !330, file: !43, line: 113, baseType: !486, size: 48, align: 8, offset: 704)
!486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 48, align: 8, elements: !487)
!487 = !{!488}
!488 = !DISubrange(count: 6)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !330, file: !43, line: 117, baseType: !241, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !330, file: !43, line: 118, baseType: !241, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !330, file: !43, line: 119, baseType: !241, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !330, file: !43, line: 120, baseType: !241, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !330, file: !43, line: 121, baseType: !241, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !330, file: !43, line: 122, baseType: !241, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !330, file: !43, line: 124, baseType: !112, size: 64, align: 64, offset: 768)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !330, file: !43, line: 125, baseType: !112, size: 64, align: 64, offset: 832)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_indent_level", scope: !214, file: !96, line: 63, baseType: !117, size: 32, align: 32, offset: 512)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_last_lf", scope: !214, file: !96, line: 64, baseType: !117, size: 32, align: 32, offset: 544)
!499 = !DILocation(line: 61, column: 14, scope: !208)
!500 = !DILocalVariable(name: "session_file", scope: !208, file: !120, line: 62, type: !121)
!501 = !DILocation(line: 62, column: 8, scope: !208)
!502 = !DILocalVariable(name: "str", scope: !208, file: !120, line: 62, type: !121)
!503 = !DILocation(line: 62, column: 23, scope: !208)
!504 = !DILocalVariable(name: "binary", scope: !208, file: !120, line: 63, type: !121)
!505 = !DILocation(line: 63, column: 8, scope: !208)
!506 = !DILocation(line: 65, column: 7, scope: !507)
!507 = distinct !DILexicalBlock(scope: !208, file: !120, line: 65, column: 6)
!508 = !DILocation(line: 65, column: 6, scope: !507)
!509 = !DILocation(line: 65, column: 12, scope: !507)
!510 = !DILocation(line: 65, column: 6, scope: !208)
!511 = !DILocation(line: 66, column: 10, scope: !507)
!512 = !DILocation(line: 66, column: 8, scope: !507)
!513 = !DILocation(line: 66, column: 3, scope: !507)
!514 = !DILocation(line: 68, column: 39, scope: !515)
!515 = distinct !DILexicalBlock(scope: !208, file: !120, line: 68, column: 6)
!516 = !DILocation(line: 68, column: 16, scope: !515)
!517 = !DILocation(line: 68, column: 14, scope: !515)
!518 = !DILocation(line: 68, column: 46, scope: !515)
!519 = !DILocation(line: 68, column: 6, scope: !208)
!520 = !DILocation(line: 69, column: 3, scope: !515)
!521 = distinct !{!521, !520}
!522 = !DILocation(line: 69, column: 8, scope: !523)
!523 = !DILexicalBlockFile(scope: !524, file: !120, discriminator: 1)
!524 = distinct !DILexicalBlock(scope: !515, file: !120, line: 69, column: 6)
!525 = !DILocation(line: 69, column: 90, scope: !526)
!526 = !DILexicalBlockFile(scope: !523, file: !120, discriminator: 3)
!527 = !DILocation(line: 69, column: 105, scope: !523)
!528 = !DILocation(line: 69, column: 113, scope: !529)
!529 = !DILexicalBlockFile(scope: !524, file: !120, discriminator: 2)
!530 = !DILocation(line: 72, column: 54, scope: !208)
!531 = !DILocation(line: 72, column: 24, scope: !532)
!532 = !DILexicalBlockFile(scope: !208, file: !120, discriminator: 1)
!533 = !DILocation(line: 72, column: 22, scope: !208)
!534 = !DILocation(line: 73, column: 24, scope: !208)
!535 = !DILocation(line: 73, column: 12, scope: !208)
!536 = !DILocation(line: 73, column: 10, scope: !208)
!537 = !DILocation(line: 74, column: 16, scope: !208)
!538 = !DILocation(line: 74, column: 9, scope: !208)
!539 = !DILocation(line: 76, column: 33, scope: !208)
!540 = !DILocation(line: 76, column: 2, scope: !208)
!541 = !DILocation(line: 77, column: 22, scope: !208)
!542 = !DILocation(line: 77, column: 9, scope: !208)
!543 = !DILocation(line: 78, column: 22, scope: !208)
!544 = !DILocation(line: 78, column: 9, scope: !208)
!545 = !DILocation(line: 83, column: 10, scope: !208)
!546 = !DILocation(line: 83, column: 18, scope: !208)
!547 = !DILocation(line: 83, column: 32, scope: !208)
!548 = !DILocation(line: 83, column: 49, scope: !532)
!549 = !DILocation(line: 82, column: 8, scope: !208)
!550 = !DILocation(line: 82, column: 6, scope: !208)
!551 = !DILocation(line: 84, column: 9, scope: !208)
!552 = !DILocation(line: 84, column: 2, scope: !208)
!553 = !DILocation(line: 85, column: 9, scope: !208)
!554 = !DILocation(line: 85, column: 2, scope: !208)
!555 = !DILocation(line: 86, column: 35, scope: !208)
!556 = !DILocation(line: 86, column: 24, scope: !208)
!557 = !DILocation(line: 86, column: 22, scope: !208)
!558 = !DILocation(line: 87, column: 16, scope: !208)
!559 = !DILocation(line: 87, column: 9, scope: !208)
!560 = !DILocation(line: 89, column: 2, scope: !208)
!561 = !DILocation(line: 90, column: 1, scope: !208)
!562 = !DILocation(line: 90, column: 1, scope: !532)
!563 = distinct !DISubprogram(name: "sig_session_save", scope: !120, file: !120, line: 276, type: !564, isLocal: true, isDefinition: true, scopeLine: 277, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !127)
!564 = !DISubroutineType(types: !565)
!565 = !{null, !212}
!566 = !DILocalVariable(name: "config", arg: 1, scope: !563, file: !120, line: 276, type: !212)
!567 = !DILocation(line: 276, column: 42, scope: !563)
!568 = !DILocalVariable(name: "node", scope: !563, file: !120, line: 278, type: !221)
!569 = !DILocation(line: 278, column: 15, scope: !563)
!570 = !DILocalVariable(name: "tmp", scope: !563, file: !120, line: 279, type: !436)
!571 = !DILocation(line: 279, column: 10, scope: !563)
!572 = !DILocalVariable(name: "str", scope: !563, file: !120, line: 280, type: !475)
!573 = !DILocation(line: 280, column: 18, scope: !563)
!574 = !DILocation(line: 283, column: 30, scope: !563)
!575 = !DILocation(line: 283, column: 9, scope: !563)
!576 = !DILocation(line: 283, column: 7, scope: !563)
!577 = !DILocation(line: 284, column: 2, scope: !563)
!578 = !DILocation(line: 284, column: 9, scope: !579)
!579 = !DILexicalBlockFile(scope: !563, file: !120, discriminator: 1)
!580 = !DILocation(line: 284, column: 17, scope: !579)
!581 = !DILocation(line: 284, column: 2, scope: !579)
!582 = !DILocation(line: 285, column: 23, scope: !563)
!583 = !DILocation(line: 285, column: 32, scope: !563)
!584 = !DILocation(line: 285, column: 38, scope: !563)
!585 = !DILocation(line: 285, column: 46, scope: !563)
!586 = !DILocation(line: 285, column: 3, scope: !563)
!587 = !DILocation(line: 284, column: 2, scope: !588)
!588 = !DILexicalBlockFile(scope: !563, file: !120, discriminator: 2)
!589 = distinct !{!589, !577}
!590 = !DILocation(line: 288, column: 15, scope: !563)
!591 = !DILocation(line: 288, column: 13, scope: !563)
!592 = !DILocation(line: 289, column: 13, scope: !593)
!593 = distinct !DILexicalBlock(scope: !563, file: !120, line: 289, column: 2)
!594 = !DILocation(line: 289, column: 11, scope: !593)
!595 = !DILocation(line: 289, column: 7, scope: !593)
!596 = !DILocation(line: 289, column: 33, scope: !597)
!597 = !DILexicalBlockFile(scope: !598, file: !120, discriminator: 1)
!598 = distinct !DILexicalBlock(scope: !593, file: !120, line: 289, column: 2)
!599 = !DILocation(line: 289, column: 37, scope: !597)
!600 = !DILocation(line: 289, column: 2, scope: !597)
!601 = !DILocation(line: 290, column: 40, scope: !598)
!602 = !DILocation(line: 290, column: 69, scope: !598)
!603 = !DILocation(line: 290, column: 74, scope: !598)
!604 = !DILocation(line: 290, column: 60, scope: !598)
!605 = !DILocation(line: 290, column: 53, scope: !598)
!606 = !DILocation(line: 290, column: 17, scope: !598)
!607 = !DILocation(line: 289, column: 51, scope: !608)
!608 = !DILexicalBlockFile(scope: !598, file: !120, discriminator: 2)
!609 = !DILocation(line: 289, column: 56, scope: !608)
!610 = !DILocation(line: 289, column: 49, scope: !608)
!611 = !DILocation(line: 289, column: 2, scope: !608)
!612 = distinct !{!612, !613}
!613 = !DILocation(line: 289, column: 2, scope: !563)
!614 = !DILocation(line: 291, column: 29, scope: !563)
!615 = !DILocation(line: 291, column: 37, scope: !563)
!616 = !DILocation(line: 291, column: 45, scope: !563)
!617 = !DILocation(line: 291, column: 63, scope: !563)
!618 = !DILocation(line: 291, column: 68, scope: !563)
!619 = !DILocation(line: 291, column: 9, scope: !563)
!620 = !DILocation(line: 292, column: 23, scope: !563)
!621 = !DILocation(line: 292, column: 9, scope: !563)
!622 = !DILocation(line: 293, column: 1, scope: !563)
!623 = distinct !DISubprogram(name: "sig_session_restore", scope: !120, file: !120, line: 295, type: !564, isLocal: true, isDefinition: true, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !127)
!624 = !DILocalVariable(name: "config", arg: 1, scope: !623, file: !120, line: 295, type: !212)
!625 = !DILocation(line: 295, column: 45, scope: !623)
!626 = !DILocalVariable(name: "node", scope: !623, file: !120, line: 297, type: !221)
!627 = !DILocation(line: 297, column: 15, scope: !623)
!628 = !DILocalVariable(name: "tmp", scope: !623, file: !120, line: 298, type: !436)
!629 = !DILocation(line: 298, column: 17, scope: !623)
!630 = !DILocalVariable(name: "pids", scope: !623, file: !120, line: 299, type: !147)
!631 = !DILocation(line: 299, column: 16, scope: !623)
!632 = !DILocalVariable(name: "pid", scope: !623, file: !120, line: 299, type: !147)
!633 = !DILocation(line: 299, column: 24, scope: !623)
!634 = !DILocation(line: 302, column: 30, scope: !623)
!635 = !DILocation(line: 302, column: 9, scope: !623)
!636 = !DILocation(line: 302, column: 7, scope: !623)
!637 = !DILocation(line: 303, column: 6, scope: !638)
!638 = distinct !DILexicalBlock(scope: !623, file: !120, line: 303, column: 6)
!639 = !DILocation(line: 303, column: 11, scope: !638)
!640 = !DILocation(line: 303, column: 6, scope: !623)
!641 = !DILocation(line: 304, column: 27, scope: !642)
!642 = distinct !DILexicalBlock(scope: !638, file: !120, line: 303, column: 19)
!643 = !DILocation(line: 304, column: 33, scope: !642)
!644 = !DILocation(line: 304, column: 9, scope: !642)
!645 = !DILocation(line: 304, column: 7, scope: !642)
!646 = !DILocation(line: 305, column: 3, scope: !642)
!647 = !DILocation(line: 305, column: 10, scope: !648)
!648 = !DILexicalBlockFile(scope: !649, file: !120, discriminator: 1)
!649 = distinct !DILexicalBlock(scope: !650, file: !120, line: 305, column: 3)
!650 = distinct !DILexicalBlock(scope: !642, file: !120, line: 305, column: 3)
!651 = !DILocation(line: 305, column: 14, scope: !648)
!652 = !DILocation(line: 305, column: 3, scope: !648)
!653 = !DILocation(line: 306, column: 27, scope: !649)
!654 = !DILocation(line: 306, column: 32, scope: !649)
!655 = !DILocation(line: 306, column: 4, scope: !649)
!656 = !DILocation(line: 305, column: 45, scope: !657)
!657 = !DILexicalBlockFile(scope: !649, file: !120, discriminator: 2)
!658 = !DILocation(line: 305, column: 28, scope: !657)
!659 = !DILocation(line: 305, column: 26, scope: !657)
!660 = !DILocation(line: 305, column: 3, scope: !657)
!661 = distinct !{!661, !646}
!662 = !DILocation(line: 307, column: 2, scope: !642)
!663 = !DILocation(line: 310, column: 40, scope: !623)
!664 = !DILocation(line: 310, column: 48, scope: !623)
!665 = !DILocation(line: 310, column: 20, scope: !623)
!666 = !DILocation(line: 310, column: 9, scope: !667)
!667 = !DILexicalBlockFile(scope: !623, file: !120, discriminator: 1)
!668 = !DILocation(line: 310, column: 7, scope: !623)
!669 = !DILocation(line: 311, column: 13, scope: !670)
!670 = distinct !DILexicalBlock(scope: !623, file: !120, line: 311, column: 2)
!671 = !DILocation(line: 311, column: 11, scope: !670)
!672 = !DILocation(line: 311, column: 7, scope: !670)
!673 = !DILocation(line: 311, column: 20, scope: !674)
!674 = !DILexicalBlockFile(scope: !675, file: !120, discriminator: 1)
!675 = distinct !DILexicalBlock(scope: !670, file: !120, line: 311, column: 2)
!676 = !DILocation(line: 311, column: 19, scope: !674)
!677 = !DILocation(line: 311, column: 24, scope: !674)
!678 = !DILocation(line: 311, column: 2, scope: !674)
!679 = !DILocation(line: 312, column: 35, scope: !675)
!680 = !DILocation(line: 312, column: 34, scope: !675)
!681 = !DILocation(line: 312, column: 29, scope: !675)
!682 = !DILocation(line: 312, column: 17, scope: !674)
!683 = !DILocation(line: 312, column: 17, scope: !675)
!684 = !DILocation(line: 311, column: 35, scope: !685)
!685 = !DILexicalBlockFile(scope: !675, file: !120, discriminator: 2)
!686 = !DILocation(line: 311, column: 2, scope: !685)
!687 = distinct !{!687, !688}
!688 = !DILocation(line: 311, column: 2, scope: !623)
!689 = !DILocation(line: 313, column: 20, scope: !623)
!690 = !DILocation(line: 313, column: 9, scope: !623)
!691 = !DILocation(line: 314, column: 1, scope: !623)
!692 = distinct !DISubprogram(name: "session_save_server_channels", scope: !120, file: !120, line: 134, type: !693, isLocal: true, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !127)
!693 = !DISubroutineType(types: !694)
!694 = !{null, !695, !212, !221}
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64, align: 64)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !697, line: 107, baseType: !698)
!697 = !DIFile(filename: "../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !699, line: 30, size: 2240, align: 64, elements: !700)
!699 = !DIFile(filename: "servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!700 = !{!701, !703, !704, !705, !779, !784, !785, !786, !787, !788, !789, !790, !791, !792, !809, !810, !812, !813, !814, !818, !819, !820, !821, !822, !823, !824, !825, !826, !832, !833, !834, !835, !836, !840, !844, !848, !852, !856, !860, !937, !944, !948}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !698, file: !702, line: 3, baseType: !117, size: 32, align: 32)
!702 = !DIFile(filename: "server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!703 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !698, file: !702, line: 4, baseType: !117, size: 32, align: 32, offset: 32)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !698, file: !702, line: 6, baseType: !117, size: 32, align: 32, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !698, file: !702, line: 8, baseType: !706, size: 64, align: 64, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64, align: 64)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !697, line: 113, baseType: !708)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !699, line: 25, size: 1920, align: 64, elements: !709)
!709 = !{!710, !712, !713, !714, !715, !716, !717, !718, !719, !721, !722, !723, !724, !725, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !708, file: !711, line: 3, baseType: !117, size: 32, align: 32)
!711 = !DIFile(filename: "server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!712 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !708, file: !711, line: 4, baseType: !117, size: 32, align: 32, offset: 32)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !708, file: !711, line: 6, baseType: !117, size: 32, align: 32, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !708, file: !711, line: 9, baseType: !121, size: 64, align: 64, offset: 128)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !708, file: !711, line: 10, baseType: !117, size: 32, align: 32, offset: 192)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !708, file: !711, line: 11, baseType: !121, size: 64, align: 64, offset: 256)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !708, file: !711, line: 11, baseType: !121, size: 64, align: 64, offset: 320)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !708, file: !711, line: 11, baseType: !121, size: 64, align: 64, offset: 384)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !708, file: !711, line: 13, baseType: !720, size: 16, align: 16, offset: 448)
!720 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !708, file: !711, line: 14, baseType: !121, size: 64, align: 64, offset: 512)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !708, file: !711, line: 15, baseType: !121, size: 64, align: 64, offset: 576)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !708, file: !711, line: 16, baseType: !117, size: 32, align: 32, offset: 640)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !708, file: !711, line: 17, baseType: !121, size: 64, align: 64, offset: 704)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !708, file: !711, line: 19, baseType: !726, size: 64, align: 64, offset: 768)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64, align: 64)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !697, line: 99, baseType: !728)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !729, line: 22, size: 160, align: 32, elements: !730)
!729 = !DIFile(filename: "network.h", directory: "/home/lichi/Desktop/irssi/task1")
!730 = !{!731, !732}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !728, file: !729, line: 23, baseType: !720, size: 16, align: 16)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !728, file: !729, line: 24, baseType: !733, size: 128, align: 32, offset: 32)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !734, line: 211, size: 128, align: 32, elements: !735)
!734 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/irssi/task1")
!735 = !{!736}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !733, file: !734, line: 220, baseType: !737, size: 128, align: 32)
!737 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !733, file: !734, line: 213, size: 128, align: 32, elements: !738)
!738 = !{!739, !745, !750}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !737, file: !734, line: 215, baseType: !740, size: 128, align: 8)
!740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !741, size: 128, align: 8, elements: !743)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !742, line: 48, baseType: !307)
!742 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/irssi/task1")
!743 = !{!744}
!744 = !DISubrange(count: 16)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !737, file: !734, line: 217, baseType: !746, size: 128, align: 16)
!746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !747, size: 128, align: 16, elements: !748)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !742, line: 49, baseType: !720)
!748 = !{!749}
!749 = !DISubrange(count: 8)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !737, file: !734, line: 218, baseType: !751, size: 128, align: 32)
!751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !752, size: 128, align: 32, elements: !753)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !742, line: 51, baseType: !242)
!753 = !{!754}
!754 = !DISubrange(count: 4)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !708, file: !711, line: 19, baseType: !726, size: 64, align: 64, offset: 832)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !708, file: !711, line: 21, baseType: !121, size: 64, align: 64, offset: 896)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !708, file: !711, line: 22, baseType: !121, size: 64, align: 64, offset: 960)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !708, file: !711, line: 23, baseType: !121, size: 64, align: 64, offset: 1024)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !708, file: !711, line: 24, baseType: !121, size: 64, align: 64, offset: 1088)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !708, file: !711, line: 26, baseType: !121, size: 64, align: 64, offset: 1152)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !708, file: !711, line: 27, baseType: !121, size: 64, align: 64, offset: 1216)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !708, file: !711, line: 28, baseType: !121, size: 64, align: 64, offset: 1280)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !708, file: !711, line: 29, baseType: !121, size: 64, align: 64, offset: 1344)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !708, file: !711, line: 30, baseType: !121, size: 64, align: 64, offset: 1408)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !708, file: !711, line: 31, baseType: !121, size: 64, align: 64, offset: 1472)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !708, file: !711, line: 32, baseType: !121, size: 64, align: 64, offset: 1536)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !708, file: !711, line: 33, baseType: !121, size: 64, align: 64, offset: 1600)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !708, file: !711, line: 35, baseType: !328, size: 64, align: 64, offset: 1664)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !708, file: !711, line: 38, baseType: !242, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !708, file: !711, line: 39, baseType: !242, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !708, file: !711, line: 40, baseType: !242, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !708, file: !711, line: 41, baseType: !242, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !708, file: !711, line: 42, baseType: !242, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !708, file: !711, line: 43, baseType: !242, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !708, file: !711, line: 44, baseType: !242, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !708, file: !711, line: 45, baseType: !242, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !708, file: !711, line: 46, baseType: !121, size: 64, align: 64, offset: 1792)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !708, file: !711, line: 47, baseType: !121, size: 64, align: 64, offset: 1856)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !698, file: !702, line: 9, baseType: !780, size: 64, align: 64, offset: 192)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !781, line: 75, baseType: !782)
!781 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !783, line: 139, baseType: !115)
!783 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!784 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !698, file: !702, line: 10, baseType: !780, size: 64, align: 64, offset: 256)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !698, file: !702, line: 12, baseType: !121, size: 64, align: 64, offset: 320)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !698, file: !702, line: 13, baseType: !121, size: 64, align: 64, offset: 384)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !698, file: !702, line: 15, baseType: !242, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !698, file: !702, line: 16, baseType: !242, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !698, file: !702, line: 17, baseType: !242, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !698, file: !702, line: 18, baseType: !242, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !698, file: !702, line: 19, baseType: !242, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !698, file: !702, line: 21, baseType: !793, size: 64, align: 64, offset: 512)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64, align: 64)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !697, line: 102, baseType: !795)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !796, line: 7, size: 384, align: 64, elements: !797)
!796 = !DIFile(filename: "net-sendbuffer.h", directory: "/home/lichi/Desktop/irssi/task1")
!797 = !{!798, !799, !803, !804, !805, !806, !807, !808}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !795, file: !796, line: 8, baseType: !328, size: 64, align: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "readbuffer", scope: !795, file: !796, line: 9, baseType: !800, size: 64, align: 64, offset: 64)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64, align: 64)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "LINEBUF_REC", file: !697, line: 101, baseType: !802)
!802 = !DICompositeType(tag: DW_TAG_structure_type, name: "_LINEBUF_REC", file: !697, line: 101, flags: DIFlagFwdDecl)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "send_tag", scope: !795, file: !796, line: 11, baseType: !117, size: 32, align: 32, offset: 128)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "bufsize", scope: !795, file: !796, line: 12, baseType: !117, size: 32, align: 32, offset: 160)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !795, file: !796, line: 13, baseType: !117, size: 32, align: 32, offset: 192)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !795, file: !796, line: 14, baseType: !121, size: 64, align: 64, offset: 256)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "def_bufsize", scope: !795, file: !796, line: 15, baseType: !117, size: 32, align: 32, offset: 320)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !795, file: !796, line: 16, baseType: !242, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !698, file: !702, line: 22, baseType: !117, size: 32, align: 32, offset: 576)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !698, file: !702, line: 25, baseType: !811, size: 128, align: 64, offset: 640)
!811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !328, size: 128, align: 64, elements: !143)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !698, file: !702, line: 26, baseType: !117, size: 32, align: 32, offset: 768)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !698, file: !702, line: 27, baseType: !117, size: 32, align: 32, offset: 800)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !698, file: !702, line: 29, baseType: !815, size: 64, align: 64, offset: 832)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64, align: 64)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !697, line: 103, baseType: !817)
!817 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !697, line: 103, flags: DIFlagFwdDecl)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !698, file: !702, line: 30, baseType: !229, size: 64, align: 64, offset: 896)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !698, file: !702, line: 32, baseType: !121, size: 64, align: 64, offset: 960)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !698, file: !702, line: 33, baseType: !121, size: 64, align: 64, offset: 1024)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !698, file: !702, line: 34, baseType: !121, size: 64, align: 64, offset: 1088)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !698, file: !702, line: 35, baseType: !242, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !698, file: !702, line: 36, baseType: !242, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !698, file: !702, line: 37, baseType: !242, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !698, file: !702, line: 38, baseType: !242, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !698, file: !702, line: 40, baseType: !827, size: 128, align: 64, offset: 1216)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !113, line: 504, baseType: !828)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !113, line: 506, size: 128, align: 64, elements: !829)
!829 = !{!830, !831}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !828, file: !113, line: 508, baseType: !114, size: 64, align: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !828, file: !113, line: 509, baseType: !114, size: 64, align: 64, offset: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !698, file: !702, line: 41, baseType: !780, size: 64, align: 64, offset: 1344)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !698, file: !702, line: 42, baseType: !117, size: 32, align: 32, offset: 1408)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !698, file: !702, line: 44, baseType: !436, size: 64, align: 64, offset: 1472)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !698, file: !702, line: 45, baseType: !436, size: 64, align: 64, offset: 1536)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !698, file: !702, line: 53, baseType: !837, size: 64, align: 64, offset: 1600)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64, align: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{null, !695, !154, !117}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !698, file: !702, line: 55, baseType: !841, size: 64, align: 64, offset: 1664)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64, align: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{!117, !695, !122}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !698, file: !702, line: 57, baseType: !845, size: 64, align: 64, offset: 1728)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64, align: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{!117, !695, !154}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !698, file: !702, line: 60, baseType: !849, size: 64, align: 64, offset: 1792)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64, align: 64)
!850 = !DISubroutineType(types: !851)
!851 = !{!154, !695}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !698, file: !702, line: 62, baseType: !853, size: 64, align: 64, offset: 1856)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64, align: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{null, !695, !154, !154, !117}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !698, file: !702, line: 65, baseType: !857, size: 64, align: 64, offset: 1920)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64, align: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{!147, !695, !154, !154}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !698, file: !702, line: 69, baseType: !861, size: 64, align: 64, offset: 1984)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64, align: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{!864, !695, !154}
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64, align: 64)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !697, line: 109, baseType: !866)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !867, line: 15, size: 1408, align: 64, elements: !868)
!867 = !DIFile(filename: "channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!868 = !{!869, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !887, !891, !893, !894, !895, !896, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !866, file: !870, line: 3, baseType: !117, size: 32, align: 32)
!870 = !DIFile(filename: "window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!871 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !866, file: !870, line: 4, baseType: !117, size: 32, align: 32, offset: 32)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !866, file: !870, line: 5, baseType: !229, size: 64, align: 64, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !866, file: !870, line: 7, baseType: !104, size: 64, align: 64, offset: 128)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !866, file: !870, line: 8, baseType: !695, size: 64, align: 64, offset: 192)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !866, file: !870, line: 9, baseType: !121, size: 64, align: 64, offset: 256)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !866, file: !870, line: 10, baseType: !121, size: 64, align: 64, offset: 320)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !866, file: !870, line: 11, baseType: !780, size: 64, align: 64, offset: 384)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !866, file: !870, line: 12, baseType: !117, size: 32, align: 32, offset: 448)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !866, file: !870, line: 13, baseType: !121, size: 64, align: 64, offset: 512)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !866, file: !870, line: 15, baseType: !881, size: 64, align: 64, offset: 576)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64, align: 64)
!882 = !DISubroutineType(types: !883)
!883 = !{null, !884}
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64, align: 64)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !697, line: 108, baseType: !886)
!886 = !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !697, line: 108, flags: DIFlagFwdDecl)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !866, file: !870, line: 17, baseType: !888, size: 64, align: 64, offset: 640)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64, align: 64)
!889 = !DISubroutineType(types: !890)
!890 = !{!154, !884}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !866, file: !892, line: 5, baseType: !121, size: 64, align: 64, offset: 704)
!892 = !DIFile(filename: "channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!893 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !866, file: !892, line: 6, baseType: !121, size: 64, align: 64, offset: 768)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !866, file: !892, line: 7, baseType: !780, size: 64, align: 64, offset: 832)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !866, file: !892, line: 9, baseType: !229, size: 64, align: 64, offset: 896)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !866, file: !892, line: 10, baseType: !897, size: 64, align: 64, offset: 960)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64, align: 64)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !697, line: 111, baseType: !899)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !900, line: 13, size: 576, align: 64, elements: !901)
!900 = !DIFile(filename: "nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!901 = !{!902, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !918, !919}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !899, file: !903, line: 3, baseType: !117, size: 32, align: 32)
!903 = !DIFile(filename: "nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!904 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !899, file: !903, line: 4, baseType: !117, size: 32, align: 32, offset: 32)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !899, file: !903, line: 6, baseType: !780, size: 64, align: 64, offset: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !899, file: !903, line: 8, baseType: !121, size: 64, align: 64, offset: 128)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !899, file: !903, line: 9, baseType: !121, size: 64, align: 64, offset: 192)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !899, file: !903, line: 10, baseType: !121, size: 64, align: 64, offset: 256)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !899, file: !903, line: 11, baseType: !117, size: 32, align: 32, offset: 320)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !899, file: !903, line: 14, baseType: !242, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !899, file: !903, line: 15, baseType: !242, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !899, file: !903, line: 18, baseType: !242, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !899, file: !903, line: 19, baseType: !242, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !899, file: !903, line: 20, baseType: !242, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !899, file: !903, line: 21, baseType: !242, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !899, file: !903, line: 22, baseType: !917, size: 64, align: 8, offset: 360)
!917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 64, align: 8, elements: !748)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !899, file: !903, line: 26, baseType: !104, size: 64, align: 64, offset: 448)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !899, file: !903, line: 28, baseType: !897, size: 64, align: 64, offset: 512)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !866, file: !892, line: 12, baseType: !242, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !866, file: !892, line: 13, baseType: !121, size: 64, align: 64, offset: 1088)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !866, file: !892, line: 14, baseType: !117, size: 32, align: 32, offset: 1152)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !866, file: !892, line: 15, baseType: !121, size: 64, align: 64, offset: 1216)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !866, file: !892, line: 17, baseType: !242, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !866, file: !892, line: 18, baseType: !242, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !866, file: !892, line: 19, baseType: !242, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !866, file: !892, line: 20, baseType: !242, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !866, file: !892, line: 22, baseType: !242, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !866, file: !892, line: 23, baseType: !242, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !866, file: !892, line: 24, baseType: !242, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !866, file: !892, line: 25, baseType: !242, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !866, file: !892, line: 26, baseType: !242, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !866, file: !892, line: 31, baseType: !934, size: 64, align: 64, offset: 1344)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64, align: 64)
!935 = !DISubroutineType(types: !936)
!936 = !{!121, !864}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !698, file: !702, line: 70, baseType: !938, size: 64, align: 64, offset: 2048)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64, align: 64)
!939 = !DISubroutineType(types: !940)
!940 = !{!941, !695, !154}
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64, align: 64)
!942 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !697, line: 110, baseType: !943)
!943 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !697, line: 110, flags: DIFlagFwdDecl)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !698, file: !702, line: 71, baseType: !945, size: 64, align: 64, offset: 2112)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64, align: 64)
!946 = !DISubroutineType(types: !947)
!947 = !{!117, !154, !154}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !698, file: !702, line: 73, baseType: !945, size: 64, align: 64, offset: 2176)
!949 = !DILocalVariable(name: "server", arg: 1, scope: !692, file: !120, line: 134, type: !695)
!950 = !DILocation(line: 134, column: 54, scope: !692)
!951 = !DILocalVariable(name: "config", arg: 2, scope: !692, file: !120, line: 135, type: !212)
!952 = !DILocation(line: 135, column: 19, scope: !692)
!953 = !DILocalVariable(name: "node", arg: 3, scope: !692, file: !120, line: 136, type: !221)
!954 = !DILocation(line: 136, column: 20, scope: !692)
!955 = !DILocalVariable(name: "tmp", scope: !692, file: !120, line: 138, type: !436)
!956 = !DILocation(line: 138, column: 10, scope: !692)
!957 = !DILocation(line: 141, column: 29, scope: !692)
!958 = !DILocation(line: 141, column: 37, scope: !692)
!959 = !DILocation(line: 141, column: 9, scope: !692)
!960 = !DILocation(line: 141, column: 7, scope: !692)
!961 = !DILocation(line: 142, column: 13, scope: !962)
!962 = distinct !DILexicalBlock(scope: !692, file: !120, line: 142, column: 2)
!963 = !DILocation(line: 142, column: 21, scope: !962)
!964 = !DILocation(line: 142, column: 11, scope: !962)
!965 = !DILocation(line: 142, column: 7, scope: !962)
!966 = !DILocation(line: 142, column: 31, scope: !967)
!967 = !DILexicalBlockFile(scope: !968, file: !120, discriminator: 1)
!968 = distinct !DILexicalBlock(scope: !962, file: !120, line: 142, column: 2)
!969 = !DILocation(line: 142, column: 35, scope: !967)
!970 = !DILocation(line: 142, column: 2, scope: !967)
!971 = !DILocation(line: 143, column: 24, scope: !968)
!972 = !DILocation(line: 143, column: 29, scope: !968)
!973 = !DILocation(line: 143, column: 35, scope: !968)
!974 = !DILocation(line: 143, column: 43, scope: !968)
!975 = !DILocation(line: 143, column: 3, scope: !968)
!976 = !DILocation(line: 142, column: 49, scope: !977)
!977 = !DILexicalBlockFile(scope: !968, file: !120, discriminator: 2)
!978 = !DILocation(line: 142, column: 54, scope: !977)
!979 = !DILocation(line: 142, column: 47, scope: !977)
!980 = !DILocation(line: 142, column: 2, scope: !977)
!981 = distinct !{!981, !982}
!982 = !DILocation(line: 142, column: 2, scope: !692)
!983 = !DILocation(line: 144, column: 1, scope: !692)
!984 = distinct !DISubprogram(name: "session_restore_server_channels", scope: !120, file: !120, line: 222, type: !985, isLocal: true, isDefinition: true, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !127)
!985 = !DISubroutineType(types: !986)
!986 = !{null, !695, !221}
!987 = !DILocalVariable(name: "server", arg: 1, scope: !984, file: !120, line: 222, type: !695)
!988 = !DILocation(line: 222, column: 57, scope: !984)
!989 = !DILocalVariable(name: "node", arg: 2, scope: !984, file: !120, line: 223, type: !221)
!990 = !DILocation(line: 223, column: 23, scope: !984)
!991 = !DILocalVariable(name: "tmp", scope: !984, file: !120, line: 225, type: !436)
!992 = !DILocation(line: 225, column: 10, scope: !984)
!993 = !DILocation(line: 228, column: 34, scope: !984)
!994 = !DILocation(line: 228, column: 9, scope: !984)
!995 = !DILocation(line: 228, column: 7, scope: !984)
!996 = !DILocation(line: 229, column: 6, scope: !997)
!997 = distinct !DILexicalBlock(scope: !984, file: !120, line: 229, column: 6)
!998 = !DILocation(line: 229, column: 11, scope: !997)
!999 = !DILocation(line: 229, column: 18, scope: !997)
!1000 = !DILocation(line: 229, column: 21, scope: !1001)
!1001 = !DILexicalBlockFile(scope: !997, file: !120, discriminator: 1)
!1002 = !DILocation(line: 229, column: 27, scope: !1001)
!1003 = !DILocation(line: 229, column: 32, scope: !1001)
!1004 = !DILocation(line: 229, column: 6, scope: !1001)
!1005 = !DILocation(line: 230, column: 27, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !997, file: !120, line: 229, column: 51)
!1007 = !DILocation(line: 230, column: 33, scope: !1006)
!1008 = !DILocation(line: 230, column: 9, scope: !1006)
!1009 = !DILocation(line: 230, column: 7, scope: !1006)
!1010 = !DILocation(line: 231, column: 3, scope: !1006)
!1011 = !DILocation(line: 231, column: 10, scope: !1012)
!1012 = !DILexicalBlockFile(scope: !1013, file: !120, discriminator: 1)
!1013 = distinct !DILexicalBlock(scope: !1014, file: !120, line: 231, column: 3)
!1014 = distinct !DILexicalBlock(scope: !1006, file: !120, line: 231, column: 3)
!1015 = !DILocation(line: 231, column: 14, scope: !1012)
!1016 = !DILocation(line: 231, column: 3, scope: !1012)
!1017 = !DILocation(line: 232, column: 28, scope: !1013)
!1018 = !DILocation(line: 232, column: 36, scope: !1013)
!1019 = !DILocation(line: 232, column: 41, scope: !1013)
!1020 = !DILocation(line: 232, column: 4, scope: !1013)
!1021 = !DILocation(line: 231, column: 45, scope: !1022)
!1022 = !DILexicalBlockFile(scope: !1013, file: !120, discriminator: 2)
!1023 = !DILocation(line: 231, column: 28, scope: !1022)
!1024 = !DILocation(line: 231, column: 26, scope: !1022)
!1025 = !DILocation(line: 231, column: 3, scope: !1022)
!1026 = distinct !{!1026, !1010}
!1027 = !DILocation(line: 233, column: 2, scope: !1006)
!1028 = !DILocation(line: 234, column: 1, scope: !984)
!1029 = distinct !DISubprogram(name: "session_save_channel_nicks", scope: !120, file: !120, line: 107, type: !1030, isLocal: true, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !127)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{null, !864, !212, !221}
!1032 = !DILocalVariable(name: "channel", arg: 1, scope: !1029, file: !120, line: 107, type: !864)
!1033 = !DILocation(line: 107, column: 53, scope: !1029)
!1034 = !DILocalVariable(name: "config", arg: 2, scope: !1029, file: !120, line: 107, type: !212)
!1035 = !DILocation(line: 107, column: 74, scope: !1029)
!1036 = !DILocalVariable(name: "node", arg: 3, scope: !1029, file: !120, line: 108, type: !221)
!1037 = !DILocation(line: 108, column: 25, scope: !1029)
!1038 = !DILocalVariable(name: "tmp", scope: !1029, file: !120, line: 110, type: !436)
!1039 = !DILocation(line: 110, column: 10, scope: !1029)
!1040 = !DILocalVariable(name: "nicks", scope: !1029, file: !120, line: 110, type: !436)
!1041 = !DILocation(line: 110, column: 16, scope: !1029)
!1042 = !DILocation(line: 112, column: 29, scope: !1029)
!1043 = !DILocation(line: 112, column: 37, scope: !1029)
!1044 = !DILocation(line: 112, column: 9, scope: !1029)
!1045 = !DILocation(line: 112, column: 7, scope: !1029)
!1046 = !DILocation(line: 113, column: 35, scope: !1029)
!1047 = !DILocation(line: 113, column: 17, scope: !1029)
!1048 = !DILocation(line: 113, column: 15, scope: !1029)
!1049 = !DILocation(line: 114, column: 13, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1029, file: !120, line: 114, column: 2)
!1051 = !DILocation(line: 114, column: 11, scope: !1050)
!1052 = !DILocation(line: 114, column: 7, scope: !1050)
!1053 = !DILocation(line: 114, column: 20, scope: !1054)
!1054 = !DILexicalBlockFile(scope: !1055, file: !120, discriminator: 1)
!1055 = distinct !DILexicalBlock(scope: !1050, file: !120, line: 114, column: 2)
!1056 = !DILocation(line: 114, column: 24, scope: !1054)
!1057 = !DILocation(line: 114, column: 2, scope: !1054)
!1058 = !DILocation(line: 115, column: 21, scope: !1055)
!1059 = !DILocation(line: 115, column: 30, scope: !1055)
!1060 = !DILocation(line: 115, column: 35, scope: !1055)
!1061 = !DILocation(line: 115, column: 41, scope: !1055)
!1062 = !DILocation(line: 115, column: 49, scope: !1055)
!1063 = !DILocation(line: 115, column: 3, scope: !1055)
!1064 = !DILocation(line: 114, column: 38, scope: !1065)
!1065 = !DILexicalBlockFile(scope: !1055, file: !120, discriminator: 2)
!1066 = !DILocation(line: 114, column: 43, scope: !1065)
!1067 = !DILocation(line: 114, column: 36, scope: !1065)
!1068 = !DILocation(line: 114, column: 2, scope: !1065)
!1069 = distinct !{!1069, !1070}
!1070 = !DILocation(line: 114, column: 2, scope: !1029)
!1071 = !DILocation(line: 116, column: 22, scope: !1029)
!1072 = !DILocation(line: 116, column: 9, scope: !1029)
!1073 = !DILocation(line: 117, column: 1, scope: !1029)
!1074 = distinct !DISubprogram(name: "session_restore_channel_nicks", scope: !120, file: !120, line: 186, type: !1075, isLocal: true, isDefinition: true, scopeLine: 188, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !127)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{null, !864, !221}
!1077 = !DILocalVariable(name: "channel", arg: 1, scope: !1074, file: !120, line: 186, type: !864)
!1078 = !DILocation(line: 186, column: 56, scope: !1074)
!1079 = !DILocalVariable(name: "node", arg: 2, scope: !1074, file: !120, line: 187, type: !221)
!1080 = !DILocation(line: 187, column: 21, scope: !1074)
!1081 = !DILocalVariable(name: "tmp", scope: !1074, file: !120, line: 189, type: !436)
!1082 = !DILocation(line: 189, column: 10, scope: !1074)
!1083 = !DILocation(line: 192, column: 34, scope: !1074)
!1084 = !DILocation(line: 192, column: 9, scope: !1074)
!1085 = !DILocation(line: 192, column: 7, scope: !1074)
!1086 = !DILocation(line: 193, column: 6, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1074, file: !120, line: 193, column: 6)
!1088 = !DILocation(line: 193, column: 11, scope: !1087)
!1089 = !DILocation(line: 193, column: 18, scope: !1087)
!1090 = !DILocation(line: 193, column: 21, scope: !1091)
!1091 = !DILexicalBlockFile(scope: !1087, file: !120, discriminator: 1)
!1092 = !DILocation(line: 193, column: 27, scope: !1091)
!1093 = !DILocation(line: 193, column: 32, scope: !1091)
!1094 = !DILocation(line: 193, column: 6, scope: !1091)
!1095 = !DILocation(line: 194, column: 27, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1087, file: !120, line: 193, column: 51)
!1097 = !DILocation(line: 194, column: 33, scope: !1096)
!1098 = !DILocation(line: 194, column: 9, scope: !1096)
!1099 = !DILocation(line: 194, column: 7, scope: !1096)
!1100 = !DILocation(line: 195, column: 3, scope: !1096)
!1101 = !DILocation(line: 195, column: 10, scope: !1102)
!1102 = !DILexicalBlockFile(scope: !1103, file: !120, discriminator: 1)
!1103 = distinct !DILexicalBlock(scope: !1104, file: !120, line: 195, column: 3)
!1104 = distinct !DILexicalBlock(scope: !1096, file: !120, line: 195, column: 3)
!1105 = !DILocation(line: 195, column: 14, scope: !1102)
!1106 = !DILocation(line: 195, column: 3, scope: !1102)
!1107 = !DILocation(line: 197, column: 9, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1103, file: !120, line: 195, column: 51)
!1109 = !DILocation(line: 197, column: 18, scope: !1108)
!1110 = !DILocation(line: 197, column: 23, scope: !1108)
!1111 = !DILocation(line: 196, column: 4, scope: !1108)
!1112 = !DILocation(line: 198, column: 3, scope: !1108)
!1113 = !DILocation(line: 195, column: 45, scope: !1114)
!1114 = !DILexicalBlockFile(scope: !1103, file: !120, discriminator: 2)
!1115 = !DILocation(line: 195, column: 28, scope: !1114)
!1116 = !DILocation(line: 195, column: 26, scope: !1114)
!1117 = !DILocation(line: 195, column: 3, scope: !1114)
!1118 = distinct !{!1118, !1100}
!1119 = !DILocation(line: 199, column: 2, scope: !1096)
!1120 = !DILocation(line: 200, column: 1, scope: !1074)
!1121 = distinct !DISubprogram(name: "sig_init_finished", scope: !120, file: !120, line: 316, type: !125, isLocal: true, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !127)
!1122 = !DILocalVariable(name: "session", scope: !1121, file: !120, line: 318, type: !212)
!1123 = !DILocation(line: 318, column: 14, scope: !1121)
!1124 = !DILocation(line: 320, column: 6, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1121, file: !120, line: 320, column: 6)
!1126 = !DILocation(line: 320, column: 19, scope: !1125)
!1127 = !DILocation(line: 320, column: 6, scope: !1121)
!1128 = !DILocation(line: 321, column: 3, scope: !1125)
!1129 = !DILocation(line: 323, column: 24, scope: !1121)
!1130 = !DILocation(line: 323, column: 12, scope: !1121)
!1131 = !DILocation(line: 323, column: 10, scope: !1121)
!1132 = !DILocation(line: 324, column: 6, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1121, file: !120, line: 324, column: 6)
!1134 = !DILocation(line: 324, column: 14, scope: !1133)
!1135 = !DILocation(line: 324, column: 6, scope: !1121)
!1136 = !DILocation(line: 325, column: 3, scope: !1133)
!1137 = !DILocation(line: 327, column: 15, scope: !1121)
!1138 = !DILocation(line: 327, column: 2, scope: !1121)
!1139 = !DILocation(line: 328, column: 43, scope: !1121)
!1140 = !DILocation(line: 328, column: 9, scope: !1121)
!1141 = !DILocation(line: 329, column: 15, scope: !1121)
!1142 = !DILocation(line: 329, column: 2, scope: !1121)
!1143 = !DILocation(line: 331, column: 9, scope: !1121)
!1144 = !DILocation(line: 331, column: 2, scope: !1121)
!1145 = !DILocation(line: 332, column: 1, scope: !1121)
!1146 = !DILocation(line: 332, column: 1, scope: !1147)
!1147 = !DILexicalBlockFile(scope: !1121, file: !120, discriminator: 1)
!1148 = distinct !DISubprogram(name: "session_deinit", scope: !120, file: !120, line: 358, type: !125, isLocal: false, isDefinition: true, scopeLine: 359, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !127)
!1149 = !DILocation(line: 360, column: 9, scope: !1148)
!1150 = !DILocation(line: 360, column: 2, scope: !1148)
!1151 = !DILocation(line: 362, column: 9, scope: !1148)
!1152 = !DILocation(line: 364, column: 2, scope: !1148)
!1153 = !DILocation(line: 365, column: 2, scope: !1148)
!1154 = !DILocation(line: 366, column: 2, scope: !1148)
!1155 = !DILocation(line: 367, column: 2, scope: !1148)
!1156 = !DILocation(line: 368, column: 2, scope: !1148)
!1157 = !DILocation(line: 369, column: 2, scope: !1148)
!1158 = !DILocation(line: 370, column: 2, scope: !1148)
!1159 = !DILocation(line: 371, column: 1, scope: !1148)
!1160 = distinct !DISubprogram(name: "session_save_server", scope: !120, file: !120, line: 146, type: !693, isLocal: true, isDefinition: true, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !127)
!1161 = !DILocalVariable(name: "server", arg: 1, scope: !1160, file: !120, line: 146, type: !695)
!1162 = !DILocation(line: 146, column: 45, scope: !1160)
!1163 = !DILocalVariable(name: "config", arg: 2, scope: !1160, file: !120, line: 146, type: !212)
!1164 = !DILocation(line: 146, column: 65, scope: !1160)
!1165 = !DILocalVariable(name: "node", arg: 3, scope: !1160, file: !120, line: 147, type: !221)
!1166 = !DILocation(line: 147, column: 18, scope: !1160)
!1167 = !DILocalVariable(name: "handle", scope: !1160, file: !120, line: 149, type: !117)
!1168 = !DILocation(line: 149, column: 6, scope: !1160)
!1169 = !DILocation(line: 151, column: 29, scope: !1160)
!1170 = !DILocation(line: 151, column: 37, scope: !1160)
!1171 = !DILocation(line: 151, column: 9, scope: !1160)
!1172 = !DILocation(line: 151, column: 7, scope: !1160)
!1173 = !DILocation(line: 153, column: 22, scope: !1160)
!1174 = !DILocation(line: 153, column: 30, scope: !1160)
!1175 = !DILocation(line: 153, column: 71, scope: !1160)
!1176 = !DILocation(line: 153, column: 79, scope: !1160)
!1177 = !DILocation(line: 153, column: 49, scope: !1160)
!1178 = !DILocation(line: 153, column: 91, scope: !1160)
!1179 = !DILocation(line: 153, column: 2, scope: !1180)
!1180 = !DILexicalBlockFile(scope: !1160, file: !120, discriminator: 1)
!1181 = !DILocation(line: 154, column: 22, scope: !1160)
!1182 = !DILocation(line: 154, column: 30, scope: !1160)
!1183 = !DILocation(line: 154, column: 47, scope: !1160)
!1184 = !DILocation(line: 154, column: 55, scope: !1160)
!1185 = !DILocation(line: 154, column: 64, scope: !1160)
!1186 = !DILocation(line: 154, column: 2, scope: !1160)
!1187 = !DILocation(line: 155, column: 22, scope: !1160)
!1188 = !DILocation(line: 155, column: 30, scope: !1160)
!1189 = !DILocation(line: 155, column: 44, scope: !1160)
!1190 = !DILocation(line: 155, column: 52, scope: !1160)
!1191 = !DILocation(line: 155, column: 61, scope: !1160)
!1192 = !DILocation(line: 155, column: 2, scope: !1160)
!1193 = !DILocation(line: 156, column: 22, scope: !1160)
!1194 = !DILocation(line: 156, column: 30, scope: !1160)
!1195 = !DILocation(line: 156, column: 47, scope: !1160)
!1196 = !DILocation(line: 156, column: 55, scope: !1160)
!1197 = !DILocation(line: 156, column: 64, scope: !1160)
!1198 = !DILocation(line: 156, column: 2, scope: !1160)
!1199 = !DILocation(line: 157, column: 22, scope: !1160)
!1200 = !DILocation(line: 157, column: 30, scope: !1160)
!1201 = !DILocation(line: 157, column: 48, scope: !1160)
!1202 = !DILocation(line: 157, column: 56, scope: !1160)
!1203 = !DILocation(line: 157, column: 65, scope: !1160)
!1204 = !DILocation(line: 157, column: 2, scope: !1160)
!1205 = !DILocation(line: 158, column: 22, scope: !1160)
!1206 = !DILocation(line: 158, column: 30, scope: !1160)
!1207 = !DILocation(line: 158, column: 44, scope: !1160)
!1208 = !DILocation(line: 158, column: 52, scope: !1160)
!1209 = !DILocation(line: 158, column: 2, scope: !1160)
!1210 = !DILocation(line: 159, column: 22, scope: !1160)
!1211 = !DILocation(line: 159, column: 30, scope: !1160)
!1212 = !DILocation(line: 159, column: 47, scope: !1160)
!1213 = !DILocation(line: 159, column: 55, scope: !1160)
!1214 = !DILocation(line: 159, column: 2, scope: !1160)
!1215 = !DILocation(line: 161, column: 23, scope: !1160)
!1216 = !DILocation(line: 161, column: 31, scope: !1160)
!1217 = !DILocation(line: 161, column: 48, scope: !1160)
!1218 = !DILocation(line: 161, column: 56, scope: !1160)
!1219 = !DILocation(line: 161, column: 65, scope: !1160)
!1220 = !DILocation(line: 161, column: 2, scope: !1160)
!1221 = !DILocation(line: 162, column: 22, scope: !1160)
!1222 = !DILocation(line: 162, column: 30, scope: !1160)
!1223 = !DILocation(line: 162, column: 48, scope: !1160)
!1224 = !DILocation(line: 162, column: 56, scope: !1160)
!1225 = !DILocation(line: 162, column: 65, scope: !1160)
!1226 = !DILocation(line: 162, column: 2, scope: !1160)
!1227 = !DILocation(line: 163, column: 22, scope: !1160)
!1228 = !DILocation(line: 163, column: 30, scope: !1160)
!1229 = !DILocation(line: 163, column: 48, scope: !1160)
!1230 = !DILocation(line: 163, column: 56, scope: !1160)
!1231 = !DILocation(line: 163, column: 65, scope: !1160)
!1232 = !DILocation(line: 163, column: 2, scope: !1160)
!1233 = !DILocation(line: 164, column: 23, scope: !1160)
!1234 = !DILocation(line: 164, column: 31, scope: !1160)
!1235 = !DILocation(line: 164, column: 51, scope: !1160)
!1236 = !DILocation(line: 164, column: 59, scope: !1160)
!1237 = !DILocation(line: 164, column: 68, scope: !1160)
!1238 = !DILocation(line: 164, column: 2, scope: !1160)
!1239 = !DILocation(line: 165, column: 22, scope: !1160)
!1240 = !DILocation(line: 165, column: 30, scope: !1160)
!1241 = !DILocation(line: 165, column: 50, scope: !1160)
!1242 = !DILocation(line: 165, column: 58, scope: !1160)
!1243 = !DILocation(line: 165, column: 67, scope: !1160)
!1244 = !DILocation(line: 165, column: 2, scope: !1160)
!1245 = !DILocation(line: 166, column: 22, scope: !1160)
!1246 = !DILocation(line: 166, column: 30, scope: !1160)
!1247 = !DILocation(line: 166, column: 50, scope: !1160)
!1248 = !DILocation(line: 166, column: 58, scope: !1160)
!1249 = !DILocation(line: 166, column: 67, scope: !1160)
!1250 = !DILocation(line: 166, column: 2, scope: !1160)
!1251 = !DILocation(line: 167, column: 22, scope: !1160)
!1252 = !DILocation(line: 167, column: 30, scope: !1160)
!1253 = !DILocation(line: 167, column: 51, scope: !1160)
!1254 = !DILocation(line: 167, column: 59, scope: !1160)
!1255 = !DILocation(line: 167, column: 68, scope: !1160)
!1256 = !DILocation(line: 167, column: 2, scope: !1160)
!1257 = !DILocation(line: 168, column: 22, scope: !1160)
!1258 = !DILocation(line: 168, column: 30, scope: !1160)
!1259 = !DILocation(line: 168, column: 55, scope: !1160)
!1260 = !DILocation(line: 168, column: 63, scope: !1160)
!1261 = !DILocation(line: 168, column: 72, scope: !1160)
!1262 = !DILocation(line: 168, column: 2, scope: !1160)
!1263 = !DILocation(line: 169, column: 22, scope: !1160)
!1264 = !DILocation(line: 169, column: 30, scope: !1160)
!1265 = !DILocation(line: 169, column: 57, scope: !1160)
!1266 = !DILocation(line: 169, column: 65, scope: !1160)
!1267 = !DILocation(line: 169, column: 74, scope: !1160)
!1268 = !DILocation(line: 169, column: 2, scope: !1160)
!1269 = !DILocation(line: 171, column: 58, scope: !1160)
!1270 = !DILocation(line: 171, column: 66, scope: !1160)
!1271 = !DILocation(line: 171, column: 36, scope: !1160)
!1272 = !DILocation(line: 171, column: 11, scope: !1180)
!1273 = !DILocation(line: 171, column: 9, scope: !1160)
!1274 = !DILocation(line: 172, column: 22, scope: !1160)
!1275 = !DILocation(line: 172, column: 30, scope: !1160)
!1276 = !DILocation(line: 172, column: 46, scope: !1160)
!1277 = !DILocation(line: 172, column: 2, scope: !1160)
!1278 = !DILocation(line: 174, column: 40, scope: !1160)
!1279 = !DILocation(line: 174, column: 48, scope: !1160)
!1280 = !DILocation(line: 174, column: 56, scope: !1160)
!1281 = !DILocation(line: 174, column: 2, scope: !1160)
!1282 = !DILocation(line: 177, column: 43, scope: !1160)
!1283 = !DILocation(line: 177, column: 51, scope: !1160)
!1284 = !DILocation(line: 177, column: 21, scope: !1160)
!1285 = !DILocation(line: 177, column: 2, scope: !1180)
!1286 = !DILocation(line: 178, column: 25, scope: !1160)
!1287 = !DILocation(line: 178, column: 33, scope: !1160)
!1288 = !DILocation(line: 178, column: 2, scope: !1160)
!1289 = !DILocation(line: 179, column: 2, scope: !1160)
!1290 = !DILocation(line: 179, column: 10, scope: !1160)
!1291 = !DILocation(line: 179, column: 17, scope: !1160)
!1292 = !DILocation(line: 181, column: 2, scope: !1160)
!1293 = !DILocation(line: 181, column: 10, scope: !1160)
!1294 = !DILocation(line: 181, column: 26, scope: !1160)
!1295 = !DILocation(line: 182, column: 9, scope: !1160)
!1296 = !DILocation(line: 182, column: 17, scope: !1160)
!1297 = !DILocation(line: 182, column: 30, scope: !1160)
!1298 = !DILocation(line: 183, column: 27, scope: !1160)
!1299 = !DILocation(line: 183, column: 9, scope: !1160)
!1300 = !DILocation(line: 184, column: 1, scope: !1160)
!1301 = distinct !DISubprogram(name: "session_restore_server", scope: !120, file: !120, line: 236, type: !1302, isLocal: true, isDefinition: true, scopeLine: 237, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !127)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{null, !221}
!1304 = !DILocalVariable(name: "node", arg: 1, scope: !1301, file: !120, line: 236, type: !221)
!1305 = !DILocation(line: 236, column: 49, scope: !1301)
!1306 = !DILocalVariable(name: "proto", scope: !1301, file: !120, line: 238, type: !1307)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64, align: 64)
!1308 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHAT_PROTOCOL_REC", file: !697, line: 105, baseType: !1309)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHAT_PROTOCOL_REC", file: !1310, line: 4, size: 832, align: 64, elements: !1311)
!1310 = !DIFile(filename: "chat-protocols.h", directory: "/home/lichi/Desktop/irssi/task1")
!1311 = !{!1312, !1313, !1314, !1315, !1316, !1317, !1318, !1325, !1364, !1371, !1375, !1379, !1383, !1387, !1391}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1309, file: !1310, line: 5, baseType: !117, size: 32, align: 32)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "not_initialized", scope: !1309, file: !1310, line: 7, baseType: !242, size: 1, align: 32, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "case_insensitive", scope: !1309, file: !1310, line: 8, baseType: !242, size: 1, align: 32, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1309, file: !1310, line: 10, baseType: !121, size: 64, align: 64, offset: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "fullname", scope: !1309, file: !1310, line: 11, baseType: !121, size: 64, align: 64, offset: 128)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !1309, file: !1310, line: 12, baseType: !121, size: 64, align: 64, offset: 192)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "create_chatnet", scope: !1309, file: !1310, line: 14, baseType: !1319, size: 64, align: 64, offset: 256)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64, align: 64)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{!1322}
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64, align: 64)
!1323 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHATNET_REC", file: !697, line: 106, baseType: !1324)
!1324 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CHATNET_REC", file: !697, line: 106, flags: DIFlagFwdDecl)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "create_server_setup", scope: !1309, file: !1310, line: 15, baseType: !1326, size: 64, align: 64, offset: 320)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64, align: 64)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{!1329}
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64, align: 64)
!1330 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_SETUP_REC", file: !697, line: 114, baseType: !1331)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_SETUP_REC", file: !1332, line: 13, size: 1408, align: 64, elements: !1333)
!1332 = !DIFile(filename: "servers-setup.h", directory: "/home/lichi/Desktop/irssi/task1")
!1333 = !{!1334, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1331, file: !1335, line: 1, baseType: !117, size: 32, align: 32)
!1335 = !DIFile(filename: "server-setup-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !1331, file: !1335, line: 2, baseType: !117, size: 32, align: 32, offset: 32)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !1331, file: !1335, line: 4, baseType: !121, size: 64, align: 64, offset: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !1331, file: !1335, line: 6, baseType: !720, size: 16, align: 16, offset: 128)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1331, file: !1335, line: 7, baseType: !121, size: 64, align: 64, offset: 192)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1331, file: !1335, line: 8, baseType: !117, size: 32, align: 32, offset: 256)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !1331, file: !1335, line: 9, baseType: !121, size: 64, align: 64, offset: 320)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !1331, file: !1335, line: 11, baseType: !117, size: 32, align: 32, offset: 384)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !1331, file: !1335, line: 12, baseType: !121, size: 64, align: 64, offset: 448)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !1331, file: !1335, line: 14, baseType: !121, size: 64, align: 64, offset: 512)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !1331, file: !1335, line: 15, baseType: !121, size: 64, align: 64, offset: 576)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !1331, file: !1335, line: 16, baseType: !121, size: 64, align: 64, offset: 640)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !1331, file: !1335, line: 17, baseType: !121, size: 64, align: 64, offset: 704)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !1331, file: !1335, line: 18, baseType: !121, size: 64, align: 64, offset: 768)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !1331, file: !1335, line: 19, baseType: !121, size: 64, align: 64, offset: 832)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !1331, file: !1335, line: 20, baseType: !121, size: 64, align: 64, offset: 896)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !1331, file: !1335, line: 21, baseType: !121, size: 64, align: 64, offset: 960)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "own_host", scope: !1331, file: !1335, line: 23, baseType: !121, size: 64, align: 64, offset: 1024)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !1331, file: !1335, line: 24, baseType: !726, size: 64, align: 64, offset: 1088)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !1331, file: !1335, line: 24, baseType: !726, size: 64, align: 64, offset: 1152)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "last_connect", scope: !1331, file: !1335, line: 26, baseType: !780, size: 64, align: 64, offset: 1216)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "autoconnect", scope: !1331, file: !1335, line: 28, baseType: !242, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "no_proxy", scope: !1331, file: !1335, line: 29, baseType: !242, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "last_failed", scope: !1331, file: !1335, line: 30, baseType: !242, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !1331, file: !1335, line: 31, baseType: !242, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !1331, file: !1335, line: 32, baseType: !242, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !1331, file: !1335, line: 33, baseType: !242, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !1331, file: !1335, line: 34, baseType: !242, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !1331, file: !1335, line: 36, baseType: !229, size: 64, align: 64, offset: 1344)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "create_channel_setup", scope: !1309, file: !1310, line: 16, baseType: !1365, size: 64, align: 64, offset: 384)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64, align: 64)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!1368}
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64, align: 64)
!1369 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_SETUP_REC", file: !697, line: 115, baseType: !1370)
!1370 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_SETUP_REC", file: !697, line: 115, flags: DIFlagFwdDecl)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "create_server_connect", scope: !1309, file: !1310, line: 17, baseType: !1372, size: 64, align: 64, offset: 448)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64, align: 64)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{!706}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_server_connect", scope: !1309, file: !1310, line: 18, baseType: !1376, size: 64, align: 64, offset: 512)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64, align: 64)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{null, !706}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "server_init_connect", scope: !1309, file: !1310, line: 20, baseType: !1380, size: 64, align: 64, offset: 576)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64, align: 64)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{!695, !706}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "server_connect", scope: !1309, file: !1310, line: 21, baseType: !1384, size: 64, align: 64, offset: 640)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64, align: 64)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{null, !695}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "channel_create", scope: !1309, file: !1310, line: 22, baseType: !1388, size: 64, align: 64, offset: 704)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64, align: 64)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!864, !695, !154, !154, !117}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "query_create", scope: !1309, file: !1310, line: 24, baseType: !1392, size: 64, align: 64, offset: 768)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64, align: 64)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!941, !154, !154, !117}
!1395 = !DILocation(line: 238, column: 21, scope: !1301)
!1396 = !DILocalVariable(name: "conn", scope: !1301, file: !120, line: 239, type: !706)
!1397 = !DILocation(line: 239, column: 22, scope: !1301)
!1398 = !DILocalVariable(name: "server", scope: !1301, file: !120, line: 240, type: !695)
!1399 = !DILocation(line: 240, column: 14, scope: !1301)
!1400 = !DILocalVariable(name: "chat_type", scope: !1301, file: !120, line: 241, type: !154)
!1401 = !DILocation(line: 241, column: 14, scope: !1301)
!1402 = !DILocalVariable(name: "address", scope: !1301, file: !120, line: 241, type: !154)
!1403 = !DILocation(line: 241, column: 26, scope: !1301)
!1404 = !DILocalVariable(name: "chatnet", scope: !1301, file: !120, line: 241, type: !154)
!1405 = !DILocation(line: 241, column: 36, scope: !1301)
!1406 = !DILocalVariable(name: "password", scope: !1301, file: !120, line: 241, type: !154)
!1407 = !DILocation(line: 241, column: 46, scope: !1301)
!1408 = !DILocalVariable(name: "nick", scope: !1301, file: !120, line: 241, type: !154)
!1409 = !DILocation(line: 241, column: 57, scope: !1301)
!1410 = !DILocalVariable(name: "port", scope: !1301, file: !120, line: 242, type: !117)
!1411 = !DILocation(line: 242, column: 13, scope: !1301)
!1412 = !DILocalVariable(name: "handle", scope: !1301, file: !120, line: 242, type: !117)
!1413 = !DILocation(line: 242, column: 19, scope: !1301)
!1414 = !DILocation(line: 244, column: 41, scope: !1301)
!1415 = !DILocation(line: 244, column: 21, scope: !1301)
!1416 = !DILocation(line: 244, column: 19, scope: !1301)
!1417 = !DILocation(line: 245, column: 32, scope: !1301)
!1418 = !DILocation(line: 245, column: 12, scope: !1301)
!1419 = !DILocation(line: 245, column: 10, scope: !1301)
!1420 = !DILocation(line: 246, column: 29, scope: !1301)
!1421 = !DILocation(line: 246, column: 9, scope: !1301)
!1422 = !DILocation(line: 246, column: 7, scope: !1301)
!1423 = !DILocation(line: 247, column: 32, scope: !1301)
!1424 = !DILocation(line: 247, column: 12, scope: !1301)
!1425 = !DILocation(line: 247, column: 10, scope: !1301)
!1426 = !DILocation(line: 248, column: 33, scope: !1301)
!1427 = !DILocation(line: 248, column: 13, scope: !1301)
!1428 = !DILocation(line: 248, column: 11, scope: !1301)
!1429 = !DILocation(line: 249, column: 29, scope: !1301)
!1430 = !DILocation(line: 249, column: 9, scope: !1301)
!1431 = !DILocation(line: 249, column: 7, scope: !1301)
!1432 = !DILocation(line: 250, column: 31, scope: !1301)
!1433 = !DILocation(line: 250, column: 11, scope: !1301)
!1434 = !DILocation(line: 250, column: 9, scope: !1301)
!1435 = !DILocation(line: 252, column: 6, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1301, file: !120, line: 252, column: 6)
!1437 = !DILocation(line: 252, column: 16, scope: !1436)
!1438 = !DILocation(line: 252, column: 23, scope: !1436)
!1439 = !DILocation(line: 252, column: 26, scope: !1440)
!1440 = !DILexicalBlockFile(scope: !1436, file: !120, discriminator: 1)
!1441 = !DILocation(line: 252, column: 34, scope: !1440)
!1442 = !DILocation(line: 252, column: 42, scope: !1440)
!1443 = !DILocation(line: 252, column: 45, scope: !1444)
!1444 = !DILexicalBlockFile(scope: !1436, file: !120, discriminator: 2)
!1445 = !DILocation(line: 252, column: 50, scope: !1444)
!1446 = !DILocation(line: 252, column: 58, scope: !1444)
!1447 = !DILocation(line: 252, column: 61, scope: !1448)
!1448 = !DILexicalBlockFile(scope: !1436, file: !120, discriminator: 3)
!1449 = !DILocation(line: 252, column: 68, scope: !1448)
!1450 = !DILocation(line: 252, column: 6, scope: !1448)
!1451 = !DILocation(line: 253, column: 3, scope: !1436)
!1452 = !DILocation(line: 255, column: 29, scope: !1301)
!1453 = !DILocation(line: 255, column: 10, scope: !1301)
!1454 = !DILocation(line: 255, column: 8, scope: !1301)
!1455 = !DILocation(line: 256, column: 6, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1301, file: !120, line: 256, column: 6)
!1457 = !DILocation(line: 256, column: 12, scope: !1456)
!1458 = !DILocation(line: 256, column: 19, scope: !1456)
!1459 = !DILocation(line: 256, column: 22, scope: !1460)
!1460 = !DILexicalBlockFile(scope: !1456, file: !120, discriminator: 1)
!1461 = !DILocation(line: 256, column: 29, scope: !1460)
!1462 = !DILocation(line: 256, column: 6, scope: !1460)
!1463 = !DILocation(line: 257, column: 7, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1465, file: !120, line: 257, column: 7)
!1465 = distinct !DILexicalBlock(scope: !1456, file: !120, line: 256, column: 46)
!1466 = !DILocation(line: 257, column: 14, scope: !1464)
!1467 = !DILocation(line: 257, column: 7, scope: !1465)
!1468 = !DILocation(line: 257, column: 25, scope: !1469)
!1469 = !DILexicalBlockFile(scope: !1464, file: !120, discriminator: 1)
!1470 = !DILocation(line: 257, column: 19, scope: !1469)
!1471 = !DILocation(line: 258, column: 3, scope: !1465)
!1472 = !DILocation(line: 261, column: 28, scope: !1301)
!1473 = !DILocation(line: 261, column: 35, scope: !1301)
!1474 = !DILocation(line: 261, column: 39, scope: !1301)
!1475 = !DILocation(line: 261, column: 48, scope: !1301)
!1476 = !DILocation(line: 262, column: 7, scope: !1301)
!1477 = !DILocation(line: 262, column: 16, scope: !1301)
!1478 = !DILocation(line: 262, column: 26, scope: !1301)
!1479 = !DILocation(line: 261, column: 9, scope: !1301)
!1480 = !DILocation(line: 261, column: 7, scope: !1301)
!1481 = !DILocation(line: 263, column: 6, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1301, file: !120, line: 263, column: 6)
!1483 = !DILocation(line: 263, column: 11, scope: !1482)
!1484 = !DILocation(line: 263, column: 6, scope: !1301)
!1485 = !DILocation(line: 264, column: 3, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1482, file: !120, line: 263, column: 19)
!1487 = !DILocation(line: 264, column: 9, scope: !1486)
!1488 = !DILocation(line: 264, column: 22, scope: !1486)
!1489 = !DILocation(line: 265, column: 43, scope: !1486)
!1490 = !DILocation(line: 265, column: 26, scope: !1486)
!1491 = !DILocation(line: 265, column: 3, scope: !1486)
!1492 = !DILocation(line: 265, column: 9, scope: !1486)
!1493 = !DILocation(line: 265, column: 24, scope: !1486)
!1494 = !DILocation(line: 267, column: 12, scope: !1486)
!1495 = !DILocation(line: 267, column: 19, scope: !1486)
!1496 = !DILocation(line: 267, column: 39, scope: !1486)
!1497 = !DILocation(line: 267, column: 10, scope: !1486)
!1498 = !DILocation(line: 268, column: 50, scope: !1486)
!1499 = !DILocation(line: 268, column: 30, scope: !1486)
!1500 = !DILocation(line: 268, column: 21, scope: !1501)
!1501 = !DILexicalBlockFile(scope: !1486, file: !120, discriminator: 1)
!1502 = !DILocation(line: 268, column: 3, scope: !1486)
!1503 = !DILocation(line: 268, column: 11, scope: !1486)
!1504 = !DILocation(line: 268, column: 19, scope: !1486)
!1505 = !DILocation(line: 269, column: 3, scope: !1486)
!1506 = !DILocation(line: 269, column: 11, scope: !1486)
!1507 = !DILocation(line: 269, column: 29, scope: !1486)
!1508 = !DILocation(line: 270, column: 44, scope: !1486)
!1509 = !DILocation(line: 270, column: 52, scope: !1486)
!1510 = !DILocation(line: 270, column: 3, scope: !1486)
!1511 = !DILocation(line: 272, column: 3, scope: !1486)
!1512 = !DILocation(line: 272, column: 10, scope: !1486)
!1513 = !DILocation(line: 272, column: 25, scope: !1486)
!1514 = !DILocation(line: 273, column: 2, scope: !1486)
!1515 = !DILocation(line: 274, column: 1, scope: !1301)
!1516 = distinct !DISubprogram(name: "session_save_channel", scope: !120, file: !120, line: 119, type: !1030, isLocal: true, isDefinition: true, scopeLine: 121, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !127)
!1517 = !DILocalVariable(name: "channel", arg: 1, scope: !1516, file: !120, line: 119, type: !864)
!1518 = !DILocation(line: 119, column: 47, scope: !1516)
!1519 = !DILocalVariable(name: "config", arg: 2, scope: !1516, file: !120, line: 119, type: !212)
!1520 = !DILocation(line: 119, column: 68, scope: !1516)
!1521 = !DILocalVariable(name: "node", arg: 3, scope: !1516, file: !120, line: 120, type: !221)
!1522 = !DILocation(line: 120, column: 19, scope: !1516)
!1523 = !DILocation(line: 122, column: 29, scope: !1516)
!1524 = !DILocation(line: 122, column: 37, scope: !1516)
!1525 = !DILocation(line: 122, column: 9, scope: !1516)
!1526 = !DILocation(line: 122, column: 7, scope: !1516)
!1527 = !DILocation(line: 124, column: 22, scope: !1516)
!1528 = !DILocation(line: 124, column: 30, scope: !1516)
!1529 = !DILocation(line: 124, column: 44, scope: !1516)
!1530 = !DILocation(line: 124, column: 53, scope: !1516)
!1531 = !DILocation(line: 124, column: 2, scope: !1516)
!1532 = !DILocation(line: 125, column: 22, scope: !1516)
!1533 = !DILocation(line: 125, column: 30, scope: !1516)
!1534 = !DILocation(line: 125, column: 52, scope: !1516)
!1535 = !DILocation(line: 125, column: 61, scope: !1516)
!1536 = !DILocation(line: 125, column: 2, scope: !1516)
!1537 = !DILocation(line: 126, column: 22, scope: !1516)
!1538 = !DILocation(line: 126, column: 30, scope: !1516)
!1539 = !DILocation(line: 126, column: 45, scope: !1516)
!1540 = !DILocation(line: 126, column: 54, scope: !1516)
!1541 = !DILocation(line: 126, column: 2, scope: !1516)
!1542 = !DILocation(line: 127, column: 22, scope: !1516)
!1543 = !DILocation(line: 127, column: 30, scope: !1516)
!1544 = !DILocation(line: 127, column: 48, scope: !1516)
!1545 = !DILocation(line: 127, column: 57, scope: !1516)
!1546 = !DILocation(line: 127, column: 2, scope: !1516)
!1547 = !DILocation(line: 128, column: 22, scope: !1516)
!1548 = !DILocation(line: 128, column: 30, scope: !1516)
!1549 = !DILocation(line: 128, column: 50, scope: !1516)
!1550 = !DILocation(line: 128, column: 59, scope: !1516)
!1551 = !DILocation(line: 128, column: 2, scope: !1516)
!1552 = !DILocation(line: 129, column: 22, scope: !1516)
!1553 = !DILocation(line: 129, column: 30, scope: !1516)
!1554 = !DILocation(line: 129, column: 43, scope: !1516)
!1555 = !DILocation(line: 129, column: 52, scope: !1516)
!1556 = !DILocation(line: 129, column: 2, scope: !1516)
!1557 = !DILocation(line: 131, column: 41, scope: !1516)
!1558 = !DILocation(line: 131, column: 50, scope: !1516)
!1559 = !DILocation(line: 131, column: 58, scope: !1516)
!1560 = !DILocation(line: 131, column: 2, scope: !1516)
!1561 = !DILocation(line: 132, column: 1, scope: !1516)
!1562 = distinct !DISubprogram(name: "session_restore_channel", scope: !120, file: !120, line: 202, type: !985, isLocal: true, isDefinition: true, scopeLine: 203, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !127)
!1563 = !DILocalVariable(name: "server", arg: 1, scope: !1562, file: !120, line: 202, type: !695)
!1564 = !DILocation(line: 202, column: 49, scope: !1562)
!1565 = !DILocalVariable(name: "node", arg: 2, scope: !1562, file: !120, line: 202, type: !221)
!1566 = !DILocation(line: 202, column: 70, scope: !1562)
!1567 = !DILocalVariable(name: "channel", scope: !1562, file: !120, line: 204, type: !864)
!1568 = !DILocation(line: 204, column: 22, scope: !1562)
!1569 = !DILocalVariable(name: "name", scope: !1562, file: !120, line: 205, type: !154)
!1570 = !DILocation(line: 205, column: 14, scope: !1562)
!1571 = !DILocalVariable(name: "visible_name", scope: !1562, file: !120, line: 205, type: !154)
!1572 = !DILocation(line: 205, column: 21, scope: !1562)
!1573 = !DILocation(line: 207, column: 29, scope: !1562)
!1574 = !DILocation(line: 207, column: 9, scope: !1562)
!1575 = !DILocation(line: 207, column: 7, scope: !1562)
!1576 = !DILocation(line: 208, column: 6, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1562, file: !120, line: 208, column: 6)
!1578 = !DILocation(line: 208, column: 11, scope: !1577)
!1579 = !DILocation(line: 208, column: 6, scope: !1562)
!1580 = !DILocation(line: 209, column: 3, scope: !1577)
!1581 = !DILocation(line: 211, column: 37, scope: !1562)
!1582 = !DILocation(line: 211, column: 17, scope: !1562)
!1583 = !DILocation(line: 211, column: 15, scope: !1562)
!1584 = !DILocation(line: 212, column: 14, scope: !1562)
!1585 = !DILocation(line: 212, column: 22, scope: !1562)
!1586 = !DILocation(line: 212, column: 13, scope: !1562)
!1587 = !DILocation(line: 212, column: 13, scope: !1588)
!1588 = !DILexicalBlockFile(scope: !1562, file: !120, discriminator: 1)
!1589 = !DILocation(line: 212, column: 66, scope: !1590)
!1590 = !DILexicalBlockFile(scope: !1562, file: !120, discriminator: 2)
!1591 = !DILocation(line: 212, column: 75, scope: !1590)
!1592 = !DILocation(line: 212, column: 43, scope: !1590)
!1593 = !DILocation(line: 212, column: 13, scope: !1590)
!1594 = !DILocation(line: 212, column: 13, scope: !1595)
!1595 = !DILexicalBlockFile(scope: !1562, file: !120, discriminator: 3)
!1596 = !DILocation(line: 212, column: 88, scope: !1595)
!1597 = !DILocation(line: 212, column: 103, scope: !1595)
!1598 = !DILocation(line: 212, column: 111, scope: !1595)
!1599 = !DILocation(line: 212, column: 117, scope: !1595)
!1600 = !DILocation(line: 212, column: 12, scope: !1595)
!1601 = !DILocation(line: 212, column: 10, scope: !1595)
!1602 = !DILocation(line: 213, column: 48, scope: !1562)
!1603 = !DILocation(line: 213, column: 28, scope: !1562)
!1604 = !DILocation(line: 213, column: 19, scope: !1588)
!1605 = !DILocation(line: 213, column: 2, scope: !1562)
!1606 = !DILocation(line: 213, column: 11, scope: !1562)
!1607 = !DILocation(line: 213, column: 17, scope: !1562)
!1608 = !DILocation(line: 214, column: 51, scope: !1562)
!1609 = !DILocation(line: 214, column: 31, scope: !1562)
!1610 = !DILocation(line: 214, column: 22, scope: !1588)
!1611 = !DILocation(line: 214, column: 2, scope: !1562)
!1612 = !DILocation(line: 214, column: 11, scope: !1562)
!1613 = !DILocation(line: 214, column: 20, scope: !1562)
!1614 = !DILocation(line: 215, column: 44, scope: !1562)
!1615 = !DILocation(line: 215, column: 24, scope: !1562)
!1616 = !DILocation(line: 215, column: 2, scope: !1562)
!1617 = !DILocation(line: 215, column: 11, scope: !1562)
!1618 = !DILocation(line: 215, column: 22, scope: !1562)
!1619 = !DILocation(line: 216, column: 53, scope: !1562)
!1620 = !DILocation(line: 216, column: 33, scope: !1562)
!1621 = !DILocation(line: 216, column: 24, scope: !1588)
!1622 = !DILocation(line: 216, column: 9, scope: !1562)
!1623 = !DILocation(line: 216, column: 18, scope: !1562)
!1624 = !DILocation(line: 216, column: 22, scope: !1562)
!1625 = !DILocation(line: 217, column: 9, scope: !1562)
!1626 = !DILocation(line: 217, column: 18, scope: !1562)
!1627 = !DILocation(line: 217, column: 33, scope: !1562)
!1628 = !DILocation(line: 219, column: 44, scope: !1562)
!1629 = !DILocation(line: 219, column: 53, scope: !1562)
!1630 = !DILocation(line: 219, column: 2, scope: !1562)
!1631 = !DILocation(line: 220, column: 1, scope: !1562)
!1632 = !DILocation(line: 220, column: 1, scope: !1588)
!1633 = distinct !DISubprogram(name: "session_save_nick", scope: !120, file: !120, line: 92, type: !1634, isLocal: true, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !127)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{null, !864, !897, !212, !221}
!1636 = !DILocalVariable(name: "channel", arg: 1, scope: !1633, file: !120, line: 92, type: !864)
!1637 = !DILocation(line: 92, column: 44, scope: !1633)
!1638 = !DILocalVariable(name: "nick", arg: 2, scope: !1633, file: !120, line: 92, type: !897)
!1639 = !DILocation(line: 92, column: 63, scope: !1633)
!1640 = !DILocalVariable(name: "config", arg: 3, scope: !1633, file: !120, line: 93, type: !212)
!1641 = !DILocation(line: 93, column: 22, scope: !1633)
!1642 = !DILocalVariable(name: "node", arg: 4, scope: !1633, file: !120, line: 93, type: !221)
!1643 = !DILocation(line: 93, column: 43, scope: !1633)
!1644 = !DILocation(line: 95, column: 29, scope: !1633)
!1645 = !DILocation(line: 95, column: 37, scope: !1633)
!1646 = !DILocation(line: 95, column: 9, scope: !1633)
!1647 = !DILocation(line: 95, column: 7, scope: !1633)
!1648 = !DILocation(line: 97, column: 22, scope: !1633)
!1649 = !DILocation(line: 97, column: 30, scope: !1633)
!1650 = !DILocation(line: 97, column: 44, scope: !1633)
!1651 = !DILocation(line: 97, column: 50, scope: !1633)
!1652 = !DILocation(line: 97, column: 2, scope: !1633)
!1653 = !DILocation(line: 98, column: 23, scope: !1633)
!1654 = !DILocation(line: 98, column: 31, scope: !1633)
!1655 = !DILocation(line: 98, column: 43, scope: !1633)
!1656 = !DILocation(line: 98, column: 49, scope: !1633)
!1657 = !DILocation(line: 98, column: 2, scope: !1633)
!1658 = !DILocation(line: 99, column: 23, scope: !1633)
!1659 = !DILocation(line: 99, column: 31, scope: !1633)
!1660 = !DILocation(line: 99, column: 47, scope: !1633)
!1661 = !DILocation(line: 99, column: 53, scope: !1633)
!1662 = !DILocation(line: 99, column: 2, scope: !1633)
!1663 = !DILocation(line: 100, column: 23, scope: !1633)
!1664 = !DILocation(line: 100, column: 31, scope: !1633)
!1665 = !DILocation(line: 100, column: 46, scope: !1633)
!1666 = !DILocation(line: 100, column: 52, scope: !1633)
!1667 = !DILocation(line: 100, column: 2, scope: !1633)
!1668 = !DILocation(line: 102, column: 22, scope: !1633)
!1669 = !DILocation(line: 102, column: 30, scope: !1633)
!1670 = !DILocation(line: 102, column: 48, scope: !1633)
!1671 = !DILocation(line: 102, column: 54, scope: !1633)
!1672 = !DILocation(line: 102, column: 2, scope: !1633)
!1673 = !DILocation(line: 104, column: 38, scope: !1633)
!1674 = !DILocation(line: 104, column: 47, scope: !1633)
!1675 = !DILocation(line: 104, column: 53, scope: !1633)
!1676 = !DILocation(line: 104, column: 61, scope: !1633)
!1677 = !DILocation(line: 104, column: 2, scope: !1633)
!1678 = !DILocation(line: 105, column: 1, scope: !1633)
