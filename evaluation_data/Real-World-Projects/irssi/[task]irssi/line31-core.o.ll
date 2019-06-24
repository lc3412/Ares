; ModuleID = './line31-core.o.i'
source_filename = "./line31-core.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GOptionEntry = type { i8*, i8, i32, i32, i8*, i8*, i8* }
%struct._GSList = type { i8*, %struct._GSList* }
%struct.rlimit = type { i64, i64 }
%struct.MODULE_FILE_REC = type { %struct._MODULE_REC*, i8*, i8*, void ()*, %struct._GModule*, i8 }
%struct._MODULE_REC = type { i8*, %struct._GSList* }
%struct._GModule = type opaque
%struct.sigaction = type { %union.anon, %struct.__sigset_t, i32, void ()* }
%union.anon = type { void (i32)* }
%struct.__sigset_t = type { [16 x i64] }

@irssi_dir = internal global i8* null, align 8
@irssi_config_file = internal global i8* null, align 8
@core_register_options.options = internal global [3 x %struct._GOptionEntry] [%struct._GOptionEntry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8 0, i32 0, i32 1, i8* bitcast (i8** @irssi_config_file to i8*), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0) }, %struct._GOptionEntry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8 0, i32 0, i32 1, i8* bitcast (i8** @irssi_dir to i8*), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0) }, %struct._GOptionEntry zeroinitializer], align 16
@.str = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Configuration file location (~/.irssi/config)\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"home\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Irssi home dir location (~/.irssi)\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"%s/.irssi\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"%s/config\00", align 1
@dialog_type_queue = internal global %struct._GSList* null, align 8
@dialog_text_queue = internal global %struct._GSList* null, align 8
@client_start_time = common global i64 0, align 8
@.str.8 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"gui dialog\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"irssi init finished\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"misc\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"ignore_signals\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"override_coredump_limit\00", align 1
@orig_core_rlimit = internal global %struct.rlimit zeroinitializer, align 8
@.str.15 = private unnamed_addr constant [14 x i8] c"setup changed\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"WINDOW ITEM TYPE\00", align 1
@irssi_gui = common global i32 0, align 4
@irssi_init_finished = common global i32 0, align 4
@reload_config = common global i32 0, align 4
@.str.17 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@read_settings.signals = internal global [6 x i32] [i32 2, i32 3, i32 15, i32 14, i32 10, i32 12], align 16
@read_settings.signames = internal global [6 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0)], align 16
@.str.18 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"term\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"alrm\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"usr1\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"usr2\00", align 1

; Function Attrs: nounwind uwtable
define i8* @get_irssi_dir() #0 !dbg !119 {
  %1 = load i8*, i8** @irssi_dir, align 8, !dbg !124
  ret i8* %1, !dbg !125
}

; Function Attrs: nounwind uwtable
define i8* @get_irssi_config() #0 !dbg !126 {
  %1 = load i8*, i8** @irssi_config_file, align 8, !dbg !127
  ret i8* %1, !dbg !128
}

; Function Attrs: nounwind uwtable
define void @core_register_options() #0 !dbg !57 {
  call void @args_register(%struct._GOptionEntry* getelementptr inbounds ([3 x %struct._GOptionEntry], [3 x %struct._GOptionEntry]* @core_register_options.options, i32 0, i32 0)), !dbg !129
  call void @session_register_options(), !dbg !130
  ret void, !dbg !131
}

declare void @args_register(%struct._GOptionEntry*) #1

declare void @session_register_options() #1

; Function Attrs: nounwind uwtable
define void @core_preinit(i8*) #0 !dbg !132 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !135, metadata !136), !dbg !137
  call void @llvm.dbg.declare(metadata i8** %3, metadata !138, metadata !136), !dbg !139
  call void @llvm.dbg.declare(metadata i8** %4, metadata !140, metadata !136), !dbg !141
  call void @llvm.dbg.declare(metadata i32* %5, metadata !142, metadata !136), !dbg !143
  %6 = load i8*, i8** @irssi_dir, align 8, !dbg !144
  %7 = icmp eq i8* %6, null, !dbg !146
  br i1 %7, label %8, label %16, !dbg !147

; <label>:8:                                      ; preds = %1
  %9 = call i8* @g_get_home_dir(), !dbg !148
  store i8* %9, i8** %3, align 8, !dbg !150
  %10 = load i8*, i8** %3, align 8, !dbg !151
  %11 = icmp eq i8* %10, null, !dbg !153
  br i1 %11, label %12, label %13, !dbg !154

; <label>:12:                                     ; preds = %8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8** %3, align 8, !dbg !155
  br label %13, !dbg !156

; <label>:13:                                     ; preds = %12, %8
  %14 = load i8*, i8** %3, align 8, !dbg !157
  %15 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* %14), !dbg !158
  store i8* %15, i8** @irssi_dir, align 8, !dbg !159
  br label %39, !dbg !160

; <label>:16:                                     ; preds = %1
  %17 = load i8*, i8** @irssi_dir, align 8, !dbg !161
  store i8* %17, i8** %4, align 8, !dbg !163
  %18 = load i8*, i8** %4, align 8, !dbg !164
  %19 = call i8* @fix_path(i8* %18), !dbg !165
  store i8* %19, i8** @irssi_dir, align 8, !dbg !166
  %20 = load i8*, i8** %4, align 8, !dbg !167
  call void @g_free(i8* %20), !dbg !168
  %21 = load i8*, i8** @irssi_dir, align 8, !dbg !169
  %22 = call i64 @strlen(i8* %21) #5, !dbg !170
  %23 = trunc i64 %22 to i32, !dbg !170
  store i32 %23, i32* %5, align 4, !dbg !171
  %24 = load i32, i32* %5, align 4, !dbg !172
  %25 = sub nsw i32 %24, 1, !dbg !174
  %26 = sext i32 %25 to i64, !dbg !175
  %27 = load i8*, i8** @irssi_dir, align 8, !dbg !175
  %28 = getelementptr inbounds i8, i8* %27, i64 %26, !dbg !175
  %29 = load i8, i8* %28, align 1, !dbg !175
  %30 = sext i8 %29 to i32, !dbg !175
  %31 = icmp eq i32 %30, 47, !dbg !176
  br i1 %31, label %32, label %38, !dbg !177

; <label>:32:                                     ; preds = %16
  %33 = load i32, i32* %5, align 4, !dbg !178
  %34 = sub nsw i32 %33, 1, !dbg !179
  %35 = sext i32 %34 to i64, !dbg !180
  %36 = load i8*, i8** @irssi_dir, align 8, !dbg !180
  %37 = getelementptr inbounds i8, i8* %36, i64 %35, !dbg !180
  store i8 0, i8* %37, align 1, !dbg !181
  br label %38, !dbg !180

; <label>:38:                                     ; preds = %32, %16
  br label %39

; <label>:39:                                     ; preds = %38, %13
  %40 = load i8*, i8** @irssi_config_file, align 8, !dbg !182
  %41 = icmp eq i8* %40, null, !dbg !184
  br i1 %41, label %42, label %45, !dbg !185

; <label>:42:                                     ; preds = %39
  %43 = load i8*, i8** @irssi_dir, align 8, !dbg !186
  %44 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* %43), !dbg !187
  store i8* %44, i8** @irssi_config_file, align 8, !dbg !188
  br label %50, !dbg !189

; <label>:45:                                     ; preds = %39
  %46 = load i8*, i8** @irssi_config_file, align 8, !dbg !190
  store i8* %46, i8** %4, align 8, !dbg !192
  %47 = load i8*, i8** %4, align 8, !dbg !193
  %48 = call i8* @fix_path(i8* %47), !dbg !194
  store i8* %48, i8** @irssi_config_file, align 8, !dbg !195
  %49 = load i8*, i8** %4, align 8, !dbg !196
  call void @g_free(i8* %49), !dbg !197
  br label %50

