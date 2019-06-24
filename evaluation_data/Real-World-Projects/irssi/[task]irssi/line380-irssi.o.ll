; ModuleID = './line380-irssi.o.i'
source_filename = "./line380-irssi.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GOptionEntry = type { i8*, i8, i32, i32, i8*, i8*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._GMainLoop = type opaque
%struct._FORMAT_REC = type { i8*, i8*, i32, [10 x i32] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GMainContext = type opaque
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.sigaction = type { %union.anon, %struct.__sigset_t, i32, void ()* }
%union.anon = type { void (i32)* }
%struct.__sigset_t = type { [16 x i64] }
%struct.MODULE_FILE_REC = type { %struct._MODULE_REC*, i8*, i8*, void ()*, %struct._GModule*, i8 }
%struct._MODULE_REC = type { i8*, %struct._GSList* }
%struct._GModule = type opaque
%struct.STATUSBAR_REC = type { %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_CONFIG_REC*, %struct.MAIN_WINDOW_REC*, %struct._GSList*, i8*, i32, i8, i32 }
%struct.STATUSBAR_GROUP_REC = type { i8*, %struct._GSList*, %struct._GSList* }
%struct.STATUSBAR_CONFIG_REC = type { i8*, i32, i32, i32, i32, %struct._GSList* }
%struct.MAIN_WINDOW_REC = type { %struct._WINDOW_REC*, %struct._TERM_WINDOW*, i32, i32, i32, i32, i32, i32, i32, %struct._GSList*, i32, i32, i32, i32, i32, i32, i8 }
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
%struct._TERM_WINDOW = type opaque

@dirty = internal global i32 0, align 4
@full_redraw = internal global i32 0, align 4
@main.version = internal global i32 0, align 4
@main.options = internal global [2 x %struct._GOptionEntry] [%struct._GOptionEntry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8 118, i32 0, i32 0, i8* bitcast (i32* @main.version to i8*), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i8* null }, %struct._GOptionEntry zeroinitializer], align 16
@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Display Irssi version\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"irssi 1.2-g90165c0 (%d %04d)\0A\00", align 1
@quitting = common global i32 0, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [35 x i8] c"Can't initialize screen handling.\0A\00", align 1
@main_loop = internal global %struct._GMainLoop* null, align 8
@reload_config = external global i32, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"command reload\00", align 1
@display_firsttimer = internal global i32 0, align 4
@irssi_gui = external global i32, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"fe-text\00", align 1
@gui_text_formats = external global [49 x %struct._FORMAT_REC], align 16
@.str.7 = private unnamed_addr constant [26 x i8] c"settings userinfo changed\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"gui exit\00", align 1
@user_settings_changed = internal global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"irssi init finished\00", align 1
@servers = external global %struct._GSList*, align 8
@lookup_servers = external global %struct._GSList*, align 8
@.str.11 = private unnamed_addr constant [10 x i8] c"real_name\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"user_name\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"nick\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"hostname\00", align 1
@modules = external global %struct._GSList*, align 8

; Function Attrs: nounwind uwtable
define void @irssi_redraw() #0 !dbg !180 {
  store i32 1, i32* @dirty, align 4, !dbg !183
  store i32 1, i32* @full_redraw, align 4, !dbg !184
  ret void, !dbg !185
}

; Function Attrs: nounwind uwtable
define void @irssi_set_dirty() #0 !dbg !186 {
  store i32 1, i32* @dirty, align 4, !dbg !187
  ret void, !dbg !188
}

; Function Attrs: nounwind uwtable
define i32 @main(i32, i8**) #0 !dbg !139 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !189, metadata !190), !dbg !191
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !192, metadata !190), !dbg !193
  call void @llvm.dbg.declare(metadata i32* %6, metadata !194, metadata !190), !dbg !195
  call void @core_register_options(), !dbg !196
  call void @fe_common_core_register_options(), !dbg !197
  call void @args_register(%struct._GOptionEntry* getelementptr inbounds ([2 x %struct._GOptionEntry], [2 x %struct._GOptionEntry]* @main.options, i32 0, i32 0)), !dbg !198
  %7 = load i32, i32* %4, align 4, !dbg !199
  %8 = load i8**, i8*** %5, align 8, !dbg !200
  call void @args_execute(i32 %7, i8** %8), !dbg !201
  %9 = load i32, i32* @main.version, align 4, !dbg !202
  %10 = icmp ne i32 %9, 0, !dbg !202
  br i1 %10, label %11, label %13, !dbg !204

; <label>:11:                                     ; preds = %2
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0), i32 20180907, i32 2305), !dbg !205
  store i32 0, i32* %3, align 4, !dbg !207
  br label %43, !dbg !207

; <label>:13:                                     ; preds = %2
  %14 = call i64 @time(i64* null) #4, !dbg !208
  %15 = trunc i64 %14 to i32, !dbg !208
  call void @srand(i32 %15) #4, !dbg !209
  store i32 0, i32* @quitting, align 4, !dbg !211
  %16 = load i8**, i8*** %5, align 8, !dbg !212
  %17 = getelementptr inbounds i8*, i8** %16, i64 0, !dbg !212
  %18 = load i8*, i8** %17, align 8, !dbg !212
  call void @core_preinit(i8* %18), !dbg !213
  call void @check_files(), !dbg !214
  %19 = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0)) #4, !dbg !215
  %20 = call i32 @g_log_set_always_fatal(i32 13), !dbg !216
  store i32 %20, i32* %6, align 4, !dbg !217
  call void @textui_init(), !dbg !218
  %21 = call i32 @term_init(), !dbg !219
  %22 = icmp ne i32 %21, 0, !dbg !219
  br i1 %22, label %26, label %23, !dbg !221

; <label>:23:                                     ; preds = %13
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !222
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i32 0, i32 0)), !dbg !224
  store i32 1, i32* %3, align 4, !dbg !225
  br label %43, !dbg !225

; <label>:26:                                     ; preds = %13
  %27 = load i32, i32* %6, align 4, !dbg !226
  %28 = call i32 @g_log_set_always_fatal(i32 %27), !dbg !227
  call void @textui_finish_init(), !dbg !228
  %29 = call %struct._GMainLoop* @g_main_loop_new(%struct._GMainContext* null, i32 1), !dbg !229
  store %struct._GMainLoop* %29, %struct._GMainLoop** @main_loop, align 8, !dbg !230
  br label %30, !dbg !231

; <label>:30:                                     ; preds = %39, %26
  %31 = load i32, i32* @quitting, align 4, !dbg !232
  %32 = icmp ne i32 %31, 0, !dbg !233
  %33 = xor i1 %32, true, !dbg !233
  br i1 %33, label %34, label %41, !dbg !234

; <label>:34:                                     ; preds = %30
  %35 = load i32, i32* @reload_config, align 4, !dbg !235
  %36 = icmp ne i32 %35, 0, !dbg !235
  br i1 %36, label %37, label %39, !dbg !238

; <label>:37:                                     ; preds = %34
  store i32 0, i32* @reload_config, align 4, !dbg !239
  %38 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0)), !dbg !241
  br label %39, !dbg !242

; <label>:39:                                     ; preds = %37, %34
  call void @dirty_check(), !dbg !243
  call void @term_refresh_freeze(), !dbg !244
  %40 = call i32 @g_main_context_iteration(%struct._GMainContext* null, i32 1), !dbg !245
  call void @term_refresh_thaw(), !dbg !246
  br label %30, !dbg !247, !llvm.loop !249

