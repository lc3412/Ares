; ModuleID = './line364-statusbar-config.o.i'
source_filename = "./line364-statusbar-config.o.i"
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
%struct.STATUSBAR_GROUP_REC = type { i8*, %struct._GSList*, %struct._GSList* }
%struct.STATUSBAR_CONFIG_REC = type { i8*, i32, i32, i32, i32, %struct._GSList* }
%struct.SBAR_ITEM_CONFIG_REC = type { i8*, i8*, i32, i8 }
%struct.COMMAND_REC = type { %struct._GSList*, i8*, i8*, i8** }
%struct.STATUSBAR_REC = type { %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_CONFIG_REC*, %struct.MAIN_WINDOW_REC*, %struct._GSList*, i8*, i32, i8, i32 }
%struct.MAIN_WINDOW_REC = type { %struct._WINDOW_REC*, %struct._TERM_WINDOW*, i32, i32, i32, i32, i32, i32, i32, %struct._GSList*, i32, i32, i32, i32, i32, i32, i8 }
%struct._WINDOW_REC = type { i32, i8*, i32, i32, %struct._GSList*, %struct._WI_ITEM_REC*, %struct._SERVER_REC*, %struct._SERVER_REC*, i8*, i32, %struct._GSList*, i8, %struct.HISTORY_REC*, i8*, i32, i8*, i64, i64, i8*, i8*, i8* }
%struct._WI_ITEM_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)* }
%struct._SERVER_REC = type opaque
%struct.HISTORY_REC = type { i8*, %struct._GList*, i32, i32, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._TERM_WINDOW = type opaque
%struct.SBAR_ITEM_REC = type { %struct.STATUSBAR_REC*, %struct.SBAR_ITEM_CONFIG_REC*, {}*, i32, i32, i32, i32, i32, i8 }

@.str = private unnamed_addr constant [8 x i8] c"fe-text\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"setup reread\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"theme changed\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"statusbar\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"statusbar list\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"statusbar add\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"statusbar modify\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"statusbar reset\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"statusbar info\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"statusbar additem\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"statusbar modifyitem\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"statusbar removeitem\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"+before +after +priority +alignment\00", align 1
@.str.13 = private unnamed_addr constant [54 x i8] c"disable nodisable +type +placement +position +visible\00", align 1
@mainconfig = external global %struct._CONFIG_REC*, align 8
@statusbar_groups = external global %struct._GSList*, align 8
@active_statusbar_group = external global %struct.STATUSBAR_GROUP_REC*, align 8
@default_config = external global i8*, align 8
@.str.14 = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"items\00", align 1
@__func__.statusbar_read_group = private unnamed_addr constant [21 x i8] c"statusbar_read_group\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"is_node_list(node)\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"visible\00", align 1
@.str.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"inactive\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"window\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"placement\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"position\00", align 1
@__func__.statusbar_config_create = private unnamed_addr constant [24 x i8] c"statusbar_config_create\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"group != NULL\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"name != NULL\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"priority\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"alignment\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@__func__.statusbar_item_config_create = private unnamed_addr constant [29 x i8] c"statusbar_item_config_create\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"bar != NULL\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"add -nodisable %s %s\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"add -disable %s %s\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"reset %s\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"add -type %s %s\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"add -placement %s %s\00", align 1
@.str.42 = private unnamed_addr constant [20 x i8] c"add -position %s %s\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"add -visible %s %s\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"additem %s %s\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"removeitem %s %s\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"statusbar %s\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"info %s\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"bottom\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"always\00", align 1
@signal_user_data = external global i8*, align 8
@.str.54 = private unnamed_addr constant [14 x i8] c"error command\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"nodisable\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"before\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"after\00", align 1
@__func__.statusbar_copy_config = private unnamed_addr constant [22 x i8] c"statusbar_copy_config\00", align 1
@.str.59 = private unnamed_addr constant [15 x i8] c"parent != NULL\00", align 1

; Function Attrs: nounwind uwtable
define void @statusbar_config_destroy(%struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_CONFIG_REC*) #0 !dbg !225 {
  %3 = alloca %struct.STATUSBAR_GROUP_REC*, align 8
  %4 = alloca %struct.STATUSBAR_CONFIG_REC*, align 8
  store %struct.STATUSBAR_GROUP_REC* %0, %struct.STATUSBAR_GROUP_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.STATUSBAR_GROUP_REC** %3, metadata !237, metadata !238), !dbg !239
  store %struct.STATUSBAR_CONFIG_REC* %1, %struct.STATUSBAR_CONFIG_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.STATUSBAR_CONFIG_REC** %4, metadata !240, metadata !238), !dbg !241
  %5 = load %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_GROUP_REC** %3, align 8, !dbg !242
  %6 = getelementptr inbounds %struct.STATUSBAR_GROUP_REC, %struct.STATUSBAR_GROUP_REC* %5, i32 0, i32 1, !dbg !243
  %7 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !243
  %8 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %4, align 8, !dbg !244
  %9 = bitcast %struct.STATUSBAR_CONFIG_REC* %8 to i8*, !dbg !244
  %10 = call %struct._GSList* @g_slist_remove(%struct._GSList* %7, i8* %9), !dbg !245
  %11 = load %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_GROUP_REC** %3, align 8, !dbg !246
  %12 = getelementptr inbounds %struct.STATUSBAR_GROUP_REC, %struct.STATUSBAR_GROUP_REC* %11, i32 0, i32 1, !dbg !247
  store %struct._GSList* %10, %struct._GSList** %12, align 8, !dbg !248
  br label %13, !dbg !249

; <label>:13:                                     ; preds = %18, %2
  %14 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %4, align 8, !dbg !250
  %15 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %14, i32 0, i32 5, !dbg !252
  %16 = load %struct._GSList*, %struct._GSList** %15, align 8, !dbg !252
  %17 = icmp ne %struct._GSList* %16, null, !dbg !253
  br i1 %17, label %18, label %26, !dbg !254

; <label>:18:                                     ; preds = %13
  %19 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %4, align 8, !dbg !255
  %20 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %4, align 8, !dbg !256
  %21 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %20, i32 0, i32 5, !dbg !257
  %22 = load %struct._GSList*, %struct._GSList** %21, align 8, !dbg !257
  %23 = getelementptr inbounds %struct._GSList, %struct._GSList* %22, i32 0, i32 0, !dbg !258
  %24 = load i8*, i8** %23, align 8, !dbg !258
  %25 = bitcast i8* %24 to %struct.SBAR_ITEM_CONFIG_REC*, !dbg !256
  call void @statusbar_config_item_destroy(%struct.STATUSBAR_CONFIG_REC* %19, %struct.SBAR_ITEM_CONFIG_REC* %25), !dbg !259
  br label %13, !dbg !260, !llvm.loop !262

; <label>:26:                                     ; preds = %13
  %27 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %4, align 8, !dbg !263
  %28 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %27, i32 0, i32 0, !dbg !264
  %29 = load i8*, i8** %28, align 8, !dbg !264
  call void @g_free(i8* %29), !dbg !265
  %30 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %4, align 8, !dbg !266
  %31 = bitcast %struct.STATUSBAR_CONFIG_REC* %30 to i8*, !dbg !266
  call void @g_free(i8* %31), !dbg !267
  ret void, !dbg !268
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @statusbar_config_item_destroy(%struct.STATUSBAR_CONFIG_REC*, %struct.SBAR_ITEM_CONFIG_REC*) #0 !dbg !269 {
  %3 = alloca %struct.STATUSBAR_CONFIG_REC*, align 8
  %4 = alloca %struct.SBAR_ITEM_CONFIG_REC*, align 8
  store %struct.STATUSBAR_CONFIG_REC* %0, %struct.STATUSBAR_CONFIG_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.STATUSBAR_CONFIG_REC** %3, metadata !272, metadata !238), !dbg !273
  store %struct.SBAR_ITEM_CONFIG_REC* %1, %struct.SBAR_ITEM_CONFIG_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.SBAR_ITEM_CONFIG_REC** %4, metadata !274, metadata !238), !dbg !275
  %5 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %3, align 8, !dbg !276
  %6 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %5, i32 0, i32 5, !dbg !277
  %7 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !277
  %8 = load %struct.SBAR_ITEM_CONFIG_REC*, %struct.SBAR_ITEM_CONFIG_REC** %4, align 8, !dbg !278
  %9 = bitcast %struct.SBAR_ITEM_CONFIG_REC* %8 to i8*, !dbg !278
  %10 = call %struct._GSList* @g_slist_remove(%struct._GSList* %7, i8* %9), !dbg !279
  %11 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %3, align 8, !dbg !280
  %12 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %11, i32 0, i32 5, !dbg !281
  store %struct._GSList* %10, %struct._GSList** %12, align 8, !dbg !282
  %13 = load %struct.SBAR_ITEM_CONFIG_REC*, %struct.SBAR_ITEM_CONFIG_REC** %4, align 8, !dbg !283
  %14 = getelementptr inbounds %struct.SBAR_ITEM_CONFIG_REC, %struct.SBAR_ITEM_CONFIG_REC* %13, i32 0, i32 0, !dbg !284
  %15 = load i8*, i8** %14, align 8, !dbg !284
  call void @g_free(i8* %15), !dbg !285
  %16 = load %struct.SBAR_ITEM_CONFIG_REC*, %struct.SBAR_ITEM_CONFIG_REC** %4, align 8, !dbg !286
  %17 = bitcast %struct.SBAR_ITEM_CONFIG_REC* %16 to i8*, !dbg !286
  call void @g_free(i8* %17), !dbg !287
  ret void, !dbg !288
}

declare void @g_free(i8*) #2

; Function Attrs: nounwind uwtable
define void @statusbar_config_init() #0 !dbg !289 {
  call void @read_statusbar_config(), !dbg !292
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 100, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_statusbar_config to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !293
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_statusbar_config to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !294
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_statusbar to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !295
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_statusbar_list to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !296
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, i8*, i8*)* @cmd_statusbar_add_modify to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* inttoptr (i64 1 to i8*)), !dbg !297
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, i8*, i8*)* @cmd_statusbar_add_modify to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !298
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, i8*, i8*)* @cmd_statusbar_reset to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !299
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_statusbar_info to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !300
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, i8*, i8*)* @cmd_statusbar_additem_modifyitem to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* inttoptr (i64 1 to i8*)), !dbg !301
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, i8*, i8*)* @cmd_statusbar_additem_modifyitem to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !302
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, i8*, i8*)* @cmd_statusbar_removeitem to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !303
  call void @command_set_options_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i32 0, i32 0)), !dbg !304
  call void @command_set_options_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i32 0, i32 0)), !dbg !305
  call void @command_set_options_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i32 0, i32 0)), !dbg !306
  call void @command_set_options_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i32 0, i32 0)), !dbg !307
  ret void, !dbg !308
}

; Function Attrs: nounwind uwtable
define internal void @read_statusbar_config() #0 !dbg !309 {
  %1 = alloca %struct._CONFIG_NODE*, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %1, metadata !310, metadata !238), !dbg !318
  call void @statusbar_reset_defaults(), !dbg !319
  %2 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !320
  %3 = call %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 0), !dbg !321
  store %struct._CONFIG_NODE* %3, %struct._CONFIG_NODE** %1, align 8, !dbg !322
  %4 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %1, align 8, !dbg !323
  %5 = icmp ne %struct._CONFIG_NODE* %4, null, !dbg !325
  br i1 %5, label %6, label %8, !dbg !326

; <label>:6:                                      ; preds = %0
  %7 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %1, align 8, !dbg !327
  call void @read_statusbar_config_from_node(%struct._CONFIG_NODE* %7), !dbg !328
  br label %8, !dbg !328

; <label>:8:                                      ; preds = %6, %0
  call void @create_root_statusbars(), !dbg !329
  call void @statusbars_create_window_bars(), !dbg !330
  ret void, !dbg !331
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare void @command_bind_full(i8*, i32, i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @cmd_statusbar(i8*) #0 !dbg !332 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !335, metadata !238), !dbg !336
  call void @llvm.dbg.declare(metadata i8** %3, metadata !337, metadata !238), !dbg !338
  call void @llvm.dbg.declare(metadata i8** %4, metadata !339, metadata !238), !dbg !340
  call void @llvm.dbg.declare(metadata i8** %5, metadata !341, metadata !238), !dbg !342
  call void @llvm.dbg.declare(metadata i8** %6, metadata !343, metadata !238), !dbg !344
  call void @llvm.dbg.declare(metadata i8** %7, metadata !345, metadata !238), !dbg !346
  %8 = load i8*, i8** %2, align 8, !dbg !347
  %9 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %8, i8** %7, i32 270339, i8** %3, i8** %4, i8** %5), !dbg !349
  %10 = icmp ne i32 %9, 0, !dbg !349
  br i1 %10, label %12, label %11, !dbg !350

; <label>:11:                                     ; preds = %1
  br label %128, !dbg !351

; <label>:12:                                     ; preds = %1
  store i8* null, i8** %6, align 8, !dbg !352
  %13 = load i8*, i8** %3, align 8, !dbg !353
  %14 = load i8, i8* %13, align 1, !dbg !355
  %15 = sext i8 %14 to i32, !dbg !355
  %16 = icmp eq i32 %15, 0, !dbg !356
  br i1 %16, label %17, label %19, !dbg !357

; <label>:17:                                     ; preds = %12
  %18 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0)), !dbg !358
  store i8* %18, i8** %6, align 8, !dbg !360
  br label %118, !dbg !361

; <label>:19:                                     ; preds = %12
  %20 = load i8*, i8** %4, align 8, !dbg !362
  %21 = call i32 @g_ascii_strcasecmp(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0)), !dbg !365
  %22 = icmp eq i32 %21, 0, !dbg !366
  br i1 %22, label %23, label %27, !dbg !365

; <label>:23:                                     ; preds = %19
  %24 = load i8*, i8** %3, align 8, !dbg !367
  %25 = load i8*, i8** %5, align 8, !dbg !369
  %26 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i32 0, i32 0), i8* %24, i8* %25), !dbg !370
  store i8* %26, i8** %6, align 8, !dbg !371
  br label %117, !dbg !372

; <label>:27:                                     ; preds = %19
  %28 = load i8*, i8** %4, align 8, !dbg !373
  %29 = call i32 @g_ascii_strcasecmp(i8* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0)), !dbg !376
  %30 = icmp eq i32 %29, 0, !dbg !377
  br i1 %30, label %31, label %35, !dbg !376

; <label>:31:                                     ; preds = %27
  %32 = load i8*, i8** %3, align 8, !dbg !378
  %33 = load i8*, i8** %5, align 8, !dbg !380
  %34 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.37, i32 0, i32 0), i8* %32, i8* %33), !dbg !381
  store i8* %34, i8** %6, align 8, !dbg !382
  br label %116, !dbg !383

; <label>:35:                                     ; preds = %27
  %36 = load i8*, i8** %4, align 8, !dbg !384
  %37 = call i32 @g_ascii_strcasecmp(i8* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0)), !dbg !387
  %38 = icmp eq i32 %37, 0, !dbg !388
  br i1 %38, label %39, label %42, !dbg !387

; <label>:39:                                     ; preds = %35
  %40 = load i8*, i8** %3, align 8, !dbg !389
  %41 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), i8* %40), !dbg !391
  store i8* %41, i8** %6, align 8, !dbg !392
  br label %115, !dbg !393

; <label>:42:                                     ; preds = %35
  %43 = load i8*, i8** %4, align 8, !dbg !394
  %44 = call i32 @g_ascii_strcasecmp(i8* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0)), !dbg !397
  %45 = icmp eq i32 %44, 0, !dbg !398
  br i1 %45, label %46, label %50, !dbg !397

; <label>:46:                                     ; preds = %42
  %47 = load i8*, i8** %5, align 8, !dbg !399
  %48 = load i8*, i8** %3, align 8, !dbg !401
  %49 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i32 0, i32 0), i8* %47, i8* %48), !dbg !402
  store i8* %49, i8** %6, align 8, !dbg !403
  br label %114, !dbg !404

; <label>:50:                                     ; preds = %42
  %51 = load i8*, i8** %4, align 8, !dbg !405
  %52 = call i32 @g_ascii_strcasecmp(i8* %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0)), !dbg !408
  %53 = icmp eq i32 %52, 0, !dbg !409
  br i1 %53, label %54, label %58, !dbg !408

; <label>:54:                                     ; preds = %50
  %55 = load i8*, i8** %5, align 8, !dbg !410
  %56 = load i8*, i8** %3, align 8, !dbg !412
  %57 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.41, i32 0, i32 0), i8* %55, i8* %56), !dbg !413
  store i8* %57, i8** %6, align 8, !dbg !414
  br label %113, !dbg !415

; <label>:58:                                     ; preds = %50
  %59 = load i8*, i8** %4, align 8, !dbg !416
  %60 = call i32 @g_ascii_strcasecmp(i8* %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0)), !dbg !419
  %61 = icmp eq i32 %60, 0, !dbg !420
  br i1 %61, label %62, label %66, !dbg !419

; <label>:62:                                     ; preds = %58
  %63 = load i8*, i8** %5, align 8, !dbg !421
  %64 = load i8*, i8** %3, align 8, !dbg !423
  %65 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.42, i32 0, i32 0), i8* %63, i8* %64), !dbg !424
  store i8* %65, i8** %6, align 8, !dbg !425
  br label %112, !dbg !426

; <label>:66:                                     ; preds = %58
  %67 = load i8*, i8** %4, align 8, !dbg !427
  %68 = call i32 @g_ascii_strcasecmp(i8* %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0)), !dbg !430
  %69 = icmp eq i32 %68, 0, !dbg !431
  br i1 %69, label %70, label %74, !dbg !430

; <label>:70:                                     ; preds = %66
  %71 = load i8*, i8** %5, align 8, !dbg !432
  %72 = load i8*, i8** %3, align 8, !dbg !434
  %73 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.43, i32 0, i32 0), i8* %71, i8* %72), !dbg !435
  store i8* %73, i8** %6, align 8, !dbg !436
  br label %111, !dbg !437

; <label>:74:                                     ; preds = %66
  %75 = load i8*, i8** %4, align 8, !dbg !438
  %76 = call i32 @g_ascii_strcasecmp(i8* %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i32 0, i32 0)), !dbg !441
  %77 = icmp eq i32 %76, 0, !dbg !442
  br i1 %77, label %78, label %82, !dbg !441

; <label>:78:                                     ; preds = %74
  %79 = load i8*, i8** %5, align 8, !dbg !443
  %80 = load i8*, i8** %3, align 8, !dbg !445
  %81 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.45, i32 0, i32 0), i8* %79, i8* %80), !dbg !446
  store i8* %81, i8** %6, align 8, !dbg !447
  br label %110, !dbg !448

; <label>:82:                                     ; preds = %74
  %83 = load i8*, i8** %4, align 8, !dbg !449
  %84 = call i32 @g_ascii_strcasecmp(i8* %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0)), !dbg !452
  %85 = icmp eq i32 %84, 0, !dbg !453
  br i1 %85, label %86, label %90, !dbg !452

; <label>:86:                                     ; preds = %82
  %87 = load i8*, i8** %5, align 8, !dbg !454
  %88 = load i8*, i8** %3, align 8, !dbg !456
  %89 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.47, i32 0, i32 0), i8* %87, i8* %88), !dbg !457
  store i8* %89, i8** %6, align 8, !dbg !458
  br label %109, !dbg !459

; <label>:90:                                     ; preds = %82
  %91 = load i8*, i8** %4, align 8, !dbg !460
  %92 = load i8, i8* %91, align 1, !dbg !463
  %93 = sext i8 %92 to i32, !dbg !463
  %94 = icmp eq i32 %93, 0, !dbg !464
  br i1 %94, label %95, label %108, !dbg !463

; <label>:95:                                     ; preds = %90
  %96 = load i8*, i8** %3, align 8, !dbg !465
  %97 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i32 0, i32 0), i8* %96), !dbg !467
  store i8* %97, i8** %6, align 8, !dbg !468
  %98 = load i8*, i8** %6, align 8, !dbg !469
  %99 = call %struct.COMMAND_REC* @command_find(i8* %98), !dbg !471
  %100 = icmp eq %struct.COMMAND_REC* %99, null, !dbg !472
  br i1 %100, label %101, label %105, !dbg !473

; <label>:101:                                    ; preds = %95
  %102 = load i8*, i8** %6, align 8, !dbg !474
  call void @g_free(i8* %102), !dbg !476
  %103 = load i8*, i8** %3, align 8, !dbg !477
  %104 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i32 0, i32 0), i8* %103), !dbg !478
  store i8* %104, i8** %6, align 8, !dbg !479
  br label %107, !dbg !480

; <label>:105:                                    ; preds = %95
  %106 = load i8*, i8** %6, align 8, !dbg !481
  call void @g_free(i8* %106), !dbg !483
  store i8* null, i8** %6, align 8, !dbg !484
  br label %107

; <label>:107:                                    ; preds = %105, %101
  br label %108, !dbg !485

; <label>:108:                                    ; preds = %107, %90
  br label %109

; <label>:109:                                    ; preds = %108, %86
  br label %110

; <label>:110:                                    ; preds = %109, %78
  br label %111

; <label>:111:                                    ; preds = %110, %70
  br label %112

; <label>:112:                                    ; preds = %111, %62
  br label %113

; <label>:113:                                    ; preds = %112, %54
  br label %114

; <label>:114:                                    ; preds = %113, %46
  br label %115

; <label>:115:                                    ; preds = %114, %39
  br label %116

; <label>:116:                                    ; preds = %115, %31
  br label %117

; <label>:117:                                    ; preds = %116, %23
  br label %118

; <label>:118:                                    ; preds = %117, %17
  %119 = load i8*, i8** %7, align 8, !dbg !486
  call void @cmd_params_free(i8* %119), !dbg !487
  %120 = load i8*, i8** %6, align 8, !dbg !488
  %121 = icmp ne i8* %120, null, !dbg !488
  br i1 %121, label %122, label %125, !dbg !490

; <label>:122:                                    ; preds = %118
  %123 = load i8*, i8** %6, align 8, !dbg !491
  call void @command_runsub(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* %123, i8* null, i8* null), !dbg !493
  %124 = load i8*, i8** %6, align 8, !dbg !494
  call void @g_free(i8* %124), !dbg !495
  br label %127, !dbg !496

; <label>:125:                                    ; preds = %118
  %126 = load i8*, i8** %2, align 8, !dbg !497
  call void @command_runsub(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* %126, i8* null, i8* null), !dbg !499
  br label %127

; <label>:127:                                    ; preds = %125, %122
  br label %128, !dbg !500

; <label>:128:                                    ; preds = %127, %11
  ret void, !dbg !501
}

; Function Attrs: nounwind uwtable
define internal void @cmd_statusbar_list() #0 !dbg !502 {
  %1 = alloca %struct._GSList*, align 8
  %2 = alloca %struct.STATUSBAR_CONFIG_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %1, metadata !503, metadata !238), !dbg !504
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 23), !dbg !505
  %3 = load %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_GROUP_REC** @active_statusbar_group, align 8, !dbg !506
  %4 = getelementptr inbounds %struct.STATUSBAR_GROUP_REC, %struct.STATUSBAR_GROUP_REC* %3, i32 0, i32 1, !dbg !507
  %5 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !507
  store %struct._GSList* %5, %struct._GSList** %1, align 8, !dbg !508
  br label %6, !dbg !509

; <label>:6:                                      ; preds = %26, %0
  %7 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !510
  %8 = icmp ne %struct._GSList* %7, null, !dbg !514
  br i1 %8, label %9, label %30, !dbg !515

; <label>:9:                                      ; preds = %6
  call void @llvm.dbg.declare(metadata %struct.STATUSBAR_CONFIG_REC** %2, metadata !516, metadata !238), !dbg !518
  %10 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !519
  %11 = getelementptr inbounds %struct._GSList, %struct._GSList* %10, i32 0, i32 0, !dbg !520
  %12 = load i8*, i8** %11, align 8, !dbg !520
  %13 = bitcast i8* %12 to %struct.STATUSBAR_CONFIG_REC*, !dbg !519
  store %struct.STATUSBAR_CONFIG_REC* %13, %struct.STATUSBAR_CONFIG_REC** %2, align 8, !dbg !518
  %14 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %2, align 8, !dbg !521
  %15 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %14, i32 0, i32 0, !dbg !522
  %16 = load i8*, i8** %15, align 8, !dbg !522
  %17 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %2, align 8, !dbg !523
  %18 = call i8* @sbar_get_type(%struct.STATUSBAR_CONFIG_REC* %17), !dbg !524
  %19 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %2, align 8, !dbg !525
  %20 = call i8* @sbar_get_placement(%struct.STATUSBAR_CONFIG_REC* %19), !dbg !526
  %21 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %2, align 8, !dbg !528
  %22 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %21, i32 0, i32 3, !dbg !529
  %23 = load i32, i32* %22, align 8, !dbg !529
  %24 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %2, align 8, !dbg !530
  %25 = call i8* @sbar_get_visibility(%struct.STATUSBAR_CONFIG_REC* %24), !dbg !531
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 25, i8* %16, i8* %18, i8* %20, i32 %23, i8* %25), !dbg !533
  br label %26, !dbg !535

; <label>:26:                                     ; preds = %9
  %27 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !536
  %28 = getelementptr inbounds %struct._GSList, %struct._GSList* %27, i32 0, i32 1, !dbg !538
  %29 = load %struct._GSList*, %struct._GSList** %28, align 8, !dbg !538
  store %struct._GSList* %29, %struct._GSList** %1, align 8, !dbg !539
  br label %6, !dbg !540, !llvm.loop !541

; <label>:30:                                     ; preds = %6
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 24), !dbg !542
  ret void, !dbg !543
}

; Function Attrs: nounwind uwtable
define internal void @cmd_statusbar_add_modify(i8*, i8*, i8*) #0 !dbg !544 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._GHashTable*, align 8
  %8 = alloca %struct._CONFIG_NODE*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !547, metadata !238), !dbg !548
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !549, metadata !238), !dbg !550
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !551, metadata !238), !dbg !552
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %7, metadata !553, metadata !238), !dbg !558
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %8, metadata !559, metadata !238), !dbg !560
  call void @llvm.dbg.declare(metadata i8** %9, metadata !561, metadata !238), !dbg !562
  call void @llvm.dbg.declare(metadata i8** %10, metadata !563, metadata !238), !dbg !564
  call void @llvm.dbg.declare(metadata i8** %11, metadata !565, metadata !238), !dbg !566
  call void @llvm.dbg.declare(metadata i8** %12, metadata !567, metadata !238), !dbg !568
  call void @llvm.dbg.declare(metadata i8** %13, metadata !569, metadata !238), !dbg !570
  call void @llvm.dbg.declare(metadata i32* %14, metadata !571, metadata !238), !dbg !572
  call void @llvm.dbg.declare(metadata i32* %15, metadata !573, metadata !238), !dbg !574
  %16 = load i8*, i8** @signal_user_data, align 8, !dbg !575
  %17 = ptrtoint i8* %16 to i64, !dbg !576
  %18 = trunc i64 %17 to i32, !dbg !577
  store i32 %18, i32* %15, align 4, !dbg !574
  %19 = load i8*, i8** %4, align 8, !dbg !578
  %20 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %19, i8** %13, i32 278529, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), %struct._GHashTable** %7, i8** %9), !dbg !580
  %21 = icmp ne i32 %20, 0, !dbg !580
  br i1 %21, label %23, label %22, !dbg !581

; <label>:22:                                     ; preds = %3
  br label %183, !dbg !582

; <label>:23:                                     ; preds = %3
  %24 = load i8*, i8** %9, align 8, !dbg !583
  %25 = load i8, i8* %24, align 1, !dbg !585
  %26 = sext i8 %25 to i32, !dbg !585
  %27 = icmp eq i32 %26, 0, !dbg !586
  br i1 %27, label %28, label %35, !dbg !587

; <label>:28:                                     ; preds = %23
  br label %29, !dbg !588, !llvm.loop !590

; <label>:29:                                     ; preds = %28
  %30 = load i8*, i8** %13, align 8, !dbg !591
  call void @cmd_params_free(i8* %30), !dbg !594
  br label %31, !dbg !595, !llvm.loop !596

; <label>:31:                                     ; preds = %29
  %32 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !598
  call void @signal_stop(), !dbg !601
  br label %183, !dbg !603
                                                  ; No predecessors!
  br label %34, !dbg !604

; <label>:34:                                     ; preds = %33
  br label %35, !dbg !606

; <label>:35:                                     ; preds = %34, %23
  store i32 0, i32* %14, align 4, !dbg !607
  store i8* null, i8** %10, align 8, !dbg !608
  %36 = load %struct._GHashTable*, %struct._GHashTable** %7, align 8, !dbg !609
  %37 = call i8* @g_hash_table_lookup(%struct._GHashTable* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0)), !dbg !610
  store i8* %37, i8** %4, align 8, !dbg !611
  %38 = load i8*, i8** %4, align 8, !dbg !612
  %39 = icmp ne i8* %38, null, !dbg !614
  br i1 %39, label %40, label %56, !dbg !615

; <label>:40:                                     ; preds = %35
  %41 = load i8*, i8** %4, align 8, !dbg !616
  %42 = call i32 @g_ascii_strcasecmp(i8* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0)), !dbg !619
  %43 = icmp eq i32 %42, 0, !dbg !620
  br i1 %43, label %44, label %45, !dbg !621

; <label>:44:                                     ; preds = %40
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i8** %10, align 8, !dbg !622
  br label %55, !dbg !623

; <label>:45:                                     ; preds = %40
  %46 = load i8*, i8** %4, align 8, !dbg !624
  %47 = call i32 @g_ascii_strcasecmp(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0)), !dbg !626
  %48 = icmp eq i32 %47, 0, !dbg !627
  br i1 %48, label %49, label %50, !dbg !628

; <label>:49:                                     ; preds = %45
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), i8** %10, align 8, !dbg !629
  br label %54, !dbg !630

; <label>:50:                                     ; preds = %45
  %51 = load i8*, i8** %4, align 8, !dbg !631
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 1048576, i32 38, i8* %51), !dbg !633
  %52 = load i32, i32* %14, align 4, !dbg !634
  %53 = add nsw i32 %52, 1, !dbg !634
  store i32 %53, i32* %14, align 4, !dbg !634
  br label %54

; <label>:54:                                     ; preds = %50, %49
  br label %55

; <label>:55:                                     ; preds = %54, %44
  br label %56, !dbg !635

; <label>:56:                                     ; preds = %55, %35
  store i8* null, i8** %11, align 8, !dbg !636
  %57 = load %struct._GHashTable*, %struct._GHashTable** %7, align 8, !dbg !637
  %58 = call i8* @g_hash_table_lookup(%struct._GHashTable* %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0)), !dbg !638
  store i8* %58, i8** %4, align 8, !dbg !639
  %59 = load i8*, i8** %4, align 8, !dbg !640
  %60 = icmp ne i8* %59, null, !dbg !642
  br i1 %60, label %61, label %77, !dbg !643

; <label>:61:                                     ; preds = %56
  %62 = load i8*, i8** %4, align 8, !dbg !644
  %63 = call i32 @g_ascii_strcasecmp(i8* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0)), !dbg !647
  %64 = icmp eq i32 %63, 0, !dbg !648
  br i1 %64, label %65, label %66, !dbg !649

; <label>:65:                                     ; preds = %61
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i8** %11, align 8, !dbg !650
  br label %76, !dbg !651

; <label>:66:                                     ; preds = %61
  %67 = load i8*, i8** %4, align 8, !dbg !652
  %68 = call i32 @g_ascii_strcasecmp(i8* %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0)), !dbg !654
  %69 = icmp eq i32 %68, 0, !dbg !655
  br i1 %69, label %70, label %71, !dbg !656

; <label>:70:                                     ; preds = %66
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i8** %11, align 8, !dbg !657
  br label %75, !dbg !658

; <label>:71:                                     ; preds = %66
  %72 = load i8*, i8** %4, align 8, !dbg !659
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 1048576, i32 39, i8* %72), !dbg !661
  %73 = load i32, i32* %14, align 4, !dbg !662
  %74 = add nsw i32 %73, 1, !dbg !662
  store i32 %74, i32* %14, align 4, !dbg !662
  br label %75

; <label>:75:                                     ; preds = %71, %70
  br label %76

; <label>:76:                                     ; preds = %75, %65
  br label %77, !dbg !663

; <label>:77:                                     ; preds = %76, %56
  store i8* null, i8** %12, align 8, !dbg !664
  %78 = load %struct._GHashTable*, %struct._GHashTable** %7, align 8, !dbg !665
  %79 = call i8* @g_hash_table_lookup(%struct._GHashTable* %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0)), !dbg !666
  store i8* %79, i8** %4, align 8, !dbg !667
  %80 = load i8*, i8** %4, align 8, !dbg !668
  %81 = icmp ne i8* %80, null, !dbg !670
  br i1 %81, label %82, label %104, !dbg !671

; <label>:82:                                     ; preds = %77
  %83 = load i8*, i8** %4, align 8, !dbg !672
  %84 = call i32 @g_ascii_strcasecmp(i8* %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0)), !dbg !675
  %85 = icmp eq i32 %84, 0, !dbg !676
  br i1 %85, label %86, label %87, !dbg !677

; <label>:86:                                     ; preds = %82
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i8** %12, align 8, !dbg !678
  br label %103, !dbg !679

; <label>:87:                                     ; preds = %82
  %88 = load i8*, i8** %4, align 8, !dbg !680
  %89 = call i32 @g_ascii_strcasecmp(i8* %88, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0)), !dbg !682
  %90 = icmp eq i32 %89, 0, !dbg !683
  br i1 %90, label %91, label %92, !dbg !684

; <label>:91:                                     ; preds = %87
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i8** %12, align 8, !dbg !685
  br label %102, !dbg !686

; <label>:92:                                     ; preds = %87
  %93 = load i8*, i8** %4, align 8, !dbg !687
  %94 = call i32 @g_ascii_strcasecmp(i8* %93, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0)), !dbg !689
  %95 = icmp eq i32 %94, 0, !dbg !690
  br i1 %95, label %96, label %97, !dbg !691

; <label>:96:                                     ; preds = %92
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i8** %12, align 8, !dbg !692
  br label %101, !dbg !693

; <label>:97:                                     ; preds = %92
  %98 = load i8*, i8** %4, align 8, !dbg !694
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 1048576, i32 40, i8* %98), !dbg !696
  %99 = load i32, i32* %14, align 4, !dbg !697
  %100 = add nsw i32 %99, 1, !dbg !697
  store i32 %100, i32* %14, align 4, !dbg !697
  br label %101

; <label>:101:                                    ; preds = %97, %96
  br label %102

; <label>:102:                                    ; preds = %101, %91
  br label %103

; <label>:103:                                    ; preds = %102, %86
  br label %104, !dbg !698

; <label>:104:                                    ; preds = %103, %77
  %105 = load i32, i32* %14, align 4, !dbg !699
  %106 = icmp ne i32 %105, 0, !dbg !699
  br i1 %106, label %131, label %107, !dbg !701

; <label>:107:                                    ; preds = %104
  %108 = load i8*, i8** %9, align 8, !dbg !702
  %109 = load i32, i32* %15, align 4, !dbg !704
  %110 = call %struct._CONFIG_NODE* @sbar_node(i8* %108, i32 %109), !dbg !705
  store %struct._CONFIG_NODE* %110, %struct._CONFIG_NODE** %8, align 8, !dbg !706
  %111 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !707
  %112 = icmp eq %struct._CONFIG_NODE* %111, null, !dbg !709
  br i1 %112, label %113, label %123, !dbg !710

; <label>:113:                                    ; preds = %107
  %114 = load i32, i32* %15, align 4, !dbg !711
  %115 = icmp ne i32 %114, 0, !dbg !711
  br i1 %115, label %123, label %116, !dbg !713

; <label>:116:                                    ; preds = %113
  %117 = load i8*, i8** %9, align 8, !dbg !714
  %118 = call i32 @sbar_node_isdefault(i8* %117), !dbg !716
  %119 = icmp ne i32 %118, 0, !dbg !716
  br i1 %119, label %120, label %123, !dbg !717

; <label>:120:                                    ; preds = %116
  %121 = load i8*, i8** %9, align 8, !dbg !718
  %122 = call %struct._CONFIG_NODE* @sbar_node(i8* %121, i32 1), !dbg !720
  store %struct._CONFIG_NODE* %122, %struct._CONFIG_NODE** %8, align 8, !dbg !721
  br label %123, !dbg !722

; <label>:123:                                    ; preds = %120, %116, %113, %107
  %124 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !723
  %125 = icmp eq %struct._CONFIG_NODE* %124, null, !dbg !725
  br i1 %125, label %126, label %130, !dbg !726

; <label>:126:                                    ; preds = %123
  %127 = load i8*, i8** %9, align 8, !dbg !727
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 1048576, i32 34, i8* %127), !dbg !729
  %128 = load i32, i32* %14, align 4, !dbg !730
  %129 = add nsw i32 %128, 1, !dbg !730
  store i32 %129, i32* %14, align 4, !dbg !730
  br label %130, !dbg !731

; <label>:130:                                    ; preds = %126, %123
  br label %131, !dbg !732

; <label>:131:                                    ; preds = %130, %104
  %132 = load i32, i32* %14, align 4, !dbg !733
  %133 = icmp ne i32 %132, 0, !dbg !733
  br i1 %133, label %134, label %136, !dbg !735

; <label>:134:                                    ; preds = %131
  %135 = load i8*, i8** %13, align 8, !dbg !736
  call void @cmd_params_free(i8* %135), !dbg !738
  br label %183, !dbg !739

; <label>:136:                                    ; preds = %131
  %137 = load %struct._GHashTable*, %struct._GHashTable** %7, align 8, !dbg !740
  %138 = call i8* @g_hash_table_lookup(%struct._GHashTable* %137, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i32 0, i32 0)), !dbg !742
  %139 = icmp ne i8* %138, null, !dbg !742
  br i1 %139, label %140, label %143, !dbg !743

; <label>:140:                                    ; preds = %136
  %141 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !744
  %142 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !745
  call void @config_node_set_str(%struct._CONFIG_REC* %141, %struct._CONFIG_NODE* %142, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i8* null), !dbg !746
  br label %143, !dbg !746

; <label>:143:                                    ; preds = %140, %136
  %144 = load %struct._GHashTable*, %struct._GHashTable** %7, align 8, !dbg !747
  %145 = call i8* @g_hash_table_lookup(%struct._GHashTable* %144, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0)), !dbg !749
  %146 = icmp ne i8* %145, null, !dbg !749
  br i1 %146, label %147, label %150, !dbg !750

; <label>:147:                                    ; preds = %143
  %148 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !751
  %149 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !752
  call void @config_node_set_bool(%struct._CONFIG_REC* %148, %struct._CONFIG_NODE* %149, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 1), !dbg !753
  br label %150, !dbg !753

; <label>:150:                                    ; preds = %147, %143
  %151 = load i8*, i8** %10, align 8, !dbg !754
  %152 = icmp ne i8* %151, null, !dbg !756
  br i1 %152, label %153, label %157, !dbg !757

; <label>:153:                                    ; preds = %150
  %154 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !758
  %155 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !759
  %156 = load i8*, i8** %10, align 8, !dbg !760
  call void @config_node_set_str(%struct._CONFIG_REC* %154, %struct._CONFIG_NODE* %155, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i8* %156), !dbg !761
  br label %157, !dbg !761

; <label>:157:                                    ; preds = %153, %150
  %158 = load i8*, i8** %11, align 8, !dbg !762
  %159 = icmp ne i8* %158, null, !dbg !764
  br i1 %159, label %160, label %164, !dbg !765

; <label>:160:                                    ; preds = %157
  %161 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !766
  %162 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !767
  %163 = load i8*, i8** %11, align 8, !dbg !768
  call void @config_node_set_str(%struct._CONFIG_REC* %161, %struct._CONFIG_NODE* %162, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* %163), !dbg !769
  br label %164, !dbg !769

; <label>:164:                                    ; preds = %160, %157
  %165 = load %struct._GHashTable*, %struct._GHashTable** %7, align 8, !dbg !770
  %166 = call i8* @g_hash_table_lookup(%struct._GHashTable* %165, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0)), !dbg !771
  store i8* %166, i8** %4, align 8, !dbg !772
  %167 = load i8*, i8** %4, align 8, !dbg !773
  %168 = icmp ne i8* %167, null, !dbg !775
  br i1 %168, label %169, label %174, !dbg !776

; <label>:169:                                    ; preds = %164
  %170 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !777
  %171 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !778
  %172 = load i8*, i8** %4, align 8, !dbg !779
  %173 = call i32 @atoi(i8* %172) #4, !dbg !780
  call void @config_node_set_int(%struct._CONFIG_REC* %170, %struct._CONFIG_NODE* %171, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i32 %173), !dbg !781
  br label %174, !dbg !783

; <label>:174:                                    ; preds = %169, %164
  %175 = load i8*, i8** %12, align 8, !dbg !784
  %176 = icmp ne i8* %175, null, !dbg !786
  br i1 %176, label %177, label %181, !dbg !787

; <label>:177:                                    ; preds = %174
  %178 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !788
  %179 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !789
  %180 = load i8*, i8** %12, align 8, !dbg !790
  call void @config_node_set_str(%struct._CONFIG_REC* %178, %struct._CONFIG_NODE* %179, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* %180), !dbg !791
  br label %181, !dbg !791

; <label>:181:                                    ; preds = %177, %174
  call void @read_statusbar_config(), !dbg !792
  %182 = load i8*, i8** %13, align 8, !dbg !793
  call void @cmd_params_free(i8* %182), !dbg !794
  br label %183, !dbg !795

; <label>:183:                                    ; preds = %181, %134, %31, %22
  ret void, !dbg !796
}

; Function Attrs: nounwind uwtable
define internal void @cmd_statusbar_reset(i8*, i8*, i8*) #0 !dbg !798 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._CONFIG_NODE*, align 8
  %8 = alloca %struct._CONFIG_NODE*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !799, metadata !238), !dbg !800
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !801, metadata !238), !dbg !802
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !803, metadata !238), !dbg !804
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %7, metadata !805, metadata !238), !dbg !806
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %8, metadata !807, metadata !238), !dbg !808
  call void @llvm.dbg.declare(metadata i8** %9, metadata !809, metadata !238), !dbg !810
  call void @llvm.dbg.declare(metadata i8** %10, metadata !811, metadata !238), !dbg !812
  %11 = load i8*, i8** %4, align 8, !dbg !813
  %12 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %11, i8** %10, i32 262145, i8** %9), !dbg !815
  %13 = icmp ne i32 %12, 0, !dbg !815
  br i1 %13, label %15, label %14, !dbg !816

; <label>:14:                                     ; preds = %3
  br label %65, !dbg !817

; <label>:15:                                     ; preds = %3
  %16 = load i8*, i8** %9, align 8, !dbg !818
  %17 = load i8, i8* %16, align 1, !dbg !820
  %18 = sext i8 %17 to i32, !dbg !820
  %19 = icmp eq i32 %18, 0, !dbg !821
  br i1 %19, label %20, label %27, !dbg !822

; <label>:20:                                     ; preds = %15
  br label %21, !dbg !823, !llvm.loop !825

; <label>:21:                                     ; preds = %20
  %22 = load i8*, i8** %10, align 8, !dbg !826
  call void @cmd_params_free(i8* %22), !dbg !829
  br label %23, !dbg !830, !llvm.loop !831

; <label>:23:                                     ; preds = %21
  %24 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !833
  call void @signal_stop(), !dbg !836
  br label %65, !dbg !838
                                                  ; No predecessors!
  br label %26, !dbg !839

; <label>:26:                                     ; preds = %25
  br label %27, !dbg !841

; <label>:27:                                     ; preds = %26, %15
  %28 = load i8*, i8** %9, align 8, !dbg !842
  %29 = call %struct._CONFIG_NODE* @sbar_node(i8* %28, i32 0), !dbg !843
  store %struct._CONFIG_NODE* %29, %struct._CONFIG_NODE** %7, align 8, !dbg !844
  %30 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !845
  %31 = icmp eq %struct._CONFIG_NODE* %30, null, !dbg !847
  br i1 %31, label %32, label %39, !dbg !848

; <label>:32:                                     ; preds = %27
  %33 = load i8*, i8** %9, align 8, !dbg !849
  %34 = call i32 @sbar_node_isdefault(i8* %33), !dbg !851
  %35 = icmp ne i32 %34, 0, !dbg !851
  br i1 %35, label %39, label %36, !dbg !852

; <label>:36:                                     ; preds = %32
  %37 = load i8*, i8** %9, align 8, !dbg !853
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 1048576, i32 34, i8* %37), !dbg !855
  %38 = load i8*, i8** %10, align 8, !dbg !856
  call void @cmd_params_free(i8* %38), !dbg !857
  br label %65, !dbg !858

; <label>:39:                                     ; preds = %32, %27
  %40 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !859
  %41 = call %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 0), !dbg !860
  store %struct._CONFIG_NODE* %41, %struct._CONFIG_NODE** %8, align 8, !dbg !861
  %42 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !862
  %43 = icmp ne %struct._CONFIG_NODE* %42, null, !dbg !864
  br i1 %43, label %44, label %51, !dbg !865

; <label>:44:                                     ; preds = %39
  %45 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !866
  %46 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !868
  %47 = load %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_GROUP_REC** @active_statusbar_group, align 8, !dbg !869
  %48 = getelementptr inbounds %struct.STATUSBAR_GROUP_REC, %struct.STATUSBAR_GROUP_REC* %47, i32 0, i32 0, !dbg !870
  %49 = load i8*, i8** %48, align 8, !dbg !870
  %50 = call %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC* %45, %struct._CONFIG_NODE* %46, i8* %49, i32 -1), !dbg !871
  store %struct._CONFIG_NODE* %50, %struct._CONFIG_NODE** %8, align 8, !dbg !872
  br label %51, !dbg !873

; <label>:51:                                     ; preds = %44, %39
  %52 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !874
  %53 = icmp ne %struct._CONFIG_NODE* %52, null, !dbg !876
  br i1 %53, label %54, label %63, !dbg !877

; <label>:54:                                     ; preds = %51
  %55 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !878
  %56 = icmp ne %struct._CONFIG_NODE* %55, null, !dbg !880
  br i1 %56, label %57, label %63, !dbg !881

; <label>:57:                                     ; preds = %54
  %58 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !882
  %59 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !884
  %60 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !885
  %61 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %60, i32 0, i32 1, !dbg !886
  %62 = load i8*, i8** %61, align 8, !dbg !886
  call void @config_node_set_str(%struct._CONFIG_REC* %58, %struct._CONFIG_NODE* %59, i8* %62, i8* null), !dbg !887
  br label %63, !dbg !888

; <label>:63:                                     ; preds = %57, %54, %51
  call void @read_statusbar_config(), !dbg !889
  %64 = load i8*, i8** %10, align 8, !dbg !890
  call void @cmd_params_free(i8* %64), !dbg !891
  br label %65, !dbg !892

; <label>:65:                                     ; preds = %63, %36, %23, %14
  ret void, !dbg !893
}

; Function Attrs: nounwind uwtable
define internal void @cmd_statusbar_info(i8*) #0 !dbg !895 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !896, metadata !238), !dbg !897
  call void @llvm.dbg.declare(metadata i8** %3, metadata !898, metadata !238), !dbg !899
  call void @llvm.dbg.declare(metadata i8** %4, metadata !900, metadata !238), !dbg !901
  %5 = load i8*, i8** %2, align 8, !dbg !902
  %6 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %5, i8** %3, i32 262145, i8** %4), !dbg !904
  %7 = icmp ne i32 %6, 0, !dbg !904
  br i1 %7, label %9, label %8, !dbg !905

; <label>:8:                                      ; preds = %1
  br label %24, !dbg !906

; <label>:9:                                      ; preds = %1
  %10 = load i8*, i8** %4, align 8, !dbg !907
  %11 = load i8, i8* %10, align 1, !dbg !909
  %12 = sext i8 %11 to i32, !dbg !909
  %13 = icmp eq i32 %12, 0, !dbg !910
  br i1 %13, label %14, label %21, !dbg !911

; <label>:14:                                     ; preds = %9
  br label %15, !dbg !912, !llvm.loop !914

; <label>:15:                                     ; preds = %14
  %16 = load i8*, i8** %3, align 8, !dbg !915
  call void @cmd_params_free(i8* %16), !dbg !918
  br label %17, !dbg !919, !llvm.loop !920

; <label>:17:                                     ; preds = %15
  %18 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !922
  call void @signal_stop(), !dbg !925
  br label %24, !dbg !927
                                                  ; No predecessors!
  br label %20, !dbg !928

; <label>:20:                                     ; preds = %19
  br label %21, !dbg !930

; <label>:21:                                     ; preds = %20, %9
  %22 = load i8*, i8** %4, align 8, !dbg !931
  call void @cmd_statusbar_print_info(i8* %22), !dbg !932
  %23 = load i8*, i8** %3, align 8, !dbg !933
  call void @cmd_params_free(i8* %23), !dbg !934
  br label %24, !dbg !935

; <label>:24:                                     ; preds = %21, %17, %8
  ret void, !dbg !936
}

; Function Attrs: nounwind uwtable
define internal void @cmd_statusbar_additem_modifyitem(i8*, i8*, i8*) #0 !dbg !937 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._CONFIG_NODE*, align 8
  %8 = alloca %struct._GHashTable*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !938, metadata !238), !dbg !939
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !940, metadata !238), !dbg !941
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !942, metadata !238), !dbg !943
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %7, metadata !944, metadata !238), !dbg !945
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %8, metadata !946, metadata !238), !dbg !947
  call void @llvm.dbg.declare(metadata i8** %9, metadata !948, metadata !238), !dbg !949
  call void @llvm.dbg.declare(metadata i8** %10, metadata !950, metadata !238), !dbg !951
  call void @llvm.dbg.declare(metadata i8** %11, metadata !952, metadata !238), !dbg !953
  call void @llvm.dbg.declare(metadata i8** %12, metadata !954, metadata !238), !dbg !955
  call void @llvm.dbg.declare(metadata i32* %13, metadata !956, metadata !238), !dbg !957
  call void @llvm.dbg.declare(metadata i32* %14, metadata !958, metadata !238), !dbg !959
  %15 = load i8*, i8** @signal_user_data, align 8, !dbg !960
  %16 = ptrtoint i8* %15 to i64, !dbg !961
  %17 = trunc i64 %16 to i32, !dbg !962
  store i32 %17, i32* %14, align 4, !dbg !959
  %18 = load i8*, i8** %4, align 8, !dbg !963
  %19 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %18, i8** %12, i32 278530, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), %struct._GHashTable** %8, i8** %9, i8** %10), !dbg !965
  %20 = icmp ne i32 %19, 0, !dbg !965
  br i1 %20, label %22, label %21, !dbg !966

; <label>:21:                                     ; preds = %3
  br label %91, !dbg !967

; <label>:22:                                     ; preds = %3
  %23 = load i8*, i8** %10, align 8, !dbg !968
  %24 = load i8, i8* %23, align 1, !dbg !970
  %25 = sext i8 %24 to i32, !dbg !970
  %26 = icmp eq i32 %25, 0, !dbg !971
  br i1 %26, label %27, label %34, !dbg !972

; <label>:27:                                     ; preds = %22
  br label %28, !dbg !973, !llvm.loop !975

; <label>:28:                                     ; preds = %27
  %29 = load i8*, i8** %12, align 8, !dbg !976
  call void @cmd_params_free(i8* %29), !dbg !979
  br label %30, !dbg !980, !llvm.loop !981

; <label>:30:                                     ; preds = %28
  %31 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !983
  call void @signal_stop(), !dbg !986
  br label %91, !dbg !988
                                                  ; No predecessors!
  br label %33, !dbg !989

; <label>:33:                                     ; preds = %32
  br label %34, !dbg !991

; <label>:34:                                     ; preds = %33, %22
  %35 = load i8*, i8** %10, align 8, !dbg !992
  %36 = load i8*, i8** %9, align 8, !dbg !993
  %37 = load i32, i32* %14, align 4, !dbg !994
  %38 = call %struct._CONFIG_NODE* @sbar_find_item_with_defaults(i8* %35, i8* %36, i32 %37), !dbg !995
  store %struct._CONFIG_NODE* %38, %struct._CONFIG_NODE** %7, align 8, !dbg !996
  %39 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !997
  %40 = icmp eq %struct._CONFIG_NODE* %39, null, !dbg !999
  br i1 %40, label %41, label %43, !dbg !1000

; <label>:41:                                     ; preds = %34
  %42 = load i8*, i8** %12, align 8, !dbg !1001
  call void @cmd_params_free(i8* %42), !dbg !1003
  br label %91, !dbg !1004

; <label>:43:                                     ; preds = %34
  store i32 -1, i32* %13, align 4, !dbg !1005
  %44 = load %struct._GHashTable*, %struct._GHashTable** %8, align 8, !dbg !1006
  %45 = call i8* @g_hash_table_lookup(%struct._GHashTable* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0)), !dbg !1007
  store i8* %45, i8** %11, align 8, !dbg !1008
  %46 = load i8*, i8** %11, align 8, !dbg !1009
  %47 = icmp ne i8* %46, null, !dbg !1011
  br i1 %47, label %48, label %52, !dbg !1012

; <label>:48:                                     ; preds = %43
  %49 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !1013
  %50 = load i8*, i8** %11, align 8, !dbg !1014
  %51 = call i32 @config_node_index(%struct._CONFIG_NODE* %49, i8* %50), !dbg !1015
  store i32 %51, i32* %13, align 4, !dbg !1016
  br label %52, !dbg !1017

; <label>:52:                                     ; preds = %48, %43
  %53 = load %struct._GHashTable*, %struct._GHashTable** %8, align 8, !dbg !1018
  %54 = call i8* @g_hash_table_lookup(%struct._GHashTable* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0)), !dbg !1019
  store i8* %54, i8** %11, align 8, !dbg !1020
  %55 = load i8*, i8** %11, align 8, !dbg !1021
  %56 = icmp ne i8* %55, null, !dbg !1023
  br i1 %56, label %57, label %62, !dbg !1024

; <label>:57:                                     ; preds = %52
  %58 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !1025
  %59 = load i8*, i8** %11, align 8, !dbg !1026
  %60 = call i32 @config_node_index(%struct._CONFIG_NODE* %58, i8* %59), !dbg !1027
  %61 = add nsw i32 %60, 1, !dbg !1028
  store i32 %61, i32* %13, align 4, !dbg !1029
  br label %62, !dbg !1030

; <label>:62:                                     ; preds = %57, %52
  %63 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1031
  %64 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !1032
  %65 = load i8*, i8** %9, align 8, !dbg !1033
  %66 = load i32, i32* %13, align 4, !dbg !1034
  %67 = call %struct._CONFIG_NODE* @config_node_section_index(%struct._CONFIG_REC* %63, %struct._CONFIG_NODE* %64, i8* %65, i32 %66, i32 2), !dbg !1035
  store %struct._CONFIG_NODE* %67, %struct._CONFIG_NODE** %7, align 8, !dbg !1036
  %68 = load %struct._GHashTable*, %struct._GHashTable** %8, align 8, !dbg !1037
  %69 = call i8* @g_hash_table_lookup(%struct._GHashTable* %68, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0)), !dbg !1038
  store i8* %69, i8** %11, align 8, !dbg !1039
  %70 = load i8*, i8** %11, align 8, !dbg !1040
  %71 = icmp ne i8* %70, null, !dbg !1042
  br i1 %71, label %72, label %77, !dbg !1043

; <label>:72:                                     ; preds = %62
  %73 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1044
  %74 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !1046
  %75 = load i8*, i8** %11, align 8, !dbg !1047
  %76 = call i32 @atoi(i8* %75) #4, !dbg !1048
  call void @config_node_set_int(%struct._CONFIG_REC* %73, %struct._CONFIG_NODE* %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i32 %76), !dbg !1049
  br label %77, !dbg !1051

; <label>:77:                                     ; preds = %72, %62
  %78 = load %struct._GHashTable*, %struct._GHashTable** %8, align 8, !dbg !1052
  %79 = call i8* @g_hash_table_lookup(%struct._GHashTable* %78, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0)), !dbg !1053
  store i8* %79, i8** %11, align 8, !dbg !1054
  %80 = load i8*, i8** %11, align 8, !dbg !1055
  %81 = icmp ne i8* %80, null, !dbg !1057
  br i1 %81, label %82, label %89, !dbg !1058

; <label>:82:                                     ; preds = %77
  %83 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1059
  %84 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !1061
  %85 = load i8*, i8** %11, align 8, !dbg !1062
  %86 = call i32 @g_ascii_strcasecmp(i8* %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0)), !dbg !1063
  %87 = icmp eq i32 %86, 0, !dbg !1064
  %88 = select i1 %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i8* null, !dbg !1063
  call void @config_node_set_str(%struct._CONFIG_REC* %83, %struct._CONFIG_NODE* %84, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* %88), !dbg !1065
  br label %89, !dbg !1067

; <label>:89:                                     ; preds = %82, %77
  call void @read_statusbar_config(), !dbg !1068
  %90 = load i8*, i8** %12, align 8, !dbg !1069
  call void @cmd_params_free(i8* %90), !dbg !1070
  br label %91, !dbg !1071

; <label>:91:                                     ; preds = %89, %41, %30, %21
  ret void, !dbg !1072
}

; Function Attrs: nounwind uwtable
define internal void @cmd_statusbar_removeitem(i8*, i8*, i8*) #0 !dbg !1074 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._CONFIG_NODE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1075, metadata !238), !dbg !1076
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1077, metadata !238), !dbg !1078
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1079, metadata !238), !dbg !1080
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %7, metadata !1081, metadata !238), !dbg !1082
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1083, metadata !238), !dbg !1084
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1085, metadata !238), !dbg !1086
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1087, metadata !238), !dbg !1088
  %11 = load i8*, i8** %4, align 8, !dbg !1089
  %12 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %11, i8** %10, i32 262146, i8** %8, i8** %9), !dbg !1091
  %13 = icmp ne i32 %12, 0, !dbg !1091
  br i1 %13, label %15, label %14, !dbg !1092

; <label>:14:                                     ; preds = %3
  br label %39, !dbg !1093

; <label>:15:                                     ; preds = %3
  %16 = load i8*, i8** %9, align 8, !dbg !1094
  %17 = load i8, i8* %16, align 1, !dbg !1096
  %18 = sext i8 %17 to i32, !dbg !1096
  %19 = icmp eq i32 %18, 0, !dbg !1097
  br i1 %19, label %20, label %27, !dbg !1098

; <label>:20:                                     ; preds = %15
  br label %21, !dbg !1099, !llvm.loop !1101

; <label>:21:                                     ; preds = %20
  %22 = load i8*, i8** %10, align 8, !dbg !1102
  call void @cmd_params_free(i8* %22), !dbg !1105
  br label %23, !dbg !1106, !llvm.loop !1107

; <label>:23:                                     ; preds = %21
  %24 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !1109
  call void @signal_stop(), !dbg !1112
  br label %39, !dbg !1114
                                                  ; No predecessors!
  br label %26, !dbg !1115

; <label>:26:                                     ; preds = %25
  br label %27, !dbg !1117

; <label>:27:                                     ; preds = %26, %15
  %28 = load i8*, i8** %9, align 8, !dbg !1118
  %29 = load i8*, i8** %8, align 8, !dbg !1119
  %30 = call %struct._CONFIG_NODE* @sbar_find_item_with_defaults(i8* %28, i8* %29, i32 0), !dbg !1120
  store %struct._CONFIG_NODE* %30, %struct._CONFIG_NODE** %7, align 8, !dbg !1121
  %31 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !1122
  %32 = icmp ne %struct._CONFIG_NODE* %31, null, !dbg !1124
  br i1 %32, label %33, label %37, !dbg !1125

; <label>:33:                                     ; preds = %27
  %34 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1126
  %35 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !1127
  %36 = load i8*, i8** %8, align 8, !dbg !1128
  call void @config_node_set_str(%struct._CONFIG_REC* %34, %struct._CONFIG_NODE* %35, i8* %36, i8* null), !dbg !1129
  br label %37, !dbg !1129

; <label>:37:                                     ; preds = %33, %27
  call void @read_statusbar_config(), !dbg !1130
  %38 = load i8*, i8** %10, align 8, !dbg !1131
  call void @cmd_params_free(i8* %38), !dbg !1132
  br label %39, !dbg !1133

; <label>:39:                                     ; preds = %37, %23, %14
  ret void, !dbg !1134
}

declare void @command_set_options_module(i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @statusbar_config_deinit() #0 !dbg !1136 {
  call void @signal_remove_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_statusbar_config to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1137
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_statusbar_config to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1138
  call void @command_unbind_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_statusbar to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1139
  call void @command_unbind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_statusbar_list to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1140
  call void @command_unbind_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, i8*, i8*)* @cmd_statusbar_add_modify to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* inttoptr (i64 1 to i8*)), !dbg !1141
  call void @command_unbind_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, i8*, i8*)* @cmd_statusbar_add_modify to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1142
  call void @command_unbind_full(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, i8*, i8*)* @cmd_statusbar_reset to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1143
  call void @command_unbind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_statusbar_info to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1144
  call void @command_unbind_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, i8*, i8*)* @cmd_statusbar_additem_modifyitem to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* inttoptr (i64 1 to i8*)), !dbg !1145
  call void @command_unbind_full(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, i8*, i8*)* @cmd_statusbar_additem_modifyitem to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1146
  call void @command_unbind_full(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, i8*, i8*)* @cmd_statusbar_removeitem to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1147
  ret void, !dbg !1148
}

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare void @command_unbind_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @statusbar_reset_defaults() #0 !dbg !1149 {
  %1 = alloca %struct._CONFIG_REC*, align 8
  %2 = alloca %struct._CONFIG_NODE*, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %1, metadata !1150, metadata !238), !dbg !1420
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %2, metadata !1421, metadata !238), !dbg !1422
  br label %3, !dbg !1423

; <label>:3:                                      ; preds = %6, %0
  %4 = load %struct._GSList*, %struct._GSList** @statusbar_groups, align 8, !dbg !1424
  %5 = icmp ne %struct._GSList* %4, null, !dbg !1426
  br i1 %5, label %6, label %11, !dbg !1427

; <label>:6:                                      ; preds = %3
  %7 = load %struct._GSList*, %struct._GSList** @statusbar_groups, align 8, !dbg !1428
  %8 = getelementptr inbounds %struct._GSList, %struct._GSList* %7, i32 0, i32 0, !dbg !1429
  %9 = load i8*, i8** %8, align 8, !dbg !1429
  %10 = bitcast i8* %9 to %struct.STATUSBAR_GROUP_REC*, !dbg !1428
  call void @statusbar_group_destroy(%struct.STATUSBAR_GROUP_REC* %10), !dbg !1430
  br label %3, !dbg !1431, !llvm.loop !1433

; <label>:11:                                     ; preds = %3
  store %struct.STATUSBAR_GROUP_REC* null, %struct.STATUSBAR_GROUP_REC** @active_statusbar_group, align 8, !dbg !1434
  %12 = call %struct._CONFIG_REC* @config_open(i8* null, i32 -1), !dbg !1435
  store %struct._CONFIG_REC* %12, %struct._CONFIG_REC** %1, align 8, !dbg !1436
  %13 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %1, align 8, !dbg !1437
  %14 = load i8*, i8** @default_config, align 8, !dbg !1438
  %15 = call i32 @config_parse_data(%struct._CONFIG_REC* %13, i8* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0)), !dbg !1439
  %16 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %1, align 8, !dbg !1440
  %17 = call %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 0), !dbg !1441
  store %struct._CONFIG_NODE* %17, %struct._CONFIG_NODE** %2, align 8, !dbg !1442
  %18 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %2, align 8, !dbg !1443
  %19 = icmp ne %struct._CONFIG_NODE* %18, null, !dbg !1445
  br i1 %19, label %20, label %22, !dbg !1446

; <label>:20:                                     ; preds = %11
  %21 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %2, align 8, !dbg !1447
  call void @read_statusbar_config_from_node(%struct._CONFIG_NODE* %21), !dbg !1448
  br label %22, !dbg !1448

; <label>:22:                                     ; preds = %20, %11
  %23 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %1, align 8, !dbg !1449
  call void @config_close(%struct._CONFIG_REC* %23), !dbg !1450
  ret void, !dbg !1451
}

declare %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @read_statusbar_config_from_node(%struct._CONFIG_NODE*) #0 !dbg !1452 {
  %2 = alloca %struct._CONFIG_NODE*, align 8
  %3 = alloca %struct._CONFIG_NODE*, align 8
  %4 = alloca %struct._GSList*, align 8
  store %struct._CONFIG_NODE* %0, %struct._CONFIG_NODE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %2, metadata !1455, metadata !238), !dbg !1456
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %3, metadata !1457, metadata !238), !dbg !1458
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !1459, metadata !238), !dbg !1460
  %5 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1461
  %6 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %2, align 8, !dbg !1462
  %7 = call %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC* %5, %struct._CONFIG_NODE* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 -1), !dbg !1463
  store %struct._CONFIG_NODE* %7, %struct._CONFIG_NODE** %3, align 8, !dbg !1464
  %8 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1465
  %9 = icmp ne %struct._CONFIG_NODE* %8, null, !dbg !1467
  br i1 %9, label %10, label %12, !dbg !1468

; <label>:10:                                     ; preds = %1
  %11 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1469
  call void @statusbar_read_items(%struct._CONFIG_NODE* %11), !dbg !1470
  br label %12, !dbg !1470

; <label>:12:                                     ; preds = %10, %1
  %13 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %2, align 8, !dbg !1471
  %14 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %13, i32 0, i32 2, !dbg !1472
  %15 = load i8*, i8** %14, align 8, !dbg !1472
  %16 = bitcast i8* %15 to %struct._GSList*, !dbg !1471
  %17 = call %struct._GSList* @config_node_first(%struct._GSList* %16), !dbg !1473
  store %struct._GSList* %17, %struct._GSList** %4, align 8, !dbg !1474
  br label %18, !dbg !1475

; <label>:18:                                     ; preds = %34, %12
  %19 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1476
  %20 = icmp ne %struct._GSList* %19, null, !dbg !1480
  br i1 %20, label %21, label %37, !dbg !1481

; <label>:21:                                     ; preds = %18
  %22 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1482
  %23 = getelementptr inbounds %struct._GSList, %struct._GSList* %22, i32 0, i32 0, !dbg !1485
  %24 = load i8*, i8** %23, align 8, !dbg !1485
  %25 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1486
  %26 = bitcast %struct._CONFIG_NODE* %25 to i8*, !dbg !1486
  %27 = icmp ne i8* %24, %26, !dbg !1487
  br i1 %27, label %28, label %33, !dbg !1488

; <label>:28:                                     ; preds = %21
  %29 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1489
  %30 = getelementptr inbounds %struct._GSList, %struct._GSList* %29, i32 0, i32 0, !dbg !1490
  %31 = load i8*, i8** %30, align 8, !dbg !1490
  %32 = bitcast i8* %31 to %struct._CONFIG_NODE*, !dbg !1489
  call void @statusbar_read_group(%struct._CONFIG_NODE* %32), !dbg !1491
  br label %33, !dbg !1491

; <label>:33:                                     ; preds = %28, %21
  br label %34, !dbg !1492

; <label>:34:                                     ; preds = %33
  %35 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1493
  %36 = call %struct._GSList* @config_node_next(%struct._GSList* %35), !dbg !1495
  store %struct._GSList* %36, %struct._GSList** %4, align 8, !dbg !1496
  br label %18, !dbg !1497, !llvm.loop !1498

; <label>:37:                                     ; preds = %18
  ret void, !dbg !1499
}

; Function Attrs: nounwind uwtable
define internal void @create_root_statusbars() #0 !dbg !1500 {
  %1 = alloca %struct.STATUSBAR_REC*, align 8
  %2 = alloca %struct._GSList*, align 8
  %3 = alloca %struct.STATUSBAR_CONFIG_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct.STATUSBAR_REC** %1, metadata !1501, metadata !238), !dbg !1619
  call void @llvm.dbg.declare(metadata %struct._GSList** %2, metadata !1620, metadata !238), !dbg !1621
  %4 = load %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_GROUP_REC** @active_statusbar_group, align 8, !dbg !1622
  %5 = getelementptr inbounds %struct.STATUSBAR_GROUP_REC, %struct.STATUSBAR_GROUP_REC* %4, i32 0, i32 1, !dbg !1623
  %6 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1623
  store %struct._GSList* %6, %struct._GSList** %2, align 8, !dbg !1624
  br label %7, !dbg !1625

; <label>:7:                                      ; preds = %25, %0
  %8 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !1626
  %9 = icmp ne %struct._GSList* %8, null, !dbg !1630
  br i1 %9, label %10, label %29, !dbg !1631

; <label>:10:                                     ; preds = %7
  call void @llvm.dbg.declare(metadata %struct.STATUSBAR_CONFIG_REC** %3, metadata !1632, metadata !238), !dbg !1634
  %11 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !1635
  %12 = getelementptr inbounds %struct._GSList, %struct._GSList* %11, i32 0, i32 0, !dbg !1636
  %13 = load i8*, i8** %12, align 8, !dbg !1636
  %14 = bitcast i8* %13 to %struct.STATUSBAR_CONFIG_REC*, !dbg !1635
  store %struct.STATUSBAR_CONFIG_REC* %14, %struct.STATUSBAR_CONFIG_REC** %3, align 8, !dbg !1634
  %15 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %3, align 8, !dbg !1637
  %16 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %15, i32 0, i32 1, !dbg !1639
  %17 = load i32, i32* %16, align 8, !dbg !1639
  %18 = icmp eq i32 %17, 1, !dbg !1640
  br i1 %18, label %19, label %24, !dbg !1641

; <label>:19:                                     ; preds = %10
  %20 = load %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_GROUP_REC** @active_statusbar_group, align 8, !dbg !1642
  %21 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %3, align 8, !dbg !1644
  %22 = call %struct.STATUSBAR_REC* @statusbar_create(%struct.STATUSBAR_GROUP_REC* %20, %struct.STATUSBAR_CONFIG_REC* %21, %struct.MAIN_WINDOW_REC* null), !dbg !1645
  store %struct.STATUSBAR_REC* %22, %struct.STATUSBAR_REC** %1, align 8, !dbg !1646
  %23 = load %struct.STATUSBAR_REC*, %struct.STATUSBAR_REC** %1, align 8, !dbg !1647
  call void @statusbar_redraw(%struct.STATUSBAR_REC* %23, i32 1), !dbg !1648
  br label %24, !dbg !1649

; <label>:24:                                     ; preds = %19, %10
  br label %25, !dbg !1650

; <label>:25:                                     ; preds = %24
  %26 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !1651
  %27 = getelementptr inbounds %struct._GSList, %struct._GSList* %26, i32 0, i32 1, !dbg !1653
  %28 = load %struct._GSList*, %struct._GSList** %27, align 8, !dbg !1653
  store %struct._GSList* %28, %struct._GSList** %2, align 8, !dbg !1654
  br label %7, !dbg !1655, !llvm.loop !1656

; <label>:29:                                     ; preds = %7
  ret void, !dbg !1657
}

declare void @statusbars_create_window_bars() #2

declare void @statusbar_group_destroy(%struct.STATUSBAR_GROUP_REC*) #2

declare %struct._CONFIG_REC* @config_open(i8*, i32) #2

declare i32 @config_parse_data(%struct._CONFIG_REC*, i8*, i8*) #2

declare void @config_close(%struct._CONFIG_REC*) #2

declare %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @statusbar_read_items(%struct._CONFIG_NODE*) #0 !dbg !1658 {
  %2 = alloca %struct._CONFIG_NODE*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct._CONFIG_NODE*, align 8
  store %struct._CONFIG_NODE* %0, %struct._CONFIG_NODE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %2, metadata !1659, metadata !238), !dbg !1660
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !1661, metadata !238), !dbg !1662
  %5 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %2, align 8, !dbg !1663
  %6 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %5, i32 0, i32 2, !dbg !1664
  %7 = load i8*, i8** %6, align 8, !dbg !1664
  %8 = bitcast i8* %7 to %struct._GSList*, !dbg !1663
  %9 = call %struct._GSList* @config_node_first(%struct._GSList* %8), !dbg !1665
  store %struct._GSList* %9, %struct._GSList** %3, align 8, !dbg !1666
  br label %10, !dbg !1667

; <label>:10:                                     ; preds = %24, %1
  %11 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1668
  %12 = icmp ne %struct._GSList* %11, null, !dbg !1672
  br i1 %12, label %13, label %27, !dbg !1673

; <label>:13:                                     ; preds = %10
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %4, metadata !1674, metadata !238), !dbg !1676
  %14 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1677
  %15 = getelementptr inbounds %struct._GSList, %struct._GSList* %14, i32 0, i32 0, !dbg !1678
  %16 = load i8*, i8** %15, align 8, !dbg !1678
  %17 = bitcast i8* %16 to %struct._CONFIG_NODE*, !dbg !1677
  store %struct._CONFIG_NODE* %17, %struct._CONFIG_NODE** %4, align 8, !dbg !1676
  %18 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1679
  %19 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %18, i32 0, i32 1, !dbg !1680
  %20 = load i8*, i8** %19, align 8, !dbg !1680
  %21 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1681
  %22 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %21, i32 0, i32 2, !dbg !1682
  %23 = load i8*, i8** %22, align 8, !dbg !1682
  call void @statusbar_item_register(i8* %20, i8* %23, void (%struct.SBAR_ITEM_REC*, i32)* null), !dbg !1683
  br label %24, !dbg !1684

; <label>:24:                                     ; preds = %13
  %25 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1685
  %26 = call %struct._GSList* @config_node_next(%struct._GSList* %25), !dbg !1687
  store %struct._GSList* %26, %struct._GSList** %3, align 8, !dbg !1688
  br label %10, !dbg !1689, !llvm.loop !1690

; <label>:27:                                     ; preds = %10
  ret void, !dbg !1691
}

declare %struct._GSList* @config_node_first(%struct._GSList*) #2

; Function Attrs: nounwind uwtable
define internal void @statusbar_read_group(%struct._CONFIG_NODE*) #0 !dbg !1692 {
  %2 = alloca %struct._CONFIG_NODE*, align 8
  %3 = alloca %struct.STATUSBAR_GROUP_REC*, align 8
  %4 = alloca %struct._GSList*, align 8
  store %struct._CONFIG_NODE* %0, %struct._CONFIG_NODE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %2, metadata !1693, metadata !238), !dbg !1694
  call void @llvm.dbg.declare(metadata %struct.STATUSBAR_GROUP_REC** %3, metadata !1695, metadata !238), !dbg !1696
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !1697, metadata !238), !dbg !1698
  br label %5, !dbg !1699, !llvm.loop !1700

; <label>:5:                                      ; preds = %1
  %6 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %2, align 8, !dbg !1701
  %7 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %6, i32 0, i32 0, !dbg !1705
  %8 = load i32, i32* %7, align 8, !dbg !1705
  %9 = icmp eq i32 %8, 2, !dbg !1706
  br i1 %9, label %15, label %10, !dbg !1707

; <label>:10:                                     ; preds = %5
  %11 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %2, align 8, !dbg !1708
  %12 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %11, i32 0, i32 0, !dbg !1710
  %13 = load i32, i32* %12, align 8, !dbg !1710
  %14 = icmp eq i32 %13, 3, !dbg !1711
  br i1 %14, label %15, label %16, !dbg !1712

; <label>:15:                                     ; preds = %10, %5
  br label %17, !dbg !1713

; <label>:16:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.statusbar_read_group, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0)), !dbg !1716
  br label %53, !dbg !1719

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !1720

; <label>:18:                                     ; preds = %17
  %19 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %2, align 8, !dbg !1722
  %20 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %19, i32 0, i32 1, !dbg !1723
  %21 = load i8*, i8** %20, align 8, !dbg !1723
  %22 = call %struct.STATUSBAR_GROUP_REC* @statusbar_group_find(i8* %21), !dbg !1724
  store %struct.STATUSBAR_GROUP_REC* %22, %struct.STATUSBAR_GROUP_REC** %3, align 8, !dbg !1725
  %23 = load %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_GROUP_REC** %3, align 8, !dbg !1726
  %24 = icmp eq %struct.STATUSBAR_GROUP_REC* %23, null, !dbg !1728
  br i1 %24, label %25, label %35, !dbg !1729

; <label>:25:                                     ; preds = %18
  %26 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %2, align 8, !dbg !1730
  %27 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %26, i32 0, i32 1, !dbg !1732
  %28 = load i8*, i8** %27, align 8, !dbg !1732
  %29 = call %struct.STATUSBAR_GROUP_REC* @statusbar_group_create(i8* %28), !dbg !1733
  store %struct.STATUSBAR_GROUP_REC* %29, %struct.STATUSBAR_GROUP_REC** %3, align 8, !dbg !1734
  %30 = load %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_GROUP_REC** @active_statusbar_group, align 8, !dbg !1735
  %31 = icmp eq %struct.STATUSBAR_GROUP_REC* %30, null, !dbg !1737
  br i1 %31, label %32, label %34, !dbg !1738

; <label>:32:                                     ; preds = %25
  %33 = load %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_GROUP_REC** %3, align 8, !dbg !1739
  store %struct.STATUSBAR_GROUP_REC* %33, %struct.STATUSBAR_GROUP_REC** @active_statusbar_group, align 8, !dbg !1740
  br label %34, !dbg !1741

; <label>:34:                                     ; preds = %32, %25
  br label %35, !dbg !1742

; <label>:35:                                     ; preds = %34, %18
  %36 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %2, align 8, !dbg !1743
  %37 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %36, i32 0, i32 2, !dbg !1744
  %38 = load i8*, i8** %37, align 8, !dbg !1744
  %39 = bitcast i8* %38 to %struct._GSList*, !dbg !1743
  %40 = call %struct._GSList* @config_node_first(%struct._GSList* %39), !dbg !1745
  store %struct._GSList* %40, %struct._GSList** %4, align 8, !dbg !1746
  br label %41, !dbg !1747

; <label>:41:                                     ; preds = %50, %35
  %42 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1748
  %43 = icmp ne %struct._GSList* %42, null, !dbg !1752
  br i1 %43, label %44, label %53, !dbg !1753

; <label>:44:                                     ; preds = %41
  %45 = load %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_GROUP_REC** %3, align 8, !dbg !1754
  %46 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1755
  %47 = getelementptr inbounds %struct._GSList, %struct._GSList* %46, i32 0, i32 0, !dbg !1756
  %48 = load i8*, i8** %47, align 8, !dbg !1756
  %49 = bitcast i8* %48 to %struct._CONFIG_NODE*, !dbg !1755
  call void @statusbar_read(%struct.STATUSBAR_GROUP_REC* %45, %struct._CONFIG_NODE* %49), !dbg !1757
  br label %50, !dbg !1757

; <label>:50:                                     ; preds = %44
  %51 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1758
  %52 = call %struct._GSList* @config_node_next(%struct._GSList* %51), !dbg !1760
  store %struct._GSList* %52, %struct._GSList** %4, align 8, !dbg !1761
  br label %41, !dbg !1762, !llvm.loop !1763

; <label>:53:                                     ; preds = %16, %41
  ret void, !dbg !1764
}

declare %struct._GSList* @config_node_next(%struct._GSList*) #2

declare void @statusbar_item_register(i8*, i8*, void (%struct.SBAR_ITEM_REC*, i32)*) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare %struct.STATUSBAR_GROUP_REC* @statusbar_group_find(i8*) #2

declare %struct.STATUSBAR_GROUP_REC* @statusbar_group_create(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @statusbar_read(%struct.STATUSBAR_GROUP_REC*, %struct._CONFIG_NODE*) #0 !dbg !1765 {
  %3 = alloca %struct.STATUSBAR_GROUP_REC*, align 8
  %4 = alloca %struct._CONFIG_NODE*, align 8
  %5 = alloca %struct.STATUSBAR_CONFIG_REC*, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca i8*, align 8
  store %struct.STATUSBAR_GROUP_REC* %0, %struct.STATUSBAR_GROUP_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.STATUSBAR_GROUP_REC** %3, metadata !1768, metadata !238), !dbg !1769
  store %struct._CONFIG_NODE* %1, %struct._CONFIG_NODE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %4, metadata !1770, metadata !238), !dbg !1771
  call void @llvm.dbg.declare(metadata %struct.STATUSBAR_CONFIG_REC** %5, metadata !1772, metadata !238), !dbg !1773
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !1774, metadata !238), !dbg !1775
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1776, metadata !238), !dbg !1777
  %8 = load %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_GROUP_REC** %3, align 8, !dbg !1778
  %9 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1779
  %10 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %9, i32 0, i32 1, !dbg !1780
  %11 = load i8*, i8** %10, align 8, !dbg !1780
  %12 = call %struct.STATUSBAR_CONFIG_REC* @statusbar_config_find(%struct.STATUSBAR_GROUP_REC* %8, i8* %11), !dbg !1781
  store %struct.STATUSBAR_CONFIG_REC* %12, %struct.STATUSBAR_CONFIG_REC** %5, align 8, !dbg !1782
  %13 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1783
  %14 = call i32 @config_node_get_bool(%struct._CONFIG_NODE* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 0), !dbg !1785
  %15 = icmp ne i32 %14, 0, !dbg !1785
  br i1 %15, label %16, label %23, !dbg !1786

; <label>:16:                                     ; preds = %2
  %17 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %5, align 8, !dbg !1787
  %18 = icmp ne %struct.STATUSBAR_CONFIG_REC* %17, null, !dbg !1790
  br i1 %18, label %19, label %22, !dbg !1791

; <label>:19:                                     ; preds = %16
  %20 = load %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_GROUP_REC** %3, align 8, !dbg !1792
  %21 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %5, align 8, !dbg !1793
  call void @statusbar_config_destroy(%struct.STATUSBAR_GROUP_REC* %20, %struct.STATUSBAR_CONFIG_REC* %21), !dbg !1794
  br label %22, !dbg !1794

; <label>:22:                                     ; preds = %19, %16
  br label %117, !dbg !1795

; <label>:23:                                     ; preds = %2
  %24 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %5, align 8, !dbg !1796
  %25 = icmp eq %struct.STATUSBAR_CONFIG_REC* %24, null, !dbg !1798
  br i1 %25, label %26, label %38, !dbg !1799

; <label>:26:                                     ; preds = %23
  %27 = load %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_GROUP_REC** %3, align 8, !dbg !1800
  %28 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1802
  %29 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %28, i32 0, i32 1, !dbg !1803
  %30 = load i8*, i8** %29, align 8, !dbg !1803
  %31 = call %struct.STATUSBAR_CONFIG_REC* @statusbar_config_create(%struct.STATUSBAR_GROUP_REC* %27, i8* %30), !dbg !1804
  store %struct.STATUSBAR_CONFIG_REC* %31, %struct.STATUSBAR_CONFIG_REC** %5, align 8, !dbg !1805
  %32 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %5, align 8, !dbg !1806
  %33 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %32, i32 0, i32 1, !dbg !1807
  store i32 1, i32* %33, align 8, !dbg !1808
  %34 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %5, align 8, !dbg !1809
  %35 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %34, i32 0, i32 2, !dbg !1810
  store i32 2, i32* %35, align 4, !dbg !1811
  %36 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %5, align 8, !dbg !1812
  %37 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %36, i32 0, i32 3, !dbg !1813
  store i32 0, i32* %37, align 8, !dbg !1814
  br label %38, !dbg !1815

; <label>:38:                                     ; preds = %26, %23
  %39 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1816
  %40 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i32 0, i32 0)), !dbg !1817
  store i8* %40, i8** %7, align 8, !dbg !1818
  %41 = load i8*, i8** %7, align 8, !dbg !1819
  %42 = call i32 @g_ascii_strcasecmp(i8* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0)), !dbg !1821
  %43 = icmp eq i32 %42, 0, !dbg !1822
  br i1 %43, label %44, label %47, !dbg !1823

; <label>:44:                                     ; preds = %38
  %45 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %5, align 8, !dbg !1824
  %46 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %45, i32 0, i32 4, !dbg !1825
  store i32 2, i32* %46, align 4, !dbg !1826
  br label %58, !dbg !1824

; <label>:47:                                     ; preds = %38
  %48 = load i8*, i8** %7, align 8, !dbg !1827
  %49 = call i32 @g_ascii_strcasecmp(i8* %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0)), !dbg !1829
  %50 = icmp eq i32 %49, 0, !dbg !1830
  br i1 %50, label %51, label %54, !dbg !1831

; <label>:51:                                     ; preds = %47
  %52 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %5, align 8, !dbg !1832
  %53 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %52, i32 0, i32 4, !dbg !1833
  store i32 3, i32* %53, align 4, !dbg !1834
  br label %57, !dbg !1832

; <label>:54:                                     ; preds = %47
  %55 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %5, align 8, !dbg !1835
  %56 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %55, i32 0, i32 4, !dbg !1836
  store i32 1, i32* %56, align 4, !dbg !1837
  br label %57

; <label>:57:                                     ; preds = %54, %51
  br label %58

; <label>:58:                                     ; preds = %57, %44
  %59 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1838
  %60 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i32 0, i32 0)), !dbg !1840
  %61 = call i32 @g_ascii_strcasecmp(i8* %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0)), !dbg !1841
  %62 = icmp eq i32 %61, 0, !dbg !1843
  br i1 %62, label %63, label %66, !dbg !1844

; <label>:63:                                     ; preds = %58
  %64 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %5, align 8, !dbg !1845
  %65 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %64, i32 0, i32 1, !dbg !1846
  store i32 2, i32* %65, align 8, !dbg !1847
  br label %66, !dbg !1845

; <label>:66:                                     ; preds = %63, %58
  %67 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1848
  %68 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i32 0, i32 0)), !dbg !1850
  %69 = call i32 @g_ascii_strcasecmp(i8* %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0)), !dbg !1851
  %70 = icmp eq i32 %69, 0, !dbg !1853
  br i1 %70, label %71, label %74, !dbg !1854

; <label>:71:                                     ; preds = %66
  %72 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %5, align 8, !dbg !1855
  %73 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %72, i32 0, i32 2, !dbg !1856
  store i32 1, i32* %73, align 4, !dbg !1857
  br label %74, !dbg !1855

; <label>:74:                                     ; preds = %71, %66
  %75 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1858
  %76 = call i32 @config_node_get_int(%struct._CONFIG_NODE* %75, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i32 0), !dbg !1859
  %77 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %5, align 8, !dbg !1860
  %78 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %77, i32 0, i32 3, !dbg !1861
  store i32 %76, i32* %78, align 8, !dbg !1862
  %79 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1863
  %80 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1864
  %81 = call %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC* %79, %struct._CONFIG_NODE* %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 -1), !dbg !1865
  store %struct._CONFIG_NODE* %81, %struct._CONFIG_NODE** %4, align 8, !dbg !1866
  %82 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1867
  %83 = icmp ne %struct._CONFIG_NODE* %82, null, !dbg !1869
  br i1 %83, label %84, label %117, !dbg !1870

; <label>:84:                                     ; preds = %74
  br label %85, !dbg !1871

; <label>:85:                                     ; preds = %90, %84
  %86 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %5, align 8, !dbg !1873
  %87 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %86, i32 0, i32 5, !dbg !1875
  %88 = load %struct._GSList*, %struct._GSList** %87, align 8, !dbg !1875
  %89 = icmp ne %struct._GSList* %88, null, !dbg !1876
  br i1 %89, label %90, label %98, !dbg !1877

; <label>:90:                                     ; preds = %85
  %91 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %5, align 8, !dbg !1878
  %92 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %5, align 8, !dbg !1879
  %93 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %92, i32 0, i32 5, !dbg !1880
  %94 = load %struct._GSList*, %struct._GSList** %93, align 8, !dbg !1880
  %95 = getelementptr inbounds %struct._GSList, %struct._GSList* %94, i32 0, i32 0, !dbg !1881
  %96 = load i8*, i8** %95, align 8, !dbg !1881
  %97 = bitcast i8* %96 to %struct.SBAR_ITEM_CONFIG_REC*, !dbg !1879
  call void @statusbar_config_item_destroy(%struct.STATUSBAR_CONFIG_REC* %91, %struct.SBAR_ITEM_CONFIG_REC* %97), !dbg !1882
  br label %85, !dbg !1883, !llvm.loop !1885

; <label>:98:                                     ; preds = %85
  %99 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1886
  %100 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %99, i32 0, i32 2, !dbg !1887
  %101 = load i8*, i8** %100, align 8, !dbg !1887
  %102 = bitcast i8* %101 to %struct._GSList*, !dbg !1886
  %103 = call %struct._GSList* @config_node_first(%struct._GSList* %102), !dbg !1888
  store %struct._GSList* %103, %struct._GSList** %6, align 8, !dbg !1889
  br label %104, !dbg !1890

; <label>:104:                                    ; preds = %113, %98
  %105 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1891
  %106 = icmp ne %struct._GSList* %105, null, !dbg !1895
  br i1 %106, label %107, label %116, !dbg !1896

; <label>:107:                                    ; preds = %104
  %108 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %5, align 8, !dbg !1897
  %109 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1898
  %110 = getelementptr inbounds %struct._GSList, %struct._GSList* %109, i32 0, i32 0, !dbg !1899
  %111 = load i8*, i8** %110, align 8, !dbg !1899
  %112 = bitcast i8* %111 to %struct._CONFIG_NODE*, !dbg !1898
  call void @statusbar_read_item(%struct.STATUSBAR_CONFIG_REC* %108, %struct._CONFIG_NODE* %112), !dbg !1900
  br label %113, !dbg !1900

; <label>:113:                                    ; preds = %107
  %114 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1901
  %115 = call %struct._GSList* @config_node_next(%struct._GSList* %114), !dbg !1903
  store %struct._GSList* %115, %struct._GSList** %6, align 8, !dbg !1904
  br label %104, !dbg !1905, !llvm.loop !1906

; <label>:116:                                    ; preds = %104
  br label %117, !dbg !1907

; <label>:117:                                    ; preds = %22, %116, %74
  ret void, !dbg !1908
}

; Function Attrs: nounwind uwtable
define internal %struct.STATUSBAR_CONFIG_REC* @statusbar_config_find(%struct.STATUSBAR_GROUP_REC*, i8*) #0 !dbg !1909 {
  %3 = alloca %struct.STATUSBAR_CONFIG_REC*, align 8
  %4 = alloca %struct.STATUSBAR_GROUP_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca %struct.STATUSBAR_CONFIG_REC*, align 8
  store %struct.STATUSBAR_GROUP_REC* %0, %struct.STATUSBAR_GROUP_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.STATUSBAR_GROUP_REC** %4, metadata !1912, metadata !238), !dbg !1913
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1914, metadata !238), !dbg !1915
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !1916, metadata !238), !dbg !1917
  %8 = load %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_GROUP_REC** %4, align 8, !dbg !1918
  %9 = getelementptr inbounds %struct.STATUSBAR_GROUP_REC, %struct.STATUSBAR_GROUP_REC* %8, i32 0, i32 1, !dbg !1920
  %10 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !1920
  store %struct._GSList* %10, %struct._GSList** %6, align 8, !dbg !1921
  br label %11, !dbg !1922

; <label>:11:                                     ; preds = %42, %2
  %12 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1923
  %13 = icmp ne %struct._GSList* %12, null, !dbg !1926
  br i1 %13, label %14, label %46, !dbg !1927

; <label>:14:                                     ; preds = %11
  call void @llvm.dbg.declare(metadata %struct.STATUSBAR_CONFIG_REC** %7, metadata !1928, metadata !238), !dbg !1930
  %15 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1931
  %16 = getelementptr inbounds %struct._GSList, %struct._GSList* %15, i32 0, i32 0, !dbg !1932
  %17 = load i8*, i8** %16, align 8, !dbg !1932
  %18 = bitcast i8* %17 to %struct.STATUSBAR_CONFIG_REC*, !dbg !1931
  store %struct.STATUSBAR_CONFIG_REC* %18, %struct.STATUSBAR_CONFIG_REC** %7, align 8, !dbg !1930
  %19 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %7, align 8, !dbg !1933
  %20 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %19, i32 0, i32 0, !dbg !1935
  %21 = load i8*, i8** %20, align 8, !dbg !1935
  %22 = icmp eq i8* %21, null, !dbg !1936
  br i1 %22, label %26, label %23, !dbg !1937

; <label>:23:                                     ; preds = %14
  %24 = load i8*, i8** %5, align 8, !dbg !1938
  %25 = icmp eq i8* %24, null, !dbg !1940
  br i1 %25, label %26, label %32, !dbg !1941

; <label>:26:                                     ; preds = %23, %14
  %27 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %7, align 8, !dbg !1942
  %28 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %27, i32 0, i32 0, !dbg !1943
  %29 = load i8*, i8** %28, align 8, !dbg !1943
  %30 = load i8*, i8** %5, align 8, !dbg !1944
  %31 = icmp eq i8* %29, %30, !dbg !1945
  br i1 %31, label %39, label %41, !dbg !1946

; <label>:32:                                     ; preds = %23
  %33 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %7, align 8, !dbg !1948
  %34 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %33, i32 0, i32 0, !dbg !1949
  %35 = load i8*, i8** %34, align 8, !dbg !1949
  %36 = load i8*, i8** %5, align 8, !dbg !1950
  %37 = call i32 @g_ascii_strcasecmp(i8* %35, i8* %36), !dbg !1951
  %38 = icmp eq i32 %37, 0, !dbg !1952
  br i1 %38, label %39, label %41, !dbg !1953

; <label>:39:                                     ; preds = %32, %26
  %40 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %7, align 8, !dbg !1955
  store %struct.STATUSBAR_CONFIG_REC* %40, %struct.STATUSBAR_CONFIG_REC** %3, align 8, !dbg !1956
  br label %47, !dbg !1956

; <label>:41:                                     ; preds = %32, %26
  br label %42, !dbg !1957

; <label>:42:                                     ; preds = %41
  %43 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1958
  %44 = getelementptr inbounds %struct._GSList, %struct._GSList* %43, i32 0, i32 1, !dbg !1960
  %45 = load %struct._GSList*, %struct._GSList** %44, align 8, !dbg !1960
  store %struct._GSList* %45, %struct._GSList** %6, align 8, !dbg !1961
  br label %11, !dbg !1962, !llvm.loop !1963

; <label>:46:                                     ; preds = %11
  store %struct.STATUSBAR_CONFIG_REC* null, %struct.STATUSBAR_CONFIG_REC** %3, align 8, !dbg !1965
  br label %47, !dbg !1965

; <label>:47:                                     ; preds = %46, %39
  %48 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %3, align 8, !dbg !1966
  ret %struct.STATUSBAR_CONFIG_REC* %48, !dbg !1966
}

declare i32 @config_node_get_bool(%struct._CONFIG_NODE*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal %struct.STATUSBAR_CONFIG_REC* @statusbar_config_create(%struct.STATUSBAR_GROUP_REC*, i8*) #0 !dbg !1967 {
  %3 = alloca %struct.STATUSBAR_CONFIG_REC*, align 8
  %4 = alloca %struct.STATUSBAR_GROUP_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.STATUSBAR_CONFIG_REC*, align 8
  store %struct.STATUSBAR_GROUP_REC* %0, %struct.STATUSBAR_GROUP_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.STATUSBAR_GROUP_REC** %4, metadata !1968, metadata !238), !dbg !1969
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1970, metadata !238), !dbg !1971
  call void @llvm.dbg.declare(metadata %struct.STATUSBAR_CONFIG_REC** %6, metadata !1972, metadata !238), !dbg !1973
  br label %7, !dbg !1974, !llvm.loop !1975

; <label>:7:                                      ; preds = %2
  %8 = load %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_GROUP_REC** %4, align 8, !dbg !1976
  %9 = icmp ne %struct.STATUSBAR_GROUP_REC* %8, null, !dbg !1980
  br i1 %9, label %10, label %11, !dbg !1976

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !1981

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.statusbar_config_create, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0)), !dbg !1984
  store %struct.STATUSBAR_CONFIG_REC* null, %struct.STATUSBAR_CONFIG_REC** %3, align 8, !dbg !1987
  br label %36, !dbg !1987

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !1988

; <label>:13:                                     ; preds = %12
  br label %14, !dbg !1990, !llvm.loop !1991

; <label>:14:                                     ; preds = %13
  %15 = load i8*, i8** %5, align 8, !dbg !1992
  %16 = icmp ne i8* %15, null, !dbg !1996
  br i1 %16, label %17, label %18, !dbg !1992

; <label>:17:                                     ; preds = %14
  br label %19, !dbg !1997

; <label>:18:                                     ; preds = %14
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.statusbar_config_create, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0)), !dbg !2000
  store %struct.STATUSBAR_CONFIG_REC* null, %struct.STATUSBAR_CONFIG_REC** %3, align 8, !dbg !2003
  br label %36, !dbg !2003

; <label>:19:                                     ; preds = %17
  br label %20, !dbg !2004

; <label>:20:                                     ; preds = %19
  %21 = call noalias i8* @g_malloc0_n(i64 1, i64 32), !dbg !2006
  %22 = bitcast i8* %21 to %struct.STATUSBAR_CONFIG_REC*, !dbg !2007
  store %struct.STATUSBAR_CONFIG_REC* %22, %struct.STATUSBAR_CONFIG_REC** %6, align 8, !dbg !2008
  %23 = load %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_GROUP_REC** %4, align 8, !dbg !2009
  %24 = getelementptr inbounds %struct.STATUSBAR_GROUP_REC, %struct.STATUSBAR_GROUP_REC* %23, i32 0, i32 1, !dbg !2010
  %25 = load %struct._GSList*, %struct._GSList** %24, align 8, !dbg !2010
  %26 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %6, align 8, !dbg !2011
  %27 = bitcast %struct.STATUSBAR_CONFIG_REC* %26 to i8*, !dbg !2011
  %28 = call %struct._GSList* @g_slist_append(%struct._GSList* %25, i8* %27), !dbg !2012
  %29 = load %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_GROUP_REC** %4, align 8, !dbg !2013
  %30 = getelementptr inbounds %struct.STATUSBAR_GROUP_REC, %struct.STATUSBAR_GROUP_REC* %29, i32 0, i32 1, !dbg !2014
  store %struct._GSList* %28, %struct._GSList** %30, align 8, !dbg !2015
  %31 = load i8*, i8** %5, align 8, !dbg !2016
  %32 = call noalias i8* @g_strdup(i8* %31), !dbg !2017
  %33 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %6, align 8, !dbg !2018
  %34 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %33, i32 0, i32 0, !dbg !2019
  store i8* %32, i8** %34, align 8, !dbg !2020
  %35 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %6, align 8, !dbg !2021
  store %struct.STATUSBAR_CONFIG_REC* %35, %struct.STATUSBAR_CONFIG_REC** %3, align 8, !dbg !2022
  br label %36, !dbg !2022

; <label>:36:                                     ; preds = %20, %18, %11
  %37 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %3, align 8, !dbg !2023
  ret %struct.STATUSBAR_CONFIG_REC* %37, !dbg !2023
}

declare i8* @config_node_get_str(%struct._CONFIG_NODE*, i8*, i8*) #2

declare i32 @g_ascii_strcasecmp(i8*, i8*) #2

declare i32 @config_node_get_int(%struct._CONFIG_NODE*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @statusbar_read_item(%struct.STATUSBAR_CONFIG_REC*, %struct._CONFIG_NODE*) #0 !dbg !2024 {
  %3 = alloca %struct.STATUSBAR_CONFIG_REC*, align 8
  %4 = alloca %struct._CONFIG_NODE*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.STATUSBAR_CONFIG_REC* %0, %struct.STATUSBAR_CONFIG_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.STATUSBAR_CONFIG_REC** %3, metadata !2027, metadata !238), !dbg !2028
  store %struct._CONFIG_NODE* %1, %struct._CONFIG_NODE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %4, metadata !2029, metadata !238), !dbg !2030
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2031, metadata !238), !dbg !2032
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2033, metadata !238), !dbg !2034
  %7 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !2035
  %8 = call i32 @config_node_get_int(%struct._CONFIG_NODE* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i32 0), !dbg !2036
  store i32 %8, i32* %5, align 4, !dbg !2037
  %9 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !2038
  %10 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i32 0, i32 0)), !dbg !2039
  %11 = call i32 @g_strcmp0(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0)), !dbg !2040
  %12 = icmp eq i32 %11, 0, !dbg !2042
  %13 = zext i1 %12 to i32, !dbg !2042
  store i32 %13, i32* %6, align 4, !dbg !2043
  %14 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %3, align 8, !dbg !2044
  %15 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !2045
  %16 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %15, i32 0, i32 1, !dbg !2046
  %17 = load i8*, i8** %16, align 8, !dbg !2046
  %18 = load i32, i32* %5, align 4, !dbg !2047
  %19 = load i32, i32* %6, align 4, !dbg !2048
  %20 = call %struct.SBAR_ITEM_CONFIG_REC* @statusbar_item_config_create(%struct.STATUSBAR_CONFIG_REC* %14, i8* %17, i32 %18, i32 %19), !dbg !2049
  ret void, !dbg !2050
}

declare noalias i8* @g_malloc0_n(i64, i64) #2

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #2

declare noalias i8* @g_strdup(i8*) #2

declare i32 @g_strcmp0(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct.SBAR_ITEM_CONFIG_REC* @statusbar_item_config_create(%struct.STATUSBAR_CONFIG_REC*, i8*, i32, i32) #0 !dbg !2051 {
  %5 = alloca %struct.SBAR_ITEM_CONFIG_REC*, align 8
  %6 = alloca %struct.STATUSBAR_CONFIG_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.SBAR_ITEM_CONFIG_REC*, align 8
  store %struct.STATUSBAR_CONFIG_REC* %0, %struct.STATUSBAR_CONFIG_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.STATUSBAR_CONFIG_REC** %6, metadata !2054, metadata !238), !dbg !2055
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2056, metadata !238), !dbg !2057
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2058, metadata !238), !dbg !2059
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2060, metadata !238), !dbg !2061
  call void @llvm.dbg.declare(metadata %struct.SBAR_ITEM_CONFIG_REC** %10, metadata !2062, metadata !238), !dbg !2063
  br label %11, !dbg !2064, !llvm.loop !2065

; <label>:11:                                     ; preds = %4
  %12 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %6, align 8, !dbg !2066
  %13 = icmp ne %struct.STATUSBAR_CONFIG_REC* %12, null, !dbg !2070
  br i1 %13, label %14, label %15, !dbg !2066

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !2071

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.statusbar_item_config_create, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0)), !dbg !2074
  store %struct.SBAR_ITEM_CONFIG_REC* null, %struct.SBAR_ITEM_CONFIG_REC** %5, align 8, !dbg !2077
  br label %52, !dbg !2077

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !2078

; <label>:17:                                     ; preds = %16
  br label %18, !dbg !2080, !llvm.loop !2081

; <label>:18:                                     ; preds = %17
  %19 = load i8*, i8** %7, align 8, !dbg !2082
  %20 = icmp ne i8* %19, null, !dbg !2086
  br i1 %20, label %21, label %22, !dbg !2082

; <label>:21:                                     ; preds = %18
  br label %23, !dbg !2087

; <label>:22:                                     ; preds = %18
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.statusbar_item_config_create, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0)), !dbg !2090
  store %struct.SBAR_ITEM_CONFIG_REC* null, %struct.SBAR_ITEM_CONFIG_REC** %5, align 8, !dbg !2093
  br label %52, !dbg !2093

; <label>:23:                                     ; preds = %21
  br label %24, !dbg !2094

; <label>:24:                                     ; preds = %23
  %25 = call noalias i8* @g_malloc0_n(i64 1, i64 24), !dbg !2096
  %26 = bitcast i8* %25 to %struct.SBAR_ITEM_CONFIG_REC*, !dbg !2097
  store %struct.SBAR_ITEM_CONFIG_REC* %26, %struct.SBAR_ITEM_CONFIG_REC** %10, align 8, !dbg !2098
  %27 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %6, align 8, !dbg !2099
  %28 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %27, i32 0, i32 5, !dbg !2100
  %29 = load %struct._GSList*, %struct._GSList** %28, align 8, !dbg !2100
  %30 = load %struct.SBAR_ITEM_CONFIG_REC*, %struct.SBAR_ITEM_CONFIG_REC** %10, align 8, !dbg !2101
  %31 = bitcast %struct.SBAR_ITEM_CONFIG_REC* %30 to i8*, !dbg !2101
  %32 = call %struct._GSList* @g_slist_append(%struct._GSList* %29, i8* %31), !dbg !2102
  %33 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %6, align 8, !dbg !2103
  %34 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %33, i32 0, i32 5, !dbg !2104
  store %struct._GSList* %32, %struct._GSList** %34, align 8, !dbg !2105
  %35 = load i8*, i8** %7, align 8, !dbg !2106
  %36 = call noalias i8* @g_strdup(i8* %35), !dbg !2107
  %37 = load %struct.SBAR_ITEM_CONFIG_REC*, %struct.SBAR_ITEM_CONFIG_REC** %10, align 8, !dbg !2108
  %38 = getelementptr inbounds %struct.SBAR_ITEM_CONFIG_REC, %struct.SBAR_ITEM_CONFIG_REC* %37, i32 0, i32 0, !dbg !2109
  store i8* %36, i8** %38, align 8, !dbg !2110
  %39 = load i32, i32* %8, align 4, !dbg !2111
  %40 = load %struct.SBAR_ITEM_CONFIG_REC*, %struct.SBAR_ITEM_CONFIG_REC** %10, align 8, !dbg !2112
  %41 = getelementptr inbounds %struct.SBAR_ITEM_CONFIG_REC, %struct.SBAR_ITEM_CONFIG_REC* %40, i32 0, i32 2, !dbg !2113
  store i32 %39, i32* %41, align 8, !dbg !2114
  %42 = load i32, i32* %9, align 4, !dbg !2115
  %43 = load %struct.SBAR_ITEM_CONFIG_REC*, %struct.SBAR_ITEM_CONFIG_REC** %10, align 8, !dbg !2116
  %44 = getelementptr inbounds %struct.SBAR_ITEM_CONFIG_REC, %struct.SBAR_ITEM_CONFIG_REC* %43, i32 0, i32 3, !dbg !2117
  %45 = trunc i32 %42 to i8, !dbg !2118
  %46 = load i8, i8* %44, align 4, !dbg !2118
  %47 = and i8 %45, 1, !dbg !2118
  %48 = and i8 %46, -2, !dbg !2118
  %49 = or i8 %48, %47, !dbg !2118
  store i8 %49, i8* %44, align 4, !dbg !2118
  %50 = zext i8 %47 to i32, !dbg !2118
  %51 = load %struct.SBAR_ITEM_CONFIG_REC*, %struct.SBAR_ITEM_CONFIG_REC** %10, align 8, !dbg !2119
  store %struct.SBAR_ITEM_CONFIG_REC* %51, %struct.SBAR_ITEM_CONFIG_REC** %5, align 8, !dbg !2120
  br label %52, !dbg !2120

; <label>:52:                                     ; preds = %24, %22, %15
  %53 = load %struct.SBAR_ITEM_CONFIG_REC*, %struct.SBAR_ITEM_CONFIG_REC** %5, align 8, !dbg !2121
  ret %struct.SBAR_ITEM_CONFIG_REC* %53, !dbg !2121
}

declare %struct.STATUSBAR_REC* @statusbar_create(%struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_CONFIG_REC*, %struct.MAIN_WINDOW_REC*) #2

declare void @statusbar_redraw(%struct.STATUSBAR_REC*, i32) #2

declare i32 @cmd_get_params(i8*, i8**, i32, ...) #2

declare noalias i8* @g_strdup_printf(i8*, ...) #2

declare %struct.COMMAND_REC* @command_find(i8*) #2

declare void @cmd_params_free(i8*) #2

declare void @command_runsub(i8*, i8*, i8*, i8*) #2

declare void @printformat_module(i8*, i8*, i8*, i32, i32, ...) #2

; Function Attrs: nounwind uwtable
define internal i8* @sbar_get_type(%struct.STATUSBAR_CONFIG_REC*) #0 !dbg !2122 {
  %2 = alloca %struct.STATUSBAR_CONFIG_REC*, align 8
  store %struct.STATUSBAR_CONFIG_REC* %0, %struct.STATUSBAR_CONFIG_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.STATUSBAR_CONFIG_REC** %2, metadata !2125, metadata !238), !dbg !2126
  %3 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %2, align 8, !dbg !2127
  %4 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %3, i32 0, i32 1, !dbg !2128
  %5 = load i32, i32* %4, align 8, !dbg !2128
  %6 = icmp eq i32 %5, 1, !dbg !2129
  br i1 %6, label %7, label %8, !dbg !2127

; <label>:7:                                      ; preds = %1
  br label %14, !dbg !2130

; <label>:8:                                      ; preds = %1
  %9 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %2, align 8, !dbg !2132
  %10 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %9, i32 0, i32 1, !dbg !2133
  %11 = load i32, i32* %10, align 8, !dbg !2133
  %12 = icmp eq i32 %11, 2, !dbg !2134
  %13 = select i1 %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0), !dbg !2132
  br label %14, !dbg !2135

; <label>:14:                                     ; preds = %8, %7
  %15 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), %7 ], [ %13, %8 ], !dbg !2137
  ret i8* %15, !dbg !2139
}

; Function Attrs: nounwind uwtable
define internal i8* @sbar_get_placement(%struct.STATUSBAR_CONFIG_REC*) #0 !dbg !2140 {
  %2 = alloca %struct.STATUSBAR_CONFIG_REC*, align 8
  store %struct.STATUSBAR_CONFIG_REC* %0, %struct.STATUSBAR_CONFIG_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.STATUSBAR_CONFIG_REC** %2, metadata !2141, metadata !238), !dbg !2142
  %3 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %2, align 8, !dbg !2143
  %4 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %3, i32 0, i32 2, !dbg !2144
  %5 = load i32, i32* %4, align 4, !dbg !2144
  %6 = icmp eq i32 %5, 1, !dbg !2145
  br i1 %6, label %7, label %8, !dbg !2143

; <label>:7:                                      ; preds = %1
  br label %14, !dbg !2146

; <label>:8:                                      ; preds = %1
  %9 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %2, align 8, !dbg !2148
  %10 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %9, i32 0, i32 2, !dbg !2149
  %11 = load i32, i32* %10, align 4, !dbg !2149
  %12 = icmp eq i32 %11, 2, !dbg !2150
  %13 = select i1 %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0), !dbg !2148
  br label %14, !dbg !2151

; <label>:14:                                     ; preds = %8, %7
  %15 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), %7 ], [ %13, %8 ], !dbg !2153
  ret i8* %15, !dbg !2155
}

; Function Attrs: nounwind uwtable
define internal i8* @sbar_get_visibility(%struct.STATUSBAR_CONFIG_REC*) #0 !dbg !2156 {
  %2 = alloca %struct.STATUSBAR_CONFIG_REC*, align 8
  store %struct.STATUSBAR_CONFIG_REC* %0, %struct.STATUSBAR_CONFIG_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.STATUSBAR_CONFIG_REC** %2, metadata !2157, metadata !238), !dbg !2158
  %3 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %2, align 8, !dbg !2159
  %4 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %3, i32 0, i32 4, !dbg !2160
  %5 = load i32, i32* %4, align 4, !dbg !2160
  %6 = icmp eq i32 %5, 1, !dbg !2161
  br i1 %6, label %7, label %8, !dbg !2159

; <label>:7:                                      ; preds = %1
  br label %22, !dbg !2162

; <label>:8:                                      ; preds = %1
  %9 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %2, align 8, !dbg !2164
  %10 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %9, i32 0, i32 4, !dbg !2165
  %11 = load i32, i32* %10, align 4, !dbg !2165
  %12 = icmp eq i32 %11, 2, !dbg !2166
  br i1 %12, label %13, label %14, !dbg !2164

; <label>:13:                                     ; preds = %8
  br label %20, !dbg !2167

; <label>:14:                                     ; preds = %8
  %15 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %2, align 8, !dbg !2168
  %16 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %15, i32 0, i32 4, !dbg !2169
  %17 = load i32, i32* %16, align 4, !dbg !2169
  %18 = icmp eq i32 %17, 3, !dbg !2170
  %19 = select i1 %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0), !dbg !2168
  br label %20, !dbg !2171

; <label>:20:                                     ; preds = %14, %13
  %21 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), %13 ], [ %19, %14 ], !dbg !2173
  br label %22, !dbg !2175

; <label>:22:                                     ; preds = %20, %7
  %23 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), %7 ], [ %21, %20 ], !dbg !2176
  ret i8* %23, !dbg !2177
}

declare i32 @signal_emit(i8*, i32, ...) #2

declare void @signal_stop() #2

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct._CONFIG_NODE* @sbar_node(i8*, i32) #0 !dbg !2178 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.STATUSBAR_CONFIG_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2181, metadata !238), !dbg !2182
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2183, metadata !238), !dbg !2184
  call void @llvm.dbg.declare(metadata %struct.STATUSBAR_CONFIG_REC** %5, metadata !2185, metadata !238), !dbg !2186
  %6 = load %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_GROUP_REC** @active_statusbar_group, align 8, !dbg !2187
  %7 = load i8*, i8** %3, align 8, !dbg !2188
  %8 = call %struct.STATUSBAR_CONFIG_REC* @statusbar_config_find(%struct.STATUSBAR_GROUP_REC* %6, i8* %7), !dbg !2189
  store %struct.STATUSBAR_CONFIG_REC* %8, %struct.STATUSBAR_CONFIG_REC** %5, align 8, !dbg !2186
  %9 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %5, align 8, !dbg !2190
  %10 = icmp ne %struct.STATUSBAR_CONFIG_REC* %9, null, !dbg !2192
  br i1 %10, label %11, label %15, !dbg !2193

; <label>:11:                                     ; preds = %2
  %12 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %5, align 8, !dbg !2194
  %13 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %12, i32 0, i32 0, !dbg !2196
  %14 = load i8*, i8** %13, align 8, !dbg !2196
  store i8* %14, i8** %3, align 8, !dbg !2197
  br label %15, !dbg !2198

; <label>:15:                                     ; preds = %11, %2
  %16 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !2199
  %17 = load i8*, i8** %3, align 8, !dbg !2200
  %18 = load i32, i32* %4, align 4, !dbg !2201
  %19 = call %struct._CONFIG_NODE* @config_sbar_node(%struct._CONFIG_REC* %16, i8* %17, i32 %18), !dbg !2202
  ret %struct._CONFIG_NODE* %19, !dbg !2203
}

; Function Attrs: nounwind uwtable
define internal i32 @sbar_node_isdefault(i8*) #0 !dbg !2204 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._CONFIG_REC*, align 8
  %4 = alloca %struct._CONFIG_NODE*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2207, metadata !238), !dbg !2208
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %3, metadata !2209, metadata !238), !dbg !2210
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %4, metadata !2211, metadata !238), !dbg !2212
  %5 = call %struct._CONFIG_REC* @config_open(i8* null, i32 -1), !dbg !2213
  store %struct._CONFIG_REC* %5, %struct._CONFIG_REC** %3, align 8, !dbg !2214
  %6 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %3, align 8, !dbg !2215
  %7 = load i8*, i8** @default_config, align 8, !dbg !2216
  %8 = call i32 @config_parse_data(%struct._CONFIG_REC* %6, i8* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0)), !dbg !2217
  %9 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %3, align 8, !dbg !2218
  %10 = load i8*, i8** %2, align 8, !dbg !2219
  %11 = call %struct._CONFIG_NODE* @config_sbar_node(%struct._CONFIG_REC* %9, i8* %10, i32 0), !dbg !2220
  store %struct._CONFIG_NODE* %11, %struct._CONFIG_NODE** %4, align 8, !dbg !2221
  %12 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %3, align 8, !dbg !2222
  call void @config_close(%struct._CONFIG_REC* %12), !dbg !2223
  %13 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !2224
  %14 = icmp ne %struct._CONFIG_NODE* %13, null, !dbg !2225
  %15 = select i1 %14, i32 1, i32 0, !dbg !2224
  ret i32 %15, !dbg !2226
}

declare void @config_node_set_str(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i8*) #2

declare void @config_node_set_bool(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i32) #2

declare void @config_node_set_int(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i32) #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

; Function Attrs: nounwind uwtable
define internal %struct._CONFIG_NODE* @config_sbar_node(%struct._CONFIG_REC*, i8*, i32) #0 !dbg !2227 {
  %4 = alloca %struct._CONFIG_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._CONFIG_NODE*, align 8
  store %struct._CONFIG_REC* %0, %struct._CONFIG_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %4, metadata !2230, metadata !238), !dbg !2231
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2232, metadata !238), !dbg !2233
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2234, metadata !238), !dbg !2235
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %7, metadata !2236, metadata !238), !dbg !2237
  %8 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !2238
  %9 = load i32, i32* %6, align 4, !dbg !2239
  %10 = call %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 %9), !dbg !2240
  store %struct._CONFIG_NODE* %10, %struct._CONFIG_NODE** %7, align 8, !dbg !2241
  %11 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !2242
  %12 = icmp ne %struct._CONFIG_NODE* %11, null, !dbg !2244
  br i1 %12, label %13, label %23, !dbg !2245

; <label>:13:                                     ; preds = %3
  %14 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !2246
  %15 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !2248
  %16 = load %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_GROUP_REC** @active_statusbar_group, align 8, !dbg !2249
  %17 = getelementptr inbounds %struct.STATUSBAR_GROUP_REC, %struct.STATUSBAR_GROUP_REC* %16, i32 0, i32 0, !dbg !2250
  %18 = load i8*, i8** %17, align 8, !dbg !2250
  %19 = load i32, i32* %6, align 4, !dbg !2251
  %20 = icmp ne i32 %19, 0, !dbg !2251
  %21 = select i1 %20, i32 2, i32 -1, !dbg !2251
  %22 = call %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC* %14, %struct._CONFIG_NODE* %15, i8* %18, i32 %21), !dbg !2252
  store %struct._CONFIG_NODE* %22, %struct._CONFIG_NODE** %7, align 8, !dbg !2253
  br label %23, !dbg !2254

; <label>:23:                                     ; preds = %13, %3
  %24 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !2255
  %25 = icmp ne %struct._CONFIG_NODE* %24, null, !dbg !2257
  br i1 %25, label %26, label %34, !dbg !2258

; <label>:26:                                     ; preds = %23
  %27 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !2259
  %28 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !2261
  %29 = load i8*, i8** %5, align 8, !dbg !2262
  %30 = load i32, i32* %6, align 4, !dbg !2263
  %31 = icmp ne i32 %30, 0, !dbg !2263
  %32 = select i1 %31, i32 2, i32 -1, !dbg !2263
  %33 = call %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC* %27, %struct._CONFIG_NODE* %28, i8* %29, i32 %32), !dbg !2264
  store %struct._CONFIG_NODE* %33, %struct._CONFIG_NODE** %7, align 8, !dbg !2265
  br label %34, !dbg !2266

; <label>:34:                                     ; preds = %26, %23
  %35 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !2267
  ret %struct._CONFIG_NODE* %35, !dbg !2268
}

; Function Attrs: nounwind uwtable
define internal void @cmd_statusbar_print_info(i8*) #0 !dbg !2269 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.STATUSBAR_CONFIG_REC*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2270, metadata !238), !dbg !2271
  call void @llvm.dbg.declare(metadata %struct.STATUSBAR_CONFIG_REC** %3, metadata !2272, metadata !238), !dbg !2273
  %4 = load %struct.STATUSBAR_GROUP_REC*, %struct.STATUSBAR_GROUP_REC** @active_statusbar_group, align 8, !dbg !2274
  %5 = load i8*, i8** %2, align 8, !dbg !2275
  %6 = call %struct.STATUSBAR_CONFIG_REC* @statusbar_config_find(%struct.STATUSBAR_GROUP_REC* %4, i8* %5), !dbg !2276
  store %struct.STATUSBAR_CONFIG_REC* %6, %struct.STATUSBAR_CONFIG_REC** %3, align 8, !dbg !2273
  %7 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %3, align 8, !dbg !2277
  %8 = icmp ne %struct.STATUSBAR_CONFIG_REC* %7, null, !dbg !2279
  br i1 %8, label %9, label %11, !dbg !2280

; <label>:9:                                      ; preds = %1
  %10 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %3, align 8, !dbg !2281
  call void @statusbar_print(%struct.STATUSBAR_CONFIG_REC* %10), !dbg !2283
  br label %23, !dbg !2284

; <label>:11:                                     ; preds = %1
  %12 = load i8*, i8** %2, align 8, !dbg !2285
  %13 = call %struct._CONFIG_NODE* @sbar_node(i8* %12, i32 0), !dbg !2287
  %14 = icmp ne %struct._CONFIG_NODE* %13, null, !dbg !2288
  br i1 %14, label %19, label %15, !dbg !2289

; <label>:15:                                     ; preds = %11
  %16 = load i8*, i8** %2, align 8, !dbg !2290
  %17 = call i32 @sbar_node_isdefault(i8* %16), !dbg !2292
  %18 = icmp ne i32 %17, 0, !dbg !2292
  br i1 %18, label %19, label %21, !dbg !2293

; <label>:19:                                     ; preds = %15, %11
  %20 = load i8*, i8** %2, align 8, !dbg !2294
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 1048576, i32 35, i8* %20), !dbg !2295
  br label %23, !dbg !2295

; <label>:21:                                     ; preds = %15
  %22 = load i8*, i8** %2, align 8, !dbg !2296
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 1048576, i32 34, i8* %22), !dbg !2297
  br label %23

; <label>:23:                                     ; preds = %9, %21, %19
  ret void, !dbg !2298
}

; Function Attrs: nounwind uwtable
define internal void @statusbar_print(%struct.STATUSBAR_CONFIG_REC*) #0 !dbg !2299 {
  %2 = alloca %struct.STATUSBAR_CONFIG_REC*, align 8
  store %struct.STATUSBAR_CONFIG_REC* %0, %struct.STATUSBAR_CONFIG_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.STATUSBAR_CONFIG_REC** %2, metadata !2302, metadata !238), !dbg !2303
  %3 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %2, align 8, !dbg !2304
  %4 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %3, i32 0, i32 0, !dbg !2305
  %5 = load i8*, i8** %4, align 8, !dbg !2305
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 26, i8* %5), !dbg !2306
  %6 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %2, align 8, !dbg !2307
  %7 = call i8* @sbar_get_type(%struct.STATUSBAR_CONFIG_REC* %6), !dbg !2308
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 27, i8* %7), !dbg !2309
  %8 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %2, align 8, !dbg !2311
  %9 = call i8* @sbar_get_placement(%struct.STATUSBAR_CONFIG_REC* %8), !dbg !2312
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 28, i8* %9), !dbg !2313
  %10 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %2, align 8, !dbg !2314
  %11 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %10, i32 0, i32 3, !dbg !2315
  %12 = load i32, i32* %11, align 8, !dbg !2315
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 29, i32 %12), !dbg !2316
  %13 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %2, align 8, !dbg !2317
  %14 = call i8* @sbar_get_visibility(%struct.STATUSBAR_CONFIG_REC* %13), !dbg !2318
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 30, i8* %14), !dbg !2319
  %15 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %2, align 8, !dbg !2320
  %16 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %15, i32 0, i32 5, !dbg !2322
  %17 = load %struct._GSList*, %struct._GSList** %16, align 8, !dbg !2322
  %18 = icmp ne %struct._GSList* %17, null, !dbg !2323
  br i1 %18, label %19, label %21, !dbg !2324

; <label>:19:                                     ; preds = %1
  %20 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %2, align 8, !dbg !2325
  call void @statusbar_list_items(%struct.STATUSBAR_CONFIG_REC* %20), !dbg !2326
  br label %21, !dbg !2326

; <label>:21:                                     ; preds = %19, %1
  ret void, !dbg !2327
}

; Function Attrs: nounwind uwtable
define internal void @statusbar_list_items(%struct.STATUSBAR_CONFIG_REC*) #0 !dbg !2328 {
  %2 = alloca %struct.STATUSBAR_CONFIG_REC*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct.SBAR_ITEM_CONFIG_REC*, align 8
  store %struct.STATUSBAR_CONFIG_REC* %0, %struct.STATUSBAR_CONFIG_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.STATUSBAR_CONFIG_REC** %2, metadata !2329, metadata !238), !dbg !2330
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !2331, metadata !238), !dbg !2332
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 31), !dbg !2333
  %5 = load %struct.STATUSBAR_CONFIG_REC*, %struct.STATUSBAR_CONFIG_REC** %2, align 8, !dbg !2334
  %6 = getelementptr inbounds %struct.STATUSBAR_CONFIG_REC, %struct.STATUSBAR_CONFIG_REC* %5, i32 0, i32 5, !dbg !2336
  %7 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !2336
  store %struct._GSList* %7, %struct._GSList** %3, align 8, !dbg !2337
  br label %8, !dbg !2338

; <label>:8:                                      ; preds = %29, %1
  %9 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !2339
  %10 = icmp ne %struct._GSList* %9, null, !dbg !2342
  br i1 %10, label %11, label %33, !dbg !2343

; <label>:11:                                     ; preds = %8
  call void @llvm.dbg.declare(metadata %struct.SBAR_ITEM_CONFIG_REC** %4, metadata !2344, metadata !238), !dbg !2346
  %12 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !2347
  %13 = getelementptr inbounds %struct._GSList, %struct._GSList* %12, i32 0, i32 0, !dbg !2348
  %14 = load i8*, i8** %13, align 8, !dbg !2348
  %15 = bitcast i8* %14 to %struct.SBAR_ITEM_CONFIG_REC*, !dbg !2347
  store %struct.SBAR_ITEM_CONFIG_REC* %15, %struct.SBAR_ITEM_CONFIG_REC** %4, align 8, !dbg !2346
  %16 = load %struct.SBAR_ITEM_CONFIG_REC*, %struct.SBAR_ITEM_CONFIG_REC** %4, align 8, !dbg !2349
  %17 = getelementptr inbounds %struct.SBAR_ITEM_CONFIG_REC, %struct.SBAR_ITEM_CONFIG_REC* %16, i32 0, i32 0, !dbg !2350
  %18 = load i8*, i8** %17, align 8, !dbg !2350
  %19 = load %struct.SBAR_ITEM_CONFIG_REC*, %struct.SBAR_ITEM_CONFIG_REC** %4, align 8, !dbg !2351
  %20 = getelementptr inbounds %struct.SBAR_ITEM_CONFIG_REC, %struct.SBAR_ITEM_CONFIG_REC* %19, i32 0, i32 2, !dbg !2352
  %21 = load i32, i32* %20, align 8, !dbg !2352
  %22 = load %struct.SBAR_ITEM_CONFIG_REC*, %struct.SBAR_ITEM_CONFIG_REC** %4, align 8, !dbg !2353
  %23 = getelementptr inbounds %struct.SBAR_ITEM_CONFIG_REC, %struct.SBAR_ITEM_CONFIG_REC* %22, i32 0, i32 3, !dbg !2354
  %24 = load i8, i8* %23, align 4, !dbg !2354
  %25 = and i8 %24, 1, !dbg !2354
  %26 = zext i8 %25 to i32, !dbg !2354
  %27 = icmp ne i32 %26, 0, !dbg !2353
  %28 = select i1 %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0), !dbg !2353
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 33, i8* %18, i32 %21, i8* %28), !dbg !2355
  br label %29, !dbg !2356

; <label>:29:                                     ; preds = %11
  %30 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !2357
  %31 = getelementptr inbounds %struct._GSList, %struct._GSList* %30, i32 0, i32 1, !dbg !2359
  %32 = load %struct._GSList*, %struct._GSList** %31, align 8, !dbg !2359
  store %struct._GSList* %32, %struct._GSList** %3, align 8, !dbg !2360
  br label %8, !dbg !2361, !llvm.loop !2362

; <label>:33:                                     ; preds = %8
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 32), !dbg !2364
  ret void, !dbg !2365
}

; Function Attrs: nounwind uwtable
define internal %struct._CONFIG_NODE* @sbar_find_item_with_defaults(i8*, i8*, i32) #0 !dbg !2366 {
  %4 = alloca %struct._CONFIG_NODE*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._CONFIG_REC*, align 8
  %9 = alloca %struct._CONFIG_REC*, align 8
  %10 = alloca %struct._CONFIG_NODE*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2369, metadata !238), !dbg !2370
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2371, metadata !238), !dbg !2372
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2373, metadata !238), !dbg !2374
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %8, metadata !2375, metadata !238), !dbg !2376
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %9, metadata !2377, metadata !238), !dbg !2378
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %10, metadata !2379, metadata !238), !dbg !2380
  store %struct._CONFIG_REC* null, %struct._CONFIG_REC** %9, align 8, !dbg !2381
  %11 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !2382
  store %struct._CONFIG_REC* %11, %struct._CONFIG_REC** %8, align 8, !dbg !2383
  %12 = load i8*, i8** %5, align 8, !dbg !2384
  %13 = call %struct._CONFIG_NODE* @sbar_node(i8* %12, i32 0), !dbg !2385
  store %struct._CONFIG_NODE* %13, %struct._CONFIG_NODE** %10, align 8, !dbg !2386
  %14 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %10, align 8, !dbg !2387
  %15 = icmp eq %struct._CONFIG_NODE* %14, null, !dbg !2389
  br i1 %15, label %16, label %24, !dbg !2390

; <label>:16:                                     ; preds = %3
  %17 = call %struct._CONFIG_REC* @config_open(i8* null, i32 -1), !dbg !2391
  store %struct._CONFIG_REC* %17, %struct._CONFIG_REC** %8, align 8, !dbg !2393
  store %struct._CONFIG_REC* %17, %struct._CONFIG_REC** %9, align 8, !dbg !2394
  %18 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %8, align 8, !dbg !2395
  %19 = load i8*, i8** @default_config, align 8, !dbg !2396
  %20 = call i32 @config_parse_data(%struct._CONFIG_REC* %18, i8* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0)), !dbg !2397
  %21 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %8, align 8, !dbg !2398
  %22 = load i8*, i8** %5, align 8, !dbg !2399
  %23 = call %struct._CONFIG_NODE* @config_sbar_node(%struct._CONFIG_REC* %21, i8* %22, i32 0), !dbg !2400
  store %struct._CONFIG_NODE* %23, %struct._CONFIG_NODE** %10, align 8, !dbg !2401
  br label %24, !dbg !2402

; <label>:24:                                     ; preds = %16, %3
  %25 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %10, align 8, !dbg !2403
  %26 = icmp eq %struct._CONFIG_NODE* %25, null, !dbg !2405
  br i1 %26, label %27, label %34, !dbg !2406

; <label>:27:                                     ; preds = %24
  %28 = load i8*, i8** %5, align 8, !dbg !2407
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 1048576, i32 34, i8* %28), !dbg !2409
  %29 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %9, align 8, !dbg !2410
  %30 = icmp ne %struct._CONFIG_REC* %29, null, !dbg !2412
  br i1 %30, label %31, label %33, !dbg !2413

; <label>:31:                                     ; preds = %27
  %32 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %9, align 8, !dbg !2414
  call void @config_close(%struct._CONFIG_REC* %32), !dbg !2415
  br label %33, !dbg !2415

; <label>:33:                                     ; preds = %31, %27
  store %struct._CONFIG_NODE* null, %struct._CONFIG_NODE** %4, align 8, !dbg !2416
  br label %74, !dbg !2416

; <label>:34:                                     ; preds = %24
  %35 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %8, align 8, !dbg !2417
  %36 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %10, align 8, !dbg !2418
  %37 = load i32, i32* %7, align 4, !dbg !2419
  %38 = call %struct._CONFIG_NODE* @config_sbar_items_section(%struct._CONFIG_REC* %35, %struct._CONFIG_NODE* %36, i32 %37), !dbg !2420
  store %struct._CONFIG_NODE* %38, %struct._CONFIG_NODE** %10, align 8, !dbg !2421
  %39 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %10, align 8, !dbg !2422
  %40 = icmp eq %struct._CONFIG_NODE* %39, null, !dbg !2424
  br i1 %40, label %50, label %41, !dbg !2425

; <label>:41:                                     ; preds = %34
  %42 = load i32, i32* %7, align 4, !dbg !2426
  %43 = icmp ne i32 %42, 0, !dbg !2426
  br i1 %43, label %57, label %44, !dbg !2428

; <label>:44:                                     ; preds = %41
  %45 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %8, align 8, !dbg !2429
  %46 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %10, align 8, !dbg !2431
  %47 = load i8*, i8** %6, align 8, !dbg !2432
  %48 = call %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC* %45, %struct._CONFIG_NODE* %46, i8* %47, i32 -1), !dbg !2433
  %49 = icmp eq %struct._CONFIG_NODE* %48, null, !dbg !2434
  br i1 %49, label %50, label %57, !dbg !2435

; <label>:50:                                     ; preds = %44, %34
  %51 = load i8*, i8** %6, align 8, !dbg !2436
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 1048576, i32 36, i8* %51), !dbg !2438
  %52 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %9, align 8, !dbg !2439
  %53 = icmp ne %struct._CONFIG_REC* %52, null, !dbg !2441
  br i1 %53, label %54, label %56, !dbg !2442

; <label>:54:                                     ; preds = %50
  %55 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %9, align 8, !dbg !2443
  call void @config_close(%struct._CONFIG_REC* %55), !dbg !2444
  br label %56, !dbg !2444

; <label>:56:                                     ; preds = %54, %50
  store %struct._CONFIG_NODE* null, %struct._CONFIG_NODE** %4, align 8, !dbg !2445
  br label %74, !dbg !2445

; <label>:57:                                     ; preds = %44, %41
  %58 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %8, align 8, !dbg !2446
  %59 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !2448
  %60 = icmp ne %struct._CONFIG_REC* %58, %59, !dbg !2449
  br i1 %60, label %61, label %67, !dbg !2450

; <label>:61:                                     ; preds = %57
  %62 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %8, align 8, !dbg !2451
  %63 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %10, align 8, !dbg !2453
  %64 = load i8*, i8** %5, align 8, !dbg !2454
  %65 = call %struct._CONFIG_NODE* @sbar_node(i8* %64, i32 1), !dbg !2455
  %66 = call %struct._CONFIG_NODE* @statusbar_copy_config(%struct._CONFIG_REC* %62, %struct._CONFIG_NODE* %63, %struct._CONFIG_NODE* %65), !dbg !2456
  store %struct._CONFIG_NODE* %66, %struct._CONFIG_NODE** %10, align 8, !dbg !2458
  br label %67, !dbg !2459

; <label>:67:                                     ; preds = %61, %57
  %68 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %9, align 8, !dbg !2460
  %69 = icmp ne %struct._CONFIG_REC* %68, null, !dbg !2462
  br i1 %69, label %70, label %72, !dbg !2463

; <label>:70:                                     ; preds = %67
  %71 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %9, align 8, !dbg !2464
  call void @config_close(%struct._CONFIG_REC* %71), !dbg !2465
  br label %72, !dbg !2465

; <label>:72:                                     ; preds = %70, %67
  %73 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %10, align 8, !dbg !2466
  store %struct._CONFIG_NODE* %73, %struct._CONFIG_NODE** %4, align 8, !dbg !2467
  br label %74, !dbg !2467

; <label>:74:                                     ; preds = %72, %56, %33
  %75 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !2468
  ret %struct._CONFIG_NODE* %75, !dbg !2468
}

declare i32 @config_node_index(%struct._CONFIG_NODE*, i8*) #2

declare %struct._CONFIG_NODE* @config_node_section_index(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal %struct._CONFIG_NODE* @config_sbar_items_section(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i32) #0 !dbg !2469 {
  %4 = alloca %struct._CONFIG_REC*, align 8
  %5 = alloca %struct._CONFIG_NODE*, align 8
  %6 = alloca i32, align 4
  store %struct._CONFIG_REC* %0, %struct._CONFIG_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %4, metadata !2472, metadata !238), !dbg !2473
  store %struct._CONFIG_NODE* %1, %struct._CONFIG_NODE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %5, metadata !2474, metadata !238), !dbg !2475
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2476, metadata !238), !dbg !2477
  %7 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !2478
  %8 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %5, align 8, !dbg !2479
  %9 = load i32, i32* %6, align 4, !dbg !2480
  %10 = icmp ne i32 %9, 0, !dbg !2480
  %11 = select i1 %10, i32 2, i32 -1, !dbg !2480
  %12 = call %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC* %7, %struct._CONFIG_NODE* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %11), !dbg !2481
  ret %struct._CONFIG_NODE* %12, !dbg !2482
}

; Function Attrs: nounwind uwtable
define internal %struct._CONFIG_NODE* @statusbar_copy_config(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, %struct._CONFIG_NODE*) #0 !dbg !2483 {
  %4 = alloca %struct._CONFIG_NODE*, align 8
  %5 = alloca %struct._CONFIG_REC*, align 8
  %6 = alloca %struct._CONFIG_NODE*, align 8
  %7 = alloca %struct._CONFIG_NODE*, align 8
  %8 = alloca %struct._GSList*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct._CONFIG_NODE*, align 8
  %12 = alloca %struct._CONFIG_NODE*, align 8
  store %struct._CONFIG_REC* %0, %struct._CONFIG_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %5, metadata !2486, metadata !238), !dbg !2487
  store %struct._CONFIG_NODE* %1, %struct._CONFIG_NODE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %6, metadata !2488, metadata !238), !dbg !2489
  store %struct._CONFIG_NODE* %2, %struct._CONFIG_NODE** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %7, metadata !2490, metadata !238), !dbg !2491
  call void @llvm.dbg.declare(metadata %struct._GSList** %8, metadata !2492, metadata !238), !dbg !2493
  br label %13, !dbg !2494, !llvm.loop !2495

; <label>:13:                                     ; preds = %3
  %14 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !2496
  %15 = icmp ne %struct._CONFIG_NODE* %14, null, !dbg !2500
  br i1 %15, label %16, label %17, !dbg !2496

; <label>:16:                                     ; preds = %13
  br label %18, !dbg !2501

; <label>:17:                                     ; preds = %13
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.statusbar_copy_config, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.59, i32 0, i32 0)), !dbg !2504
  store %struct._CONFIG_NODE* null, %struct._CONFIG_NODE** %4, align 8, !dbg !2507
  br label %67, !dbg !2507

; <label>:18:                                     ; preds = %16
  br label %19, !dbg !2508

; <label>:19:                                     ; preds = %18
  %20 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !2510
  %21 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !2511
  %22 = call %struct._CONFIG_NODE* @config_sbar_items_section(%struct._CONFIG_REC* %20, %struct._CONFIG_NODE* %21, i32 1), !dbg !2512
  store %struct._CONFIG_NODE* %22, %struct._CONFIG_NODE** %7, align 8, !dbg !2513
  %23 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !2514
  %24 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %23, i32 0, i32 2, !dbg !2516
  %25 = load i8*, i8** %24, align 8, !dbg !2516
  %26 = bitcast i8* %25 to %struct._GSList*, !dbg !2514
  %27 = call %struct._GSList* @config_node_first(%struct._GSList* %26), !dbg !2517
  store %struct._GSList* %27, %struct._GSList** %8, align 8, !dbg !2518
  br label %28, !dbg !2519

; <label>:28:                                     ; preds = %62, %19
  %29 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !2520
  %30 = icmp ne %struct._GSList* %29, null, !dbg !2523
  br i1 %30, label %31, label %65, !dbg !2524

; <label>:31:                                     ; preds = %28
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2525, metadata !238), !dbg !2527
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2528, metadata !238), !dbg !2529
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %11, metadata !2530, metadata !238), !dbg !2531
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %12, metadata !2532, metadata !238), !dbg !2533
  %32 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !2534
  %33 = getelementptr inbounds %struct._GSList, %struct._GSList* %32, i32 0, i32 0, !dbg !2535
  %34 = load i8*, i8** %33, align 8, !dbg !2535
  %35 = bitcast i8* %34 to %struct._CONFIG_NODE*, !dbg !2534
  store %struct._CONFIG_NODE* %35, %struct._CONFIG_NODE** %12, align 8, !dbg !2536
  %36 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %12, align 8, !dbg !2537
  %37 = call i32 @config_node_get_int(%struct._CONFIG_NODE* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i32 0), !dbg !2538
  store i32 %37, i32* %9, align 4, !dbg !2539
  %38 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %12, align 8, !dbg !2540
  %39 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i32 0, i32 0)), !dbg !2541
  %40 = call i32 @g_strcmp0(i8* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0)), !dbg !2542
  %41 = icmp eq i32 %40, 0, !dbg !2544
  %42 = zext i1 %41 to i32, !dbg !2544
  store i32 %42, i32* %10, align 4, !dbg !2545
  %43 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !2546
  %44 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !2547
  %45 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %12, align 8, !dbg !2548
  %46 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %45, i32 0, i32 1, !dbg !2549
  %47 = load i8*, i8** %46, align 8, !dbg !2549
  %48 = call %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC* %43, %struct._CONFIG_NODE* %44, i8* %47, i32 2), !dbg !2550
  store %struct._CONFIG_NODE* %48, %struct._CONFIG_NODE** %11, align 8, !dbg !2551
  %49 = load i32, i32* %9, align 4, !dbg !2552
  %50 = icmp ne i32 %49, 0, !dbg !2554
  br i1 %50, label %51, label %55, !dbg !2555

; <label>:51:                                     ; preds = %31
  %52 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !2556
  %53 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %11, align 8, !dbg !2557
  %54 = load i32, i32* %9, align 4, !dbg !2558
  call void @config_node_set_int(%struct._CONFIG_REC* %52, %struct._CONFIG_NODE* %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i32 %54), !dbg !2559
  br label %55, !dbg !2559

; <label>:55:                                     ; preds = %51, %31
  %56 = load i32, i32* %10, align 4, !dbg !2560
  %57 = icmp ne i32 %56, 0, !dbg !2560
  br i1 %57, label %58, label %61, !dbg !2562

; <label>:58:                                     ; preds = %55
  %59 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !2563
  %60 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %11, align 8, !dbg !2564
  call void @config_node_set_str(%struct._CONFIG_REC* %59, %struct._CONFIG_NODE* %60, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0)), !dbg !2565
  br label %61, !dbg !2565

; <label>:61:                                     ; preds = %58, %55
  br label %62, !dbg !2566

; <label>:62:                                     ; preds = %61
  %63 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !2567
  %64 = call %struct._GSList* @config_node_next(%struct._GSList* %63), !dbg !2569
  store %struct._GSList* %64, %struct._GSList** %8, align 8, !dbg !2570
  br label %28, !dbg !2571, !llvm.loop !2572

; <label>:65:                                     ; preds = %28
  %66 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !2574
  store %struct._CONFIG_NODE* %66, %struct._CONFIG_NODE** %4, align 8, !dbg !2575
  br label %67, !dbg !2575

; <label>:67:                                     ; preds = %65, %17
  %68 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !2576
  ret %struct._CONFIG_NODE* %68, !dbg !2576
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!222, !223}
!llvm.ident = !{!224}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !174)
!1 = !DIFile(filename: "line364-statusbar-config.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !30, !37, !42, !51, !62, !70, !101, !153}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 75, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/glib-2.0/glib/gscanner.h", directory: "/home/lichi/Desktop/irssi/task1")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29}
!6 = !DIEnumerator(name: "G_TOKEN_EOF", value: 0)
!7 = !DIEnumerator(name: "G_TOKEN_LEFT_PAREN", value: 40)
!8 = !DIEnumerator(name: "G_TOKEN_RIGHT_PAREN", value: 41)
!9 = !DIEnumerator(name: "G_TOKEN_LEFT_CURLY", value: 123)
!10 = !DIEnumerator(name: "G_TOKEN_RIGHT_CURLY", value: 125)
!11 = !DIEnumerator(name: "G_TOKEN_LEFT_BRACE", value: 91)
!12 = !DIEnumerator(name: "G_TOKEN_RIGHT_BRACE", value: 93)
!13 = !DIEnumerator(name: "G_TOKEN_EQUAL_SIGN", value: 61)
!14 = !DIEnumerator(name: "G_TOKEN_COMMA", value: 44)
!15 = !DIEnumerator(name: "G_TOKEN_NONE", value: 256)
!16 = !DIEnumerator(name: "G_TOKEN_ERROR", value: 257)
!17 = !DIEnumerator(name: "G_TOKEN_CHAR", value: 258)
!18 = !DIEnumerator(name: "G_TOKEN_BINARY", value: 259)
!19 = !DIEnumerator(name: "G_TOKEN_OCTAL", value: 260)
!20 = !DIEnumerator(name: "G_TOKEN_INT", value: 261)
!21 = !DIEnumerator(name: "G_TOKEN_HEX", value: 262)
!22 = !DIEnumerator(name: "G_TOKEN_FLOAT", value: 263)
!23 = !DIEnumerator(name: "G_TOKEN_STRING", value: 264)
!24 = !DIEnumerator(name: "G_TOKEN_SYMBOL", value: 265)
!25 = !DIEnumerator(name: "G_TOKEN_IDENTIFIER", value: 266)
!26 = !DIEnumerator(name: "G_TOKEN_IDENTIFIER_NULL", value: 267)
!27 = !DIEnumerator(name: "G_TOKEN_COMMENT_SINGLE", value: 268)
!28 = !DIEnumerator(name: "G_TOKEN_COMMENT_MULTI", value: 269)
!29 = !DIEnumerator(name: "G_TOKEN_LAST", value: 270)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !31, line: 69, size: 32, align: 32, elements: !32)
!31 = !DIFile(filename: "/usr/include/glib-2.0/glib/giochannel.h", directory: "/home/lichi/Desktop/irssi/task1")
!32 = !{!33, !34, !35, !36}
!33 = !DIEnumerator(name: "G_IO_STATUS_ERROR", value: 0)
!34 = !DIEnumerator(name: "G_IO_STATUS_NORMAL", value: 1)
!35 = !DIEnumerator(name: "G_IO_STATUS_EOF", value: 2)
!36 = !DIEnumerator(name: "G_IO_STATUS_AGAIN", value: 3)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !31, line: 77, size: 32, align: 32, elements: !38)
!38 = !{!39, !40, !41}
!39 = !DIEnumerator(name: "G_SEEK_CUR", value: 0)
!40 = !DIEnumerator(name: "G_SEEK_SET", value: 1)
!41 = !DIEnumerator(name: "G_SEEK_END", value: 2)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !43, line: 31, size: 32, align: 32, elements: !44)
!43 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/irssi/task1")
!44 = !{!45, !46, !47, !48, !49, !50}
!45 = !DIEnumerator(name: "G_IO_IN", value: 1)
!46 = !DIEnumerator(name: "G_IO_OUT", value: 4)
!47 = !DIEnumerator(name: "G_IO_PRI", value: 2)
!48 = !DIEnumerator(name: "G_IO_ERR", value: 8)
!49 = !DIEnumerator(name: "G_IO_HUP", value: 16)
!50 = !DIEnumerator(name: "G_IO_NVAL", value: 32)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !31, line: 84, size: 32, align: 32, elements: !52)
!52 = !{!53, !54, !55, !56, !57, !58, !59, !60, !61}
!53 = !DIEnumerator(name: "G_IO_FLAG_APPEND", value: 1)
!54 = !DIEnumerator(name: "G_IO_FLAG_NONBLOCK", value: 2)
!55 = !DIEnumerator(name: "G_IO_FLAG_IS_READABLE", value: 4)
!56 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITABLE", value: 8)
!57 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITEABLE", value: 8)
!58 = !DIEnumerator(name: "G_IO_FLAG_IS_SEEKABLE", value: 16)
!59 = !DIEnumerator(name: "G_IO_FLAG_MASK", value: 31)
!60 = !DIEnumerator(name: "G_IO_FLAG_GET_MASK", value: 31)
!61 = !DIEnumerator(name: "G_IO_FLAG_SET_MASK", value: 3)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !63, line: 4, size: 32, align: 32, elements: !64)
!63 = !DIFile(filename: "../../src/lib-config/iconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!64 = !{!65, !66, !67, !68, !69}
!65 = !DIEnumerator(name: "NODE_TYPE_KEY", value: 0)
!66 = !DIEnumerator(name: "NODE_TYPE_VALUE", value: 1)
!67 = !DIEnumerator(name: "NODE_TYPE_BLOCK", value: 2)
!68 = !DIEnumerator(name: "NODE_TYPE_LIST", value: 3)
!69 = !DIEnumerator(name: "NODE_TYPE_COMMENT", value: 4)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !71, line: 10, size: 32, align: 32, elements: !72)
!71 = !DIFile(filename: "../../src/core/levels.h", directory: "/home/lichi/Desktop/irssi/task1")
!72 = !{!73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100}
!73 = !DIEnumerator(name: "MSGLEVEL_CRAP", value: 1)
!74 = !DIEnumerator(name: "MSGLEVEL_MSGS", value: 2)
!75 = !DIEnumerator(name: "MSGLEVEL_PUBLIC", value: 4)
!76 = !DIEnumerator(name: "MSGLEVEL_NOTICES", value: 8)
!77 = !DIEnumerator(name: "MSGLEVEL_SNOTES", value: 16)
!78 = !DIEnumerator(name: "MSGLEVEL_CTCPS", value: 32)
!79 = !DIEnumerator(name: "MSGLEVEL_ACTIONS", value: 64)
!80 = !DIEnumerator(name: "MSGLEVEL_JOINS", value: 128)
!81 = !DIEnumerator(name: "MSGLEVEL_PARTS", value: 256)
!82 = !DIEnumerator(name: "MSGLEVEL_QUITS", value: 512)
!83 = !DIEnumerator(name: "MSGLEVEL_KICKS", value: 1024)
!84 = !DIEnumerator(name: "MSGLEVEL_MODES", value: 2048)
!85 = !DIEnumerator(name: "MSGLEVEL_TOPICS", value: 4096)
!86 = !DIEnumerator(name: "MSGLEVEL_WALLOPS", value: 8192)
!87 = !DIEnumerator(name: "MSGLEVEL_INVITES", value: 16384)
!88 = !DIEnumerator(name: "MSGLEVEL_NICKS", value: 32768)
!89 = !DIEnumerator(name: "MSGLEVEL_DCC", value: 65536)
!90 = !DIEnumerator(name: "MSGLEVEL_DCCMSGS", value: 131072)
!91 = !DIEnumerator(name: "MSGLEVEL_CLIENTNOTICE", value: 262144)
!92 = !DIEnumerator(name: "MSGLEVEL_CLIENTCRAP", value: 524288)
!93 = !DIEnumerator(name: "MSGLEVEL_CLIENTERROR", value: 1048576)
!94 = !DIEnumerator(name: "MSGLEVEL_HILIGHT", value: 2097152)
!95 = !DIEnumerator(name: "MSGLEVEL_ALL", value: 4194303)
!96 = !DIEnumerator(name: "MSGLEVEL_NOHILIGHT", value: 16777216)
!97 = !DIEnumerator(name: "MSGLEVEL_NO_ACT", value: 33554432)
!98 = !DIEnumerator(name: "MSGLEVEL_NEVER", value: 67108864)
!99 = !DIEnumerator(name: "MSGLEVEL_LASTLOG", value: 134217728)
!100 = !DIEnumerator(name: "MSGLEVEL_HIDDEN", value: 268435456)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !102, line: 3, size: 32, align: 32, elements: !103)
!102 = !DIFile(filename: "module-formats.h", directory: "/home/lichi/Desktop/irssi/task1")
!103 = !{!104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152}
!104 = !DIEnumerator(name: "TXT_MODULE_NAME", value: 0)
!105 = !DIEnumerator(name: "TXT_FILL_1", value: 1)
!106 = !DIEnumerator(name: "TXT_LASTLOG_TOO_LONG", value: 2)
!107 = !DIEnumerator(name: "TXT_LASTLOG_COUNT", value: 3)
!108 = !DIEnumerator(name: "TXT_LASTLOG_START", value: 4)
!109 = !DIEnumerator(name: "TXT_LASTLOG_END", value: 5)
!110 = !DIEnumerator(name: "TXT_LASTLOG_SEPARATOR", value: 6)
!111 = !DIEnumerator(name: "TXT_LASTLOG_DATE", value: 7)
!112 = !DIEnumerator(name: "TXT_FILL_2", value: 8)
!113 = !DIEnumerator(name: "TXT_REFNUM_NOT_FOUND", value: 9)
!114 = !DIEnumerator(name: "TXT_WINDOW_TOO_SMALL", value: 10)
!115 = !DIEnumerator(name: "TXT_CANT_HIDE_LAST", value: 11)
!116 = !DIEnumerator(name: "TXT_CANT_HIDE_STICKY_WINDOWS", value: 12)
!117 = !DIEnumerator(name: "TXT_CANT_SHOW_STICKY_WINDOWS", value: 13)
!118 = !DIEnumerator(name: "TXT_WINDOW_NOT_STICKY", value: 14)
!119 = !DIEnumerator(name: "TXT_WINDOW_SET_STICKY", value: 15)
!120 = !DIEnumerator(name: "TXT_WINDOW_UNSET_STICKY", value: 16)
!121 = !DIEnumerator(name: "TXT_WINDOW_INFO_STICKY", value: 17)
!122 = !DIEnumerator(name: "TXT_WINDOW_INFO_SCROLL", value: 18)
!123 = !DIEnumerator(name: "TXT_WINDOW_SCROLL", value: 19)
!124 = !DIEnumerator(name: "TXT_WINDOW_SCROLL_UNKNOWN", value: 20)
!125 = !DIEnumerator(name: "TXT_WINDOW_HIDELEVEL", value: 21)
!126 = !DIEnumerator(name: "TXT_FILL_3", value: 22)
!127 = !DIEnumerator(name: "TXT_STATUSBAR_LIST_HEADER", value: 23)
!128 = !DIEnumerator(name: "TXT_STATUSBAR_LIST_FOOTER", value: 24)
!129 = !DIEnumerator(name: "TXT_STATUSBAR_LIST", value: 25)
!130 = !DIEnumerator(name: "TXT_STATUSBAR_INFO_NAME", value: 26)
!131 = !DIEnumerator(name: "TXT_STATUSBAR_INFO_TYPE", value: 27)
!132 = !DIEnumerator(name: "TXT_STATUSBAR_INFO_PLACEMENT", value: 28)
!133 = !DIEnumerator(name: "TXT_STATUSBAR_INFO_POSITION", value: 29)
!134 = !DIEnumerator(name: "TXT_STATUSBAR_INFO_VISIBLE", value: 30)
!135 = !DIEnumerator(name: "TXT_STATUSBAR_INFO_ITEM_HEADER", value: 31)
!136 = !DIEnumerator(name: "TXT_STATUSBAR_INFO_ITEM_FOOTER", value: 32)
!137 = !DIEnumerator(name: "TXT_STATUSBAR_INFO_ITEM_NAME", value: 33)
!138 = !DIEnumerator(name: "TXT_STATUSBAR_NOT_FOUND", value: 34)
!139 = !DIEnumerator(name: "TXT_STATUSBAR_NOT_ENABLED", value: 35)
!140 = !DIEnumerator(name: "TXT_STATUSBAR_ITEM_NOT_FOUND", value: 36)
!141 = !DIEnumerator(name: "TXT_STATUSBAR_UNKNOWN_COMMAND", value: 37)
!142 = !DIEnumerator(name: "TXT_STATUSBAR_UNKNOWN_TYPE", value: 38)
!143 = !DIEnumerator(name: "TXT_STATUSBAR_UNKNOWN_PLACEMENT", value: 39)
!144 = !DIEnumerator(name: "TXT_STATUSBAR_UNKNOWN_VISIBILITY", value: 40)
!145 = !DIEnumerator(name: "TXT_FILL_4", value: 41)
!146 = !DIEnumerator(name: "TXT_PASTE_WARNING", value: 42)
!147 = !DIEnumerator(name: "TXT_PASTE_PROMPT", value: 43)
!148 = !DIEnumerator(name: "TXT_FILL_5", value: 44)
!149 = !DIEnumerator(name: "TXT_IRSSI_BANNER", value: 45)
!150 = !DIEnumerator(name: "TXT_WELCOME_FIRSTTIME", value: 46)
!151 = !DIEnumerator(name: "TXT_WELCOME_INIT_SETTINGS", value: 47)
!152 = !DIEnumerator(name: "TXT_COUNT", value: 48)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !154, line: 25, size: 32, align: 32, elements: !155)
!154 = !DIFile(filename: "../../src/core/commands.h", directory: "/home/lichi/Desktop/irssi/task1")
!155 = !{!156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173}
!156 = !DIEnumerator(name: "CMDERR_OPTION_UNKNOWN", value: -3)
!157 = !DIEnumerator(name: "CMDERR_OPTION_AMBIGUOUS", value: -2)
!158 = !DIEnumerator(name: "CMDERR_OPTION_ARG_MISSING", value: -1)
!159 = !DIEnumerator(name: "CMDERR_UNKNOWN", value: 0)
!160 = !DIEnumerator(name: "CMDERR_AMBIGUOUS", value: 1)
!161 = !DIEnumerator(name: "CMDERR_ERRNO", value: 2)
!162 = !DIEnumerator(name: "CMDERR_NOT_ENOUGH_PARAMS", value: 3)
!163 = !DIEnumerator(name: "CMDERR_NOT_CONNECTED", value: 4)
!164 = !DIEnumerator(name: "CMDERR_NOT_JOINED", value: 5)
!165 = !DIEnumerator(name: "CMDERR_CHAN_NOT_FOUND", value: 6)
!166 = !DIEnumerator(name: "CMDERR_CHAN_NOT_SYNCED", value: 7)
!167 = !DIEnumerator(name: "CMDERR_ILLEGAL_PROTO", value: 8)
!168 = !DIEnumerator(name: "CMDERR_NOT_GOOD_IDEA", value: 9)
!169 = !DIEnumerator(name: "CMDERR_INVALID_TIME", value: 10)
!170 = !DIEnumerator(name: "CMDERR_INVALID_CHARSET", value: 11)
!171 = !DIEnumerator(name: "CMDERR_EVAL_MAX_RECURSE", value: 12)
!172 = !DIEnumerator(name: "CMDERR_PROGRAM_NOT_FOUND", value: 13)
!173 = !DIEnumerator(name: "CMDERR_NO_SERVER_DEFINED", value: 14)
!174 = !{!175, !176, !183, !185, !187, !190, !192, !212, !221}
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !177, line: 9, baseType: !178)
!177 = !DIFile(filename: "../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64, align: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{null, !181, !181, !181, !181, !181, !181}
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64, align: 64)
!182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !184, line: 77, baseType: !175)
!184 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !184, line: 48, baseType: !186)
!186 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64, align: 64)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !184, line: 46, baseType: !189)
!189 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !189)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64, align: 64)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "STATUSBAR_CONFIG_REC", file: !194, line: 47, baseType: !195)
!194 = !DIFile(filename: "statusbar.h", directory: "/home/lichi/Desktop/irssi/task1")
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !194, line: 38, size: 256, align: 64, elements: !196)
!196 = !{!197, !199, !201, !202, !203, !204}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !195, file: !194, line: 39, baseType: !198, size: 64, align: 64)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64, align: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !195, file: !194, line: 41, baseType: !200, size: 32, align: 32, offset: 64)
!200 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "placement", scope: !195, file: !194, line: 42, baseType: !200, size: 32, align: 32, offset: 96)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "position", scope: !195, file: !194, line: 43, baseType: !200, size: 32, align: 32, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "visible", scope: !195, file: !194, line: 44, baseType: !200, size: 32, align: 32, offset: 160)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !195, file: !194, line: 46, baseType: !205, size: 64, align: 64, offset: 192)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64, align: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !207, line: 37, baseType: !208)
!207 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !207, line: 39, size: 128, align: 64, elements: !209)
!209 = !{!210, !211}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !208, file: !207, line: 41, baseType: !183, size: 64, align: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !208, file: !207, line: 42, baseType: !205, size: 64, align: 64, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64, align: 64)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "SBAR_ITEM_CONFIG_REC", file: !194, line: 69, baseType: !214)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !194, line: 63, size: 192, align: 64, elements: !215)
!215 = !{!216, !217, !218, !219}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !214, file: !194, line: 64, baseType: !198, size: 64, align: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !214, file: !194, line: 65, baseType: !198, size: 64, align: 64, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !214, file: !194, line: 67, baseType: !200, size: 32, align: 32, offset: 128)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "right_alignment", scope: !214, file: !194, line: 68, baseType: !220, size: 1, align: 32, offset: 160, flags: DIFlagBitField, extraData: i64 160)
!220 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !184, line: 49, baseType: !200)
!222 = !{i32 2, !"Dwarf Version", i32 4}
!223 = !{i32 2, !"Debug Info Version", i32 3}
!224 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!225 = distinct !DISubprogram(name: "statusbar_config_destroy", scope: !226, file: !226, line: 78, type: !227, isLocal: false, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !236)
!226 = !DIFile(filename: "statusbar-config.c", directory: "/home/lichi/Desktop/irssi/task1")
!227 = !DISubroutineType(types: !228)
!228 = !{null, !229, !192}
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64, align: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "STATUSBAR_GROUP_REC", file: !194, line: 36, baseType: !231)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !194, line: 32, size: 192, align: 64, elements: !232)
!232 = !{!233, !234, !235}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !231, file: !194, line: 33, baseType: !198, size: 64, align: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "config_bars", scope: !231, file: !194, line: 34, baseType: !205, size: 64, align: 64, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "bars", scope: !231, file: !194, line: 35, baseType: !205, size: 64, align: 64, offset: 128)
!236 = !{}
!237 = !DILocalVariable(name: "group", arg: 1, scope: !225, file: !226, line: 78, type: !229)
!238 = !DIExpression()
!239 = !DILocation(line: 78, column: 52, scope: !225)
!240 = !DILocalVariable(name: "config", arg: 2, scope: !225, file: !226, line: 79, type: !192)
!241 = !DILocation(line: 79, column: 32, scope: !225)
!242 = !DILocation(line: 81, column: 38, scope: !225)
!243 = !DILocation(line: 81, column: 45, scope: !225)
!244 = !DILocation(line: 81, column: 58, scope: !225)
!245 = !DILocation(line: 81, column: 23, scope: !225)
!246 = !DILocation(line: 81, column: 2, scope: !225)
!247 = !DILocation(line: 81, column: 9, scope: !225)
!248 = !DILocation(line: 81, column: 21, scope: !225)
!249 = !DILocation(line: 83, column: 2, scope: !225)
!250 = !DILocation(line: 83, column: 9, scope: !251)
!251 = !DILexicalBlockFile(scope: !225, file: !226, discriminator: 1)
!252 = !DILocation(line: 83, column: 17, scope: !251)
!253 = !DILocation(line: 83, column: 23, scope: !251)
!254 = !DILocation(line: 83, column: 2, scope: !251)
!255 = !DILocation(line: 84, column: 33, scope: !225)
!256 = !DILocation(line: 84, column: 41, scope: !225)
!257 = !DILocation(line: 84, column: 49, scope: !225)
!258 = !DILocation(line: 84, column: 56, scope: !225)
!259 = !DILocation(line: 84, column: 3, scope: !225)
!260 = !DILocation(line: 83, column: 2, scope: !261)
!261 = !DILexicalBlockFile(scope: !225, file: !226, discriminator: 2)
!262 = distinct !{!262, !249}
!263 = !DILocation(line: 86, column: 9, scope: !225)
!264 = !DILocation(line: 86, column: 17, scope: !225)
!265 = !DILocation(line: 86, column: 2, scope: !225)
!266 = !DILocation(line: 87, column: 16, scope: !225)
!267 = !DILocation(line: 87, column: 9, scope: !225)
!268 = !DILocation(line: 88, column: 1, scope: !225)
!269 = distinct !DISubprogram(name: "statusbar_config_item_destroy", scope: !226, file: !226, line: 69, type: !270, isLocal: true, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !236)
!270 = !DISubroutineType(types: !271)
!271 = !{null, !192, !212}
!272 = !DILocalVariable(name: "barconfig", arg: 1, scope: !269, file: !226, line: 69, type: !192)
!273 = !DILocation(line: 69, column: 65, scope: !269)
!274 = !DILocalVariable(name: "itemconfig", arg: 2, scope: !269, file: !226, line: 70, type: !212)
!275 = !DILocation(line: 70, column: 30, scope: !269)
!276 = !DILocation(line: 72, column: 36, scope: !269)
!277 = !DILocation(line: 72, column: 47, scope: !269)
!278 = !DILocation(line: 72, column: 54, scope: !269)
!279 = !DILocation(line: 72, column: 21, scope: !269)
!280 = !DILocation(line: 72, column: 2, scope: !269)
!281 = !DILocation(line: 72, column: 13, scope: !269)
!282 = !DILocation(line: 72, column: 19, scope: !269)
!283 = !DILocation(line: 74, column: 9, scope: !269)
!284 = !DILocation(line: 74, column: 21, scope: !269)
!285 = !DILocation(line: 74, column: 2, scope: !269)
!286 = !DILocation(line: 75, column: 16, scope: !269)
!287 = !DILocation(line: 75, column: 9, scope: !269)
!288 = !DILocation(line: 76, column: 1, scope: !269)
!289 = distinct !DISubprogram(name: "statusbar_config_init", scope: !226, file: !226, line: 764, type: !290, isLocal: false, isDefinition: true, scopeLine: 765, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !236)
!290 = !DISubroutineType(types: !291)
!291 = !{null}
!292 = !DILocation(line: 766, column: 9, scope: !289)
!293 = !DILocation(line: 767, column: 2, scope: !289)
!294 = !DILocation(line: 768, column: 2, scope: !289)
!295 = !DILocation(line: 770, column: 2, scope: !289)
!296 = !DILocation(line: 771, column: 2, scope: !289)
!297 = !DILocation(line: 772, column: 2, scope: !289)
!298 = !DILocation(line: 773, column: 2, scope: !289)
!299 = !DILocation(line: 774, column: 2, scope: !289)
!300 = !DILocation(line: 775, column: 2, scope: !289)
!301 = !DILocation(line: 776, column: 2, scope: !289)
!302 = !DILocation(line: 777, column: 2, scope: !289)
!303 = !DILocation(line: 778, column: 2, scope: !289)
!304 = !DILocation(line: 780, column: 2, scope: !289)
!305 = !DILocation(line: 781, column: 2, scope: !289)
!306 = !DILocation(line: 782, column: 2, scope: !289)
!307 = !DILocation(line: 784, column: 2, scope: !289)
!308 = !DILocation(line: 786, column: 1, scope: !289)
!309 = distinct !DISubprogram(name: "read_statusbar_config", scope: !226, file: !226, line: 245, type: !290, isLocal: true, isDefinition: true, scopeLine: 246, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !236)
!310 = !DILocalVariable(name: "node", scope: !309, file: !226, line: 247, type: !311)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64, align: 64)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "CONFIG_NODE", file: !63, line: 17, baseType: !313)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CONFIG_NODE", file: !63, line: 20, size: 192, align: 64, elements: !314)
!314 = !{!315, !316, !317}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !313, file: !63, line: 21, baseType: !200, size: 32, align: 32)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !313, file: !63, line: 22, baseType: !198, size: 64, align: 64, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !313, file: !63, line: 23, baseType: !175, size: 64, align: 64, offset: 128)
!318 = !DILocation(line: 247, column: 15, scope: !309)
!319 = !DILocation(line: 249, column: 9, scope: !309)
!320 = !DILocation(line: 251, column: 30, scope: !309)
!321 = !DILocation(line: 251, column: 9, scope: !309)
!322 = !DILocation(line: 251, column: 7, scope: !309)
!323 = !DILocation(line: 252, column: 6, scope: !324)
!324 = distinct !DILexicalBlock(scope: !309, file: !226, line: 252, column: 6)
!325 = !DILocation(line: 252, column: 11, scope: !324)
!326 = !DILocation(line: 252, column: 6, scope: !309)
!327 = !DILocation(line: 253, column: 35, scope: !324)
!328 = !DILocation(line: 253, column: 3, scope: !324)
!329 = !DILocation(line: 255, column: 9, scope: !309)
!330 = !DILocation(line: 256, column: 9, scope: !309)
!331 = !DILocation(line: 257, column: 1, scope: !309)
!332 = distinct !DISubprogram(name: "cmd_statusbar", scope: !226, file: !226, line: 711, type: !333, isLocal: true, isDefinition: true, scopeLine: 712, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !236)
!333 = !DISubroutineType(types: !334)
!334 = !{null, !190}
!335 = !DILocalVariable(name: "data", arg: 1, scope: !332, file: !226, line: 711, type: !190)
!336 = !DILocation(line: 711, column: 39, scope: !332)
!337 = !DILocalVariable(name: "arg1", scope: !332, file: !226, line: 713, type: !198)
!338 = !DILocation(line: 713, column: 8, scope: !332)
!339 = !DILocalVariable(name: "arg2", scope: !332, file: !226, line: 713, type: !198)
!340 = !DILocation(line: 713, column: 15, scope: !332)
!341 = !DILocalVariable(name: "params", scope: !332, file: !226, line: 713, type: !198)
!342 = !DILocation(line: 713, column: 22, scope: !332)
!343 = !DILocalVariable(name: "oldcmd", scope: !332, file: !226, line: 713, type: !198)
!344 = !DILocation(line: 713, column: 31, scope: !332)
!345 = !DILocalVariable(name: "free_arg", scope: !332, file: !226, line: 714, type: !175)
!346 = !DILocation(line: 714, column: 8, scope: !332)
!347 = !DILocation(line: 716, column: 22, scope: !348)
!348 = distinct !DILexicalBlock(scope: !332, file: !226, line: 716, column: 6)
!349 = !DILocation(line: 716, column: 7, scope: !348)
!350 = !DILocation(line: 716, column: 6, scope: !332)
!351 = !DILocation(line: 718, column: 3, scope: !348)
!352 = !DILocation(line: 721, column: 9, scope: !332)
!353 = !DILocation(line: 722, column: 7, scope: !354)
!354 = distinct !DILexicalBlock(scope: !332, file: !226, line: 722, column: 6)
!355 = !DILocation(line: 722, column: 6, scope: !354)
!356 = !DILocation(line: 722, column: 12, scope: !354)
!357 = !DILocation(line: 722, column: 6, scope: !332)
!358 = !DILocation(line: 723, column: 12, scope: !359)
!359 = distinct !DILexicalBlock(scope: !354, file: !226, line: 722, column: 21)
!360 = !DILocation(line: 723, column: 10, scope: !359)
!361 = !DILocation(line: 724, column: 2, scope: !359)
!362 = !DILocation(line: 724, column: 32, scope: !363)
!363 = !DILexicalBlockFile(scope: !364, file: !226, discriminator: 1)
!364 = distinct !DILexicalBlock(scope: !354, file: !226, line: 724, column: 13)
!365 = !DILocation(line: 724, column: 13, scope: !363)
!366 = !DILocation(line: 724, column: 48, scope: !363)
!367 = !DILocation(line: 725, column: 52, scope: !368)
!368 = distinct !DILexicalBlock(scope: !364, file: !226, line: 724, column: 54)
!369 = !DILocation(line: 725, column: 58, scope: !368)
!370 = !DILocation(line: 725, column: 12, scope: !368)
!371 = !DILocation(line: 725, column: 10, scope: !368)
!372 = !DILocation(line: 726, column: 2, scope: !368)
!373 = !DILocation(line: 726, column: 32, scope: !374)
!374 = !DILexicalBlockFile(scope: !375, file: !226, discriminator: 1)
!375 = distinct !DILexicalBlock(scope: !364, file: !226, line: 726, column: 13)
!376 = !DILocation(line: 726, column: 13, scope: !374)
!377 = !DILocation(line: 726, column: 49, scope: !374)
!378 = !DILocation(line: 727, column: 50, scope: !379)
!379 = distinct !DILexicalBlock(scope: !375, file: !226, line: 726, column: 55)
!380 = !DILocation(line: 727, column: 56, scope: !379)
!381 = !DILocation(line: 727, column: 12, scope: !379)
!382 = !DILocation(line: 727, column: 10, scope: !379)
!383 = !DILocation(line: 728, column: 2, scope: !379)
!384 = !DILocation(line: 728, column: 32, scope: !385)
!385 = !DILexicalBlockFile(scope: !386, file: !226, discriminator: 1)
!386 = distinct !DILexicalBlock(scope: !375, file: !226, line: 728, column: 13)
!387 = !DILocation(line: 728, column: 13, scope: !385)
!388 = !DILocation(line: 728, column: 47, scope: !385)
!389 = !DILocation(line: 729, column: 40, scope: !390)
!390 = distinct !DILexicalBlock(scope: !386, file: !226, line: 728, column: 53)
!391 = !DILocation(line: 729, column: 12, scope: !390)
!392 = !DILocation(line: 729, column: 10, scope: !390)
!393 = !DILocation(line: 730, column: 2, scope: !390)
!394 = !DILocation(line: 730, column: 32, scope: !395)
!395 = !DILexicalBlockFile(scope: !396, file: !226, discriminator: 1)
!396 = distinct !DILexicalBlock(scope: !386, file: !226, line: 730, column: 13)
!397 = !DILocation(line: 730, column: 13, scope: !395)
!398 = !DILocation(line: 730, column: 46, scope: !395)
!399 = !DILocation(line: 731, column: 47, scope: !400)
!400 = distinct !DILexicalBlock(scope: !396, file: !226, line: 730, column: 52)
!401 = !DILocation(line: 731, column: 55, scope: !400)
!402 = !DILocation(line: 731, column: 12, scope: !400)
!403 = !DILocation(line: 731, column: 10, scope: !400)
!404 = !DILocation(line: 732, column: 2, scope: !400)
!405 = !DILocation(line: 732, column: 32, scope: !406)
!406 = !DILexicalBlockFile(scope: !407, file: !226, discriminator: 1)
!407 = distinct !DILexicalBlock(scope: !396, file: !226, line: 732, column: 13)
!408 = !DILocation(line: 732, column: 13, scope: !406)
!409 = !DILocation(line: 732, column: 51, scope: !406)
!410 = !DILocation(line: 733, column: 52, scope: !411)
!411 = distinct !DILexicalBlock(scope: !407, file: !226, line: 732, column: 57)
!412 = !DILocation(line: 733, column: 60, scope: !411)
!413 = !DILocation(line: 733, column: 12, scope: !411)
!414 = !DILocation(line: 733, column: 10, scope: !411)
!415 = !DILocation(line: 734, column: 2, scope: !411)
!416 = !DILocation(line: 734, column: 32, scope: !417)
!417 = !DILexicalBlockFile(scope: !418, file: !226, discriminator: 1)
!418 = distinct !DILexicalBlock(scope: !407, file: !226, line: 734, column: 13)
!419 = !DILocation(line: 734, column: 13, scope: !417)
!420 = !DILocation(line: 734, column: 50, scope: !417)
!421 = !DILocation(line: 735, column: 51, scope: !422)
!422 = distinct !DILexicalBlock(scope: !418, file: !226, line: 734, column: 56)
!423 = !DILocation(line: 735, column: 59, scope: !422)
!424 = !DILocation(line: 735, column: 12, scope: !422)
!425 = !DILocation(line: 735, column: 10, scope: !422)
!426 = !DILocation(line: 736, column: 2, scope: !422)
!427 = !DILocation(line: 736, column: 32, scope: !428)
!428 = !DILexicalBlockFile(scope: !429, file: !226, discriminator: 1)
!429 = distinct !DILexicalBlock(scope: !418, file: !226, line: 736, column: 13)
!430 = !DILocation(line: 736, column: 13, scope: !428)
!431 = !DILocation(line: 736, column: 49, scope: !428)
!432 = !DILocation(line: 737, column: 50, scope: !433)
!433 = distinct !DILexicalBlock(scope: !429, file: !226, line: 736, column: 55)
!434 = !DILocation(line: 737, column: 58, scope: !433)
!435 = !DILocation(line: 737, column: 12, scope: !433)
!436 = !DILocation(line: 737, column: 10, scope: !433)
!437 = !DILocation(line: 738, column: 2, scope: !433)
!438 = !DILocation(line: 738, column: 32, scope: !439)
!439 = !DILexicalBlockFile(scope: !440, file: !226, discriminator: 1)
!440 = distinct !DILexicalBlock(scope: !429, file: !226, line: 738, column: 13)
!441 = !DILocation(line: 738, column: 13, scope: !439)
!442 = !DILocation(line: 738, column: 45, scope: !439)
!443 = !DILocation(line: 739, column: 45, scope: !444)
!444 = distinct !DILexicalBlock(scope: !440, file: !226, line: 738, column: 51)
!445 = !DILocation(line: 739, column: 53, scope: !444)
!446 = !DILocation(line: 739, column: 12, scope: !444)
!447 = !DILocation(line: 739, column: 10, scope: !444)
!448 = !DILocation(line: 740, column: 2, scope: !444)
!449 = !DILocation(line: 740, column: 32, scope: !450)
!450 = !DILexicalBlockFile(scope: !451, file: !226, discriminator: 1)
!451 = distinct !DILexicalBlock(scope: !440, file: !226, line: 740, column: 13)
!452 = !DILocation(line: 740, column: 13, scope: !450)
!453 = !DILocation(line: 740, column: 48, scope: !450)
!454 = !DILocation(line: 741, column: 48, scope: !455)
!455 = distinct !DILexicalBlock(scope: !451, file: !226, line: 740, column: 54)
!456 = !DILocation(line: 741, column: 56, scope: !455)
!457 = !DILocation(line: 741, column: 12, scope: !455)
!458 = !DILocation(line: 741, column: 10, scope: !455)
!459 = !DILocation(line: 742, column: 2, scope: !455)
!460 = !DILocation(line: 742, column: 14, scope: !461)
!461 = !DILexicalBlockFile(scope: !462, file: !226, discriminator: 1)
!462 = distinct !DILexicalBlock(scope: !451, file: !226, line: 742, column: 13)
!463 = !DILocation(line: 742, column: 13, scope: !461)
!464 = !DILocation(line: 742, column: 19, scope: !461)
!465 = !DILocation(line: 743, column: 44, scope: !466)
!466 = distinct !DILexicalBlock(scope: !462, file: !226, line: 742, column: 28)
!467 = !DILocation(line: 743, column: 12, scope: !466)
!468 = !DILocation(line: 743, column: 10, scope: !466)
!469 = !DILocation(line: 744, column: 20, scope: !470)
!470 = distinct !DILexicalBlock(scope: !466, file: !226, line: 744, column: 7)
!471 = !DILocation(line: 744, column: 7, scope: !470)
!472 = !DILocation(line: 744, column: 28, scope: !470)
!473 = !DILocation(line: 744, column: 7, scope: !466)
!474 = !DILocation(line: 745, column: 11, scope: !475)
!475 = distinct !DILexicalBlock(scope: !470, file: !226, line: 744, column: 36)
!476 = !DILocation(line: 745, column: 4, scope: !475)
!477 = !DILocation(line: 746, column: 40, scope: !475)
!478 = !DILocation(line: 746, column: 13, scope: !475)
!479 = !DILocation(line: 746, column: 11, scope: !475)
!480 = !DILocation(line: 747, column: 3, scope: !475)
!481 = !DILocation(line: 748, column: 11, scope: !482)
!482 = distinct !DILexicalBlock(scope: !470, file: !226, line: 747, column: 10)
!483 = !DILocation(line: 748, column: 4, scope: !482)
!484 = !DILocation(line: 749, column: 11, scope: !482)
!485 = !DILocation(line: 751, column: 2, scope: !466)
!486 = !DILocation(line: 753, column: 18, scope: !332)
!487 = !DILocation(line: 753, column: 2, scope: !332)
!488 = !DILocation(line: 754, column: 6, scope: !489)
!489 = distinct !DILexicalBlock(scope: !332, file: !226, line: 754, column: 6)
!490 = !DILocation(line: 754, column: 6, scope: !332)
!491 = !DILocation(line: 755, column: 31, scope: !492)
!492 = distinct !DILexicalBlock(scope: !489, file: !226, line: 754, column: 14)
!493 = !DILocation(line: 755, column: 3, scope: !492)
!494 = !DILocation(line: 756, column: 10, scope: !492)
!495 = !DILocation(line: 756, column: 3, scope: !492)
!496 = !DILocation(line: 757, column: 2, scope: !492)
!497 = !DILocation(line: 758, column: 31, scope: !498)
!498 = distinct !DILexicalBlock(scope: !489, file: !226, line: 757, column: 9)
!499 = !DILocation(line: 758, column: 3, scope: !498)
!500 = !DILocation(line: 761, column: 2, scope: !332)
!501 = !DILocation(line: 762, column: 1, scope: !332)
!502 = distinct !DISubprogram(name: "cmd_statusbar_list", scope: !226, file: !226, line: 363, type: !290, isLocal: true, isDefinition: true, scopeLine: 364, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !236)
!503 = !DILocalVariable(name: "tmp", scope: !502, file: !226, line: 365, type: !205)
!504 = !DILocation(line: 365, column: 10, scope: !502)
!505 = !DILocation(line: 367, column: 2, scope: !502)
!506 = !DILocation(line: 369, column: 15, scope: !502)
!507 = !DILocation(line: 369, column: 39, scope: !502)
!508 = !DILocation(line: 369, column: 13, scope: !502)
!509 = !DILocation(line: 370, column: 2, scope: !502)
!510 = !DILocation(line: 370, column: 9, scope: !511)
!511 = !DILexicalBlockFile(scope: !512, file: !226, discriminator: 1)
!512 = distinct !DILexicalBlock(scope: !513, file: !226, line: 370, column: 2)
!513 = distinct !DILexicalBlock(scope: !502, file: !226, line: 370, column: 2)
!514 = !DILocation(line: 370, column: 13, scope: !511)
!515 = !DILocation(line: 370, column: 2, scope: !511)
!516 = !DILocalVariable(name: "rec", scope: !517, file: !226, line: 371, type: !192)
!517 = distinct !DILexicalBlock(scope: !512, file: !226, line: 370, column: 38)
!518 = !DILocation(line: 371, column: 25, scope: !517)
!519 = !DILocation(line: 371, column: 31, scope: !517)
!520 = !DILocation(line: 371, column: 36, scope: !517)
!521 = !DILocation(line: 373, column: 45, scope: !517)
!522 = !DILocation(line: 373, column: 50, scope: !517)
!523 = !DILocation(line: 373, column: 70, scope: !517)
!524 = !DILocation(line: 373, column: 56, scope: !517)
!525 = !DILocation(line: 373, column: 95, scope: !517)
!526 = !DILocation(line: 373, column: 76, scope: !527)
!527 = !DILexicalBlockFile(scope: !517, file: !226, discriminator: 1)
!528 = !DILocation(line: 373, column: 101, scope: !517)
!529 = !DILocation(line: 373, column: 106, scope: !517)
!530 = !DILocation(line: 373, column: 136, scope: !517)
!531 = !DILocation(line: 373, column: 116, scope: !532)
!532 = !DILexicalBlockFile(scope: !517, file: !226, discriminator: 2)
!533 = !DILocation(line: 373, column: 3, scope: !534)
!534 = !DILexicalBlockFile(scope: !517, file: !226, discriminator: 3)
!535 = !DILocation(line: 377, column: 2, scope: !517)
!536 = !DILocation(line: 370, column: 27, scope: !537)
!537 = !DILexicalBlockFile(scope: !512, file: !226, discriminator: 2)
!538 = !DILocation(line: 370, column: 32, scope: !537)
!539 = !DILocation(line: 370, column: 25, scope: !537)
!540 = !DILocation(line: 370, column: 2, scope: !537)
!541 = distinct !{!541, !509}
!542 = !DILocation(line: 379, column: 2, scope: !502)
!543 = !DILocation(line: 380, column: 1, scope: !502)
!544 = distinct !DISubprogram(name: "cmd_statusbar_add_modify", scope: !226, file: !226, line: 401, type: !545, isLocal: true, isDefinition: true, scopeLine: 402, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !236)
!545 = !DISubroutineType(types: !546)
!546 = !{null, !190, !175, !175}
!547 = !DILocalVariable(name: "data", arg: 1, scope: !544, file: !226, line: 401, type: !190)
!548 = !DILocation(line: 401, column: 50, scope: !544)
!549 = !DILocalVariable(name: "server", arg: 2, scope: !544, file: !226, line: 401, type: !175)
!550 = !DILocation(line: 401, column: 62, scope: !544)
!551 = !DILocalVariable(name: "witem", arg: 3, scope: !544, file: !226, line: 401, type: !175)
!552 = !DILocation(line: 401, column: 76, scope: !544)
!553 = !DILocalVariable(name: "optlist", scope: !544, file: !226, line: 403, type: !554)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64, align: 64)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !556, line: 37, baseType: !557)
!556 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!557 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !556, line: 37, flags: DIFlagFwdDecl)
!558 = !DILocation(line: 403, column: 14, scope: !544)
!559 = !DILocalVariable(name: "node", scope: !544, file: !226, line: 404, type: !311)
!560 = !DILocation(line: 404, column: 15, scope: !544)
!561 = !DILocalVariable(name: "name", scope: !544, file: !226, line: 405, type: !198)
!562 = !DILocation(line: 405, column: 8, scope: !544)
!563 = !DILocalVariable(name: "type", scope: !544, file: !226, line: 405, type: !198)
!564 = !DILocation(line: 405, column: 15, scope: !544)
!565 = !DILocalVariable(name: "placement", scope: !544, file: !226, line: 405, type: !198)
!566 = !DILocation(line: 405, column: 22, scope: !544)
!567 = !DILocalVariable(name: "visible", scope: !544, file: !226, line: 405, type: !198)
!568 = !DILocation(line: 405, column: 34, scope: !544)
!569 = !DILocalVariable(name: "free_arg", scope: !544, file: !226, line: 406, type: !175)
!570 = !DILocation(line: 406, column: 8, scope: !544)
!571 = !DILocalVariable(name: "error", scope: !544, file: !226, line: 407, type: !200)
!572 = !DILocation(line: 407, column: 6, scope: !544)
!573 = !DILocalVariable(name: "add", scope: !544, file: !226, line: 408, type: !200)
!574 = !DILocation(line: 408, column: 6, scope: !544)
!575 = !DILocation(line: 408, column: 29, scope: !544)
!576 = !DILocation(line: 408, column: 20, scope: !544)
!577 = !DILocation(line: 408, column: 13, scope: !544)
!578 = !DILocation(line: 410, column: 22, scope: !579)
!579 = distinct !DILexicalBlock(scope: !544, file: !226, line: 410, column: 6)
!580 = !DILocation(line: 410, column: 7, scope: !579)
!581 = !DILocation(line: 410, column: 6, scope: !544)
!582 = !DILocation(line: 412, column: 3, scope: !579)
!583 = !DILocation(line: 414, column: 7, scope: !584)
!584 = distinct !DILexicalBlock(scope: !544, file: !226, line: 414, column: 6)
!585 = !DILocation(line: 414, column: 6, scope: !584)
!586 = !DILocation(line: 414, column: 12, scope: !584)
!587 = !DILocation(line: 414, column: 6, scope: !544)
!588 = !DILocation(line: 415, column: 3, scope: !589)
!589 = distinct !DILexicalBlock(scope: !584, file: !226, line: 414, column: 21)
!590 = distinct !{!590, !588}
!591 = !DILocation(line: 415, column: 24, scope: !592)
!592 = !DILexicalBlockFile(scope: !593, file: !226, discriminator: 1)
!593 = distinct !DILexicalBlock(scope: !589, file: !226, line: 415, column: 6)
!594 = !DILocation(line: 415, column: 8, scope: !592)
!595 = !DILocation(line: 415, column: 35, scope: !592)
!596 = distinct !{!596, !597}
!597 = !DILocation(line: 415, column: 35, scope: !593)
!598 = !DILocation(line: 415, column: 40, scope: !599)
!599 = !DILexicalBlockFile(scope: !600, file: !226, discriminator: 2)
!600 = distinct !DILexicalBlock(scope: !593, file: !226, line: 415, column: 38)
!601 = !DILocation(line: 415, column: 122, scope: !602)
!602 = !DILexicalBlockFile(scope: !599, file: !226, discriminator: 4)
!603 = !DILocation(line: 415, column: 137, scope: !599)
!604 = !DILocation(line: 415, column: 158, scope: !605)
!605 = !DILexicalBlockFile(scope: !593, file: !226, discriminator: 3)
!606 = !DILocation(line: 416, column: 2, scope: !589)
!607 = !DILocation(line: 418, column: 8, scope: !544)
!608 = !DILocation(line: 420, column: 7, scope: !544)
!609 = !DILocation(line: 421, column: 29, scope: !544)
!610 = !DILocation(line: 421, column: 9, scope: !544)
!611 = !DILocation(line: 421, column: 7, scope: !544)
!612 = !DILocation(line: 422, column: 6, scope: !613)
!613 = distinct !DILexicalBlock(scope: !544, file: !226, line: 422, column: 6)
!614 = !DILocation(line: 422, column: 11, scope: !613)
!615 = !DILocation(line: 422, column: 6, scope: !544)
!616 = !DILocation(line: 423, column: 26, scope: !617)
!617 = distinct !DILexicalBlock(scope: !618, file: !226, line: 423, column: 7)
!618 = distinct !DILexicalBlock(scope: !613, file: !226, line: 422, column: 19)
!619 = !DILocation(line: 423, column: 7, scope: !617)
!620 = !DILocation(line: 423, column: 42, scope: !617)
!621 = !DILocation(line: 423, column: 7, scope: !618)
!622 = !DILocation(line: 424, column: 9, scope: !617)
!623 = !DILocation(line: 424, column: 4, scope: !617)
!624 = !DILocation(line: 425, column: 31, scope: !625)
!625 = distinct !DILexicalBlock(scope: !617, file: !226, line: 425, column: 12)
!626 = !DILocation(line: 425, column: 12, scope: !625)
!627 = !DILocation(line: 425, column: 45, scope: !625)
!628 = !DILocation(line: 425, column: 12, scope: !617)
!629 = !DILocation(line: 426, column: 9, scope: !625)
!630 = !DILocation(line: 426, column: 4, scope: !625)
!631 = !DILocation(line: 428, column: 55, scope: !632)
!632 = distinct !DILexicalBlock(scope: !625, file: !226, line: 427, column: 8)
!633 = !DILocation(line: 428, column: 4, scope: !632)
!634 = !DILocation(line: 430, column: 9, scope: !632)
!635 = !DILocation(line: 432, column: 2, scope: !618)
!636 = !DILocation(line: 434, column: 12, scope: !544)
!637 = !DILocation(line: 435, column: 29, scope: !544)
!638 = !DILocation(line: 435, column: 9, scope: !544)
!639 = !DILocation(line: 435, column: 7, scope: !544)
!640 = !DILocation(line: 436, column: 6, scope: !641)
!641 = distinct !DILexicalBlock(scope: !544, file: !226, line: 436, column: 6)
!642 = !DILocation(line: 436, column: 11, scope: !641)
!643 = !DILocation(line: 436, column: 6, scope: !544)
!644 = !DILocation(line: 437, column: 26, scope: !645)
!645 = distinct !DILexicalBlock(scope: !646, file: !226, line: 437, column: 7)
!646 = distinct !DILexicalBlock(scope: !641, file: !226, line: 436, column: 19)
!647 = !DILocation(line: 437, column: 7, scope: !645)
!648 = !DILocation(line: 437, column: 39, scope: !645)
!649 = !DILocation(line: 437, column: 7, scope: !646)
!650 = !DILocation(line: 438, column: 14, scope: !645)
!651 = !DILocation(line: 438, column: 4, scope: !645)
!652 = !DILocation(line: 439, column: 31, scope: !653)
!653 = distinct !DILexicalBlock(scope: !645, file: !226, line: 439, column: 12)
!654 = !DILocation(line: 439, column: 12, scope: !653)
!655 = !DILocation(line: 439, column: 47, scope: !653)
!656 = !DILocation(line: 439, column: 12, scope: !645)
!657 = !DILocation(line: 440, column: 14, scope: !653)
!658 = !DILocation(line: 440, column: 4, scope: !653)
!659 = !DILocation(line: 442, column: 60, scope: !660)
!660 = distinct !DILexicalBlock(scope: !653, file: !226, line: 441, column: 8)
!661 = !DILocation(line: 442, column: 4, scope: !660)
!662 = !DILocation(line: 444, column: 9, scope: !660)
!663 = !DILocation(line: 446, column: 2, scope: !646)
!664 = !DILocation(line: 448, column: 10, scope: !544)
!665 = !DILocation(line: 449, column: 29, scope: !544)
!666 = !DILocation(line: 449, column: 9, scope: !544)
!667 = !DILocation(line: 449, column: 7, scope: !544)
!668 = !DILocation(line: 450, column: 6, scope: !669)
!669 = distinct !DILexicalBlock(scope: !544, file: !226, line: 450, column: 6)
!670 = !DILocation(line: 450, column: 11, scope: !669)
!671 = !DILocation(line: 450, column: 6, scope: !544)
!672 = !DILocation(line: 451, column: 26, scope: !673)
!673 = distinct !DILexicalBlock(scope: !674, file: !226, line: 451, column: 7)
!674 = distinct !DILexicalBlock(scope: !669, file: !226, line: 450, column: 19)
!675 = !DILocation(line: 451, column: 7, scope: !673)
!676 = !DILocation(line: 451, column: 42, scope: !673)
!677 = !DILocation(line: 451, column: 7, scope: !674)
!678 = !DILocation(line: 452, column: 12, scope: !673)
!679 = !DILocation(line: 452, column: 4, scope: !673)
!680 = !DILocation(line: 453, column: 31, scope: !681)
!681 = distinct !DILexicalBlock(scope: !673, file: !226, line: 453, column: 12)
!682 = !DILocation(line: 453, column: 12, scope: !681)
!683 = !DILocation(line: 453, column: 47, scope: !681)
!684 = !DILocation(line: 453, column: 12, scope: !673)
!685 = !DILocation(line: 454, column: 12, scope: !681)
!686 = !DILocation(line: 454, column: 4, scope: !681)
!687 = !DILocation(line: 455, column: 31, scope: !688)
!688 = distinct !DILexicalBlock(scope: !681, file: !226, line: 455, column: 12)
!689 = !DILocation(line: 455, column: 12, scope: !688)
!690 = !DILocation(line: 455, column: 49, scope: !688)
!691 = !DILocation(line: 455, column: 12, scope: !681)
!692 = !DILocation(line: 456, column: 12, scope: !688)
!693 = !DILocation(line: 456, column: 4, scope: !688)
!694 = !DILocation(line: 458, column: 61, scope: !695)
!695 = distinct !DILexicalBlock(scope: !688, file: !226, line: 457, column: 8)
!696 = !DILocation(line: 458, column: 4, scope: !695)
!697 = !DILocation(line: 460, column: 9, scope: !695)
!698 = !DILocation(line: 462, column: 2, scope: !674)
!699 = !DILocation(line: 464, column: 7, scope: !700)
!700 = distinct !DILexicalBlock(scope: !544, file: !226, line: 464, column: 6)
!701 = !DILocation(line: 464, column: 6, scope: !544)
!702 = !DILocation(line: 465, column: 20, scope: !703)
!703 = distinct !DILexicalBlock(scope: !700, file: !226, line: 464, column: 14)
!704 = !DILocation(line: 465, column: 26, scope: !703)
!705 = !DILocation(line: 465, column: 10, scope: !703)
!706 = !DILocation(line: 465, column: 8, scope: !703)
!707 = !DILocation(line: 466, column: 7, scope: !708)
!708 = distinct !DILexicalBlock(scope: !703, file: !226, line: 466, column: 7)
!709 = !DILocation(line: 466, column: 12, scope: !708)
!710 = !DILocation(line: 466, column: 19, scope: !708)
!711 = !DILocation(line: 466, column: 23, scope: !712)
!712 = !DILexicalBlockFile(scope: !708, file: !226, discriminator: 1)
!713 = !DILocation(line: 466, column: 27, scope: !712)
!714 = !DILocation(line: 466, column: 50, scope: !715)
!715 = !DILexicalBlockFile(scope: !708, file: !226, discriminator: 2)
!716 = !DILocation(line: 466, column: 30, scope: !715)
!717 = !DILocation(line: 466, column: 7, scope: !715)
!718 = !DILocation(line: 469, column: 21, scope: !719)
!719 = distinct !DILexicalBlock(scope: !708, file: !226, line: 466, column: 57)
!720 = !DILocation(line: 469, column: 11, scope: !719)
!721 = !DILocation(line: 469, column: 9, scope: !719)
!722 = !DILocation(line: 470, column: 3, scope: !719)
!723 = !DILocation(line: 472, column: 7, scope: !724)
!724 = distinct !DILexicalBlock(scope: !703, file: !226, line: 472, column: 7)
!725 = !DILocation(line: 472, column: 12, scope: !724)
!726 = !DILocation(line: 472, column: 7, scope: !703)
!727 = !DILocation(line: 473, column: 52, scope: !728)
!728 = distinct !DILexicalBlock(scope: !724, file: !226, line: 472, column: 20)
!729 = !DILocation(line: 473, column: 4, scope: !728)
!730 = !DILocation(line: 474, column: 9, scope: !728)
!731 = !DILocation(line: 475, column: 3, scope: !728)
!732 = !DILocation(line: 476, column: 2, scope: !703)
!733 = !DILocation(line: 478, column: 6, scope: !734)
!734 = distinct !DILexicalBlock(scope: !544, file: !226, line: 478, column: 6)
!735 = !DILocation(line: 478, column: 6, scope: !544)
!736 = !DILocation(line: 479, column: 19, scope: !737)
!737 = distinct !DILexicalBlock(scope: !734, file: !226, line: 478, column: 13)
!738 = !DILocation(line: 479, column: 3, scope: !737)
!739 = !DILocation(line: 480, column: 3, scope: !737)
!740 = !DILocation(line: 483, column: 26, scope: !741)
!741 = distinct !DILexicalBlock(scope: !544, file: !226, line: 483, column: 6)
!742 = !DILocation(line: 483, column: 6, scope: !741)
!743 = !DILocation(line: 483, column: 6, scope: !544)
!744 = !DILocation(line: 484, column: 23, scope: !741)
!745 = !DILocation(line: 484, column: 35, scope: !741)
!746 = !DILocation(line: 484, column: 3, scope: !741)
!747 = !DILocation(line: 485, column: 26, scope: !748)
!748 = distinct !DILexicalBlock(scope: !544, file: !226, line: 485, column: 6)
!749 = !DILocation(line: 485, column: 6, scope: !748)
!750 = !DILocation(line: 485, column: 6, scope: !544)
!751 = !DILocation(line: 486, column: 24, scope: !748)
!752 = !DILocation(line: 486, column: 36, scope: !748)
!753 = !DILocation(line: 486, column: 3, scope: !748)
!754 = !DILocation(line: 487, column: 6, scope: !755)
!755 = distinct !DILexicalBlock(scope: !544, file: !226, line: 487, column: 6)
!756 = !DILocation(line: 487, column: 11, scope: !755)
!757 = !DILocation(line: 487, column: 6, scope: !544)
!758 = !DILocation(line: 488, column: 23, scope: !755)
!759 = !DILocation(line: 488, column: 35, scope: !755)
!760 = !DILocation(line: 488, column: 49, scope: !755)
!761 = !DILocation(line: 488, column: 3, scope: !755)
!762 = !DILocation(line: 489, column: 6, scope: !763)
!763 = distinct !DILexicalBlock(scope: !544, file: !226, line: 489, column: 6)
!764 = !DILocation(line: 489, column: 16, scope: !763)
!765 = !DILocation(line: 489, column: 6, scope: !544)
!766 = !DILocation(line: 490, column: 23, scope: !763)
!767 = !DILocation(line: 490, column: 35, scope: !763)
!768 = !DILocation(line: 490, column: 54, scope: !763)
!769 = !DILocation(line: 490, column: 3, scope: !763)
!770 = !DILocation(line: 491, column: 29, scope: !544)
!771 = !DILocation(line: 491, column: 9, scope: !544)
!772 = !DILocation(line: 491, column: 7, scope: !544)
!773 = !DILocation(line: 492, column: 6, scope: !774)
!774 = distinct !DILexicalBlock(scope: !544, file: !226, line: 492, column: 6)
!775 = !DILocation(line: 492, column: 11, scope: !774)
!776 = !DILocation(line: 492, column: 6, scope: !544)
!777 = !DILocation(line: 493, column: 23, scope: !774)
!778 = !DILocation(line: 493, column: 35, scope: !774)
!779 = !DILocation(line: 493, column: 58, scope: !774)
!780 = !DILocation(line: 493, column: 53, scope: !774)
!781 = !DILocation(line: 493, column: 3, scope: !782)
!782 = !DILexicalBlockFile(scope: !774, file: !226, discriminator: 1)
!783 = !DILocation(line: 493, column: 3, scope: !774)
!784 = !DILocation(line: 494, column: 6, scope: !785)
!785 = distinct !DILexicalBlock(scope: !544, file: !226, line: 494, column: 6)
!786 = !DILocation(line: 494, column: 14, scope: !785)
!787 = !DILocation(line: 494, column: 6, scope: !544)
!788 = !DILocation(line: 495, column: 23, scope: !785)
!789 = !DILocation(line: 495, column: 35, scope: !785)
!790 = !DILocation(line: 495, column: 52, scope: !785)
!791 = !DILocation(line: 495, column: 3, scope: !785)
!792 = !DILocation(line: 497, column: 2, scope: !544)
!793 = !DILocation(line: 498, column: 18, scope: !544)
!794 = !DILocation(line: 498, column: 2, scope: !544)
!795 = !DILocation(line: 499, column: 1, scope: !544)
!796 = !DILocation(line: 499, column: 1, scope: !797)
!797 = !DILexicalBlockFile(scope: !544, file: !226, discriminator: 1)
!798 = distinct !DISubprogram(name: "cmd_statusbar_reset", scope: !226, file: !226, line: 502, type: !545, isLocal: true, isDefinition: true, scopeLine: 503, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !236)
!799 = !DILocalVariable(name: "data", arg: 1, scope: !798, file: !226, line: 502, type: !190)
!800 = !DILocation(line: 502, column: 45, scope: !798)
!801 = !DILocalVariable(name: "server", arg: 2, scope: !798, file: !226, line: 502, type: !175)
!802 = !DILocation(line: 502, column: 57, scope: !798)
!803 = !DILocalVariable(name: "witem", arg: 3, scope: !798, file: !226, line: 502, type: !175)
!804 = !DILocation(line: 502, column: 71, scope: !798)
!805 = !DILocalVariable(name: "node", scope: !798, file: !226, line: 504, type: !311)
!806 = !DILocation(line: 504, column: 15, scope: !798)
!807 = !DILocalVariable(name: "parent", scope: !798, file: !226, line: 504, type: !311)
!808 = !DILocation(line: 504, column: 22, scope: !798)
!809 = !DILocalVariable(name: "name", scope: !798, file: !226, line: 505, type: !198)
!810 = !DILocation(line: 505, column: 8, scope: !798)
!811 = !DILocalVariable(name: "free_arg", scope: !798, file: !226, line: 506, type: !175)
!812 = !DILocation(line: 506, column: 8, scope: !798)
!813 = !DILocation(line: 508, column: 22, scope: !814)
!814 = distinct !DILexicalBlock(scope: !798, file: !226, line: 508, column: 6)
!815 = !DILocation(line: 508, column: 7, scope: !814)
!816 = !DILocation(line: 508, column: 6, scope: !798)
!817 = !DILocation(line: 509, column: 3, scope: !814)
!818 = !DILocation(line: 511, column: 7, scope: !819)
!819 = distinct !DILexicalBlock(scope: !798, file: !226, line: 511, column: 6)
!820 = !DILocation(line: 511, column: 6, scope: !819)
!821 = !DILocation(line: 511, column: 12, scope: !819)
!822 = !DILocation(line: 511, column: 6, scope: !798)
!823 = !DILocation(line: 512, column: 3, scope: !824)
!824 = distinct !DILexicalBlock(scope: !819, file: !226, line: 511, column: 21)
!825 = distinct !{!825, !823}
!826 = !DILocation(line: 512, column: 24, scope: !827)
!827 = !DILexicalBlockFile(scope: !828, file: !226, discriminator: 1)
!828 = distinct !DILexicalBlock(scope: !824, file: !226, line: 512, column: 6)
!829 = !DILocation(line: 512, column: 8, scope: !827)
!830 = !DILocation(line: 512, column: 35, scope: !827)
!831 = distinct !{!831, !832}
!832 = !DILocation(line: 512, column: 35, scope: !828)
!833 = !DILocation(line: 512, column: 40, scope: !834)
!834 = !DILexicalBlockFile(scope: !835, file: !226, discriminator: 2)
!835 = distinct !DILexicalBlock(scope: !828, file: !226, line: 512, column: 38)
!836 = !DILocation(line: 512, column: 122, scope: !837)
!837 = !DILexicalBlockFile(scope: !834, file: !226, discriminator: 4)
!838 = !DILocation(line: 512, column: 137, scope: !834)
!839 = !DILocation(line: 512, column: 158, scope: !840)
!840 = !DILexicalBlockFile(scope: !828, file: !226, discriminator: 3)
!841 = !DILocation(line: 513, column: 2, scope: !824)
!842 = !DILocation(line: 515, column: 19, scope: !798)
!843 = !DILocation(line: 515, column: 9, scope: !798)
!844 = !DILocation(line: 515, column: 7, scope: !798)
!845 = !DILocation(line: 516, column: 6, scope: !846)
!846 = distinct !DILexicalBlock(scope: !798, file: !226, line: 516, column: 6)
!847 = !DILocation(line: 516, column: 11, scope: !846)
!848 = !DILocation(line: 516, column: 18, scope: !846)
!849 = !DILocation(line: 516, column: 42, scope: !850)
!850 = !DILexicalBlockFile(scope: !846, file: !226, discriminator: 1)
!851 = !DILocation(line: 516, column: 22, scope: !850)
!852 = !DILocation(line: 516, column: 6, scope: !850)
!853 = !DILocation(line: 517, column: 51, scope: !854)
!854 = distinct !DILexicalBlock(scope: !846, file: !226, line: 516, column: 49)
!855 = !DILocation(line: 517, column: 3, scope: !854)
!856 = !DILocation(line: 518, column: 19, scope: !854)
!857 = !DILocation(line: 518, column: 3, scope: !854)
!858 = !DILocation(line: 519, column: 3, scope: !854)
!859 = !DILocation(line: 522, column: 32, scope: !798)
!860 = !DILocation(line: 522, column: 11, scope: !798)
!861 = !DILocation(line: 522, column: 9, scope: !798)
!862 = !DILocation(line: 523, column: 6, scope: !863)
!863 = distinct !DILexicalBlock(scope: !798, file: !226, line: 523, column: 6)
!864 = !DILocation(line: 523, column: 13, scope: !863)
!865 = !DILocation(line: 523, column: 6, scope: !798)
!866 = !DILocation(line: 524, column: 32, scope: !867)
!867 = distinct !DILexicalBlock(scope: !863, file: !226, line: 523, column: 21)
!868 = !DILocation(line: 524, column: 44, scope: !867)
!869 = !DILocation(line: 524, column: 52, scope: !867)
!870 = !DILocation(line: 524, column: 76, scope: !867)
!871 = !DILocation(line: 524, column: 12, scope: !867)
!872 = !DILocation(line: 524, column: 10, scope: !867)
!873 = !DILocation(line: 525, column: 2, scope: !867)
!874 = !DILocation(line: 527, column: 6, scope: !875)
!875 = distinct !DILexicalBlock(scope: !798, file: !226, line: 527, column: 6)
!876 = !DILocation(line: 527, column: 13, scope: !875)
!877 = !DILocation(line: 527, column: 20, scope: !875)
!878 = !DILocation(line: 527, column: 23, scope: !879)
!879 = !DILexicalBlockFile(scope: !875, file: !226, discriminator: 1)
!880 = !DILocation(line: 527, column: 28, scope: !879)
!881 = !DILocation(line: 527, column: 6, scope: !879)
!882 = !DILocation(line: 528, column: 23, scope: !883)
!883 = distinct !DILexicalBlock(scope: !875, file: !226, line: 527, column: 37)
!884 = !DILocation(line: 528, column: 35, scope: !883)
!885 = !DILocation(line: 528, column: 43, scope: !883)
!886 = !DILocation(line: 528, column: 49, scope: !883)
!887 = !DILocation(line: 528, column: 3, scope: !883)
!888 = !DILocation(line: 529, column: 2, scope: !883)
!889 = !DILocation(line: 531, column: 2, scope: !798)
!890 = !DILocation(line: 532, column: 18, scope: !798)
!891 = !DILocation(line: 532, column: 2, scope: !798)
!892 = !DILocation(line: 533, column: 1, scope: !798)
!893 = !DILocation(line: 533, column: 1, scope: !894)
!894 = !DILexicalBlockFile(scope: !798, file: !226, discriminator: 1)
!895 = distinct !DISubprogram(name: "cmd_statusbar_info", scope: !226, file: !226, line: 694, type: !333, isLocal: true, isDefinition: true, scopeLine: 695, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !236)
!896 = !DILocalVariable(name: "data", arg: 1, scope: !895, file: !226, line: 694, type: !190)
!897 = !DILocation(line: 694, column: 44, scope: !895)
!898 = !DILocalVariable(name: "free_arg", scope: !895, file: !226, line: 696, type: !175)
!899 = !DILocation(line: 696, column: 8, scope: !895)
!900 = !DILocalVariable(name: "name", scope: !895, file: !226, line: 697, type: !198)
!901 = !DILocation(line: 697, column: 8, scope: !895)
!902 = !DILocation(line: 698, column: 22, scope: !903)
!903 = distinct !DILexicalBlock(scope: !895, file: !226, line: 698, column: 6)
!904 = !DILocation(line: 698, column: 7, scope: !903)
!905 = !DILocation(line: 698, column: 6, scope: !895)
!906 = !DILocation(line: 699, column: 3, scope: !903)
!907 = !DILocation(line: 701, column: 7, scope: !908)
!908 = distinct !DILexicalBlock(scope: !895, file: !226, line: 701, column: 6)
!909 = !DILocation(line: 701, column: 6, scope: !908)
!910 = !DILocation(line: 701, column: 12, scope: !908)
!911 = !DILocation(line: 701, column: 6, scope: !895)
!912 = !DILocation(line: 702, column: 3, scope: !913)
!913 = distinct !DILexicalBlock(scope: !908, file: !226, line: 701, column: 21)
!914 = distinct !{!914, !912}
!915 = !DILocation(line: 702, column: 24, scope: !916)
!916 = !DILexicalBlockFile(scope: !917, file: !226, discriminator: 1)
!917 = distinct !DILexicalBlock(scope: !913, file: !226, line: 702, column: 6)
!918 = !DILocation(line: 702, column: 8, scope: !916)
!919 = !DILocation(line: 702, column: 35, scope: !916)
!920 = distinct !{!920, !921}
!921 = !DILocation(line: 702, column: 35, scope: !917)
!922 = !DILocation(line: 702, column: 40, scope: !923)
!923 = !DILexicalBlockFile(scope: !924, file: !226, discriminator: 2)
!924 = distinct !DILexicalBlock(scope: !917, file: !226, line: 702, column: 38)
!925 = !DILocation(line: 702, column: 122, scope: !926)
!926 = !DILexicalBlockFile(scope: !923, file: !226, discriminator: 4)
!927 = !DILocation(line: 702, column: 137, scope: !923)
!928 = !DILocation(line: 702, column: 158, scope: !929)
!929 = !DILexicalBlockFile(scope: !917, file: !226, discriminator: 3)
!930 = !DILocation(line: 703, column: 2, scope: !913)
!931 = !DILocation(line: 706, column: 27, scope: !895)
!932 = !DILocation(line: 706, column: 2, scope: !895)
!933 = !DILocation(line: 707, column: 18, scope: !895)
!934 = !DILocation(line: 707, column: 2, scope: !895)
!935 = !DILocation(line: 708, column: 2, scope: !895)
!936 = !DILocation(line: 709, column: 1, scope: !895)
!937 = distinct !DISubprogram(name: "cmd_statusbar_additem_modifyitem", scope: !226, file: !226, line: 621, type: !545, isLocal: true, isDefinition: true, scopeLine: 622, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !236)
!938 = !DILocalVariable(name: "data", arg: 1, scope: !937, file: !226, line: 621, type: !190)
!939 = !DILocation(line: 621, column: 58, scope: !937)
!940 = !DILocalVariable(name: "server", arg: 2, scope: !937, file: !226, line: 621, type: !175)
!941 = !DILocation(line: 621, column: 70, scope: !937)
!942 = !DILocalVariable(name: "witem", arg: 3, scope: !937, file: !226, line: 621, type: !175)
!943 = !DILocation(line: 621, column: 84, scope: !937)
!944 = !DILocalVariable(name: "node", scope: !937, file: !226, line: 623, type: !311)
!945 = !DILocation(line: 623, column: 15, scope: !937)
!946 = !DILocalVariable(name: "optlist", scope: !937, file: !226, line: 624, type: !554)
!947 = !DILocation(line: 624, column: 14, scope: !937)
!948 = !DILocalVariable(name: "item", scope: !937, file: !226, line: 625, type: !198)
!949 = !DILocation(line: 625, column: 8, scope: !937)
!950 = !DILocalVariable(name: "statusbar", scope: !937, file: !226, line: 625, type: !198)
!951 = !DILocation(line: 625, column: 15, scope: !937)
!952 = !DILocalVariable(name: "value", scope: !937, file: !226, line: 625, type: !198)
!953 = !DILocation(line: 625, column: 27, scope: !937)
!954 = !DILocalVariable(name: "free_arg", scope: !937, file: !226, line: 626, type: !175)
!955 = !DILocation(line: 626, column: 8, scope: !937)
!956 = !DILocalVariable(name: "index", scope: !937, file: !226, line: 627, type: !200)
!957 = !DILocation(line: 627, column: 6, scope: !937)
!958 = !DILocalVariable(name: "additem", scope: !937, file: !226, line: 628, type: !200)
!959 = !DILocation(line: 628, column: 6, scope: !937)
!960 = !DILocation(line: 628, column: 33, scope: !937)
!961 = !DILocation(line: 628, column: 24, scope: !937)
!962 = !DILocation(line: 628, column: 17, scope: !937)
!963 = !DILocation(line: 630, column: 22, scope: !964)
!964 = distinct !DILexicalBlock(scope: !937, file: !226, line: 630, column: 6)
!965 = !DILocation(line: 630, column: 7, scope: !964)
!966 = !DILocation(line: 630, column: 6, scope: !937)
!967 = !DILocation(line: 632, column: 3, scope: !964)
!968 = !DILocation(line: 634, column: 7, scope: !969)
!969 = distinct !DILexicalBlock(scope: !937, file: !226, line: 634, column: 6)
!970 = !DILocation(line: 634, column: 6, scope: !969)
!971 = !DILocation(line: 634, column: 17, scope: !969)
!972 = !DILocation(line: 634, column: 6, scope: !937)
!973 = !DILocation(line: 635, column: 3, scope: !974)
!974 = distinct !DILexicalBlock(scope: !969, file: !226, line: 634, column: 26)
!975 = distinct !{!975, !973}
!976 = !DILocation(line: 635, column: 24, scope: !977)
!977 = !DILexicalBlockFile(scope: !978, file: !226, discriminator: 1)
!978 = distinct !DILexicalBlock(scope: !974, file: !226, line: 635, column: 6)
!979 = !DILocation(line: 635, column: 8, scope: !977)
!980 = !DILocation(line: 635, column: 35, scope: !977)
!981 = distinct !{!981, !982}
!982 = !DILocation(line: 635, column: 35, scope: !978)
!983 = !DILocation(line: 635, column: 40, scope: !984)
!984 = !DILexicalBlockFile(scope: !985, file: !226, discriminator: 2)
!985 = distinct !DILexicalBlock(scope: !978, file: !226, line: 635, column: 38)
!986 = !DILocation(line: 635, column: 122, scope: !987)
!987 = !DILexicalBlockFile(scope: !984, file: !226, discriminator: 4)
!988 = !DILocation(line: 635, column: 137, scope: !984)
!989 = !DILocation(line: 635, column: 158, scope: !990)
!990 = !DILexicalBlockFile(scope: !978, file: !226, discriminator: 3)
!991 = !DILocation(line: 636, column: 2, scope: !974)
!992 = !DILocation(line: 638, column: 38, scope: !937)
!993 = !DILocation(line: 638, column: 49, scope: !937)
!994 = !DILocation(line: 638, column: 55, scope: !937)
!995 = !DILocation(line: 638, column: 9, scope: !937)
!996 = !DILocation(line: 638, column: 7, scope: !937)
!997 = !DILocation(line: 639, column: 6, scope: !998)
!998 = distinct !DILexicalBlock(scope: !937, file: !226, line: 639, column: 6)
!999 = !DILocation(line: 639, column: 11, scope: !998)
!1000 = !DILocation(line: 639, column: 6, scope: !937)
!1001 = !DILocation(line: 640, column: 19, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !998, file: !226, line: 639, column: 19)
!1003 = !DILocation(line: 640, column: 3, scope: !1002)
!1004 = !DILocation(line: 641, column: 3, scope: !1002)
!1005 = !DILocation(line: 645, column: 8, scope: !937)
!1006 = !DILocation(line: 646, column: 30, scope: !937)
!1007 = !DILocation(line: 646, column: 10, scope: !937)
!1008 = !DILocation(line: 646, column: 8, scope: !937)
!1009 = !DILocation(line: 647, column: 6, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !937, file: !226, line: 647, column: 6)
!1011 = !DILocation(line: 647, column: 12, scope: !1010)
!1012 = !DILocation(line: 647, column: 6, scope: !937)
!1013 = !DILocation(line: 648, column: 29, scope: !1010)
!1014 = !DILocation(line: 648, column: 35, scope: !1010)
!1015 = !DILocation(line: 648, column: 11, scope: !1010)
!1016 = !DILocation(line: 648, column: 9, scope: !1010)
!1017 = !DILocation(line: 648, column: 3, scope: !1010)
!1018 = !DILocation(line: 649, column: 30, scope: !937)
!1019 = !DILocation(line: 649, column: 10, scope: !937)
!1020 = !DILocation(line: 649, column: 8, scope: !937)
!1021 = !DILocation(line: 650, column: 6, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !937, file: !226, line: 650, column: 6)
!1023 = !DILocation(line: 650, column: 12, scope: !1022)
!1024 = !DILocation(line: 650, column: 6, scope: !937)
!1025 = !DILocation(line: 651, column: 29, scope: !1022)
!1026 = !DILocation(line: 651, column: 35, scope: !1022)
!1027 = !DILocation(line: 651, column: 11, scope: !1022)
!1028 = !DILocation(line: 651, column: 42, scope: !1022)
!1029 = !DILocation(line: 651, column: 9, scope: !1022)
!1030 = !DILocation(line: 651, column: 3, scope: !1022)
!1031 = !DILocation(line: 654, column: 35, scope: !937)
!1032 = !DILocation(line: 654, column: 47, scope: !937)
!1033 = !DILocation(line: 654, column: 53, scope: !937)
!1034 = !DILocation(line: 654, column: 59, scope: !937)
!1035 = !DILocation(line: 654, column: 9, scope: !937)
!1036 = !DILocation(line: 654, column: 7, scope: !937)
!1037 = !DILocation(line: 657, column: 30, scope: !937)
!1038 = !DILocation(line: 657, column: 10, scope: !937)
!1039 = !DILocation(line: 657, column: 8, scope: !937)
!1040 = !DILocation(line: 658, column: 6, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !937, file: !226, line: 658, column: 6)
!1042 = !DILocation(line: 658, column: 12, scope: !1041)
!1043 = !DILocation(line: 658, column: 6, scope: !937)
!1044 = !DILocation(line: 658, column: 40, scope: !1045)
!1045 = !DILexicalBlockFile(scope: !1041, file: !226, discriminator: 1)
!1046 = !DILocation(line: 658, column: 52, scope: !1045)
!1047 = !DILocation(line: 658, column: 75, scope: !1045)
!1048 = !DILocation(line: 658, column: 70, scope: !1045)
!1049 = !DILocation(line: 658, column: 20, scope: !1050)
!1050 = !DILexicalBlockFile(scope: !1045, file: !226, discriminator: 2)
!1051 = !DILocation(line: 658, column: 20, scope: !1045)
!1052 = !DILocation(line: 660, column: 30, scope: !937)
!1053 = !DILocation(line: 660, column: 10, scope: !937)
!1054 = !DILocation(line: 660, column: 8, scope: !937)
!1055 = !DILocation(line: 661, column: 6, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !937, file: !226, line: 661, column: 6)
!1057 = !DILocation(line: 661, column: 12, scope: !1056)
!1058 = !DILocation(line: 661, column: 6, scope: !937)
!1059 = !DILocation(line: 662, column: 23, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1056, file: !226, line: 661, column: 20)
!1061 = !DILocation(line: 662, column: 35, scope: !1060)
!1062 = !DILocation(line: 662, column: 73, scope: !1060)
!1063 = !DILocation(line: 662, column: 54, scope: !1060)
!1064 = !DILocation(line: 662, column: 89, scope: !1060)
!1065 = !DILocation(line: 662, column: 3, scope: !1066)
!1066 = !DILexicalBlockFile(scope: !1060, file: !226, discriminator: 1)
!1067 = !DILocation(line: 665, column: 2, scope: !1060)
!1068 = !DILocation(line: 667, column: 2, scope: !937)
!1069 = !DILocation(line: 668, column: 18, scope: !937)
!1070 = !DILocation(line: 668, column: 2, scope: !937)
!1071 = !DILocation(line: 669, column: 1, scope: !937)
!1072 = !DILocation(line: 669, column: 1, scope: !1073)
!1073 = !DILexicalBlockFile(scope: !937, file: !226, discriminator: 1)
!1074 = distinct !DISubprogram(name: "cmd_statusbar_removeitem", scope: !226, file: !226, line: 672, type: !545, isLocal: true, isDefinition: true, scopeLine: 673, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !236)
!1075 = !DILocalVariable(name: "data", arg: 1, scope: !1074, file: !226, line: 672, type: !190)
!1076 = !DILocation(line: 672, column: 50, scope: !1074)
!1077 = !DILocalVariable(name: "server", arg: 2, scope: !1074, file: !226, line: 672, type: !175)
!1078 = !DILocation(line: 672, column: 62, scope: !1074)
!1079 = !DILocalVariable(name: "witem", arg: 3, scope: !1074, file: !226, line: 672, type: !175)
!1080 = !DILocation(line: 672, column: 76, scope: !1074)
!1081 = !DILocalVariable(name: "node", scope: !1074, file: !226, line: 674, type: !311)
!1082 = !DILocation(line: 674, column: 15, scope: !1074)
!1083 = !DILocalVariable(name: "item", scope: !1074, file: !226, line: 675, type: !198)
!1084 = !DILocation(line: 675, column: 8, scope: !1074)
!1085 = !DILocalVariable(name: "statusbar", scope: !1074, file: !226, line: 675, type: !198)
!1086 = !DILocation(line: 675, column: 15, scope: !1074)
!1087 = !DILocalVariable(name: "free_arg", scope: !1074, file: !226, line: 676, type: !175)
!1088 = !DILocation(line: 676, column: 8, scope: !1074)
!1089 = !DILocation(line: 677, column: 22, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1074, file: !226, line: 677, column: 6)
!1091 = !DILocation(line: 677, column: 7, scope: !1090)
!1092 = !DILocation(line: 677, column: 6, scope: !1074)
!1093 = !DILocation(line: 678, column: 3, scope: !1090)
!1094 = !DILocation(line: 680, column: 7, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1074, file: !226, line: 680, column: 6)
!1096 = !DILocation(line: 680, column: 6, scope: !1095)
!1097 = !DILocation(line: 680, column: 17, scope: !1095)
!1098 = !DILocation(line: 680, column: 6, scope: !1074)
!1099 = !DILocation(line: 681, column: 3, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1095, file: !226, line: 680, column: 26)
!1101 = distinct !{!1101, !1099}
!1102 = !DILocation(line: 681, column: 24, scope: !1103)
!1103 = !DILexicalBlockFile(scope: !1104, file: !226, discriminator: 1)
!1104 = distinct !DILexicalBlock(scope: !1100, file: !226, line: 681, column: 6)
!1105 = !DILocation(line: 681, column: 8, scope: !1103)
!1106 = !DILocation(line: 681, column: 35, scope: !1103)
!1107 = distinct !{!1107, !1108}
!1108 = !DILocation(line: 681, column: 35, scope: !1104)
!1109 = !DILocation(line: 681, column: 40, scope: !1110)
!1110 = !DILexicalBlockFile(scope: !1111, file: !226, discriminator: 2)
!1111 = distinct !DILexicalBlock(scope: !1104, file: !226, line: 681, column: 38)
!1112 = !DILocation(line: 681, column: 122, scope: !1113)
!1113 = !DILexicalBlockFile(scope: !1110, file: !226, discriminator: 4)
!1114 = !DILocation(line: 681, column: 137, scope: !1110)
!1115 = !DILocation(line: 681, column: 158, scope: !1116)
!1116 = !DILexicalBlockFile(scope: !1104, file: !226, discriminator: 3)
!1117 = !DILocation(line: 682, column: 2, scope: !1100)
!1118 = !DILocation(line: 684, column: 38, scope: !1074)
!1119 = !DILocation(line: 684, column: 49, scope: !1074)
!1120 = !DILocation(line: 684, column: 9, scope: !1074)
!1121 = !DILocation(line: 684, column: 7, scope: !1074)
!1122 = !DILocation(line: 686, column: 6, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1074, file: !226, line: 686, column: 6)
!1124 = !DILocation(line: 686, column: 11, scope: !1123)
!1125 = !DILocation(line: 686, column: 6, scope: !1074)
!1126 = !DILocation(line: 687, column: 23, scope: !1123)
!1127 = !DILocation(line: 687, column: 35, scope: !1123)
!1128 = !DILocation(line: 687, column: 41, scope: !1123)
!1129 = !DILocation(line: 687, column: 3, scope: !1123)
!1130 = !DILocation(line: 689, column: 2, scope: !1074)
!1131 = !DILocation(line: 690, column: 18, scope: !1074)
!1132 = !DILocation(line: 690, column: 2, scope: !1074)
!1133 = !DILocation(line: 691, column: 1, scope: !1074)
!1134 = !DILocation(line: 691, column: 1, scope: !1135)
!1135 = !DILexicalBlockFile(scope: !1074, file: !226, discriminator: 1)
!1136 = distinct !DISubprogram(name: "statusbar_config_deinit", scope: !226, file: !226, line: 788, type: !290, isLocal: false, isDefinition: true, scopeLine: 789, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !236)
!1137 = !DILocation(line: 790, column: 2, scope: !1136)
!1138 = !DILocation(line: 791, column: 2, scope: !1136)
!1139 = !DILocation(line: 793, column: 2, scope: !1136)
!1140 = !DILocation(line: 794, column: 2, scope: !1136)
!1141 = !DILocation(line: 795, column: 2, scope: !1136)
!1142 = !DILocation(line: 796, column: 2, scope: !1136)
!1143 = !DILocation(line: 797, column: 2, scope: !1136)
!1144 = !DILocation(line: 798, column: 2, scope: !1136)
!1145 = !DILocation(line: 799, column: 2, scope: !1136)
!1146 = !DILocation(line: 800, column: 2, scope: !1136)
!1147 = !DILocation(line: 801, column: 2, scope: !1136)
!1148 = !DILocation(line: 802, column: 1, scope: !1136)
!1149 = distinct !DISubprogram(name: "statusbar_reset_defaults", scope: !226, file: !226, line: 107, type: !290, isLocal: true, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !236)
!1150 = !DILocalVariable(name: "config", scope: !1149, file: !226, line: 109, type: !1151)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64, align: 64)
!1152 = !DIDerivedType(tag: DW_TAG_typedef, name: "CONFIG_REC", file: !63, line: 18, baseType: !1153)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CONFIG_REC", file: !63, line: 49, size: 576, align: 64, elements: !1154)
!1154 = !{!1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1255, !1418, !1419}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !1153, file: !63, line: 50, baseType: !198, size: 64, align: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "create_mode", scope: !1153, file: !63, line: 51, baseType: !200, size: 32, align: 32, offset: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "modifycounter", scope: !1153, file: !63, line: 52, baseType: !200, size: 32, align: 32, offset: 96)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "last_error", scope: !1153, file: !63, line: 54, baseType: !198, size: 64, align: 64, offset: 128)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "mainnode", scope: !1153, file: !63, line: 55, baseType: !311, size: 64, align: 64, offset: 192)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !1153, file: !63, line: 56, baseType: !554, size: 64, align: 64, offset: 256)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "cache_nodes", scope: !1153, file: !63, line: 57, baseType: !554, size: 64, align: 64, offset: 320)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "scanner", scope: !1153, file: !63, line: 59, baseType: !1163, size: 64, align: 64, offset: 384)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64, align: 64)
!1164 = !DIDerivedType(tag: DW_TAG_typedef, name: "GScanner", file: !4, line: 37, baseType: !1165)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GScanner", file: !4, line: 169, size: 1152, align: 64, elements: !1166)
!1166 = !{!1167, !1168, !1170, !1171, !1174, !1179, !1211, !1213, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !1165, file: !4, line: 172, baseType: !183, size: 64, align: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "max_parse_errors", scope: !1165, file: !4, line: 173, baseType: !1169, size: 32, align: 32, offset: 64)
!1169 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !184, line: 55, baseType: !220)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "parse_errors", scope: !1165, file: !4, line: 176, baseType: !1169, size: 32, align: 32, offset: 96)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "input_name", scope: !1165, file: !4, line: 179, baseType: !1172, size: 64, align: 64, offset: 128)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64, align: 64)
!1173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "qdata", scope: !1165, file: !4, line: 182, baseType: !1175, size: 64, align: 64, offset: 192)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64, align: 64)
!1176 = !DIDerivedType(tag: DW_TAG_typedef, name: "GData", file: !1177, line: 36, baseType: !1178)
!1177 = !DIFile(filename: "/usr/include/glib-2.0/glib/gdataset.h", directory: "/home/lichi/Desktop/irssi/task1")
!1178 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GData", file: !1177, line: 36, flags: DIFlagFwdDecl)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !1165, file: !4, line: 185, baseType: !1180, size: 64, align: 64, offset: 256)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64, align: 64)
!1181 = !DIDerivedType(tag: DW_TAG_typedef, name: "GScannerConfig", file: !4, line: 38, baseType: !1182)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GScannerConfig", file: !4, line: 127, size: 320, align: 64, elements: !1183)
!1183 = !{!1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "cset_skip_characters", scope: !1182, file: !4, line: 131, baseType: !187, size: 64, align: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "cset_identifier_first", scope: !1182, file: !4, line: 132, baseType: !187, size: 64, align: 64, offset: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "cset_identifier_nth", scope: !1182, file: !4, line: 133, baseType: !187, size: 64, align: 64, offset: 128)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "cpair_comment_single", scope: !1182, file: !4, line: 134, baseType: !187, size: 64, align: 64, offset: 192)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "case_sensitive", scope: !1182, file: !4, line: 138, baseType: !1169, size: 1, align: 32, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "skip_comment_multi", scope: !1182, file: !4, line: 143, baseType: !1169, size: 1, align: 32, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "skip_comment_single", scope: !1182, file: !4, line: 144, baseType: !1169, size: 1, align: 32, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "scan_comment_multi", scope: !1182, file: !4, line: 145, baseType: !1169, size: 1, align: 32, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "scan_identifier", scope: !1182, file: !4, line: 146, baseType: !1169, size: 1, align: 32, offset: 260, flags: DIFlagBitField, extraData: i64 256)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "scan_identifier_1char", scope: !1182, file: !4, line: 147, baseType: !1169, size: 1, align: 32, offset: 261, flags: DIFlagBitField, extraData: i64 256)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "scan_identifier_NULL", scope: !1182, file: !4, line: 148, baseType: !1169, size: 1, align: 32, offset: 262, flags: DIFlagBitField, extraData: i64 256)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "scan_symbols", scope: !1182, file: !4, line: 149, baseType: !1169, size: 1, align: 32, offset: 263, flags: DIFlagBitField, extraData: i64 256)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "scan_binary", scope: !1182, file: !4, line: 150, baseType: !1169, size: 1, align: 32, offset: 264, flags: DIFlagBitField, extraData: i64 256)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "scan_octal", scope: !1182, file: !4, line: 151, baseType: !1169, size: 1, align: 32, offset: 265, flags: DIFlagBitField, extraData: i64 256)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "scan_float", scope: !1182, file: !4, line: 152, baseType: !1169, size: 1, align: 32, offset: 266, flags: DIFlagBitField, extraData: i64 256)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "scan_hex", scope: !1182, file: !4, line: 153, baseType: !1169, size: 1, align: 32, offset: 267, flags: DIFlagBitField, extraData: i64 256)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "scan_hex_dollar", scope: !1182, file: !4, line: 154, baseType: !1169, size: 1, align: 32, offset: 268, flags: DIFlagBitField, extraData: i64 256)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "scan_string_sq", scope: !1182, file: !4, line: 155, baseType: !1169, size: 1, align: 32, offset: 269, flags: DIFlagBitField, extraData: i64 256)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "scan_string_dq", scope: !1182, file: !4, line: 156, baseType: !1169, size: 1, align: 32, offset: 270, flags: DIFlagBitField, extraData: i64 256)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "numbers_2_int", scope: !1182, file: !4, line: 157, baseType: !1169, size: 1, align: 32, offset: 271, flags: DIFlagBitField, extraData: i64 256)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "int_2_float", scope: !1182, file: !4, line: 158, baseType: !1169, size: 1, align: 32, offset: 272, flags: DIFlagBitField, extraData: i64 256)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "identifier_2_string", scope: !1182, file: !4, line: 159, baseType: !1169, size: 1, align: 32, offset: 273, flags: DIFlagBitField, extraData: i64 256)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "char_2_token", scope: !1182, file: !4, line: 160, baseType: !1169, size: 1, align: 32, offset: 274, flags: DIFlagBitField, extraData: i64 256)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_2_token", scope: !1182, file: !4, line: 161, baseType: !1169, size: 1, align: 32, offset: 275, flags: DIFlagBitField, extraData: i64 256)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "scope_0_fallback", scope: !1182, file: !4, line: 162, baseType: !1169, size: 1, align: 32, offset: 276, flags: DIFlagBitField, extraData: i64 256)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "store_int64", scope: !1182, file: !4, line: 163, baseType: !1169, size: 1, align: 32, offset: 277, flags: DIFlagBitField, extraData: i64 256)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "padding_dummy", scope: !1182, file: !4, line: 166, baseType: !1169, size: 32, align: 32, offset: 288)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !1165, file: !4, line: 188, baseType: !1212, size: 32, align: 32, offset: 320)
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTokenType", file: !4, line: 109, baseType: !3)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1165, file: !4, line: 189, baseType: !1214, size: 64, align: 64, offset: 384)
!1214 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTokenValue", file: !4, line: 39, baseType: !1215)
!1215 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_GTokenValue", file: !4, line: 111, size: 64, align: 64, elements: !1216)
!1216 = !{!1217, !1218, !1219, !1222, !1223, !1224, !1227, !1230, !1231, !1232, !1233, !1236}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "v_symbol", scope: !1215, file: !4, line: 113, baseType: !183, size: 64, align: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "v_identifier", scope: !1215, file: !4, line: 114, baseType: !187, size: 64, align: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "v_binary", scope: !1215, file: !4, line: 115, baseType: !1220, size: 64, align: 64)
!1220 = !DIDerivedType(tag: DW_TAG_typedef, name: "gulong", file: !184, line: 54, baseType: !1221)
!1221 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "v_octal", scope: !1215, file: !4, line: 116, baseType: !1220, size: 64, align: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "v_int", scope: !1215, file: !4, line: 117, baseType: !1220, size: 64, align: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "v_int64", scope: !1215, file: !4, line: 118, baseType: !1225, size: 64, align: 64)
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint64", file: !1226, line: 52, baseType: !1221)
!1226 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "v_float", scope: !1215, file: !4, line: 119, baseType: !1228, size: 64, align: 64)
!1228 = !DIDerivedType(tag: DW_TAG_typedef, name: "gdouble", file: !184, line: 58, baseType: !1229)
!1229 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "v_hex", scope: !1215, file: !4, line: 120, baseType: !1220, size: 64, align: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "v_string", scope: !1215, file: !4, line: 121, baseType: !187, size: 64, align: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "v_comment", scope: !1215, file: !4, line: 122, baseType: !187, size: 64, align: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "v_char", scope: !1215, file: !4, line: 123, baseType: !1234, size: 8, align: 8)
!1234 = !DIDerivedType(tag: DW_TAG_typedef, name: "guchar", file: !184, line: 52, baseType: !1235)
!1235 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "v_error", scope: !1215, file: !4, line: 124, baseType: !1169, size: 32, align: 32)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1165, file: !4, line: 190, baseType: !1169, size: 32, align: 32, offset: 448)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "position", scope: !1165, file: !4, line: 191, baseType: !1169, size: 32, align: 32, offset: 480)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "next_token", scope: !1165, file: !4, line: 194, baseType: !1212, size: 32, align: 32, offset: 512)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "next_value", scope: !1165, file: !4, line: 195, baseType: !1214, size: 64, align: 64, offset: 576)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "next_line", scope: !1165, file: !4, line: 196, baseType: !1169, size: 32, align: 32, offset: 640)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "next_position", scope: !1165, file: !4, line: 197, baseType: !1169, size: 32, align: 32, offset: 672)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_table", scope: !1165, file: !4, line: 201, baseType: !554, size: 64, align: 64, offset: 704)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "input_fd", scope: !1165, file: !4, line: 202, baseType: !221, size: 32, align: 32, offset: 768)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !1165, file: !4, line: 203, baseType: !1172, size: 64, align: 64, offset: 832)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "text_end", scope: !1165, file: !4, line: 204, baseType: !1172, size: 64, align: 64, offset: 896)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1165, file: !4, line: 205, baseType: !187, size: 64, align: 64, offset: 960)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "scope_id", scope: !1165, file: !4, line: 206, baseType: !1169, size: 32, align: 32, offset: 1024)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "msg_handler", scope: !1165, file: !4, line: 210, baseType: !1250, size: 64, align: 64, offset: 1088)
!1250 = !DIDerivedType(tag: DW_TAG_typedef, name: "GScannerMsgFunc", file: !4, line: 41, baseType: !1251)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64, align: 64)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{null, !1163, !187, !1254}
!1254 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !184, line: 50, baseType: !221)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !1153, file: !63, line: 62, baseType: !1256, size: 64, align: 64, offset: 448)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64, align: 64)
!1257 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !31, line: 41, baseType: !1258)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !31, line: 97, size: 896, align: 64, elements: !1259)
!1259 = !{!1260, !1261, !1385, !1386, !1391, !1392, !1393, !1394, !1395, !1404, !1405, !1406, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !1258, file: !31, line: 100, baseType: !221, size: 32, align: 32)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !1258, file: !31, line: 101, baseType: !1262, size: 64, align: 64, offset: 64)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64, align: 64)
!1263 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !31, line: 42, baseType: !1264)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !31, line: 131, size: 512, align: 64, elements: !1265)
!1265 = !{!1266, !1285, !1289, !1295, !1299, !1372, !1376, !1381}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !1264, file: !31, line: 133, baseType: !1267, size: 64, align: 64)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64, align: 64)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!1270, !1256, !187, !1271, !1272, !1273}
!1270 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !31, line: 75, baseType: !30)
!1271 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !1226, line: 66, baseType: !1221)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64, align: 64)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64, align: 64)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64, align: 64)
!1275 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !1276, line: 42, baseType: !1277)
!1276 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !1276, line: 44, size: 128, align: 64, elements: !1278)
!1278 = !{!1279, !1283, !1284}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1277, file: !1276, line: 46, baseType: !1280, size: 32, align: 32)
!1280 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !1281, line: 36, baseType: !1282)
!1281 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!1282 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !1226, line: 45, baseType: !220)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1277, file: !1276, line: 47, baseType: !221, size: 32, align: 32, offset: 32)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !1277, file: !1276, line: 48, baseType: !187, size: 64, align: 64, offset: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !1264, file: !31, line: 138, baseType: !1286, size: 64, align: 64, offset: 64)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64, align: 64)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!1270, !1256, !1172, !1271, !1272, !1273}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !1264, file: !31, line: 143, baseType: !1290, size: 64, align: 64, offset: 128)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64, align: 64)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{!1270, !1256, !1293, !1294, !1273}
!1293 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !1226, line: 51, baseType: !186)
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !31, line: 82, baseType: !37)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !1264, file: !31, line: 147, baseType: !1296, size: 64, align: 64, offset: 192)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64, align: 64)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{!1270, !1256, !1273}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !1264, file: !31, line: 149, baseType: !1300, size: 64, align: 64, offset: 256)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64, align: 64)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{!1303, !1256, !1371}
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64, align: 64)
!1304 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !43, line: 64, baseType: !1305)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !43, line: 171, size: 768, align: 64, elements: !1306)
!1306 = !{!1307, !1308, !1328, !1355, !1356, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !1305, file: !43, line: 174, baseType: !183, size: 64, align: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !1305, file: !43, line: 175, baseType: !1309, size: 64, align: 64, offset: 64)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64, align: 64)
!1310 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !43, line: 77, baseType: !1311)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !43, line: 196, size: 192, align: 64, elements: !1312)
!1312 = !{!1313, !1317, !1318}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1311, file: !43, line: 198, baseType: !1314, size: 64, align: 64)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64, align: 64)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{null, !183}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !1311, file: !43, line: 199, baseType: !1314, size: 64, align: 64, offset: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1311, file: !43, line: 200, baseType: !1319, size: 64, align: 64, offset: 128)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64, align: 64)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{null, !183, !1303, !1322, !1327}
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64, align: 64)
!1323 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !43, line: 155, baseType: !1324)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64, align: 64)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!1254, !183}
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64, align: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !1305, file: !43, line: 177, baseType: !1329, size: 64, align: 64, offset: 128)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64, align: 64)
!1330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1331)
!1331 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !43, line: 130, baseType: !1332)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !43, line: 214, size: 384, align: 64, elements: !1333)
!1333 = !{!1334, !1339, !1343, !1347, !1351, !1352}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1332, file: !43, line: 216, baseType: !1335, size: 64, align: 64)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64, align: 64)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{!1254, !1303, !1338}
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, align: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1332, file: !43, line: 218, baseType: !1340, size: 64, align: 64, offset: 64)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64, align: 64)
!1341 = !DISubroutineType(types: !1342)
!1342 = !{!1254, !1303}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !1332, file: !43, line: 219, baseType: !1344, size: 64, align: 64, offset: 128)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64, align: 64)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!1254, !1303, !1323, !183}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !1332, file: !43, line: 222, baseType: !1348, size: 64, align: 64, offset: 192)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64, align: 64)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{null, !1303}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !1332, file: !43, line: 226, baseType: !1323, size: 64, align: 64, offset: 256)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !1332, file: !43, line: 227, baseType: !1353, size: 64, align: 64, offset: 320)
!1353 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !43, line: 212, baseType: !1354)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !1305, file: !43, line: 178, baseType: !1169, size: 32, align: 32, offset: 192)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1305, file: !43, line: 180, baseType: !1357, size: 64, align: 64, offset: 256)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64, align: 64)
!1358 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !43, line: 48, baseType: !1359)
!1359 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !43, line: 48, flags: DIFlagFwdDecl)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1305, file: !43, line: 182, baseType: !221, size: 32, align: 32, offset: 320)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1305, file: !43, line: 183, baseType: !1169, size: 32, align: 32, offset: 352)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !1305, file: !43, line: 184, baseType: !1169, size: 32, align: 32, offset: 384)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !1305, file: !43, line: 186, baseType: !205, size: 64, align: 64, offset: 448)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1305, file: !43, line: 188, baseType: !1303, size: 64, align: 64, offset: 512)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1305, file: !43, line: 189, baseType: !1303, size: 64, align: 64, offset: 576)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1305, file: !43, line: 191, baseType: !198, size: 64, align: 64, offset: 640)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1305, file: !43, line: 193, baseType: !1368, size: 64, align: 64, offset: 704)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64, align: 64)
!1369 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !43, line: 65, baseType: !1370)
!1370 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !43, line: 65, flags: DIFlagFwdDecl)
!1371 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !43, line: 39, baseType: !42)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !1264, file: !31, line: 151, baseType: !1373, size: 64, align: 64, offset: 320)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64, align: 64)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{null, !1256}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !1264, file: !31, line: 152, baseType: !1377, size: 64, align: 64, offset: 384)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64, align: 64)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!1270, !1256, !1380, !1273}
!1380 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !31, line: 95, baseType: !51)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !1264, file: !31, line: 155, baseType: !1382, size: 64, align: 64, offset: 448)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64, align: 64)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{!1380, !1256}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !1258, file: !31, line: 103, baseType: !187, size: 64, align: 64, offset: 128)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !1258, file: !31, line: 104, baseType: !1387, size: 64, align: 64, offset: 192)
!1387 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !1388, line: 77, baseType: !1389)
!1388 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64, align: 64)
!1390 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !1388, line: 77, flags: DIFlagFwdDecl)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !1258, file: !31, line: 105, baseType: !1387, size: 64, align: 64, offset: 256)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !1258, file: !31, line: 106, baseType: !187, size: 64, align: 64, offset: 320)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !1258, file: !31, line: 107, baseType: !1169, size: 32, align: 32, offset: 384)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !1258, file: !31, line: 109, baseType: !1271, size: 64, align: 64, offset: 448)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !1258, file: !31, line: 110, baseType: !1396, size: 64, align: 64, offset: 512)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64, align: 64)
!1397 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !1398, line: 39, baseType: !1399)
!1398 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !1398, line: 41, size: 192, align: 64, elements: !1400)
!1400 = !{!1401, !1402, !1403}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1399, file: !1398, line: 43, baseType: !187, size: 64, align: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1399, file: !1398, line: 44, baseType: !1271, size: 64, align: 64, offset: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !1399, file: !1398, line: 45, baseType: !1271, size: 64, align: 64, offset: 128)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !1258, file: !31, line: 111, baseType: !1396, size: 64, align: 64, offset: 576)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !1258, file: !31, line: 112, baseType: !1396, size: 64, align: 64, offset: 640)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !1258, file: !31, line: 113, baseType: !1407, size: 48, align: 8, offset: 704)
!1407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 48, align: 8, elements: !1408)
!1408 = !{!1409}
!1409 = !DISubrange(count: 6)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !1258, file: !31, line: 117, baseType: !1169, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !1258, file: !31, line: 118, baseType: !1169, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !1258, file: !31, line: 119, baseType: !1169, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !1258, file: !31, line: 120, baseType: !1169, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !1258, file: !31, line: 121, baseType: !1169, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !1258, file: !31, line: 122, baseType: !1169, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !1258, file: !31, line: 124, baseType: !183, size: 64, align: 64, offset: 768)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !1258, file: !31, line: 125, baseType: !183, size: 64, align: 64, offset: 832)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_indent_level", scope: !1153, file: !63, line: 63, baseType: !200, size: 32, align: 32, offset: 512)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_last_lf", scope: !1153, file: !63, line: 64, baseType: !200, size: 32, align: 32, offset: 544)
!1420 = !DILocation(line: 109, column: 14, scope: !1149)
!1421 = !DILocalVariable(name: "node", scope: !1149, file: !226, line: 110, type: !311)
!1422 = !DILocation(line: 110, column: 22, scope: !1149)
!1423 = !DILocation(line: 112, column: 2, scope: !1149)
!1424 = !DILocation(line: 112, column: 9, scope: !1425)
!1425 = !DILexicalBlockFile(scope: !1149, file: !226, discriminator: 1)
!1426 = !DILocation(line: 112, column: 26, scope: !1425)
!1427 = !DILocation(line: 112, column: 2, scope: !1425)
!1428 = !DILocation(line: 113, column: 27, scope: !1149)
!1429 = !DILocation(line: 113, column: 45, scope: !1149)
!1430 = !DILocation(line: 113, column: 3, scope: !1149)
!1431 = !DILocation(line: 112, column: 2, scope: !1432)
!1432 = !DILexicalBlockFile(scope: !1149, file: !226, discriminator: 2)
!1433 = distinct !{!1433, !1423}
!1434 = !DILocation(line: 114, column: 25, scope: !1149)
!1435 = !DILocation(line: 117, column: 11, scope: !1149)
!1436 = !DILocation(line: 117, column: 9, scope: !1149)
!1437 = !DILocation(line: 118, column: 20, scope: !1149)
!1438 = !DILocation(line: 118, column: 28, scope: !1149)
!1439 = !DILocation(line: 118, column: 2, scope: !1149)
!1440 = !DILocation(line: 119, column: 30, scope: !1149)
!1441 = !DILocation(line: 119, column: 9, scope: !1149)
!1442 = !DILocation(line: 119, column: 7, scope: !1149)
!1443 = !DILocation(line: 120, column: 13, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1149, file: !226, line: 120, column: 13)
!1445 = !DILocation(line: 120, column: 18, scope: !1444)
!1446 = !DILocation(line: 120, column: 13, scope: !1149)
!1447 = !DILocation(line: 121, column: 35, scope: !1444)
!1448 = !DILocation(line: 121, column: 3, scope: !1444)
!1449 = !DILocation(line: 122, column: 22, scope: !1149)
!1450 = !DILocation(line: 122, column: 9, scope: !1149)
!1451 = !DILocation(line: 123, column: 1, scope: !1149)
!1452 = distinct !DISubprogram(name: "read_statusbar_config_from_node", scope: !226, file: !226, line: 229, type: !1453, isLocal: true, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !236)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{null, !311}
!1455 = !DILocalVariable(name: "node", arg: 1, scope: !1452, file: !226, line: 229, type: !311)
!1456 = !DILocation(line: 229, column: 58, scope: !1452)
!1457 = !DILocalVariable(name: "items", scope: !1452, file: !226, line: 231, type: !311)
!1458 = !DILocation(line: 231, column: 15, scope: !1452)
!1459 = !DILocalVariable(name: "tmp", scope: !1452, file: !226, line: 232, type: !205)
!1460 = !DILocation(line: 232, column: 10, scope: !1452)
!1461 = !DILocation(line: 234, column: 30, scope: !1452)
!1462 = !DILocation(line: 234, column: 42, scope: !1452)
!1463 = !DILocation(line: 234, column: 10, scope: !1452)
!1464 = !DILocation(line: 234, column: 8, scope: !1452)
!1465 = !DILocation(line: 235, column: 6, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1452, file: !226, line: 235, column: 6)
!1467 = !DILocation(line: 235, column: 12, scope: !1466)
!1468 = !DILocation(line: 235, column: 6, scope: !1452)
!1469 = !DILocation(line: 236, column: 24, scope: !1466)
!1470 = !DILocation(line: 236, column: 3, scope: !1466)
!1471 = !DILocation(line: 238, column: 33, scope: !1452)
!1472 = !DILocation(line: 238, column: 39, scope: !1452)
!1473 = !DILocation(line: 238, column: 15, scope: !1452)
!1474 = !DILocation(line: 238, column: 13, scope: !1452)
!1475 = !DILocation(line: 239, column: 2, scope: !1452)
!1476 = !DILocation(line: 239, column: 9, scope: !1477)
!1477 = !DILexicalBlockFile(scope: !1478, file: !226, discriminator: 1)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !226, line: 239, column: 2)
!1479 = distinct !DILexicalBlock(scope: !1452, file: !226, line: 239, column: 2)
!1480 = !DILocation(line: 239, column: 13, scope: !1477)
!1481 = !DILocation(line: 239, column: 2, scope: !1477)
!1482 = !DILocation(line: 240, column: 7, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !226, line: 240, column: 7)
!1484 = distinct !DILexicalBlock(scope: !1478, file: !226, line: 239, column: 50)
!1485 = !DILocation(line: 240, column: 12, scope: !1483)
!1486 = !DILocation(line: 240, column: 20, scope: !1483)
!1487 = !DILocation(line: 240, column: 17, scope: !1483)
!1488 = !DILocation(line: 240, column: 7, scope: !1484)
!1489 = !DILocation(line: 241, column: 25, scope: !1483)
!1490 = !DILocation(line: 241, column: 30, scope: !1483)
!1491 = !DILocation(line: 241, column: 4, scope: !1483)
!1492 = !DILocation(line: 242, column: 2, scope: !1484)
!1493 = !DILocation(line: 239, column: 44, scope: !1494)
!1494 = !DILexicalBlockFile(scope: !1478, file: !226, discriminator: 2)
!1495 = !DILocation(line: 239, column: 27, scope: !1494)
!1496 = !DILocation(line: 239, column: 25, scope: !1494)
!1497 = !DILocation(line: 239, column: 2, scope: !1494)
!1498 = distinct !{!1498, !1475}
!1499 = !DILocation(line: 243, column: 1, scope: !1452)
!1500 = distinct !DISubprogram(name: "create_root_statusbars", scope: !226, file: !226, line: 213, type: !290, isLocal: true, isDefinition: true, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !236)
!1501 = !DILocalVariable(name: "bar", scope: !1500, file: !226, line: 215, type: !1502)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64, align: 64)
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "STATUSBAR_REC", file: !194, line: 61, baseType: !1504)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !194, line: 49, size: 448, align: 64, elements: !1505)
!1505 = !{!1506, !1507, !1508, !1614, !1615, !1616, !1617, !1618}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !1504, file: !194, line: 50, baseType: !229, size: 64, align: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !1504, file: !194, line: 51, baseType: !192, size: 64, align: 64, offset: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "parent_window", scope: !1504, file: !194, line: 53, baseType: !1509, size: 64, align: 64, offset: 128)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64, align: 64)
!1510 = !DIDerivedType(tag: DW_TAG_typedef, name: "MAIN_WINDOW_REC", file: !1511, line: 34, baseType: !1512)
!1511 = !DIFile(filename: "mainwindows.h", directory: "/home/lichi/Desktop/irssi/task1")
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1511, line: 16, size: 704, align: 64, elements: !1513)
!1513 = !{!1514, !1593, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1512, file: !1511, line: 17, baseType: !1515, size: 64, align: 64)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64, align: 64)
!1516 = !DIDerivedType(tag: DW_TAG_typedef, name: "WINDOW_REC", file: !1517, line: 117, baseType: !1518)
!1517 = !DIFile(filename: "../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WINDOW_REC", file: !1519, line: 28, size: 1280, align: 64, elements: !1520)
!1519 = !DIFile(filename: "../../src/fe-common/core/fe-windows.h", directory: "/home/lichi/Desktop/irssi/task1")
!1520 = !{!1521, !1522, !1523, !1524, !1525, !1526, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "refnum", scope: !1518, file: !1519, line: 29, baseType: !200, size: 32, align: 32)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1518, file: !1519, line: 30, baseType: !198, size: 64, align: 64, offset: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !1518, file: !1519, line: 32, baseType: !200, size: 32, align: 32, offset: 128)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !1518, file: !1519, line: 32, baseType: !200, size: 32, align: 32, offset: 160)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !1518, file: !1519, line: 34, baseType: !205, size: 64, align: 64, offset: 192)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1518, file: !1519, line: 35, baseType: !1527, size: 64, align: 64, offset: 256)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64, align: 64)
!1528 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !1517, line: 108, baseType: !1529)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !1530, line: 5, size: 704, align: 64, elements: !1531)
!1530 = !DIFile(filename: "../../src/core/window-item-def.h", directory: "/home/lichi/Desktop/irssi/task1")
!1531 = !{!1532, !1534, !1535, !1536, !1537, !1541, !1542, !1543, !1548, !1549, !1550, !1554}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1529, file: !1533, line: 3, baseType: !200, size: 32, align: 32)
!1533 = !DIFile(filename: "../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !1529, file: !1533, line: 4, baseType: !200, size: 32, align: 32, offset: 32)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !1529, file: !1533, line: 5, baseType: !554, size: 64, align: 64, offset: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !1529, file: !1533, line: 7, baseType: !175, size: 64, align: 64, offset: 128)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !1529, file: !1533, line: 8, baseType: !1538, size: 64, align: 64, offset: 192)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64, align: 64)
!1539 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !1517, line: 107, baseType: !1540)
!1540 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !1517, line: 107, flags: DIFlagFwdDecl)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !1529, file: !1533, line: 9, baseType: !198, size: 64, align: 64, offset: 256)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1529, file: !1533, line: 10, baseType: !198, size: 64, align: 64, offset: 320)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !1529, file: !1533, line: 11, baseType: !1544, size: 64, align: 64, offset: 384)
!1544 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !1545, line: 75, baseType: !1546)
!1545 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!1546 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1547, line: 139, baseType: !186)
!1547 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !1529, file: !1533, line: 12, baseType: !200, size: 32, align: 32, offset: 448)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !1529, file: !1533, line: 13, baseType: !198, size: 64, align: 64, offset: 512)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !1529, file: !1533, line: 15, baseType: !1551, size: 64, align: 64, offset: 576)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64, align: 64)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{null, !1527}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !1529, file: !1533, line: 17, baseType: !1555, size: 64, align: 64, offset: 640)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64, align: 64)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{!190, !1527}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "active_server", scope: !1518, file: !1519, line: 36, baseType: !1538, size: 64, align: 64, offset: 320)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "connect_server", scope: !1518, file: !1519, line: 37, baseType: !1538, size: 64, align: 64, offset: 384)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !1518, file: !1519, line: 38, baseType: !198, size: 64, align: 64, offset: 448)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1518, file: !1519, line: 40, baseType: !200, size: 32, align: 32, offset: 512)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "bound_items", scope: !1518, file: !1519, line: 41, baseType: !205, size: 64, align: 64, offset: 576)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "immortal", scope: !1518, file: !1519, line: 43, baseType: !220, size: 1, align: 32, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "sticky_refnum", scope: !1518, file: !1519, line: 44, baseType: !220, size: 1, align: 32, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !1518, file: !1519, line: 45, baseType: !220, size: 1, align: 32, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !1518, file: !1519, line: 48, baseType: !1567, size: 64, align: 64, offset: 704)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64, align: 64)
!1568 = !DIDerivedType(tag: DW_TAG_typedef, name: "HISTORY_REC", file: !1569, line: 14, baseType: !1570)
!1569 = !DIFile(filename: "../../src/fe-common/core/command-history.h", directory: "/home/lichi/Desktop/irssi/task1")
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1569, line: 6, size: 256, align: 64, elements: !1571)
!1571 = !{!1572, !1573, !1582, !1583, !1584}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1570, file: !1569, line: 7, baseType: !198, size: 64, align: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1570, file: !1569, line: 9, baseType: !1574, size: 64, align: 64, offset: 64)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64, align: 64)
!1575 = !DIDerivedType(tag: DW_TAG_typedef, name: "GList", file: !1576, line: 37, baseType: !1577)
!1576 = !DIFile(filename: "/usr/include/glib-2.0/glib/glist.h", directory: "/home/lichi/Desktop/irssi/task1")
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GList", file: !1576, line: 39, size: 192, align: 64, elements: !1578)
!1578 = !{!1579, !1580, !1581}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1577, file: !1576, line: 41, baseType: !183, size: 64, align: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1577, file: !1576, line: 42, baseType: !1574, size: 64, align: 64, offset: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1577, file: !1576, line: 43, baseType: !1574, size: 64, align: 64, offset: 128)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "lines", scope: !1570, file: !1569, line: 10, baseType: !200, size: 32, align: 32, offset: 128)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1570, file: !1569, line: 12, baseType: !200, size: 32, align: 32, offset: 160)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "redo", scope: !1570, file: !1569, line: 13, baseType: !200, size: 1, align: 32, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "history_name", scope: !1518, file: !1519, line: 49, baseType: !198, size: 64, align: 64, offset: 768)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !1518, file: !1519, line: 51, baseType: !200, size: 32, align: 32, offset: 832)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !1518, file: !1519, line: 52, baseType: !198, size: 64, align: 64, offset: 896)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "last_timestamp", scope: !1518, file: !1519, line: 54, baseType: !1544, size: 64, align: 64, offset: 960)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "last_line", scope: !1518, file: !1519, line: 55, baseType: !1544, size: 64, align: 64, offset: 1024)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "theme_name", scope: !1518, file: !1519, line: 57, baseType: !198, size: 64, align: 64, offset: 1088)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "theme", scope: !1518, file: !1519, line: 58, baseType: !175, size: 64, align: 64, offset: 1152)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "gui_data", scope: !1518, file: !1519, line: 60, baseType: !175, size: 64, align: 64, offset: 1216)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "screen_win", scope: !1512, file: !1511, line: 19, baseType: !1594, size: 64, align: 64, offset: 64)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64, align: 64)
!1595 = !DIDerivedType(tag: DW_TAG_typedef, name: "TERM_WINDOW", file: !1596, line: 4, baseType: !1597)
!1596 = !DIFile(filename: "term.h", directory: "/home/lichi/Desktop/irssi/task1")
!1597 = !DICompositeType(tag: DW_TAG_structure_type, name: "_TERM_WINDOW", file: !1596, line: 4, flags: DIFlagFwdDecl)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "sticky_windows", scope: !1512, file: !1511, line: 20, baseType: !200, size: 32, align: 32, offset: 128)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "first_line", scope: !1512, file: !1511, line: 22, baseType: !200, size: 32, align: 32, offset: 160)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "last_line", scope: !1512, file: !1511, line: 22, baseType: !200, size: 32, align: 32, offset: 192)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "first_column", scope: !1512, file: !1511, line: 23, baseType: !200, size: 32, align: 32, offset: 224)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "last_column", scope: !1512, file: !1511, line: 23, baseType: !200, size: 32, align: 32, offset: 256)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !1512, file: !1511, line: 24, baseType: !200, size: 32, align: 32, offset: 288)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !1512, file: !1511, line: 24, baseType: !200, size: 32, align: 32, offset: 320)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "statusbars", scope: !1512, file: !1511, line: 26, baseType: !205, size: 64, align: 64, offset: 384)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_lines_top", scope: !1512, file: !1511, line: 27, baseType: !200, size: 32, align: 32, offset: 448)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_lines_bottom", scope: !1512, file: !1511, line: 27, baseType: !200, size: 32, align: 32, offset: 480)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_lines", scope: !1512, file: !1511, line: 28, baseType: !200, size: 32, align: 32, offset: 512)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_columns_left", scope: !1512, file: !1511, line: 29, baseType: !200, size: 32, align: 32, offset: 544)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_columns_right", scope: !1512, file: !1511, line: 29, baseType: !200, size: 32, align: 32, offset: 576)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_columns", scope: !1512, file: !1511, line: 30, baseType: !200, size: 32, align: 32, offset: 608)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !1512, file: !1511, line: 32, baseType: !220, size: 1, align: 32, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "size_dirty", scope: !1512, file: !1511, line: 33, baseType: !220, size: 1, align: 32, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !1504, file: !194, line: 54, baseType: !205, size: 64, align: 64, offset: 192)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !1504, file: !194, line: 56, baseType: !198, size: 64, align: 64, offset: 256)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "real_ypos", scope: !1504, file: !194, line: 57, baseType: !200, size: 32, align: 32, offset: 320)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !1504, file: !194, line: 59, baseType: !220, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_xpos", scope: !1504, file: !194, line: 60, baseType: !200, size: 32, align: 32, offset: 384)
!1619 = !DILocation(line: 215, column: 24, scope: !1500)
!1620 = !DILocalVariable(name: "tmp", scope: !1500, file: !226, line: 216, type: !205)
!1621 = !DILocation(line: 216, column: 10, scope: !1500)
!1622 = !DILocation(line: 218, column: 15, scope: !1500)
!1623 = !DILocation(line: 218, column: 39, scope: !1500)
!1624 = !DILocation(line: 218, column: 13, scope: !1500)
!1625 = !DILocation(line: 219, column: 2, scope: !1500)
!1626 = !DILocation(line: 219, column: 9, scope: !1627)
!1627 = !DILexicalBlockFile(scope: !1628, file: !226, discriminator: 1)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !226, line: 219, column: 2)
!1629 = distinct !DILexicalBlock(scope: !1500, file: !226, line: 219, column: 2)
!1630 = !DILocation(line: 219, column: 13, scope: !1627)
!1631 = !DILocation(line: 219, column: 2, scope: !1627)
!1632 = !DILocalVariable(name: "rec", scope: !1633, file: !226, line: 220, type: !192)
!1633 = distinct !DILexicalBlock(scope: !1628, file: !226, line: 219, column: 38)
!1634 = !DILocation(line: 220, column: 25, scope: !1633)
!1635 = !DILocation(line: 220, column: 31, scope: !1633)
!1636 = !DILocation(line: 220, column: 36, scope: !1633)
!1637 = !DILocation(line: 222, column: 7, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1633, file: !226, line: 222, column: 7)
!1639 = !DILocation(line: 222, column: 12, scope: !1638)
!1640 = !DILocation(line: 222, column: 17, scope: !1638)
!1641 = !DILocation(line: 222, column: 7, scope: !1633)
!1642 = !DILocation(line: 223, column: 27, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1638, file: !226, line: 222, column: 23)
!1644 = !DILocation(line: 223, column: 51, scope: !1643)
!1645 = !DILocation(line: 223, column: 10, scope: !1643)
!1646 = !DILocation(line: 223, column: 8, scope: !1643)
!1647 = !DILocation(line: 224, column: 42, scope: !1643)
!1648 = !DILocation(line: 224, column: 25, scope: !1643)
!1649 = !DILocation(line: 225, column: 3, scope: !1643)
!1650 = !DILocation(line: 226, column: 2, scope: !1633)
!1651 = !DILocation(line: 219, column: 27, scope: !1652)
!1652 = !DILexicalBlockFile(scope: !1628, file: !226, discriminator: 2)
!1653 = !DILocation(line: 219, column: 32, scope: !1652)
!1654 = !DILocation(line: 219, column: 25, scope: !1652)
!1655 = !DILocation(line: 219, column: 2, scope: !1652)
!1656 = distinct !{!1656, !1625}
!1657 = !DILocation(line: 227, column: 1, scope: !1500)
!1658 = distinct !DISubprogram(name: "statusbar_read_items", scope: !226, file: !226, line: 125, type: !1453, isLocal: true, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !236)
!1659 = !DILocalVariable(name: "items", arg: 1, scope: !1658, file: !226, line: 125, type: !311)
!1660 = !DILocation(line: 125, column: 47, scope: !1658)
!1661 = !DILocalVariable(name: "tmp", scope: !1658, file: !226, line: 127, type: !205)
!1662 = !DILocation(line: 127, column: 10, scope: !1658)
!1663 = !DILocation(line: 129, column: 26, scope: !1658)
!1664 = !DILocation(line: 129, column: 33, scope: !1658)
!1665 = !DILocation(line: 129, column: 8, scope: !1658)
!1666 = !DILocation(line: 129, column: 6, scope: !1658)
!1667 = !DILocation(line: 130, column: 2, scope: !1658)
!1668 = !DILocation(line: 130, column: 9, scope: !1669)
!1669 = !DILexicalBlockFile(scope: !1670, file: !226, discriminator: 1)
!1670 = distinct !DILexicalBlock(scope: !1671, file: !226, line: 130, column: 2)
!1671 = distinct !DILexicalBlock(scope: !1658, file: !226, line: 130, column: 2)
!1672 = !DILocation(line: 130, column: 13, scope: !1669)
!1673 = !DILocation(line: 130, column: 2, scope: !1669)
!1674 = !DILocalVariable(name: "node", scope: !1675, file: !226, line: 131, type: !311)
!1675 = distinct !DILexicalBlock(scope: !1670, file: !226, line: 130, column: 50)
!1676 = !DILocation(line: 131, column: 16, scope: !1675)
!1677 = !DILocation(line: 131, column: 23, scope: !1675)
!1678 = !DILocation(line: 131, column: 28, scope: !1675)
!1679 = !DILocation(line: 133, column: 27, scope: !1675)
!1680 = !DILocation(line: 133, column: 33, scope: !1675)
!1681 = !DILocation(line: 133, column: 38, scope: !1675)
!1682 = !DILocation(line: 133, column: 44, scope: !1675)
!1683 = !DILocation(line: 133, column: 3, scope: !1675)
!1684 = !DILocation(line: 134, column: 2, scope: !1675)
!1685 = !DILocation(line: 130, column: 44, scope: !1686)
!1686 = !DILexicalBlockFile(scope: !1670, file: !226, discriminator: 2)
!1687 = !DILocation(line: 130, column: 27, scope: !1686)
!1688 = !DILocation(line: 130, column: 25, scope: !1686)
!1689 = !DILocation(line: 130, column: 2, scope: !1686)
!1690 = distinct !{!1690, !1667}
!1691 = !DILocation(line: 135, column: 1, scope: !1658)
!1692 = distinct !DISubprogram(name: "statusbar_read_group", scope: !226, file: !226, line: 194, type: !1453, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !236)
!1693 = !DILocalVariable(name: "node", arg: 1, scope: !1692, file: !226, line: 194, type: !311)
!1694 = !DILocation(line: 194, column: 47, scope: !1692)
!1695 = !DILocalVariable(name: "group", scope: !1692, file: !226, line: 196, type: !229)
!1696 = !DILocation(line: 196, column: 23, scope: !1692)
!1697 = !DILocalVariable(name: "tmp", scope: !1692, file: !226, line: 197, type: !205)
!1698 = !DILocation(line: 197, column: 10, scope: !1692)
!1699 = !DILocation(line: 199, column: 2, scope: !1692)
!1700 = distinct !{!1700, !1699}
!1701 = !DILocation(line: 199, column: 12, scope: !1702)
!1702 = !DILexicalBlockFile(scope: !1703, file: !226, discriminator: 1)
!1703 = distinct !DILexicalBlock(scope: !1704, file: !226, line: 199, column: 10)
!1704 = distinct !DILexicalBlock(scope: !1692, file: !226, line: 199, column: 4)
!1705 = !DILocation(line: 199, column: 19, scope: !1702)
!1706 = !DILocation(line: 199, column: 24, scope: !1702)
!1707 = !DILocation(line: 199, column: 43, scope: !1702)
!1708 = !DILocation(line: 199, column: 47, scope: !1709)
!1709 = !DILexicalBlockFile(scope: !1703, file: !226, discriminator: 2)
!1710 = !DILocation(line: 199, column: 54, scope: !1709)
!1711 = !DILocation(line: 199, column: 59, scope: !1709)
!1712 = !DILocation(line: 199, column: 10, scope: !1709)
!1713 = !DILocation(line: 199, column: 81, scope: !1714)
!1714 = !DILexicalBlockFile(scope: !1715, file: !226, discriminator: 3)
!1715 = distinct !DILexicalBlock(scope: !1703, file: !226, line: 199, column: 79)
!1716 = !DILocation(line: 199, column: 90, scope: !1717)
!1717 = !DILexicalBlockFile(scope: !1718, file: !226, discriminator: 4)
!1718 = distinct !DILexicalBlock(scope: !1703, file: !226, line: 199, column: 88)
!1719 = !DILocation(line: 199, column: 181, scope: !1717)
!1720 = !DILocation(line: 199, column: 192, scope: !1721)
!1721 = !DILexicalBlockFile(scope: !1704, file: !226, discriminator: 5)
!1722 = !DILocation(line: 201, column: 31, scope: !1692)
!1723 = !DILocation(line: 201, column: 37, scope: !1692)
!1724 = !DILocation(line: 201, column: 10, scope: !1692)
!1725 = !DILocation(line: 201, column: 8, scope: !1692)
!1726 = !DILocation(line: 202, column: 6, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1692, file: !226, line: 202, column: 6)
!1728 = !DILocation(line: 202, column: 12, scope: !1727)
!1729 = !DILocation(line: 202, column: 6, scope: !1692)
!1730 = !DILocation(line: 203, column: 34, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1727, file: !226, line: 202, column: 20)
!1732 = !DILocation(line: 203, column: 40, scope: !1731)
!1733 = !DILocation(line: 203, column: 11, scope: !1731)
!1734 = !DILocation(line: 203, column: 9, scope: !1731)
!1735 = !DILocation(line: 204, column: 7, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1731, file: !226, line: 204, column: 7)
!1737 = !DILocation(line: 204, column: 30, scope: !1736)
!1738 = !DILocation(line: 204, column: 7, scope: !1731)
!1739 = !DILocation(line: 205, column: 29, scope: !1736)
!1740 = !DILocation(line: 205, column: 27, scope: !1736)
!1741 = !DILocation(line: 205, column: 4, scope: !1736)
!1742 = !DILocation(line: 206, column: 2, scope: !1731)
!1743 = !DILocation(line: 208, column: 33, scope: !1692)
!1744 = !DILocation(line: 208, column: 39, scope: !1692)
!1745 = !DILocation(line: 208, column: 15, scope: !1692)
!1746 = !DILocation(line: 208, column: 13, scope: !1692)
!1747 = !DILocation(line: 209, column: 2, scope: !1692)
!1748 = !DILocation(line: 209, column: 9, scope: !1749)
!1749 = !DILexicalBlockFile(scope: !1750, file: !226, discriminator: 1)
!1750 = distinct !DILexicalBlock(scope: !1751, file: !226, line: 209, column: 2)
!1751 = distinct !DILexicalBlock(scope: !1692, file: !226, line: 209, column: 2)
!1752 = !DILocation(line: 209, column: 13, scope: !1749)
!1753 = !DILocation(line: 209, column: 2, scope: !1749)
!1754 = !DILocation(line: 210, column: 18, scope: !1750)
!1755 = !DILocation(line: 210, column: 25, scope: !1750)
!1756 = !DILocation(line: 210, column: 30, scope: !1750)
!1757 = !DILocation(line: 210, column: 3, scope: !1750)
!1758 = !DILocation(line: 209, column: 44, scope: !1759)
!1759 = !DILexicalBlockFile(scope: !1750, file: !226, discriminator: 2)
!1760 = !DILocation(line: 209, column: 27, scope: !1759)
!1761 = !DILocation(line: 209, column: 25, scope: !1759)
!1762 = !DILocation(line: 209, column: 2, scope: !1759)
!1763 = distinct !{!1763, !1747}
!1764 = !DILocation(line: 211, column: 1, scope: !1692)
!1765 = distinct !DISubprogram(name: "statusbar_read", scope: !226, file: !226, line: 147, type: !1766, isLocal: true, isDefinition: true, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !236)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{null, !229, !311}
!1768 = !DILocalVariable(name: "group", arg: 1, scope: !1765, file: !226, line: 147, type: !229)
!1769 = !DILocation(line: 147, column: 49, scope: !1765)
!1770 = !DILocalVariable(name: "node", arg: 2, scope: !1765, file: !226, line: 147, type: !311)
!1771 = !DILocation(line: 147, column: 69, scope: !1765)
!1772 = !DILocalVariable(name: "bar", scope: !1765, file: !226, line: 149, type: !192)
!1773 = !DILocation(line: 149, column: 24, scope: !1765)
!1774 = !DILocalVariable(name: "tmp", scope: !1765, file: !226, line: 150, type: !205)
!1775 = !DILocation(line: 150, column: 17, scope: !1765)
!1776 = !DILocalVariable(name: "visible_str", scope: !1765, file: !226, line: 151, type: !190)
!1777 = !DILocation(line: 151, column: 21, scope: !1765)
!1778 = !DILocation(line: 153, column: 30, scope: !1765)
!1779 = !DILocation(line: 153, column: 37, scope: !1765)
!1780 = !DILocation(line: 153, column: 43, scope: !1765)
!1781 = !DILocation(line: 153, column: 8, scope: !1765)
!1782 = !DILocation(line: 153, column: 6, scope: !1765)
!1783 = !DILocation(line: 154, column: 27, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1765, file: !226, line: 154, column: 6)
!1785 = !DILocation(line: 154, column: 6, scope: !1784)
!1786 = !DILocation(line: 154, column: 6, scope: !1765)
!1787 = !DILocation(line: 156, column: 7, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1789, file: !226, line: 156, column: 7)
!1789 = distinct !DILexicalBlock(scope: !1784, file: !226, line: 154, column: 51)
!1790 = !DILocation(line: 156, column: 11, scope: !1788)
!1791 = !DILocation(line: 156, column: 7, scope: !1789)
!1792 = !DILocation(line: 157, column: 29, scope: !1788)
!1793 = !DILocation(line: 157, column: 36, scope: !1788)
!1794 = !DILocation(line: 157, column: 4, scope: !1788)
!1795 = !DILocation(line: 158, column: 17, scope: !1789)
!1796 = !DILocation(line: 161, column: 6, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1765, file: !226, line: 161, column: 6)
!1798 = !DILocation(line: 161, column: 10, scope: !1797)
!1799 = !DILocation(line: 161, column: 6, scope: !1765)
!1800 = !DILocation(line: 162, column: 33, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1797, file: !226, line: 161, column: 18)
!1802 = !DILocation(line: 162, column: 40, scope: !1801)
!1803 = !DILocation(line: 162, column: 46, scope: !1801)
!1804 = !DILocation(line: 162, column: 9, scope: !1801)
!1805 = !DILocation(line: 162, column: 7, scope: !1801)
!1806 = !DILocation(line: 163, column: 3, scope: !1801)
!1807 = !DILocation(line: 163, column: 8, scope: !1801)
!1808 = !DILocation(line: 163, column: 13, scope: !1801)
!1809 = !DILocation(line: 164, column: 3, scope: !1801)
!1810 = !DILocation(line: 164, column: 8, scope: !1801)
!1811 = !DILocation(line: 164, column: 18, scope: !1801)
!1812 = !DILocation(line: 165, column: 3, scope: !1801)
!1813 = !DILocation(line: 165, column: 8, scope: !1801)
!1814 = !DILocation(line: 165, column: 17, scope: !1801)
!1815 = !DILocation(line: 166, column: 2, scope: !1801)
!1816 = !DILocation(line: 168, column: 43, scope: !1765)
!1817 = !DILocation(line: 168, column: 23, scope: !1765)
!1818 = !DILocation(line: 168, column: 21, scope: !1765)
!1819 = !DILocation(line: 169, column: 25, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1765, file: !226, line: 169, column: 6)
!1821 = !DILocation(line: 169, column: 6, scope: !1820)
!1822 = !DILocation(line: 169, column: 48, scope: !1820)
!1823 = !DILocation(line: 169, column: 6, scope: !1765)
!1824 = !DILocation(line: 170, column: 17, scope: !1820)
!1825 = !DILocation(line: 170, column: 22, scope: !1820)
!1826 = !DILocation(line: 170, column: 30, scope: !1820)
!1827 = !DILocation(line: 171, column: 30, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1820, file: !226, line: 171, column: 11)
!1829 = !DILocation(line: 171, column: 11, scope: !1828)
!1830 = !DILocation(line: 171, column: 55, scope: !1828)
!1831 = !DILocation(line: 171, column: 11, scope: !1820)
!1832 = !DILocation(line: 172, column: 3, scope: !1828)
!1833 = !DILocation(line: 172, column: 8, scope: !1828)
!1834 = !DILocation(line: 172, column: 16, scope: !1828)
!1835 = !DILocation(line: 174, column: 3, scope: !1828)
!1836 = !DILocation(line: 174, column: 8, scope: !1828)
!1837 = !DILocation(line: 174, column: 16, scope: !1828)
!1838 = !DILocation(line: 176, column: 45, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1765, file: !226, line: 176, column: 6)
!1840 = !DILocation(line: 176, column: 25, scope: !1839)
!1841 = !DILocation(line: 176, column: 6, scope: !1842)
!1842 = !DILexicalBlockFile(scope: !1839, file: !226, discriminator: 1)
!1843 = !DILocation(line: 176, column: 74, scope: !1839)
!1844 = !DILocation(line: 176, column: 6, scope: !1765)
!1845 = !DILocation(line: 177, column: 17, scope: !1839)
!1846 = !DILocation(line: 177, column: 22, scope: !1839)
!1847 = !DILocation(line: 177, column: 27, scope: !1839)
!1848 = !DILocation(line: 178, column: 45, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1765, file: !226, line: 178, column: 6)
!1850 = !DILocation(line: 178, column: 25, scope: !1849)
!1851 = !DILocation(line: 178, column: 6, scope: !1852)
!1852 = !DILexicalBlockFile(scope: !1849, file: !226, discriminator: 1)
!1853 = !DILocation(line: 178, column: 76, scope: !1849)
!1854 = !DILocation(line: 178, column: 6, scope: !1765)
!1855 = !DILocation(line: 179, column: 17, scope: !1849)
!1856 = !DILocation(line: 179, column: 22, scope: !1849)
!1857 = !DILocation(line: 179, column: 32, scope: !1849)
!1858 = !DILocation(line: 180, column: 38, scope: !1765)
!1859 = !DILocation(line: 180, column: 18, scope: !1765)
!1860 = !DILocation(line: 180, column: 2, scope: !1765)
!1861 = !DILocation(line: 180, column: 7, scope: !1765)
!1862 = !DILocation(line: 180, column: 16, scope: !1765)
!1863 = !DILocation(line: 182, column: 29, scope: !1765)
!1864 = !DILocation(line: 182, column: 41, scope: !1765)
!1865 = !DILocation(line: 182, column: 9, scope: !1765)
!1866 = !DILocation(line: 182, column: 7, scope: !1765)
!1867 = !DILocation(line: 183, column: 6, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1765, file: !226, line: 183, column: 6)
!1869 = !DILocation(line: 183, column: 11, scope: !1868)
!1870 = !DILocation(line: 183, column: 6, scope: !1765)
!1871 = !DILocation(line: 185, column: 17, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1868, file: !226, line: 183, column: 19)
!1873 = !DILocation(line: 185, column: 24, scope: !1874)
!1874 = !DILexicalBlockFile(scope: !1872, file: !226, discriminator: 1)
!1875 = !DILocation(line: 185, column: 29, scope: !1874)
!1876 = !DILocation(line: 185, column: 35, scope: !1874)
!1877 = !DILocation(line: 185, column: 17, scope: !1874)
!1878 = !DILocation(line: 186, column: 34, scope: !1872)
!1879 = !DILocation(line: 186, column: 39, scope: !1872)
!1880 = !DILocation(line: 186, column: 44, scope: !1872)
!1881 = !DILocation(line: 186, column: 51, scope: !1872)
!1882 = !DILocation(line: 186, column: 4, scope: !1872)
!1883 = !DILocation(line: 185, column: 17, scope: !1884)
!1884 = !DILexicalBlockFile(scope: !1872, file: !226, discriminator: 2)
!1885 = distinct !{!1885, !1871}
!1886 = !DILocation(line: 188, column: 27, scope: !1872)
!1887 = !DILocation(line: 188, column: 33, scope: !1872)
!1888 = !DILocation(line: 188, column: 9, scope: !1872)
!1889 = !DILocation(line: 188, column: 7, scope: !1872)
!1890 = !DILocation(line: 189, column: 3, scope: !1872)
!1891 = !DILocation(line: 189, column: 10, scope: !1892)
!1892 = !DILexicalBlockFile(scope: !1893, file: !226, discriminator: 1)
!1893 = distinct !DILexicalBlock(scope: !1894, file: !226, line: 189, column: 3)
!1894 = distinct !DILexicalBlock(scope: !1872, file: !226, line: 189, column: 3)
!1895 = !DILocation(line: 189, column: 14, scope: !1892)
!1896 = !DILocation(line: 189, column: 3, scope: !1892)
!1897 = !DILocation(line: 190, column: 24, scope: !1893)
!1898 = !DILocation(line: 190, column: 29, scope: !1893)
!1899 = !DILocation(line: 190, column: 34, scope: !1893)
!1900 = !DILocation(line: 190, column: 4, scope: !1893)
!1901 = !DILocation(line: 189, column: 45, scope: !1902)
!1902 = !DILexicalBlockFile(scope: !1893, file: !226, discriminator: 2)
!1903 = !DILocation(line: 189, column: 28, scope: !1902)
!1904 = !DILocation(line: 189, column: 26, scope: !1902)
!1905 = !DILocation(line: 189, column: 3, scope: !1902)
!1906 = distinct !{!1906, !1890}
!1907 = !DILocation(line: 191, column: 2, scope: !1872)
!1908 = !DILocation(line: 192, column: 1, scope: !1765)
!1909 = distinct !DISubprogram(name: "statusbar_config_find", scope: !226, file: !226, line: 91, type: !1910, isLocal: true, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !236)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{!192, !229, !190}
!1912 = !DILocalVariable(name: "group", arg: 1, scope: !1909, file: !226, line: 91, type: !229)
!1913 = !DILocation(line: 91, column: 44, scope: !1909)
!1914 = !DILocalVariable(name: "name", arg: 2, scope: !1909, file: !226, line: 91, type: !190)
!1915 = !DILocation(line: 91, column: 63, scope: !1909)
!1916 = !DILocalVariable(name: "tmp", scope: !1909, file: !226, line: 93, type: !205)
!1917 = !DILocation(line: 93, column: 10, scope: !1909)
!1918 = !DILocation(line: 95, column: 13, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1909, file: !226, line: 95, column: 2)
!1920 = !DILocation(line: 95, column: 20, scope: !1919)
!1921 = !DILocation(line: 95, column: 11, scope: !1919)
!1922 = !DILocation(line: 95, column: 7, scope: !1919)
!1923 = !DILocation(line: 95, column: 33, scope: !1924)
!1924 = !DILexicalBlockFile(scope: !1925, file: !226, discriminator: 1)
!1925 = distinct !DILexicalBlock(scope: !1919, file: !226, line: 95, column: 2)
!1926 = !DILocation(line: 95, column: 37, scope: !1924)
!1927 = !DILocation(line: 95, column: 2, scope: !1924)
!1928 = !DILocalVariable(name: "config", scope: !1929, file: !226, line: 96, type: !192)
!1929 = distinct !DILexicalBlock(scope: !1925, file: !226, line: 95, column: 62)
!1930 = !DILocation(line: 96, column: 25, scope: !1929)
!1931 = !DILocation(line: 96, column: 34, scope: !1929)
!1932 = !DILocation(line: 96, column: 39, scope: !1929)
!1933 = !DILocation(line: 98, column: 8, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1929, file: !226, line: 98, column: 7)
!1935 = !DILocation(line: 98, column: 16, scope: !1934)
!1936 = !DILocation(line: 98, column: 21, scope: !1934)
!1937 = !DILocation(line: 98, column: 28, scope: !1934)
!1938 = !DILocation(line: 98, column: 31, scope: !1939)
!1939 = !DILexicalBlockFile(scope: !1934, file: !226, discriminator: 1)
!1940 = !DILocation(line: 98, column: 36, scope: !1939)
!1941 = !DILocation(line: 98, column: 7, scope: !1939)
!1942 = !DILocation(line: 99, column: 11, scope: !1934)
!1943 = !DILocation(line: 99, column: 19, scope: !1934)
!1944 = !DILocation(line: 99, column: 27, scope: !1934)
!1945 = !DILocation(line: 99, column: 24, scope: !1934)
!1946 = !DILocation(line: 98, column: 7, scope: !1947)
!1947 = !DILexicalBlockFile(scope: !1934, file: !226, discriminator: 2)
!1948 = !DILocation(line: 100, column: 30, scope: !1934)
!1949 = !DILocation(line: 100, column: 38, scope: !1934)
!1950 = !DILocation(line: 100, column: 44, scope: !1934)
!1951 = !DILocation(line: 100, column: 11, scope: !1934)
!1952 = !DILocation(line: 100, column: 50, scope: !1934)
!1953 = !DILocation(line: 98, column: 7, scope: !1954)
!1954 = !DILexicalBlockFile(scope: !1929, file: !226, discriminator: 3)
!1955 = !DILocation(line: 101, column: 11, scope: !1934)
!1956 = !DILocation(line: 101, column: 4, scope: !1934)
!1957 = !DILocation(line: 102, column: 2, scope: !1929)
!1958 = !DILocation(line: 95, column: 51, scope: !1959)
!1959 = !DILexicalBlockFile(scope: !1925, file: !226, discriminator: 2)
!1960 = !DILocation(line: 95, column: 56, scope: !1959)
!1961 = !DILocation(line: 95, column: 49, scope: !1959)
!1962 = !DILocation(line: 95, column: 2, scope: !1959)
!1963 = distinct !{!1963, !1964}
!1964 = !DILocation(line: 95, column: 2, scope: !1909)
!1965 = !DILocation(line: 104, column: 2, scope: !1909)
!1966 = !DILocation(line: 105, column: 1, scope: !1909)
!1967 = distinct !DISubprogram(name: "statusbar_config_create", scope: !226, file: !226, line: 36, type: !1910, isLocal: true, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !236)
!1968 = !DILocalVariable(name: "group", arg: 1, scope: !1967, file: !226, line: 36, type: !229)
!1969 = !DILocation(line: 36, column: 46, scope: !1967)
!1970 = !DILocalVariable(name: "name", arg: 2, scope: !1967, file: !226, line: 36, type: !190)
!1971 = !DILocation(line: 36, column: 65, scope: !1967)
!1972 = !DILocalVariable(name: "bar", scope: !1967, file: !226, line: 38, type: !192)
!1973 = !DILocation(line: 38, column: 24, scope: !1967)
!1974 = !DILocation(line: 40, column: 9, scope: !1967)
!1975 = distinct !{!1975, !1974}
!1976 = !DILocation(line: 40, column: 17, scope: !1977)
!1977 = !DILexicalBlockFile(scope: !1978, file: !226, discriminator: 1)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !226, line: 40, column: 17)
!1979 = distinct !DILexicalBlock(scope: !1967, file: !226, line: 40, column: 11)
!1980 = !DILocation(line: 40, column: 23, scope: !1977)
!1981 = !DILocation(line: 40, column: 12, scope: !1982)
!1982 = !DILexicalBlockFile(scope: !1983, file: !226, discriminator: 2)
!1983 = distinct !DILexicalBlock(scope: !1978, file: !226, line: 40, column: 10)
!1984 = !DILocation(line: 40, column: 21, scope: !1985)
!1985 = !DILexicalBlockFile(scope: !1986, file: !226, discriminator: 3)
!1986 = distinct !DILexicalBlock(scope: !1978, file: !226, line: 40, column: 19)
!1987 = !DILocation(line: 40, column: 107, scope: !1985)
!1988 = !DILocation(line: 40, column: 14, scope: !1989)
!1989 = !DILexicalBlockFile(scope: !1979, file: !226, discriminator: 4)
!1990 = !DILocation(line: 41, column: 9, scope: !1967)
!1991 = distinct !{!1991, !1990}
!1992 = !DILocation(line: 41, column: 17, scope: !1993)
!1993 = !DILexicalBlockFile(scope: !1994, file: !226, discriminator: 1)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !226, line: 41, column: 17)
!1995 = distinct !DILexicalBlock(scope: !1967, file: !226, line: 41, column: 11)
!1996 = !DILocation(line: 41, column: 22, scope: !1993)
!1997 = !DILocation(line: 41, column: 12, scope: !1998)
!1998 = !DILexicalBlockFile(scope: !1999, file: !226, discriminator: 2)
!1999 = distinct !DILexicalBlock(scope: !1994, file: !226, line: 41, column: 10)
!2000 = !DILocation(line: 41, column: 21, scope: !2001)
!2001 = !DILexicalBlockFile(scope: !2002, file: !226, discriminator: 3)
!2002 = distinct !DILexicalBlock(scope: !1994, file: !226, line: 41, column: 19)
!2003 = !DILocation(line: 41, column: 106, scope: !2001)
!2004 = !DILocation(line: 41, column: 14, scope: !2005)
!2005 = !DILexicalBlockFile(scope: !1995, file: !226, discriminator: 4)
!2006 = !DILocation(line: 43, column: 34, scope: !1967)
!2007 = !DILocation(line: 43, column: 9, scope: !1967)
!2008 = !DILocation(line: 43, column: 6, scope: !1967)
!2009 = !DILocation(line: 44, column: 38, scope: !1967)
!2010 = !DILocation(line: 44, column: 45, scope: !1967)
!2011 = !DILocation(line: 44, column: 58, scope: !1967)
!2012 = !DILocation(line: 44, column: 23, scope: !1967)
!2013 = !DILocation(line: 44, column: 2, scope: !1967)
!2014 = !DILocation(line: 44, column: 9, scope: !1967)
!2015 = !DILocation(line: 44, column: 21, scope: !1967)
!2016 = !DILocation(line: 46, column: 23, scope: !1967)
!2017 = !DILocation(line: 46, column: 14, scope: !1967)
!2018 = !DILocation(line: 46, column: 2, scope: !1967)
!2019 = !DILocation(line: 46, column: 7, scope: !1967)
!2020 = !DILocation(line: 46, column: 12, scope: !1967)
!2021 = !DILocation(line: 47, column: 9, scope: !1967)
!2022 = !DILocation(line: 47, column: 2, scope: !1967)
!2023 = !DILocation(line: 48, column: 1, scope: !1967)
!2024 = distinct !DISubprogram(name: "statusbar_read_item", scope: !226, file: !226, line: 137, type: !2025, isLocal: true, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !236)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{null, !192, !311}
!2027 = !DILocalVariable(name: "bar", arg: 1, scope: !2024, file: !226, line: 137, type: !192)
!2028 = !DILocation(line: 137, column: 55, scope: !2024)
!2029 = !DILocalVariable(name: "node", arg: 2, scope: !2024, file: !226, line: 137, type: !311)
!2030 = !DILocation(line: 137, column: 73, scope: !2024)
!2031 = !DILocalVariable(name: "priority", scope: !2024, file: !226, line: 139, type: !200)
!2032 = !DILocation(line: 139, column: 6, scope: !2024)
!2033 = !DILocalVariable(name: "right_alignment", scope: !2024, file: !226, line: 139, type: !200)
!2034 = !DILocation(line: 139, column: 16, scope: !2024)
!2035 = !DILocation(line: 141, column: 33, scope: !2024)
!2036 = !DILocation(line: 141, column: 13, scope: !2024)
!2037 = !DILocation(line: 141, column: 11, scope: !2024)
!2038 = !DILocation(line: 142, column: 50, scope: !2024)
!2039 = !DILocation(line: 142, column: 30, scope: !2024)
!2040 = !DILocation(line: 142, column: 20, scope: !2041)
!2041 = !DILexicalBlockFile(scope: !2024, file: !226, discriminator: 1)
!2042 = !DILocation(line: 142, column: 83, scope: !2024)
!2043 = !DILocation(line: 142, column: 18, scope: !2024)
!2044 = !DILocation(line: 143, column: 31, scope: !2024)
!2045 = !DILocation(line: 143, column: 36, scope: !2024)
!2046 = !DILocation(line: 143, column: 42, scope: !2024)
!2047 = !DILocation(line: 144, column: 10, scope: !2024)
!2048 = !DILocation(line: 144, column: 20, scope: !2024)
!2049 = !DILocation(line: 143, column: 2, scope: !2024)
!2050 = !DILocation(line: 145, column: 1, scope: !2024)
!2051 = distinct !DISubprogram(name: "statusbar_item_config_create", scope: !226, file: !226, line: 51, type: !2052, isLocal: true, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !236)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{!212, !192, !190, !200, !200}
!2054 = !DILocalVariable(name: "bar", arg: 1, scope: !2051, file: !226, line: 51, type: !192)
!2055 = !DILocation(line: 51, column: 52, scope: !2051)
!2056 = !DILocalVariable(name: "name", arg: 2, scope: !2051, file: !226, line: 51, type: !190)
!2057 = !DILocation(line: 51, column: 69, scope: !2051)
!2058 = !DILocalVariable(name: "priority", arg: 3, scope: !2051, file: !226, line: 52, type: !200)
!2059 = !DILocation(line: 52, column: 13, scope: !2051)
!2060 = !DILocalVariable(name: "right_alignment", arg: 4, scope: !2051, file: !226, line: 52, type: !200)
!2061 = !DILocation(line: 52, column: 27, scope: !2051)
!2062 = !DILocalVariable(name: "rec", scope: !2051, file: !226, line: 54, type: !212)
!2063 = !DILocation(line: 54, column: 24, scope: !2051)
!2064 = !DILocation(line: 56, column: 2, scope: !2051)
!2065 = distinct !{!2065, !2064}
!2066 = !DILocation(line: 56, column: 10, scope: !2067)
!2067 = !DILexicalBlockFile(scope: !2068, file: !226, discriminator: 1)
!2068 = distinct !DILexicalBlock(scope: !2069, file: !226, line: 56, column: 10)
!2069 = distinct !DILexicalBlock(scope: !2051, file: !226, line: 56, column: 4)
!2070 = !DILocation(line: 56, column: 14, scope: !2067)
!2071 = !DILocation(line: 56, column: 5, scope: !2072)
!2072 = !DILexicalBlockFile(scope: !2073, file: !226, discriminator: 2)
!2073 = distinct !DILexicalBlock(scope: !2068, file: !226, line: 56, column: 3)
!2074 = !DILocation(line: 56, column: 14, scope: !2075)
!2075 = !DILexicalBlockFile(scope: !2076, file: !226, discriminator: 3)
!2076 = distinct !DILexicalBlock(scope: !2068, file: !226, line: 56, column: 12)
!2077 = !DILocation(line: 56, column: 98, scope: !2075)
!2078 = !DILocation(line: 56, column: 7, scope: !2079)
!2079 = !DILexicalBlockFile(scope: !2069, file: !226, discriminator: 4)
!2080 = !DILocation(line: 57, column: 2, scope: !2051)
!2081 = distinct !{!2081, !2080}
!2082 = !DILocation(line: 57, column: 10, scope: !2083)
!2083 = !DILexicalBlockFile(scope: !2084, file: !226, discriminator: 1)
!2084 = distinct !DILexicalBlock(scope: !2085, file: !226, line: 57, column: 10)
!2085 = distinct !DILexicalBlock(scope: !2051, file: !226, line: 57, column: 4)
!2086 = !DILocation(line: 57, column: 15, scope: !2083)
!2087 = !DILocation(line: 57, column: 5, scope: !2088)
!2088 = !DILexicalBlockFile(scope: !2089, file: !226, discriminator: 2)
!2089 = distinct !DILexicalBlock(scope: !2084, file: !226, line: 57, column: 3)
!2090 = !DILocation(line: 57, column: 14, scope: !2091)
!2091 = !DILexicalBlockFile(scope: !2092, file: !226, discriminator: 3)
!2092 = distinct !DILexicalBlock(scope: !2084, file: !226, line: 57, column: 12)
!2093 = !DILocation(line: 57, column: 99, scope: !2091)
!2094 = !DILocation(line: 57, column: 7, scope: !2095)
!2095 = !DILexicalBlockFile(scope: !2085, file: !226, discriminator: 4)
!2096 = !DILocation(line: 59, column: 34, scope: !2051)
!2097 = !DILocation(line: 59, column: 9, scope: !2051)
!2098 = !DILocation(line: 59, column: 6, scope: !2051)
!2099 = !DILocation(line: 60, column: 30, scope: !2051)
!2100 = !DILocation(line: 60, column: 35, scope: !2051)
!2101 = !DILocation(line: 60, column: 42, scope: !2051)
!2102 = !DILocation(line: 60, column: 15, scope: !2051)
!2103 = !DILocation(line: 60, column: 2, scope: !2051)
!2104 = !DILocation(line: 60, column: 7, scope: !2051)
!2105 = !DILocation(line: 60, column: 13, scope: !2051)
!2106 = !DILocation(line: 62, column: 30, scope: !2051)
!2107 = !DILocation(line: 62, column: 21, scope: !2051)
!2108 = !DILocation(line: 62, column: 9, scope: !2051)
!2109 = !DILocation(line: 62, column: 14, scope: !2051)
!2110 = !DILocation(line: 62, column: 19, scope: !2051)
!2111 = !DILocation(line: 63, column: 18, scope: !2051)
!2112 = !DILocation(line: 63, column: 2, scope: !2051)
!2113 = !DILocation(line: 63, column: 7, scope: !2051)
!2114 = !DILocation(line: 63, column: 16, scope: !2051)
!2115 = !DILocation(line: 64, column: 32, scope: !2051)
!2116 = !DILocation(line: 64, column: 9, scope: !2051)
!2117 = !DILocation(line: 64, column: 14, scope: !2051)
!2118 = !DILocation(line: 64, column: 30, scope: !2051)
!2119 = !DILocation(line: 66, column: 9, scope: !2051)
!2120 = !DILocation(line: 66, column: 2, scope: !2051)
!2121 = !DILocation(line: 67, column: 1, scope: !2051)
!2122 = distinct !DISubprogram(name: "sbar_get_type", scope: !226, file: !226, line: 259, type: !2123, isLocal: true, isDefinition: true, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !236)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!190, !192}
!2125 = !DILocalVariable(name: "rec", arg: 1, scope: !2122, file: !226, line: 259, type: !192)
!2126 = !DILocation(line: 259, column: 56, scope: !2122)
!2127 = !DILocation(line: 261, column: 9, scope: !2122)
!2128 = !DILocation(line: 261, column: 14, scope: !2122)
!2129 = !DILocation(line: 261, column: 19, scope: !2122)
!2130 = !DILocation(line: 261, column: 9, scope: !2131)
!2131 = !DILexicalBlockFile(scope: !2122, file: !226, discriminator: 1)
!2132 = !DILocation(line: 262, column: 3, scope: !2122)
!2133 = !DILocation(line: 262, column: 8, scope: !2122)
!2134 = !DILocation(line: 262, column: 13, scope: !2122)
!2135 = !DILocation(line: 261, column: 9, scope: !2136)
!2136 = !DILexicalBlockFile(scope: !2122, file: !226, discriminator: 2)
!2137 = !DILocation(line: 261, column: 9, scope: !2138)
!2138 = !DILexicalBlockFile(scope: !2122, file: !226, discriminator: 3)
!2139 = !DILocation(line: 261, column: 2, scope: !2138)
!2140 = distinct !DISubprogram(name: "sbar_get_placement", scope: !226, file: !226, line: 265, type: !2123, isLocal: true, isDefinition: true, scopeLine: 266, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !236)
!2141 = !DILocalVariable(name: "rec", arg: 1, scope: !2140, file: !226, line: 265, type: !192)
!2142 = !DILocation(line: 265, column: 61, scope: !2140)
!2143 = !DILocation(line: 267, column: 9, scope: !2140)
!2144 = !DILocation(line: 267, column: 14, scope: !2140)
!2145 = !DILocation(line: 267, column: 24, scope: !2140)
!2146 = !DILocation(line: 267, column: 9, scope: !2147)
!2147 = !DILexicalBlockFile(scope: !2140, file: !226, discriminator: 1)
!2148 = !DILocation(line: 268, column: 3, scope: !2140)
!2149 = !DILocation(line: 268, column: 8, scope: !2140)
!2150 = !DILocation(line: 268, column: 18, scope: !2140)
!2151 = !DILocation(line: 267, column: 9, scope: !2152)
!2152 = !DILexicalBlockFile(scope: !2140, file: !226, discriminator: 2)
!2153 = !DILocation(line: 267, column: 9, scope: !2154)
!2154 = !DILexicalBlockFile(scope: !2140, file: !226, discriminator: 3)
!2155 = !DILocation(line: 267, column: 2, scope: !2154)
!2156 = distinct !DISubprogram(name: "sbar_get_visibility", scope: !226, file: !226, line: 271, type: !2123, isLocal: true, isDefinition: true, scopeLine: 272, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !236)
!2157 = !DILocalVariable(name: "rec", arg: 1, scope: !2156, file: !226, line: 271, type: !192)
!2158 = !DILocation(line: 271, column: 62, scope: !2156)
!2159 = !DILocation(line: 273, column: 9, scope: !2156)
!2160 = !DILocation(line: 273, column: 14, scope: !2156)
!2161 = !DILocation(line: 273, column: 22, scope: !2156)
!2162 = !DILocation(line: 273, column: 9, scope: !2163)
!2163 = !DILexicalBlockFile(scope: !2156, file: !226, discriminator: 1)
!2164 = !DILocation(line: 274, column: 3, scope: !2156)
!2165 = !DILocation(line: 274, column: 8, scope: !2156)
!2166 = !DILocation(line: 274, column: 16, scope: !2156)
!2167 = !DILocation(line: 274, column: 3, scope: !2163)
!2168 = !DILocation(line: 275, column: 3, scope: !2156)
!2169 = !DILocation(line: 275, column: 8, scope: !2156)
!2170 = !DILocation(line: 275, column: 16, scope: !2156)
!2171 = !DILocation(line: 274, column: 3, scope: !2172)
!2172 = !DILexicalBlockFile(scope: !2156, file: !226, discriminator: 2)
!2173 = !DILocation(line: 274, column: 3, scope: !2174)
!2174 = !DILexicalBlockFile(scope: !2156, file: !226, discriminator: 3)
!2175 = !DILocation(line: 273, column: 9, scope: !2172)
!2176 = !DILocation(line: 273, column: 9, scope: !2174)
!2177 = !DILocation(line: 273, column: 2, scope: !2174)
!2178 = distinct !DISubprogram(name: "sbar_node", scope: !226, file: !226, line: 296, type: !2179, isLocal: true, isDefinition: true, scopeLine: 297, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !236)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!311, !190, !1254}
!2181 = !DILocalVariable(name: "name", arg: 1, scope: !2178, file: !226, line: 296, type: !190)
!2182 = !DILocation(line: 296, column: 43, scope: !2178)
!2183 = !DILocalVariable(name: "create", arg: 2, scope: !2178, file: !226, line: 296, type: !1254)
!2184 = !DILocation(line: 296, column: 58, scope: !2178)
!2185 = !DILocalVariable(name: "rec", scope: !2178, file: !226, line: 298, type: !192)
!2186 = !DILocation(line: 298, column: 24, scope: !2178)
!2187 = !DILocation(line: 298, column: 52, scope: !2178)
!2188 = !DILocation(line: 298, column: 76, scope: !2178)
!2189 = !DILocation(line: 298, column: 30, scope: !2178)
!2190 = !DILocation(line: 299, column: 6, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2178, file: !226, line: 299, column: 6)
!2192 = !DILocation(line: 299, column: 10, scope: !2191)
!2193 = !DILocation(line: 299, column: 6, scope: !2178)
!2194 = !DILocation(line: 300, column: 10, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2191, file: !226, line: 299, column: 18)
!2196 = !DILocation(line: 300, column: 15, scope: !2195)
!2197 = !DILocation(line: 300, column: 8, scope: !2195)
!2198 = !DILocation(line: 301, column: 2, scope: !2195)
!2199 = !DILocation(line: 304, column: 26, scope: !2178)
!2200 = !DILocation(line: 304, column: 38, scope: !2178)
!2201 = !DILocation(line: 304, column: 44, scope: !2178)
!2202 = !DILocation(line: 304, column: 9, scope: !2178)
!2203 = !DILocation(line: 304, column: 2, scope: !2178)
!2204 = distinct !DISubprogram(name: "sbar_node_isdefault", scope: !226, file: !226, line: 307, type: !2205, isLocal: true, isDefinition: true, scopeLine: 308, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !236)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{!1254, !190}
!2207 = !DILocalVariable(name: "name", arg: 1, scope: !2204, file: !226, line: 307, type: !190)
!2208 = !DILocation(line: 307, column: 49, scope: !2204)
!2209 = !DILocalVariable(name: "config", scope: !2204, file: !226, line: 309, type: !1151)
!2210 = !DILocation(line: 309, column: 14, scope: !2204)
!2211 = !DILocalVariable(name: "node", scope: !2204, file: !226, line: 310, type: !311)
!2212 = !DILocation(line: 310, column: 15, scope: !2204)
!2213 = !DILocation(line: 313, column: 11, scope: !2204)
!2214 = !DILocation(line: 313, column: 9, scope: !2204)
!2215 = !DILocation(line: 314, column: 20, scope: !2204)
!2216 = !DILocation(line: 314, column: 28, scope: !2204)
!2217 = !DILocation(line: 314, column: 2, scope: !2204)
!2218 = !DILocation(line: 316, column: 26, scope: !2204)
!2219 = !DILocation(line: 316, column: 34, scope: !2204)
!2220 = !DILocation(line: 316, column: 9, scope: !2204)
!2221 = !DILocation(line: 316, column: 7, scope: !2204)
!2222 = !DILocation(line: 318, column: 15, scope: !2204)
!2223 = !DILocation(line: 318, column: 2, scope: !2204)
!2224 = !DILocation(line: 320, column: 9, scope: !2204)
!2225 = !DILocation(line: 320, column: 14, scope: !2204)
!2226 = !DILocation(line: 320, column: 2, scope: !2204)
!2227 = distinct !DISubprogram(name: "config_sbar_node", scope: !226, file: !226, line: 279, type: !2228, isLocal: true, isDefinition: true, scopeLine: 280, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !236)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{!311, !1151, !190, !1254}
!2230 = !DILocalVariable(name: "config", arg: 1, scope: !2227, file: !226, line: 279, type: !1151)
!2231 = !DILocation(line: 279, column: 50, scope: !2227)
!2232 = !DILocalVariable(name: "name", arg: 2, scope: !2227, file: !226, line: 279, type: !190)
!2233 = !DILocation(line: 279, column: 70, scope: !2227)
!2234 = !DILocalVariable(name: "create", arg: 3, scope: !2227, file: !226, line: 279, type: !1254)
!2235 = !DILocation(line: 279, column: 85, scope: !2227)
!2236 = !DILocalVariable(name: "node", scope: !2227, file: !226, line: 281, type: !311)
!2237 = !DILocation(line: 281, column: 15, scope: !2227)
!2238 = !DILocation(line: 283, column: 30, scope: !2227)
!2239 = !DILocation(line: 283, column: 51, scope: !2227)
!2240 = !DILocation(line: 283, column: 9, scope: !2227)
!2241 = !DILocation(line: 283, column: 7, scope: !2227)
!2242 = !DILocation(line: 284, column: 6, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2227, file: !226, line: 284, column: 6)
!2244 = !DILocation(line: 284, column: 11, scope: !2243)
!2245 = !DILocation(line: 284, column: 6, scope: !2227)
!2246 = !DILocation(line: 285, column: 30, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2243, file: !226, line: 284, column: 19)
!2248 = !DILocation(line: 285, column: 38, scope: !2247)
!2249 = !DILocation(line: 285, column: 44, scope: !2247)
!2250 = !DILocation(line: 285, column: 68, scope: !2247)
!2251 = !DILocation(line: 286, column: 30, scope: !2247)
!2252 = !DILocation(line: 285, column: 10, scope: !2247)
!2253 = !DILocation(line: 285, column: 8, scope: !2247)
!2254 = !DILocation(line: 287, column: 2, scope: !2247)
!2255 = !DILocation(line: 289, column: 6, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2227, file: !226, line: 289, column: 6)
!2257 = !DILocation(line: 289, column: 11, scope: !2256)
!2258 = !DILocation(line: 289, column: 6, scope: !2227)
!2259 = !DILocation(line: 290, column: 30, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2256, file: !226, line: 289, column: 19)
!2261 = !DILocation(line: 290, column: 38, scope: !2260)
!2262 = !DILocation(line: 290, column: 44, scope: !2260)
!2263 = !DILocation(line: 290, column: 50, scope: !2260)
!2264 = !DILocation(line: 290, column: 10, scope: !2260)
!2265 = !DILocation(line: 290, column: 8, scope: !2260)
!2266 = !DILocation(line: 291, column: 2, scope: !2260)
!2267 = !DILocation(line: 293, column: 9, scope: !2227)
!2268 = !DILocation(line: 293, column: 2, scope: !2227)
!2269 = distinct !DISubprogram(name: "cmd_statusbar_print_info", scope: !226, file: !226, line: 382, type: !333, isLocal: true, isDefinition: true, scopeLine: 383, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !236)
!2270 = !DILocalVariable(name: "name", arg: 1, scope: !2269, file: !226, line: 382, type: !190)
!2271 = !DILocation(line: 382, column: 50, scope: !2269)
!2272 = !DILocalVariable(name: "rec", scope: !2269, file: !226, line: 384, type: !192)
!2273 = !DILocation(line: 384, column: 24, scope: !2269)
!2274 = !DILocation(line: 384, column: 52, scope: !2269)
!2275 = !DILocation(line: 384, column: 76, scope: !2269)
!2276 = !DILocation(line: 384, column: 30, scope: !2269)
!2277 = !DILocation(line: 386, column: 6, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2269, file: !226, line: 386, column: 6)
!2279 = !DILocation(line: 386, column: 10, scope: !2278)
!2280 = !DILocation(line: 386, column: 6, scope: !2269)
!2281 = !DILocation(line: 387, column: 19, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2278, file: !226, line: 386, column: 18)
!2283 = !DILocation(line: 387, column: 3, scope: !2282)
!2284 = !DILocation(line: 388, column: 3, scope: !2282)
!2285 = !DILocation(line: 391, column: 16, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2269, file: !226, line: 391, column: 6)
!2287 = !DILocation(line: 391, column: 6, scope: !2286)
!2288 = !DILocation(line: 391, column: 27, scope: !2286)
!2289 = !DILocation(line: 391, column: 36, scope: !2286)
!2290 = !DILocation(line: 391, column: 59, scope: !2291)
!2291 = !DILexicalBlockFile(scope: !2286, file: !226, discriminator: 1)
!2292 = !DILocation(line: 391, column: 39, scope: !2291)
!2293 = !DILocation(line: 391, column: 6, scope: !2291)
!2294 = !DILocation(line: 392, column: 53, scope: !2286)
!2295 = !DILocation(line: 392, column: 3, scope: !2286)
!2296 = !DILocation(line: 395, column: 51, scope: !2286)
!2297 = !DILocation(line: 395, column: 3, scope: !2286)
!2298 = !DILocation(line: 397, column: 1, scope: !2269)
!2299 = distinct !DISubprogram(name: "statusbar_print", scope: !226, file: !226, line: 343, type: !2300, isLocal: true, isDefinition: true, scopeLine: 344, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !236)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{null, !192}
!2302 = !DILocalVariable(name: "rec", arg: 1, scope: !2299, file: !226, line: 343, type: !192)
!2303 = !DILocation(line: 343, column: 51, scope: !2299)
!2304 = !DILocation(line: 345, column: 49, scope: !2299)
!2305 = !DILocation(line: 345, column: 54, scope: !2299)
!2306 = !DILocation(line: 345, column: 2, scope: !2299)
!2307 = !DILocation(line: 348, column: 63, scope: !2299)
!2308 = !DILocation(line: 348, column: 49, scope: !2299)
!2309 = !DILocation(line: 348, column: 2, scope: !2310)
!2310 = !DILexicalBlockFile(scope: !2299, file: !226, discriminator: 1)
!2311 = !DILocation(line: 350, column: 73, scope: !2299)
!2312 = !DILocation(line: 350, column: 54, scope: !2299)
!2313 = !DILocation(line: 350, column: 2, scope: !2310)
!2314 = !DILocation(line: 353, column: 53, scope: !2299)
!2315 = !DILocation(line: 353, column: 58, scope: !2299)
!2316 = !DILocation(line: 353, column: 2, scope: !2299)
!2317 = !DILocation(line: 355, column: 72, scope: !2299)
!2318 = !DILocation(line: 355, column: 52, scope: !2299)
!2319 = !DILocation(line: 355, column: 2, scope: !2310)
!2320 = !DILocation(line: 359, column: 6, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2299, file: !226, line: 359, column: 6)
!2322 = !DILocation(line: 359, column: 11, scope: !2321)
!2323 = !DILocation(line: 359, column: 17, scope: !2321)
!2324 = !DILocation(line: 359, column: 6, scope: !2299)
!2325 = !DILocation(line: 360, column: 24, scope: !2321)
!2326 = !DILocation(line: 360, column: 3, scope: !2321)
!2327 = !DILocation(line: 361, column: 1, scope: !2299)
!2328 = distinct !DISubprogram(name: "statusbar_list_items", scope: !226, file: !226, line: 323, type: !2300, isLocal: true, isDefinition: true, scopeLine: 324, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !236)
!2329 = !DILocalVariable(name: "bar", arg: 1, scope: !2328, file: !226, line: 323, type: !192)
!2330 = !DILocation(line: 323, column: 56, scope: !2328)
!2331 = !DILocalVariable(name: "tmp", scope: !2328, file: !226, line: 325, type: !205)
!2332 = !DILocation(line: 325, column: 10, scope: !2328)
!2333 = !DILocation(line: 327, column: 2, scope: !2328)
!2334 = !DILocation(line: 330, column: 13, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2328, file: !226, line: 330, column: 2)
!2336 = !DILocation(line: 330, column: 18, scope: !2335)
!2337 = !DILocation(line: 330, column: 11, scope: !2335)
!2338 = !DILocation(line: 330, column: 7, scope: !2335)
!2339 = !DILocation(line: 330, column: 25, scope: !2340)
!2340 = !DILexicalBlockFile(scope: !2341, file: !226, discriminator: 1)
!2341 = distinct !DILexicalBlock(scope: !2335, file: !226, line: 330, column: 2)
!2342 = !DILocation(line: 330, column: 29, scope: !2340)
!2343 = !DILocation(line: 330, column: 2, scope: !2340)
!2344 = !DILocalVariable(name: "rec", scope: !2345, file: !226, line: 331, type: !212)
!2345 = distinct !DILexicalBlock(scope: !2341, file: !226, line: 330, column: 54)
!2346 = !DILocation(line: 331, column: 25, scope: !2345)
!2347 = !DILocation(line: 331, column: 31, scope: !2345)
!2348 = !DILocation(line: 331, column: 36, scope: !2345)
!2349 = !DILocation(line: 333, column: 55, scope: !2345)
!2350 = !DILocation(line: 333, column: 60, scope: !2345)
!2351 = !DILocation(line: 333, column: 66, scope: !2345)
!2352 = !DILocation(line: 333, column: 71, scope: !2345)
!2353 = !DILocation(line: 333, column: 81, scope: !2345)
!2354 = !DILocation(line: 333, column: 86, scope: !2345)
!2355 = !DILocation(line: 333, column: 3, scope: !2345)
!2356 = !DILocation(line: 337, column: 2, scope: !2345)
!2357 = !DILocation(line: 330, column: 43, scope: !2358)
!2358 = !DILexicalBlockFile(scope: !2341, file: !226, discriminator: 2)
!2359 = !DILocation(line: 330, column: 48, scope: !2358)
!2360 = !DILocation(line: 330, column: 41, scope: !2358)
!2361 = !DILocation(line: 330, column: 2, scope: !2358)
!2362 = distinct !{!2362, !2363}
!2363 = !DILocation(line: 330, column: 2, scope: !2328)
!2364 = !DILocation(line: 339, column: 2, scope: !2328)
!2365 = !DILocation(line: 341, column: 1, scope: !2328)
!2366 = distinct !DISubprogram(name: "sbar_find_item_with_defaults", scope: !226, file: !226, line: 575, type: !2367, isLocal: true, isDefinition: true, scopeLine: 577, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !236)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{!311, !190, !190, !1254}
!2369 = !DILocalVariable(name: "statusbar", arg: 1, scope: !2366, file: !226, line: 575, type: !190)
!2370 = !DILocation(line: 575, column: 62, scope: !2366)
!2371 = !DILocalVariable(name: "item", arg: 2, scope: !2366, file: !226, line: 575, type: !190)
!2372 = !DILocation(line: 575, column: 85, scope: !2366)
!2373 = !DILocalVariable(name: "create", arg: 3, scope: !2366, file: !226, line: 576, type: !1254)
!2374 = !DILocation(line: 576, column: 59, scope: !2366)
!2375 = !DILocalVariable(name: "config", scope: !2366, file: !226, line: 578, type: !1151)
!2376 = !DILocation(line: 578, column: 14, scope: !2366)
!2377 = !DILocalVariable(name: "close_config", scope: !2366, file: !226, line: 578, type: !1151)
!2378 = !DILocation(line: 578, column: 23, scope: !2366)
!2379 = !DILocalVariable(name: "node", scope: !2366, file: !226, line: 579, type: !311)
!2380 = !DILocation(line: 579, column: 15, scope: !2366)
!2381 = !DILocation(line: 581, column: 15, scope: !2366)
!2382 = !DILocation(line: 582, column: 11, scope: !2366)
!2383 = !DILocation(line: 582, column: 9, scope: !2366)
!2384 = !DILocation(line: 583, column: 19, scope: !2366)
!2385 = !DILocation(line: 583, column: 9, scope: !2366)
!2386 = !DILocation(line: 583, column: 7, scope: !2366)
!2387 = !DILocation(line: 585, column: 6, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2366, file: !226, line: 585, column: 6)
!2389 = !DILocation(line: 585, column: 11, scope: !2388)
!2390 = !DILocation(line: 585, column: 6, scope: !2366)
!2391 = !DILocation(line: 587, column: 27, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2388, file: !226, line: 585, column: 19)
!2393 = !DILocation(line: 587, column: 25, scope: !2392)
!2394 = !DILocation(line: 587, column: 16, scope: !2392)
!2395 = !DILocation(line: 588, column: 21, scope: !2392)
!2396 = !DILocation(line: 588, column: 29, scope: !2392)
!2397 = !DILocation(line: 588, column: 3, scope: !2392)
!2398 = !DILocation(line: 589, column: 27, scope: !2392)
!2399 = !DILocation(line: 589, column: 35, scope: !2392)
!2400 = !DILocation(line: 589, column: 10, scope: !2392)
!2401 = !DILocation(line: 589, column: 8, scope: !2392)
!2402 = !DILocation(line: 590, column: 2, scope: !2392)
!2403 = !DILocation(line: 592, column: 6, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2366, file: !226, line: 592, column: 6)
!2405 = !DILocation(line: 592, column: 11, scope: !2404)
!2406 = !DILocation(line: 592, column: 6, scope: !2366)
!2407 = !DILocation(line: 593, column: 51, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2404, file: !226, line: 592, column: 19)
!2409 = !DILocation(line: 593, column: 3, scope: !2408)
!2410 = !DILocation(line: 594, column: 7, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2408, file: !226, line: 594, column: 7)
!2412 = !DILocation(line: 594, column: 20, scope: !2411)
!2413 = !DILocation(line: 594, column: 7, scope: !2408)
!2414 = !DILocation(line: 595, column: 17, scope: !2411)
!2415 = !DILocation(line: 595, column: 4, scope: !2411)
!2416 = !DILocation(line: 596, column: 3, scope: !2408)
!2417 = !DILocation(line: 599, column: 35, scope: !2366)
!2418 = !DILocation(line: 599, column: 43, scope: !2366)
!2419 = !DILocation(line: 599, column: 49, scope: !2366)
!2420 = !DILocation(line: 599, column: 9, scope: !2366)
!2421 = !DILocation(line: 599, column: 7, scope: !2366)
!2422 = !DILocation(line: 601, column: 6, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2366, file: !226, line: 601, column: 6)
!2424 = !DILocation(line: 601, column: 11, scope: !2423)
!2425 = !DILocation(line: 601, column: 18, scope: !2423)
!2426 = !DILocation(line: 601, column: 23, scope: !2427)
!2427 = !DILexicalBlockFile(scope: !2423, file: !226, discriminator: 1)
!2428 = !DILocation(line: 601, column: 30, scope: !2427)
!2429 = !DILocation(line: 601, column: 53, scope: !2430)
!2430 = !DILexicalBlockFile(scope: !2423, file: !226, discriminator: 2)
!2431 = !DILocation(line: 601, column: 61, scope: !2430)
!2432 = !DILocation(line: 601, column: 67, scope: !2430)
!2433 = !DILocation(line: 601, column: 33, scope: !2430)
!2434 = !DILocation(line: 601, column: 77, scope: !2430)
!2435 = !DILocation(line: 601, column: 6, scope: !2430)
!2436 = !DILocation(line: 602, column: 56, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2423, file: !226, line: 601, column: 87)
!2438 = !DILocation(line: 602, column: 3, scope: !2437)
!2439 = !DILocation(line: 603, column: 7, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2437, file: !226, line: 603, column: 7)
!2441 = !DILocation(line: 603, column: 20, scope: !2440)
!2442 = !DILocation(line: 603, column: 7, scope: !2437)
!2443 = !DILocation(line: 604, column: 17, scope: !2440)
!2444 = !DILocation(line: 604, column: 4, scope: !2440)
!2445 = !DILocation(line: 605, column: 3, scope: !2437)
!2446 = !DILocation(line: 608, column: 6, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2366, file: !226, line: 608, column: 6)
!2448 = !DILocation(line: 608, column: 16, scope: !2447)
!2449 = !DILocation(line: 608, column: 13, scope: !2447)
!2450 = !DILocation(line: 608, column: 6, scope: !2366)
!2451 = !DILocation(line: 610, column: 32, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2447, file: !226, line: 608, column: 28)
!2453 = !DILocation(line: 610, column: 40, scope: !2452)
!2454 = !DILocation(line: 610, column: 56, scope: !2452)
!2455 = !DILocation(line: 610, column: 46, scope: !2452)
!2456 = !DILocation(line: 610, column: 10, scope: !2457)
!2457 = !DILexicalBlockFile(scope: !2452, file: !226, discriminator: 1)
!2458 = !DILocation(line: 610, column: 8, scope: !2452)
!2459 = !DILocation(line: 611, column: 2, scope: !2452)
!2460 = !DILocation(line: 613, column: 6, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2366, file: !226, line: 613, column: 6)
!2462 = !DILocation(line: 613, column: 19, scope: !2461)
!2463 = !DILocation(line: 613, column: 6, scope: !2366)
!2464 = !DILocation(line: 614, column: 16, scope: !2461)
!2465 = !DILocation(line: 614, column: 3, scope: !2461)
!2466 = !DILocation(line: 616, column: 9, scope: !2366)
!2467 = !DILocation(line: 616, column: 2, scope: !2366)
!2468 = !DILocation(line: 617, column: 1, scope: !2366)
!2469 = distinct !DISubprogram(name: "config_sbar_items_section", scope: !226, file: !226, line: 536, type: !2470, isLocal: true, isDefinition: true, scopeLine: 538, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !236)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{!311, !1151, !311, !1254}
!2472 = !DILocalVariable(name: "config", arg: 1, scope: !2469, file: !226, line: 536, type: !1151)
!2473 = !DILocation(line: 536, column: 59, scope: !2469)
!2474 = !DILocalVariable(name: "parent", arg: 2, scope: !2469, file: !226, line: 536, type: !311)
!2475 = !DILocation(line: 536, column: 80, scope: !2469)
!2476 = !DILocalVariable(name: "create", arg: 3, scope: !2469, file: !226, line: 537, type: !1254)
!2477 = !DILocation(line: 537, column: 56, scope: !2469)
!2478 = !DILocation(line: 539, column: 29, scope: !2469)
!2479 = !DILocation(line: 539, column: 37, scope: !2469)
!2480 = !DILocation(line: 539, column: 54, scope: !2469)
!2481 = !DILocation(line: 539, column: 9, scope: !2469)
!2482 = !DILocation(line: 539, column: 2, scope: !2469)
!2483 = distinct !DISubprogram(name: "statusbar_copy_config", scope: !226, file: !226, line: 542, type: !2484, isLocal: true, isDefinition: true, scopeLine: 544, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !236)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{!311, !1151, !311, !311}
!2486 = !DILocalVariable(name: "config", arg: 1, scope: !2483, file: !226, line: 542, type: !1151)
!2487 = !DILocation(line: 542, column: 55, scope: !2483)
!2488 = !DILocalVariable(name: "source", arg: 2, scope: !2483, file: !226, line: 542, type: !311)
!2489 = !DILocation(line: 542, column: 76, scope: !2483)
!2490 = !DILocalVariable(name: "parent", arg: 3, scope: !2483, file: !226, line: 543, type: !311)
!2491 = !DILocation(line: 543, column: 56, scope: !2483)
!2492 = !DILocalVariable(name: "tmp", scope: !2483, file: !226, line: 545, type: !205)
!2493 = !DILocation(line: 545, column: 10, scope: !2483)
!2494 = !DILocation(line: 547, column: 2, scope: !2483)
!2495 = distinct !{!2495, !2494}
!2496 = !DILocation(line: 547, column: 10, scope: !2497)
!2497 = !DILexicalBlockFile(scope: !2498, file: !226, discriminator: 1)
!2498 = distinct !DILexicalBlock(scope: !2499, file: !226, line: 547, column: 10)
!2499 = distinct !DILexicalBlock(scope: !2483, file: !226, line: 547, column: 4)
!2500 = !DILocation(line: 547, column: 17, scope: !2497)
!2501 = !DILocation(line: 547, column: 5, scope: !2502)
!2502 = !DILexicalBlockFile(scope: !2503, file: !226, discriminator: 2)
!2503 = distinct !DILexicalBlock(scope: !2498, file: !226, line: 547, column: 3)
!2504 = !DILocation(line: 547, column: 14, scope: !2505)
!2505 = !DILexicalBlockFile(scope: !2506, file: !226, discriminator: 3)
!2506 = distinct !DILexicalBlock(scope: !2498, file: !226, line: 547, column: 12)
!2507 = !DILocation(line: 547, column: 101, scope: !2505)
!2508 = !DILocation(line: 547, column: 7, scope: !2509)
!2509 = !DILexicalBlockFile(scope: !2499, file: !226, discriminator: 4)
!2510 = !DILocation(line: 549, column: 37, scope: !2483)
!2511 = !DILocation(line: 549, column: 49, scope: !2483)
!2512 = !DILocation(line: 549, column: 11, scope: !2483)
!2513 = !DILocation(line: 549, column: 9, scope: !2483)
!2514 = !DILocation(line: 553, column: 31, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2483, file: !226, line: 553, column: 2)
!2516 = !DILocation(line: 553, column: 39, scope: !2515)
!2517 = !DILocation(line: 553, column: 13, scope: !2515)
!2518 = !DILocation(line: 553, column: 11, scope: !2515)
!2519 = !DILocation(line: 553, column: 7, scope: !2515)
!2520 = !DILocation(line: 553, column: 47, scope: !2521)
!2521 = !DILexicalBlockFile(scope: !2522, file: !226, discriminator: 1)
!2522 = distinct !DILexicalBlock(scope: !2515, file: !226, line: 553, column: 2)
!2523 = !DILocation(line: 553, column: 51, scope: !2521)
!2524 = !DILocation(line: 553, column: 2, scope: !2521)
!2525 = !DILocalVariable(name: "priority", scope: !2526, file: !226, line: 554, type: !200)
!2526 = distinct !DILexicalBlock(scope: !2522, file: !226, line: 553, column: 88)
!2527 = !DILocation(line: 554, column: 7, scope: !2526)
!2528 = !DILocalVariable(name: "right_alignment", scope: !2526, file: !226, line: 554, type: !200)
!2529 = !DILocation(line: 554, column: 17, scope: !2526)
!2530 = !DILocalVariable(name: "node", scope: !2526, file: !226, line: 555, type: !311)
!2531 = !DILocation(line: 555, column: 16, scope: !2526)
!2532 = !DILocalVariable(name: "snode", scope: !2526, file: !226, line: 555, type: !311)
!2533 = !DILocation(line: 555, column: 23, scope: !2526)
!2534 = !DILocation(line: 557, column: 11, scope: !2526)
!2535 = !DILocation(line: 557, column: 16, scope: !2526)
!2536 = !DILocation(line: 557, column: 9, scope: !2526)
!2537 = !DILocation(line: 559, column: 34, scope: !2526)
!2538 = !DILocation(line: 559, column: 14, scope: !2526)
!2539 = !DILocation(line: 559, column: 12, scope: !2526)
!2540 = !DILocation(line: 561, column: 37, scope: !2526)
!2541 = !DILocation(line: 561, column: 17, scope: !2526)
!2542 = !DILocation(line: 561, column: 7, scope: !2543)
!2543 = !DILexicalBlockFile(scope: !2526, file: !226, discriminator: 1)
!2544 = !DILocation(line: 561, column: 71, scope: !2526)
!2545 = !DILocation(line: 560, column: 19, scope: !2526)
!2546 = !DILocation(line: 564, column: 30, scope: !2526)
!2547 = !DILocation(line: 564, column: 42, scope: !2526)
!2548 = !DILocation(line: 564, column: 50, scope: !2526)
!2549 = !DILocation(line: 564, column: 57, scope: !2526)
!2550 = !DILocation(line: 564, column: 10, scope: !2526)
!2551 = !DILocation(line: 564, column: 8, scope: !2526)
!2552 = !DILocation(line: 566, column: 7, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2526, file: !226, line: 566, column: 7)
!2554 = !DILocation(line: 566, column: 16, scope: !2553)
!2555 = !DILocation(line: 566, column: 7, scope: !2526)
!2556 = !DILocation(line: 567, column: 24, scope: !2553)
!2557 = !DILocation(line: 567, column: 36, scope: !2553)
!2558 = !DILocation(line: 567, column: 54, scope: !2553)
!2559 = !DILocation(line: 567, column: 4, scope: !2553)
!2560 = !DILocation(line: 568, column: 7, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2526, file: !226, line: 568, column: 7)
!2562 = !DILocation(line: 568, column: 7, scope: !2526)
!2563 = !DILocation(line: 569, column: 24, scope: !2561)
!2564 = !DILocation(line: 569, column: 36, scope: !2561)
!2565 = !DILocation(line: 569, column: 4, scope: !2561)
!2566 = !DILocation(line: 570, column: 2, scope: !2526)
!2567 = !DILocation(line: 553, column: 82, scope: !2568)
!2568 = !DILexicalBlockFile(scope: !2522, file: !226, discriminator: 2)
!2569 = !DILocation(line: 553, column: 65, scope: !2568)
!2570 = !DILocation(line: 553, column: 63, scope: !2568)
!2571 = !DILocation(line: 553, column: 2, scope: !2568)
!2572 = distinct !{!2572, !2573}
!2573 = !DILocation(line: 553, column: 2, scope: !2483)
!2574 = !DILocation(line: 572, column: 9, scope: !2483)
!2575 = !DILocation(line: 572, column: 2, scope: !2483)
!2576 = !DILocation(line: 573, column: 1, scope: !2483)