; <label>:50:                                     ; preds = %45, %42
  %51 = load i8*, i8** %2, align 8, !dbg !198
  call void @session_set_binary(i8* %51), !dbg !199
  ret void, !dbg !200
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare i8* @g_get_home_dir() #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i8* @fix_path(i8*) #0 !dbg !201 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !204, metadata !136), !dbg !205
  call void @llvm.dbg.declare(metadata i8** %3, metadata !206, metadata !136), !dbg !207
  %6 = load i8*, i8** %2, align 8, !dbg !208
  %7 = call i8* @convert_home(i8* %6), !dbg !209
  store i8* %7, i8** %3, align 8, !dbg !207
  %8 = load i8*, i8** %3, align 8, !dbg !210
  %9 = call i32 @g_path_is_absolute(i8* %8), !dbg !212
  %10 = icmp ne i32 %9, 0, !dbg !212
  br i1 %10, label %19, label %11, !dbg !213

; <label>:11:                                     ; preds = %1
  call void @llvm.dbg.declare(metadata i8** %4, metadata !214, metadata !136), !dbg !216
  %12 = load i8*, i8** %3, align 8, !dbg !217
  store i8* %12, i8** %4, align 8, !dbg !216
  call void @llvm.dbg.declare(metadata i8** %5, metadata !218, metadata !136), !dbg !219
  %13 = call i8* @g_get_current_dir(), !dbg !220
  store i8* %13, i8** %5, align 8, !dbg !219
  %14 = load i8*, i8** %5, align 8, !dbg !221
  %15 = load i8*, i8** %4, align 8, !dbg !222
  %16 = call noalias i8* (i8*, i8*, ...) @g_build_path(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i8* %14, i8* %15, i8* null), !dbg !223
  store i8* %16, i8** %3, align 8, !dbg !224
  %17 = load i8*, i8** %5, align 8, !dbg !225
  call void @g_free(i8* %17), !dbg !226
  %18 = load i8*, i8** %4, align 8, !dbg !227
  call void @g_free(i8* %18), !dbg !228
  br label %19, !dbg !229

; <label>:19:                                     ; preds = %11, %1
  %20 = load i8*, i8** %3, align 8, !dbg !230
  ret i8* %20, !dbg !231
}

declare void @g_free(i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare void @session_set_binary(i8*) #1

; Function Attrs: nounwind uwtable
define void @core_init() #0 !dbg !232 {
  store %struct._GSList* null, %struct._GSList** @dialog_type_queue, align 8, !dbg !233
  store %struct._GSList* null, %struct._GSList** @dialog_text_queue, align 8, !dbg !234
  %1 = call i64 @time(i64* null) #6, !dbg !235
  store i64 %1, i64* @client_start_time, align 8, !dbg !236
  call void @modules_init(), !dbg !237
  call void @pidwait_init(), !dbg !238
  call void @net_disconnect_init(), !dbg !239
  call void @signals_init(), !dbg !240
  call void @signal_add_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, i8*)* @sig_gui_dialog to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !241
  call void @signal_add_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_init_finished to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !242
  call void @settings_init(), !dbg !243
  call void @commands_init(), !dbg !244
  call void @nickmatch_cache_init(), !dbg !245
  call void @session_init(), !dbg !246
  call void @chat_protocols_init(), !dbg !247
  call void @chatnets_init(), !dbg !248
  call void @expandos_init(), !dbg !249
  call void @ignore_init(), !dbg !250
  call void @servers_init(), !dbg !251
  call void @write_buffer_init(), !dbg !252
  call void @log_init(), !dbg !253
  call void @log_away_init(), !dbg !254
  call void @rawlog_init(), !dbg !255
  call void @recode_init(), !dbg !256
  call void @channels_init(), !dbg !257
  call void @queries_init(), !dbg !258
  call void @nicklist_init(), !dbg !259
  call void @chat_commands_init(), !dbg !260
  call void @wcwidth_wrapper_init(), !dbg !261
  call void @settings_add_str_module(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i32 0, i32 0)), !dbg !262
  call void @settings_add_bool_module(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i32 0, i32 0), i32 0), !dbg !263
  %2 = call i32 @getrlimit(i32 4, %struct.rlimit* @orig_core_rlimit) #6, !dbg !264
  call void @read_settings(), !dbg !265
  call void @signal_add_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !266
  call void @signal_add_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_irssi_init_finished to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !267
  call void @settings_check_module(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0)), !dbg !268
  %3 = call %struct.MODULE_FILE_REC* @module_register_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0)), !dbg !269
  ret void, !dbg !270
}

; Function Attrs: nounwind
declare i64 @time(i64*) #4

declare void @modules_init() #1

declare void @pidwait_init() #1

declare void @net_disconnect_init() #1

declare void @signals_init() #1

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @sig_gui_dialog(i8*, i8*) #0 !dbg !271 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !274, metadata !136), !dbg !275
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !276, metadata !136), !dbg !277
  %5 = load %struct._GSList*, %struct._GSList** @dialog_type_queue, align 8, !dbg !278
  %6 = load i8*, i8** %3, align 8, !dbg !279
  %7 = call noalias i8* @g_strdup(i8* %6), !dbg !280
  %8 = call %struct._GSList* @g_slist_append(%struct._GSList* %5, i8* %7), !dbg !281
  store %struct._GSList* %8, %struct._GSList** @dialog_type_queue, align 8, !dbg !283
  %9 = load %struct._GSList*, %struct._GSList** @dialog_text_queue, align 8, !dbg !284
  %10 = load i8*, i8** %4, align 8, !dbg !285
  %11 = call noalias i8* @g_strdup(i8* %10), !dbg !286
  %12 = call %struct._GSList* @g_slist_append(%struct._GSList* %9, i8* %11), !dbg !287
  store %struct._GSList* %12, %struct._GSList** @dialog_text_queue, align 8, !dbg !288
  ret void, !dbg !289
}

; Function Attrs: nounwind uwtable
define internal void @sig_init_finished() #0 !dbg !290 {
  %1 = alloca %struct._GSList*, align 8
  %2 = alloca %struct._GSList*, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %1, metadata !291, metadata !136), !dbg !292
  call void @llvm.dbg.declare(metadata %struct._GSList** %2, metadata !293, metadata !136), !dbg !294
  call void @signal_remove_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, i8*)* @sig_gui_dialog to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !295
  call void @signal_remove_full(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_init_finished to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !296
  %3 = load %struct._GSList*, %struct._GSList** @dialog_type_queue, align 8, !dbg !297
  store %struct._GSList* %3, %struct._GSList** %1, align 8, !dbg !298
  %4 = load %struct._GSList*, %struct._GSList** @dialog_text_queue, align 8, !dbg !299
  store %struct._GSList* %4, %struct._GSList** %2, align 8, !dbg !300
  br label %5, !dbg !301

; <label>:5:                                      ; preds = %22, %0
  %6 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !302
  %7 = icmp ne %struct._GSList* %6, null, !dbg !306
  br i1 %7, label %8, label %29, !dbg !307

; <label>:8:                                      ; preds = %5
  %9 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !308
  %10 = getelementptr inbounds %struct._GSList, %struct._GSList* %9, i32 0, i32 0, !dbg !310
  %11 = load i8*, i8** %10, align 8, !dbg !310
  %12 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !311
  %13 = getelementptr inbounds %struct._GSList, %struct._GSList* %12, i32 0, i32 0, !dbg !312
  %14 = load i8*, i8** %13, align 8, !dbg !312
  %15 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i32 2, i8* %11, i8* %14), !dbg !313
  %16 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !314
  %17 = getelementptr inbounds %struct._GSList, %struct._GSList* %16, i32 0, i32 0, !dbg !315
  %18 = load i8*, i8** %17, align 8, !dbg !315
  call void @g_free(i8* %18), !dbg !316
  %19 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !317
  %20 = getelementptr inbounds %struct._GSList, %struct._GSList* %19, i32 0, i32 0, !dbg !318
  %21 = load i8*, i8** %20, align 8, !dbg !318
  call void @g_free(i8* %21), !dbg !319
  br label %22, !dbg !320