; <label>:41:                                     ; preds = %30
  %42 = load %struct._GMainLoop*, %struct._GMainLoop** @main_loop, align 8, !dbg !250
  call void @g_main_loop_unref(%struct._GMainLoop* %42), !dbg !251
  call void @textui_deinit(), !dbg !252
  call void @session_upgrade(), !dbg !253
  store i32 0, i32* %3, align 4, !dbg !254
  br label %43, !dbg !254

; <label>:43:                                     ; preds = %41, %23, %11
  %44 = load i32, i32* %3, align 4, !dbg !255
  ret i32 %44, !dbg !255
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @core_register_options() #2

declare void @fe_common_core_register_options() #2

declare void @args_register(%struct._GOptionEntry*) #2

declare void @args_execute(i32, i8**) #2

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare void @srand(i32) #3

; Function Attrs: nounwind
declare i64 @time(i64*) #3

declare void @core_preinit(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @check_files() #0 !dbg !256 {
  %1 = alloca %struct.stat, align 8
  call void @llvm.dbg.declare(metadata %struct.stat* %1, metadata !257, metadata !190), !dbg !297
  %2 = call i8* @get_irssi_dir(), !dbg !298
  %3 = call i32 @stat(i8* %2, %struct.stat* %1) #4, !dbg !300
  %4 = icmp ne i32 %3, 0, !dbg !302
  br i1 %4, label %5, label %6, !dbg !303

; <label>:5:                                      ; preds = %0
  store i32 1, i32* @display_firsttimer, align 4, !dbg !304
  br label %6, !dbg !306

; <label>:6:                                      ; preds = %5, %0
  ret void, !dbg !307
}

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) #3

declare i32 @g_log_set_always_fatal(i32) #2

; Function Attrs: nounwind uwtable
define internal void @textui_init() #0 !dbg !308 {
  %1 = alloca %struct.sigaction, align 8
  call void @llvm.dbg.declare(metadata %struct.sigaction* %1, metadata !309, metadata !190), !dbg !403
  %2 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 1, !dbg !404
  %3 = call i32 @sigemptyset(%struct.__sigset_t* %2) #4, !dbg !405
  %4 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 2, !dbg !406
  store i32 0, i32* %4, align 8, !dbg !407
  %5 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 0, !dbg !408
  %6 = bitcast %union.anon* %5 to void (i32)**, !dbg !409
  store void (i32)* inttoptr (i64 1 to void (i32)*), void (i32)** %6, align 8, !dbg !410
  %7 = call i32 @sigaction(i32 5, %struct.sigaction* %1, %struct.sigaction* null) #4, !dbg !411
  store i32 1, i32* @irssi_gui, align 4, !dbg !412
  call void @core_init(), !dbg !413
  call void @irc_init(), !dbg !414
  call void @fe_common_core_init(), !dbg !415
  call void @fe_common_irc_init(), !dbg !416
  call void @theme_register_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), %struct._FORMAT_REC* getelementptr inbounds ([49 x %struct._FORMAT_REC], [49 x %struct._FORMAT_REC]* @gui_text_formats, i32 0, i32 0)), !dbg !417
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @sig_settings_userinfo_changed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !418
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 100, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_exit to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !419
  ret void, !dbg !420
}

declare i32 @term_init() #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal void @textui_finish_init() #0 !dbg !421 {
  store i32 0, i32* @quitting, align 4, !dbg !422
  call void @term_refresh_freeze(), !dbg !423
  call void @textbuffer_init(), !dbg !424
  call void @textbuffer_view_init(), !dbg !425
  call void @textbuffer_commands_init(), !dbg !426
  call void @gui_expandos_init(), !dbg !427
  call void @gui_printtext_init(), !dbg !428
  call void @gui_readline_init(), !dbg !429
  call void @gui_entry_init(), !dbg !430
  call void @lastlog_init(), !dbg !431
  call void @mainwindows_init(), !dbg !432
  call void @mainwindow_activity_init(), !dbg !433
  call void @mainwindows_layout_init(), !dbg !434
  call void @gui_windows_init(), !dbg !435
  call void @statusbar_init(), !dbg !436
  call void @term_refresh_thaw(), !dbg !437
  call void @settings_check_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0)), !dbg !438
  %1 = call %struct.MODULE_FILE_REC* @module_register_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0)), !dbg !439
  call void @dirty_check(), !dbg !440
  call void @fe_common_core_finish_init(), !dbg !441
  %2 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0), !dbg !442
  call void @statusbar_redraw(%struct.STATUSBAR_REC* null, i32 1), !dbg !443
  %3 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !444
  %4 = icmp eq %struct._GSList* %3, null, !dbg !446
  br i1 %4, label %5, label %9, !dbg !447

; <label>:5:                                      ; preds = %0
  %6 = load %struct._GSList*, %struct._GSList** @lookup_servers, align 8, !dbg !448
  %7 = icmp eq %struct._GSList* %6, null, !dbg !450
  br i1 %7, label %8, label %9, !dbg !451

; <label>:8:                                      ; preds = %5
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, i32 33554433, i32 45), !dbg !452
  br label %9, !dbg !454

; <label>:9:                                      ; preds = %8, %5, %0
  %10 = load i32, i32* @display_firsttimer, align 4, !dbg !455
  %11 = icmp ne i32 %10, 0, !dbg !455
  br i1 %11, label %12, label %13, !dbg !457

; <label>:12:                                     ; preds = %9
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, i32 33554433, i32 46), !dbg !458
  br label %13, !dbg !460

; <label>:13:                                     ; preds = %12, %9
  %14 = load i32, i32* @user_settings_changed, align 4, !dbg !461
  %15 = icmp ne i32 %14, 0, !dbg !461
  br i1 %15, label %16, label %17, !dbg !463

; <label>:16:                                     ; preds = %13
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 47), !dbg !464
  br label %17, !dbg !464

; <label>:17:                                     ; preds = %16, %13
  %18 = load i32, i32* @user_settings_changed, align 4, !dbg !465
  %19 = and i32 %18, 1, !dbg !467
  %20 = icmp ne i32 %19, 0, !dbg !467
  br i1 %20, label %21, label %22, !dbg !468

; <label>:21:                                     ; preds = %17
  call void @fe_settings_set_print(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0)), !dbg !469
  br label %22, !dbg !469

; <label>:22:                                     ; preds = %21, %17
  %23 = load i32, i32* @user_settings_changed, align 4, !dbg !470
  %24 = and i32 %23, 2, !dbg !472
  %25 = icmp ne i32 %24, 0, !dbg !472
  br i1 %25, label %26, label %27, !dbg !473

; <label>:26:                                     ; preds = %22
  call void @fe_settings_set_print(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0)), !dbg !474
  br label %27, !dbg !474

; <label>:27:                                     ; preds = %26, %22
  %28 = load i32, i32* @user_settings_changed, align 4, !dbg !475
  %29 = and i32 %28, 4, !dbg !477
  %30 = icmp ne i32 %29, 0, !dbg !477
  br i1 %30, label %31, label %32, !dbg !478

; <label>:31:                                     ; preds = %27
  call void @fe_settings_set_print(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0)), !dbg !479
  br label %32, !dbg !479

; <label>:32:                                     ; preds = %31, %27
  %33 = load i32, i32* @user_settings_changed, align 4, !dbg !480
  %34 = and i32 %33, 8, !dbg !482
  %35 = icmp ne i32 %34, 0, !dbg !482
  br i1 %35, label %36, label %37, !dbg !483

; <label>:36:                                     ; preds = %32
  call void @fe_settings_set_print(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0)), !dbg !484
  br label %37, !dbg !484

; <label>:37:                                     ; preds = %36, %32
  call void @term_environment_check(), !dbg !485
  ret void, !dbg !486
}

declare %struct._GMainLoop* @g_main_loop_new(%struct._GMainContext*, i32) #2

declare i32 @signal_emit(i8*, i32, ...) #2

; Function Attrs: nounwind uwtable
define internal void @dirty_check() #0 !dbg !487 {
  %1 = load i32, i32* @dirty, align 4, !dbg !488
  %2 = icmp ne i32 %1, 0, !dbg !488
  br i1 %2, label %4, label %3, !dbg !490

; <label>:3:                                      ; preds = %0
  br label %9, !dbg !491

; <label>:4:                                      ; preds = %0
  call void @term_resize_dirty(), !dbg !492
  %5 = load i32, i32* @full_redraw, align 4, !dbg !493
  %6 = icmp ne i32 %5, 0, !dbg !493
  br i1 %6, label %7, label %8, !dbg !495

; <label>:7:                                      ; preds = %4
  store i32 0, i32* @full_redraw, align 4, !dbg !496
  call void @term_clear(), !dbg !498
  call void @term_refresh(%struct._TERM_WINDOW* null), !dbg !499
  call void @mainwindows_redraw(), !dbg !500
  call void @statusbar_redraw(%struct.STATUSBAR_REC* null, i32 1), !dbg !501
  br label %8, !dbg !502

; <label>:8:                                      ; preds = %7, %4
  call void @mainwindows_redraw_dirty(), !dbg !503
  call void @statusbar_redraw_dirty(), !dbg !504
  call void @term_refresh(%struct._TERM_WINDOW* null), !dbg !505
  store i32 0, i32* @dirty, align 4, !dbg !506
  br label %9, !dbg !507

; <label>:9:                                      ; preds = %8, %3
  ret void, !dbg !508
}

declare void @term_refresh_freeze() #2

declare i32 @g_main_context_iteration(%struct._GMainContext*, i32) #2

declare void @term_refresh_thaw() #2

declare void @g_main_loop_unref(%struct._GMainLoop*) #2

; Function Attrs: nounwind uwtable
define internal void @textui_deinit() #0 !dbg !510 {
  %1 = call void (i32)* @signal(i32 2, void (i32)* null) #4, !dbg !511
  call void @term_refresh_freeze(), !dbg !512
  br label %2, !dbg !513

; <label>:2:                                      ; preds = %5, %0
  %3 = load %struct._GSList*, %struct._GSList** @modules, align 8, !dbg !514
  %4 = icmp ne %struct._GSList* %3, null, !dbg !516
  br i1 %4, label %5, label %10, !dbg !517

; <label>:5:                                      ; preds = %2
  %6 = load %struct._GSList*, %struct._GSList** @modules, align 8, !dbg !518
  %7 = getelementptr inbounds %struct._GSList, %struct._GSList* %6, i32 0, i32 0, !dbg !519
  %8 = load i8*, i8** %7, align 8, !dbg !519
  %9 = bitcast i8* %8 to %struct._MODULE_REC*, !dbg !518
  call void @module_unload(%struct._MODULE_REC* %9), !dbg !520
  br label %2, !dbg !521, !llvm.loop !523

; <label>:10:                                     ; preds = %2
  call void @dirty_check(), !dbg !524
  call void @signal_remove_full(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @sig_settings_userinfo_changed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !525
  call void @signal_remove_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_exit to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !526
  call void @lastlog_deinit(), !dbg !527
  call void @statusbar_deinit(), !dbg !528
  call void @gui_entry_deinit(), !dbg !529
  call void @gui_printtext_deinit(), !dbg !530
  call void @gui_readline_deinit(), !dbg !531
  call void @gui_windows_deinit(), !dbg !532
  call void @mainwindows_layout_deinit(), !dbg !533
  call void @mainwindow_activity_deinit(), !dbg !534
  call void @mainwindows_deinit(), !dbg !535
  call void @gui_expandos_deinit(), !dbg !536
  call void @textbuffer_commands_deinit(), !dbg !537
  call void @textbuffer_view_deinit(), !dbg !538
  call void @textbuffer_deinit(), !dbg !539
  call void @term_refresh_thaw(), !dbg !540
  call void @term_deinit(), !dbg !541
  call void @theme_unregister_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0)), !dbg !542
  call void @fe_common_irc_deinit(), !dbg !543
  call void @fe_common_core_deinit(), !dbg !544
  call void @irc_deinit(), !dbg !545
  call void @core_deinit(), !dbg !546
  ret void, !dbg !547
}

declare void @session_upgrade() #2

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #3

declare i8* @get_irssi_dir() #2

; Function Attrs: nounwind
declare i32 @sigemptyset(%struct.__sigset_t*) #3

; Function Attrs: nounwind
declare i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #3

declare void @core_init() #2

declare void @irc_init() #2

declare void @fe_common_core_init() #2

declare void @fe_common_irc_init() #2

declare void @theme_register_module(i8*, %struct._FORMAT_REC*) #2

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @sig_settings_userinfo_changed(i8*) #0 !dbg !548 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !551, metadata !190), !dbg !552
  %3 = load i8*, i8** %2, align 8, !dbg !553
  %4 = ptrtoint i8* %3 to i64, !dbg !554
  %5 = trunc i64 %4 to i32, !dbg !555
  store i32 %5, i32* @user_settings_changed, align 4, !dbg !556
  ret void, !dbg !557
}

; Function Attrs: nounwind uwtable
define internal void @sig_exit() #0 !dbg !558 {
  store i32 1, i32* @quitting, align 4, !dbg !559
  ret void, !dbg !560
}

declare void @textbuffer_init() #2

declare void @textbuffer_view_init() #2

declare void @textbuffer_commands_init() #2

declare void @gui_expandos_init() #2

declare void @gui_printtext_init() #2

declare void @gui_readline_init() #2

declare void @gui_entry_init() #2

declare void @lastlog_init() #2

declare void @mainwindows_init() #2

declare void @mainwindow_activity_init() #2

declare void @mainwindows_layout_init() #2

declare void @gui_windows_init() #2

declare void @statusbar_init() #2

declare void @settings_check_module(i8*) #2

declare %struct.MODULE_FILE_REC* @module_register_full(i8*, i8*, i8*) #2

declare void @fe_common_core_finish_init() #2

declare void @statusbar_redraw(%struct.STATUSBAR_REC*, i32) #2

declare void @printformat_module(i8*, i8*, i8*, i32, i32, ...) #2

declare void @fe_settings_set_print(i8*) #2

declare void @term_environment_check() #2

declare void @term_resize_dirty() #2

declare void @term_clear() #2

declare void @term_refresh(%struct._TERM_WINDOW*) #2

declare void @mainwindows_redraw() #2

declare void @mainwindows_redraw_dirty() #2

declare void @statusbar_redraw_dirty() #2

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #3

declare void @module_unload(%struct._MODULE_REC*) #2

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare void @lastlog_deinit() #2

declare void @statusbar_deinit() #2

declare void @gui_entry_deinit() #2

declare void @gui_printtext_deinit() #2

declare void @gui_readline_deinit() #2

declare void @gui_windows_deinit() #2

declare void @mainwindows_layout_deinit() #2

declare void @mainwindow_activity_deinit() #2

declare void @mainwindows_deinit() #2

declare void @gui_expandos_deinit() #2