; <label>:22:                                     ; preds = %8
  %23 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !321
  %24 = getelementptr inbounds %struct._GSList, %struct._GSList* %23, i32 0, i32 1, !dbg !323
  %25 = load %struct._GSList*, %struct._GSList** %24, align 8, !dbg !323
  store %struct._GSList* %25, %struct._GSList** %2, align 8, !dbg !324
  %26 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !325
  %27 = getelementptr inbounds %struct._GSList, %struct._GSList* %26, i32 0, i32 1, !dbg !326
  %28 = load %struct._GSList*, %struct._GSList** %27, align 8, !dbg !326
  store %struct._GSList* %28, %struct._GSList** %1, align 8, !dbg !327
  br label %5, !dbg !328, !llvm.loop !329

; <label>:29:                                     ; preds = %5
  %30 = load %struct._GSList*, %struct._GSList** @dialog_type_queue, align 8, !dbg !330
  call void @g_slist_free(%struct._GSList* %30), !dbg !331
  %31 = load %struct._GSList*, %struct._GSList** @dialog_text_queue, align 8, !dbg !332
  call void @g_slist_free(%struct._GSList* %31), !dbg !333
  ret void, !dbg !334
}

declare void @settings_init() #1

declare void @commands_init() #1

declare void @nickmatch_cache_init() #1

declare void @session_init() #1

declare void @chat_protocols_init() #1

declare void @chatnets_init() #1

declare void @expandos_init() #1

declare void @ignore_init() #1

declare void @servers_init() #1

declare void @write_buffer_init() #1

declare void @log_init() #1

declare void @log_away_init() #1

declare void @rawlog_init() #1

declare void @recode_init() #1

declare void @channels_init() #1

declare void @queries_init() #1

declare void @nicklist_init() #1

declare void @chat_commands_init() #1

declare void @wcwidth_wrapper_init() #1

declare void @settings_add_str_module(i8*, i8*, i8*, i8*) #1

declare void @settings_add_bool_module(i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind
declare i32 @getrlimit(i32, %struct.rlimit*) #4

; Function Attrs: nounwind uwtable
define internal void @read_settings() #0 !dbg !110 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.sigaction, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.rlimit, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !335, metadata !136), !dbg !336
  call void @llvm.dbg.declare(metadata %struct.sigaction* %2, metadata !337, metadata !136), !dbg !433
  call void @llvm.dbg.declare(metadata i32* %3, metadata !434, metadata !136), !dbg !435
  %5 = call i8* @settings_get_str(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0)), !dbg !436
  store i8* %5, i8** %1, align 8, !dbg !437
  %6 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 1, !dbg !438
  %7 = call i32 @sigemptyset(%struct.__sigset_t* %6) #6, !dbg !439
  %8 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 2, !dbg !440
  store i32 0, i32* %8, align 8, !dbg !441
  %9 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 0, !dbg !442
  %10 = bitcast %union.anon* %9 to void (i32)**, !dbg !443
  store void (i32)* @sig_reload_config, void (i32)** %10, align 8, !dbg !444
  %11 = call i32 @sigaction(i32 1, %struct.sigaction* %2, %struct.sigaction* null) #6, !dbg !445
  store i32 0, i32* %3, align 4, !dbg !446
  br label %12, !dbg !448

; <label>:12:                                     ; preds = %32, %0
  %13 = load i32, i32* %3, align 4, !dbg !449
  %14 = sext i32 %13 to i64, !dbg !449
  %15 = icmp ult i64 %14, 6, !dbg !452
  br i1 %15, label %16, label %35, !dbg !453

; <label>:16:                                     ; preds = %12
  %17 = load i8*, i8** %1, align 8, !dbg !454
  %18 = load i32, i32* %3, align 4, !dbg !456
  %19 = sext i32 %18 to i64, !dbg !457
  %20 = getelementptr inbounds [6 x i8*], [6 x i8*]* @read_settings.signames, i64 0, i64 %19, !dbg !457
  %21 = load i8*, i8** %20, align 8, !dbg !457
  %22 = call i32 @find_substr(i8* %17, i8* %21), !dbg !458
  %23 = icmp ne i32 %22, 0, !dbg !458
  %24 = select i1 %23, void (i32)* inttoptr (i64 1 to void (i32)*), void (i32)* null, !dbg !458
  %25 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 0, !dbg !459
  %26 = bitcast %union.anon* %25 to void (i32)**, !dbg !460
  store void (i32)* %24, void (i32)** %26, align 8, !dbg !461
  %27 = load i32, i32* %3, align 4, !dbg !462
  %28 = sext i32 %27 to i64, !dbg !463
  %29 = getelementptr inbounds [6 x i32], [6 x i32]* @read_settings.signals, i64 0, i64 %28, !dbg !463
  %30 = load i32, i32* %29, align 4, !dbg !463
  %31 = call i32 @sigaction(i32 %30, %struct.sigaction* %2, %struct.sigaction* null) #6, !dbg !464
  br label %32, !dbg !465

; <label>:32:                                     ; preds = %16
  %33 = load i32, i32* %3, align 4, !dbg !466
  %34 = add nsw i32 %33, 1, !dbg !466
  store i32 %34, i32* %3, align 4, !dbg !466
  br label %12, !dbg !468, !llvm.loop !469

; <label>:35:                                     ; preds = %12
  %36 = call i32 @settings_get_bool(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i32 0, i32 0)), !dbg !471
  %37 = icmp ne i32 %36, 0, !dbg !471
  br i1 %37, label %40, label %38, !dbg !473

; <label>:38:                                     ; preds = %35
  %39 = call i32 @setrlimit(i32 4, %struct.rlimit* @orig_core_rlimit) #6, !dbg !474
  br label %47, !dbg !474

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.declare(metadata %struct.rlimit* %4, metadata !475, metadata !136), !dbg !477
  %41 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %4, i32 0, i32 0, !dbg !478
  store i64 -1, i64* %41, align 8, !dbg !479
  %42 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %4, i32 0, i32 1, !dbg !480
  store i64 -1, i64* %42, align 8, !dbg !481
  %43 = call i32 @setrlimit(i32 4, %struct.rlimit* %4) #6, !dbg !482
  %44 = icmp eq i32 %43, -1, !dbg !484
  br i1 %44, label %45, label %46, !dbg !485

; <label>:45:                                     ; preds = %40
  call void @settings_set_bool(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i32 0, i32 0), i32 0), !dbg !486
  br label %46, !dbg !486

; <label>:46:                                     ; preds = %45, %40
  br label %47

; <label>:47:                                     ; preds = %46, %38
  ret void, !dbg !487
}

; Function Attrs: nounwind uwtable
define internal void @sig_irssi_init_finished() #0 !dbg !488 {
  store i32 1, i32* @irssi_init_finished, align 4, !dbg !489
  ret void, !dbg !490
}

declare void @settings_check_module(i8*) #1

declare %struct.MODULE_FILE_REC* @module_register_full(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @core_deinit() #0 !dbg !491 {
  call void @module_uniq_destroy(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0)), !dbg !492
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !493
  call void @signal_remove_full(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_irssi_init_finished to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !494
  call void @wcwidth_wrapper_deinit(), !dbg !495
  call void @chat_commands_deinit(), !dbg !496
  call void @nicklist_deinit(), !dbg !497
  call void @queries_deinit(), !dbg !498
  call void @channels_deinit(), !dbg !499
  call void @recode_deinit(), !dbg !500
  call void @rawlog_deinit(), !dbg !501
  call void @log_away_deinit(), !dbg !502
  call void @log_deinit(), !dbg !503
  call void @write_buffer_deinit(), !dbg !504
  call void @servers_deinit(), !dbg !505
  call void @ignore_deinit(), !dbg !506
  call void @expandos_deinit(), !dbg !507
  call void @chatnets_deinit(), !dbg !508
  call void @chat_protocols_deinit(), !dbg !509
  call void @session_deinit(), !dbg !510
  call void @nickmatch_cache_deinit(), !dbg !511
  call void @commands_deinit(), !dbg !512
  call void @settings_deinit(), !dbg !513
  call void @signals_deinit(), !dbg !514
  call void @net_disconnect_deinit(), !dbg !515
  call void @pidwait_deinit(), !dbg !516
  call void @modules_deinit(), !dbg !517
  %1 = load i8*, i8** @irssi_dir, align 8, !dbg !518
  call void @g_free(i8* %1), !dbg !519
  %2 = load i8*, i8** @irssi_config_file, align 8, !dbg !520
  call void @g_free(i8* %2), !dbg !521
  ret void, !dbg !522
}