declare void @textbuffer_commands_deinit() #2

declare void @textbuffer_view_deinit() #2

declare void @textbuffer_deinit() #2

declare void @term_deinit() #2

declare void @theme_unregister_module(i8*) #2

declare void @fe_common_irc_deinit() #2

declare void @fe_common_core_deinit() #2

declare void @irc_deinit() #2

declare void @core_deinit() #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!177, !178}
!llvm.ident = !{!179}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !117, globals: !137)
!1 = !DIFile(filename: "line380-irssi.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !15, !27, !58, !110}
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
!28 = !DIFile(filename: "../../src/core/levels.h", directory: "/home/lichi/Desktop/irssi/task1")
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
!60 = !{!61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109}
!61 = !DIEnumerator(name: "TXT_MODULE_NAME", value: 0)
!62 = !DIEnumerator(name: "TXT_FILL_1", value: 1)
!63 = !DIEnumerator(name: "TXT_LASTLOG_TOO_LONG", value: 2)
!64 = !DIEnumerator(name: "TXT_LASTLOG_COUNT", value: 3)
!65 = !DIEnumerator(name: "TXT_LASTLOG_START", value: 4)
!66 = !DIEnumerator(name: "TXT_LASTLOG_END", value: 5)
!67 = !DIEnumerator(name: "TXT_LASTLOG_SEPARATOR", value: 6)
!68 = !DIEnumerator(name: "TXT_LASTLOG_DATE", value: 7)
!69 = !DIEnumerator(name: "TXT_FILL_2", value: 8)
!70 = !DIEnumerator(name: "TXT_REFNUM_NOT_FOUND", value: 9)
!71 = !DIEnumerator(name: "TXT_WINDOW_TOO_SMALL", value: 10)
!72 = !DIEnumerator(name: "TXT_CANT_HIDE_LAST", value: 11)
!73 = !DIEnumerator(name: "TXT_CANT_HIDE_STICKY_WINDOWS", value: 12)
!74 = !DIEnumerator(name: "TXT_CANT_SHOW_STICKY_WINDOWS", value: 13)
!75 = !DIEnumerator(name: "TXT_WINDOW_NOT_STICKY", value: 14)
!76 = !DIEnumerator(name: "TXT_WINDOW_SET_STICKY", value: 15)
!77 = !DIEnumerator(name: "TXT_WINDOW_UNSET_STICKY", value: 16)
!78 = !DIEnumerator(name: "TXT_WINDOW_INFO_STICKY", value: 17)
!79 = !DIEnumerator(name: "TXT_WINDOW_INFO_SCROLL", value: 18)
!80 = !DIEnumerator(name: "TXT_WINDOW_SCROLL", value: 19)
!81 = !DIEnumerator(name: "TXT_WINDOW_SCROLL_UNKNOWN", value: 20)
!82 = !DIEnumerator(name: "TXT_WINDOW_HIDELEVEL", value: 21)
!83 = !DIEnumerator(name: "TXT_FILL_3", value: 22)
!84 = !DIEnumerator(name: "TXT_STATUSBAR_LIST_HEADER", value: 23)
!85 = !DIEnumerator(name: "TXT_STATUSBAR_LIST_FOOTER", value: 24)
!86 = !DIEnumerator(name: "TXT_STATUSBAR_LIST", value: 25)
!87 = !DIEnumerator(name: "TXT_STATUSBAR_INFO_NAME", value: 26)
!88 = !DIEnumerator(name: "TXT_STATUSBAR_INFO_TYPE", value: 27)
!89 = !DIEnumerator(name: "TXT_STATUSBAR_INFO_PLACEMENT", value: 28)
!90 = !DIEnumerator(name: "TXT_STATUSBAR_INFO_POSITION", value: 29)
!91 = !DIEnumerator(name: "TXT_STATUSBAR_INFO_VISIBLE", value: 30)
!92 = !DIEnumerator(name: "TXT_STATUSBAR_INFO_ITEM_HEADER", value: 31)
!93 = !DIEnumerator(name: "TXT_STATUSBAR_INFO_ITEM_FOOTER", value: 32)
!94 = !DIEnumerator(name: "TXT_STATUSBAR_INFO_ITEM_NAME", value: 33)
!95 = !DIEnumerator(name: "TXT_STATUSBAR_NOT_FOUND", value: 34)
!96 = !DIEnumerator(name: "TXT_STATUSBAR_NOT_ENABLED", value: 35)
!97 = !DIEnumerator(name: "TXT_STATUSBAR_ITEM_NOT_FOUND", value: 36)
!98 = !DIEnumerator(name: "TXT_STATUSBAR_UNKNOWN_COMMAND", value: 37)
!99 = !DIEnumerator(name: "TXT_STATUSBAR_UNKNOWN_TYPE", value: 38)
!100 = !DIEnumerator(name: "TXT_STATUSBAR_UNKNOWN_PLACEMENT", value: 39)
!101 = !DIEnumerator(name: "TXT_STATUSBAR_UNKNOWN_VISIBILITY", value: 40)
!102 = !DIEnumerator(name: "TXT_FILL_4", value: 41)
!103 = !DIEnumerator(name: "TXT_PASTE_WARNING", value: 42)
!104 = !DIEnumerator(name: "TXT_PASTE_PROMPT", value: 43)
!105 = !DIEnumerator(name: "TXT_FILL_5", value: 44)
!106 = !DIEnumerator(name: "TXT_IRSSI_BANNER", value: 45)
!107 = !DIEnumerator(name: "TXT_WELCOME_FIRSTTIME", value: 46)
!108 = !DIEnumerator(name: "TXT_WELCOME_INIT_SETTINGS", value: 47)
!109 = !DIEnumerator(name: "TXT_COUNT", value: 48)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !111, line: 33, size: 32, align: 32, elements: !112)
!111 = !DIFile(filename: "../../src/core/settings.h", directory: "/home/lichi/Desktop/irssi/task1")
!112 = !{!113, !114, !115, !116}
!113 = !DIEnumerator(name: "USER_SETTINGS_REAL_NAME", value: 1)
!114 = !DIEnumerator(name: "USER_SETTINGS_USER_NAME", value: 2)
!115 = !DIEnumerator(name: "USER_SETTINGS_NICK", value: 4)
!116 = !DIEnumerator(name: "USER_SETTINGS_HOSTNAME", value: 8)
!117 = !{!118, !124, !131, !132, !135}
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !119, line: 85, baseType: !120)
!119 = !DIFile(filename: "/usr/include/signal.h", directory: "/home/lichi/Desktop/irssi/task1")
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, align: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{null, !123}
!123 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !125, line: 9, baseType: !126)
!125 = !DIFile(filename: "../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64, align: 64)
!127 = !DISubroutineType(types: !128)
!128 = !{null, !129, !129, !129, !129, !129, !129}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !133, line: 55, baseType: !134)
!133 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!134 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "gulong", file: !133, line: 54, baseType: !136)
!136 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!137 = !{!138, !147, !167, !168, !169, !174, !175, !176}
!138 = distinct !DIGlobalVariable(name: "version", scope: !139, file: !140, line: 282, type: !123, isLocal: true, isDefinition: true, variable: i32* @main.version)
!139 = distinct !DISubprogram(name: "main", scope: !140, file: !140, line: 280, type: !141, isLocal: false, isDefinition: true, scopeLine: 281, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !146)
!140 = !DIFile(filename: "irssi.c", directory: "/home/lichi/Desktop/irssi/task1")
!141 = !DISubroutineType(types: !142)
!142 = !{!123, !123, !143}
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64, align: 64)
!145 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!146 = !{}
!147 = distinct !DIGlobalVariable(name: "options", scope: !139, file: !140, line: 283, type: !148, isLocal: true, isDefinition: true, variable: [2 x %struct._GOptionEntry]* @main.options)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 768, align: 64, elements: !165)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "GOptionEntry", file: !4, line: 52, baseType: !150)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GOptionEntry", file: !4, line: 257, size: 384, align: 64, elements: !151)
!151 = !{!152, !156, !157, !159, !161, !163, !164}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "long_name", scope: !150, file: !4, line: 259, baseType: !153, size: 64, align: 64)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64, align: 64)
!154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !133, line: 46, baseType: !145)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "short_name", scope: !150, file: !4, line: 260, baseType: !155, size: 8, align: 8, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !150, file: !4, line: 261, baseType: !158, size: 32, align: 32, offset: 96)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !133, line: 49, baseType: !123)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !150, file: !4, line: 263, baseType: !160, size: 32, align: 32, offset: 128)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "GOptionArg", file: !4, line: 129, baseType: !3)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "arg_data", scope: !150, file: !4, line: 264, baseType: !162, size: 64, align: 64, offset: 192)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !133, line: 77, baseType: !131)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !150, file: !4, line: 266, baseType: !153, size: 64, align: 64, offset: 256)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "arg_description", scope: !150, file: !4, line: 267, baseType: !153, size: 64, align: 64, offset: 320)
!165 = !{!166}
!166 = !DISubrange(count: 2)
!167 = distinct !DIGlobalVariable(name: "dirty", scope: !0, file: !140, line: 83, type: !123, isLocal: true, isDefinition: true, variable: i32* @dirty)
!168 = distinct !DIGlobalVariable(name: "full_redraw", scope: !0, file: !140, line: 83, type: !123, isLocal: true, isDefinition: true, variable: i32* @full_redraw)
!169 = distinct !DIGlobalVariable(name: "main_loop", scope: !0, file: !140, line: 85, type: !170, isLocal: true, isDefinition: true, variable: %struct._GMainLoop** @main_loop)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64, align: 64)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainLoop", file: !172, line: 56, baseType: !173)
!172 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/irssi/task1")
!173 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainLoop", file: !172, line: 56, flags: DIFlagFwdDecl)
!174 = distinct !DIGlobalVariable(name: "quitting", scope: !0, file: !140, line: 86, type: !123, isLocal: false, isDefinition: true, variable: i32* @quitting)
!175 = distinct !DIGlobalVariable(name: "display_firsttimer", scope: !0, file: !140, line: 88, type: !123, isLocal: true, isDefinition: true, variable: i32* @display_firsttimer)
!176 = distinct !DIGlobalVariable(name: "user_settings_changed", scope: !0, file: !140, line: 89, type: !134, isLocal: true, isDefinition: true, variable: i32* @user_settings_changed)
!177 = !{i32 2, !"Dwarf Version", i32 4}
!178 = !{i32 2, !"Debug Info Version", i32 3}
!179 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!180 = distinct !DISubprogram(name: "irssi_redraw", scope: !140, file: !140, line: 103, type: !181, isLocal: false, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !146)
!181 = !DISubroutineType(types: !182)
!182 = !{null}
!183 = !DILocation(line: 105, column: 8, scope: !180)
!184 = !DILocation(line: 106, column: 21, scope: !180)
!185 = !DILocation(line: 107, column: 1, scope: !180)
!186 = distinct !DISubprogram(name: "irssi_set_dirty", scope: !140, file: !140, line: 109, type: !181, isLocal: false, isDefinition: true, scopeLine: 110, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !146)
!187 = !DILocation(line: 111, column: 15, scope: !186)
!188 = !DILocation(line: 112, column: 1, scope: !186)
!189 = !DILocalVariable(name: "argc", arg: 1, scope: !139, file: !140, line: 280, type: !123)
!190 = !DIExpression()
!191 = !DILocation(line: 280, column: 14, scope: !139)
!192 = !DILocalVariable(name: "argv", arg: 2, scope: !139, file: !140, line: 280, type: !143)
!193 = !DILocation(line: 280, column: 27, scope: !139)
!194 = !DILocalVariable(name: "loglev", scope: !139, file: !140, line: 287, type: !123)
!195 = !DILocation(line: 287, column: 6, scope: !139)
!196 = !DILocation(line: 289, column: 2, scope: !139)
!197 = !DILocation(line: 290, column: 2, scope: !139)
!198 = !DILocation(line: 291, column: 2, scope: !139)
!199 = !DILocation(line: 292, column: 15, scope: !139)
!200 = !DILocation(line: 292, column: 21, scope: !139)
!201 = !DILocation(line: 292, column: 2, scope: !139)
!202 = !DILocation(line: 294, column: 7, scope: !203)
!203 = distinct !DILexicalBlock(scope: !139, file: !140, line: 294, column: 7)
!204 = !DILocation(line: 294, column: 7, scope: !139)
!205 = !DILocation(line: 295, column: 3, scope: !206)
!206 = distinct !DILexicalBlock(scope: !203, file: !140, line: 294, column: 16)
!207 = !DILocation(line: 297, column: 3, scope: !206)
!208 = !DILocation(line: 300, column: 8, scope: !139)
!209 = !DILocation(line: 300, column: 2, scope: !210)
!210 = !DILexicalBlockFile(scope: !139, file: !140, discriminator: 1)
!211 = !DILocation(line: 302, column: 11, scope: !139)
!212 = !DILocation(line: 303, column: 15, scope: !139)
!213 = !DILocation(line: 303, column: 2, scope: !139)
!214 = !DILocation(line: 305, column: 2, scope: !139)
!215 = !DILocation(line: 320, column: 2, scope: !139)
!216 = !DILocation(line: 322, column: 11, scope: !139)
!217 = !DILocation(line: 322, column: 9, scope: !139)
!218 = !DILocation(line: 323, column: 2, scope: !139)
!219 = !DILocation(line: 325, column: 7, scope: !220)
!220 = distinct !DILexicalBlock(scope: !139, file: !140, line: 325, column: 6)
!221 = !DILocation(line: 325, column: 6, scope: !139)
!222 = !DILocation(line: 326, column: 10, scope: !223)
!223 = distinct !DILexicalBlock(scope: !220, file: !140, line: 325, column: 20)
!224 = !DILocation(line: 326, column: 3, scope: !223)
!225 = !DILocation(line: 327, column: 3, scope: !223)
!226 = !DILocation(line: 330, column: 25, scope: !139)
!227 = !DILocation(line: 330, column: 2, scope: !139)
!228 = !DILocation(line: 331, column: 2, scope: !139)
!229 = !DILocation(line: 332, column: 14, scope: !139)
!230 = !DILocation(line: 332, column: 12, scope: !139)
!231 = !DILocation(line: 336, column: 2, scope: !139)
!232 = !DILocation(line: 336, column: 10, scope: !210)
!233 = !DILocation(line: 336, column: 9, scope: !210)
!234 = !DILocation(line: 336, column: 2, scope: !210)
!235 = !DILocation(line: 337, column: 7, scope: !236)
!236 = distinct !DILexicalBlock(scope: !237, file: !140, line: 337, column: 7)
!237 = distinct !DILexicalBlock(scope: !139, file: !140, line: 336, column: 20)
!238 = !DILocation(line: 337, column: 7, scope: !237)
!239 = !DILocation(line: 339, column: 18, scope: !240)
!240 = distinct !DILexicalBlock(scope: !236, file: !140, line: 337, column: 22)
!241 = !DILocation(line: 340, column: 4, scope: !240)
!242 = !DILocation(line: 341, column: 3, scope: !240)
!243 = !DILocation(line: 343, column: 3, scope: !237)
!244 = !DILocation(line: 345, column: 3, scope: !237)
!245 = !DILocation(line: 346, column: 3, scope: !237)
!246 = !DILocation(line: 347, column: 3, scope: !237)
!247 = !DILocation(line: 336, column: 2, scope: !248)
!248 = !DILexicalBlockFile(scope: !139, file: !140, discriminator: 2)
!249 = distinct !{!249, !231}
!250 = !DILocation(line: 350, column: 20, scope: !139)
!251 = !DILocation(line: 350, column: 2, scope: !139)
!252 = !DILocation(line: 351, column: 2, scope: !139)
!253 = !DILocation(line: 353, column: 2, scope: !139)
!254 = !DILocation(line: 354, column: 2, scope: !139)
!255 = !DILocation(line: 355, column: 1, scope: !139)
!256 = distinct !DISubprogram(name: "check_files", scope: !140, file: !140, line: 270, type: !181, isLocal: true, isDefinition: true, scopeLine: 271, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !146)
!257 = !DILocalVariable(name: "statbuf", scope: !256, file: !140, line: 272, type: !258)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !259, line: 46, size: 1152, align: 64, elements: !260)
!259 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/irssi/task1")
!260 = !{!261, !264, !266, !268, !270, !272, !274, !275, !276, !279, !281, !283, !291, !292, !293}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !258, file: !259, line: 48, baseType: !262, size: 64, align: 64)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !263, line: 124, baseType: !136)
!263 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!264 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !258, file: !259, line: 53, baseType: !265, size: 64, align: 64, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !263, line: 127, baseType: !136)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !258, file: !259, line: 61, baseType: !267, size: 64, align: 64, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !263, line: 130, baseType: !136)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !258, file: !259, line: 62, baseType: !269, size: 32, align: 32, offset: 192)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !263, line: 129, baseType: !134)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !258, file: !259, line: 64, baseType: !271, size: 32, align: 32, offset: 224)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !263, line: 125, baseType: !134)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !258, file: !259, line: 65, baseType: !273, size: 32, align: 32, offset: 256)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !263, line: 126, baseType: !134)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !258, file: !259, line: 67, baseType: !123, size: 32, align: 32, offset: 288)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !258, file: !259, line: 69, baseType: !262, size: 64, align: 64, offset: 320)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !258, file: !259, line: 74, baseType: !277, size: 64, align: 64, offset: 384)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !263, line: 131, baseType: !278)
!278 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !258, file: !259, line: 78, baseType: !280, size: 64, align: 64, offset: 448)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !263, line: 153, baseType: !278)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !258, file: !259, line: 80, baseType: !282, size: 64, align: 64, offset: 512)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !263, line: 158, baseType: !278)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !258, file: !259, line: 91, baseType: !284, size: 128, align: 64, offset: 576)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !285, line: 120, size: 128, align: 64, elements: !286)
!285 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!286 = !{!287, !289}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !284, file: !285, line: 122, baseType: !288, size: 64, align: 64)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !263, line: 139, baseType: !278)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !284, file: !285, line: 123, baseType: !290, size: 64, align: 64, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !263, line: 175, baseType: !278)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !258, file: !259, line: 92, baseType: !284, size: 128, align: 64, offset: 704)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !258, file: !259, line: 93, baseType: !284, size: 128, align: 64, offset: 832)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !258, file: !259, line: 106, baseType: !294, size: 192, align: 64, offset: 960)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 192, align: 64, elements: !295)
!295 = !{!296}
!296 = !DISubrange(count: 3)
!297 = !DILocation(line: 272, column: 14, scope: !256)
!298 = !DILocation(line: 274, column: 11, scope: !299)
!299 = distinct !DILexicalBlock(scope: !256, file: !140, line: 274, column: 6)
!300 = !DILocation(line: 274, column: 6, scope: !301)
!301 = !DILexicalBlockFile(scope: !299, file: !140, discriminator: 1)
!302 = !DILocation(line: 274, column: 38, scope: !299)
!303 = !DILocation(line: 274, column: 6, scope: !256)
!304 = !DILocation(line: 276, column: 22, scope: !305)
!305 = distinct !DILexicalBlock(scope: !299, file: !140, line: 274, column: 44)
!306 = !DILocation(line: 277, column: 2, scope: !305)
!307 = !DILocation(line: 278, column: 1, scope: !256)
!308 = distinct !DISubprogram(name: "textui_init", scope: !140, file: !140, line: 140, type: !181, isLocal: true, isDefinition: true, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !146)
!309 = !DILocalVariable(name: "act", scope: !308, file: !140, line: 143, type: !310)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !311, line: 24, size: 1216, align: 64, elements: !312)
!311 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sigaction.h", directory: "/home/lichi/Desktop/irssi/task1")
!312 = !{!313, !391, !400, !401}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "__sigaction_handler", scope: !310, file: !311, line: 35, baseType: !314, size: 64, align: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !310, file: !311, line: 28, size: 64, align: 64, elements: !315)
!315 = !{!316, !317}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !314, file: !311, line: 31, baseType: !118, size: 64, align: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "sa_sigaction", scope: !314, file: !311, line: 33, baseType: !318, size: 64, align: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64, align: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{null, !123, !321, !131}
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64, align: 64)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !323, line: 133, baseType: !324)
!323 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/siginfo.h", directory: "/home/lichi/Desktop/irssi/task1")
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !323, line: 62, size: 1024, align: 64, elements: !325)
!325 = !{!326, !327, !328, !329}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !324, file: !323, line: 64, baseType: !123, size: 32, align: 32)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !324, file: !323, line: 65, baseType: !123, size: 32, align: 32, offset: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !324, file: !323, line: 67, baseType: !123, size: 32, align: 32, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !324, file: !323, line: 132, baseType: !330, size: 896, align: 64, offset: 128)
!330 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !324, file: !323, line: 69, size: 896, align: 64, elements: !331)
!331 = !{!332, !336, !342, !353, !359, !369, !380, !385}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !330, file: !323, line: 71, baseType: !333, size: 896, align: 32)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 896, align: 32, elements: !334)
!334 = !{!335}
!335 = !DISubrange(count: 28)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !330, file: !323, line: 78, baseType: !337, size: 64, align: 32)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !330, file: !323, line: 74, size: 64, align: 32, elements: !338)
!338 = !{!339, !341}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !337, file: !323, line: 76, baseType: !340, size: 32, align: 32)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !263, line: 133, baseType: !123)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !337, file: !323, line: 77, baseType: !271, size: 32, align: 32, offset: 32)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !330, file: !323, line: 86, baseType: !343, size: 128, align: 64)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !330, file: !323, line: 81, size: 128, align: 64, elements: !344)
!344 = !{!345, !346, !347}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "si_tid", scope: !343, file: !323, line: 83, baseType: !123, size: 32, align: 32)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "si_overrun", scope: !343, file: !323, line: 84, baseType: !123, size: 32, align: 32, offset: 32)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !343, file: !323, line: 85, baseType: !348, size: 64, align: 64, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !323, line: 36, baseType: !349)
!349 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !323, line: 32, size: 64, align: 64, elements: !350)
!350 = !{!351, !352}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !349, file: !323, line: 34, baseType: !123, size: 32, align: 32)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !349, file: !323, line: 35, baseType: !131, size: 64, align: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !330, file: !323, line: 94, baseType: !354, size: 128, align: 64)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !330, file: !323, line: 89, size: 128, align: 64, elements: !355)
!355 = !{!356, !357, !358}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !354, file: !323, line: 91, baseType: !340, size: 32, align: 32)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !354, file: !323, line: 92, baseType: !271, size: 32, align: 32, offset: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !354, file: !323, line: 93, baseType: !348, size: 64, align: 64, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !330, file: !323, line: 104, baseType: !360, size: 256, align: 64)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !330, file: !323, line: 97, size: 256, align: 64, elements: !361)
!361 = !{!362, !363, !364, !365, !368}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !360, file: !323, line: 99, baseType: !340, size: 32, align: 32)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !360, file: !323, line: 100, baseType: !271, size: 32, align: 32, offset: 32)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "si_status", scope: !360, file: !323, line: 101, baseType: !123, size: 32, align: 32, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "si_utime", scope: !360, file: !323, line: 102, baseType: !366, size: 64, align: 64, offset: 128)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigchld_clock_t", file: !323, line: 58, baseType: !367)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !263, line: 135, baseType: !278)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "si_stime", scope: !360, file: !323, line: 103, baseType: !366, size: 64, align: 64, offset: 192)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !330, file: !323, line: 116, baseType: !370, size: 256, align: 64)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !330, file: !323, line: 107, size: 256, align: 64, elements: !371)
!371 = !{!372, !373, !375}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr", scope: !370, file: !323, line: 109, baseType: !131, size: 64, align: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_lsb", scope: !370, file: !323, line: 110, baseType: !374, size: 16, align: 16, offset: 64)
!374 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_bnd", scope: !370, file: !323, line: 115, baseType: !376, size: 128, align: 64, offset: 128)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !370, file: !323, line: 111, size: 128, align: 64, elements: !377)
!377 = !{!378, !379}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !376, file: !323, line: 113, baseType: !131, size: 64, align: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !376, file: !323, line: 114, baseType: !131, size: 64, align: 64, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !330, file: !323, line: 123, baseType: !381, size: 128, align: 64)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !330, file: !323, line: 119, size: 128, align: 64, elements: !382)
!382 = !{!383, !384}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "si_band", scope: !381, file: !323, line: 121, baseType: !278, size: 64, align: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "si_fd", scope: !381, file: !323, line: 122, baseType: !123, size: 32, align: 32, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !330, file: !323, line: 131, baseType: !386, size: 128, align: 64)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !330, file: !323, line: 126, size: 128, align: 64, elements: !387)
!387 = !{!388, !389, !390}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !386, file: !323, line: 128, baseType: !131, size: 64, align: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !386, file: !323, line: 129, baseType: !123, size: 32, align: 32, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !386, file: !323, line: 130, baseType: !134, size: 32, align: 32, offset: 96)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !310, file: !311, line: 43, baseType: !392, size: 1024, align: 64, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !393, line: 30, baseType: !394)
!393 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sigset.h", directory: "/home/lichi/Desktop/irssi/task1")
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !393, line: 27, size: 1024, align: 64, elements: !395)
!395 = !{!396}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !394, file: !393, line: 29, baseType: !397, size: 1024, align: 64)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 1024, align: 64, elements: !398)
!398 = !{!399}
!399 = !DISubrange(count: 16)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !310, file: !311, line: 46, baseType: !123, size: 32, align: 32, offset: 1088)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !310, file: !311, line: 49, baseType: !402, size: 64, align: 64, offset: 1152)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64, align: 64)
!403 = !DILocation(line: 143, column: 19, scope: !308)
!404 = !DILocation(line: 145, column: 19, scope: !308)
!405 = !DILocation(line: 145, column: 2, scope: !308)
!406 = !DILocation(line: 146, column: 6, scope: !308)
!407 = !DILocation(line: 146, column: 15, scope: !308)
!408 = !DILocation(line: 147, column: 5, scope: !308)
!409 = !DILocation(line: 147, column: 25, scope: !308)
!410 = !DILocation(line: 147, column: 16, scope: !308)
!411 = !DILocation(line: 148, column: 2, scope: !308)
!412 = !DILocation(line: 151, column: 12, scope: !308)
!413 = !DILocation(line: 152, column: 2, scope: !308)
!414 = !DILocation(line: 153, column: 2, scope: !308)
!415 = !DILocation(line: 154, column: 2, scope: !308)
!416 = !DILocation(line: 155, column: 2, scope: !308)
!417 = !DILocation(line: 157, column: 2, scope: !308)
!418 = !DILocation(line: 158, column: 2, scope: !308)
!419 = !DILocation(line: 159, column: 2, scope: !308)
!420 = !DILocation(line: 160, column: 1, scope: !308)
!421 = distinct !DISubprogram(name: "textui_finish_init", scope: !140, file: !140, line: 162, type: !181, isLocal: true, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !146)
!422 = !DILocation(line: 164, column: 11, scope: !421)
!423 = !DILocation(line: 166, column: 2, scope: !421)
!424 = !DILocation(line: 167, column: 2, scope: !421)
!425 = !DILocation(line: 168, column: 2, scope: !421)
!426 = !DILocation(line: 169, column: 2, scope: !421)
!427 = !DILocation(line: 170, column: 2, scope: !421)
!428 = !DILocation(line: 171, column: 2, scope: !421)
!429 = !DILocation(line: 172, column: 2, scope: !421)
!430 = !DILocation(line: 173, column: 2, scope: !421)
!431 = !DILocation(line: 174, column: 2, scope: !421)
!432 = !DILocation(line: 175, column: 2, scope: !421)
!433 = !DILocation(line: 176, column: 2, scope: !421)
!434 = !DILocation(line: 177, column: 2, scope: !421)
!435 = !DILocation(line: 178, column: 2, scope: !421)
!436 = !DILocation(line: 179, column: 2, scope: !421)
!437 = !DILocation(line: 180, column: 2, scope: !421)
!438 = !DILocation(line: 182, column: 2, scope: !421)
!439 = !DILocation(line: 184, column: 2, scope: !421)
!440 = !DILocation(line: 195, column: 2, scope: !421)
!441 = !DILocation(line: 197, column: 2, scope: !421)
!442 = !DILocation(line: 198, column: 2, scope: !421)
!443 = !DILocation(line: 199, column: 2, scope: !421)
!444 = !DILocation(line: 201, column: 6, scope: !445)
!445 = distinct !DILexicalBlock(scope: !421, file: !140, line: 201, column: 6)
!446 = !DILocation(line: 201, column: 14, scope: !445)
!447 = !DILocation(line: 201, column: 21, scope: !445)
!448 = !DILocation(line: 201, column: 24, scope: !449)
!449 = !DILexicalBlockFile(scope: !445, file: !140, discriminator: 1)
!450 = !DILocation(line: 201, column: 39, scope: !449)
!451 = !DILocation(line: 201, column: 6, scope: !449)
!452 = !DILocation(line: 202, column: 3, scope: !453)
!453 = distinct !DILexicalBlock(scope: !445, file: !140, line: 201, column: 48)
!454 = !DILocation(line: 203, column: 2, scope: !453)
!455 = !DILocation(line: 205, column: 6, scope: !456)
!456 = distinct !DILexicalBlock(scope: !421, file: !140, line: 205, column: 6)
!457 = !DILocation(line: 205, column: 6, scope: !421)
!458 = !DILocation(line: 206, column: 3, scope: !459)
!459 = distinct !DILexicalBlock(scope: !456, file: !140, line: 205, column: 26)
!460 = !DILocation(line: 207, column: 2, scope: !459)
!461 = !DILocation(line: 210, column: 6, scope: !462)
!462 = distinct !DILexicalBlock(scope: !421, file: !140, line: 210, column: 6)
!463 = !DILocation(line: 210, column: 6, scope: !421)
!464 = !DILocation(line: 211, column: 3, scope: !462)
!465 = !DILocation(line: 212, column: 6, scope: !466)
!466 = distinct !DILexicalBlock(scope: !421, file: !140, line: 212, column: 6)
!467 = !DILocation(line: 212, column: 28, scope: !466)
!468 = !DILocation(line: 212, column: 6, scope: !421)
!469 = !DILocation(line: 213, column: 3, scope: !466)
!470 = !DILocation(line: 214, column: 6, scope: !471)
!471 = distinct !DILexicalBlock(scope: !421, file: !140, line: 214, column: 6)
!472 = !DILocation(line: 214, column: 28, scope: !471)
!473 = !DILocation(line: 214, column: 6, scope: !421)
!474 = !DILocation(line: 215, column: 3, scope: !471)
!475 = !DILocation(line: 216, column: 6, scope: !476)
!476 = distinct !DILexicalBlock(scope: !421, file: !140, line: 216, column: 6)
!477 = !DILocation(line: 216, column: 28, scope: !476)
!478 = !DILocation(line: 216, column: 6, scope: !421)
!479 = !DILocation(line: 217, column: 3, scope: !476)
!480 = !DILocation(line: 218, column: 6, scope: !481)
!481 = distinct !DILexicalBlock(scope: !421, file: !140, line: 218, column: 6)
!482 = !DILocation(line: 218, column: 28, scope: !481)
!483 = !DILocation(line: 218, column: 6, scope: !421)
!484 = !DILocation(line: 219, column: 3, scope: !481)
!485 = !DILocation(line: 221, column: 2, scope: !421)
!486 = !DILocation(line: 222, column: 1, scope: !421)
!487 = distinct !DISubprogram(name: "dirty_check", scope: !140, file: !140, line: 114, type: !181, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !146)
!488 = !DILocation(line: 116, column: 7, scope: !489)
!489 = distinct !DILexicalBlock(scope: !487, file: !140, line: 116, column: 6)
!490 = !DILocation(line: 116, column: 6, scope: !487)
!491 = !DILocation(line: 117, column: 3, scope: !489)
!492 = !DILocation(line: 119, column: 9, scope: !487)
!493 = !DILocation(line: 121, column: 6, scope: !494)
!494 = distinct !DILexicalBlock(scope: !487, file: !140, line: 121, column: 6)
!495 = !DILocation(line: 121, column: 6, scope: !487)
!496 = !DILocation(line: 122, column: 29, scope: !497)
!497 = distinct !DILexicalBlock(scope: !494, file: !140, line: 121, column: 19)
!498 = !DILocation(line: 126, column: 3, scope: !497)
!499 = !DILocation(line: 127, column: 3, scope: !497)
!500 = !DILocation(line: 129, column: 3, scope: !497)
!501 = !DILocation(line: 130, column: 3, scope: !497)
!502 = !DILocation(line: 131, column: 2, scope: !497)
!503 = !DILocation(line: 133, column: 2, scope: !487)
!504 = !DILocation(line: 134, column: 9, scope: !487)
!505 = !DILocation(line: 135, column: 2, scope: !487)
!506 = !DILocation(line: 137, column: 15, scope: !487)
!507 = !DILocation(line: 138, column: 1, scope: !487)
!508 = !DILocation(line: 138, column: 1, scope: !509)
!509 = !DILexicalBlockFile(scope: !487, file: !140, discriminator: 1)
!510 = distinct !DISubprogram(name: "textui_deinit", scope: !140, file: !140, line: 224, type: !181, isLocal: true, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !146)
!511 = !DILocation(line: 226, column: 2, scope: !510)
!512 = !DILocation(line: 228, column: 9, scope: !510)
!513 = !DILocation(line: 229, column: 2, scope: !510)
!514 = !DILocation(line: 229, column: 9, scope: !515)
!515 = !DILexicalBlockFile(scope: !510, file: !140, discriminator: 1)
!516 = !DILocation(line: 229, column: 17, scope: !515)
!517 = !DILocation(line: 229, column: 2, scope: !515)
!518 = !DILocation(line: 230, column: 17, scope: !510)
!519 = !DILocation(line: 230, column: 26, scope: !510)
!520 = !DILocation(line: 230, column: 3, scope: !510)
!521 = !DILocation(line: 229, column: 2, scope: !522)
!522 = !DILexicalBlockFile(scope: !510, file: !140, discriminator: 2)
!523 = distinct !{!523, !513}
!524 = !DILocation(line: 241, column: 2, scope: !510)
!525 = !DILocation(line: 242, column: 2, scope: !510)
!526 = !DILocation(line: 243, column: 2, scope: !510)
!527 = !DILocation(line: 245, column: 2, scope: !510)
!528 = !DILocation(line: 246, column: 2, scope: !510)
!529 = !DILocation(line: 247, column: 2, scope: !510)
!530 = !DILocation(line: 248, column: 2, scope: !510)
!531 = !DILocation(line: 249, column: 2, scope: !510)
!532 = !DILocation(line: 250, column: 2, scope: !510)
!533 = !DILocation(line: 251, column: 2, scope: !510)
!534 = !DILocation(line: 252, column: 2, scope: !510)
!535 = !DILocation(line: 253, column: 2, scope: !510)
!536 = !DILocation(line: 254, column: 2, scope: !510)
!537 = !DILocation(line: 255, column: 2, scope: !510)
!538 = !DILocation(line: 256, column: 2, scope: !510)
!539 = !DILocation(line: 257, column: 2, scope: !510)
!540 = !DILocation(line: 259, column: 2, scope: !510)
!541 = !DILocation(line: 260, column: 2, scope: !510)
!542 = !DILocation(line: 262, column: 2, scope: !510)
!543 = !DILocation(line: 264, column: 2, scope: !510)
!544 = !DILocation(line: 265, column: 2, scope: !510)
!545 = !DILocation(line: 266, column: 2, scope: !510)
!546 = !DILocation(line: 267, column: 2, scope: !510)
!547 = !DILocation(line: 268, column: 1, scope: !510)
!548 = distinct !DISubprogram(name: "sig_settings_userinfo_changed", scope: !140, file: !140, line: 97, type: !549, isLocal: true, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !146)
!549 = !DISubroutineType(types: !550)
!550 = !{null, !162}
!551 = !DILocalVariable(name: "changedp", arg: 1, scope: !548, file: !140, line: 97, type: !162)
!552 = !DILocation(line: 97, column: 52, scope: !548)
!553 = !DILocation(line: 99, column: 45, scope: !548)
!554 = !DILocation(line: 99, column: 35, scope: !548)
!555 = !DILocation(line: 99, column: 27, scope: !548)
!556 = !DILocation(line: 99, column: 24, scope: !548)
!557 = !DILocation(line: 100, column: 1, scope: !548)
!558 = distinct !DISubprogram(name: "sig_exit", scope: !140, file: !140, line: 92, type: !181, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !146)
!559 = !DILocation(line: 94, column: 18, scope: !558)
!560 = !DILocation(line: 95, column: 1, scope: !558)