declare void @module_uniq_destroy(i8*) #1

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @wcwidth_wrapper_deinit() #1

declare void @chat_commands_deinit() #1

declare void @nicklist_deinit() #1

declare void @queries_deinit() #1

declare void @channels_deinit() #1

declare void @recode_deinit() #1

declare void @rawlog_deinit() #1

declare void @log_away_deinit() #1

declare void @log_deinit() #1

declare void @write_buffer_deinit() #1

declare void @servers_deinit() #1

declare void @ignore_deinit() #1

declare void @expandos_deinit() #1

declare void @chatnets_deinit() #1

declare void @chat_protocols_deinit() #1

declare void @session_deinit() #1

declare void @nickmatch_cache_deinit() #1

declare void @commands_deinit() #1

declare void @settings_deinit() #1

declare void @signals_deinit() #1

declare void @net_disconnect_deinit() #1

declare void @pidwait_deinit() #1

declare void @modules_deinit() #1

declare i8* @convert_home(i8*) #1

declare i32 @g_path_is_absolute(i8*) #1

declare i8* @g_get_current_dir() #1

declare noalias i8* @g_build_path(i8*, i8*, ...) #1

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #1

declare noalias i8* @g_strdup(i8*) #1

declare i32 @signal_emit(i8*, i32, ...) #1

declare void @g_slist_free(%struct._GSList*) #1

declare i8* @settings_get_str(i8*) #1

; Function Attrs: nounwind
declare i32 @sigemptyset(%struct.__sigset_t*) #4

; Function Attrs: nounwind uwtable
define internal void @sig_reload_config(i32) #0 !dbg !523 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !524, metadata !136), !dbg !525
  store i32 1, i32* @reload_config, align 4, !dbg !526
  ret void, !dbg !527
}

; Function Attrs: nounwind
declare i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #4

declare i32 @find_substr(i8*, i8*) #1

declare i32 @settings_get_bool(i8*) #1

; Function Attrs: nounwind
declare i32 @setrlimit(i32, %struct.rlimit*) #4

declare void @settings_set_bool(i8*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!116, !117}
!llvm.ident = !{!118}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !37, globals: !55)
!1 = !DIFile(filename: "line31-core.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !15}
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
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__rlimit_resource", file: !16, line: 31, size: 32, align: 32, elements: !17)
!16 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/resource.h", directory: "/home/lichi/Desktop/irssi/task1")
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36}
!18 = !DIEnumerator(name: "RLIMIT_CPU", value: 0)
!19 = !DIEnumerator(name: "RLIMIT_FSIZE", value: 1)
!20 = !DIEnumerator(name: "RLIMIT_DATA", value: 2)
!21 = !DIEnumerator(name: "RLIMIT_STACK", value: 3)
!22 = !DIEnumerator(name: "RLIMIT_CORE", value: 4)
!23 = !DIEnumerator(name: "__RLIMIT_RSS", value: 5)
!24 = !DIEnumerator(name: "RLIMIT_NOFILE", value: 7)
!25 = !DIEnumerator(name: "__RLIMIT_OFILE", value: 7)
!26 = !DIEnumerator(name: "RLIMIT_AS", value: 9)
!27 = !DIEnumerator(name: "__RLIMIT_NPROC", value: 6)
!28 = !DIEnumerator(name: "__RLIMIT_MEMLOCK", value: 8)
!29 = !DIEnumerator(name: "__RLIMIT_LOCKS", value: 10)
!30 = !DIEnumerator(name: "__RLIMIT_SIGPENDING", value: 11)
!31 = !DIEnumerator(name: "__RLIMIT_MSGQUEUE", value: 12)
!32 = !DIEnumerator(name: "__RLIMIT_NICE", value: 13)
!33 = !DIEnumerator(name: "__RLIMIT_RTPRIO", value: 14)
!34 = !DIEnumerator(name: "__RLIMIT_RTTIME", value: 15)
!35 = !DIEnumerator(name: "__RLIMIT_NLIMITS", value: 16)
!36 = !DIEnumerator(name: "__RLIM_NLIMITS", value: 16)
!37 = !{!38, !39, !46, !52}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !40, line: 9, baseType: !41)
!40 = !DIFile(filename: "signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{null, !44, !44, !44, !44, !44, !44}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !47, line: 85, baseType: !48)
!47 = !DIFile(filename: "/usr/include/signal.h", directory: "/home/lichi/Desktop/irssi/task1")
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DISubroutineType(types: !50)
!50 = !{null, !51}
!51 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__rlim_t", file: !53, line: 136, baseType: !54)
!53 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!54 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!55 = !{!56, !83, !89, !90, !91, !92, !97, !99, !100, !108, !109, !114}
!56 = distinct !DIGlobalVariable(name: "options", scope: !57, file: !58, line: 179, type: !62, isLocal: true, isDefinition: true, variable: [3 x %struct._GOptionEntry]* @core_register_options.options)
!57 = distinct !DISubprogram(name: "core_register_options", scope: !58, file: !58, line: 177, type: !59, isLocal: false, isDefinition: true, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !61)
!58 = !DIFile(filename: "core.c", directory: "/home/lichi/Desktop/irssi/task1")
!59 = !DISubroutineType(types: !60)
!60 = !{null}
!61 = !{}
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 1152, align: 64, elements: !81)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "GOptionEntry", file: !4, line: 52, baseType: !64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GOptionEntry", file: !4, line: 257, size: 384, align: 64, elements: !65)
!65 = !{!66, !72, !73, !75, !77, !79, !80}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "long_name", scope: !64, file: !4, line: 259, baseType: !67, size: 64, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !70, line: 46, baseType: !71)
!70 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!71 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "short_name", scope: !64, file: !4, line: 260, baseType: !69, size: 8, align: 8, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !64, file: !4, line: 261, baseType: !74, size: 32, align: 32, offset: 96)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !70, line: 49, baseType: !51)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !64, file: !4, line: 263, baseType: !76, size: 32, align: 32, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "GOptionArg", file: !4, line: 129, baseType: !3)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "arg_data", scope: !64, file: !4, line: 264, baseType: !78, size: 64, align: 64, offset: 192)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !70, line: 77, baseType: !38)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !64, file: !4, line: 266, baseType: !67, size: 64, align: 64, offset: 256)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "arg_description", scope: !64, file: !4, line: 267, baseType: !67, size: 64, align: 64, offset: 320)
!81 = !{!82}
!82 = !DISubrange(count: 3)
!83 = distinct !DIGlobalVariable(name: "orig_core_rlimit", scope: !0, file: !58, line: 54, type: !84, isLocal: true, isDefinition: true, variable: %struct.rlimit* @orig_core_rlimit)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !16, line: 139, size: 128, align: 64, elements: !85)
!85 = !{!86, !88}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !84, file: !16, line: 142, baseType: !87, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "rlim_t", file: !16, line: 131, baseType: !52)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !84, file: !16, line: 144, baseType: !87, size: 64, align: 64, offset: 64)
!89 = distinct !DIGlobalVariable(name: "irssi_gui", scope: !0, file: !58, line: 66, type: !51, isLocal: false, isDefinition: true, variable: i32* @irssi_gui)
!90 = distinct !DIGlobalVariable(name: "irssi_init_finished", scope: !0, file: !58, line: 67, type: !51, isLocal: false, isDefinition: true, variable: i32* @irssi_init_finished)
!91 = distinct !DIGlobalVariable(name: "reload_config", scope: !0, file: !58, line: 68, type: !51, isLocal: false, isDefinition: true, variable: i32* @reload_config)
!92 = distinct !DIGlobalVariable(name: "client_start_time", scope: !0, file: !58, line: 69, type: !93, isLocal: false, isDefinition: true, variable: i64* @client_start_time)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !94, line: 75, baseType: !95)
!94 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !53, line: 139, baseType: !96)
!96 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!97 = distinct !DIGlobalVariable(name: "irssi_dir", scope: !0, file: !58, line: 71, type: !98, isLocal: true, isDefinition: true, variable: i8** @irssi_dir)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!99 = distinct !DIGlobalVariable(name: "irssi_config_file", scope: !0, file: !58, line: 71, type: !98, isLocal: true, isDefinition: true, variable: i8** @irssi_config_file)
!100 = distinct !DIGlobalVariable(name: "dialog_type_queue", scope: !0, file: !58, line: 72, type: !101, isLocal: true, isDefinition: true, variable: %struct._GSList** @dialog_type_queue)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64, align: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !103, line: 37, baseType: !104)
!103 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !103, line: 39, size: 128, align: 64, elements: !105)
!105 = !{!106, !107}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !104, file: !103, line: 41, baseType: !78, size: 64, align: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !104, file: !103, line: 42, baseType: !101, size: 64, align: 64, offset: 64)
!108 = distinct !DIGlobalVariable(name: "dialog_text_queue", scope: !0, file: !58, line: 72, type: !101, isLocal: true, isDefinition: true, variable: %struct._GSList** @dialog_text_queue)
!109 = distinct !DIGlobalVariable(name: "signals", scope: !110, file: !58, line: 92, type: !111, isLocal: true, isDefinition: true, variable: [6 x i32]* @read_settings.signals)
!110 = distinct !DISubprogram(name: "read_settings", scope: !58, file: !58, line: 90, type: !59, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !61)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 192, align: 32, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 6)
!114 = distinct !DIGlobalVariable(name: "signames", scope: !110, file: !58, line: 96, type: !115, isLocal: true, isDefinition: true, variable: [6 x i8*]* @read_settings.signames)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 384, align: 64, elements: !112)
!116 = !{i32 2, !"Dwarf Version", i32 4}
!117 = !{i32 2, !"Debug Info Version", i32 3}
!118 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!119 = distinct !DISubprogram(name: "get_irssi_dir", scope: !58, file: !58, line: 74, type: !120, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !61)
!120 = !DISubroutineType(types: !121)
!121 = !{!122}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, align: 64)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!124 = !DILocation(line: 76, column: 16, scope: !119)
!125 = !DILocation(line: 76, column: 9, scope: !119)
!126 = distinct !DISubprogram(name: "get_irssi_config", scope: !58, file: !58, line: 80, type: !120, isLocal: false, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !61)
!127 = !DILocation(line: 82, column: 16, scope: !126)
!128 = !DILocation(line: 82, column: 9, scope: !126)
!129 = !DILocation(line: 185, column: 2, scope: !57)
!130 = !DILocation(line: 186, column: 2, scope: !57)
!131 = !DILocation(line: 187, column: 1, scope: !57)
!132 = distinct !DISubprogram(name: "core_preinit", scope: !58, file: !58, line: 189, type: !133, isLocal: false, isDefinition: true, scopeLine: 190, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !61)
!133 = !DISubroutineType(types: !134)
!134 = !{null, !122}
!135 = !DILocalVariable(name: "path", arg: 1, scope: !132, file: !58, line: 189, type: !122)
!136 = !DIExpression()
!137 = !DILocation(line: 189, column: 31, scope: !132)
!138 = !DILocalVariable(name: "home", scope: !132, file: !58, line: 191, type: !122)
!139 = !DILocation(line: 191, column: 14, scope: !132)
!140 = !DILocalVariable(name: "str", scope: !132, file: !58, line: 192, type: !98)
!141 = !DILocation(line: 192, column: 8, scope: !132)
!142 = !DILocalVariable(name: "len", scope: !132, file: !58, line: 193, type: !51)
!143 = !DILocation(line: 193, column: 6, scope: !132)
!144 = !DILocation(line: 195, column: 6, scope: !145)
!145 = distinct !DILexicalBlock(scope: !132, file: !58, line: 195, column: 6)
!146 = !DILocation(line: 195, column: 16, scope: !145)
!147 = !DILocation(line: 195, column: 6, scope: !132)
!148 = !DILocation(line: 196, column: 10, scope: !149)
!149 = distinct !DILexicalBlock(scope: !145, file: !58, line: 195, column: 24)
!150 = !DILocation(line: 196, column: 8, scope: !149)
!151 = !DILocation(line: 197, column: 7, scope: !152)
!152 = distinct !DILexicalBlock(scope: !149, file: !58, line: 197, column: 7)
!153 = !DILocation(line: 197, column: 12, scope: !152)
!154 = !DILocation(line: 197, column: 7, scope: !149)
!155 = !DILocation(line: 198, column: 9, scope: !152)
!156 = !DILocation(line: 198, column: 4, scope: !152)
!157 = !DILocation(line: 200, column: 44, scope: !149)
!158 = !DILocation(line: 200, column: 15, scope: !149)
!159 = !DILocation(line: 200, column: 13, scope: !149)
!160 = !DILocation(line: 201, column: 2, scope: !149)
!161 = !DILocation(line: 202, column: 9, scope: !162)
!162 = distinct !DILexicalBlock(scope: !145, file: !58, line: 201, column: 9)
!163 = !DILocation(line: 202, column: 7, scope: !162)
!164 = !DILocation(line: 203, column: 24, scope: !162)
!165 = !DILocation(line: 203, column: 15, scope: !162)
!166 = !DILocation(line: 203, column: 13, scope: !162)
!167 = !DILocation(line: 204, column: 10, scope: !162)
!168 = !DILocation(line: 204, column: 3, scope: !162)
!169 = !DILocation(line: 205, column: 16, scope: !162)
!170 = !DILocation(line: 205, column: 9, scope: !162)
!171 = !DILocation(line: 205, column: 7, scope: !162)
!172 = !DILocation(line: 206, column: 17, scope: !173)
!173 = distinct !DILexicalBlock(scope: !162, file: !58, line: 206, column: 7)
!174 = !DILocation(line: 206, column: 20, scope: !173)
!175 = !DILocation(line: 206, column: 7, scope: !173)
!176 = !DILocation(line: 206, column: 24, scope: !173)
!177 = !DILocation(line: 206, column: 7, scope: !162)
!178 = !DILocation(line: 207, column: 14, scope: !173)
!179 = !DILocation(line: 207, column: 17, scope: !173)
!180 = !DILocation(line: 207, column: 4, scope: !173)
!181 = !DILocation(line: 207, column: 21, scope: !173)
!182 = !DILocation(line: 209, column: 6, scope: !183)
!183 = distinct !DILexicalBlock(scope: !132, file: !58, line: 209, column: 6)
!184 = !DILocation(line: 209, column: 24, scope: !183)
!185 = !DILocation(line: 209, column: 6, scope: !132)
!186 = !DILocation(line: 210, column: 54, scope: !183)
!187 = !DILocation(line: 210, column: 23, scope: !183)
!188 = !DILocation(line: 210, column: 21, scope: !183)
!189 = !DILocation(line: 210, column: 3, scope: !183)
!190 = !DILocation(line: 212, column: 9, scope: !191)
!191 = distinct !DILexicalBlock(scope: !183, file: !58, line: 211, column: 7)
!192 = !DILocation(line: 212, column: 7, scope: !191)
!193 = !DILocation(line: 213, column: 32, scope: !191)
!194 = !DILocation(line: 213, column: 23, scope: !191)
!195 = !DILocation(line: 213, column: 21, scope: !191)
!196 = !DILocation(line: 214, column: 10, scope: !191)
!197 = !DILocation(line: 214, column: 3, scope: !191)
!198 = !DILocation(line: 217, column: 21, scope: !132)
!199 = !DILocation(line: 217, column: 2, scope: !132)
!200 = !DILocation(line: 218, column: 1, scope: !132)
!201 = distinct !DISubprogram(name: "fix_path", scope: !58, file: !58, line: 160, type: !202, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !61)
!202 = !DISubroutineType(types: !203)
!203 = !{!98, !122}
!204 = !DILocalVariable(name: "str", arg: 1, scope: !201, file: !58, line: 160, type: !122)
!205 = !DILocation(line: 160, column: 35, scope: !201)
!206 = !DILocalVariable(name: "new_str", scope: !201, file: !58, line: 162, type: !98)
!207 = !DILocation(line: 162, column: 8, scope: !201)
!208 = !DILocation(line: 162, column: 31, scope: !201)
!209 = !DILocation(line: 162, column: 18, scope: !201)
!210 = !DILocation(line: 164, column: 26, scope: !211)
!211 = distinct !DILexicalBlock(scope: !201, file: !58, line: 164, column: 6)
!212 = !DILocation(line: 164, column: 7, scope: !211)
!213 = !DILocation(line: 164, column: 6, scope: !201)
!214 = !DILocalVariable(name: "tmp_str", scope: !215, file: !58, line: 165, type: !98)
!215 = distinct !DILexicalBlock(scope: !211, file: !58, line: 164, column: 36)
!216 = !DILocation(line: 165, column: 9, scope: !215)
!217 = !DILocation(line: 165, column: 19, scope: !215)
!218 = !DILocalVariable(name: "current_dir", scope: !215, file: !58, line: 166, type: !98)
!219 = !DILocation(line: 166, column: 9, scope: !215)
!220 = !DILocation(line: 166, column: 23, scope: !215)
!221 = !DILocation(line: 168, column: 31, scope: !215)
!222 = !DILocation(line: 168, column: 44, scope: !215)
!223 = !DILocation(line: 168, column: 13, scope: !215)
!224 = !DILocation(line: 168, column: 11, scope: !215)
!225 = !DILocation(line: 170, column: 10, scope: !215)
!226 = !DILocation(line: 170, column: 3, scope: !215)
!227 = !DILocation(line: 171, column: 10, scope: !215)
!228 = !DILocation(line: 171, column: 3, scope: !215)
!229 = !DILocation(line: 172, column: 2, scope: !215)
!230 = !DILocation(line: 174, column: 9, scope: !201)
!231 = !DILocation(line: 174, column: 2, scope: !201)
!232 = distinct !DISubprogram(name: "core_init", scope: !58, file: !58, line: 225, type: !59, isLocal: false, isDefinition: true, scopeLine: 226, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !61)
!233 = !DILocation(line: 227, column: 20, scope: !232)
!234 = !DILocation(line: 228, column: 20, scope: !232)
!235 = !DILocation(line: 229, column: 22, scope: !232)
!236 = !DILocation(line: 229, column: 20, scope: !232)
!237 = !DILocation(line: 231, column: 2, scope: !232)
!238 = !DILocation(line: 232, column: 2, scope: !232)
!239 = !DILocation(line: 234, column: 2, scope: !232)
!240 = !DILocation(line: 235, column: 2, scope: !232)
!241 = !DILocation(line: 237, column: 2, scope: !232)
!242 = !DILocation(line: 238, column: 2, scope: !232)
!243 = !DILocation(line: 240, column: 2, scope: !232)
!244 = !DILocation(line: 241, column: 2, scope: !232)
!245 = !DILocation(line: 242, column: 2, scope: !232)
!246 = !DILocation(line: 243, column: 9, scope: !232)
!247 = !DILocation(line: 248, column: 2, scope: !232)
!248 = !DILocation(line: 249, column: 2, scope: !232)
!249 = !DILocation(line: 250, column: 9, scope: !232)
!250 = !DILocation(line: 251, column: 2, scope: !232)
!251 = !DILocation(line: 252, column: 2, scope: !232)
!252 = !DILocation(line: 253, column: 9, scope: !232)
!253 = !DILocation(line: 254, column: 2, scope: !232)
!254 = !DILocation(line: 255, column: 2, scope: !232)
!255 = !DILocation(line: 256, column: 2, scope: !232)
!256 = !DILocation(line: 257, column: 2, scope: !232)
!257 = !DILocation(line: 259, column: 2, scope: !232)
!258 = !DILocation(line: 260, column: 2, scope: !232)
!259 = !DILocation(line: 261, column: 2, scope: !232)
!260 = !DILocation(line: 263, column: 2, scope: !232)
!261 = !DILocation(line: 264, column: 2, scope: !232)
!262 = !DILocation(line: 266, column: 2, scope: !232)
!263 = !DILocation(line: 267, column: 2, scope: !232)
!264 = !DILocation(line: 270, column: 2, scope: !232)
!265 = !DILocation(line: 272, column: 2, scope: !232)
!266 = !DILocation(line: 273, column: 2, scope: !232)
!267 = !DILocation(line: 274, column: 2, scope: !232)
!268 = !DILocation(line: 276, column: 2, scope: !232)
!269 = !DILocation(line: 278, column: 9, scope: !232)
!270 = !DILocation(line: 279, column: 1, scope: !232)
!271 = distinct !DISubprogram(name: "sig_gui_dialog", scope: !58, file: !58, line: 134, type: !272, isLocal: true, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !61)
!272 = !DISubroutineType(types: !273)
!273 = !{null, !122, !122}
!274 = !DILocalVariable(name: "type", arg: 1, scope: !271, file: !58, line: 134, type: !122)
!275 = !DILocation(line: 134, column: 40, scope: !271)
!276 = !DILocalVariable(name: "text", arg: 2, scope: !271, file: !58, line: 134, type: !122)
!277 = !DILocation(line: 134, column: 58, scope: !271)
!278 = !DILocation(line: 136, column: 37, scope: !271)
!279 = !DILocation(line: 136, column: 65, scope: !271)
!280 = !DILocation(line: 136, column: 56, scope: !271)
!281 = !DILocation(line: 136, column: 22, scope: !282)
!282 = !DILexicalBlockFile(scope: !271, file: !58, discriminator: 1)
!283 = !DILocation(line: 136, column: 20, scope: !271)
!284 = !DILocation(line: 137, column: 37, scope: !271)
!285 = !DILocation(line: 137, column: 65, scope: !271)
!286 = !DILocation(line: 137, column: 56, scope: !271)
!287 = !DILocation(line: 137, column: 22, scope: !282)
!288 = !DILocation(line: 137, column: 20, scope: !271)
!289 = !DILocation(line: 138, column: 1, scope: !271)
!290 = distinct !DISubprogram(name: "sig_init_finished", scope: !58, file: !58, line: 140, type: !59, isLocal: true, isDefinition: true, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !61)
!291 = !DILocalVariable(name: "type", scope: !290, file: !58, line: 142, type: !101)
!292 = !DILocation(line: 142, column: 10, scope: !290)
!293 = !DILocalVariable(name: "text", scope: !290, file: !58, line: 142, type: !101)
!294 = !DILocation(line: 142, column: 17, scope: !290)
!295 = !DILocation(line: 144, column: 9, scope: !290)
!296 = !DILocation(line: 145, column: 2, scope: !290)
!297 = !DILocation(line: 149, column: 9, scope: !290)
!298 = !DILocation(line: 149, column: 7, scope: !290)
!299 = !DILocation(line: 150, column: 16, scope: !290)
!300 = !DILocation(line: 150, column: 14, scope: !290)
!301 = !DILocation(line: 151, column: 2, scope: !290)
!302 = !DILocation(line: 151, column: 9, scope: !303)
!303 = !DILexicalBlockFile(scope: !304, file: !58, discriminator: 1)
!304 = distinct !DILexicalBlock(scope: !305, file: !58, line: 151, column: 2)
!305 = distinct !DILexicalBlock(scope: !290, file: !58, line: 151, column: 2)
!306 = !DILocation(line: 151, column: 14, scope: !303)
!307 = !DILocation(line: 151, column: 2, scope: !303)
!308 = !DILocation(line: 152, column: 32, scope: !309)
!309 = distinct !DILexicalBlock(scope: !304, file: !58, line: 151, column: 60)
!310 = !DILocation(line: 152, column: 38, scope: !309)
!311 = !DILocation(line: 152, column: 44, scope: !309)
!312 = !DILocation(line: 152, column: 50, scope: !309)
!313 = !DILocation(line: 152, column: 3, scope: !309)
!314 = !DILocation(line: 153, column: 10, scope: !309)
!315 = !DILocation(line: 153, column: 16, scope: !309)
!316 = !DILocation(line: 153, column: 3, scope: !309)
!317 = !DILocation(line: 154, column: 24, scope: !309)
!318 = !DILocation(line: 154, column: 30, scope: !309)
!319 = !DILocation(line: 154, column: 17, scope: !309)
!320 = !DILocation(line: 155, column: 2, scope: !309)
!321 = !DILocation(line: 151, column: 29, scope: !322)
!322 = !DILexicalBlockFile(scope: !304, file: !58, discriminator: 2)
!323 = !DILocation(line: 151, column: 35, scope: !322)
!324 = !DILocation(line: 151, column: 27, scope: !322)
!325 = !DILocation(line: 151, column: 48, scope: !322)
!326 = !DILocation(line: 151, column: 54, scope: !322)
!327 = !DILocation(line: 151, column: 46, scope: !322)
!328 = !DILocation(line: 151, column: 2, scope: !322)
!329 = distinct !{!329, !301}
!330 = !DILocation(line: 156, column: 22, scope: !290)
!331 = !DILocation(line: 156, column: 9, scope: !290)
!332 = !DILocation(line: 157, column: 22, scope: !290)
!333 = !DILocation(line: 157, column: 9, scope: !290)
!334 = !DILocation(line: 158, column: 1, scope: !290)
!335 = !DILocalVariable(name: "ignores", scope: !110, file: !58, line: 101, type: !122)
!336 = !DILocation(line: 101, column: 14, scope: !110)
!337 = !DILocalVariable(name: "act", scope: !110, file: !58, line: 102, type: !338)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !339, line: 24, size: 1216, align: 64, elements: !340)
!339 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sigaction.h", directory: "/home/lichi/Desktop/irssi/task1")
!340 = !{!341, !421, !430, !431}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "__sigaction_handler", scope: !338, file: !339, line: 35, baseType: !342, size: 64, align: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !338, file: !339, line: 28, size: 64, align: 64, elements: !343)
!343 = !{!344, !345}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !342, file: !339, line: 31, baseType: !46, size: 64, align: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "sa_sigaction", scope: !342, file: !339, line: 33, baseType: !346, size: 64, align: 64)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64, align: 64)
!347 = !DISubroutineType(types: !348)
!348 = !{null, !51, !349, !38}
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64, align: 64)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !351, line: 133, baseType: !352)
!351 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/siginfo.h", directory: "/home/lichi/Desktop/irssi/task1")
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !351, line: 62, size: 1024, align: 64, elements: !353)
!353 = !{!354, !355, !356, !357}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !352, file: !351, line: 64, baseType: !51, size: 32, align: 32)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !352, file: !351, line: 65, baseType: !51, size: 32, align: 32, offset: 32)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !352, file: !351, line: 67, baseType: !51, size: 32, align: 32, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !352, file: !351, line: 132, baseType: !358, size: 896, align: 64, offset: 128)
!358 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !352, file: !351, line: 69, size: 896, align: 64, elements: !359)
!359 = !{!360, !364, !372, !383, !389, !399, !410, !415}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !358, file: !351, line: 71, baseType: !361, size: 896, align: 32)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 896, align: 32, elements: !362)
!362 = !{!363}
!363 = !DISubrange(count: 28)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !358, file: !351, line: 78, baseType: !365, size: 64, align: 32)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !358, file: !351, line: 74, size: 64, align: 32, elements: !366)
!366 = !{!367, !369}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !365, file: !351, line: 76, baseType: !368, size: 32, align: 32)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !53, line: 133, baseType: !51)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !365, file: !351, line: 77, baseType: !370, size: 32, align: 32, offset: 32)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !53, line: 125, baseType: !371)
!371 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !358, file: !351, line: 86, baseType: !373, size: 128, align: 64)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !358, file: !351, line: 81, size: 128, align: 64, elements: !374)
!374 = !{!375, !376, !377}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "si_tid", scope: !373, file: !351, line: 83, baseType: !51, size: 32, align: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "si_overrun", scope: !373, file: !351, line: 84, baseType: !51, size: 32, align: 32, offset: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !373, file: !351, line: 85, baseType: !378, size: 64, align: 64, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !351, line: 36, baseType: !379)
!379 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !351, line: 32, size: 64, align: 64, elements: !380)
!380 = !{!381, !382}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !379, file: !351, line: 34, baseType: !51, size: 32, align: 32)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !379, file: !351, line: 35, baseType: !38, size: 64, align: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !358, file: !351, line: 94, baseType: !384, size: 128, align: 64)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !358, file: !351, line: 89, size: 128, align: 64, elements: !385)
!385 = !{!386, !387, !388}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !384, file: !351, line: 91, baseType: !368, size: 32, align: 32)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !384, file: !351, line: 92, baseType: !370, size: 32, align: 32, offset: 32)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !384, file: !351, line: 93, baseType: !378, size: 64, align: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !358, file: !351, line: 104, baseType: !390, size: 256, align: 64)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !358, file: !351, line: 97, size: 256, align: 64, elements: !391)
!391 = !{!392, !393, !394, !395, !398}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !390, file: !351, line: 99, baseType: !368, size: 32, align: 32)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !390, file: !351, line: 100, baseType: !370, size: 32, align: 32, offset: 32)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "si_status", scope: !390, file: !351, line: 101, baseType: !51, size: 32, align: 32, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "si_utime", scope: !390, file: !351, line: 102, baseType: !396, size: 64, align: 64, offset: 128)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigchld_clock_t", file: !351, line: 58, baseType: !397)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !53, line: 135, baseType: !96)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "si_stime", scope: !390, file: !351, line: 103, baseType: !396, size: 64, align: 64, offset: 192)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !358, file: !351, line: 116, baseType: !400, size: 256, align: 64)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !358, file: !351, line: 107, size: 256, align: 64, elements: !401)
!401 = !{!402, !403, !405}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr", scope: !400, file: !351, line: 109, baseType: !38, size: 64, align: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_lsb", scope: !400, file: !351, line: 110, baseType: !404, size: 16, align: 16, offset: 64)
!404 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_bnd", scope: !400, file: !351, line: 115, baseType: !406, size: 128, align: 64, offset: 128)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !400, file: !351, line: 111, size: 128, align: 64, elements: !407)
!407 = !{!408, !409}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !406, file: !351, line: 113, baseType: !38, size: 64, align: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !406, file: !351, line: 114, baseType: !38, size: 64, align: 64, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !358, file: !351, line: 123, baseType: !411, size: 128, align: 64)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !358, file: !351, line: 119, size: 128, align: 64, elements: !412)
!412 = !{!413, !414}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "si_band", scope: !411, file: !351, line: 121, baseType: !96, size: 64, align: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "si_fd", scope: !411, file: !351, line: 122, baseType: !51, size: 32, align: 32, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !358, file: !351, line: 131, baseType: !416, size: 128, align: 64)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !358, file: !351, line: 126, size: 128, align: 64, elements: !417)
!417 = !{!418, !419, !420}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !416, file: !351, line: 128, baseType: !38, size: 64, align: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !416, file: !351, line: 129, baseType: !51, size: 32, align: 32, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !416, file: !351, line: 130, baseType: !371, size: 32, align: 32, offset: 96)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !338, file: !339, line: 43, baseType: !422, size: 1024, align: 64, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !423, line: 30, baseType: !424)
!423 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sigset.h", directory: "/home/lichi/Desktop/irssi/task1")
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !423, line: 27, size: 1024, align: 64, elements: !425)
!425 = !{!426}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !424, file: !423, line: 29, baseType: !427, size: 1024, align: 64)
!427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 1024, align: 64, elements: !428)
!428 = !{!429}
!429 = !DISubrange(count: 16)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !338, file: !339, line: 46, baseType: !51, size: 32, align: 32, offset: 1088)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !338, file: !339, line: 49, baseType: !432, size: 64, align: 64, offset: 1152)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!433 = !DILocation(line: 102, column: 19, scope: !110)
!434 = !DILocalVariable(name: "n", scope: !110, file: !58, line: 103, type: !51)
!435 = !DILocation(line: 103, column: 13, scope: !110)
!436 = !DILocation(line: 105, column: 12, scope: !110)
!437 = !DILocation(line: 105, column: 10, scope: !110)
!438 = !DILocation(line: 107, column: 20, scope: !110)
!439 = !DILocation(line: 107, column: 2, scope: !110)
!440 = !DILocation(line: 108, column: 6, scope: !110)
!441 = !DILocation(line: 108, column: 15, scope: !110)
!442 = !DILocation(line: 111, column: 12, scope: !110)
!443 = !DILocation(line: 111, column: 32, scope: !110)
!444 = !DILocation(line: 111, column: 23, scope: !110)
!445 = !DILocation(line: 112, column: 2, scope: !110)
!446 = !DILocation(line: 114, column: 9, scope: !447)
!447 = distinct !DILexicalBlock(scope: !110, file: !58, line: 114, column: 2)
!448 = !DILocation(line: 114, column: 7, scope: !447)
!449 = !DILocation(line: 114, column: 14, scope: !450)
!450 = !DILexicalBlockFile(scope: !451, file: !58, discriminator: 1)
!451 = distinct !DILexicalBlock(scope: !447, file: !58, line: 114, column: 2)
!452 = !DILocation(line: 114, column: 16, scope: !450)
!453 = !DILocation(line: 114, column: 2, scope: !450)
!454 = !DILocation(line: 115, column: 31, scope: !455)
!455 = distinct !DILexicalBlock(scope: !451, file: !58, line: 114, column: 59)
!456 = !DILocation(line: 115, column: 49, scope: !455)
!457 = !DILocation(line: 115, column: 40, scope: !455)
!458 = !DILocation(line: 115, column: 19, scope: !455)
!459 = !DILocation(line: 115, column: 6, scope: !455)
!460 = !DILocation(line: 115, column: 26, scope: !455)
!461 = !DILocation(line: 115, column: 17, scope: !455)
!462 = !DILocation(line: 117, column: 21, scope: !455)
!463 = !DILocation(line: 117, column: 13, scope: !455)
!464 = !DILocation(line: 117, column: 3, scope: !455)
!465 = !DILocation(line: 118, column: 2, scope: !455)
!466 = !DILocation(line: 114, column: 55, scope: !467)
!467 = !DILexicalBlockFile(scope: !451, file: !58, discriminator: 2)
!468 = !DILocation(line: 114, column: 2, scope: !467)
!469 = distinct !{!469, !470}
!470 = !DILocation(line: 114, column: 2, scope: !110)
!471 = !DILocation(line: 121, column: 7, scope: !472)
!472 = distinct !DILexicalBlock(scope: !110, file: !58, line: 121, column: 6)
!473 = !DILocation(line: 121, column: 6, scope: !110)
!474 = !DILocation(line: 122, column: 3, scope: !472)
!475 = !DILocalVariable(name: "rlimit", scope: !476, file: !58, line: 124, type: !84)
!476 = distinct !DILexicalBlock(scope: !472, file: !58, line: 123, column: 7)
!477 = !DILocation(line: 124, column: 17, scope: !476)
!478 = !DILocation(line: 126, column: 24, scope: !476)
!479 = !DILocation(line: 126, column: 33, scope: !476)
!480 = !DILocation(line: 127, column: 24, scope: !476)
!481 = !DILocation(line: 127, column: 33, scope: !476)
!482 = !DILocation(line: 128, column: 7, scope: !483)
!483 = distinct !DILexicalBlock(scope: !476, file: !58, line: 128, column: 7)
!484 = !DILocation(line: 128, column: 38, scope: !483)
!485 = !DILocation(line: 128, column: 7, scope: !476)
!486 = !DILocation(line: 129, column: 25, scope: !483)
!487 = !DILocation(line: 132, column: 1, scope: !110)
!488 = distinct !DISubprogram(name: "sig_irssi_init_finished", scope: !58, file: !58, line: 220, type: !59, isLocal: true, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !61)
!489 = !DILocation(line: 222, column: 29, scope: !488)
!490 = !DILocation(line: 223, column: 1, scope: !488)
!491 = distinct !DISubprogram(name: "core_deinit", scope: !58, file: !58, line: 281, type: !59, isLocal: false, isDefinition: true, scopeLine: 282, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !61)
!492 = !DILocation(line: 283, column: 2, scope: !491)
!493 = !DILocation(line: 285, column: 2, scope: !491)
!494 = !DILocation(line: 286, column: 2, scope: !491)
!495 = !DILocation(line: 288, column: 2, scope: !491)
!496 = !DILocation(line: 289, column: 2, scope: !491)
!497 = !DILocation(line: 291, column: 2, scope: !491)
!498 = !DILocation(line: 292, column: 2, scope: !491)
!499 = !DILocation(line: 293, column: 2, scope: !491)
!500 = !DILocation(line: 295, column: 2, scope: !491)
!501 = !DILocation(line: 296, column: 2, scope: !491)
!502 = !DILocation(line: 297, column: 2, scope: !491)
!503 = !DILocation(line: 298, column: 2, scope: !491)
!504 = !DILocation(line: 299, column: 9, scope: !491)
!505 = !DILocation(line: 300, column: 2, scope: !491)
!506 = !DILocation(line: 301, column: 2, scope: !491)
!507 = !DILocation(line: 302, column: 9, scope: !491)
!508 = !DILocation(line: 303, column: 2, scope: !491)
!509 = !DILocation(line: 304, column: 2, scope: !491)
!510 = !DILocation(line: 309, column: 9, scope: !491)
!511 = !DILocation(line: 310, column: 9, scope: !491)
!512 = !DILocation(line: 311, column: 2, scope: !491)
!513 = !DILocation(line: 312, column: 2, scope: !491)
!514 = !DILocation(line: 313, column: 2, scope: !491)
!515 = !DILocation(line: 314, column: 2, scope: !491)
!516 = !DILocation(line: 316, column: 2, scope: !491)
!517 = !DILocation(line: 317, column: 2, scope: !491)
!518 = !DILocation(line: 319, column: 9, scope: !491)
!519 = !DILocation(line: 319, column: 2, scope: !491)
!520 = !DILocation(line: 320, column: 16, scope: !491)
!521 = !DILocation(line: 320, column: 9, scope: !491)
!522 = !DILocation(line: 321, column: 1, scope: !491)
!523 = distinct !DISubprogram(name: "sig_reload_config", scope: !58, file: !58, line: 85, type: !49, isLocal: true, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !61)
!524 = !DILocalVariable(name: "signo", arg: 1, scope: !523, file: !58, line: 85, type: !51)
!525 = !DILocation(line: 85, column: 35, scope: !523)
!526 = !DILocation(line: 87, column: 23, scope: !523)
!527 = !DILocation(line: 88, column: 1, scope: !523)
